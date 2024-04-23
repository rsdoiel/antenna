---
title: tech likely 2024.17
updated: 2024-04-23 09:49:41
---

# tech likely 2024.17

(date: 2024-04-23 09:49:41)

---

## 23 Apr 2024

date: 2024-04-24, from: Miguel de Icaza's blog

<h1 id="embeddable-game-engine">Embeddable Game Engine</h1>
<p><img
src="https://migueldeicaza.github.io/SwiftGodotDocs/images/SwiftGodot%20Header.png"
align="right" width=240>
Many years ago, when working at Xamarin, where we were building cross-platform
libraries for mobile developers, we wanted to offer both 2D and 3D gaming
capabilities for our users in the form of adding 2D or 3D content to their
mobile applications.</p>
<p>For 2D, we contributed and developed assorted Cocos2D-inspired libraries.</p>
<p>For 3D, the situation was more complex. We funded a few over the years, and we
contributed to others over the years, but nothing panned out (the
history of this is worth a dedicated post).</p>
<p>Around 2013, we looked around, and there were two contenders at the
time, one was an embeddable engine with many cute features but not great UI
support called Urho, and the other one was a <a href="https://en.wikipedia.org/wiki/Godot_(game_engine)">Godot</a>, which had a great IDE, but
did not support being embedded.</p>
<p>I reached out to Juan at the time to discuss whether Godot could be turned into
such engine.   While I tend to take copious notes of all my meetings, those
notes sadly were gone as part of the Microsoft acquisition, but from what I can
remember Juan told me, &quot;Godot is not what you are looking for&quot; in two dimensions,
there were no immediate plans to turn it into an embeddable library, and it was
not as advanced as Urho, so he recommended that I go with Urho.</p>
<p>We invested heavily in binding Urho and created
<a href="https://github.com/xamarin/urho">UrhoSharp</a> that would go into becoming a <a href="https://devblogs.microsoft.com/xamarin/bring-3d-models-life-augmented-reality-urhosharp/">great
3D library for our C# users</a> and worked not only on every desktop and mobile
platform, but we did a ton of work to make it great for AR and VR headsets.
Sadly, Microsoft's management left UrhoSharp to die.</p>
<p>Then, the maintainer of Urho stepped down, and Godot became one of the most
popular open-source projects in the world.</p>
<p>Last year, @Faolan-Rad <a href="https://github.com/godotengine/godot/pull/72883">contributed a patch to Godot</a> to turn it into a library
that could be embedded into applications.   I used this library to build
<a href="https://github.com/migueldeicaza/SwiftGodotKit">SwiftGodotKit</a> and have been
very happy with it ever since - allowing people to embed Godot content into
their application.</p>
<p>However, the patch had severe limitations; it could only ever run one Godot game as
an embedded system and could not do much more.   The folks at <a href="https://www.smirk.gg">Smirk
Software</a> wanted to take this further. They wanted to host
independent Godot scenes in their app and have more control over those so
they could sprinkle Godot content at their heart's content on their mobile app (<a href="https://x.com/JoshBromberg1/status/1721564103859114132">demo</a>)</p>
<p>They funded some initial work to do this and hired <a href="https://migeran.com">Gergely
Kis's company</a> to do this work.</p>
<p>Gergely demoed this work at GodotCon last year.   I came back very excited from
GodotCon and I decided to turn my <a href="https://x.com/migueldeicaza/status/1723765594653167892">prototype Godot on iPad</a> into a <a href="https://blog.la-terminal.net/igodot/">complete
product</a>.</p>
<p>One of the features that I needed was the ability to embed chunks of Godot in
discrete components in my iPad UI, so we worked with Gergely to productize and
polish this patch for general consumption.</p>
<p>Now, there is a <a href="https://github.com/godotengine/godot/pull/90510">complete patch under review</a> to allow people to embed arbitrary
Godot scenes into their apps.   For SwiftUI users, this means that you can embed a Godot scene into a <code>View</code> and display and control it at will.</p>
<p>Hopefully, the team will accept this change into Godot, and once this is done, I will
update SwiftGodotKit to get these new capabilities to Swift users (bindings for
other platforms and languages are left as an exercise to the reader).</p>
<p>It only took a decade after talking to Juan, but I am back firmly in Godot land.</p> 

<https://tirania.org/blog/archive/2024/Apr-23.html>

---

##  Mountain Bike Advice? 

date: 2024-04-23, updated: 2024-04-23, from: Jason Kottke blog

 

<https://kottke.org/24/04/mountain-bike-advice>

---

**@Dave Winer's Scripting News** (date: 2024-04-23, from: Dave Winer's Scripting News)

I don't have time to write about it but the end of last night's Knicks game was one of the most dramatic bits of NY sports ever. I would like to <a href="https://www.reddit.com/r/nba/comments/dern8c/kevin_durant_explains_why_free_agents_wont_join/">thank Kevin Durant</a> for saying the Knicks weren't cool. It's somewhat like the <a href="https://en.wikipedia.org/wiki/Streisand_effect">Streisand Effect</a> where the thing KD was trying to hide was that <i>he</i> was no longer cool. Classic case of projection. I'd love to hear what he says now. Obviously he was not the hot shit he thought he was in 2019. <span class="spOldSchoolEmoji">😄</span> 

<http://scripting.com/2024/04/23.html#a161806>

---

**@Dave Winer's Scripting News** (date: 2024-04-23, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2021/06/26/baseballScene.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I have big ideas for the blogging world. I'd like to combine AI and search to make a really great search engine for bloggers. We would contribute what we know (we already do) and in return, along with everyone else, get to benefit from the collection. And when we browse, it knows which blog we write. So it has a very good idea of what we mean when we ask a question and what we already know. This is totally missing in ChatGPT and is something Google and other search engines have never been willing to do (or even understood, I guess). But this is a huge idea. I'd like to give it <a href="https://feedland.social/opml?screenname=davewiner&catname=blogroll">my blogroll</a> too, so it knows which sources I consider credible. I love that it creates an incentive to post to your blog, and it makes <a href="http://scripting.com/2024/04/16/140810.html?title=workingTogether">working together</a> automatic. 

<http://scripting.com/2024/04/23.html#a161338>

---

##  Scientists have repurposed a 50-year-old drug to revolutionize bone marrow transplants. &#8220;Today,... 

date: 2024-04-23, updated: 2024-04-23, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044463-scientists-have-repurpose>

---

**@Dave Winer's Scripting News** (date: 2024-04-23, from: Dave Winer's Scripting News)

<a href="https://www.google.com/search?q=site%3Ascripting.com+ez+pass+for+news">EZ Pass for News</a> is formula for functional relationships between local news pubs and people in far away places (ie not their locality) who may from time to time want to read an article or a series of articles on their site, and pay per-issue instead of buying a subscription. 

<http://scripting.com/2024/04/23.html#a161153>

---

**@Dave Winer's Scripting News** (date: 2024-04-23, from: Dave Winer's Scripting News)

<a href="https://twitter.com/davewiner/status/1782577146679976202">John Palfrey</a> as the mover behind <a href="https://www.macfound.org/press/article/press-forward-a-national-initiative-to-support-the-revitalization-of-local-news">Press Forward</a> will bring the <a href="http://scripting.com/2024/04/22.html#a132020">gospel</a> of EZ Pass for News on his "ongoing whistle-stop tour" of local news orgs. JP was my boss/rabbi when I was at Berkman, and is why we got so much done there. He ran air cover for what we did, the BloggerCons, giving RSS a home, podcasting, blogs for everyone, the people and democracy. Now he's doing it for the local news business. 

<http://scripting.com/2024/04/23.html#a160607>

---

**@Dave Winer's Scripting News** (date: 2024-04-23, from: Dave Winer's Scripting News)

The "largest open publishing network in the world" is the web. Ghost <a href="https://activitypub.ghost.org/">says</a> it's ActivityPub. Think bigger. 

<http://scripting.com/2024/04/23.html#a160340>

---

**@Dave Winer's Scripting News** (date: 2024-04-23, from: Dave Winer's Scripting News)

I was chatting with a friend who went to <a href="https://en.wikipedia.org/wiki/Bronx_High_School_of_Science">Bronx Science</a>, as I did, and we were talking about Isaac Asimov, and I said I thought he went to Science too. So I fired up ChatGPT and asked if Asimov went to Science, and <a href="https://chat.openai.com/share/81199c5a-ca0a-4a2c-b610-e0799722a03f">it said yes</a>. Then I asked where he went to high school and it said Bronx Science. But by then I was pretty sure he didn't, so I went to Google and meta.ai, and neither knew where he went to high school. So I asked on Twitter, Mastodon, <a href="https://mastodon.social/@davew/112321321415008740">Blue Sky</a> and Threads. Not sure why I even care! Oh well. <span class="spOldSchoolEmoji">😄</span> 

<http://scripting.com/2024/04/23.html#a155601>

---

##  Happy to announce that thanks to folks buying The Process Tee, we&#8217;ve... 

date: 2024-04-23, updated: 2024-04-23, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044464-happy-to-announce-that-th>

---

##  Sharks: &#8220;the scary triangles of the sea&#8221;. (What are the scary triangles... 

date: 2024-04-23, updated: 2024-04-23, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044460-sharks-the-scary-triangle>

---

## Your page can’t change media features

date: 2024-04-23, from: Kilian Valkhof's blog

<p>Yesterday on Mastodon we had a short discussion about the (terribly named) overflow media feature. Because it has the same name as a CSS property it&#8217;s easy to think it has more power than it really does. Underlying that is the issue that your page can&#8217;t change the value of a media feature: media features [&#8230;]</p>
The post <a href="https://kilianvalkhof.com/2024/css-html/your-page-cant-change-media-features/">Your page can’t change media features</a> first appeared on <a href="https://kilianvalkhof.com">Kilian Valkhof</a>. 

<https://kilianvalkhof.com/2024/css-html/your-page-cant-change-media-features/>

---

## Voyager 1 Is Back From the Dead

date: 2024-04-23, updated: 2024-04-23, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/04/23/voyager-1-is-back-from-the-dead/>

---

##  What Are you Starting Right Now? 

date: 2024-04-23, updated: 2024-04-23, from: Jason Kottke blog

 

<https://kottke.org/24/04/what-are-you-starting-right-now>

---

## Explore the Universe with the First E-Book from NASA’s Fermi

date: 2024-04-23, from: NASA breaking news

To commemorate a milestone anniversary for NASA’s Fermi spacecraft, the mission team has published an e-book called “Our High-Energy Universe: 15 Years with the Fermi Gamma-ray Space Telescope.” Readers can download the e-book in PDF and EPUB formats. The e-book is aimed at general audiences with an interest in space. Launched on June 11, 2008, […] 

<https://science.nasa.gov/missions/fermi/explore-the-universe-with-the-first-e-book-from-nasas-fermi/>

---

## AI Starts to Sift Through String Theory’s Near-Endless Possibilities

date: 2024-04-23, from: Quanta Magazine

Using machine learning, string theorists are finally showing how microscopic configurations of extra dimensions translate into sets of elementary particles — though not yet those of our universe.            <p>The post <a href="https://www.quantamagazine.org/ai-starts-to-sift-through-string-theorys-near-endless-possibilities-20240423/" target="_blank">AI Starts to Sift Through String Theory&#8217;s Near-Endless Possibilities</a> first appeared on <a href="https://api.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<https://www.quantamagazine.org/ai-starts-to-sift-through-string-theorys-near-endless-possibilities-20240423/>

---

## Hubble Celebrates 34th Anniversary with a Look at the Little Dumbbell Nebula

date: 2024-04-23, from: NASA breaking news

In celebration of the 34th anniversary of the launch of NASA’s legendary Hubble Space Telescope on April 24, astronomers took a snapshot of the Little Dumbbell Nebula (also known as Messier 76, M76, or NGC 650/651) located 3,400 light-years away in the northern circumpolar constellation Perseus. The photogenic nebula is a favorite target of amateur astronomers. M76 […] 

<https://science.nasa.gov/missions/hubble/hubble-celebrates-34th-anniversary-with-little-dumbbell-nebula/>

---

## Pushing the Limits of Sub-Kilowatt Electric Propulsion Technology to Enable Planetary Exploration and Commercial Mission Concepts

date: 2024-04-23, from: NASA breaking news

NASA has developed an advanced propulsion technology to facilitate future planetary exploration missions using small spacecraft. Not only will this technology enable new types of planetary science missions, one of NASA’s commercial partners is already preparing to use it for another purpose—to extend the lifetimes of spacecraft that are already in orbit. Identifying the opportunity […] 

<https://science.nasa.gov/science-research/science-enabling-technology/pushing-the-limits-of-sub-kilowatt-electric-propulsion-technology-to-enable-planetary-exploration-and-commercial-mission-concepts/>

---

##  Why earthquakes on the East Coast are felt farther away than ones... 

date: 2024-04-23, updated: 2024-04-23, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044441-why-earthquakes-on-the-ea>

---

## NetBSD 9.4 released

date: 2024-04-23, from: OS News

Hot on the heels of NetBSD 10.0 comes NetBSD 9.4, a minor release in the previous release branch. NetBSD 9.4 is primarily a bug and security fix release, however, there are some new features, such as support for more MegaRAID controllers, ZTE MF112 and D-Link DWM222 USB 3G modems, and improved CPU feature detection for newer AMD/Intel devices. All users of netbsd-9 should upgrade if they are not following the stable branch. ↫ NetBSD 9.4 release announcement A very important note here is that the version of OpenSSL in NetBSD 9.4 is no longer supported unless you have a support contract with OpenSSL. They suggest upgrading to NetBSD 10.0, or to use OpenSSL from pkgsrc. 

<https://www.osnews.com/story/139403/netbsd-9-4-released/>

---

## Tribblix SPARC milestone 30 released

date: 2024-04-23, from: OS News

Tribblix, the unique ilumos distribution &#8211; think Solaris &#8211; has a new SPARC milestone. It&#8217;s one of the few platforms still actively supporting SPARC, so even if the amount of users might be slim, I think it&#8217;s an important contribution to the ecosystem. The application software here roughly corresponds to m34 on x86 systems, although the underlying illumos is still closer to m25/m26. Note that there are no functional illumos changes from the m28 sparc release &#8211; if that release didn&#8217;t work on your system, this one won&#8217;t either. ↫ Peter Tribble I&#8217;m still looking for my mythical, unobtanium Sun Ultra 45, a goal farther away now than it&#8217;s ever been (Patreon maybe? One-time donation? Help me out after I took OSNews full-time?), and the SPARC version of Tribblix would be my first go-to. 

<https://www.osnews.com/story/139401/tribblix-sparc-milestone-30-released/>

---

## Announcing the Hookdeck SDK on JSR

date: 2024-04-23, updated: 2024-04-23, from: Deno blog

Hookdeck, an event gateway for distributed and async architecture, now has an SDK on JSR. 

<https://deno.com/blog/hookdeck-on-jsr>

---

## Making a flute controlled mouse

date: 2024-04-23, from: OS News

There is something about surprising interfaces: clapping to switch on lights is more fun than a flipping a switch. Pressing a panic-button to order a pizza is more fun than ordering via an app. Recently I came across this surprising interface: a flute controlled mouse cursor for a first person shooter. I recognize a good idea when I see one, and immediately wanted replicate the idea and make it freely available. So I got to work. ↫ Joren Six I don&#8217;t think I have ever seen something quite so unique. 

<https://www.osnews.com/story/139399/making-a-flute-controlled-mouse/>

---

## A-BiRD uses Raspberry Pi to identify different species singing at the same time

date: 2024-04-23, from: Raspberry Pi News (.com)

<p>A-BiRD’s audio data can provide insights into bird behaviour, species preferences, habitats, and migration patterns without human intervention.</p>
<p>The post <a href="https://www.raspberrypi.com/news/a-bird-uses-raspberry-pi-to-identify-different-species-singing-at-the-same-time/">A-BiRD uses Raspberry Pi to identify different species singing at the same time</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/a-bird-uses-raspberry-pi-to-identify-different-species-singing-at-the-same-time/>

---

## 2024-04-22 Gopher, again

date: 2024-04-23, from: Alex Schroeder's Blog

<h1 id="2024-04-22-gopher-again">2024-04-22 Gopher, again</h1>

<p>Having found a separate server, written in Go, monitored by systemd, to be the superior solution for double hosting my site for Gemini, I kept thinking about Gopher. With <a href="Odd%C2%B5">Oddµ</a> using a version of Markdown that is very close to the standard, and having found a library that I understand, more or less, which I had successfully grafted onto <a href="https://sr.ht/~gsthnz/satellite/">Satellite</a>, the Gemini server I’m using, based on renderer code I found in the <a href="https://github.com/tdemin/gmnhg">Hugo-to-Gemini converter</a> that used the same Markdown parsing library I was using for Oddµ, I figured that I might use the same library to turn Markdown into suitable Gopher pages.</p>

<p>It took some wrangling and it’s probably not great, but the main menu matches my front page and the blog posts look mostly OK, and so the site is back as a gopher hole on port 70!</p>

<p>See <a href="https://src.alexschroeder.ch/markdown-gopher.git">Markdown Gopher</a> for the Gopher server code.</p>

<p>See my <a href="https://src.alexschroeder.ch/satellite.git">patched Satellite</a> for the Gemini server code, <a href="2023-11-03-other-ports">discussed back in 2023</a>.</p>

<p>And naturally I’m immediately annoyed by the lack of UTF-8 support in this client I’m using.</p>

<p><a class="tag" href="/search/?q=%23Gopher">#Gopher</a></p> 

<https://alexschroeder.ch/view/2024-04-22-gopher>

---

## Sols 4161-4163: Double Contact Science

date: 2024-04-22, from: NASA breaking news

Earth planning date: Friday, April 19, 2024 Curiosity has a three-sol weekend plan coming up as it makes progress along the edge of upper Gediz Vallis ridge. We have observations planned to investigate multiple bedrock targets with interesting rippled textures, dark-toned float, and the ridge. With two contact science targets, lots of targeted and untargeted […] 

<https://science.nasa.gov/missions/mars-science-laboratory/curiosity-rover/sols-4161-4163-double-contact-science/>

---

## What we learned inside a North Korean internet server

date: 2024-04-22, from: OS News

A misconfigured North Korean Internet cloud server has provided a fascinating glance into the world of North Korean animation outsourcing and how foreign companies might be inadvertently employing North Korean companies on information technology (IT) projects. The incident also underlines how difficult it is for foreign companies to verify their outsourced work is not potentially breaking sanctions and ending up on computers in Pyongyang. ↫ Martyn Williams at 38 North What an absolutely wild story. 

<https://www.osnews.com/story/139397/what-we-learned-inside-a-north-korean-internet-server/>

---

##  Denis Villeneuve&#8217;s Four Favorite Films 

date: 2024-04-22, updated: 2024-04-22, from: Jason Kottke blog

 

<https://kottke.org/24/04/denis-villeneuves-four-favorite-films>

---

## NASA Astronaut to Inspire Artemis Generation in Boston

date: 2024-04-22, from: NASA breaking news

April 22, 2024&#160; NASA astronaut Stephen Bowen, along with representatives from NASA and the International Space Station National Laboratory, will visit Boston on Wednesday, April 24, and Thursday, April 25, as part of the agency’s Destination Station to highlight research opportunities aboard the station. Destination Station was created to educate the public and engage prospective [&#8230;] 

<https://www.nasa.gov/news-release/nasa-astronaut-to-inspire-artemis-generation-in-boston/>

---

## NASA Invites Media to Learn About New Tech Mission Powered by the Sun

date: 2024-04-22, from: NASA breaking news

A new NASA mission is testing a new way to navigate our solar system by hoisting its sail into space – not to catch the wind, but the propulsive power of sunlight. NASA’s&#160;Advanced Composite Solar Sail System&#160;is led by the agency’s Ames Research Center in California’s Silicon Valley. The&#160;microwave oven-sized CubeSat&#160;is scheduled to launch&#160;aboard a [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/ames/nasa-invites-media-to-learn-about-new-tech-mission-powered-by-the-sun/>

---

## Paying for it doesn’t make it a market

date: 2024-04-22, from: OS News

Cory Doctorow, nailing it as usual. If you care about how people are treated by platforms, you can&#8217;t just tell them to pay for services instead of using ad-supported media. The most important factor in getting decent treatment out of a tech company isn&#8217;t whether you pay with cash instead of attention – it&#8217;s whether you&#8217;re locked in, and thus a flight risk whom the platform must cater to. ↫ Cory Doctorow I&#8217;m sick and tired of the phrase &#8220;if you&#8217;re not paying for the product, you&#8217;re the product&#8221;, because it implies that if just you pay for a product or service, you&#8217;re not going to be treated like ass. The problem is, as Doctorow points out, that this simply is not supported by the evidence, and that it isn&#8217;t whether or not you&#8217;re paying that makes you have a good or bad experience &#8211; it&#8217;s whether or not you&#8217;re locked in. If you&#8217;ve got nowhere else to go, then corporations can treat you like ass. There are so, so many free services and products I use where I&#8217;m anything but a &#8220;product&#8221;. My Linux distribution of choice, Fedora. My web browser, Firefox. The countless open source applications I use on my desktops, laptops, and smartphone. Those are all cases where even though I&#8217;m not paying, I know I&#8217;m being treated with respect, and I feel entirely comfortable with all of those. And no, you don&#8217;t get to exclude the open source world just because it&#8217;s inconvenient for the &#8220;you&#8217;re the product&#8221; argument. There are also countless services and products where the opposite is true; I&#8217;m a paying customer, but I still feel like I&#8217;m the product. I pay for additional Google Drive storage. I pay for an Office 364 subscription because I needed it as a translator (I&#8217;m working on OSNews full-time now, and could use your help keeping the site going), but I can&#8217;t cancel it because my wife, my parents, and my parents-in-law use that same subscription. We pay for Netflix and one or two other video services. I don&#8217;t know if our ISP or wireless provider do anything malicious, but it wouldn&#8217;t surprise me. And so on. Being a paying customer means nothing. It&#8217;s how easy it is for you to stop being a customer that matters. 

<https://www.osnews.com/story/139393/paying-for-it-doesnt-make-it-a-market/>

---

## How to Use Experimental Swift Versions and Features in Xcode

date: 2024-04-22, from: Michael Tsai

Donny Wals: We can click the Universal download link to install the Swift toolchain that you&#8217;re interested in. For example, if you&#8217;re eager to try out a cutting edge feature like Swift 6&#8217;s isolation regions feature you can download the trunk development toolchain. Or if you&#8217;re interested in trying out a feature that has made [&#8230;] 

<https://mjtsai.com/blog/2024/04/22/how-to-use-experimental-swift-versions-and-features-in-xcode/>

---

## Apple Maps in Tokyo

date: 2024-04-22, from: Michael Tsai

Joe Rosensteel: When searching for a business, like your hotel which is part of a very large hotel chain, Google will show the one saved in your list as the first search result when you start typing. Apple Maps will show you the search results in the same order you&#8217;d see them otherwise, but it [&#8230;] 

<https://mjtsai.com/blog/2024/04/22/apple-maps-in-tokyo/>

---

## Hackintosh Is Almost Dead

date: 2024-04-22, from: Michael Tsai

Aleksandar Vaci&#x107; (via Hacker News, Ric Ford): It&#8217;s true that latest macOS 14 (Sonoma) still supports the latest generations of Intel Macs and it&#8217;s very likely that at least one or two major versions will still be compatible. But there&#8217;s one particular development that is de-facto killing off the Hackintosh scene. In Sonoma, Apple has [&#8230;] 

<https://mjtsai.com/blog/2024/04/22/hackintosh-is-almost-dead/>

---

## The Apple Jonathan

date: 2024-04-22, from: Michael Tsai

Stephen Hackett (Hacker News): Those four machines are well known, but there was a fifth possibility in the mix, named the Jonathan. In his book Inventing the Future, John Buck writes about the concept, which was led by Apple engineer Jonathan Fitch starting in the fall of 1984.This concept envisioned a computer that would expand [&#8230;] 

<https://mjtsai.com/blog/2024/04/22/the-apple-jonathan/>

---

##  They fixed it: NASA is able to talk to Voyager I again.... 

date: 2024-04-22, updated: 2024-04-22, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044459-they-fixed-it-nasa-is>

---

## NASA Announces 30th Human Exploration Rover Challenge Winners

date: 2024-04-22, from: NASA breaking news

NASA announced the winners of the 30th Human Exploration Rover Challenge (HERC) April 22, with Parish Episcopal School, from Dallas, winning first place in the high school division, and the University of Alabama in Huntsville, capturing the college/university title. The annual engineering competition – one of NASA’s longest standing challenges – held its concluding event [&#8230;] 

<https://www.nasa.gov/news-release/nasa-announces-30th-human-exploration-rover-challenge-winners/>

---

##  A Little Comments Check-In 

date: 2024-04-22, updated: 2024-04-22, from: Jason Kottke blog

 

<https://kottke.org/24/04/a-little-comments-check-in>

---

##  A database of useful biological numbers, including the duration of an eye... 

date: 2024-04-22, updated: 2024-04-22, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044451-a-database-of-useful-biol>

---

## NASA Nurtures Promising Tech Ideas from Small Businesses

date: 2024-04-22, from: NASA breaking news

New space technology ideas emerge every day from innovators across the country, and NASA’s Small Business Innovation Research (SBIR) program on Monday selected more than 100 projects for funding. This program offers small businesses in the United States early-stage funding and support to advance the agency’s goals of exploring the unknown in air and space [&#8230;] 

<https://www.nasa.gov/news-release/nasa-nurtures-promising-tech-ideas-from-small-businesses/>

---

## Our Beautiful Water World

date: 2024-04-22, from: NASA breaking news

This Jan. 30, 2012 image of Earth was created from photographs taken by the Visible/Infrared Imager Radiometer Suite (VIIRS) instrument aboard the Suomi NPP satellite. Many features of North America and the Western Hemisphere are particularly visible. The composite was created from the data collected during four orbits of the robotic satellite taken earlier in [&#8230;] 

<https://www.nasa.gov/image-article/our-beautiful-water-world/>

---

##  Hold the Line is a &#8220;piece of sound art generated by data... 

date: 2024-04-22, updated: 2024-04-22, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044447-hold-the-line-is-a>

---

## Facebook opens its Android-based Quest operating system to other VR device makers

date: 2024-04-22, from: OS News

Today we’re taking the next step toward our vision for a more open computing platform for the metaverse. We’re opening up the operating system powering our Meta Quest devices to third-party hardware makers, giving more choice to consumers and a larger ecosystem for developers to build for. We’re working with leading global technology companies to bring this new ecosystem to life and making it even easier for developers to build apps and reach their audiences on the platform.  Meta Horizon OS is the result of a decade of work by Meta to build a next-generation computing platform. To pioneer standalone headsets, we developed technologies like inside-out tracking, and for more natural interaction systems and social presence, we developed eye, face, hand, and body tracking. For mixed reality, we built a full stack of technologies for blending the digital and physical worlds, including high-resolution Passthrough, Scene Understanding, and Spatial Anchors. This long-term investment that began on the mobile-first foundations of the Android Open Source Project has produced a full mixed reality operating system used by millions of people. ↫ Facebook&#8217;s blog In summary, Facebook wants the operating system of their Quest series of virtual reality devices &#8211; an Android Open Source Project fork optimised for this use &#8211; to become the default platform for virtual reality devices from all kinds of OEMs. Today, they&#8217;re announcing that both Asus and Lenovo will be releasing devices running this Meta Horizon OS, with the former focusing on high-end VR gaming, and the latter on more general use cases of work, entertainment, and so on. Facebook will also be working together with Microsoft to create a Quest &#8220;inspired by Xbox&#8221;. The Meta Quest Store, the on-device marketplace for applications and games, will be renamed to the Meta Horizon Store, and the App Lab, where developers can more easily get their applications and games on devices and in the hands of consumers as long as they meet basic technical and content guidelines, will be integrated into the Meta Horizon Store for easier access than before. In addition, in a mildly spicy move, Facebook is openly inviting Google to bring the Google Play Store to the VR Android fork, &#8220;where it can operate with the same economic model it does on other platforms&#8221;. The odds of me buying anything from Facebook are slim, so I really hope this new move won&#8217;t corner the market for VR headsets right out of the gate; I don&#8217;t want another Android/iOS duopoly. I&#8217;m not particularly interested in VR quite yet &#8211; but give it a few more years, and I certainly won&#8217;t pass up on a capable device that allows me to play Beat Saber and other exercise-focused applications and games. I just don&#8217;t want it to be a Facebook device or operating system. 

<https://www.osnews.com/story/139391/facebook-opens-its-android-based-quest-operating-system-to-other-vr-device-makers/>

---

##  For All Mankind has been renewed for a fifth season and the... 

date: 2024-04-22, updated: 2024-04-22, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044450-for-all-mankind-has-been>

---

**@Dave Winer's Scripting News** (date: 2024-04-22, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/04/22/uncleArno.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">The idea of us all <a href="http://scripting.com/2024/04/16/140810.html">working together</a> to federate is the right idea, but making ActivityPub the hurdle everyone has to jump over is imho the wrong idea. I'm building on feeds -- RSS, Atom, RDF. A lot of good stuff works on that basis. And it's a much shorter path to <a href="http://scripting.com/2021/12/16/153331.html?title=myProductIsInterop">interop</a> than ActivityPub. 

<http://scripting.com/2024/04/22.html#a171256>

---

##  The Lost Mixtape From The Hood Internet 

date: 2024-04-22, updated: 2024-04-22, from: Jason Kottke blog

 

<https://kottke.org/24/04/the-lost-mixtape-from-the-hood-internet>

---

## Fedora 40 is just around the corner with more spins and flavors than ever

date: 2024-04-22, updated: 2024-04-22, from: Liam Proven's articles at the Register

<h4>KDE edition has the most conspicuous changes, and could become future flagship</h4>
      <p>Fedora 40 is in the final stretch before launch tomorrow, with release candidate 1.14 in testing.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/04/22/fedora_40_at_rc_stage/>

---

##  This had me cackling in laughter this morning: Kevin Del Aguila hamming... 

date: 2024-04-22, updated: 2024-04-22, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044453-this-had-me-cackling-in>

---

## Mathematicians Marvel at ‘Crazy’ Cuts Through Four Dimensions

date: 2024-04-22, from: Quanta Magazine

Topologists prove two new results that bring some order to the confoundingly difficult study of four-dimensional shapes.            <p>The post <a href="https://www.quantamagazine.org/mathematicians-marvel-at-crazy-cuts-through-four-dimensions-20240422/" target="_blank">Mathematicians Marvel at ‘Crazy’ Cuts Through Four Dimensions</a> first appeared on <a href="https://api.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<https://www.quantamagazine.org/mathematicians-marvel-at-crazy-cuts-through-four-dimensions-20240422/>

---

## ‘Vast and Rich:’ Studying the Ocean With NASA Computer Simulations

date: 2024-04-22, from: NASA breaking news

“Every time I help with visualizing [ocean] simulation data, I learn about an entirely new area of ocean or climate research, and I’m reminded of how vast and rich this area of research is. And…the real magic happens at the intersection and interaction of simulated and observed data. It is a great honor – and [&#8230;] 

<https://www.nasa.gov/image-article/vast-and-rich-studying-the-ocean-with-nasa-computer-simulations/>

---

##  A bot that pairs the clichéd &#8220;I hope this email finds you&#8221;... 

date: 2024-04-22, updated: 2024-04-22, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044452-a-bot-that-pairs-the>

---

## Why is Methane Seeping on Mars? NASA Scientists Have New Ideas

date: 2024-04-22, from: NASA breaking news

The most surprising revelation from NASA’s Curiosity Mars Rover — that methane is seeping from the surface of Gale Crater — has scientists scratching their heads. Living creatures produce most of the methane on Earth. But scientists haven’t found convincing signs of current or ancient life on Mars, and thus didn’t expect to find methane […] 

<https://science.nasa.gov/solar-system/planets/mars/why-is-methane-seeping-on-mars-nasa-scientists-have-new-ideas/>

---

##  This looks promising: an RNA-based vaccine effective against any strain of a... 

date: 2024-04-22, updated: 2024-04-22, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044449-this-looks-promising-an-r>

---

## NASA Sets Coverage of Roscosmos Spacewalk Outside Space Station

date: 2024-04-22, from: NASA breaking news

NASA will provide live coverage, beginning at 10:30 a.m. EDT Thursday, April 25, as two Roscosmos cosmonauts conduct a spacewalk outside the International Space Station. The spacewalk is expected to begin at 10:55 a.m. and could last up to seven hours. NASA will stream the spacewalk on NASA+, NASA Television, the NASA app, YouTube, and [&#8230;] 

<https://www.nasa.gov/news-release/nasa-sets-coverage-of-roscosmos-spacewalk-outside-space-station-2/>

---

##  Once again, it is cheaper to decarbonize our world now than to... 

date: 2024-04-22, updated: 2024-04-22, from: Jason Kottke blog

 

<https://kottke.org/24/04/0044448-once-again-it-is-cheaper>

---

**@Dave Winer's Scripting News** (date: 2024-04-22, from: Dave Winer's Scripting News)

I hate paywalls tied to subscription. I’m never going to subscribe to a Philadelphia news org, but based on <a href="https://bsky.app/profile/jayrosen.bsky.social/post/3kqnxdwej3s2c">Jay’s recommendation</a> I might pay $1 on my <a href="http://scripting.com/2022/10/04/130438.html?title=howEzpassForNewsWouldWork">EZ Pass for News</a> to read <a href="https://www.inquirer.com/opinion/commentary/civil-war-movie-about-journalism-20240421.html">this story</a>, esp since I saw the <a href="https://en.wikipedia.org/wiki/Civil_War_(film)">Civil War</a> movie. I just had a thought, I might subscribe to a Philadelphia news org for a week or two, given that the Knicks are playing their NBA team right now in the first round of the playoffs. I really want to know everything there is to know about this faceoff. See, I want to pay for journalism here, but journalism hasn't been willing to sell it to me, at any price. They've never gotten the basic truth of: "The customer is always right." Really important point and true in every way. 

<http://scripting.com/2024/04/22.html#a132020>

---

**@Dave Winer's Scripting News** (date: 2024-04-22, from: Dave Winer's Scripting News)

Over the weekend I <a href="https://techfightclub.wpcomstaging.com/">tested</a> the <a href="https://blogroll.social/">blogroll</a> plugin for WordPress. It worked. After a little more testing and docs-writing we'll be ready for other people to test it, an important step before wider use. So if you're a regular Scripting News reader, and are curious what this blogroll stuff is about, you'll be able to try it out pretty soon. 

<http://scripting.com/2024/04/22.html#a130009>

---

## The Patriotism of Paying Your Fair Share

date: 2024-04-22, updated: 2024-04-22, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/04/22/the-patriotism-of-paying-your-fair-share/>

---

**@Dave Winer's Scripting News** (date: 2024-04-22, from: Dave Winer's Scripting News)

Jeff Jarvis <a href="https://mastodon.social/@jeffjarvis/112314943773347273">writes</a> that a German man who died with 70K books in his house was obsessed with the work of writer Arno Schmidt, who was <a href="https://www.google.com/search?q=site%3Ascripting.com+arno&rlz=1C5CHFA_enUS743US747&oq=site%3Ascr&aqs=chrome.0.69i59l3j69i57j69i64j69i58j69i65.24769j0j4&sourceid=chrome&ie=UTF-8">my great-uncle</a>, my grandmother's brother. 

<http://scripting.com/2024/04/22.html#a125147>

---

## Gilead revisited

date: 2024-04-22, from: Ayjay blog

The way we speak and think of the Puritans seems to me a serviceable model for important aspects of the phenomenon we call Puritanism. Very simply, it is a great example of our collective eagerness to disparage without knowledge or information about the thing disparaged, when the reward is the pleasure of sharing an attitude [&#8230;] 

<https://blog.ayjay.org/46090-2/>

---

## costs

date: 2024-04-22, from: Ayjay blog

A brief follow-up to this post from last week: In our current climate of political assholery, no self-described “activist” can answer what I think of as an essential question: If you get what you want, what will be the costs? Every choice — every choice ever made by every human being — carries costs. Some [&#8230;] 

<https://blog.ayjay.org/costs/>

---

## New version of Tiny11 Builder lets you debloat any Windows 11 build or version

date: 2024-04-22, from: OS News

The maker of Tiny11, a third-party project that aims to make Windows 11 less bloated with unnecessary parts, released a new version of Tiny11 Builder, a special tool that lets you create a custom Windows 11 image tailored to your needs and preferences. The latest release makes it much easier to create a lightweight Windows 11 ISO without worrying about installing a system modified by unknown third parties. ↫ Taras Buria at Neowin Perhaps you can make Windows 11 slightly more bearable with this. If there&#8217;s any interest from y&#8217;all, I could build my own debloated Windows 11 install and see if I can make this platform bearable for myself? Let me know in the comments. 

<https://www.osnews.com/story/139389/new-version-of-tiny11-builder-lets-you-debloat-any-windows-11-build-or-version/>

---

## Inside the Super Nintendo cartridges

date: 2024-04-22, from: OS News

One of the remarkable characteristics of the Super Nintendo was the ability for game cartridges (cart) to pack more than instructions and assets into ROM chips. If we open and look at the PCBs, we can find inside things like the CIC copy protection chip, SRAM, and even &#8220;enhancement processors&#8221;. ↫ Fabien Sanglard When I was a child and teenager in the &#8217;90s, the capabilities of the SNES cartridge were a bit of a legend. We&#8217;d talk about what certain games would use which additional processors and chips in the cartridge, right or wrong, often boasting about the games we owned, and talking down the games we didn&#8217;t. Much of it was probably nonsense, but there&#8217;s some good memories there. We&#8217;re decades deep into the internet age now, and all the mysteries of the SNES cartridge can just be looked up on Wikipedia and endless numbers of other websites. The mystery&#8217;s all gone, but at least now we can accurately marvel at just how versatile the SNES really was. 

<https://www.osnews.com/story/139387/inside-the-super-nintendo-cartridges/>

---

## Read floppy disks and CD-ROMs with Raspberry Pi 5 | #MagPiMonday

date: 2024-04-22, from: Raspberry Pi News (.com)

<p>Play old games from original media, back up your floppies before they die, and image replacement disks.</p>
<p>The post <a href="https://www.raspberrypi.com/news/read-floppy-disks-and-cd-roms-with-raspberry-pi-5-magpimonday/">Read floppy disks and CD-ROMs with Raspberry Pi 5 | #MagPiMonday</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/read-floppy-disks-and-cd-roms-with-raspberry-pi-5-magpimonday/>

---

## Young people’s Astro Pi code is sent to the International Space Station

date: 2024-04-22, from: Raspberry Pi (.org)

<p>Young people taking part in the European Astro Pi Challenge are about to have their computer programs sent to the International Space Station (ISS). Astro Pi is run annually in collaboration by us and ESA Education, and offers two ways to get involved: Mission Zero and Mission Space Lab. This year, over 25,000 young people&#8230;</p>
<p>The post <a href="https://www.raspberrypi.org/blog/young-peoples-astro-pi-code-is-sent-to-the-international-space-station/">Young people&#8217;s Astro Pi code is sent to the International Space Station</a> appeared first on <a href="https://www.raspberrypi.org">Raspberry Pi Foundation</a>.</p>
 

<https://www.raspberrypi.org/blog/young-peoples-astro-pi-code-is-sent-to-the-international-space-station/>

---

## humans.txt

date: 2024-04-22, from: Tilde.news

<p><a href="https://tilde.news/s/3zljfs/humans_txt">Comments</a></p> 

<https://www.datagubbe.se/humans.txt>

---

## Archives as Commons

date: 2024-04-22, from: Doc Searls (at Harvard), New Old Blog

The Santa Barbara News-Press was born in 1868 and died in 2023 at age 155. Its glory years ran from 1932 until 2000, when the New York Times sold it to Wendy McCaw, who rode it to hell. That ride began with the Santa Barbara News Press Controversy in 2006 and ended when Ampersand, the company McCaw created [&#8230;] 

<https://doc.searls.com/2024/04/21/archives-as-commons/>

---

## Creative Computer Publishes Interview with the Guy Behind the Death Star Trench Run (1978)

date: 2024-04-22, from: Computer ads from the Past

An Interview With Star Wars Animator Larry Cuba 

<https://computeradsfromthepast.substack.com/p/creative-computer-publishes-interview>

---

## pgdsat v1.1 released

date: 2024-04-22, from: PostgreSQL News

<p>Hanoi, Vietnam - April 19th, 2024</p>
<h2>pgdsat - PostgreSQL Database Security Assessment Tool</h2>
<p>pgdsat is a security assessment tool that checks around 80 PostgreSQL security
controls of your PostgreSQL clusters including all recommendations from the
CIS compliance benchmark but not only.</p>
<p>This PostgreSQL Security Assessment Tool allow assessments to be carried out
in an automated manner to verify the security policies established inside the
company. It also gives understanding of the security issued that your cluster
can be faced.</p>
<p>It consists in a single command that must be run on the PostgreSQL server to
collect all necessaries system and PostgreSQL information to compute a security
assessment report. A report consist in a summary of all tests status and a second
part with all detailed information. See a <a href="https://www.darold.net/sample_pgdsat/report.html">sample report</a>.</p>
<p>This release adds new checks and fixes issues reported by users since the first
release published for the event of FOSSASIA 2024 in Hanoi. New features:</p>
<ul>
<li>Add cluster version mismatch check if <code>--cluster</code> is used.</li>
<li>Add a check to ensure a data anonymization extension is installed (pg_anonymize or anon).</li>
<li>Add check to ensure tablespace location is not inside the PGDATA.</li>
<li>Add statistics about checksum failures if any.</li>
<li>Double check the Unix socket permission on disk.</li>
<li>Add check to ensure that the public schema is protected in all database.</li>
</ul>
<p>For the complete list of changes, please checkout the release note
on <a href="https://github.com/hexacluster/pgdsat/blob/master/ChangeLog">https://github.com/hexacluster/pgdsat/blob/master/ChangeLog</a></p>
<h2>Links &amp; Credits</h2>
<p>pgdsat is an open project. Any contribution to build a better
tool is welcome. You just have to send your ideas, features requests
or patches using the GitHub tools.</p>
<p>Thank to the developers who submitted patches and users who reported
bugs and feature requests, they are all cited in the ChangeLog file.</p>
<p>Links:</p>
<ul>
<li>Sample report: <a href="http://www.darold.net/sample_pgdsat/report.html">http://www.darold.net/sample_pgdsat/report.html</a></li>
<li>Download: <a href="https://github.com/hexacluster/pgdsat/releases">https://github.com/hexacluster/pgdsat/releases</a></li>
<li>Development: <a href="https://github.com/hexacluster/pgdsat">https://github.com/hexacluster/pgdsat</a></li>
<li>Changelog: <a>https://github.com/hexacluster/pgdsat/blob/master/ChangeLog</a></li>
</ul>
<hr>
<p><strong>About pgdsat</strong></p>
<p>The objective of pgdsat is to have an Open Source and free tool to help PostgreSQL
users to enforce the security of their PostgreSQL clusters. Not all checks might
correspond to your security policies but pgdsat aims to be a reference on which
you can rely to check the compliance of security points with your policy.</p>
<p>Tool created at HexaCluster Corp and maintained by Gilles Darold.</p>
<p>pgdsat works on Linux platform and is available under the GPLv3 licence.</p> 

<https://www.postgresql.org/about/news/pgdsat-v11-released-2845/>

---

## Announcing E-Maj 4.4.0.

date: 2024-04-22, from: PostgreSQL News

<p>We are very glad to announce the <strong>4.4.0</strong> version of <strong>E-Maj</strong>.</p>
<p>E-Maj is a PostgreSQL extension which enables fine-grained write logging and time travel on subsets of the database.</p>
<p>This new 4.4 version mainly improves the visibility of tables groups and extension versions histories. It also fixes a few bugs. The <em>Emaj_web</em> client has been enhanced to take benefit of these new features.</p>
<p>E-Maj 4.4.0 is compatible with Postgres 11 to 16 versions.</p>
<p>The full <a href="http://emaj.readthedocs.io">documentation</a> is available on line. The core extension is available at <a href="http://http://pgxn.org/dist/e-maj/">pgxn.org</a> for installation or <a>github.org</a> for development.</p>
<p>The <strong>Emaj_web</strong> client is also available at <a href="https://github.com/dalibo/emaj_web">github.org</a>.</p>
<p>Have fun with E-Maj !</p> 

<https://www.postgresql.org/about/news/announcing-e-maj-440-2846/>

---

**@Dave Winer's Scripting News** (date: 2024-04-21, from: Dave Winer's Scripting News)

I asked <a href="https://www.meta.ai/c/853f1272-e6cc-4e09-9191-a31dab6b6d8e">meta.ai</a> to <a href="https://www.youtube.com/watch?v=DAb4lj_4b54">draw a pastoral scene</a> with sheep and dogs, birds, fish, airplanes, clams and seagoing ships in ancient England. 

<http://scripting.com/2024/04/21.html#a235226>

---

## Episode 130 - ALGOL, Part II

date: 2024-04-21, from: Advent of Computing

<p data-pm-slice="1 1 []">This is a hefty one. I usually try to keep things as accessible as possible, but this time we have to get a little more technical than usual. We are picking up in 1964, with the first proposals for a new version of ALGOL. From there we sail through the fraught waters of ALGOL X, Y, W, and finally 68. Along the way we see how a language evolves over time, and how people and politics mesh with technical issues.</p> <p>Selected Sources:</p> <p><a href="https://dl.acm.org/doi/pdf/10.5555/1061112.1061118" rel="noopener noreferrer nofollow" data-link-auto= "">https://dl.acm.org/doi/pdf/10.5555/1061112.1061118</a> - Successes and Failures of the ALGOL Effort</p> <p><a href="https://sci-hub.se/10.1109/MAHC.2010.8" rel= "noopener noreferrer nofollow" data-link-auto= "">https://sci-hub.se/10.1109/MAHC.2010.8</a> - Cold War Origins of IFIP</p> <p><a href= "https://archive.computerhistory.org/resources/text/algol/algol_bulletin/" rel="noopener noreferrer nofollow" data-link-auto= "">https://archive.computerhistory.org/resources/text/algol/algol_bulletin/</a> - The ALGOL Bulletin</p> 

<https://adventofcomputing.libsyn.com/episode-130-algol-part-ii>

---

## Niri 0.1.5 released

date: 2024-04-21, from: OS News

Earlier this year, we talked about Niri, a very unique tiling window manager for Wayland that scrolls infinitely to the right. I&#8217;ve never seen anything quite like it, and while it seems polarising, I think it&#8217;s absolutely worthy of a dedicated niche. The project&#8217;s got a major new release out, and there&#8217;s a lot of improvements here. First and foremost, virtually all animations have been overhauled, and new ones have been added for almost every kind of interaction. The videos on the release page do a really good job of highlighting what they&#8217;re going for, and I think it looks great, and for the animation-averse, every individual animation can be turned off. Niri now also supports variable refresh rate, and the IPC mechanism has been improved. Among the smaller improvements is a welcome one: when using the touchscreen, the mouse cursor disappears. I really think this one has to be tried before judged, and I&#8217;m seriously contemplating setting up a Wayland environment just for this one, to see if it works for me. My window &#8220;flow&#8221;, if that makes sense, is already left-to-right, so the idea of having that effectively automated with an infinite canvas sounds very appealing to me, especially on smaller displays. I just need to figure out if it works in reality. 

<https://www.osnews.com/story/139385/niri-0-1-5-released/>

---

## Microsoft now lets you download app executables directly from the Microsoft Store website

date: 2024-04-21, from: OS News

Microsoft is on a roll with updating its app store on Windows 10 and 11. Following the recent release of performance upgrades and improved algorithms, the company announced big changes in how the web version of the Microsoft Store works. Now, every user can download app executables directly from the website using new &#8220;installers for web.&#8221; ↫ Taras Buria at Neowin Neat. 

<https://www.osnews.com/story/139383/microsoft-now-lets-you-download-app-executables-directly-from-the-microsoft-store-website/>

---

## Lunatik: a framework for scripting the Linux kernel with Lua

date: 2024-04-21, from: OS News

Lunatik is a framework for scripting the Linux kernel with Lua. It is composed by the Lua interpreter modified to run in the kernel; a device driver (written in Lua =)) and a command line tool to load and run scripts and manage runtime environments from the user space; a C API to load and run scripts and manage runtime environments from the kernel; and Lua APIs for binding kernel facilities to Lua scripts. ↫ Lunatik GitHub page I&#8217;m not knowledgeable enough to understand what this might be used for, but I figured y&#8217;all would be interested in this. 

<https://www.osnews.com/story/139381/lunatik-a-framework-for-scripting-the-linux-kernel-with-lua/>

---

**@Dave Winer's Scripting News** (date: 2024-04-21, from: Dave Winer's Scripting News)

Doc asks the <a href="https://twitter.com/dsearls/status/1782145396950835248">question</a> on all our minds: "Why does ChatGPT misspell the f*ck out of words on images?" Don Park, Wes Felter and JY Stervinou chime in. 

<http://scripting.com/2024/04/21.html#a212728>

---

**@Dave Winer's Scripting News** (date: 2024-04-21, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2021/02/11/frescaBlackberryCitrus.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Back in the old days, during a great sport event, we'd post our feelings, pro or con, to Twitter. I <a href="https://twitter.com/davewiner/status/1782032706903195993">observed</a> as follows: "Let's do something great with our lives! In the meantime I miss the role that twitter used to play and never will play again. It was the place to go to say 'How about those Knicks!' when they win a game like the one they won last night. Not no mo." <a href="http://scripting.com/2005/01/27.html#When:9:35:10AM">Betsy Devine</a> was the first to like this. I felt heard. 

<http://scripting.com/2024/04/21.html#a212552>

---

## Humans versus Machines: The Hallucination Edition

date: 2024-04-21, from: Gary Marcus blog

So many people are confused about the relation between human cognitive errors and LLM hallucinations that I wrote this short explainer: Humans say things that aren't true for many different reasons &#8226; Sometimes they lie &#8226; Sometimes they misremember things 

<https://garymarcus.substack.com/p/humans-versus-machines-the-hallucination>

---

**@Tomosino's Mastodon feed** (date: 2024-04-21, from: Tomosino's Mastodon feed)

<p>If any of you are going by the kitchen can you grab me some water? Thanks</p> 

<https://tilde.zone/@tomasino/112310028733771128>

---

**@Dave Winer's Scripting News** (date: 2024-04-21, from: Dave Winer's Scripting News)

Good morning sports fans! 

<http://scripting.com/2024/04/21.html#a154110>

---

## Facing Facts

date: 2024-04-21, from: Gary Marcus blog

&#8220;The definition of insanity is doing the same thing over and over again while expecting different results.&#8221; If all we had was ChatGPT, we could say, hmm &#8220;maybe hallucinations are just a bug&#8221;, and fantasize that they weren&#8217;t hard to fix. If all we had was Gemini, we could say, hmm &#8220;maybe hallucinations are just a bug&#8221;. 

<https://garymarcus.substack.com/p/facing-facts>

---

## 
                <code>dusage</code> for the command line and <code>PMdusage</code> for OS/2
            

date: 2024-04-21, updated: 2024-04-21, from: Uninformative blog

 

<https://www.uninformativ.de/blog/postings/2024-04-21/0/POSTING-en.html>

---

## Maldives 2024

date: 2024-04-21, from: Alex Schroeder's Blog

<h1 id="maldives-2024">Maldives 2024</h1>

<p>The biosphere as we know it is ending and I’m spending two weeks in the Maldives with my wife for her 50th birthday. I feel conflicted.</p>

<p>The trip to get here was long. Zurich Doha by plane, Doha Male by plane, Male Kurudu by water-plane, Kurudu Komandoo by speedboat. I felt like sleeping for 20h when we finally got here. And all the <a href="2024-04-05-travel">anxiety before leaving</a> was terrible, too.</p>

<p>With that, I think we have all out must-see locations before the end. We went to the <a href="2017-10-28_Australia">Great Barrier Reef</a> in 2017, to the <a href="Galapagos_2020">Galapagos</a> in 2020 and now to the Maldives.</p>

<p><a class="tag" href="/search/?q=%23Pictures">#Pictures</a> <a class="tag" href="/search/?q=%23Maldives">#Maldives</a></p>

<p><strong>2024-04-06</strong>.
The last leg of the journey – our water-plane was delayed because of the bad weather.</p>

<p><img loading="lazy" src="2024-04-06-maledives-1.jpg" alt="" /></p>

<p>Looking out from the porch the ocean is blue, the sky is blue and the reef begins a few meters in.</p>

<p><img loading="lazy" src="2024-04-06-maledives-5.jpg" alt="" /></p>

<p>We go snorkeling every day. Our last two trips showed me that we need an underwater camera. Oh to have videos of Reef Number Nine in Australia or the penguins and sea lions in the Galapagos! I bought a GoPro Hero 10 before we left.</p>

<p><img loading="lazy" src="2024-04-06-maledives-2.jpg" alt="" /></p>

<p>This cowtail stingray (?) we keep seeing is about 2m long and likes to hide in the sand.</p>

<p><img loading="lazy" src="2024-04-06-maledives-3.jpg" alt="" /></p>

<p>There’s sea grass sprouting right now and sea turtles grazing.</p>

<p><img loading="lazy" src="2024-04-06-maledives-4.jpg" alt="" /></p>

<p>Black tipped reef sharks… harmless! At a later point we did see it attack something hidden in the rocks and it was scary to see!</p>

<p><img loading="lazy" src="2024-04-06-maledives-6.jpg" alt="" /></p>

<p>Most corals look dreary! It’s certainly not as colourful and busy as in Australia or the Galapagos.
This purple giant is cool, though.</p>

<p><img loading="lazy" src="2024-04-06-maledives-7.jpg" alt="" /></p>

<p>There are still plenty of colourful fish.</p>

<p><img loading="lazy" src="2024-04-06-maledives-8.jpg" alt="" /></p>

<p>Whenever we’re away on a trip, we play games.
The most popular tropical island game is Race for the Galaxy.</p>

<p><img loading="lazy" src="2024-04-06-maledives-9.jpg" alt="" /></p>

<p>Yesterday we also played <a href="http://mixedsignals.ml/games/petition/">Petition</a> by <a class="account" href="https://mastodon.xyz/@klaatu" title="@klaatu@mastodon.xyz">@klaatu</a>.</p>

<p><strong>2024-04-10</strong>. More pictures.</p>

<p>We saw our first hermit crabs in Costa Rica where we spent our honey moon. We love these little ones. Maybe because they’re slow and easily scared and therefore obviously harmless.</p>

<p><img loading="lazy" src="2024-04-06-maledives-10.jpg" alt="" /></p>

<p>The parrot fish have super sharp teeth and gnaw on the corals. And when you’re snorkeling, you can hear them. Kchrrr! Kchhhrrk!</p>

<p><img loading="lazy" src="2024-04-06-maledives-11.jpg" alt="" /></p>

<p>I also love those lone corals harbouring a small school of tiny fearful fish that retreat and hide in the coral as somebody approaches.</p>

<p><img loading="lazy" src="2024-04-06-maledives-12.jpg" alt="" /></p>

<p>When you swim past the nearby reef the bottom drops out and the deep blue begins. I am always afraid some huge fish will show up.</p>

<video src="/wiki/2024-04-06-maledives-14.mp4" poster="2024-04-06-maledives-13.jpg" width="1920" height="1080" controls muted>
<img alt="Image of fishes and the deep blue ocean" src="2024-04-06-maledives-13.jpg"/><br>
<a alt="Video of the same fishes" href="/wiki/2024-04-06-maledives-14.mp4">14 second video</a>
</video>

<p>There is a strange tourism industry, here. The islands are either uninhabited, inhabited by locals, or reserved for tourism. Tourists can stay on the “local islands” since 2007. Natives are only allowed to work on the tourist islands.</p>

<p>The capital city is <a href="https://en.wikipedia.org/wiki/List_of_cities_proper_by_population_density">one of the densest urban areas</a> on the planet. Just look at the image of <a href="https://en.wikipedia.org/wiki/Mal%C3%A9">Malé on Wikipedia</a>.</p>

<p>I would lament this urban sprawl, the land reclamation, the garbage problem, the democracy deficit, the dependence on tourism – but I know what my friend Peter would say, pointing at the <a href="https://en.wikipedia.org/wiki/Factfulness">Factfulness</a> book. Check out these stats from the <a href="https://de.m.wikipedia.org/wiki/Malediven">German Wikipedia page on the Maldives</a>:
In 2020, the Maldives had 541000 inhabitants.
In 1950, they had about 74000 inhabitants. At the time, a woman had about 7.5 children on average in 1980 but these days they are so much better off that the growth rate has dropped to 1.8% in 2020 and a woman has about 1.8 children on average. Life expectancy rose from 34.5 years in 1950 to 81 for women and 77.8 for men in 2020. An amazing improvement from the point of view of the locals.</p>

<p>From my green perspective, though… let’s not forget the garbage island <a href="https://en.m.wikipedia.org/wiki/Thilafushi">Thilafushi</a>. The picked an island and use it as a garbage dump because they don&rsquo;t know what to do with all the garbage. Sure, every island needs a garbage incinerator now, but in the nineties, there was just garbage and it had to go somewhere. And some of the stuff starts leaking. It accumulates in the the fish. People eat the fish. It&rsquo;s easy to feel grim about this. I need to remind myself that life expectancy was less than 35 years just a generation or two ago (I was born in the seventies). Poverty is much, much worse than pollution and we tend to forget it.</p>

<p>If you’re wondering why I’m basically skimming, reading and finally summarizing Wikipedia articles on my blog, I guess the answer is that this is how I try to deal with it all. To not close my eyes. Not to look away.</p>

<p><strong>2024-04-12</strong>. Bad luck for Claudia. Yesterday, late at night, she stuck her small toe in a gap between two planks, took another step, nearly fell and twisted her foot. There’s a huge dark bruise on its back and a significant dark bruise below. No more fins, for a while. 😭</p>

<p>We had signed up for a snorkel safari when suddenly the buzz was that the young humpback whale they had seen two days ago was still around and so the ship picked up some extra passengers and Claudia came along to do some whale watching.</p>

<p>The whale watching did not disappoint.</p>

<video src="/wiki/2024-04-06-maledives-15.mov" poster="2024-04-06-maledives-15.jpg" width="1920" height="1080" controls muted>
<img alt="Image of a whale slapping its fin" src="2024-04-06-maledives-15.jpg"/><br>
<a alt="Video of the whale slapping its fin" href="/wiki/2024-04-06-maledives-15.mov">5 second video</a>
</video>

<p>This adolescent <a href="https://en.m.wikipedia.org/wiki/Humpback_whale">humpback whale</a> was about 8m long. It’s unusual to find a whales here, now, so close to the reef, so young, without its family. There was speculation that it might be waiting for its family to pick it up again, or that perhaps it was sick.</p>

<video src="/wiki/2024-04-06-maledives-14.mov" poster="2024-04-06-maledives-14.jpg" width="1920" height="1080" controls muted>
<img alt="Image of a young humpback whale swimming by" src="2024-04-06-maledives-14.jpg"/><br>
<a alt="Video of the same whale" href="/wiki/2024-04-06-maledives-14.mov">6 second video</a>
</video>

<p><strong>2024-04-13</strong>. To it is raining. Good for Claudia since she is supposed to rest her foot.</p>

<p><img loading="lazy" src="2024-04-06-maledives-16.jpg" alt="" /></p>

<p><strong>2024-04-21</strong>. After snorkling with the whale, not much seemed to be worth posting about.</p>

<p>Before going on this trip, I bought an older GoPro HERO 10. Now I have a few gigabytes of reef snorkeling footage. I don&rsquo;t know what to do with it. Post it? Unlikely! It takes too much space and nobody would look at it. Donate it to YouTube? Unlikely! Upload it to some Peertube instance and thereby offload the cost? Unlikely.</p>

<p>Regarding the economy of the Maldives and the shock when I learned about the garbage island and my dismay when I saw the skyline of Malé island – when we flew back, I got a closer look at Malé from the air as we landed and while it wasn&rsquo;t an island nature paradise, it was just a city with nice, tall buildings and roads and palm trees and construction sites and glass fronts and cars and motorcycles. In other words, it seemed like a perfectly normal city and it wasn&rsquo;t shabby and it didn&rsquo;t have slums and so I keep coming back to the main issue: Beating poverty is of ultimate importance in order to improve people&rsquo;s lives and giving them options so that they can work on the problems they care about. When we flew over Thilafushi, the garbage island didn&rsquo;t look &ldquo;apocalyptic&rdquo; but just like some industrial zone elsewhere in the world, except it&rsquo;s an island in the middle of the ocean.</p> 

<https://alexschroeder.ch/view/2024-04-06-maledives>

---

## This Thing is Bigger Than Journalism

date: 2024-04-21, from: Doc Searls (at Harvard), New Old Blog

Journalism as we knew it is washing away. But the story is bigger than journalism alone, and bigger than a story alone can tell. (Image borrowed from the brilliant Despair.com.) We who care about journalism are asked to join the Save Journalism Project, and its fight against Big Tech. Their pitch begins, and adds, On the first point, we [&#8230;] 

<https://doc.searls.com/2024/04/20/this-thing-is-bigger-than-journalism/>

---

## Full Circle Weekly News 362

date: 2024-04-21, from: Full Circle Magazine

<ul>
<li>
<p><a href="https://lore.kernel.org/lkml/wwkqc7ugdewzde6gdej5bi6kb3bsvoqzqkexxejcl64d5r3pow@46qmmqq5wx4y/">Bcachefs patches to fix the FS:</a></p>
</li>
<li>
<p><a href="https://www.mail-archive.com/info-gnu@gnu.org/msg03275.html">Release of GNU Stow 2.4:</a></p>
</li>
<li>
<p><a href="https://github.com/migueletto/PumpkinOS">The PumpkinOS project develops PalmOS reincarnation:</a></p>
</li>
<li>
<p><a href="https://gitlab.com/apt-mirror2/apt-mirror2/-/releases/v4">Release of apt-mirror2 4:</a></p>
</li>
<li>
<p><a href="https://github.com/pivpn/pivpn/releases/tag/v4.6.0">PiVPN project discontinued:</a></p>
</li>
<li>
<p><a href="https://github.com/cloudflare/pingora/releases">First edition of Pingora:</a></p>
</li>
<li>
<p><a href="https://pagure.io/fesco/issue/3191#comment-904697">Fedora 41 approved DNF5:</a></p>
</li>
<li>
<p><a href="https://lists.linuxaudio.org/hyperkitty/list/linux-audio-announce@lists.linuxaudio.org/thread/WJFB554MUA2BHOZMYIANTDAG7WCESIC2/">Rivendell 4.2 is available:</a></p>
</li>
<li>
<p><a href="https://github.com/nixys/nxs-backup/releases/tag/v3.4.0">Release of nxs-backup 3.4.0:</a></p>
</li>
<li>
<p><a href="https://www.mail-archive.com/openssl-announce@openssl.org/msg00445.html">Release of OpenSSL 3.3.0:</a></p>
</li>
<li>
<p><a href="https://kubuntu.org/news/celebrating-creativity-announcing-the-winners-of-the-kubuntu-contests/">Kubuntu project presented an updated logo and branding elements:</a></p>
</li>
<li>
<p><a href="https://geti2p.net/en/blog/post/2024/04/08/new_release_i2p_2.5.0">Release of I2P 2.5.0 anonymous network:</a></p>
</li>
<li>
<p><a href="https://www.gentoo.org/news/2024/04/10/SPI-associated-project.html">Project Gentoo and SPI:</a></p>
</li>
<li>
<p><a href="https://blog.openziti.io/announcing-openziti-v1">OpenZiti 1.0:</a></p>
</li>
<li>
<p><a href="https://openinventionnetwork.com/founding-open-source-zone-members-oin-the-linux-foundation-and-microsoft-mark-five-years-of-successes-in-protecting-open-source-software-from-patent-assertion-entities/">OS Zone Initiative Revokes 54 Anti-Open Software Patents:</a></p>
</li>
<li>
<p><a href="https://lore.kernel.org/all/ZhBRSM2j0v7cOLn%252F@oracle.com/T/%23u">Oracle has published DTrace 2.0.0-1.14 for Linux</a></p>
</li>
<li>
<p><a href="https://ardour.org/whatsnew.html">Release of Ardor 8.5:</a></p>
</li>
<li>
<p><a href="https://fridge.ubuntu.com/2024/04/12/ubuntu-24-04-lts-noble-numbat-beta-released/">Ubuntu 24.04 beta release:</a></p>
</li>
<li>
<p><a href="https://translate.google.com/website?sl=auto&amp;tl=en&amp;hl=en-US&amp;client=webapp&amp;u=https://kde.org/announcements/frameworks/6/6.1.0/">Release of KDE Frameworks 6.1.0:</a></p>
</li>
<li>
<p><a href="https://lakka.tv/articles/2024/04/13/lakka-5.0/">Lakka 5.0:</a></p>
</li>
<li>
<p><a href="https://github.com/lutris/lutris/releases/tag/v0.5.17">Release of Lutris 0.5.17:</a></p>
</li>
</ul>
<p><strong>Credits</strong></p>
<ul>
<li>Host: <a href="https://twitter.com/bardictriad">@bardictriad</a>, <a href="mailto:zaivala@hostux.social">@zaivala</a></li>
<li>Bumper: <a href="https://canonical.com/">Canonical</a></li>
<li>Theme Music: From The Dust - Stardust</li>
<li><a href="https://soundcloud.com/ftdmusic">https://soundcloud.com/ftdmusic</a></li>
<li><a href="https://creativecommons.org/licenses/by/4.0/">CC BY 4.0</a></li>
</ul> 

<https://fullcirclemagazine.org/podcasts/podcast-362/>

---

## I somehow managed to lock myself out of my Authy secrets

date: 2024-04-21, from: Ze Iaso's blog

 

<https://xeiaso.net/notes/2024/authy-fuckup/>

---

## "No way to prevent this" say users of only language where this regularly happens

date: 2024-04-21, from: Ze Iaso's blog

 

<https://xeiaso.net/shitposts/no-way-to-prevent-this/CVE-2024-2961/>

