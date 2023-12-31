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
---
title: Antenna Archives
---

# Antenna Archives for $YEAR

TXT

# Find all our socal_north markdown files to archive.
printf '\n## Socal North\n\n' >>"${YEAR}/index.md"
CMD="ls -1 ${YEAR}/socal_north_*.md"
$CMD | sort -r |\
while read -r FNAME; do
	BNAME=$(basename "$FNAME" ".md")
	LABEL=$(echo "$BNAME" | sed -E 's/_/ /g')
	printf '* [%s](%s)\n' "$LABEL" "$BNAME.md" >>"$YEAR/index.md"
done

# Find all the weather markdown files to archive.
printf '\n## Weather\n\n' >>"${YEAR}/index.md"
CMD="ls -1 ${YEAR}/weather_*.md"
$CMD | sort -r |\
while read -r FNAME; do
	BNAME=$(basename "$FNAME" ".md")
	LABEL=$(echo "$BNAME" | sed -E 's/_/ /g')
	printf '* [%s](%s)\n' "$LABEL" "$BNAME.md" >>"$YEAR/index.md"
done

# Find all our socal_north markdown files to archive.
printf '\n## Pacific\n\n' >>"${YEAR}/index.md"
CMD="ls -1 ${YEAR}/pacific_*.md"
$CMD | sort -r |\
while read -r FNAME; do
	BNAME=$(basename "$FNAME" ".md")
	LABEL=$(echo "$BNAME" | sed -E 's/_/ /g')
	printf '* [%s](%s)\n' "$LABEL" "$BNAME.md" >>"$YEAR/index.md"
done

# Find all our mid_central markdown files to archive.
printf '\n## Mid Central\n\n' >>"${YEAR}/index.md"
CMD="ls -1 ${YEAR}/mid_central_*.md"
$CMD | sort -r |\
while read -r FNAME; do
	BNAME=$(basename "$FNAME" ".md")
	LABEL=$(echo "$BNAME" | sed -E 's/_/ /g')
	printf '* [%s](%s)\n' "$LABEL" "$BNAME.md" >>"$YEAR/index.md"
done

# Find all our mid_central markdown files to archive.
printf '\n## Tech Likely\n\n' >>"${YEAR}/index.md"
CMD="ls -1 ${YEAR}/tech_likely_*.md"
$CMD | sort -r |\
while read -r FNAME; do
	BNAME=$(basename "$FNAME" ".md")
	LABEL=$(echo "$BNAME" | sed -E 's/_/ /g')
	printf '* [%s](%s)\n' "$LABEL" "$BNAME.md" >>"$YEAR/index.md"
done

# Find all our mid_central markdown files to archive.
printf '\n## IF & Writing\n\n' >>"${YEAR}/index.md"
CMD="ls -1 ${YEAR}/writing_*.md"
$CMD | sort -r |\
while read -r FNAME; do
	BNAME=$(basename "$FNAME" ".md")
	LABEL=$(echo "$BNAME" | sed -E 's/_/ /g')
	printf '* [%s](%s)\n' "$LABEL" "$BNAME.md" >>"$YEAR/index.md"
done

# Find all our parks markdown files to archive.
printf '\n## Parks\n\n' >>"${YEAR}/index.md"
CMD="ls -1 ${YEAR}/parks_*.md"
$CMD | sort -r |\
while read -r FNAME; do
	BNAME=$(basename "$FNAME" ".md")
	LABEL=$(echo "$BNAME" | sed -E 's/_/ /g')
	printf '* [%s](%s)\n' "$LABEL" "$BNAME.md" >>"$YEAR/index.md"
done

# Find all our mid_central markdown files to archive.
printf '\n## Libraries, Archives and Museums\n\n' >>"${YEAR}/index.md"
CMD="ls -1 ${YEAR}/libraries_*.md"
$CMD | sort -r |\
while read -r FNAME; do
	BNAME=$(basename "$FNAME" ".md")
	LABEL=$(echo "$BNAME" | sed -E 's/_/ /g')
	printf '* [%s](%s)\n' "$LABEL" "$BNAME.md" >>"$YEAR/index.md"
done

echo >>"$YEAR/index.md"
git add "$YEAR/"
