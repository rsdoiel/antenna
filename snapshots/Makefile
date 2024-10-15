#
# Quicky Makefile for today's newws
#

TODAY = $(shell date +%Y-%m-%d)

SKIM_FILE = news.skim

build: todays_feeds

news_fetch: .FORCE
	-skimmer news.txt

todays_feeds: .FORCE
	./todays_feeds.bash
	git add today-$(TODAY).md
	git add today-$(TODAY).html

.FORCE:
