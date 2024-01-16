#!/bin/bash


find . -type f | grep '.skim$' | while read -r FNAME; do
	ONAME="$(basename "${FNAME}" ".skim").sql"
	echo "Dumping up $FNAME to $ONAME"
	cat <<EOT | sqlite3 "${FNAME}"
.once ${ONAME}
.dump
EOT
done
