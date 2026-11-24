#!/bin/bash

function build_site() {
	for LIST in socal_north.md north_america.md pacific.md planet.md columns.md science_and_technology.md retro_computing.md home.md food.md libraries.md ebooks.md small_papers.md journalism.md craft.md writing.md; do
		echo ""
		echo "Harvesting and rendering ${LIST}"
		echo "----------------------------------------"
		if ! antenna harvest "${LIST}"; then
			echo "Failed to harvest ${LIST}"
		fi	
		if ! antenna generate "${LIST}"; then
			echo "Failed to render ${LIST}"
		fi
		echo ""
	done

	# Find the CommonMark files and render them to HTML with Pandoc
	echo "Generating site pages"
	for MD_FILE in about.md forecasts.md index.md README.md TODO.md; do
  		HTML_FILE="$(basename "${MD_FILE}" ".md").html"
  		echo "Generating $HTML_FILE from $MD_FILE"
  		antenna page "${MD_FILE}" "${HTML_FILE}"
  		if [ -d .git ]; then git add "${HTML_FILE}"; fi
	done

	# The sitemap lists the site's pages, posts and each collection's
	# _items.html page, so it runs after generate and page. -clean removes
	# sitemap_N.xml files an earlier run left behind.
	echo "Generating sitemap"
	if antenna sitemap -clean; then
		if [ -d .git ]; then git add sitemap_*.xml; fi
	else
		echo "Failed to generate the sitemap"
	fi
	echo "Done $(date)"
}

WORK_DIR="$(dirname "$0")"
if [ "${WORK_DIR}" != "" ]; then
  cd "${WORK_DIR}" || exit 1
fi
PATH="${HOME}/bin:/usr/local/bin:/usr/bin"
export PATH
echo "$PATH"
build_site
if [ "$1" = "publish" ]; then
	make save
fi

#comics.md
#going_electric.md
#journalism.md
