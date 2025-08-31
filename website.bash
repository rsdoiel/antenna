#!/bin/bash

# Generate all the feed pages
echo "Generating aggregated pages"
antenna generate

# Find the CommonMark files and render them to HTML with Pandoc
echo "Generating Pandoc pages"
for MD_FILE in about.md forecasts.md index.md README.md search.md TODO.md; do
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
echo "Building the search indexes"
pagefind \
  --verbose \
  --force-language en \
  --site .
if [ -d .git ] ; then git add pagefind; fi
echo "Done $(date)"
