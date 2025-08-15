#!/bin/bash

# Loop through all the skim files and delete all the items from tables.
find . -type f | grep -E '.skim$' | while read FNAME; do
	echo "Resetting ${FNAME}"
	sqlite3 "${FNAME}" 'delete from items;'
done

