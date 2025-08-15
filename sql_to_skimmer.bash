#!/bin/bash

# Go through all the DB and dump the SQL to create and populate them
find . -type f | grep '.sql.gz$' | while read -r FNAME; do
	ONAME="$(basename "${FNAME}" ".sql.gz").skim"
	if [ -f "${ONAME}" ]; then
		echo "Moving ${ONAME} to ${ONAME}.bak"
		mv "${ONAME}" "${ONAME}.bak"
	fi
	echo "Loading $ONAME from $FNAME"
	gunzip -c "${FNAME}" | sqlite3 "${ONAME}"
done
if [ -f news.skim ]; then
	mv news.skim snapshots/
fi
