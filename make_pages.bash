#!/bin/bash

for MD_FILE in about.md forecasts.md index.md README.md search.md TODO.md; do
	HTML_FILE="$(basename "${MD_FILE}" ".md").html"
	echo "Generating $HTML_FILE from $MD_FILE"
	antenna page "${MD_FILE}" "${HTML_FILE}"
	if [ -d .git ]; then git add "${HTML_FILE}"; fi
done
echo "Done $(date)"

if [ "$1" = "publish" ]; then
	make save
fi


