---
title: Implementation
---

# Antenna

Antenna is an example of a website generated as a Personal News website. It demonstrates aggregating news content via web feeds (example RSS, Atom and JSON feeds) for personal use. I run an up today copy on a Raspberry Pi computer on my home network. This makes it visible to other devices uses my local network.  This copy of Antenna website is published once a month to show what is possible for others todo. We don't need Yahoo News, Google, Apple, Spotify, Facebook, Instagram or any of the other corporate siloes. We can easily run our own.

You can run your own copy of Antenna on a Raspberry Pi Zero 2W. That's a $15.00 US single board computer. You can turn that into a nice little appliance for a budget of about $50.00 US. You don't get spied on, you choose what to follow and you are in control of your feed. The era of when what the siloes supplied to us was what we needed for experience online community is over. We just need to wake up to that fact.

If you have a laptop or desktop computer you can run the [Antenna App](https://rsdoiel.github.io/antennaApp). It will happily run as a "localhost" application allowing you r to read your feeds at your leasure. Of course there are also **many feed readers already out there**. The pronoucement that RSS and feed readers are dead has been written many many times but feed reading persists. You should take advantage of it. What I find compelling for my personal use is that I can have a local network website that hosts the content means any of my devices that have a web browser can view the news. Doesn't matter if they are a Mac, Windows, Linux or even an RISC OS machine. Since I host my site on my local network I'm not paying monthly charges for hosting. I can update it as frequently or as little as I want. I'n in the driver site just as we were when the web started.

This instance of Antenna is structed as a [LinkBlog](https://en.wikipedia.org/wiki/Linklog). I use it to read the web content I follow. I use it as a source of material I comment on via BSky. I use it as a source of content I can reflect on in my blog. This experiement, Antenna, started as a proof of concept that an individual could aggregate news can be done by an individual with a little effort and a few tools. Today, this website is built using some shell scripts, SQLite3 databases (one per feed collection) and the Antenna App. Originally it was Shell, Python and Pandoc that bootstrap the experiment. You can do the same and if you want to publicly host content you can do as I've done with GitHub or a competing service. You could also host it on any static website service such as those provided by [Mythic Beasts](https://www.mythic-beasts.com/), [Dreamhost](https://www.dreamhost.com/) or other provider. That is only required if you want your aggregated site to be on the public Web.

The Antenna experiment proves you can host a diverse rich personal aggregation news site on your own computer, your home network or on the public web. No one really needs to rely on tech oligarchy to be informed or to keep up to date. The resulting website can be hosted locally on your computer or on a static website hosting service (example GitHub, GitLab, BitBucket).

## If you live in a news desert as so many of us do

One thing I that I hope happens as a result of my experiment is that local communities can use the Antenna approach to aggregate citzen journalist to share what is happening in their own community. This is needed as there are too many News Deserts in North America, even when you live near a major megamegalopolis. We reach the global through the local. That's because we're all interconnected at some level.

Start small, find the feeds for your local government and school boards. If you they don't have them, ask them why. Many organizations use software like WordPress to drive their public website, WordPress produces RSS feeds and Activity pub just by enabling them. If they host with Drupal that too can produce feeds. Also all content management systems can render an RSS feed. If there is actually no feed, you can use software to read a press release page and pull the links off the page and turn those into a feed you can use. Of course if you're doing I'd ask why thay are not interested in the community who supports them too.

If you have a major business or community organizations in your region. Find there website, look for there feeds. By doing this you can pull together the news of your area from the public sources just by running software.

If you live near a journal college or high school, reach out to the journalism or communications program and ask them about feeds and if they provide them for their student reporting. It is amazing what you can find how about a local area through the writing of student journalists.

My point is you don't need Google or a grant from Bill Gates. In need little cash to beyond an inexpensive computer to get the ball rolling. You have a choice of software out there. [Wordpress](https://wordpress.com) or [Micro.blog](https://micro.blog/) if you want to dip your toe in the water without running something yourself.  Want a better way to integrate with those, then try [WordLand](https://wordland.social/). There are literally more options out then I can count. The key is to aggregate feeds, blog and get the conversation going locally.

Remeber you can leverage your contacts inside the walled gardens to bootstrap a truely local presense. It's up to you where you publish and where you read.

## Tools to build this aggregation

This Antenna runs on a Raspberry Pi 3B+ on my home network. Once a week I "publish" the content via GitHub.  I update my local network site twice a day using "cron" a scheduler built-in to Raspberry Pi OS. I use the following additional software to render this website.

- Bash >= 5 (macOS, Linux, Raspberry Pi OS) or PowerShell 7 (for Windows)
- SQLite > 3.40
- [antennaApp](https://rsdoiel.github.io/antennaApp) >= 0.0.16

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

Happy Aggregating!
