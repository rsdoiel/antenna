#!/bin/bash

# Get today's date and the nearest Sunday and Saturday
TODAY=$(reldate +0 day)
LAST_WEEKDAY=$(reldate -- -14 day)

# Override LAST_WEEKDAY if 'start' is provided
if [ -n "$start" ]; then
    LAST_WEEKDAY="$start"
fi

# Output the variables (optional, for verification)
echo "TODAY: $TODAY"
echo "LAST_WEEKDAY: $LAST_WEEKDAY"



# Find the skim/urls files and generate html pages using skim2html
for SKIM_FILE in socal_north.skim north_america.skim pacific.skim planet.skim science_and_technology.skim columns.skim snapshots.skim ; do
  HTML_FILE="$(basename "${SKIM_FILE}" ".skim").html"

  echo "Generating $HTML_FILE from $SKIM_FILE"
  sqlite3 "${SKIM_FILE}" "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%' OR LOWER(QUOTE(tags)) LIKE '%sports%' OR LOWER(QUOTE(tags)) LIKE '%opinion%' OR lower(quote(tags)) like '%obituar%' or lower(quote(tags)) like '%views/columnists%'"
  sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'read'"
  sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'saved' WHERE published >= '${LAST_WEEKDAY}'"
  skim2html "${SKIM_FILE}" front_page.yaml>"${HTML_FILE}"
  if [ -d .git ]; then git add "${HTML_FILE}"; fi
done

for SKIM_FILE in retro_computing.skim going_electric.skim home.skim food.skim journalism.skim libraries.skim small_papers.skim craft.skim writing.skim; do
  HTML_FILE="$(basename "${SKIM_FILE}" ".skim").html"

  echo "Generating $HTML_FILE from $SKIM_FILE"
  sqlite3 "${SKIM_FILE}" "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%' OR LOWER(QUOTE(tags)) LIKE '%sports%' OR LOWER(QUOTE(tags)) LIKE '%opinion%' OR lower(quote(tags)) like '%obituar%' or lower(quote(tags)) like '%views/columnists%'"
  sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'read'"
  sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'saved' WHERE published >= '${LAST_WEEKDAY}'"
  skim2html "${SKIM_FILE}" other_reading.yaml>"${HTML_FILE}"
  if [ -d .git ] ; then git add "${HTML_FILE}"; fi
done


# Find the CommonMark files and render them to HTML with Pandoc
find . -type f | grep -E '\.md$' | while read -r MD_FILE; do
  HTML_FILE="$(basename "${MD_FILE}" ".md").html"
  echo "Generating $HTML_FILE from $MD_FILE"
  pandoc -f markdown -t html5 \
          --lua-filter=links-to-html.lua \
          --template front_page.tmpl \
          "${MD_FILE}" \
          >"${HTML_FILE}"
  if [ -d .git ]; then git add "${HTML_FILE}"; fi
done


# Build our search indexes now that we have HTML pages.
pagefind \
  --verbose \
  --force-language en \
  --site .
if [ -d .git ] ; then git add pagefind; fi
