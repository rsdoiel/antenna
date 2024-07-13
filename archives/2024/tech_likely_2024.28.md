---
title: tech likely 2024.28
updated: 2024-07-13 10:11:56
---

# tech likely 2024.28

(date: 2024-07-13 10:11:56)

---

## Windows NT 4.0 ported to run on certain Apple PowerPC Macs

date: 2024-07-12, from: OS News

The most fascinating time for Windows NT were its first few years on the market, when the brand new operating system supported a wide variety of architectures, from default x86, all the way down to stuff like Alpha, MIPS, and exotic things like Intel i860, and even weirder stuff like Clipper (even a SPARC port was planned, but never released). One of the more conventional architectures that saw a Windows NT port &#8211; one that was actually released to the public, no less &#8211; was PowerPC. The last version of Windows NT to support exotic architectures was 4.0, with Windows 2000 only supporting x86, dropping everything else, including PowerPC (although Windows 2000 for Alpha reached RC1 status). The PowerPC version of Windows NT only supported IBM and Motorola systems using the PowerPC Reference Platform, and never the vastly more popular PowerPC systems from Apple. Well, it&#8217;s 2024, and that just changed: Windows NT 4.0 can now be installed and run on certain Apple New World Power Macintosh systems. This repository currently contains the source code for the ARC firmware and its loader, targeting New World Power Macintosh systems using the Gossamer architecture (that is, MPC106 &#8220;Grackle&#8221; memory controller and PCI host, and &#8220;Heathrow&#8221; or &#8220;Paddington&#8221; super-I/O chip on the PCI bus).  NT4 only, currently. NT 3.51 may become compatible if HAL and drivers get ported to it. NT 3.5 will never be compatible, as it only supports PowerPC 601. (The additional suspend/hibernation features in NT 3.51 PMZ could be made compatible in theory but in practise would require all of the additional drivers for that to be reimplemented.) ↫ maciNTosh GitHub page This is absolutely wild, and one of the most interesting projects I&#8217;ve seen in a long, long time. The deeply experimental nature of this effort does mean that NT 4.0 is definitely not stable on any of the currently supported machines, and the number of drivers implemented is the absolute bare minimum to run NT 4.0 on these systems. It does, however, support dual-booting both NT 4.0 and Mac OS8, 9, and X, which would be quite something to set up. I&#8217;m not definitely going to keep an eye on eBay for a supported machine, because running NT on anything other than x86 has always been a bit of a weird fascination for me. Sadly, period-correct PowerPC machines that support NT are extremely rare and thus insanely expensive, and will often require board-level repairs that I can&#8217;t perform. Getting a more recent Yikes PowerMac G4 should be easy, since those just materialise out of thin air randomly in the world. I&#8217;m incredibly excited about this. 

<https://www.osnews.com/story/140227/windows-nt-4-0-ported-to-run-on-certain-apple-powerpc-macs/>

---

## Transferring Google Photos

date: 2024-07-12, from: Michael Tsai

Data Transfer Project: Beginning today, Apple and Google are expanding on their direct data transfer offerings to allow users of Google Photos to transfer their collections directly to iCloud Photos. This complements and completes the existing transfers that were first made possible from iCloud Photos to Google Photos and fulfills a core Data Transfer Initiative [&#8230;] 

<https://mjtsai.com/blog/2024/07/12/transferring-google-photos/>

---

## Delta 1.6 Rejected From the App Store

date: 2024-07-12, from: Michael Tsai

Zac Hall: We knew the retro game emulator app Delta was popular, but over 10 million users on iPhone alone? That&#8217;s the stat that the team behind Delta shared today alongside the latest news about availability on iPad. [&#8230;] Delta for iPad comes with features exclusive to iPadOS, including support for Handoff from iPhone, opening [&#8230;] 

<https://mjtsai.com/blog/2024/07/12/delta-1-6-rejected-from-the-app-store/>

---

## HTTP Status Codes As Area Codes

date: 2024-07-12, from: Michael Tsai

httpareacodes (via Mark Christian): Things that are three digits? HTTP response headers. Area codes. [&#8230;] 301: Moved Permanently: Western Maryland 

<https://mjtsai.com/blog/2024/07/12/http-status-codes-as-area-codes/>

---

## Huge AT&T Data Breach

date: 2024-07-12, from: Michael Tsai

Zack Whittaker ( Hacker News): U.S. phone giant AT&#38;T confirmed Friday it will begin notifying millions of consumers about a fresh data breach that allowed cybercriminals to steal the phone records of &#8220;nearly all&#8221; of its customers, a company spokesperson told TechCrunch.In a statement, AT&#38;T said that the stolen data contains phone numbers of both [&#8230;] 

<https://mjtsai.com/blog/2024/07/12/huge-att-data-breach/>

---

## Package AmigaOS software for Linux and Windows with AxRuntime

date: 2024-07-12, from: OS News

This solution lets developers compile their Amiga API-based applications as Linux binaries. Once the features are implemented, tested and optimized using the runtime on Linux or Windows, developers re-compile their applications for their Amiga-like system of choice and perform final quality checking. Applications created with AxRuntime can be distributed to Linux or Windows communities, giving developers a much broader user base and a possibility to invite developers from outside general Amiga community to contribute to the application. ↫ AxRuntime website I had never considered this as an option, but with AmigaOS 3.x basically being frozen in time, it&#8217;s a relatively easy target for an effort such as this. It won&#8217;t surprise you to learnt hat AxRuntime is using code from AROS, which itself is fully compatible with AmigaOS 3.1. This should technically mean that any AmigaOS application that runs on AROS should be able to be made to run using this runtime, which is great news for Amiga developers. Why? Well, the cold, harsh truth is that the number of Amiga users is probably still dwindling as the sands of time cause people to, well, die, and the influx of new users, who also happen to possess the skillset to develop AmigaOS software, must be a very, very slow trickle, at best. This runtime will allow AmigaOS developer to package their software to run on Linux and Windows machines, getting a lot more eyes on the software in the process. Amiga devices are not exactly cheap or easy to come by, so this is a great alternative. 

<https://www.osnews.com/story/140225/package-amigaos-software-for-linux-and-windows-with-axruntime/>

---

## Sols 4241–4242: We Can’t Go Around It…We’ve Got To Go Through It!

date: 2024-07-12, from: NASA breaking news

Earth planning date: Wednesday, July 10, 2024 Curiosity is currently trekking across Gediz Vallis channel because, as my nephew’s favorite book says, if we can’t go around it… we’ve got to go through it! Recently we’ve been parked for a while on the channel to drill “Mammoth Lakes,” (https://science.nasa.gov/blogs/sols-4222-4224-a-particularly-prickly-power-puzzle/) and are now on the move […] 

<https://science.nasa.gov/blogs/sols-4241-4242-we-cant-go-around-itweve-got-to-go-through-it/>

---

## This Week in the IndieWeb

date: 2024-07-12, from: This week in Indie Web



<h1><a href="https://indieweb.org/this-week/2024-07-12.html">July 5-12, 2024</a></h1>
<h2 id="recent-events">Recent Events</h2><p>From <a href="https://events.indieweb.org/archive">events.indieweb.org/archive</a>:</p>

<div style="margin-bottom: 1em;" class="h-event"><div style="font-size: 1.3em; font-weight: bold;" class="p-name"><a href="https://events.indieweb.org/2024/07/homebrew-website-club-global-edition--Leo9V2vDDxQV" class="u-url">Homebrew Website Club (Global Edition)</a></div>
<time class="dt-start" datetime="2024-07-11T10:00:00+00:00">Thursday, July 11 at 10:00am</time><br>
<div style="font-style: italic" class="e-summary"><p>Join us online in Zoom for demos of personal sites, recent breakthroughs, discussions about the independent web, and meet IndieWeb community members! Homebrew Website club is for all levels and areas of IndieWeb interest, whether curious, creative, a coder, or all the above.</p></div></div>


<div style="margin-bottom: 1em;" class="h-event"><div style="font-size: 1.3em; font-weight: bold;" class="p-name"><a href="https://events.indieweb.org/2024/07/homebrew-website-club-europe-london-BolXOUde7WlN" class="u-url">Homebrew Website Club Europe/London</a></div>
<time class="dt-start" datetime="2024-07-10T19:00:00+00:00">Wednesday, July 10 at 7:00pm</time><br>
<div style="font-style: italic" class="e-summary"><p>Join us online in Zoom for demos of personal sites, recent breakthroughs, discussions about the independent web, and meet IndieWeb community members! Homebrew Website club is for all levels and areas of IndieWeb interest, whether curious, creative, a coder, or all the above.</p></div><div><img src="https://indieweb.org/this-week/images/2024-07-12/df6788128df82d21bca044eed485a69a204aeb0b.jpg" style="width:100%" class="u-photo"></div></div>


<div style="margin-bottom: 1em;" class="h-event"><div style="font-size: 1.3em; font-weight: bold;" class="p-name"><a href="https://events.indieweb.org/2024/07/homebrew-website-club-nuremberg-germany-mSA17SBkPqdw" class="u-url">Homebrew Website Club - Nuremberg/Germany</a></div>
<time class="dt-start" datetime="2024-07-10T18:00:00+00:00">Wednesday, July 10 at 6:00pm</time><br>
<ul><li>NÜRNBERG, Bayern: LEONARDO – Zentrum für Kreativität und Innovation</li></ul><div style="font-style: italic" class="e-summary"><p>HWC Nuremberg is a in-person meeting for everybody who is interested in setting up a personal website and talk about web-related issues.</p></div></div>
<h2 id="upcoming-events">Upcoming Events</h2><p>From <a href="https://events.indieweb.org/">events.indieweb.org</a>:</p>

<div style="margin-bottom: 1em;" class="h-event"><div style="font-size: 1.3em; font-weight: bold;" class="p-name"><a href="https://events.indieweb.org/2024/07/front-end-study-hall-007-J5BjND8jjFJY" class="u-url">Front End Study Hall #007</a></div>
<time class="dt-start" datetime="2024-07-16T18:00:00+01:00">Tuesday, July 16 at 6:00pm</time><br>
<div style="font-style: italic" class="e-summary"><p>Front End Study Hall is an HTML + CSS focused group meeting, held on Zoom to learn from each other about how to make code do what we want.</p>

<p>Come prepared to teach and learn!</p></div></div>


<div style="margin-bottom: 1em;" class="h-event"><div style="font-size: 1.3em; font-weight: bold;" class="p-name"><a href="https://events.indieweb.org/2024/07/homebrew-website-club-europe-london-71CFBSaGNtzR" class="u-url">Homebrew Website Club Europe/London</a></div>
<time class="dt-start" datetime="2024-07-17T19:00:00+01:00">Wednesday, July 17 at 7:00pm</time><br>
<div style="font-style: italic" class="e-summary"><p>Join us online in Zoom for demos of personal sites, recent breakthroughs, discussions about the independent web, and meet IndieWeb community members! Homebrew Website club is for all levels and areas of IndieWeb interest, whether curious, creative, a coder, or all the above.</p></div></div>


<div style="margin-bottom: 1em;" class="h-event"><div style="font-size: 1.3em; font-weight: bold;" class="p-name"><a href="https://events.indieweb.org/2024/07/homebrew-website-club-pacific-sDiuGnKF02yt" class="u-url">Homebrew Website Club - Pacific</a></div>
<time class="dt-start" datetime="2024-07-17T18:00:00-07:00">Wednesday, July 17 at 6:00pm</time><br>
</div>


<div style="margin-bottom: 1em;" class="h-event"><div style="font-size: 1.3em; font-weight: bold;" class="p-name"><a href="https://events.indieweb.org/2024/07/send-a-friend-a-webmention-day-Yg7gsfhZDigm" class="u-url">Send a Friend a Webmention Day</a></div>
<time class="dt-start" datetime="2024-07-30T00:00:00+00:00">Tuesday, July 30</time><br>
</div>


<div style="margin-bottom: 1em;" class="h-event"><div style="font-size: 1.3em; font-weight: bold;" class="p-name"><a href="https://events.indieweb.org/2024/08/homebrew-website-club-nuremberg-germany-vxakxQ2PARVz" class="u-url">Homebrew Website Club - Nuremberg/Germany</a></div>
<time class="dt-start" datetime="2024-08-14T18:00:00+02:00">Wednesday, August 14 at 6:00pm</time><br>
<ul><li>NÜRNBERG, Bayern: LEONARDO – Zentrum für Kreativität und Innovation</li></ul><div style="font-style: italic" class="e-summary"><p>HWC Nuremberg is a in-person meeting for everybody who is interested in setting up a personal website and talk about web-related issues.</p></div></div>


<div style="margin-bottom: 1em;" class="h-event"><div style="font-size: 1.3em; font-weight: bold;" class="p-name"><a href="https://events.indieweb.org/2024/08/xoxo-2024-Q7X4mFWNaZYa" class="u-url">XOXO 2024</a></div>
<time class="dt-start" datetime="2024-08-22T00:00:00+00:00">August 22</time> - <time class="dt-end" datetime="2024-08-24T00:00:00+00:00">August 24</time><br>
<ul><li>PORTLAND, Oregon: Revolution Hall</li></ul></div>


<div style="margin-bottom: 1em;" class="h-event"><div style="font-size: 1.3em; font-weight: bold;" class="p-name"><a href="https://events.indieweb.org/2024/08/indiewebcamp-portland-2024-8bucXDlLqR0k" class="u-url">IndieWebCamp Portland 2024</a></div>
<time class="dt-start" datetime="2024-08-25T00:00:00+00:00">Sunday, August 25</time><br>
<ul><li>PORTLAND, Oregon: TBD</li></ul><div style="font-style: italic" class="e-summary"><p>A one day IndieWebCamp Portland 2024 is planned for August 25th, the day after the XOXO conference and festival, pending confirmation of a venue! If you're in Portland and have a suggested venue please get in touch via the IndieWeb chat!</p></div></div>

<h2 id="new-community-members">New Community Members</h2>
<p>From <a href="https://indieweb.org/wiki/index.php?title=Special%3ANewPages&namespace=2">IndieWeb Wiki: New User Pages</a>:</p>
<h3><a href="https://indieweb.org/User%3ADustin.boston">User:Dustin.boston</a></h3><p style="font-size:0.8em;">Created by Dustin.boston on Saturday and edited 1 more time</p>
<h3><a href="https://indieweb.org/User%3AUxbrad.com">User:Uxbrad.com</a></h3><p style="font-size:0.8em;">Created by Uxbrad.com on Wednesday</p>
<h3><a href="https://indieweb.org/User%3AJan.boddez.net">User:Jan.boddez.net</a></h3><p style="font-size:0.8em;">Created by Jan.boddez.net on Monday</p>
<h2 id="new-wiki-pages">Top New Wiki Pages</h2>
<p>From <a href="https://indieweb.org/wiki/index.php?title=Special%3ANewPages&namespace=0">IndieWeb Wiki: New Pages</a>:</p>
<h3><a href="https://indieweb.org/marketing">marketing</a></h3><p>marketing is, from a positive perspective, the work you can do to make it super easy for others (bloggers, journalists, etc) to write about your site, specific posts, projects, events, services, and even products, by doing things like creating easy to re-use icons for yourself and your site, featured images for posts, copy pasteable links, logos, and short/medium/long descriptions of your things, and easy to find guides.</p><p style="font-size:0.8em;">Created by [tantek] on Wednesday with 2 more edits by loqi.me and paulrobertlloyd.com</p>
<h3><a href="https://indieweb.org/h-feed_validator">h-feed validator</a></h3><p>Closest thing we currently have to an h-feed validator is the Preview tool in Monocle, which will accept the URL of your h-feed, parse it, and the display a minimally styled visual feed of what it found, which you can use to verify your feed name, and the entries in your feed with author information, article names if any, HTML or plain text content, and date-times published linked to entry permalinks.</p><p style="font-size:0.8em;">Created by Tantek.com on Saturday and edited 1 more time</p>
<h2 id="new-event-notes">New Event Notes</h2>
<p>From <a href="https://indieweb.org/wiki/index.php?title=Special%3ANewPages&namespace=0">IndieWeb Wiki: New Pages</a>:</p>

<p><b>Homebrew Website Club - Pacific:</b> <a href="https://indieweb.org/events/2024-07-03-hwc-pacific">2024-07-03</a></p>
<p><b>Homebrew Website Club (Global Edition):</b> <a href="https://indieweb.org/events/2024-07-11-hwc-global">2024-07-11</a></p>
<p><b>Homebrew Website Club Europe/London:</b> <a href="https://indieweb.org/events/2024-07-10-hwc-europe">2024-07-10</a></p>

<h2 id="changed-wiki-pages">Top Edited Wiki Pages</h2>
<p>From <a href="https://indieweb.org/wiki/index.php?namespace=0&title=Special%3ARecentChanges">IndieWeb Wiki: Recent Changes</a>:</p>
<ul>
<li><b><a href="https://indieweb.org/curly_quotes">curly quotes</a></b> <a href="https://indieweb.org/wiki/index.php?title=curly+quotes&amp;action=historysubmit&amp;diff=96196&amp;oldid=96031">7 edits</a> by tantek.com, loqi.me, and vanderven.se martijn</li>
<li><b><a href="https://indieweb.org/curated_comments">curated comments</a></b> <a href="https://indieweb.org/wiki/index.php?title=curated+comments&amp;action=historysubmit&amp;diff=96200&amp;oldid=96048">4 edits</a> by tantek.com and loqi.me</li>
<li><b><a href="https://indieweb.org/maps">maps</a></b> <a href="https://indieweb.org/wiki/index.php?title=maps&amp;action=historysubmit&amp;diff=96199&amp;oldid=89345">3 edits</a> by loqi.me and tantek.com</li>
<li><b><a href="https://indieweb.org/blogroll">blogroll</a></b> <a href="https://indieweb.org/wiki/index.php?title=blogroll&amp;action=historysubmit&amp;diff=96194&amp;oldid=95635">3 edits</a> by zacharykai.net and tantek.com</li>
<li><b><a href="https://indieweb.org/large_language_model">large language model</a></b> <a href="https://indieweb.org/wiki/index.php?title=large+language+model&amp;action=historysubmit&amp;diff=96201&amp;oldid=96087">2 edits</a> by loqi.me and tantek.com</li>
<li><b><a href="https://indieweb.org/press-kit">press-kit</a></b> <a href="https://indieweb.org/wiki/index.php?title=press-kit&amp;action=historysubmit&amp;diff=96197&amp;oldid=88201">2 edits</a> by tantek.com</li>
<li><b><a href="https://indieweb.org/health-and-safety">health-and-safety</a></b> <a href="https://indieweb.org/wiki/index.php?title=health-and-safety&amp;action=historysubmit&amp;diff=96175&amp;oldid=95612">2 edits</a> by gregorlove.com</li>
<li><b><a href="https://indieweb.org/footnote">footnote</a></b> <a href="https://indieweb.org/wiki/index.php?title=footnote&amp;action=historysubmit&amp;diff=96152&amp;oldid=92980">2 edits</a> by tantek.com and loqi.me</li>
<li><b><a href="https://indieweb.org/UTF-8">UTF-8</a></b> <a href="https://indieweb.org/wiki/index.php?title=UTF-8&amp;action=historysubmit&amp;diff=96114&amp;oldid=34580">2 edits</a> by loqi.me and tantek.com</li></ul>

 

<https://indieweb.org/this-week/2024-07-12.html>

---

## Google is ending support for Lacros, the experimental version of Chrome for ChromeOS

date: 2024-07-12, from: OS News

Back in August 2023, we previewed our work on an experimental version of Chrome browser for ChromeOS named Lacros. The original intention was to allow Chrome browser on Chromebooks to swiftly get the latest feature and security updates without needing a full OS update. As we refocus our efforts on achieving similar objectives with ChromeOS embracing portions of the Android stack, we have decided to end support for this experiment. We believe this will be a more effective way to help accelerate the pace of innovation on Chromebook. ↫ ChromeOS Beta Tester Community To refresh your memory, Lacros was an attempt by Google to decouple the Chrome browser from ChromeOS itself, so that the browser could be updated indepdnently from ChromeOS as a whole. This would obviously bring quite a few benefits with it, from faster and easier updates, to the ability to keep updating the Chrome browser after device support has ended. This was always an experimental feature, so the end of this experiment really won&#8217;t be affecting many people. The interesting part is the reference to the recent announcement that ChromeOS&#8217; Linux kernel and various subsystems will be replaced by their Android counterparts. I&#8217;m not entirely sure what this means for the Chrome browser on ChromeOS, since it seems unlikely that they&#8217;re going to be using the Android version of Chrome on ChromeOS. It&#8217;s generally impossible to read the tea leaves when it comes to whatever Google does, so I&#8217;m not even going to try. 

<https://www.osnews.com/story/140222/google-is-ending-support-for-lacros-the-experimental-version-of-chrome-for-chromeos/>

---

## NASA to Commemorate 55th Anniversary of Apollo 11 Moon Landing

date: 2024-07-12, from: NASA breaking news

As the agency explores more of the Moon than ever before under the Artemis campaign, NASA will celebrate the 55th anniversary of the first astronauts landing on the Moon through a variety of in-person, virtual, and engagement activities nationwide between Monday, July 15, and Thursday, July 25. Events will honor America’s vision and technology that [&#8230;] 

<https://www.nasa.gov/news-release/nasa-to-commemorate-55th-anniversary-of-apollo-11-moon-landing/>

---

## 2024-07-12 Sending files via NNCP

date: 2024-07-12, from: Alex Schroeder's Blog

<h1 id="2024-07-12-sending-files-via-nncp">2024-07-12 Sending files via NNCP</h1>

<p>Let&rsquo;s assume that you want to send me a file via NNCP. What do you need to do?</p>

<p>You need to add my server to your <code>/etc/nncp.hjson</code> file, in the <code>neigh</code> section.</p>

<p>In the following examples, you want to change &ldquo;alex&rdquo; to your own username.</p>

<pre><code>    sibirocobombus: {
      id:       CCAIPFSAZWYICBQ5BIURX4UMEJIXVSZFIING7HRUFTDOFV5XISVQ
      exchpub:  NGEIDPDVZ2I6CTRKCBT734VV4W2YFVTV6YFBU5UGB6IHBA3QDJUQ
      signpub:  VXBMWXS74IGAYQCLJY4UPAXXQXPT3K53QI5XCFHOAKL4I2FQNLKQ
      noisepub: MGGBAOHRHEWEC6CGT47GA2DOQXQFZUAKJ66PD734Y5WNWP364UXQ
      addrs: {
        internet: &quot;alexschroeder.ch:5400&quot;
      }
      incoming: &quot;/home/alex/incoming/sibirocobombus&quot;
      exec: {
        rsmtp: [&quot;/usr/sbin/sendmail&quot;, &quot;-bS&quot;]
      }
      calls: [
        {
          cron: &quot;12 * * * *&quot;
        }
      ]
    }
</code></pre>

<p>What does it mean?</p>

<ol>
<li>you know how to contact my server via the <code>.addrs.internet</code> key – you need this, but you can specify <code>campaignwiki.org</code> instead, if your prefer</li>
<li>you allow my server to save incoming files in a directory via the <code>.incoming</code> key – you only need this if you want to receive files (the directory must exist and the <code>nncp</code> group must be allowed to write to it)</li>
<li>you allow my server to send mail to local users via the <code>.exec.rsmtp</code> key – this is not necessary if you don&rsquo;t want to receive mail</li>
<li>you connect to my server every now and then via the <code>calls[0].cron</code> entry – this is not necessary if you don&rsquo;t mind using <code>nncp-call</code> every now and then</li>
</ol>

<p>Note that my server allows sending mail but doesn&rsquo;t have an &ldquo;incoming&rdquo; directory. Basically, you need to get the public keys for my laptop from me, and set that up as well.</p>

<pre><code>    melanobombus: {
      id:       R23WEIHB52TMA4EKGJPKUDBFSYP2HG4HHW2HGJ3RJATCCRLYDUZQ
      exchpub:  EGP2MMLQJQUKWTHI22JTIRMR2UV3BA2ATE3AYLVOFODMTNRGAMEA
      signpub:  YO6SZXVEIU77OQQRKMAUFUT4V3NJER4U7LQE5JI7JORJXKXY5FBA
      noisepub: 6ECO4WXJNDED6WHJ6SM2HGRQMUO75X65ALT2YRKZ3YGGBDXRNV4A
      via:      [&quot;sibirocobombus&quot;]
      incoming: &quot;/home/alex/incoming/melanobombus&quot;
      exec: {
        rsmtp:  [&quot;/usr/sbin/sendmail&quot;, &quot;-bS&quot;]
      }
    }
</code></pre>

<p>What does it mean?</p>

<ol>
<li>you know how to contact my laptop via my server using the <code>.via[0]</code> key – you need this and the name needs to match the name you used for my server</li>
<li>you allow the laptop to save incoming files in a directory via the <code>.incoming</code> key – you only need this if you want to receive files (the directory must exist and the <code>nncp</code> group must be allowed to write to it)</li>
<li>you allow the laptop to send mail to local users via the <code>.exec.rsmtp</code> key – this is not necessary if you don&rsquo;t want to receive mail</li>
</ol>

<p>You also need to send me two things:</p>

<ol>
<li>your system&rsquo;s public keys so that I can set up similar entries on my laptop and my server</li>
<li>your system&rsquo;s internet address – unless only you can call my server</li>
</ol>

<p>If your system doesn&rsquo;t have a public internet address, no problem.
My server will enqueue stuff for your system without ever sending it.
It will wait for you there until your system calls.
You would do this as follows:</p>

<pre><code>sudo -u nncp nncp-call sibirocobombus
</code></pre>

<p>Now, to send me a README file, you&rsquo;d run:</p>

<pre><code>sudo -u nncp nncp-file README melanobombus:
2024-07-12T18:12:15Z Tx README 486 B/486 B 100% (73 KiB/sec)
2024-07-12T18:12:15Z File README (282 B) is sent to melanobombus:README
</code></pre>

<p>At this point, the file is in the queue.</p>

<p>You need to <code>sudo -u nncp nncp-call sibirocobombus</code> to actually send the files unless you have set up regular calls via the <code>calls[0].cron</code> key in your <code>/etc/nncp.hjson</code>. My server will receive the packets encrypted and addressed to my laptop and enqueue it again. The next time my laptop calls my server, it&rsquo;ll get them.</p>

<p>You probably want to let me know about the channel via another channel, be it IRC, regular mail – or mail via NNCP!</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23NNCP">#NNCP</a></p> 

<https://alexschroeder.ch/view/2024-07-12-sending-files-via-nncp>

---

## "GitHub" Is Starting to Feel Like Legacy Software

date: 2024-07-12, from: Tilde.news

<p><a href="https://tilde.news/s/o9258d/github_is_starting_feel_like_legacy">Comments</a></p> 

<https://www.mistys-internet.website/blog/blog/2024/07/12/github-is-starting-to-feel-like-legacy-software/>

---

## Ubuntu security updates are a confusing mess

date: 2024-07-12, from: OS News

I&#8217;ve read this article several times now, and I&#8217;m still not entirely sure how to properly summarise the main points without leaving important details out. If you really boil it down to the very bare essentials, which packages get updates on which Ubuntu release is a confusing mess that most normal users will never be able to understand, potentially leaving them vulnerable to security flaws that have already been widely patched and are available on Ubuntu &#8211; just not your specific Ubuntu version, your specific customer type, or the specific package type in question. So, in the case of McPhail here, they needed a patched version of tomcat 9 for Ubuntu 22.04. This patched version was available for Ubuntu 18.04 users because not only is 18.04 an LTS release &#8211; meaning five years of support &#8211; Canonical also offers a commercial Extended Security Maintenance (ESM) subscription for 18.04, so if you&#8217;re paying for that, you get the patched tomcat9. On Ubuntu 20.04, another LTS release, the patched version of tomcat9 is available for everyone, but for the version McPhail is running, the newer LTS release 22.04, it&#8217;s only available for Ubuntu Pro subscribers (24.04 is not affected, so not relevant for this discussion). Intuitively, this doesn&#8217;t make any sense. The main cause of the weird discrepancy between 20.04 and 22.04 is that Canonical&#8217;s LTS support only covers the packages in main (about 10% of the total amount of packages), whereas tomcat9 lives in universe (90% of packages). LTS packages in universe are only supported on a &#8220;best effort&#8221; basis, and one of the ways a patched universe package can be made available to non-paying LTS users is if it is inhereted from Debian, which happens to be the case for tomcat9 in 20.04, while in 22.04, it&#8217;s considered part of an Ubuntu Pro subscription. So, there&#8217;s a fixed package, but 22.04 LTS users, who may expect LTS to truly mean LTS, don&#8217;t get the patched version that exists and is ready to go without issues. Wild. This is incredibly confusing, and would make me run for the Debian hills before my next reboot. I understand maintaining packages is a difficult, thankless task, but the nebulousness here is entirely of Canonical&#8217;s own making, and it&#8217;s without a doubt leaving users vulnerable who fully expect to be safe and all patched up because they&#8217;re using an LTS release. 

<https://www.osnews.com/story/140219/ubuntu-security-updates-are-a-confusing-mess/>

---

## What’s Next for MiSTer

date: 2024-07-12, from: Stephen Smith's blog

Introduction MiSTer is a collection of FPGA implementations for pretty much any early 8-bit computer, console or arcade system. Then there are many implementations of a selection of 16-bit and 32-bit systems. Most notably there is an FPGA implementation of the Motorola 68000/68020 used in early Macs, Amigas and Atari STs. On the PC side [&#8230;] 

<https://smist08.wordpress.com/2024/07/12/whats-next-for-mister/>

---

## Deno July Update: monorepo, workspace, and private npm registry support

date: 2024-07-12, from: Deno News

<h1>Deno July Update</h1>
<p>This month’s update includes Deno 1.45, JSR updates, and more! Let’s dive right in.</p>
<p><a href="https://www.youtube.com/watch?v=OMJKEDvsT7Q&amp;utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank"><img alt="image.png" class="newsletter-image" src="https://assets.buttondown.email/images/f6dd13a0-4915-4e96-9cc8-761efa1478c8.png?w=960&amp;fit=max"/></a>
<em>Join us for <a href="https://www.youtube.com/watch?v=OMJKEDvsT7Q&amp;utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">a livestream</a> next Tuesday, July 16th, 9am PT (UTC-7), where we cover how to setup monorepos and workspaces with Deno and answer your questions.</em></p>
<h2>Deno 1.45: Workspaces, monorepos, private npm registries</h2>
<p>We’ve had a busy summer so far, with added support for workspaces, monorepo, and <a href="https://deno.com/blog/v1.44?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update#support-for-private-npm-registries" target="_blank">private npm registries</a> (as of <a href="https://deno.com/blog/v1.44?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">1.44</a>).</p>
<h3>Workspace support</h3>
<p>There are two forms of supported workspaces: Deno-first workspaces (defined in a root-level <code>deno.json</code> ) and backwards-compatible npm workspaces.</p>
<p>To get started, define a <code>"workspace"</code> element inside your <code>deno.json</code> and list the member directories:</p>
<div class="codehilite"><pre><span></span><code><span class="p">{</span>
<span class="w">  </span><span class="s2">"workspace"</span><span class="o">:</span><span class="w"> </span><span class="p">[</span><span class="s2">"./add"</span><span class="p">,</span><span class="w"> </span><span class="s2">"./subtract"</span><span class="p">]</span>
<span class="p">}</span>
</code></pre></div>
<p><code>npm</code> workspaces also work in Deno, whether you’re including a Deno library in a larger npm workspace or vice versa.</p>
<p>To learn more about workspaces and to see examples, check out <a href="https://docs.deno.com/runtime/manual/basics/workspaces/?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">Deno Docs</a>.</p>
<p>We’re also hosting a <a href="https://www.youtube.com/watch?v=OMJKEDvsT7Q&amp;utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">one-hour livestream on YouTube on Tuesday, July 16th, 9AM PT (UTC-7)</a> to cover our new workspace support in detail and answer your questions.</p>
<h3>Private npm registries</h3>
<p>As of Deno 1.44, you can use an <code>.npmrc</code> file to configure Deno to fetch packages from a private registry. Here’s an example:</p>
<div class="codehilite"><pre><span></span><code><span class="c1">// .npmrc</span>
<span class="err">@</span><span class="nx">mycompany</span><span class="o">:</span><span class="nx">registry</span><span class="o">=</span><span class="nx">http</span><span class="o">:</span><span class="c1">//mycompany.com:8111/</span>
<span class="c1">//mycompany.com:8111/:_auth=secretToken</span>
</code></pre></div>
<div class="codehilite"><pre><span></span><code><span class="c1">// deno.json</span>
<span class="p">{</span>
<span class="w">  </span><span class="s2">"imports"</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<span class="w">    </span><span class="s2">"@mycompany/package"</span><span class="o">:</span><span class="w"> </span><span class="s2">"npm:@mycompany/package@1.0.0"</span>
<span class="w">  </span><span class="p">}</span>
<span class="p">}</span>
</code></pre></div>
<div class="codehilite"><pre><span></span><code><span class="c1">// main.ts</span>
<span class="k">import</span><span class="w"> </span><span class="p">{</span><span class="w"> </span><span class="nx">hello</span><span class="w"> </span><span class="p">}</span><span class="w"> </span><span class="kr">from</span><span class="w"> </span><span class="s2">"@mycompany/package"</span><span class="p">;</span>

<span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">hello</span><span class="p">());</span>
</code></pre></div>
<div class="codehilite"><pre><span></span><code><span class="nx">$</span><span class="w"> </span><span class="nx">deno</span><span class="w"> </span><span class="nx">run</span><span class="w"> </span><span class="nx">main</span><span class="p">.</span><span class="nx">ts</span>
<span class="nx">Hello</span><span class="w"> </span><span class="nx">world</span><span class="o">!</span>
</code></pre></div>
<p>You can also watch <a href="https://www.youtube.com/watch?v=8pzbdz1TSOw&amp;utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">a short demo on how to use private npm registries</a> on YouTube.</p>
<h3>Other runtime updates</h3>
<p>We’ve made a ton of improvements and bug fixes to the Deno runtime in 1.44 and 1.45. The most notable updates being:</p>
<ul>
<li><a href="https://deno.com/blog/v1.44?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update#grpc-connections-now-supported" target="_blank">gRPC connections are now supported</a></li>
<li>improved lockfile management with <a href="https://deno.com/blog/v1.45?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update#frozen-lockfile" target="_blank">the new <code>--frozen</code> flag</a> that lets you know if your lockfile is out of date</li>
<li>updated <code>deno install</code> that will behave more like <code>npm install</code> to support common workflows</li>
<li><a href="https://deno.com/blog/v1.45?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update#deno-init---lib---easily-set-up-a-new-library" target="_blank"><code>deno init --lib</code></a> to easily setup a new library</li>
<li><a href="https://deno.com/blog/v1.45?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update#deno-compile-supports---env-flag" target="_blank"><code>deno compile</code></a> now supports the <code>--env</code> flag</li>
</ul>
<p>And more!</p>
<p><a href="https://deno.com/blog/v1.45?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">Read the full 1.45 release notes ⇒</a> </p>
<h2>JSR: Hono, Deno Standard Library, and more</h2>
<p>Everyday, we continue to see modules being added to JSR. Recent ones of note include <a href="https://deno.com/blog/std-on-jsr?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">the Deno Standard Library</a> and <a href="https://deno.com/blog/hono-on-jsr?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">Hono</a>. Note that we are working towards <a href="https://deno.com/blog/stabilize-std?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">stabilizing the Standard Library</a>, which will be stabilized on a package-by-package basis. (As of this newsletter, we have stabilized <a href="https://github.com/denoland/deno_std?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">13 out of 38 utility packages</a>.)</p>
<p>We also recently published a video that shows, side-by-side, publishing a TypeScript module to npm vs. JSR. There are a bunch of steps that one must take to make sure the right files are getting to npm, which are handled by JSR behind the scenes:</p>
<p><a href="https://www.youtube.com/watch?v=dzycAeRdOSM&amp;utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank"><img alt="image.png" class="newsletter-image" src="https://assets.buttondown.email/images/e651dde6-c80c-4a35-9bd5-45d968afc61d.png?w=960&amp;fit=max"/></a></p>
<h2>From the community</h2>
<h3>The 5th <a href="http://deco.cx?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">deco.cx</a> Hackathon</h3>
<p>That’s right, <a href="https://deco.cx/hackathon5?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">the HTMX Edition of this hackathon</a> begins today, Friday, July 12th. It’s a great opportunity to turn your ideas into high-performance websites using HTMX. Plus, there’s also over $5k in prizes 💰️. </p>
<h3>#Showcase</h3>
<p>There have been plenty of new projects being shared in our <a href="https://discord.gg/deno?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">Discord’s #showcase channel</a>:</p>
<ul>
<li><a href="https://x.com/KyleRayKelley/status/1792998164926026238?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">The Jupyter kernel in Zed is powered by Deno</a></li>
<li><a href="https://jsr.io/@grunet/openfeature-for-denodeploy?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">A feature flag library for Deno Deploy</a></li>
<li><a href="https://github.com/eroblaze/erodev?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">Erodev: a Deno development server with auto-reload</a></li>
<li><a href="https://github.com/nomake-toolchain/nomake-zit?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">NoMake-zit: a simple compression/decompression library for Deno</a></li>
<li><a href="https://pomdtr-excalidraw.web.val.run/?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">An excalidraw demo</a> written as <a href="https://www.val.town/v/pomdtr/excalidraw?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">a single JSR import</a> 🤯️</li>
<li><a href="https://jsr.io/@olli/jex?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">jex: a configurable API client that lets you define strongly-typed HTTP calls with a JSON-like schema</a></li>
<li><a href="https://github.com/jeff-hykin/html-bundle/blob/master/readme.md?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">A simple HTML bundler that offers a CLI, Deno and a web API.</a></li>
</ul>
<p>If you’ve created something with Deno and would like to share it with the Deno community, please use the Discord’s #showcase channel.</p>
<h2>In case you missed it…</h2>
<ul>
<li><a href="https://deno.com/blog/optimizing-our-lsp?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">How we made our Deno language server faster ten times faster</a></li>
<li><a href="https://deno.com/blog/guardian?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">Did you know the Guardian uses Deno to audit 2.7m articles?</a></li>
<li>We’ve quietly added more features to Subhosting, our product that lets you easily run third-party JavaScript securely, such as <a href="https://deno.com/blog/subhosting-flexible-domain-association?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">more flexible domain association</a> and <a href="https://deno.com/blog/subhosting-kv-backup?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">KV backup</a></li>
<li>Haven’t found time to learn TypeScript? <a href="https://deno.com/blog/deno-bites-ts-intro?utm_source=denonews&amp;utm_medium=email&amp;utm_campaign=deno-july-update" target="_blank">We’re starting a new bite-sized TypeScript tutorial series</a>!</li>
</ul>
<p>And that’s it for this issue! If you think someone might find this useful, please forward it to them.</p>
<p>— Andy</p> 

<https://buttondown.email/denonews/archive/deno-july-update/>

---

##  There&#8217;s a 25th anniversary edition version of Brian Greene&#8217;s The Elegant Universe... 

date: 2024-07-12, updated: 2024-07-12, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044944-theres-a-25th-edition-ver>

---

## Two Years Since Webb’s First Images: Celebrating with the Penguin and the Egg

date: 2024-07-12, from: NASA breaking news

To celebrate the second science anniversary of NASA’s James Webb Space Telescope, the team has released a near- and mid-infrared image on July 12, 2024,&#160;of two interacting galaxies: The Penguin and the Egg. Webb specializes in capturing infrared light – which is beyond what our own eyes can see – allowing us to view and [&#8230;] 

<https://www.nasa.gov/image-article/two-years-since-webbs-first-images-celebrating-with-the-penguin-and-the-egg/>

---

## NASA Marshall Engineers Unveil Versatile, Low-cost Hybrid Engine Testbed

date: 2024-07-12, from: NASA breaking news

In June, engineers at NASA’s Marshall Space Flight Center in Huntsville, Alabama, unveiled an innovative, 11-inch hybrid rocket motor testbed. The new hybrid testbed, which features variable flow capability and a 20-second continuous burn duration, is designed to provide a low-cost, quick-turnaround solution for conducting hot-fire tests of advanced nozzles and other rocket engine hardware, [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/marshall/nasa-marshall-engineers-unveil-versatile-low-cost-hybrid-engine-testbed/>

---

## PowerToys bring fun tweaks to Windows 10 and 11

date: 2024-07-12, updated: 2024-07-12, from: Liam Proven's articles at the Register

<h4><span class="label">Friday FOSS Fest</span> Mac migrants (if any exist) will find Powertoys Run strangely familiar</h4>
      <p>Microsoft's collection of Power Toys for the current versions of Windows has some nifty little helpers, and Power Run may be comfortingly familiar if you're more used to macOS.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/07/12/latest_powertoys_bring_run_fun/>

---

##  Baltic Ice 

date: 2024-07-12, updated: 2024-07-12, from: Jason Kottke blog

 

<https://kottke.org/24/07/baltic-ice>

---

## Comedic Consultant

date: 2024-07-12, from: Tedium site

Trevor Noah has been on the Microsoft payroll for years, and nobody apparently noticed until now. Is that a problem? (Hint: Yes.) 

<https://feed.tedium.co/link/15204/16742023/trevor-noah-microsoft-conflict-of-interest>

---

## 2024-06-28 Connecting the laptop to the server via NNCP

date: 2024-07-12, from: Alex Schroeder's Blog

<h1 id="2024-06-28-connecting-the-laptop-to-the-server-via-nncp">2024-06-28 Connecting the laptop to the server via NNCP</h1>

<p>First, install the <code>nncp</code> package on both systems.
In addition to that, install the <code>openbsd-inetd</code> package on the server.
(In the following passages, I&rsquo;m connected as <code>root</code> to the server.)</p>

<p>Generate new configs on the systems that are missing <code>/etc/nncp.hjson</code>.</p>

<pre><code>nncp-cfgnew &gt; /etc/nncp.hjson
chown nncp:nncp /etc/nncp.hjson
chmod 660 /etc/nncp.hjson
</code></pre>

<p>Examine the file using a text editor.
Each system needs to know the public keys of the other.</p>

<p>So, on the laptop, I need to add to add the public keys of the server.
I also want to specify that I&rsquo;m going to call the node on a regular basis
and that files sent to me from that node should be saved in my &ldquo;incoming&rdquo;
directory. I also want to accept mail.</p>

<pre><code>    sibirocobombus: {
      id:       ...
      exchpub:  ...
      signpub:  ...
      noisepub: ...
      incoming: &quot;/home/alex/incoming/sibirocobombus&quot;
      exec: {
        sendmail: [&quot;/usr/sbin/sendmail&quot;]
      }
      addrs: {
        internet: &quot;alexschroeder.ch:5400&quot;
      }
      calls: [
        {
          cron: &quot;12 * * * *&quot;
        }
      ]
    }
</code></pre>

<p>And on the server, I need to add the public keys of the laptop.
I also want to save incoming files from the laptop.
And I want to accept mail.</p>

<pre><code>    melanobombus: {
      id:       ...
      exchpub:  ...
      signpub:  ...
      noisepub: ...
      incoming: &quot;/home/alex/incoming&quot;
      exec: {
        sendmail: [&quot;/usr/sbin/sendmail&quot;]
      }
    }
</code></pre>

<p>Note how the laptop calls the server but the server does not call the laptop!</p>

<p>Let&rsquo;s make sure those directories exist:</p>

<pre><code>mkdir ~/incoming
ssh sibirocobombus mkdir incoming
</code></pre>

<p>Let&rsquo;s create a file and send it from the laptop to the server using <code>nncp-file</code>:</p>

<pre><code>echo Hello &gt; hello.txt
sudo -u nncp nncp-file hello.txt sibirocobombus:
</code></pre>

<p>Check the log using <code>nncp-log</code>:</p>

<pre><code>nncp-log | tail -n 1
2024-06-28T21:36:02Z File hello.txt (282 B) is sent to sibirocobombus:hello.txt
</code></pre>

<p>Let&rsquo;s connect to the server and check:</p>

<pre><code>ssh sibirocobombus ls incoming
</code></pre>

<p>Nothing has arrived!</p>

<p>Let&rsquo;s call the server using <code>nncp-call</code>:</p>

<pre><code>sudo -u nncp nncp-call sibirocobombus
2024-06-28T22:07:36Z ERROR Calling sibirocobombus (alexschroeder.ch:5400): dial tcp [2a02:418:6a04:178:209:50:237:1]:5400: connect: connection refused
</code></pre>

<p>Oops. It&rsquo;s not running? That&rsquo;s right, I need to run <code>nncp-daemon</code> on the server side.</p>

<p>Add the following to <code>/etc/inetd.conf</code> on the server to accept NNCP connections on port 5400:</p>

<pre><code>5400	stream	tcp	nowait	nncp	/usr/bin/nncp-daemon	nncp-daemon -quiet -ucspi
</code></pre>

<p>Reload it:</p>

<pre><code>systemctl reload openbsd-inetd
</code></pre>

<p>Try again on the laptop:</p>

<pre><code>sudo -u nncp nncp-call sibirocobombus
2024-06-28T22:14:13Z We have got for sibirocobombus: 1 packets, 486 B
2024-06-28T22:14:13Z ERROR SP with sibirocobombus (nice MAX): reading: EOF
2024-06-28T22:14:13Z ERROR Connection to sibirocobombus (alexschroeder.ch:5400): EOF
</code></pre>

<p>Back to the server:</p>

<pre><code>nncp-log
2024-06-28T22:15:25Z ERROR SP nice MAX: waiting for first message: unknown peer: ...
2024-06-28T22:15:25Z Connected to unknown
</code></pre>

<p>Strange! That id listed there matches my laptop&rsquo;s <code>noisepub</code>.
Checking the <code>/etc/nncp.hjson</code> on the server again, I see that pasted the wrong pubkeys… 🤦
Fix that and try again…</p>

<pre><code>sudo -u nncp nncp-call sibirocobombus
2024-06-28T22:19:31Z We have got for sibirocobombus: 1 packets, 486 B
2024-06-28T22:19:31Z Connection to sibirocobombus (alexschroeder.ch:5400)
2024-06-28T22:19:31Z Tx QAROTFMX25ZPQOT5..I6JKH75EC2DMSSZQ 486 B/486 B 100% (0 B/sec)
2024-06-28T22:19:31Z Packet QAROTFMX25ZPQOT5DEQQC7JE7EN3UD2FZIJNI6JKH75EC2DMSSZQ is sent
2024-06-28T22:19:42Z Finished call with sibirocobombus (0:0:11): 32 KiB received (32 KiB/sec), 33 KiB transferred (33 KiB/sec)
</code></pre>

<p>Looking good!
Check for the file on the server:</p>

<pre><code>ssh sibirocobombus ls incoming
</code></pre>

<p>It&rsquo;s not there!</p>

<p>Let&rsquo;s investigate on the server:</p>

<pre><code>nncp-log
2024-06-28T22:19:31Z Packet QAROTFMX25ZPQOT5DEQQC7JE7EN3UD2FZIJNI6JKH75EC2DMSSZQ (486 B) (nice B): 0%
2024-06-28T22:19:31Z melanobombus has got for us: 1 packets, 486 B
2024-06-28T22:19:31Z Connection with melanobombus (PIPE)
2024-06-28T22:19:31Z Got packet QAROTFMX25ZPQOT5DEQQC7JE7EN3UD2FZIJNI6JKH75EC2DMSSZQ 100% (486 B / 486 B): done
2024-06-28T22:19:42Z Finished call with melanobombus (0:0:11): 33 KiB received (33 KiB/sec), 32 KiB transferred (32 KiB/sec)
</code></pre>

<p>This looks good, so we have the packet!
And we can confirm this using <code>nncp-stat</code>:</p>

<pre><code>nncp-stat
melanobombus
	nice:   B | Rx:      486 B,   1 pkts | Tx:        0 B,   0 pkts
self
</code></pre>

<p>What needs to happen now is &ldquo;tossing&rdquo; using <code>nncp-toss</code>.
This is, &ldquo;processing&rdquo; the packet and thereby delivering it.</p>

<pre><code>sudo -u nncp nncp-toss
2024-06-28T22:24:28Z ERROR Tossing file melanobombus/QAROTFMX25ZPQOT5DEQQC7JE7EN3UD2FZIJNI6JKH75EC2DMSSZQ (6 B): hello.txt: mktemp: open /home/alex/incoming/nncpfile17dd4b56c39f64d4: permission denied
</code></pre>

<p>That&rsquo;s right, the incoming file should be writable by more people…</p>

<pre><code>chgrp nncp /home/alex/incoming
chmod g+w /home/alex/incoming
</code></pre>

<p>Try again!</p>

<pre><code>sudo -u nncp nncp-toss
2024-06-28T22:26:35Z Rx file QAROTFMX25ZPQOT5..I6JKH75EC2DMSSZQ 6 B/6 B 100% (0 B/sec)
2024-06-28T22:26:36Z Got file hello.txt (6 B) from melanobombus
</code></pre>

<p>It worked:</p>

<pre><code>ls -l /home/alex/incoming/
total 4
-rw-r--r-- 1 nncp nncp 6 29. Jun 00:26 hello.txt

cat /home/alex/incoming/hello.txt 
Hello
</code></pre>

<p>🥳</p>

<p>I need to think about <a href="https://nncp.mirrors.quux.org/Administration.html">admin issues</a>, clearly.</p>

<p>I need to set up regular <code>nncp-call</code> on the laptop; I need to set up regular <code>nncp-toss</code> on the server.</p>

<p>It would be nice to switch from <code>inetd</code> to <code>systemd</code> perhaps? Surely they have written a replacement for it. They have written replacements for everything! 😬</p>

<p>Next up, <a href="2024-06-29-nncp">sending email back and forth</a>!</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23NNCP">#NNCP</a></p> 

<https://alexschroeder.ch/view/2024-06-28-nncp>

---

##  Cyanokites are a collection of five paper kites of different shades of... 

date: 2024-07-12, updated: 2024-07-12, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044936-cyanokites-are-a-collecti>

---

## Book Tour Simulator 2024

date: 2024-07-12, updated: 2024-07-12, from: Robin Rendle Essays

 

<https://robinrendle.com/notes/book-tour-simulator-2024/>

---

##  Printernet: Get a custom print version of your reading list sent right... 

date: 2024-07-12, updated: 2024-07-12, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044930-printernet-get-a-custom-p>

---

## Comics from 1982/08 Commodore Computing International Mag

date: 2024-07-12, from: Computer ads from the Past

Time for some humor 

<https://computeradsfromthepast.substack.com/p/comics-from-198208-commodore-computing>

---

## Pixelify the World

date: 2024-07-12, updated: 2024-07-12, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/07/12/pixelify-the-world/>

---

##  Molly White: Fighting bots is fighting humans. &#8220;Any attempt at limiting bot... 

date: 2024-07-12, updated: 2024-07-12, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044905-molly-white-fighting-bots>

---

## NUMA Emulation speeds up Pi 5 (and other improvements)

date: 2024-07-12, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">NUMA Emulation speeds up Pi 5 (and other improvements)</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>Recently an Igalia engineer posted a <a href="https://lore.kernel.org/lkml/20240625125803.38038-1-tursulin@igalia.com/">NUMA Emulation patch</a> for the Pi 5 to the Linux Kernel mailing list. He said it could improve performance of Geekbench 6 scores up to 6% for single-core, and 18% for multicore.</p>

<p>My testing didn't quite match those numbers, but I did see a significant and consistent performance increase across both Geekbench 6:</p>

<p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/pi-5-geekbench-numa-emulation-patch-faster.jpg" alt="Raspberry Pi 5 Geekbench 6 Score comparison with NUMA Emulation enabled"></p>

<p>And High Performance Linpack:</p>

<p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/pi-5-hpl-numa-emulation-patch-faster.jpg" alt="Raspberry Pi 5 HPL Gigaflops and efficiency comparison with NUMA Emulation enabled"></p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-07-12T09:01:15-05:00" title="Friday, July 12, 2024 - 09:01" class="datetime">July 12, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/numa-emulation-speeds-pi-5-and-other-improvements>

---

## Vivid Portrait of Interacting Galaxies Marks Webb’s Second Anniversary

date: 2024-07-12, from: NASA breaking news

Two for two! A duo of interacting galaxies commemorates the second science anniversary of NASA’s James Webb Space Telescope, which takes constant observations, including images and highly detailed data known as spectra. Its operations have led to a “parade” of discoveries by astronomers around the world. “Since President Biden and Vice President Harris unveiled the […] 

<https://science.nasa.gov/missions/webb/vivid-portrait-of-interacting-galaxies-marks-webbs-second-anniversary/>

---

## What you’ve been making with the Raspberry Pi AI Kit

date: 2024-07-12, from: Raspberry Pi News (.com)

<p>It's been just over a month since we launched the Raspberry Pi AI Kit and the Raspberry Pi community has responded with characteristic quirkiness. Here are some of the things we've seen over the last few weeks.</p>
<p>The post <a href="https://www.raspberrypi.com/news/what-youve-been-making-with-the-raspberry-pi-ai-kit/">What you&#8217;ve been making with the Raspberry Pi AI Kit</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/what-youve-been-making-with-the-raspberry-pi-ai-kit/>

---

## What Could Explain the Gallium Anomaly?

date: 2024-07-12, from: Quanta Magazine

Physicists have ruled out a mundane explanation for the strange findings of an old Soviet experiment, leaving open the possibility that the results point to a new fundamental particle.            <p>The post <a href="https://www.quantamagazine.org/what-could-explain-the-gallium-anomaly-20240712/" target="_blank">What Could Explain the Gallium Anomaly?</a> first appeared on <a href="https://api.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<https://www.quantamagazine.org/what-could-explain-the-gallium-anomaly-20240712/>

---

## Route around journalism

date: 2024-07-12, from: Dave Winer's Scripting News

<p>Why journalists don’t bother trying to take Trump down, but do with the Democrat.</p>
<p>Simple. Trump has routed around journalism as we have begged the Dems to by going direct to the people.</p>
<p>The journos have no power over Trump and they know it.</p>
<p>They have total power over the Dems, and they know that too.</p>
<p>If by some miracle the journos let us (voters) determine the president, we must <i>never</i> let them have this power again.</p>
 

<http://scripting.com/2024/07/12/131822.html?title=routeAroundJournalism>

---

**@Dave Winer's Scripting News** (date: 2024-07-12, from: Dave Winer's Scripting News)

Here are the <a href="http://scripting.com/2024/07/12/123754.html">show notes</a> for this episode. 

<http://scripting.com/2024/07/12.html#a131502>

---

**@Dave Winer's Scripting News** (date: 2024-07-12, from: Dave Winer's Scripting News)

The episode from <a href="http://scripting.com/2004/07/12.html#When:9:29:59AM">this day</a> in 2004 is now in the <a href="https://this.how/podcast0/">Podcast0</a> feed. 

<http://scripting.com/2024/07/12.html#a130118>

---

## 2024-07-12 From Vallorbe to Orbe

date: 2024-07-12, from: Alex Schroeder's Blog

<h1 id="2024-07-12-from-vallorbe-to-orbe">2024-07-12 From Vallorbe to Orbe</h1>

<p>We walked and ran from Vallorbe to Orbe, through the <a href="https://yverdonlesbainsregion.ch/en/itineraire/the-gorge-of-orbe/">Gorge of Orbe</a>, nearly 17km. Both my wife and I took some pictures along the way.</p>

<p>When we left Vallorbe, the river was calm and slow. There were a lot of flowers.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-1.jpg" alt="" /></p>

<p>The yellow flowers in the foreground:</p>

<p>Tüpfel-Hartheu<br>
Hypericum perforatum</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-18.jpg" alt="" /></p>

<p>In the other direction, the railway bridge can be seen.</p>

<p>Schmalblättriges Weidenröschen<br>
Epilobium angustifolium</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-17.jpg" alt="" /></p>

<p>As it turns out, there is a pedestrian passage beneath the railway.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-2.jpg" alt="" /></p>

<p>And here we&rsquo;re underneath one of these arches, looking back at Vallorbe.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-3.jpg" alt="" /></p>

<p>Later, the gorge got a lot narrower. We crossed over the river just for bit because there was a nice lookout on the other side. Two friendly teenagers took pictures of us.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-4.jpg" alt="" /></p>

<p>The water was pretty turbulent up here. We&rsquo;re just above the falls of the Day, though: Le Saut du Day.
The small lookout is built right there, overlooking the falls.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-19.jpg" alt="" />
<img loading="lazy" src="2024-07-11-vallorbe-6.jpg" alt="" /></p>

<p>We walked down along the falls and noticed some weird constructions on the other side.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-23.jpg" alt="" /></p>

<p>And on our side, there was this foreboding entrance. As it turns out, however, it leads into a passage underneath the waterfall!</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-21.jpg" alt="" /></p>

<p>The sign had an explanation of how there used to be a hydro power plant here.
The electricity was used to create explosives.
When the canton gave itself the electricity monopoly, the chemical plant was forced to buy the electricity at regular prices and since those were 4–5 times as much, the chemical plant was forced to close down.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-22.jpg" alt="" /></p>

<p>We continued on our way, with one last look back.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-30.jpg" alt="" /></p>

<p>Down below the river was calm again.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-24.jpg" alt="" /></p>

<p>The occasional steps are there to break the speed of the flow, I guess?</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-8.jpg" alt="" /></p>

<p>The trail started climbing up and down along the river.
When the cliffs were to risky to navigate, they had drilled small tunnels.
Using explosives, I presume.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-9.jpg" alt="" /></p>

<p>We saw many nice flowers along the way.</p>

<p>Further up, along some meadows:</p>

<p>Dornige Hauhechel (Artengruppe)<br>
Ononis spinosa agg.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-27.jpg" alt="" /></p>

<p>Fuchsschwanz-Klee<br>
Trifolium rubens</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-28.jpg" alt="" /></p>

<p>Deeper in the shade of the trees:</p>

<p>Nesselblättrige Glockenblume<br>
Campanula trachelium</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-29.jpg" alt="" /></p>

<p>At one point there was a very cool draft coming out of the bushes above us and we found an entrance to a big tunnel! It had warning signs for speleologists, particularly regarding heat and noise – because of the bats that like to sleep and hibernate in here. We didn&rsquo;t see any bats in our 4–5m delve, however. The floor was very wet.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-25.jpg" alt="" />
<img loading="lazy" src="2024-07-11-vallorbe-26.jpg" alt="" /></p>

<p>Later, we came upon the pressurized water pipes that still feed a hydro power plant. These pipes are huge!</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-10.jpg" alt="" />
<img loading="lazy" src="2024-07-11-vallorbe-11.jpg" alt="" /></p>

<p>Before arriving at Orbe, there was another lake and more dams.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-12.jpg" alt="" /></p>

<p>And finally, Orbe. An old town with houses and small gardens.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-13.jpg" alt="" /></p>

<p>The main road of Orbe.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-16.jpg" alt="" /></p>

<p>And tiny back-alleys with occasional connections for the upper floors.</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-14.jpg" alt="" /></p>

<p>A great view over the flat lands. Incidentally, the remaining distance to Yverdon-les-bains where our hotel is, doesn&rsquo;t make for great running in the summer heat. Also we were dead tired! 😅</p>

<p><img loading="lazy" src="2024-07-11-vallorbe-15.jpg" alt="" /></p>

<p><a class="tag" href="/search/?q=%23Switzerland">#Switzerland</a> <a class="tag" href="/search/?q=%23Pictures">#Pictures</a></p> 

<https://alexschroeder.ch/view/2024-07-11-vallorbe>

---

## Graphics offload continued

date: 2024-07-12, from: Gtk Developer blog

We first introduced support for dmabufs and  graphics offload last fall, and it is included in GTK 4.14. Since we last talked about, more improvements have happened, so it is time for another update. Transformations When you rotate your monitor, it changes its aspect from landscape (say, 1920 x 1200 to portrait (1200 x 1920). &#8230; <a href="https://blog.gtk.org/2024/07/12/graphics-offload-continued/" class="more-link">Continue reading<span class="screen-reader-text"> "Graphics offload continued"</span></a> 

<https://blog.gtk.org/2024/07/12/graphics-offload-continued/>

---

## Smartphone is already many folks' only computer – say hi to optional desktop mode in Android 15 beta

date: 2024-07-12, updated: 2024-07-12, from: Liam Proven's articles at the Register

<h4>Future Androids may let you dock them and use them as a desktop – as standard</h4>
      <p>It's been tried before, more than once, but if it comes as a stock feature, maybe people will actually start to use the feature.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/07/12/android_15_beta_desktop/>

---

## P&B: Andrew Stephens

date: 2024-07-12, from: Manu - I write blog


                <p>This is the 46th edition of <em>People and Blogs</em>, the series where I ask interesting people to talk about themselves and their blogs. Today we have Andrew Stephens and his blog, <a href="https://sheep.horse">sheep.horse</a> 🐑🐎</p>
<p>To follow this series <a href="https://peopleandblogs.com">subscribe to the newsletter</a>. A new interview will land in your inbox every Friday. Not a fan of newsletters? No problem! You can read the interviews here on the blog or you can subscribe to the <a href="https://manuelmoreale.com/feed">RSS feed</a>.</p>
<p>If you're enjoying the People and Blogs series and you want to see it grow, consider supporting on <a href="https://ko-fi.com/manuelmoreale">Ko-Fi</a>.</p>
<hr />
<h2>Let's start from the basics: can you introduce yourself?</h2>
<p>My name is Andrew Stephens. As a child in 1980s small town New Zealand I few in love with the 8-bit micro computers of the time which delightfully allowed my own creations (mostly elaborate text adventures) to be displayed on our TV screen. I never quite lost the thrill of computing so a degree in Computer Science seemed a natural choice. I joined the workforce just as the Internet was taking off and work eventually brought me to Boston, USA where I live now.</p>
<p>My day job is programming C++ but I enjoy stretching myself with projects at home in various media. But what I like most of all is publishing something on the web where everyone can see it.</p>
<h2>What's the story behind your blog?</h2>
<p>I first created a (long lost) web page back in 1996 during my student days. I loved reading other people's stuff on the web and wanted to contribute my own content - it seemed only fair to give something back. I am not sure when I first heard the word blog but I remember thinking it sounded like a stupid idea; nevertheless sometime in the mid 2000s I installed WordPress and started writing just in time to completely miss the heyday of blogging.</p>
<p>My blog has never been popular. Occasionally something I write will get some attention but it soon settles down.</p>
<p>The most modern iteration of my blog was created when I realized that I should be the change I wanted to see. There is no point complaining about the "old internet" fading when we all have the tools to create whatever we want.</p>
<p>The sheep.horse domain name came about because the .horse top level domain had just become available and I couldn't resist such a stupid offering. Of course all the good .horse domains were snapped up by squatters but sheep.horse was available. According to family lore, "sheep horse" was the first multiple word sentence I uttered as I beheld a lama but it holds no other significance.</p>
<p>It has caused some awkward moments professionally though.<br />
"Great interview question, I have a blog post on exactly this technical subject"<br />
"Excellent, what is the URL?"<br />
"ummm, sheep dot horse"</p>
<p>Thankfully it has never failed to get a laugh.</p>
<h2>What does your creative process look like when it comes to blogging?</h2>
<p>I am a big proponent of letting my mind wander when doing something mindless like cleaning or commuting. We spend so much effort minimizing time spent in menial activity but I find such "unproductive" periods both relaxing and useful for generating new ideas. Often times a thought will hit me and rattle around in my head for a few days before I even start to write. Sometimes it is just an opening phrase or a neat metaphor and more than once I have started a piece arguing one side only to talk myself around to the other side. Those pieces often get abandoned - if I don't feel strongly enough to hold an opinion then I probably have little to say on the subject.</p>
<p>I am a slow writer (I don't even touch-type properly) but I try to blat everything out in a single evening. Then I let it sit for at least 12 hours to proof like a loaf of bread while I sleep. Then I read through it again and make revisions, usually making it worse. My wife is a very good proof reader and the best presented articles are the ones that she has corrected.</p>
<p>I write almost all of my text in a plain text editor called TextMate (it is what I am typing into now). Apart from checking my spelling it does not get in the way with fancy features. I find "real" word processors distracting.</p>
<h2>Do you have an ideal creative environment? Also do you believe the physical space influences your creativity?</h2>
<p>My home office is pretty comfortable but I have also written on trains and flights with good results. There is something about writing that puts me in my own world. When I was younger I used to work listening to music but now I find the quiet works best for me. It doesn't have to be silence, just background noise without voices.</p>
<p>I find getting out into nature really helps with ideas but I have never managed to write anything sitting outside.</p>
<h2>A question for the techie readers: can you run us through your tech stack?</h2>
<p>I thought you would never ask. The most modern iteration of my blog is statically generated by a python project of my own called gensite that turns a directory structure of markdown files into modern html and rsync's the result to my server which is a DigitalOcean droplet. I even wrote some custom markdown tags so that I could include asides and footnotes. I was aiming for mostly text so I based the style of my blog on Edward Tufte's ideas on document formatting which I was very excited about at the time.</p>
<p>If I was to be honest I would have to admit that I rent a server to run a blog, and maintain a blog to give my server something to do. Writing a static site generator was just to justify both and now I am in too deep to stop now. The actual contents of my site is secondary.</p>
<p>On top of that I have a simple hit counter of my own design. I gradually grew to hate the influence of Google Analytics and vowed not to include it or anything similar on my site because I believe that chasing eyeballs has led us to the state the Internet is in today. However, I am a total hypocrite and found that I really wanted to know if anyone was reading my stuff. So now I just count hits.</p>
<h2>Given your experience, if you were to start a blog today, would you do anything differently?</h2>
<p>I am happy with the way everything works now - it suits me. But I could not recommend my setup to anyone else. Honestly, the most important part is putting your work somewhere people can access it with minimal fuss. Hosted is fine although I will say that it is important to choose a service that will allow you to migrate your work if you need to part ways with your hosting provider, which is why I think WordPress is a good choice to start with.</p>
<p>One thing I have learned is not to spend too much time futzing with the aesthetics of your blog. Just pick a readable theme - the words are the important part.</p>
<h2>Financial question since the Web is obsessed with money: how much does it cost to run your blog? Is it just a cost, or does it generate some revenue? And what's your position on people monetising personal blogs?</h2>
<p>I have never tried to monetize my work - part of me still considers blogging to be contributing to the wacky ball of nonsense called the internet. My total cost is about $10 a month for hosting and the domain. Perhaps I could get cheaper but this is what works for me now.</p>
<h2>Time for some recommendations: any blog you think is worth checking out? And also, who do you think I should be interviewing next?</h2>
<p>I love passion project single-subject blogs that go into great detail on arcane matters. <a href="http://nzpetesmatteshot.blogspot.com">Matte Shot</a> has been a favorite of mine for a long time.</p>
<p>But I am really interested in the citizen journalists who do rigorous reporting on topics they cover. I have been very interested in cryptocurrency (very much on the "this is all a stupid idea" side of the table) for over a decade and I admire the great reporting done by the likes of <a href="https://davidgerard.co.uk/blockchain/">David Gerard</a> and <a href="https://amycastor.com">Amy Castor</a>. And of course, <a href="https://www.mollywhite.net">Molly White</a>'s writing is amazing as well. I have no idea how they can stay so focused on a world they (rightfully) disdain and I would love to hear what motivates them.</p>
<h2>Final question: is there anything you want to share with us?</h2>
<p>I recently went back to my roots and created a short but elaborate text adventure with illustrations, <a href="https://sheep.horse/voyage_of_the_marigold/">Voyage of the Marigold</a>. Its my love letter to 80s adventure gamebooks and Star Trek, I get an enormous kick when people tell me they have played it.</p>
<hr />
<p>This was the 46th edition of <em>People and Blogs</em>. Hope you enjoyed this interview with Andrew. Make sure to <a href="https://sheep.horse">follow his blog</a> (<a href="https://sheep.horse/rss.xml">RSS</a>) and get in touch with him if you have any questions.</p>
<h2>Awesome supporters</h2>
<p>You can support this series on <a href="https://ko-fi.com/manuelmoreale">Ko-Fi</a> and all supporters will be listed here as well as on the <a href="https://peopleandblogs.com">official site</a> of the newsletter.</p>
<p><a href="https://www.thingelstad.com">Jamie Thingelstad</a> (<a href="https://www.thingelstad.com/feed.xml">RSS</a>) — <a href="https://some.studio">Piet Terheyden</a> — <a href="https://minim.blog">Raul Montala</a> (<a href="http://github.com/rmontala/minim/commits.atom">RSS</a>) — Eleonora — <a href="https://carlbarenbrug.com">Carl Barenbrug</a> (<a href="https://carlbarenbrug.com/feed/rss">RSS</a>) — <a href="https://tangiblelife.net">Steve Ledlow</a> (<a href="https://tangiblelife.net/feed.rss">RSS</a>) — <a href="https://www.feadin.eu">Paolo Ruggeri</a> (<a href="https://www.feadin.eu/en/posts/index.xml">RSS</a>) — <a href="https://thejollyteapot.com">Nicolas Magand</a> (<a href="https://thejollyteapot.com/feed.rss">RSS</a>) — <a href="https://robhope.com">Rob Hope</a> — <a href="https://chrishannah.me">Chris Hannah</a> (<a href="https://chrishannah.me/index.xml">RSS</a>) — <a href="https://blog.pcora.eu">Pedro Corá</a> (<a href="https://blog.pcora.eu/feed.xml">RSS</a>) — <a href="https://colinwalker.blog/">Colin Walker</a> (<a href="https://colinwalker.blog/dailyfeed.xml">RSS</a>) — <a href="https://softlandings.world/">Sixian Lim</a> (<a href="https://www.softlandings.world/feed.rss">RSS</a>) — <a href="https://mattstein.com">Matt Stein</a> (<a href="https://mattstein.com/rss.xml">RSS</a>) — <a href="https://winnielim.org">Winnie Lim</a> (<a href="https://winnielim.org/feed/">RSS</a>) — <a href="https://flamedfury.com/">Flamed</a> (<a href="https://flamedfury.com/feed.xml/">RSS</a>) — <a href="https://skyhold.org">C Jackdaw</a> (<a href="https://journal.miso.town/atom?url=https://skyhold.org/index.html">RSS</a>) — <a href="https://tiv.today">Kevin Humdrum</a> (<a href="https://tiv.today/feed.rss">RSS</a>) — <a href="https://www.doc.cc/">Fabricio Teixeira</a> (<a href="https://www.doc.cc/feed.xml">RSS</a>) — <a href="https://rosalindcroad.com">Rosalind Croad</a> — <a href="https://frankmeeuwsen.com">Frank Meeuwsen</a> (<a href="https://frankmeeuwsen.com/feed.xml">RSS</a>) — <a href="https://www.elmike.me">Mike Walsh</a> (<a href="https://www.elmike.me/feed.xml">RSS</a>) — <a href="https://www.byzero.de/">Markus Heurung</a> — <a href="https://cleverlaziness.xyz/">Juan Villela</a> (<a href="https://cleverlaziness.xyz/posts/index.xml">RSS</a>) — <a href="https://mwarrenarts.com/">Michael Warren</a> (<a href="https://mwarrenarts.com/rss">RSS</a>) — <a href="https://cagrimmett.com/">Chuck Grimmett</a> (<a href="https://cagrimmett.com/feed">RSS</a>) — <a href="https://eatweeds.co.uk">Robin Harford</a> (<a href="https://www.eatweeds.co.uk/feed/">RSS</a>) — <a href="https://bryanmanio.com/">Bryan Maniotakis</a> (<a href="https://bryanmanio.com/feed/">RSS</a>) — <a href="https://bjhess.com/">Barry Hess</a> (<a href="https://bjhess.com/posts_feed">RSS</a>) — <a href="https://ivanmoreale.com">Ivan Moreale</a> — <a href="https://islandinthenet.com">Khürt Williams</a> (<a href="https://islandinthenet.com/feed/">RSS</a>) — <a href="https://werd.io/">Ben Werdmuller</a> (<a href="https://werd.io/feed">RSS</a>) — <a href="https://corygibbons.com">Cory Gibbons</a> — <a href="https://www.lkhrs.com/">Luke Harris</a> (<a href="https://www.lkhrs.com/blog/index.xml">RSS</a>) — <a href="https://lars-christian.com/">Lars-Christian Simonsen</a> (<a href="https://lars-christian.com/feed/">RSS</a>) — <a href="https://www.codyschultz.com">Cody Schultz</a> — <a href="https://bradbarrish.com">Brad Barrish</a> (<a href="https://bradbarrish.com/feed/">RSS</a>) — <a href="https://galaiko.rocks">Nikita Galaiko</a> — Erik Blankvoort — <a href="https://jagasantagostino.com">Jaga Santagostino</a> — <a href="https://andzuck.com/">Andrew Zuckerman</a> — <a href="https://www.mattiacompagnucci.com">Mattia Compagnucci</a> (<a href="https://mattiacompagnucci.com/feed.rss">RSS</a>) — <a href="https://tdh.se/">Thord D. Hedengren</a> (<a href="https://tdh.se/feed/feed.xml">RSS</a>) — <a href="https://fabiensauser.ch">Fabien Sauser</a> (<a href="https://fabiensauser.ch/index.xml">RSS</a>) — <a href="http://dizzard.net/">Maxwell Omdal</a> — <a href="https://numericcitizen.me">Numeric Citizen</a> (<a href="https://feedpress.me/numericcitizen-feeds.xml?ref=numericcitizen.me">RSS</a>) — <a href="https://heydingus.net">Jarrod Blundy</a> (<a href="https://heydingus.net/feeds">RSS</a>) — <a href="https://gwtf.it">Andrea Contino</a> (<a href="https://gwtf.it/feed">RSS</a>) — <a href="https://sebastiandedeyne.com/">Sebastian De Deyne</a> (<a href="https://sebastiandedeyne.com/index.xml">RSS</a>) — <a href="https://koolinus.net/blog/">Nicola Losito</a> (<a href="https://koolinus.net/blog/feed/">RSS</a>) — <a href="https://amerpie.lol/">Lou Plummer</a> (<a href="https://amerpie.lol/feed.xml">RSS</a>) — <a href="https://lmika.org/">Leon Mika</a> (<a href="https://lmika.org/feed.xml">RSS</a>) — <a href="http://veronique.ink">Veronique</a> (<a href="https://veronique.ink/feed/">RSS</a>) — <a href="https://surplusjouissance.com">Neil Gorman</a> (<a href="https://www.surplusjouissance.com/rss/">RSS</a>) — <a href="https://reaper.is/">Reaper</a> (<a href="https://reaper.is/rss.xml">RSS</a>) — <a href="https://www.mattrutherford.co.uk/">Matt Rutherford</a> (<a href="https://www.mattrutherford.co.uk/rss/">RSS</a>) — <a href="https://aleemshaun.com/">Aleem Ali</a> (<a href="https://aleemshaun.com/feed">RSS</a>) — <a href="https://nikkin.dev/">Nikkin</a> (<a href="https://nikkin.dev/feed.xml">RSS</a>) — <a href="https://jeremyfelt.com/">Jeremy Felt</a> (<a href="https://jeremyfelt.com/feed">RSS</a>) — <a href="https://hansfast.net">Hans</a> (<a href="https://hansfast.net/everything.rss">RSS</a>) — <a href="https://www.markpitblado.me/">Mark Pitblado</a> (<a href="https://www.markpitblado.me/feed.xml">RSS</a>) — <a href="https://www.morelightmorelight.com/">Matt Katz</a> (<a href="https://www.morelightmorelight.com/feed">RSS</a>) — <a href="https://iljapanic.com/">Ilja Panić</a> — <a href="https://odongo.pl">Emmanuel Odongo</a> — <a href="https://kevquirk.com/">Kev Quirk</a> (<a href="https://kevquirk.com/feed">RSS</a>) — <a href="https://artlung.com/">Joe Crawford</a> (<a href="https://artlung.com/feed/">RSS</a>) — <a href="https://www.ismailsevik.com/">İsmail Şevik</a> (<a href="https://www.ismailsevik.com/feeds/posts/default?alt=rss">RSS</a>) — <a href="https://eessoo.co/">Elena Saharova</a> — <a href="https://ruk.ca/">Peter Rukavina</a> (<a href="https://ruk.ca/rss/feedburner.xml">RSS</a>) — <a href="https://jsrn.net">jsrn</a> (<a href="https://jsrn.net/feed.xml">RSS</a>) — <a href="https://therealadam.com">Adam Keys</a> (<a href="https://therealadam.com/feed.xml">RSS</a>) — <a href="https://www.alexeystar.com/">Alexey Staroselets</a> (<a href="https://alexeystar.com/index.xml">RSS</a>)</p>
<h2>Want to support P&amp;B?</h2>
<p>If you like this series and want to help it grow, you can:</p>
<ol>
<li><a href="https://ko-fi.com/manuelmoreale">support on Ko-Fi</a>;</li>
<li>post about it on your own blog and let your readers know about its existence;</li>
<li><a href="mailto:hello@manuelmoreale.com">email me</a> comments and feedback on the series;</li>
<li><a href="mailto:email@peopleandblogs.com">suggest a person</a> to interview next. I'm especially interested in people and blogs outside the tech/web bubble.</li>
</ol>                <hr>
                <p>Thank you for keeping RSS alive. You're awesome.</p>
                <p><a href="mailto:hello@manuelmoreale.com">Email me</a> ::
                <a href="https://manuelmoreale.com/guestbook">Sign my guestbook</a> :: 
                <a href="https://ko-fi.com/manuelmoreale">Support for 1$/month</a> :: 
                <a href="https://manuelmoreale.com/supporters">See my awesome supporters</a> :: 
                <a href="https://buttondown.email/peopleandblogs">Subscribe to People and Blogs</a></p>
             

<https://manuelmoreale.com/@/page/YhgpWjBBSRTLdjr5>

---

## Hubble Measures the Distance to a Supernova

date: 2024-07-12, from: NASA breaking news

Measuring the distance to truly remote objects like galaxies, quasars, and galaxy clusters is a crucial task in astrophysics, particularly when it comes to studying the early universe, but it’s a difficult one to complete. We can only measure the distances to a few nearby objects like the Sun, planets, and some nearby stars directly. […] 

<https://science.nasa.gov/missions/hubble/hubble-measures-the-distance-to-a-supernova/>

---

## Hume and literature

date: 2024-07-12, from: Ayjay blog

As previously indicated, I will eventually return to Moonbound, but I need to think some things through first. For now, let’s go back twelve thousand years or so and revisit David Hume’s History of England. When Hume was writing his History of England, the word “literature” only occasionally referred to a body of texts, or [&#8230;] 

<https://blog.ayjay.org/hume-and-literature/>

---

## 2024-07-11 Exim config for UUCP, NNCP and MSMTP

date: 2024-07-12, from: Alex Schroeder's Blog

<h1 id="2024-07-11-exim-config-for-uucp-nncp-and-msmtp">2024-07-11 Exim config for UUCP, NNCP and MSMTP</h1>

<p>My laptop doesn&rsquo;t have a static IP number. My mail service provider is not a smart host for my laptop.
That&rsquo;s why I&rsquo;ve been using <code>msmtp</code> to send email from the command line.</p>

<p>My <code>~/.mailrc</code> used to contain the following:</p>

<pre><code>set sendmail=&quot;/usr/bin/msmtp&quot;
</code></pre>

<p>I removed this line because I want to send mails by UUCP or NNCP, depending on the domain used.
It is only when none of these work that I want to fall back to <code>msmtp</code>.</p>

<p>Clearly, I need to add something to my <code>exim</code> configuration. When reading the <code>exim</code> config, it&rsquo;s important
to understand that all the additions come in pairs: a router and a transport.</p>

<p>I use Debian.</p>

<h2 id="mail-and-ed">mail and ed</h2>

<p>I use <code>mail</code> to read mail and <code>ed</code> to write mail. At least when I&rsquo;m doing this particular admin hobby project. 😂</p>

<p>As people will use a variety of domain names to send mail to me, I have to decide which ones <code>mail</code> should recognize as being &ldquo;me&rdquo;. That&rsquo;s why <code>~/.mailrc</code> contains the following:</p>

<pre><code>alternates alex@sibirocobombus,alex@campaignwiki.org,alex@campaignwiki
</code></pre>

<p>To read MIME-encoded mail, I use <code>munpack -t</code> which comes with the <code>mpack</code> package.</p>

<h2 id="etc-exim4-update-exim4-conf-conf">/etc/exim4/update-exim4.conf.conf</h2>

<p>This is the file generated by <code>sudo dpkg-reconfigure exim4-config</code>.</p>

<p>Importantly, it specifies that my laptop only delivers local mail.
UUCP, NNCP and <code>msmtp</code> are all exceptions to that.</p>

<p>This config file also specifies that the <code>exim</code> configuration is split into many small files.
This makes it easy for me to add new files.</p>

<p>When I make changes, I must always run <code>sudo update-exim4.conf</code>.</p>

<p>The config files are concatenated in sort order, which is why the file names start with numbers.
All of the routers must sort before <code>200_exim4-config_primary</code> because it stops all processing.
It does that because this config file says that my laptop only delivers local mail.</p>

<pre><code>dc_eximconfig_configtype='local'
dc_other_hostnames='melanobombus'
dc_local_interfaces='127.0.0.1 ; ::1'
dc_readhost='alexschroeder.ch'
dc_relay_domains=''
dc_minimaldns='false'
dc_relay_nets=''
dc_smarthost=''
CFILEMODE='644'
dc_use_split_config='true'
dc_hide_mailname='false'
dc_mailname_in_oh='true'
dc_localdelivery='mail_spool'
</code></pre>

<h2 id="etc-exim4-conf-d-router-110-exim4-config-uucp">/etc/exim4/conf.d/router/110_exim4-config_uucp</h2>

<p>The domains that get mail via UUCP are listed in <code>/etc/exim4/uucp</code>.</p>

<pre><code>uucp_router:
    debug_print = &quot;R: uucp_router for $local_part@$domain&quot;
    driver = accept
    require_files = +/usr/bin/uux
    domains = wildlsearch;/etc/exim4/uucp
    transport = rsmtp
</code></pre>

<p>Example <code>/etc/exim4/uucp</code>:</p>

<pre><code>dwalin	sibirocobombus!dwalin
campaignwiki	sibirocobombus
</code></pre>

<p>That is, <code>dwalin</code> can only be reached via <code>sibirocobombus</code> and <code>campaignwiki</code> is the same as <code>sibirocobombus</code>.</p>

<p><code>sibirocobombus</code> is defined in <code>/etc/uucp/sys</code>.</p>

<p>Note that mail to the <code>sibirocobombus</code> domain itself doesn&rsquo;t get sent via UUCP!</p>

<h2 id="etc-exim4-conf-d-router-111-exim4-config-nncp">/etc/exim4/conf.d/router/111_exim4-config_nncp</h2>

<p>The domains that get mail via NNCP are listed in <code>/etc/exim4/nncp</code>.</p>

<pre><code>nncp_router:
    debug_print = &quot;R: nncp_router for $local_part@$domain&quot;
    driver=accept
    require_files = +/usr/bin/nncp-exec
    domains = wildlsearch;/etc/exim4/nncp
    transport = nncp
</code></pre>

<p>Example <code>/etc/exim4/nncp</code>:</p>

<pre><code>sibirocobombus          sibirocobombus
erebor                  erebor
</code></pre>

<p>Compare this to the previous entry. Mail to the <code>sibirocobombus</code> domain is sent via NNCP!</p>

<p>Both <code>sibirocobombus</code> and <code>erebor</code> must be defined in <code>/etc/nncp.hjson</code>.</p>

<h2 id="etc-exim4-conf-d-router-112-exim4-config-msmtp">/etc/exim4/conf.d/router/112_exim4-config_msmtp</h2>

<p>This relies on the fact that the sender is a local user.</p>

<pre><code>msmtp_router:
    debug_print = &quot;R: msmtp_router for $local_part@$domain&quot;
    driver=accept
    user = ${lookup{$sender_address_local_part}lsearch,ret=key{/etc/passwd}}
    domains = ! +local_domains
    require_files = +/usr/bin/msmtp
    transport = msmtp
</code></pre>

<h2 id="etc-exim4-conf-d-transport-40-exim4-config-uucp">/etc/exim4/conf.d/transport/40_exim4-config_uucp</h2>

<pre><code>rsmtp:
    debug_print = &quot;T: rsmtp for $pipe_addresses&quot;
    driver=pipe
    command = /usr/bin/uux - -r -a${lookup{$sender_address_local_part}lsearch,ret=key{/etc/passwd}} -gC $domain_data!rsmtp
    use_bsmtp
    return_fail_output
    user=uucp
    batch_max = 100
</code></pre>

<h2 id="etc-exim4-conf-d-transport-41-exim4-config-nncp">/etc/exim4/conf.d/transport/41_exim4-config_nncp</h2>

<pre><code>nncp:
    debug_print = &quot;T: nncp for $pipe_addresses&quot;
    driver=pipe
    user=nncp
    command = /usr/bin/nncp-exec -noprogress -quiet $domain_data rsmtp
    use_bsmtp
    return_fail_output
</code></pre>

<h2 id="etc-exim4-conf-d-transport-42-exim4-config-msmtp">/etc/exim4/conf.d/transport/42_exim4-config_msmtp</h2>

<pre><code>msmtp:
    debug_print = &quot;T: msmtp for $pipe_addresses&quot;
    driver = pipe
    command = /usr/bin/msmtp --read-recipients --file=/home/${lookup{$sender_address_local_part}lsearch,ret=key{/etc/passwd}}/.config/msmtp/config
    return_fail_output
</code></pre>

<p>Note that this ensures that <code>msmtp</code> is run for each user, using their own config files.</p>

<p>My config is stored in <code>~/.config/msmtp/config</code> and it must necessarily be non-interactive.</p>

<h2 id="previous-blog-posts">Previous blog posts:</h2>

<ul>
<li><a href="2024-06-30-nncp">2024-06-30 Connecting the laptop to the server using UUCP</a></li>
<li><a href="2024-06-29-nncp">2024-06-29 Sending mail from the laptop to the server via NNCP</a></li>
<li><a href="2024-06-28-nncp">2024-06-28 Connecting the laptop to the server via NNCP</a></li>
<li><a href="2024-06-15-uucp">2024-06-15 Old tech: UUCP</a></li>
<li><a href="2020-12-17_Rmail">2020-12-17 Rmail</a>, about <code>msmtp</code></li>
</ul>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23Mail">#Mail</a> <a class="tag" href="/search/?q=%23UUCP">#UUCP</a> <a class="tag" href="/search/?q=%23NNCP">#NNCP</a> <a class="tag" href="/search/?q=%23msmtp">#msmtp</a></p> 

<https://alexschroeder.ch/view/2024-07-11-exim>

---

## FLTK 1.4.x Weekly Snapshot (master)

date: 2024-07-12, from: Fast Light Tool Kit

A new weekly snapshot of FLTK 1.4.x (master) is now available 

<https://www.fltk.org/articles.php?L1931>

---

## Request for Meetings

date: 2024-07-12, updated: 2024-07-12, from: Tom Kellog blog

Are you a decision maker? I would love to talk to you about your posture in regards to AI. Also contact me if you want to know what I find out. 

<http://timkellogg.me/blog/2024/07/12/ai>

---

##  The Cleverness of the Axe 

date: 2024-07-11, updated: 2024-07-11, from: Jason Kottke blog

 

<https://kottke.org/24/07/the-cleverness-of-the-axe>

---

## Qualcomm’s Oryon core: a long time in the making

date: 2024-07-11, from: OS News

In 2019, a startup called Nuvia came out of stealth mode. Nuvia was notable because its leadership included several notable chip architects, including one who used to work for Apple. Apple chips like the M1 drew recognition for landing in the same performance neighborhood as AMD and Intel’s offerings while offering better power efficiency. Nuvia had similar goals, aiming to create a power efficient core that could could surpass designs from AMD, Apple, Arm, and Intel. Qualcomm acquired Nuvia in 2021, bringing its staff into Qualcomm’s internal CPU efforts. Bringing on Nuvia staff rejuvenated Qualcomm’s internal CPU efforts, which led to the Oryon core in Snapdragon X Elite. Oryon arrives nearly five years after Nuvia hit the news, and almost eight years after Qualcomm last released a smartphone SoC with internally designed cores. For people following Nuvia’s developments, it has been a long wait. ↫ Chips and Cheese Now that the Snapdragon X Elite and Pro chips are finally making their way to consumers, we&#8217;re also finally starting to see proper deep-dives into the brand new hardware. Considering this will set the standard for ARM laptops for a long time to come &#8211; including easy availability of powerful ARM Linux laptops &#8211; I really want to know every single quirk or performance statistic we can find. 

<https://www.osnews.com/story/140215/qualcomms-oryon-core-a-long-time-in-the-making/>

---

**@Dave Winer's Scripting News** (date: 2024-07-11, from: Dave Winer's Scripting News)

I had a post here about the inevitability of Biden stepping aside, then I turned on the news and saw how the press was humiliating the President at a meeting with the president of Ukraine. We can't give into this. How dare they insult the president as he represents the US in NATO. I can't get behind this. We're in a bad bad place. 

<http://scripting.com/2024/07/11.html#a222615>

---

## Affinity Six-Month Trial

date: 2024-07-11, from: Michael Tsai

Jess Weatherbed (Hacker News, Reddit): Design software developer Serif has launched a new six-month free trial for its Affinity creative suite, which is well regarded as being one of the few viable alternatives to Adobe&#8217;s professional design apps. The offer is available for Affinity Photo, Affinity Designer, and Affinity Publisher starting today on Mac, Windows [&#8230;] 

<https://mjtsai.com/blog/2024/07/11/affinity-six-month-trial/>

---

## Ricoh ScanSnap iX1600

date: 2024-07-11, from: Michael Tsai

Ricoh (Amazon): The newest flagship in the ScanSnap family is 33% faster, giving you more time back in your day. Designed for everyday use, the ScanSnap iX1600 gets documents digitized, organized and sent anywhere&#8212;anytime&#8212;with minimal effort. The Fujitsu ScanSnap S500M was the only document scanner that ever worked well for me. I&#8217;d been using it [&#8230;] 

<https://mjtsai.com/blog/2024/07/11/ricoh-scansnap-ix1600/>

---

## Mac UPS Software

date: 2024-07-11, from: Michael Tsai

Howard Oakley: The commonest error in deciding whether to use a UPS is the argument that, because your Mac isn&#8217;t left on 24/7, it&#8217;s always attended, so should anything go wrong with the power, you&#8217;ll be able to deal with it. Even if you&#8217;re sat at your Mac, with instant reactions, there&#8217;s no way that [&#8230;] 

<https://mjtsai.com/blog/2024/07/11/mac-ups-software/>

---

## App Intents Dogfooding

date: 2024-07-11, from: Michael Tsai

Matthew Cassinelli: Overall, seeing updates to these Reminders actions is a good sign for the Shortcuts ecosystem, as it&#8217;s the first signal that Apple is updating their native Shortcuts actions with App Intents-based replacements in iOS 18. Since the inception of many of these actions in Workflow when Shortcuts was a third-party app, many actions [&#8230;] 

<https://mjtsai.com/blog/2024/07/11/app-intents-dogfooding/>

---

**@Dave Winer's Scripting News** (date: 2024-07-11, from: Dave Winer's Scripting News)

Today's song: <a href="https://www.youtube.com/watch?v=-1pYKdqD1ls">Respect Yourself</a>. For all of us, but especially the people of the United States of America. 

<http://scripting.com/2024/07/11.html#a221110>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-11, from: Miguel de Icaza Mastondon feed)

<p>Today’s Inspector restyling brought to you by:</p> 

<https://mastodon.social/@Migueldeicaza/112770132192968447>

---

## NASA Remembers Retired Astronaut, US Air Force Pilot Joe Engle

date: 2024-07-11, from: NASA breaking news

Retired NASA astronaut and U.S. Air Force Maj. Gen. Joe Engle died July 10, surrounded by his family at home in Houston. Among his many honors, he is the only astronaut to pilot both the X-15 and space shuttle. He was 91. Engle became an astronaut at age 32 while flying the X-15 for the [&#8230;] 

<https://www.nasa.gov/news-release/nasa-remembers-retired-astronaut-us-air-force-pilot-joe-engle/>

---

## Iconography of the X Window System: the boot stipple

date: 2024-07-11, from: OS News

For the uninitiated, what are we looking at? Could it be the Moiré Error from Doom? Well, no. You are looking at (part of) the boot up screen for the X Window System, specifically the pattern it uses as the background of the root window. This pattern is technically called a stipple. What you’re seeing is pretty important and came to symbolize a lot for me as a computer practitioner. ↫ Matt T. Proud The X bootup pattern is definitely burnt onto my retina, as it probably is for a lot of late &#8217;90s, early 2000s Linux users. Setting up X correctly, and more importantly, not breaking it later, was almost an art at the time, so any time you loaded up your PC and this pattern didn&#8217;t greet you, you&#8217;d get this sinister feeling in the pit of your stomach. There was now a very real chance you were going to have to debug your X configuration file, and nobody &#8211; absolutely nobody &#8211; liked doing that, and if you did, you&#8217;re lying. Matt T. Proud dove into the history of the X stipple, and discovered it&#8217;s been part of X since pretty much the very beginning, and even more esoteric X implementations, like the ones used by Solaris or the various commercial versions, have the stipple. He also discovered several other variants of the stipple included in X, so there is a chance your memory might be just a tiny bit different. The stipple eventually disappeared at around 2008 or so, it disappeared as part of the various efforts to modernise, sanitise, and speed up the Linux boot process on desktops. On modern distributions still using X, you won&#8217;t encounter it anymore by default, but in true X fashion, the code is still there and you can easily bring it back using a flag specifically designed for it, -retro, that you can use with startx or your X init file. There&#8217;s a ton more information in Proud&#8217;s excellent article, but this one paragraph made me smile: I will remark that in spite of my job being a software engineer, I had never spent a lot of time looking at the source code for the X Server (XFree86 or X.Org) before. It’s really nuts to see that a lot of the architecture from X10R3 and X11R1 still persists in the code today, which is a statement that can be said in deep admiration for legacy code but also disturbance from the power of old decisions. Without having looked at the internals of any Wayland implementation, I can sympathize sight unseen with the sentiments that some developers have toward the X Window System: the code is a dead end. I say that with the utmost respect to the X Window System as a technology and an ecosystem. I’ll keep using X, and I will be really sad when it’s no longer possible for me to do so for one reason or another, as I’m extremely attached to it quirks. But it’s clear the future is limited. ↫ Matt T. Proud We all have great &#8211; and not so great &#8211; memories of X, but I am really, really happy I no longer have to use it. 

<https://www.osnews.com/story/140211/iconography-of-the-x-window-system-the-boot-stipple/>

---

## Local AI on Windows: Explaining the Audio Editor app sample

date: 2024-07-11, from: Windows Developer Blog

<p>Building Windows apps that leverage on-device AI models can seem like a daunting task - there's a lot of work that goes into defining your use case, choosing and tuning the right models, and refining the logic surrounding the models.</p>
<p>While there's n</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2024/07/11/local-ai-on-windows-explaining-the-audio-editor-app-sample/">Local AI on Windows: Explaining the Audio Editor app sample </a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<https://blogs.windows.com/windowsdeveloper/2024/07/11/local-ai-on-windows-explaining-the-audio-editor-app-sample/>

---

## Palestinians say Microsoft unfairly closing their accounts

date: 2024-07-11, from: OS News

Palestinians living abroad have accused Microsoft of closing their email accounts without warning &#8211; cutting them off from crucial online services. They say it has left them unable to access bank accounts and job offers &#8211; and stopped them using Skype, which Microsoft owns, to contact relatives in war-torn Gaza. Microsoft says they violated its terms of service &#8211; a claim they dispute. ↫ Mohamed Shalaby and Joe Tidy at the BBC Checking up on your family members to see if they survived another day of an ongoing genocide doesn&#8217;t seem like something that should be violating any terms of any services, but that&#8217;s just me. 

<https://www.osnews.com/story/140207/palestinians-say-microsoft-unfairly-closing-their-accounts/>

---

## “Majority of websites and mobile apps use dark patterns”

date: 2024-07-11, from: OS News

A global internet sweep that examined the websites and mobile apps of 642 traders has found that 75,7% of them employed at least one dark pattern, and 66,8% of them employed two or more dark patterns. Dark patterns are defined as practices commonly found in online user interfaces and that steer, deceive, coerce, or manipulate consumers into making choices that often are not in their best interests. ↫ International Consumer Protection and Enforcement Network Dark patterns are everywhere, and it&#8217;s virtually impossible to browse the web, use certain types of services, or install mobile applications, without having to dodge and roll just to avoid all kinds of nonsense being thrown at you. It&#8217;s often not even ads that make the web unusable &#8211; it&#8217;s all the dark patterns tricking you into viewing ads, entering into a subscription, enabling notifications, sharing your email address or whatever, that&#8217;s the real reason. This is why one of the absolute primary demands I have for the next version of OSNews is zero dark patterns. I don&#8217;t want any dialogs begging you to enable ads, no modal windows demanding you sign up for a newsletter, no popups asking you to enable notifications, and so on &#8211; none of that stuff. My golden standard is &#8220;your computer, your rules&#8221;, and that includes your right to use ad blockers or anything else to change the appearance or functioning of our website on your computer. It&#8217;d be great if dark patterns became illegal somehow, but it would be incredibly difficult to write any legislation that would properly cover these practices. 

<https://www.osnews.com/story/140203/majority-of-websites-and-mobile-apps-use-dark-patterns/>

---

## 45 Years Ago: Skylab Reenters Earth’s Atmosphere

date: 2024-07-11, from: NASA breaking news

A few days before they left Skylab on Feb. 8, 1974, the final crew to occupy the station raised its altitude, hoping to keep it in orbit until a future space shuttle could revisit it. But higher than predicted solar activity caused the Earth’s atmosphere to expand, increasing drag on the large vehicle, causing its [&#8230;] 

<https://www.nasa.gov/history/45-years-ago-skylab-reenters-earths-atmosphere/>

---

## Electrical and Mechanical Technician Clifton Brown

date: 2024-07-11, from: NASA breaking news

“We have a group photo of my first project here, ASTRO-H, and that one means a lot to me because I came [to that NASA project] fresh off the street. I was super scared and intimidated. It was me and three other [technicians], who were also all new, and a handful of very seasoned scientists [&#8230;] 

<https://www.nasa.gov/image-article/electrical-and-mechanical-technician-clifton-brown/>

---

##  Area codes that are also HTTP response headers. For instance, 404 (Not... 

date: 2024-07-11, updated: 2024-07-11, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044943-area-codes-that-are-also>

---

## OpenSSH bug leaves RHEL 9 and the RHELatives vulnerable

date: 2024-07-11, updated: 2024-07-11, from: Liam Proven's articles at the Register

<h4>Newly discovered flaw affects OpenSSH 8.7 and 8.8 daemon</h4>
      <p>The founder of Openwall has discovered a new signal handler race condition in the core sshd daemon used in RHEL 9.x and its various offshoots.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/07/11/openssh_bug_in_rhel_9/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-11, from: Miguel de Icaza Mastondon feed)

<p>Lifting more design idioms from FinalCut Pro, tiny changes to the code, but these look so much better</p> 

<https://mastodon.social/@Migueldeicaza/112769398304651873>

---

##  Reading Miranda July&#8217;s All Fours 

date: 2024-07-11, updated: 2024-07-11, from: Jason Kottke blog

 

<https://kottke.org/24/07/reading-miranda-julys-all-fours>

---

## You’re Always on That Phone: How Being Online Sustained Sudan’s Youth Revolution

date: 2024-07-11, from: Logic Magazine


                <p>Sudanese organizer Dinan Alasad on How Being Online Sustained Sudan’s Youth Revolution </p>

             

<https://logicmag.io/issue-21-medicine-and-the-body/youre-always-on-that-phone-how-being-online-sustained-sudans-youth>

---

## On Sudan and the Interminable Catastrophe: A Conversation with Bedour Alagraa

date: 2024-07-11, from: Logic Magazine


                <p>Bedour Alagraa in conversation with J Khadijah Abdurahman about the history, present, and future of Sudan and its diaspora in the wake of the one year anniversary of the war.</p>

             

<https://logicmag.io/issue-21-medicine-and-the-body/on-sudan-and-the-interminable-catastrophe-an-interview-with-bedour-alagraa>

---

## View From the Nuba Mountains: An Interview with Kuna

date: 2024-07-11, from: Logic Magazine


                <p>An interview with Kuna (a pseudonym for her protection), a Nuba diaspora returnee currently displaced within Sudan due to the ongoing war between the Rapid Support Forces and the Sudanese Armed Forces.</p>

             

<https://logicmag.io/issue-21-medicine-and-the-body/view-from-the-nuba-mountains-an-interview-with-kuna>

---

##  This Crystal Fragment Turns Everything You See Into 8-bit Pixel Art, and... 

date: 2024-07-11, updated: 2024-07-11, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044940-this-crystal-fragment-tur>

---

## political proverbs

date: 2024-07-11, from: Ayjay blog

Nothing good ever comes from indulging the egos of old men.  Nothing good comes from indulging the ego of any politician, but the you-can’t-tell-me-I’ve-seen-it-all arrogance of old men is especially dangerous.  If you want political success, it’s better to be fortunate in your enemies than in your friends. An incompetent enemy can do more for [&#8230;] 

<https://blog.ayjay.org/political-proverbs/>

---

## NASA Barge Preparations Underway for Artemis II Rocket Stage Delivery

date: 2024-07-11, from: NASA breaking news

Team members are installing pedestals aboard NASA’s Pegasus barge to hold and secure the massive core stage of NASA’s SLS (Space Launch System) rocket, indicating NASA barge crews are nearly ready for its first delivery to support the Artemis II test flight around the Moon. The barge will ferry the core stage on a 900-mile [&#8230;] 

<https://www.nasa.gov/image-article/nasa-barge-preparations-underway-for-artemis-ii-rocket-stage-delivery/>

---

## Peter Easthope commented on issue #141 at Felix Oliver Friedrich / Oberon A2

date: 2024-07-11, updated: 2024-07-11, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:121" dir="auto">The output quoted above suggests a snag in Oberon.Configuration.Mod but I don&#39;t understand the meaning of @ConstSections.</p>
<p data-sourcepos="3:1-3:17" dir="auto">Thx,     ... P.L.</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/141#note_193438>

---

## The iPod is back… kinda

date: 2024-07-11, from: Raspberry Pi News (.com)

<p>Maker Del Hatch's ePiPod is a portable music player with a Raspberry Pi Zero 2 W for a brain, masquerading as an iPod.</p>
<p>The post <a href="https://www.raspberrypi.com/news/the-ipod-is-back-kinda/">The iPod is back&#8230; kinda</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/the-ipod-is-back-kinda/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-11, from: Miguel de Icaza Mastondon feed)

<p>When you have an iPad sitting next to a Mac, if you push your cursor with the trackpad on the edge, it can move to the iPad.</p><p>The question is: what sorcery is MacOS using to figure out in which side the iPad is sitting?   I did not tell MacOS this at all, and it just figured it out.</p> 

<https://mastodon.social/@Migueldeicaza/112768662780552742>

---

##  Gene Kelly Doesn&#8217;t Want to Perform Singin&#8217; in the Rain on the Muppet Show 

date: 2024-07-11, updated: 2024-07-11, from: Jason Kottke blog

 

<https://kottke.org/24/07/gene-kelly-doesnt-want-to-perform-singin-in-the-rain-on-the-muppet-show>

---

## IN YOUR OWN TIME, JOE

date: 2024-07-11, from: Howard Jacobson blog

Remember Kamala Harris laughing throatily on the phone to Biden after they&#8217;d dumped Trump in 2020? &#8216;We did it, Joe. We did it. You&#8217;re gonna be the next President of the United States.&#8217; Erotic, I thought. The hottest words a woman could ever speak to a man. &#8216;We did it, Joe.&#8217; 

<https://jacobsonh.substack.com/p/in-your-own-time-joe>

---

## Take a Summer Cosmic Road Trip With NASA’s Chandra and Webb

date: 2024-07-11, from: NASA breaking news

It’s time to take a cosmic road trip using light as the highway and visit four stunning destinations across space. The vehicles for this space get-away are NASA’s Chandra X-ray Observatory and James Webb Space Telescope. The first stop on this tour is the closest, Rho Ophiuchi, at a distance of about 390 light-years from [&#8230;] 

<https://www.nasa.gov/image-article/take-a-summer-cosmic-road-trip-with-nasas-chandra-and-webb/>

---

## Coffee Pot – The Movie

date: 2024-07-11, from: Status-Q blog

For a long time, it has both bugged and bemused me that, though the first webcam ran for 10 years taking photos of our departmental coffee pot, there are almost no original images saved from the millions it served up to viewers around the world! I had one or two. Then, suddenly, in a recent <a class="more-link excerpt-link" href="https://statusq.org/archives/2024/07/11/12127/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<https://statusq.org/archives/2024/07/11/12127/>

---

##  Enduring 129°F in Death Valley. &#8220;The breeze only makes things worse, by... 

date: 2024-07-11, updated: 2024-07-11, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044938-enduring-129f-in-death-va>

---

## Acting Center Chief Technologist Dr. Phillip Williams

date: 2024-07-11, from: NASA breaking news

&#8220;I did not know that NASA Langley was right here in my own backyard. I was born and raised in Portsmouth, Virginia, and NASA Langley is in Hampton, about 45 minutes away. All throughout elementary school, I didn&#8217;t know that NASA was here. I always thought NASA was in Florida or Texas or somewhere. &#8220;I [&#8230;] 

<https://www.nasa.gov/image-article/acting-center-chief-technologist-dr-phillip-williams/>

---

## Seville, Spain

date: 2024-07-11, from: mrusme blog

"Seville is the capital and largest city of the Spanish autonomous community
of Andalusia and the province of Seville. It is situated on the lower reaches
of the River Guadalquivir, in the southwest of the Iberian Peninsula." 

<https://xn--gckvb8fzb.com/travel/spain/seville/>

---

## Voyagers of Mars: The First CHAPEA Crew’s Yearlong Journey

date: 2024-07-11, from: NASA breaking news

When the first humans travel to the Red Planet, they will need to know how to repair and maintain equipment, grow their own food, and stay healthy, all while contending with Earth-to-Mars communication delays. They must also find ways to build comradery and have fun.&#160; The first all-volunteer CHAPEA (Crew Health and Performance Exploration Analog) [&#8230;] 

<https://www.nasa.gov/missions/voyagers-of-mars-the-first-chapea-crews-yearlong-journey/>

---

## NASA’s Hubble Traces Dark Matter in Dwarf Galaxy Using Stellar Motions

date: 2024-07-11, from: NASA breaking news

The qualities and behavior of dark matter, the invisible “glue” of the universe, continue to be shrouded in mystery. Though galaxies are mostly made of dark matter, understanding how it is distributed within a galaxy offers clues to what this substance is, and how it’s relevant to a galaxy’s evolution. While computer simulations suggest dark […] 

<https://science.nasa.gov/missions/hubble/nasas-hubble-traces-dark-matter-in-dwarf-galaxy-using-stellar-motions/>

---

**@Dave Winer's Scripting News** (date: 2024-07-11, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/11/25/smallmap.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">If you listened to my audio blog posts in the summer of 2004, I recommend subscribing to the <a href="http://scripting.com/podcast0/rss.xml">new podcast0 feed</a>. I just listened to <a href="https://cyber.harvard.edu/blogs/gems/crimson1/coffeeNotesJuly11.mp3">the show</a> from this day 20 years ago. It was quite a throwback, lots of questions about what I was talking about, I've forgotten a lot of it. It took a full hour to prepare the feed. I can tell this is going to be quite a flashback experience. Maybe it'll get me in the mode to do some serious innovating, because we were on fire and didn't know it, in so many ways, back in the summer of 2004. 

<http://scripting.com/2024/07/11.html#a135750>

---

##  Ayo Edebiri Browses the Criterion Collection 

date: 2024-07-11, updated: 2024-07-11, from: Jason Kottke blog

 

<https://kottke.org/24/07/ayo-edebiri-browses-the-criterion-collection>

---

## Attention Civil Servant Retirees

date: 2024-07-11, from: NASA breaking news

NASA’s Glenn Research Center civil servant retirees are invited to attend the 2024 Summerfest!&#160; Wednesday, Aug. 7, 11 a.m. to 2:30 p.m.&#160;&#160; Along Taylor Road at Lewis Field&#160; For more information or to RSVP, contact Kathy Clark at 216–433–8354 or kathy.m.clark@nasa.gov&#160; Registration closes: July 26&#160; 

<https://www.nasa.gov/centers-and-facilities/glenn/attention-civil-servant-retirees/>

---

## Names I Haven&#8217;t Heard in a Long Time

date: 2024-07-11, updated: 2024-07-11, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/07/11/names-i-havent-heard-in-a-long-time/>

---

## 
                A little SLIP gateway for my OS/2 Warp 3.0 box
            

date: 2024-07-11, updated: 2024-07-11, from: Uninformative blog

 

<https://www.uninformativ.de/blog/postings/2024-07-11/0/POSTING-en.html>

---

## Celebrating the community: Yang

date: 2024-07-11, from: Raspberry Pi (.org)

<p>We love hearing from members of the community and sharing the stories of amazing young people, volunteers, and educators who are using their passion for technology to create positive change in the world around them. In our latest story, we’re heading to London to meet Yang, a Manager in Technology Consulting at EY specialising in&#8230;</p>
<p>The post <a href="https://www.raspberrypi.org/blog/celebrating-the-community-yang/">Celebrating the community: Yang</a> appeared first on <a href="https://www.raspberrypi.org">Raspberry Pi Foundation</a>.</p>
 

<https://www.raspberrypi.org/blog/celebrating-the-community-yang/>

---

## Firefox 128 bumps system requirements for old boxes

date: 2024-07-11, updated: 2024-07-11, from: Liam Proven's articles at the Register

<h4>Get comfortable, it'll be here for a while</h4>
      <p>Firefox 128 is out with a relatively modest feature set – but it will also be the latest Extended Support Release (ESR) release, meaning that the end for Firefox 115 is coming into view.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/07/11/firefox_128_new_esr/>

---

## Deno 1.45: Workspace and Monorepo Support

date: 2024-07-11, updated: 2024-07-11, from: Deno blog

Deno 1.45 introduces workspaces and monorepo support, improved Node.js compatibility, updates to `deno install`, the new `deno init --lib` command, deprecation of `deno vendor`, Standard Library stabilization, upgrades to V8 12.7 and TypeScript 5.5.2, and more. 

<https://deno.com/blog/v1.45>

---

## Zweiter Faktor SMS: Noch schlechter als sein Ruf

date: 2024-07-11, updated: 2024-07-11, from: Chaos Computer Club

Einmalpasswörter werden oft per SMS versendet. Sicherheitsforscher des CCC hatten nun Live-Zugriff auf 200 Millionen solcher SMS von mehr als 200 betroffenen Unternehmen. 

<https://www.ccc.de/de/updates/2024/2fa-sms>

---

## How does electric car adoption vary across US states?

date: 2024-07-11, from: Hannah Richie at Substack

Electric cars tend to be more popular in blue states. Why? 

<https://www.sustainabilitybynumbers.com/p/us-states-electric-cars>

---

## If AI chatbots are the future, I hate it

date: 2024-07-11, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">If AI chatbots are the future, I hate it</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p><img width="500" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/speedtest-graph-att-dropoff.png" alt="AT&amp;T Fiber Internet - speedtest graph"></p>

<p>About a week ago, my home Internet (AT&amp;T Fiber) went from the ~1 Gbps I pay for down to about 100 Mbps (<a href="https://www.jeffgeerling.com/blog/2021/monitor-your-internet-raspberry-pi">see how I monitor my home Internet with a Pi</a>). It wasn't too inconvenient, and I considered waiting it out to see if the speed recovered at some point, because latency was fine.</p>

<p>But as you can see around 7/7 on that graph, the 100 Mbps went down to about <em>eight</em>, and that's the point where my wife starts noticing how slow the Internet is. Action level.</p>

<p>So I fired up AT&amp;T's support chat. I'm a programmer, I can usually find ways around the wily ways of chatbots.</p>

<p>Except AT&amp;T's AI-powered chatbot seems to have a fiendish tendency to equate 'WiFi' with 'Internet', no doubt due to so many people thinking they are one and the same.</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-07-10T20:08:00-05:00" title="Wednesday, July 10, 2024 - 20:08" class="datetime">July 10, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/if-ai-chatbots-are-future-i-hate-it>

---

**@Dave Winer's Scripting News** (date: 2024-07-11, from: Dave Winer's Scripting News)

I agree with <a href="https://www.manton.org/2024/07/10/looking-at-my.html">Manton</a>. The way the twitter-alikes do discourse is not the only possible way, and imho, and, as I've said <a href="http://scripting.com/stories/2007/12/17/howSpamWillLikelyEnterTheT.html">before</a> (in 2007!), most of what passes for discourse on twitter is actually spam, and that goes for Masto, Threads, Bluesky and Facebook (aka FriendFeed). 

<http://scripting.com/2024/07/10.html#a003934>

---

##  There&#8217;s a Devil Wears Prada sequel coming&#8230; &#8220;Gird your loins.&#8221;... 

date: 2024-07-10, updated: 2024-07-10, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044937-theres-a-devil-wears-prad>

---

**@Tomosino's Mastodon feed** (date: 2024-07-10, from: Tomosino's Mastodon feed)

<p>I finished wrapping my choose your own adventure books in paper covers to keep them safe. I also decided to donate all my duplicates and the books from the newer <a href="https://tilde.zone/tags/cyoa" class="mention hashtag" rel="tag">#<span>cyoa</span></a> series. I'm just going to keep those from the 70s-90s.  </p><p>If you weren't aware, I used to have an internet radio show where I read these books and the listeners chose our path. It was a lot of fun and the archives are all on my <a href="https://tilde.zone/tags/gopher" class="mention hashtag" rel="tag">#<span>gopher</span></a> hole. I also have a how-to guide on making paper book covers on there as well. Gopher rules.</p><p>I'm a bit behind on my reading goal for the year because I was reading really really long books in the first half. I think I might run through some of these to make up the difference.</p> 

<https://tilde.zone/@tomasino/112764782663345232>

---

##  XKCD: A Crossword Puzzle 

date: 2024-07-10, updated: 2024-07-10, from: Jason Kottke blog

 

<https://kottke.org/24/07/xkcd-a-crossword-puzzle>

---

## 2024-07-09 Murten

date: 2024-07-10, from: Alex Schroeder's Blog

<h1 id="2024-07-09-murten">2024-07-09 Murten</h1>

<p>We&rsquo;re spending two nights in Murten or Morat. The lake is small with a circumference of about 25km. <a href="2018-murten/index">A few years ago</a> we ran around it – but today we ran about six or seven kilometres before turning back. 13km is enough, these days. We&rsquo;re both out of shape, sadly.</p>

<p>Just after sunset, looking out over the lake.</p>

<p><img loading="lazy" src="2024-07-09-murten-1.jpg" alt="" /></p>

<p>Working on a half-enclosed patio until late into the night. There was drunken shouting to be heard until midnight, on a Monday. I did not know that this sleepy town was so rowdy!</p>

<p><img loading="lazy" src="2024-07-09-murten-2.jpg" alt="" /></p>

<p>The town itself looks unchanged from our last visit in 2018.</p>

<p><img loading="lazy" src="2024-07-09-murten-3.jpg" alt="" /></p>

<p>We ran over to the eastern side of the lake, a protected wetland.</p>

<p><img loading="lazy" src="2024-07-09-murten-4.jpg" alt="" /></p>

<p>Our destination was this village at the foot of <a href="https://en.wikipedia.org/wiki/Mont_Vully">Mont Vully</a>.
A rather small mountain.</p>

<p><img loading="lazy" src="2024-07-09-murten-5.jpg" alt="" /></p>

<p>It got rather hot so by the time we arrived in Sugiez, I was so very tired. My wife took this picture.</p>

<p><img loading="lazy" src="2024-07-09-murten-6.jpg" alt="" /></p>

<p>Canals connect the lake of Murten, the lake of Neuchâtel and the lake of Bienne. So many motorboats with proud men and underdressed women going up and down the channel. 🙄</p>

<p><img loading="lazy" src="2024-07-09-murten-7.jpg" alt="" /></p>

<p>The first sunflowers are out! My wife took this picture.</p>

<p><img loading="lazy" src="2024-07-09-murten-8.jpg" alt="" /></p>

<p><a class="tag" href="/search/?q=%23Switzerland">#Switzerland</a> <a class="tag" href="/search/?q=%23Pictures">#Pictures</a></p>

<p><strong>2024-07-10</strong> I was interested in the <a href="https://en.wikipedia.org/wiki/Battle_of_Morat">Battle of Morat</a>.</p>

<blockquote>
<p>On 22 June 1476, Charles the Bold, Duke of Burgundy, laid siege to the place in an action known as the Battle of Morat. The town hung on for 13 days but finally was saved by the Bernese army. The enemy&rsquo;s army was destroyed completely — some 10,000 Burgundians were killed. Since then, Murten celebrates the victory every year on June 22. – <a href="https://en.wikipedia.org/wiki/Murten">Murten</a>, Wikipedia</p>
</blockquote>

<p>I was impressed with a black and white image of the battle on the Wikipedia page but felt it didn&rsquo;t have enough resolution. I started looking for a better scan. e-rara, &ldquo;the platform for digitized rare books from Swiss institutions&rdquo; has <a href="https://doi.org/10.3931/e-rara-5076">the book</a>!</p>

<p><img loading="lazy" src="2024-07-09-murten-10.png" alt="A black and white depiction of the battle" /></p>

<p>Die Schlacht bei Murten, Seite 265, aus Stumpf, Johannes: Gemeiner
loblicher Eydgnoschafft Stetten, Landen und Völckeren Chronick
wirdiger Thaaten Beschreybung [&hellip;]. Getruckt
Zürych in der Eydgnoschafft : bey Christoffel Froschouer, 1548.
Zentralbibliothek Zürich., AW 40: 1-2</p>

<p>In the common room of our place in Murten, I found a very nice reproduction of an image from the Lucerne Chronicle and took a photo using my phone.</p>

<p><img loading="lazy" src="2024-07-09-murten-9.jpg" alt="A colourful depiction of the battle" /></p>

<p>Diebold Schilling der Jüngere: Luzerner Chronik. Doppelseitige Blätter 107b/108a, um 1511–1513</p>

<p>All these cruelties of war. The guy that climbed a tree and gets stabbed. The decapitated corpses, some of them stripped naked. The people hanging from the tree. The soldiers drowning. Ooof!</p>

<p>Apparently the <a href="https://www.e-codices.unifr.ch/de/list/one/kol/S0023-2">Lucerne Chronicles</a> can be found in e-codices, Virtual Manuscript Library of Switzerland.
&ldquo;The goal of e-codices is to provide free access to all medieval and a selection of modern manuscripts of Switzerland by means of a virtual library.&rdquo;
The book is in the public domain and yet the site says <a href="https://creativecommons.org/licenses/by-nc/4.0/">CC BY NC 4.0</a>.</p>

<p>When I looked at page 107, I didn&rsquo;t see the image above, however. Some more investigation is required.</p>

<p>Actually, I did find it! Pages 218–219 are the ones I was looking for. I downloaded the &ldquo;large&rdquo; pages, stitched them together in Gimp, saved them using 80% quality (😥) and uploaded them.</p>

<p><img loading="lazy" src="2024-07-09-murten-10.jpg" alt="" /></p> 

<https://alexschroeder.ch/view/2024-07-09-murten>

---

## New Ways to Search Archived Music News

date: 2024-07-10, from: Internet Archive Blog

When MTVNews.com went offline in late June, Internet users were quick to discover that some (but sadly, not all) of the site had been archived in the Internet Archive’s Wayback [&#8230;] 

<https://blog.archive.org/2024/07/10/new-ways-to-search-archived-music-news/>

---

##  I&#8217;ve linked to these before, but the Do Not Reply images (which... 

date: 2024-07-10, updated: 2024-07-10, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044921-ive-linked-to-these-befor>

---

## About the Office of the General Counsel

date: 2024-07-10, from: NASA breaking news

The Office of the General Counsel provides functional leadership regarding legal services and issues related to all aspects of NASA activities for Center Chief and Patent Counsel and, for Agency-wide issues, the Administrator. These services and issues include establishing and disseminating legal policy and interpreting new statutes and cases. The Office of the General Counsel [&#8230;] 

<https://www.nasa.gov/organizations/about-the-office-of-the-general-counsel/>

---

##  The Teasingest Teaser Trailer for Severance Season Two 

date: 2024-07-10, updated: 2024-07-10, from: Jason Kottke blog

 

<https://kottke.org/24/07/the-teasingest-teaser-trailer-for-severance-season-two>

---

## AmigaKit launches a new Amiga that’s not an Amiga at all

date: 2024-07-10, from: OS News

I try to keep tabs on a huge number of operating system projects out there &#8211; for obvious reasons &#8211; but long ago I learned that when it comes to the world of Amiga, it&#8217;s best to maintain distance and let any important news find its way out of the Amiga bubble, lest one loses their sanity. Keeping up with the Amiga world requires following every nook and cranny of various forums and websites with different allegiances to different (shell) companies, with often barely coherent screeching and arguments literally nobody cares about. It&#8217;s a mess is what I&#8217;m trying to say. Anyway, it seems one of the many small companies still somehow making a living in the Amiga world, AmigaKit, has recently released a new device, the A600GS. It&#8217;s a retrogaming-oriented Amiga computer, but it does come with something called AmiBench, that&#8217;s apparently a weird hybrid between bits of Amiga OS 4 and AROS, so it does also support running a proper desktop and associated applications, but only AmigaOS 3.x applications (I think? It&#8217;s a bit unclear). It has HDMI at up to 1080p, and even WiFi and Bluetooth support, which is pretty neat. Wait, Wifi and Bluetooth support? What are we really dealing with here? Once again the information is hard to find because AmigaKit is incredibly stingy with specifications &#8211; I had to read goddamn YouTube comments to get some hints &#8211; but it seems to be a custom board with an Orange Pi Zero 3 stuck on top doing most of the work. In other words, the meat of this thing is just an emulator, which in and of itself isn&#8217;t a bad thing, it&#8217;s just weird to me that they&#8217;re not upfront and direct about this. While this answers some questions, it also raises a whole bunch more. If this is running on low-end Allwinner ARM hardware from 2022, how is this AmiBench desktop environment (or operating system?) a &#8220;fork of OS4 with AROS code in it&#8220;? AmigaOS 4 is PowerPC-only, which may explain why AmigaKit only mentions AmigaOS 3.x and 68K compatibility, and not AmigaOS 4 compatibility. And what&#8217;s AROS doing in there? I mean, this is an interesting product in the sense that it&#8217;s a relatively cheap turnkey solution for classic Amiga enthusiasts, but a new Amiga this is definitely not. At about €130, this is not a bad deal, but other than hardcore fans of the classic 68K Amiga, I don&#8217;t see many people being interested in this. The Apollo Standalone V4+ piques my interest way more, but at €700-800, it&#8217;s also a lot more expensive, but at least they&#8217;re much clearer about what the Apollo is, what software it&#8217;s running, and that they&#8217;re giving back their work to AROS. 

<https://www.osnews.com/story/140197/amikit-launches-a-new-amiga-thats-not-an-amiga-at-all/>

---

## Donkey Kong Country OST (SNES)

date: 2024-07-10, from: Tilde.news

<p><a href="https://tilde.news/s/te3jqr/donkey_kong_country_ost_snes">Comments</a></p> 

<https://archive.org/details/DonkeyKongCountryOST>

---

## NASA CubeSat Launches as Rideshare on ESA’s First Ariane 6 Rocket

date: 2024-07-10, from: NASA breaking news

NASA launched CURIE (CubeSat Radio Interferometry Experiment) as a rideshare payload on the inaugural flight of ESA’s (European Space Agency) Ariane 6 rocket, which launched at 4 p.m. GFT on July 9 from Europe’s Spaceport, the Guiana Space Center in Kourou, in French Guiana. Designed by a team from the University of California, Berkeley, CURIE [&#8230;] 

<https://www.nasa.gov/image-article/nasa-cubesat-launches-as-rideshare-on-esas-first-ariane-6-rocket/>

---

## USPS Metadata Surveillance Program

date: 2024-07-10, from: Michael Tsai

Tim Cushing: The USPS wasn&#8217;t filing its required paperwork tracking government requests for snail mail info. The USPS rarely rejected another government agency&#8217;s demand for mail metadata. And the problems weren&#8217;t minute. The forms detailing compliance with government demands for data often weren&#8217;t being filed until more than two years after those reports were due. [&#8230;] 

<https://mjtsai.com/blog/2024/07/10/usps-metadata-surveillance-program/>

---

## The Unofficial Apple AI Weblog

date: 2024-07-10, from: Michael Tsai

TUAW: The Unofficial Apple Weblog (TUAW) has been a cornerstone of Apple-related journalism since its establishment on December 5, 2004. Acquired by Web Orange Limited from Yahoo IP Holdings LLC in 2024 without its original content, our mission has been rejuvenated to continue providing Apple enthusiasts and tech professionals with authoritative and engaging content. We [&#8230;] 

<https://mjtsai.com/blog/2024/07/10/the-unofficial-apple-ai-weblog/>

---

## Calling AI a Bubble

date: 2024-07-10, from: Michael Tsai

Ron Miller (via Hacker News): [Rodney Brooks] knows what he&#8217;s talking about, and he thinks maybe it&#8217;s time to put the brakes on the screaming hype that is generative AI. Brooks thinks it&#8217;s impressive technology, but maybe not quite as capable as many are suggesting. &#8220;I&#8217;m not saying LLMs are not important, but we have [&#8230;] 

<https://mjtsai.com/blog/2024/07/10/calling-ai-a-bubble/>

---

## Google Maps Is Killing Timeline for Web

date: 2024-07-10, from: Michael Tsai

Emma Roth: Google Maps is changing the way it handles your location data. Instead of backing up your data to the cloud, Google will soon store it locally on your device.In an email sent to users, Google says you have until December 1st to save all your travels to your mobile device before it starts [&#8230;] 

<https://mjtsai.com/blog/2024/07/10/google-maps-is-killing-timeline-for-web/>

---

## Using DLARC, Amateur Radio Operators are Resurrecting Technical Ideas from the Past, Using 21st Century Tech

date: 2024-07-10, from: Internet Archive Blog

A Thank You to Internet Archive&#8217;s Digital Library of Amateur Radio &#38; Communicationsby Steve Stroh N8GNJ In 2021, I was a member of the committee that recommended approval of a&#160;significant [&#8230;] 

<https://blog.archive.org/2024/07/10/using-dlarc-amateur-radio-operators-are-resurrecting-technical-ideas-from-the-past-using-21st-century-tech/>

---

## The Marshall Star for July 10, 2024

date: 2024-07-10, from: NASA breaking news

NASA Moon Rocket Stage for Artemis II Moved, Prepped for Shipment NASA is preparing the&#160;SLS (Space Launch System)&#160;rocket core stage that will help power the first crewed mission of NASA’s Artemis campaign for shipment. On July 6, NASA and Boeing, the core stage lead contractor, moved the Artemis II rocket stage to another part of [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/marshall/the-marshall-star-for-july-10-2024/>

---

## Surfing NASA’s Internet of Animals: Satellites Study Ocean Wildlife

date: 2024-07-10, from: NASA breaking news

Anchoring the boat in a sandbar, research scientist Morgan Gilmour steps into the shallows and is immediately surrounded by sharks. The warm waters around the tropical island act as a reef shark nursery, and these baby biters are curious about the newcomer. They zoom close and veer away at the last minute, as Gilmour slowly [&#8230;] 

<https://www.nasa.gov/general/surfing-nasas-internet-of-animals-satellites-study-ocean-wildlife/>

---

##  Did you know you can renew your US passport online now? The... 

date: 2024-07-10, updated: 2024-07-10, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044929-did-you-know-you-can>

---

## A Midsummer Red Sprite Seen from Space

date: 2024-07-10, from: NASA breaking news

NASA astronaut Matthew Dominick photographed red sprites in Earth’s upper atmosphere from the International Space Station on June 3, 2024. The bright red flashes (more easily seen by clicking on the photo to see a larger version) are a less understood phenomena associated with powerful lightning events and appear high above the clouds in the [&#8230;] 

<https://www.nasa.gov/image-article/a-midsummer-red-sprite-seen-from-space/>

---

##  New book out this fall: Comic Sans: The Biography of a Typeface.... 

date: 2024-07-10, updated: 2024-07-10, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044928-new-book-out-this-fall>

---

## NASA Deputy Administrator Strengthens Ties in Japan, Republic of Korea

date: 2024-07-10, from: NASA breaking news

NASA Deputy Administrator Pam Melroy will visit Japan and the Republic of Korea beginning Thursday, July 11, to underscore the critical role of international cooperation in advancing space exploration and technology development. During her week-long visit to the region, Melroy will engage with ministers and other senior government officials in both countries, including leaders from [&#8230;] 

<https://www.nasa.gov/news-release/nasa-deputy-administrator-strengthens-ties-in-japan-republic-of-korea/>

---

## Nancy Pelosi

date: 2024-07-10, from: Dave Winer's Scripting News

<p>I kind of like what Nancy Pelosi is doing.</p>
<p>She's got a unique role to play, as a master of Washington and national politics.</p>
<p>She stepped down as Democratic leader in the House to let a new generation lead, yet maintained here position as sort of overseeing and giving her blessings to how they go forward.</p>
<p>She also helped organize the Jan 6 committee, which in the end was the only real official judgement of Trump on the insurrection before the election. </p>
<p>I don't know how she and Biden get along.</p>
<p>It's much better to have her leading this discussion than the children who write the NYT these days. Playing with powerful tools/weapons they don't understand, at best, being manipulated by vicious fascists at worst.</p>
<p>I trust Pelosi in this situation, we're lucky to have her.</p>
 

<http://scripting.com/2024/07/10/160811.html?title=nancyPelosi>

---

## Sols 4239-4240: ‘Vuggin’ Out’

date: 2024-07-10, from: NASA breaking news

Earth planning date: Monday, July 8, 2024 And just like we planned, Curiosity successfully drove about 11 meters (about 36 feet) after a 27-sol drill campaign at Mammoth Lakes! Not so fast, though, these rocks are just too interesting to leave behind so quickly. Instead of high-tailing it uphill like we usually do after a […] 

<https://science.nasa.gov/blogs/sols-4239-4240-vuggin-out/>

---

## She's got it all!

date: 2024-07-10, from: Dave Winer's Scripting News

<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/07/10/wordleRollerCoaster.png"></center>Imagine what kind of roller coaster you could build on the moon.</div></p>
 

<http://scripting.com/2024/07/10/150459.html?title=shesGotItAll>

---

##  The Science Behind the Emotions in Inside Out 2 

date: 2024-07-10, updated: 2024-07-10, from: Jason Kottke blog

 

<https://kottke.org/24/07/the-science-behind-the-emotions-in-inside-out-2>

---

## NASA’s Hubble Finds Strong Evidence for Intermediate-Mass Black Hole in Omega Centauri

date: 2024-07-10, from: NASA breaking news

Most known black holes are either extremely massive, like the supermassive black holes that lie at the cores of large galaxies, or relatively lightweight, with a mass of under 100 times that of the Sun. Intermediate-mass black holes (IMBHs) are scarce, however, and are considered rare “missing links” in black hole evolution. Now, an international […] 

<https://science.nasa.gov/missions/hubble/nasas-hubble-finds-strong-evidence-for-intermediate-mass-black-hole-in-omega-centauri/>

---

## Raspberry Pi AI Kit update: Dataflow Compiler now available

date: 2024-07-10, from: Raspberry Pi News (.com)

<p>The newly released Hailo Dataflow Compiler (DFC) enables you to use your own data, or even your own model, with the Raspberry Pi AI Kit.</p>
<p>The post <a href="https://www.raspberrypi.com/news/raspberry-pi-ai-kit-update-dataflow-compiler-now-available/">Raspberry Pi AI Kit update: Dataflow Compiler now available</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/raspberry-pi-ai-kit-update-dataflow-compiler-now-available/>

---

## “I fixed a 6-year-old .deb installation bug in Ubuntu MATE and Xubuntu”

date: 2024-07-10, from: OS News

I love a good bug hunting story, and this one is right up there as a great one. Way back in 2018, Doug Brown discovered that after installing Ubuntu MATE 18.04, if he launched Firefox from the icon in the default panel arrangement to install Chrome from the official Chrome website, the process was broken. After downloading the .deb and double-clicking it, GDebi would appear, but after clicking &#8220;Install&#8221;, nothing happened. What was supposed to happen is that after clicking &#8220;Install&#8221;, an authentication dialog should appear where you enter your root password, courtesy of gksu. However, this dialog did not appear, and without thinking too much of it, Brown shrugged and just installed the downloaded Chrome .deb through the terminal, which worked just fine. While he didn&#8217;t look any deeper into the cause of the issue, he did note that as the years and new Ubuntu releases progressed, the bug would still be there, all the way up until the most recent release. Finally, 2.5 years ago, he decided to dive into the bug. It turned out there were lots of reports about this issue, but nobody stepped up to fix it. While workarounds were made available through wrapper scripts, and deeper investigations into the cause revealed helpful information. The actual error message was a doozy: &#8220;Refusing to render service to dead parents&#8221;, which is quite metal and a little disturbing. In summary, the problem was that GDebi was using execv() to replace itself with an instance of pkexec, which was intended to bring up an authentication dialog and then allow GDebi to run as a superuser. pkexec didn’t like this arrangement, because it wants to have a parent process other than init. Alkis mentioned that you could recreate the problematic scenario in a terminal window by running gdebi-gtk with setsid to run it in a new session. ↫ Doug Brown Backing up a few steps, if the name &#8220;gksu&#8221; rings a bell for you, you might have already figured out where the problem most likely originated from. Right around that time, 2018, Ubuntu switched to using PolicyKit instead, and gksu was removed from Ubuntu. GDebi was patched to work with PolicyKit instead, and this was what introduced the actual bug. Sadly, despite having a clear idea of the origin of the bug, as well as where to look to actually fix it, nobody picked it up. It sat there for years, causing problems for users, without a fix in sight. Brown was motivated enough to fix it, submitted the patch, but after receiving word it would be looked at within a few days, he never heard anything back for years, not helped by the fact that GDebi has long been unmaintained. It wasn&#8217;t until very recently that he decided to go back again, and this time, after filling out additional information required for a patch for an unmaintained package, it was picked up, and will become available in the next Ubuntu release (and will most likely be backported, too). Brown further explains why it took so long for the bug to be definitely fixed. Not only is GDebi unmaintained, the bug also only manifested itself when launching Firefox from the panel icon &#8211; it did not manifest when launching Firefox from the MATE menu, so a lot of people never experienced it. On top of that, as we all sadly know, Ubuntu replaced the Firefox .deb package with the SNAP version, which also doesn&#8217;t trigger the bug. It&#8217;s a long story for sure, but a very interesting one. It shows how sometimes, the stars just align to make sure a bug does not get fixed, even if everyone involved knows how to fix it, and even if fixes have been submitted. Sometimes, things just compound to cause a bug to fall through the cracks. 

<https://www.osnews.com/story/140188/i-fixed-a-6-year-old-deb-installation-bug-in-ubuntu-mate-and-xubuntu/>

---

## NASA Administrator, Leaders to Discuss Space-Based Cancer Research

date: 2024-07-10, from: NASA breaking news

As part of the Biden Cancer Moonshot, NASA will virtually host an event at 2 p.m. EDT Thursday, July 11, to highlight how the agency is working to end cancer for the benefit of humanity by conducting research aboard the International Space Station. The event will stream on NASA Television, the&#160;NASA app, and the&#160;agency’s&#160;website. Learn [&#8230;] 

<https://www.nasa.gov/news-release/nasa-administrator-leaders-to-discuss-space-based-cancer-research/>

---

## First Mars Crew Completes Yearlong Simulated Red Planet NASA Mission

date: 2024-07-10, from: NASA breaking news

The inaugural CHAPEA (Crew Health and Performance Exploration Analog) crew is “back on Earth” after walking out of their simulated Martian habitat at NASA’s Johnson Space Center in Houston on July 6. The first of three simulated missions, CHAPEA Mission 1 was designed to help scientists, engineers, and mission planners better understand how living on [&#8230;] 

<https://www.nasa.gov/missions/analog-field-testing/chapea/first-mars-crew-completes-yearlong-simulated-red-planet-nasa-mission/>

---

## How America’s Fastest Swimmers Use Math to Win Gold

date: 2024-07-10, from: Quanta Magazine

Number theorist Ken Ono is teaching Olympians to swim more efficiently.            <p>The post <a href="https://www.quantamagazine.org/how-americas-fastest-swimmers-use-math-to-win-gold-20240710/" target="_blank">How America’s Fastest Swimmers Use Math to Win Gold</a> first appeared on <a href="https://api.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<https://www.quantamagazine.org/how-americas-fastest-swimmers-use-math-to-win-gold-20240710/>

---

## Splog Prevention

date: 2024-07-10, from: Tedium site

Why I ended up taking ownership of the domain where my late-2000s newspaper lived—and why you might want to consider doing the same. 

<https://feed.tedium.co/link/15204/16739665/websites-domains-spam-prevention>

---

## 30 Years Ago: STS-65, the Second International Microgravity Lab Mission

date: 2024-07-10, from: NASA breaking news

On July 8, 1994, space shuttle Columbia took to the skies on its 17th trip into space, on the second International Microgravity Laboratory (IML-2) mission. Six space agencies sponsored 82 life and microgravity science experiments. The seven-person crew consisted of Commander Robert D. Cabana, Pilot James D. Halsell, Payload Commander Richard J. Hieb, Mission Specialists [&#8230;] 

<https://www.nasa.gov/history/30-years-ago-sts-65-the-second-international-microgravity-lab-mission/>

---

##  The International Astronomical Union is currently running an open competition to name... 

date: 2024-07-10, updated: 2024-07-10, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044931-the-international-astrono>

---

## Coming of Age during Wartime in Sudan: A Conversation with Omnia Mustafa

date: 2024-07-10, from: Logic Magazine


                <p>Omina Mustafa and Khadijah Abdurqhman discuss Mustafa’s experience of race and racialization as an African Arab person from northern Sudan, and the atrocities being committed against the people of Darfur and western Sudan.</p>

             

<https://logicmag.io/issue-21-medicine-and-the-body/coming-of-age-during-wartime-in-sudan-a-conversation-with-omnia-mustafa>

---

## Small Systems Engineering's PETSPEED

date: 2024-07-10, from: Computer ads from the Past

Fast Enough for the Human Race 

<https://computeradsfromthepast.substack.com/p/small-systems-engineerings-petspeed>

---

## Resuming the Podcast0 feed

date: 2024-07-10, from: Dave Winer's Scripting News

<p>A new episode for the <a href="https://this.how/podcast0/">Podcast0 feed</a>.</p>
<p>After a break since June 20, we now resume my original "audio blog" from the summer of 2004, twenty years ago.</p>
<p>I was just beginning to figure out how this new medium worked, and rather than record my own thoughts, as with the previous two episodes, I published audio from another source, my meditation teacher, Jeru Kabbal. </p>
<p>Starting with the next episode, tomorrow, an interview with Steve Gillmor, one of the earliest podcast pioneers -- we'll have an original audio blog post. That's when the pulse really starts. </p>
<p>A <a href="https://imgs.scripting.com/2024/07/10/upcomingEpisodes.png">screen shot</a> of upcoming episodes from <a href="http://morningcoffeenotes.com/">morningcoffeenotes</a>.</p>
<p>Here's the <a href="https://podcasts.apple.com/us/podcast/quantum-light-breath/id1752527298?i=1000661785816">Apple Podcasts</a> page for this episode. </p>
<p>I've been making mistakes in 2024 on almost every episode. This time I got the title wrong, it's Sunrise of the Soul. Rather than change it, and take a chance of the episode showing up twice in some podcast clients, I'm just leaving it as-is. Trying to get a feel for how most of the clients work. Do they refresh posts, if the descriptions change (as this one is)? I don't know. </p>
<p>Do the clients strip out the HTML or do they support some of it? I wonder if links make it through to most clients?</p>
<p>The <a href="http://scripting.com/2024/06/17/152838.html">original post</a> for Podcast0.</p>
 

<http://scripting.com/2024/07/10/135952.html?title=resumingThePodcast0Feed>

---

## El Puerto de Santa Maria, Spain

date: 2024-07-10, from: mrusme blog

"El Puerto de Santa María, locally known as El Puerto and historically in
English as Port Saint Mary, is a municipality of Spain located on the banks of
the Guadalete River in the province of Cádiz, Andalusia. As of 2016, the city
has a population of c. 88,184, of which some 50,000 live in the urban center,
and the remainder in the surrounding areas." 

<https://xn--gckvb8fzb.com/travel/spain/el-puerto-de-santa-maria/>

---

## NASA Marshall Researchers Battle Biofilm in Space

date: 2024-07-10, from: NASA breaking news

A small group of scientists on the biofilm mitigation team at NASA’s Marshall Space Center in Huntsville, Alabama, study solutions to combat fast-growing colonies of bacteria or fungi, known as biofilm, for future space missions. Biofilm occurs when a cluster of bacteria or fungi generates a slimy matrix of “extracellular polymeric substances” to protect itself [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/marshall/nasa-marshall-researchers-battle-biofilm-in-space/>

---

**@Dave Winer's Scripting News** (date: 2024-07-10, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/12/15/bidenHarrisMask.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">If we were organized we could handle anything. The only reason we're panicking about Biden's capability is that our news flow is owned by largely invisible media moguls. The only way out of this mess is to route around them. 

<http://scripting.com/2024/07/10.html#a131754>

---

## How NeWS became yesterday's news in the window system wars

date: 2024-07-10, updated: 2024-07-10, from: Liam Proven's articles at the Register

<h4>X co-designer David Rosenthal looks back at why his other project failed</h4>
      <p>A couple of weeks after its anniversary, one of the original engineers behind X has explored why it succeeded where rivals – one of which he co-developed – failed.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/07/10/dshr_on_news_vs_x/>

---

## This  Is America, Redux

date: 2024-07-10, updated: 2024-07-10, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/07/10/this-is-america-redux/>

---

## Gateway: Illuminating the Future

date: 2024-07-10, from: NASA breaking news

View the Gateway space station's first pressurized module, HALO (Habitation and Logistics Outpost), illuminated in stunning detail. Learn more about its role in supporting Artemis missions. 

<https://www.nasa.gov/image-article/gateway-illuminating-the-future/>

---

## 2024/07/10 Everyday Life, Improved by Light: GRYPHON’s Photonic Discoveries

date: 2024-07-10, from: Darpa News

<div style="float:left"><img title="Gryphon" alt="Gryphon" src="https://www.darpa.mil/DDM_Gallery/Gryphon_Logo_619x316_thumb.jpg" border="0"/></div>Radio frequency (RF) and microwave signals are integral carriers of information for technology that enriches our everyday life - cellular communication, automotive radar sensors, and GPS navigation, among others. At the heart of each system is a single-frequency RF or microwave source, the stability and spectral purity of which is critical. While these sources are designed to generate a signal at a precise frequency, in practice the exact frequency is blurred by phase noise, arising from component imperfections and environmental sensitivity, that compromises ultimate system-level performance. 

<https://www.darpa.mil/news-events/2024-07-10>

---

**@Jessica Smith's blog** (date: 2024-07-10, from: Jessica Smith's blog)

<p>Was originally doing some research to make sure Australian bureaucrats can handle names with hyphens in them, and found this. Good thing we don’t live in Queensland, so we can still name our baby “Down With Capitalism”!</p>
<img src="https://www.jayeless.net/media/2024/07/naming-rules.png" alt="Restrictions on Baby Names: To protect children against careless and harmful names, the government had set out rules in registering baby names in Australia. The rules state that a child’s name must: not be obscene or offensive or contrary to public interest; (no racial slurs or infringements on the rights of another; be short and easy to write (In NSW, under 50 characters); not include symbols without phonetic significance such as N@talie, Da!sy, J#ke) or use numerals; not include or resemble an official title or military rank recognised in Australia such as King, Lady, Father, Prince, Sir or Admiral.Â  This was after a law was passed sometime in 1995 prohibiting the use of titles as part of the baby’s given name. use English letters only; not be similar to a recognised body, organisation or trademark; and In Queensland, the name can’t include a statement, like Save Mother Earth or Down with Capitalism."> 

<https://www.jayeless.net/2024/07/down-with-capitalism.html>

---

**@Dave Winer's Scripting News** (date: 2024-07-10, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/03/20/mrSmith.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">It bugs me that there’s all this focus on Biden, when what we really need is to organize as voters so we can be ready to deal with whatever happens. That’s the real problem. The press can point out a problem, and it is a problem, but no one has the ability to build a consensus among voters. I think it’s possible to put together an online version of the Democratic Party, something that never goes away, is available to rally the electorate at any moment. That’s the way to neutralize the power of the media moguls who have us wrapped around their fingers. 

<http://scripting.com/2024/07/09.html#a015602>

---

## RAG Trick: Embeddings are Spheres

date: 2024-07-10, updated: 2024-07-10, from: Tom Kellog blog

This post offers some helpful simplifications you can make when working with RAG or embeddings that help build a working mental model around them. Embeddings typically form a (hyper)sphere, because they're normalized. 

<http://timkellogg.me/blog/2024/07/10/spheres>

---

## Ora2Pg Support - Chatbot and Converter, have been Released !

date: 2024-07-10, from: PostgreSQL News

<p>Toronto, Canada - July 7th, 2024</p>
<h2>Ora2Pg Chatbot and Converter</h2>
<p>Ora2Pg is the most advanced database migration tool, for migrating Oracle databases to PostgreSQL.
Ora2Pg supports migrations from MySQL to PostgreSQL and lately supported SQL Server to PostgreSQL.</p>
<p>HexaCluster announces the Ora2Pg Support that includes an Ora2Pg Chatbot and Ora2Pg Converter.</p>
<h3>How to access ?</h3>
<p>Sign Up and start using for free : <a href="https://ora2pgsupport.hexacluster.ai/">https://ora2pgsupport.hexacluster.ai/</a></p>
<h3>Whats Included ?</h3>
<h4>Ora2Pg AI Chatbot</h4>
<ul>
<li>Sign Up for free</li>
<li>Start a Chat session and ask your questions about Ora2Pg and Database Migrations.</li>
<li>If you are not satisfied, click on "Continue with an Expert". You will now switch to "Expert mode".</li>
<li>Once you are in the "Expert mode", a Migration Specialist from HexaCluster will review and respond back to your request.</li>
</ul>
<h4>Ora2Pg Converter</h4>
<ul>
<li>Sign Up for free</li>
<li>Supports Unlimited conversions of Oracle schema to PostgreSQL. Just paste the Oracle DDL/Syntax and click on Convert, to generate PostgreSQL DDL/syntax.</li>
<li>Click on "Connect with an Expert" for Experts Assistance on incorrect or unsatisfied conversions.Links &amp; Credits</li>
<li>This project is created and maintained by HexaCluster Corp.</li>
</ul>
<h2>Links:</h2>
<ul>
<li>Ora2Pg Support : <a href="https://ora2pgsupport.hexacluster.ai/">https://ora2pgsupport.hexacluster.ai/</a></li>
<li>To provide Feedback or Ask additional questions, write to us at : <a href="mailto:connect@hexacluster.ai">connect@hexacluster.ai</a></li>
</ul> 

<https://www.postgresql.org/about/news/ora2pg-support-chatbot-and-converter-have-been-released-2892/>

---

## PGroonga 3.2.1 - Multilingual fast full text search

date: 2024-07-10, from: PostgreSQL News

<p>Hi,</p>
<p>PGroonga 3.2.1 has been released!</p>
<p>This release adds support for WAL resource manager!</p>
<p>With the WAL resource manager support, you can solve the
following problems with the general WAL approach in PGroonga &lt; 3.2.1:</p>
<ul>
<li>You need to remove old WAL manually to avoid unlimited storage usage</li>
<li>You need to use additional mechanism to apply WAL in background</li>
<li>You need to recover from a crash after PostgreSQL started</li>
</ul>
<p>See also the following document how to use this feature:
<a href="https://pgroonga.github.io/reference/streaming-replication-wal-resource-manager.html">Streaming replication by WAL resource manager</a></p>
<p>Note that you need PostgreSQL 15 or later because this is based on
custom WAL resource manager feature that is available since PostgreSQL 15. </p>
<p>If you're interesting in how to implement the WAL resource manager,
see also the following blog post:</p>
<p>Japanese:
<a href="https://www.clear-code.com/blog/2024/7/5/pgroonga-custom-wal-resource-manager.html">How to implement the PGroonga's WAL resource manager</a></p>
<p>English:
<a href="https://www-clear--code-com.translate.goog/blog/2024/7/5/pgroonga-custom-wal-resource-manager.html?_x_tr_sl=ja&amp;_x_tr_tl=en&amp;_x_tr_hl=ja&amp;_x_tr_pto=wapp">Google Translate of the post</a></p>
<h3>About PGroonga</h3>
<p><a href="https://pgroonga.github.io/">PGroonga</a> is a PostgreSQL extension that
makes PostgreSQL fast full text search platform for all languages!
It's released under PostgreSQL license.</p>
<p>There are some PostgreSQL extensions that improves full text search feature
of PostgreSQL such as pg_trgm<a href="https://www.postgresql.org/docs/current/static/pgtrgm.html">^1</a>.</p>
<p>pg_trgm doesn't support languages that use non-alphanumerics characters such
as Japanese and Chinese.</p>
<p>PGroonga supports all languages, provides rich full text search related
features and is very fast. Because PGroonga uses Groonga<a href="https://groonga.org/">^2</a> that is a
full-fledged full text search engine as backend.</p>
<p>See the following benchmark results for performance:</p>
<ul>
<li>Benchmark result for PGroonga, textsearch and pg_trgm with English Wikipedia
    https://pgroonga.github.io/reference/pgroonga-versus-textsearch-and-pg-trgm.html</li>
<li>Benchmark result for PGroonga and pg_bigm with Japanese Wikipedia
    https://pgroonga.github.io/reference/pgroonga-versus-pg-bigm.html</li>
</ul>
<p>PGroonga also supports JSON search. You can use each value
for condition. You can also perform full text search against
all texts in JSON like textsearch in PostgreSQL.</p>
<h3>Changes</h3>
<p>Here are highlights in PGroonga 3.2.1:</p>
<ul>
<li>Added support for WAL resource manager</li>
<li>Added support for downgrading by using <code>ALTER EXTENSION ... UPDATE</code></li>
<li>Added support for Ubuntu 24.04 (Noble Numbat)</li>
<li>Added support for typo-tolerance search</li>
<li>Fixed some crash bugs</li>
</ul>
<p>See also <a href="https://pgroonga.github.io/news/#version-3-2-1">the 3.2.1 release note</a>
for full changes.</p>
<h3>Usage</h3>
<p>You can use PGroonga without full text search knowledge. You
just create an index and puts a condition into WHERE:</p>
<pre><code>CREATE INDEX index_name ON table USING pgroonga (column);
SELECT * FROM table WHERE column &amp;@~ 'PostgreSQL';
</code></pre>
<p>You can also use LIKE to use PGroonga. PGroonga provides a
feature that performs LIKE with index. LIKE with PGroonga
index is faster than LIKE without index. It means that you
can improve performance without changing your application
that uses the following SQL:</p>
<pre><code>SELECT * FROM table WHERE column LIKE '%PostgreSQL%';
</code></pre>
<p>Are you interested in PGroonga? Please install<a href="https://pgroonga.github.io/install/">^4</a> and try
tutorial<a href="https://pgroonga.github.io/tutorial/">^5</a>. You can know all PGroonga features.</p>
<p>You can install PGroonga easily. Because PGroonga provides
packages for major platforms. There are binaries for
Windows.</p>
<p>Thanks,</p> 

<https://www.postgresql.org/about/news/pgroonga-321-multilingual-fast-full-text-search-2893/>

---

## un-football

date: 2024-07-09, from: Ayjay blog

Barney Ronay: Even England, this England’s version of hole-in-the-head football will give you dramatic interventions, trapped energy, last-minute overhead kicks. Somehow France entered this game as the only team at the Euros not to have registered an assist. Before this semi-final they played five games during which nobody on either team had scored from open play. This isn’t [&#8230;] 

<https://blog.ayjay.org/un-football/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-09, from: Miguel de Icaza Mastondon feed)

<p>Lovely work on Terminal.GUI 2.0, now with a UI designer, gradient colors and more</p><p><a href="https://gui-cs.github.io/Terminal.GuiV2Docs/" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">gui-cs.github.io/Terminal.GuiV</span><span class="invisible">2Docs/</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112759051351890858>

---

## Google extends Linux kernel support to keep Android devices secure for longer

date: 2024-07-09, from: OS News

Android, like many other operating systems, uses the open-source Linux kernel. There are several different types of Linux kernel releases, but the type that’s most important to Android is the long-term support (LTS) one, as they’re updated regularly with important bug fixes and security patches. Starting in 2017, the support lifetime of LTS releases of Linux was extended from two years to six years, but early last year, this extension was reversed. Fortunately, Google has announced that moving forward, they’ll support their own LTS kernel releases for four years. Here’s why that’s important for the security of Android devices. ↫ Mishaal Rahman at Android Authority I fully support the Linux kernel maintainers dropping the LTS window from six to two years. The only places where such old kernels were being used were embedded devices and things like smartphones vendors refused to update to newer Android releases, and it makes no sense for kernel maintainers to be worrying about that sort of stuff. If an OEM wants to keep using such outdated kernels, the burden should be on that OEM to support that kernel, or to update affected devices to a newer, supported kernel. It seems Google, probably wisely, realised that most OEMs weren&#8217;t going to properly upgrade their devices and the kernels that run on them, and as such, the search giant decided to simply create their own LTS releases instead, which will be supported for four years. Google already maintains various Android-specific Linux kernel branches anyway, so it fits right into their existing development model for the Android Linux kernel. Some of the more popular OEMs, like Google itself or Samsung, have promised longer support life cycles for new Android versions on their devices, so even with this new Android-specific LTS policy, there&#8217;s still going to be cases where an OEM will have to perform a kernel upgrade where they didn&#8217;t have to before with the six year LTS policy. I wonder if this is going to impact any support promises made in recent years. 

<https://www.osnews.com/story/140185/google-extends-linux-kernel-support-to-keep-android-devices-secure-for-longer/>

---

## Mozilla opts to extended Windows 7/8/8.1 support

date: 2024-07-09, from: OS News

Among them, Byron Jourdan, Senior Director, Product Management of Mozilla, under the Reddit username ComprehensiveDoor643 revealed that Mozilla plans to support Firefox on Windows 7 for longer. When asked separately about whether it also included Windows 8 and 8.1 too, Jourdan added that it was certainly the plan, though for how long the extended support would last was still undecided. ↫ Sayan Sen at Neowin Excellent move by Mozilla. I doubt there&#8217;s that many new features and frameworks in Windows 10 or 11 that are absolutely essential to Firefox working properly, so assuming it can gracefully disable any possible Windows 10/11-exclusive features, it should be entirely possible to use Firefox as an up-to-date, secure, and capable browser on Windows 7/8.x. Windows 7 and 8.x users still make up about 2.7% of Windows users worldwide, and with Windows&#8217; popularity, that probably still translates to millions and millions of people. Making sure these people have access to a safe and secure browser is a huge boon, and I&#8217;m very happy Mozilla is going to keep supporting these platforms as best they can, at least for now. For those of us who already consider especially Windows 7 a retrocomputing platform &#8211; I sure do &#8211; this is also great news, as any retro box or VM we load up with it will also get a modern browser. Just excellent news all around. 

<https://www.osnews.com/story/140183/mozilla-opts-to-extended-windows-7-8-8-1-support/>

---

## No more boot loader: please use the kernel instead

date: 2024-07-09, from: OS News

Most people are familiar with GRUB, a powerful, flexible, fully-featured bootloader that is used on multiple architectures (x86_64, aarch64, ppc64le OpenFirmware). Although GRUB is quite versatile and capable, its features create complexity that is difficult to maintain, and that both duplicate and lag behind the Linux kernel while also creating numerous security holes. On the other hand, the Linux kernel, which has a large developer base, benefits from fast feature development, quick responses to vulnerabilities and greater overall scrutiny. We (Red Hat boot loader engineering) will present our solution to this problem, which is to use the Linux kernel as its own bootloader. Loaded by the EFI stub on UEFI, and packed into a unified kernel image (UKI), the kernel, initramfs, and kernel command line, contain everything they need to reach the final boot target. All necessary drivers, filesystem support, and networking are already built in and code duplication is avoided. ↫ Marta Lewandowska I&#8217;m not a fan of GRUB. It&#8217;s too much of a single point of failure, and since I&#8217;m not going to be dual-booting anything anyway I&#8217;d much rather use something that isn&#8217;t as complex as GRUB. Systemd-boot is an option, but switching over from GRUB to systemd-boot, while possible on my distribution of choice, Fedora, is not officially supported and there&#8217;s no guarantee it will keep working from one release to the next. The proposed solution here seems like another option, and it may even be a better option &#8211; I&#8217;ll leave that to the experts to discuss. It seems like to me that the ideal we should be striving for is to have booting the operating system become the sole responsibility of the EUFI firmware, which usually already contains the ability to load any operating system that supports UEFI without explicitly installing a bootloader. It&#8217;d be great if you could set your UEFI firmware to just always load its boot menu, instead of hiding it behind a function key or whatever. We made UEFI more capable to address the various problems and limitations inherent in BIOS. Why are we still forcing UEFI to pretend it still has the same limitations? 

<https://www.osnews.com/story/140181/no-more-boot-loader-lease-use-the-kernel-instead/>

---

##  If dragons were real, how might fire-breathing work? &#8220;A dragon could draw... 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044908-if-dragons-were-real-how>

---

## NASA Inspires at 2024 ESSENCE Fest in New Orleans

date: 2024-07-09, from: NASA breaking news

NASA joined the self-designated “party with a purpose” to let participants in the 30th ESSENCE Festival of Culture in New Orleans know there is space for everybody at the space agency. NASA representatives from the agency’s Headquarters in Washington participated in a panel conversation about Black women in the aerospace industry and diversity in science, [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/stennis/essence-fest-2024/>

---

##  True statement that sounds completely false: Steph Curry cannot spin a basketball... 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044932-true-statement-that-sound>

---

## iOS 18: Vehicle Motion Cues

date: 2024-07-09, from: Michael Tsai

Tim Hardwick: According to Apple, research shows that motion sickness is commonly caused by a sensory conflict between what a person sees and what they feel, which can prevent some users from comfortably using iPhone or iPad while riding in a moving vehicle. Vehicle Motion Cues are designed to avoid this sensory conflict with the [&#8230;] 

<https://mjtsai.com/blog/2024/07/09/ios-18-vehicle-motion-cues/>

---

## CarPlay at WWDC24

date: 2024-07-09, from: Michael Tsai

Casper Kessels (April 2024, via Hacker News): The first version of CarPlay has been available since 2016 and has been a major success. For car industry standards, it was adopted quickly and by almost every carmaker. But since then, the car industry has been changing while the design and functionality of CarPlay have mostly stayed [&#8230;] 

<https://mjtsai.com/blog/2024/07/09/carplay-at-wwdc24/>

---

## Mac App Impersonation

date: 2024-07-09, from: Michael Tsai

J&#233;r&#244;me Segura (via Ric Ford): On June 24, we observed a new campaign distributing a stealer targeting Mac users via malicious Google ads for the Arc browser. This is the second time in the past couple of months where we see Arc being used as a lure, certainly a sign of its popularity. It was [&#8230;] 

<https://mjtsai.com/blog/2024/07/09/mac-app-impersonation/>

---

## Stack Overflow Links Pushing Malware

date: 2024-07-09, from: Michael Tsai

Lawrence Abrams (via Hacker News): Cybercriminals are abusing Stack Overflow in an interesting approach to spreading malware&#8212;answering users&#8217; questions by promoting a malicious PyPi package that installs Windows information-stealing malware.[&#8230;]This PyPi package is named &#8216;pytoileur&#8217; and was uploaded by threat actors to the PyPi repository over the weekend, claiming it was an API management tool. [&#8230;] 

<https://mjtsai.com/blog/2024/07/09/stack-overflow-links-pushing-malware/>

---

##  I saw Midnight in Chernobyl at a bookstore over the weekend and... 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044927-i-saw-midnight-in-chernob>

---

## A moment walking towards the sunset

date: 2024-07-09, from: Manu - I write blog


                <p>The sound of wind blowing through the trees and the wild grass has to be one of the most relaxing sounds existing in nature.</p>
<p>Add to that a great view of the mountains and a lovely summer sunset and you have the best possible set for an evening walk.</p>
<figure class="m-o" data-template="with"><div class="m-m"><img class="img" loading="lazy" src="https://manuelmoreale.com/media/pages/thoughts/a-moment-walking-towards-the-sunset/867bcf09a5-1720549120/img_1368.jpeg" style="aspect-ratio:1000 / 1333"></div></figure>                <hr>
                <p>Thank you for keeping RSS alive. You're awesome.</p>
                <p><a href="mailto:hello@manuelmoreale.com">Email me</a> ::
                <a href="https://manuelmoreale.com/guestbook">Sign my guestbook</a> :: 
                <a href="https://ko-fi.com/manuelmoreale">Support for 1$/month</a> :: 
                <a href="https://manuelmoreale.com/supporters">See my awesome supporters</a> :: 
                <a href="https://buttondown.email/peopleandblogs">Subscribe to People and Blogs</a></p>
             

<https://manuelmoreale.com/@/page/VsoqxkIPE2bjwU1t>

---

## NASA Invites Media to 65th Birthday Celebration for Iconic Logo

date: 2024-07-09, from: NASA breaking news

NASA’s logo turns 65 on Monday, July 15, and media are invited to its birthday celebration in Cleveland, the city where the iconic symbol was designed. To mark the logo’s birthday, NASA’s Glenn Research Center in Cleveland will host a series of activities celebrating the city’s connection to one of the most recognized logos in [&#8230;] 

<https://www.nasa.gov/news-release/nasa-invites-media-to-65th-birthday-celebration-for-iconic-logo/>

---

##  Free Shipping on Kottke Tees 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/free-shipping-on-kottke-tees>

---

## What Happens if You Shoot Down a Delivery Drone?

date: 2024-07-09, updated: 2024-07-09, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/07/09/what-happens-if-you-shoot-down-a-delivery-drone/>

---

## NASA Technology Soars at Selfridge Air Show

date: 2024-07-09, from: NASA breaking news

NASA’s Glenn Research Center staff traveled to Michigan for the Selfridge Air National Guard Base air show, open house, and STEAM Expo, June 8 and 9. NASA’s Journey to Tomorrow, a 53-foot traveling exhibit, was a popular feature that&#160;showcased exploration in air and space. Additionally, experts from NASA&#8217;s Fission Surface Power project shared information on [&#8230;] 

<https://www.nasa.gov/general/nasa-technology-soars-at-selfridge-air-show/>

---

## International and Space Law

date: 2024-07-09, from: NASA breaking news

The International and Space Law Practice Group (ISLPG) is responsible for providing legal advice and counsel regarding international matters at Headquarters and all NASA Centers. Some of the legal issues for which ISLPG is responsible include: international law, including space law; domestic law which may impact NASA’s international cooperation; issues involving the United Nations or [&#8230;] 

<https://www.nasa.gov/organizations/international-and-space-law/>

---

## Rainbow Alliance Advisory Group Showcases NASA at Pride Event in Downtown Cleveland

date: 2024-07-09, from: NASA breaking news

For the second year in a row, NASA Glenn Research Center’s Rainbow Alliance Advisory Group (RAAG), with support from additional Glenn employees, marched in Cleveland’s “Pride in the CLE” festival on June 1.&#160; This year, they widened their presence by staffing an exhibit booth, which showcased NASA and inclusion in the workplace.&#160;&#160; Throughout the day, [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/glenn/rainbow-alliance-advisory-group-showcases-nasa-at-pride-event-in-downtown-cleveland/>

---

## NASA Glenn Welcomes Summer Student Interns

date: 2024-07-09, from: NASA breaking news

NASA Glenn Research Center’s Office of STEM Engagement provided a multi-faceted orientation—including a welcome from Center Director Dr. Jimmy Kenyon—for 151 student interns (on-site and virtually) last month. This summer, student interns from across the United States and U.S. territories will gain practical experience while working with scientists, engineers, and individuals from many other professions.&#160; [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/glenn/nasa-glenn-welcomes-summer-student-interns/>

---

##  Here&#8217;s how auto dealerships try to scam you when buying a car.... 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044918-heres-how-auto-dealership>

---

## Celebrate the Heliophysics Big Year with Free Heliophysics and Math Webinars from NASA HEAT

date: 2024-07-09, from: NASA breaking news

The Heliophysics Big Year (HBY) is a global celebration of the Sun’s influence on Earth and the entire solar system. It began with the Annular Solar Eclipse on Oct. 14, 2023, continued through the Total Solar Eclipse on Apr. 8, 2024, and will conclude with Parker Solar Probe’s closest approach to the Sun in December […] 

<https://science.nasa.gov/learning-resources/science-activation/celebrate-the-heliophysics-big-year-with-free-heliophysics-and-math-webinars-from-nasa-heat/>

---

## Spectral Energies developed a NASA SBIR/STTR-Funded Tech that Could Change the Way We Fly

date: 2024-07-09, from: NASA breaking news

Editor Note: Article written by Nicholas Mercurio With $20 million in commercial sales and $15 million in sales to government agencies, minority-owned small business Spectral Energies, based in Beavercreek, Ohio, has found a customer base for its pulse-burst laser systems. NASA has played a significant role in developing the technology through the Small Business Innovation [&#8230;] 

<https://www.nasa.gov/general/spectral-energies/>

---

##  Project 2025 in a Nutshell 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/project-2025-in-a-nutshell>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-09, from: Miguel de Icaza Mastondon feed)

<p>This video shows:</p><p>- The new Xcode-inspired debugger pad - organizationally, I like it more<br />- Bits of Codea-inspired keyboard assistant<br />- The old text editor (shown here as a tool to assist the port)<br />- The new text editor<br />- The game running side-by-side on a separate iOS Scene (hopefully we can run in a dedicated monitor)<br />- the new iOS provided emulation controls that are mapped to regular controller input.</p><p>And as you can see, still a lot of polish needed before this can be shipped</p> 

<https://mastodon.social/@Migueldeicaza/112757280658430619>

---

##  Biden is The Candidate. Gabrielle Blair on the practical facts of the... 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044926-biden-is-the-candidate-ga>

---

##  Gladiator II 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/gladiator-ii>

---

##  The Avengers Assemble for Lakota Dub 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/the-avengers-assemble-for-lakota-dub>

---

**@Dave Winer's Scripting News** (date: 2024-07-09, from: Dave Winer's Scripting News)

<a href="https://x.com/davewiner/status/1810673176516452771">Suppose Biden abdicates</a>. What happens then? How does this not become a mess like Bernie and Hillary, or Nader and Gore,  Perot and Clinton, Kennedy and Carter, McCarthy, RFK and Humphrey. 

<http://scripting.com/2024/07/09.html#a134026>

---

## From Polar Peaks to Celestial Heights: Christy Hansen’s Unique Path to Leading NASA’s Commercial Low Earth Orbit Development Program

date: 2024-07-09, from: NASA breaking news

Christy Hansen&#8217;s journey with NASA spans more than two decades and is marked by roles that have shaped her into a leader in space exploration. Now serving on a six-month rotation as the deputy manager for NASA’s CLDP (Commercial Low Earth Orbit Development Program) at Johnson Space Center in Houston, she brings 25 years of [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/johnson/from-polar-peaks-to-celestial-heights-christy-hansens-unique-path-to-leading-nasas-commercial-low-earth-orbit-development-program/>

---

## Jon Stewart, yes you should STFU

date: 2024-07-09, from: Dave Winer's Scripting News

<p><i>The problem is elites grabbing the wheel with no clue about what comes next.</i></p>
<p><img class="imgRightMargin" src="https://imgs.scripting.com/2024/02/14/bidenActionFigure.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Every Tuesday I look for Jon Stewart's opening for the Daily Show on YouTube. It's always funny, great comedy, whether or not you agree with what he says, and I usually do agree. But not when it comes to him pushing President Biden out, without any idea of what comes next, and how the people, even some people who love his show, feel about having no voice. </p>
<p>If the voters organize, using the tools we have now, and stay organized after the election, we could elect anyone to be president. There's never been a more clear opportunity to win a landslide. It depends on organization, and elites not grabbing the steering wheel with no clue about what comes next, and driving us off a cliff. </p>
<p>I've been close to elites at times, and I can tell you, they aren't any smarter than you, they just have more power. I think that's been the real problem. We have failed to stay a democracy as we've gotten the tools to really be a democracy in ways we never could have before. And now we're at the last moment before it's all flushed away and the NYT et al (including our hero Stewart) are making it more certain, not less. </p>
<p>Be warned I get really angry at the end and raise my voice. I don't think I've ever done that in a podcast, and I'm not sure I like it. But the rage is real. </p>
<p><a href="http://scripting.com/2024/07/09/yesJonStewartPleaseSTFU.m4a">16 minute podcast</a>. </p>
 

<http://scripting.com/2024/07/09/131713.html?title=jonStewartYesYouShouldStfu>

---

## 2024-07-08 Neuchâtel

date: 2024-07-09, from: Alex Schroeder's Blog

<h1 id="2024-07-08-neuchâtel">2024-07-08 Neuchâtel</h1>

<p>We spent two nights in Neuenburg or Neuchâtel. They came under Prussian control in 1707 because the locals were looking for a government that was far away and wouldn&rsquo;t meddle in their affairs. It became a republic and a canton of Switzerland in 1848.</p>

<blockquote>
<p>On the death in 1707 of Marie d&rsquo;Orleans-Longueville, duchess de Nemours and Princess of Neuchâtel, the people had to choose her successor from among fifteen claimants. They wanted their new prince first and foremost to be a Protestant, and also to be strong enough to protect their territory but based far enough away to leave them to their own devices. Louis XIV actively promoted the many French pretenders to the title, but the Neuchâtelois people passed them over in favour of King Frederick I of Prussia, who claimed his entitlement in a rather complicated fashion through the Houses of Orange and Nassau. With the requisite stability assured, Neuchâtel entered its golden age, with commerce and industry (including watchmaking and lace) and banking undergoing steady expansion. – <a href="https://en.wikipedia.org/wiki/Neuch%C3%A2tel">Wikipedia</a></p>
</blockquote>

<p>We met a friend and went for a walk in the late afternoon: from La Neuveville up the Combe du Pulouvi. I took some flower pictures.</p>

<p>At the new Jeunes Rives. It looked very nice but we did see a big dead fish, belly up. That dampened our enthusiasm somewhat.</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-1.jpg" alt="" /></p>

<p>We began our walk around four.</p>

<p>Ästige Graslilie<br>
Anthericum ramosum</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-2.jpg" alt="" /></p>

<p>Gewöhnliches Sonnenröschen<br>
Helianthemum nummularium</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-3.jpg" alt="" /></p>

<p>There were some nice waterfalls to see on the way up.</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-4.jpg" alt="" /></p>

<p>And a view of the Lac de Bienne.</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-5.jpg" alt="" /></p>

<p>Bunte Kronwicke<br>
Securigera varia</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-6.jpg" alt="" /></p>

<p>Habichtskraut<br>
Hieracium</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-7.jpg" alt="" /></p>

<p>Wildes Alpenveilchen<br>
Cyclamen purpurascens</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-8.jpg" alt="" /></p>

<p>More pools…</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-9.jpg" alt="" /></p>

<p>And waterfalls…</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-10.jpg" alt="" /></p>

<p>But was cool and full of moss.</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-11.jpg" alt="" /></p>

<p>Nesselblättrige Glockenblume<br>
Campanula trachelium</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-12.jpg" alt="" /></p>

<p>Alpen-Ziest<br>
Stachys alpina</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-13.jpg" alt="" /></p>

<p>Sometimes you see plants that you feel you have never seen in your whole life.</p>

<p>Wiesen-Wachtelweizen<br>
Melampyrum pratense</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-14.jpg" alt="" /></p>

<p>An even better view of the lake. That very long and narrow line of land connects the town of Erlach or Cerlier to <a href="https://en.wikipedia.org/wiki/St._Peter%27s_Island">St. Peter&rsquo;s Island</a>.</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-15.jpg" alt="" /></p>

<p>Breitblättrige Lichtnelke<br>
Silene latifolia</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-16.jpg" alt="" /></p>

<p>Efeu-Sommerwurz<br>
Orobanche hederae</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-17.jpg" alt="" /></p>

<p>Breitblättrige Platterbse<br>
Lathyrus latifolius</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-18.jpg" alt="" /></p>

<p>And back to Neuchâtel (“Newcastle”).</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-19.jpg" alt="" /></p>

<p><a class="tag" href="/search/?q=%23Pictures">#Pictures</a> <a class="tag" href="/search/?q=%23Switzerland">#Switzerland</a></p> 

<https://alexschroeder.ch/view/2024-07-07-neuchatel>

---

## Introducing KV Backup for Deno Subhosting

date: 2024-07-09, updated: 2024-07-09, from: Deno blog

This new feature allows Subhosting users to configure their KV databases to back up data to their own S3-compatible object storage via APIs. 

<https://deno.com/blog/subhosting-kv-backup>

---

## Facilitating Good Decision Making: Context, Scope, and Timeframe

date: 2024-07-09, from: Accidentally in Code

Someone asked me about my management philosophy recently, and after I stopped panicking (I wrote a book, I should have a philosphy&#8230; how do you summarize 400 pages and 2 years of your life in one sentence) I came up with: &#8220;My job is to make it easier for people to make good decisions.&#8221; What [&#8230;] 

<https://cate.blog/2024/07/09/facilitating-good-decision-making-context-scope-and-timeframe/>

---

## Moonbound revisited

date: 2024-07-09, from: Ayjay blog

A while back I said that I had read Robin Sloan’s new novel Moonbound and hoped to read it again. Wrong! I had not genuinely read it. Now I have, and I love this book.  Several decades ago, the semiotician A. J. Greimas claimed that all stories are comprised of six actants, in three pairs:  [&#8230;] 

<https://blog.ayjay.org/moonbound-revisited/>

---

## Programming, Fluency, and AI

date: 2024-07-09, from: O'Reilly Radar

It’s clear that generative AI is already being used by a majority—a large majority—of programmers. That’s good. Even if the productivity gains are smaller than many think, 15% to 20% is significant. Making it easier to learn programming and begin a productive career is nothing to complain about either. We were all impressed when Simon [&#8230;] 

<https://www.oreilly.com/radar/programming-fluency-and-ai/>

---

## Raspberry Pi OS airs out some fresh options for the summer

date: 2024-07-09, updated: 2024-07-09, from: Liam Proven's articles at the Register

<h4>Why go outside in the sunshine when you could play with tiny computers in a darkened room?</h4>
      <p>Perhaps hoping to mark independence from x86 PCs, there's a new July 4th release of the official Raspberry Pi OS, although it remains coy of giving a version number.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/07/09/raspberry_pi_os_5_3/>

---

## Some more thoughts on TBC

date: 2024-07-09, from: Manu - I write blog


                <p>I know, I know. You’re tired of hearing me ranting about The Browser Company and their Arc “browser”. I’m also tired of reading about them but I keep stumbling on news about this silly company and I can’t help myself from yelling at the screen. They aired a commercial on TV the other day, clearly a reasonable thing to do when you have a product with no revenues and no business model. And not happy with that, they released a YouTube video with the CEO explaining the ideas “hidden” in the commercial and that tells you how good at marketing these people are. If you need to release an almost 5-minute video to explain the meaning of a stupid 1-minute ad you probably need a better marketing department.</p>
<p>Anyway, leaving aside the pointlessness of this whole thing what prompted me to write this post were some of the things the CEO said in the video explainer which are so profoundly stupid that I find them offensive. If you are an ARC user you should be offended too because he must think you’re all a bunch of idiots.</p>
<p>He said in the video that there were three questions he wanted to ask:</p>
<ol>
<li>What is this internet we want to live within?</li>
<li>What if the web were truly made for you?</li>
<li>What are we here for?</li>
</ol>
<hr />
<blockquote>
<p>What is this internet we want to live within? What do we want to create for ourselves?</p>
</blockquote>
<p>Just to make it clear, what this company is allegedly making is a browser. It’s in their fucking name: The Browser Company. They’re not making a new internet. They’re not creating anything. As I wrote before, they’re not even making an actual browser like the awesome people at <a href="https://ladybird.org">Ladybird</a>. They’re building a wrapper around Chrome. This makes the CEO rant about browser monoculture even more hilarious since by doing that they're part of the problem.</p>
<p>In the video, he tries to argue that Silicon Valley companies are driven by efficiency, you type something in Google and he gives you an answer but there are times when you don’t want an answer, you want to get access to the best set of results because you’re after experiences and serendipity and a bunch of other complete nonsense. He asked, “Do we even believe in a single answer?“. The answer is no Josh. No, we don’t. This is why all search engines have a SERP. No search engine gives you one answer. </p>
<blockquote>
<p>A lot of other times something just seems really interesting to you and you want to go wide and deep and be surprised there are a lot of other things we might want to optimise for when we’re designing this new internet</p>
</blockquote>
<p>Designing this new internet? You’re not designing a new internet. You’re using some algorithm to decide for me which 6 or 8 results I should be seeing. In doing that you’re worse than Google. </p>
<blockquote>
<p>The second thing is what would it look like if truly the web was made for you?</p>
</blockquote>
<p>I’m gonna ask you a question Josh: how can you make a web for me without profiling me? I’ll wait for an answer the same way I’m still waiting to hear back from your support team on that ticket I opened months ago where I was asking how to prevent your stupid ARC Search from accessing my sites.</p>
<p>You asked “What does the personal web, the personal internet look like” and there are various ways to tackle this question but it certainly doesn’t look like a generated ARC Search result page that is the same for everyone. You said the web doesn’t feel personal because we all see the same stuff and yet you showed a screenshot of your stupid ARC Search pulling in results from Reddit and Trip Advisor. Again, if you’re reading this and you’re an ARC user, they must think you’re a complete idiot to believe all this stuff.</p>
<p>As for the final question, what are we here for and why am I looking at this video, well Josh, I work in tech. I code websites, I care about the web. Especially the independent, personal one. The one you’re ranting about but probably don’t care about at all. I also have to care about your stupid browser because even though it’s Chrome sometimes it has bugs that aren’t present on Chrome and so I have to test on it. I’d love to not care about your browser and your stupid ARC Search but I have to because this is the world I live in. My email is public if you want to get in touch. You probably won’t because why would you, you have nothing to gain from a private exchange after all.</p>                <hr>
                <p>Thank you for keeping RSS alive. You're awesome.</p>
                <p><a href="mailto:hello@manuelmoreale.com">Email me</a> ::
                <a href="https://manuelmoreale.com/guestbook">Sign my guestbook</a> :: 
                <a href="https://ko-fi.com/manuelmoreale">Support for 1$/month</a> :: 
                <a href="https://manuelmoreale.com/supporters">See my awesome supporters</a> :: 
                <a href="https://buttondown.email/peopleandblogs">Subscribe to People and Blogs</a></p>
             

<https://manuelmoreale.com/@/page/0ya3lbWL9J8LlISo>

---

## Twirly Shirley the Pico-powered precision turntable

date: 2024-07-09, from: Raspberry Pi News (.com)

<p>VEEB Projects has decided to take down Lazy Susan by introducing Twirly Shirley, a Raspberry Pi Pico W-powered precision turntable.</p>
<p>The post <a href="https://www.raspberrypi.com/news/twirly-shirley-the-pico-powered-precision-turntable/">Twirly Shirley the Pico-powered precision turntable</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/twirly-shirley-the-pico-powered-precision-turntable/>

---

**@Jessica Smith's blog** (date: 2024-07-09, from: Jessica Smith's blog)

<p>Trying to convince Viv he should go on <cite>Hard Quiz</cite> with the special topic of the 1916 <abbr title="Victorian Football League">VFL</abbr> premiership season, because he&rsquo;s like obsessed with it, hahah. Tonight he&rsquo;s explaining to me at length how many layers there are to it: the class divide, the sectarian divide between Protestants and Catholics in that era, contested notions of masculinity (is it about going off to kill people abroad, or staying home to play sport?)&hellip; honestly, he has me convinced, it&rsquo;s an interesting topic.</p> 

<https://www.jayeless.net/2024/07/1916-vfl-premiership-season.html>

---

## 2024/07/09 Bringing Programmability and Long-Term Stability to Biomanufacturing Processes

date: 2024-07-09, from: Darpa News

<div style="float:left"><img title="Switch" alt="Switch" src="https://www.darpa.mil/DDM_Gallery/Switch-logo_619x316_thumb.jpg" border="0"/></div>DARPA's Switch program aims to develop a suite of tools and approaches to engineer run-time reprogrammable microorganisms that support a variety of possible manufacturing processes 

<https://www.darpa.mil/news-events/2024-07-09a>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-09, from: Miguel de Icaza Mastondon feed)

<p>Also, heavily borrowing the style from FinalCut Pro for their inspector.</p><p>My original attempt on the left, the one where I start to use fonts, spacing and bubbles from FinalCutPro styled on the right - still a work in progress, but it already feels better:</p> 

<https://mastodon.social/@Migueldeicaza/112754493858510362>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-09, from: Miguel de Icaza Mastondon feed)

<p>I loved the FinalCut Pro UI elements for entering rotation data.   One neat feature is that in addition to the swipe to choose an angle, if you long-press the dial goes into high-precision input mode.</p><p>I think I finally got the animation just right:</p> 

<https://mastodon.social/@Migueldeicaza/112754476066529208>

---

**@Jessica Smith's blog** (date: 2024-07-09, from: Jessica Smith's blog)

<p>Guys, we have one of those Brother printers that are supposed to be so solid and reliable, but it is not cooperating today. Keeps sending itself to sleep mid-job and &ldquo;going offline&rdquo; so I have to physically walk to it and turn it back on. &ldquo;Printing&rdquo; blank pages. When told to print a three-page document (ONCE), it prints TWO copies of page 1 &amp; 2 then skips page 3. That &ldquo;just buy this Brother printer everyone has, it&rsquo;s fine&rdquo; article lied to me.</p> 

<https://www.jayeless.net/2024/07/unreliable-brother-printer.html>

---

## Wordle Kitty is EIC at NYT!

date: 2024-07-08, from: Dave Winer's Scripting News

<p>Wordle Kitty has become the Editor in Chief of the NY Times! That's pretty cool right. But she's still cute. And she's working late tonight, trying to come up with the perfect cover story. She figured it out! She put a picture of herself on the front page, with a huge headline saying "She's great!" In the picture she's smart and cute and really adorable, and she's smiling and wearing a button that says "Hi Mom!"</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/07/08/wordleKittyEICatNYT.png"></center>Wordle Kitty on the front page.</div></p>
 

<http://scripting.com/2024/07/08/231350.html?title=wordleKittyIsEicAtNyt>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-08, from: Miguel de Icaza Mastondon feed)

<p>Making Godot on iPad shine, like Gnome or Mono before has graduated from “how hard can this be?” To “oh god what have I done”</p> 

<https://mastodon.social/@Migueldeicaza/112753403629430456>

---

##  The Onion highlights some of the lesser-known Project 2025 plans. &#8220;Immigration through... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044922-the-onion-highlights-some>

---

## NASA Moon Rocket Stage for Artemis II Moved, Prepped for Shipment

date: 2024-07-08, from: NASA breaking news

NASA is preparing the SLS (Space Launch System) rocket core stage that will help power the first crewed mission of NASA’s Artemis campaign for shipment. On July 6, NASA and Boeing, the core stage lead contractor, moved the Artemis II rocket stage to another part of the agency’s Michoud Assembly Facility in New Orleans. The [&#8230;] 

<https://www.nasa.gov/image-article/nasa-moon-rocket-stage-for-artemis-ii-moved-prepped-for-shipment/>

---

##  Project 2025 would be a disaster for the environment. &#8220;It would be... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044917-project-2025-would-be-a>

---

## NASA, Boeing Provide Next Update on Space Station Crew Flight Test

date: 2024-07-08, from: NASA breaking news

Leadership from NASA and Boeing will participate in a media briefing at 12:30 p.m. EDT Wednesday, July 10, to discuss the agency’s Crew Flight Test at the International Space Station. Audio of the media teleconference will stream live on the agency’s website: https://www.nasa.gov/nasatv Participants include: Media interested in participating must contact the newsroom at NASA’s [&#8230;] 

<https://www.nasa.gov/news-release/nasa-boeing-provide-next-update-on-space-station-crew-flight-test/>

---

##  The Terrifying Project 2025 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/the-terrifying-project-2025>

---

## NASA to Cover Northrop Grumman’s 20th Cargo Space Station Departure

date: 2024-07-08, from: NASA breaking news

Northrop Grumman’s uncrewed Cygnus spacecraft is scheduled to depart the International Space Station on Friday, July 12, five and a half months after delivering more than 8,200 pounds of supplies, scientific investigations, commercial products, hardware, and other cargo to the orbiting laboratory for NASA and its international partners. This mission was the company’s 20th commercial [&#8230;] 

<https://www.nasa.gov/news-release/nasa-to-cover-northrop-grummans-20th-cargo-space-station-departure/>

---

##  How to Stop Fascism: Five Lessons of the Nazi Takeover 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/how-to-stop-fascism-five-lessons-of-the-nazi-takeover>

---

## 30 Years Ago: STS-65 Lifts Off

date: 2024-07-08, from: NASA breaking news

The space shuttle Columbia launches from Pad 39A at NASA’s Kennedy Space Center in Florida on July 8, 1994. This was the second flight of International Microgravity Laboratory (IML-2), carrying more than twice the number of experiments and facilities as IML-1. The crew split into two teams to perform around-the-clock research. More than 80 experiments, [&#8230;] 

<https://www.nasa.gov/image-article/30-years-ago-sts-65-lifts-off/>

---

## NASA’s Neurodiversity Network Interns Speak at National Space Development Conference

date: 2024-07-08, from: NASA breaking news

Two high school interns funded by NASA’s Neurodiversity Network (N3) presented their work from Summer 2023 at the recent National Space Society (NSS) International Space Development Conference (ISDC-2024), held in Los Angeles, CA (May 23-26, 2024). Both interns were mentored by Dr. Pascal Lee, Planetary Scientist at the SETI Institute and Chair of the Mars […] 

<https://science.nasa.gov/learning-resources/science-activation/nasas-neurodiversity-network-interns-speak-at-national-space-development-conference/>

---

## Driverless Cars in the Wild

date: 2024-07-08, updated: 2024-07-08, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/07/08/driverless-cars-in-the-wild/>

---

##  Fascism and Fear and the Media 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/fascism-and-fear-and-the-media>

---

## Apple Intelligence for Siri in Spring 2025

date: 2024-07-08, from: Michael Tsai

William Gallagher: While many Apple Intelligence features will roll out with iOS 18 during the remainder of 2024, its much-awaited revamp of Siri will wait until iOS 18.4 in 2025.[&#8230;]Before then, there will be a new design to Siri. That will presumably include how Apple has shown that invoking Siri will bring a flare around [&#8230;] 

<https://mjtsai.com/blog/2024/07/08/apple-intelligence-for-siri-in-spring-2025/>

---

## Ivory 2.0

date: 2024-07-08, from: Michael Tsai

Nil&#233;ane: Now, in the app&#8217;s redesigned Hashtags tab, you can create a list that contains up to four hashtags, and you can even exclude specific hashtags if you&#8217;re looking to fine-tune the resulting timeline. [&#8230;] The other big improvement in Ivory 2.0 is its redesigned share sheet extension for creating posts. It is now fully-featured, [&#8230;] 

<https://mjtsai.com/blog/2024/07/08/ivory-2-0/>

---

## Signal for Mac’s “Encrypted” Database

date: 2024-07-08, from: Michael Tsai

Signal: Storing messages outside of your active Signal device is not supported. Messages are only stored locally. An iTunes or iCloud backup does not contain any of your Signal message history. This makes it private on iOS because other apps can&#8217;t access the message database. But the same design doesn&#8217;t work so well with the [&#8230;] 

<https://mjtsai.com/blog/2024/07/08/signal-for-macs-encrypted-database/>

---

## Epic Games Store Temporarily Allowed

date: 2024-07-08, from: Michael Tsai

Epic Games: Apple has informed us that our previously rejected Epic Games Store notarization submission has now been accepted. Eric Slivka (Hacker News): Apple today said it has approved the third-party Epic Games Store in the European Union, allowing the Fortnite developer to launch its alternative app marketplace in those countries, reports Reuters. Is running [&#8230;] 

<https://mjtsai.com/blog/2024/07/08/epic-games-store-temporarily-allowed/>

---

##  The Forgotten Black Explorers Who Transformed Americans&#8217; Understanding of the Wilderness. Esteban,... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044916-the-forgotten-black-explo>

---

## Happy Birthday, Meatball! NASA’s Iconic Logo Turns 65

date: 2024-07-08, from: NASA breaking news

On July 15, 2024, NASA’s logo is turning 65. The iconic symbol, known affectionately as “the meatball,” was developed at NASA’s Lewis Research Center in Cleveland (now called NASA Glenn). Employee James Modarelli, who started his career at the center as an artist and technical illustrator, was its chief designer. The red, white, and blue [&#8230;] 

<https://www.nasa.gov/general/happy-birthday-meatball-nasas-iconic-logo-turns-65/>

---

## NASA Mission to Study Mysteries in the Origin of Solar Radio Waves

date: 2024-07-08, from: NASA breaking news

NASA’s CubeSat Radio Interferometry Experiment, or CURIE, is scheduled to launch July 9, 2024, to investigate the unresolved origins of radio waves coming from the Sun. Scientists first noticed these radio waves decades ago, and over the years they’ve determined the radio waves come from solar flares and giant eruptions on the Sun called coronal […] 

<https://science.nasa.gov/science-research/heliophysics/nasa-mission-to-study-mysteries-in-the-origin-of-solar-radio-waves/>

---

##  We Talking About Practice 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/we-talking-about-practice>

---

## What Is Machine Learning?

date: 2024-07-08, from: Quanta Magazine

Neural networks and other forms of machine learning ultimately learn by trial and error, one improvement at a time.             <p>The post <a href="https://www.quantamagazine.org/what-is-machine-learning-20240708/" target="_blank">What Is Machine Learning?</a> first appeared on <a href="https://api.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<https://www.quantamagazine.org/what-is-machine-learning-20240708/>

---

##  An interesting teaser trailer for F1, the racing drama starring Brad Pitt... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044910-an-interesting-teaser-tra>

---

## NextSTEP Q: CIS Capability Studies III – Lunar User Terminals & Network Orchestration and Management System

date: 2024-07-08, from: NASA breaking news

Solicitation Number: NNH16ZCQ001K-1_Appendix-Q July 8, 2024 &#8211; Solicitation Released Solicitation Overview NASA’s long-term vision to provide for a resilient space and ground communications and navigation infrastructure in which space mission users can seamlessly “roam” between an array of space-based and ground-based networks has been bolstered by innovative studies delivered by industry through the Next Space [&#8230;] 

<https://www.nasa.gov/general/nextstep-q-cis-capability-studies-iii-lunar-user-terminals-network-orchestration-and-management-system/>

---

## Editorial Note: On Medicine and the Body in Tech

date: 2024-07-08, from: Logic Magazine


                <p>Editorial Note from Editor Khadijah Abdurrahman for Logic(s) Issue 21</p>

             

<https://logicmag.io/issue-21-medicine-and-the-body/editorial-note-on-medicine-and-the-body-in-tech>

---

##  Appalling vs. a Whole Other Level of Appalling 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/appalling-vs-a-whole-other-level-of-appalling>

---

## NASA’s Begoña Vila Awarded 2024 Galician Excellence Award

date: 2024-07-08, from: NASA breaking news

Begoña Vila, an instrument systems engineer from KBR who worked on NASA’s James Webb Space Telescope, has been selected to receive the 2024 Galician Excellence Title in the Sciences and Medicine Category for her career and work on Webb. This award comes from the Spanish Association of Galician Entrepreneurs of Catalonia (AEGA-CAT), a civic and social […] 

<https://science.nasa.gov/missions/webb/nasas-begona-vila-awarded-2024-galician-excellence-award/>

---

**@Dave Winer's Scripting News** (date: 2024-07-08, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/02/01/runner.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">If you've lived much at all you know what Joni says is true. I got there when my grandmother died in 1977, when I was 22, my first close relative that I lost, and I tried to come to grips with the idea that I'd never see her again and found it impossible, but it was true nonetheless. No way to escape it. When my mother died, in 2018, I only thought after we cleared her house to be sold, the house I grew up in, that I didn't even take pictures of it before it was emptied. I was so used to it being a constant, I forgot to realize until it was too late, that I was saying goodbye to everything I knew for my entire life. Forever. It's why we're playing such a dangerous game of chicken with Biden's presidency, because the stakes are so incredibly high. A mathematical approach to this problem says imho that everyone should shut the fuck up about Biden's flaws and get us organized so we can handle any eventuality. The problem isn't that Biden might die, the problem is that even if he were to win, we'll be right back here in another four years, and at that time we will have to grapple with an even more dire situation. Whatever happens this year, what's waiting for us is for most of us to wake up from the dream that there are any constants in our lives. It's all falling apart, in every way. The only thing that matters is we start working together, intelligently, or else it's over. 

<http://scripting.com/2024/07/08.html#a141318>

---

**@Dave Winer's Scripting News** (date: 2024-07-08, from: Dave Winer's Scripting News)

<a href="https://www.youtube.com/watch?v=94bdMSCdw20">Joni Mitchell</a>: "You don't know what you've got till it's gone." 

<http://scripting.com/2024/07/08.html#a141153>

---

## It's that time

date: 2024-07-08, from: Dave Winer's Scripting News

<p>This is the time, every four years, when we have to confront the corruption of American journalism. Most of the time we can turn our attention elsewhere, until we get a Bush or Trump in the White House, and then we have to own up to the fact that we let them, the journalists, get away with it again.</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/07/08/butHerEmails.png"></center>We can't forget her emails, even though we never knew what it was about. </div></p>
 

<http://scripting.com/2024/07/08/135647.html?title=itsThatTime>

---

**@Dave Winer's Scripting News** (date: 2024-07-08, from: Dave Winer's Scripting News)

I admit that after the debate and the interminable attacks from the press on our democratic process that I'm pretty depressed about the future. I was talking with a friend over the weekend, a fellow NYer who moved up to the mountains as I did, about the political situation, and I asked if he would be prepared to sign a loyalty oath to Trump. He said he'd never do it. If they tried to force him, he'd get a gun and shoot them. This isn't the first time I've heard that, and I called bullshit. You're never going to do that. I know this guy, I know myself. I won't do it either. And I think I probably will have to sign the loyalty oath and so will you. There are so many ways to turn your life off, legally -- and without recourse. Think about what happens when you lose access to a social media account. Or when a credit rating agency doesn't believe you are who you are. Or when someone hijacks your phone and you can't get back control of it (and try to use anything without a working phone number). I've been through all these miserable processes. And none of them were legal, or controlled by the US government. A president who demands loyalty of you will get it. And that is certainly exactly where we're headed, again. 

<http://scripting.com/2024/07/08.html#a135236>

---

##  There I Ruined It: Kermit the Frog sings Snoop Dogg&#8217;s Gin and... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044907-there-i-ruined-it-kermit>

---

## Design and build the next version of OSNews

date: 2024-07-08, from: OS News

Despite being live since 1997, OSNews has had fairly few redesigns in the grand scheme of things. If my memory serves me correctly, we&#8217;ve had a grand total of 6 designs, and we&#8217;re currently on version 6, introduced about 5 years ago because of unpleasant reasons. It&#8217;s now 2024, and for a variety of reasons, we&#8217;re looking to work towards version 7 of our almost 30 year old website, and we need help. I have a very clear idea of what I want OSNews 7 to be like &#8211; including mockups. The general goals are making the site visually simpler, reducing our dependency on WordPress extensions, and reducing the complexity of our theme and website elements to make it a bit easier for someone like me to change small things without breaking anything. Oh and a dark mode that works. Note that we&#8217;re not looking to change backends or anything like that &#8211; WordPress will stay. If you have the WordPress, design, and developer skills to make something like this a reality, and in the process shape the visual identity of one of the oldest continuously running technology news websites in the world, send me an email. 

<https://www.osnews.com/story/140175/design-and-build-the-next-version-of-osnews/>

---

**@Dave Winer's Scripting News** (date: 2024-07-08, from: Dave Winer's Scripting News)

I find the <a href="https://blogroll.social/">blogroll</a> on the <a href="http://scripting.com/">home page</a> of my blog to be an incredible <a href="https://imgs.scripting.com/2024/07/08/blogrollScreenShot.png">way</a> to catch up on what people I follow are posting to their blogs and news sites. It's more like a feed reader than a blogroll because when a site updates it moves to the top of the list and when you click the wedge next to the title you get the five most recent posts with links to the full story. Maybe it was a  mistake calling this a blogroll. I'm trying to come up with a better place to put it so more people would see it and use it and might think it would be nice to have a place like that for themselves. In any case I'm thinking about what to do next with FeedLand, which is what's behind the blogroll software. It hasn't lived up to my hopes, and I don't think it's likely to. I may be done writing software for others, I was writing only for myself for a few years, between 2017 and 2021, and I really liked that. The experiment of writing for others was not a success. So I'm thinking about how to wind down FeedLand, keep it available for the people who are already using it, but close it to new membership. Just thinking out loud here for a bit. It's that time, to consider what I want to do with the next few years, assuming, praise Murphy, I have them to play with. <span class="spOldSchoolEmoji">😄</span> 

<http://scripting.com/2024/07/08.html#a134140>

---

##  Whoever the Democratic Candidate Is, Americans Have Already Lost. &#8220;If you take... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044906-whoever-the-democratic-ca>

---

## Getting the most out of TWM, X11’s default window manager

date: 2024-07-08, from: OS News

Graham&#8217;s TWM page has been around for like two decades or so and still isn&#8217;t even remotely as old as TWM itself, and in 2021 they published an updated version with even more information, tips, and tricks for TWM. The Tab Window Manager finds its origins in the lat 1980s, and has been the default window manager for the X Windowing System for a long time, now, too. Yet, few people know it exists &#8211; how many people even know X has a default window manager? &#8211; and even fewer people know you can actually style it, too. OK, so TWM is fairly easy to configure but alot of people, upon seeing the default config, scream &#8216;Ugh, thats awful!&#8217; and head off to the ports tree or their distro sources in search of the latest and greatest uber desktop environment. There are some hardcore TWM fans and mimimalists however who stick around and get to liking the basic feel of TWM. Then they start to mod it and create their own custom dekstop. All part of the fun in Unix :). ↫ Graham&#8217;s TWM page I&#8217;ll admit I have never used TWM properly, and didn&#8217;t know it could be themed at all. I feel very compelled to spend some time with it now, because I&#8217;ve always liked the by-now classic design where the right-click desktop menu serves as the central location for all your interactions with the system. There are quite a few more advanced, up-to-date forks of TWM as well, but the idea of sticking to the actual default X window manager has a certain charm. I almost am too afraid to ask, because the answer on OSNews to these sorts of questions is almost always &#8220;yes&#8221; &#8211; do we have any TWM users in the audience? I&#8217;m extremely curious to find out if TWM actually has a reason to exist at this point, or if, in 2024, it&#8217;s just junk code in the X.org source repository, because I&#8217;m looking at some of these screenshots and I feel a very strong urge to give it a serious go. 

<https://www.osnews.com/story/140172/getting-the-most-out-of-twm-x11s-default-window-manager/>

---

## The Official Radare2 Book

date: 2024-07-08, from: Tilde.news

<p><a href="https://tilde.news/s/n2yuf2/official_radare2_book">Comments</a></p> 

<https://book.rada.re>

---

## A brief summary of click-to-raise and drag-and-drop interaction on X11 and Wayland

date: 2024-07-08, from: OS News

The goal is to be able to drag an icon from a background window without immediately raising that window and obscuring the drop target window when using the click-to-focus mode. This is a barebones description of what needs to happen. It assumes familiarity with code, protocols, etc. as needed. ↫ Quod Video The articles describes how to get there using both X and Wayland, and it&#8217;s clear there&#8217;s still quite a bit of work to do. At least on my KDE Wayland setups, the way it works now is that when I click to drag an icon from a lower Dolphin window to a higher one, it brings the lower window forward, but then, when I hover for a bit over the other window, it brings it back up. Of course, this only works if the destination window remains at least partially visible, which might not always be the case. For usability&#8217;s sake, there needs to be an option to start a drag operation from one window to the next without altering the Z-order. 

<https://www.osnews.com/story/140170/a-brief-summary-of-click-to-raise-and-drag-and-drop-interaction-on-x11-and-wayland/>

---

## the arc of Hume’s history

date: 2024-07-08, from: Ayjay blog

I’ve been reading David Hume’s massive and magnificent History of England, and it’s generally fascinating — though there are, it must be said, extended passages in which he’s just dutifully relating what his researches have been able to discover about events which are not as well-attested as he would like. At the end of Volume [&#8230;] 

<https://blog.ayjay.org/the-arc-of-humes-history/>

---

## PiDP-10 | #MagPiMonday

date: 2024-07-08, from: Raspberry Pi News (.com)

<p>Oscar Vermeulen is back with his most ambitious retro kit yet. PJ Evans returns to the space age.</p>
<p>The post <a href="https://www.raspberrypi.com/news/pidp-10-magpimonday/">PiDP-10 | #MagPiMonday</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/pidp-10-magpimonday/>

---

**@Dave Winer's Scripting News** (date: 2024-07-08, from: Dave Winer's Scripting News)

Is Sulzberger another Musk. Inherited something of value, moving as quickly as possible to destroy that value. 

<http://scripting.com/2024/07/07.html#a020124>

---

## human voices

date: 2024-07-08, from: Ayjay blog

My friend Rick Gibson makes a fascinating argument here. You need to read the whole thing, but a brief summary would go like this: No matter how vast the corpus of text on which chatbots currently draw, in order to be successful in the future they will need to have an ever-expanding and ever-developing corpus. [&#8230;] 

<https://blog.ayjay.org/human-voices/>

---

## My fears about AI are not what you think

date: 2024-07-08, from: Ze Iaso's blog

A clip from a longer stream VOD where I run through my fears with the AI industry 

<https://xeiaso.net/videos/2024/ai-fears/>

---

## Episode 135 - XENIX

date: 2024-07-07, from: Advent of Computing

<p data-pm-slice="0 0 []">In 1984 SCO released PC XENIX, a port of UNIX that ran on an IBM PC. To understand why that's such a technical feat, and how we even got here, we have to go back to the late 1970s. In this episode we are taking a look at how Microsoft got into the UNIX game, and how they repeatedly struggled to make micro-UNIX work for them. Along the way we run into vaporware, conspiracy, and the expected missing sources!</p> 

<https://adventofcomputing.libsyn.com/episode-135-xenix>

---

## Seymour and Brownie

date: 2024-07-07, from: John Udell blog

My family, on my dad&#8217;s side, were Jews from Poland and Ukraine. His parents came to America before the shit hit the fan, but I grew up knowing two people who weren&#8217;t so lucky. Seymour Mayer lived across the street during my teens. And Annie Braunschweig, who we knew as Brownie, had taken care of &#8230; <a href="https://blog.jonudell.net/2024/07/07/seymour-and-brownie/" class="more-link">Continue reading <span class="screen-reader-text">Seymour and Brownie</span></a> 

<https://blog.jonudell.net/2024/07/07/seymour-and-brownie/>

---

**@Dave Winer's Scripting News** (date: 2024-07-07, from: Dave Winer's Scripting News)

I feel about twitter the same as I feel about the nytimes. As if we're not on speaking terms. Not that the nytimes ever listened, or really twitter, for that matter. 

<http://scripting.com/2024/07/07.html#a222924>

---

## Dear journalism

date: 2024-07-07, from: Dave Winer's Scripting News

<p>You know how Trump said he could shoot someone on Fifth Ave and wouldn't lose any supporters. This is the same thing except with Biden.</p>
<p>What you need to know:</p>
<ol>
<li>We all knew this would happen.</li>
<li>We all saw it happen, we don't need you to tell us.</li>
<li>We're going with him anyway.</li>
</ol>
<p>The plan is this:</p>
<ol>
<li>If Biden gets disabled, or dies, before or after the election -- VP Harris steps up.</li>
<li>Now everyone can relax.</li>
</ol>
<p>Hot tip for journos: The Supreme Court <a href="https://en.wiktionary.org/wiki/decloak">decloaked</a>, an even bigger story.</p>
<p>BTW, am I imagining it or has journalism inadvertently admitted that they all want Trump to lose? It's logical that they would, but I thought they always said they were objective on this stuff. The famous <a href="https://pressthink.org/2010/11/the-view-from-nowhere-questions-and-answers/">View From Nowhere</a>. Has that pretense accidentally been dropped?</p>
 

<http://scripting.com/2024/07/07/222234.html?title=dearJournalism>

---

## Peter Easthope commented on issue #141 at Felix Oliver Friedrich / Oberon A2

date: 2024-07-07, updated: 2024-07-07, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:23" dir="auto"><a href="/fnec.ece" data-reference-type="user" data-user="20002" data-container="body" data-placement="top" class="gfm gfm-project_member js-user-link" title="fnec ece">@fnec.ece</a> · 6 days ago</p>
<blockquote data-sourcepos="2:1-3:66" dir="auto">
<p data-sourcepos="2:3-3:66">Hi, I have corrected the problem for oberon subsystem in the
MyUnix.KbdMouse.Mod file. Could you test after HotKeys disabled?</p>
</blockquote>
<p data-sourcepos="5:1-5:49" dir="auto">I&#39;m trying Günther&#39;s 10272 on Debian 12, 64 bit.</p>
<p data-sourcepos="7:1-8:76" dir="auto">Disabled setting in Configuration.XML.<br/>
&lt;!-- Setting name=&#34;Hotkey support&#34; value=&#34;Hotkeys.Open&#34;/--&gt;</p>
<p data-sourcepos="10:1-12:83" dir="auto">After compiling your MyUnix.KbdMouse.Mod, disabling HotKeys and rebooting, the Oberon
subsysem allows placement of the star marker.  The &lt;delete&gt; key
has no visible effect.  These lines appear in the console which started the system.</p>
<div class="gl-relative markdown-code-block js-markdown-code">
<pre data-sourcepos="14:5-41:0" class="code highlight js-syntax-highlight language-plaintext" v-pre="true"><code><span id="LC1" class="line" lang="plaintext">Autostart: executing WMNavigate.Open -vs -n 1 0 0 Navigation:TaskList</span>
<span id="LC2" class="line" lang="plaintext">{P cpuid= 0, pid= 56 ETH Oberon / LinuxA2 (64-bit, Rev. 10272)}</span>
<span id="LC3" class="line" lang="plaintext">    Modules.Module in Oberon-Configuration.@ConstSections: error: incompatible</span>
<span id="LC4" class="line" lang="plaintext"></span>
<span id="LC5" class="line" lang="plaintext">    Modules.Module in Oberon-Configuration.@ConstSections: error: incompatible</span>
<span id="LC6" class="line" lang="plaintext"></span>
<span id="LC7" class="line" lang="plaintext">    Modules.Module in Oberon-Configuration.@ConstSections: error: incompatible</span>
<span id="LC8" class="line" lang="plaintext"></span>
<span id="LC9" class="line" lang="plaintext">    Modules.Module in Oberon-Configuration.@ConstSections: error: incompatible</span>
<span id="LC10" class="line" lang="plaintext"></span>
<span id="LC11" class="line" lang="plaintext">    Modules.Module in Oberon-Mail.@ConstSections: error: incompatible</span>
<span id="LC12" class="line" lang="plaintext"></span>
<span id="LC13" class="line" lang="plaintext">    Modules.Module in Oberon-Mail.@ConstSections: error: incompatible</span>
<span id="LC14" class="line" lang="plaintext"></span>
<span id="LC15" class="line" lang="plaintext">    Modules.Module in Oberon-NetSystem.@ConstSections: error: incompatible</span>
<span id="LC16" class="line" lang="plaintext"></span>
<span id="LC17" class="line" lang="plaintext">    Modules.Module in Oberon-NetSystem.@ConstSections: error: incompatible</span>
<span id="LC18" class="line" lang="plaintext"></span>
<span id="LC19" class="line" lang="plaintext">could not get module while importing Oberon-NetSystem</span>
<span id="LC20" class="line" lang="plaintext">    Oberon-NetSystem.@Module in Oberon-TelnetGadgets.@ConstSections: error: unresolved</span>
<span id="LC21" class="line" lang="plaintext"></span>
<span id="LC22" class="line" lang="plaintext">    Modules.Module in Oberon-NetSystem.@ConstSections: error: incompatible</span>
<span id="LC23" class="line" lang="plaintext"></span>
<span id="LC24" class="line" lang="plaintext">could not get module while importing Oberon-NetSystem</span>
<span id="LC25" class="line" lang="plaintext">    Oberon-NetSystem.@Module in Oberon-TelnetGadgets.@ConstSections: error: unresolved</span>
<span id="LC26" class="line" lang="plaintext"></span>
<span id="LC27" class="line" lang="plaintext">{P cpuid= 0, pid= 61 Oberon started}</span></code></pre>
<copy-code></copy-code>
</div>
<p data-sourcepos="42:1-42:62" dir="auto">64 bit A2 attempted to use executables compiled for 32 bit A2?</p>
<blockquote data-sourcepos="44:1-44:41" dir="auto">
<p data-sourcepos="44:3-44:41">Sorry, could not insert xml statements.</p>
</blockquote>
<p data-sourcepos="46:1-48:10" dir="auto">No problem.  Caught your meaning. The less than character can be expressed by
&lt;nowiki&gt;&lt;&lt;/nowiki&gt;
or by \&lt;.</p>
<p data-sourcepos="50:1-50:37" dir="auto">Thanks for the help,           ... P.</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/141#note_193237>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-07, from: Miguel de Icaza Mastondon feed)

<p>I do regret my naïveté saying for years “one state or two state solutions”.   </p><p>The two state solution is merely gold-plating the turd of extermination.</p> 

<https://mastodon.social/@Migueldeicaza/112747071664046569>

---

## Democratic superstars of 2024

date: 2024-07-07, from: Dave Winer's Scripting News

<p>On Mastodon, <a href="https://mastodon.social/@sarajw@front-end.social/112746718207413752">Sara Joy writes</a>: "Let Biden run. Let Kamala and lots of other younger Dems take on lots of events. Support him from underneath. If and when he falters, the party is there to prop him up, take up the slack, or step in."</p>
<p>I had a similar idea.</p>
<p>Make this the campaign of the cabinet, governors and congress.</p>
<p>Let all the great next generation democrats shine. </p>
<p>Big stadium events where a lot of them share the stage.</p>
<p>Joe Biden dials in via satellite.</p>
<p>"Listen, I'm an old dude, so I need my rest but look at all these bright young people who help me do the business of the American people. Aren't they wonderful!"</p>
<p>He puts on his robe and slippers, sits in a rocking chair with a dog at his feet and his grandchildren playing <a href="https://en.wikipedia.org/wiki/Yahtzee">yahtzee</a> and checkers...</p>
<p>And one of the juniors is hanging out with him, making sure he doesn't spill his beer, so you know they have his back.</p>
<p>Baseball cards are handed out at the events with each of the stars of the Democratic Party.</p>
<p>Collect them all!</p>
<p>You get 5 free cards with a $25 contribution.</p>
<p>Some would be very rare.</p>
<p>Also there would be Old Timers Day, where Bernie, Hillary, Barack, Michelle and Bill would have a concert. </p>
<p>Hosted by Mayor Pete!</p>
<p>Joe is at the top of the ticket, but we got him covered.</p>
<p>Out comes VP Kamala and she sings the anthem along with Taylor Swift wearing a red white and blue sequined outfit. </p>
<p>And Santa Claus, Uncle Sam, Betsy Ross, and the Founding Fathers. </p>
<p>Frederick Douglass, Martin Luther King, Jackie Robinson, Rosa Parks and the freedom fighters. </p>
<p>All the heroes of America, standing up for America. </p>
<p>The Greatest Generation and Repubs like Ike, even Reagan and of course Lynne Cheney.</p>
<p>We don't need no freaking monarch, they all sing.</p>
<p>No we don't! shouts the people. </p>
<p><a href="https://www.youtube.com/watch?v=vJBaIUZwmTs&t=43s">On video</a>, the Dead sing "I'm Uncle Sam, how do you do!"</p>
<p>Shake the hand that shook the hand of PT Barnum and Charlie Chan.</p>
<p>We all march together to victory.</p>
 

<http://scripting.com/2024/07/07/200033.html?title=democraticSuperstarsOf2024>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-07, from: Miguel de Icaza Mastondon feed)

<p>I should add that once you have this volume of photos, Apple Photos really shines - for searching events, people, locations, themes, memories;  and also to search text of screenshots and memes.</p> 

<https://mastodon.social/@Migueldeicaza/112746275704496953>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-07, from: Miguel de Icaza Mastondon feed)

<p>Two things I just learned:</p><p>- the iCloud storage is in addition to your AppleOne subscription, so I don’t need to buy the 6 TB tier yet, I only have to buy the additional 2TB to extent the 2TB I have from AppleOne.</p><p>- you can share the storage with your family (our family is 5, not sure if Apple Storage is Utah-friendly)</p> 

<https://mastodon.social/@Migueldeicaza/112746147803568530>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-07, from: Miguel de Icaza Mastondon feed)

<p>I wonder how your photo library compares to mine?   </p><p>I always loved photos, but taking pictures and videos of the kids took this to another level.</p> 

<https://mastodon.social/@Migueldeicaza/112746110456638924>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-07, from: Miguel de Icaza Mastondon feed)

<p>Cutting it close:</p> 

<https://mastodon.social/@Migueldeicaza/112746082195834579>

---

**@Dave Winer's Scripting News** (date: 2024-07-07, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/11/26/uncleSam.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I'm glad Biden is attacking journalists, he has a much bigger voice than I do. If I had his influence I'd be saying the same things, though I wouldn't be as kind. It's time to put the journalists back where they belong, covering news, not trying to run the country. 

<http://scripting.com/2024/07/07.html#a153855>

---

## fnec ece commented on issue #141 at Felix Oliver Friedrich / Oberon A2

date: 2024-07-07, updated: 2024-07-07, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:39" dir="auto">Sorry, could not insert xml statements.</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/141#note_193236>

---

## fnec ece commented on issue #141 at Felix Oliver Friedrich / Oberon A2

date: 2024-07-07, updated: 2024-07-07, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:88" dir="auto">What happens if you don&#39;t load HotKeys module at Autostart section of Configuration.XML;</p>
<p data-sourcepos="3:1-3:24" dir="auto">To comment, change this:</p>

<p data-sourcepos="7:1-7:3" dir="auto">To:</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/141#note_193235>

---

**@Dave Winer's Scripting News** (date: 2024-07-07, from: Dave Winer's Scripting News)

It's time to stop caring what journalists think. 

<http://scripting.com/2024/07/07.html#a142927>

---

**@Jessica Smith's blog** (date: 2024-07-07, from: Jessica Smith's blog)

<p>We were looking after this little guy (the dog, Patches) for the weekend. He and Gidget got along so well! Very happy to sleep in close proximity and be chill. I think Gidget is happy to be the only pet again after Viv returned him home, though 😂</p>
<div style="display: grid; grid-template-columns: auto auto; grid-gap: 0.5rem; margin-top: 0.5rem;">
	
<a href="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches.jpeg" class="glightbox" data-gallery="patches-stayed-the-weekend"
  style="grid-column: 1 / span 2; aspect-ratio: 4 / 3;"><img 
  sizes="(min-width: 715px) 640px, (min-width: 435px) 90vw, 100vw"
  srcset="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_320x0_resize_q85_box.jpeg 320w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_440x0_resize_q85_box.jpeg 440w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_640x0_resize_q85_box.jpeg 640w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_830x0_resize_q85_h2_box.webp 830w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_1280x0_resize_q85_h2_box.webp 1280w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches.jpeg 1920w"
  src="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_830x0_resize_q85_h2_box.webp"
  alt="a small dog with short, curly fur (mostly light-coloured with some reddish brown patches), curled up into a tight ball on a carpeted floor near some shoes"
  loading="lazy" class="u-photo u-featured"></a>
<a href="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch.jpeg" class="glightbox" data-gallery="patches-stayed-the-weekend"
  style="aspect-ratio: 4 / 3;"><img 
  sizes="(min-width: 715px) 320px, (min-width: 435px) 45vw, 50vw"
  srcset="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_320x0_resize_q85_box.jpeg 320w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_440x0_resize_q85_box.jpeg 440w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_640x0_resize_q85_box.jpeg 640w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_830x0_resize_q85_h2_box.webp 830w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_1280x0_resize_q85_h2_box.webp 1280w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch.jpeg 1920w"
  src="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_830x0_resize_q85_h2_box.webp"
  alt="a photo looking lengthways along a couch. in the foreground, a tabby cat lying smugly on the photo-taker&#39;s lap. behind her, the small dog from the previous photo, sleeping. behind him, a brown guy in a blue hoodie scrolling his phone."
  loading="lazy" class="u-photo"></a>
<a href="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed.jpeg" class="glightbox" data-gallery="patches-stayed-the-weekend"
  style="aspect-ratio: 4 / 3;"><img 
  sizes="(min-width: 715px) 320px, (min-width: 435px) 45vw, 50vw"
  srcset="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_320x0_resize_q85_box.jpeg 320w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_440x0_resize_q85_box.jpeg 440w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_640x0_resize_q85_box.jpeg 640w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_830x0_resize_q85_h2_box.webp 830w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_1280x0_resize_q85_h2_box.webp 1280w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed.jpeg 1920w"
  src="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_830x0_resize_q85_h2_box.webp"
  alt="a tabby cat, curled up, and a small dog, lying more elongatedly, both sleeping on a brown doona"
  loading="lazy" class="u-photo"></a>

</div> 

<https://www.jayeless.net/2024/07/patches-stayed-the-weekend.html>

---

**@Robert's feed at BlueSky** (date: 2024-07-07, from: Robert's feed at BlueSky)

Thought this was an interesting read. https://maggieappleton.com/home-cooked-software 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3kwo4bimgqa2t>

---

## Leaving Elicit

date: 2024-07-07, from: Maggie Appleton blog

 

<https://maggieappleton.com/leaving-elicit>

---

## Full Circle Weekly News 373

date: 2024-07-07, from: Full Circle Magazine

<ul>
<li>
<p><a href="https://www.mail-archive.com/info-gnu@gnu.org/msg03295.html">GNU Guile 3.0.10:</a></p>
</li>
<li>
<p><a href="https://www.skudonet.com/blog/skudonet-7-1-0-community-edition/">Release SKUDONET 7.1:</a></p>
</li>
<li>
<p><a href="https://www.openshot.org/blog/2024/06/24/new_openshot_release_320/">Release of OpenShot 3.2.0:</a></p>
</li>
<li>
<p><a href="https://news.opensuse.org/2024/06/25/leap-micro-60-availability/">openSUSE Leap Micro 6.0:</a></p>
</li>
<li>
<p><a href="https://github.com/Ubuntu-Sway/Ubuntu-Sway-Remix/releases/tag/24.04">Ubuntu Sway Remix 24.04:</a></p>
</li>
<li>
<p><a href="https://gitlab.com/tile-os/tileos/-/tags/v1.1">TileOS 1.1 distribution update:</a></p>
</li>
<li>
<p><a href="https://github.com/PipeWire/pipewire/releases/tag/1.2.0">Release of PipeWire 1.2.0:</a></p>
</li>
<li>
<p><a href="https://shotcut.org/blog/new-release-240626/">Release of video editor Shotcut 24.06:</a></p>
</li>
<li>
<p><a href="https://opensource.googleblog.com/2024/06/google-open-source-peer-bonus-program-first-group-2024-recipients.html">Google announced the winners of the Open Source Peer Bonus 2024 award:</a></p>
</li>
<li>
<p><a href="https://pointieststick.com/2024/06/28/this-week-in-kde-everything-i-think/">KDE resolves KWin performance issues on older hardware:</a></p>
</li>
<li>
<p><a href="https://gitlab.gnome.org/GNOME/gnome-shell/-/merge_requests/3362">GNOME now supports Wayland-only builds and improves tablet support:</a></p>
</li>
<li>
<p><a href="https://www.debian.org/News/2024/20240629">New versions of Debian 12.6 and 11.10:</a></p>
</li>
<li>
<p><a href="https://newsroom.eclipse.org/news/announcements/eclipse-foundation-introduces-theia-ide-elevate-modern-developer-experience">Theia IDE:</a></p>
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

<https://fullcirclemagazine.org/podcasts/podcast-373/>

