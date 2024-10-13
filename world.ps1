#!/usr/local/bin/pwsh
##
## Build Antenna site on Windows 10
##
param (
	[string]$start,
	[string]$end,
	[string]$vol
)
 
$TODAY = Get-Date -Format "yyyy-MM-dd"
$SUNDAY = reldate sunday
if ($TODAY -eq $SUNDAY) {
	$SUNDAY = reldate --from $TODAY -- -7 day
}

$SATURDAY = reldate saturday
if ($TODAY -eq $SATURDAY) {
	$SUNDAY = reldate --from $TODAY -- -7 day
}

$YEAR = Get-Date -Format "yyyy"
if ($start) {
	$SUNDAY = $start
}
if ($end) {
	$SATURDAY = $end
}
if ($vol) {
	$VOL_NO = $vol
} else {
	$VOL_NO = $TODAY
}

write-output "Antenna, $SUNDAY through $SATURDAY : Vol No. $VOL_NO"

$section_names = @(
	"north_america",
	"socal_north",
	"pacific",
	"ham_radio",
	"science_and_technology",
	"central_coast",
	"columns",
	"weather",
	"writing",
	"games",
	"journalism",
	"libraries",
	"home",
	"parks",
	"motorcycles",
	"retro_computing",
	"health",
	"going_electric",
	"food", 
	"craft"
)

$archive_folder = "archives/" + $YEAR
if (Test-Path -Path $archive_folder) {
	write-output "$archive_folder exists"
} else {
	mkdir -p $YEAR
}
foreach ($section_name in $section_names) {
	write-Output "Processing $section_name"
	$txt_file = $section_name + ".txt"
	$skim_file = $section_name + ".skim"
	$md_file = $section_name + ".md"
	$html_file = $section_name + ".html"
	$md_archive_file = "archives/" + $YEAR + "/" + $section_name + "_" + $VOL_NO + ".md"
	$title = $section_name.replace("_", " ")
###	skimmer $txt_file
	Write-Output "Selecting items"
	sqlite3 $skim_file "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%'"
	sqlite3 $skim_file "UPDATE items SET status = 'read'"
	sqlite3 $skim_file "UPDATE items SET status = 'saved' WHERE published >= '$SUNDAY' AND published <= '$SATURDAY'"
	Write-Output "Writing $md_file"
	skim2md -title $title -frontmatter $skim_file >$md_file
	Write-Output "Making $md_archive_file"
	copy $md_file $md_archive_file
### git add $md_archive_file
	Write-Output "Generating HTML with Pandoc $md_file to $html_file"
	pandoc -f markdown -t html5 --lua-filter=links-to-html.lua --metadata urls_file="$txt_file" --template front_page.tmpl -o $html_file $md_file
	write-Output "Processing $section_name completed"
	$out_name = $section_name + ".sql"
	Write-Output "Dumping up $skim_file to $out_name"
	sqlite3 $skim_file '.dump' >$out_name
	# Archive the SQL file.
	$compress = @{
		Path = $out_name
		CompressionLevel = "Optimal"
		DestinationPath = $out_name + ".zip"
		Force = $true
	}
	Compress-Archive @compress
	# Remove archived SQL file
	del $out_name
}

pagefind --verbose --force-language en --site .
### git add pagefind

## dump: .FORCE
## 	./skimmer_to_sql.bash
## 	git add *.sql.gz
## 
## load: .FORCE
## 	./sql_to_skimmer.bash
## 
## archives: mk_archives.bash archive_index.tmpl archive_year.tmpl
## 	./mk_archives.bash      
## 	cd archives/$(YEAR) && make
## 	cd archives && make
## 	git add archives
## 	
## 
## pagefind: .FORCE
## 	pagefind \
## 	--verbose \
## 	--force-language en \
## 	--site .
## 	git add pagefind
## 
## clean: .FORCE
## 	-rm north_america.md 2>/dev/null
## 	-rm north_america.html 2>/dev/null
## 	-rm science_and_technology.md 2>/dev/null
## 	-rm science_and_technology.html 2>/dev/null
## 	-rm ham_radio.md 2>/dev/null
## 	-rm ham_radio.html 2>/dev/null
## 	-rm tech_likely.md 2>/dev/null
## 	-rm tech_likely.html 2>/dev/null
## 	-rm socal_north.md 2>/dev/null
## 	-rm socal_north.html 2>/dev/null
## 	-rm weather.md 2>/dev/null
## 	-rm weather.html 2>/dev/null
## 	-rm pacific.md 2>/dev/null
## 	-rm pacific.html 2>/dev/null
## 	-rm jouranlism.md 2>/dev/null
## 	-rm jouranlism.html 2>/dev/null
## 	-rm retro_computing.md 2>/dev/null
## 	-rm retro_computing.html 2>/dev/null
## 	-rm motocycles.md 2>/dev/null
## 	-rm motocycles.html 2>/dev/null
## 	-rm libraries.md 2>/dev/null
## 	-rm libraries.html 2>/dev/null
## 	-rm parks.md 2>/dev/null
## 	-rm parks.html 2>/dev/null
## 	-rm writing.md 2>/dev/null
## 	-rm writing.html 2>/dev/null
## 	-rm health.md 2>/dev/null
## 	-rm health.html 2>/dev/null
## 	cd archives && make clean
## 
## CITATION.cff: .FORCE
## 	@cat codemeta.json | sed -E   's/"@context"/"at__context"/g;s/"@type"/"at__type"/g;s/"@id"/"at__id"/g' >_codemeta.json
## 	@echo '' | pandoc --metadata title="Cite $(PROJECT)" --metadata-file=_codemeta.json --template=codemeta-cff.tmpl >CITATION.cff
## 
## about.html: about.md
## 	pandoc --metadata title="About $(PROJECT)" \
## 		--lua-filter=links-to-html.lua \
##         --template front_page.tmpl \
## 		about.md >about.html
## 
## about.md: .FORCE
## 	@cat codemeta.json | sed -E 's/"@context"/"at__context"/g;s/"@type"/"at__type"/g;s/"@id"/"at__id"/g' >_codemeta.json
## 	@echo "" | pandoc --metadata title="About $(PROJECT)" \
## 		--metadata-file=_codemeta.json \
## 		--template codemeta-about.tmpl >about.md #2>/dev/null;
## 	@if [ -f _codemeta.json ]; then rm _codemeta.json; fi
## 
## index.html: .FORCE
## 	@echo '' | pandoc --metadata title="The $(PROJECT)" \
## 		--lua-filter=links-to-html.lua \
## 		--template front_page.tmpl \
## 		index.md >index.html
## 
## search.html: .FORCE
## 	@echo '' | pandoc --metadata title="$(PROJECT) Search" \
## 		--lua-filter=links-to-html.lua \
## 		--template front_page.tmpl \
## 		search.md >search.html
## 
## README.html: .FORCE
## 	@echo '' | pandoc --metadata title="Read about $(PROJECT)" \
## 		--lua-filter=links-to-html.lua \
## 		--template front_page.tmpl \
## 		README.md >README.html
## 
## 	
## status:
## 	git status
## 
## save:
## 	@if [ "$(msg)" != "" ]; then git commit -am "$(msg)"; else git commit -am "Quick Save"; fi
## 	git push origin $(BRANCH)
## 
## refresh:
## 	git fetch origin
## 	git pull origin $(BRANCH)
## 
## publish: .FORCE
## 	./publish.bash
## 
## .FORCE:
## 