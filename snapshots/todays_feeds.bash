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
echo "Harvesting to ${SKIM_FILE/.skim/.txt}"
skimmer "${SKIM_FILE/.skim/.txt}"
sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'read'"
sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'saved' WHERE published >= '$START_TODAYS_NEWS' AND published < '$END_TODAYS_NEWS'"
skim2md -title "News gathered ${TODAY}" \
	-frontmatter \
	-pocket \
	"${SKIM_FILE}" \
        >"today-${TODAY}.md"

pandoc -s \
   -f markdown-tex_math_dollars \
   -t html5 \
   --template page.tmpl \
   "today-${TODAY}.md" \
   >"today-${TODAY}.html"


