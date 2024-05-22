#
# A rethink on my site build makefile
#

SUNDAY = $(shell reldate sunday)
SATURDAY = $(shell reldate saturday)
VOL_NO = $(shell date +%Y.%W)

YEAR = 2024
ifneq ($(vol),)
        VOL_NO=$(vol)
endif

ifneq ($(start),)
        SUNDAY = $(start)
endif
ifneq ($(end),)
        SATURDAY = $(end)
endif

PROJECT = Antenna

section_names = socal_north pacific mid_central central_coast tech_likely columns weather writing games journalism libraries home parks motorcycles retro_computing health going_electric.txt

md_files = $(addsuffix .md,$(section_names))

html_files = $(addsuffix .html,$(section_names))

build: harvest markdown html archives index.html about.html search.html README.html CITATION.cff pagefind dump

world: snapshots harvest markdown html archives index.html about.html search.html README.html CITATION.cff pagefind dump

california: harvest markdown html archives index.html about.html search.html README.html CITATION.cff pagefind dump

snapshots: .FORCE
	cd snapshots && make

website: markdown html archives index.html about.html search.html README.html pagefind

harvest: *.skim

*.skim: *.txt

*.txt: .FORCE
	-skimmer $@

#
# Helper rules to retrieve and debug specific feed lists
#
socal_north: .FORCE
	skimmer socal_north.txt

pacific: .FORCE
	skimmer pacific.txt

mid_central: .FORCE
	skimmer mid_central.txt

central_coast: .FORCE
	skimmer central_coast.txt

tech_likely: .FORCE
	skimmer tech_likely.txt

columns: .FORCE
	skimmer columns.txt

weather: .FORCE
	skimmer weather.txt

writing: .FORCE
	skimmer writing.txt

games: .FORCE
	skimmer games.txt

libraries: .FORCE
	skimmer libraries.txt

journalism: .FORMCE
	skimmer journalism.txt

parks: .FORCE
	skimmer parks.txt

health: .FORCE
	skimmer health.txt

motorcycles: .FORCE
	skimmer motorcycles.txt

retro_computing: .FORCE
	skimmer retro_computing.txt

going_electric: .FORCE
	skimmer going_electric.txt

markdown: $(md_files)

$(md_files): .FORCE
	#"DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%'"
	sqlite3 $(basename $@).skim "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%'"
	sqlite3 $(basename $@).skim "UPDATE items SET status = 'read'"
	sqlite3 $(basename $@).skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"
	skim2md -title "$(shell echo $(basename $@) | sed -E 's/_/ /g') $(VOL_NO)" \
		-frontmatter $(basename $@).skim \
		>$@
	mkdir -p $(YEAR)
	cp -v "$@" "archives/$(YEAR)/$(basename $@)_$(VOL_NO).md"
	git add "archives/$(YEAR)/$(basename $@)_$(VOL_NO).md"

html: front_page.tmpl $(html_files)

%.html: %.md front_page.tmpl
	pandoc -f markdown -t html5 \
           --lua-filter=links-to-html.lua \
	       --metadata urls_file="$(basename $@).txt" \
           --metadata mid_central_page="mid_central.html" \
           --metadata pacific_page="pacific.html" \
           --metadata socal_north_page="socal_north.html" \
           --metadata tech_likely_page="tech_likely.html" \
           --metadata libraries_page="libraries.html" \
           --metadata games_page="games.html" \
           --metadata parks_page="parks.html" \
           --metadata columns_page="columns.html" \
           --metadata weather_page="weather.html" \
           --template front_page.tmpl \
           $< \
           >$@

dump: .FORCE
	./skimmer_to_sql.bash
	git add *.sql.gz

load: .FORCE
	./sql_to_skimmer.bash

archives: mk_archives.bash archive_index.tmpl archive_year.tmpl
	./mk_archives.bash      
	cd archives/$(YEAR) && make
	cd archives && make
	git add archives
	

pagefind: .FORCE
	pagefind \
	--verbose \
	--force-language en \
	--site .
	git add pagefind

clean: .FORCE
	-rm mid_central.md 2>/dev/null
	-rm mid_central.html 2>/dev/null
	-rm tech_likely.md 2>/dev/null
	-rm tech_likely.html 2>/dev/null
	-rm socal_north.md 2>/dev/null
	-rm socal_north.html 2>/dev/null
	-rm weather.md 2>/dev/null
	-rm weather.html 2>/dev/null
	-rm pacific.md 2>/dev/null
	-rm pacific.html 2>/dev/null
	-rm jouranlism.md 2>/dev/null
	-rm jouranlism.html 2>/dev/null
	-rm retro_computing.md 2>/dev/null
	-rm retro_computing.html 2>/dev/null
	-rm motocycles.md 2>/dev/null
	-rm motocycles.html 2>/dev/null
	-rm libraries.md 2>/dev/null
	-rm libraries.html 2>/dev/null
	-rm parks.md 2>/dev/null
	-rm parks.html 2>/dev/null
	-rm writing.md 2>/dev/null
	-rm writing.html 2>/dev/null
	-rm health.md 2>/dev/null
	-rm health.html 2>/dev/null
	cd archives/$(YEAR) && make clean
	cd archives && make clean

CITATION.cff: .FORCE
	@cat codemeta.json | sed -E   's/"@context"/"at__context"/g;s/"@type"/"at__type"/g;s/"@id"/"at__id"/g' >_codemeta.json
	@echo '' | pandoc --metadata title="Cite $(PROJECT)" --metadata-file=_codemeta.json --template=codemeta-cff.tmpl >CITATION.cff

about.html: about.md
	pandoc --metadata title="About $(PROJECT)" \
		--lua-filter=links-to-html.lua \
		--metadata mid_central_page="mid_central.html" \
		--metadata pacific_page="pacific.html" \
		--metadata socal_north_page="socal_north.html" \
		--metadata tech_likely_page="tech_likely.html" \
		--metadata columns_page="columns.html" \
        --metadata libraries_page="libraries.html" \
        --metadata games_page="games.html" \
        --metadata parks_page="parks.html" \
		--metadata weather_page="weather.html" \
        --template front_page.tmpl \
		about.md >about.html

about.md: .FORCE
	@cat codemeta.json | sed -E 's/"@context"/"at__context"/g;s/"@type"/"at__type"/g;s/"@id"/"at__id"/g' >_codemeta.json
	@echo "" | pandoc --metadata title="About $(PROJECT)" \
		--metadata-file=_codemeta.json \
		--template codemeta-about.tmpl >about.md #2>/dev/null;
	@if [ -f _codemeta.json ]; then rm _codemeta.json; fi

index.html: .FORCE
	@echo '' | pandoc --metadata title="The $(PROJECT)" \
		--lua-filter=links-to-html.lua \
		--metadata mid_central_page="mid_central.html" \
		--metadata pacific_page="pacific.html" \
		--metadata socal_north_page="socal_north.html" \
		--metadata tech_likely_page="tech_likely.html" \
		--metadata columns_page="columns.html" \
        --metadata libraries_page="libraries.html" \
        --metadata games_page="games.html" \
        --metadata parks_page="parks.html" \
		--metadata weather_page="weather.html" \
		--template front_page.tmpl \
		index.md >index.html

search.html: .FORCE
	@echo '' | pandoc --metadata title="$(PROJECT) Search" \
		--lua-filter=links-to-html.lua \
		--metadata mid_central_page="mid_central.html" \
		--metadata pacific_page="pacific.html" \
		--metadata socal_north_page="socal_north.html" \
		--metadata tech_likely_page="tech_likely.html" \
		--metadata columns_page="columns.html" \
        --metadata libraries_page="libraries.html" \
        --metadata games_page="games.html" \
        --metadata parks_page="parks.html" \
		--metadata weather_page="weather.html" \
		--template front_page.tmpl \
		search.md >search.html

README.html: .FORCE
	@echo '' | pandoc --metadata title="Read about $(PROJECT)" \
		--lua-filter=links-to-html.lua \
		--metadata mid_central_page="mid_central.html" \
		--metadata pacific_page="pacific.html" \
		--metadata socal_north_page="socal_north.html" \
		--metadata tech_likely_page="tech_likely.html" \
		--metadata columns_page="columns.html" \
        --metadata libraries_page="libraries.html" \
        --metadata games_page="games.html" \
        --metadata parks_page="parks.html" \
        --metadata parks_page="parks.html" \
		--metadata weather_page="weather.html" \
		--template front_page.tmpl \
		README.md >README.html

	
status:
	git status

save:
	@if [ "$(msg)" != "" ]; then git commit -am "$(msg)"; else git commit -am "Quick Save"; fi
	git push origin $(BRANCH)

refresh:
	git fetch origin
	git pull origin $(BRANCH)

publish: .FORCE
	@if [ "$(msg)" != "" ]; then git commit -am "$(msg)"; else git commit -am "Publish Site"; fi
	git push origin main

.FORCE:
