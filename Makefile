#
# Build the Antenna site
#

SUNDAY=$(shell reldate sunday)
SATURDAY=$(shell reldate saturday)
VOL_NO=$(shell date +%Y.%W)

YEAR=2023
ifneq ($(vol),)
	VOL_NO=$(vol)
endif

ifneq ($(start),)
	SUNDAY = $(start)
endif
ifneq ($(end),)
	SATURDAY = $(end)
endif

HTML_PAGES=$(shell ls -1 *.md | sed -E "s/.md/.html/")

#
# build, the start of the rules to build the site
#
build: mid_central socal_north weather pacific archives $(HTML_PAGES) pagefind

%.html: %.md front_page.tmpl
	pandoc -f markdown -t html5 \
 	       --lua-filter=links-to-html.lua \
	       --metadata title="The Antenna" \
		   --metadata mid_central_page="mid_central.html" \
	       --metadata pacific_page="pacific.html" \
	       --metadata socal_north_page="socal_north.html" \
	       --metadata weather_page="weather.html" \
		   --template front_page.tmpl \
		   $< \
		   >$@

archives: mk_archives.bash archives.tmpl
	./mk_archives.bash	
	cd $(YEAR) && make
	git add $(YEAR)

mid_central: mid_central.html

mid_central.html: mid_central.md front_page.tmpl
	pandoc -f markdown -t html5 \
	       --lua-filter=links-to-html.lua \
	       --metadata title="Mid Central, vol. $(VOL_NO)" \
	       --metadata feed_name="Mid Central" \
		   --metadata mid_central_page="mid_central.html" \
	       --metadata socal_north_page="socal_north.html" \
	       --metadata pacific_page="pacific.html" \
	       --metadata weather_page="weather.html" \
	       --metadata urls_file="mid_central.txt" \
		   --template front_page.tmpl \
		   mid_central.md \
		   >mid_central.html

mid_central.md: mid_central.txt
	skim2md mid_central.skim >mid_central.md
	cp mid_central.md $(YEAR)/mid_central_$(VOL_NO).md

mid_central.txt:
	env SKIM_USER_AGENT="User-Agent: curl/8.4.0" skimmer mid_central.txt
	sqlite3 mid_central.skim "UPDATE items SET status = 'read'"
	sqlite3 mid_central.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"

socal_north: socal_north.html

socal_north.html: socal_north.md front_page.tmpl
	pandoc -f markdown -t html5 \
	       --lua-filter=links-to-html.lua \
	       --metadata title="SoCal North, vol. $(VOL_NO)" \
	       --metadata feed_name="SoCal North" \
		   --metadata mid_central_page="mid_central.html" \
	       --metadata socal_north_page="socal_north.html" \
	       --metadata pacific_page="pacific.html" \
	       --metadata weather_page="weather.html" \
	       --metadata urls_file="socal_north.txt" \
		   --template front_page.tmpl \
		   socal_north.md \
		   >socal_north.html

socal_north.md: socal_north.txt
	skim2md socal_north.skim >socal_north.md
	cp socal_north.md $(YEAR)/socal_north_$(VOL_NO).md

socal_north.txt:
	env SKIM_USER_AGENT="User-Agent: curl/8.4.0" skimmer socal_north.txt
	sqlite3 socal_north.skim "UPDATE items SET status = 'read'"
	sqlite3 socal_north.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"

pacific: pacific.html

pacific.html: pacific.md front_page.tmpl
	pandoc -f markdown -t html5 \
               --lua-filter=links-to-html.lua \
	       --metadata title="Pacific, vol. $(VOL_NO)" \
	       --metadata feed_name="Pacific" \
		   --metadata mid_central_page="mid_central.html" \
	       --metadata socal_north_page="socal_north.html" \
	       --metadata pacific_page="pacific.html" \
	       --metadata weather_page="weather.html" \
	       --metadata urls_file="pacific.txt" \
		   --template front_page.tmpl \
		   pacific.md \
		   >pacific.html

pacific.md: pacific.txt
	./pacific_filter.bash
	skim2md pacific.skim >pacific.md
	cp pacific.md $(YEAR)/pacific_$(VOL_NO).md

pacific.txt:
	env SKIM_USER_AGENT="User-Agent: curl/8.4.0" skimmer pacific.txt
	sqlite3 pacific.skim "UPDATE items SET status = 'read'"
	sqlite3 pacific.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"

weather: weather.html 

weather.html: weather.md front_page.tmpl
	pandoc -f markdown -t html5 \
               --lua-filter=links-to-html.lua \
	       --metadata title="Weather, vol. $(VOL_NO)" \
	       --metadata feed_name="Weather" \
	       --metadata socal_north_page="socal_north.html" \
		   --metadata mid_central_page="mid_central.html" \
	       --metadata pacific_page="pacific.html" \
	       --metadata weather_page="weather.html" \
	       --metadata urls_file="weather.txt" \
		   --template front_page.tmpl \
		   weather.md \
		   >"weather.html"

weather.md: weather.txt
	skim2md weather.skim >"weather.md"
	cp weather.md $(YEAR)/weather_$(VOL_NO).md

weather.txt:
	env SKIM_USER_AGENT="User-Agent: curl/8.4.0" skimmer weather.txt
	sqlite3 weather.skim "UPDATE items SET status = 'read'"
	sqlite3 weather.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"

# Clean only removes up the current volume pages
clean: .FORCE
	-rm mid_central.md 2>/dev/null
	-rm mid_central.html 2>/dev/null
	-rm socal_north.md 2>/dev/null
	-rm socal_north.html 2>/dev/null
	-rm weather.md 2>/dev/null
	-rm weather.html 2>/dev/null
	-rm pacific.md 2>/dev/null
	-rm pacific.html 2>/dev/null
	cd $(YEAR) && make clean


CITATION.cff: .FORCE
	@cat codemeta.json | sed -E   's/"@context"/"at__context"/g;s/"@type"/"at__type"/g;s/"@id"/"at__id"/g' >_codemeta.json
	@echo '' | pandoc --metadata title="Cite $(PROJECT)" --metadata-file=_codemeta.json --template=codemeta-cff.tmpl >CITATION.cff

about.md: .FORCE
	@cat codemeta.json | sed -E 's/"@context"/"at__context"/g;s/"@type"/"at__type"/g;s/"@id"/"at__id"/g' >_codemeta.json
	@echo "" | pandoc --metadata title="About $(PROJECT)" --metadata-file=_codemeta.json --template codemeta-about.tmpl >about.md #2>/dev/null;
	#@if [ -f _codemeta.json ]; then rm _codemeta.json; fi

pagefind: .FORCE
	pagefind --verbose --output-path ./pagefind --site .
	git add pagefind

#clean-website:
#	make -f website.mak clean

#website: clean-website .FORCE
#	make -f website.mak

status:
	git status

save:
	@if [ "$(msg)" != "" ]; then git commit -am "$(msg)"; else git commit -am "Quick Save"; fi
	git push origin $(BRANCH)

refresh:
	git fetch origin
	git pull origin $(BRANCH)

publish: .FORCE build
	./publish.bash

get_updates: .FORCE
	-skimmer socal_north.txt
	sqlite3 mid_central.skim "UPDATE items SET status = 'read'"
	sqlite3 mid_central.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"
	-skimmer pacific.txt
	sqlite3 pacific.skim "UPDATE items SET status = 'read'"
	sqlite3 pacific.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"
	-skimmer mid_central.txt
	sqlite3 mid_central.skim "UPDATE items SET status = 'read'"
	sqlite3 mid_central.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"
	-skimmer weather.txt
	sqlite3 weather.skim "UPDATE items SET status = 'read'"
	sqlite3 weather.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"
	touch socal_north.txt pacific.txt mid_central.txt weather.txt

.FORCE:
