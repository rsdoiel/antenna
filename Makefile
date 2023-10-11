
socal_north.html: socal_north.md front_page.tmpl
	skim2md socal_north.skim >socal_north.md
	pandoc --metadata title="SoCal North" --template front_page.tmpl socal_north.md >socal_north.html

clean: .FORCE
	rm *.html 2>/dev/null

.FORCE:
