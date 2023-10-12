
SUNDAY=$(shell reldate -- -1 sunday)
SATURDAY=$(shell reldate 1 saturday)
VOL_NO=$(shell date +%Y.%W)

socal_north_$(VOL_NO).html: socal_north_$(VOL_NO).md front_page.tmpl
	pandoc -f markdown -t html5 \
	       --metadata title="SoCal North, Vol. $(VOL_NO)" \
		   --template front_page.tmpl \
		   socal_north_$(VOL_NO).md \
		   >"socal_north_$(VOL_NO).html"

socal_north_$(VOL_NO).md:
	-skimmer socal_north.urls
	sqlite3 socal_north.skim "UPDATE items SET status = 'read' WHERE published <= '$(SUNDAY)' AND published >= '$(SATURDAY)'"
	sqlite3 socal_north.skim "UPDATE items SET status = 'saved' WHERE published >= '$(SUNDAY)' AND published <= '$(SATURDAY)'"
	skim2md socal_north.skim >"socal_north_$(VOL_NO).md"


clean: .FORCE
	rm *.html 2>/dev/null

.FORCE:
