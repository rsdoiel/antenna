#!/bin/bash

SKIM_FILE="news.skim"
if [ ! -f "${SKIM_FILE}" ]; then
	skimmer "${SKIM_FILE/.skim/.txt}"
fi

#
# Generate "today's news" file from a vetted skim database.
#
function make_skim() {
	echo "Harvesting to ${SKIM_FILE/.skim/.txt}"
	if skimmer "${SKIM_FILE/.skim/.txt}"; then
		echo "Harvest completed"
	else
		echo "Harvest not completed"
	fi
}

function make_markdown() {
	echo "Building markdown page for ${TODAY}"
	sqlite3 "${SKIM_FILE}" "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%'"
	sqlite3 "${SKIM_FILE}" "DELETE FROM items WHERE (link LIKE '%signalscv%' AND tags != '') AND ( json_extract(tags, '\$[0]') LIKE 'Opinion' OR json_extract(tags, '\$[1]') LIKE 'Opinion' OR json_extract(tags, '\$[2]') LIKE 'Opinion');"
	sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'read'"
	sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'saved' WHERE published >= '$START_TODAYS_NEWS' AND published < '$END_TODAYS_NEWS'"
	skim2md -title "News gathered ${TODAY}" \
		-frontmatter \
		"${SKIM_FILE}" \
		>"today-${TODAY}.md"
}

function make_html() {
	echo "Building html page for ${TODAY}"
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
	echo "Generating index.html"
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

#
# Main procssing
#
if [ "$1" = "" ]; then
	echo "USAGE: $(basename $0) [OPTIONS] YYYY-MM-DD"
	exit 1
fi
# Get the date to rebuild
for ARG in "$@"; do
	case "$ARG" in
		????-??-??)
		TODAY="${ARG}"
		;;
	esac
done
START_TODAYS_NEWS="$(reldate --from="${TODAY}" -- -1 day)"
END_TODAYS_NEWS="$(reldate --from="${TODAY}" +1 week)"
# Handle any options
if [ "$1" != "" ]; then
	for ARG in "$@"; do
		case "$ARG" in
	  		skim)
	  		make_skim
	  		;;
	  		markdown)
	  		make_markdown
	  		;;
	  		html)
			make_html
			;;
			index)
	  		make_index
			;;
		esac
	done
else
	make_skim
	make_markdown
	make_html
	make_index
fi
