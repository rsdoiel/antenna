#
# Quicky Makefile for today's newws
#

TODAY = $(shell date +%Y-%m-%d)

SKIM_FILE = news.skim

build: skim markdown html index
	git add today-$(TODAY).md
	git add today-$(TODAY).html

skim: .FORCE
	./build_snapshot.bash skim

markdown: .FORCE
	./build_snapshot.bash markdown

html: .FORCE
	./build_snapshot.bash html

index: .FORCE
	./build_snapshot.bash index

.FORCE:
