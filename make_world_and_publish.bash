#!/bin/bash

function harvest_active_lists() {
	for LIST in socal_north.md north_america.md pacific.md planet.md columns.md science_and_technology.md retro_computing.md home.md food.md libraries.md small_papers.md journalism.html craft.md writing.md; do
		echo ""
		echo "Harvesting ${LIST}"
		echo "----------------------------------------"
		if ! antenna harvest "${LIST}"; then
			echo "Failed to harvest ${LIST}"
		fi
		echo ""
	done
}

WORK_DIR="$(dirname "$0")"
if [ "${WORK_DIR}" != "" ]; then
  cd "${WORK_DIR}" || exit 1
fi
PATH="${HOME}/bin:/usr/local/bin:/usr/bin"
export PATH
echo "$PATH"
#antenna harvest
harvest_active_lists
./website.bash
if [ "$1" = "publish" ]; then
  ./publish.bash
fi

#comics.md
#going_electric.md
#journalism.md
