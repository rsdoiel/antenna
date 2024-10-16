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
	./build_snapshot.bash skim

markdown: .FORCE
	./build_snapshot.bash markdown

html: .FORCE
	./build_snapshot.bash html

index: .FORCE
	./build_snapshot.bash index
=======
	./todays_feeds.bash skim

markdown: .FORCE
	./todays_feeds.bash markdown

html: .FORCE
	./todays_feeds.bash html

index: .FORCE
	./todays_feeds.bash index
>>>>>>> 88530d0e8 (snapshot of fixing bad gh-pages merge)

.FORCE:
