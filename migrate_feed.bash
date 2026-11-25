#!/bin/bash
#
# migrate_feed.bash - move one feed's SQL data (channel row and items) from
# one collection's SQLite3 database to another's.
#
# Usage:
#   ./migrate_feed.bash [-n|--dry-run] SOURCE.md DEST.md FEED_URL
#
# Example:
#   ./migrate_feed.bash pacific.md planet.md https://feed.koreatimes.co.kr/k/allnews.xml
#
# Only pacific.db -> planet.db style data is moved. The collection Markdown
# files are NOT edited: move the feed's line from SOURCE.md to DEST.md
# yourself, or the next harvest will re-add it to the source database.
# Run it with the harvest/generate steps idle.
#
# Exit codes (workspace DR-0003):
#   0 ok, 1 feed not found in source, 2 usage, 65 schema mismatch or
#   items already present in the destination, 66 missing file or sqlite3,
#   70 unexpected failure.

set -u

DRY_RUN=0
ARGS=()
for A in "$@"; do
	case "$A" in
	-n | --dry-run) DRY_RUN=1 ;;
	-h | --help)
		sed -n '2,/^$/p' "$0" | sed 's/^# \{0,1\}//'
		exit 0
		;;
	-*)
		echo "migrate_feed: unknown option $A" >&2
		exit 2
		;;
	*) ARGS+=("$A") ;;
	esac
done

if [ "${#ARGS[@]}" -ne 3 ]; then
	echo "usage: migrate_feed.bash [-n|--dry-run] SOURCE.md DEST.md FEED_URL" >&2
	exit 2
fi

SRC="${ARGS[0]%.md}.db"
DST="${ARGS[1]%.md}.db"
FEED="${ARGS[2]}"

if ! command -v sqlite3 >/dev/null; then
	echo "migrate_feed: sqlite3 not found" >&2
	exit 66
fi
for F in "$SRC" "$DST"; do
	if [ ! -f "$F" ]; then
		echo "migrate_feed: $F not found" >&2
		exit 66
	fi
done
if [ "$SRC" = "$DST" ]; then
	echo "migrate_feed: source and destination are the same" >&2
	exit 2
fi

# Escape single quotes for SQL literals.
Q="${FEED//\'/\'\'}"

# Query the source DB and attach the destination as "d".
function q() {
	sqlite3 "$SRC" "ATTACH '${DST//\'/\'\'}' AS d; $1"
}

N_CHAN="$(q "SELECT count(*) FROM channels WHERE link = '$Q';")" || exit 70
N_ITEMS="$(q "SELECT count(*) FROM items WHERE channel = '$Q';")" || exit 70
if [ "$N_CHAN" -eq 0 ] && [ "$N_ITEMS" -eq 0 ]; then
	echo "migrate_feed: $FEED not found in $SRC" >&2
	exit 1
fi

# Same columns in both databases, so INSERT ... SELECT * is safe.
for T in channels items; do
	A="$(sqlite3 "$SRC" "SELECT group_concat(name || ':' || type) FROM pragma_table_info('$T');")"
	B="$(sqlite3 "$DST" "SELECT group_concat(name || ':' || type) FROM pragma_table_info('$T');")"
	if [ "$A" != "$B" ]; then
		echo "migrate_feed: $T table differs between $SRC and $DST" >&2
		exit 65
	fi
done

# items.link is the primary key; refuse to clobber anything.
N_DUP="$(q "SELECT count(*) FROM items i JOIN d.items j USING (link) WHERE i.channel = '$Q';")" || exit 70
if [ "$N_DUP" -ne 0 ]; then
	echo "migrate_feed: $N_DUP item(s) from $FEED already exist in $DST, nothing changed" >&2
	exit 65
fi
N_DCHAN="$(q "SELECT count(*) FROM d.channels WHERE link = '$Q';")" || exit 70

echo "feed:    $FEED"
echo "from:    $SRC ($N_CHAN channel row, $N_ITEMS items)"
echo "to:      $DST (channel row already there: $N_DCHAN)"
if [ "$DRY_RUN" -eq 1 ]; then
	echo "dry run, nothing changed"
	exit 0
fi

# Back up both databases before touching them.
STAMP="$(date +%Y%m%d-%H%M%S)"
cp "$SRC" "$SRC.bak-$STAMP" && cp "$DST" "$DST.bak-$STAMP" || exit 74
echo "backups: $SRC.bak-$STAMP, $DST.bak-$STAMP"

# One transaction across both files: either everything moves or nothing.
if ! sqlite3 "$SRC" <<SQL
ATTACH '${DST//\'/\'\'}' AS d;
BEGIN IMMEDIATE;
INSERT OR IGNORE INTO d.channels SELECT * FROM main.channels WHERE link = '$Q';
INSERT INTO d.items SELECT * FROM main.items WHERE channel = '$Q';
DELETE FROM main.items WHERE channel = '$Q';
DELETE FROM main.channels WHERE link = '$Q';
COMMIT;
SQL
then
	echo "migrate_feed: move failed; restore from the .bak-$STAMP files if needed" >&2
	exit 70
fi

echo "moved $N_ITEMS items"
echo "now:     $(sqlite3 "$SRC" "SELECT count(*) FROM items;") items in $SRC, $(sqlite3 "$DST" "SELECT count(*) FROM items;") in $DST"
echo "next:    move the feed line from ${ARGS[0]} to ${ARGS[1]}, then 'antenna generate' both"
