#
# Quicky Makefile for today's newws
#

TODAY = $(shell date +%Y-%m-%d)

build: todays_feeds

todays_feeds: .FORCE
	./todays_feeds.bash
	git add today-$(TODAY).md
	git add today-$(TODAY).html

dump: .FORCE
	sqlite3 news.skim '.dump' >news.sql

.FORCE:
