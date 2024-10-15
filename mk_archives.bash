#!/bin/bash
#

function mk_archive_for_feed() {
	FEED_NAME="$1"
	FEED_PREFIX="$2"
	# Find all our markdown files to archive.
	printf '\n## %s\n\n' "${FEED_NAME}" >>"archives/${YEAR}/index.md"
	CMD="ls -1 archives/${YEAR}/${FEED_PREFIX}_*.md"
	$CMD | sort -r |\
	while read -r FNAME; do
		BNAME=$(basename "$FNAME" ".md")
		LABEL=$(echo "$BNAME" | sed -E 's/_/ /g')
		printf '* [%s](%s)\n' "$LABEL" "$BNAME.md" >>"archives/${YEAR}/index.md"
	done
}

#
# Generate the archives of the week's news aggregations
#
YEAR=$(date +%Y)
# Make a folder for the year's archive
mkdir -p "archives/$YEAR"
# Generate the start of the archives index.md
cat <<TXT >"archives/${YEAR}/index.md"
---
title: Antenna Archives
---

# Antenna Archives for $YEAR

TXT



mk_archive_for_feed "SoCal North" "socal_north"
mk_archive_for_feed "Pacific" "pacific"
mk_archive_for_feed "Central Cost" "centeral_cost"
mk_archive_for_feed "Home, Garden & Urban Farm" "home"
mk_archive_for_feed "Good Eats, Healthy Eats" "food"
mk_archive_for_feed "Columns" "columns"
mk_archive_for_feed "Retro Computing" "retro_computing"
#mk_archive_for_feed "Games" "games"
mk_archive_for_feed "Libaries" "libraries"
mk_archive_for_feed "Student Journalism" "journalism"
mk_archive_for_feed "Motocycles" "motorcycles"
#mk_archive_for_feed "Ham Radio" "ham_radio"
mk_archive_for_feed "Craft" "craft"
mk_archive_for_feed "Writing" "writing"
#mk_archive_for_feed "Parks" "parks"
mk_archive_for_feed "Weather" "weather"

echo >>"archives/$YEAR/index.md"
git add "archives/$YEAR/"
