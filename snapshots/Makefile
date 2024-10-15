#
# Quicky Makefile for today's newws
#

TODAY = $(shell date +%Y-%m-%d)

build: todays_feeds

news: .FORCE
	skimmer news.txt
	sqlite3 news.skim "DELETE FROM items WHERE LOWER(QUOTE(dc_ext)) LIKE '%sponsor%'"
	sqlite3 news.skim "UPDATE items SET status = 'read'"
	sqlite3 news.skim "UPDATE items SET status = 'saved' WHERE published >= '$(TODAY)' AND published <= '$(TODAY)'"
	skim2md -title "Snaphots" \
		-frontmatter news.skim \
		>today-$(TODAY).md


todays_feeds: news .FORCE
	./todays_feeds.bash
	git add today-$(TODAY).md
	git add today-$(TODAY).html

.FORCE:
