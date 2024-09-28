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
		   --template ../archive_index.tmpl \
		   $< \
		   >$@

clean:
	rm *.html 2>/dev/null
	cd 2024 && make clean
	cd 2023 && make clean

.FORCE:
