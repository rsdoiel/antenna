#!/bin/bash

export SKIM_USER_AGENT="curl/8.5.0 (${USER}@gmail.com, ${USER}.github.io)"

# If no filename provided process all the URL files
if [ "$1" = "" ]; then
    find . -type f | grep -E "\.urls$" | sort -u | while read -r URL_FILE; do
    echo "Harvesting ${URL_FILE}"
    skimmer "${URL_FILE}"
    done
else
    skimmer "$1"
fi
