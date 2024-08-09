#!/bin/bash

if [ "$1" = "" ]; then
	APP_NAME="$(basename "$0")"
	SKIM_FILE="news.skim"
else
	SKIM_FILE="$1"
fi
if [ ! -f "${SKIM_FILE}" ]; then
	echo "usage: $APP_NAME $SKIM_FILE"
	exit 1
fi
TODAY=$(date +%Y-%m-%d)
START_TODAYS_NEWS="$(reldate -- -1 day)"
END_TODAYS_NEWS="$(reldate +1 week)"

#
# Generate "today's news" file from a vetted skim database.
#
function make_today() {
	echo "Harvesting to ${SKIM_FILE/.skim/.txt}"
	skimmer "${SKIM_FILE/.skim/.txt}"
	sqlite3 "${SKIM_FILE}" "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%'"
	sqlite3 "${SKIM_FILE}" "DELETE FROM items WHERE  link LIKE '%signalscv%' AND tags != '' AND (json_extract(tags, '$[0]') LIKE 'Opinion' or json_extract(tags, '$[0]') LIKE 'Letters%' OR json_extract(tags, '$[1]') LIKE 'Opinion' OR json_extract(tags, '$[2]') LIKE 'Opinion')"
	sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'read'"
	sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'saved' WHERE published >= '$START_TODAYS_NEWS' AND published < '$END_TODAYS_NEWS'"
	skim2md -title "News gathered ${TODAY}" \
		-frontmatter \
		"${SKIM_FILE}" \
		>"today-${TODAY}.md"

	pandoc -s \
		-f markdown-tex_math_dollars \
		-t html5 \
		--template page.tmpl \
		"today-${TODAY}.md" \
		>"today-${TODAY}.html"
}

#
# Generate an updated index.md file.
#

function make_index() {
	cat <<EOT >index.md
---
title: Snapshots
updated: ${TODAY}
---

# Snapshots

These are a snapshot of a single day's collection of item from [news.txt](news.txt)

EOT

	# shellcheck disable=SC2012
	ls -1 today-*.html | sort -r | while read -r FNAME; do
		NAME="$(basename "${FNAME}")"
		DAY="$(basename "${NAME}" .html | sed -E 's/^today-//g')"
		echo "- [${DAY}](${FNAME})" >>index.md
	done

	pandoc -s \
		-f markdown \
		-t html5 \
		--template page.tmpl \
		index.md >index.html

}

make_today
make_index
