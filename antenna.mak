#
# A rethink on my site build makefile
#

SUNDAY = $(shell reldate sunday)
SATURDAY = $(shell reldate saturday)
VOL_NO = $(shell date +%Y.%W)

YEAR = 2023
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

section_names = socal_north pacific ham_radio tech_likely columns weather writing games

md_files = $(addsuffix .md,$(section_names))

html_files = $(addsuffix .html,$(section_names))

build: harvest markdown html archives index.html about.html search.html README.html CITATION.cff pagefind

harvest: *.skim

*.skim: *.txt

*.txt: .FORCE
	skimmer $@

#
# Helper rules to retrieve and debug specific feed lists
#
socal_north: .FORCE
	skimmer socal_north.txt

pacific: .FORCE
	skimmer pacific.txt

ham_radio: .FORCE
	skimmer ham_radio.txt

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

markdown: $(md_files)

$(md_files): .FORCE
	sqlite3 $(basename $@).skim "UPDATE items SET status = 'read'"
	sqlite3 $(basename $@).skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"
	skim2md -title "$(shell echo $(basename $@) | sed -E 's/_/ /g') $(VOL_NO)" \
		-frontmatter -pocket $(basename $@).skim \
		>$@
	mkdir -p $(YEAR)
	cp -v "$@" "$(YEAR)/$(basename $@)_$(VOL_NO).md"

html: front_page.tmpl $(html_files)

%.html: %.md front_page.tmpl
	pandoc -f markdown -t html5 \
           --lua-filter=links-to-html.lua \
	       --metadata urls_file="$(basename $@).txt" \
           --metadata ram_radio_page="ham_radio.html" \
           --metadata pacific_page="pacific.html" \
           --metadata socal_north_page="socal_north.html" \
           --metadata tech_likely_page="tech_likely.html" \
           --metadata columns_page="columns.html" \
           --metadata weather_page="weather.html" \
           --template front_page.tmpl \
           $< \
           >$@

archives: mk_archives.bash archives.tmpl
	./mk_archives.bash      
	cd $(YEAR) && make
	git add $(YEAR)

pagefind: .FORCE
	pagefind \
	--verbose \
	--force-language en \
	--site .
	git add pagefind

clean: .FORCE
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
	cd $(YEAR) && make clean

CITATION.cff: .FORCE
	@cat codemeta.json | sed -E   's/"@context"/"at__context"/g;s/"@type"/"at__type"/g;s/"@id"/"at__id"/g' >_codemeta.json
	@echo '' | pandoc --metadata title="Cite $(PROJECT)" --metadata-file=_codemeta.json --template=codemeta-cff.tmpl >CITATION.cff

about.html: about.md
	pandoc --metadata title="About $(PROJECT)" \
		--lua-filter=links-to-html.lua \
		--metadata ham_radio_page="ham_radio.html" \
		--metadata pacific_page="pacific.html" \
		--metadata socal_north_page="socal_north.html" \
		--metadata tech_likely_page="tech_likely.html" \
		--metadata columns_page="columns.html" \
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
		--metadata ham_radio_page="ham_radio.html" \
		--metadata pacific_page="pacific.html" \
		--metadata socal_north_page="socal_north.html" \
		--metadata tech_likely_page="tech_likely.html" \
		--metadata columns_page="columns.html" \
		--metadata weather_page="weather.html" \
		--template front_page.tmpl \
		index.md >index.html

search.html: .FORCE
	@echo '' | pandoc --metadata title="$(PROJECT) Search" \
		--lua-filter=links-to-html.lua \
		--metadata ham_radio_page="ham_radio.html" \
		--metadata pacific_page="pacific.html" \
		--metadata socal_north_page="socal_north.html" \
		--metadata tech_likely_page="tech_likely.html" \
		--metadata columns_page="columns.html" \
		--metadata weather_page="weather.html" \
		--template front_page.tmpl \
		search.md >search.html

README.html: .FORCE
	@echo '' | pandoc --metadata title="Read about $(PROJECT)" \
		--lua-filter=links-to-html.lua \
		--metadata ham_radio_page="ham_radio.html" \
		--metadata pacific_page="pacific.html" \
		--metadata socal_north_page="socal_north.html" \
		--metadata tech_likely_page="tech_likely.html" \
		--metadata columns_page="columns.html" \
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
	./publish.bash

.FORCE:
