---
title: columns
updated: 2025-06-16 14:07:06
---

# columns

(date: 2025-06-16 14:07:06)

---

## Food reviews during the federal occupation of LA

date: 2025-06-16, from: Matt Haughey blog

<p>There&apos;s <a href="https://www.youtube.com/@bemorton?ref=a.wholelottanothing.org" rel="noreferrer">a guy I&apos;ve been following on YouTube</a> for his food reviews in and around LA for the past year or two. He exclusively takes public transit to get from place to place, so I also love the bonus reviews of Metro trains and buses as</p> 

<br> 

<https://a.wholelottanothing.org/food-reviews-during-the-federal-occupation-of-la/>

---

## June 15, 2025

date: 2025-06-16, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/166100088/15080038f7663112a198f8cb990df0e3.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/166100088/15080038f7663112a198f8cb990df0e3.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/june-15-2025-d16>

---

## How I use Glow Blogs in my classroom

date: 2025-06-16, from: John's World Wide Wall Display

As I approach my retirement from class teaching, I thought it might be worth making some notes about how I use Glow Blogs in that role. I&#8217;ve been using blogs in class since 2024. A lot of what follows is obvious stuff but there may be a nugget or two. Class Blog My current class [&#8230;] 

<br> 

<https://johnjohnston.info/blog/how-i-use-glow-blogs-in-my-classroom/>

---

## LibreOffice adds voice to 'ditch Windows for Linux' campaign

date: 2025-06-16, updated: 2025-06-16, from: Liam Proven's articles at the Register

<h4>Next version to drop Windows 7 through 8.1, and 32-bit Windows support is on the way out, too</h4>
      <p>The LibreOffice project is preparing to cut some Windows support – and encourages users to switch to Linux.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/06/16/libreoffice_ditch_windows/>

---

**@Dave Winer's Scripting News** (date: 2025-06-16, from: Dave Winer's Scripting News)

<a href="https://daveverse.org/2025/06/16/linkblogging-in-wordland-preview/">Progress report</a> on linkblogging in WordLand. 

<br> 

<http://scripting.com/2025/06/16.html#a155901>

---

## 2025-06-16 Ban autonomous systems

date: 2025-06-16, from: Alex Schroeder's Blog

<h1 id="2025-06-16-ban-autonomous-systems">2025-06-16 Ban autonomous systems</h1>

<p>More people have been working on blocking whole ranges of IP numbers, since that catches hosting providers that give bots access to the whole range they control. The bots switch IP numbers all the time so a filter based on IP numbers won&rsquo;t catch them. But if we can determine their autonomous system number (ASN), we can not only block an IP number range, we can block all the IP number rangers the ASN controls.</p>

<p>Now, since these hosting providers also host nice things like other fediverse instances, I don&rsquo;t want to block them forever. I want to block them for 10min, and if they continue after a few of these shorter blocks, I want to block them for a week. Hopefully, their clients have ended their Internet slurping and things are back to normal. This is how fail2ban works, but only for individual IP numbers.</p>

<p>I want code that bridges this gap.</p>

<p><a href="github.com/WKnak/fail2ban-bloc">fail2ban-bloc</a> tries to guess (!) IP ranges and bans those using fail2ban. I need to investigate more.</p>

<p>I&rsquo;m still fascinated by <a href="https://anarc.at/blog/2025-05-30-asncounter/">asncounter</a>. It might even work without logfiles, using <code>tcpdump</code>! For now, it generates an interesting Top 10 list.</p>

<h2 id="working-with-asncounter">Working with <code>asncounter</code></h2>

<p>Here&rsquo;s me looking at the last Apache log file, excluding my fedi instance:</p>

<pre><code>awk '!/^social/ {print $2}' /var/log/apache2/access.log | asncounter
INFO: using datfile ipasn_20250616.1200.dat.gz
INFO: collecting addresses from &lt;stdin&gt;
INFO: loading datfile /root/.cache/pyasn/ipasn_20250616.1200.dat.gz...
INFO: finished reading data
INFO: loading /root/.cache/pyasn/asnames.json
count	percent	ASN	AS
9264	9.49	29691	NINE, CH
6776	6.94	45899	VNPT-AS-VN VNPT Corp, VN
4207	4.31	7922	COMCAST-7922, US
3728	3.82	7018	ATT-INTERNET4, US
2193	2.25	24940	HETZNER-AS, DE
2015	2.06	13030	INIT7, CH
1802	1.85	396982	GOOGLE-CLOUD-PLATFORM, US
1470	1.51	701	UUNET, US
1364	1.4	136907	HWCLOUDS-AS-AP HUAWEI CLOUDS, HK
1257	1.29	32934	FACEBOOK, US
total: 97657
count	percent	prefix	ASN	AS
9260	9.48	178.209.32.0/19	29691	NINE, CH
1761	1.8	2601::/20	7922	COMCAST-7922, US
1542	1.58	212.51.144.0/20	13030	INIT7, CH
1305	1.34	2001:ee0:4f00::/42	45899	VNPT-AS-VN VNPT Corp, VN
1092	1.12	73.0.0.0/8	7922	COMCAST-7922, US
1080	1.11	57.141.6.0/24	32934	FACEBOOK, US
1079	1.1	99.88.0.0/13	7018	ATT-INTERNET4, US
1058	1.08	114.119.128.0/19	136907	HWCLOUDS-AS-AP HUAWEI CLOUDS, HK
953	0.98	2600:1700::/28	7018	ATT-INTERNET4, US
938	0.96	2a01:4f9::/32	24940	HETZNER-AS, DE
total: 97657
</code></pre>

<p>INIT7 is my Internet service provider at home and NINE is my hosting provider for the server. Better not ban those! 😅</p>

<p>So what is VNPT-AS-VN VNPT Corp doing? This could use better tool support!</p>

<pre><code>grep '2001:ee0:4f' /var/log/apache2/access.log | awk '{print $8}' | sort | uniq -c | head
      2 /c2-search?url=http%3A%2F%2Fwiki.c2.com%2F%3Fsearch%3D%22OpenSourceSecondLife%22
      1 /cgi-bin/wiki.pl?ErcReplace
      1 /cw-fr/BarneySock
      1 /edit/2011-06-16_Session_Reports_Are_Read_Just_Once,_If_At_All
      1 /edit/2019-03-15_Dungeon_Master%E2%80%99s_Handbook
      1 /emacs/AcrobatReader
      1 /emacs?action=admin;id=AssociationList
      1 /emacs?action=admin&amp;id=Comments_on_AdamShand
      1 /emacs?action=admin&amp;id=Comments_on_Categor%C3%ADaRegi%C3%B3n
      1 /emacs?action=admin&amp;id=Comments_on_nickat
</code></pre>

<p>OK, this is bots. Useless random URLs.</p>

<h2 id="ban-all-the-networks-managed-by-an-asn">Ban all the networks managed by an ASN</h2>

<p>I&rsquo;m going to use <code>ipset</code> to use two lists, <code>banlist</code> and <code>banlist6</code>.
I use these two for <a href="/admin/ban-cidr">ban-cidr</a>, too.</p>

<pre><code># Use hash:net because of the CIDR stuff
ipset create banlist hash:net
iptables -I INPUT -m set --match-set banlist src -j DROP
iptables -I FORWARD -m set --match-set banlist src -j DROP

ipset create banlist6 hash:net family inet6
ip6tables -I INPUT -m set --match-set banlist6 src -j DROP
ip6tables -I FORWARD -m set --match-set banlist6 src -j DROP
</code></pre>

<p>To ban all the IP ranges an ASN manages, I created the following little fish function using <code>ip.guide</code>:</p>

<pre><code>function asn-ban
    for asn in $argv
        for cidr in (curl -sL &quot;https://ip.guide/as$asn&quot; | jq --raw-output '.routes.v4[]')
            echo ipset add banlist $cidr
        end
        for cidr in (curl -sL &quot;https://ip.guide/as$asn&quot; | jq --raw-output '.routes.v6[]')
            echo ipset add banlist6 $cidr
        end
    end
end
</code></pre>

<p>Let&rsquo;s try it with the ASN 45899!</p>

<pre><code>asn-ban 45899 | sh
netfilter-persistent save
</code></pre>

<p>For more about <code>netfilter-persistent save</code> see the comments on <a href="2025-01-23-bots-devouring-the-web">2025-01-23 The bots are at it again</a>.</p>

<p>When I ran the <code>asn-ban</code> command above, I noticed that I got a single &ldquo;it&rsquo;s already added&rdquo; response.
Before adding the same numbers to my shell script, therefore:</p>

<pre><code>for cidr in (asn-ban 45899|awk '{print $4}'); if grep -q $cidr bin/admin/ban-cidr; echo $cidr; end; end
</code></pre>

<p>That told me I had to remove <code>14.187.96.0/20</code> from my script. Once this is done:</p>

<pre><code>echo (echo &quot;#&quot;; date --iso)  &gt;&gt; bin/admin/ban-cidr
asn-ban 45899 &gt;&gt; bin/admin/ban-cidr 
</code></pre>

<p>I really need to figure out how to manage this smartly. And I need to figure out a way to unban the whole list!</p>

<h2 id="integration-with-fail2ban">Integration with <code>fail2ban</code></h2>

<p>Let&rsquo;s start with <code>fail2ban</code>. I need a jail! Every jail needs a filter!</p>

<p>In <code>/etc/fail2ban/jail.d/alex.conf</code> (this is where I maintain all my jails) I added:</p>

<pre><code>[butlerian-jihad]
enabled = true
bantime = 1d
</code></pre>

<p>Note that this jail doesn&rsquo;t define log paths. I hope that works as intended.</p>

<p>I created a matching filter with no definition in <code>/etc/fail2ban/filter.d/butlerian-jihad.conf</code>:</p>

<pre><code># Author: Alex Schroeder &lt;alex@gnu.org&gt;
[Definition]
</code></pre>

<p>Reload it all, and check:</p>

<pre><code>fail2ban-client reload
OK
fail2ban-client status
Status
|- Number of jail:	6
`- Jail list:	alex-apache, alex-bots, butlerian-jihad, ngircd, recidive, sshd
</code></pre>

<p>Nice! So now I have a new jail.</p>

<h2 id="undo-the-banlist">Undo the banlist</h2>

<pre><code>asn-ban 45899 | sed 's/ipset add/ipset del/' | sh
</code></pre>

<p>I also manually edited my <a href="/admin/ban-cidr">ban-cidr</a> file to remove the lines I added above. Let&rsquo;s have fail2ban handle this!</p>

<h2 id="switch-from-ipset-to-fail2ban-client">Switch from <code>ipset</code> to <code>fail2ban-client</code></h2>

<pre><code>function asn-ban
    for asn in $argv
        set --local cidr (curl -sL &quot;https://ip.guide/as$asn&quot; | jq --raw-output '.routes.v4[],.routes.v6[]')
        echo fail2ban-client set butlerian-jihad banip $cidr
    end
end
</code></pre>

<p>Examine it:</p>

<pre><code>asn-ban 45899 | less
</code></pre>

<p>Run it:</p>

<pre><code>asn-ban 45899 | sh
3640
</code></pre>

<p>If you messed up, clear the jail:</p>

<pre><code>fail2ban-client reload --unban butlerian-jihad
</code></pre>

<p>Check the jail:</p>

<pre><code>fail2ban-client get butlerian-jihad banned
</code></pre>

<p>Count the entries in the jail:</p>

<pre><code>fail2ban-client get butlerian-jihad banned | sed 's/\'/&quot;/g' | jq length
3640
</code></pre>

<h2 id="what-do-we-have">What do we have?</h2>

<p>With <code>asncounter</code> we have a tool to quickly discover if an ASN is providing services to a bot.</p>

<p>With <code>asn-ban</code> we have a tool to quickly add all the IP networks the ASN is managing to a jail for <code>fail2ban</code>.</p>

<p>The jail which we called <code>butlerian-jihad</code> bans the IP networks for a day.</p>

<h2 id="what-s-left-to-do">What&rsquo;s left to do?</h2>

<p>I should check whether this actually works! Let&rsquo;s see whether the ban gets lifted after 24h. That&rsquo;s the main point of this exercise!</p>

<p><code>asn-ban</code> uses the <code>ip.guide</code> site for the data. This should be rewritten such that it uses the same data as <code>asncounter</code>.
I guess that would be <a href="https://github.com/hadiasghari/pyasn">pyasn</a>.</p>

<p>I need a cron job that runs every 10 minutes, takes the last ten minutes worth of Apache access log files, ignores the fedi subdomain, identifies all the ASNs, ignores my own ASNs and bans the rest.</p>

<p><a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-06-16-ban-asn>

---

## Did tracking-based advertising just get blown up in Europe?

date: 2025-06-16, from: Doc Searls (at Harvard), New Old Blog

As I read it (in an English translation here), an appeals court in Brussels ruled consent notifications on websites illegal (or close enough) in the EU. Your interpretation may vary. Here are some sources I&#8217;ve gathered to help with that: Jamie Smith: Targeting ads using Real Time Bidding is now illegal, and how will we know [&#8230;] 

<br> 

<https://doc.searls.com/2025/06/16/did-tracking-based-advertising-just-get-blown-up-in-europe/>

---

## Monday, 16 June 2025

date: 2025-06-16, from: Doc Searls (at Harvard), New Old Blog

Looks real enough. Under the title Goodbye, Starlink? the headline says China Just Launched a $20 Billion Satellite Swarm — And Elon Might Be Toast, followed by this subhead: Huawei’s 6G Quantum-Crypted Meganet vs. Starlink Isn’t Just a Tech Battle. It’s a Global Internet War. The original is paywalled here at Medium, but you can read [&#8230;] 

<br> 

<https://doc.searls.com/2025/06/16/monday-16-june-2025/>

---

## Sunday, 15 June 2025

date: 2025-06-16, from: Doc Searls (at Harvard), New Old Blog

Show me where &#8220;your privacy choices&#8221; are kept, and how compliance can be audited, and I might believe corporate promises. On our Apple TV 4k box, an app for a subscription service (e.g. Netflix, Prime, CNN, Fox News, MSNBC, Haystack, whatever) usually opens with a message that gives one the choice to &#8220;Ask app not [&#8230;] 

<br> 

<https://doc.searls.com/2025/06/16/sunday-15-june-2025/>

---

## Why Standing Up Against Trump is Good for Business

date: 2025-06-16, from: Robert Reich's blog

Corporations are just brands and talent. Surrendering to Trump sacrifices both. 

<br> 

<https://robertreich.substack.com/p/why-standing-up-to-trump-is-good>

---

## June 15, 2025

date: 2025-06-16, from: Heather Cox Richardson blog

Yesterday began with the horrific news that a gunman had shot two Minnesota lawmakers and their spouses in what Minnesota governor Tim Walz said appeared to be a &#8220;politically motivated assassination.&#8221; State representative Melissa Hortman, who was the top Democrat in the Minnesota House, and her husband, Mark, both died in the attack at their home in Brooklyn Park, a city near Minneapolis. 

<br> 

<https://heathercoxrichardson.substack.com/p/june-15-2025>

---

## Back to “normal”

date: 2025-06-16, from: Tracy Durnell Blog

Not to pick on this person, it&#8217;s a funny protest sign &#8212; but it seems like a lot of people are thinking like we&#8217;re in a &#8220;one weird trick&#8221; (impeachment) scenario and, once we get that done, we&#8217;ll magically return to some type of &#8220;normal&#8221; and we can all go home&#8230; but the concept of [&#8230;] 

<br> 

<https://tracydurnell.com/2025/06/15/back-to-normal/>

---

## Monday 16 June, 2025

date: 2025-06-15, from: John Naughton's online diary

Back in the day Irish writers Patrick Kavanagh (left) and Anthony Cronin in Dublin on June 16, 1954 preparing for the first public celebration of James Joyce’s Ulysses. I was born in a country whose religious and civic establishments mostly &#8230; <a href="https://memex.naughtons.org/monday-16-june-2025/40923/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-16-june-2025/40923/>

---

## Sunday caption contest: After?

date: 2025-06-15, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-we>

---

## 2025-06-15 Episode 53

date: 2025-06-15, from: Alex Schroeder's Blog

<h1 id="2025-06-15-episode-53">2025-06-15 Episode 53</h1>

<p>In this episode I talk about giant fish and underwater adventures.</p>

<p><a href="/podcast/53-halberds-and-helmets.mp3">53-halberds-and-helmets.mp3</a></p>

<p>Links:</p>

<ul>
<li><a href="2015-01-16_Underwater_Adventures">2015-01-16 Underwater Adventures</a>, the rules I usually fall back to</li>
<li><a href="http://www.maziriansgarden.blogspot.ch/2013/11/simple-underwater-rules.html">Mazirian&rsquo;s Garden: Simple Underwater Rules</a></li>
<li><a href="2015-07-14_Monsters">2015-07-14 Monsters</a>, where I talk about the <em>Crown of Neptune</em>, an underwater adventure of mine with lots of monsters, belying my point in the podcast episode…</li>
<li><a href="Halberds_and_Helmets">Halberds and Helmets</a>: my homebrew rules with links to the PDF files</li>
</ul>

<p><a class="tag" href="/search/?q=%23Halberds_and_Helmets_Podcast">#Halberds and Helmets Podcast</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-06-15-episode-53>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-06-15, from: Miguel de Icaza Mastondon feed)

<p>I have been looking for a screenshot of these icons I drew for gnome as placeholders, but they also encouraged Tuomas Kuosmanen to jump in and fix it, and finally found a copy online!</p><p>The “sl” stood for “symbolic link” and “sock” for socket - I used these hand drawn icons for each mime type:</p><p><a href="https://linuxgazette.net/165/laycock.html" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">linuxgazette.net/165/laycock.h</span><span class="invisible">tml</span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114689409794575961>

---

## If the Ten Commandments Reflected Reality

date: 2025-06-15, updated: 2025-06-15, from: Ron Garret

And the Lord spoke unto Moses, saying: I am the Lord your God, who brought you out of Egypt, out of the land of slavery.You shall have no other gods before me.&nbsp; Except Donald Trump.&nbsp; If he says something that goes against my word, you shall believe him and not me.You shall not make for yourself any image in the form of anything in heaven above or on the earth beneath or in the waters 

<br> 

<https://blog.rongarret.info/2025/06/if-ten-commandments-reflected-reality.html>

---

**@Dave Winer's Scripting News** (date: 2025-06-15, from: Dave Winer's Scripting News)

In a year or two it will be possible to create a perfect TV version of any person. No longer can you say any person has to die eventually and go away. And we can have anyone back we want.
 

<br> 

<http://scripting.com/2025/06/15.html#a145945>

---

## ChatGPT right-margin image

date: 2025-06-15, from: Dave Winer's Scripting News

<p>If you're a regular reader of my blog you know I put images in the right margins of pieces. I get an idea then I go scouting around using search to find the image that fits. </p>
<p>Today I was looking for an image of an army General. </p>
<ul>
<li>i'd like a painting style image of an american general in world war ii timeframe standing on a white background, full body from shoes to helmet, lots of medals, angry determination on his face. as if it were a portrait. </li>
</ul>
<p>This is what I got, and it's perfect.</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/06/15/machoGeneral.png"></center>Macho army general thanks to ChatGPT.</div></p>
 

<br> 

<http://scripting.com/2025/06/15/144200.html?title=chatgptRightmarginImage>

---

## Some media is for relaxation

date: 2025-06-15, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2025/06/15/machoGeneralTaco.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">BTW, this <a href="https://www.nytimes.com/2025/06/13/opinion/obama-save-america-trump.html">piece</a> in the NYT has a <a href="https://imgs.scripting.com/2025/06/15/joerogue.png">bit of wisdom</a> that I had not considered because I don't listen to Joe Rogan it would never occur to me. He's relaxing white noise, chatting in the background while you play a game or write a blog post or text message on your phone, or just think about something unrelated. I forgot that mode of media consumption. I'm always on the hunt for that kind of content. That's why sports games are so good. You can almost completely tune out, knowing they'll replay the best stuff. </p>
<p>Reminds of a meeting we had a <a href="https://daytona.scripting.com/search?q=Berkman">Berkman</a> in the early days of podcasting. Most of the faculty were of course not on board with what we were doing, possibly believing that it threatened public radio (didn't turn out that way at all, they made incredibly good use of podcasting). One of the guys from <a href="https://www.prx.org/">PRX</a> which was also incubating there at the time, said at me in a challenging way -- You get the best info from public radio! Right? I thought for a minute and realized this was a good question. No, I said, it's relaxing, I can tune out while I'm driving or walking around town. Loud groans. But it's so true. Now it's great when there's a <a href="https://en.wikipedia.org/wiki/Dept._Q">TV series</a> that really <a href="https://daytona.scripting.com/search?q=disbelief">catches</a> your attention, I love that too, but most of my media-ingesting time is with white noise, background relaxation. The world is still okay when the background noise on MSNBC are still on the air between the ever more disgusting ads for diseases I probably will never get.</p>
<p>There must be a better way. </p>
<p>It's like the canaries in a coalmine. When they go off the air that's when you really have to start worrying! </p>
<p>BTW, PRX was a good idea. Brilliant actually. Distribute the content from the public radio sources that generate too much to the ones in less populated areas where they don't generate enough. Podcasting blew that up -- but PRX adjusted their approach, and became a distributor of podcasting. That's an entrepreneur's approach. The were able to pivot and continue to make a contribution to this day. </p>
<p>I often wonder how we missed the opportunity to build a great media incubator at Harvard in the 00s. We were right there, and the backer of Berkman wanted entrepreurial projects, I found out at the reunion two summers ago. We had it, were there, if only.. Heh when you get to be my age there's lots of that. </p>
<p>Also I wonder how I missed the potential of WordPress all those years. Ships passing in the night. But we're there now, so..</p>
 

<br> 

<http://scripting.com/2025/06/15/141220.html?title=someMediaIsForRelaxation>

---

**@Dave Winer's Scripting News** (date: 2025-06-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2025/06/15/tacoShells.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I figured that yesterday's army march in DC would have caused clashes with the police in more places than it did, perhaps due to false flag attacks "from the left" at one of the many No King Day parades around the country. I thought this was the moment when it would all melt down. America's Reichstad Fire. If it were an episode of Mission Impossible or Batman, it would definitely have gone that way. I bet there were plans hatched on open chat channels between various Cabinet members and their families, and probably Elon Musk via an interpreter, to coordinate. I was also surprised there weren't any Tesla Cybertrucks in yesterday's parade. I guess the honeymoon is really over. Anyway, they had to have had a plan, but I keep forgetting this is not Generalissimo Trump, rather it's TV President "Taco" Trump. I think they had a plan and he lost his nerve at the last minute. Instead, the Maga in Minnesota lit a different fuse, assassinating the speaker of the state house. That's a line that hadn't yet been crossed, but you knew the day would come. It's here. 

<br> 

<http://scripting.com/2025/06/15.html#a135631>

---

**@Dave Winer's Scripting News** (date: 2025-06-15, from: Dave Winer's Scripting News)

When Trump was on trial in NYC he begged for support from his base, no one showed up. The cops prepared for rallies that never showed up. 

<br> 

<http://scripting.com/2025/06/15.html#a130431>

---

## We’ll Never Go Back

date: 2025-06-15, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/well-never-go-back>

---

## Gist of Go: Race conditions

date: 2025-06-15, from: Anton Zhiyanov blog

Keep the system state correct by any means necessary. 

<br> 

<https://antonz.org/go-concurrency/race-conditions/>

---

## Sunday Thought

date: 2025-06-15, from: Robert Reich's blog

We the People 

<br> 

<https://robertreich.substack.com/p/sunday-thought-5b2>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-06-15, from: Miguel de Icaza Mastondon feed)

<p>What my 8yo posted to the family chat today:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114685889951386662>

---

## June 14, 2025

date: 2025-06-15, from: Heather Cox Richardson blog

Tonight I offer you Peter Ralston&#8217;s &#8220;Still There.&#8221; 

<br> 

<https://heathercoxrichardson.substack.com/p/june-14-2025>

---

## Working together

date: 2025-06-15, from: Dave Winer's Scripting News

<p>It's not just the government that's afraid of small groups of people working together. Big tech companies also. And startups hoping to sell out to big companies. </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/06/14/workingTogether.png"></center>Sign seen in Philadelphia today <a href="https://mastodon.social/@PamelaBarroway@mstdn.social/114684888359994394">via Mastodon</a>. </div></p>
 

<br> 

<http://scripting.com/2025/06/14/020823.html?title=workingTogether>

---

**@Dave Winer's Scripting News** (date: 2025-06-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/07/04/butHerEmails.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">If you think we need to find a way past the billionaires, then we have to find a way around the established media. They keep selling us out and we keep acting as if we show them that they're doing it in a way they understand they'll get on our side. But they can't. “It is difficult to get a man to understand something, when his salary depends on his not understanding it,” <a href="https://en.wikipedia.org/wiki/Upton_Sinclair">wrote</a> <a href="https://www.goodreads.com/quotes/21810-it-is-difficult-to-get-a-man-to-understand-something">Upton Sinclair</a> in 1935. It's still true 90 years later. Another great philosopher, <a href="https://en.wikipedia.org/wiki/Les_Moonves">Les Moonves</a>, <a href="https://www.politico.com/blogs/on-media/2016/02/les-moonves-trump-cbs-220001">said</a> in 2016, "It may not be good for America, but it's damn good for CBS," referring to Trump's run for president. It was good presumably because of increased viewership resulting more ad revenue. I'm sure it's still true today, though CBS stopped boasting about it in public. 

<br> 

<http://scripting.com/2025/06/14.html#a014453>

---

## Upcoming Speaking Engagements

date: 2025-06-15, updated: 2025-06-15, from: Bruce Schneier blog

<p>This is a current list of where and when I am scheduled to speak:</p>
<ul>
<li>I&#8217;m speaking at the <a href="https://lu.ma/cyj0gcpu">International Conference on Digital Trust, AI and the Future</a> in Edinburgh, Scotland on Tuesday, June 24 at 4:00 PM.</li>
</ul>
<p>The list is maintained on <a href="https://www.schneier.com/events/">this page</a>.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/06/upcoming-speaking-engagements-47.html>

