---
title: columns
updated: 2024-09-10 08:28:25
---

# columns

(date: 2024-09-10 08:28:25)

---

##  A hand-drawn map by Vladimir Nabokov of the travels of Leopold Bloom... 

date: 2024-09-10, updated: 2024-09-10, from: Jason Kittke's blog

 

<https://kottke.org/24/09/0045248-a-hand-drawn-map-by-vladi>

---

##  Colonial Williamsburg, a Safe Space for Learning History 

date: 2024-09-10, updated: 2024-09-10, from: Jason Kittke's blog

 

<https://kottke.org/24/09/colonial-williamsburg-a-safe-space-for-learning-history>

---

## 2024-09-08 WebDAV no more

date: 2024-09-10, from: Alex Schroeder's Blog

<h1 id="2024-09-08-webdav-no-more">2024-09-08 WebDAV no more</h1>

<p>I must have implemented <a href="http://www.webdav.org/">WebDAV</a> two or three times in the last decade or two. Just now I used <a href="https://httpd.apache.org/docs/current/mod/mod_dav.html">mod_dav for Apache</a> to enable WebDAV for some directories.</p>

<p>In theory, it&rsquo;s great. You can treat the web server as a file server, connecting to it and using your regular file manager and text editor, using your favourite shell to do things. And if your website already uses permissions to restrict access to some locations, you can use the same config files to handle the making of changes.</p>

<p>In practice, however, the operating systems all have such brittle implementations that none of the solutions I had in production ever worked well. It doesn&rsquo;t matter whether it&rsquo;s Windows&rsquo; File Explorer, macOS&rsquo; Finder, the Gnome virtual file system via Nautilus or something else. The only thing that works is the command-line client <a href="https://notroj.github.io/cadaver/">cadaver</a>. It&rsquo;s the best. It works. Sooner or later, however, I realize that cadaver is probably not the tool I can expect non-technical people to use. It has the same user-interface as the old ftp command-line client.</p>

<p>I wonder what the issue is. WebDAV is 25 years old. It seems to me that something about the process or the spec must have set it up for failure. Perhaps it was a complex protocol? <a href="https://datatracker.ietf.org/doc/html/rfc2518">RFC 2518</a> for WebDAV is from February 1999, <a href="https://datatracker.ietf.org/doc/html/rfc2616">RFC 2616</a> for HTTP/1.1 is from June 1999. Perhaps the move from HTTP/1.0 to HTTP/1.1 too away all the thunder. There was the DotCom craze and Web 2.0 and what not. Nobody had time for WebDAV? Nobody had a business model for WebDAV? People used FTP and SSH and all that for remote file access, there was no point doing it using web technology? Or perhaps there wasn&rsquo;t just one library to rule them all and in the darkness bind them?</p>

<p>In any case, I think I need to write this down so I don&rsquo;t fall for it again in two years. I&rsquo;ve been falling for it since 2005. Every wiki of mine gets WebDAV support … Looking at my blog it seems that <a href="2021-10-18_WebDAV_is_tricky">the last time</a> I spent five days to get this right. This time around I&rsquo;m just tired.</p>

<p>Time to disable <code>mod_dav</code> again.</p>

<p><a class="tag" href="/search/?q=%23WebDAV">#WebDAV</a></p>

<p><strong>2024-09-10</strong>. Another option would be an explicit list of endorsed clients like <a href="https://notroj.github.io/cadaver/">cadaver</a>, <a href="http://rei.to/carotdav_en.html">CarotDAV</a>, <a href="https://cyberduck.io/">Cyberduck</a>, <a href="https://hackage.haskell.org/package/DAV">hDAV</a>, <a href="https://winscp.net/">WinSCP</a>, … But I have only used <code>cadaver</code> myself.</p> 

<https://alexschroeder.ch/view/2024-09-08-webdav>

---

**@Dave Winer's Scripting News** (date: 2024-09-10, from: Dave Winer's Scripting News)

<a href="https://www.youtube.com/watch?v=hnze3oquDpI&t=2498s">James Earl Jones</a>: "I don't know if we ever learn from history." 

<http://scripting.com/2024/09/10.html#a115132>

---

**@Dave Winer's Scripting News** (date: 2024-09-10, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/09/10/kranepool.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="https://en.wikipedia.org/wiki/Ed_Kranepool">Ed Kranepool</a> was a Met when that really <a href="http://scripting.com/davenet/1995/04/24/thebaseballgod.html">meant something</a>. He started on the Mets in their inaugural year, 1962. They went from the worst team ever to World Champions in record time. They became the heroes of NYC in 1969. I was riding the <a href="https://www.google.com/maps/dir/29-31+170th+St,+Flushing,+NY+11358/The+Bronx+High+School+of+Science,+West+205th+Street,+The+Bronx,+NY/@40.8244197,-73.952697,12z/data=!4m15!4m14!1m5!1m1!1s0x89c28a8078136589:0xcdf1c8651455269a!2m2!1d-73.7948958!2d40.7696471!1m5!1m1!1s0x89c2f39fba19f047:0x456fa7ab9f9bae18!2m2!1d-73.8913029!2d40.8779204!3e3!5i4?entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D">subway</a> back then to get from Flushing to the Bronx to go to school, and in the Bronx, when the Mets won, everyone was smiling. If you've ever been to NYC you know how unusual that is. And in the Bronx, which is of course where the always-hated Yankees were HQ'd. Ed Kranepool <a href="https://nypost.com/2024/09/09/sports/no-one-a-met-more-through-and-through-than-ed-kranepool/">died</a> Sunday. He was watching a Mets game when he had a heart attack. 

<http://scripting.com/2024/09/10.html#a113403>

---

**@Dave Winer's Scripting News** (date: 2024-09-10, from: Dave Winer's Scripting News)

Famous heroic kitten <a href="https://imgs.scripting.com/2024/09/10/famousKittenBreaksOutOfPrison.png">breaks out of prison</a> to rescue house pets in Ohio from being eaten by JD Vance. 

<http://scripting.com/2024/09/10.html#a112516>

---

## New Chrome Zero-Day

date: 2024-09-10, updated: 2024-09-09, from: Bruce Schneier blog

<p>According to Microsoft researchers, North Korean hackers have been <a href="https://www.microsoft.com/en-us/security/blog/2024/08/30/north-korean-threat-actor-citrine-sleet-exploiting-chromium-zero-day/">using</a> a Chrome <a href="https://nvd.nist.gov/vuln/detail/CVE-2024-7971">zero-day exploit</a> to steal cryptocurrency.</p>
 

<https://www.schneier.com/blog/archives/2024/09/new-chrome-zero-day.html>

---

## The future of Trump if he loses the election 

date: 2024-09-10, from: Robert Reich's blog

And the future of Trumpism 

<https://robertreich.substack.com/p/the-future-of-trumpism-if-he-loses>

---

## September 9, 2024 

date: 2024-09-10, from: Heather Cox Richardson blog

Last night, Vice President Kamala Harris&#8217;s presidential campaign launched a new section of its website detailing her policy positions. 

<https://heathercoxrichardson.substack.com/p/september-9-2024>

---

## Don’t Panic

date: 2024-09-09, from: Dan Rather's Steady

We all have to understand the assignment 

<https://steady.substack.com/p/dont-panic>

---

##  On the Regular 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/on-the-regular-1>

---

## The Trump-Vance Plane Goes Into Prohibited Airspace. 

date: 2024-09-09, from: James Fallows, Substack

Examining another entry in the annals of the weird. 

<https://fallows.substack.com/p/the-trump-vance-plane-goes-into-prohibited>

---

##  James Earl Jones has died at the age of 93. I loved... 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/0045253-james-earl-jones-has-died>

---

##  A Math Exam, but Obviously Some Stuff Has Happened over the Summer... 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/0045252-a-math-exam-but-obviously>

---

## OneFileLinux: A tiny recovery distro that fits snugly in your EFI system partition

date: 2024-09-09, updated: 2024-09-09, from: Liam Proven's articles at the Register

<h4>The kind of thing the big names should be doing instead of working with proprietary vendors</h4>
      <p>OneFileLinux is a very different sort of distro that runs entirely from your UEFI system partition, without a bootable USB key or any other partitions on the disk.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/09/09/onefilelinux_esp_distro/>

---

##  Satisfactory Processing Machine 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/satisfactory-processing-machine>

---

##  Apple just announced a number of hearing health features for AirPods Pro... 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/0045250-apple-just-announced-a-nu>

---

##  The neolithic dad guide to what time to leave for the airport.... 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/0045244-the-neolithic-dad-guide-t>

---

##  Is my date&#8217;s flat-earth beliefs a dealbreaker? &#8220;Our beliefs aren&#8217;t just a... 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/0045245-is-dating-a-flat-earther->

---

##  404 Media on The Rise of DIY, Pirated Medicine (to get around... 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/0045246-404-media-on-the-rise>

---

##  Playground by Richard Powers 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/playground-by-richard-powers>

---

## 30th anniversary in a month

date: 2024-09-09, from: Dave Winer's Scripting News

<p>Are the Apple announcements like great reunions for people who have been going to these things regularly for 20+ years? If so, I can see the value in it. </p>
<p>I went to a reunion at Berkman, <a href="http://scripting.com/2023/09/08/222335.html">after 20 years</a>, and it was great, made me wonder why we didn't do it every year for the last 20. When you get a group of people together who do great things in a special moment, you should see them from time to time. </p>
<p><img class="imgRightMargin" src="https://imgs.scripting.com/2020/03/22/accordionPlayer.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">But I have a feeling there's a lot of turnover at the Apple events. In any case, I stopped going to them somewhere in the mid-90s, or more accurately they stopped inviting me. Yeah I was disruptive, but only in comparison to how well-behaved the other journos were (at that time I was writing for Wired). </p>
<p>The press was in awe of Apple and other Valley companies. I enjoyed that for a very brief period when my company went public after I had a hit Mac product. Then I became something of a pariah, because I <a href="http://scripting.com/davenet/">started blogging</a> and believe me the icons of the Valley for the most part <i>did not like it.</i> They were accustomed to fawning attention and rewritten press releases. But because I was an insider, I had an idea where the bodies might be buried, and I wrote about it. <a href="https://en.wikipedia.org/wiki/Steve_Wozniak">Woz</a> liked it. I was popular at the parties, I guess. </p>
<p>BTW, <a href="https://en.wikipedia.org/wiki/Heidi_Roizen">Heidi Roizen</a> once observed that I took a date to an Apple announcement (the one where Steve came back). There weren't many people there, maybe 20 or 25. </p>
<p>Jeff Jarvis wrote in the foreword to his <a href="https://www.amazon.com/Web-We-Weave-Internet-Misanthropes/dp/1541604121">upcoming book</a> that I'm like the <a href="https://en.wikipedia.org/wiki/Zelig">Zelig</a> of tech. This is what he meant, imho. <span class="spOldSchoolEmoji">😄</span></p>
<p>We're coming up on the 30th anniversary of my blog, one month from tomorrow. You won't hear anyone from tech applauding, and you probably won't hear anything from the old bloggers. But I have something special in mind myself. Hopefully it'll come together in the next month, or sooner. :-)</p>
<p>Let's go back to 1994, by looking to the future. You won't need an invite, btw. It'll open to everyone.</p>
 

<http://scripting.com/2024/09/09/164454.html?title=30thAnniversaryInAMonth>

---

##  This extensive list of pangrams (e.g. &#8220;the quick brown fox&#8230;&#8221;) also contains... 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/0045177-this-extensive-list-of-pa>

---

##  TIL that bananas emit antimatter (because they are slightly radioactive).... 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/0045187-til-that-bananas-emit-ant>

---

##  The Prince Documentary You Might Never See 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/the-prince-documentary-you-might-never-see>

---

## [Sponsor] Tiptop

date: 2024-09-09, updated: 2024-09-09, from: Daring Fireball

 

<http://www.tiptop.com/>

---

**@Dave Winer's Scripting News** (date: 2024-09-09, from: Dave Winer's Scripting News)

Could Kamala Harris look into the camera tomorrow night and say "To Fox News viewers, they've been feeding you a load crap. Just thought you should know. And I wouldn't trust the others so much either." 

<http://scripting.com/2024/09/09.html#a151044>

---

##  John McFall is the first physically disabled astronaut. &#8220;Paralympian and surgeon John... 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/0045208-john-mcfall-is-the-first>

---

## Ubuntu Noble updates on hold while 20th anniversary teaser bears retro-styled gifts

date: 2024-09-09, updated: 2024-09-09, from: Liam Proven's articles at the Register

<h4>22.04 to 24.04 upgrade temporarily withdrawn, but will be back</h4>
      <p>Ubuntu 24.04.1 is still available, but for now you can't update to it from Jammy Jellyfish until a bug is sorted. To compensate, there are some fun goodies coming in 24.10.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/09/09/ubuntu_noble_updates_on_hold/>

---

## Australia Threatens to Force Companies to Break Encryption

date: 2024-09-09, updated: 2024-09-09, from: Bruce Schneier blog

<p>In 2018, Australia passed the Assistance and Access Act, which&#8212;among other things&#8212;gave the government the <a href="https://www.upguard.com/blog/australias-assistance-and-access-act">power</a> to force companies to break their own encryption.</p>
<blockquote><p>The Assistance and Access Act includes key components that outline investigatory powers between government and industry. These components include:</p>
<ul>
<li>Technical Assistance Requests (TARs): TARs are voluntary requests for assistance accessing encrypted data from law enforcement to teleco and technology companies. Companies are not legally obligated to comply with a TAR but law enforcement sends requests to solicit cooperation.
...</li></ul></blockquote> 

<https://www.schneier.com/blog/archives/2024/09/australia-threatens-to-force-companies-to-break-encryption.html>

---

## Trump’s woman problem

date: 2024-09-09, from: Robert Reich's blog

Why he faces a gender chasm, and why women voters will be America&#8217;s salvation 

<https://robertreich.substack.com/p/trumps-woman-problem>

---

## September 8, 2024 

date: 2024-09-09, from: Heather Cox Richardson blog

&#8220;Lovebirds,&#8221; by Peter Ralston. 

<https://heathercoxrichardson.substack.com/p/september-8-2024>

---

## Monday 9 September, 2024

date: 2024-09-08, from: John Naughton's online diary

Stoned Taken on the north shore of Galway Bay, with the ‘moonscape’ of the Burren in the far distance. The cairn was built by person or persons unknown. But it was asking to be photographed! Quote of the Day ”Anyone &#8230; <a href="https://memex.naughtons.org/monday-9-september-2024/39848/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-9-september-2024/39848/>

---

## History Extra for September 7, 2024

date: 2024-09-08, from: Heather Cox Richardson blog

In the late nineteenth century, as workers tried to reclaim power from the industrialists who had bought control over the U.S. 

<https://heathercoxrichardson.substack.com/p/history-extra-for-september-7-2024>

---

## ★ The iOS Continental Drift Fun Gap

date: 2024-09-08, updated: 2024-09-08, from: Daring Fireball

As it stands, fun side is not the EU. But hope springs eternal. 

<https://daringfireball.net/2024/09/ios_continental_drift_fun_gap>

---

## Peering in the social web

date: 2024-09-08, from: Dave Winer's Scripting News

<p>A very practical issue. </p>
<p><a href="https://bsky.app/profile/scripting.com/post/3l3njg5jhft2k">BlueSky</a> has a 300 character limit, which is less than the other services I cross-post to, namely:</p>
<ul>
<li>Mastodon: 500 (using mastodon.social as benchmark)</li>
<li>Threads: 500</li>
<li>Twitter: 10000 (assume paying the montly fee)</li>
<li>RSS: no specific limit</li>
<li>WordPress: no specific limit</li>
<li>BlueSky: 300</li>
</ul>
<p>This will be a problem when we eventually get <a href="https://en.wikipedia.org/wiki/Peering">peering</a> working cross-network among twitter-like systems.</p>
<p>It looks to me, just eyeballing this list, that 500 is a good place to start, although I don't think ultimately there should be any specific limits. </p>
<p>We saw that clearly when RSS 0.91 was the most recent version, there were limits in the Netscape doc, but they were ignored by content sources, which is why I took them out in the 0.92 and 2.0 versions. </p>
<p>Peering is simpler than federation. It would enable people to send messages across these boundaries, but wouldn't handle the engagement features, likes, replies, forwarding. It's what many people are starting to do now, by hand. There's no way to put it off, imho -- the Bluesky limit is already hard to deal with. </p>
 

<http://scripting.com/2024/09/08/152655.html?title=peeringInTheSocialWeb>

---

## September 7, 2024

date: 2024-09-08, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/september-7-2024-107>

---

## Shania Twain

date: 2024-09-08, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/shania-twain>

---

## Caption contest: Bugged

date: 2024-09-08, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/caption-contest-hair>

---

## September 7, 2024

date: 2024-09-08, from: Heather Cox Richardson blog

By rights, tonight&#8217;s post should be a picture, but Trump&#8217;s behavior today merits a marker because it feels like a dramatic escalation of the themes we&#8217;ve seen for years. 

<https://heathercoxrichardson.substack.com/p/september-7-2024>

---

## The invisible toll of pollution

date: 2024-09-08, from: Tracy Durnell Blog

IVF success drops nearly 40% with air pollution exposure: study by Katie Dangerfield (Global News) See also: Moving towards climate accountability + It’s ‘almost impossible’ to eliminate toxic PFAS from your diet. Here’s what you can do by Tom Perkins (The Guardian) Microplastics are infiltrating brain tissue, studies show: ‘There’s nowhere left untouched’ by Douglas Main [&#8230;] 

<https://tracydurnell.com/2024/09/07/the-invisible-toll-of-pollution/>

---

## What’s in your pills?

date: 2024-09-08, from: Tracy Durnell Blog

Supplements are a Rising Cause of Liver Failure by Dr. Jen Gunther &#8230;the risk of supplement-related liver injury and liver injury severe enough that liver transplantation is needed has increased dramatically over the past 20 years. Some estimates suggest supplements may cause up to 43% of drug-induced liver injury in the United States and 19% [&#8230;] 

<https://tracydurnell.com/2024/09/07/whats-in-your-pills/>

