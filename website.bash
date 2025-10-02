#!/bin/bash

# Generate all the feed pages
echo "Generating aggregated pages"
antenna generate

# Find the CommonMark files and render them to HTML with Pandoc
echo "Generating Pandoc pages"
for MD_FILE in about.md forecasts.md index.md README.md search.md TODO.md; do
  HTML_FILE="$(basename "${MD_FILE}" ".md").html"
  echo "Generating $HTML_FILE from $MD_FILE"
  antenna page "${MD_FILE}" "${HTML_FILE}"
  if [ -d .git ]; then git add "${HTML_FILE}"; fi
done


# Build our search indexes now that we have HTML pages.
echo "Building the search indexes"
rm -fR pagefind
pagefind  --verbose --force-language en-US
if [ -d .git ] ; then git add pagefind; fi
echo "Done $(date)"
