#
# Build the Antenna site
#

SUNDAY=$(shell reldate -- -1 sunday)
SATURDAY=$(shell reldate 1 saturday)
VOL_NO=$(shell date +%Y.%W)

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

build: socal_north weather pacific $(HTML_PAGES)

HTML_PAGES=$(shell ls -1 *.md | sed -E 's/.md/.html/')


%.html: %.md front_page.tmpl
	pandoc -f markdown -t html5 \
 		   --lua-filter=links-to-html.lua \
	       --metadata title="The Antenna" \
	       --metadata pacific_page="pacific_$(VOL_NO).html" \
	       --metadata socal_north_page="socal_north_$(VOL_NO).html" \
	       --metadata weather_page="weather_$(VOL_NO).html" \
		   --template front_page.tmpl \
		   $< \
		   >$@

archives: mk_archives.bash archives.tmpl
	./mk_archives.bash	
	cd 2023 && make

socal_north: socal_north_$(VOL_NO).html

socal_north_$(VOL_NO).html: socal_north_$(VOL_NO).md front_page.tmpl
	pandoc -f markdown -t html5 \
 		   --lua-filter=links-to-html.lua \
	       --metadata title="SoCal North, vol. $(VOL_NO)" \
	       --metadata socal_north_page="socal_north_$(VOL_NO).html" \
	       --metadata pacific_page="pacific_$(VOL_NO).html" \
	       --metadata weather_page="weather_$(VOL_NO).html" \
	       --metadata urls_file="socal_north.txt" \
		   --template front_page.tmpl \
		   socal_north_$(VOL_NO).md \
		   >"socal_north_$(VOL_NO).html"

socal_north_$(VOL_NO).md: socal_north.txt
	sqlite3 socal_north.skim "UPDATE items SET status = 'read' WHERE published <= '$(SUNDAY)' AND published >= '$(SATURDAY)'"
	sqlite3 socal_north.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"
	skim2md socal_north.skim >"socal_north_$(VOL_NO).md"

socal_north.txt:
	-skimmer socal_north.txt

pacific: pacific_$(VOL_NO).html

pacific_$(VOL_NO).html: pacific_$(VOL_NO).md front_page.tmpl


pacific_$(VOL_NO).md: pacific.txt
	sqlite3 pacific.skim "UPDATE items SET status = 'read' WHERE published <= '$(SUNDAY)' AND published >= '$(SATURDAY)'"
	sqlite3 pacific.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"
	sqlite3 pacific.skim "UPDATE items SET status = 'read' WHERE description LIKE '%(Reuters)%'"
	skim2md pacific.skim >"pacific_$(VOL_NO).md"

pacific.txt:
	-skimmer pacific.txt

weather: weather_$(VOL_NO).html 

weather_$(VOL_NO).html: weather_$(VOL_NO).md front_page.tmpl
	pandoc -f markdown -t html5 \
 		   --lua-filter=links-to-html.lua \
	       --metadata title="Weather, vol. $(VOL_NO)" \
	       --metadata socal_north_page="socal_north_$(VOL_NO).html" \
	       --metadata pacific_page="pacific_$(VOL_NO).html" \
	       --metadata weather_page="weather_$(VOL_NO).html" \
	       --metadata urls_file="weather.txt" \
		   --template front_page.tmpl \
		   weather_$(VOL_NO).md \
		   >"weather_$(VOL_NO).html"

weather_$(VOL_NO).md: weather.txt
	sqlite3 weather.skim "UPDATE items SET status = 'saved'" 
	skim2md weather.skim >"weather_$(VOL_NO).md"

weather.txt:
	-skimmer weather.txt

# Clean only removes up the current volume pages
clean: .FORCE
	-rm socal_north_$(VOL_NO).md 2>/dev/null
	-rm socal_north_*.html 2>/dev/null
	-rm weather_$(VOL_NO).md 2>/dev/null
	-rm weather_*.html 2>/dev/null
	cd 2023 && make clean


CITATION.cff: .FORCE
	@cat codemeta.json | sed -E   's/"@context"/"at__context"/g;s/"@type"/"at__type"/g;s/"@id"/"at__id"/g' >_codemeta.json
	@echo '' | pandoc --metadata title="Cite $(PROJECT)" --metadata-file=_codemeta.json --template=codemeta-cff.tmpl >CITATION.cff

about.md: .FORCE
	@cat codemeta.json | sed -E 's/"@context"/"at__context"/g;s/"@type"/"at__type"/g;s/"@id"/"at__id"/g' >_codemeta.json
	@echo "" | pandoc --metadata-file=_codemeta.json --template codemeta-about.tmpl >about.md 2>/dev/null;
	@if [ -f _codemeta.json ]; then rm _codemeta.json; fi

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

publish: .FORCE build save
	./publish.bash

get_updates: .FORCE
	-skimmer socal_north.txt
	-skimmer pacific.txt
	-skimmer weather.txt

.FORCE:
