#!/bin/bash

#
# Build the Antenna Archives Pages
#


HTML_PAGES=$(shell ls -1 *.md | sed -E "s/.md/.html/")

build: $(HTML_PAGES)

%.html: %.md
	pandoc -f markdown -t html5 \
           --lua-filter=../links-to-html.lua \
	       --metadata title="The Antenna Archives" \
	       --metadata feed_name="$(basename $<)"\
           --metadata mid_central_page="../mid_central.html" \
           --metadata pacific_page="../pacific.html" \
           --metadata socal_north_page="../socal_north.html" \
           --metadata tech_likely_page="../tech_likely.html" \
           --metadata weather_page="../weather.html" \
	       --template ../archives.tmpl \
		   $< \
		   >$@

clean:
	rm *.html 2>/dev/null

.FORCE:
