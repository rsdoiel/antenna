---
title: columns
updated: 2025-04-07 14:10:46
---

# columns

(date: 2025-04-07 14:10:46)

---

##  Rebecca Solnit on the importance of Preaching to The Choir in activism.... 

date: 2025-04-07, updated: 2025-04-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/04/0046589-rebecca-solnit-on-the-imp>

---

##  &#8220;If we want to bring the world back from the brink, we... 

date: 2025-04-07, updated: 2025-04-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/04/0046588-if-we-want-to-bring>

---

## Why we’ll have a recession

date: 2025-04-07, from: Robert Reich's blog

Trump wants to get it over early in his term, so he and his fellow billionaires can buy up everything cheap and then enjoy the ride upward 

<br> 

<https://robertreich.substack.com/p/why-trump-and-his-billionaires-welcome>

---

##  Tesla&#8217;s Cybertruck Is The Auto Industry&#8217;s Biggest Flop In Decades 

date: 2025-04-07, updated: 2025-04-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/04/tesla-cybertruck-biggest-flop>

---

##  An editorial in Nature: &#8220;A brain drain would impoverish the United States... 

date: 2025-04-07, updated: 2025-04-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/04/0046586-an-editorial-in-nature-a>

---

##  America Is Watching the Rise of a Dual State. &#8220;For most people,... 

date: 2025-04-07, updated: 2025-04-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/04/0046585-america-is-watching-the-r>

---

##  Silence is Collaboration: Academics Must Speak Out Against Fascism. &#8220;We will call... 

date: 2025-04-07, updated: 2025-04-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/04/0046584-silence-is-collaboration->

---

##  I&#8217;m a Free-Thinking Centrist with Only Right-Wing Ideas. &#8220;I voted for Trump,... 

date: 2025-04-07, updated: 2025-04-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/04/0046581-im-a-free-thinking-centri>

---

## 2025-04-07 Galène was comparatively easy to setup

date: 2025-04-07, from: Alex Schroeder's Blog

<h1 id="2025-04-07-galène-was-comparatively-easy-to-setup">2025-04-07 Galène was comparatively easy to setup</h1>

<p>I remember how tricky the Jitsi setup was, at the time. When we used it, system load for my small server jumped up to seven or eight. And in the end, we all ended up on Discord. But with Discord showing annoying ads even to paying customers, I&rsquo;m taking another look at the alternatives.</p>

<p>From my point of view, <a href="https://galene.org/">Galène</a> has the benefits of requiring just a single binary for installation. Sure, deployment is trickier, but in typical Go fashion, you get a huge binary that you copy over to the server and you&rsquo;re essentially ready to test it.</p>

<p>So what did I do?</p>

<p>I created a system user <code>galene</code> with home directory <code>/home/galene</code>. There is no <code>galene</code> group.</p>

<p>This is where the binary lives.</p>

<p>I copied the example <code>galene.service</code> <a href="https://galene.org/INSTALL.html#:~:text=systemd">from the website</a> and adapted it (by changing <code>Group=galene</code> to <code>Group=nogroup</code>).</p>

<p>My Galène installation does not live behind a reverse proxy, so there is no logging of bots trying to access it. Perhaps a problem to solve for later.</p>

<p>I had to add a bunch of lines to my <code>/etc/apache2/hook.sh</code> that runs whenever <code>mod_md</code> gets new certificates. When that happens, Galène also gets a copy, with permissions set appropriately. And it gets restarted.</p>

<p>I created a JSON file to define a single group, making me the operator (with a password), and allowing <a href="https://galene.org/README.html#:~:text=wildcard">wildcard users</a> (all sharing the same password). I handed out this password on the IRC channel we use to chat and hang out.</p>

<p>Should we end up with two dozen people or more, then I&rsquo;ll write a web app to administrate these JSON files via the web. Or if I&rsquo;m feeling evil, I&rsquo;ll add the functionality to administer them to an IRC bot. 😂</p>

<p><a class="tag" href="/search/?q=%23Jitsi">#Jitsi</a> <a class="tag" href="/search/?q=%23Galène">#Galène</a> <a class="tag" href="/search/?q=%23Discord">#Discord</a> <a class="tag" href="/search/?q=%23Administration">#Administration</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-04-07-galene>

---

**@Dave Winer's Scripting News** (date: 2025-04-07, from: Dave Winer's Scripting News)

<a href="https://bsky.app/profile/hillaryclinton.bsky.social/post/3lma3a4rgks2y">Hillary Clinton</a> makes a very important point. "Republicans in Congress can put a stop to this at any time." By this, she means the crashing US economy. And even if you believe they'll "never do it" -- it's still the right thing to repeat this over and over -- people should know they could. This should be repeated until enough people get it, this is being done <i>on purpose</i> by the Repubs. This isn't about winning elections, it's about understanding who's doing this to you and how deliberate it is. 

<br> 

<http://scripting.com/2025/04/07.html#a143224>

---

##  Travel maven Rick Steves made a great hour-long documentary about the history... 

date: 2025-04-07, updated: 2025-04-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/04/0046583-travel-maven-rick-steves->

---

**@Dave Winer's Scripting News** (date: 2025-04-07, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://s3.amazonaws.com/scripting.com/images/2022/12/15/drummer.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">A <a href="https://github.com/scripting/drummerSupport/issues/198">question</a> on GitHub: Is OPML the native file format for Drummer? It's better to first <a href="https://imgs.scripting.com/2025/04/07/fileformatScreen.png">use</a> the product or <a href="https://docserver.scripting.com/drummer/about.opml#1633536117000">read</a> the docs or <a href="https://www.google.com/search?q=What+is+the+native+file+format+for+Drummer%3F&rlz=1C5CHFA_enUS743US747&oq=What+is+the+native+file+format+for+Drummer%3F&aqs=chrome..69i57j0i512i546j0i546i649j69i64.10884j0j4&sourceid=chrome&ie=UTF-8">search</a> on web or use an <a href="https://claude.ai/share/08b9de36-bc41-454b-a21d-e2edcc75d094">AI chatbot</a> before getting humans involved. Anyway, the answer is yes, OPML is the native file format of <a href="http://drummer.land/">Drummer</a>. It's the reason we chose <a href="http://opml.org/">OPML</a> as the format for RSS reading lists, so we could edit them in a distant <a href="http://scripting.com/2021/01/21/141332.html?title=twentyYearsAgoInPodcasting#a154217">ancestor</a> of Drummer's whose native file format was also OPML. I tend not to change file formats gratuitously -- it's how you can use different tools to edit your own data. That's a big part of the plan with <a href="https://wordland.social/">WordLand</a>, because the internal file format for drafts is Markdown, you could put any editor alongside that can edit and save text in Markdown, without a glitch. The idea is to create a new platform, editors for WordPress, and have them all interop with each other perfectly from the start. Because WordLand is the first product in this niche, and Markdown is a very safe choice these days (understood to discourage lock-in), I think it's going to be a perfect basis for interop. Learning from past experience and doing it better each time. 

<br> 

<http://scripting.com/2025/04/07.html#a133100>

---

## DIRNSA Fired

date: 2025-04-07, updated: 2025-04-07, from: Bruce Schneier blog

<p>In &#8220;<a href="https://www.schneier.com/books/secrets-and-lies/">Secrets and Lies</a>&#8221; (2000), I wrote:</p>
<blockquote><p>It is poor civic hygiene to install technologies that could someday facilitate a police state.</p></blockquote>
<p>It&#8217;s something a bunch of us were saying at the time, in reference to the vast NSA&#8217;s surveillance capabilities.</p>
<p>I have been thinking of that quote a lot as I read <a>news</a> <a href="https://www.washingtonpost.com/national-security/2025/04/03/nsa-director-fired-tim-haugh/">stories</a> <a href="https://apnews.com/article/trump-national-security-agency-tim-haugh-ec08b455e2c1112f5c6bb1881fad73e2">of</a> President Trump firing the Director of the National Security Agency. General Timothy Haugh.</p>
<p>A couple of weeks ago, I <a href="https://foreignpolicy.com/2025/03/28/signal-chat-leak-trump-technology-security-houthis-group-defense-nsa/">wrote</a>:</p>
<blockquote><p>We don&#8217;t know what pressure the Trump administration is using to make intelligence services fall into line, but it isn&#8217;t crazy to ...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/04/dirnsa-fired.html>

---

## The real reason we’re in a national emergency

date: 2025-04-07, from: Robert Reich's blog

Trump is creating national emergencies to gain more power. In the process, he&#8217;s subjecting millions to real harm. 

<br> 

<https://robertreich.substack.com/p/america-is-on-a-war-footing-without>

---

## April 6, 2025 (Sunday)

date: 2025-04-07, from: Heather Cox Richardson blog

After President Donald Trump&#8217;s tariff announcements on April 2 wiped $5 trillion dollars from the stock market, the Republican Party is scrambling. 

<br> 

<https://heathercoxrichardson.substack.com/p/april-6-2025-sunday>

---

## Standing Up: It Looks Like This.

date: 2025-04-07, from: James Fallows, Substack

Individuals are taking the lead. They can show institutions the way. Ongoing chronicles of resistance. 

<br> 

<https://fallows.substack.com/p/standing-up-it-looks-like-this>

---

## Writing C for curl

date: 2025-04-07, from: Daniel Stenberg Blog

It is a somewhat common question to me: how do we write C in curl to make it safe and secure for billions of installations? Some precautions we take and decisions we make. There is no silver bullet, just guidelines. As I think you can see for yourself below they are also neither strange nor &#8230; <a href="https://daniel.haxx.se/blog/2025/04/07/writing-c-for-curl/" class="more-link">Continue reading <span class="screen-reader-text">Writing C for curl</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/04/07/writing-c-for-curl/>

---

## Monday 7 April

date: 2025-04-06, from: John Naughton's online diary

’A crowd, a host of… “…Golden daffodils”. And I wasn’t even wandering, lonely as a cloud, just walking through a college garden. Quote of the Day ”Some drink deeply from the river of knowledge. Others only gargle. Woody Allen Musical &#8230; <a href="https://memex.naughtons.org/monday-7-april/40647/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-7-april/40647/>

---

## if you aren't redlining the LLM, you aren't headlining

date: 2025-04-06, from: Geoffrey Hunntley's blog

<p>It&#x2019;s an old joke in the DJ community about upcoming artists having a bad reputation for pushing the audio signal into the red. Red is bad because it results in the audio signal being clipped and the mix sounding muddy.</p><figure class="kg-card kg-image-card"><img src="https://ghuntley.com/content/images/2025/04/image-3.png" class="kg-image" alt loading="lazy" width="720" height="886" srcset="https://ghuntley.com/content/images/size/w600/2025/04/image-3.png 600w, https://ghuntley.com/content/images/2025/04/image-3.png 720w" sizes="(min-width: 720px) 720px"></figure><p>It&#x2019;s a good analogy that applies</p> 

<br> 

<https://ghuntley.com/redlining/>

---

## Sunday caption contest: Manufacturing

date: 2025-04-06, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-manufacturing-5f8>

---

## Sunny Vinny Afternoon

date: 2025-04-06, from: Doc Searls (at Harvard), New Old Blog

I&#8217;m here (a short drive south of San Jose) for the afternoon, if any local friends feel like stopping by. Tomorrow it&#8217;s VRM Day. Tuesday to Thursday, it&#8217;s IIW. See you theres. 

<br> 

<https://doc.searls.com/2025/04/06/sunny-vinny-afternoon/>

---

## The Spectacle of Incompetence

date: 2025-04-06, updated: 2025-04-06, from: Daring Fireball

 

<br> 

<https://www.newyorker.com/magazine/2025/04/07/the-greater-scandal-of-signalgate>

---

## Hear in Near L.A.

date: 2025-04-06, from: Doc Searls (at Harvard), New Old Blog

Just loving the hang time we got yesterday with Tony after two long flights and one short drive from LAX. 

<br> 

<https://doc.searls.com/2025/04/06/hear-in-near-l-a/>

---

##  This Is the Holocaust Story I Said I Wouldn&#8217;t Write by Taffy... 

date: 2025-04-06, updated: 2025-04-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/04/0046582-this-is-the-holocaust-sto>

---

##  Photos of the Hands Off! Protests 

date: 2025-04-06, updated: 2025-04-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/04/photos-of-the-hands-off-protests>

---

##  A rare interview with Tracy Chapman. &#8220;But I grew up across the... 

date: 2025-04-06, updated: 2025-04-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/04/0046580-a-rare-interview-with-tra>

---

**@Dave Winer's Scripting News** (date: 2025-04-06, from: Dave Winer's Scripting News)

I wonder when ChatGPT or Claude.ai will compete with Wikipedia. I think Wikipedia is great but it has always had a weakness in that it can be manipulated to tell a story from a very limited point of view. For example the RSS page has a long section explaining the benefits of Atom. What I like about the AI versions of the basic history of things is that it isn't so easily manipulated. I talked about this with Claude, and asked it to write up a <a href="https://this.how/claudewiki/">proposal for ClaudeWiki</a>, a Wikipedia workalike, not too expensive to run, make it part of a user's $20 per month subscription. I think it would be useful, if only as a demo how Wikipedia itself might improve its service. 

<br> 

<http://scripting.com/2025/04/06.html#a170408>

---

**@Dave Winer's Scripting News** (date: 2025-04-06, from: Dave Winer's Scripting News)

A search for <a href="https://daytona.scripting.com/search?q=wordpress">WordPress</a> on this blog tells an interesting story. 

<br> 

<http://scripting.com/2025/04/06.html#a165936>

---

**@Dave Winer's Scripting News** (date: 2025-04-06, from: Dave Winer's Scripting News)

If I were designing a social network, I would implement replies differently. When you reply to a post, only the person who wrote the post sees it. If they want they can RT it. The way it works now on all twitter-like systems means most of the replies are basically spam, people using your post as a way to reach people who follow you. 

<br> 

<http://scripting.com/2025/04/06.html#a163805>

---

**@Dave Winer's Scripting News** (date: 2025-04-06, from: Dave Winer's Scripting News)

BTW, when you post something on Bluesky it's just a tweet. These things don't need different names on each platform. 

<br> 

<http://scripting.com/2025/04/06.html#a163543>

---

**@Dave Winer's Scripting News** (date: 2025-04-06, from: Dave Winer's Scripting News)

I like people who stand up and speak the truth. This is one of the silver linings of this crisis. There's no real advantage at this point in trying to play it safe, to not be noticed. So I like what Chris Murphy, Senator from Connecticut has been saying. 

<br> 

<http://scripting.com/2025/04/06.html#a163058>

---

**@Dave Winer's Scripting News** (date: 2025-04-06, from: Dave Winer's Scripting News)

I used to tell friends you can't go wrong buying the S&P 500. The president is rated by now the stock market does, and so over the long haul you can expect steady growth from the S&P 500, and it keeps things really simple. Well, have to say -- that's no longer good advice. Maybe real estate? Outside the United States? I don't know. It depends on what the people of this country do, and if our representatives are listening. 

<br> 

<http://scripting.com/2025/04/06.html#a162836>

---

## Ural Notes Part 6: More Electrical Work

date: 2025-04-06, updated: 2025-04-06, from: Russell Graves, Syonyk's Project Blog

 

<br> 

<https://www.sevarg.net/2025/04/06/ural-notes-part-6-more-electrical/>

---

**@Dave Winer's Scripting News** (date: 2025-04-06, from: Dave Winer's Scripting News)

MAGA's goal, it turns out, was the Great Depression. 

<br> 

<http://scripting.com/2025/04/06.html#a143650>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-04-06, from: Miguel de Icaza Mastondon feed)

<p>If I were applying to college, this would be my application:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114291406112736885>

---

## April 4, 2025

date: 2025-04-06, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/160708779/5b70ec97f345cf6e7c2e3fddbbcdb5a3.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/160708779/5b70ec97f345cf6e7c2e3fddbbcdb5a3.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/april-4-2025-49c>

---

## Massive Crowds Everywhere! And Everywhere You Look, You Will See The True Leaders of This Next Revolution

date: 2025-04-06, from: Michael Moore's blog

Plus &#8212; 36 More Devastatingly Perfect Portraits of Donald Trump... 

<br> 

<https://www.michaelmoore.com/p/massive-crowds-everywhere-and-everywhere>

---

## Fortunate Son — Now and Then

date: 2025-04-06, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/fortunate-son-now-and-then>

---

## April 5, 2025

date: 2025-04-06, from: Heather Cox Richardson blog

It&#8217;s been quite a week. 

<br> 

<https://heathercoxrichardson.substack.com/p/april-5-2025>

---

## Sunday thought

date: 2025-04-06, from: Robert Reich's blog

The importance of taking care of yourself 

<br> 

<https://robertreich.substack.com/p/sunday-thought-1d6>

---

**@Dave Winer's Scripting News** (date: 2025-04-06, from: Dave Winer's Scripting News)

And btw it could be <a href="https://en.wikipedia.org/wiki/Nuclear_weapons_of_the_United_States">worse</a>. <span class="spOldSchoolEmoji">💥</span> 

<br> 

<http://scripting.com/2025/04/05.html#a015405>

