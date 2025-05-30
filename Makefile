#
# A rethink on my site build makefile
#

TODAY = $(shell reldate +0 day)
SUNDAY = $(shell reldate sunday)
ifeq ($(TODAY),$(SUNDAY))
	SUNDAY = $(shell reldate --from $(TODAY) -- -7 day)
endif
SATURDAY = $(shell reldate saturday)
ifeq ($(TODAY),$(SATURDAY))
	SUNDAY = $(shell reldate --from $(TODAY) -- -7 day)
endif
VOL_NO = $(shell date +%Y.%W)

YEAR = $(shell date +%Y)
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

section_names = planet north_america socal_north pacific ham_radio science_and_technology columns weather writing games journalism libraries home parks motorcycles retro_computing health going_electric food craft small_papers snapshots

md_files = $(addsuffix .md,$(section_names))

html_files = $(addsuffix .html,$(section_names))

build: harvest markdown html archives index.html forcecasts.html about.html README.html CITATION.cff dump

world: build

website: markdown html archives index.html forecasts.html about.html README.html 

harvest: $(section_names)

*.skim: *.txt

*.txt: .FORCE
	-skimmer $@

#
# Helper rules to retrieve and debug specific feed lists
#
food: .FORCE
	-skimmer food.txt

snapshots: .FORCE
	-skimmer snapshots.txt

planet: .FORCE
	-skimmer planet.txt

north_america: .FORCE
	-skimmer north_america.txt

socal_north: .FORCE
	-skimmer socal_north.txt

pacific: .FORCE
	-skimmer pacific.txt

ham_radio: .FORCE
	-skimmer ham_radio.txt

columns: .FORCE
	-skimmer columns.txt

weather: .FORCE
	-skimmer weather.txt

writing: .FORCE
	-skimmer writing.txt

games: .FORCE
	-skimmer games.txt

libraries: .FORCE
	-skimmer libraries.txt

journalism: .FORCE
	-skimmer journalism.txt

craft: .FORCE
	-skimmer craft.txt

home: .FORCE
	-skimmer home.txt

parks: .FORCE
	-skimmer parks.txt

health: .FORCE
	-skimmer health.txt

motorcycles: .FORCE
	-skimmer motorcycles.txt

retro_computing: .FORCE
	-skimmer retro_computing.txt

going_electric: .FORCE
	-skimmer going_electric.txt

science_and_technology: .FORCE
	-skimmer science_and_technology.txt

small_papers: .FORCE
	-skimmer small_papers.txt

markdown: $(md_files)

$(md_files): .FORCE
	sqlite3 $(basename $@).skim "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%' OR LOWER(QUOTE(tags)) LIKE '%sports%' OR LOWER(QUOTE(tags)) LIKE '%opinion%' OR lower(quote(tags)) like '%obituar%' or lower(quote(tags)) like '%views/columnists%'"
	sqlite3 $(basename $@).skim "UPDATE items SET status = 'read'"
	sqlite3 $(basename $@).skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"
	skim2md -title "$(shell echo $(basename $@) | sed -E 's/_/ /g')" \
		-frontmatter $(basename $@).skim \
		>$@
	mkdir -p $(YEAR)
	cp -v "$@" "archives/$(YEAR)/$(basename $@)_$(VOL_NO).md"

html: front_page.tmpl $(html_files)

%.html: %.md front_page.tmpl
	pandoc -f markdown -t html5 \
           --lua-filter=links-to-html.lua \
	       --metadata urls_file="$(basename $@).txt" \
           --template front_page.tmpl \
           $< \
           >$@

dump: .FORCE
	./skimmer_to_sql.bash

load: .FORCE
	./sql_to_skimmer.bash

archives: mk_archives.bash archive_index.tmpl archive_year.tmpl .FORCE
	./mk_archives.bash      
	cd archives/$(YEAR) && make
	cd archives && make
	git add archives archives/$(YEAR)
	

pagefind: .FORCE
	pagefind \
	--verbose \
	--force-language en \
	--site .

clean: .FORCE
	-rm north_america.md 2>/dev/null
	-rm north_america.html 2>/dev/null
	-rm science_and_technology.md 2>/dev/null
	-rm science_and_technology.html 2>/dev/null
	-rm ham_radio.md 2>/dev/null
	-rm ham_radio.html 2>/dev/null
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
	-rm snapshots.md 2>/dev/null
	-rm snapshots.html 2>/dev/null
	-rm small_papers.md 2>/dev/null
	-rm small_papers.html 2>/dev/null
	cd archives && make clean

CITATION.cff: .FORCE
	@cat codemeta.json | sed -E   's/"@context"/"at__context"/g;s/"@type"/"at__type"/g;s/"@id"/"at__id"/g' >_codemeta.json
	@echo '' | pandoc --metadata title="Cite $(PROJECT)" --metadata-file=_codemeta.json --template=codemeta-cff.tmpl >CITATION.cff

about.html: about.md
	pandoc --metadata title="About $(PROJECT)" \
		--lua-filter=links-to-html.lua \
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
		--template front_page.tmpl \
		index.md >index.html

forecasts.html: .FORCE
	@echo '' | pandoc --metadata title="The $(PROJECT)" \
		--lua-filter=links-to-html.lua \
		--template front_page.tmpl \
		forecasts.md >forecasts.html
		

search.html: .FORCE
	@echo '' | pandoc --metadata title="$(PROJECT) Search" \
		--lua-filter=links-to-html.lua \
		--template front_page.tmpl \
		search.md >search.html

README.html: .FORCE
	@echo '' | pandoc --metadata title="Read about $(PROJECT)" \
		--lua-filter=links-to-html.lua \
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
	./publish.bash

.FORCE:
