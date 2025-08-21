#
# A simple for packaging the Antenna project.
#
PROJECT = Antenna

VERSION = $(shell grep '"version":' codemeta.json | cut -d\"  -f 4)

build: CITATION.cff about.md check_for_software harvest website

check_for_software: .FORCE
	./check_for_software.bash

harvest: .FORCE
	./harvest.bash 2>harvest.log

website: .FORCE
	./website.bash

pagefind: .FORCE
	pagefind \
	--verbose \
	--force-language en \
	--site .

clean: .FORCE
	-rm *.html 2>/dev/null

CITATION.cff: .FORCE
	@cmt codemeta.json CITATION.cff
	
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

release: .FORCE
	cmt codemeta.json CITATION.cff about.md
	-rm -fR dist/* 2>/dev/null
	mkdir -p dist
	cp -v *.md dist/
	cp -v check_for_software.* dist/
	cp -v harvest.* dist/
	cp -v website.* dist/
	cp -v front_page.yaml dist/
	cp -v other_reading.yaml dist/
	cp -v pagefind.yaml dist/
	cd dist && zip -r $(PROJECT)-$(VERSION).zip *.*
.FORCE:
