---
title: columns
updated: 2025-07-25 14:09:15
---

# columns

(date: 2025-07-25 14:09:15)

---

## Friday Squid Blogging: Stable Quasi-Isodynamic Designs

date: 2025-07-25, updated: 2025-07-18, from: Bruce Schneier blog

<p>Yet another SQUID acronym: &#8220;<a href="https://www.ipp.mpg.de/5457187/SQulD_Stellarator">Stable Quasi-Isodynamic Design</a>.&#8221; It&#8217;s a <a href="https://en.wikipedia.org/wiki/Stellarator">stellarator</a> for a fusion nuclear power plant.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/07/friday-squid-blogging-stable-quasi-isodynamic-designs.html>

---

## Chatting with Liza Donnelly

date: 2025-07-25, from: Heather Cox Richardson blog

A recording from Heather Cox Richardson's live video 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/169257881/6581d1ab484ca64723ca5f14b4f7e5b5.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/169257881/6581d1ab484ca64723ca5f14b4f7e5b5.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/chatting-with-liza-donnelly>

---

## Going live with Liza Donnelly at 4:00 today

date: 2025-07-25, from: Heather Cox Richardson blog

Hi folks: 

<br> 

<https://heathercoxrichardson.substack.com/p/going-live-with-liza-donnelly-at>

---

## First release candidate of systemd 258 is here

date: 2025-07-25, updated: 2025-07-25, from: Liam Proven's articles at the Register

<h4>The latest version of systemd looks to be a big one, with substantial new functionality. More to love – right?</h4>
      <p>Like it or not, systemd is the industry-standard init system these days. A new release is coming, and it&#39;s a big one.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/25/systemd_258_first_rc_here/>

---

## July 24, 2025

date: 2025-07-25, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/169249919/23fc910bd932d3818423bc38bce1a2a6.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/169249919/23fc910bd932d3818423bc38bce1a2a6.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/july-24-2025-53e>

---

## FreeBSD 15 installer to offer minimal KDE desktop

date: 2025-07-25, updated: 2025-07-25, from: Liam Proven's articles at the Register

<h4>The FreeBSD Laptop project continues – and plans to offer a very visible change</h4>
      <p>FreeBSD 15 is coming, maybe at the end of this year – and along with other improvements, it may finally offer the option of installing with a graphical desktop.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/25/freebsd_15_installer_offers_kde/>

---

## 2025-07-25 Should wikis block the UK?

date: 2025-07-25, from: Alex Schroeder's Blog

<h1 id="2025-07-25-should-wikis-block-the-uk">2025-07-25 Should wikis block the UK?</h1>

<p>Of course, the answer is “no.”
But when I read <a href="https://lobste.rs/s/ukosa1/uk_users_lobsters_needs_your_help_with">UK Users: Lobsters needs your help with the Online Safety Act</a> I can’t help but think that maybe the answer should be “yes.”</p>

<p><a class="tag" href="/search/?q=%23UK">#UK</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-07-25-block-the-uk>

---

## 2025-07-25 Oddmuse and the Butlerian Jihad

date: 2025-07-25, from: Alex Schroeder's Blog

<h1 id="2025-07-25-oddmuse-and-the-butlerian-jihad">2025-07-25 Oddmuse and the Butlerian Jihad</h1>

<p>So what about <a href="https://src.alexschroeder.ch/oddmuse.git/">that old wiki software</a> that&rsquo;s been serving me so well for more than twenty years?</p>

<p>Back then, Recent Changes or a search for a page title was implemented as a GET request. The idea was that it would be possible to bookmark or share such links. But what has happened instead is that the web scrapers are losing themselves in a gazillion dynamic pages, trying to ingest them. And since searches and filters are expensive operations, this drives up the load of the system hosting the wiki.</p>

<p>Examples such as these showed up in previous blog posts:</p>

<pre><code># 2h-access-log !^social | asn-access-log 7713 | log-request | rank-lines
      1 /wiki/Older_Upgrading_Issues
      1 /wiki/CategoryWiki
      1 /wiki?action=rss&amp;all=1&amp;days=1&amp;full=1&amp;rcidonly=wiki_feeds&amp;showedit=0
      1 /wiki?action=rss&amp;all=0&amp;days=7&amp;diff=1&amp;full=1&amp;rcidonly=CommentHabillerUnFilRss&amp;showedit=1
      1 /wiki?action=rss&amp;all=0&amp;days=28&amp;rcidonly=2004-07-12&amp;showedit=0
      1 /wiki?action=rc&amp;from=1749992400&amp;rcidonly=GermanXpCommunity&amp;showedit=1&amp;upto=1750597200
      1 /wiki?action=rc&amp;all=1&amp;from=1750742594&amp;rcidonly=WikiToHTML&amp;upto=1751001794
      1 /wiki?action=rc&amp;all=0&amp;days=28&amp;rcfilteronly=%22DifficultPerson%22&amp;showedit=0
      1 /wiki?action=rc&amp;all=0&amp;days=14&amp;rcidonly=HoofSmith&amp;rollback=1&amp;showedit=0
      1 /wiki?action=admin&amp;id=UserInterfaceValidator
</code></pre>

<p>In theory, POST is used when making changes to a web resource such as a wiki page. What I&rsquo;ve done now is I wrote an extension that <a href="https://oddmuse.org/wiki/POST_instead_of_GET_extension">changes all these links to forms</a> and I&rsquo;ve installed it for the Oddmuse wikis I still run.</p>

<p>At the same time, the web server is blocking requests to these URLs.</p>

<pre><code># Block for GET requests for search, recent changes and filtered feeds
RewriteCond &quot;%{QUERY_STRING}&quot; &quot;search=&quot; [or]
RewriteCond &quot;%{QUERY_STRING}&quot; &quot;action=rc&quot; [or]
RewriteCond &quot;%{QUERY_STRING}&quot; &quot;action=rss[&amp;;]&quot;
RewriteRule &quot;^&quot; https://alexschroeder.ch/nobots [redirect=410,last]
</code></pre>

<p>Let&rsquo;s see if that starts cutting down on the number of these requests I&rsquo;m getting.
I suspect that many of these URLs are in fact stored in training sets so it will take a long time for these URLs to fade from use.</p>

<p><a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a> <a class="tag" href="/search/?q=%23Oddmuse">#Oddmuse</a> <a class="tag" href="/search/?q=%23Apache">#Apache</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-07-25-oddmuse>

---

## Like Christmas in July

date: 2025-07-25, from: Dave Winer's Scripting News

<p>I've rarely been this happy to receive a new feature.</p>
<p>I have a plan of course. I'll let you know how it goes! :-)</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/07/25/daveGetsAgentMode.png"></center>I just got Agent Mode in ChatGPT.  🎉</div></p>
 

<br> 

<http://scripting.com/2025/07/25/125944.html?title=likeChristmasInJuly>

---

## Modernizing my sound system

date: 2025-07-25, from: Dave Winer's Scripting News

<p>I got tired of my old sound system, too many wires, a big receiver whose functions I never used, all designed long before the 4-year-old 65-inch OLED screen on top of it all, so I downscaled to a <a href="https://www.amazon.com/dp/B0BWLCLZPS?ref=ppx_yo2ov_dt_b_fed_asin_title&th=1">Sony soundbar</a>, figured that was as simple as you could get, for $300, thinking of it as an experiment. </p>
<p>I liked it but then I thought to ask ChatGPT a question I've had for a while. I want a small amp designed for today's music and video, and went through a bunch of options and came up with the <a href="https://www.amazon.com/dp/B0CGCLXH4H?ref=ppx_yo2ov_dt_b_fed_asin_title&th=1">WiiM Home amp</a>. No speakers, unlike the soundbar, but hooks up to the TV via the ARC connector, and I have plenty of old speakers to try out in this configuration. </p>
<p>I got it yesterday and the setup experience was pretty great and the feature list is totally 2025. Will have more to say for sure. </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/07/25/wiimRearView.png"></center>Rear view of the WiiM Home amp.</div></p>
<p>PS: It's from a Silicon Valley <a href="https://www.linkplay.com/aboutus">tech company</a> btw. Nice to see a company just designing nice products and not trying to take over the world. </p>
 

<br> 

<http://scripting.com/2025/07/25/123851.html?title=modernizingMySoundSystem>

---

## Subliminal Learning in AIs

date: 2025-07-25, updated: 2025-07-24, from: Bruce Schneier blog

<p>Today&#8217;s freaky <a href="https://alignment.anthropic.com/2025/subliminal-learning/">LLM behavior</a>:</p>
<blockquote><p>We study subliminal learning, a surprising phenomenon where language models learn traits from model-generated data that is semantically unrelated to those traits. For example, a &#8220;student&#8221; model learns to prefer owls when trained on sequences of numbers generated by a &#8220;teacher&#8221; model that prefers owls. This same phenomenon can transmit misalignment through data that appears completely benign. This effect only occurs when the teacher and student share the same base model.</p></blockquote>
<p>Interesting security implications.</p>
<p>I am more convinced than ever that we need serious research into ...</p> 

<br> 

<https://www.schneier.com/blog/archives/2025/07/subliminal-learning-in-ais.html>

---

## 2025-07-23 Testing a reset of the one week jail

date: 2025-07-25, from: Alex Schroeder's Blog

<h1 id="2025-07-23-testing-a-reset-of-the-one-week-jail">2025-07-23 Testing a reset of the one week jail</h1>

<p>I&rsquo;ve had a number of people complaining about being banned and I&rsquo;ve been wondering whether I should reduce the ban-time for the escalation jail. Right now, if you&rsquo;ve been banned for 1h five times in a 24h period, you&rsquo;re banned for one week. What I f I reduced this one week to three days (&ldquo;one long weekend&rdquo;), for example?</p>

<p>As a test, I wanted to reset all the one week bans and see whether load explodes or not. If most of the scraping has ceased, then perhaps there would be no problem?</p>

<p>So around 10:30 local time, I made a backup of the weekly jail:</p>

<pre><code># fail2ban-client get butlerian-jihad-week banned &gt; butlerian-jihad-week.json
# sed s/\'/\&quot;/g &lt; butlerian-jihad-week.json | jq length
2862
# fail2ban-client get butlerian-jihad-week banned
[]
</code></pre>

<p>The backup has 2862 entries, the jail is now empty.</p>

<p>Let&rsquo;s watch Munin!</p>

<p><img loading="lazy" src="2025-07-23-test-1.jpg" alt="The graph shows the one week jail pretty constant at nearly 3000 entries dropping to zero moments ago." /></p>

<p>40 minutes later. What are you dooooing‽</p>

<p><img loading="lazy" src="2025-07-23-test-2.jpg" alt="10 minutes after the reset, the 1h jail already has over 700 entries and in another 10 minutes, it has 850 entries." /></p>

<p>And who&rsquo;s doing it?</p>

<pre><code># asn-find (grep &quot;^2025-07-23 1.* \[butlerian-jihad\] Ban &quot; /var/log/fail2ban.log|cut -c 89-)\
    | cut -f2-3 | sort | uniq
16567	NETRIX-16567, US
17035	NBCUNI-17035, US
19855	MASERGY, US
209366	SEMRUSH-AS, CY
35485	MAILUP-SPA, IT
39630	ASPTECH, GB
7922	COMCAST-7922, US
8069	MICROSOFT-CORP-MSN-AS-BLOCK, US
8075	MICROSOFT-CORP-MSN-AS-BLOCK, US
</code></pre>

<p>The only obvious thing I can see is that Semrush and Microsoft are trying to crawl the site using their bots, one for their marketing and search engine optimisation and the other for their search engine itself. But remember: <a href="2023-10-04-search">2023-10-04 Search engines, the deal is off!</a>. I am no longer convinced that being listed by search engines is in my best interest.</p>

<p><img loading="lazy" src="2025-07-23-test-3.jpg" alt="A few hours later, the scene appears unchanged. There are four waves of blocks, going up to between 1000 and 1500 banned entries and coming back down again." /></p>

<p>If that&rsquo;s the image, then perhaps the long term punitive ban doesn&rsquo;t have to be that long.</p>

<p>And what&rsquo;s the situation 24h later?</p>

<p><img loading="lazy" src="2025-07-23-test-4.jpg" alt="The fifth wave generates entries in the one-week ban. But the cycles for the one-hour ban continues and so more entries keep getting added to the one-week ban." /></p>

<p>And another day later:</p>

<p><img loading="lazy" src="2025-07-23-test-5.jpg" alt="The situation has stabilised around 1400 blocked entries" /></p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p>

<p><strong>2025-07-25</strong>. So now, two days after a reset, I&rsquo;d like to see who&rsquo;s hovering just below those limits I&rsquo;ve set. If they seem to be innocents, that would be an argument to raise the limits. If they seem to be bots, that would be an argument to lower the limits or, given that the system load is OK at the moment, to leave the limit as it is.</p>

<p>Let&rsquo;s go through the various test.</p>

<p>First, &ldquo;active autonomous systems&rdquo;. On a good day, the limit is 500 requests per autonomous system.</p>

<pre><code># show-active-autonomous-systems --top 3
count	percent	ASN	AS
234	4.54	45102	ALIBABA-CN-NET Alibaba US Technology Co., Ltd., CN
172	3.33	208258	ACCESS2IT Access2.IT Network, NL
158	3.06	12880	DCI-AS, IR
total: 5158
</code></pre>

<p>Clearly, Alibaba is a bot hoster in China. What about Access2.IT in the Netherlands?</p>

<pre><code># 2h-access-log | asn-access-log 208258 | log-request | rank-lines 
    176 /
</code></pre>

<p>Clearly, that is also a bot. 2h is 120 minutes. This company is checking more than once per minute whether my sites are up. That angers me. They probably sell uptime data to other companies.</p>

<p>What about the autonomous system from Iraq?</p>

<pre><code># 2h-access-log | asn-access-log 12880 | log-request | rank-lines 
    164 /
</code></pre>

<p>The same bullshit! 😲</p>

<p>So my conclusion is that the limit could be lower! 😠</p>

<p>Next, let&rsquo;s look at &ldquo;expensive end-points&rdquo;. These are the endpoints I&rsquo;m planning to <a href="https://oddmuse.org/wiki/2025-07-13_AI_Scrapers">do away with</a>, eventually.</p>

<pre><code># 2h-access-log \
    | egrep '\baction=(rss|rc)\&amp;|\bsearch=' \
    | awk '{print $2}' \
    | asncounter --top 3 --no-prefixes 2&gt;/dev/null
count	percent	ASN	AS
27	4.42	7922	COMCAST-7922, US
11	1.8	6939	HURRICANE, US
8	1.31	7713	TELKOMNET-AS-AP PT Telekomunikasi Indonesia, ID
total: 611
</code></pre>

<p>Comcast in the United States seems to request all sorts of things:</p>

<pre><code># 2h-access-log | asn-access-log 7922 | log-request | rank-lines
      7 /1pdc/2024/
      4 /view/index.rss
      4 /osr/feed.xml
      4 /osr/atom.xml
      3 /
      2 /wiki/MontagInZ%C3%BCrich/Discord_Server
      2 /wiki/feed/full/
      2 /upload/?filename=2017-04-07_Worldbuilding-1.jpg
      1 /zoom-frm.el
      1 /zen?action=rss&amp;all=0&amp;days=90&amp;rcfilteronly=%22WikioStyle%22&amp;showedit=1
</code></pre>

<p>Note how only one of these requests is one of the &ldquo;forbidden&rdquo; URLs. But apparently it&rsquo;s also attempting to upload images! Looks like spiders, if you ask me.</p>

<p>What about Hurricane in the United States?</p>

<pre><code># 2h-access-log !^social | asn-access-log 6939 | log-user-agent | rank-lines
     17 Feedly
      8 Feedbin feed-id:1702619 - 1 subscribers
      6 Feedbin feed-id:2621878 - 1 subscribers
      6 Feedbin feed-id:1965060 - 1 subscribers
      6 Feedbin feed-id:1482607 - 3 subscribers
      6 Feedbin feed-id:1482606 - 1 subscribers
      6 Feedbin feed-id:1244032 - 8 subscribers
      4 Feedbin feed-id:2982258 - 1 subscribers
      4 Feedbin feed-id:2584020 - 2 subscribers
      4 Feedbin feed-id:1821891 - 1 subscribers
</code></pre>

<p>What the hell is wrong with these people? Do I really have these many interesting feeds?</p>

<pre><code># 2h-access-log !^social | asn-access-log 6939 | log-request | rank-lines
      9 /view/index.rss
      8 /osr/feed.xml
      6 /view/RPG.rss
      5 /files/osr-discord.xml
      4 /wiki/?action=journal;title=Roleplaying%20Games;full=1;search=tag:RPG
      4 /view/index.rss?action=journal;title=Roleplaying%20Games;full=1;search=tag:RPG
      4 /rpg/feed.xml
      4 /podcast/hh.xml
      3 /wiki/feed/full/RPG
      3 /wiki/feed/full/Old_School
</code></pre>

<p>Maybe. 😬</p>

<p>Four requests means one request every half hour, for every feed. I guess it makes sense.</p>

<p>In any case, I seems that maybe these autonomous systems are hitting a lot of expensive end-points but in general, they are all focused on feed processing.</p>

<p>The autonomous system from Indonesia looks even more like a bot but in addition to that it also goes through all the archives, for every single page:</p>

<pre><code># 2h-access-log !^social | asn-access-log 7713 | log-request | rank-lines
      1 /wiki/Older_Upgrading_Issues
      1 /wiki/CategoryWiki
      1 /wiki?action=rss&amp;all=1&amp;days=1&amp;full=1&amp;rcidonly=wiki_feeds&amp;showedit=0
      1 /wiki?action=rss&amp;all=0&amp;days=7&amp;diff=1&amp;full=1&amp;rcidonly=CommentHabillerUnFilRss&amp;showedit=1
      1 /wiki?action=rss&amp;all=0&amp;days=28&amp;rcidonly=2004-07-12&amp;showedit=0
      1 /wiki?action=rc&amp;from=1749992400&amp;rcidonly=GermanXpCommunity&amp;showedit=1&amp;upto=1750597200
      1 /wiki?action=rc&amp;all=1&amp;from=1750742594&amp;rcidonly=WikiToHTML&amp;upto=1751001794
      1 /wiki?action=rc&amp;all=0&amp;days=28&amp;rcfilteronly=%22DifficultPerson%22&amp;showedit=0
      1 /wiki?action=rc&amp;all=0&amp;days=14&amp;rcidonly=HoofSmith&amp;rollback=1&amp;showedit=0
      1 /wiki?action=admin&amp;id=UserInterfaceValidator
</code></pre>

<p>Hopefully most of that will be fixed one the forms all change from GET to POST. 😬</p>

<p>In any case, I don&rsquo;t feel like lifting this limit!</p>

<p>The last instance involves banning all the autonomous systems that are hitting &ldquo;no bots&rdquo; warnings. The web server does this redirect for various requests, including all user agents containing the words &ldquo;bot&rdquo;, &ldquo;spider&rdquo;, &ldquo;crawl&rdquo; etc.</p>

<p>I&rsquo;m going to change all my <code>robots.txt</code> files to the following:</p>

<pre><code>User-agent: *
Disallow: /
DisallowAITraining: /
</code></pre> 

<br> 

<https://alexschroeder.ch/view/2025-07-23-test>

---

## The silencing 

date: 2025-07-25, from: Robert Reich's blog

Colbert, The Washington Post, Columbia University &#8230; and on it goes 

<br> 

<https://robertreich.substack.com/p/the-silencing>

---

## July 24, 2025

date: 2025-07-25, from: Heather Cox Richardson blog

The Epstein list made it into last night&#8217;s premiere of the twenty-seventh season of the television series South Park when Satan, in bed with Trump, commented, &#8220;It&#8217;s weird that whenever it comes up, you just tell everyone to relax.&#8221; 

<br> 

<https://heathercoxrichardson.substack.com/p/july-24-2025>

---

## how to build an agent

date: 2025-07-25, from: Geoffrey Hunntley's blog

<div class="kg-card kg-cta-card kg-cta-bg-grey kg-cta-minimal    " data-layout="minimal">
            
            <div class="kg-cta-content">
                
                
                    <div class="kg-cta-content-inner">
                    
                        <div class="kg-cta-text">
                            <p dir="ltr"><span style="white-space: pre-wrap;">Hello! If you are seeing this you are either early or currently attending my talk at DataEngBytes. Learning how to build an agent is one of the best things you can do for your personal development. Cursor, Windsurf, Claude Code and Ampcode.com are 300 lines of code running in</span></p></div></div></div></div> 

<br> 

<https://ghuntley.com/how-to-build-an-agent/>

---

##  &#8220;Alto turns your Apple Notes into a website.&#8221;... 

date: 2025-07-25, updated: 2025-07-25, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047217-alto-turns-your-apple-not>

---

## Lying, gaslighting, & blackmailing — what's going on with AI chatbots? 

date: 2025-07-24, from: Melanie Mitchell, AI Guide for Human Thinking

In my final column for Science&#8217;s &#8220;Expert Voices&#8221; series, I wrote about why AI chatbots like ChatGPT and Claude are misbehaving in all kinds of ways. 

<br> 

<https://aiguide.substack.com/p/lying-gaslighting-and-blackmailing>

---

## Friday 25 July, 2025

date: 2025-07-24, from: John Naughton's online diary

Fading beauty I love the graceful way roses fade. Quote of the Day ”An expert is someone who articulates the needs of those in power.” * Henry Kissinger Musical alternative to the morning’s radio news Bob Dylan &#124; Buckets of &#8230; <a href="https://memex.naughtons.org/friday-25-july-2025/41049/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/friday-25-july-2025/41049/>

---

## Fox Shock

date: 2025-07-24, from: Dan Rather's Steady

A truth-challenged channel when we need it least 

<br> 

<https://steady.substack.com/p/fox-shock>

---

## Public Betas for Apple OSes 26

date: 2025-07-24, updated: 2025-07-24, from: Daring Fireball

 

<br> 

<https://sixcolors.com/post/2025/07/first-look-ios-26-public-beta/>

---

##  Hard Things Are Supposed to Be Hard 

date: 2025-07-24, updated: 2025-07-24, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/hard-things-are-supposed-to-be-hard>

---

##  Carbon chauvinism, perhaps coined by Carl Sagan, refers to the narrow-minded view... 

date: 2025-07-24, updated: 2025-07-24, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047206-carbon-chauvinism-perhaps>

---

## Three critical stories that are getting buried by Epsteingate

date: 2025-07-24, from: Robert Reich's blog

We have little or no chance of rectifying the most serious wrongs if we&#8217;re captivated by the most exciting. 

<br> 

<https://robertreich.substack.com/p/what-we-should-be-talking-about-imho>

---

## Tabs vs. Spaces: The War Is Over

date: 2025-07-24, from: mrusme blog

The _great indentation war_ is over and it seems like we have a clear winner. 

<br> 

<https://xn--gckvb8fzb.com/tabs-vs-spaces-the-war-is-over/>

---

##  Gorgeous New Covers for Nabokov by Na Kim 

date: 2025-07-24, updated: 2025-07-24, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/gorgeous-new-covers-for-nabokov-by-na-kim>

---

## Wayback 0.1 debuts as early Wayland server for X11 diehards

date: 2025-07-24, updated: 2025-07-24, from: Liam Proven's articles at the Register

<h4>Complete with new website – but the software&#39;s still alpha level stuff, so be careful</h4>
      <p>Wayback 0.1 is out, the first preliminary release of the new Wayland display server whose announcement we reported a few weeks ago.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/24/wayback_01_released/>

---

##  The full official trailer for Tron: Ares. I want this to be... 

date: 2025-07-24, updated: 2025-07-24, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047213-the-full-official-trailer>

---

##  Artist Amy Sherald has canceled her solo show at the Smithsonian&#8217;s National... 

date: 2025-07-24, updated: 2025-07-24, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047218-artist-amy-sherald-cancel>

---

##  Slow Light 

date: 2025-07-24, updated: 2025-07-24, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/slow-light>

---

##  Six Films Better Than the Books They&#8217;re Based On. Including Jurassic Park,... 

date: 2025-07-24, updated: 2025-07-24, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047212-six-films-better-than-the>

---

## ★ ICEBlock, an iOS Exclusive

date: 2025-07-24, updated: 2025-07-24, from: Daring Fireball

To maintain anonymity and store zero user data, there is and can be no web app version of ICEBlock. There is and can be no Android version. Only iOS supports the security and privacy features for ICEBlock to offer what it does, the way it does. 

<br> 

<https://daringfireball.net/2025/07/iceblock>

---

## 2025-07-19 The current setup defending my sites

date: 2025-07-24, from: Alex Schroeder's Blog

<h1 id="2025-07-19-the-current-setup-defending-my-sites">2025-07-19 The current setup defending my sites</h1>

<p>I wrote this post (and posted it <a href="https://www.emacswiki.org/emacs/2025-07-19">on Emacs Wiki</a>) because people have been wondering about it all on Reddit. I&rsquo;m no longer on Reddit.</p>

<p>If you see other people on the net wondering whether one of my sites is down, feel free to repost this message or parts of it. Sadly, you won&rsquo;t be able to link to it, because the people wondering are probably banned by the firewall.</p>

<p>Why am I having visitors banned by the firewall? The web has been under attack by AI scrapers since around 2022. That&rsquo;s when big companies decided they needed to train AI and one of the sources of training material was the web. (Another source was a huge collection of pirated books, but that&rsquo;s a different story.) And if your task is to scrape as much of the web as possible, you can&rsquo;t be picky. The result is devastating. Let me quote Drew DeVault:</p>

<blockquote>
<p>If you think these crawlers respect robots.txt then you are several assumptions of good faith removed from reality. These bots crawl everything they can find, robots.txt be damned, including expensive endpoints like git blame, every page of every git log, and every commit in every repo, and they do so using random User-Agents that overlap with end-users and come from tens of thousands of IP addresses – mostly residential, in unrelated subnets, each one making no more than one HTTP request over any time period we tried to measure – actively and maliciously adapting and blending in with end-user traffic and avoiding attempts to characterize their behavior or block their traffic. &ndash; <a href="https://drewdevault.com/2025/03/17/2025-03-17-Stop-externalizing-your-costs-on-me.html">Please stop externalizing your costs directly into my face</a>, by Drew DeVault, for SourceHut</p>
</blockquote>

<p>So people have been scrambling to defend their sites against the AI scraper stampede. There are no good tools.</p>

<p>One of the first measures was to block self-identified scrapers and bots. Any user agent containing the words &ldquo;bot&rdquo;, &ldquo;crawler&rdquo;, &ldquo;spider&rdquo;, &ldquo;ggpht&rdquo; or &ldquo;gpt&rdquo; are automatically redirected to a &ldquo;No Bots&rdquo; page with an HTTP status of 410, which means the resource is gone and the user agent should remove it from their database. And then I have another list of user agents that keep hitting the site: bots to help search engine optimisers (SEO), bots to &ldquo;audit&rdquo; the site, bots to check uptime, get page previews, and on and on. Whenever I checked the top hitters on my sites, I&rsquo;d find another user agent or two to add to the list.</p>

<p>But as you saw in Drew DeVault&rsquo;s blog post, AI scrapers have been working around this by faking regular user agents, making them indistinguishable from humans. The solution, therefore, is not to listen to what they say but watch what they do.</p>

<p>One tool I stumbled upon pretty early was using <code>fail2ban</code>. The traditional way of using it is to have it check a log file such as the <code>sshd</code> log for failed login attempts. If an IP address was causing too many failed login attempts, they would get banned for 10 minutes. A nice trick is that you could also have it check its own log files and if an IP address was getting banned multiple times, then they would get banned for 1 week.</p>

<p>I started applying this to the web server log files. I figured a human clicking a bunch of links might show a burst of activity, so I defined a rate limit of 30 hits in 60 seconds. That is: the average rate must not exceed one hit every 2 seconds but activity bursts of up to 30 hits are OK. I also exclude a lot of URLs matching images and other resources.</p>

<p>The main limitation is that this rule is limited to single IP addresses. And as you saw in Drew DeVault&rsquo;s blog post, AI scrapers have been working around this by using services that distribute requests over whole networks. The solution, therefore, is to defend against entire organisations.</p>

<p>Multiple times per hour, I have jobs scheduled that go through the last two hours of the web server access log, extracting all the IP addresses and determining their autonomous system number (ASN). That number identifies whole internet service providers (ISP) or similar companies.</p>

<p>I know, using autonomous systems makes this a very broad ban hammer. It catches innocent people that use an ISP that hires out computing power and bandwidth to AI scrapers. But I don&rsquo;t know any other way to fight back bots &ldquo;using random User-Agents that overlap with end-users and come from tens of thousands of IP addresses&rdquo;. So this is what it is. On the positive side, the bans are temporary. They expire after a while. If the AI scrapers are done ingesting the world-wide web, the ban is over. If they&rsquo;re still at it, the ban is reinstated.</p>

<p>The first job bans &ldquo;active&rdquo; autonomous systems:</p>

<ul>
<li>If load exceeds 10, the number of hits in a 2 hour period may not exceed 300 per ASN.</li>
<li>If load exceeds 5, the number of hits in a 2 hour period may not exceed 400 per ASN.</li>
<li>Under regular load, the number of hits in a 2 hour period may not exceed 500 per ASN.</li>
</ul>

<p>This includes everything showing up in the web server access log including hits for embedded things such as CSS files and images.</p>

<p>The second job bans autonomous systems hitting expensive end-points:</p>

<ul>
<li>If load exceeds 10, the number of expensive hits in a 2 hour period may not exceed 10 per ASN.</li>
<li>If load exceeds 5, the number of expensive hits in a 2 hour period may not exceed 20 per ASN.</li>
<li>Under regular load, the number of expensive hits in a 2 hour period may not exceed 30 per ASN.</li>
</ul>

<p>Expensive end-points are filtered RSS feed, Recent Changes and full-text searches.</p>

<p>The third job bans autonomous systems hosting bots:</p>

<ul>
<li>If load exceeds 10, the number of bot hits in a 2 hour period may not exceed 10 per ASN.</li>
<li>If load exceeds 5, the number of bot hits in a 2 hour period may not exceed 20 per ASN.</li>
<li>Under regular load, the number of bot hits in a 2 hour period may not exceed 30 per ASN.</li>
</ul>

<p>A bot hit is counted when the web server returned a HTTP status 410 as mentioned above. In other words, these are all the user agents containing the words &ldquo;bot&rdquo;, &ldquo;crawler&rdquo;, &ldquo;spider&rdquo;, &ldquo;ggpht&rdquo; or &ldquo;gpt&rdquo;.</p>

<p>The bans from the three jobs mentioned just now last for 1 hour.</p>

<p>If such a ban was made more than 5 times in a day, the ban is extended to 1 week.</p>

<p>Banning an ASN means that all the networks it manages are banned.</p>

<p>If the system works, the AI scraper stampede starts, load starts to climb up to 10, everything slows down to a crawl, the number of threads goes up from 350 to 450, the number of TCP connection goes up from 150 to 550, the number of wiki processes goes up from 1 or 2 to 20, and after a few minutes my jobs kick in and start banning IP addresses left and right <a href="2025-07-18-my-hope">until things have calmed down</a>.</p>

<p>I&rsquo;m still learning. The programmers working on AI scrapers are still learning. The arms race isn&rsquo;t over until their funding dries up. Until we all decided that the costs of AI aren&rsquo;t worth it. So this post is just a snapshot. I&rsquo;ll continue tweaking the setup.</p>

<p>I&rsquo;m sorry if this ban hammer is hitting you. It&rsquo;s still better than taking my sites offline. I&rsquo;ve had to do that in the past because I did not know what else to do.</p>

<p>The easy solution is to switch networks. You might still be able to access the site from a mobile phone using mobile data, for example. (Using a phone in a wifi network won&rsquo;t work.)</p>

<p>A harder solution is to use a VPN or to switch ISP.</p>

<p>An alternative for those of you with a static IP address within a network that is often banned is to <a href="Contact">contact me</a> and I can add your specific IP address to an allow-list. Use <a href="https://ip.small-web.org/">Your IP address</a> if you don&rsquo;t know your IP number. In that case, however, I suspect that it is not static.</p>

<p>I can&rsquo;t wait for the next AI winter. 🥶</p>

<p><a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p>

<p><strong>2025-07-24</strong>. Sadly, the new setup is starting to hurt a lot of innocent people. I&rsquo;ve been getting a handful of emails, but there&rsquo;s also talk on Reddit.</p>

<ul>
<li><a href="https://old.reddit.com/r/emacs/comments/1m2lzkr/emacswiki_down/n48kj8z/">Emacs Wiki</a></li>
<li><a href="https://old.reddit.com/r/osr/comments/1m5i2np/what_happened_to_campaignwikiorg/">Campaign Wiki</a></li>
</ul>

<p>😥</p> 

<br> 

<https://alexschroeder.ch/view/2025-07-19-automated-defence-setup>

---

##  They&#8217;re Made Out of Meat, a classic sci-fi short story by Terry... 

date: 2025-07-24, updated: 2025-07-24, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047205-theyre-made-out-of-meat>

---

## July 23, 2025

date: 2025-07-24, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/169145394/16916e95d8259b6872dfc64a886faf78.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/169145394/16916e95d8259b6872dfc64a886faf78.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/july-23-2025-a33>

---

## Meta: Slow Blogging Ahead

date: 2025-07-24, from: David Rosenthal's blog

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right; margin-left: 1em; text-align: right;"><tbody><tr><td style="text-align: center;"><a href="https://upload.wikimedia.org/wikipedia/commons/5/54/Titivillus.jpg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="1042" data-original-width="945" height="200" src="https://upload.wikimedia.org/wikipedia/commons/5/54/Titivillus.jpg" width="181" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://en.wikipedia.org/wiki/Scribe#/media/File:Titivillus.jpg">Source</a></td></tr></tbody></table>
There will be fewer than usual posts to this blog for a while. I have to write another talk for an intimidating audience, similar to the audience for my 2021 <a href="https://blog.dshr.org/2021/12/talk-at-ttivanguard-conference.html"><i>Talk at TTI/Vanguard Conference</i></a>. That one took a lot of work but a few months later it became my <a href="https://blog.dshr.org/2022/02/ee380-talk.html"><i>EE380 Talk</i></a>. That in turn became by far my most-read post, having so far gained 522K views. The EE380 talk eventually led to the invitation for the upcoming talk. Thus I am motivated to focus on writing this talk for the next few weeks.<br />
<br />
Wikipedia's <a href="https://en.wikipedia.org/wiki/Scribe#/media/File:Titivillus.jpg">description of the image</a> is:<br />
<blockquote>
  <a href="https://en.wikipedia.org/wiki/Titivillus">Titivillus</a>, a <a href="https://en.wikipedia.org/wiki/Demon">demon</a> said to introduce errors into the work of scribes, besets a scribe at his desk (14th century illustration)
</blockquote> 

<br> 

<https://blog.dshr.org/2025/07/meta-slow-blogging-ahead.html>

---

**@Dave Winer's Scripting News** (date: 2025-07-24, from: Dave Winer's Scripting News)

BTW, this <a href="https://www.cnn.com/2025/07/24/politics/trump-powell-federal-reserve-visit-renovation">business</a> with Trump and the Fed is almost exactly what I <a href="http://scripting.com/2025/04/17.html#a164921">wanted</a> Obama to do with Garland when McConnell refused to hold hearings. Walk him over to the Supreme Court, unlock his office, swear him in and get back to work. Sometimes you just do it. The Dems weren't pragmatic that way. 

<br> 

<http://scripting.com/2025/07/24.html#a142158>

---

##  Glacier funerals have been held in countries like Iceland, the US, and... 

date: 2025-07-24, updated: 2025-07-24, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047210-glacier-funerals-have-bee>

---

##  The Kottke.org Rolodex 

date: 2025-07-24, updated: 2025-07-24, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/the-kottkeorg-rolodex>

---

**@Dave Winer's Scripting News** (date: 2025-07-24, from: Dave Winer's Scripting News)

When trying to "work" with ChatGPT, realize that it's mistakes could be much worse than you could possibly imagine. It could be leading you down a blind alley. You must always consider how full of shit it is. It may not just be making things up, but it could not understand something very basic about what you're doing. There's no limit to the ways it can be wrong. And you can waste whole programming sessions chasing a solution where none could possibly every under any circumstances be found. The level of bullshit is sometimes hard to fathom. 

<br> 

<http://scripting.com/2025/07/24.html#a125149>

---

**@Dave Winer's Scripting News** (date: 2025-07-24, from: Dave Winer's Scripting News)

You can <a href="https://imgs.scripting.com/2025/07/24/postscreenshot.png">see</a> from <a href="https://bsky.app/profile/scripting.com/post/3luph4rdgrw23">this Bluesky post</a> that I do copy-edit my linkblog items, but not enough. The web isn't a write-only medium, so to say that Bluesky is part of the web, well in this way it isn't. 

<br> 

<http://scripting.com/2025/07/24.html#a115719>

---

**@Dave Winer's Scripting News** (date: 2025-07-24, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/08/29/hope.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="https://mastodon.social/@scripting@daveverse.org/114907962089898612">Question</a>: I have a site with a well developed set of categories, I've added to it carefully over a few months, it covers most of the topics I write about. Another site has a small set of categories. I write all my WordPress posts in the same editor, and could easily set it up so that all categories were available to me in every site I post to. The question: Is that a good practice in the world of WordPress? I noticed that categories are given global ID's so if I use a category like "movies" it will have the same ID as yours has on your sites. I love this idea of a global namespace for categories, and see it as something that could be adopted by sites written in any other writing environment. Anyway, if you have a moment to comment, I'd appreciate your ideas. Update: Jeremy Herve, a WordPress developer <a href="https://mastodon.social/@jeremy@herve.bzh/114910020439748559">explains</a>. 

<br> 

<http://scripting.com/2025/07/24.html#a111750>

---

## How Solid Protocol Restores Digital Agency

date: 2025-07-24, updated: 2025-07-23, from: Bruce Schneier blog

<p>The current state of digital identity is a mess. Your personal information is scattered across hundreds of locations: social media companies, IoT companies, government agencies, websites you have accounts on, and data brokers you&#8217;ve never heard of. These entities collect, store, and trade your data, often without your knowledge or consent. It&#8217;s both redundant and inconsistent. You have hundreds, maybe thousands, of fragmented digital profiles that often contain contradictory or logically impossible information. Each serves its own purpose, yet there is no central override and control to serve you&#8212;as the identity owner...</p> 

<br> 

<https://www.schneier.com/blog/archives/2025/07/how-solid-protocol-restores-digital-agency.html>

---

## 50 years ago, Gates and Allen made the deal that launched Microsoft

date: 2025-07-24, updated: 2025-07-24, from: Liam Proven's articles at the Register

<h4>How the MITS Altair 8800, a $264 RAM board, and some BASIC changed the world</h4>
      <p>This week marked the 50th anniversary of the birth of several empires. On July 22, 1975, Bill Gates and Paul Allen signed a deal with Micro Instrumentation and Telemetry Systems.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/24/50y_of_gates_allen_mits_basic/>

---

## What did he know, and when did he know it?

date: 2025-07-24, from: Robert Reich's blog

From Watergate to Epsteingate 

<br> 

<https://robertreich.substack.com/p/what-did-he-know-and-when-did-he>

---

## July 23, 2025

date: 2025-07-24, from: Heather Cox Richardson blog

This morning, President Donald J. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-23-2025>

---

##  In her last column for WaPo, columnist Catherine Rampell shares some advice... 

date: 2025-07-23, updated: 2025-07-23, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047215-in-her-last-column-for>

---

##  A lovely trailer for a documentary called The Nettle Dress. &#8220;Allan Brown... 

date: 2025-07-23, updated: 2025-07-23, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047207-a-lovely-trailer-for-a>

---

**@Dave Winer's Scripting News** (date: 2025-07-23, from: Dave Winer's Scripting News)

Here's a benchmark. I just asked ChatGPT for <a href="https://daveverse.org/2025/07/23/250-words-on-climate-change/">250 words on climate change</a>. Let's check that out in a year and two years and see if they're still telling the truth. 

<br> 

<http://scripting.com/2025/07/23.html#a212449>

---

**@Dave Winer's Scripting News** (date: 2025-07-23, from: Dave Winer's Scripting News)

If you could look into people's minds and see if, at their core, they feel <a href="https://en.wikipedia.org/wiki/It_Can%27t_Happen_Here">it can't happen here</a>, most of us would have that belief. We'll probably still believe it when the last of our freedoms is gone. 

<br> 

<http://scripting.com/2025/07/23.html#a211935>

---

##  After Paramount cancelled the Late Show with Stephen Colbert after he criticized... 

date: 2025-07-23, updated: 2025-07-23, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047211-after-paramount-cancelled>

---

## Yours Truly With David Barnard on the Sub Club Podcast

date: 2025-07-23, updated: 2025-07-23, from: Daring Fireball

 

<br> 

<https://subclub.com/episode/the-past-present-and-future-of-building-on-apple-john-gruber-daring-fireball>

---

**@Dave Winer's Scripting News** (date: 2025-07-23, from: Dave Winer's Scripting News)

Trump <a href="https://techcrunch.com/2025/07/23/trumps-ai-strategy-trades-guardrails-for-growth-in-race-against-china/">says</a> he's going to give AI companies freedom except with DEI and climate change, guessing they have to follow Trump dogma? Hard to tell from the language. I assume so. Just like CBS when the Ellisons own it. Our communications systems are pretty much owned by the government as they are in China. Or very close to that. 

<br> 

<http://scripting.com/2025/07/23.html#a210713>

---

**@Dave Winer's Scripting News** (date: 2025-07-23, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2025/07/23/dorothy.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="https://bsky.app/profile/scripting.com/post/3lunvycl37c2b">Question</a>. If you have to choose between Google's web browser or one from your favorite AI company, which would you go with? Also yes -- Google is <a href="https://www.404media.co/googles-ai-is-destroying-search-the-internet-and-your-brain/">destroying</a> the web, as is ChatGPT and Claude etc. Because the people who tried to capture flow using SEO made you wade through mountains of garbage before you got the info you were coming there for, if you ever got it. It's the same thing with clicking links in Twitter. If instead, they had focus on providing a product that made people happy and built respect for theri brand, they'd still have a seat at the table. It's too late to complain, you had a chance to view your efforts as a business. But there's still plenty of potential for the web, esp if developers get imaginative in how to use the new browser platforms. I don't imagine Google's going to rock and roll too much with Chrome, but maybe they will. 

<br> 

<http://scripting.com/2025/07/23.html#a205942>

---

##  Wilmer Chavarria, a US citizen from VT, was detained for many hours... 

date: 2025-07-23, updated: 2025-07-23, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047208-wilmer-chavarria-a-us-cit>

---

##  Killing in the Name of a Terrible Holy Lie 

date: 2025-07-23, updated: 2025-07-23, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/killing-in-the-name-of-a-terrible-holy-lie>

---

## 2025-07-22 I cannot ignore politics

date: 2025-07-23, from: Alex Schroeder's Blog

<h1 id="2025-07-22-i-cannot-ignore-politics">2025-07-22 I cannot ignore politics</h1>

<p>When I read something like <a href="http://grognardia.blogspot.com/2025/07/kumbaya.html">Kumbaya</a> where James says that &ldquo;not every game choice is a political act&rdquo; and how he misses that he and his friends back when they were kids just talked about games and how these days it feels more like &ldquo;excommunication&rdquo;, I wonder. I was happy to read Gern Blanston&rsquo;s comment where they suspect that things weren&rsquo;t political back then because we were kids and didn&rsquo;t know. It&rsquo;s definitely true for me. And now that I&rsquo;m am adult, I can&rsquo;t look away.</p>

<p>I can&rsquo;t ignore politics because I feel that politics is about being part of society. Politics is about how society is organized. How one wants society organized is a moral choice. Needless to say, I only want to spend time with people that don&rsquo;t do or support morally reprehensible things. Not everybody feels that revulsion, but I do. And maybe it&rsquo;s not always easy to be good people, to know what&rsquo;s right and what&rsquo;s wrong, but I believe that we should strive for it – and that means looking at the moral choices made all around us, at the politics here and now. And that also means that political choice has consequences.</p>

<p>Furthermore, we&rsquo;re blessed with alternatives. We don&rsquo;t have to play Barker&rsquo;s Tékumel since there are so many other good games and settings out there. I can separate the work and the artist but I don&rsquo;t have to. I do not feel that art is a goal in itself. Instead, I feel that art is an expression of a human, and usually that means that there is a political layer somewhere. Sometimes the politics contained within might be big and in your face and sometimes it might be small and easy to ignore. But I still think that political choice has consequences.</p>

<p>And if the word &ldquo;politics&rdquo; gets your hackles up, think of something else, like animal abuse. I don&rsquo;t want to buy books by somebody who mistreats their cat, who speaks out in favour cat mistreatments, who financially supports cat mistreatments, I don&rsquo;t want to play their games and I don&rsquo;t understand the people who support them.</p>

<p><a class="tag" href="/search/?q=%23RPG">#RPG</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-07-22-politics>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-07-23, from: Miguel de Icaza Mastondon feed)

<p>Results of our “you are holding it wrong” game jam:</p><p><a href="https://blog.la-terminal.net/winners-of-the-first-xogot-jam/" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">blog.la-terminal.net/winners-o</span><span class="invisible">f-the-first-xogot-jam/</span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114903730267647465>

---

##  Trump Action Tracker. &#8220;Each action is mapped to one or more of... 

date: 2025-07-23, updated: 2025-07-23, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047201-trump-action-tracker-each>

---

## July 22, 2025

date: 2025-07-23, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/169062923/4d9e50d111502dee6ab4dbb609643852.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/169062923/4d9e50d111502dee6ab4dbb609643852.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/july-22-2025-a50>

---

##  Insane Fictional Traffic Patterns 

date: 2025-07-23, updated: 2025-07-23, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/insane-fictional-traffic-patterns>

---

##  Author Kate Broad writes about the role of indie bookstores in a... 

date: 2025-07-23, updated: 2025-07-23, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047200-author-kate-broad-writes->

---

## EU-STF for funding critical Open Source

date: 2025-07-23, from: Daniel Stenberg Blog

Current digital infrastructure is to a large degree built on layers and layers of Open Source. Open Source is to a large degree built and maintained by enthusiasts or other financially and resource restrained teams. It should be in our mutual interest to make sure that well-used Open Source projects not only survive, but also &#8230; <a href="https://daniel.haxx.se/blog/2025/07/23/eu-stf-for-funding-critical-open-source/" class="more-link">Continue reading <span class="screen-reader-text">EU-STF for funding critical Open Source</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/07/23/eu-stf-for-funding-critical-open-source/>

---

##  I Watched It Happen in Hungary. Now It&#8217;s Happening Here. &#8220;I came... 

date: 2025-07-23, updated: 2025-07-23, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047199-i-watched-it-happen-in>

---

## Firefox 141 relieves chronic Linux pain in the neck

date: 2025-07-23, updated: 2025-07-23, from: Liam Proven's articles at the Register

<h4>But there are tweaks for everyone – even if some are less welcome than others</h4>
      <p>Mozilla has delivered the latest version of its web browser, alleviating a long-standing irritation for Linux users… but making its &#34;AI&#34; integration even more pervasive.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/23/firefox_141_relieves_linux_pain/>

---

## Google Sues the Badbox Botnet Operators

date: 2025-07-23, updated: 2025-07-22, from: Bruce Schneier blog

<p>It will be interesting to watch what will come of this <a href="https://www.securityweek.com/google-sues-operators-of-10-million-device-badbox-2-0-botnet/">private lawsuit</a>:</p>
<blockquote><p>Google on Thursday announced filing a lawsuit against the operators of the Badbox 2.0 botnet, which has ensnared more than 10 million devices running Android open source software.</p>
<p>These devices lack Google&#8217;s security protections, and the perpetrators pre-installed the Badbox 2.0 malware on them, to create a backdoor and abuse them for large-scale fraud and other illicit schemes.</p></blockquote>
<p>This reminds me of Meta&#8217;s lawauit against Pegasus over its hack-for-hire software (which I wrote about ...</p> 

<br> 

<https://www.schneier.com/blog/archives/2025/07/google-sues-the-badbox-botnet-operators.html>

---

## Office Hours: Other Than Trump, Who’s Most Responsible for the Horrors Emerging from Trump’s White House? 

date: 2025-07-23, from: Robert Reich's blog

Who has the most influence on Trump? 

<br> 

<https://robertreich.substack.com/p/office-hours-other-than-trump-whos>

---

## July 22, 2025

date: 2025-07-23, from: Heather Cox Richardson blog

First thing this morning, Attorney General Pam Bondi posted on X a statement from Deputy Attorney General Todd Blanche saying that under Bondi&#8217;s direction, he had talked to the lawyers for Ghislaine Maxwell, who was convicted of grooming victims for convicted sex offender Jeffrey Epstein. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-22-2025>

---

## How about  ASO, for Attention Surfeit  Order?

date: 2025-07-23, from: Doc Searls (at Harvard), New Old Blog

Royal Society: Attention deficits linked with proclivity to explore while foraging. To which Thom Hartman adds, The Science Catches Up: New Research Confirms ADHD as an Evolutionary Advantage, Not a Disease. Which I&#8217;ve always believed.  But that didn&#8217;t make me normal. Far from it. In my forties and at my wife’s urging (because my ability to listen well and [&#8230;] 

<br> 

<https://doc.searls.com/2025/07/22/how-about-aso-for-attention-surfeit-order/>

---

## Wednesday 23 July, 2025

date: 2025-07-22, from: John Naughton's online diary

Letting sleeping dog lie Arles, 2012. Quote of the Day ”If you don’t have anything nice to say, come sit by me.” Dorothy Parker Musical alternative to the morning’s radio news Fleetwood Mac &#124; Never Going Back Link Long Read &#8230; <a href="https://memex.naughtons.org/wednesday-23-july-2025/41044/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/wednesday-23-july-2025/41044/>

---

##  &#8220;We&#8217;re in a golden age of comedy now where everyone can say... 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047198-were-in-a-golden-age>

---

##  Health Insurers Are Hiking Premiums as Their Profits Balloon. &#8220;The US&#8217;s six... 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047196-health-insurers-are-hikin>

---

##  Ozzy Osborne died today at the age of 76. His farewell concert... 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047197-ozzy-osborne-died-today-a>

---

## O Journos!

date: 2025-07-22, from: Dave Winer's Scripting News

<p>I hate it when journos say the Dems are in trouble, or hopeless or whatever, it shows how poisoned their point of view is. </p>
<p>When people are fed up with Trump, if that should happen, then whatever the Democratic Party is meant to become it will become exactly that at that moment. </p>
<p>The voters are where your attention should be, and think of them as people not as numbers. </p>
<p>That's my best advice for a Tuesday. </p>
 

<br> 

<http://scripting.com/2025/07/22/212739.html?title=oJournos>

---

## The three ways Trump is shafting his base

date: 2025-07-22, from: Robert Reich's blog

It&#8217;s the economy, stupid 

<br> 

<https://robertreich.substack.com/p/the-three-ways-trump-is-shafting>

---

##  A Behind the Scenes Look at NPR&#8217;s Tiny Desk Concerts 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/a-behind-the-scenes-look-at-nprs-tiny-desk-concerts>

---

**@Dave Winer's Scripting News** (date: 2025-07-22, from: Dave Winer's Scripting News)

I think I figured out why the AI companies want to do web browsers. It’s so that they can create an application development platform for people who want to write apps that run inside a new environment where the OS is a LLM. Lots of interesting possibilities. Imagine how the OS API might work. You could restructure a database by explaining in English how you want it restructured. In the freaking code. Could we bury Algol-like languages the same way we buried assembly and machine languages? Do we have the courage to imagine such things? 

<br> 

<http://scripting.com/2025/07/22.html#a202618>

---

##  Teaser trailer for Pixar&#8217;s next film, Hoppers. &#8220;We put this 🧠 into... 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047195-teaser-trailer-for-pixars>

---

##  Coming Soon: Your Professional Decline 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/your-professional-decline>

---

##  Since 2004, new editions of the Choose Your Own Adventure books have... 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047192-since-2004-new-editions-o>

---

## Arch Linux users told to purge Firefox forks after AUR malware scare

date: 2025-07-22, updated: 2025-07-22, from: Liam Proven's articles at the Register

<h4>The distro&#39;s greatest asset is arguably also its greatest weakness</h4>
      <p>If you installed the Firefox, LibreWolf, or Zen web browsers from the Arch User Repository (AUR) in the last few days, delete them immediately and install fresh copies.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/22/arch_aur_browsers_compromised/>

---

## The Financial Times Reports the UK Is Backing Down From Its Demand for Apple to Grant It an iCloud Encryption Backdoor

date: 2025-07-22, updated: 2025-07-22, from: Daring Fireball

 

<br> 

<https://arstechnica.com/tech-policy/2025/07/uk-backing-down-on-apple-encryption-backdoor-after-pressure-from-us/>

---

## OS 26 Beta 4’s Are Out

date: 2025-07-22, updated: 2025-07-23, from: Daring Fireball

 

<br> 

<https://www.macrumors.com/2025/07/22/apple-seeds-ios-26-beta-4/>

---

##  Some madman/genius put cut, copy, and paste into Doom.... 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047189-some-madmangenius-put-cut>

---

## Open Sauce is a confoundingly brilliant Bay Area event

date: 2025-07-22, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Open Sauce is a confoundingly brilliant Bay Area event</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p><img src="https://www.jeffgeerling.com/sites/default/files/images/open-sauce-2025-joe-jeff-geerling.jpg" width="700" height="467" class="insert-image" data-insert-type="image" data-entity-type="file" data-entity-uuid="insert-image-97a83472-1610-4224-8e17-1c748dddb50f" data-insert-attach="{&quot;id&quot;:&quot;97a83472-1610-4224-8e17-1c748dddb50f&quot;,&quot;attributes&quot;:{&quot;alt&quot;:[&quot;alt&quot;,&quot;description&quot;],&quot;title&quot;:[&quot;title&quot;]}}" alt="Joe and Jeff Geerling at Open Sauce 2025"></p>

<p>This is the second year I brought my Dad (a now-retired radio engineer and co-host of <a href="https://www.youtube.com/c/GeerlingEngineering">Geerling Engineering</a>) to <a href="https://opensauce.com">Open Sauce</a>, a Bay Area maker faire-like event, dreamed up by <a href="https://en.wikipedia.org/wiki/William_Osman">William Osman</a> and featuring hundreds of exhibits ranging from mad science, to vintage electronics, to games, to <a href="https://engineering.purdue.edu/ECE/News/2025/purdue-ece-students-shatter-guinness-world-record-for-fastest-puzzle-cube-solving-robot">world-record-breaking Rubik's Cube solvers</a>:</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2025-07-22T11:12:03-05:00" title="Tuesday, July 22, 2025 - 11:12" class="datetime">July 22, 2025</time>
</span> 

<br> 

<https://www.jeffgeerling.com/blog/2025/open-sauce-confoundingly-brilliant-bay-area-event>

---

## The Computer History Museum’s Vintage Computer Festival: August 1–2

date: 2025-07-22, updated: 2025-07-22, from: Daring Fireball

 

<br> 

<https://computerhistory.org/events/vintage-computer-festival-3/>

---

##  Rival Consoles — Soft Gradient Beckons 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/rival-consoles-soft-gradient-beckons>

---

## Hackers Exploit Zero-Day Microsoft SharePoint Exploit, Attacking Governments and Businesses Around the World

date: 2025-07-22, updated: 2025-07-22, from: Daring Fireball

 

<br> 

<https://www.washingtonpost.com/technology/2025/07/20/microsoft-sharepoint-hack/>

---

## Reuters: ‘Meta, X, and LinkedIn Appeal Unprecedented VAT Claim by Italy’

date: 2025-07-22, updated: 2025-07-22, from: Daring Fireball

 

<br> 

<https://www.reuters.com/world/europe/meta-x-linkedin-appeal-unprecedented-vat-claim-by-italy-2025-07-21/>

---

##  Programmer Przemysław Dębiak recently defeated an advanced OpenAI model in a coding... 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047193-programmer-przemyslaw-deb>

---

**@Dave Winer's Scripting News** (date: 2025-07-22, from: Dave Winer's Scripting News)

"You're an important caller," the machine lied, as if it were human. 

<br> 

<http://scripting.com/2025/07/22.html#a152749>

---

## ‘Google Solves Its Pixel 10 Leaks by Just Showing Us the Phone’

date: 2025-07-22, updated: 2025-07-22, from: Daring Fireball

 

<br> 

<https://www.theverge.com/news/711033/google-pixel-10-design-tease-reveal>

---

## The Selling Of AI

date: 2025-07-22, from: David Rosenthal's blog

<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi2bzCD1pZzeV1RUSuRu_dazap6CzrXV4BsQSmv4h55_3D7OTLvHmA_3qSnQRgZs-t-gR6QzP92mAv1ydIREsSlc-hM37K5K5CTokMvO6r-NgKaliYdBkgxecAeZL0fgNNuuxeB4UNXFuOFVnp6nS_kachJ_Soki9I0eUcKAGzZEVtPQW6uMrVvL5Vhq3uR/s4096/TubePoem.jpeg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="2304" data-original-width="4096" height="113" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi2bzCD1pZzeV1RUSuRu_dazap6CzrXV4BsQSmv4h55_3D7OTLvHmA_3qSnQRgZs-t-gR6QzP92mAv1ydIREsSlc-hM37K5K5CTokMvO6r-NgKaliYdBkgxecAeZL0fgNNuuxeB4UNXFuOFVnp6nS_kachJ_Soki9I0eUcKAGzZEVtPQW6uMrVvL5Vhq3uR/w200-h113/TubePoem.jpeg" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://x.com/adsonthetube/status/574961972871036929">Not AI, just a favorite</a></td></tr></tbody></table>
On my recent visit to London I was struck by how many of the advertisements in the Tube were selling AI. They fell into two groups, one aimed at CEOs and the other at marketing people. This is typical, the pitch for AI is impedance-matched to these targets:<br />
<ul>
<li>The irresistible pitch to CEOs is that they can "do more with less", or in other words they can lay off all these troublesome employees without impacting their products and sales.</li>
<li>Marketing people value plausibility over correctness, which is precisely what LLMs are built to deliver. So the idea that a simple prompt will instantly generate reams of plausible collateral is similarly irresistible.</li>
</ul>
In <a href="https://blog.dshr.org/2025/06/the-back-of-ai-envelope.html"><i>The Back Of The AI Envelope</i></a> I explained:<br />
<blockquote>
why Sam Altman et al are so desperate to run the "drug-dealer's algorithm" (<i>the first one's free</i>) and get the world hooked on this drug so they can supply a world of addicts.
</blockquote>
You can see how this works for the two targets. Once a CEO has addicted his company to AI by laying off most of the staff, there is no way he is going to go cold turkey by hiring them back even if the AI fails to meet his expectations. And once he has laid off most of the marketing department, the remaining marketeer must still generate the reams of collateral even if it lacks a certain something.<br />
<br />
Below the fold I look into this example of the process Cory Doctrow called <a href="https://en.wikipedia.org/wiki/Enshittification">enshittification</a>.<br />
<span><a name='more'></a></span>
<br />
The first thing to note is that the pitch is working. The discourse is full of CEOs talking their book. For example we have Matt Novak's <a href="https://gizmodo.com/billionaires-convince-themselves-ai-is-close-to-making-new-scientific-discoveries-2000629060"><i>Billionaires Convince Themselves AI Chatbots Are Close to Making New Scientific Discoveries</i></a> recounting the wisdom of Travis Kalnick:<br />
<blockquote>
“I’ll go down this thread with [Chat]GPT or Grok and I’ll start to get to the edge of what’s known in quantum physics and then I’m doing the equivalent of vibe coding, except it’s vibe physics,” Kalanick <a href="https://youtu.be/Z0k-4wyH5vk">explained</a>. “And we’re approaching what’s known. And I’m trying to poke and see if there’s breakthroughs to be had. And I’ve gotten pretty damn close to some interesting breakthroughs just doing that.”
</blockquote>
Then there are the programmers extolling "vibe coding" and how it increases their productivity. CEOs who buy this pitch are laying off staff left and right. For example, Jordan Novote reports that <a href="https://www.cnbc.com/2025/07/02/microsoft-laying-off-about-9000-employees-in-latest-round-of-cuts.html"><i>Microsoft laying off about 9,000 employees in latest round of cuts</i></a>:<br />
<blockquote>
Microsoft said Wednesday that it will lay off about 9,000 employees. The move will affect less than 4% of its global workforce across different teams, geographies and levels of experience, a person familiar with the matter told CNBC.<br />
...<br />
Microsoft has held several rounds of layoffs already this calendar year. In January, it cut less than 1% of headcount based on performance. The 50-year-old software company slashed more than 6,000 jobs in May and then at least 300 more in June.
</blockquote>
How well is this likely to work out? Evidence is accumulating that AI's capabilities are over-hyped.  Thomas Claiburn's <a href="https://www.theregister.com/2025/07/03/ai_models_potemkin_understanding/"><i>AI models just don't understand what they're talking about</i></a> is an example:<br />
<blockquote>
Asked to explain the ABAB rhyming scheme, OpenAI's GPT-4o did so accurately, responding, "An ABAB scheme alternates rhymes: first and third lines rhyme, second and fourth rhyme."<br />
<br />
Yet when asked to provide a blank word in a four-line poem using the ABAB rhyming scheme, the model responded with a word that didn't rhyme appropriately. In other words, the model correctly predicted the tokens to explain the ABAB rhyme scheme without the understanding it would have needed to reproduce it.<br />
<br />
The problem with potemkins in AI models is that they invalidate benchmarks, the researchers argue. The purpose of benchmark tests for AI models is to suggest broader competence. But if the test only measures test performance and not the capacity to apply model training beyond the test scenario, it doesn't have much value.
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjI3jRVYLAE1CmpqQY3ndgz14dM_EargKAjdQ_m9jT7kHRZ61yAeDP4AY5nXQtx2SSFnkQbJdO7SkyEEHRrPfQ9USafuJaEObCLWhmPgv1AoCUJArsLiTpzRAJDOogAML8wa3axFGuD5RPHEfZKNXNeYSd7zUY5IpE2vsQ4561S7TU0MydpuUdsYmYDJrkt/s2562/forecasted-vs-observed.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="1540" data-original-width="2562" height="120" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjI3jRVYLAE1CmpqQY3ndgz14dM_EargKAjdQ_m9jT7kHRZ61yAeDP4AY5nXQtx2SSFnkQbJdO7SkyEEHRrPfQ9USafuJaEObCLWhmPgv1AoCUJArsLiTpzRAJDOogAML8wa3axFGuD5RPHEfZKNXNeYSd7zUY5IpE2vsQ4561S7TU0MydpuUdsYmYDJrkt/w200-h120/forecasted-vs-observed.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/">Source</a></td></tr></tbody></table>
As far as I know the only proper random controlled trial of AI's productivity increase comes from Model Evaluation and Threat Research entitled <a href="https://arxiv.org/abs/2507.09089"><i>Measuring the Impact of Early-2025 AI on Experienced Open-Source Developer Productivity</i></a>:<br />
<blockquote>
16 developers with moderate AI experience complete 246 tasks in mature projects on which they have an average of 5 years of prior experience. Each task is randomly assigned to allow or disallow usage of early 2025 AI tools. When AI tools are allowed, developers primarily use Cursor Pro, a popular code editor, and Claude 3.5/3.7 Sonnet. Before starting tasks, developers forecast that allowing AI will reduce completion time by 24%. After completing the study, developers estimate that allowing AI reduced completion time by 20%. Surprisingly, we find that allowing AI actually increases completion time by 19%--AI tooling slowed developers down.
</blockquote>
David Gerard <a href="https://pivot-to-ai.com/2025/07/11/ai-coders-think-theyre-20-faster-but-theyre-actually-19-slower/">notes</a>:<br />
<blockquote>
Even the devs who liked the AI found it was bad at large and complex code bases like these ones, and over half the AI suggestions were not usable. Even the suggestions they accepted needed a lot of fixing up.
</blockquote>
This might be why Ashley Stewart reported that <a href="https://www.businessinsider.com/microsoft-internal-memo-using-ai-no-longer-optional-github-copilot-2025-6"><i>Microsoft pushes staff to use internal AI tools more, and may consider this in reviews. 'Using AI is no longer optional.'</i></a>:<br />
<blockquote>
Julia Liuson, president of the Microsoft division responsible for developer tools such as AI coding service GitHub Copilot, recently sent an email instructing managers to evaluate employee performance based on their use of internal AI tools like this.<br />
<br />
"AI is now a fundamental part of how we work," Liuson wrote. "Just like collaboration, data-driven thinking, and effective communication, using AI is no longer optional — it's core to every role and every level."<br />
<br />
Liuson told managers that AI "should be part of your holistic reflections on an individual's performance and impact."
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhjhCJQ5POMVzh4GFpaP_XYM-5OJEczbb8IlUUQbowOet88NC4OnJewuAsEU__qwQbZqIlb0196rFOgQQ9rOXLlgpC_eJ-ZzfnyH0nT7pwbpwUkgBF9mmTawCa1Zj0SJLPSXlVstOvOI_-T2bzB7azJHx24N2OAiw6szvu9VoRDpeVhd_Hz4Gm2ZFbDrvq3/s1026/FreeVsPaid.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="1026" data-original-width="788" height="200" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhjhCJQ5POMVzh4GFpaP_XYM-5OJEczbb8IlUUQbowOet88NC4OnJewuAsEU__qwQbZqIlb0196rFOgQQ9rOXLlgpC_eJ-ZzfnyH0nT7pwbpwUkgBF9mmTawCa1Zj0SJLPSXlVstOvOI_-T2bzB7azJHx24N2OAiw6szvu9VoRDpeVhd_Hz4Gm2ZFbDrvq3/w154-h200/FreeVsPaid.png" width="154" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://menlovc.com/perspective/2025-the-state-of-consumer-ai/">Source</a></td></tr></tbody></table>
If the tools were that good, people would use them without being threatened.  If the tools were that good, people would pay for them. But <a href="https://menlovc.com/perspective/2025-the-state-of-consumer-ai/">Menlo Ventures</a> found that only 3% of consumers pay anything. They are happy to use free toys but they have other spending priorities. <a href="https://www.zdnet.com/article/only-8-of-americans-would-pay-extra-for-ai-according-to-zdnet-aberdeen-research/">Other surveys</a> have found numbers up to 8%, but as Ted Gioia notes in <a href="https://www.honest-broker.com/p/the-force-feeding-of-ai-on-an-unwilling"><i>The Force-Feeding of AI on an Unwilling Public</i></a>:<br />
<blockquote>
Has there ever been a major innovation that helped society, but only 8% of the public would pay for it?
</blockquote>
Gioia didn't want AI but as an Office 365 user <a href="https://www.honest-broker.com/p/the-force-feeding-of-ai-on-an-unwilling">he didn't have that option</a>:<br />
<blockquote>
AI is now bundled into <i>all</i> of my Microsoft software.<br />
<br />
Even worse, Microsoft recently <a href="https://www.pcmag.com/news/copilot-ai-added-to-microsoft-365-apps-alongside-3-per-month-price-hike">raised the price of its subscriptions by $3 per month</a> to cover the additional AI benefits. I get to use my AI companion 60 times per month as part of the deal.
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhBfj4gxSC_H1tRBIpbry7T0En8cEBHYFSCnRwZZuSWXHdprujKIchBe7qRJvDf_2SOPq8ysf75zKLDNpS6-vhdBOx7KxSmOmtija-M9DJ0aD_bIt8DKwhUCHHZaakGfDzWYcd_6GfmKYWCbhubt93JfJEYq0gRumoq951hoZvkUT7JGqRbtv35p9CwxOkx/s1920/Engagement.jpg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="1233" data-original-width="1920" height="129" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhBfj4gxSC_H1tRBIpbry7T0En8cEBHYFSCnRwZZuSWXHdprujKIchBe7qRJvDf_2SOPq8ysf75zKLDNpS6-vhdBOx7KxSmOmtija-M9DJ0aD_bIt8DKwhUCHHZaakGfDzWYcd_6GfmKYWCbhubt93JfJEYq0gRumoq951hoZvkUT7JGqRbtv35p9CwxOkx/w200-h129/Engagement.jpg" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.honest-broker.com/p/the-force-feeding-of-ai-on-an-unwilling">Source</a></td></tr></tbody></table>
Microsoft didn't ask their customer whether they would pay for AI, because the answer would have been no. <a href="https://www.honest-broker.com/p/the-force-feeding-of-ai-on-an-unwilling">Gioia writes</a>:<br />
<blockquote>
This is how AI gets introduced to the marketplace—by force-feeding the public. And they’re doing this for a very good reason.<br />
<br />
Most people won’t pay for AI voluntarily—just 8% according to a recent survey. So they need to bundle it with some other essential product.
</blockquote>
As I discussed in <a href="https://blog.dshr.org/2025/06/the-back-of-ai-envelope.html"><i>The Back Of The AI Envelope</i></a>, the AI giants running the drug-dealer's algorithm are losing money on every prompt. <a href="https://www.honest-broker.com/p/the-force-feeding-of-ai-on-an-unwilling">Gioia has noticed this</a>:<br />
<blockquote>
There’s another reason why huge tech companies do this—but they don’t like to talk about it. If they bundle AI into other products and services, they can <i>hide the losses</i> on their income statement.<br />
<br />
That wouldn’t be possible if they charged for AI as a standalone product. That would make its profitability (or, more likely, loss) very easy to measure.<br />
<br />
Shareholders would complain. Stock prices would drop. Companies would be forced to address customer concerns.<br />
<br />
But if AI is bundled into existing businesses, Silicon Valley CEOs can pretend that AI is a moneymaker, even if the public is lukewarm or hostile.
</blockquote>
Salesforce is another company that has <a href="https://pivot-to-ai.com/2025/06/18/salesforce-ai-agents-dont-work-but-were-charging-6-more-for-ai-anyway/">spotted this opportunity</a>:<br />
<blockquote>
Yesterday Salesforce announced that prices on a pile of their services are going up around 6% — because AI is just that cool.<br />
<br />
Salesforce’s stated reason for the price rise is “the significant ongoing innovation and customer value delivered through our products.” But you know the actual reason is because f- you, that’s why. What are you gonna do, move to SAP? Yeah, didn’t think so.
</blockquote>
One problem is that the technology Salesforce is charging its customers for doesn't work well in Salesforce's application space. Salesforce's own researchers developed a <a href="https://arxiv.org/abs/2505.18878">new bechmark suite called CRMAArena-Pro</a>:<br />
<blockquote>
CRMArena-Pro expands on CRMArena with nineteen expert-validated tasks across sales, service, and 'configure, price, and quote' processes, for both Business-to-Business and Business-to-Customer scenarios. It distinctively incorporates multi-turn interactions guided by diverse personas and robust confidentiality awareness assessments. Experiments reveal leading LLM agents achieve only around 58% single-turn success on CRMArena-Pro, with performance dropping significantly to approximately 35% in multi-turn settings. While Workflow Execution proves more tractable for top agents (over 83% single-turn success), other evaluated business skills present greater challenges. Furthermore, agents exhibit near-zero inherent confidentiality awareness; though targeted prompting can improve this, it often compromises task performance. 
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSMT5L6ZsmWR571fecB_XWRBjZ-UcLzmhWC6UoMZ9f6SYsyDArKNbhO5ed1xrY3nQyljOi1JSyKZWEDJEUIq9F-cG-qReX9lk7cov1-p1CJWhooLNE2demdesAshEQSB5_kncwtpLO1FaSeJ8p8qbQSb2jSHjAmE_suYul_lq2IIbeEMdRe0uVW_8KmHWP/s1868/HuangEtAl-Table2.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="900" data-original-width="1868" height="96" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgSMT5L6ZsmWR571fecB_XWRBjZ-UcLzmhWC6UoMZ9f6SYsyDArKNbhO5ed1xrY3nQyljOi1JSyKZWEDJEUIq9F-cG-qReX9lk7cov1-p1CJWhooLNE2demdesAshEQSB5_kncwtpLO1FaSeJ8p8qbQSb2jSHjAmE_suYul_lq2IIbeEMdRe0uVW_8KmHWP/w200-h96/HuangEtAl-Table2.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://arxiv.org/pdf/2505.18878">Huang <i>et al</i> Table 2</a></td></tr></tbody></table>
To <a href="https://pivot-to-ai.com/2025/06/18/salesforce-ai-agents-dont-work-but-were-charging-6-more-for-ai-anyway/">summarize the results</a>:<br />
<blockquote>
The agent bots had 58% success on tasks that can be done in one single step. That dropped to 35% success if they had to take multiple steps. The chatbot agents are also bad at confidentiality:<br />
<blockquote>
Agents demonstrate low confidentiality awareness, which, while improvable through targeted prompting, often negatively impacts task performance. These findings suggest a significant gap between current LLM capabilities and the multifaceted demands of real-world enterprise scenarios.
</blockquote>
</blockquote>
Despite the fact that most consumers won't pay the current prices, it is inevitable that once the customers are addicted, prices will go up spectacularly. But the wads of VC cash may not last long enough, and things can get awkward with the customers who are paying the current prices, as <a href="https://pivot-to-ai.com/2025/07/09/cursor-tries-setting-less-money-on-fire-ai-vibe-coders-outraged/">David Gerard reports</a>:<br />
<blockquote>
You could buy 500 Cursor requests a month for $20 on the “Pro” plan. People bought a year in advance.<br />
<br />
In mid-June, Cursor offered a new $200/month “Ultra” plan. But it also changed Pro from 500 requests to $20 of “compute” at cost price — the actual cost of whichever chatbot vendor you were using. That was a lot less than 500 requests.<br />
<br />
You could stay on the old Pro plan! But users reported they kept hitting rate limits and Cursor was all but unusable.<br />
<br />
The new plan Pro users are getting surprise bills, because the system doesn’t just stop when you’ve used up your $20. One guy ran up $71 in one day.<br />
<br />
Anysphere has looked at the finances and stopped subsidising the app. Users suddenly have to pay what their requests are actually costing.<br />
<br />
Anysphere says they put the prices up because “new models can spend more tokens per request on longer-horizon tasks” — that is, OpenAI and Anthropic are charging more.
</blockquote>
The CEO who laid off the staff faces another set of "business risks". First, OpenAI is close to a monopoly; it has around 90% of the chatbot market. This makes it a single point of failure, and it <a href="https://status.openai.com/incidents/01JXCAW3K3JAE0EP56AEZ7CBG3/write-up">does fail</a>:<br />
<blockquote>
On June 9 at 11:36  PM PDT, a routine update to the host Operating System on our cloud-hosted GPU servers caused a significant number of GPU nodes to lose network connectivity. This led to a drop in available capacity for our services. As a result, ChatGPT users experienced elevated error rates reaching ~35% errors at peak, while API users experienced error rates peaking at ~25%. The highest impact occurred between June 10 2:00  AM PDT and June 10 8:00  AM PDT.
</blockquote>
Second, the chatbots present an attractive attack surface. David Gerard reports on a <a href="https://pivot-to-ai.com/2024/08/10/microsofts-copilot-studio-ai-leaks-your-business-info-internally-and-externally/">talk at Black Hat USA 2024</a>:<br />
<blockquote>
Zenity CEO Michael Bargury spoke at Black Hat USA 2024 on Thursday on how to exploit Copilot Studio:
<ul>
<li>Users are encouraged to link “public” inputs that an attacker may have control over.</li>
<li>A insider — malicious or just foolish — can feed their own files to the LLM.</li>
<li>If you train the bot on confidential communications, it may share them with the whole company.</li>
<li>63% of Copilot bots are discoverable online, out on the hostile internet. Bargury fuzzed these bots with malformed prompts and got them to spill confidential information.</li>
</ul>
Bargury demonstrated intercepting a bank transfer between a company and their client “just by sending an email to the person.”
</blockquote>
So the technology being sold to the CEOs isn't likely to live up to expectations and it will cost many times the current price. But the way it is being sold means that none of this matters. By the time the CEO discovers these issues, the company will be addicted.<br />
<br /> 

<br> 

<https://blog.dshr.org/2025/07/the-selling-of-ai.html>

---

##  Anil Dash on seeing Wu-Tang Clan in 2000, the last time all... 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047190-anil-dash-on-seeing-wu-ta>

---

##  Today (July 22) will be the second-shortest day since 1973. &#8220;The difference... 

date: 2025-07-22, updated: 2025-07-22, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047191-today-july-22-will-be>

---

## The Pyramid of Merit

date: 2025-07-22, from: Dave Rupert blog

<img src="https://cdn.daverupert.com/posts/2025/building-a-pyramid.jpg" alt="1890s engraving of slaves building a pyramid" width="600" height="450">
<p>There’s one quote from <a href="https://www.amazon.com/Twilight-Elites-America-After-Meritocracy/dp/0307720462">Twilight of the Elites</a> (Chris Hayes, 2013) that has stuck with me since reading the book earlier this year. In sharing his experience attending the prestigious test-in Hunter College High School in Manhattan, Hayes acknowledges that the idea (and social stratification and skin tone) of <a href="https://en.wikipedia.org/wiki/Hunter_College_High_School#Concerns_about_admission_policies">merit begins to homogenize over time</a>. In one sentence he laid bare the lie of meritocracy and it cut deep for me:</p>
<blockquote>
<p>The pyramid of merit has come to mirror the pyramid of wealth and cultural capital.</p>
</blockquote>
<p>In the tech and venture capital space there’s ample criticisms of meritocracy out there dispelling the head-slap-inducing claims made by ill-informed tech bros who have found themselves in positions of power. I’d be lying if I said meritocracy didn’t appeal to me at least on some level; rewarding highly skilled labor with higher pay accordingly appeals to my sense of fairness… but then I hear about <a href="https://www.epi.org/publication/ceo-pay-in-2023/">CEOs earning 290⨉ the average worker</a> and the whole system begins to crumble for me. Sure, they assume some risk… but never seem to suffer the same consequences. Despite its aroma of enlightened empirical fairness, meritocracy is ultimately a tool for protecting the status quo.</p>
<p>You can see it with your own eyes. Merit goes to the already wealthy. Merit magically awards itself to people from the same fraternal organization. Merit goes to people of similar net worth, who look the same, talk the same, believe the same, joke the same, and have the same education. Merit goes to symmetrical acne-free faces, shampoo model hair, designer scents, six pack abs, and strong jaw lines because those people <em>must</em> have earned it through hard work and not surgery, drugs, photoshop, or genetic lottery.</p>
<p>This year has poured a gallon of salt into this festering wound for me as my own country’s government tries to set “meritocracy” against “diversity, equity, and inclusion” –as if they’re opposed concepts, rather than the latter being a framework to recognize and correct pre-existing biases– then proceeding to nominate the most inept, corrupt, and deceitful people to perhaps ever occupy a government role. A cabinet full of regressive billionaires, cowboy cosplayers, and conservative television hosts papering over their racism with a flimsy banner of meritocracy. The entire administration is an insidious heist to enrich a small cabal of already wealthy families and we’ll be paying for this televised crime spree for generations.</p>
<p>I don’t want to fall into the trap of comparing DEI and meritocracy. Instead, I think we can examine meritocracy based on its merits; its an entirely gameable system that is for sale, prone to in-group biases, and often nullifies its own intent. Merit then will always mean money when its for sale. Plain and simple.</p>
<p>Diversity then… of people, wealth, cultures, and thought… is an antidote. A Darwinian cure to prevent groupthink and corruption that flourish in meritocratic systems. You and I remember the old truths, the old dreams, the old habits of loving thy neighbor. We’d do good to protect diversity, encourage it, and nourish it.</p> 

<br> 

<https://daverupert.com/2025/07/the-pyramid-of-merit/>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-07-22, from: Miguel de Icaza Mastondon feed)

<p>An AI video worth watching, sorry if it is a twitter hosted video, don’t know the original source:</p><p><a href="https://x.com/me_observer_/status/1947080477589831790" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">x.com/me_observer_/status/1947</span><span class="invisible">080477589831790</span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114897035585553987>

---

**@Dave Winer's Scripting News** (date: 2025-07-22, from: Dave Winer's Scripting News)

New WordLand release, <a href="https://this.how/wordland/versions.opml#1753189296000">v0.5.24</a>, fixes a problem in previous release that kept the Markdown icon from appearing in some user's icon bars. 

<br> 

<http://scripting.com/2025/07/22.html#a130435>

---

## 
                Lamenting contemporary bright UIs
            

date: 2025-07-22, updated: 2025-07-22, from: Uninformative blog

 

<br> 

<https://www.uninformativ.de/blog/postings/2025-07-22/0/POSTING-en.html>

---

## “Encryption Backdoors and the Fourth Amendment”

date: 2025-07-22, updated: 2025-07-21, from: Bruce Schneier blog

<p>Law journal <a href="https://scholarship.law.marquette.edu/mulr/vol108/iss2/5/">article</a> that looks at the <a href="https://www.schneier.com/blog/archives/2007/11/the_strange_sto.html">Dual_EC_PRNG backdoor</a> from a US constitutional perspective:</p>
<blockquote><p><b>Abstract</b>: The National Security Agency (NSA) reportedly paid and pressured technology companies to trick their customers into using vulnerable encryption products. This Article examines whether any of three theories removed the Fourth Amendment’s requirement that this be reasonable. The first is that a challenge to the encryption backdoor might fail for want of a search or seizure. The Article rejects this both because the Amendment reaches some vulnerabilities apart from the searches and seizures they enable and because the creation of this vulnerability was itself a search or seizure. The second is that the role of the technology companies might have brought this backdoor within the private-search doctrine. The Article criticizes the doctrine­ particularly its origins in Burdeau v. McDowell­and argues that if it ever should apply, it should not here. The last is that the customers might have waived their Fourth Amendment rights under the third-party doctrine. The Article rejects this both because the customers were not on notice of the backdoor and because historical understandings of the Amendment would not have tolerated it. The Article concludes that none of these theories removed the Amendment’s reasonableness requirement...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/07/encryption-backdoors-and-the-fourth-amendment.html>

---

## So Much for Socialism

date: 2025-07-22, from: Robert Reich's blog

The Trump regime is using the specter of socialism to make America even more authoritarian. The regime will lose. 

<br> 

<https://robertreich.substack.com/p/so-much-for-socialism>

---

## 2025-07-21 Math finds

date: 2025-07-22, from: Alex Schroeder's Blog

<h1 id="2025-07-21-math-finds">2025-07-21 Math finds</h1>

<p><a class="account" href="https://mathstodon.xyz/users/johncarlosbaez" title="@johncarlosbaez@mathstodon.xyz">@johncarlosbaez</a> just posted the following:</p>

<blockquote>
<p>List all the numbers</p>

<p>1, 2, 3, 4, 5, 6, 7, &hellip;</p>

<p>skip every second one:</p>

<p>1, 3, 5, 7, &hellip;</p>

<p>form the partial sums like this:</p>

<p>1, 1+3, 1+3+5, 1+3+5+7, &hellip;</p>

<p>Hey, you get the square numbers!</p>

<p>1, 4, 9, 16, &hellip;</p>

<p>Lots of people know that.</p>
</blockquote>

<p>I did not and it blows my mind.</p>

<p>He continues:</p>

<blockquote>
<p>But now list all the numbers</p>

<p>1, 2, 3, 4, 5, 6, 7, &hellip;</p>

<p>skip every <em>third</em> one:</p>

<p>1, 2, 4, 5, 7, 8, 10, 11, &hellip;</p>

<p>then form the partial sums:</p>

<p>1, 1+2, 1+2+4, 1+2+4+5, 1+2+4+5+7 &hellip;</p>

<p>=</p>

<p>1, 3, 7, 12, 19, &hellip;</p>

<p>then skip every <em>second</em> one:</p>

<p>1, 7, 19, &hellip;.</p>

<p>then form the partial sums again:</p>

<p>1, 8, 27, &hellip;</p>

<p>Hey, now you get the cubes!   You shouldn&rsquo;t trust me based on so little evidence, so do some more, or prove it works.</p>

<p>But the cool part is that this pattern goes on forever.  If you list all the natural numbers starting from 1, skip every nth one, form the list of partial sums, skip every (n-1)st one, form the list of partial sums, skip every (n-2)nd one, &hellip; blah di blah di blah&hellip; skip every 2nd one, then form the list of partial sums, you get the nth powers!</p>

<p>This is called Moessner&rsquo;s theorem, and I learned about it from Michael Fourman.   It&rsquo;s in Chapter 7.5 here:</p>

<ul>
<li>Jan Rutten, <a href="https://ir.cwi.nl/pub/28550/rutten.pdf">The Method of Coalgebra: Exercises in Coinduction</a></li>
</ul>

<p>Moral: anytime you see a pattern in mathematics - one that goes on infinitely, not a coincidence! - it&rsquo;s probably just the tip of a bigger iceberg.</p>
</blockquote>

<p>Such wonderful stuff.</p>

<p><a class="account" href="https://chaos.social/users/plyspomitox" title="@plyspomitox@chaos.social">@plyspomitox</a> commented:</p>

<blockquote>
<p>i was amazed when i learned that 1 / 7 is 0.142857 (repeating) which struck me as odd as that contains 14, 0028, 000056, 00000112 and so on and so 1/7 is basically the infinite sum of 7×(0.02)ⁿ which is so because 1/49 is the infinite sum of 0.02ⁿ &hellip; 0.02 being 1/50</p>
</blockquote>

<p>🤯</p>

<p>Sadly, I don&rsquo;t have anything to add. I&rsquo;m still stuck in my high-school math and even that is getting worse over the years. But it&rsquo;s small posts like these that remind me of the cool stuff that&rsquo;s out there.</p>

<p><a class="tag" href="/search/?q=%23Math">#Math</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-07-21-math>

---

## July 21, 2025 (Monday) 

date: 2025-07-22, from: Heather Cox Richardson blog

After a long, productive day, I thought I'd just hop out on the water for an hour or so before I started writing tonight's letter. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-21-2025-monday>

---

## Will Wonders Never Cease?

date: 2025-07-22, updated: 2025-07-22, from: Daring Fireball

 

<br> 

<https://www.bloomberg.com/news/articles/2025-07-21/oracle-in-talks-for-100-million-skydance-paramount-cloud-deal>

---

## Commanders : Goofus :: Guardians : Gallant

date: 2025-07-22, updated: 2025-07-22, from: Daring Fireball

 

<br> 

<https://www.nbcsports.com/nfl/profootballtalk/rumor-mill/news/as-guardians-dig-in-commanders-remain-mum-on-president-trumps-name-change-demand>

---

## While We Are Obsessing Over Epstein

date: 2025-07-21, from: Dan Rather's Steady

Gazans are starving, and Kyiv is burning 

<br> 

<https://steady.substack.com/p/while-we-are-obsessing-over-epstein>

---

##  The Most Observed Plants & Animals in Each US State 

date: 2025-07-21, updated: 2025-07-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/the-most-observed-plants-animals-in-each-us-state>

---

## [Sponsor] SafeBase by Drata

date: 2025-07-21, updated: 2025-07-21, from: Daring Fireball

 

<br> 

<https://safebase.io/lp/why-safebase/?utm_source=daring_fireball&utm_medium=display&utm_campaign=18991230_sb_tc_campaign_DG_ENT_>

---

**@Dave Winer's Scripting News** (date: 2025-07-21, from: Dave Winer's Scripting News)

<a href="https://this.how/wordland/versions.opml#1753133350000">Change notes</a> for WordLand v0.5.22. 

<br> 

<http://scripting.com/2025/07/21.html#a214136>

---

##  A look at 40 years of Rembrandt self-portraits. &#8220;Rembrandt documented his face... 

date: 2025-07-21, updated: 2025-07-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047187-a-look-at-40-years>

---

## ‘CBS: The Tiffany Network’

date: 2025-07-21, updated: 2025-07-21, from: Daring Fireball

 

<br> 

<https://www.youtube.com/watch?v=7Rv36XkQojM>

---

##  When the Icebergs Came to Town 

date: 2025-07-21, updated: 2025-07-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/when-the-icebergs-came-to-town>

---

**@Dave Winer's Scripting News** (date: 2025-07-21, from: Dave Winer's Scripting News)

<a href="https://en.wikipedia.org/wiki/The_Great_(TV_series)">The Great</a> on Hulu gives an idea of what a king or queen would be like. The difference is the actors <a href="https://www.youtube.com/watch?v=Q7BNPKkjL1k">playing</a> the <a href="https://www.youtube.com/watch?v=6gx8b1KwjWs">monarchs</a> are pretty lovable and not stupid, and somewhat self-aware (not their strong suit). 

<br> 

<http://scripting.com/2025/07/21.html#a194404>

---

##  Gregor Formanek is likely the very last SS guard of a concentration... 

date: 2025-07-21, updated: 2025-07-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047185-gregor-formanek-is-likely>

---

**@Dave Winer's Scripting News** (date: 2025-07-21, from: Dave Winer's Scripting News)

Short <a href="https://www.youtube.com/watch?v=aV3FZN0bdNk&t=4s">video demo</a> of Markdown mode in WordLand. 

<br> 

<http://scripting.com/2025/07/21.html#a191146>

---

##  How to Flood-Proof a Hurricane-Prone Florida Town 

date: 2025-07-21, updated: 2025-07-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/how-to-flood-proof-a-hurricane-prone-florida-town>

---

## HRW Report Documents Abusive Practices at Three Florida Immigration Detention Centers Since January 2025

date: 2025-07-21, updated: 2025-07-21, from: Daring Fireball

 

<br> 

<https://www.hrw.org/report/2025/07/21/you-feel-like-your-life-is-over/abusive-practices-at-three-florida-immigration>

---

##  &#8220;The Alamo announced Friday a whimsical and nostalgic new addition to its... 

date: 2025-07-21, updated: 2025-07-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047183-the-alamo-announced-frida>

---

## July 20, 2025

date: 2025-07-21, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/168876186/f19b2108ecad473663e97eb32e921eaa.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/168876186/f19b2108ecad473663e97eb32e921eaa.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/july-20-2025-cf3>

---

##  Catherine Lacey&#8217;s The Möbius Book is both a memoir and a novel,... 

date: 2025-07-21, updated: 2025-07-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047182-catherine-laceys-the-mobi>

---

**@Dave Winer's Scripting News** (date: 2025-07-21, from: Dave Winer's Scripting News)

Quick <a href="https://daveverse.org/2025/07/21/1795/">notes</a> on WordLand v0.5.21. Complete notes to come. 

<br> 

<http://scripting.com/2025/07/21.html#a164315>

---

##  Intricate Drawings by Shunshun 

date: 2025-07-21, updated: 2025-07-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/intricate-drawings-by-shunshun>

---

##  &#8220;Terrible night&#8217;s sleep? Here&#8217;s how to make it through the day&#8230;&#8221; Maybe... 

date: 2025-07-21, updated: 2025-07-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047178-terrible-nights-sleep-her>

---

## Please, FOSS world, we need something like ChromeOS

date: 2025-07-21, updated: 2025-07-21, from: Liam Proven's articles at the Register

<h4><span class="label">Comment</span> The End of Windows 10 is looming. The world needs a simpler, easy, quick, snackable alternative</h4>
      <p>Dear Santa. For Windows-10-end-of-support-day in October, please may we have a dead simple bulletproof all-free OS that gets old PCs online without a Google account, and does nothing else?</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/21/foss_chromeos_please/>

---

##  A remake of The Thomas Crown Affair with Michael B. Jordan, Danai... 

date: 2025-07-21, updated: 2025-07-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047170-a-remake-of-the-thomas>

---

## Another Supply Chain Vulnerability

date: 2025-07-21, updated: 2025-07-19, from: Bruce Schneier blog

<p>ProPublica is <a href="https://www.propublica.org/article/microsoft-digital-escorts-pentagon-defense-department-china-hackers">reporting</a>:</p>
<blockquote><p>Microsoft is using engineers in China to help maintain the Defense Department&#8217;s computer systems&#8212;with minimal supervision by U.S. personnel&#8212;leaving some of the nation&#8217;s most sensitive data vulnerable to hacking from its leading cyber adversary, a ProPublica investigation has found.</p>
<p>The arrangement, which was critical to Microsoft winning the federal government&#8217;s cloud computing business a decade ago, relies on U.S. citizens with security clearances to oversee the work and serve as a barrier against espionage and sabotage...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/07/another-supply-chain-vulnerability.html>

---

## 2025-07-21 Butlerian Jihad numbers

date: 2025-07-21, from: Alex Schroeder's Blog

<h1 id="2025-07-21-butlerian-jihad-numbers">2025-07-21 Butlerian Jihad numbers</h1>

<p>Since I&rsquo;ve been posting so much about the Butlerian Jihad, you might wonder how many IP addresses or networks are actually being banned.</p>

<p>Here&rsquo;s what Munin shows:</p>

<p><img loading="lazy" src="2025-07-21-butlerian-jihad-numbers-1.jpg" alt="At the end of June, things start picking up and on July 3, numbers start going up for real. The butlerian-jihad jail (1 hour) dances up and down and sometimes goes up to 5k but reaches 10k around July 9. The butlerian-jihad-jail (1 week) climbs to around 8k in the same time period. After that numbers fall back down but since July 12  or the week-long ban hovers around 3k and the one-hour-long ban jumps up from zero 5k many times, reaching 11k on July 17." /></p>

<p>Currently, 2.70k IP ranges are affected by the week-long ban.</p>

<p>At the same time, people have been <a href="https://www.reddit.com/r/emacs/comments/1m2lzkr/emacswiki_down/">wondering on Reddit</a>, two people sent me emails about Emacs Wiki and three people sent me emails (or contacted me on Discord/IRC) about Campaign Wiki.</p>

<p><a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-07-21-butlerian-jihad-numbers>

---

## This week’s Neville Chamberlain Award Goes to Sian Beilock. Who’s She? 

date: 2025-07-21, from: Robert Reich's blog

Let me tell you 

<br> 

<https://robertreich.substack.com/p/this-weeks-neville-chamberlain-award-988>

---

## July 20, 2025

date: 2025-07-21, from: Heather Cox Richardson blog

On Friday, G. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-20-2025>

---

## Exit Stage Colbert

date: 2025-07-21, from: Om Malik blog

I have a dark cloud over my head about the news that CBS&#160;canceled&#160;Stephen Colbert for “financial reasons,” an explanation no one is buying.Well, unless those financial reasons were the regulatory approval of the Skydance-Paramount deal.&#160; The Wall Street Journal does&#160;its&#160;best&#160;to make a case that&#160;TV is dying.&#160;No&#160;shit, Sherlock!&#160;And that is why Late Night TV is a &#8230; 

<br> 

<https://om.co/2025/07/20/exit-stage-colbert/>

---

## Et. Tu FT?

date: 2025-07-21, from: Om Malik blog

A month ago, I&#160;reported&#160;that Apple was in the final stages of acquiring the rights for F1 streaming&#160;following&#160;the success of its movie about the sport. Almost a month later, the Financial Times reported the news. As a matter of&#160;principle,&#160;I am not linking to the&#160;report. As is the case with establishment media, they almost never credit independents, &#8230; 

<br> 

<https://om.co/2025/07/20/et-tu-ft/>

---

## WorkOS: Summer Launch Week

date: 2025-07-21, updated: 2025-07-21, from: Daring Fireball

 

<br> 

<https://workos.com/launch-week/summer-2025>

---

## Mad King Watch: Trump Threatens to Interfere With Stadium Deal Unless Washington Commanders Change Name Back to ‘Redskins’

date: 2025-07-21, updated: 2025-07-24, from: Daring Fireball

 

<br> 

<https://www.reuters.com/sports/trump-threatens-washington-stadium-deal-unless-nfl-team-readopts-redskins-name-2025-07-20/>

---

## Sunday evening thought

date: 2025-07-21, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/sunday-evening-thought>

---

**@Dave Winer's Scripting News** (date: 2025-07-21, from: Dave Winer's Scripting News)

Today's song: <a href="https://www.youtube.com/watch?v=G0bvKJaTB2s">When You Awake</a>. You will remember everything. 

<br> 

<http://scripting.com/2025/07/20.html#a004019>

---

## Don’t Forget About Atari

date: 2025-07-21, updated: 2025-07-21, from: Daring Fireball

 

<br> 

<https://cory.news/posts/2025-07-17-atari/>

---

## Monday 21 July, 2025

date: 2025-07-20, from: John Naughton's online diary

Cloistered Somewhere in France (possibly Cluny), 2012 Quote of the Day ”I’ve had a perfectly wonderful evening, but this wasn’t it.” Groucho Marx Musical alternative to the morning’s radio news Christine McVie &#124; Songbird Link Long Read of the Day &#8230; <a href="https://memex.naughtons.org/monday-21-july-2025/41038/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-21-july-2025/41038/>

---

## Sunday caption contest: Haunted

date: 2025-07-20, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-ghost>

---

## The WSJ on Late Night TV’s Ad Revenue Decline, and CBS’s Decision to Cancel The Late Show

date: 2025-07-20, updated: 2025-07-21, from: Daring Fireball

 

<br> 

<https://www.wsj.com/business/media/stephen-colbert-late-show-canceled-profit-3dcc48a2?st=TT3iun>

---

## Good read

date: 2025-07-20, from: Doc Searls (at Harvard), New Old Blog

I just got turned on to Paul Ford&#39;s What is Code, from 2015, but still current today. Shoulda been a book, like Neal Stephenson&#39;s In the Beginning Was the Command Line. You can still find the text online, such as here. 

<br> 

<https://doc.searls.com/2025/07/20/good-read/>

---

## Nice, I hope

date: 2025-07-20, from: Doc Searls (at Harvard), New Old Blog

That &#34;intention economy&#34; appears (in a positive way) in this story from South Africa, in IOL. 

<br> 

<https://doc.searls.com/2025/07/20/nice-i-hope/>

---

## Gist of Go: Signaling

date: 2025-07-20, from: Anton Zhiyanov blog

Sending events between goroutines. 

<br> 

<https://antonz.org/go-concurrency/signaling/>

---

## July 19, 2025

date: 2025-07-20, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/168790335/31df3db49c93545e98635bc059613b71.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/168790335/31df3db49c93545e98635bc059613b71.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/july-19-2025-7be>

---

**@Dave Winer's Scripting News** (date: 2025-07-20, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/11/nakedJenToday.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Just listened to an <a href="https://pocketcasts.com/podcasts/af219330-570e-0133-c8fd-0d11918ab357/bb01560c-550f-4da4-ab0f-b0c36d1b9f1d">episode</a> of the New Yorker Radio Hour podcast with <a href="https://en.wikipedia.org/wiki/Michael_Wolff_(journalist)">Michael Wolff</a>, about the material he has on <a href="https://en.wikipedia.org/wiki/Jeffrey_Epstein">Jeffrey Epstein</a> that he can't get anyone to publish, but maybe that'll change. In the interview it was remarkable how the reporter wanted to know just how bad Donald Trump is. That is no longer an interesting question. Didn't you see what happened on <a href="https://en.wikipedia.org/wiki/January_6_United_States_Capitol_attack">January 6</a>? And have you seen the armed, <a href="https://www.csmonitor.com/USA/Politics/2025/0611/ice-agents-masks-protests">masked</a>, badgeless military in American streets, <a href="https://en.wikipedia.org/wiki/Missing_person">disappearing</a> people. And the $80 billion they just took from the US Treasury to build a network of <a href="https://en.wikipedia.org/wiki/Concentration_camp">concentration camps</a> and who knows what else. You can't get more bad than that. It's too late to still be talking about this bullshit. 

<br> 

<http://scripting.com/2025/07/20.html#a163141>

---

**@Dave Winer's Scripting News** (date: 2025-07-20, from: Dave Winer's Scripting News)

I keep saying this to my chatbots and you should too. "You are not human, I don't want you to pretend you are. Act like a computer." 

<br> 

<http://scripting.com/2025/07/20.html#a153213>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-07-20, from: Miguel de Icaza Mastondon feed)

<p>Steve Sosebe:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114885881486725237>

---

## Logarithmical: Zipf’s Law and the mathematics of emoji

date: 2025-07-20, from: Shady Characters blog

<p>Back in the mists of time, <a href="https://shadycharacters.co.uk/2015/10/zipfs-law/">I wrote about a peculiar property of words</a> called Zipf’s Law. The idea is quite simple: the frequency at which different words occur in any large body of work, ordered from the most common to the least common, follows a predictable pattern. This is true across languages, and even in some texts, such as that in the Voynich Manuscript, that we haven’t yet deciphered.<a class="bibcite" id="bibcite_10.1080/0161-110191889932" href="#bibshow_10.1080/0161-110191889932" title="
  Landini, Gabriel. “Evidence of Linguistic Structure in the Voynich Manuscript Using Spectral Analysis”. Cryptologia 25, no. 4 (October 1, 2001): 275-295. https://doi.org/10.1080/0161-110191889932.
" data-version="1">1</a></p><a class="more-link" href="https://shadycharacters.co.uk/2025/07/zipfs-emoji/">Read more →</a> 

<br> 

<https://shadycharacters.co.uk/2025/07/zipfs-emoji/>

---

## Dolly Parton

date: 2025-07-20, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/dolly-parton>

---

## Sunday thought

date: 2025-07-20, from: Robert Reich's blog

And you? 

<br> 

<https://robertreich.substack.com/p/sunday-thought-b03>

---

## July 19, 2025

date: 2025-07-20, from: Heather Cox Richardson blog

On July 20, 1969, U.S. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-19-2025>

---

## 07.19.2025: The Weekend Edition

date: 2025-07-20, from: Om Malik blog

There are certain sweet-smelling, sugarcoated lies current in the world which all politic men have apparently tacitly conspired together to support and perpetuate. One of these is that there is such a thing in the world as independence: independence of thought, independence of opinion, independence of action. — Mark Twain There are two books on &#8230; 

<br> 

<https://om.co/2025/07/19/07-19-2025-the-weekend-edition/>

