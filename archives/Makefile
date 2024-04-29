#!/bin/bash

#
# Build the Antenna Archives Pages
#


HTML_PAGES=$(shell ls -1 *.md | sed -E "s/.md/.html/")

build: $(HTML_PAGES)

%.html: %.md
	pandoc -f markdown -t html5 \
		   --lua-filter=../links-to-html.lua \
		   --metadata title="Antenna archives" \
		   --metadata feed_name="$(basename $<).txt"\
		   --metadata mid_central_page="../mid_central.html" \
		   --metadata pacific_page="../pacific.html" \
		   --metadata socal_north_page="../socal_north.html" \
		   --metadata tech_likely_page="../tech_likely.html" \
		   --metadata libraries_page="../libraries.html" \
		   --metadata games_page="../games.html" \
		   --metadata parks_page="parks.html" \
		   --metadata columns_page="columns.html" \
		   --metadata weather_page="weather.html" \
		   --template ../archive_index.tmpl \
		   $< \
		   >$@

clean:
	rm *.html 2>/dev/null

.FORCE:
