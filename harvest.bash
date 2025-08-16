#!/bin/bash

export SKIM_USER_AGENT="curl/8.4.0"

# If no filename provided process all the URL files
if [ "$1" = "" ]; then
    find . -type f | grep -E "\.urls$" | while read -r URL_FILE; do
    skimmer "${URL_FILE}"
    done
else
    skimmer "$1"
fi
