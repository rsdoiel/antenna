#!/bin/bash
#

#
# Generate the archives of the week's news aggregations
#
YEAR=$(date +%Y)
# Make a folder for the year's archive
mkdir -p "$YEAR"
# Generate the start of the archives index.md
cat <<TXT >"${YEAR}/index.md"

# Antenna Archives for $YEAR

TXT
# Find all our html files to archive.
ls -1 socal_north_*.md | sort -r |\
while read -r FNAME; do
	cp -v "$FNAME" "$YEAR/"
	BNAME=$(basename "$FNAME" ".md")
	LABEL=$(echo "$BNAME" | sed -E 's/_/ /g')
	printf '* [%s](%s)\n' "$LABEL" "$FNAME" >>"$YEAR/index.md"
done
echo >>"$YEAR/index.md"
git add "$YEAR/"
