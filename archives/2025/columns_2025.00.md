---
title: columns
updated: 2025-01-05 07:05:59
---

# columns

(date: 2025-01-05 07:05:59)

---

## The real reason that OS/2 flopped went on to shape modern software

date: 2025-01-05, updated: 2025-01-05, from: Liam Proven's articles at the Register

<h4><span class="label">Opinion</span> Even Microsoft&#39;s lead architect misunderstood the failure</h4>
      <p>The resurfacing of a 1995 Usenet post earlier this month prompted The Reg FOSS desk to re-examine a pivotal operating system flop … and its long-term consequences.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/01/05/os2_flopped_reason/>

---

## Biden Honors Bono

date: 2025-01-05, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/bono-goes-to-the-white-house>

---

## Sunday Caption Contest: Crossword!

date: 2025-01-05, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-crossword>

---

## January 4, 2025 

date: 2025-01-05, from: Heather Cox Richardson blog

Let&#8217;s take the night off. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-4-2025>

---

## Memo to Trump: US telecoms are vulnerable to hackers. Hang up and try again

date: 2025-01-05, from: John Naughton's online diary

Today’s Observer column: You know the drill. You’re logging into your bank or another service (Gmail, to name just one) that you use regularly. You enter your username and password and then the service says that it will send you &#8230; <a href="https://memex.naughtons.org/memo-to-trump-us-telecoms-are-vulnerable-to-hackers-hang-up-and-try-again/40306/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/memo-to-trump-us-telecoms-are-vulnerable-to-hackers-hang-up-and-try-again/40306/>

---

## Pulitzer-Prize-Winner Ann Telnaes Quits the Washington Post After Editors Nix Cartoon Mocking Bezos (and His Tech/Media Mogul Cohorts) for Paying Fealty to Trump

date: 2025-01-04, updated: 2025-01-04, from: Daring Fireball

 

<br> 

<https://anntelnaes.substack.com/p/why-im-quitting-the-washington-post>

---

**@Dave Winer's Scripting News** (date: 2025-01-04, from: Dave Winer's Scripting News)

BTW, as <a href="http://scripting.com/2025/01/03.html#a010024">promised</a>, last night's Knicks game was great. Up until the end, when the other guys took over and sadly the Knicks lost. We need a stronger bench. The starting five are great but they're not totally super-human. 

<br> 

<http://scripting.com/2025/01/04.html#a223717>

---

**@Dave Winer's Scripting News** (date: 2025-01-04, from: Dave Winer's Scripting News)

Just taking it easy. Thinking about stuff. Will resume blogging soon. <span class="spOldSchoolEmoji">😄</span> 

<br> 

<http://scripting.com/2025/01/04.html#a223632>

---

## January 3, 2025

date: 2025-01-04, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/154157241/2f718a6249f31eef8f2a14f2827ca927.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/154157241/2f718a6249f31eef8f2a14f2827ca927.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/january-3-2025-709>

---

## Disrupting my reading habits to read more of what *I* want (Part 3)

date: 2025-01-04, from: Tracy Durnell Blog

This is part three of a series on tackling wants, managing my media diet, and finding enough. Read the introduction on &#8220;the mindset of more.&#8221; The Internet feels like an old relative&#8217;s hoarder house, the hallways so packed with clutter you can barely squeeze through. At one point they remembered where some of the important [&#8230;] 

<br> 

<https://tracydurnell.com/2025/01/04/disrupting-my-reading-habits/>

---

## Ural Notes Part 2: Electrical and Lighting

date: 2025-01-04, updated: 2025-01-04, from: Russell Graves, Syonyk's Project Blog

 

<br> 

<https://www.sevarg.net/2025/01/04/ural-notes-part-2-electrical/>

---

## 2025-01-04 SSH app bots

date: 2025-01-04, from: Alex Schroeder's Blog

<h1 id="2025-01-04-ssh-app-bots">2025-01-04 SSH app bots</h1>

<p>A long time ago I wrote a program that is accessible via <code>ssh</code>.
Use the arrows to move around on the map, use <code>u</code> and <code>d</code> to raise and lower the land.
The program recomputes water flow, forests, swamps, settlements, and so on.
It&rsquo;s cute.</p>

<p>I called it <a href="https://src.alexschroeder.ch/hex-populate.git/">hex-populate</a>,
in honour of <a href="https://en.wikipedia.org/wiki/Populous_(series)">Populous</a>.</p>

<p>If you &ldquo;save&rdquo; the map, an SVG rendering is saved on the server which you can download via <code>scp</code>.</p>

<p>Since this application is a bit like a web site, there are not credentials to provide.
Anybody can give it a try:</p>

<pre><code>ssh campaignwiki.org -p 2022
</code></pre>

<p>Recently I wondered why load on the server was up to 3. The virtual server only has two cores so so it was overloaded.
I checked with <code>htop</code> and <code>hex-populate</code> was eating 50% of the CPU.
Really?
Was somebody fuzzing the application, sending it random input?</p>

<p>Let&rsquo;s check using <code>lsof</code>. The option <code>-i :2022</code> lists all the activity concerning the port I&rsquo;m interested in.
<code>-n</code> means I don&rsquo;t need the hostname. (The hostname was &ldquo;inspector-apps.com&rdquo;.)</p>

<pre><code># lsof -i :2022 -n
COMMAND       PID         USER   FD   TYPE    DEVICE SIZE/OFF NODE NAME
hex-popul 3601254 hex-populate    3u  IPv4 107999449      0t0  TCP 178.209.50.237:2022 (LISTEN)
hex-popul 3601254 hex-populate    7u  IPv4 107999454      0t0  TCP 178.209.50.237:2022-&gt;159.203.81.114:57528 (ESTABLISHED)
</code></pre>

<p>You know what comes next.</p>

<pre><code>root@sibirocobombus ~# whois 159.203.81.114
</code></pre>

<p>And based on the info, ban the whole network, and add it to <a href="/admin/ban-cidr">ban-cidr</a> as a warning for all to see.</p>

<pre><code>ipset add banlist 159.203.0.0/16
echo &quot;# &quot; (date --iso) &gt;&gt; bin/admin/ban-cidr
echo &quot;ipset add banlist 159.203.0.0/16&quot; &gt;&gt; bin/admin/ban-cidr
systemctl restart hex-populate.service
</code></pre>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23Hex_Populate">#Hex Populate</a> <a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-01-04-ssh-app-bots>

---

## The Republican Takeover. Oof. | Coffee Klatch for January 4, 2025

date: 2025-01-04, from: Robert Reich's blog

With Heather Lofthouse, Michael Lahanas-Calder&#243;n, and Yours Truly, Robert Reich 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/154098651/8439265725de597eb83e870bb1f0fe07.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/154098651/8439265725de597eb83e870bb1f0fe07.mp3" target="_blank">download audio/mpeg</a><br> 

<https://robertreich.substack.com/p/the-republican-takeover-oof-coffee>

---

## Weeknotes: Dec. 28, 2024 – Jan. 3, 2025

date: 2025-01-04, from: Tracy Durnell Blog

Win of the week: posted the intro and first two posts of the series I&#8217;ve been working on! third post scheduled for Saturday! Looking forward to: just got several books from the library I&#8217;ve been looking forward to, hopefully they&#8217;re good! Stuff I did: 0.5 hours consulting &#8212; took most of the week off work again, [&#8230;] 

<br> 

<https://tracydurnell.com/2025/01/03/weeknotes-dec-28-2024-jan-3-2025/>

---

## January 3, 2025 

date: 2025-01-04, from: Heather Cox Richardson blog

Today a new Congress, the 119th, came into session. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-3-2025>

---

## The Great American Tradition

date: 2025-01-04, updated: 2025-01-04, from: Daring Fireball

 

<br> 

<https://www.politico.com/news/2021/01/09/biden-inaugural-donors-major-corporations-456907>

---

## Gambling, sports, kids

date: 2025-01-04, from: Dave Winer's Scripting News

<p><a href="https://paulkrugman.substack.com/p/the-plot-to-poison-childrens-minds">Krugman writes</a> about social media is poisoning children's minds. </p>
<p>I like that Krugman has resumed his blogging. </p>
<p>This means that sometimes I agree or disagree, or have mixed opinions, but I always learn something. That's what makes a blogger good imho.</p>
<p>I don't know if I agree that children's minds are being poisoned. But I am pretty sure when people like Krugman and myself reach a certain age, and we are the same age, we start looking at new media that way. Maybe <i>our</i> minds are poisoned. My father called television the "idiot box." But it eventually became the literature of my generation, often very good. But maybe laws can help.</p>
<p>One thing I am sure of is that sports is being ruined by gambling. I can't imagine that a parent in 2025 would let their kids watch the NBA on TV, because it makes gambling appear to be a normal part of being a fan. Yet the NBA, which has a reputation of being socially forward-thinking, has swallowed the pill, and gambling is an integral part of coverage of the NBA now. </p>
<p>Same with the NFL, MLB and tennis. </p>
<p>And is this why they can now afford to <a href="https://www.mlb.com/news/juan-soto-agrees-to-contract-with-mets">sign players</a> to $765 million contracts? </p>
<p>They're all getting hugely rich, but I believe that they are certainly doing great harm to the new sports fans growing up now. </p>
<p>I am a no apologist for being a sports fan. I love the Mets and the Knicks, have flirted with the Niners, and have a place in my heart for the Cubs and Red Sox, and I know that gambling spoils what's fun about sports, can turn it into an awful addiction. I manage to be a fan without ever having bet on a game, even just a bet between friends. I don't see it as part of sports. It wasn't the way my family enjoyed sports. </p>
<p>I was a math major and a 50+ year programmer, and I know that if you gamble enough you lose all your money. And as an addiction no gambler ever gets up from the table to enjoy their winnings when they win.</p>
<p>PS: I wrote this <a href="https://daveverse.wordpress.com/2025/01/01/gambling-has-infested-sport-in-new-unacceptable-ways/">post</a> in WordLand on New Years Day, saving it for a good moment on Scripting.</p>
 

<br> 

<http://scripting.com/2025/01/03/014548.html?title=gamblingSportsKids>

---

**@Dave Winer's Scripting News** (date: 2025-01-04, from: Dave Winer's Scripting News)

<a href="https://www.youtube.com/watch?v=lhMDoBFYDmA">Knicks on Friday night</a>: A big offline day here in the mountains, the show will resume tomorrow bright and early, Murphy-willing. Enjoy tonight's <a href="https://www.si.com/nba/thunder/news/okc-thunder-vs-new-york-knicks-1-3-updated-injury-report-betting-odds">Knicks game</a> in OKC. Should be a great game. <span class="spOldSchoolEmoji">😄</span> 

<br> 

<http://scripting.com/2025/01/03.html#a010024>

---

## ‘Don’t You Think We Should Maybe Ask for More Than a Million Dollars? A Million Dollars Isn’t Exactly a Lot of Money These Days.’

date: 2025-01-04, updated: 2025-01-04, from: Daring Fireball

 

<br> 

<https://www.youtube.com/watch?v=EJR1H5tf5wE>

---

## Understanding DOGE as Procurement Capture

date: 2025-01-04, updated: 2025-01-04, from: Anil Dash blog

 

<br> 

<https://anildash.com/2025/01/04/DOGE-procurement-capture/>

---

## A History Lesson You Never Learned

date: 2025-01-03, from: Dan Rather's Steady

And the White House honor sending a message &#8230; to Donald Trump 

<br> 

<https://steady.substack.com/p/a-history-lesson-you-never-learned>

---

## Axios: Tim Cook Donates $1 Million to Trump Inauguration

date: 2025-01-03, updated: 2025-01-04, from: Daring Fireball

 

<br> 

<https://www.axios.com/2025/01/03/tim-cook-apple-donate-1-million-trump-inauguration>

---

## The Intricacy of ASML’s Extreme Ultraviolet Lithography Machines

date: 2025-01-03, updated: 2025-01-03, from: Daring Fireball

 

<br> 

<https://www.wsj.com/tech/ai/asml-euv-machine-lithography-chips-967954d0>

---

## Friday Squid Blogging: Anniversary Post

date: 2025-01-03, updated: 2025-01-02, from: Bruce Schneier blog

<p>I made my <a href="https://www.schneier.com/blog/archives/2006/01/friday_squid_bl.html">first squid post</a> nineteen years ago this week. Between then and now, I posted something about squid every week (with maybe only a few exceptions). There is a <i>lot</i> out there about squid, even more if you count the other meanings of the word.</p>
<p><a href="https://www.schneier.com/blog/archives/2024/06/new-blog-moderation-policy.html">Blog moderation policy.</a></p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/01/friday-squid-blogging-anniversary-post.html>

---

##  Clip is a &#8220;plug & play&#8221; unit that upgrades almost any bike... 

date: 2025-01-03, updated: 2025-01-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045933-clip-is-a-plug>

---

##  I loved the first volume of this, so I&#8217;m pleased to see... 

date: 2025-01-03, updated: 2025-01-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045957-i-loved-the-first-volume>

---

##  Male college enrollment could be dropping because of male flight. &#8220;Male flight... 

date: 2025-01-03, updated: 2025-01-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045954-male-college-enrollment-c>

---

##  Man-Made Structures Now Outweigh the Mass of the Living World 

date: 2025-01-03, updated: 2025-01-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/man-made-structures-now-outweigh-the-mass-of-the-living-world>

---

## January 2, 2025

date: 2025-01-03, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/154090632/db209ac52d28209bc143c0fdeab042a6.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/154090632/db209ac52d28209bc143c0fdeab042a6.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/january-2-2025>

---

## 2024 in Music

date: 2025-01-03, from: Tracy Durnell Blog

What I listened to in 2024 I listened to about 11890 songs — on average, 32 songs a day. 2831 unique tracks (down 30% from 2023) 688 artists (down 46% from 2023) 954 albums (down 52% from 2023) Monthly listening roundups My favorite music of 2024 My top played song was Pa Pa Power by [&#8230;] 

<br> 

<https://tracydurnell.com/2025/01/03/2024-in-music/>

---

##  A list of advice for defeating the authoritarian threat. &#8220;Authoritarians want you... 

date: 2025-01-03, updated: 2025-01-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045953-a-list-of-advice-for>

---

##  Depictions of children dying were rife in 19th century literature, mirroring high... 

date: 2025-01-03, updated: 2025-01-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045951-depictions-of-children-dy>

---

## How a good business deal made us underestimate BASIC

date: 2025-01-03, updated: 2025-01-03, from: Liam Proven's articles at the Register

<h4><span class="label">Feature</span> A somewhat savvy hardware move may have hurt street cred of an important language</h4>
      <p>A generation of gray-haired IT folks learned computing using BASIC on 1980s home computers. Every pro since then holds it in disdain. What happened?</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/01/03/reevaluating_basics_legacy/>

---

## trimMiddle() – the missing String trim method

date: 2025-01-03, from: Chris Heilmann's blog

One of the cool features of MacOS&#8217; Finder app is that it does not trim file names that don&#8217;t fit the space at the end, but in the middle of the file name. This does make a lot more sense, as it also shows what format the file is. Neither JavaScript nor CSS have a [&#8230;] 

<br> 

<https://christianheilmann.com/2025/01/03/trimmiddle-the-missing-string-trim-command/>

---

##  An online-only conversation from the British Library with Lauren Groff about her... 

date: 2025-01-03, updated: 2025-01-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045944-an-online-only-conversati>

---

## System76 built the fastest Windows Arm PC

date: 2025-01-03, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">System76 built the fastest Windows Arm PC</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>System76 built their first workstation-class Arm PC, the <a href="https://system76.com/desktops/thelio-astra-a1-n1/configure">Thelio Astra</a>, and it's marketed for <a href="https://system76.com/autonomous-vehicles">streamlined autonomous vehicle development</a>.</p>

<p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/system76-thelio-astra-hero.jpeg" alt="System76 Thelio Astra - Hero with Launch Keyboard"></p>

<p>But I'm not an automotive developer, just someone who enjoys Linux, Arm, and computing. So I was excited to spend a few weeks (which turned into a few <em>months</em>) testing the latest Ampere-based computer to come to market.</p>

<p>I initially ran my <a href="https://github.com/geerlingguy/sbc-reviews/issues/53">gauntlet of tests</a> under Ubuntu 24.04 (the OS this workstation ships with), but after discovering System76 dropped in ASRock Rack's <a href="https://www.newegg.com/asrock-rack-tpm-spi/p/N82E16816775069">TPM 2.0 module</a>, I switched tracks and installed Windows 11—which went without a hitch!</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2025-01-03T09:02:15-06:00" title="Friday, January 3, 2025 - 09:02" class="datetime">January 3, 2025</time>
</span> 

<br> 

<https://www.jeffgeerling.com/blog/2025/system76-built-fastest-windows-arm-pc>

---

## ShredOS

date: 2025-01-03, updated: 2025-01-03, from: Bruce Schneier blog

<p>ShredOS is a stripped-down operating system designed to <a href="https://boingboing.net/2025/01/02/shredos-is-an-entire-os-just-for-destroying-data.html">destroy data</a>.</p>
<p>GitHub page <a href="https://github.com/PartialVolume/shredos.x86_64">here</a>.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/01/shredos.html>

---

##  Fact-Checking the Spiciness of &#8216;Hot Ones&#8217; Sauces 

date: 2025-01-03, updated: 2025-01-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/fact-checking-the-spiciness-of-hot-ones-sauces>

---

## Engineers and their problems

date: 2025-01-03, from: Enlightenment Economics blog

I bought Wicked Problems: How to engineer a better world by Guru Madhavan because of a column by the author in the FT, The Truth About Maximising Efficiency: it argues that governments, like engineered artefacts and indeed our bodies need &#8230; <a href="http://www.enlightenmenteconomics.com/blog/index.php/2025/01/engineers-and-their-problems/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<http://www.enlightenmenteconomics.com/blog/index.php/2025/01/engineers-and-their-problems/>

---

## 
                Learning-OS/8086
            

date: 2025-01-03, updated: 2025-01-03, from: Uninformative blog

 

<br> 

<https://www.uninformativ.de/blog/postings/2025-01-03/1/POSTING-en.html>

---

## 
                Exploring OS/2’s virtualization: <code>EXIT_VDM.COM</code>
            

date: 2025-01-03, updated: 2025-01-03, from: Uninformative blog

 

<br> 

<https://www.uninformativ.de/blog/postings/2025-01-03/0/POSTING-en.html>

---

## HMD Fusion: A budget repairable smartphone with modular flair

date: 2025-01-03, updated: 2025-01-03, from: Liam Proven's articles at the Register

<h4><span class="label">Review</span> Expansion port on the back lets you add Outfits with added functions</h4>
      <p>HMD&#39;s Fusion smartphone has a pogo-pin port on the back, allowing some nifty peripherals, including gaming controls, and its specs are open.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/01/03/hmd_fusion_review/>

---

## From the Robber Barons to Elon Musk: Will History Repeat Itself?

date: 2025-01-03, from: Robert Reich's blog

Preparing for the Trump Regime, Part 1. 

<br> 

<https://robertreich.substack.com/p/from-the-robber-barons-to-elon-musk>

---

## January 2, 2024 

date: 2025-01-03, from: Heather Cox Richardson blog

This evening, President Joe Biden awarded twenty Americans the Presidential Citizens Medal, which is given to those &#8220;who have performed exemplary deeds of service for their country or their fellow citizens.&#8221; Biden chose these particular individuals because he &#8220;believes these Americans are bonded by their common decency and commitment to serving others&#8221; and that &#8220;[t]he country is better because of their dedication and sacrifice.&#8221; 

<br> 

<https://heathercoxrichardson.substack.com/p/january-2-2024-555>

---

## 2024 Year-End Reading Review

date: 2025-01-03, from: Tracy Durnell Blog

What I Read in 2024 I read 167 books in 2024, funnily enough the same number as in 2023. All the books I read My 20 favorite books from the year Reading stats 35 novellas 48 self-published 30 re-reads 39 owned books 31 comics (fiction and non-fiction) 107 DNF’s 70 physical books Fiction by genre [&#8230;] 

<br> 

<https://tracydurnell.com/2025/01/02/2024-year-end-reading-review/>

---

## Friday 3 January, 2025

date: 2025-01-03, from: John Naughton's online diary

Snowscape A Cambridge scene that makes me think of L.S.Lowry, even though Cambridge is the last place Lowry would have though of painting. Quote of the Day &#8220;When nothing is sure, everything is possible&#8221; Margaret Drabble Musical alternative to the &#8230; <a href="https://memex.naughtons.org/monday-6-january-2025/40296/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-6-january-2025/40296/>

---

## Simon Willisons’s Approach to Running a Link Blog

date: 2025-01-03, updated: 2025-01-03, from: Daring Fireball

 

<br> 

<https://simonwillison.net/2024/Dec/22/link-blog/>

---

##  Huh, there&#8217;s going to be a Blade Runner 2099 TV series. It... 

date: 2025-01-02, updated: 2025-01-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045945-huh-theres-going-to-be>

---

## ‘Things We Learned About LLMs in 2024’

date: 2025-01-02, updated: 2025-01-02, from: Daring Fireball

 

<br> 

<https://simonwillison.net/2024/Dec/31/llms-in-2024/>

---

##  Say Nothing TV Series 

date: 2025-01-02, updated: 2025-01-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/say-nothing-tv-series>

---

## January 1, 2025

date: 2025-01-02, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/154000471/2d55bdc1b7718048fbc38751b2ba6ea7.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/154000471/2d55bdc1b7718048fbc38751b2ba6ea7.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/january-1-2025-6ba>

---

##  The 20 Best Podcasts of 2024, including podcasts about the Guantánamo Bay... 

date: 2025-01-02, updated: 2025-01-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045943-the-20-best-podcasts-of>

---

## Google Is Allowing Device Fingerprinting

date: 2025-01-02, updated: 2025-01-02, from: Bruce Schneier blog

<p>Lukasz Olejnik <a href="https://blog.lukaszolejnik.com/biggest-privacy-erosion-in-10-years-on-googles-policy-change-towards-fingerprinting/">writes</a> about device fingerprinting, and why Google&#8217;s policy change to allow it in 2025 is a major privacy setback.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/01/google-is-allowing-device-fingerprinting.html>

---

##  Last week, Alessandro Slebir rode one of the largest waves ever surfed,... 

date: 2025-01-02, updated: 2025-01-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045949-last-week-alessandro-sleb>

---

##  Embroidery Journaling 

date: 2025-01-02, updated: 2025-01-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/embroidery-journaling>

---

## AI Achieves Sentience, Commits Suicide

date: 2025-01-02, from: Doc Searls (at Harvard), New Old Blog

I think up Onion headlines all the time: American Dream Ends When Nation Wakes Up. CAPTCHASTAN Capitol Lacks Bicycles, Motorcycles, Buses, Crosswalks. Local Pothole Has No Bottom Earthquake Denies Acting For God New Trump Fragrance Line Based On Fake Blood, Sweat. Then this morning, on one of SiriusXM&#8217;s ESPN channels, I heard Trump pitching his [&#8230;] 

<br> 

<https://doc.searls.com/2025/01/02/ai-achieves-sentience-commits-suicide/>

---

##  Mapping Police Violence: &#8220;Police killed more people in 2024 than any year... 

date: 2025-01-02, updated: 2025-01-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045942-mapping-police-violence-p>

---

## Questioning collections: the emotional weight of uncollecting (Part 2)

date: 2025-01-02, from: Tracy Durnell Blog

This is part two of a series on tackling wants, managing my media diet, and finding enough. Read the introduction on &#8220;the mindset of more.&#8221; In America we have a love-hate relationship with our stuff. We covet new stuff even as we discard the old. I&#8217;ve recognized this year just how much cruft I&#8217;ve accumulated [&#8230;] 

<br> 

<https://tracydurnell.com/2025/01/02/letting-go-past-selves/>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-01-02, from: Miguel de Icaza Mastondon feed)

<p>Next up in Godot editor rewrites, the Animation Editor.   First screenshot is what Godot has. </p><p>LogicPro, FinalCut and Procreate Dreams all are good sources of inspiration for a touch-friendly version for the timeline and how to reorganize the option menus</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/113759799559847663>

---

##  The top 10 videos shared by The Kid Should See This in... 

date: 2025-01-02, updated: 2025-01-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045941-the-top-10-videos-shared>

---

##  Happy Public Domain Day! 

date: 2025-01-02, updated: 2025-01-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/happy-public-domain-day>

---

##  Apple TV+ is going to be free this weekend for non-subscribers. You... 

date: 2025-01-02, updated: 2025-01-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0045940-apple-tv-is-going-to>

---

## Little Feed Reader on Bluesky

date: 2025-01-02, from: Dave Winer's Scripting News

<p>My <a href="https://bsky.app/profile/did:plc:fkwl6tbnev3vdx63bippmscy">little feed reader</a> on Bluesky is <a href="https://bsky.app/profile/did:plc:oety7qbfx7x6exn2ytrwikmr/post/3lerbu7ugvc2i">ready</a> for you to follow.</p>
<p>Technically, this is how the pieces fit together.</p>
<ol>
<li>I'm using the <a href="https://viewfeedlist.opml.org/?url=https%3A%2F%2Ffeedland.social%2Fopml%3Fscreenname%3Ddavewiner%26catname%3Dblogroll">OPML file</a> for my <i>blogroll</i> category on feedland.social to determine what's posted on Bluesky. When I add or remove feeds from the category, the OPML adjusts dynamically.</li>
<li>I'm running a new Node app that has a <a href="https://javascript.info/websocket">websocket</a> connection to feedland.social. It receives all the new items as they are found from all feeds over the socket. It's feedland.social's <a href="https://www.pubnub.com/learn/glossary/firehose-api/">firehose</a>. Since I'm currently the only user of that server, it's getting news from the all feeds I follow, not just the ones in the blogroll category. </li>
<li>The Node app checks each new item to see if it's in one of the feeds in the OPML list. If so, it reformats it to fit in a Bluesky post and sends it to the <a href="https://bsky.app/profile/did:plc:fkwl6tbnev3vdx63bippmscy">feediverse account</a>.  </li>
<li>If you're subscribed you should see the item, with a link, in your Bluesky timeline.</li>
</ol>
<p><b>Notes</b>.</p>
<ol>
<li>The Node app re-loads the OPML subscription list every minute so any change is quickly reflected.</li>
<li>It's the same <a href="https://blogroll.social/">blogroll</a> you <a href="https://imgs.scripting.com/2024/03/13/expandedBlogScreen.png">see</a> on my <a href="http://scripting.com/">blog's home page</a>.</li>
<li>The biggest <a href="https://github.com/scripting/textcasting/issues/1">problem</a> in getting this running was rate-limiting. I have dealt with this on Twitter and other services, but Bluesky was not, for a while, letting anything through with the error message that we were over the limit. It was suggested that we should cache the accessToken rather get a new one for every message. I did that and cautiously turned the server on again at first with a 5 message per hour self-imposed limit, then gradually increased it to 10 per hour. The latest version only requires that there be at least five minutes between posts, so that means no more than 12 per hour. </li>
<li>Thanks to <a href="https://bsky.app/profile/mcuban.bsky.social/post/3lerhvj52pk27">Mark Cuban</a> for the initial idea and his support. He saw a <a href="https://news.scripting.com/">river of news</a> from <a href="https://feedland.com/">FeedLand</a> and asked if it could work in Bluesky. That was the idea. I have always wanted a tight coupling between Bluesky and <a href="https://cyber.harvard.edu/rss/rss.html">RSS</a> but didn't know how to do it. We may have just skipped a step. </li>
<li>We realllly could use some more formating features in Bluesky messages. This is a really strong use-case imho for the <a href="https://textcasting.org/">textcasting</a> idea. </li>
<li>The coolest thing from my point of view is that I already had all the pieces, fully developed, the only thing that remained was to hook them together. </li>
<li>Finally, there's a <a href="https://this.how/feediverse/bluesky/">this.how page</a> for Little Feed Reader. It's purposely brief, but I have put a link to this post on that page. </li>
</ol>
 

<br> 

<http://scripting.com/2025/01/02/143149.html?title=littleFeedReaderOnBluesky>

---

## Sapporo, Japan

date: 2025-01-02, from: mrusme blog

"Sapporo is a city in Japan. It is the largest in northern Japan and the
largest city in Hokkaido, the northernmost main island of the country. It
ranks as the fifth most populous city in Japan with 1,959,750 residents as of
July 31, 2023. It is the capital city of Hokkaido Prefecture and Ishikari
Subprefecture. Sapporo lies in the southwest of Hokkaido, within the alluvial
fan of the Toyohira River, which is a tributary stream of the Ishikari. It is
considered the cultural, economic, and political center of Hokkaido." 

<br> 

<https://xn--gckvb8fzb.com/travel/japan/sapporo/>

---

## Proofread and translate text in VS Code

date: 2025-01-02, from: Anton Zhiyanov blog

A simple alternative to DeepL, Grammarly, and other similar tools. 

<br> 

<https://antonz.org/vscode-proofread/>

---

## The only real firewall against the Trump regime

date: 2025-01-02, from: Robert Reich's blog

In the pending Trump regime, federal judges (most of them appointed by Democratic presidents) will form the most important firewall. 

<br> 

<https://robertreich.substack.com/p/see-you-in-court>

---

## January 1, 2025

date: 2025-01-02, from: Heather Cox Richardson blog

Twenty-five years ago today, Americans&#8212;along with the rest of the world&#8212;woke up to a new century date&#8230;and to the discovery that the years of work computer programmers had put in to stop what was known as the Y2K bug from crashing airplanes, shutting down hospitals, and making payments systems inoperable had worked. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-1-2025>

---

## 20 favorite books I read in 2024

date: 2025-01-02, from: Tracy Durnell Blog

This year I&#8217;m sorting books by vibes instead of genres, sorry not sorry 😉 This was a bit of a rough reading year, so these are &#8220;favorites,&#8221; distinct from &#8220;best&#8221; or even necessarily &#8220;recommended&#8221; (if you&#8217;re ever looking for SFF or romance book recs, feel free to email me).  See all the books I read. [&#8230;] 

<br> 

<https://tracydurnell.com/2025/01/01/20-favorite-books-i-read-in-2024/>

---

## Trump will overplay his hand. Be ready for when he does. 

date: 2025-01-02, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/trump-will-overplay-his-hand-be-ready>

---

## Tesla Cybertruck Explodes and Burns Outside Entrance of Trump International Hotel and No-Casino in Las Vegas

date: 2025-01-01, updated: 2025-01-02, from: Daring Fireball

 

<br> 

<https://www.theverge.com/2025/1/1/24333612/cybertruck-fire-explosion-trump-hotel-las-vegas>

---

**@Ryan Gantz Bluesky feed** (date: 2025-01-01, from: Ryan Gantz Bluesky feed)

life in 2025 is a tale told by an edgelord, full of meme and flamewar, signifying nothing
https://www.theverge.com/2025/1/1/24333612/cybertruck-fire-explosion-trump-hotel-las-vegas 

<br> 

<https://bsky.app/profile/sixfoot6.bsky.social/post/3lepifejzhk2f>

---

## DOS live USB image with tools for writers

date: 2025-01-01, from: Liam on Linux

&nbsp;I finally got round to publishing a version 1.0 of my long-running&nbsp;hobby project: a bootable DOS live USB image with tools for writers, providing a distraction-free writing environment.<div class="status__content status__content--with-action" tabindex="0"><div class="status__content__text status__content__text--visible translate" lang="en"><p><a href="https://github.com/lproven/usb-dos" target="_blank" rel="nofollow noopener noreferrer" translate="no" class="status-link unhandled-link" title="https://github.com/lproven/usb-dos"><span class="invisible">https://</span><span>github.com/lproven/usb-dos</span></a></p><p>This is very rushed and the instructions are incomplete. Only FAT16 for now; FAT32 coming real soon now.</p></div></div><br /><br /><img src="https://www.dreamwidth.org/tools/commentcount?user=liam_on_linux&ditemid=93734" width="30" height="12" alt="comment count unavailable" style="vertical-align: middle;"/> comments 

<br> 

<https://liam-on-linux.dreamwidth.org/93734.html>

---

## [Sponsor] ListenLater.net

date: 2025-01-01, updated: 2025-01-01, from: Daring Fireball

 

<br> 

<https://www.listenlater.net/?referrer=df>

---

## How I edited my blog post “Accepting Friction”

date: 2025-01-01, from: Tracy Durnell Blog

I&#8217;ve been having fun giving feedback on other writers&#8217; blog posts recently &#8212; and it&#8217;s also made me remember that it works really well for me to add comments to a piece in track changes 😂 Usually, I do all my drafting in-browser. So, I decided for my next long piece, I&#8217;d go through the [&#8230;] 

<br> 

<https://tracydurnell.com/2025/01/01/how-i-edited-my-blog-post-accepting-friction/>

---

## ‘The Bond of our Common Humanity...’ 

date: 2025-01-01, from: James Fallows, Substack

Remarkable audio from Jimmy Carter's grandson on why the former president believed that unifying forces would ultimately prove stronger than &#8216;the divisiveness of our fears and our prejudices.&#8217; 

<br> 

<https://fallows.substack.com/p/the-bond-of-our-common-humanity>

---

**@Dave Winer's Scripting News** (date: 2025-01-01, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/09/10/kittyStamp.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I wrote a few blog posts in <a href="https://this.how/wordland/">WordLand</a> this morning because it was convenient. It's good the same way I like to use a twitter-like app to write first drafts, when all I have to type into is my iPad. I've also started using it on my desktop for short things, but I just <a href="https://imgs.scripting.com/2025/01/01/wordlandScreen.png">wrote</a> and edited a <a href="https://daveverse.wordpress.com/2025/01/01/gambling-has-infested-sport-in-new-unacceptable-ways/">complete blog post</a>, a response to something <a href="https://paulkrugman.substack.com/p/the-plot-to-poison-childrens-minds">Krugman wrote</a>, about how gambling is destroying sports. And what for? It's like what <a href="https://www.youtube.com/watch?v=FfI2iFvloso">Marge said</a> at the end of Fargo. "There's more to life than a little money, you know." It feels like they're feeding the NBA into a <a href="https://www.atlasobscura.com/places/fargo-wood-chipper">wood chipper</a>. What comes out the other side won't imho be recognizable as sport. And here you are, and it's a beautiful day. 

<br> 

<http://scripting.com/2025/01/01.html#a155912>

---

**@Dave Winer's Scripting News** (date: 2025-01-01, from: Dave Winer's Scripting News)

I've got so much new stuff stacked up, on its way out. Hold onto your hats. 

<br> 

<http://scripting.com/2025/01/01.html#a155709>

---

**@Dave Winer's Scripting News** (date: 2025-01-01, from: Dave Winer's Scripting News)

I've archived December in the GitHub repo, <a href="https://github.com/scripting/Scripting-News/blob/master/blog/opml/2024/12.opml">in OPML</a>, as usual. 

<br> 

<http://scripting.com/2025/01/01.html#a155554>

---

**@Dave Winer's Scripting News** (date: 2025-01-01, from: Dave Winer's Scripting News)

Welcome to a brand new year. The best one ever. <span class="spOldSchoolEmoji">😄</span> 

<br> 

<http://scripting.com/2025/01/01.html#a155520>

---

## 2024-12-31 Perry Rhodan

date: 2025-01-01, from: Alex Schroeder's Blog

<h1 id="2024-12-31-perry-rhodan">2024-12-31 Perry Rhodan</h1>

<p>Not too long ago I wanted to <a href="https://perry-rhodan.net/">buy some Perry Rhodan ebooks</a>.</p>

<p>Who is Perry Rhodan?
It&rsquo;s a series of dime novels <a href="https://www.perrypedia.de/wiki/Titelbildgalerie_PR_1_-_99">going back to the sixties</a>.
Shortly before the landing on the moon, this German series of A5 booklets, each more or less 60 pages long, started to appear.
The main character is one of the astronauts landing on the moon.
On the dark side of the moon, they discover aliens, and with this technology they return to Earth, end the cold war, explore the galaxy, gain immortality, and on and on.</p>

<p>The series has slowed down somewhat. They&rsquo;re on a biweekly schedule, now.
Not too long ago, episode 3300 was published.</p>

<p>I had subscribed to the series when I was between 14 and 16 years old.
I wanted some of this back.
An optimism, that humans were good, the some humans in power had integrity and good will and the energy to put things right.
A tolerance, curiosity, a trust in science and technology – a deserved trust! – stories without terrible violence and torture.</p>

<p>When I tried to order those ebooks, I had to provide an address and when I tried to enter an address, I could only enter an address in Germany or Austria.
I contacted their support and they told me it had to do with taxes.
I guess it has to do with value-added tax (VAT) and Switzerland not being in the European Union? I don&rsquo;t know.</p>

<p>I started looking around on the second hand market and found somebody selling their collection from volume 1800 up to 3100 and more.
Amazing.
Think about it: A year has about 50 weeks, so 1300 volumes is the equivalent of 26 years of dime novels.
1300 volumes of 60 pages each is 78,000 pages of Science Fiction.</p>

<p>I am so into it.</p>

<p>I just finished reading volume 1816.
I have read 17 volumes of the 1300+ I have – more than 1%! 🤭</p>

<p>I&rsquo;ll be reading for a few more years.</p>

<p><img loading="lazy" src="2024-12-31-perry.jpg" alt="About 2m of shelf space, 200 volumes per cardboard box." /></p>

<p><a class="tag" href="/search/?q=%23Perry_Rhodan">#Perry Rhodan</a> <a class="tag" href="/search/?q=%23Books">#Books</a></p> 

<br> 

<https://alexschroeder.ch/view/2024-12-31-perry>

---

## Office Hours: What will be our biggest challenge on January 1, 2026?

date: 2025-01-01, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/office-hours-what-will-be-our-biggest>

---

## December 31, 2024 

date: 2025-01-01, from: Heather Cox Richardson blog

And so, the sun sets on 2024. 

<br> 

<https://heathercoxrichardson.substack.com/p/december-31-2024>

---

## Wednesday 1 January, 2025

date: 2025-01-01, from: John Naughton's online diary

New beginnings Quote of the Day ”The more machines start to ’reason’ the more unpredictable they will become.” Ilya Sutskever (in his NuIPS 2024 Keynote) Just like humans, really. Musical alternative to the morning’s radio news Liam O’Flynn &#124; Newfoundland &#8230; <a href="https://memex.naughtons.org/wednesday-1-january-2025/40287/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://memex.naughtons.org/wp-content/uploads/2020/03/Day9-edited.mp3"></source>
</audio> <a href="https://memex.naughtons.org/wp-content/uploads/2020/03/Day9-edited.mp3" target="_blank">download audio/mpeg</a><br> 

<https://memex.naughtons.org/wednesday-1-january-2025/40287/>

---

## Well That Didn’t Take Long

date: 2024-12-31, from: Dan Rather's Steady

Immigration and public education fight causes clash in Trump transition 

<br> 

<https://steady.substack.com/p/well-that-didnt-take-long>

---

**@Ryan Gantz Bluesky feed** (date: 2024-12-31, from: Ryan Gantz Bluesky feed)

ending 2024 right: stuck in a dentist’s chair getting a filling while “drops of jupiter” blasts overhead at 300% of reasonable medical office volume 

na na na na na na, na na na 

<br> 

<https://bsky.app/profile/sixfoot6.bsky.social/post/3len4fz663s2p>

---

## December 30, 2024

date: 2024-12-31, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/153878417/3f6edbfdc495374c0c923586c68ab726.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/153878417/3f6edbfdc495374c0c923586c68ab726.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/december-30-2024-fdd>

---

## Jimmy Carter, President and Citizen.

date: 2024-12-31, from: James Fallows, Substack

More observations on what he meant in his time, and why he matters for the future. 

<br> 

<https://fallows.substack.com/p/jimmy-carter-president-and-citizen>

---

##  Saying Goodbye to 2024 

date: 2024-12-31, updated: 2024-12-31, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/saying-goodbye-to-2024>

---

## Apple TV+ Is Free This Weekend, January 3–5

date: 2024-12-31, updated: 2025-01-01, from: Daring Fireball

 

<br> 

<https://www.macrumors.com/2024/12/30/apple-tv-announces-free-weekend/>

---

## Accepting friction: listening without a streaming subscription (Part 1)

date: 2024-12-31, from: Tracy Durnell Blog

This is part one of a series on tackling wants, managing my media diet, and finding enough. Read the introduction on &#8220;the mindset of more.&#8221; Streaming music services promise us more &#8212; and need us to want more. To regain intentionality in how I listen to music, I cancelled my streaming music subscription: it&#8217;s now [&#8230;] 

<br> 

<https://tracydurnell.com/2024/12/31/listening-without-a-streaming-subscription/>

---

##  Inside Zildjian, a 400-year-old cymbal-making company in Massachusetts. Their business took off... 

date: 2024-12-31, updated: 2024-12-31, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045937-inside-zildjian-a-400-yea>

---

## Self-Own

date: 2024-12-31, from: David Rosenthal's blog

<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://imgs.xkcd.com/comics/duty_calls.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="330" data-original-width="300" height="200" src="https://imgs.xkcd.com/comics/duty_calls.png" width="182" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Credit: <a href="https://xkcd.com/386/">XKCD</a><br /></td></tr></tbody></table>
The Cambridge dictionary defines the verb to <a href="https://dictionary.cambridge.org/dictionary/english/bullshit">bullshit</a> as:<br />
<blockquote>
a rude word meaning to try to persuade someone or make them admire you by saying things that are not true
</blockquote>
The essence of successful bullshit is that it should be both plausible and presented authoritatively. Bullshitters are always tempted to buttress the appearance of authority by including actual evidence rather than just their interpretation of the evidence, but this is often a fatal mistake. Below the fold I discuss a classic example from MAGA's campaign to demonize immigrants.<br />
<span><a name='more'></a></span>
<br />
<a href="https://x.com/GabeGuidarini/status/1873114153105121647">@GabeGuidarini tweeted</a>:<br />
<blockquote>
<b>𝐓𝐡𝐢𝐬 𝐢𝐬 𝐭𝐡𝐞 𝐦𝐨𝐬𝐭 𝐢𝐦𝐩𝐨𝐫𝐭𝐚𝐧𝐭 𝐩𝐨𝐬𝐭 𝐲𝐨𝐮’𝐥𝐥 𝐞𝐯𝐞𝐫 𝐫𝐞𝐚𝐝 𝐨𝐧 𝐦𝐚𝐬𝐬 𝐢𝐦𝐦𝐢𝐠𝐫𝐚𝐭𝐢𝐨𝐧 𝐢𝐧𝐭𝐨 𝐭𝐡𝐞 𝐔𝐧𝐢𝐭𝐞𝐝 𝐒𝐭𝐚𝐭𝐞𝐬</b>:
<br />
<br />In 1924, President Calvin Coolidge signed the Johnson-Reed Immigration Act, which halted mass immigration into the United States.
<br />
<br />The act completely stopped immigration from Asia, and set strict quotas on immigration from other places including Europe.
<br />
<br />Wages began to dramatically increase. 
<br />
<br />By the 1950s, America reached the peak of its economic and industrial might. Economic inequality was low. Large businesses and workers alike were prospering.
<br />
<br />Then, in 1965 the Hart-Cellar Immigration Act was signed by President LBJ, opening the floodgates and allowing for massive unchecked immigration, especially from the global south.
<br />
<br />Immediately, income growth and wage growth for the bottom 90% of earners came to an abrupt halt.
<br />
<br />Soon after, the incomes for the top 1% of earners skyrocketed, leading to the massive wealth inequality in America we see today.
<br />
<br />The political left attributes this to simply a lack of proper taxation and regulation, but that’s mainly not the case.
<br />
<br />Mass immigration has allowed for modern scab labor to become the norm, allowing large companies to pay lower wages for foreign migrants who demand less.
<br />
<br />The loser? America’s middle class, which has been deteriorating for more than half a century now.
<br />
<br />When you see wealthy technocrats argue in favor of mass “skilled” immigration, keep this in mind.
</blockquote>
Who is GabeGuidarini?<br />
<blockquote>
Ohio Field Rep @TPAction_. Comms @OhioCRs. President @UDRepublicans. Fmr Acting President @uscollegegop.
</blockquote>
He is a Republican operative. His chain of causation sounds convincing, doesn't it?<br />
<br />
<a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiy0dfNt11OYkcm-pvxQDby-x3C8tMs17WcWzXNIGYS6RRrQffhyZaagetmnXOEL38691U725nVs7fonsezywwRhl3yGxDAl_kyTAEqnl9hWuPK8jAy2SwVws2bRDpudADbhRw8dgLTC1c8Krag15g2f8h81022GkjjxfevOt6lxsPUHMlH4J-xRmdzcKBc/s800/Gf6jZO4XAAE9wVR.jpeg" style="display: block; padding: 1em 0px; text-align: center;"><img alt="" border="0" data-original-height="600" data-original-width="800" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiy0dfNt11OYkcm-pvxQDby-x3C8tMs17WcWzXNIGYS6RRrQffhyZaagetmnXOEL38691U725nVs7fonsezywwRhl3yGxDAl_kyTAEqnl9hWuPK8jAy2SwVws2bRDpudADbhRw8dgLTC1c8Krag15g2f8h81022GkjjxfevOt6lxsPUHMlH4J-xRmdzcKBc/s400/Gf6jZO4XAAE9wVR.jpeg" width="400" /></a>
But he made the bullshitter's fatal mistake. He included this graph. Lets annotate it. First we have Guidarini's claim that:<br />
<blockquote>
In 1924, President Calvin Coolidge signed the Johnson-Reed Immigration Act, which halted mass immigration into the United States.<br />
<br />
The act completely stopped immigration from Asia, and set strict quotas on immigration from other places including Europe.<br />
<br />
Wages began to dramatically increase.
</blockquote>
Lets put 1924 on the graph.<br />
<br />
<a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEikd8J7AyvDOZOtvnfFLQERwqap0dIfbUTakL9_lCKfrg-FhB2LUtUNKNIVQSL5Jf8BmGX6TWApYmyKbhKQkKZV3E1L5H1iIzMctsfNdyGMtdWtgEO4OMcHEqD561Kaji1DvXuwkrPJO0ZudBEkHVxFD-wqkgLxX21xJxqdYrhZ4JwdIpxL8T6L9yoLG1CZ/s2048/1924.jpeg" style="display: block; padding: 1em 0px; text-align: center;"><img alt="" border="0" data-original-height="1536" data-original-width="2048" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEikd8J7AyvDOZOtvnfFLQERwqap0dIfbUTakL9_lCKfrg-FhB2LUtUNKNIVQSL5Jf8BmGX6TWApYmyKbhKQkKZV3E1L5H1iIzMctsfNdyGMtdWtgEO4OMcHEqD561Kaji1DvXuwkrPJO0ZudBEkHVxFD-wqkgLxX21xJxqdYrhZ4JwdIpxL8T6L9yoLG1CZ/s400/1924.jpeg" width="400" /></a>
Whose wages had the dramatic increase in 1924? Right, the 1%. Whose wages were flat from 1924 until the Great Depression? Right, the bottom 90%. Guidarini is just wrong. The dramatic increase in the wages of the bottom 90% happened in 1940, 16 years later. Can you think of a cause for the dramatic increase in 1940? It surely wasn't the <a href="https://dh-wordpress.ramapo.edu/discovering1920s/blog/2021/02/24/the-immigration-act-of-1924the-johnson-reed-act/">Johnson-Reed Immigration Act</a> of 1924.<br />
<br />
Second, we have Guidarini's claim that:<br />
<blockquote>
By the 1950s, America reached the peak of its economic and industrial might.
</blockquote>
If America's "economic and industrial might" peaked in the 50s, why did the incomes of the bottom 90% continue rising until 1973?<br />
<br />
Third we have Guidarini's claim that:<br />
<blockquote>
Then, in 1965 the Hart-Cellar Immigration Act was signed by President LBJ, opening the floodgates and allowing for massive unchecked immigration, especially from the global south.<br />
<br />
Immediately, income growth and wage growth for the bottom 90% of earners came to an abrupt halt.
</blockquote>
Lets put 1965 on the graph.<br />
<br />
<div class="separator" style="clear: both; text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiCOavgGBKYYXHimT0G9EvOVEEgeLSQcRS8qnpqgwOwShyjeLt44j4rdd3-lVKc6BKn96Om6hGHzfBQl8jqjiojb9h2D2MMMNsP5MS7fcFGiNzhiW9jKWNYt6vXTYcsvApCUZFZk6X_20kDyoOgrbQJ4ldzPsHyQ43MqfRKYQmn_sahHV4hn_Pb32GSRCk7/s400/1965.jpeg" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" data-original-height="300" data-original-width="400" height="300" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiCOavgGBKYYXHimT0G9EvOVEEgeLSQcRS8qnpqgwOwShyjeLt44j4rdd3-lVKc6BKn96Om6hGHzfBQl8jqjiojb9h2D2MMMNsP5MS7fcFGiNzhiW9jKWNYt6vXTYcsvApCUZFZk6X_20kDyoOgrbQJ4ldzPsHyQ43MqfRKYQmn_sahHV4hn_Pb32GSRCk7/w400-h300/1965.jpeg" width="400" /></a></div><br />Can you see the income growth for the bottom 90% come to an immediate halt? No, wages continued rising as they had been since 1940 until 1973, another 8 years. Did the <a href="https://en.wikipedia.org/wiki/Immigration_and_Nationality_Act_of_1965">Hart-Cellar Immigration Act</a> of 1965 cause wages to flatten in 1973? Whose income flat-lined after 1965 for a decade and a half? Right, the 1%.<br />
<br />
Lastly, we have Guidarini's claim that soon after 1965:<br />
<blockquote>
  the incomes for the top 1% of earners skyrocketed, leading to the massive wealth inequality in America we see today.
</blockquote>
Can you see when the "incomes for the top 1% of earners skyrocketed"? That's right, it was in 1985, so "soon" means 20 years! And can you guess who was President of the US, and from what party, then? Right, it was a certain <a href="https://en.wikipedia.org/wiki/Ronald_Reagan">Ronald Reagan</a>, a Republican.<br />
<br /> 

<br> 

<https://blog.dshr.org/2024/12/self-own.html>

---

## Why are hobbyist 21st century 8-bit computers so constrained?

date: 2024-12-31, from: Liam on Linux

I learned about a new DIY machine to me, the <a href="https://www.codycomputer.org/">Cody Computer</a>.&nbsp;<br /><div role="heading" aria-level="3" class="comment_text"><p>It looks kind of fun, but once again, it does make me wonder  why it&rsquo;s so constrained. Extremely low-res graphics, for instance. TBH I  would have sneered at this for being low-end when I was about 13 years  old. (Shortly before I got my first computer, a 48K ZX Spectrum.)</p> <p>Why isn&rsquo;t anyone trying to make an easy home-build high-end  eight-bit? Something that really pushes the envelope right out there &ndash;  the sort of dream machine I wanted by about the middle of the 1980s.</p> <p>In 1987 I owned an <a href="https://en.wikipedia.org/wiki/Amstrad_PCW#PCW_9512_and_9256" rel="ugc">Amstrad PCW9512</a>:</p> <ul> <li>4MHz Z80A</li> <li>512 kB RAM, so 64kB CP/M 3 TPA plus something over 400kB RAMdisc as drive M:</li> <li>720 x 256 monochrome screen resolution, 90 x 30 characters in text mode</li> </ul> <p>Later&nbsp;in 1989 I bought an <a href="https://en.wikipedia.org/wiki/SAM_Coup%C3%A9" rel="ugc">MGT SAM Coup&eacute;</a>:</p> <ul> <li>6MHz Z80B</li> <li>256 kB RAM</li> <li>256 x 192 or 512 x 192 graphics, with 1/2/4 bits per pixel</li> </ul> <p>Both had graphics easily outdone by the MSX 2 and later Z80 machines,  but those had a dedicated GPU. That might be a reach but then given the  limits of a 64 kB memory map, maybe a good one.</p> <p>Another aspirational machine was the BBC Micro: a expandable, modular  OS called MOS; an excellent BASIC, BBC BASIC, with structured flow,  named procedures, with local variables, enabling recursive programming,  and inline assembly language so if you graduated to machine-code you  could just enter and edit it in the BASIC line editor. (Which was weird,  but powerful &ndash; for instance, 2 independent cursors, one source and one  destination, eliminating the whole &ldquo;clipboard&rdquo; concept.)  Resolution-independent graphics, and graphics modes that cheerfully used  most of the RAM, leaving exploitation as an exercise for the developer.  Which they rose to magnificently.</p> <p>The BBC Micro supported <a href="https://en.wikipedia.org/wiki/BBC_Micro_expansion_unit" rel="ugc">dual processors</a> over the <a href="https://en.wikipedia.org/wiki/Tube_(BBC_Micro)" rel="ugc">Tube interface</a>, so one 6502 could run the OS, the DOS, and the framebuffer, using most of its 64 kB, and <a href="https://en.wikipedia.org/wiki/BBC_BASIC#BBC_Micro" rel="ugc">Hi-BASIC</a> could run on the 2nd 6502 (or Z80!) processor, therefore having most of 64 kB to itself.</p> <p>In a 21st century 8-bit, I want something that comfortably exceeds a 1980s 8-bit, let alone a 1990s 8-bit.</p> <p>(And yes, there were new 8-bit machines in the 1990s, such as the <a href="https://www.cpcwiki.eu/index.php/Plus" rel="ugc">Amstrad CPC Plus range</a>, or <a href="https://www.msx.org/wiki/MSX_turbo_R" rel="ugc">MSX Turbo R</a>.)</p> <p>So my wish list would include&hellip;</p> <ul> <li><em>At least</em> 80-column legible text, ideally more. We can forget  analog TVs and CRT limitations now. Aim to exceed VGA resolutions. 256  colours in some low resolutions but a high mono resolution is handy too.</li> <li>Lots of RAM with some bank-switching mechanism, plus mechanisms to  make this useful to BASIC programmers not just machine code developers. A  RAMdisc is easy. <a href="https://en.wikipedia.org/wiki/Beta_BASIC" rel="ugc">Beta BASIC</a>  on the ZX Spectrum 128 lets BASIC declare arrays kept in the RAMdisc,  so while a BASIC program is limited to under 30 kB of RAM, it can  manipulate 100-odd kB of data in arrays. That&rsquo;s a simple, clever hack.</li> <li>A really world-class BASIC with structured programming support.</li> <li>A fast processor (double-digit megahertz doesn&rsquo;t seem too much to ask).</li> <li>Some provision for 3rd party OSes. There are some impressive ones out there now, such as <a href="http://www.symbos.de/" rel="ugc">SymbOS</a>, <a href="https://github.com/contiki-os/contiki" rel="ugc">Contiki</a>, and <a href="https://www.fuzix.org/" rel="ugc">Fuzix</a>. GEOS is open source now, too.</li> </ul></div><br /><br /><img src="https://www.dreamwidth.org/tools/commentcount?user=liam_on_linux&ditemid=93665" width="30" height="12" alt="comment count unavailable" style="vertical-align: middle;"/> comments 

<br> 

<https://liam-on-linux.dreamwidth.org/93665.html>

---

**@Dave Winer's Scripting News** (date: 2024-12-31, from: Dave Winer's Scripting News)

<a href="https://github.com/scripting/textcasting/issues/1">Braintrust query</a>: I'm kind of stuck with my <a href="https://bsky.app/profile/scripting.com/post/3lej4s4kysc2u">little feed reader</a> in Bluesky. It works, but a few hours into it, at 10PM last night, we start getting rate-limit errors from bluesky. If it really is a rate limit, shouldn't reset after a while? 

<br> 

<http://scripting.com/2024/12/31.html#a142517>

---

**@Dave Winer's Scripting News** (date: 2024-12-31, from: Dave Winer's Scripting News)

Still looking for <a href="https://this.how/wordland/#1733146566000">WordLand testers</a> who write good bug reports and use WordPress for writing on a regular basis, even daily. 

<br> 

<http://scripting.com/2024/12/31.html#a140849>

---

## The Enlightened Economist Prize for 2024

date: 2024-12-31, from: Enlightenment Economics blog

This decision &#8211; again, entirely arbitrary and my own &#8211; was harder than ever this year because I left the long/shortlisting so late I had little time to mull it over. So I&#8217;m going to follow last year&#8217;s precedent and &#8230; <a href="http://www.enlightenmenteconomics.com/blog/index.php/2024/12/the-enlightened-economist-prize-for-2024/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<http://www.enlightenmenteconomics.com/blog/index.php/2024/12/the-enlightened-economist-prize-for-2024/>

---

## Gift Card Fraud

date: 2024-12-31, updated: 2024-12-30, from: Bruce Schneier blog

<p>It&#8217;s becoming an <a href="https://www.propublica.org/article/chinese-organized-crime-gift-cards-american-retail">organized crime tactic</a>:</p>
<blockquote><p>Card draining is when criminals remove gift cards from a store display, open them in a separate location, and either record the card numbers and PINs or replace them with a new barcode. The crooks then repair the packaging, return to a store and place the cards back on a rack. When a customer unwittingly selects and loads money onto a tampered card, the criminal is able to access the card online and steal the balance.</p>
<p>[&#8230;]</p>
<p>In card draining, the runners assist with removing, tampering and restocking of gift cards, according to court documents and investigators...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2024/12/gift-card-fraud.html>

---

**@Jessica Smith's blog** (date: 2024-12-31, from: Jessica Smith's blog)

<p>Yup, this is basically what we&rsquo;re doing with our ten-week-old baby 🫡:</p>
<blockquote class="mastodon-embed" data-embed-url="https://mstdn.ca/@TheresaReason/113745435633424978/embed" style="background: #FCF8FF; border-radius: 8px; border: 1px solid #C9C4DA; margin: 0 auto; max-width: 540px; min-width: 270px; overflow: hidden; padding: 0;"> <a href="https://mstdn.ca/@TheresaReason/113745435633424978" target="_blank" style="align-items: center; color: #1C1A25; display: flex; flex-direction: column; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Roboto, sans-serif; font-size: 14px; justify-content: center; letter-spacing: 0.25px; line-height: 20px; padding: 24px; text-decoration: none;"> <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="32" height="32" viewBox="0 0 79 75"><path d="M74.7135 16.6043C73.6199 8.54587 66.5351 2.19527 58.1366 0.964691C56.7196 0.756754 51.351 0 38.9148 0H38.822C26.3824 0 23.7135 0.756754 22.2966 0.964691C14.1319 2.16118 6.67571 7.86752 4.86669 16.0214C3.99657 20.0369 3.90371 24.4888 4.06535 28.5726C4.29578 34.4289 4.34049 40.275 4.877 46.1075C5.24791 49.9817 5.89495 53.8251 6.81328 57.6088C8.53288 64.5968 15.4938 70.4122 22.3138 72.7848C29.6155 75.259 37.468 75.6697 44.9919 73.971C45.8196 73.7801 46.6381 73.5586 47.4475 73.3063C49.2737 72.7302 51.4164 72.086 52.9915 70.9542C53.0131 70.9384 53.0308 70.9178 53.0433 70.8942C53.0558 70.8706 53.0628 70.8445 53.0637 70.8179V65.1661C53.0634 65.1412 53.0574 65.1167 53.0462 65.0944C53.035 65.0721 53.0189 65.0525 52.9992 65.0371C52.9794 65.0218 52.9564 65.011 52.9318 65.0056C52.9073 65.0002 52.8819 65.0003 52.8574 65.0059C48.0369 66.1472 43.0971 66.7193 38.141 66.7103C29.6118 66.7103 27.3178 62.6981 26.6609 61.0278C26.1329 59.5842 25.7976 58.0784 25.6636 56.5486C25.6622 56.5229 25.667 56.4973 25.6775 56.4738C25.688 56.4502 25.7039 56.4295 25.724 56.4132C25.7441 56.397 25.7678 56.3856 25.7931 56.3801C25.8185 56.3746 25.8448 56.3751 25.8699 56.3816C30.6101 57.5151 35.4693 58.0873 40.3455 58.086C41.5183 58.086 42.6876 58.086 43.8604 58.0553C48.7647 57.919 53.9339 57.6701 58.7591 56.7361C58.8794 56.7123 58.9998 56.6918 59.103 56.6611C66.7139 55.2124 73.9569 50.665 74.6929 39.1501C74.7204 38.6967 74.7892 34.4016 74.7892 33.9312C74.7926 32.3325 75.3085 22.5901 74.7135 16.6043ZM62.9996 45.3371H54.9966V25.9069C54.9966 21.8163 53.277 19.7302 49.7793 19.7302C45.9343 19.7302 44.0083 22.1981 44.0083 27.0727V37.7082H36.0534V27.0727C36.0534 22.1981 34.124 19.7302 30.279 19.7302C26.8019 19.7302 25.0651 21.8163 25.0617 25.9069V45.3371H17.0656V25.3172C17.0656 21.2266 18.1191 17.9769 20.2262 15.568C22.3998 13.1648 25.2509 11.9308 28.7898 11.9308C32.8859 11.9308 35.9812 13.492 38.0447 16.6111L40.036 19.9245L42.0308 16.6111C44.0943 13.492 47.1896 11.9308 51.2788 11.9308C54.8143 11.9308 57.6654 13.1648 59.8459 15.568C61.9529 17.9746 63.0065 21.2243 63.0065 25.3172L62.9996 45.3371Z" fill="currentColor"/></svg> <div style="color: #787588; margin-top: 16px;">Post by @TheresaReason@mstdn.ca</div><p>All ready for the big night! #HappyNewYear – Followed by a cropped screenshot of a twitter post saying ‘Got my tickets for New Year’s Eve.’ and a picture of tickets photoshopped to say ‘Stay at Home and Do Nothing and Go to Bed Early’</p> <div style="font-weight: 500;">View on Mastodon</div> </a> </blockquote> <script data-allowed-prefixes="https://mstdn.ca/" async src="https://mstdn.ca/embed.js"></script>
<p>Actually, we did walk down to the beach to try to see the 9:30pm fireworks… somewhere. We got to see, in the far distance on the complete opposite side of the bay, the ones in Geelong. And Indie cried the whole entire time we were there until the fireworks themselves, when she suddenly fell asleep 😂</p>
<p>Not that it&rsquo;s midnight here yet but happy new year, everyone! 🎉🎉🎉</p> 

<br> 

<https://www.jayeless.net/2024/12/new-years-eve.html>

---

## The 20 realities of the American system (before Trump gets a second crack at wrecking it even more)

date: 2024-12-31, from: Robert Reich's blog

Establishing a baseline. 

<br> 

<https://robertreich.substack.com/p/the-20-realities-of-the-american>

---

## December 30, 2024 

date: 2024-12-31, from: Heather Cox Richardson blog

The fight between MAGA and DOGE continues. 

<br> 

<https://heathercoxrichardson.substack.com/p/december-30-2024>

---

## The mindset of more (series introduction)

date: 2024-12-31, from: Tracy Durnell Blog

I&#8217;ve been playing the game Satisfactory with my sister for about the past year. Neither of us have played games much, and that mostly pre-2000. It&#8217;s been slow going as we learn what tools are available to us, how to interact with the world, and what goals we&#8217;re meant to pursue. But another thing we&#8217;re [&#8230;] 

<br> 

<https://tracydurnell.com/2024/12/30/mindset-of-more/>

---

## James Fallows: ‘Jimmy Carter Was a Lucky Man’

date: 2024-12-31, updated: 2024-12-31, from: Daring Fireball

 

<br> 

<https://www.theatlantic.com/ideas/archive/2023/02/jimmy-carter-accomplishments-james-fallows/673146/>

---

## Mark Gurman Says Voice Control for Next Magic Mouse ‘Makes Sense’

date: 2024-12-30, updated: 2024-12-30, from: Daring Fireball

 

<br> 

<https://www.macrumors.com/2024/12/30/gurman-magic-mouse-voice-control/>

---

## Reflections on 2024

date: 2024-12-30, from: Matt Haughey blog

<p>As the year draws to a close, I figured I should look back at the highs and lows and take an assessment of where I&apos;m at. So here goes.</p><h2 id="highlights">Highlights</h2><figure class="kg-card kg-image-card"><img src="https://a.wholelottanothing.org/content/images/2024/12/cover2.png" class="kg-image" alt loading="lazy" width="1920" height="2560" srcset="https://a.wholelottanothing.org/content/images/size/w600/2024/12/cover2.png 600w, https://a.wholelottanothing.org/content/images/size/w1000/2024/12/cover2.png 1000w, https://a.wholelottanothing.org/content/images/size/w1600/2024/12/cover2.png 1600w, https://a.wholelottanothing.org/content/images/2024/12/cover2.png 1920w" sizes="(min-width: 720px) 720px"></figure><p>The biggest project I&apos;m most proud of completing this year was <a href="https://unofficialnwsl.stadium.guide/?ref=a.wholelottanothing.org" rel="noreferrer">the guidebook/travel guide to</a></p> 

<br> 

<https://a.wholelottanothing.org/reflections-on-2024/>

---

##  Great Art Explained: The Last Supper by Leonardo da Vinci 

date: 2024-12-30, updated: 2024-12-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/great-art-explained-the-last-supper-by-leonardo-da-vinci>

---

## December 29, 2024

date: 2024-12-30, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/153822268/8a8134c5836e54e2903945bdb08eb3bb.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/153822268/8a8134c5836e54e2903945bdb08eb3bb.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/december-29-2024-41e>

---

## 52 Things Kent Hendricks Learned in 2024

date: 2024-12-30, updated: 2024-12-30, from: Daring Fireball

 

<br> 

<https://kenthendricks.com/52-things-i-learned-in-2024/>

---

##  If the highly unlikely Silurian hypothesis is true (if the Earth was... 

date: 2024-12-30, updated: 2024-12-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045934-if-the-silurian-hypothesi>

---

## The Real Intention Economy

date: 2024-12-30, from: Doc Searls (at Harvard), New Old Blog

As a noun phrase, &#8220;The intention economy&#8221; first appeared in a Linux Journal column by that title, written by me in March 2006. A few months later, when I became a fellow at Harvard&#8217;s Berkman Klein Center, I started ProjectVRM for the purpose of making that economy happen. Six years after that, I wrote this book, [&#8230;] 

<br> 

<https://doc.searls.com/2024/12/30/the-real-intention-economy/>

---

##  52 things Kent Hendricks learned in 2024, incl. &#8220;walking speed on the... 

date: 2024-12-30, updated: 2024-12-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045928-52-things-kent-hendricks->

---

##  77 Facts That Blew Our Minds in 2024 

date: 2024-12-30, updated: 2024-12-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/77-facts-that-blew-our-minds-in-2024>

---

##  Haalarit are overalls worn by Finnish university students, covered in patches they... 

date: 2024-12-30, updated: 2024-12-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045925-haalarit-are-overalls-wor>

---

##  The Walmart Effect. According to new research, &#8220;Walmart makes the places it... 

date: 2024-12-30, updated: 2024-12-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045929-the-walmart-effect-accord>

---

## Twenty Twenty-Four

date: 2024-12-30, from: Dave Rupert blog

<p>For <a href="https://daverupert.com/2024/01/twenty-twenty-three/">last year’s check-in</a>, I foreshadowed a year of changes for ol’ Dave Rupert and boy was I not kidding. New job, new car, new pets. But before we get into all that – for accountability’s sake – let’s check in on my resolutions from last year and see how I did…</p>
<ul>
<li><strong>Activate an active lifestyle</strong> - Nope.</li>
<li><strong>Write more shitty sci-fi</strong> - Nope.</li>
<li><strong>Draw more</strong> - Nope.</li>
<li><strong>Write for other publications</strong> - Yes, I wrote for <a href="https://frontendmasters.com/blog/">Frontend Masters’ Boost blog</a> and <a href="https://multipa.ge/">Wilto’s Multipage Version</a>  zine.</li>
<li><strong>Survive the 2024 US Election</strong> - Yes, but what a disappointment.</li>
<li><strong>Make a video game?</strong> - Yes, <a href="https://daverupert.com/2024/12/my-little-games-workshop/">I made and released a few</a> but also went beyond video games a bit.</li>
</ul>
<p>Final score: 50%-ish. That’s better than I expected. What did I do with the other 50% of my time if I wasn’t crushing it on my SMART goals? Let’s see…</p>
<h2>A month-by-month recap</h2>
<ul>
<li><strong>Jan-April</strong> - Unemployed, interviewing for jobs 👎</li>
<li><strong>April</strong> - Saw the solar eclipse 👍</li>
<li><strong>May</strong> - Went to South Dakota for my nephew’s graduation 👍</li>
<li><strong>May</strong> - Started my new job at Microsoft 👍</li>
<li><strong>July</strong> - Went to San Diego - first week 👍, second week whole family got sick 👎</li>
<li><strong>Aug</strong> - Adopted two dogs 👍, they are a handful and I’m allergic 👎</li>
<li><strong>Aug</strong> - <a href="https://daverupert.com/2024/08/vibe-check-34/">Frostapalooza</a> 👍</li>
<li><strong>Sept</strong> - Wife had knee surgery 👎</li>
<li><strong>Oct</strong> - Deleted my Twitter account 👍</li>
<li><strong>Nov</strong> - Went to Redmond and met my coworkers IRL for the first time 👍</li>
<li><strong>Nov</strong> - Bought a new car 👍</li>
<li><strong>Nov</strong> - <a href="https://daverupert.com/2024/11/goodbye-moogs/">Moogs passed away</a> 👎</li>
<li><strong>Nov</strong> - <a href="https://daverupert.com/2024/12/adhd/">Diagnosed with ADHD</a> 👌</li>
</ul>
<p>Finding a job dominated the first half of my year. After some ups and downs I ended up in a good place at Microsoft. There’s a lot of positives going from self-employment to the corporate world (hey! actual benefits! stocks even!) but also a lot of organizational bureaucracy that I’m not used to navigating. I’m happy with the work I’m doing and feel lucky to get to work on web components each day.</p>
<p>My wife and I’s trip to Pittsburgh for Frostapalooza was a big crescendo for the year. Months and months of practicing culminating in one big night. It’s hard to describe it other than some kind of nerd-flavored camp reunion but with guitars instead of computers. We had such a good time and the amount of music filling our house on a daily basis has increased ten-fold this year. For that I’m thankful.</p>
<p>I often judge years based on if we hit our health insurance deductible and we hit it again this year. A lot of medium grade background stress: job hunt stress, new job stress, healthcare stress, election stress, etc. Thankfully – and I could be basking in the limelight of a good Christmas holiday and a week off from work – I hardly remember that stress anymore. It feels like I’ve shedded those layers of anxiety.</p>
<h2>Stats for 2024</h2>
<p>With all the qualitative out of the way, let’s get more quantitative about what we did this year…</p>
<ul>
<li><a href="https://daverupert.com/bookshelf/">52 books</a> - Still in the book-a-week club. I’m comfortable here but need to mix it up. I’m becoming cynical when I hear the same ten facts and sociological studies regurgitated to meet some new popular science zeitgeist. Political biographies are all the same five liberal or conservative party tent poles supported by some personal anecdote. I think I’m going to lean hard into sci-fi “snacks” – short, easy books – for the next year while supplementing with beefier book recommendations from trusted peers.</li>
<li><a href="https://daverupert.com/archive/">61 blog posts</a> - Not a record but I’m happy with that number. Over a post a week is a good pace for me, doubly so if you consider that I fell off a blogging cliff since going corporate.</li>
<li>9 gunpla - Way down from my 2023 peak.</li>
<li>3 releases - <a href="https://mundango.daverupert.com/">Mundango</a>, <a href="https://pentablaster.daverupert.com/">Pentablaster</a>, and <a href="https://hardcodesoftskills.daverupert.com/">Hard Code &amp; Soft Skills</a>. My previous record was one, so this is stellar.</li>
<li><a href="https://shoptalkshow.com/">49 episodes of ShopTalk</a> - I love hanging out with <a href="https://chriscoyier.net/">my friend Chris</a>.</li>
<li>3 guest appearances - <a href="https://www.youtube.com/watch?v=azUEOy8_GHo">Bad @ CSS</a>, <a href="https://www.youtube.com/watch?v=-hXmRkM7dsQ">Smashing Hour</a>, and <a href="https://changelog.com/friends/72">Changelog &amp; Friends</a>.</li>
</ul>
<p>A pretty good year for me and it’d be great to maintain that pace next year. To be totally honest, my actual goal would be to do less next year. Sounds crazy, I know, numbers should only go up and to the right. But hear me out… what if they didn’t? Have we considered that option?</p>
<p>I didn’t play video games as much as I would have liked to this year, so I’ll need to remedy that. I’ve got a backlog brewing but I’m having a good time <em>making</em> games and that’s a time tradeoff I’m okay with. But from a “great writers read” perspective, I should play more games. Related, I had to quit late night gaming with the boys because it effected my sleep and stress levels, but I want to get back to that. AAA gaming is in a rough state though.</p>
<h2>Hopes for 2025</h2>
<p>There’s five focus areas I’d like to pursue next year and I already have traction on most of these feel achievable, But I’ve been wrong about that in the past.</p>
<p><strong>Seize work opportunities -</strong> It’s been a great first 7 months at Microsoft but I have some big projects shipping in the next quarter so I need to shift out of my “learning the ropes” mode into a more melee combat ready position.</p>
<p><strong>Hunker down and be creative</strong> - I’m not excited about the state of the union right now, so I’m going to trust my instinct to burrow. I’ve got some apps, games, and shitty sci-fi ideas that I’d be happy to work on instead of doomscrolling the news. I feel okay about pursuing those ideas rather than getting mired in political headlines.</p>
<p><strong>Slow down to 1x mode</strong> - The ability to consume books, podcasts, and videos at 2x is a super power but I feel a nudge to take life slower. Slowing down would hopefully increase the time-cost and make me more discerning about what I choose to consume. The fact that I view listening at 1x as a challenge tells me I should probably pursue it.</p>
<p><strong>Join a club</strong> - Inspired by the documentary <a href="https://www.joinordiefilm.com/">Join or Die</a>, I think I need to join a club and participate in IRL more. Clubs give me an opportunity to burst my personal/internet bubble and meet people who don’t share my background, income, or political beliefs. But I can’t even think of what I’d want to do. Perhaps something hobby-related? Join a lodge? Volunteer at a food bank? I feel woefully unprepared that I don’t even have the beginning of an answer here.</p>
<p><strong>Understand myself</strong> - Beyond work and side projects, the biggest project I’ll be undertaking in 2025 is going to be… me. Since the Summer, I’ve been on a mission to understand myself at a clinical level.  Last year I lost a lot of weight, more than half of it has come back without much change in diet. I want to know what’s in this mountain of flesh and bones and brains that God gave me. I want to begin to untangle the Gordian Knot of Anxiety, Weight, and ADHD. This has meant seeing a new doctor, getting blood work done, seeing a therapist, evaluating medication, and a whole lot more. I even made it a “Project” in Notion so  I’d actually follow through on it. My ideal outcome is to come up with a plan to get through the next five, ten, fifteen, thirty years and beyond. In the immediate future an unexpected medical malady has presented itself and I’ll probably have to undergo surgery next year.</p>
<h2>We’ll take a cup of kindness yet, for auld lang syne</h2>
<p>I know some had an awful 2024. I’d say mine was hard but good over the long haul. 2025 seems primed to bring its own existential challenges and I hope you find shelter. Tech is still in shambles right now but I’m starting to see hints of the icy job market thawing, but I’m unsure if it will ever go back to “normal”. And politics… oof. We’re already seeing the outputs of the self-inflicted chaos machine. Keep in mind that chaos is the goal; chaos to exhaust and disarm us, to <a href="https://www.vox.com/policy-and-politics/2020/1/16/20991816/impeachment-trial-trump-bannon-misinformation">flood the zone with shit</a>. So hold fast to your principles and conserve energy for the long haul. Keep your hand on the plow and keep your eyes on the prize. Hold on.</p> 

<br> 

<https://daverupert.com/2024/12/twenty-twenty-four/>

---

##  Eight Clams Control This Polish City&#8217;s Water Supply 

date: 2024-12-30, updated: 2024-12-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/eight-clams-control-this-polish-citys-water-supply>

---

##  Great read: Heather Cox Richardson on Jimmy Carter&#8217;s &#8220;life characterized by a... 

date: 2024-12-30, updated: 2024-12-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045938-great-read-heather-cox-ri>

---

**@Dave Winer's Scripting News** (date: 2024-12-30, from: Dave Winer's Scripting News)

I'm <a href="https://bsky.app/profile/did:plc:oety7qbfx7x6exn2ytrwikmr/post/3lej4s4kysc2u">playing</a> with using Bluesky as a very simple feed reader. 1. Running up against its lack of style and formatting. Very bare bones. Not sure if people will like.
2. What's the rate limit? My app is getting rate-limited with not very many posts. (According to their <a href="https://docs.bsky.app/docs/advanced-guides/rate-limits">docs</a> on rate limits, I don't think my project is anywhere near the limit. It's creating posts. I'll start counting them, I guess.)
 

<br> 

<http://scripting.com/2024/12/30.html#a133258>

---

**@Dave Winer's Scripting News** (date: 2024-12-30, from: Dave Winer's Scripting News)

<a href="https://github.com/scripting/Scripting-News/issues/314">Braintrust query</a>: Do you subscribe to one or more AI services? 

<br> 

<http://scripting.com/2024/12/30.html#a130714>

---

## Salt Typhoon’s Reach Continues to Grow

date: 2024-12-30, updated: 2024-12-28, from: Bruce Schneier blog

<p>The US government has <a href="https://apnews.com/article/united-states-china-hacking-espionage-c5351ef7c2207785b76c8c62cde6c513">identified</a> a ninth telecom that was successfully hacked by Salt Typhoon.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2024/12/salt-typhoons-reach-continues-to-grow.html>

---

## curl with partial files

date: 2024-12-30, from: Daniel Stenberg Blog

Back in September 2023, we extended the curl command line tool with a new fairly advanced and flexible variable system. Using this, users can use files, environment variables and more in a powerful way when building curl command lines in ways not previously possible &#8211; with almost all existing command line options. curl command lines &#8230; <a href="https://daniel.haxx.se/blog/2024/12/30/curl-with-partial-files/" class="more-link">Continue reading <span class="screen-reader-text">curl with partial files</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2024/12/30/curl-with-partial-files/>

---

## How about if Canada annexes Blue America? 

date: 2024-12-30, from: Robert Reich's blog

It&#8217;s a perfect way out for Trump, who doesn&#8217;t like these states anyway. 

<br> 

<https://robertreich.substack.com/p/canada-and-blue-america-a-perfect>

---

## December 29, 2024

date: 2024-12-30, from: Heather Cox Richardson blog

Former President Jimmy Carter died today, December 29, 2024, at age 100 after a life characterized by a dedication to human rights. 

<br> 

<https://heathercoxrichardson.substack.com/p/december-29-2024>

---

## Build Wagtail from a Fork

date: 2024-12-30, updated: 2024-12-30, from: Cynthia Kiser's blog

Sometimes you need to run a forked version of Wagtail - for example if you are waiting for a pull request to get merged. The JavaScript parts of the package are committed as source files so you need to build the JS assets before packaging the Python code for distribution. 

<br> 

<http://cynthiakiser.com/blog/2024/12/29/build-wagtail-from-a-fork.html>

---

**@Jessica Smith's blog** (date: 2024-12-30, from: Jessica Smith's blog)

<p>They say babies aren&rsquo;t supposed to have any screen time (except video calls) until they&rsquo;re two, and one of the reasons why is that it can be overstimulating (preventing them from learning how to cope from boredom). On this basis I was like, &ldquo;Oh, well test cricket is fine then.&rdquo; Seems that I was hasty – the baby is actually entranced by the cricket when she notices it on TV 😂</p>
<details>
	<summary>Disclaimer for humourless people who run around social media policing others’ parenting</summary>
	<p>I am not actually parking my baby in front of the TV to watch test cricket, lol. I am doing all the normal things to interact with my baby when she's awake and give her time to take peaceful naps. I am just not so paranoid about screen time that I refrain from having screens on to entertain <em>myself</em> in and around parenting…</p>
</details> 

<br> 

<https://www.jayeless.net/2024/12/babies-screen-time.html>

---

## The Kraken Won

date: 2024-12-30, from: Doc Searls (at Harvard), New Old Blog

Imagine what would have happened had Martin Winterkorn not imploded, and if Volkswagen, under his watch, had not become a datakraken (data sea-monster, or octopus), spying on drivers and passengers—just like every other car company. What would the world now be like if Volkswagen since 2014 had established itself as the only car maker not [&#8230;] 

<br> 

<https://doc.searls.com/2024/12/29/the-kraken-won/>

---

## Monday 30 December, 2024

date: 2024-12-30, from: John Naughton's online diary

Lest we forget The Cambridge American Cemetery on a dull December day. It contains 3,809 headstones, with the remains of 3,812 servicemen, including airmen who died over Europe and sailors from North Atlantic convoys. The long wall on the right &#8230; <a href="https://memex.naughtons.org/monday-30-december-2024/40275/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-30-december-2024/40275/>

---

## Jimmy Carter Dies at 100

date: 2024-12-29, updated: 2024-12-29, from: Daring Fireball

 

<br> 

<https://www.nytimes.com/2024/12/29/us/politics/jimmy-carter-dead.html>

---

## Panama Is Back in the News. That Can Be a Good Thing.

date: 2024-12-29, from: James Fallows, Substack

The Panama Canal and its home country should be newly important to Americans. But in the opposite way from what Donald Trump has been talking about. 

<br> 

<https://fallows.substack.com/p/panama-is-back-in-the-news-that-can>

---

## In memoriam: A good citizen

date: 2024-12-29, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/sunday-caption>

---

## Jimmy Carter, 1924-2024

date: 2024-12-29, from: Dan Rather's Steady

A man of honesty 

<br> 

<https://steady.substack.com/p/jimmy-carter-1924-2024>

---

##  Former President Jimmy Carter has died at the age of 100. Easily... 

date: 2024-12-29, updated: 2024-12-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045930-former-president-jimmy-ca>

---

**@Dave Winer's Scripting News** (date: 2024-12-29, from: Dave Winer's Scripting News)

Here's a list of <a href="https://viewfeedlist.opml.org/?url=https%3A%2F%2Ffeedland.social%2Fopml%3Fscreenname%3Ddavewiner%26catname%3Dblogroll">all the feeds in my blogroll</a>, with links to the XML version. I've wanted to have a nice non-XML way of viewing the feeds in an OPML subscription list. I took the time today to put one together. I had all the pieces, it was just a matter of putting them all in one place. You can use it if you want, if you want to show someone what feeds are in an OPML subscription list. <a href="https://imgs.scripting.com/2024/12/29/screenshotopmllistviewer.png">Screen shot</a>. 

<br> 

<http://scripting.com/2024/12/29.html#a210704>

---

## ★ OpenAI’s Board, Paraphrased: ‘To Succeed, All We Need Is Unimaginable Sums of Money’

date: 2024-12-29, updated: 2024-12-30, from: Daring Fireball

OpenAI is to this decade’s generative-AI revolution what Netscape was to the 1990s’ internet revolution. 

<br> 

<https://daringfireball.net/2024/12/openai_unimaginable>

---

**@Dave Winer's Scripting News** (date: 2024-12-29, from: Dave Winer's Scripting News)

I can't get it out of my head that today is Monday. That's how it computes in my brain. This time of year is very confusing that way. 

<br> 

<http://scripting.com/2024/12/29.html#a205611>

---

## December 28, 2024

date: 2024-12-29, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/153771153/6d3c0f3250989bf3ae142541efea7a27.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/153771153/6d3c0f3250989bf3ae142541efea7a27.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/december-28-2024-5c9>

---

## What are they really seeking? 

date: 2024-12-29, from: Robert Reich's blog

Trump, Musk, Sacks, and the other billionaires taking over in three weeks and one day want to do something quite different from what the previous generation of conservatives sought. 

<br> 

<https://robertreich.substack.com/p/what-are-they-really-seeking>

---

**@Dave Winer's Scripting News** (date: 2024-12-29, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/12/19/arguingWithZombies.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">It took me a long time to figure out that when people respond to you on twitter-like systems they aren't actually speaking to <i>you,</i> they're talking over your shoulder to the masses they imagine are reading what you posted. Three comments. 1. There are no masses. You can see this by looking at the stats for each tweet, available on most platforms. 2. Most users on the social web are trying to get attention for themselves, the only reason they read the posts is to see if there's a place for them to attach their message. 3. A simple tweak to the software would make it so that only the author of the post being responded to could see the replies. Then they could RT a reply if they thought everyone should see it. This would make the <a href="https://oursocialweb.org/">social web</a> a lot more useful imho. 

<br> 

<http://scripting.com/2024/12/29.html#a141642>

---

## Happy New Year

date: 2024-12-29, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/happy-new-year-875>

---

## Sunday caption contest: 2025

date: 2024-12-29, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-2025>

---

## AI as the Moneypenny of the 21st century

date: 2024-12-29, from: John Naughton's online diary

Today&#8217;s Observer column: If 2024 was the year of large language models (LLMs), then 2025 looks like the year of AI “agents”. These are quasi-intelligent systems that harness LLMs to go beyond their usual tricks of generating plausible text or &#8230; <a href="https://memex.naughtons.org/ai-as-the-miss-moneypenny-of-the-21st-century/40270/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/ai-as-the-miss-moneypenny-of-the-21st-century/40270/>

---

## The Story of Stent

date: 2024-12-29, from: Om Malik blog

Today is my 17th re-birthday. If you’ve been a longtime reader, you know why I call it my re-birthday. If you are new around here, well, here is a short recap. Just after I turned 41—17 years ago—a life of poor habits and family genetics caught up with me. I had a heart attack and &#8230; 

<br> 

<https://om.co/2024/12/28/the-story-of-stent/>

---

## December 28, 2024 

date: 2024-12-29, from: Heather Cox Richardson blog

On the clear, cold morning of December 29, 1890, on the Pine Ridge Reservation in South Dakota, three U.S. 

<br> 

<https://heathercoxrichardson.substack.com/p/december-28-2024>

---

**@Jessica Smith's blog** (date: 2024-12-29, from: Jessica Smith's blog)

<p>Related to the below quote: I can&rsquo;t stand fantasy novels that are like &ldquo;feudalism but we&rsquo;re pretending it was good&rdquo;, lol. I&rsquo;ve read too many YA books in particular that want to pretend you can have feudalism without patriarchy or feudalism <em>with</em> gay rights and I&rsquo;m just like no… I cannot suspend my disbelief enough to accept this. Find a way to incorporate the mediaeval aesthetic you love so much without trying to glorify literal feudalism.</p>
<blockquote class="mastodon-embed" data-embed-url="https://vmst.io/@jalefkowit/113728315703581784/embed" style="background: #FCF8FF; border-radius: 8px; border: 1px solid #C9C4DA; margin: 0 auto; max-width: 540px; min-width: 270px; overflow: hidden; padding: 0;"> <a href="https://vmst.io/@jalefkowit/113728315703581784" target="_blank" style="align-items: center; color: #1C1A25; display: flex; flex-direction: column; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Roboto, sans-serif; font-size: 14px; justify-content: center; letter-spacing: 0.25px; line-height: 20px; padding: 24px; text-decoration: none;"> <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="32" height="32" viewBox="0 0 79 75"><path d="M74.7135 16.6043C73.6199 8.54587 66.5351 2.19527 58.1366 0.964691C56.7196 0.756754 51.351 0 38.9148 0H38.822C26.3824 0 23.7135 0.756754 22.2966 0.964691C14.1319 2.16118 6.67571 7.86752 4.86669 16.0214C3.99657 20.0369 3.90371 24.4888 4.06535 28.5726C4.29578 34.4289 4.34049 40.275 4.877 46.1075C5.24791 49.9817 5.89495 53.8251 6.81328 57.6088C8.53288 64.5968 15.4938 70.4122 22.3138 72.7848C29.6155 75.259 37.468 75.6697 44.9919 73.971C45.8196 73.7801 46.6381 73.5586 47.4475 73.3063C49.2737 72.7302 51.4164 72.086 52.9915 70.9542C53.0131 70.9384 53.0308 70.9178 53.0433 70.8942C53.0558 70.8706 53.0628 70.8445 53.0637 70.8179V65.1661C53.0634 65.1412 53.0574 65.1167 53.0462 65.0944C53.035 65.0721 53.0189 65.0525 52.9992 65.0371C52.9794 65.0218 52.9564 65.011 52.9318 65.0056C52.9073 65.0002 52.8819 65.0003 52.8574 65.0059C48.0369 66.1472 43.0971 66.7193 38.141 66.7103C29.6118 66.7103 27.3178 62.6981 26.6609 61.0278C26.1329 59.5842 25.7976 58.0784 25.6636 56.5486C25.6622 56.5229 25.667 56.4973 25.6775 56.4738C25.688 56.4502 25.7039 56.4295 25.724 56.4132C25.7441 56.397 25.7678 56.3856 25.7931 56.3801C25.8185 56.3746 25.8448 56.3751 25.8699 56.3816C30.6101 57.5151 35.4693 58.0873 40.3455 58.086C41.5183 58.086 42.6876 58.086 43.8604 58.0553C48.7647 57.919 53.9339 57.6701 58.7591 56.7361C58.8794 56.7123 58.9998 56.6918 59.103 56.6611C66.7139 55.2124 73.9569 50.665 74.6929 39.1501C74.7204 38.6967 74.7892 34.4016 74.7892 33.9312C74.7926 32.3325 75.3085 22.5901 74.7135 16.6043ZM62.9996 45.3371H54.9966V25.9069C54.9966 21.8163 53.277 19.7302 49.7793 19.7302C45.9343 19.7302 44.0083 22.1981 44.0083 27.0727V37.7082H36.0534V27.0727C36.0534 22.1981 34.124 19.7302 30.279 19.7302C26.8019 19.7302 25.0651 21.8163 25.0617 25.9069V45.3371H17.0656V25.3172C17.0656 21.2266 18.1191 17.9769 20.2262 15.568C22.3998 13.1648 25.2509 11.9308 28.7898 11.9308C32.8859 11.9308 35.9812 13.492 38.0447 16.6111L40.036 19.9245L42.0308 16.6111C44.0943 13.492 47.1896 11.9308 51.2788 11.9308C54.8143 11.9308 57.6654 13.1648 59.8459 15.568C61.9529 17.9746 63.0065 21.2243 63.0065 25.3172L62.9996 45.3371Z" fill="currentColor"/></svg> <div style="color: #787588; margin-top: 16px;">Post by @jalefkowit@vmst.io</div> <p>"Medievalism was an inherently nostalgic movement, and not only because it was a bedrock of so much children’s literature. People loved it because it promised a bygone past that never existed. The visual and written languages of feudalism, despite it being a terrible system, came into vogue because it wasn’t capitalism. We must remember that the 19th century saw industrial capitalism at its newest and rawest. Unregulated, it destroyed every natural resource in sight and subjected people, including children, to horrific conditions. It still does, but we’re somewhat used to it by now. The shock’s worn off."</p> <div style="font-weight: 500;">View on Mastodon</div> </a> </blockquote> <script data-allowed-prefixes="https://vmst.io/" async src="https://vmst.io/embed.js"></script> 

<br> 

<https://www.jayeless.net/2024/12/fantasy-feudalism.html>

---

**@Dave Winer's Scripting News** (date: 2024-12-29, from: Dave Winer's Scripting News)

Idea: Pipe new posts from feeds in <a href="https://feedland.social/opml?screenname=davewiner&catname=blogroll">my blogroll list</a> to Bluesky. 

<br> 

<http://scripting.com/2024/12/28.html#a003934>

