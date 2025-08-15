#
# Quicky Makefile for today's newws
#

TODAY = $(shell date +%Y-%m-%d)

SKIM_FILE = news.skim

build: skim markdown html index
	git add today-$(TODAY).md
	git add today-$(TODAY).html

skim: .FORCE
<<<<<<< HEAD
	./todays_feeds.bash skim

markdown: .FORCE
	./todays_feeds.bash markdown

html: .FORCE
	./todays_feeds.bash html

index: .FORCE
	./todays_feeds.bash index
=======
	./build_snapshot.bash skim

markdown: .FORCE
	./build_snapshot.bash markdown

html: .FORCE
	./build_snapshot.bash html

index: .FORCE
	./build_snapshot.bash index
>>>>>>> 6525e295f1927c5e79698cfbf4c545310d07b5d6

.FORCE:
