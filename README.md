---
title: Implementation
---

# Antenna

Antenna is software for rendering a Personal News website. It demonstrates aggregating news content via web feeds (example RSS, Atom and JSON feeds) for personal use. Antenna is software that implements a static website [LinkBlog](https://en.wikipedia.org/wiki/Linklog). I use it to read the web content I follow. Antenna demonstrates that aggregating news can be done by an individual with a little effort and a few tools. No one really needs to rely on large internet companies to be informed or to keep up to date. The resulting website can be hosted locally on your computer or on a static website hosting service (example GitHub, GitLab, BitBucket).

## Tools to build this aggregation

- Bash >= 5 (macOS, Linux, Raspberry Pi OS) or PowerShell 7 (for Windows)
- SQLite > 3.40
- antennaApp >= 0.0.9

NOTE: The publish.bash and publish.ps1 scripts require Git to publish to GitHub.

There are many ways to run a localhost web server but [antenna preview](https://github.com/rsdoiel/antennaApp/releases), provides a "preview" command for macOS, Linux, Raspberry OS and Windows. It lets you view the staged site on localhost:8000. The port can be changed in the antenna.yaml configuration.

## The moving parts

[antennaApp](https://rsdoiel.github.io/antennaApp) is a feed oriented static content engine. It can havest one or more collections of feeds and render aggregated HTML pages and RSS 2.0 feeds. It can also be used to "post" Markdown document into a feed. It uses SQLite3 database files to store the feed content. The app provides means to add, remove, harvest and generated pages.

Make sure you have the software installed. 

- check_for_software.bash (check_for_software.ps1 on Windows)

Here's my regular build steps

1. `antenna harvest` will harvest all the feeds for your collections
2. website.bash (website.ps1 for Windows)
3. `antenna preview` to view the staged content (e.g. http://localhost:8000)
4. View with my favorite web browser

## Details

The [antennaApp](https://rsdoiel.github.io/antennaApp) does the heavly lifting to produce the Antenna website. It operates on collections of feeds. Each collection is defined by a Markdown document that includes a list of links to the RSS, Atom or JSON feeds. Each collection is rendered to HTML and RSS 2.0 feeds in aggregation.  The feed items are managed in SQLite3 databases, one per collection. This filtering SQL for rendering the aggregation per collection is defined in the antenna.yaml file. See the antennaApp documentation for details.

## Adding a feed

To add a feed you need to create a Markdown document that has a list of zero or more links that point to RSS, Atom or JSON feeds. Example.

~~~Markdown
- [Robert's blog](http://rsdoiel.github.io/rss.xml "Robert's blog feed")
~~~

You can include additional front matter to populate the resulting channel elements in the RSS 2.0 file rendered for the collection.

To add the feed to an Antenna site you the "add" action. If the Markdown document was called "myblog.md" you'd add it to the site with the following.

~~~shell
antenna add myblog.md
~~~

Then the next time you harvest or generate the feeds in "myblog.md" will be included.

## How to Customize Antenna for own use

My hope is people will run their own Antenna instances.  The easiest way to do this is to fork this repository and customize to your needs. Another way is to download the latest release of Antenna from GitHub, installed the required software (e.g. antennaApp, Pandoc). Then customize the Markdown pages and the YAML configuration files. You can add your own CSS and JavaScript as you like. Theme your site is mostly matter of CSS and possibly JavaScript ES6 modules. Some markup is contained in the front_page.yaml file for feeds and the Markdown rendering is controlled by the Pandoc template called front_page.tmpl.

You could even embed your Antenna in another website.

My proof of concept Antenna is visible at <https://rsdoiel.github.io/antenna/>.

