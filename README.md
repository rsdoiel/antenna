
# Antenna

Antenna is software for rendering a Person News website. It demonstrates aggregating news content via web feeds (example RSS, Atom and JSON feeds) for personal use. Antenna is software that implements a static website [LinkBlog](https://en.wikipedia.org/wiki/Linklog). I use it to read the web content I follow. Antenna demonstrates that aggregating news can be done by an individual with a little effort and a few tools. No one really needs to rely on large internet companies to be informed or to keep up to date. The resulting website can be hosted locally on your computer or on a static website hosting service (example GitHub, GitLab, BitBucket).

## Tools to build this aggregation

- Bash >= 5 (macOS, Linux, Raspberry Pi OS) or PowerShell 7 (for Windows)
- Pandoc >= 3.6
- SQLite > 3.40
- skimmer >= 0.0.22

NOTE: The publish.bash and publish.ps1 scripts require Git to publish to GitHub.

There are many ways to run a localhost web server.

- [wsfn](https://github.com/caltechlibrary/wsfn/releases), provides a "ws" command for macOS, Linux, Raspberry OS and Windows. You tell it the port number and directory to server and it runs on localhost, (e.g. `http://localhost:8000`)
- If you have Deno you can build your own, see <https://rsdoiel.github.io/blog/2025/06/30/Build_a_Static_Web_Server.html> for an example.
- Python and PHP provide one via the command line

These are only few. A DuckDuckGo search will find many more.

## The moving parts

[skimmer](https://rsdoiel.github.io/skimmer) is used to collect data from RSS, Atom and JSON feeds that are listed in a text files containing URLs. The data collected gets stored in an SQLite 3 database. This is used by harvest.bash and harvest.ps1.

The [SQLite 3](https://sqlite.org) database can be managed with simple SQL statements execute from the command line, a script. The scripts website.bash or website.ps1 use this along with **skim2html** to filter the feed aggregations and render a HTML page for each aggregation. 

Make sure you have the software installed. 

- check_for_software.bash (check_for_software.ps1 on Windows)

Here's my regular build steps

1. harvest.bash (harvest.ps1 for Windows)
2. website.bash (website.ps1 for Windows)3
3. Start up your local web server (e.g. http://localhost:8000)
4. View with my favorite web browser

### Details

Skimmer comes with several programs in addition to **skimmer**. One is called **skim2html** which will read all the saved items in an SQLite3 database and renders them as structured HTML. This file can be themed with CSS and JavaScript ES6 modules.  The pages and theme are controlled by a YAML file called [front_page.yaml](front_page.yaml).

You news site homepage is defined by a CommonMark/Markdown document named [index.md](index.md).[Pandoc](https://pandoc.org) is responsible for rendering all CommonMark and Markdown documents to HTML5 via a template called [front_page.tmpl](front_page.tmpl)

The site is structured around a collection of feeds per section. This was inspired by physical news papers and Dave Winer's <https://news.scripting.com>

Each collection holds an aggregation of feeds. Each aggregation page is defined by it's own URLs list. The **skimmer** command uses this  list to build the SQLite3 database holding the  aggregated feed content. [socal_north.urls](socal_north.urls) is an example of text file  defining an aggregation. It uses a simple format inspired by [newsboat](https://newsboat.org).

## URL List file format

Each site's is defined with a one line entry (one feed per line). You can use the "#" (hash) character to include a comments. Comments are ignored by **skimmer** and start with the "#" character and continue to the end of the line. Here's the basic format.

~~~
URL TITLE_OR_DESCRIPTION [USER_AGENT_SETTINGS]
~~~

URL
: (required) This is the URL to the  RSS or other feed file.

TITLE_OR_DESCRIPTION
: (required) This field starts with a `"~` (double quote and tilde) and terminates with a closing `"` (double quote)

USER_AGENT_SETTINGS
: (optional) User agents strings are polite. They describe the software and  content information when harvesting. Some sites expect harvesters to be specific programs or web browsers. I often find it helpful to identify as curl but I make sure  I include my content info in case my feed retrieval causes a problem.

## Adding a feed

To add a feed you need to create a URL list file with the file extension ".urls". When you
do a `make harvest` the ".urls" files will be run through **skimmer** to create or update the SQLite3 databases (which use the ".skim" file description). For the feed to show up on the site homepage you edit the CommonMark (Markdown) file called "index.md". At a minimum you add a link to the feed page. Example if your URL file is called "mynews.urls" then your Skimmer database will be called "mynews.skim" and the feed page will be called "mynews.html".

Next you run `make website`. This will use Pandoc to convert your CommonMark and Markdown pages to HTML. Make will use **skim2html** problem is used to generate a feed page.

Now start your web server an take a look with your favorite web browser.

## How to Customize Antenna for own use

My hope is people will run their own Antenna instances.  The easiest way to do this is to fork this repository and customize to your needs. Another way is to download the latest release of Antenna from GitHub, installed the required software (e.g. Skimmer, Pandoc). Then customize the Markdown pages, the URL list files, CSS and JavaScript as you like. Theme your site is mostly matter of CSS and possibly JavaScript ES6 modules. Some markup is contained in the front_page.yaml file for feeds and the Markdown rendering is controlled by the Pandoc template called front_page.tmpl.

You could even embed your Antenna in another website.

My proof of concept Antenna is visible at <https://rsdoiel.github.io/antenna/>.
