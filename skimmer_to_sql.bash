#!/bin/bash

# Go through all the DB and dump the SQL to create and populate them
find . -type f | grep '.skim$' | while read -r FNAME; do
	ONAME="$(basename "${FNAME}" ".skim").sql"
	echo "Dumping up $FNAME to $ONAME"
	sqlite3 "${FNAME}" '.dump' >"${ONAME}"
	gzip "${ONAME}"
done
