---
title: columns
updated: 2025-08-14 06:08:57
---

# columns

(date: 2025-08-14 06:08:57)

---

## LLM Coding Integrity Breach

date: 2025-08-14, updated: 2025-08-14, from: Bruce Schneier blog

<p><a href="https://sketch.dev/blog/our-first-outage-from-llm-written-code">Here&#8217;s</a> an interesting story about a failure being introduced by LLM-written code. Specifically, the LLM was doing some code refactoring, and when it moved a chunk of code from one file to another it changed a &#8220;break&#8221; to a &#8220;continue.&#8221; That turned an error logging statement into an infinite loop, which crashed the system.</p>
<p>This is an <a href="https://www.computer.org/csdl/magazine/sp/2025/03/11038984/27COaJtjDOM">integrity failure</a>. Specifically, it&#8217;s a failure of processing integrity. And while we can think of particular patches that alleviate this exact failure, the larger problem is much harder to solve.</p>
<p>Davi Ottenheimer ...</p> 

<br> 

<https://www.schneier.com/blog/archives/2025/08/llm-coding-integrity-breach.html>

---

## Underlines and line height

date: 2025-08-14, from: Jeremy Keith Blog


<p>I was thinking about something I wrote yesterday when I was talking about <a href="https://adactio.com/journal/22084">styling underlines on links</a>:</p>

<blockquote>
  <p>For a start, you can adjust the distance of the underline from the text using <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/text-underline-offset"><code>text-underline-offset</code></a>. If you’re using a generous line-height, use a generous distance here too.</p>
</blockquote>

<p>For some reason, I completely forgot that we’ve got a line-height unit in CSS now: <a href="https://caniuse.com/mdn-css_types_length_lh"><code>lh</code></a>. So if you want to make the distance of your underline proportional to the line height of the text that the link is part of, it’s easy-peasy:</p>

<pre><code>text-underline-offset: 0.15lh;
</code></pre>

<p>The greater the line height, the greater the distance between the link text and its underline.</p>

<p>I think this one is going into <a href="https://adactio.com/journal/21896">my collection of CSS snippets</a> I use on almost every project.</p>

 

<br> 

<https://adactio.com/journal/22085>

---

## Bread and Butter and Hope

date: 2025-08-14, from: Robert Reich's blog

It&#8217;s not just Mamdani 

<br> 

<https://robertreich.substack.com/p/bread-and-butter-and-hope>

---

## Back to being FOSS, Redis delivers a new, faster version

date: 2025-08-14, updated: 2025-08-14, from: Liam Proven's articles at the Register

<h4>Meanwhile, the clock&#39;s ticking for the previous FOSS Redis</h4>
      <p>Redis 8.2 is FOSS again, albeit under a different license, and has multiple performance enhancements. Meanwhile, Redis 7.2, the last of the old FOSS versions, is nearing its end of life. New version, or new Valkey?</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/14/redis_redux/>

---

## 2025-08-11 Upgrading Debian Bookworm (12) to Trixie (13)

date: 2025-08-14, from: Alex Schroeder's Blog

<h1 id="2025-08-11-upgrading-debian-bookworm-12-to-trixie-13">2025-08-11 Upgrading Debian Bookworm (12) to Trixie (13)</h1>

<blockquote>
<p>Before starting the upgrade, make sure your <code>/boot</code> partition is at least 768 MB in size, and has about 300 MB free. If your system does not have a separate /boot partition, there should be nothing to do. &ndash; <a href="https://www.debian.org/releases/stable/release-notes/issues.html#ensure-boot-has-enough-free-space">5.1.5. Ensure /boot has enough free space</a></p>
</blockquote>

<p>I am missing 34M for boot!</p>

<pre><code># df -h | grep boot
/dev/sda2               734M  141M  540M  21% /boot
</code></pre>

<p>I&rsquo;m ignoring this for the moment. :(</p>

<p>Deleting files from the last upgrade:</p>

<pre><code>find /etc '(' -name '*.dpkg-*' -o -name '*.ucf-*' -o -name '*.merge-error' ')' -exec rm '{}' ';'
</code></pre>

<p>Purging config files:</p>

<pre><code>apt purge '?narrow(?config-files)'
</code></pre>

<p>Removing old stuff and making space:</p>

<pre><code>apt autoremove
apt clean
</code></pre>

<p>Lots of reading.
Replacing <code>/etc/apt/sources.list</code> with <code>/etc/apt/sources.list.d/debian.sources</code>:</p>

<pre><code>Types: deb
URIs: https://deb.debian.org/debian
Suites: trixie trixie-updates
Components: main non-free non-free-firmware contrib
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

Types: deb
URIs: https://security.debian.org/debian-security
Suites: trixie-security
Components: main non-free non-free-firmware contrib
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
</code></pre>

<p>And then:</p>

<pre><code>apt update
apt upgrade --without-new-pkgs
apt full-upgrade
</code></pre>

<p>I&rsquo;m ignoring the warnings about directories the upgrade process was unable to delete:
The ones I did check contained scripts and the like.
I would have felt OK to delete directories with generated files, or files modified by me.
But this? I don&rsquo;t know.</p>

<p>Conflicts I ran into:</p>

<pre><code>/etc/exim4/conf.d/main/03_exim4-config_tlsoptions
</code></pre>

<p>This file showed up as a conflict but it was nothing I remember doing. Install the maintainer version!</p>

<pre><code>/etc/systemd/journald.conf
</code></pre>

<p>I had added <code>SystemMaxUse=200M</code> and <code>MaxRetentionSec=7d</code> because I didn&rsquo;t want to give the log files that much space. So I redid those changes for the maintainer version.</p>

<pre><code>/etc/pam.d/login
</code></pre>

<p>I&rsquo;m not sure what this is about. Did I comment <code>session    optional   pam_motd.so motd=/run/motd.dynamic</code>? Perhaps I did. Let&rsquo;s go with the maintainer version and see if that&rsquo;s OK.</p>

<p>To do after the upgrade:</p>

<pre><code>rm /var/log/wtmp* /var/log/lastlog* /var/log/btmp*
</code></pre>

<p>I noticed that the sway background image is back.
I had to add a line at the very end of my config file:</p>

<pre><code>#
# Debian
#
# Include all the extra config
include /etc/sway/config.d/*
# Override the background
output * bg &quot;#333333&quot; solid_color
</code></pre>

<p><strong>2025-08-11</strong>. The things that aren&rsquo;t working on the server:</p>

<p>Getting Node.js installed was a pain. It has a separate sources list from NodeSource. ☹️</p>

<p><em>Solved, hopefully.</em></p>

<p>Services that rely on Monit starting a Mojolicious app via Hypnotoad no longer work.
Monit claims &ldquo;File &lsquo;/home/alex/perl5/perlbrew/perls/perl-5.40.0/bin/hypnotoad&rsquo; does not exist&rdquo;. ☹️</p>

<p><em>Rewriting the wrappers as systemd services.</em></p>

<p>My local Emacs can no longer connect to the server via Tramp. It just hangs. <code>ssh</code> and <code>mosh</code> still work, the config files are unchanged. ☹️</p>

<p><strong>2025-08-12</strong>. Ah, if I start Gnome, my old enemy is back: <code>localsearch-3</code>.</p>

<p>Looking at <a href="2018-05-07_Laptop_Fan">2018-05-07 Laptop Fan</a> and trying to disable to crawling:</p>

<pre><code># gsettings get org.freedesktop.Tracker3.Miner.Files crawling-interval 
-2
# gsettings get org.freedesktop.Tracker3.Miner.Files enable-monitors
false
</code></pre>

<p>The old <code>tracker</code> package is now a transitional package that depends on <code>tinysparql</code>. Trying to <code>apt remove</code> either of them will attempt to remove <code>gnome-session gnome-sushi tinysparql xdg-desktop-portal-gnome gnome-session-xsession nautilus tracker-extract</code>. Fuuuck.</p>

<p>Looking at the man pages, I get the feeling that <code>localsearch-daemon(3)</code> is what I need kill the processes. But how to disable them?</p>

<pre><code># locate localsearch|grep .service
/etc/systemd/user/gnome-session.target.wants/localsearch-3.service
/usr/lib/systemd/user/localsearch-3.service
/usr/lib/systemd/user/localsearch-control-3.service
/usr/lib/systemd/user/localsearch-writeback-3.service
/usr/share/localsearch3/miners/org.freedesktop.Tracker3.Miner.Files.service
/var/lib/systemd/deb-systemd-user-helper-enabled/localsearch-3.service.dsh-also
/var/lib/systemd/deb-systemd-user-helper-enabled/gnome-session.target.wants/localsearch-3.service
</code></pre>

<p>OK, some candidates!</p>

<p>The manual page for <code>localsearch-3(1)</code> mentioned that it was started by a <code>.desktop</code> file.
But perhaps I can just disable the service?</p>

<p>Maybe not.</p>

<pre><code># systemctl --user disable localsearch-3
The following unit files have been enabled in global scope. This means
they will still be started automatically after a successful disablement
in user scope:
localsearch-3.service
# sudo systemctl disable localsearch-3.service
Failed to disable unit: Unit localsearch-3.service does not exist
</code></pre>

<p>I&rsquo;m not sure what to do.</p>

<pre><code># locate localsearch|grep .desktop
/etc/xdg/autostart/localsearch-3.desktop
/usr/lib/x86_64-linux-gnu/localsearch-3.0/extract-modules/libextract-desktop.so
/usr/share/localsearch3/extract-rules/10-desktop.rule
/usr/share/localsearch3/miners/org.freedesktop.Tracker3.Miner.Files.service
</code></pre>

<p>Perhaps it&rsquo;s that first file. But how to disable <em>that</em>?</p>

<p>Ah, I am not alone. With that info I found <a href="https://bbs.archlinux.org/viewtopic.php?id=299586">a discussion on the Arch Linux forum</a> with various strategies being discussed. I will try to change the <code>X-GNOME-Autostart-enabled</code> line to <code>false</code> and see whether that helps. And while I am at it, I will also change <code>X-GNOME-HiddenUnderSystemd</code> to <code>false</code>.</p>

<p><strong>2025-08-13</strong>. Oh, and I can no longer edit remote files with my Emacs at home. It just hangs there and waits for the prompt or something, I guess.</p>

<p><strong>2025-08-13</strong>. Oh, and that annoying Gnome keyring? <a href="https://www.xmodulo.com/disable-gnome-keyring-linux-desktop.html">How to disable GNOME Keyring on GNOME desktop</a> by Dan Nanni suggests to copy the <code>gnome-keyring-*.desktop</code> files from <code>/etc/xdg/autostart</code> to <code>~/.config/autostart</code> and append the line <code>X-GNOME-Autostart-enabled=false</code> to each one.</p>

<p><strong>2025-08-14</strong>. The chkrootkit mail I get every day has a lot of useless information. One looks like <em>all</em> the dotfiles? Ugh.</p> 

<br> 

<https://alexschroeder.ch/view/2025-08-11-debian-trixie>

---

## August 13, 2025

date: 2025-08-14, from: Heather Cox Richardson blog

On August 14, 1935, President Franklin Delano Roosevelt signed the Social Security Act into law. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-13-2025>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-14, from: Miguel de Icaza Mastondon feed)

<p>My job here is done:</p><p><a href="https://github.com/migueldeicaza/RealityActions" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">github.com/migueldeicaza/Reali</span><span class="invisible">tyActions</span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115024680965950492>

---

## The Annals of Oligarchy, Defense Department Edition

date: 2025-08-14, updated: 2025-08-14, from: Daring Fireball

 

<br> 

<https://www.reuters.com/world/us/how-unraveling-two-pentagon-projects-may-result-costly-do-over-2025-08-13/>

---

## What It Actually ‘Feels Like’ in DC.

date: 2025-08-14, from: James Fallows, Substack

In 1989 Donald Trump rushed to false judgment about the Central Park Five. In 2025 he claims that &#8216;roving mobs of wild youth&#8217; have terrorized and ruined the capital. Once again he is wrong. 

<br> 

<https://fallows.substack.com/p/what-it-actually-feels-like-in-dc>

---

## Perplexity Is on the Prowl to Buy Web Browsers

date: 2025-08-14, updated: 2025-08-14, from: Daring Fireball

 

<br> 

<https://www.theinformation.com/articles/wild-chrome-bid-perplexity-hunting-browsers>

---

## Justin Sun v. Bloomberg

date: 2025-08-13, updated: 2025-08-13, from: Chris Coylier

 

<br> 

<https://www.mollywhite.net/micro/entry/justin-sun-v-bloomberg>

---

##  The Red Onion Font 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/the-red-onion-font>

---

## Published on Citation Needed: "Issue 90 – Crime szn bro"

date: 2025-08-13, updated: 2025-08-13, from: Chris Coylier

 

<br> 

<https://citationneeded.news/issue-90>

---

## Note published on August 13, 2025 at 9:16 PM UTC

date: 2025-08-13, updated: 2025-08-13, from: Chris Coylier

 

<br> 

<https://www.mollywhite.net/micro/entry/202508131716>

---

## ★ Max Read’s ‘A Literary History of Fake Texts in Apple’s Marketing Materials’

date: 2025-08-13, updated: 2025-08-13, from: Daring Fireball

It’s like an otherwise delightful cocktail with one distinctive unpleasant ingredient, which ingredient was added, deliberately, to imbue the libation with an aftertaste of spite. 

<br> 

<https://daringfireball.net/2025/08/max_read_literary_history_fake_apple_texts>

---

##  The Colors of the World, Seen From the International Space Station. &#8220;Recent... 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047332-the-colors-of-the-world>

---

##  Silicon Doodles & Microchip Art 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/silicon-doodles-microchip-art>

---

## August 12, 2025

date: 2025-08-13, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170920036/0b4984a6bac88ab4721ecf76cae0e9bf.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170920036/0b4984a6bac88ab4721ecf76cae0e9bf.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-12-2025-76f>

---

##  Dictators love a crisis. &#8220;For reasons of both personality and political ambition,... 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047337-dictators-love-a-crisis-f>

---

**@Ryan Gantz Bluesky feed** (date: 2025-08-13, from: Ryan Gantz Bluesky feed)

it's noon on humpday, people! are you ready??

you know what fucking time it is 

<br> 

<https://bsky.app/profile/sixfoot6.com/post/3lwck7r52os2w>

---

## Choosing Tools To Make Websites

date: 2025-08-13, from: Jim Nielsen blog

<p>Jan Miksovsky lays out his idea for <a href="https://goodinternetmagazine.com/site-creation-as-content-transformation/" >website creation as content transformation</a>. He starts by talking about tools that hide what’s happening “under the hood”:</p>
<blockquote>
<p>A framework’s marketing usually pretends it is unnecessary for you to understand how its core transformation works — but without that knowledge, you can’t achieve the beautiful range of results you see in the framework’s sample site gallery.</p>
</blockquote>
<p>This is a <em>great</em> callout. Tools will say, “You don’t have to worry about the details.” But the reality is, you end up worrying about the details — at least to some degree.</p>
<p>Why? Because what you want to build is full of personalization. That’s how you differentiate yourself, which means you’re going to need a tool that’s expressive enough to help you.</p>
<p>So the question becomes: how hard is it to understand the details that are being intentionally hidden away?</p>
<p>A lot of the time those details are not exposed directly. Instead they’re exposed through configuration. But configuration doesn’t really help you learn how something works. I mean, how many of you have learned how typescript works under the hood by using <code>tsconfig.json</code>? As Jan says:</p>
<blockquote>
<p>Configuration can lead to as many problems as it solves</p>
</blockquote>
<p>Nailed it. He continues:</p>
<blockquote>
<p>Configuring software is itself a form of programming, in fact a rather difficult and often baroque form. It can take more data files or code to configure a framework’s transformation than to write a program that directly implements that transformation itself.</p>
</blockquote>
<p>I’m not a Devops person, but that sounds like Devops in a nutshell right there. (It also perfectly encapsulates my feelings on trying to setup configuration in GitHub Actions.)</p>
<p>Jan moves beyond site creation to also discuss site hosting. He gives good reasons for keeping your website’s architecture simple and decoupled from your hosting provider (something I’ve been a long time proponent of):</p>
<blockquote>
<p>These site hosting platforms typically charge an ongoing subscription fee. (Some offer a free tier that may meet your needs.) The monthly fee may not be large, but it’s forever. Ten years from now you’ll probably still want your content to be publicly available, but will you still be happy paying that monthly fee? If you stop paying, your site disappears.</p>
</blockquote>
<p>In subscription pricing, any price (however small) is recurring. Stated differently: pricing is forever.</p>
<p>Anyhow, it’s a good read from Jan and lays out his vision for why he’s building <a href="https://weborigami.org" >Web Origami</a>: a tool for that encourages you to understand (and customize) how you transform content to a website. He just launched <a href="https://github.com/WebOrigami/origami/releases/tag/0.4.0" >version <code>0.4.0</code> </a> which has some exciting stuff I’m excited to try out further (I’ll have to write about all that later).</p>

    <hr />
    

    <p>
      Reply via:
      

      <a
        href="mailto:jimniels%2Bblog@gmail.com?subject=Re:%20blog.jim-nielsen.com/2025/choosing-tools-for-making-websites/"
        >Email</a
      >
      · <a href="https://mastodon.social/@jimniels">Mastodon</a> ·

      <a href="https://bsky.app/profile/jim-nielsen.com">Bluesky</a>
    </p> 

<br> 

<https://blog.jim-nielsen.com/2025/choosing-tools-for-making-websites/>

---

##  The Story of the Chinese Farmer 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/the-story-of-the-chinese-farmer-1>

---

##  &#8220;Today, general officers no longer seem to see themselves as guardians of... 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047335-today-general-officers-no>

---

## Building out of the mistakes of the past

date: 2025-08-13, from: Tracy Durnell Blog

I&#8217;ve learned a ton about gardening in the past decade plus of owning a house. Gardens are so slow-moving that they&#8217;re anchored in our past choices, and don&#8217;t represent our current knowledge or skills &#8212; but we also can&#8217;t develop those skills without trying things, and making some mistakes. Ripping the whole yard out doesn&#8217;t [&#8230;] 

<br> 

<https://tracydurnell.com/2025/08/13/building-out-of-the-mistakes-of-the-past/>

---

##  The &#8216;What It&#8217;s Like To Be&#8230;&#8217; podcast features interviews with people about... 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047299-the-what-its-like-to>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-13, from: Miguel de Icaza Mastondon feed)

<p>Quick snack break</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115022615474632812>

---

## Updated Design for Pebble Time 2 Watch

date: 2025-08-13, updated: 2025-08-13, from: Daring Fireball

 

<br> 

<https://ericmigi.com/blog/pebble-time-2-design-reveal>

---

##  A forthcoming book from long-time technology writer David Pogue: Apple: The First... 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047308-a-forthcoming-book-from-l>

---

## AI Applications in Cybersecurity

date: 2025-08-13, updated: 2025-08-13, from: Bruce Schneier blog

<p>There is a really great series of online events highlighting cool uses of AI in cybersecurity, titled Prompt&#124;&#124;GTFO. Videos from the <a href="https://www.youtube.com/playlist?list=PLXz1MhBqAGJx3HHWtw-qIhHH7JvGpcimw">first</a> <a href="https://www.youtube.com/playlist?list=PLXz1MhBqAGJwNk8RkjfJ03G8E1N3OAKtV">three</a> <a href="https://www.youtube.com/playlist?list=PLXz1MhBqAGJzZBwp9ivB58N4XZtcBkbpP">events</a> are online. And <a href="https://forms.gle/5Q4EbV3FGUhKrUFJA">here&#8217;s</a> where to register to attend, or participate, in the fourth.</p>
<p>Some really great stuff here.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/08/ai-applications-in-cybersecurity.html>

---

## A Cure for Corporate Addiction to Personal Data

date: 2025-08-13, from: Doc Searls (at Harvard), New Old Blog

I wrote the original version of this post for the March 2018 issue of Linux Journal. You can find it here. Since images from archival material in the magazine no longer load, and I want to update this anyway, here is a lightly edited copy of the original. Bear in mind that what you&#8217;ll read [&#8230;] 

<br> 

<https://doc.searls.com/2025/08/13/a-cure-for-corporate-addiction-to-personal-data/>

---

##  A 90-minute video of making a batch of woodblock prints &#8220;from blank... 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047321-a-90-minute-video-of-maki>

---

## Read "Deleting Tech Enforcement - Public Citizen"

date: 2025-08-13, updated: 2025-08-13, from: Chris Coylier

 

<br> 

<https://www.mollywhite.net/reading/shortform?search=Deleting%20Tech%20Enforcement%20-%20Public%20Citizen>

---

## Style your underlines

date: 2025-08-13, from: Jeremy Keith Blog


<p>We shouldn’t rely on colour alone to indicate that something is interactive.</p>

<p>Take links, for example. Sure, you can give them a different colour to the surrounding text, but you shouldn’t stop there. Make sure there’s something else that distinguishes them. You could make them bold. Or you could stick with the well-understood convention of underlying links.</p>

<p>This is where some designers bristle. If there are a lot of links on a page, it could look awfully cluttered with underlines. That&#8217;s why some designers would rather remove the underline completely.</p>

<p><a href="https://mastodon.social/@matuzo@front-end.social/114674911039663634">As Manu observed</a>:</p>

<blockquote>
  <p>I&#8217;ve done a lot of audits in the first half of this year and at this point a believe that designing links without underlines is a kink. The idea that users don&#8217;t understand that links are clickable arouses some designers. I can&#8217;t explain it any other way.</p>
</blockquote>

<p>But underlining links isn&#8217;t the binary decision it once was. You can use CSS to style those underlines just as you’d style any other part of your design language.</p>

<p><a href="https://example.com/" style="all: revert; font-size: 1.5em; text-decoration: underline">Here’s a regular underlined link.</a></p>

<p>For a start, you can adjust the distance of the underline from the text using <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/text-underline-offset"><code>text-underline-offset</code></a>. If you&#8217;re using a generous line-height, use a generous distance here too.</p>

<p><a href="https://example.com/" style="all: revert; font-size: 1.5em; text-decoration: underline; text-underline-offset: 0.2em">Here’s a link with an offset underline.</a></p>

<p>If you’d rather have a thinner or thicker underline, use <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/text-decoration-thickness"><code>text-decoration-thickness</code></a>.</p>

<p><a href="https://example.com/" style="all: revert; font-size: 1.5em; text-decoration: underline; text-underline-offset: 0.2em; text-decoration-thickness: 1px">Here’s a link with a thin underline.</a></p>

<p>The colour of the underline and the colour of the link don&#8217;t need to be the same. Use <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/text-decoration-color"><code>text-decoration-color</code></a> to make them completely different colours or make the underline a lighter shade of the link colour.</p>

<p><a href="https://example.com/" style="all: revert; font-size: 1.5em; text-decoration: underline; text-underline-offset: 0.2em; text-decoration-thickness: 1px; text-decoration-color: oklch(from currentColor l c h / 50%);">Here’s a link with a translucent underline.</a></p>

<p>That’s quite a difference with just a few CSS declarations:</p>

<pre><code>text-underline-offset: 0.2em;
text-decoration-thickness: 1px;
text-decoration-color: oklch(from currentColor l c h / 50%);
</code></pre>

<p>If that still isn’t subtle enough for you, you could even use <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/text-decoration-style"><code>text-decoration-style</code></a> to make the underline dotted or dashed, but that might be a step too far.</p>

<p><a href="https://example.com/" style="all: revert; font-size: 1.5em; text-decoration: underline; text-underline-offset: 0.2em; text-decoration-thickness: 1px; text-decoration-color: oklch(from currentColor l c h / 50%); text-decoration-style: dotted">Here’s a link with a dotted underline.</a></p>

<p>Whatever you decide, I hope you&#8217;ll see that underlines aren’t the enemy of good design. They&#8217;re an opportunity.</p>

<p>You should use underlines to keep your links accessible. But you should also use CSS to make those underlines beautiful.</p>

 

<br> 

<https://adactio.com/journal/22084>

---

##  &#8220;&#8216;This Show Felt Like It Was Falling Out of Me&#8217;. Six female... 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047326-this-show-felt-like-it>

---

##  I love that The Kid Should See This has dozens of videos... 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047331-i-love-that-the-kid>

---

**@Dave Winer's Scripting News** (date: 2025-08-13, from: Dave Winer's Scripting News)

The future very much includes WordPress. It'll be as central a service as Mastodon or Bluesky. 

<br> 

<http://scripting.com/2025/08/13.html#a125032>

---

**@Dave Winer's Scripting News** (date: 2025-08-13, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2025/08/13/clarus.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">If you're trying to read any of my <a href="https://github.com/scripting?tab=repositories">code</a> via GitHub, make sure to open <a href="https://github.com/scripting/feedlandSocket/blob/main/source.opml">source.opml</a> in <a href="http://drummer.land/">Drummer</a>, there are a lot of notes that don't make it through to the .js and .css files. I don't think I've ever said that on the blog before. I write my code in an outliner, and take advantage of its ability to collapse long comments into a single line. There are whole blogs at the top of some functions, notes about all the big changes in code, sometimes over years, and sometimes even decades of maintenance.  There's a <a href="https://github.com/scripting/reallysimple/blob/main/source.opml">source.opml</a> in most of the repos with a big comment at the top explaining what's going on. Also, most projects have a <a href="https://github.com/scripting/reallysimple/blob/main/worknotes.md">worknotes.md</a> file, and where there are dates in the source code, the refer back to dates in the worknotes.md file. Not always, but most of the time. Some of the code is very complex, I work really hard to make it simple so it can be worked on, but in some cases it's impossible to make it read casually. But it's all there, all the tools I use to write the code. 

<br> 

<http://scripting.com/2025/08/13.html#a123330>

---

## Wednesday 13 August, 2025

date: 2025-08-13, from: John Naughton's online diary

Commuters From Paul Day’s frieze in St Pancras Station in London. Quote of the Day ”Every civilization that has ever existed has ultimately collapsed. History is a tale of efforts that failed, or aspirations that weren’t realized. So, as a &#8230; <a href="https://memex.naughtons.org/wednesday-13-august-2025/41103/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/wednesday-13-august-2025/41103/>

---

## SIGINT During World War II

date: 2025-08-13, updated: 2025-08-07, from: Bruce Schneier blog

<p>The NSA and GCHQ have jointly published a history of World War II SIGINT: &#8220;<a href="https://media.defense.gov/2025/Jul/25/2003761271/-1/-1/0/SECRET_MESSENGERS.PDF">Secret Messengers: Disseminating SIGINT in the Second World War</a>.&#8221; This is the story of the British SLUs (Special Liaison Units) and the American SSOs (Special Security Officers).</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/08/sigint-during-world-war-ii.html>

---

## Some users report their Firefox browser is scoffing CPU power

date: 2025-08-13, updated: 2025-08-13, from: Liam Proven's articles at the Register

<h4>You guessed it: looks like it&#39;s a so-called AI</h4>
      <p>People are noticing Firefox gobbling extra CPU and electricity, apparently caused by an &#34;inference engine&#34; built into recent versions of Firefox. Don&#39;t say El Reg didn&#39;t try to warn you.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/13/firefox_ai_scoffing_power/>

---

## Office Hours: America and its president in 2035?

date: 2025-08-13, from: Robert Reich's blog

Possible scenarios 

<br> 

<https://robertreich.substack.com/p/office-hours-america-and-its-president>

---

## A hierarchy of liberty

date: 2025-08-13, from: Tracy Durnell Blog

In On Freedom, Timothy Snyder deconstructs liberty into positive and negative liberty. Negative liberty is defensive, assuming that things are blocking you from liberty, and when they are cleared away, you are free. This is the version of liberty embraced by libertarian Americans, who see government as getting in their way. Socialist Americans lean on the side [&#8230;] 

<br> 

<https://tracydurnell.com/2025/08/12/a-hierarchy-of-liberty/>

---

## August 12, 2025 

date: 2025-08-13, from: Heather Cox Richardson blog

Liberal commentator Jessica Tarlov nailed it this morning when she wrote: &#8220;He&#8217;s doing everything EXCEPT releasing the Epstein files.&#8221; Her comment was in reference to President Donald Trump&#8217;s social media post of 7:30 this morning, when he chummed the water by suggesting that the John F. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-12-2025>

---

## The trial run

date: 2025-08-13, from: Robert Reich's blog

Trump&#8217;s occupation of Washington, D.C. 

<br> 

<https://robertreich.substack.com/p/the-trial-run>

---

##  At 40, She Discovered She Was One of America&#8217;s Best Free Divers.... 

date: 2025-08-13, updated: 2025-08-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047324-at-40-she-discovered-she>

---

## Note published on August 13, 2025 at 12:18 AM UTC

date: 2025-08-13, updated: 2025-08-13, from: Chris Coylier

 

<br> 

<https://www.mollywhite.net/micro/entry/202508122015>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-13, from: Miguel de Icaza Mastondon feed)

<p>Enjoying my last few bottles of European wines before I am forced to drown my sorrows in American cleaning supplies:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115018524860229131>

---

## Put Names and Dates On Documents

date: 2025-08-13, updated: 2025-08-13, from: Alex Russel's blog

 

<br> 

<https://infrequently.org/2025/08/names-and-dates-on-docs-every-time/>

---

## Cassette 1.0

date: 2025-08-12, updated: 2025-08-12, from: Daring Fireball

 

<br> 

<https://thecassetteapp.com/>

---

##  If you&#8217;re still back-to-school (or racing-the-tariffs) shopping, these M4 Macbook Airs are... 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047330-if-youre-still-back-to-sc>

---

## Perplexity Made an Offer to Buy TikTok — Well, Half of TikTok — Back in January

date: 2025-08-12, updated: 2025-08-12, from: Daring Fireball

 

<br> 

<https://apnews.com/article/tiktok-bytedance-trump-perplexity-87988733973760927bb5681f7de9b9af>

---

## Reverse Engineering the Raspberry Pi Zero 2W

date: 2025-08-12, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Reverse Engineering the Raspberry Pi Zero 2W</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p><img src="https://www.jeffgeerling.com/sites/default/files/images/jonathan-clark-pico-zero-2w-full.jpeg" width="700" height="467" class="insert-image" data-insert-type="image" data-entity-type="file" data-entity-uuid="insert-image-1cf49e23-2f1e-4fe4-8cff-f08ba9fe2c55" data-insert-attach="{&quot;id&quot;:&quot;1cf49e23-2f1e-4fe4-8cff-f08ba9fe2c55&quot;,&quot;attributes&quot;:{&quot;alt&quot;:[&quot;alt&quot;,&quot;description&quot;],&quot;title&quot;:[&quot;title&quot;]}}" alt="Raspberry Pi not Pico by Jonathan Clark"></p>

<p>This is not a Raspberry Pi Pico. Despite it's tiny size and castellated edges, this is <em>actually</em> a full Raspberry Pi Zero 2W.</p>

<p>Well, sorta. At Open Sauce, probably the most interesting encounter I had was with <a href="http://jonathanclark.dev/">Jonathan Clark</a>.</p>

<p>You see, I was on a Reverse Engineering panel at Open Sauce, but <a href="https://x.com/geerlingguy/status/1945207387914178562">I mentioned on Twitter</a>, I wouldn't call myself a reverse engineer, more like a 'guy who breaks things sometimes taking them apart, and learns many ways to not break things, sometimes.'</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2025-08-12T16:00:29-05:00" title="Tuesday, August 12, 2025 - 16:00" class="datetime">August 12, 2025</time>
</span> 

<br> 

<https://www.jeffgeerling.com/blog/2025/reverse-engineering-raspberry-pi-zero-2w>

---

##  Car and plane travel from Canada to the US has dropped sharply... 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047328-car-and-plane-travel-from>

---

##  The Only Time Prince & Miles Davis Jammed Together Onstage: Watch the... 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047329-the-only-time-prince>

---

## Perplexity Jumps the Shark, Makes Clownish $34.5 Billion Stunt Offer to Buy Chrome From Google

date: 2025-08-12, updated: 2025-08-12, from: Daring Fireball

 

<br> 

<https://www.wsj.com/tech/perplexity-ai-google-chrome-offer-5ddb7a22?st=r5gGet&reflink=desktopwebshare_permalink>

---

## Flower Power in 2025

date: 2025-08-12, from: Dave Winer's Scripting News

<p>You're going to think this is crazy, but maybe we should do what the hippie kids did in the 60s and 70s, giving flowers to the new cops in DC. Start off saying we don't blame you, we'll give you the benefit of the doubt, let's all be Americans and remember what that means.</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/08/12/flowerPower.png"></center><a href="https://en.wikipedia.org/wiki/Flower_Power_(photograph)">Flower power</a>.</div></p>
 

<br> 

<http://scripting.com/2025/08/12/192238.html?title=flowerPowerIn2025>

---

**@Ryan Gantz Bluesky feed** (date: 2025-08-12, from: Ryan Gantz Bluesky feed)

*claude, gemini, gpt5, and grok all competing to assist, charm and validate me*

siri: okay, here's some music you don't like
alexa: btw i can send you more butt wipes, every month

*the simping continues unabated as I strip naked and bolt into the forest* 

<br> 

<https://bsky.app/profile/sixfoot6.com/post/3lw7zogfrls23>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-12, from: Miguel de Icaza Mastondon feed)

<p>This keyboard component is called “6-digit-verification entry pad”</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115017396978989937>

---

##  The Lego Game Boy 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/the-lego-game-boy>

---

## Trump’s political hack nominee for the Bureau of Labor Statistics is already monkeying with the data. 

date: 2025-08-12, from: Robert Reich's blog

The Senate mustn&#8217;t confirm him 

<br> 

<https://robertreich.substack.com/p/trumps-political-hack-nominee-for>

---

## He’s a 33-year-old Pro-Palestine Muslim Who’s Winning the Jewish Vote, a Democratic Socialist Whom Every Dem Party Leader in NY Has Refused to Endorse, and a U.S. Citizen for Only 7 Years!

date: 2025-08-12, from: Michael Moore's blog

Of Course He&#8217;s the Next Mayor! 

<br> 

<https://www.michaelmoore.com/p/hes-a-33-year-old-pro-palestine-muslim>

---

## August 11, 2025

date: 2025-08-12, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170812034/4194b51583ecb4a6646005d8732d2169.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170812034/4194b51583ecb4a6646005d8732d2169.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-11-2025-f1e>

---

##  A Man Read 3,599 Books Over 60 Years, and Now His Family... 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047322-a-man-read-3599-books>

---

## Read "you do not have to use generative ai "art" in your blogs because there are websites where you can get real, nice images for free"

date: 2025-08-12, updated: 2025-08-12, from: Chris Coylier

 

<br> 

<https://www.mollywhite.net/reading/shortform?search=you%20do%20not%20have%20to%20use%20generative%20ai%20%22art%22%20in%20your%20blogs%20because%20there%20are%20websites%20where%20you%20can%20get%20real%2C%20nice%20images%20for%20free>

---

## On Moral Politics

date: 2025-08-12, from: Doc Searls on Medium

 

<br> 

<https://dsearls.medium.com/on-moral-politics-76098ad756ad?source=rss-c021b6737f47------2>

---

##  The Boston Globe&#8217;s Prescient 2016 View of Our Trumpist Future 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/the-boston-globes-prescient-2016-view-of-our-trumpist-future>

---

## Not drowning in the RSS firehose

date: 2025-08-12, updated: 2025-08-12, from: Chris Coylier

 

<br> 

<https://www.mollywhite.net/micro/entry/202508121200>

---

##  Wplace Is Exploding Online Amid a New Era of Youth Protest. &#8220;Some... 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047325-wplace-is-exploding-onlin>

---

**@Dave Winer's Scripting News** (date: 2025-08-12, from: Dave Winer's Scripting News)

<a href="https://daytona.scripting.com/search?q=%22Paul%20Boutin%22">Paul Boutin</a> who I know from early Wired days offers some <a href="https://github.com/scripting/Scripting-News/issues/325#issuecomment-3179622599">hope</a> that it can be gotten to work, with a bit more guesswork, trial and error and head scratching. I probably will keep coming back to this until I break through. Or maybe hook up with another developer who can back into the <a href="https://github.com/scripting/feedlandSocket">websocket hose</a> coming out of FeedLand. It's a natural thing to hook up to AI systems. 

<br> 

<http://scripting.com/2025/08/12.html#a161728>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-12, from: Miguel de Icaza Mastondon feed)

<p>Next year I need to align our family vacation with the late stage of the iOS beta cycle.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115016690286450984>

---

##  The Iron Chef Opening Theme Was Composed by Hans Zimmer? 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/the-iron-chef-opening-theme-was-composed-by-hans-zimmer>

---

##  Vote for the 2025 Tiny Awards Site of the Year! This looks... 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047320-vote-for-the-2025-tiny>

---

##  This website is for humans. &#8220;I write the content on this website... 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047319-this-website-is-for-human>

---

## I just found out that Stephanie “Steve” Shirley passed away. She was an absolute hero to me.

date: 2025-08-12, from: Jeremy Keith Blog


<p>I just found out that Stephanie “Steve” Shirley passed away.</p>

<p>She was an absolute hero to me.</p>

 

<br> 

<https://adactio.com/notes/22083>

---

##  Reddit will block the Internet Archive. &#8220;The company says that AI companies... 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047318-reddit-will-block-the-int>

---

## Debian 13 'Trixie' arrives: x86-32 and MIPS out, RISC-V in

date: 2025-08-12, updated: 2025-08-12, from: Liam Proven's articles at the Register

<h4>Aside from glam, includes cool features like standalone GNOME Flashback session with no GNOME shell</h4>
      <p>Debian 13 has arrived, now with RISC-V and preconfigured &#34;blends&#34; right in the main installer.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/12/debian_13_trixie_released/>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-12, from: Miguel de Icaza Mastondon feed)

<p>We added an extension to test your Godot projects directly into Xogot:</p><p><a href="https://github.com/xibbon/xogot_remote_debug" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">github.com/xibbon/xogot_remote</span><span class="invisible">_debug</span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115015817816868086>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-12, from: Miguel de Icaza Mastondon feed)

<p>The article linked here by <span class="h-card" translate="no"><a href="https://mastodon.social/@clarko" class="u-url mention">@<span>clarko</span></a></span> is beautifully written.  Another one to add to my collection of “I wish I could write like this”.</p><p>The substance is just as good.<br /><a href="https://mastodon.social/@clarko/115013164540286949" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">mastodon.social/@clarko/115013</span><span class="invisible">164540286949</span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115015735526767571>

---

**@Dave Winer's Scripting News** (date: 2025-08-12, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/08/20/dave.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I had an hour to spare this morning so I decided for a third time to try to coax ChatGPT to play a role in a little drama I have in mind. I still want to use AI to power an RSS feed of news, customized to the interests of one person (me). My <a href="https://github.com/scripting/Scripting-News/issues/325#issuecomment-3179118706">query</a> is this: "Create a summary of the news, top 20 stories with an emphasis on these topics: how people are using AI, especially in education, blogging, US politics, science news, the NBA and MLB, with a slight emphasis on the Knicks and Mets. The results should be in JSON format, with each item including: A brief one sentence summary, publication date and a link to a source where the reader can get more info. My software will then create an RSS feed with this information.." The response was basically: "I'm sorry Dave." Groan. Here are <a href="https://github.com/scripting/Scripting-News/issues/325#issuecomment-3179036482">the details</a>. 

<br> 

<http://scripting.com/2025/08/12.html#a120432>

---

## 2025-08-12 Influential games

date: 2025-08-12, from: Alex Schroeder's Blog

<h1 id="2025-08-12-influential-games">2025-08-12 Influential games</h1>

<p><a class="account" href="https://dice.camp/@Ashigaru" title="@Ashigaru@dice.camp">@Ashigaru</a> mentioned how D&amp;D 3.0 was really important for him at the tjme and <a class="account" href="https://metalhead.club/@dereisenhofer" title="@dereisenhofer@metalhead.club">@dereisenhofer</a> mentioned him playing DSA (Das Schwarze Auge, i.e. The Dark Eye). And I thought about my gaming history.</p>

<p>I moved from The Dark Eye 1st ed that I played as a kid and again as a 15-year old to AD&amp;D 1st ed when I was around 16 because a Canadian exchange student said it was the original and obviously it had to better. Some mere months later my group switched to the new AD&amp;D 2nd ed because obviously new had to be better. And then my interest waned.</p>

<p>Years later, I got into M20 because of the blogs, and my players wanted to play the just released D&amp;D 3.5 because obviously new had to better. With the switch to D&amp;D 4 I put my foot down and went with Labyrinth Lord – and lost almost all my players. 🥺</p>

<p>But I found new ones and kept on playing. So for me, D&amp;D 3.5 stands for those special years just before the OSR blogs took off, when I came back to the game.</p>

<ul>
<li><a href="2006-11-09_Nostalgia_for_Rolplaying_Games">2006-11-09 Nostalgia for Rolplaying Games</a>, where I wish to get back into gaming</li>
<li><a href="2007-12-11_Looking_Back">2007-12-11 Looking Back</a> where I list all the Adventure Paths I still want to play</li>
<li><a href="2010-06-27_Gaming_History">2010-06-27 Gaming History</a> is where I repeat myself, but in the past 🤪</li>
</ul>

<p><a class="tag" href="/search/?q=%23RPG">#RPG</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-08-12-influential-games>

---

## The “Incriminating Video” Scam

date: 2025-08-12, updated: 2025-08-07, from: Bruce Schneier blog

<p>A few years ago, scammers invented a new phishing email. They would claim to have hacked your computer, turned your webcam on, and videoed you watching porn or having sex. BuzzFeed has an <a href="https://www.buzzfeed.com/poojashah1/new-email-scam-house-address-sc">article</a> talking about a &#8220;shockingly realistic&#8221; variant, which includes photos of you and your house&#8212;more specific information.</p>
<p>The article contains &#8220;steps you can take to figure out if it&#8217;s a scam,&#8221; but omits the first and most fundamental piece of advice: If the hacker had incriminating video about you, they would show you a clip. Just a taste, not the worst bits so you had to worry about how bad it could be, but something. If the hacker doesn&#8217;t show you any video, they don&#8217;t have any video. Everything else is window dressing...</p> 

<br> 

<https://www.schneier.com/blog/archives/2025/08/the-incriminating-video-scam.html>

---

## Trump’s “State Capitalism” 

date: 2025-08-12, from: Robert Reich's blog

It would be communism under any other dictator 

<br> 

<https://robertreich.substack.com/p/trumps-state-capitalism>

---

## August 11, 2025

date: 2025-08-12, from: Heather Cox Richardson blog

President Donald J. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-11-2025>

---

##  Roll On, You Crazy Tire! 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/roll-on-you-crazy-tire>

---

## ‘The Quid Pro Quo Arrangement Is Unprecedented’

date: 2025-08-12, updated: 2025-08-12, from: Daring Fireball

 

<br> 

<https://www.ft.com/content/cd1a0729-a8ab-41e1-a4d2-8907f4c01cac>

---

##  Welcome to the Era of Big Stupid in America. &#8220;When you make... 

date: 2025-08-12, updated: 2025-08-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047311-welcome-to-the-era-of>

---

## [Sponsor] Dekáf Coffee Roasters

date: 2025-08-12, updated: 2025-08-12, from: Daring Fireball

 

<br> 

<https://dekaf.com/df>

---

## ‘Unusual Agreements’

date: 2025-08-12, updated: 2025-08-12, from: Daring Fireball

 

<br> 

<https://www.wsj.com/tech/nvidia-amd-chip-sales-us-government-f9e34b5f?st=pdZkXp&reflink=desktopwebshare_permalink>

---

## you do not have to use generative ai "art" in your blogs because there are websites where you can get real, nice images for free

date: 2025-08-12, updated: 2025-08-12, from: Live Laugh blog

 

<br> 

<https://livelaugh.blog/posts/non-ai-images-for-blogs-websites/>

---

##  I Spent 6 Years Building a Ridiculous Wooden Pixel Display. &#8220;I built... 

date: 2025-08-11, updated: 2025-08-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047312-i-spent-6-years-building>

---

## Capital Punishment

date: 2025-08-11, from: Dan Rather's Steady

Trump manufactures a non-crisis 

<br> 

<https://steady.substack.com/p/capital-punishment>

---

## Internet People

date: 2025-08-11, from: Tracy Durnell Blog

WordPress anniversary, and thoughts on blogging by Kris Howard (via) (I told him that URLs are meant to be forever, and that losing websites “creates gaps in humanity’s collective knowledge and holes in the fabric of our shared culture”). I’m not sure if this is a generational thing, or just different cultures and social norms. [&#8230;] 

<br> 

<https://tracydurnell.com/2025/08/11/internet-people/>

---

## Mad King Watch, Intel Edition

date: 2025-08-11, updated: 2025-08-11, from: Daring Fireball

 

<br> 

<https://truthsocial.com/@realDonaldTrump/posts/114987288040725570>

---

## Note published on August 11, 2025 at 10:11 PM UTC

date: 2025-08-11, updated: 2025-08-11, from: Chris Coylier

 

<br> 

<https://www.mollywhite.net/micro/entry/202508111809>

---

## Trump Extends China Tariff Deadline by 90 Days, Again

date: 2025-08-11, updated: 2025-08-12, from: Daring Fireball

 

<br> 

<https://www.cnbc.com/2025/08/11/trump-china-tariffs-deadline-extended.html>

---

##  The Lord of the Rings Audiobook Is Fantastic 

date: 2025-08-11, updated: 2025-08-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/the-lord-of-the-rings-audiobook-is-fantastic>

---

## ★ OpenAI Brings Back Legacy ChatGPT 4o Model in Response to Outcry From Users Who Find GPT-5 Emotionally Unsatisfying

date: 2025-08-11, updated: 2025-08-11, from: Daring Fireball

It’s reasonable — especially for paying customers — to expect at least some advance notice of older models going away. But it’s unreasonable to think that older models are going to remain available in perpetuity — especially in the current LLM climate, where model age is measured in months, or even weeks. 

<br> 

<https://daringfireball.net/2025/08/openai_chatgpt_models_emotional_attachment>

---

## Monday session

date: 2025-08-11, from: Jeremy Keith Blog


<img src="https://adactio.com/images/uploaded/22082/small.jpg" srcset="https://adactio.com/images/uploaded/22082/medium.jpg 1.5x, https://adactio.com/images/uploaded/22082/large.jpg 2.5x" alt="Monday session" />
<p>Monday session</p>

 

<br> 

<https://adactio.com/notes/22082>

---

## August 10, 2025

date: 2025-08-11, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170717674/c5e9a5c500838b780b91e534b23277a1.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170717674/c5e9a5c500838b780b91e534b23277a1.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-10-2025-b9e>

---

##  Scientists have found a &#8220;robust&#8221; candidate for a planet orbiting Alpha Centauri... 

date: 2025-08-11, updated: 2025-08-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047313-scientists-have-found-a-r>

---

##  Honey, I Have No Clue What You&#8217;re Talking About — I Did... 

date: 2025-08-11, updated: 2025-08-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047314-honey-i-have-no-clue>

---

##  In a preseason game yesterday, Jacksonville Jaguars kicker Cam Little nailed a... 

date: 2025-08-11, updated: 2025-08-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047315-in-a-preseason-game-yeste>

---

## AOL Pulls the Plug on Dial-Up Service

date: 2025-08-11, updated: 2025-08-11, from: Daring Fireball

 

<br> 

<https://www.tomshardware.com/service-providers/network-providers/aol-will-end-dial-up-internet-service-in-september-34-years-after-its-debut-aol-shield-browser-and-aol-dialer-software-will-be-shuttered-on-the-same-day>

---

##  Smokey Bear Through the Years 

date: 2025-08-11, updated: 2025-08-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/smokey-bear-through-the-years>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-11, from: Miguel de Icaza Mastondon feed)

<p>Latuff never misses:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115011052064941440>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-11, from: Miguel de Icaza Mastondon feed)

<p>I always assumed “sando” was bro-speak for sandwich.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115011014179291623>

---

## Using GitHub Pages as a URL shortener / redirection service

date: 2025-08-11, from: Chris Heilmann's blog

With the fate of Goo.gl in the balance and many URL shortening/redirection services being either expensive or spammy, I wondered if I could find a free/cheap way of achieving the same. So I got myself a short domain (CLXI.org) and looked at using a GitHub repo with pages to redirect URLs. Turns out, this is [&#8230;] 

<br> 

<https://christianheilmann.com/2025/08/11/using-github-pages-as-a-url-shortener-redirection-service/>

---

##  Karen Attiah: I Gained 20 Pounds of Muscle. Here&#8217;s What I Learned.... 

date: 2025-08-11, updated: 2025-08-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047309-karen-attiah-i-gained-20>

---

## This website is for humans - localghost

date: 2025-08-11, from: Jeremy Keith Blog


<blockquote>
  <p>This website is for humans, and LLMs are not welcome here.</p>
</blockquote>

<p>Cosigned.</p>

<p><a href="https://adactio.com/links/22081">adactio.com/links/22081</a></p>
 

<br> 

<https://localghost.dev/blog/this-website-is-for-humans/>

---

## Session talk

date: 2025-08-11, from: Jeremy Keith Blog


<p>I was in Nor’n Irelan’ at the end of July for my annual week of <a href="https://www.belfasttraditionalmusic.com/">Belfast Tradfest</a>.</p>

<p>It was the best one yet. Classes in the morning, sessions all day, and concerts in the evening.</p>

<p>There were also some excellent events at Ulster University during the afternoons—talks, film screenings, interviews and discussions.</p>

<p>If you squint closely at <a href="https://images.squarespace-cdn.com/content/v1/58da46ee15d5db0567e7ca1c/1750803556821-68NZW483810FRP1HALAG/Festival+Poster+-+Print_A4.png">the poster for this year’s event</a> you’ll see my name on there. That’s because one of those afternoon events was me giving a talk about <a href="https://thesession.org/">thesession.org</a>.</p>

<p>I’m no stranger to public speaking but this was a very different audience to the usual conferences I speak at. I had to make sure not to get technical. So I talked about the history of the site, <a href="https://thesession.org/help#houserules">the house rules</a>, changes made over time, and pointed out some features that people might’ve missed.</p>

<p>I also made sure not to speak for too long. I had an hour but I kept the presentation to just 25 minutes so that there’d be plenty of time for questions and discussions afterwards.</p>

<p>It went really well. People had lots of questions and ideas.</p>

<p>Some interesting themes emerged from the discussion…</p>

<p>There was no shortage of suggestions for features that were <em>technically</em> possible, but that I’m probably not going to add because of they might clutter up the interface.</p>

<p>Some other people had suggestions for features that were actually already on the site …but implemented in such a subtle way that you could easily miss them.</p>

<p>This highlights an ongoing balancing act I’ve been performing for the site’s two and a half decades of existence. I want to keep improving the site and ensuring that powerful features are available. But I also want to keep the site streamlined and easy to use.</p>

<p>Thinking about it, this is one of the things that sets The Session apart from other tune collections out there. Many of them have great content but it’s not always easy to get to grips with it, at least at first.</p>

<p>Still, I may have gone too far in the other direction with The Session. In trying to avoid cluttering up the interface, I might’ve buried some features a little deep.</p>

<p>Anyway, all of this has been great food for thought. I’m really glad I got to meet so many people who use The Session. It literally wouldn’t exist without them.</p>

 

<br> 

<https://adactio.com/journal/22080>

---

## Viennese virtualization veteran releases Proxmox VE 9 and Backup Server 4

date: 2025-08-11, updated: 2025-08-11, from: Liam Proven's articles at the Register

<h4>Making a bit of a FOSS with Virtual Environment update</h4>
      <p>Viennese virtualization veteran Proxmox has updated its hypervisor and its storage offering to new, Debian 13 versions.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/11/proxmox_ve9_and_bs4/>

---

##  &#8220;You cannot keep your soul intact while building the Torment Nexus. The... 

date: 2025-08-11, updated: 2025-08-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047316-you-cannot-keep-your-soul>

---

##  American neo-Nazis love the Trump era. &#8220;[Trump] awakened a lot of people... 

date: 2025-08-11, updated: 2025-08-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047310-american-neo-nazis-love-t>

---

**@Dave Winer's Scripting News** (date: 2025-08-11, from: Dave Winer's Scripting News)

Fixed a bit of breakage on the <a href="http://scripting.com/?tab=links">Links page</a> over the weekend. 

<br> 

<http://scripting.com/2025/08/11.html#a134529>

---

**@Dave Winer's Scripting News** (date: 2025-08-11, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/03/12/hamstercage.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I want to work on the open web with other developers who make interesting products that we can hook up together to make new products. Or if users get an idea for linking two products, they can do it with scripting. It was a dream we had for the Mac, but it fell apart because Apple wanted to control everything. I find it's better when developers are free to work with each other, without interference from a big company like Apple. That's why "platform without a platform vendor" was the most important thing about the web. That and the utter simplicity of HTTP and HTML. We lost our way in the early-mid 00s when Twitter took over at the center of the blogosphere. Now you couldn't just work with other developers, first you had to work with Twitter and accept its limits. In one swoop we lost all the features listed on the <a href="https://textcasting.org/">textcasting</a> page. I am betting everything on the idea that we can build a collaborative environment like the web was before, and that the Mac had the promise of being before that and at the same time create a fantastic <a href="https://daytona.scripting.com/search?q=%22writer%27s%20web%22">writer's web</a>, far beyond what Twitter and twitter-like systems can do. 

<br> 

<http://scripting.com/2025/08/11.html#a132915>

---

##  Israel&#8217;s right-wing government has murdered five Al Jazeera journalists in a deliberate... 

date: 2025-08-11, updated: 2025-08-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047307-israels-right-wing-govern>

---

## Building blocks for idiomatic Go pipelines

date: 2025-08-11, from: Anton Zhiyanov blog

Unopinionated and composable channel operations. 

<br> 

<https://antonz.org/chans/>

---

## Automatic License Plate Readers Are Coming to Schools

date: 2025-08-11, updated: 2025-08-07, from: Bruce Schneier blog

<p>Fears around children is opening up a <a href="https://therecord.media/flock-safety-raptor-technologies-schools-surveillance">new market</a> for automatic license place readers.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/08/automatic-license-plate-readers-are-coming-to-schools.html>

---

## An important way to fight Trump fascism. 

date: 2025-08-11, from: Robert Reich's blog

You can organize it. 

<br> 

<https://robertreich.substack.com/p/how-you-and-your-neighbors-can-become>

---

## August 10, 2025

date: 2025-08-11, from: Heather Cox Richardson blog

On Friday, Democracy Forward Foundation sued the Department of Justice (DOJ) and the Federal Bureau of Investigation (FBI) to make it respond to its request for the release of the Epstein files, as well as all communications the administration has exchanged over the files and President Donald Trump&#8217;s inclusion in them, as required under the Freedom of Information Act. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-10-2025>

---

## My dream gravel bike build

date: 2025-08-11, from: Matt Haughey blog

<p>Back in March,&#xA0;<a href="https://a.wholelottanothing.org/a-marathon-trip/" rel="noreferrer">my bike got stolen</a>.</p><p>I own a few different bikes, but the stolen one was my main rig. It was my do anything, long distance, off-road, on-road, gravel bike that covered 90% of my riding. </p><p>It was a<em> load-bearing </em>bike. And I was lost without it.</p> 

<br> 

<https://a.wholelottanothing.org/my-dream-gravel-bike-build/>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-11, from: Miguel de Icaza Mastondon feed)

<p>Israel assassinated the entire staff of Al Jazeera in Gaza today.</p><p>They will finally be able to finish their genocide without those upsetting images.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115007907098778233>

---

## WorkOS: Simplify MCP Authorization

date: 2025-08-11, updated: 2025-08-11, from: Daring Fireball

 

<br> 

<https://workos.com/blog/mcp-authorization-in-5-easy-oauth-specs?utm_source=daringfireball&utm_medium=display&utm_campaign=q32025>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-11, from: Miguel de Icaza Mastondon feed)

<p>One of my most valued possessions:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115007187201751294>

---

## How Do Committees Fail To Invent?

date: 2025-08-11, updated: 2025-08-11, from: Alex Russel's blog

 

<br> 

<https://infrequently.org/2025/08/how-do-committees-fail-to-invent/>

---

## Monday 11 August, 2025

date: 2025-08-10, from: John Naughton's online diary

End of the Valley Langdale on a beautiful day. Quote of the Day &#8220;For Trump, everything is a shakedown, the way it was for Vito Genovese, who is Trump&#8217;s model of governance. Every crisis, foreign or domestic, is assessed for &#8230; <a href="https://memex.naughtons.org/monday-11-august-2025/41095/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-11-august-2025/41095/>

---

## It hasn't hit us yet

date: 2025-08-10, from: Dave Winer's Scripting News

<p>Theory about why we don’t fight to save the US.</p>
<p>Many of us haven’t personally felt much impact.</p>
<p>No hyperinflation yet.</p>
<p>The police still respond as they always have, wearing badges, faces uncovered.</p>
<p>The shelves are full at the supermarket.</p>
<p>The electricity is on, as is the internet. Buses and subways are running. The airports are open. </p>
<p>The Obamas and Clintons are still free, living in the US.</p>
<p>We read the news about universities and news orgs giving in. Corruption at the FBI and in Congress and the Supreme Court.</p>
<p>No major hurricanes, earthquakes, fires, tornados so cuts at FEMA not felt yet.</p>
<p>And we’ve been living in a normal way for hundreds of years. We’ve had no time to get used to the new normal. It doesn’t feel like anything yet.</p>
<p>I fear by the time we feel it it will be far too late, by design.</p>
 

<br> 

<http://scripting.com/2025/08/10/233215.html?title=itHasntHitUsYet>

---

**@Dave Winer's Scripting News** (date: 2025-08-10, from: Dave Winer's Scripting News)

One more bingeable, <a href="https://en.wikipedia.org/wiki/Blue_Lights_(2023_TV_series)">Blue Lights</a> from BBC on HBO Max. I love police dramas, esp British ones. I watched <a href="https://en.wikipedia.org/wiki/Peaky_Blinders_(TV_series)">Peaky Blinders</a> earlier this year and <a href="https://en.wikipedia.org/wiki/The_Fall_(TV_series)">The Fall</a>, another British crime drama, and, amazingly they all take place in Belfast, believe it or not, and don't count the number of times people say "wee" in the darndest places in BBC Belfast crime dramas. Do Brits really say <i>wee</i> all the time? How did I not see that coming. 

<br> 

<http://scripting.com/2025/08/10.html#a232340>

---

**@Dave Winer's Scripting News** (date: 2025-08-10, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2025/08/10/bobby.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Internet was out at the house all day. Luckily it was one of the most perfect days to spend outside. In the meantime, I highly recommend the <a href="https://feedland.org/?feedurl=https%3A%2F%2Ffeeds.megaphone.fm%2Ffloodlines">Floodlines serial podcast</a> from the Atlantic. It's bingeable in an afternoon, tells an interesting story of Katrina and New Orleans. The interview with <a href="https://www.c-span.org/clip/white-house-event/katrina-10-years-later-brownie-youre-doing-a-heck-of-a-job/4548480">Brownie</a> is <i>cringe</i>-worthy not binge-worthy, I skipped over it. 

<br> 

<http://scripting.com/2025/08/10.html#a231446>

---

## Sunday caption contest: Trump advisers 

date: 2025-08-10, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-trump-advisors>

---

##  Great new t-shirt for Gracie&#8217;s Ice Cream features a Jaws-shaped cone about... 

date: 2025-08-10, updated: 2025-08-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047305-great-new-t-shirt-for-gra>

---

## August 9, 2025

date: 2025-08-10, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170631586/280d10caf5d4224971fe4a3be80ff7b6.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170631586/280d10caf5d4224971fe4a3be80ff7b6.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-9-2025-7df>

---

## Sit On Your Ass Web Development

date: 2025-08-10, from: Jim Nielsen blog

<p>I’ve been <del>reading</del> listening to <a href="https://press.stripe.com/poor-charlies-almanack" ><em>Poor Charlie’s Almanack</em></a> which is a compilation of talks by Charlie Munger, legendary vice-chairman at Berkshire Hathaway.</p>
<p>One thing Charlie talks about is what he calls “sit on your ass investing” which is the opposite of day trading. Rather than being in the market every day (chasing trends, reacting to fluctuations, and trying to time transactions) Charlie advocates spending most of your time “sitting on your ass”. That doesn’t mean you’re doing nothing. It means that instead of constantly trading you’re spending your time in research and preparation for trading.</p>
<p>Eventually, a top-tier opportunity will come along and your preparation will make you capable of recognizing it and betting big. <em>That’s when you trade.</em> After that, you’re back to “sitting on your ass”. Trust your research. Trust your choices. Don’t tinker. Don’t micromanage. Don’t panic. Just let the compounding effects of a good choice work in your favor.</p>
<h2 id="day-trading-day-developing">Day Trading, Day Developing</h2>
<p>As a day trader your job is to trade daily (it’s right there in the job title). If you’re not trading every day then what are you even doing? Not your job, apparently.</p>
<p>I think it’s easy to view “development” like this. You’re a developer. Your job is to develop programs — to write code. If you’re not doing that every single day, then what are you even doing?</p>
<p>From this perspective, it becomes easy to think that writing endless code for ever-changing software paradigms is just how one develops websites.</p>
<p>But it doesn’t have to be that way. Granted, <a href="https://dubroy.com/blog/cold-blooded-software/" >there’s cold-blooded and warm-blooded software.</a> Sometimes you can’t avoid that.</p>
<p>But I also think there’s a valuable lesson in Charlie’s insight.   You don’t have to chase “the market” of every new framework or API, writing endless glue code for features that already exist or that will soon exist in browsers. Instead, you can make a few select, large bets on the web platform and then “sit on your ass” until the payoff comes later!</p>
<h2 id="an-example-polyfills">An Example: Polyfills</h2>
<p>I think polyfills are a great example of an approach to “sit on your ass” web development. Your job as a developer is to know enough to make a bet on a particular polyfill that aligns with the future of the web platform. Once implemented, all you have to do is sit on your ass while other really smart people who are building browsers do their part to ship the polyfilled feature in the platform. Once shipped, you “sell” your investment by stripping out the polyfill and reap the reward of having your application get lighter and faster with zero additional effort.</p>
<p>A big part of the payoff is in the waiting — in the “sitting on your ass”. You make a smart bet, then you sit patiently while others run around endlessly writing and rewriting more code (meanwhile the only thing left for you will be to delete code).</p>
<p>Charlie’s business partner Warren Buffett once said that it’s “better to buy a wonderful company at a fair price, than a fair company at a wonderful price”. Similarly, I’d say it’s better to build on a polyfill aligned with the future of the platform than to build on a framework re-inventing a feature of the platform.</p>
<h2 id="get-out-of-your-own-way">Get Out Of Your Own Way</h2>
<p>Want to do “Day Trading Development”?</p>
<ul>
<li>Jump tools and frameworks constantly — “The next one will solve all our problems!”</li>
<li>Build complex, custom solutions that duplicate work the web  platform is already moving towards solving.</li>
<li>Commit code that churns with time, rather than compounds with it.</li>
</ul>
<p>Want to do “Sit on Your Ass Development”?</p>
<ul>
<li>Do the minimum necessary to bridge the gap until browsers catch up.</li>
<li>Build on forward-facing standards, then sit back and leverage the compounding effects of browser makers and standards bodies that iteratively improve year over year (none of whom you have to pay).</li>
<li>As <a href="https://notes.jim-nielsen.com/#2025-07-18T0946" >Alex Russel recommends</a>, spend as little time as possible in your own code and instead focus on glueing together “the big C++/Rust subsystems” of the browser.</li>
</ul>
<p>In short: spend less time glueing together tools and frameworks <em>on top of</em> the browser, and more time bridging tools and APIs <em>inside of the browser</em>. Then get out of your own way and go sit on your ass. You might find yourself more productive than ever!</p>
<h2 id="update-2025-08-11">Update: 2025-08-11</h2>
<p><a href="https://bsky.app/profile/davatron5000.bsky.social/post/3lw4vg2eo7k2w" >Dave Rupert mentioned</a> which web platform features he’s jumping on the bandwagon for:</p>
<ul>
<li>view transitions</li>
<li>scroll-driven animations</li>
<li>popover</li>
<li>masonry</li>
<li>web components</li>
<li>carousels</li>
</ul>
<p>And I would add to that my own (at the time of this writing):</p>
<ul>
<li>http imports / importmaps</li>
<li>css / json modules</li>
<li>URLPattern</li>
<li>css nesting</li>
<li>relative color syntax</li>
<li>HTML INCLUDES!</li>
</ul>

    <hr />
    

    <p>
      Reply via:
      

      <a
        href="mailto:jimniels%2Bblog@gmail.com?subject=Re:%20blog.jim-nielsen.com/2025/sit-on-your-ass-web-dev/"
        >Email</a
      >
      · <a href="https://mastodon.social/@jimniels">Mastodon</a> ·

      <a href="https://bsky.app/profile/jim-nielsen.com">Bluesky</a>
    </p> 

<br> 

<https://blog.jim-nielsen.com/2025/sit-on-your-ass-web-dev/>

---

## Finished reading Judgment Prey

date: 2025-08-10, updated: 2025-08-10, from: Chris Coylier

 

<br> 

<https://www.mollywhite.net/reading/books?search=Judgment%20Prey>

---

## The King

date: 2025-08-10, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/the-king>

---

## 2025-08-07 Oddμ hashtags

date: 2025-08-10, from: Alex Schroeder's Blog

<h1 id="2025-08-07-oddμ-hashtags">2025-08-07 Oddμ hashtags</h1>

<p>I was recently looking at my homepage and wondered about all the hashtags I used and how not all of them had a topic page. The <a href="Odd%CE%BC">Oddμ</a> page, for example, collects all the blogposts tagged <a class="tag" href="/search/?q=%23Oddμ">#Oddμ</a> (including this one). So I looked at the <a href="oddmu/oddmu-hashtags.1">hashtags</a> command and figured, &ldquo;this is going to be easy.&rdquo; 🤣</p>

<p>The first problem is that there are a lot of garbage hashtags. There are over 1000 hashtags used on this site! The garbage hashtags are the result of Markdown parsing mistakes that I never fixed. Apparently the list of hashtags includes the following:</p>

<pre><code>#1)
#fennel”
#fudge](fudge)_and_the_[pdq](../wiki?action=edit;id=pdq_&quot;click_to_edit_this_page&quot;)_rules_used_in_[zorcererofzo.
ffffff;fill-opacity:1&quot;)
###｣
</code></pre>

<p>This is not great. 😔</p>

<p>I should fix those, and many more. 🤨</p>

<p>Furthermore, the hashtags are all downcased. So given a hashtag such as <code>#advanced_squad_leader</code> the code would have to infer the page name &ldquo;Advanced Squad Leader&rdquo;. But what about the hashtag <code>#älter werden</code>? If at all, that should link to a page called &ldquo;Älter werden&rdquo;.</p>

<p>And so I concluded that this wasn&rsquo;t easy after all. I saved the changes I made on a branch, and I don&rsquo;t think I&rsquo;ll be merging that into the main branch.</p>

<p><a class="tag" href="/search/?q=%23Wikis">#Wikis</a></p>

<p><strong>2025-08-09</strong>. Well! I think I worked on it and I worked on it, and then I ran it, and kept on fixing the topic pages it created. But I think it worked!</p>

<p><strong>2025-08-10</strong>. Yesterday I cleaned up my site (somewhat) and today I released v1.18 of Oddμ. Yay me!</p> 

<br> 

<https://alexschroeder.ch/view/2025-08-07-oddmu-hashtags>

---

## Sunday thought: Working for the Good

date: 2025-08-10, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/seeking-the-good>

---

## August 9, 2025 

date: 2025-08-10, from: Heather Cox Richardson blog

Last Thursday, Defense Secretary Pete Hegseth reposted a video in which Christian nationalist pastors express their opposition to the idea of women voting. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-9-2025>

---

## weekly retro #27: new coming soon business

date: 2025-08-10, updated: 2025-08-10, from: Live Laugh blog

 

<br> 

<https://livelaugh.blog/posts/weekly-retro-2025-august-2/>

