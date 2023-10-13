



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

build: index about socal_north  weather

index: index.html

index.html: README.md front_page.tmpl
	pandoc -f markdown -t html5 \
	       --metadata title="The Antenna" \
	       --metadata socal_north_page="socal_north_$(VOL_NO).html" \
	       --metadata weather_page="weather_$(VOL_NO).html" \
		   --template front_page.tmpl \
		   README.md \
		   >index.html

about: about.html

about.html: about.md
	pandoc -f markdown -t html5 \
	       --metadata title="About the Antenna" \
	       --metadata socal_north_page="socal_north_$(VOL_NO).html" \
	       --metadata weather_page="weather_$(VOL_NO).html" \
		   --template front_page.tmpl \
		   about.md \
		   >about.html

socal_north: socal_north_$(VOL_NO).html

socal_north_$(VOL_NO).html: socal_north_$(VOL_NO).md front_page.tmpl
	pandoc -f markdown -t html5 \
	       --metadata title="SoCal North, vol. $(VOL_NO)" \
	       --metadata socal_north_page="socal_north_$(VOL_NO).html" \
	       --metadata weather_page="weather_$(VOL_NO).html" \
	       --metadata urls_file="socal_north.urls" \
		   --template front_page.tmpl \
		   socal_north_$(VOL_NO).md \
		   >"socal_north_$(VOL_NO).html"

socal_north_$(VOL_NO).md:
	-skimmer socal_north.urls
	sqlite3 socal_north.skim "UPDATE items SET status = 'read' WHERE published <= '$(SUNDAY)' AND published >= '$(SATURDAY)'"
	sqlite3 socal_north.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"
	skim2md socal_north.skim >"socal_north_$(VOL_NO).md"

weather: weather_$(VOL_NO).html 

weather_$(VOL_NO).html: weather_$(VOL_NO).md front_page.tmpl
	pandoc -f markdown -t html5 \
	       --metadata title="Weather, vol. $(VOL_NO)" \
	       --metadata socal_north_page="socal_north_$(VOL_NO).html" \
	       --metadata weather_page="weather_$(VOL_NO).html" \
	       --metadata urls_file="weather.urls" \
		   --template front_page.tmpl \
		   weather_$(VOL_NO).md \
		   >"weather_$(VOL_NO).html"

weather_$(VOL_NO).md:
	-skimmer weather.urls
	sqlite3 weather.skim "UPDATE items SET status = 'saved'" 
	skim2md weather.skim >"weather_$(VOL_NO).md"

# Clean only removes up the current volume pages
clean: .FORCE
	-rm socal_north_$(VOL_NO).md 2>/dev/null
	-rm socal_north_$(VOL_NO).html 2>/dev/null
	-rm weather_$(VOL_NO).md 2>/dev/null
	-rm weather_$(VOL_NO).html 2>/dev/null
	#rm *.skim 2>/dev/null


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

publish: build save .FORCE
	./publish.bash



.FORCE:
