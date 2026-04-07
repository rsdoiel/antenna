#!/bin/bash

function build_site() {
	for LIST in socal_north.md north_america.md pacific.md planet.md columns.md science_and_technology.md retro_computing.md home.md food.md libraries.md small_papers.md journalism.html craft.md writing.md; do
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
	for MD_FILE in about.md forecasts.md index.md README.md search.md TODO.md; do
  		HTML_FILE="$(basename "${MD_FILE}" ".md").html"
  		echo "Generating $HTML_FILE from $MD_FILE"
  		antenna page "${MD_FILE}" "${HTML_FILE}"
  		if [ -d .git ]; then git add "${HTML_FILE}"; fi
	done
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
  ./publish.bash
fi

#comics.md
#going_electric.md
#journalism.md
