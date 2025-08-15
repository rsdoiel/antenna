#!/bin/bash
#
# On 2024.04.03 I notice the feed from https://micsem.org/feed/ (a WP site)
#  contains spam for gambeling, easy money and people. That's a shame.
#  This script is part of that cleanup.
#

function clean_file() {
	FNAME="$1"
	cp -vp "${FNAME}" "${FNAME}.backup"
	TMP_FILE="$(basename "${FNAME}" ".md").tmp"
	grep -v '://micsem.org' "${FNAME}" >"${TMP_FILE}"
	mv -v "${TMP_FILE}" "${FNAME}"
}

#
# Main
#

#sqlite3 pacific.skim "delete from items where link like '%://micsem.org%';"
find . -type f | grep -E '.md$' | while read -r FNAME; do
	CHECK=$(grep '://micsem.org' "${FNAME}")
	if [ "$CHECK" != "" ]; then
		echo "Clean ${FNAME}"
		clean_file "${FNAME}"
	fi
done
#make pacific
#make html
#make archives
