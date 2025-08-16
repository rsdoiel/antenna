#!/bin/bash

#!/bin/bash

# Get today's date and the nearest Sunday and Saturday
TODAY=$(reldate +0 day)
SUNDAY=$(reldate sunday)
SATURDAY=$(reldate saturday)

# If today is Sunday, set SUNDAY to the previous Sunday
if [ "$TODAY" = "$SUNDAY" ]; then
    SUNDAY=$(reldate --from "$TODAY" -- -7 day)
fi

# If today is Saturday, set SUNDAY to the previous Sunday
if [ "$TODAY" = "$SATURDAY" ]; then
    SUNDAY=$(reldate --from "$TODAY" -- -7 day)
fi

# Set VOL_NO to the current year and week number
VOL_NO=$(date +%Y.%W)
YEAR=$(date +%Y)

# Override VOL_NO if 'vol' is provided
if [ -n "$vol" ]; then
    VOL_NO="$vol"
fi

# Override SUNDAY if 'start' is provided
if [ -n "$start" ]; then
    SUNDAY="$start"
fi

# Override SATURDAY if 'end' is provided
if [ -n "$end" ]; then
    SATURDAY="$end"
fi

# Output the variables (optional, for verification)
echo "TODAY: $TODAY"
echo "SUNDAY: $SUNDAY"
echo "SATURDAY: $SATURDAY"
#echo "VOL_NO: $VOL_NO"
#echo "YEAR: $YEAR"

# Find the skim/urls files and generate html pages using skim2html
find . -type f | grep -E '\.skim$' | while read -r SKIM_FILE; do
  HTML_FILE="$(basename "${SKIM_FILE}" ".skim").html"

  echo "Generating $HTML_FILE from $SKIM_FILE"
  sqlite3 "${SKIM_FILE}" "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%' OR LOWER(QUOTE(tags)) LIKE '%sports%' OR LOWER(QUOTE(tags)) LIKE '%opinion%' OR lower(quote(tags)) like '%obituar%' or lower(quote(tags)) like '%views/columnists%'"
  sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'read'"
  sqlite3 "${SKIM_FILE}" "UPDATE items SET status = 'saved' WHERE published >= '${SUNDAY}' AND published <= '${SATURDAY}'"
  skim2html "${SKIM_FILE}" front_page.yaml>"${HTML_FILE}"
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
done
