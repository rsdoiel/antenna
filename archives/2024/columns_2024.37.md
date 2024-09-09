---
title: columns
updated: 2024-09-09 08:36:28
---

# columns

(date: 2024-09-09 08:36:28)

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

Could Kamala Harris look into the camera tomorrow night and say "To Fox News viewers, they've been feeding you a load crap. Just thought you should know that. And I wouldn't trust what the others are saying either." 

<http://scripting.com/2024/09/09.html#a151044>

---

##  John McFall is the first physically disabled astronaut. &#8220;Paralympian and surgeon John... 

date: 2024-09-09, updated: 2024-09-09, from: Jason Kittke's blog

 

<https://kottke.org/24/09/0045208-john-mcfall-is-the-first>

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

## 2024-09-08 WebDAV no more

date: 2024-09-08, from: Alex Schroeder's Blog

<h1 id="2024-09-08-webdav-no-more">2024-09-08 WebDAV no more</h1>

<p>I must have implemented <a href="http://www.webdav.org/">WebDAV</a> two or three times in the last decade or two. Just now I used <a href="https://httpd.apache.org/docs/current/mod/mod_dav.html">mod_dav for Apache</a> to enable WebDAV for some directories.</p>

<p>In theory, it&rsquo;s great. You can treat the web server as a file server, connecting to it and using your regular file manager and text editor, using your favourite shell to do things. And if your website already uses permissions to restrict access to some locations, you can use the same config files to handle the making of changes.</p>

<p>In practice, however, the operating systems all have such brittle implementations that none of the solutions I had in production ever worked well. It doesn&rsquo;t matter whether it&rsquo;s Windows&rsquo; File Explorer, macOS&rsquo; Finder, the Gnome virtual file system via Nautilus or something else. The only thing that works is the command-line client <a href="https://notroj.github.io/cadaver/">cadaver</a>. It&rsquo;s the best. It works. Sooner or later, however, I realize that cadaver is probably not the tool I can expect non-technical people to use. It has the same user-interface as the old ftp command-line client.</p>

<p>I wonder what the issue is. WebDAV is 25 years old. It seems to me that something about the process or the spec must have set it up for failure. Perhaps it was a complex protocol? <a href="https://datatracker.ietf.org/doc/html/rfc2518">RFC 2518</a> for WebDAV is from February 1999, <a href="https://datatracker.ietf.org/doc/html/rfc2616">RFC 2616</a> for HTTP/1.1 is from June 1999. Perhaps the move from HTTP/1.0 to HTTP/1.1 too away all the thunder. There was the DotCom craze and Web 2.0 and what not. Nobody had time for WebDAV? Nobody had a business model for WebDAV? People used FTP and SSH and all that for remote file access, there was no point doing it using web technology? Or perhaps there wasn&rsquo;t just one library to rule them all and in the darkness bind them?</p>

<p>In any case, I think I need to write this down so I don&rsquo;t fall for it again in two years. I&rsquo;ve been falling for it since 2005. Every wiki of mine gets WebDAV support … Looking at my blog it seems that <a href="2021-10-18_WebDAV_is_tricky">the last time</a> I spent five days to get this right. This time around I&rsquo;m just tired.</p>

<p>Time to disable <code>mod_dav</code> again.</p>

<p><a class="tag" href="/search/?q=%23WebDAV">#WebDAV</a></p> 

<https://alexschroeder.ch/view/2024-09-08-webdav>

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

