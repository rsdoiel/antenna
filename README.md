
# Anteena

Antenna demonstrates aggregating of news content via web feeds for personal use.  In effect a [LinkBlog](https://en.wikipedia.org/wiki/Linklog). It is where I read the web content I follow. Antenna demonstrates that aggregating news can be done by an individual with a little effort and a few tools. We don't need to rely on large internet companies to be informed or to keep up to date.

## Tools to build this aggregation

- Pandoc 3
- SQLite 3
- GNU Make
- skimmer >= 0.0.14
- Git + GitHub (to host your personal aggregation site)

## The moving parts

[skimmer](https://rsdoiel.github.io/skimmer) is used to collect data from RSS, Atom and JSON feeds that are listed in a URLs file. The data collected gets stored in an SQLite 3 database.

The [SQLite 3](https://sqlite.org) database can be managed with simple SQL statements execute from the command line, a script (e.g. Bash or Python) or in this case a [Makefile](Makefile). The scripts responsibility is to automatically identify the feed items to be "saved" for generating this static website.

The skimmer programs comes with a companion program called **skim2md** which will read all the saved items in an SQLite3 database and render them in Markdown. This file is easy to then process with Pandoc into a full web page.

[Pandoc](https://pandoc.org) is responsible for rendering Markdown to HTML5 via a template called [front_page.tmpl](front_page.tmpl)

The **make** command is used to run the Makefile and build the pages. You can then use your favorite web server to share them or just open them directly in your favorite web browser.

~~~
make clean
make
~~~

Each aggregation page is populated by it's own URLs list which builds the skimmer database used to generate the page.

- [SoCal North](socal_north.txt) URLs
- [Weather](weather.txt) URLs
