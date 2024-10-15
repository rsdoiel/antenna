#
# Quicky Makefile for today's newws
#

TODAY = $(shell date +%Y-%m-%d)

SKIM_FILE = news.skim

build: skim markdown html index
	git add today-$(TODAY).md
	git add today-$(TODAY).html

skim: .FORCE
	./todays_feeds.bash skim

markdown: .FORCE
	./todays_feeds.bash markdown

html: .FORCE
	./todays_feeds.bash html

index: .FORCE
	./todays_feeds.bash index

.FORCE:
