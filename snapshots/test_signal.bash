#!/bin/bash

SKIM_FILE="news.skim"

sqlite3 "${SKIM_FILE}" "SELECT title, tags FROM items WHERE (link LIKE '%signalscv%' AND tags != '') AND ( json_extract(tags, '\$[0]') LIKE 'Opinion' OR json_extract(tags, '\$[1]') LIKE 'Opinion' OR json_extract(tags, '\$[2]') LIKE 'Opinion');"

