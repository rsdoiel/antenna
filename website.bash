#!/bin/bash

# Get today's date and the nearest Sunday and Saturday
TODAY=$(reldate +0 day)
LAST_WEEKDAY=$(reldate -- -7 day)

# Override LAST_WEEKDAY if 'start' is provided
if [ -n "$start" ]; then
    LAST_WEEKDAY="$start"
fi

# Output the variables (optional, for verification)
echo "TODAY: $TODAY"
echo "LAST_WEEKDAY: $LAST_WEEKDAY"

# Find the skim/urls files and generate html pages using skim2html
find . -type f | grep -E '\.skim$' | while read -r SKIM_FILE; do
  HTML_FILE="$(basename "${SKIM_FILE}" ".skim").html"

  echo "Generating $HTML_FILE from $SKIM_FILE"
  sqlite3 "${SKIM_FILE}" "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%' OR LOWER(QUOTE(tags)) LIKE '%sports%' OR LOWER(QUOTE(tags)) LIKE '%opinion%' OR lower(quote(tags)) like '%obituar%' or lower(quote(tags)) like '%views/columnists%'"
  sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'read'"
  sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'saved' WHERE published >= '${LAST_WEEKDAY}'"
  skim2html "${SKIM_FILE}" front_page.yaml>"${HTML_FILE}"
  git add "${HTML_FILE}"
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
  git add "${HTML_FILE}"
done


# Build our search indexes now that we have HTML pages.
pagefind \
  --verbose \
  --force-language en \
  --site .
git add pagefind
