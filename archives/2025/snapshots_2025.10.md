---
title: snapshots
updated: 2025-03-16 06:07:38
---

# snapshots

(date: 2025-03-16 06:07:38)

---

## Building the Resistance

date: 2025-03-16, from: Our Future.org

Our fight for democracy is not about left or right, or who you voted for - it's about who gets to live with dignity. Right now, greedy oligarchs think our destiny is in their hands: democracy is just another shiny toy their billions can buy, and there’s no politician or public institution they can’t bend [&#8230;]
<p><a href="https://ourfuture.org/20250316/building-the-resistance" rel="nofollow">Source</a></p> 

<br> 

<https://ourfuture.org/20250316/building-the-resistance>

---

## Construyendo la Resistencia

date: 2025-03-16, from: Our Future.org

Nuestra lucha para la democracia no es de izquiedas ni derechas - se trata de quién puede vivir con dignidad. En este momento, unos pocos codiciosos creen que son los maestros de nuestro destino: la democracia es un juguete para ellos. Quieren comprarla con sus miles de millones de dólares. Piensan que no hay político [&#8230;]
<p><a href="https://ourfuture.org/20250316/construyendo-la-resistencia" rel="nofollow">Source</a></p> 

<br> 

<https://ourfuture.org/20250316/construyendo-la-resistencia>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

Ralph Nader: Stay Silent and Stay Powerless Against Trump’s Tyranny. Must-read. 

<br> 

<https://nader.org/2025/03/14/stay-silent-and-stay-powerless-against-trumps-tyranny/>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

Maps: Where Trump Voter Jobs Will Be Hit by Tariffs. 

<br> 

<https://www.nytimes.com/interactive/2025/03/15/business/economy/tariffs-trump-maps-voters.html?unlocked_article_code=1.4U4.xPci.Y3BsgoZoorzn&smid=url-share>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

Trump admin makes Asheville remove ‘DEI’ language to access hurricane relief aid. Think where this could go. You want health care? Buy a Tesla first. 

<br> 

<https://www.yahoo.com/news/trump-admin-makes-asheville-remove-192212840.html>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

A man says his stepmom locked him in a room for decades. He escaped by setting a fire. 

<br> 

<https://www.npr.org/2025/03/13/nx-s1-5327122/connecticut-captive-stepmom-house-fire>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

National Park Workers Ordered to Use Talking Points on Trump Cuts. 

<br> 

<https://www.propublica.org/article/national-parks-staff-cuts-talking-points>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

X-rated way Canada could ‘win trade war’ — ban Pornhub in US. 

<br> 

<https://www.news.com.au/technology/online/xrated-way-canada-could-win-trade-war-ban-pornhub-in-us/news-story/ec0047160e5668357309e99b4c3993c5>

---

## Inflation

date: 2025-03-16, from: Paul Krugman

Including how to think about Trumpflation 

<br> 

<https://paulkrugman.substack.com/p/inflation>

---

**@Tomosino's Mastodon feed** (date: 2025-03-16, from: Tomosino's Mastodon feed)

<p>audiobookshelf is pretty fantastic</p> 

<br> 

<https://tilde.zone/@tomasino/114171595601711244>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

It’s a good thing Spielberg made Schindler’s List. This scene about “essential workers” is an eye opener. 

<br> 

<https://m.youtube.com/watch?v=TDo6eHyeI8E>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

There was a time, 1999 specifically, when writing for the web in a web browser was a strange and new idea. That era lasted until 2006 when Twitter emerged, removing almost all the features of writing and adding character limits. That had enormous impact on the political and creative worlds. The era of wood chipping people and ideas. 

<br> 

<http://scripting.com/davenet/1999/05/24/editThisPage.html>

---

## mlx-community/OLMo-2-0325-32B-Instruct-4bit

date: 2025-03-16, updated: 2025-03-16, from: Simon Willison’s Weblog

<p><strong><a href="https://huggingface.co/mlx-community/OLMo-2-0325-32B-Instruct-4bit">mlx-community/OLMo-2-0325-32B-Instruct-4bit</a></strong></p>
OLMo 2 32B <a href="https://simonwillison.net/2025/Mar/13/ai2/">claims to be</a> "the first fully-open model (all data, code, weights, and details are freely available) to outperform GPT3.5-Turbo and GPT-4o mini". Thanks to the MLX project here's a recipe that worked for me to run it on my Mac, via my <a href="https://github.com/simonw/llm-mlx">llm-mlx</a> plugin.</p>
<p>To install the model:</p>
<pre><code>llm install llm-mlx
llm mlx download-model mlx-community/OLMo-2-0325-32B-Instruct-4bit
</code></pre>
<p>That downloads 17GB to <code>~/.cache/huggingface/hub/models--mlx-community--OLMo-2-0325-32B-Instruct-4bit</code>.</p>
<p>To start an interactive chat with OLMo 2:</p>
<pre><code>llm chat -m mlx-community/OLMo-2-0325-32B-Instruct-4bit
</code></pre>
<p>Or to run a prompt:</p>
<pre><code>llm -m mlx-community/OLMo-2-0325-32B-Instruct-4bit 'Generate an SVG of a pelican riding a bicycle' -o unlimited 1
</code></pre>
<p>The <code>-o unlimited 1</code> removes the cap on the number of output tokens - the default for <code>llm-mlx</code> is 1024 which isn't enough to attempt to draw a pelican.</p>
<p>The <a href="https://gist.github.com/simonw/53f00731d494439d4aeca6bdd55368ca">pelican it drew</a> is refreshingly abstract:</p>
<p><img alt="Blue and black wiggly lines looking more like a circuit diagram than a pelican riding a bicycle" src="https://static.simonwillison.net/static/2025/olmo2-pelican.jpg" />

    <p><small></small>Via <a href="https://twitter.com/awnihannun/status/1900408729268609309">@awnihannun</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/mlx">mlx</a>, <a href="https://simonwillison.net/tags/ai2">ai2</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/16/olmo2/#atom-everything>

---

**@Robert's feed at BlueSky** (date: 2025-03-16, from: Robert's feed at BlueSky)

Brilliant

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkhmrtg3nk2p>

---

**@Robert's feed at BlueSky** (date: 2025-03-16, from: Robert's feed at BlueSky)

This is just so flipping stupid but absolutely unsurprising how stupid. 👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkhmec5eqs2p>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

OK man says Social Security benefits terminated without warning or explanation. 

<br> 

<https://www.wkrn.com/news/national/oklahoma-man-says-social-security-benefits-terminated-without-warning-or-explanation/>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

Voters fear Social Security cuts and put heat on GOP over Musk and DOGE. 

<br> 

<https://apnews.com/article/musk-trump-doge-social-security-92de2ce547df0dcdcc00a5876e1a7bd6>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

Hands Off! March on D.C. — April 5. 

<br> 

<https://www.mobilize.us/handsoff/event/764186/>

---

**@Dave Winer's linkblog** (date: 2025-03-16, from: Dave Winer's linkblog)

Serbia&#39;s largest-ever rally sees 325,000 protest government. 

<br> 

<https://www.bbc.com/news/articles/cx2g8v32q30o>

---

## Pine64’s RISC-V tablet now ships with a Debian-based Linux distro and improved hardware

date: 2025-03-15, from: Liliputing

<p>The PineTab-V is a 10.1 inch tablet with a 1280 x 800 pixel IPS LCD display, 8GB of LPDDR4 memory, 128GB of eMMC storage, and a detachable keyboard with backlit keys. What really makes it different from most tablets though is that it&#8217;s powered by a RISC-V processor rather than an ARM or x86 chip. Pine64 began [&#8230;]</p>
<p>The post <a href="https://liliputing.com/pine64s-risc-v-tablet-now-ships-with-a-debian-based-linux-distro-and-improved-hardware/">Pine64&#8217;s RISC-V tablet now ships with a Debian-based Linux distro and improved hardware</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/pine64s-risc-v-tablet-now-ships-with-a-debian-based-linux-distro-and-improved-hardware/>

---

**@Dave Winer's linkblog** (date: 2025-03-15, from: Dave Winer's linkblog)

Why write right? 

<br> 

<https://mrbrianpuck.wordpress.com/2025/03/15/why-write-right/>

---

**@Dave Winer's linkblog** (date: 2025-03-15, from: Dave Winer's linkblog)

Do you really think the American military would follow an order to attack Canada? 

<br> 

<https://mastodon.social/@evan@cosocial.ca/114168125924351605>

---

## Lilbits: Amazon kills local processing of Alexa voice requests, Google replaces Assistant with Gemini

date: 2025-03-15, from: Liliputing

<p>Last month Amazon introduced Alexa+ which uses generative AI to offer an enhanced version of Amazon&#8217;s voice assistant software. It will do a better job of engaging in natural-sounding conversations, remembering things you&#8217;ve told it in the past, and have the ability to interact with other apps and services on your behalf. But Alexa+ also [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-amazon-kills-local-processing-of-alexa-voice-requests-google-replaces-assistant-with-gemini/">Lilbits: Amazon kills local processing of Alexa voice requests, Google replaces Assistant with Gemini</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-amazon-kills-local-processing-of-alexa-voice-requests-google-replaces-assistant-with-gemini/>

---

**@Robert's feed at BlueSky** (date: 2025-03-15, from: Robert's feed at BlueSky)

I needed something fun to read, this was nice. https://guitar-maker.blogspot.com/2025/03/a-few-updates.html 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkgtvebnl223>

---

**@Dave Winer's linkblog** (date: 2025-03-15, from: Dave Winer's linkblog)

Arlington Cemetery strips content on black and female veterans from website. 

<br> 

<https://www.bbc.com/news/articles/cz03gjnxe25o?xtor=AL-71-[partner]-[bbc.news.twitter]-[headline]-[news]-[bizdev]-[isapi]&at_link_origin=BBCWorld&at_ptr_name=twitter&at_link_type=web_link&at_campaign=Social_Flow&at_bbc_team=editorial&at_link_id=22A1947E-01C2-11F0-A76B-C8861D16B53E&at_campaign_type=owned&at_format=link&at_medium=social>

---

**@Robert's feed at BlueSky** (date: 2025-03-15, from: Robert's feed at BlueSky)

An interesting bit of history.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkgnea6vbs23>

---

**@Robert's feed at BlueSky** (date: 2025-03-15, from: Robert's feed at BlueSky)

We're not on a slippery slope, we're on a slippery PRECIPICE!

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkgna4wtw223>

---

**@Robert's feed at BlueSky** (date: 2025-03-15, from: Robert's feed at BlueSky)

Not getting coverage but the type of activity that can set us back a generation. So frustrating.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkgn3whfxc23>

---

**@Robert's feed at BlueSky** (date: 2025-03-15, from: Robert's feed at BlueSky)

Made me laugh 👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkgllxgmps23>

---

**@Dave Winer's linkblog** (date: 2025-03-15, from: Dave Winer's linkblog)

Matt Terenzio has a great address for his new blog, where he writes about his vision for The Writer&#39;s Web. 

<br> 

<https://feeds.social/>

---

## Humiliation

date: 2025-03-15, updated: 2025-03-15, from: Robin Rendle Essays

 

<br> 

<https://robinrendle.com/notes/humiliation/>

---

## AI Slop Podcasts?

date: 2025-03-15, from: Chris Coyier blog

My kid likes listening to podcasts sometimes and it&#8217;s cool with me! Story Pirates, for example, rules. She must have typed in &#8220;Bluey&#8221; at some point into the podcast app we use and found the Bluey Storytime Podcast. It looks kind of official. That&#8217;s real Bluey art, it uses the word &#8220;Bluey&#8221; in the title, [&#8230;] 

<br> 

<https://chriscoyier.net/2025/03/15/ai-slop-podcasts/>

---

**@Tomosino's Mastodon feed** (date: 2025-03-15, from: Tomosino's Mastodon feed)

<p>Ditched Audible for libro.fm today. Finally a good option that lets you download your purchases DRM free without workarounds. You can support a local shop too. Nice. </p><p>I've got a referral code if you want</p> 

<br> 

<https://tilde.zone/@tomasino/114167127129193182>

---

## Quoting Andrew Ng

date: 2025-03-15, updated: 2025-03-15, from: Simon Willison’s Weblog

<blockquote cite="https://www.deeplearning.ai/the-batch/issue-292/"><p>Some people today are discouraging others from learning programming on the grounds AI will automate it. This advice will be seen as some of the worst career advice ever given. I disagree with the Turing Award and Nobel prize winner who wrote, “It is far more likely that the programming occupation will become extinct [...] than that it will become all-powerful. More and more, computers will program themselves.”​ Statements discouraging people from learning to code are harmful!</p>
<p>In the 1960s, when programming moved from punchcards (where a programmer had to laboriously make holes in physical cards to write code character by character) to keyboards with terminals, programming became easier. And that made it a better time than before to begin programming. Yet it was in this era that Nobel laureate Herb Simon wrote the words quoted in the first paragraph. Today’s arguments not to learn to code continue to echo his comment.</p>
<p>As coding becomes easier, more people should code, not fewer!</p></blockquote>
<p class="cite">&mdash; <a href="https://www.deeplearning.ai/the-batch/issue-292/">Andrew Ng</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/ai">ai</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/15/andrew-ng/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-15, from: Dave Winer's linkblog)

Sebastian Abbott: The Distracted Procrastinating Writer&#39;s Web. 

<br> 

<https://sebabbott.net/2025/03/15/the-writers-web.html>

---

**@Feed for Alt USDS** (date: 2025-03-15, from: Feed for Alt USDS)

We've been busy.... Busy talking the The New Yorker Radio Hour 🎙️🥰  https://www.wnycstudios.org/podcasts/tnyradiohour/articles/we-the-builders-federal-employees-stand-up-to-doge 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lkg7nuig3s22>

---

## My video chat with the mighty Maureen Dowd

date: 2025-03-15, from: Tina Brown

The topics we raced through: Maureen&#8217;s new book Notorious, Silicon Valley&#8217;s Zeus complex, how fame changes movie stars, post-#MeToo Hollywood, and the disappointment of Obama&#8217;s post-presidency. 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/159105765/cf2e355f715d11d2f8086c072e466a67.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/159105765/cf2e355f715d11d2f8086c072e466a67.mp3" target="_blank">download audio/mpeg</a><br> 

<https://tinabrown.substack.com/p/my-video-chat-with-the-mighty-maureen>

---

## Jaws vs. the Megalodon: This Time, It’s Peer-Reviewed

date: 2025-03-15, from: 404 Media Group

The epic shark may have been a full 80 feet long with a slender build, according to new research. 

<br> 

<https://www.404media.co/jaws-vs-the-megalodon-this-time-its-peer-reviewed/>

---

**@Feed for Alt USDS** (date: 2025-03-15, from: Feed for Alt USDS)

A small but significant update especially for our followers here: our best engineer made a custom icon just for Bluesky on wethebuilders.org 🥰 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lkg5gpxabc2w>

---

**@Dave Winer's linkblog** (date: 2025-03-15, from: Dave Winer's linkblog)

Much of what the U.S. president has done to curb independent media echoes the Hungarian autocrat Viktor Orbán’s playbook. 

<br> 

<https://www.theatlantic.com/ideas/archive/2025/03/trumps-press-freedom-hungary-orban/682060/?gift=f35zZN0v_gDFE8xNwlQAHdwxOalGWagil2BRvDJbzhI&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

**@Dave Winer's linkblog** (date: 2025-03-15, from: Dave Winer's linkblog)

Instagram is now a (photo) information network. 

<br> 

<https://om.co/2025/03/14/instagram-is-now-a-photo-information-network/>

---

**@Dave Winer's linkblog** (date: 2025-03-15, from: Dave Winer's linkblog)

Walz, Newsom and Buttigieg Are Among Democrats Stirring 2028 Presidential Chatter. Add AOC to your list. 

<br> 

<https://www.nytimes.com/2025/03/15/us/politics/democrats-president-2028-buttigieg-newsom-walz.html>

---

## How Worried Should We Be About the Economy?

date: 2025-03-15, from: Paul Krugman

A conversation with Neil Dutta 

<br> 

<https://paulkrugman.substack.com/p/how-worried-should-we-be-about-the>

---

**@Dave Winer's linkblog** (date: 2025-03-15, from: Dave Winer's linkblog)

South Milwaukee woman deported to Laos is stranded with few options. 

<br> 

<https://www.jsonline.com/story/news/local/milwaukee/2025/03/14/south-milwaukee-woman-deported-to-laos-is-stranded-with-few-options/82369691007/>

---

**@Dave Winer's linkblog** (date: 2025-03-15, from: Dave Winer's linkblog)

Tesla Takedown. 

<br> 

<https://en.m.wikipedia.org/wiki/Tesla_Takedown>

---

## TIL: Styling an HTML dialog modal to take the full height of the viewport

date: 2025-03-14, updated: 2025-03-14, from: Simon Willison’s Weblog

<p><strong><a href="https://til.simonwillison.net/css/dialog-full-height">TIL: Styling an HTML dialog modal to take the full height of the viewport</a></strong></p>
I spent some time today trying to figure out how to have a modal <code>&lt;dialog&gt;</code> element present as a full height side panel that animates in from the side. The full height bit was hard, until Natalie helped me figure out that browsers apply a default <code>max-height: calc(100% - 6px - 2em);</code> rule which needs to be over-ridden.</p>
<p>Also included: some <a href="https://til.simonwillison.net/css/dialog-full-height#user-content-spelunking-through-the-html-specification">spelunking through the HTML spec</a> to figure out where that <code>calc()</code> expression was first introduced. The answer was <a href="https://github.com/whatwg/html/commit/979af1532">November 2020</a>.


    <p>Tags: <a href="https://simonwillison.net/tags/css">css</a>, <a href="https://simonwillison.net/tags/til">til</a>, <a href="https://simonwillison.net/tags/html">html</a>, <a href="https://simonwillison.net/tags/natalie-downe">natalie-downe</a>, <a href="https://simonwillison.net/tags/web-standards">web-standards</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/14/styling-an-html-dialog/#atom-everything>

---

**@Feed for Alt USDS** (date: 2025-03-14, from: Feed for Alt USDS)

🚨 21 USDS employees resigned after their org was rebranded as DOGE—yes, the U.S. DOGE Service. 🫣

Itir Cole, a senior technologist at the CDC, saw the real impact—on food safety, public health, and preventing another pandemic.

What’s at stake? 👀 https://www.wethebuilders.org/posts/i-resigned-from-my-job-at-usds

#publichealth 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lkepw2ly5y2p>

---

**@Tomosino's Mastodon feed** (date: 2025-03-14, from: Tomosino's Mastodon feed)

<p>If you had to go on stage and present on a topic for an hour right now without any preparation what would you talk about?</p> 

<br> 

<https://tilde.zone/@tomasino/114163252975153503>

---

## TSA Says Its Credit Cards for Bomb-Sniffing Dogs Are Cut Off

date: 2025-03-14, from: 404 Media Group

The statement follows an alleged internal email which said requests for dog food and vet visits had been put on hold. 

<br> 

<https://www.404media.co/tsa-k9-bomb-sniffing-dogs-funding/>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

Doc has a new format for his blog. 

<br> 

<https://doc.searls.com/2025/03/14/a-short-history-of-now/>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

Philippe Pétain was a French General who served as leader of Vichy France between 1940 and 1944. 

<br> 

<https://simple.m.wikipedia.org/wiki/Philippe_P%C3%A9tain>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

What Trump and Musk Want With Social Security. 

<br> 

<https://www.theatlantic.com/newsletters/archive/2025/03/what-trump-and-musk-want-with-social-security/682056/?gift=f35zZN0v_gDFE8xNwlQAHYaBzAXlP4PqZ4VM3ekG6fk&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

## Apple’s Siri Chief Calls AI Delays Ugly and Embarrassing, Promises Fixes

date: 2025-03-14, updated: 2025-03-14, from: Simon Willison’s Weblog

<p><strong><a href="https://www.bloomberg.com/news/articles/2025-03-14/apple-s-siri-chief-calls-ai-delays-ugly-and-embarrassing-promises-fixes">Apple’s Siri Chief Calls AI Delays Ugly and Embarrassing, Promises Fixes</a></strong></p>
Mark Gurman reports on some leaked details from internal Apple meetings concerning the delays in shipping personalized Siri. This note in particular stood out to me:</p>
<blockquote>
<p>Walker said the decision to delay the features was made because of quality issues and that the company has found the technology only works properly up to two-thirds to 80% of the time. He said the group “can make more progress to get those percentages up, so that users get something they can really count on.” [...]</p>
<p>But Apple wants to maintain a high bar and only deliver the features when they’re polished, he said. “These are not quite ready to go to the general public, even though our competitors might have launched them in this state or worse.”</p>
</blockquote>
<p>I imagine it's a lot harder to get reliable results out of small, local LLMs that run on an iPhone. Features that fail 1/3 to 1/5 of the time are unacceptable for a consumer product like this.

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43365517">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/apple">apple</a>, <a href="https://simonwillison.net/tags/apple-intelligence">apple-intelligence</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/14/ai-delays/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

Scripting News: The writer&#39;s web. 

<br> 

<http://scripting.com/2025/03/13/132830.html>

---

## How ProPublica Uses AI Responsibly in Its Investigations

date: 2025-03-14, updated: 2025-03-14, from: Simon Willison’s Weblog

<p><strong><a href="https://www.propublica.org/article/using-ai-responsibly-for-reporting">How ProPublica Uses AI Responsibly in Its Investigations</a></strong></p>
Charles Ornstein describes how ProPublic used an LLM to help analyze data for their recent story <a href="https://www.propublica.org/article/ted-cruz-woke-grants-national-science-foundation">A Study of Mint Plants. A Device to Stop Bleeding. This Is the Scientific Research Ted Cruz Calls “Woke.”</a> by Agnel Philip and Lisa Song.</p>
<p>They ran ~3,400 grant descriptions through a prompt that included the following:</p>
<blockquote>
<p>As an investigative journalist, I am looking for the following information</p>
<p>-- </p>
<p><code>woke_description</code>: A short description (at maximum a paragraph) on why this grant is being singled out for promoting "woke" ideology, Diversity, Equity, and Inclusion (DEI) or advanced neo-Marxist class warfare propaganda. Leave this blank if it's unclear.</p>
<p><code>why_flagged</code>: Look at the "STATUS", "SOCIAL JUSTICE CATEGORY", "RACE CATEGORY", "GENDER CATEGORY" and "ENVIRONMENTAL JUSTICE CATEGORY" fields. If it's filled out, it means that the author of this document believed the grant was promoting DEI ideology in that way. Analyze the "AWARD DESCRIPTIONS" field and see if you can figure out why the author may have flagged it in this way. Write it in a way that is thorough and easy to understand with only one description per type and award.</p>
<p><code>citation_for_flag</code>: Extract a very concise text quoting the passage of "AWARDS DESCRIPTIONS" that backs up the "why_flagged" data.</p>
</blockquote>
<p>This was only the first step in the analysis of the data:</p>
<blockquote>
<p>Of course, members of our staff reviewed and confirmed every detail before we published our story, and we called all the named people and agencies seeking comment, which remains a must-do even in the world of AI.</p>
</blockquote>
<p>I think journalists are particularly well positioned to take advantage of LLMs in this way, because a big part of journalism is about deriving the truth from multiple unreliable sources of information. Journalists are deeply familiar with fact-checking, which is a critical skill if you're going to report with the assistance of these powerful but unreliable models.</p>
<p>Agnel Philip:</p>
<blockquote>
<p>The tech holds a ton of promise in lead generation and pointing us in the right direction. But in my experience, it still needs a lot of human supervision and vetting. If used correctly, it can both really speed up the process of understanding large sets of information, and if you’re creative with your prompts and critically read the output, it can help uncover things that you may not have thought of.</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/structured-extraction">structured-extraction</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/data-journalism">data-journalism</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/journalism">journalism</a>, <a href="https://simonwillison.net/tags/ethics">ethics</a>, <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/14/propublica-ai/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

I now think of this blog as my own magazine, and RSS as my paper boy. 

<br> 

<https://thoughts.uncountable.uk/re-the-writers-web/>

---

## Something Is Rotten in the State of Cupertino

date: 2025-03-14, updated: 2025-03-14, from: Simon Willison’s Weblog

<p><strong><a href="https://daringfireball.net/2025/03/something_is_rotten_in_the_state_of_cupertino">Something Is Rotten in the State of Cupertino</a></strong></p>
John Gruber's blazing takedown of Apple's failure to ship many of the key Apple Intelligence features they've been actively promoting for the past twelve months.</p>
<blockquote>
<p>The fiasco here is not that Apple is late on AI. It's also not that they had to announce an embarrassing delay on promised features last week. Those are problems, not fiascos, and problems happen. They're inevitable. [...] The fiasco is that Apple pitched a story that wasn't true, one that <em>some</em> people within the company surely understood wasn't true, and they set a course based on that.</p>
</blockquote>
<p>John divides the Apple Intelligence features into the ones that were demonstrated to members of the press (including himself) at various events over the past year compared to things like "personalized Siri" that were only ever shown as concept videos. The ones that were demonstrated have all shipped. The concept video features are <a href="https://simonwillison.net/2025/Mar/8/delaying-personalized-siri/">indeterminably delayed</a>.


    <p>Tags: <a href="https://simonwillison.net/tags/apple-intelligence">apple-intelligence</a>, <a href="https://simonwillison.net/tags/apple">apple</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/john-gruber">john-gruber</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/14/something-is-rotten/#atom-everything>

---

## Merklemap runs a 16TB PostgreSQL

date: 2025-03-14, updated: 2025-03-14, from: Simon Willison’s Weblog

<p><strong><a href="https://news.ycombinator.com/item?id=43364668#43365833">Merklemap runs a 16TB PostgreSQL</a></strong></p>
Interesting thread on Hacker News where Pierre Barre describes the database architecture behind <a href="https://www.merklemap.com/">Merklemap</a>, a certificate transparency search engine.</p>
<blockquote>
<p>I run a 100 billion+ rows Postgres database [0], that is around 16TB, it's pretty painless!</p>
<p>There are a few tricks that make it run well (PostgreSQL compiled with a non-standard block size, ZFS, careful VACUUM planning). But nothing too out of the ordinary.</p>
<p>ATM, I insert about 150,000 rows a second, run 40,000 transactions a second, and read 4 million rows a second.</p>
<p>[...]</p>
<p>It's self-hosted on bare metal, with standby replication, normal settings, nothing "weird" there.</p>
<p>6 NVMe drives in raidz-1, 1024GB of memory, a 96 core AMD EPYC cpu.</p>
<p>[...]</p>
<p>About 28K euros of hardware per replica [one-time cost] IIRC + [ongoing] colo costs.</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/scaling">scaling</a>, <a href="https://simonwillison.net/tags/postgresql">postgresql</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/14/merklemap-runs-a-16tb-postgresql/#atom-everything>

---

## Authors Alliance Comment on US AI Action Plan

date: 2025-03-14, from: Authors Union blogs

Today, we submitted a response to a Request for Information from the Office of Science and Technology Policy (OSTP). The OSTP is seeking to develop an &#8220;AI Action Plan,&#8221; to sustain and accelerate the development of AI in the United States.&#160; As an organization dedicated to advancing the interests of authors who wish to share [&#8230;] 

<br> 

<https://www.authorsalliance.org/2025/03/14/authors-alliance-comment-on-us-ai-action-plan/>

---

## Retroid Pocket Classic is a compact gaming handheld with a 3.92 inch AMOLED display

date: 2025-03-14, from: Liliputing

<p>The Retroid Pocket Classic is a new gaming handheld with an old-school design that&#8217;s heavily inspired by classic consoles like the Nintendo Game Boy. But with a 3.92 inch, 1240 x 1080 pixel, 500 nit AMOLED display and an unspecified 4nm Qualcomm processor, this little device has plenty of modern bits as well. Retroid will begin [&#8230;]</p>
<p>The post <a href="https://liliputing.com/retroid-pocket-classic-is-a-compact-gaming-handheld-with-a-3-92-inch-amoled-display/">Retroid Pocket Classic is a compact gaming handheld with a 3.92 inch AMOLED display</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/retroid-pocket-classic-is-a-compact-gaming-handheld-with-a-3-92-inch-amoled-display/>

---

## Strongbox Acquired by Applause Group

date: 2025-03-14, from: Michael Tsai

Applause (Reddit): After years of working on Strongbox independently, Mark McGuill has made the decision to entrust the future of this exceptional product to our team at Applause.Applause is a team of indie developers who&#8217;ve been building iOS and macOS apps since 2010.[&#8230;]Our goal isn&#8217;t to change what makes Strongbox special&#8212;it&#8217;s to build on it. [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/14/strongbox-acquired-by-applause-group/>

---

## DMA Compliance: Default Maps App in EU

date: 2025-03-14, from: Michael Tsai

Joe Rossignol: The upcoming iOS 18.4 update introduces an option to set a default navigation app, other than Apple Maps, but unfortunately this new setting is limited to users in the EU. There, you can now set an app like Google Maps or Waze as your default navigation app on the iPhone by opening the [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/14/dma-compliance-default-maps-app-in-eu/>

---

## Rewriting the TypeScript Compiler in Go

date: 2025-03-14, from: Michael Tsai

Anders Hejlsberg (tweet, video, Hacker News): To meet those goals, we&#8217;ve begun work on a native port of the TypeScript compiler and tools. The native implementation will drastically improve editor startup, reduce most build times by 10x, and substantially reduce memory usage. By porting the current codebase, we expect to be able to preview a [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/14/rewriting-the-typescript-compiler-in-go/>

---

## App Review, Never Change

date: 2025-03-14, from: Michael Tsai

Brandon Titus: Instead of rejecting apps over tiny wording disputes, mentions of android, and business model disagreements could Apple PLEASE enforce 4.5.4:&#8220;Push Notifications should not be used for promotions or direct marketing purposes unless customers have explicitly opted in to receive them&#8221; Ole Zorn: Apple has just rejected my beta of Pythonista Lab because they [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/14/app-review-never-change/>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

From Public Service to Public Office: A Call for Former Federal Workers -- Run for Something. (We could use a new Senate minority leader.) 

<br> 

<https://www.mobilize.us/runforsomething/event/762475/>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

Mark Kelly ditches his Tesla. 

<br> 

<https://www.politico.com/live-updates/2025/03/14/congress/mark-kelly-tesla-protest-00230946>

---

## Retroid Pocket Flip2 is a faster handheld game console with upgraded controllers

date: 2025-03-14, from: Liliputing

<p>Two years after releasing the Retroid Pocket Flip handheld game console with a 4.7 inch display and a clamshell design, Retroid is ready for round two. The new Retroid Pocket Flip2 has a similar design to its predecessor, but it brings a few key upgrades including a faster processor, better display, and improved controllers. It&#8217;s also [&#8230;]</p>
<p>The post <a href="https://liliputing.com/retroid-pocket-flip2-is-a-faster-handheld-game-console-with-upgraded-controllers/">Retroid Pocket Flip2 is a faster handheld game console with upgraded controllers</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/retroid-pocket-flip2-is-a-faster-handheld-game-console-with-upgraded-controllers/>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

First They Came for Columbia. 

<br> 

<https://www.thecrimson.com/article/2025/3/14/enos-levitsky-harvard-columbia-trump/>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

Trump demands admissions overhaul and control of academic department at Columbia University. 

<br> 

<https://www.pbs.org/newshour/education/trump-demands-admissions-overhaul-and-control-of-academic-department-at-columbia-university>

---

## Could &udm=14 Break?

date: 2025-03-14, updated: 2025-03-14, from: Tedium site

That popular single-serving site I built to work around Google’s AI snippets could, unfortunately, see an infusion of AI soon. Sorry to be the bearer of bad news. 

<br> 

<https://feed.tedium.co/link/15204/16983633/udm14-search-hack-google-ai-testing>

---

## Behind the Blog: Company Comments and a Party Recap

date: 2025-03-14, from: 404 Media Group

This week, we discuss companies' responses to being monitored by an ICE contractor, caring about the little things, weight loss drug ads, and how our SXSW shindig went. 

<br> 

<https://www.404media.co/behind-the-blog-company-comments-and-a-party-recap/>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

&quot;Antisemitism&quot; and Antisemitism. 

<br> 

<https://snyder.substack.com/p/antisemitism-and-antisemitism?publication_id=310897&post_id=159072868&isFreemail=true&r=w33x&triedRedirect=true>

---

## Federal Worker Protections Endangered

date: 2025-03-14, from: Guy Kawasaki blog

James L. Perry, Indiana University. 

<br> 

<https://guykawasaki.substack.com/p/federal-worker-protections-endangered>

---

## Europe Becomes a Union

date: 2025-03-14, from: Prof. Scott Galloway, No Mercy/No Malace blog

<p>The president is pulling back the security blanket that’s protected Europe since 1945 and imposing 25% tariffs on steel and aluminum imports, claiming the European Union was formed to “screw” the United States. As the U.S. upends transatlantic ties, the EU is awakening to the reality that its rich uncle has lost his shit and [&#8230;]</p>
<p>The post <a href="https://www.profgalloway.com/europe-becomes-a-union/">Europe Becomes a Union</a> appeared first on <a href="https://www.profgalloway.com">No Mercy / No Malice</a>.</p>
 

<br> 

<https://www.profgalloway.com/europe-becomes-a-union/>

---

## Hype, Anthropic’s Dario Amodei, the podcasters who love him — and how the New York Times’ commentary on AI has degenerated into industry cheerleading

date: 2025-03-14, from: Gary Marcus blog

Real journalists do due diligence 

<br> 

<https://garymarcus.substack.com/p/hype-anthropics-dario-amodei-the>

---

## Google Being Forced To Sell Chrome is Not Good for the Web

date: 2025-03-14, from: Chris Coyier blog

You&#8217;ve got a monopoly on lemonade because you pay all the grocery stores to be the default lemonade. So we&#8217;re going to force you sell your car. What&#8217;s with the weird redirect? If the monopoly is directly caused by paying the grocery stores for placement, then stop that part. We can see this exact redirect [&#8230;] 

<br> 

<https://chriscoyier.net/2025/03/14/google-being-forced-to-sell-chrome-is-not-good-for-the-web/>

---

## RCS Encryption will let Android and iOS users send secure messages

date: 2025-03-14, from: Liliputing

<p>The RCS communication protocol is basically next-gen SMS, adding support for features like typing indicators, read receipts, and higher-quality image, video, and file sharing features. Google has been pushing the protocol for years, and last year Apple finally added support for RCS to its Messages app, bringing significant improvements to cross-platform (iOS and Android) chats. [&#8230;]</p>
<p>The post <a href="https://liliputing.com/rcs-encryption-will-let-android-and-ios-users-send-secure-messages/">RCS Encryption will let Android and iOS users send secure messages</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/rcs-encryption-will-let-android-and-ios-users-send-secure-messages/>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

I asked ChatGPT to write a blog post using the available technology of 1993. 

<br> 

<https://this.how/earlyWeb/botAuthoredBlogPostFrom1993.html>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

Doc Searls wrote a blog post in 1992. Very early. I didn&#39;t learn enough to post something on the web myself until 1994. 

<br> 

<https://searls.com/time2grow.html>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

Mark Cuban: Of course Musk would let Tesla tank in return for getting to be the owner of the United States of America. 

<br> 

<https://www.youtube.com/watch?v=u6h6QGVfrgQ>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

Seattle man bought a Tesla just to destroy it in protest against Elon Musk. 

<br> 

<https://www.teslaoracle.com/2025/03/14/seattle-man-bought-a-tesla-just-to-destroy-it-in-protest-against-elon-musk/>

---

## The Legend of Larry Owl

date: 2025-03-14, updated: 2025-03-14, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/14/the-legend-of-larry-owl/>

---

## PureOS Crimson Development Report: February 2025

date: 2025-03-14, from: Purism News and Events

<p>Great to see you again!  In our January update, we worked on enabling essential functionality for the Librem 5 in PureOS Crimson.  This time, we're working on something a little different - a solution to a longstanding issue that applies to both Byzantium and Crimson.</p>
<p>The post <a rel="nofollow" href="https://puri.sm/posts/pureos-crimson-development-report-february-2025/">PureOS Crimson Development Report: February 2025</a> appeared first on <a rel="nofollow" href="https://puri.sm/">Purism</a>.</p>
 

<br> 

<https://puri.sm/posts/pureos-crimson-development-report-february-2025/>

---

## Join my live video chat with the mighty Maureen Dowd today at 1pET. 

date: 2025-03-14, from: Tina Brown

We'll cover her new book Notorious and all the news that's unfit to discuss! 

<br> 

<https://tinabrown.substack.com/p/join-my-live-video-chat-with-the>

---

## PAM unixsock

date: 2025-03-14, from: Miek Giebin blog

Ever felt the need to do something with PAM, like implementing 2FA in SSH? You are left with a few bad choices, among others you&rsquo;ll need to write something (complex) in C. I rather not do that, so I&rsquo;ve created pam-unixsock.
This is a tiny, the most trouble I had with concatenating strings with a space in between, because, you know, C. Anyway tiny.
github.com/AlDanial/cloc v 2.02 T=0.01 s (711.7 files/s, 48601. 

<br> 

<https://miek.nl/2025/march/14/pam-unixsock/>

---

## Everybody Hates Elon

date: 2025-03-14, from: Paul Krugman

And other tales of collapsing confidence 

<br> 

<https://paulkrugman.substack.com/p/everybody-hates-elon>

---

**@Robert's feed at BlueSky** (date: 2025-03-14, from: Robert's feed at BlueSky)

Call your senators!!!

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkctswiipk2d>

---

**@Robert's feed at BlueSky** (date: 2025-03-14, from: Robert's feed at BlueSky)

This is a very good idea.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkcjej5e2c2d>

---

**@Robert's feed at BlueSky** (date: 2025-03-14, from: Robert's feed at BlueSky)

This is way cool and I hope to be able to try it out in the Fall!

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkciydeyss2d>

---

## Quoting Steve Klabnik

date: 2025-03-14, updated: 2025-03-14, from: Simon Willison’s Weblog

<blockquote cite="https://steveklabnik.com/writing/choosing-languages/"><p>[...] in 2013, I did not understand that the things I said had meaning. I hate talking about this because it makes me seem more important than I am, but it’s also important to acknowledge. I saw myself at the time as just Steve, some random guy. If I say something on the internet, it’s like I’m talking to a friend in real life, my words are just random words and I’m human and whatever. It is what it is.</p>
<p>But at that time in my life, that wasn’t actually the case. I was on the Rails team, I was speaking at conferences, and people were reading my blog and tweets. I was an “influencer,” for better or worse. But I hadn’t really internalized that change in my life yet. And so I didn’t really understand that if I criticized something, it was something thousands of people would see.</p></blockquote>
<p class="cite">&mdash; <a href="https://steveklabnik.com/writing/choosing-languages/">Steve Klabnik</a>, Choosing Languages</p>

    <p>Tags: <a href="https://simonwillison.net/tags/steve-klabnik">steve-klabnik</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/14/steve-klabnik/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

Columbia University says it expelled some students who seized building last year. 

<br> 

<https://apnews.com/article/columbia-university-protests-c148d1d01718a4482541a6df6cad8d74?link_source=ta_bluesky_link&taid=67d34fd4b8a1ef00010f59c2>

---

**@Robert's feed at BlueSky** (date: 2025-03-14, from: Robert's feed at BlueSky)

I remember this 👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkcea66xyc2r>

---

**@Robert's feed at BlueSky** (date: 2025-03-14, from: Robert's feed at BlueSky)

Wrote up some of my recent experience with large language models generating web components, https://rsdoiel.github.io/blog/2025/03/13/Building_Web_Component_using_an_LLM.html 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkce4iw74k2r>

---

**@Dave Winer's linkblog** (date: 2025-03-14, from: Dave Winer's linkblog)

AOC: &quot;American people, whether they are Republicans, independents, Democrats, are up in arms about Elon Musk and the actual gutting of federal agencies across the board.&quot; It’s the people, dummy. 

<br> 

<https://www.rawstory.com/alexandria-ocasio-cortez-2671325343/>

---

## GHC 9.12.2 is now available

date: 2025-03-14, from: Glasgow Haskell Compiler

<h1>GHC 9.12.2 is now available</h1>
<h4 class="text-muted">Ben Gamari - 2025-03-14</h4>

<p>The GHC developers are happy to announce the release of GHC 9.12.2.
Binary distributions, source distributions, and documentation are available at
<a href="https://downloads.haskell.org/ghc/9.12.2">downloads.haskell.org</a>.</p>
<p>We hope to have this release available via <code>ghcup</code> shortly. This is a small
release fixing a critical code generation bug, <a href="https://gitlab.haskell.org/ghc/ghc/issues/25653">#25653</a>, affecting some subword
division operations.</p>
<p>As always, GHC’s release status, including planned future releases, can
be found on the GHC Wiki <a href="https://gitlab.haskell.org/ghc/ghc/-/wikis/GHC-status">status</a>.</p>
<p>We would like to thank IOG, the Zw3rk stake pool,
Well-Typed, Tweag I/O, Serokell, Equinix, SimSpace, the Haskell
Foundation, and other anonymous contributors whose on-going financial
and in-kind support has facilitated GHC maintenance and release
management over the years. Finally, this release would not have been
possible without the hundreds of open-source contributors who
contribute their code, tickets, and energy to the GHC project.</p>
<p>As always, do give this release a try and open a <a href="https://gitlab.haskell.org/ghc/ghc/-/issues/new">ticket</a> if you see
anything amiss.</p>
 

<br> 

<http://haskell.org/ghc/blog/20250314-ghc-9.12.2-released.html>

---

## Adding AI-generated descriptions to my tools collection

date: 2025-03-13, updated: 2025-03-13, from: Simon Willison’s Weblog

<p>The <a href="https://tools.simonwillison.net/colophon">/colophon</a> page on my <a href="https://tools.simonwillison.net/">tools.simonwillison.net</a> site lists all 78 of the HTML+JavaScript tools I've built (with <a href="https://simonwillison.net/tags/ai-assisted-programming/">AI assistance</a>) along with their commit histories, including links to prompting transcripts. I wrote about <a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#a-detailed-example">how I built that colophon</a> the other day. It now also includes a description of each tool, generated using Claude 3.7 Sonnet.</p>
<p><img src="https://static.simonwillison.net/static/2025/colophon-llm-prices.jpg" alt="llm-prices.html # The LLM Pricing Calculator helps you estimate costs when using various large language models. Enter the number of input tokens (your prompts) and output tokens (AI responses), along with their respective pricing per million tokens, to calculate the total cost in both dollars and cents. The calculator includes a comprehensive list of preset pricing for popular models like GPT-4o, Claude 3, Gemini, and more. Each preset displays the cost per million tokens for both input and output, which automatically populates the calculator fields when selected. The calculator updates in real-time as you modify values, making it easy to compare costs across different models or estimate expenses for specific usage scenarios. 148bc1 October 16, 2024 20:50 Create llm-prices.html https://gist.github.com/simonw/6b684b5f7d75fb82034fc963cc487530 2e0a70 October 25, 2024 16:32 o1-preview and o1-mini " style="max-width: 100%;" /></p>
<p>This is the single largest chunk of AI-generated text I've ever published on the indexable web. I share lots of LLM transcripts but I usually put them in a secret Gist such that they'll be kept out of search engines.</p>
<p>On the one hand this feels <a href="https://simonwillison.net/tags/slop/">slop adjacent</a> - but I was never going to write documentation for all 78 of those little experiments, yet I find myself forgetting details of how they worked. Just one example: my <a href="https://tools.simonwillison.net/colophon#csv-marker-map.html">CSV marker map</a> tool which I built last year for knocking out an <a href="https://tools.simonwillison.net/csv-marker-map?center=39.061909385087624%2C-96.50390625000001&amp;zoom=5&amp;csv=https%3A%2F%2Fgist.githubusercontent.com%2Fsimonw%2Fdb5c00b61abb61847ece2480d96e96d2%2Fraw%2Fb76475d9f25dec235b89822ed54f9f1b84394df3%2Fsightings.csv">ad-hoc Bigfoot sightings map</a> and then promptly forgot what it could do.</p>
<p>Here's what I got when I ran:</p>
<pre><code>cat csv-marker-map.html | llm -m claude-3.7-sonnet \
  --system "Write a paragraph of documentation for this page as markdown. Do not include a heading. Do not use words like just or simply."
</code></pre>
<blockquote>
<p>This interactive map displays markers based on data from a CSV file. Load data by adding <code>?csv=URL</code> to the page URL, where the CSV must include <code>latitude</code> and <code>longitude</code> columns. You can customize the map with several URL parameters: <code>center</code> (coordinates in format <code>lat,lng</code>), <code>zoom</code> (zoom level), <code>q</code> (location to search for), <code>marker</code> (add individual markers at coordinates), and <code>color</code> (change the default marker color). The map automatically updates the URL as you navigate, preserving your current view. Markers from CSV files appear as small colored circles on the map, while markers specified directly in the URL use the default Leaflet marker style.</p>
</blockquote>
<p>That's genuinely useful. I <a href="https://claude.ai/share/6a07415a-6f72-4e79-90c2-7dc780d60a0d">got Claude</a> to write me a <a href="https://github.com/simonw/tools/blob/main/write_docs.py">write_docs.py</a> script to loop through all 78 files and generate <code>filename.docs.md</code> descriptions that live in the repo, then <a href="https://github.com/simonw/tools/blame/5322f55a2e7006541e80a5ffe13aeb89c74c6cef/build_colophon.py#L195-L213">updated build_colophon.py</a> to include those descriptions if they exist.</p>
<p>It cost about $1.08 in Claude credits to document all 78 tools, because some of those HTML files were quite long so the input tokens added up.</p>
<p>Each of the documentation files includes a comment with the most recent commit hash of the file that was used to generate the document, like this:</p>
<pre><code>&lt;!-- Generated from commit: 7c6af8eeabc7682b5f9ec2621e34bc771c5471d8 --&gt;
</code></pre>
<p>The script can use this to spot if a tool has been updated - if so, the documentation will be regenerated.</p>
<p>Add this all together and now I can drop new HTML+JavaScript tools into my <a href="https://github.com/simonw/tools">simonw/tools</a> repo and, moments later, they'll be published on <a href="https://tools.simonwillison.net/">tools.simonwillison.net</a> with auto-generated descriptions added to my <a href="https://tools.simonwillison.net/colophon">colophon</a>. I think that's pretty neat!</p>
<p><strong>Update</strong>: I decided that the descriptions were too long, so I modified the script to add "Keep it to 2-3 sentences" to the end of the system prompt. These new, shorter descriptions are now live - <a href="https://github.com/simonw/tools/commit/b9eadb0255e269d865ec1ba3c385760cac7b15b7">here's the diff</a>. Total usage was 283,528 input tokens and 6,010 output tokens for a cost of 94 cents.</p>
<p>The new, shorter description for <code>csv-marker-map.html</code> looks like this:</p>
<blockquote>
<p>This page creates an interactive map with markers based on CSV data. It accepts parameters in the URL to set the center, zoom level, search query, individual markers, and a CSV file URL for bulk marker placement. The markers are displayed on an OpenStreetMap base layer, and the map view automatically updates the URL when panned or zoomed.</p>
</blockquote>
<p>For comparison, here's a copy of <a href="https://static.simonwillison.net/static/2025/colophon-longer-descriptions.html">the previous colophon</a> with the longer descriptions.</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/tools">tools</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/slop">slop</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/13/tools-colophon/#atom-everything>

---

## Quoting Evan Miller

date: 2025-03-13, updated: 2025-03-13, from: Simon Willison’s Weblog

<blockquote cite="https://www.evanmiller.org/functional-tests-as-a-tree-of-continuations.html"><p>One of the most essential practices for maintaining the long-term quality of computer code is to write automated tests that ensure the program continues to act as expected, even when other people (including your future self) muck with it.</p></blockquote>
<p class="cite">&mdash; <a href="https://www.evanmiller.org/functional-tests-as-a-tree-of-continuations.html">Evan Miller</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/testing">testing</a>, <a href="https://simonwillison.net/tags/evan-miller">evan-miller</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/13/evan-miller/#atom-everything>

---

## Xata Agent

date: 2025-03-13, updated: 2025-03-13, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/xataio/agent">Xata Agent</a></strong></p>
Xata are a hosted PostgreSQL company who also develop the open source <a href="https://github.com/xataio/pgroll">pgroll</a> and <a href="https://github.com/xataio/pgstream">pgstream</a> schema migration tools.</p>
<p>Their new "Agent" tool is a system that helps monitor and optimize a PostgreSQL server using prompts to LLMs.</p>
<p>Any time I see a new tool like this I go hunting for the prompts. It looks like the main system prompts for orchestrating the tool <a href="https://github.com/xataio/agent/blob/69329cede85d4bc920558c019df51f111cc5068d/apps/dbagent/src/lib/ai/aidba.ts#L25-L48">live here</a> - here's a sample:</p>
<blockquote>
<p><code>Provide clear, concise, and accurate responses to questions.
Use the provided tools to get context from the PostgreSQL database to answer questions.
When asked why a query is slow, call the explainQuery tool and also take into account the table sizes.
During the initial assessment use the getTablesAndInstanceInfo, getPerfromanceAndVacuumSettings, 
and getPostgresExtensions tools. 
When asked to run a playbook, use the getPlaybook tool to get the playbook contents. Then use the contents of the playbook
as an action plan. Execute the plan step by step.</code></p>
</blockquote>
<p>The really interesting thing is those playbooks, each of which is implemented as a prompt in the <a href="https://github.com/xataio/agent/blob/69329cede85d4bc920558c019df51f111cc5068d/apps/dbagent/src/lib/tools/playbooks.ts">lib/tools/playbooks.ts</a> file. There are six of these so far:</p>
<ul>
<li><code>SLOW_QUERIES_PLAYBOOK</code></li>
<li><code>GENERAL_MONITORING_PLAYBOOK</code></li>
<li><code>TUNING_PLAYBOOK</code></li>
<li><code>INVESTIGATE_HIGH_CPU_USAGE_PLAYBOOK</code></li>
<li><code>INVESTIGATE_HIGH_CONNECTION_COUNT_PLAYBOOK</code></li>
<li><code>INVESTIGATE_LOW_MEMORY_PLAYBOOK</code></li>
</ul>
<p>Here's the full text of <code>INVESTIGATE_LOW_MEMORY_PLAYBOOK</code>:</p>
<blockquote>
<pre><code>Objective:
To investigate and resolve low freeable memory in the PostgreSQL database.

Step 1:
Get the freeable memory metric using the tool getInstanceMetric.

Step 3:
Get the instance details and compare the freeable memory with the amount of memory available.

Step 4:
Check the logs for any indications of memory pressure or out of memory errors. If there are, make sure to report that to the user. Also this would mean that the situation is critical.

Step 4:
Check active queries. Use the tool getConnectionsGroups to get the currently active queries. If a user or application stands out for doing a lot of work, record that to indicate to the user.

Step 5:
Check the work_mem setting and shared_buffers setting. Think if it would make sense to reduce these in order to free up memory.

Step 6:
If there is no clear root cause for using memory, suggest to the user to scale up the Postgres instance. Recommend a particular instance class.
</code></pre>
</blockquote>
<p>This is the first time I've seen prompts arranged in a "playbooks" pattern like this. What a weird and interesting way to write software!

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43356039">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a>, <a href="https://simonwillison.net/tags/postgresql">postgresql</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/13/xata-agent/#atom-everything>

---

## Lilbits: Microsoft keeps adding AI to Notepad, a fix for broken Chromecasts, and Android 16 Beta 3

date: 2025-03-13, from: Liliputing

<p>Microsoft Notepad has been around for decades, offering a simple tool for viewing and editing text-based documents on Windows computers. But last year Microsoft started to adding features like a spell checker (useful), and an AI-powered Rewrite utility that lets you lengthen, shorten, or adjust the tone of text (ugh). Now Microsoft is rolling out [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-microsoft-keeps-adding-ai-to-notepad-a-fix-for-broken-chromecasts-and-android-16-beta-3/">Lilbits: Microsoft keeps adding AI to Notepad, a fix for broken Chromecasts, and Android 16 Beta 3</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-microsoft-keeps-adding-ai-to-notepad-a-fix-for-broken-chromecasts-and-android-16-beta-3/>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

Severance Cannot Save You. 

<br> 

<https://www.theatlantic.com/culture/archive/2025/03/severance-season-2-episode-7-gemma/681953/?gift=f35zZN0v_gDFE8xNwlQAHQ_6xgF_wiGuzo-06HQPeoM&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

Gruber: Something Is Rotten in the State of Cupertino. 

<br> 

<https://daringfireball.net/2025/03/something_is_rotten_in_the_state_of_cupertino>

---

## Quoting Ai2

date: 2025-03-13, updated: 2025-03-13, from: Simon Willison’s Weblog

<blockquote cite="https://allenai.org/blog/olmo2-32B"><p>Today we release <strong>OLMo 2 32B</strong>, the most capable and largest model in the OLMo 2 family, scaling up the OLMo 2 training recipe used for our <a href="https://allenai.org/blog/olmo2">7B and 13B models released in November</a>. It is trained up to 6T tokens and post-trained using Tulu 3.1. OLMo 2 32B is the <strong>first fully-open model</strong> (all data, code, weights, and details are freely available) <strong>to outperform GPT3.5-Turbo and GPT-4o mini</strong> on a suite of popular, multi-skill academic benchmarks.</p></blockquote>
<p class="cite">&mdash; <a href="https://allenai.org/blog/olmo2-32B">Ai2</a>, OLMo 2 32B release announcement</p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai2">ai2</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/open-source">open-source</a>, <a href="https://simonwillison.net/tags/training-data">training-data</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/13/ai2/#atom-everything>

---

**@Feed for Alt USDS** (date: 2025-03-13, from: Feed for Alt USDS)

Well, well, well - look who's back. https://www.nytimes.com/2025/03/13/us/politics/trump-federal-workers-rehire-ruling.html
https://www.nytimes.com/2025/03/13/us/politics/trump-federal-workers-rehire-ruling.html?smid=nytcore-android-share 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lkbych32tc2z>

---

## Anthropic API: Text editor tool

date: 2025-03-13, updated: 2025-03-13, from: Simon Willison’s Weblog

<p><strong><a href="https://docs.anthropic.com/en/docs/build-with-claude/tool-use/text-editor-tool">Anthropic API: Text editor tool</a></strong></p>
Anthropic released a new "tool" today for text editing. It looks similar to the tool they offered as part of their <a href="https://docs.anthropic.com/en/docs/agents-and-tools/computer-use#understand-anthropic-defined-tools">computer use beta API</a>, and the trick they've been using for a while in both Claude Artifacts and the new <a href="https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview">Claude Code</a> to more efficiently edit files there.</p>
<p>The new tool requires you to implement several commands:</p>
<ul>
<li><code>view</code> - to view a specified file - either the whole thing or a specified range</li>
<li><code>str_replace</code> - execute an exact string match replacement on a file</li>
<li><code>create</code> - create a new file with the specified contents</li>
<li><code>insert</code> - insert new text after a specified line number</li>
<li><code>undo_edit</code> - undo the last edit made to a specific file</li>
</ul>
<p>Providing implementations of these commands is left as an exercise for the developer.</p>
<p>Once implemented, you can have conversations with Claude where it knows that it can request the content of existing files, make modifications to them and create new ones.</p>
<p>There's quite a lot of assembly required to start using this. I tried <a href="https://claude.ai/share/97bde411-20d4-4549-a34f-27954a5ab564">vibe coding an implementation</a> by dumping a copy of the documentation into Claude itself but I didn't get as far as a working program - it looks like I'd need to spend a bunch more time on that to get something to work, so my effort is currently abandoned.</p>
<p>This was introduced as in a post on <a href="https://www.anthropic.com/news/token-saving-updates">Token-saving updates on the Anthropic API</a>, which also included a simplification of their token caching API and a new <a href="https://docs.anthropic.com/en/docs/build-with-claude/tool-use/token-efficient-tool-use">Token-efficient tool use (beta)</a> where sending a <code>token-efficient-tools-2025-02-19</code> beta header to Claude 3.7 Sonnet can save 14-70% of the tokens needed to define tools and schemas.

    <p><small></small>Via <a href="https://twitter.com/alexalbert__/status/1900235498502898072">@alexalbert__</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/claude-artifacts">claude-artifacts</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/13/anthropic-api-text-editor-tool/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

If your name is Lydia, there&#39;s a song for you. 

<br> 

<https://www.youtube.com/watch?v=rmfGLfWqlzA>

---

## Google expands it PC gaming platform to support ALL Android games and more PC games

date: 2025-03-13, from: Liliputing

<p>Folks have been finding ways to run Android games on Windows PCs for almost as long as Android&#8217;s been around. But in 2022 Google launched its own official platform called Google Play Games for Windows. At launch it only supported a handful of Android games. But over time Google added support for thousands of additional [&#8230;]</p>
<p>The post <a href="https://liliputing.com/google-expands-it-pc-gaming-platform-to-support-all-android-games-and-more-pc-games/">Google expands it PC gaming platform to support ALL Android games and more PC games</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/google-expands-it-pc-gaming-platform-to-support-all-android-games-and-more-pc-games/>

---

## Introducing Command A: Max performance, minimal compute

date: 2025-03-13, updated: 2025-03-13, from: Simon Willison’s Weblog

<p><strong><a href="https://cohere.com/blog/command-a">Introducing Command A: Max performance, minimal compute</a></strong></p>
New LLM release from Cohere. It's interesting to see which aspects of the model they're highlighting, as an indicator of what their commercial customers value the most (highlights mine):</p>
<blockquote>
<p>Command A delivers maximum performance with minimal hardware costs when compared to leading proprietary and open-weights models, such as GPT-4o and DeepSeek-V3. For private deployments, <strong>Command A excels on business-critical agentic and multilingual tasks, while being deployable on just two GPUs</strong>, compared to other models that typically require as many as 32. [...]</p>
<p>With a serving footprint of just two A100s or H100s, it requires far less compute than other comparable models on the market. This is especially important for private deployments. [...]</p>
<p>Its <strong>256k context length</strong> (2x most leading models) can handle much longer enterprise documents. Other key features include Cohere’s advanced retrieval-augmented generation (RAG) with <strong>verifiable citations</strong>, agentic tool use, enterprise-grade security, and strong multilingual performance.</p>
</blockquote>
<p>It's open weights but very much not open source - the license is <a href="https://cohere.com/c4ai-cc-by-nc-license">Creative Commons Attribution Non-Commercial</a> and also requires adhering to their <a href="https://docs.cohere.com/docs/c4ai-acceptable-use-policy">Acceptable Use Policy</a>.</p>
<p>Cohere offer it for commercial use via "contact us" pricing or through their API. I released <a href="https://github.com/simonw/llm-command-r/releases/tag/0.3">llm-command-r 0.3</a> adding support for this new model, plus their smaller and faster <a href="https://cohere.com/blog/command-r7b">Command R7B</a> (released in December) and support for structured outputs via <a href="https://llm.datasette.io/en/stable/schemas.html">LLM schemas</a>.</p>
<p>(I found <a href="https://github.com/simonw/llm-command-r/issues/8#issuecomment-2722598353">a weird bug</a> with their schema support where schemas that end in an integer output a seemingly limitless integer - in my experiments it affected Command R and the new Command A but not Command R7B.)

    <p><small></small>Via <a href="https://twitter.com/Prince_Canuma/status/1900188521924620726">@Prince_Canuma</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/structured-extraction">structured-extraction</a>, <a href="https://simonwillison.net/tags/cohere">cohere</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/13/command-a/#atom-everything>

---

## How to get deep traces in your Node.js backend with OTel and Deno

date: 2025-03-13, updated: 2025-03-13, from: Deno blog

Adding meaningful tracing to a Node backend requires additional instrumentation and configuration. Here’s another approach that requires zero additional code. 

<br> 

<https://deno.com/blog/otel-tracing-in-node-and-deno>

---

## Swift Proposal: Import Objective-C Completion Handler Parameters As @Sendable

date: 2025-03-13, from: Michael Tsai

SE-0463: The @Sendable annotation indicates that closure parameters are passed over an isolation boundary before they&#8217;re called. A missing @Sendable annotation in a library has negative effects on clients who call the function; the caller can unknowingly introduce data races, and SE-0423: Dynamic actor isolation enforcement from non-strict-concurrency contexts injects runtime assertions for non-Sendable closure [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/13/swift-proposal-import-objective-c-completion-handler-parameters-as-sendable/>

---

## Mozilla Also Defends Google Revenue Sharing Agreement

date: 2025-03-13, from: Michael Tsai

Thomas Claburn: Mozilla, which in 2023 received about 75 percent of its revenue from royalties paid by Google and other search providers for search engine usage in Firefox, worries that the US Justice Department&#8217;s proposed ban on the very same Google Search payments would be rather harmful.[&#8230;]Google&#8217;s payments to Apple for making its search service [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/13/mozilla-also-defends-google-revenue-sharing-agreement/>

---

## Rotten

date: 2025-03-13, from: Michael Tsai

John Gruber (Mastodon, Bluesky, Hacker News, MacRumors, Mac Power Users, AppleInsider): But we didn&#8217;t see all aspects of Apple Intelligence demoed. None of the &#8220;more personalized Siri&#8221; features, the ones that Apple, in its own statement announcing their postponement, described as having &#8220;more awareness of your personal context, as well as the ability to take [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/13/rotten/>

---

## Rumored Redesign in iOS 19 and macOS 16

date: 2025-03-13, from: Michael Tsai

Mark Gurman (Mastodon, MacRumors): Apple Inc. is preparing one of the most dramatic software overhauls in the company&#8217;s history, aiming to transform the interface of the iPhone, iPad and Mac for a new generation of users. The revamp &#8212; due later this year &#8212; will fundamentally change the look of the operating systems and make [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/13/rumored-redesign-in-ios-19-and-macos-16/>

---

## Detained Protester Mahmoud Khalil Sues Columbia University

date: 2025-03-13, from: 404 Media Group

Mahmoud Khalil, who ICE arrested on Saturday, and a group of other students from Columbia are suing the university to stop the release of disciplinary records. 

<br> 

<https://www.404media.co/detained-protester-mahmoud-khalil-sues-columbia-university/>

---

## Technical writing has a depth issue

date: 2025-03-13, from: Blog by Fabrizio Ferri-Benedetti

<p>Demoralized by the advent of LLMs, I see tech writing communities break ranks and flee. In a world where coders who write seem to muster more respect than writers who code, the response from tech writers to the challenges posed by the intersection of automation, multichannel delivery, and docs-as-code is weak, if not absent. Conferences and blogs mostly focus on soothing anxiety and perfecting praxis. Nothing wrong with that, of course, except that it’s an intellectual dead end.</p> 

<br> 

<https://passo.uno/tech-writing-depth-issue/>

---

## Awful AI Upscaling

date: 2025-03-13, updated: 2025-03-13, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/13/awful-ai-upscaling/>

---

## ChatGPT Would be a Decent Policy Advisor

date: 2025-03-13, from: Maggie Appleton blog

Revealed: How the UK tech secretary uses ChatGPT for policy advice by Chris Stokel-Walker for the New Scientist 

<br> 

<https://maggieappleton.com/2025-03-chat-gpt-policy/>

---

## Two Podcast Appearances and One Provocation

date: 2025-03-13, from: Dave Karpf's blog

On mindless techbros and feckless Democratic Senators. 

<br> 

<https://davekarpf.substack.com/p/two-podcast-appearances-and-one-provocation>

---

## Super Nintendo Hardware Is Running Faster as It Ages

date: 2025-03-13, from: 404 Media Group

Why is this speedrunner putting his Super Nintendo in the freezer? Science. 

<br> 

<https://www.404media.co/super-nintendo-hardware-is-running-faster-as-it-ages/>

---

## Disney's Creative Genius

date: 2025-03-13, from: Guy Kawasaki blog

Duncan Wardle on The Magic of Innovation. 

<br> 

<https://guykawasaki.substack.com/p/disneys-creative-genius>

---

## More on preparing for the release of “On the Beach”

date: 2025-03-13, from: National Archives, Text Message blog

The major United Artists motion picture On the Beach came out in 1959.  It was based on the 1957 novel of the same name by Nevil Shute.  The book and the movie depict a post-apocalyptic world in the aftermath of a nuclear war.  It was the first major movie about nuclear conflict and it threatened to &#8230; <a href="https://text-message.blogs.archives.gov/2025/03/13/more-on-preparing-for-the-release-of-on-the-beach/" class="more-link">Continue reading <span class="screen-reader-text">More on preparing for the release of “On the Beach”</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/03/13/more-on-preparing-for-the-release-of-on-the-beach/>

---

## On Balatro

date: 2025-03-13, from: Chris Coyier blog

The ShopTalk Discord #games channel has been pretty heavy on Balatro for like&#8230; a year? I was turned off by the game at first as I think I downloaded some unofficial port or something and it was unplayably janky. But now Balatro+ is on Apple Arcade, which I have anyway, and I&#8217;ve got a perfectly [&#8230;] 

<br> 

<https://chriscoyier.net/2025/03/13/on-balatro/>

---

## This fanless PC has four HDMI ports, up to 64GB of RAM, and support for two SSDs

date: 2025-03-13, from: Liliputing

<p>The Maxtang SXRL-20 is a compact, fanless computer designed for digital signage applications, but it could also be a good fit for some home users thanks to its support for user-replaceable memory and storage, better-than-bottom-of-the-line processor, and silent operation. The little computer is available now from AliExpress for $479 and up and features an Intel Core [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-fanless-pc-has-four-hdmi-ports-up-to-64gb-of-ram-and-support-for-two-ssds/">This fanless PC has four HDMI ports, up to 64GB of RAM, and support for two SSDs</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-fanless-pc-has-four-hdmi-ports-up-to-64gb-of-ram-and-support-for-two-ssds/>

---

**@Feed for Alt USDS** (date: 2025-03-13, from: Feed for Alt USDS)

One day without the engineering ops team and the FAFSA has an outage. 😔 https://apnews.com/article/student-loans-education-department-outage-layoffs-5afb5a0a1b51bbe50e5961a63b419041 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lkbeoewfu22n>

---

## Smoke test your Django admin site

date: 2025-03-13, updated: 2025-03-13, from: Simon Willison’s Weblog

<p><strong><a href="https://jmduke.com/posts/post/django-admin-changelist-test/">Smoke test your Django admin site</a></strong></p>
Justin Duke demonstrates a neat pattern for running simple tests against your internal Django admin site: introspect every admin route via <code>django.urls.get_resolver()</code> and loop through them with <code>@pytest.mark.parametrize</code> to check they all return a 200 HTTP status code.</p>
<p>This catches simple mistakes with the admin configuration that trigger exceptions that might otherwise go undetected.</p>
<p>I rarely write automated tests against my own admin sites and often feel guilty about it. I wrote <a href="https://til.simonwillison.net/django/testing-django-admin-with-pytest">some notes</a> on testing it with <a href="https://pytest-django.readthedocs.io/en/latest/helpers.html#fixtures">pytest-django fixtures</a> a few years ago.


    <p>Tags: <a href="https://simonwillison.net/tags/testing">testing</a>, <a href="https://simonwillison.net/tags/pytest">pytest</a>, <a href="https://simonwillison.net/tags/django">django</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/django-admin">django-admin</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/13/smoke-test-your-django-admin/#atom-everything>

---

**@Robert's feed at BlueSky** (date: 2025-03-13, from: Robert's feed at BlueSky)

Voter suppression is disenfranchised.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lkbczpittc2t>

---

## NASA, Yale, and Stanford Scientists Consider 'Scientific Exile,' French University Says

date: 2025-03-13, from: 404 Media Group

“We are witnessing a new brain drain.” 

<br> 

<https://www.404media.co/nasa-yale-and-stanford-scientists-consider-scientific-exile-french-university-says/>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

What to Expect When You’re Expecting Catastrophe. 

<br> 

<https://snyder.substack.com/p/what-to-expect-when-youre-expecting?publication_id=310897&post_id=158714964&isFreemail=true&r=w33x&triedRedirect=true>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

Early Pirate Bay Backer Carl Lundström Dies in Plane Crash. 

<br> 

<https://torrentfreak.com/early-pirate-bay-backer-carl-lundstrom-dies-in-plane-crash-250312/>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

1995: HTML 2.0 spec. 

<br> 

<https://www.ietf.org/rfc/rfc1866.txt>

---

**@Feed for Alt USDS** (date: 2025-03-13, from: Feed for Alt USDS)

Sharing this incredible story about federal employees at the IRS @alt-irs.altgov.info. ❤️

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lkba52bchk2p>

---

## AI Can Rip You Off. Here's How California Lawmakers Want to Stop Price Discrimination

date: 2025-03-13, from: The Markup blog

AI can help businesses charge you more based on how it evaluates your personal history and desires. California lawmakers want to end that price discrimination 

<br> 

<https://themarkup.org/artificial-intelligence/2025/03/13/ai-can-rip-you-off-heres-how-california-lawmakers-want-to-stop-price-discrimination>

---

## California Is Considering 30 New AI Regulations. Trump Wants None

date: 2025-03-13, from: The Markup blog

President Trump is taking a very different approach to AI than the Biden administration, and it could affect how California regulates artificial intelligence 

<br> 

<https://themarkup.org/artificial-intelligence/2025/03/13/california-is-considering-30-new-ai-regulations-trump-wants-none>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

As ICE targets a Palestinian activist, some Jews are asking if this is the fight against antisemitism they signed up for. (Being pro-Palestinian is not antisemitism.) 

<br> 

<https://www.jta.org/2025/03/11/united-states/as-ice-targets-a-pro-palestinian-activist-some-jews-are-asking-if-this-is-the-fight-against-antisemitism-they-signed-up-for>

---

## Making Sweatshops Great Again

date: 2025-03-13, from: Paul Krugman

Does Trump want us to manufacture sneakers, not semiconductors? 

<br> 

<https://paulkrugman.substack.com/p/making-sweatshops-great-again>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

Taking over the Podcast network: Michelle, WSJ. 

<br> 

<https://viehumaniste.wordpress.com/2025/03/11/taking-over-michelle-wsj/>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

No response from either TechCrunch or the company, as before. Bluesky is doing great, it’s time they drop the pretense that they’re “billionaire-proof.” They obviously don’t respect this blogger, perhaps a journalist could ask about their claim. 

<br> 

<http://scripting.com/2025/03/11/113838.html>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

Elon Musk Looks Desperate. 

<br> 

<https://www.theatlantic.com/technology/archive/2025/03/elon-musk-human-meme-stock/682023/?gift=f35zZN0v_gDFE8xNwlQAHXwjqMU0i0qxVV4QHoDkshc&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

Trump plans &quot;law and order&quot; speech at Justice Department Friday. 

<br> 

<https://www.axios.com/2025/03/13/trump-justice-department-speech>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

The Portland crowd enjoyed the Knicks buzzer beater overtime win over their hometown Trailblazers. Where ever you go the Knicks fans are there. 

<br> 

<https://sports.yahoo.com/article/see-mikal-bridges-overtime-game-061500500.html>

---

## 288: Hofstader's Butterfly

date: 2025-03-13, from: Fix the News

Fundamental principles across different scales of reality. Plus, primordial water, super lasers, Right to Repair, and good news on childcare in Canada, vaccinations in Zimbabwe, de-mining in Cambodia, and re-wilding in New Zealand. 

<br> 

<https://fixthenews.com/288-hofstaders-butterfly/>

---

**@Dave Winer's linkblog** (date: 2025-03-13, from: Dave Winer's linkblog)

Biggest Federal Employee Unions Says Shutdown is Preferable to Elon/Trump CR. 

<br> 

<https://talkingpointsmemo.com/edblog/biggest-federal-employee-unions-says-shutdown-is-preferable-to-elon-trump-cr>

---

## The French Revolution: The Execution of the King (Part 4)

date: 2025-03-13, from: This is history podcast

<p>The second revolution that engulfed France over the course of 1792 reached its climax in December, with an astonishing, world-changing spectacle, which held all the eyes of Europe spellbound: Louis Capet, formerly King Louis XVI of France, was on trial for his very life. A guilty verdict would undermine millennia of thought and tradition, ripping [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/the-french-revolution-the-execution-of-the-king-part-4/">The French Revolution: The Execution of the King (Part 4)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/the-french-revolution-the-execution-of-the-king-part-4/>

---

## Building Web Components using Large Language Models

date: 2025-03-13, from: Robert's Ramblings

Quick discussion of my recent experience bootstrapping the CL-web-components project
 

<br> 

<https://rsdoiel.github.io/blog/2025/03/13/Building_Web_Component_using_an_LLM.html>

---

**@Dave Winer's linkblog** (date: 2025-03-12, from: Dave Winer's linkblog)

Is Trump Taking a ‘Liquidationist’ Approach to the Economy? 

<br> 

<https://www.wsj.com/economy/is-trump-taking-a-liquidationist-approach-to-the-economy-dc06d544?st=m5pNes&reflink=desktopwebshare_permalink>

---

**@Dave Winer's linkblog** (date: 2025-03-12, from: Dave Winer's linkblog)

Democrats to hold town halls in GOP districts amid controversy. 

<br> 

<https://thehill.com/homenews/house/5191810-democrats-host-town-halls-republican-districts/>

---

**@Feed for Alt USDS** (date: 2025-03-12, from: Feed for Alt USDS)

Gov workers aren’t lazy—we’re the ones fixing broken tax records, tracking down missing payments, and helping people when they need it most. The system works because we do.

Read how one IRS worker spent 13 years making things right.
🔗 wethebuilders.org/posts/we-are-the-helpers

#WeArePublicService 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lk7lejuuai2p>

---

## AOOSTAR G-Flip mini PC features Ryzen AI 9 HX 370 and a flip-up display

date: 2025-03-12, from: Liliputing

<p>The AOOSTAR G-Flip is an upcoming mini PC with a few unusual features. For one thing, it has an AMD Strix Point processor, with support for up to a Ryzen AI 9 HX 370 12-core, 24-thread CPU and 16-core RDNA 3.5 graphics. That&#8217;s uncommon, but not exactly unique though. What is strange about  this little computer though, [&#8230;]</p>
<p>The post <a href="https://liliputing.com/aoostar-g-flip-mini-pc-features-ryzen-ai-9-hx-370-and-a-flip-up-display/">AOOSTAR G-Flip mini PC features Ryzen AI 9 HX 370 and a flip-up display</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/aoostar-g-flip-mini-pc-features-ryzen-ai-9-hx-370-and-a-flip-up-display/>

---

**@Feed for Alt USDS** (date: 2025-03-12, from: Feed for Alt USDS)

Nearly 30 U.S. Digital Services employees have worked with hardworking civil servants at the Dept of Education over the years - most notably (and still) on the Free Application for Federal Student Aid (FAFSA). 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lk7caphobc2h>

---

## Kensington Expert Mouse TB800 EQ is a multi-device trackball mouse

date: 2025-03-12, from: Liliputing

<p>Kensington may be planning to launch a new version of its Expert Mouse wireless trackball that keeps many of the features of the current model, while adding a few bells and whistles that could make for a more versatile computer input device. The company recently won an IF Design Guide award for a previously unannounced [&#8230;]</p>
<p>The post <a href="https://liliputing.com/kensington-expert-mouse-tb800-eq-is-a-multi-function-trackball-mouse/">Kensington Expert Mouse TB800 EQ is a multi-device trackball mouse</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/kensington-expert-mouse-tb800-eq-is-a-multi-function-trackball-mouse/>

---

**@Dave Winer's linkblog** (date: 2025-03-12, from: Dave Winer's linkblog)

COVID keeps evolving and will find new ways to evade immune systems. 

<br> 

<https://www.npr.org/sections/shots-health-news/2025/03/11/nx-s1-5312100/covid-virus-mutation-evolution>

---

## ChatGPT Now Integrates Directly With Xcode

date: 2025-03-12, from: Michael Tsai

Tim Hardwick: OpenAI has updated the ChatGPT app for macOS with the ability to directly edit code in popular development environments including Xcode, VS Code, and JetBrains tools. The new feature allows the AI chatbot to make changes to code without requiring users to copy and paste between applications. ChatGPT can now read code from [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/12/chatgpt-now-integrates-directly-with-xcode/>

---

## Whither Swift Assist?

date: 2025-03-12, from: Michael Tsai

Apple (June 2024): Swift Assist serves as a companion for all of a developer&#8217;s coding tasks, so they can focus on higher-level problems&#160;and solutions. It&#8217;s seamlessly integrated into Xcode, and knows the latest software development kits (SDKs) and Swift language features, so developers will always get the latest code features that blend perfectly into their [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/12/whither-swift-assist/>

---

## Apple Delays “More Personalized Siri” Apple Intelligence Features

date: 2025-03-12, from: Michael Tsai

John Gruber (Mastodon, Dithering, MacRumors, Slashdot): Reading between the lines, and based on my PhD-level fluency in Cupertino-ese, what Apple is saying here is that these &#8220;more personalized Siri&#8221; features are being punted from this year&#8217;s OS cycle to next year&#8217;s: to iOS 19 and MacOS 16. [&#8230;] It was already pretty obvious these features [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/12/apple-delays-more-personalized-siri-apple-intelligence-features/>

---

## AI Summaries of App Store Reviews

date: 2025-03-12, from: Michael Tsai

Filipe Esp&#243;sito (October 2024, MacRumors): As seen by 9to5Mac in an unlisted App Store article, Apple has developed a new system that will use all user reviews on the App Store to create a summary highlighting &#8220;the most common customer feedback&#8221; about each app. According to the article, the summaries will be updated every time [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/12/ai-summaries-of-app-store-reviews/>

---

**@IIIF Mastodon feed** (date: 2025-03-12, from: IIIF Mastodon feed)

<p>📆 SAVE THE DATE</p><p>On Mar. 17 @ 11am ET/3pm GMT, at the <a href="https://glammr.us/tags/IIIF" class="mention hashtag" rel="tag">#<span>IIIF</span></a> Museums Group, Rodolfo Peraza will present the MUD Foundations&#39;s work on 3D &amp; 2D visualization for open-access digital collections for museums, including integrations w/ IIIF services with MUD Verse</p><p>Zoom info: iiif.io/community</p> 

<br> 

<https://glammr.us/@IIIF/114150924181767622>

---

## Clockwork PicoCalc is a retro handheld powered by a Raspberry Pi Pico

date: 2025-03-12, from: Liliputing

<p>The PicoCalc is a new handheld with a retro design. At first glance it looks more like a graphing calculator than a modern handheld device. But it sports a QWERTY keyboard, a 4 inch display, and a mainboard designed to accommodate a Raspberry Pi Pico. Available for $75 from the Clockwork Pi store, it&#8217;s also the [&#8230;]</p>
<p>The post <a href="https://liliputing.com/clockwork-picocalc-is-a-retro-handheld-powered-by-a-raspberry-pi-pico/">Clockwork PicoCalc is a retro handheld powered by a Raspberry Pi Pico</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/clockwork-picocalc-is-a-retro-handheld-powered-by-a-raspberry-pi-pico/>

---

**@Robert's feed at BlueSky** (date: 2025-03-12, from: Robert's feed at BlueSky)

Cool stuff.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lk74cw3sgk25>

---

**@Dave Winer's linkblog** (date: 2025-03-12, from: Dave Winer's linkblog)

&quot;Mail Pages&quot; were a feature of my blog in 1997 and 1998. People could send email in response to a post, I read them all and published the most interesting ones, by my subjective criteria, to the current mail page. I think something like this could work in 2025 and beyond. 

<br> 

<http://scripting.com/mail/mailThru971027.html>

---

**@Dave Winer's linkblog** (date: 2025-03-12, from: Dave Winer's linkblog)

The Lives of Others (2006), a drama and political thriller set in East Berlin before the wall came down. How secret police kept watch on the people. It foretells what&#39;s sure to come in the US, and it&#39;s also a fantastic movie. 

<br> 

<https://www.metacritic.com/movie/the-lives-of-others/>

---

**@Dave Winer's linkblog** (date: 2025-03-12, from: Dave Winer's linkblog)

FTC asks to delay Amazon Prime deceptive practices case, citing staffing shortfalls. Quid pro quo? 

<br> 

<https://www.cnbc.com/2025/03/12/ftc-asks-to-delay-amazon-prime-deceptive-practices-case-citing-staffing-shortfalls.html>

---

## Saudi Arabia Buys Pokémon Go, and Probably All of Your Location Data

date: 2025-03-12, from: 404 Media Group

A company owned by the Saudi Arabian Public Investment Fund just bought the most popular AR video game of all time. 

<br> 

<https://www.404media.co/saudi-arabia-buys-pokemon-go-and-probably-all-of-your-location-data/>

---

## AI Coding Fantasy meets Pac-Man

date: 2025-03-12, from: Gary Marcus blog

Guess who won? 

<br> 

<https://garymarcus.substack.com/p/ai-coding-fantasy-meets-pac-man>

---

## Notes on Google's Gemma 3

date: 2025-03-12, updated: 2025-03-12, from: Simon Willison’s Weblog

<p>Google's Gemma team released an impressive new model today (under their not-open-source <a href="https://ai.google.dev/gemma/terms">Gemma license</a>). Gemma 3 comes in four sizes - 1B, 4B, 12B, and 27B - and while 1B is text-only the larger three models are all multi-modal for vision:</p>
<blockquote>
<p>Gemma 3 introduces multimodality, supporting vision-language input and text outputs. It handles context windows up to 128k tokens, understands over 140 languages, and offers improved math, reasoning, and chat capabilities, including structured outputs and function calling.</p>
</blockquote>
<p>Here's the <a href="https://storage.googleapis.com/deepmind-media/gemma/Gemma3Report.pdf">Gemma 3 Technical Report PDF</a>, which makes the big claim that they find "Gemma3-27B-IT comparable to Gemini-1.5-Pro across
benchmarks".</p>
<p>I tried out the largest model using the latest <a href="https://ollama.com/">Ollama</a> - this is the second time I've spotted a major model release partnering with Ollama on launch day, the first being <a href="https://simonwillison.net/2025/Jan/30/mistral-small-3/">Mistral Small 3</a>.</p>
<p>I ran this (after upgrading Ollama through their menu icon upgrade option):</p>
<pre><code>ollama pull gemma3:27b
</code></pre>
<p>That pulled 17GB of model weights. I've been trying it out using <a href="https://llm.datasette.io/">LLM</a> and <a href="https://github.com/taketwo/llm-ollama">llm-ollama</a>:</p>
<pre><code>llm install llm-ollama
llm -m gemma3:27b 'Build a single page HTML+CSS+JavaScript UI that gives me a large textarea for writing in which constantly saves what I have entered to localStorage (restoring when I reload the page) and displays a word counter'
</code></pre>
<p>That was a replay of <a href="https://tools.simonwillison.net/colophon#word-counter.html">a prompt</a> I ran against Claude Artifacts a few months ago. Here's <a href="https://static.simonwillison.net/static/2025/gemma3-word-count.html">what Gemma built</a>, and the <a href="https://gist.github.com/simonw/f8a87f2242439d3974405a17f5d8bc23">full chat transcript</a>. It's a simple example but it worked just right.</p>

<p><img src="https://static.simonwillison.net/static/2025/gemma-word-count.gif" alt="Animated demo - a simple textarea, I type text in it and a word count updates above." /></p>

<p>Let's try out the vision mode, by asking it to describe this photo:</p>
<p><img src="https://static.simonwillison.net/static/2025/two-pelicans.jpg" alt="Two pelicans flying against a blue sky " style="max-width: 100%;" /></p>
<pre><code>llm -m gemma3:27b describe -a https://static.simonwillison.net/static/2025/two-pelicans.jpg
</code></pre>
<p>Here's <a href="https://gist.github.com/simonw/0e703ba72d0cf5a6dd117981bd03e604">the full response</a>:</p>
<blockquote>
<p><strong>Overall Impression:</strong></p>
<p>The image features two brown pelicans in flight against a solid, bright blue background. The composition is dynamic, capturing the birds mid-wingbeat.</p>
<p><strong>Details:</strong></p>
<ul>
<li>
<strong>Pelicans:</strong> Both pelicans are a rich, dark brown color. They have large, pale yellow-orange beaks and pouches. One pelican is shown with its wings fully extended, appearing to be gliding or soaring. The other is captured with its wings in a more dynamic, upward-sweeping motion.</li>
<li>
<strong>Background:</strong> The background is a flat, uniform shade of bright blue, which makes the pelicans stand out.</li>
<li>
<strong>Composition:</strong> The birds are positioned in opposite directions, creating a sense of movement and balance. The image is well-lit, highlighting the texture of the pelicans' feathers.</li>
</ul>
<p><strong>Overall, the image is a striking and visually appealing depiction of these majestic birds in flight.</strong></p>
</blockquote>

<p>Is it right to say "the birds are positioned in opposite directions"? I thought that was a mistake at first, but I'll give it a pass since their wings are positioned in opposite directions to each other.</p>

<p>Something I've been curious about recently is longer context support: how well can a local model on my laptop deal with summarization or data extraction tasks against longer pieces of text?</p>
<p>I decided to try <a href="https://til.simonwillison.net/llms/claude-hacker-news-themes#user-content-adding-a--m-model-option">my Hacker News summarize script</a> using Gemma, against <a href="https://news.ycombinator.com/item?id=43340491">the thread</a> there discussing the Gemma 3 technical paper.</p>
<p>First I did a quick token count (using the OpenAI tokenizer but it's usually a similar number to other models):</p>
<pre><code>curl 'https://hn.algolia.com/api/v1/items/43340491' | ttok
</code></pre>
<p>This returned 22,260 - well within Gemma's documented limits but still a healthy number considering just last year most models topped out at 4,000 or 8,000.</p>
<p>I ran my script like this:</p>
<pre><code>hn-summary.sh 43340491 -m gemma3:27b
</code></pre>
<p>It did a pretty good job! Here's the <a href="https://gist.github.com/simonw/ab487ea3d1605e719dc2950cd4565146">full prompt and response</a>. The one big miss is that it ignored my instructions to include illustrative quotes - I don't know if modifying the prompt will fix that but it's disappointing that it didn't handle that well, given how important direct quotes are for building confidence in RAG-style responses.</p>
<p>Here's what I got for <a href="https://gist.github.com/simonw/f79c4bd2fbe966e1b600cb8b41cae810">Generate an SVG of a pelican riding a bicycle</a>:</p>
<pre><code>llm -m gemma3:27b 'Generate an SVG of a pelican riding a bicycle'
</code></pre>

<p style="text-align: center"><img src="https://static.simonwillison.net/static/2025/gemma-3-pelican.svg" alt="A collection of abstract shapes, definitely not a pelican on a bicycle" /></p>

<p>You can also try out the new Gemma <a href="https://aistudio.google.com/prompts/new_chat?model=gemma-3-27b-it">in Google AI Studio</a>, and via their API. I added support for it to <a href="https://github.com/simonw/llm-gemini/releases/tag/0.15">llm-gemini 0.15</a>, though sadly it appears vision mode doesn't work with that API hosted model yet.</p>
<pre><code>llm install -U llm-gemini
llm keys set gemini
# paste key here
llm -m gemma-3-27b-it 'five facts about pelicans of interest to skunks'
</code></pre>
<p><a href="https://gist.github.com/simonw/bc22062e60e5af3faf458756cb368d0e">Here's what I got</a>. I'm not sure how pricing works for that hosted model.</p>
<p>Gemma 3 is also already available <a href="https://github.com/Blaizzy/mlx-vlm/pull/235">through MLX-VLM</a> - here's <a href="https://huggingface.co/collections/mlx-community/gemma-3-67d14a10480a436ad478b0f9">the MLX model collection</a> - but I haven't tried that version yet.</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/mlx">mlx</a>, <a href="https://simonwillison.net/tags/ollama">ollama</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a>, <a href="https://simonwillison.net/tags/gemma">gemma</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/12/gemma-3/#atom-everything>

---

## Comics from 1978/05 Creative Computing Mag

date: 2025-03-12, from: Computer ads from the Past

Time for some oldie levity. 

<br> 

<https://computeradsfromthepast.substack.com/p/comics-from-197805-creative-computing>

---

## Compal Hybrid AIO concept PC is a laptop, tablet, and dual-screen desktop

date: 2025-03-12, from: Liliputing

<p>Plenty of people use their laptop computers like desktops by connecting an external display, keyboard, and mouse. But Compal&#8217;s Hybrid AIO concept PC goes a step further than that&#8230; and then a few steps further. The computer design and manufacturing company recently won an IF Design Award for this unusual modular computer that can be used [&#8230;]</p>
<p>The post <a href="https://liliputing.com/compal-hybrid-aio-concept-pc-is-a-laptop-tablet-and-dual-screen-desktop/">Compal Hybrid AIO concept PC is a laptop, tablet, and dual-screen desktop</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/compal-hybrid-aio-concept-pc-is-a-laptop-tablet-and-dual-screen-desktop/>

---

## Why You Don’t Need to Be the Best to Lead a Remarkable Life

date: 2025-03-12, from: Guy Kawasaki blog

The joy of being average. 

<br> 

<https://guykawasaki.substack.com/p/why-you-dont-need-to-be-the-best>

---

## 'Pretty Vile:' Spotify Removes Andrew Tate 'Pimping Hoes' Class After Employees Complain

date: 2025-03-12, from: 404 Media Group

Internal Spotify communications viewed by 404 Media show Spotify’s own employees complaining about Andrew Tate’s course being available on the platform. 

<br> 

<https://www.404media.co/pretty-vile-spotify-removes-andrew-tate-pimping-hoes-class-after-employees-and-users-complain-2/>

---

**@Dave Winer's linkblog** (date: 2025-03-12, from: Dave Winer's linkblog)

“Social media” is almost 100% bullshit and the rest of it is a con. Discuss. 

<br> 

<https://bsky.app/profile/did:plc:oety7qbfx7x6exn2ytrwikmr/post/3lk63i5bd6s2r>

---

## The 200+ Sites an ICE Surveillance Contractor is Monitoring

date: 2025-03-12, from: 404 Media Group

404 Media has obtained the list of sites and services that ICE contractor ShadowDragon pulls data from. ShadowDragon sources data from all over the web and lets government analysts easily search it and draw connections between people.
 

<br> 

<https://www.404media.co/the-200-sites-an-ice-surveillance-contractor-is-monitoring/>

---

## Podcast: We're Not Ready for Chinese AI Video Generators

date: 2025-03-12, from: 404 Media Group

We chat the lack of guardrails on China-based AI video models; how cops are using AI to summarize evidence from seized mobile phones; and the AI game that is making $50,000 a month. 

<br> 

<https://www.404media.co/podcast-were-not-ready-for-chinese-ai-video-generators/>

---

## Who Could Resist?

date: 2025-03-12, updated: 2025-03-12, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/12/who-could-resist/>

---

**@Feed for Alt USDS** (date: 2025-03-12, from: Feed for Alt USDS)

There are *actual* laws here, like the Sarbanes-Oxley Act and following retention schedules outlined in the General Records Schedules (GRS) and IRS Records Control Schedules. USAID can't just shred government documents.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lk6macazy22s>

---

## A Preview of Our 15th Presidential Library

date: 2025-03-12, from: National Archives, Pieces of History blog

Today’s post comes from Matthew Green, an archivist at the Donald J. Trump Presidential Library in College Park, Maryland. The Library&#8217;s records are closed to researchers until January 2026 but today we are previewing some of the records in the Library’s collection. Established in 2021, the Donald J. Trump Presidential Library currently administers records from &#8230; <a href="https://prologue.blogs.archives.gov/2025/03/12/a-preview-of-our-15th-presidential-library/" class="more-link">Continue reading <span class="screen-reader-text">A Preview of Our 15th Presidential Library</span></a> 

<br> 

<https://prologue.blogs.archives.gov/2025/03/12/a-preview-of-our-15th-presidential-library/>

---

## A Mind is a Terrible Thing to Lose

date: 2025-03-12, from: Paul Krugman

Especially when you&#8217;re running a country 

<br> 

<https://paulkrugman.substack.com/p/a-mind-is-a-terrible-thing-to-lose>

---

## Raspberry Pi wins 2024 Europe TSMC Trophy for embedded computing innovation

date: 2025-03-12, from: Raspberry Pi News (.com)

<p>We're proud to win the 2024 Europe TSMC Trophy, recognising our innovation in embedded computing and focus on high-performance solutions.</p>
<p>The post <a href="https://www.raspberrypi.com/news/raspberry-pi-wins-2024-europe-tsmc-trophy-for-embedded-computing-innovation/">Raspberry Pi wins 2024 Europe TSMC Trophy for embedded computing innovation</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/raspberry-pi-wins-2024-europe-tsmc-trophy-for-embedded-computing-innovation/>

---

**@Dave Winer's linkblog** (date: 2025-03-12, from: Dave Winer's linkblog)

How Simon Willison uses<span style="letter-spacing: 0.01rem; -webkit-text-size-adjust: 100%;"> LLMs to help</span><span style="letter-spacing: 0.01rem; -webkit-text-size-adjust: 100%;"> write code.</span> 

<br> 

<https://simonwillison.net/2025/Mar/11/using-llms-for-code/>

---

**@Dave Winer's linkblog** (date: 2025-03-12, from: Dave Winer's linkblog)

I am heavily invested in the stock market, and I totally don’t mind if it crashes. I also own a Tesla, and ditto. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-11-2025?publication_id=20533&post_id=158900485&isFreemail=true&r=w33x&triedRedirect=true>

---

## Gell-Mann Amnesia

date: 2025-03-12, from: Status-Q blog

My thanks to Kit Hodsdon, who, responding to yesterday&#8217;s post, pointed out that there was a name for a phenomenon related to something I discussed there: the Gell-Mann Amnesia Effect. This term was first coined by Michael Crichton, and to quote the Wikipedia page linked above, it describes &#8220;the tendency of individuals to critically assess <a class="more-link excerpt-link" href="https://statusq.org/archives/2025/03/12/13098/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<br> 

<https://statusq.org/archives/2025/03/12/13098/>

---

**@Dave Winer's linkblog** (date: 2025-03-12, from: Dave Winer's linkblog)

Tulane University Responds to Federal Investigation Over Antisemitism Complaints. 

<br> 

<https://www.wwltv.com/article/news/education/us-department-of-education-threatens-tulane/289-2f714b9f-9302-45f1-970a-5e1681c51a1e>

---

## Traversal-resistant file APIs

date: 2025-03-12, updated: 2025-03-12, from: Go language blog

New file access APIs in Go 1.24. 

<br> 

<https://go.dev/blog/osroot>

---

## Decisions

date: 2025-03-11, from: Accidentally in Code

Recently, someone asked me for my “Leadership philosophy”. My initial reaction was to panic, but after taking a deep breath and a bit of time to think, I came up with this answer: &#8220;My job is to make it easier for people to make good decisions.&#8221; What does that mean? Firstly &#8211; that my job [&#8230;] 

<br> 

<https://cate.blog/2025/03/11/decisions-3/>

---

## Lilbits: Google Pixel 10 could be a triple-camera phone

date: 2025-03-11, from: Liliputing

<p>The folks at Android Headlines have published a series of articles showing the anticipated design of the upcoming Google Pixel 10, Pixel 10 Pro, and Pixel 10 Pro XL. For the most part the Pro phones look nearly identical to their Pixel 9 counterparts. But there&#8217;s something different about the entry-level Pixel 10: instead of two [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-google-pixel-10-could-be-a-triple-camera-phone/">Lilbits: Google Pixel 10 could be a triple-camera phone</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-google-pixel-10-could-be-a-triple-camera-phone/>

---

## OpenAI Agents SDK

date: 2025-03-11, updated: 2025-03-11, from: Simon Willison’s Weblog

<p><strong><a href="https://openai.github.io/openai-agents-python/">OpenAI Agents SDK</a></strong></p>
OpenAI's other big announcement today (<a href="https://simonwillison.net/2025/Mar/11/responses-vs-chat-completions/">see also</a>) - a Python library (<a href="https://pypi.org/project/openai-agents/">openai-agents</a>) for building "agents", which is a replacement for their previous <a href="https://github.com/openai/swarm">swarm</a> research project.</p>
<p>In this project, an "agent" is a class that configures an LLM with a system prompt an access to specific tools.</p>
<p>An interesting concept in this one is the concept of <strong><a href="https://openai.github.io/openai-agents-python/handoffs/">handoffs</a></strong>, where one agent can chose to hand execution over to a different system-prompt-plus-tools agent treating it almost like a tool itself. This code example illustrates the idea:</p>
<pre><span class="pl-k">from</span> <span class="pl-s1">agents</span> <span class="pl-k">import</span> <span class="pl-v">Agent</span>, <span class="pl-s1">handoff</span>

<span class="pl-s1">billing_agent</span> <span class="pl-c1">=</span> <span class="pl-en">Agent</span>(
    <span class="pl-s1">name</span><span class="pl-c1">=</span><span class="pl-s">"Billing agent"</span>
)
<span class="pl-s1">refund_agent</span> <span class="pl-c1">=</span> <span class="pl-en">Agent</span>(
    <span class="pl-s1">name</span><span class="pl-c1">=</span><span class="pl-s">"Refund agent"</span>
)
<span class="pl-s1">triage_agent</span> <span class="pl-c1">=</span> <span class="pl-en">Agent</span>(
    <span class="pl-s1">name</span><span class="pl-c1">=</span><span class="pl-s">"Triage agent"</span>,
    <span class="pl-s1">handoffs</span><span class="pl-c1">=</span>[<span class="pl-s1">billing_agent</span>, <span class="pl-en">handoff</span>(<span class="pl-s1">refund_agent</span>)]
)</pre>

<p>The library also includes <a href="https://openai.github.io/openai-agents-python/guardrails/">guardrails</a> - classes you can add that attempt to filter user input to make sure it fits expected criteria. Bits of this look suspiciously like trying to <a href="https://simonwillison.net/2022/Sep/17/prompt-injection-more-ai/">solve AI security problems with more AI</a> to me.


    <p>Tags: <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/11/openai-agents-sdk/#atom-everything>

---

## OpenAI API: Responses vs. Chat Completions

date: 2025-03-11, updated: 2025-03-11, from: Simon Willison’s Weblog

<p><strong><a href="https://platform.openai.com/docs/guides/responses-vs-chat-completions">OpenAI API: Responses vs. Chat Completions</a></strong></p>
OpenAI released a bunch of new API platform features this morning under the headline "<a href="https://openai.com/index/new-tools-for-building-agents/">New tools for building agents</a>" (their somewhat mushy interpretation of "agents" here is "systems that independently accomplish tasks on behalf of users").</p>
<p>A particularly significant change is the introduction of a new <strong>Responses API</strong>, which is a slightly different shape from the Chat Completions API that they've offered for the past couple of years and which others in the industry have widely cloned as an ad-hoc standard.</p>
<p>In <a href="https://platform.openai.com/docs/guides/responses-vs-chat-completions">this guide</a> they illustrate the differences, with a reassuring note that:</p>
<blockquote>
<p>The Chat Completions API is an industry standard for building AI applications, and we intend to continue supporting this API indefinitely. We're introducing the Responses API to simplify workflows involving tool use, code execution, and state management. We believe this new API primitive will allow us to more effectively enhance the OpenAI platform into the future.</p>
</blockquote>
<p>An API that <em>is</em> going away is the <a href="https://platform.openai.com/docs/api-reference/assistants">Assistants API</a>, a perpetual beta first launched at OpenAI DevDay in 2023. The new responses API solves effectively the same problems but better, and assistants will be sunset "in the first half of 2026".</p>
<p>The best illustration I've seen of the differences between the two is this <a href="https://github.com/openai/openai-python/commit/2954945ecc185259cfd7cd33c8cbc818a88e4e1b">giant commit</a> to the <code>openai-python</code> GitHub repository updating ALL of the example code in one go.</p>
<p>The most important feature of the Responses API (a feature it shares with the old Assistants API) is that it can manage conversation state on the server for you. An oddity of the Chat Completions API is that you need to maintain your own records of the current conversation, sending back full copies of it with each new prompt. You end up making API calls that look like this (from <a href="https://platform.openai.com/docs/guides/conversation-state?api-mode=chat&amp;lang=javascript#manually-manage-conversation-state">their examples</a>):</p>
<div class="highlight highlight-source-json"><pre>{
    <span class="pl-ent">"model"</span>: <span class="pl-s"><span class="pl-pds">"</span>gpt-4o-mini<span class="pl-pds">"</span></span>,
    <span class="pl-ent">"messages"</span>: [
        {
            <span class="pl-ent">"role"</span>: <span class="pl-s"><span class="pl-pds">"</span>user<span class="pl-pds">"</span></span>,
            <span class="pl-ent">"content"</span>: <span class="pl-s"><span class="pl-pds">"</span>knock knock.<span class="pl-pds">"</span></span>,
        },
        {
            <span class="pl-ent">"role"</span>: <span class="pl-s"><span class="pl-pds">"</span>assistant<span class="pl-pds">"</span></span>,
            <span class="pl-ent">"content"</span>: <span class="pl-s"><span class="pl-pds">"</span>Who's there?<span class="pl-pds">"</span></span>,
        },
        {
            <span class="pl-ent">"role"</span>: <span class="pl-s"><span class="pl-pds">"</span>user<span class="pl-pds">"</span></span>,
            <span class="pl-ent">"content"</span>: <span class="pl-s"><span class="pl-pds">"</span>Orange.<span class="pl-pds">"</span></span>
        }
    ]
}</pre></div>

<p>These can get long and unwieldy - especially when attachments such as images are involved - but the real challenge is when you start integrating tools: in a conversation with tool use you'll need to maintain that full state <em>and</em> drop messages in that show the output of the tools the model requested. It's not a trivial thing to work with.</p>
<p>The new Responses API continues to support this list of messages format, but you also get the option to outsource that to OpenAI entirely: you can add a new <code>"store": true</code> property and then in subsequent messages include a <code>"previous_response_id: response_id</code> key to continue that conversation.</p>
<p>This feels a whole lot more natural than the Assistants API, which required you to think in terms of <a href="https://platform.openai.com/docs/assistants/overview#objects">threads, messages and runs</a> to achieve the same effect.</p>
<p>Also fun: the Response API <a href="https://twitter.com/athyuttamre/status/1899541484308971822">supports HTML form encoding</a> now in addition to JSON:</p>
<pre><code>curl https://api.openai.com/v1/responses \
  -u :$OPENAI_API_KEY \
  -d model="gpt-4o" \
  -d input="What is the capital of France?"
</code></pre>
<p>I found that in an excellent <a href="https://twitter.com/athyuttamre/status/1899541471532867821">Twitter thread</a> providing background on the design decisions in the new API from OpenAI's Atty Eleti. Here's <a href="https://nitter.net/athyuttamre/status/1899541471532867821">a nitter link</a> for people who don't have a Twitter account.</p>
<h4>New built-in tools</h4>
<p>A potentially more exciting change today is the introduction of default tools that you can request while using the new Responses API. There are three of these, all of which can be specified in the <code>"tools": [...]</code> array.</p>
<ul>
<li><code>{"type": "web_search_preview"}</code> - the same search feature available through ChatGPT. The documentation doesn't clarify which underlying search engine is used - I initially assumed Bing, but the tool documentation links to this <a href="https://platform.openai.com/docs/bots">Overview of OpenAI Crawlers</a> page so maybe it's entirely in-house now? Web search <a href="https://platform.openai.com/docs/pricing#web-search">is priced</a> at between $25 and $50 per thousand queries depending on if you're using GPT-4o or GPT-4o mini and the configurable size of your "search context".</li>
<li><code>{"type": "file_search", "vector_store_ids": [...]}</code> provides integration with the latest version of their <a href="https://platform.openai.com/docs/guides/tools-file-search">file search</a> vector store, mainly used for RAG. "Usage is priced⁠ at $2.50 per thousand queries and file storage at $0.10/GB/day, with the first GB free".</li>
<li><code>{"type": "computer_use_preview", "display_width": 1024, "display_height": 768, "environment": "browser"}</code> is the most surprising to me: it's tool access to the <a href="https://openai.com/index/computer-using-agent/">Computer-Using Agent</a> system they built for their Operator product. This one is going to be <em>a lot</em> of fun to explore. The tool's documentation includes a warning <a href="https://platform.openai.com/docs/guides/tools-computer-use#beware-of-prompt-injections">about prompt injection risks</a>. Though on closer inspection I think this may work more like <a href="https://simonwillison.net/2024/Oct/22/computer-use/">Claude Computer Use</a>, where you have to <a href="https://platform.openai.com/docs/guides/tools-computer-use#setting-up-your-environment">run the sandboxed environment yourself</a> rather than outsource that difficult part to them.</li>
</ul>
<p>I'm still thinking through how to expose these new features in my <a href="https://llm.datasette.io/">LLM</a> tool, which is made harder by the fact that a number of plugins now rely on the default OpenAI implementation from core, which is currently built on top of Chat Completions. I've been worrying for a while about the impact of our entire industry building clones of one proprietary API that might change in the future, I guess now we get to see how that shakes out!


    <p>Tags: <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/apis">apis</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/rag">rag</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/11/responses-vs-chat-completions/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-11, from: Dave Winer's linkblog)

Really enjoyed this Fresh air interview with comedian Bill Burr. 

<br> 

<https://m.youtube.com/watch?v=hXHsmnOrWAk>

---

## macOS 15.3.2

date: 2025-03-11, from: Michael Tsai

Juli Clover (release notes, security, no enterprise, no developer, full installer/M4, IPSW/M4): According to Apple&#8217;s release notes, macOS Sequoia 15.3.2 includes important bug fixes and security updates, and it is recommended for all users. See also: Mr. Macintosh and Howard Oakley. Previously: macOS 15.3.1 Update (2025-03-12): Jeff Johnson: The use of the plural &#8220;security fixes&#8221; [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/11/macos-15-3-2/>

---

## iOS 18.3.2 and iPadOS 18.3.2

date: 2025-03-11, from: Michael Tsai

Juli Clover (no iOS/iPadOS release notes, security, no enterprise, no developer): According to Apple&#8217;s release notes, the iOS 18.3.2 update adds important bug fixes and security updates. On some devices, it fixes an issue that could prevent playback of some streaming content. Previously: iOS 18.3.1 and iPadOS 18.3.1 Update (2025-03-12): Juli Clover: After installing iOS [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/11/ios-18-3-2-and-ipados-18-3-2/>

---

## visionOS 2.3.2

date: 2025-03-11, from: Michael Tsai

Juli Clover (no release notes, security, no developer, no enterprise): According to Apple&#8217;s release notes, visionOS 2.3.2 provides important bug fixes, security updates, and addresses an issue that may prevent playback of some streaming content. Previously: visionOS 2.3.1 

<br> 

<https://mjtsai.com/blog/2025/03/11/visionos-2-3-2/>

---

## tvOS 18.3.1

date: 2025-03-11, from: Michael Tsai

Juli Clover (release notes, no security, no developer): This update addresses an issue that may prevent playback of some streaming content on Apple TV 4K (3rd generation). Previously: tvOS 18.3 

<br> 

<https://mjtsai.com/blog/2025/03/11/tvos-18-3-1/>

---

## Quoting Ryan Cavanaugh

date: 2025-03-11, updated: 2025-03-11, from: Simon Willison’s Weblog

<blockquote cite="https://github.com/microsoft/typescript-go/discussions/411"><p>Languages that allow for a structurally similar codebase offer a significant boon for anyone making code changes because we can easily port changes between the two codebases. In contrast, languages that require fundamental rethinking of memory management, mutation, data structuring, polymorphism, laziness, etc., might be a better fit for a ground-up rewrite, but we're undertaking this more as a <em>port</em> that maintains the existing behavior and critical optimizations we've built into the language. Idiomatic Go strongly resembles the existing coding patterns of the TypeScript codebase, which makes this porting effort much more tractable.</p></blockquote>
<p class="cite">&mdash; <a href="https://github.com/microsoft/typescript-go/discussions/411">Ryan Cavanaugh</a>, on why TypeScript chose to rewrite in Go, not Rust</p>

    <p>Tags: <a href="https://simonwillison.net/tags/typescript">typescript</a>, <a href="https://simonwillison.net/tags/go">go</a>, <a href="https://simonwillison.net/tags/rust">rust</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/11/ryan-cavanaugh/#atom-everything>

---

**@IIIF Mastodon feed** (date: 2025-03-11, from: IIIF Mastodon feed)

<p>The preliminary program for the 2025 <a href="https://glammr.us/tags/IIIF" class="mention hashtag" rel="tag">#<span>IIIF</span></a> Annual Conference is now live!</p><p>Take a peek at the lightning talks, presentations, workshops, and more: iiif.io/event/2025/l...</p><p>Register here: www.conftool.org/iiif2025/</p> 

<br> 

<https://glammr.us/@IIIF/114145442337466248>

---

**@Dave Winer's linkblog** (date: 2025-03-11, from: Dave Winer's linkblog)

Was Mr Bill part of the SNL50 reunion? I must’ve missed him! 😀 

<br> 

<https://m.youtube.com/watch?v=M0F3JBzAtE4>

---

## Shaking The Wasp’s Nest

date: 2025-03-11, updated: 2025-03-11, from: Tedium site

Looking back at Gamergate, a flash point in internet history, and what it has to tell us about our current moment. 

<br> 

<https://feed.tedium.co/link/15204/16981378/gamergate-lessons-internet-culture>

---

## Speaking things into existence

date: 2025-03-11, from: One Useful Thing

Expertise in a vibe-filled world of work 

<br> 

<https://www.oneusefulthing.org/p/speaking-things-into-existence>

---

## Announcing Bacalhau v1.6.5: Networking Updates & Usability Improvements

date: 2025-03-11, from: Bacalhau Blog

(2:22) Bacalhau v1.6.5 adds networking opt-out options and usability fixes ahead of v1.7&#8217;s default networking shift. 

<br> 

<https://blog.bacalhau.org/p/announcing-bacalhau-v165-networking>

---

## iKOOLCore R2 Max Review: Using this mini PC a network or storage appliance

date: 2025-03-11, from: Liliputing

<p>The iKOOLCore R2 Max is a mini PC that launched late last year as a small, versatile computer designed for use as a networking appliance or general purpose computer. It supports up to an Intel Core 3 N355 Twin Lake processor and 32GB of RAM. While the iKOOLCORE R2 I reviewed in 2023 was a [&#8230;]</p>
<p>The post <a href="https://liliputing.com/ikoolcore-r2-max-review-using-this-mini-pc-a-network-or-storage-appliance/">iKOOLCore R2 Max Review: Using this mini PC a network or storage appliance</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/ikoolcore-r2-max-review-using-this-mini-pc-a-network-or-storage-appliance/>

---

**@Dave Winer's linkblog** (date: 2025-03-11, from: Dave Winer's linkblog)

Pocket Casts’ Web Player Is Now Available to All. 

<br> 

<https://blog.pocketcasts.com/2025/03/11/webplayer/>

---

## This liquid-cooled “laptop” is a portable PC with a desktop CPU and up to RTX 5090 graphics (crowdfunding)

date: 2025-03-11, from: Liliputing

<p>Laptop computers have gotten pretty powerful in recent years, but desktops still have a few advantages. Want a user-replaceable CPU or GPU? With a few notable exceptions that&#8217;s not possible with laptops, but it&#8217;s pretty standard for desktops. And if you want to prioritize performance over battery life or portability, desktop hardware is usually the [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-liquid-cooled-laptop-is-a-portable-pc-with-a-desktop-cpu-and-up-to-rtx-5090-graphics-crowdfunding/">This liquid-cooled &#8220;laptop&#8221; is a portable PC with a desktop CPU and up to RTX 5090 graphics (crowdfunding)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-liquid-cooled-laptop-is-a-portable-pc-with-a-desktop-cpu-and-up-to-rtx-5090-graphics-crowdfunding/>

---

**@Dave Winer's linkblog** (date: 2025-03-11, from: Dave Winer's linkblog)

People who believe there is magic that makes Bluesky billionaire-proof are misled. If they sold out you and I would have no place to turn. It would be a replay of the mess with Twitter. 

<br> 

<http://scripting.com/2025/03/11/113838.html?title=blueskyIsNotBillionaireproof>

---

## Live with Andy Borowitz

date: 2025-03-11, from: Paul Krugman

A recording from Paul Krugman and Andy Borowitz's live video 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/158852892/60fc9da1d0d8db5193d695d82dc507e0.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/158852892/60fc9da1d0d8db5193d695d82dc507e0.mp3" target="_blank">download audio/mpeg</a><br> 

<https://paulkrugman.substack.com/p/live-with-andy-borowitz>

---

## More than Samoas, Thin Mints, and Tagalongs! Properties about Girl Scouts in the National Register of Historic Places

date: 2025-03-11, from: National Archives, Text Message blog

Tomorrow, March 12, is Girl Scout Day, which commemorates the founding of the Girl Scouts of the USA, when Juliette Gordon Low officially registered the organization&#8217;s first 18 members in Savannah, Georgia.&#160; There are a number of properties in the National Register that are linked to the Girl Scouts, including the Juliette Gordon Low Historic &#8230; <a href="https://text-message.blogs.archives.gov/2025/03/11/more-than-samoas-thin-mints-and-tagalongs-properties-about-girl-scouts-in-the-national-register-of-historic-places/" class="more-link">Continue reading <span class="screen-reader-text">More than Samoas, Thin Mints, and Tagalongs! Properties about Girl Scouts in the National Register of Historic Places</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/03/11/more-than-samoas-thin-mints-and-tagalongs-properties-about-girl-scouts-in-the-national-register-of-historic-places/>

---

## Education's Hidden Hero

date: 2025-03-11, from: Guy Kawasaki blog

Valerie Hill-Jackson, Texas A&M University. 

<br> 

<https://guykawasaki.substack.com/p/educations-hidden-hero>

---

## Very Artificial Intelligence

date: 2025-03-11, from: Status-Q blog

Regular readers might assume that I spurn all things AI-related, and this is not the case. I do use and occasionally derive benefit from the tools that tend to come under this all-embracing phrase du jour. But it does sometimes seem as if, for general questions, the LLMs can throw up wrong answers as often <a class="more-link excerpt-link" href="https://statusq.org/archives/2025/03/11/13089/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<br> 

<https://statusq.org/archives/2025/03/11/13089/>

---

## This handheld gaming PC has a big screen, detachable controllers, and a slow processor

date: 2025-03-11, from: Liliputing

<p>Handheld gaming PCs have come a long way in recent years thanks to advances in mobile chips with high-performance integrated graphics capable of delivering decent frame rates for many recent games. But handhelds with the best processors can be pricey. A new models sold by several Chinese PC brands takes a different approach. It&#8217;s basically [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-handheld-gaming-pc-has-a-big-screen-detachable-controllers-and-a-slow-processor/">This handheld gaming PC has a big screen, detachable controllers, and a slow processor</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-handheld-gaming-pc-has-a-big-screen-detachable-controllers-and-a-slow-processor/>

---

**@Robert's feed at BlueSky** (date: 2025-03-11, from: Robert's feed at BlueSky)

Time to start planning a national general strike. 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lk4ekta2ws2w>

---

**@Feed for Alt USDS** (date: 2025-03-11, from: Feed for Alt USDS)

Couldn't have said it better ourselves. #WeTheBuilders

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lk4dbtzi522l>

---

## Here's how I use LLMs to help me write code

date: 2025-03-11, updated: 2025-03-11, from: Simon Willison’s Weblog

<p>Online discussions about <a href="https://simonwillison.net/tags/ai-assisted-programming/">using Large Language Models to help write code</a> inevitably produce comments from developers who's experiences have been disappointing. They often ask what they're doing wrong - how come some people are reporting such great results when their own experiments have proved lacking?</p>
<p>Using LLMs to write code is <strong>difficult</strong> and <strong>unintuitive</strong>. It takes significant effort to figure out the sharp and soft edges of using them in this way, and there's precious little guidance to help people figure out how best to apply them.</p>
<p>If someone tells you that coding with LLMs is <em>easy</em> they are (probably unintentionally) misleading you. They may well have stumbled on to patterns that work, but those patterns do not come naturally to everyone.</p>
<p>I've been getting great results out of LLMs for code for over two years now. Here's my attempt at transferring some of that experience and intution to you.</p>

<ul>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#set-reasonable-expectations">Set reasonable expectations</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#account-for-training-cut-off-dates">Account for training cut-off dates</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#context-is-king">Context is king</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#ask-them-for-options">Ask them for options</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#tell-them-exactly-what-to-do">Tell them exactly what to do</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#you-have-to-test-what-it-writes-">You have to test what it writes!</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#remember-it-s-a-conversation">Remember it's a conversation</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#use-tools-that-can-run-the-code-for-you">Use tools that can run the code for you</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#vibe-coding-is-a-great-way-to-learn">Vibe-coding is a great way to learn</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#a-detailed-example">A detailed example using Claude Code</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#be-ready-for-the-human-to-take-over">Be ready for the human to take over</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#the-biggest-advantage-is-speed-of-development">The biggest advantage is speed of development</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#llms-amplify-existing-expertise">LLMs amplify existing expertise</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/#bonus-answering-questions-about-codebases">Bonus: answering questions about codebases</a></li>
</ul>


<h4 id="set-reasonable-expectations">Set reasonable expectations</h4>
<p>Ignore the "AGI" hype - LLMs are still fancy autocomplete. All they do is predict a sequence of tokens - but it turns out writing code is mostly about stringing tokens together in the right order, so they can be <em>extremely</em> useful for this provided you point them in the right direction.</p>
<p>If you assume that this technology will implement your project perfectly without you needing to exercise any of your own skill you'll quickly be disappointed.</p>
<p>Instead, use them to <em>augment</em> your abilities. My current favorite mental model is to think of them as an over-confident pair programming assistant who's lightning fast at looking things up, can churn out relevant examples at a moment's notice and can execute on tedious tasks without complaint.</p>
<p><strong>Over-confident</strong> is important. They'll absolutely make mistakes - sometimes subtle, sometimes huge. These mistakes can be <a href="https://simonwillison.net/2025/Mar/2/kellan-elliott-mccrea/">deeply inhuman</a> - if a human collaborator hallucinated a non-existent library or method you would instantly lose trust in them. Don't fall into the trap of anthropomorphizing LLMs and assuming that failures which would discredit a human should discredit the machine in the same way.</p>
<p>When working with LLMs you'll often find things that they just cannot do. Make a note of these - they are useful lessons! They're also valuable examples to stash away for the future - a sign of a strong new model is when it produces usable results for a task that previous models had been unable to handle.</p>
<h4 id="account-for-training-cut-off-dates">Account for training cut-off dates</h4>
<p>A crucial characteristic of any model is its <strong>training cut-off date</strong>. This is the date at which the data they were trained on stopped being collected. For OpenAI's models this is usually October of 2023. Anthropic and Gemini and other providers may have more recent dates.</p>
<p>This is <em>extremely</em> important for code, because it influences what libraries they will be familiar with. If the library you are using had a major breaking change since October 2023, OpenAI models won't know about it!</p>
<p>I gain enough value from LLMs that I now deliberately consider this when picking a library - I try to stick with libraries with good stability and that are popular enough that many examples of them will have made it into the training data. I like applying the principles of <a href="https://boringtechnology.club/">boring technology</a> - innovate on your project's unique selling points, stick with tried and tested solutions for everything else.</p>
<p>LLMs can still help you work with libraries that exist outside their training data, but you need to put in more work - you'll need to feed them recent examples of how those libraries should be used as part of your prompt.</p>
<p>This brings us to the most important thing to understand when working with LLMs:</p>
<h4 id="context-is-king">Context is king</h4>
<p>Most of the craft of getting good results out of an LLM comes down to managing its context - the text that is part of your current conversation.</p>
<p>This context isn't just the prompt that you have fed it: successful LLM interactions usually take the form of conversations, and the context consists of every message from you <em>and</em> every reply from the LLM that exist in the current conversation thread.</p>
<p>When you start a new conversation you reset that context back to zero. This is important to know, as often the fix for a conversation that has stopped being useful is to wipe the slate clean and start again.</p>
<p>Some LLM coding tools go beyond just the conversation. Claude Projects for example allow you to pre-populate the context with quite a large amount of text - including a recent ability to <a href="https://support.anthropic.com/en/articles/10167454-using-the-github-integration">import code directly from a GitHub</a> repository which I'm using a <em>lot</em>.</p>
<p>Tools like Cursor and VS Code Copilot include context from your current editor session and file layout automatically, and you can sometimes use mechanisms like <a href="https://docs.cursor.com/context/@-symbols/overview">Cursor's @commands</a> to pull in additional files or documentation.</p>
<p>One of the reasons I mostly work directly with the <a href="https://chatgpt.com/">ChatGPT</a> and <a href="https://claude.ai/">Claude</a> web or app interfaces is that it makes it easier for me to understand exactly what is going into the context. LLM tools that obscure that context from me are <em>less</em> effective.</p>
<p>You can use the fact that previous replies are also part of the context to your advantage. For complex coding tasks try getting the LLM to write a simpler version first, check that it works and then iterate on building to the more sophisticated implementation.</p>
<p>I often start a new chat by dumping in existing code to seed that context, then work with the LLM to modify it in some way.</p>
<p>One of my favorite code prompting techniques is to drop in several full examples relating to something I want to build, then prompt the LLM to use them as inspiration for a new project. I wrote about that in detail when I <a href="https://simonwillison.net/2024/Mar/30/ocr-pdfs-images/">described my JavaScript OCR application</a> that combines Tesseract.js and PDF.js - two libraries I had used in the past and for which I could provide working examples in the prompt.</p>
<h4 id="ask-them-for-options">Ask them for options</h4>
<p>Most of my projects start with some open questions: is the thing I'm trying to do possible? What are the potential ways I could implement it? Which of those options are the <em>best</em>?</p>
<p>I use LLMs as part of this initial research phase.</p>
<p>I'll use prompts like "what are options for HTTP libraries in Rust? Include usage examples" - or "what are some useful drag-and-drop libraries in JavaScript? Build me an artifact demonstrating each one" (to Claude).</p>
<p>The training cut-off is relevant here, since it means newer libraries won't be suggested. Usually that's OK - I don't want the latest, I want the most stable and the one that has been around for long enough for the bugs to be ironed out.</p>
<p>If I'm going to use something more recent I'll do that research myself, outside of LLM world.</p>
<p>The best way to start any project is with a prototype that proves that the key requirements of that project can be met. I often find that an LLM can get me to that working prototype within a few minutes of me sitting down with my laptop - or sometimes even while working on my phone.</p>
<h4 id="tell-them-exactly-what-to-do">Tell them exactly what to do</h4>
<p>Once I've completed the initial research I change modes dramatically. For production code my LLM usage is much more authoritarian: I treat it like a digital intern, hired to type code for me based on my detailed instructions.</p>
<p>Here's a recent example:</p>
<blockquote>
<p>Write a Python function that uses asyncio httpx with this signature:</p>
<pre><code>async def download_db(url, max_size_bytes=5 * 1025 * 1025): -&gt; pathlib.Path
</code></pre>
<p>Given a URL, this downloads the database to a temp directory and returns a path to it. BUT it checks the content length header at the start of streaming back that data and, if it's more than the limit, raises an error. When the download finishes it uses <code>sqlite3.connect(...)</code> and then runs a <code>PRAGMA quick_check</code> to confirm the SQLite data is valid - raising an error if not. Finally, if the content length header lies to us -  if it says 2MB but we download 3MB - we get an error raised as soon as we notice that problem.</p>
</blockquote>
<p>I could write this function myself, but it would take me the better part of fifteen minutes to look up all of the details and get the code working right. Claude knocked it out <a href="https://gist.github.com/simonw/5aed8bd87016c77465c23e0dc4563ec9">in 15 seconds</a>.</p>
<p>I find LLMs respond extremely well to function signatures like the one I use here. I get to act as the function designer, the LLM does the work of building the body to my specification.</p>
<p>I'll often follow-up with "Now write me the tests using pytest". Again, I dictate my technology of choice - I want the LLM to save me the time of having to type out the code that's sitting in my head already.</p>
<p>If your reaction to this is "surely typing out the code is faster than typing out an English instruction of it", all I can tell you is that it really isn't for me any more. Code needs to be correct. English has enormous room for shortcuts, and vagaries, and typos, and saying things like "use that popular HTTP library" if you can't remember the name off the top of your head.</p>
<p>The good coding LLMs are excellent at filling in the gaps. They're also much less lazy than me - they'll remember to catch likely exceptions, add accurate docstrings, and annotate code with the relevant types.</p>
<h4 id="you-have-to-test-what-it-writes-">You have to test what it writes!</h4>
<p>I wrote about this <a href="https://simonwillison.net/2025/Mar/2/hallucinations-in-code/#qa">at length last week</a>: the one thing you absolutely cannot outsource to the machine is testing that the code actually works.</p>
<p>Your responsibility as a software developer is to deliver working systems. If you haven't seen it run, it's not a working system. You need to invest in strengthening those manual QA habits.</p>
<p>This may not be glamorous but it's always been a critical part of shipping good code, with or without the involvement of LLMs.</p>
<h4 id="remember-it-s-a-conversation">Remember it's a conversation</h4>
<p>If I don't like what an LLM has written, they'll <em>never</em> complain at being told to refactor it! "Break that repetitive code out into a function", "use string manipulation methods rather than a regular expression", or even "write that better!" - the code an LLM produces first time is rarely the final implementation, but they can re-type it dozens of times for you without ever getting frustrated or bored.</p>
<p>Occasionally I'll get a great result from my first prompt - more frequently the more I practice - but I expect to need at least a few follow-ups.</p>
<p>I often wonder if this is one of the key tricks that people are missing - a bad initial result isn't a failure, it's a starting point for pushing the model in the direction of the thing you actually want.</p>
<h4 id="use-tools-that-can-run-the-code-for-you">Use tools that can run the code for you</h4>
<p>An increasing number of LLM coding tools now have the ability to <em>run that code</em> for you. I'm slightly cautious about some of these since there's a possibility of the wrong command causing real damage, so I tend to stick to the ones that run code in a safe sandbox. My favorites right now are:</p>
<ul>
<li>
<strong>ChatGPT Code Interpreter</strong>, where ChatGPT can write and then execute Python code directly in a Kubernetes sandbox VM managed by OpenAI. This is completely safe - it can't even make outbound network connections so really all that can happen is the temporary filesystem gets mangled and then reset.</li>
<li>
<strong>Claude Artifacts</strong>, where Claude can build you a full HTML+JavaScript+CSS web application that is displayed within the Claude interface. This web app is displayed in a <em>very</em> locked down iframe sandbox, greatly restricting what it can do but preventing problems like accidental exfiltration of your private Claude data.</li>
<li>
<strong>ChatGPT Canvas</strong> is a newer ChatGPT feature with similar capabilites to Claude Artifacts. I have not explored this enough myself yet.</li>
</ul>
<p>And if you're willing to live a little more dangerously:</p>
<ul>
<li>
<strong><a href="https://www.cursor.com/">Cursor</a></strong> has an "Agent" feature that can do this, as does <strong><a href="https://codeium.com/windsurf">Windsurf</a></strong> and a growing number of other editors. I haven't spent enough time with these to make recommendations yet.</li>
<li>
<strong><a href="https://aider.chat/">Aider</a></strong> is the leading open source implementation of these kinds of patterns, and is a great example of <a href="https://en.wikipedia.org/wiki/Eating_your_own_dog_food">dogfooding</a> - recent releases of Aider have been <a href="https://aider.chat/HISTORY.html">80%+ written</a> by Aider itself.</li>
<li>
<strong><a href="https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview">Claude Code</a></strong> is Anthropic's new entrant into this space. I'll provide a detailed description of using that tool shortly.</li>
</ul>
<p>This run-the-code-in-a-loop pattern is so powerful that I chose my core LLM tools for coding based primarily on whether they can safely run and iterate on my code.</p>
<h4 id="vibe-coding-is-a-great-way-to-learn">Vibe-coding is a great way to learn</h4>
<p>Andrej Karpathy <a href="https://simonwillison.net/2025/Feb/6/andrej-karpathy/">coined the term</a> vibe-coding just over a month ago, and it has stuck:</p>
<blockquote>
<p>There's a new kind of coding I call "vibe coding", where you fully give in to the vibes, embrace exponentials, and forget that the code even exists. [...] I ask for the dumbest things like "decrease the padding on the sidebar by half" because I'm too lazy to find it. I "Accept All" always, I don't read the diffs anymore. When I get error messages I just copy paste them in with no comment, usually that fixes it.</p>
</blockquote>
<p>Andrej suggests this is "not too bad for throwaway weekend projects". It's also a <em>fantastic</em> way to explore the capabilities of these models - and really fun.</p>
<p>The best way to learn LLMs is to play with them. Throwing absurd ideas at them and vibe-coding until they almost sort-of work is a genuinely useful way to accelerate the rate at which you build intuition for what works and what doesn't.</p>
<p>I've been vibe-coding since before Andrej gave it a name! My <a href="https://github.com/simonw/tools">simonw/tools</a> GitHub repository has 77 HTML+JavaScript apps and 6 Python apps, and every single one of them was built by prompting LLMs. I have learned <em>so much</em> from building this collection, and I add to it at a rate of several new prototypes per week.</p>
<p>You can try most of mine out directly on <a href="https://tools.simonwillison.net/">tools.simonwillison.net</a> - a GitHub Pages published version of the repo. I wrote more detailed notes on some of these back in October in <a href="https://simonwillison.net/2024/Oct/21/claude-artifacts/">Everything I built with Claude Artifacts this week</a>.</p>
<p>If you want to see the transcript of the chat used for each one it's almost always linked to in the commit history for that page - or visit the new <a href="https://tools.simonwillison.net/colophon">colophon page</a> for an index that includes all of those links.</p>
<h4 id="a-detailed-example">A detailed example using Claude Code</h4>
<p>While I was writing this article I had the idea for that <a href="https://tools.simonwillison.net/colophon">tools.simonwillison.net/colophon</a> page - I wanted something I could link to that showed the commit history of each of my tools in a more obvious way than GitHub.</p>
<p>I decided to use that as an opportunity to demonstrate my AI-assisted coding process.</p>
<p>For this one I used <a href="https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview">Claude Code</a>, because I wanted it to be able to run Python code directly against my existing tools repository on my laptop.</p>
<p>Running the <code>/cost</code> command at the end of my session showed me this:</p>
<pre><code>&gt; /cost 
  ⎿  Total cost: $0.61
     Total duration (API): 5m 31.2s
     Total duration (wall): 17m 18.7s
</code></pre>
<p>The initial project took me just over 17 minutes from start to finish, and cost me 61 cents in API calls to Anthropic.</p>
<p>I used the authoritarian process where I told the model exactly what I wanted to build. Here's my sequence of prompts (<a href="https://gist.github.com/simonw/323e1b00ee4f8453c7834a7560eeafc1">full transcript here</a>).</p>
<p>I started by asking for an initial script to gather the data needed for the new page:</p>
<blockquote>
<p>Almost all of the HTML files in this directory were created using Claude prompts, and the details of those prompts are linked in the commit messages. Build a Python script that checks the commit history for each HTML file in turn and extracts any URLs from those commit messages into a list. It should then output a JSON file with this structure: {"pages": {"name-of-file.html": ["url"], {"name-of-file-2.html": ["url1", "url2"], ... - as you can see, some files may have more than one URL in their commit history. The script should be called gather_links.py and it should save a JSON file called gathered_links.json</p>
</blockquote>
<p>I really didn't think very hard about this first prompt - it was more of a stream of consciousness that I typed into the bot as I thought about the initial problem.</p>
<p>I inspected the initial result and spotted some problems:</p>
<blockquote>
<p>It looks like it just got the start of the URLs, it should be getting the whole URLs which might be to different websites - so just get anything that starts https:// and ends with whitespace or the end of the commit message</p>
</blockquote>
<p>Then I changed my mind - I wanted those full commit messages too:</p>
<blockquote>
<p>Update the script - I want to capture the full commit messages AND the URLs - the new format should be {"pages": {"aria-live-regions.html": {"commits": [{"hash": hash, "message": message, "date": iso formatted date], "urls": [list of URLs like before]</p>
</blockquote>
<p>Providing examples like this is a great shortcut to getting exactly what you want.</p>
<p>Note that at no point have I looked at the code it's written in <a href="https://github.com/simonw/tools/blob/87e2577983f11fc9c7bf7b7a268cf2404a21e1c5/gather_links.py">gather_links.py</a>! This is pure vibe-coding: I'm looking at what it's doing, but I've left the implementation details entirely up to the LLM.</p>
<p>The JSON looked good to me, so I said:</p>
<blockquote>
<p>This is working great. Write me a new script called build_colophon.py which looks through that gathered JSON file and builds and saves an HTML page. The page should be mobile friendly and should list every page - with a link to that page - and for each one display the commit messages neatly (convert newlines to br and linkify URLs but no other formatting) - plus the commit message dates and links to the commits themselves which are in <a href="https://github.com/simonw/tools">https://github.com/simonw/tools</a></p>
</blockquote>
<p>Claude knows how GitHub URLs works, so telling it to link to the commits and providing the repo name was enough for it guess <code>https://github.com/simonw/tools/commit/fd9daf885c924ba277806b3440457d52b0ad90a8</code> for those commit URLs.</p>
<p>I tend to find Claude has good default taste when it comes to web page design - I said "the page should be mobile friendly" and left it at that.</p>
<p>Claude churned away and built me a page that wasn't right, so I said:</p>
<blockquote>
<p>it's not working right. ocr.html had a bunch of commits but in colophon.html there is only one link and heading for the first commit and the rest are shown within that same block - there should be separate HTML chunks with links and formatted dates for each of the other commits. Also the neatly formatted date should include the HH:MM as well as the date</p>
</blockquote>
<p>It fixed the bug all on its own, leaving just two changes I decided to make:</p>
<blockquote>
<p>it's almost perfect, but each page should have the commits displayed in the opposite order - oldest first</p>
</blockquote>
<p>And then:</p>
<blockquote>
<p>One last change - the pages are currently listed alphabetically, lets instead list them with the most recently modified at the top</p>
</blockquote>
<p>And that was the entire project! Here's <a href="https://github.com/simonw/tools/blob/1e04f12a1cacea8856946162457d0d77e60ee549/build_colophon.py">build_colophon.py</a>, and the page it generated came out <a href="https://static.simonwillison.net/static/2025/colophon.html">looking pretty good</a>:</p>
<p><img src="https://static.simonwillison.net/static/2025/colophon.jpg" alt="Tools Colophon. This page documents the creation of the tools on tools.simonwillison.net, including links to the Claude conversations used to build them. social-media-cropper.html b4a2bc December 10, 2024 20:35 Social media cropper  https://gist.github.com/simonw/12b8f88932a71450071190e1289a17e9 a10954 February 28, 2025 16:02 Support 2:1 and 14:10 ratios  https://gist.github.com/simonw/e23917eddcbb368c9b6180d581f8f40a" style="max-width: 100%;" /></p>
<p>There was one remaining task: I needed to deploy the new colophon as part of my site, but I didn't want to check that new <code>colophon.html</code> page into the repository itself. I wanted a custom GitHub Pages build process.</p>
<p>I started a brand new Claude Code session (clearing the slate) to see if that was something Claude could figure out too:</p>
<blockquote>
<p>This repo is deployed using GitHub Pages. I want to modify the build slightly - before deploying to GitHub Pages it should run python gather_links.py which will generate a file called gathered_links.json - then it should run python build_colophon.py which will use that file to create colophon.html - I want both gathered_links.json and colophon.html to be published to GitHub pages but I do not want them checked into the repo itself</p>
</blockquote>
<p>Unlike the first time, this time I watched what it was doing very closely - I don't know how to customize GitHub Pages builds in this way and I wanted to both learn how to do it and stay cautious that it might hallucinate details and fail at the task.</p>
<p>It told me it wanted to create this file and asked for my permission:</p>
<div class="highlight highlight-source-yaml"><pre><span class="pl-ent">name</span>: <span class="pl-s">Deploy to GitHub Pages</span>

<span class="pl-ent">on</span>:
  <span class="pl-c"><span class="pl-c">#</span> Run on push to main branch</span>
  <span class="pl-ent">push</span>:
    <span class="pl-ent">branches</span>: <span class="pl-s">[ main ]</span>
  <span class="pl-c"><span class="pl-c">#</span> Allow manual trigger</span>
  <span class="pl-ent">workflow_dispatch</span>:

<span class="pl-c"><span class="pl-c">#</span> Sets permissions of the GITHUB_TOKEN</span>
<span class="pl-ent">permissions</span>:
  <span class="pl-ent">contents</span>: <span class="pl-s">read</span>
  <span class="pl-ent">pages</span>: <span class="pl-s">write</span>
  <span class="pl-ent">id-token</span>: <span class="pl-s">write</span>

<span class="pl-c"><span class="pl-c">#</span> Allow only one concurrent deployment</span>
<span class="pl-ent">concurrency</span>:
  <span class="pl-ent">group</span>: <span class="pl-s">pages</span>
  <span class="pl-ent">cancel-in-progress</span>: <span class="pl-c1">true</span>

<span class="pl-ent">jobs</span>:
  <span class="pl-ent">build</span>:
    <span class="pl-ent">runs-on</span>: <span class="pl-s">ubuntu-latest</span>
    <span class="pl-ent">steps</span>:
      - <span class="pl-ent">name</span>: <span class="pl-s">Checkout</span>
        <span class="pl-ent">uses</span>: <span class="pl-s">actions/checkout@v4</span>
        <span class="pl-ent">with</span>:
          <span class="pl-ent">fetch-depth</span>: <span class="pl-c1">0</span>  <span class="pl-c"><span class="pl-c">#</span> Need full history for git log in gather_links.py</span>

      - <span class="pl-ent">name</span>: <span class="pl-s">Setup Python</span>
        <span class="pl-ent">uses</span>: <span class="pl-s">actions/setup-python@v5</span>
        <span class="pl-ent">with</span>:
          <span class="pl-ent">python-version</span>: <span class="pl-s"><span class="pl-pds">'</span>3.12<span class="pl-pds">'</span></span>

      - <span class="pl-ent">name</span>: <span class="pl-s">Install dependencies</span>
        <span class="pl-ent">run</span>: <span class="pl-s">|</span>
<span class="pl-s">          python -m pip install --upgrade pip</span>
<span class="pl-s"></span>
<span class="pl-s"></span>      - <span class="pl-ent">name</span>: <span class="pl-s">Generate links and build colophon</span>
        <span class="pl-ent">run</span>: <span class="pl-s">|</span>
<span class="pl-s">          python gather_links.py</span>
<span class="pl-s">          python build_colophon.py</span>
<span class="pl-s"></span>
<span class="pl-s"></span>      - <span class="pl-ent">name</span>: <span class="pl-s">Setup Pages</span>
        <span class="pl-ent">uses</span>: <span class="pl-s">actions/configure-pages@v4</span>

      - <span class="pl-ent">name</span>: <span class="pl-s">Build with Jekyll</span>
        <span class="pl-ent">uses</span>: <span class="pl-s">actions/jekyll-build-pages@v1</span>

      - <span class="pl-ent">name</span>: <span class="pl-s">Upload artifact</span>
        <span class="pl-ent">uses</span>: <span class="pl-s">actions/upload-pages-artifact@v3</span>

  <span class="pl-ent">deploy</span>:
    <span class="pl-ent">environment</span>:
      <span class="pl-ent">name</span>: <span class="pl-s">github-pages</span>
      <span class="pl-ent">url</span>: <span class="pl-s">${{ steps.deployment.outputs.page_url }}</span>
    <span class="pl-ent">runs-on</span>: <span class="pl-s">ubuntu-latest</span>
    <span class="pl-ent">needs</span>: <span class="pl-s">build</span>
    <span class="pl-ent">steps</span>:
      - <span class="pl-ent">name</span>: <span class="pl-s">Deploy to GitHub Pages</span>
        <span class="pl-ent">id</span>: <span class="pl-s">deployment</span>
        <span class="pl-ent">uses</span>: <span class="pl-s">actions/deploy-pages@v4</span></pre></div>
<p>I guess that's right? I appreciated that comment about "Need full history for git log in gather_links.py" - that's something I could easily have missed.</p>
<p>Then it said it wanted to add those files to <code>.gitignore</code> - sounds like a good idea.</p>
<p>It spat out this summary of its actions so far:</p>
<blockquote>
<p>I've created a GitHub Actions workflow for GitHub Pages that:</p>
<ol>
<li>Creates a .github/workflows/pages.yml file that:
<ul>
<li>Runs on pushes to main branch</li>
<li>Checkouts the full git history (needed for gather_links.py)</li>
<li>Sets up Python 3.12</li>
<li>Runs both scripts in sequence to generate the files</li>
<li>Builds and deploys to GitHub Pages</li>
</ul>
</li>
<li>Created .gitignore file to prevent the generated files from being committed</li>
</ol>
<p>Now when you push to main, GitHub Actions will:</p>
<ul>
<li>Run the gather_links.py script to create gathered_links.json</li>
<li>Run build_colophon.py to create colophon.html</li>
<li>Deploy both files (and all other files) to GitHub Pages</li>
</ul>
</blockquote>
<p>I checked to see how much it had cost:</p>
<pre><code>&gt; /cost 
  ⎿  Total cost: $0.1788
     Total duration (API): 44.6s
     Total duration (wall): 10m 18.6s
</code></pre>
<p>So 17 cents and 45 seconds using the Claude API. (I got distracted, hence the 10m of total time.) Here's the <a href="https://gist.github.com/simonw/a560b07eef577e6183021d1ccaae7e07">full transcript</a>.</p>
<p>The code didn't look like it would irreversibly break anything, so I pushed it to GitHub to see what would happen.</p>
<p>... and it worked! My new <a href="https://tools.simonwillison.net/colophon">colophon page</a> was live.</p>
<p>There's a catch. I watched the <a href="https://github.com/simonw/tools/actions">GitHub Actions</a> interface while it was running and something didn't look right:</p>
<p><img src="https://static.simonwillison.net/static/2025/github-actions-colophon.jpg" alt="GitHub Actions interface showing three completed actions. Test for Custom pages workflow for colophon,2 Deploy for that same name and another one called pages-build-deployment." style="max-width: 100%;" /></p>
<p>I was expecting that "Test" job, but why were there two separate deploys?</p>
<p>I had a hunch that the previous, default Jekyll deploy was still running, while the new deploy ran at the same time - and it was pure luck of the timing that the new script finished later and over-wrote the result of the original.</p>
<p>It was time to ditch the LLMs and read some documentation!</p>
<p>I found this page on <a href="https://docs.github.com/en/pages/getting-started-with-github-pages/using-custom-workflows-with-github-pages">Using custom workflows with GitHub Pages</a> but it didn't tell me what I needed to know.</p>
<p>On another hunch I checked the GitHub Pages settings interface for my repo and found this option:</p>
<p><img src="https://static.simonwillison.net/static/2025/github-pages-settings.jpg" alt="GitHub Pages UI - shows your site is live at tools.simonwillison.net, deployed 7 minutes ago. - then under Buyld and deployment a source menu shows options for GitHub Actions or for Deploy from a branch (selected)" style="max-width: 100%;" /></p>
<p>My repo was set to "Deploy from a branch", so I switched that over to "GitHub Actions".</p>
<p>I manually updated my <code>README.md</code> to add a link to the new Colophon page in <a href="https://github.com/simonw/tools/commit/4ee15aaad8e9a412505210a30f485528cb3c0390">this commit</a>, which triggered another build.</p>
<p>This time only two jobs ran, and the end result was the correctly deployed site:</p>
<p><img src="https://static.simonwillison.net/static/2025/github-actions-colophon-2.jpg" alt="Only two in-progress workflows now, one is the Test one and the other is the Deploy to GitHub Pages one." style="max-width: 100%;" /></p>
<p>(I later spotted another bug - some of the links inadvertently included <code>&lt;br&gt;</code> tags in their <code>href=</code>, which I <a href="https://github.com/simonw/tools/commit/87e2577983f11fc9c7bf7b7a268cf2404a21e1c5">fixed</a> with another <a href="https://gist.github.com/simonw/d5ccbca1b530868980609222790a97cb">11 cent Claude Code session</a>.)</p>
<p><strong>Update</strong>: I improved the colophon further by <a href="https://simonwillison.net/2025/Mar/13/tools-colophon/">adding AI-generated descriptions of the tools</a>.</p>
<h4 id="be-ready-for-the-human-to-take-over">Be ready for the human to take over</h4>
<p>I got lucky with this example because it helped illustrate my final point: expect to need to take over.</p>
<p>LLMs are no replacement for human intuition and experience. I've spent enough time with GitHub Actions that I know what kind of things to look for, and in this case it was faster for me to step in and finish the project rather than keep on trying to get there with prompts.</p>
<h4 id="the-biggest-advantage-is-speed-of-development">The biggest advantage is speed of development</h4>
<p>My new <a href="https://tools.simonwillison.net/colophon">colophon page</a> took me just under half an hour from conception to finished, deployed feature.</p>
<p>I'm certain it would have taken me significantly longer without LLM assistance - to the point that I probably wouldn't have bothered to build it at all.</p>
<p><em>This</em> is why I care so much about the productivity boost I get from LLMs so much: it's not about getting work done faster, it's about being able to ship projects that I wouldn't have been able to justify spending time on at all.</p>
<p>I wrote about this in March 2023: <a href="https://simonwillison.net/2023/Mar/27/ai-enhanced-development/">AI-enhanced development makes me more ambitious with my projects</a>. Two years later that effect shows no sign of wearing off.</p>
<p>It's also a great way to accelerate learning new things - today that was how to customize my GitHub Pages builds using Actions, which is something I'll certainly use again in the future.</p>
<p>The fact that LLMs let me execute my ideas faster means I can implement more of them, which means I can learn even more.</p>
<h4 id="llms-amplify-existing-expertise">LLMs amplify existing expertise</h4>
<p>Could anyone else have done this project in the same way? Probably not! My prompting here leaned on 25+ years of professional coding experience, including my previous explorations of GitHub Actions, GitHub Pages, GitHub itself and the LLM tools I put into play.</p>
<p>I also <em>knew</em> that this was going to work. I've spent enough time working with these tools that I was confident that assembling a new HTML page with information pulled from my Git history was entirely within the capabilities of a good LLM.</p>
<p>My prompts reflected that - there was nothing particularly novel here, so I dictated the design, tested the results as it was working and occasionally nudged it to fix a bug.</p>
<p>If I was trying to build a Linux kernel driver - a field I know virtually nothing about - my process would be entirely different.</p>
<h4 id="bonus-answering-questions-about-codebases">Bonus: answering questions about codebases</h4>
<p>If the idea of using LLMs to write code for you still feels deeply unappealing, there's another use-case for them which you may find more compelling.</p>
<p>Good LLMs are <em>great</em> at answering questions about code.</p>
<p>This is also very low stakes: the worst that can happen is they might get something wrong, which may take you a tiny bit longer to figure out. It's still likely to save you time compared to digging through thousands of lines of code entirely by yourself.</p>
<p>The trick here is to dump the code into a long context model and start asking questions. My current favorite for this is the catchily titled <code>gemini-2.0-pro-exp-02-05</code>, a preview of Google's Gemini 2.0 Pro which is currently free to use via their API.</p>
<p>I used this trick just <a href="https://simonwillison.net/2025/Mar/6/monolith/">the other day</a>. I was trying out a new-to-me tool called <a href="https://github.com/Y2Z/monolith">monolith</a>, a CLI tool written in Rust which downloads a web page and all of its dependent assets (CSS, images etc) and bundles them together into a single archived file.</p>
<p>I was curious as to how it worked, so I cloned it into my temporary directory and ran these commands:</p>
<div class="highlight highlight-source-shell"><pre><span class="pl-c1">cd</span> /tmp
git clone https://github.com/Y2Z/monolith
<span class="pl-c1">cd</span> monolith

files-to-prompt <span class="pl-c1">.</span> -c <span class="pl-k">|</span> llm -m gemini-2.0-pro-exp-02-05 \
  -s <span class="pl-s"><span class="pl-pds">'</span>architectural overview as markdown<span class="pl-pds">'</span></span></pre></div>
<p>I'm using my own <a href="https://github.com/simonw/files-to-prompt">files-to-prompt</a> tool (built for me by Claude 3 Opus <a href="https://simonwillison.net/2024/Apr/8/files-to-prompt/">last year</a>) here to gather the contents of all of the files in the repo into a single stream. Then I pipe that into my <a href="https://llm.datasette.io/">LLM</a> tool and tell it (via the <a href="https://github.com/simonw/llm-gemini">llm-gemini</a> plugin) to prompt Gemini 2.0 Pro with a system prompt of "architectural overview as markdown".</p>
<p>This gave me back a <a href="https://gist.github.com/simonw/2c80749935ae3339d6f7175dc7cf325b">detailed document</a> describing how the tool works - which source files do what and, crucially, which Rust crates it was using. I learned that it used <code>reqwest</code>, <code>html5ever</code>, <code>markup5ever_rcdom</code> and <code>cssparser</code> and that it doesn't evaluate JavaScript at all, an important limitation.</p>
<p>I use this trick several times a week. It's a great way to start diving into a new codebase - and often the alternative isn't spending more time on this, it's failing to satisfy my curiosity at all.</p>
<p>I included three more examples in <a href="https://simonwillison.net/2025/Feb/14/files-to-prompt/">this recent post</a>.</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/tools">tools</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/github-actions">github-actions</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/claude-artifacts">claude-artifacts</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/11/using-llms-for-code/#atom-everything>

---

**@Feed for Alt USDS** (date: 2025-03-11, from: Feed for Alt USDS)

Major! Here's a source: https://www.cnn.com/2025/03/10/politics/doge-freedom-of-information-act-foia-ruling/index.html

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lk4abresn22i>

---

## Bug Fixes: Unlocking Health Secrets from Insect Genomes on Thelio Astra

date: 2025-03-11, from: System76 Blog

RJ Nowling joins Transmission Log to discuss mosquitos, bioinformatics, and Thelio Astra. 

<br> 

<https://blog.system76.com/post/bioinformatics-thelio-astra-rjnowling-interview>

---

## Think Different

date: 2025-03-11, from: O'Reilly Radar

There’s something that bothers me about the chatter that AI is making “intelligence” ubiquitous. For example, in a recent Bloomberg article, “AI Will Upend a Basic Assumption About How Companies Are Organized,” Azeem Azhar wrote: As intelligence becomes cheaper and faster, the basic assumption underpinning our institutions—that human insight is scarce and expensive—no longer holds. [&#8230;] 

<br> 

<https://www.oreilly.com/radar/think-different/>

---

## A Bio-Integrated Gustatory Interface

date: 2025-03-11, updated: 2025-03-11, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/11/a-bio-integrated-gustatory-interface/>

---

## Here is NASA’s Contract with Clearview AI

date: 2025-03-11, from: 404 Media Group

The oversight and investigative body of NASA spent $16,000 on the technology, 404 Media previously reported. 

<br> 

<https://www.404media.co/here-is-nasas-contract-with-clearview-ai-2/>

---

## AI’s Future: Not Always Bigger

date: 2025-03-11, from: O'Reilly Radar

On May 8, O’Reilly Media will be hosting&#160;Coding with AI: The End of Software Development as We Know It—a live virtual tech conference spotlighting how AI is already supercharging developers, boosting productivity, and providing real value to their organizations. If you’re in the trenches building tomorrow’s development practices today and interested in speaking at the [&#8230;] 

<br> 

<https://www.oreilly.com/radar/ais-future-not-always-bigger/>

---

## The Economic Excuse Industry is Booming

date: 2025-03-11, from: Paul Krugman

No, we don&#8217;t need an economic &#8220;detox&#8221; 

<br> 

<https://paulkrugman.substack.com/p/the-economic-excuse-industry-is-booming>

---

**@Dave Winer's linkblog** (date: 2025-03-11, from: Dave Winer's linkblog)

Kansas politicians say an awful lot. But look beyond those words to catch what they actually do. 

<br> 

<https://kansasreflector.com/2025/03/11/kansas-politicians-say-an-awful-lot-but-look-beyond-those-words-to-catch-what-they-actually-do/>

---

**@Dave Winer's linkblog** (date: 2025-03-11, from: Dave Winer's linkblog)

German Thru-Hiker Detained, Deported, and Banned From US. 

<br> 

<https://thetrek.co/a-german-thru-hiker-has-been-detained-deported-and-banned-from-the-us-without-a-hearing-heres-what-you-need-to-know/>

---

**@Feed for Alt USDS** (date: 2025-03-11, from: Feed for Alt USDS)

@alt18f.bsky.social saved taxpayers billions, modernized digital services, and made government work better. 💡Now, DOGE has shut it down—eliminating projects that served voters, refugees, military personnel, and more. Read about 18F’s impact ⬇️

🔗 https://www.wethebuilders.org/posts/what-is-18F

#altgov #18f 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lk2yqrc3vc2g>

---

## Tricked Into Installing macOS Update

date: 2025-03-11, from: Michael Tsai

Howard Oakley: Over the last few years, many have reported that their Macs spontaneously updated or even upgraded macOS when they didn&#8217;t expect them to, and often against their wishes. This can occur when Software Update in System Settings has Install macOS updates turned off. Explanations of how Apple appears to be able to override [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/10/tricked-into-installing-macos-update/>

---

## Purgeable Disk Space

date: 2025-03-11, from: Michael Tsai

Howard Oakley: The Finder was certain there was nearly 228 GB available, but also claimed that 852 GB was used. Did that mean that my 1 TB SSD had grown in size overnight to just over 1.08 TB? What was this &#8220;83.71 GB purgeable&#8221;, and had the Finder already assumed it had been deleted? Could [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/10/purgeable-disk-space/>

---

## NSFileWrapper Sometimes Changes Modification Date to the Past

date: 2025-03-11, from: Michael Tsai

Matteo Rattoti (via Christian Tietze): This repository demonstrates a bug in NSFileWrapper where overwriting a file with the same content using -[NSFileWrapper writeToURL:options:originalContentsURL:error:] sometimes causes the file&#8217;s modification date to be set in the past instead of updating to the current time. I think I saw someone speculate that this is due to it not [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/10/nsfilewrapper-sometimes-changes-modification-date-to-the-past/>

---

## Weak M4 Mac mini Wi-Fi

date: 2025-03-11, from: Michael Tsai

Mike Wuerthele: Hours after the new Mac mini hit customers&#8217; desks, some users started complaining that when they hooked up a hard drive or SSD to the unit, they&#8217;d see Wi-Fi speeds drop, or be cut entirely. The reports were almost always followed up with the realization that when disconnected, the Wi-Fi speeds would go [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/10/weak-m4-mac-mini-wi-fi/>

---

## Abandon all keyboards

date: 2025-03-11, updated: 2025-03-11, from: Robin Rendle Essays

 

<br> 

<https://robinrendle.com/notes/abandon-all-keyboards/>

---

## LLVM Fortran Levels Up: Goodbye flang-new, Hello flang!

date: 2025-03-11, from: LLVM Blog

<p>LLVM has included a Fortran compiler &ldquo;Flang&rdquo; since LLVM 11 in late 2020. However,until recently the Flang binary was not <code>flang</code> (like <code>clang</code>) but instead<code>flang-new</code>.</p><p>LLVM 20 ends the era of <code>flang-new</code>. The community has decided that Flang isworthy of a new name.</p><p>The &ldquo;new&rdquo; name? You guessed it, <code>flang</code>.</p><p>A simple change that represents a major milestone for Flang.</p><p>This article will cover the almost 10 year journey of Flang. The firstconcepts, multiple rewrites, the adoption of LLVM&rsquo;s Multi Level IntermediateRepresentation (MLIR) and Flang entering the LLVM Project.</p><p>If you want to try <code>flang</code> right now, you can<a href="https://github.com/llvm/llvm-project/releases/tag/llvmorg-20.1.0">download</a>it or try it in your browser using<a href="https://godbolt.org/z/3hhYM37Kh">Compiler Explorer</a>.</p><h1 id="why-fortran">Why Fortran?</h1><p>Fortran was first created in the 1950s, and the name came from &ldquo;Formula Translation&rdquo;.Fortran focused on the mathematics use case and freed programmers from writingassembly code that could only run on specific machines.</p><p>Instead they could write code that looked like a formula. You expect this todaybut for the time it was a revolution. This feature led to heavy use in scientificcomputing: weather modelling, fluid dynamics and computational chemistry, justto name a few.</p><blockquote><p>Whilst many alternative programming languages have comeand gone, it [Fortran] has regained its popularity for writing highperformance codes. Indeed, over 80% of the applicationsrunning on ARCHER2, a 750,000 core Cray EX which isthe UK national supercomputer, are written in Fortran.</p></blockquote><ul><li><a href="https://arxiv.org/pdf/2308.13274">Fortran High-Level Synthesis: Reducing the barriersto accelerating High Performance Computing (HPC) codes on FPGAs</a> (Gabriel Rodriguez-Canal et al., 2023)</li></ul><p>Fortran has had a <a href="https://ondrejcertik.com/blog/2021/03/resurrecting-fortran/">resurgence</a>in recent years, gaining a <a href="https://fpm.fortran-lang.org/">package manager</a>, an unofficial<a href="https://github.com/fortran-lang/stdlib">standard library</a> and <a href="https://lfortran.org/">LFortran</a>,a compiler that supports interactive programming (LFortran also uses LLVM).</p><p>For the full history of Fortran, IBM has an excellent <a href="https://www.ibm.com/history/fortran">article</a>on the topic and I encourage you to look at the<a href="https://archive.computerhistory.org/resources/text/Fortran/102653987.05.01.acc.pdf">&ldquo;Programmer&rsquo;s Primer for Fortran&rdquo;</a>if you want to see the early form of Fortran.</p><p>If you want to learn the language, <a href="https://fortran-lang.org/">fortran-lang.org</a>is a great place to start.</p><h1 id="why-would-you-make-another-fortran-compiler">Why Would You Make Another Fortran Compiler?</h1><p>There are many Fortran compilers. Some are vendor specific such as the<a href="https://www.intel.com/content/www/us/en/developer/tools/oneapi/fortran-compiler.html">Intel Fortran Compiler</a>or NVIDIA&rsquo;s <a href="https://developer.nvidia.com/hpc-compilers">HPC compilers</a>. Thenthere are open source options like <a href="https://gcc.gnu.org/fortran/">GFortran</a>, whichsupports many platforms.</p><p>Why build one more?</p><p>The two partners in the early days of Flang were the US National Labs and NVIDIA.</p><p>For Pat McCormick (Flang project lead at Los Alamos National Laboratory) preservingthe utility of Fortran code was imperative:</p><blockquote><p>These [Fortran] codes represent an essential capability that supports manyelements of our [The United States&rsquo;] scientific mission and will continue to doso for the foreseeable future. A fundamental risk facing these codes is theabsence of a long-term, non-proprietary support path for Fortran.</p></blockquote><p>GFortran might seem to counter that statement, but remember that a single projectis a single point of failures, incompatibilities and disagreements. Having multipleimplementations reduces that risk.</p><p>NVIDIA&rsquo;s Gary Klimowicz <a href="https://www.youtube.com/watch?v=Fy68k5hHgLk">laid out</a>their goals for Flang in a presentation to FortranCon in 2020:</p><ul><li>Use a permissive license like that of <a href="https://llvm.org/LICENSE.txt">LLVM</a>,which is more palatable to commercial users and contributors.</li><li>Develop an active community of Fortran compiler developers that includescompanies and institutions.</li><li>Support Fortran tool development by basing Flang on existing LLVM frameworks.</li><li>Support Fortran language experimentation for future language standards proposals.</li></ul><p>Intentions echoed by Pat McCormick:</p><blockquote><p>The overarching goal was to establish an open-source, modern implementation andsimultaneously grow a community that spanned industry, academia, and federalagencies at both the national and international levels.</p></blockquote><p>Fortran as a language also benefits from having many implementations. For C++language features, it is common to implement them on top of Clang and GCC, toprove the feature is viable and get feedback.</p><p>Implementing the feature multiple times in different compilers uncoversassumptions that may be a problem for certain compilers, or certain groups ofcompiler users.</p><p>In the same way, Flang and GFortran can provide that diversity.</p><p>However, even when features are standardised, standards can be ambiguous andimplementations do make mistakes. A new compiler is a chance to uncover these.</p><p>Jeff Hammond (NVIDIA) is very familiar with this, having tested Flang with manyexisting applications. They had this to say on the motivations for Flangand how users have reacted to it:</p><blockquote><p>The Fortran language has changed quite a bit over the past 30 years. Modern Fortrandeserves a modern compiler ecosystem, that&rsquo;s not only capable of compiling allthe old codes and all the code written for the current standard, but also supportsinnovation in the future.</p><p>Because it&rsquo;s a huge amount of work to build a feature-complete modern Fortran compiler,it&rsquo;s useful to leverage the resources of the entire LLVM community for this effort.NVIDIA and ARM play leading roles right now, with important contributions from IBM,Fujitsu and LBNL [Lawrence Berkeley National Laboratory], e.g. related to testsuites and coarrays. We hope to see the developer community grow in the future.</p><p>Another benefit from the LLVM Fortran compiler is that users are more likely toinvest in supporting a new compiler when it has full language support and runs onall the platforms. A broad developer base is critical to support all the platforms.</p><p>What I have seen so far interacting with our Fortran users is that they are veryexcited about LLVM Flang and were willing to commit to supporting it in theirbuild systems and CI systems, which has driven quality improvements in both theFlang compiler and the applications.</p><p>Like Clang did with C and C++ codes when it started to become popular, Flangis helping to identify bugs in Fortran code that weren&rsquo;t noticed before, whichis making the Fortran software ecosystem better.</p></blockquote><h1 id="pgi-to-llvm-the-flang-timeline">PGI to LLVM: The Flang Timeline</h1><p>The story of Flang really starts in 2015, but the Portland Group (PGI) collaboratedwith US National Labs prior to this. PGI would later become part of NVIDIA andbe instrumental to the Flang project.</p><ul><li><strong>1989</strong> The <a href="https://web.archive.org/web/19970628161656/http://www.pgroup.com/corp_home.html">Portland Group</a>is formed. To provide C, Fortran 77 and C++ compilers for the Intel i860 market.</li><li><strong>1990</strong> Intel bundles PGI compilers with its iPSC/860 supercomputer.</li><li><strong>1996</strong> PGI<a href="https://web.archive.org/web/20100528051556/http://www.sandia.gov/ASCI/Red/papers/Mattson/OVERVIEW.html">works with</a>Sandia National Laboratories to provide compilers for the Accelerated Strategic Computing Initiative (ASCI) Option Redsupercomputer.</li><li><strong>December 2000</strong> PGI becomes a<a href="https://www.electronicsweekly.com/news/archived/resources-archived/stmicroelectronics-to-acquire-pgi-2000-12/">wholly owned subsidiary</a> ofSTMicroElectronics.</li><li><strong>August 2011</strong> Away from PGI, Bill Wendling <a href="https://github.com/llvm-fortran/fort/commit/af352bf765ecf3e55da38c34cb480b269a157894">starts</a>an LLVM based Fortran compiler called &ldquo;Flang&rdquo; (later known as <a href="https://github.com/llvm-fortran/fort">&ldquo;Fort&rdquo;</a>).Bill is joined by several collaborators a few months later.</li><li><strong>July 2013</strong> PGI is <a href="https://www.theregister.com/2013/07/30/nvidia_buys_the_portland_group/">sold to NVIDIA</a>.</li></ul><p>In late 2015 there were the first signs of what would become &ldquo;Classic Flang&rdquo;. Thoughat the time it was just &ldquo;Flang&rdquo;, I will use &ldquo;Classic Flang&rdquo; here for clarity.</p><p>Development of what was to become &ldquo;Fort&rdquo; continued under the &ldquo;Flang&rdquo; name,completely separate from the Classic Flang project.</p><ul><li><p><strong>November 2015</strong> NVIDIA joins the US Department of EnergyExascale Computing Project. Including a commitment to create an open source<a href="https://www.llnl.gov/article/41756/nnsa-national-labs-team-nvidia-develop-open-source-fortran-compiler-technology">Fortran compiler</a>.</p><blockquote><p>“The U.S. Department of Energy’s National Nuclear Security Administration and itsthree national labs [Los Alamos, Lawrence Livermore and Sandia] have reached anagreement with NVIDIA&rsquo;s PGI division to adapt and open-source PGI&rsquo;s Fortranfrontend, and associated Fortran runtime library, for contribution to the LLVM project.”</p></blockquote><p>(this news is also the first appearance of Flang in an issue of<a href="https://llvmweekly.org/issue/98">LLVM Weekly</a>)</p></li><li><p><strong>May 2017</strong> The first release of Classic Flang as a separaterepository, outside of the LLVM Project. Composed of a PGI compiler frontendand a new backend that generates LLVM Intermediate Representation (LLVM IR).</p></li><li><p><strong>August 2017</strong> The Classic Flang project is <a href="https://llvmweekly.org/issue/191">announced officially</a>(according to LLVM Weekly&rsquo;s report, the original mailing list is offline).</p></li></ul><p>During this time, plans were formed to propose moving Classic Flang into the LLVMProject.</p><ul><li><p><strong>December 2017</strong> The original &ldquo;Flang&rdquo; is renamed to<a href="https://github.com/llvm-fortran/fort/commit/0585746476e3c1abe8ab4109b9dd98483cabdf09">&ldquo;Fort&rdquo;</a>so as not to compete with Classic Flang.</p></li><li><p><strong>April 2018</strong> Steve Scalpone (NVIDIA) <a href="https://www.youtube.com/watch?v=sFVRQDgKihY">announces</a>at the European LLVM Developers&rsquo; Conference that the frontend of Classic Flang will be rewritten to addressfeedback from the LLVM community. This new front end became known as &ldquo;F18&rdquo;.</p></li><li><p><strong>August 2018</strong> Eric Schweitz (NVIDIA) begins work on what would become&ldquo;Fortran Intermediate Representation&rdquo;, otherwise known as &ldquo;FIR&rdquo;. This work wouldlater become the <code>fir-dev</code> branch.</p></li><li><p><strong>February 2019</strong> Steve Scalpone <a href="https://lists.llvm.org/pipermail/llvm-dev/2019-February/130497.html">proposes</a>contributing F18 to the LLVM Project.</p></li><li><p><strong>April 2019</strong> F18 is <a href="https://discourse.llvm.org/t/f18-is-accepted-as-part-of-llvm-project/51719">approved</a>for migration into the LLVM Project monorepo.</p><p>At this point F18 was only the early parts of the compiler, it could not generatecode (later <code>fir-dev</code> work addressed this). Despite that, it moved into <code>flang/</code>in the monorepo, awaiting the completion of the rest of the work.</p></li><li><p><strong>June 2019</strong> Peter Waller (Arm) <a href="https://discourse.llvm.org/t/rfc-adding-a-fortran-mode-to-the-clang-driver-for-flang/52307">proposes</a>adding a Fortran mode to the Clang compiler driver.</p></li><li><p><strong>August 2019</strong> The <a href="https://github.com/flang-compiler/f18/commit/b6c30284e7876f6ccd4bb024bd5f349128e99b7c">first appearance</a>of the <code>flang.sh</code> driver wrapper script (more on this later).</p></li><li><p><strong>December 2019</strong> The <a href="https://discourse.llvm.org/t/flang-landing-in-the-monorepo/54022">plan</a>for rewriting the F18 git history to fit into the LLVM project is announced.This effort was led by Arm, with Peter Waller going so far as to writea <a href="https://github.com/llvm/llvm-project/commit/55d5e6cbe2509a24132d056e1f361dc39312929b#diff-c389405236998090c7c8b9741506f01fb28abbd7da52e9566323c585ac0eb89cL910">custom tool</a>to rewrite the history of F18.</p><p>Kiran Chandramohan (Arm) <a href="https://groups.google.com/a/tensorflow.org/g/mlir/c/SCerbBpoxng/m/bVqWTRY7BAAJ">proposes</a>an OpenMP dialect for MLIR, with the intention of using it in Flang (discussioncontinues on <a href="https://discourse.llvm.org/t/rfc-openmp-dialect-in-mlir/397">Discourse</a>during the following January).</p></li><li><p><strong>February 2020</strong> The <a href="https://discourse.llvm.org/t/plan-for-landing-flang-in-monorepo/54546">plan</a>for improvements to F18 to meet the standards required for inclusion in theLLVM monorepo is announced by Richard Barton (Arm).</p></li><li><p><strong>April 2020</strong> Upstreaming of F18 into the LLVM monorepo is<a href="https://github.com/llvm/llvm-project/commit/b98ad941a40c96c841bceb171725c925500fce6c">completed</a>.</p></li></ul><p>At this point what was in the LLVM monorepo was F18, the rewritten frontend ofClassic Flang. Classic Flang remained unchanged, still using the PGI based frontend.</p><p>Around this time work started in the Classic Flang repo on the <code>fir-dev</code> branchthat would enable code generation when using F18.</p><p>For the following events remember that Classic Flang was still in use. The ClassicFlang binary is named <code>flang</code>, just like the folder F18 now occupies in the LLVM Project.</p><p><strong>Note:</strong> Some LLVM changes referenced below will appear to have skipped an LLVM release.This is because they were done after the release branch was created, but beforethe first release from that branch was distributed.</p><ul><li><p><strong>April 2020</strong> The first attempt at adding a new compiler driver for Flang is<a href="https://reviews.llvm.org/D79092">posted</a> for review. It used the name<code>flang-tmp</code>. This change was later abandoned in favour of a different approach.</p></li><li><p><strong>September 2020</strong> Flang&rsquo;s new compiler driver is <a href="https://reviews.llvm.org/D86089">added</a>as an experimental option. This is the first appearance of the <code>flang-new</code> binary,instead of <code>flang-tmp</code> as proposed before.</p><blockquote><p>The name was intended as temporary, but not the driver.</p></blockquote><ul><li>Andrzej Warzyński (Arm, Flang Driver Maintainer)</li></ul></li><li><p><strong>October 2020</strong> Flang is included in an LLVM release for the first time inLLVM 11.0.0. There is an <code>f18</code> binary and the previously mentioned script<code>flang.sh</code>.</p></li><li><p><strong>August 2021</strong> <code>flang-new</code> is no longer experimental and <a href="https://reviews.llvm.org/D105811">replaces</a>the previous Flang compiler driver binary <code>f18</code>.</p></li><li><p><strong>October 2021</strong> LLVM 13.0.0 is the first release to include a <code>flang-new</code> binary(alongside <code>f18</code>).</p></li><li><p><strong>March 2022</strong> LLVM 14.0.0 releases, with <code>flang-new</code> replacing <code>f18</code> as the Flangcompiler driver.</p></li><li><p><strong>April 2022</strong> NVIDIA <a href="https://discourse.llvm.org/t/nvidia-transition-from-fir-dev/61947">ceases development</a>of the <code>fir-dev</code> branch in the Classic Flang project. Upstreaming of <code>fir-dev</code>to the LLVM Project begins around this date.</p><p><code>flang-new</code> can now do <a href="https://reviews.llvm.org/D122008">code generation</a>if the <code>-flang-experimental-exec</code> option is used. This change used workoriginally done on the <code>fir-dev</code> branch.</p></li><li><p><strong>May 2022</strong> Kiran Chandramohan <a href="https://www.youtube.com/watch?v=FoIjafZGDdE">announces</a>at the European LLVM Developers&rsquo; Meeting that Flang&rsquo;s OpenMP 1.1 support is close to complete.</p><p>The <code>flang.sh</code> compiler driver script becomes <code>flang-to-external-fc</code>. Itallows the user to use <code>flang-new</code> to parse Fortran source code, then write it backto a file to be compiled with an existing Fortran compiler.</p><p>The script can be put in place of an existing compiler to test Flang&rsquo;s parser onlarge projects.</p></li><li><p><strong>June 2022</strong> Brad Richardson (Berkeley Lab) <a href="https://reviews.llvm.org/D153379">changes</a><code>flang-new</code> to generate code by default, removing the <code>-flang-experimental-exec</code>option.</p></li><li><p><strong>July 2022</strong> Valentin Clément (NVIDIA) <a href="https://discourse.llvm.org/t/nvidia-transition-from-fir-dev/61947/5">announces</a>that upstreaming of <code>fir-dev</code> to the LLVM Project is complete.</p></li><li><p><strong>September 2022</strong> LLVM 15.0.0 releases, including Flang&rsquo;s experimental codegeneration option.</p></li><li><p><strong>September 2023</strong> LLVM 17.0.0 releases, with Flang&rsquo;s code generation enabledby default.</p></li></ul><p>At this point the LLVM Project contained Flang as it is known today. Sometimesreferred to as &ldquo;LLVM Flang&rdquo;.</p><p>&ldquo;LLVM Flang&rdquo; is the combination of the F18 frontend and MLIR-based code generationfrom <code>fir-dev</code>. As opposed to &ldquo;Classic Flang&rdquo; that combines a PGI based frontend andits own custom backend.</p><p>The initiative to upstream Classic Flang was in some sense complete. Thoughwith all of the compiler rewritten in the process, what landed in the LLVM Projectwas very different to Classic Flang.</p><!-- For some reason Hugo doesn't render any plaintext in these bullet points correctly unless they have blank lines between them. --><ul><li><p><strong>April 2024</strong> The <code>flang-to-external-fc</code> script is <a href="https://github.com/llvm/llvm-project/pull/88904">removed</a>.</p></li><li><p><strong>September 2024</strong> LLVM 19.1.0 releases. The first release of <code>flang-new</code>as a standalone compiler.</p></li><li><p><strong>October 2024</strong> The community deems that Flang has met the criteria to not be&ldquo;new&rdquo; and the name is changed. Goodbye <code>flang-new</code>, hello <code>flang</code>!</p></li><li><p><strong>November 2024</strong> AMD <a href="https://rocm.blogs.amd.com/ecosystems-and-partners/fortran-journey/README.html">announces</a>its next generation Fortran compiler, based on LLVM Flang.</p><p>Arm <a href="https://developer.arm.com/Tools%20and%20Software/Arm%20Compiler%20for%20Linux#Downloads">releases</a> an experimental versionof its new Arm Toolchain for Linux product, which includes LLVM Flangas the Fortan compiler.</p></li><li><p><strong>March 2025</strong> LLVM 20.1.0 releases. The first time the <code>flang</code> binary has beenincluded in a release.</p></li></ul><h1 id="flang-and-the-definition-of-new">Flang and the Definition of New</h1><p>Renaming Flang was discussed a few times <a href="https://discourse.llvm.org/t/reviving-rename-flang-new-to-flang/68130/1">before</a>the final proposal. It was always contentious, so for the final<a href="https://discourse.llvm.org/t/proposal-rename-flang-new-to-flang/69462">proposal</a>Brad Richardson decided to use the <a href="https://github.com/llvm/llvm-www/blob/main/proposals/LP0001-LLVMDecisionMaking.md">LLVM proposal process</a>.Rarely used, but specifically designed for these situations.</p><blockquote><p>After several rounds of back and forth, I thought the discussion wasdevolving and there wasn&rsquo;t much chance we&rsquo;d come to a consensus without someoutside perspective.</p></blockquote><ul><li>Brad Richardson</li></ul><p>That outside perspective included Chris Lattner (co-founder of the LLVM Project),who quickly<a href="https://discourse.llvm.org/t/proposal-rename-flang-new-to-flang/69462/25">identified</a>a unique problem:</p><blockquote><p>We have a bit of an unprecedented situation where an LLVM project is takingthe name of an already established compiler [Classic Flang]. Everyone seems towant the older flang [Classic Flang] to fade away, but flang-new is not asmature and it isn’t clear when and what the criteria should be for that.</p></blockquote><p>Confusion about the <code>flang</code> name was a key motivation for Brad Richardson too:</p><blockquote><p>Part of my concern was that the name &ldquo;flang-new&rdquo; would get common usagebefore we were able to change it. I think it&rsquo;s now been demonstrated that thatconcern was valid, because right now [November 2024] fpm [<a href="https://fpm.fortran-lang.org/">Fortran Package Manager</a>]recognizes the compiler by that name.</p><p>My main goal at that point was just clear goals for when we wouldmake the name change.</p></blockquote><p>No single list of goals was agreed, but some came up many times:</p><ul><li>Known limitations and supported features should be documented.</li><li>As much as possible, work that was expected to fix knownbugs should be completed, to prevent duplicate bug reports.</li><li>Unimplemented language features should fail with a message saying that they areunimplemented. Rather than with a confusing failure or by producing incorrectcode.</li><li>LLVM Flang should perform relatively well when compared to other Fortrancompilers.</li><li>LLVM Flang must have a reasonable pass rate with a large Fortran language testsuite, and results of that must be shown publicly.</li><li>All reasonable steps should be taken to prevent anyone using a pre-packagedClassic Flang confusing it with LLVM Flang.</li></ul><p>You will see a lot of relative language in those, like &ldquo;reasonable&rdquo;. Noone could say exactly what that meant, but everyone agreed that it wasinevitable that one day it would all be true.</p><p>Paul T Robinson summarised the dilemma <a href="https://discourse.llvm.org/t/proposal-rename-flang-new-to-flang/69462/15">early</a>in the thread:</p><blockquote><blockquote><p>the plan is to replace Classic Flang with the new Flang in the future.</p></blockquote><p>I suppose one of the relevant questions here is: Has the future arrived?</p></blockquote><p>After that Steve Scalpone (NVIDIA) gave<a href="https://discourse.llvm.org/t/proposal-rename-flang-new-to-flang/69462/16">their perspective</a>that it was not yet time to change the name.</p><p>So the community got to work on those goals:</p><ul><li>Many performance and correctness issues were addressed by the &ldquo;High LevelFortran Intermediate Representation&rdquo; (HLFIR) (which this article will explain later).</li><li>A cross-company team including Arm, Huawei, Linaro, Nvidia and Qualcomm<a href="https://github.com/orgs/llvm/projects/35/views/1">collaborated</a>to make it possible to build the popular <a href="https://www.spec.org/cpu2017/">SPEC 2017</a>benchmark with Flang.</li><li>Flang gained support for OpenMP up to version 2.5, and was able to compile OpenMPspecific benchmarks like <a href="https://www.spec.org/omp2012/">SPEC OMP</a> and the<a href="https://www.nas.nasa.gov/software/npb.html">NAS Parallel Benchmarks</a>.</li><li>Linaro <a href="https://www.youtube.com/watch?v=Gua80XRPhyY">showed that</a> the performanceof Flang compared favourably with Classic Flang and was not far behind GFortran.</li><li>The GFortran test suite was added to the <a href="https://github.com/llvm/llvm-test-suite/tree/main/Fortran/gfortran">LLVM Test Suite</a>,and Flang achieved good results.</li><li>Fujitsu&rsquo;s <a href="https://github.com/fujitsu/compiler-test-suite">test suite</a> was madepublic and tested with Flang. The process to make IBM&rsquo;s Fortran test suite publicwas started.</li></ul><p>With all that done, in October of 2024 <code>flang-new</code><a href="https://github.com/llvm/llvm-project/commit/06eb10dadfaeaadc5d0d95d38bea4bfb5253e077">became</a><code>flang</code>. The future had arrived.</p><blockquote><p>And it’s merged! It’s been a long (and sometimes contentious) process, butthank you to everyone who contributed to the discussion.</p></blockquote><ul><li>Brad Richardson, <a href="https://discourse.llvm.org/t/proposal-rename-flang-new-to-flang/69462/86">closing out</a> the proposal.</li></ul><p>The goals the community achieved have certainly been worth it for Flang as acompiler, but did Brad achieve their own goals?</p><blockquote><p>What did I hope to see as a result of the name change? I wanted it to beeasier for more people to try it out.</p></blockquote><p>So once you have finished reading this article,<a href="https://github.com/llvm/llvm-project/releases/tag/llvmorg-20.1.0">download</a>Flang or try it out on <a href="https://godbolt.org/z/3hhYM37Kh">Compiler Explorer</a>.You know at least one person will appreciate it!</p><h1 id="fortran-intermediate-representation-fir">Fortran Intermediate Representation (FIR)</h1><p>All compilers that use LLVM as a backend eventually produce code in the form ofthe <a href="https://llvm.org/docs/LangRef.html">LLVM Intermediate Representation</a>(LLVM IR).</p><p>A drawback of this is that LLVM IR does not include language specific information.This means that for example, it cannot be used to optimise arrays in a wayspecific to Fortran programs.</p><p>One solution to this has been to build a higher level IR that represents theunique features of the language, optimise that, then convert the result into LLVM IR.</p><p>Eric Schweitz (NVIDIA) started to do that for Fortran in late 2018:</p><blockquote><p>FIR was originally conceived as a high-level IR that would interoperate withLLVM but have a representation more friendly and amenable to Fortranoptimizations.</p></blockquote><p>Naming is hard but Eric did well here:</p><blockquote><p>FIR was a pun of sorts. Fortran IR and meant to be evocative of the trees(Abstract Syntax Trees).</p></blockquote><p>We will not go into detail about this early FIR, because <a href="https://mlir.llvm.org/">MLIR</a>was revealed soon after Eric started the project and they quickly adopted it.</p><blockquote><p>When MLIR was announced, I quickly switched gears from building datastructures for a new &ldquo;intermediate IR&rdquo; to porting my IR design to MLIR andusing that instead.</p><p>I believe FIR was probably the first &ldquo;serious project&rdquo; outside of Google tostart using MLIR.</p></blockquote><p>The FIR work continued to develop, with Jean Perier (NVIDIA) joining Eric onthe project. It became its own public branch <code>fir-dev</code>, which was later contributedto the LLVM Project.</p><p>The following sections will go into detail on the intermediate representationsthat Flang uses today.</p><h1 id="mlir">MLIR</h1><p>The journey from Classic Flang to LLVM Flang involved a rewrite of theentire compiler. This provided an opportunity to pick up new things fromthe LLVM Project. Most notably MLIR.</p><p>&ldquo;Multi-Level Intermediate Representation&rdquo; (MLIR) was first<a href="https://www.youtube.com/watch?v=qzljG6DKgic">introduced</a> to the LLVMcommunity in 2019, around the time that F18 was approved to move into the LLVM Project.</p><p>The problem that MLIR addresses is the same one that Eric Schweitz tackled with FIR:It is difficult to map high level details of programming languagesinto LLVM IR.</p><p>You either have to attach them to the IR as metadata, try to recover thelost details later, or fight an uphill battle to add the details toLLVM IR itself. These details are crucial for producing optimised code in certainlanguages. (Fortran array optimisations were one use case referenced).</p><p>This led languages such as Swift and Rust to create their own IRs that includeinformation relevant to their own optimisations. After that IR has been optimisedit is converted into LLVM IR and goes through the normal compilation pipeline.</p><p>To implement these IRs they have to build a lot of infrastructure, but it cannotbe shared between the compilers. This is where MLIR comes in.</p><blockquote><p>The MLIR project aims to directly tackle these programming language design andimplementation challenges—by making it very cheap to define and introduce newabstraction levels, and provide “in the box” infrastructure to solve commoncompiler engineering problems.</p></blockquote><ul><li><a href="https://arxiv.org/abs/2002.11054">&ldquo;MLIR: A Compiler Infrastructure for the End of Moore’s Law&rdquo;</a>(Chris Lattner, Mehdi Amini et al., 2020)</li></ul><h2 id="flang-and-mlir">Flang and MLIR</h2><p>The same year MLIR debuted, Eric Schweitz gave a talk at the later USLLVM Developers&rsquo; meeting titled<a href="https://www.youtube.com/watch?v=ff3ngdvUang">&ldquo;An MLIR Dialect for High-Level Optimization of Fortran”</a>.FIR by that point was implemented as an MLIR dialect.</p><blockquote><p>That [switching FIR to be based on MLIR] happened very quickly and I neverlooked back.</p><p>MLIR, even in its infancy, was clearly solving many of the exact same problemsthat we were facing building a new Fortran compiler.</p></blockquote><ul><li>Eric Schweitz</li></ul><p>The MLIR community were also happy to have Flang on board:</p><blockquote><p>It was fantastic to have very quickly in the early days of MLIR a non-ML [Machine Learning] frontendto exercise features we built in MLIR in anticipation. It led us to course-correctin some cases, and Flang was a motivating factor for many feature requests.It contributed significantly to establishing and validating that MLIR had the right foundations.</p></blockquote><ul><li>Mehdi Amini</li></ul><p>Flang did not stop there, later adding another dialect<a href="https://flang.llvm.org/docs/HighLevelFIR.html">&ldquo;High Level Fortran Intermediate Representation&rdquo;</a>(HLFIR) which works at a higher level than FIR. A big target of HLFIRwas array optimisations, that were more complex to handle using FIR alone.</p><blockquote><p>FIR was a compromise on both ends to some degree. It wasn&rsquo;t trying to capturesyntactic information from Fortran, and I assumed there would be work done onan Abstract Syntax Tree. That niche would later be filled by &ldquo;High Level FIR&rdquo;[HLFIR].</p></blockquote><ul><li>Eric Schweitz</li></ul><h2 id="irs-all-the-way-down">IRs All the Way Down</h2><p>The compilation process starts with Fortran source code.</p><div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;"><code class="language-fortran" data-lang="fortran"><span style="display:flex;"><span><span style="color:#66d9ef">subroutine</span> example(a, b)</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">real</span> <span style="color:#66d9ef">::</span> a(:), b(:)</span></span><span style="display:flex;"><span> a <span style="color:#f92672">=</span> b</span></span><span style="display:flex;"><span><span style="color:#66d9ef">end</span> <span style="color:#66d9ef">subroutine</span></span></span></code></pre></div><p>(<a href="https://godbolt.org/z/8j3W46j3j">Compiler Explorer</a>)</p><p>The<a href="https://fortran-lang.org/learn/quickstart/organising_code/">subroutine</a> <code>example</code>assigns array <code>b</code> to array <code>a</code>.</p><p>It is tempting to think of the IRs in a &ldquo;stack&rdquo; where each one is convertedinto the next. However, MLIR allows multiple &ldquo;dialects&rdquo; of MLIR to exist in thesame file.</p><p>(The steps shown here are the most important ones for Flang. In reality thereare many more between Fortran and LLVM IR.)</p><p>In the first step, Flang produces a file that is a mixture of HLFIR, FIRand the built-in MLIR dialect <code>func</code> (function).</p><div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;"><code class="language-mlir" data-lang="mlir"><span style="display:flex;"><span>module attributes {&lt;...&gt;} {</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">func</span>.<span style="color:#66d9ef">func</span> <span style="color:#a6e22e">@_QPexample</span>(%arg0: !fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt; {fir.bindc_name = <span style="color:#e6db74">&#34;a&#34;</span>}, %arg1: !fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt; {fir.bindc_name = <span style="color:#e6db74">&#34;b&#34;</span>}) {</span></span><span style="display:flex;"><span> %0 = fir.dummy_scope : !fir.dscope</span></span><span style="display:flex;"><span> %1:2 = hlfir.declare %arg0 dummy_scope %0 {uniq_name = <span style="color:#e6db74">&#34;_QFexampleEa&#34;</span>} : (!fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt;, !fir.dscope) -&gt; (!fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt;, !fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt;)</span></span><span style="display:flex;"><span> %2:2 = hlfir.declare %arg1 dummy_scope %0 {uniq_name = <span style="color:#e6db74">&#34;_QFexampleEb&#34;</span>} : (!fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt;, !fir.dscope) -&gt; (!fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt;, !fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt;)</span></span><span style="display:flex;"><span> hlfir.assign %2#0 to %1#0 : !fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt;, !fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt;</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">return</span></span></span><span style="display:flex;"><span> }</span></span><span style="display:flex;"><span>}</span></span></code></pre></div><p>For example, the &ldquo;dummy arguments&rdquo; (the<a href="https://fortran-lang.org/en/learn/quickstart/organising_code/#subroutines">arguments of a subroutine</a>)are declared with <code>hlfir.declare</code> but their type is specified with <code>fir.array</code>.</p><p>As MLIR allows multiple dialects to exist in the same file, there is no need forHLFIR to have a <code>hlfir.array</code> that duplicates <code>fir.array</code>, unless HLFIR wantedto handle that differently.</p><p>The next step is to convert HLFIR into FIR:</p><div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;"><code class="language-mlir" data-lang="mlir"><span style="display:flex;"><span>module attributes {&lt;...&gt;} {</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">func</span>.<span style="color:#66d9ef">func</span> <span style="color:#a6e22e">@_QPexample</span>(&lt;...&gt;) {</span></span><span style="display:flex;"><span> &lt;...&gt;</span></span><span style="display:flex;"><span> %c3_i32 = arith.<span style="color:#66d9ef">constant</span> <span style="color:#ae81ff">3</span> : <span style="color:#66d9ef">i32</span></span></span><span style="display:flex;"><span> %7 = fir.convert %0 : (!fir.ref&lt;!fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt;&gt;) -&gt; !fir.ref&lt;!fir.box&lt;none&gt;&gt;</span></span><span style="display:flex;"><span> %8 = fir.convert %5 : (!fir.box&lt;!fir.array&lt;<span style="color:#ae81ff">?x</span><span style="color:#66d9ef">f32</span>&gt;&gt;) -&gt; !fir.box&lt;none&gt;</span></span><span style="display:flex;"><span> %9 = fir.convert %6 : (!fir.ref&lt;!fir.char&lt;<span style="color:#ae81ff">1</span>,<span style="color:#ae81ff">17</span>&gt;&gt;) -&gt; !fir.ref&lt;<span style="color:#66d9ef">i8</span>&gt;</span></span><span style="display:flex;"><span> %10 = fir.call <span style="color:#a6e22e">@_FortranAAssign</span>(%7, %8, %9, %c3_i32) : (!fir.ref&lt;!fir.box&lt;none&gt;&gt;, !fir.box&lt;none&gt;, !fir.ref&lt;<span style="color:#66d9ef">i8</span>&gt;, <span style="color:#66d9ef">i32</span>) -&gt; none</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">return</span></span></span><span style="display:flex;"><span> }</span></span><span style="display:flex;"><span>&lt;...&gt;</span></span><span style="display:flex;"><span>}</span></span></code></pre></div><p>Then this bundle of MLIR dialects is converted into LLVM IR:</p><div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;"><code class="language-mlir" data-lang="mlir"><span style="display:flex;"><span>define void <span style="color:#a6e22e">@example_</span>(ptr %0, ptr %1) {</span></span><span style="display:flex;"><span> &lt;...&gt;</span></span><span style="display:flex;"><span> store { ptr, <span style="color:#66d9ef">i64</span>, <span style="color:#66d9ef">i32</span>, <span style="color:#66d9ef">i8</span>, <span style="color:#66d9ef">i8</span>, <span style="color:#66d9ef">i8</span>, <span style="color:#66d9ef">i8</span>, [<span style="color:#ae81ff">1 x</span> [<span style="color:#ae81ff">3 x</span> <span style="color:#66d9ef">i64</span>]] } %37, ptr %3, align <span style="color:#ae81ff">8</span></span></span><span style="display:flex;"><span> call void <span style="color:#a6e22e">@llvm.memcpy.p0.p0.i32</span>(ptr %5, ptr %4, <span style="color:#66d9ef">i32</span> <span style="color:#ae81ff">48</span>, <span style="color:#66d9ef">i1</span> false)</span></span><span style="display:flex;"><span> %38 = call {} <span style="color:#a6e22e">@_FortranAAssign</span>(ptr %5, ptr %3, ptr <span style="color:#a6e22e">@_QQclX2F6170702F6578616D706C652E66393000</span>, <span style="color:#66d9ef">i32</span> <span style="color:#ae81ff">3</span>)</span></span><span style="display:flex;"><span> ret void</span></span><span style="display:flex;"><span>}</span></span><span style="display:flex;"><span>&lt;...&gt;</span></span></code></pre></div><p>This LLVM IR passes through the standard compilation pipeline that clang also uses.Eventually being converted into target specific<a href="https://llvm.org/docs/MIRLangRef.html">Machine IR</a> (MIR), into assembly andfinally into a binary program.</p><ul><li>Fortran</li><li>MLIR (including HLFIR and FIR)</li><li>MLIR (including FIR)</li><li>LLVM IR</li><li>MIR</li><li>Assembly</li><li>Binary</li></ul><p>At each stage, the optimisations most suited to that stage are done.For example, while you have HLFIR you could optimise array accesses because at thatpoint you have the most information about how the Fortran treats arrays.</p><p>If Flang were to do this later on, in LLVM IR, it would be much more difficult.Either the information would be lost or incomplete, or you would be at a stage inthe pipeline where you cannot assume that you started with a specific sourcelanguage.</p><h1 id="openmp-to-everyone">OpenMP to Everyone</h1><p><strong>Note:</strong> Most of the points made in this section also apply to <a href="https://www.openacc.org/">OpenACC</a> support in Flang. In the interest of brevity, Iwill only describe OpenMP in this article. You can find more about OpenACCin this <a href="https://www.youtube.com/watch?v=vVmCLdSboWc">presentation</a>.</p><h2 id="openmp-basics">OpenMP Basics</h2><p><a href="https://www.openmp.org/">OpenMP</a> is a standardised API for addingparallelism to C, C++ and Fortran programs.</p><p>Programmers mark parts of their code with &ldquo;directives&rdquo;. These directivestell the compiler how the work of the program should be distributed.Based on this, the compiler transforms the code and inserts calls to anOpenMP runtime library for certain operations.</p><p>This is a Fortran example:</p><div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;"><code class="language-Fortran" data-lang="Fortran"><span style="display:flex;"><span><span style="color:#66d9ef">SUBROUTINE</span> SIMPLE(N, A, B)</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">INTEGER</span> I, N</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">REAL</span> B(N), A(N)</span></span><span style="display:flex;"><span><span style="color:#75715e">!$OMP PARALLEL DO</span></span></span><span style="display:flex;"><span><span style="color:#75715e"></span> <span style="color:#66d9ef">DO</span> I<span style="color:#f92672">=</span><span style="color:#ae81ff">2</span>,N</span></span><span style="display:flex;"><span> B(I) <span style="color:#f92672">=</span> (A(I) <span style="color:#f92672">+</span> A(I<span style="color:#f92672">-</span><span style="color:#ae81ff">1</span>)) <span style="color:#f92672">/</span> <span style="color:#ae81ff">2.0</span></span></span><span style="display:flex;"><span> <span style="color:#66d9ef">ENDDO</span></span></span><span style="display:flex;"><span><span style="color:#66d9ef">END</span> <span style="color:#66d9ef">SUBROUTINE</span> SIMPLE</span></span></code></pre></div><p>(from <a href="https://www.openmp.org/wp-content/uploads/openmp-examples-4.5.0.pdf">&ldquo;OpenMP Application Programming Interface Examples&rdquo;</a>, <a href="https://godbolt.org/z/chjzs3o6r">Compiler Explorer</a>)</p><p><strong>Note:</strong> Fortran arrays are <a href="https://fortran-lang.org/en/learn/quickstart/arrays_strings/">one-based</a> by default. So the first element is at index 1. This example reads the previous element as well, so it starts <code>I</code> at 2.</p><p><code>!$OMP PARALLEL DO</code> is a directive in the form of a Fortran comment (Fortrancomments start with <code>!</code>).<code>PARALLEL DO</code> starts a parallel &ldquo;region&rdquo; thatincludes the code from <code>DO</code> to <code>ENDDO</code>.</p><p>This tells the compiler that the work in the <code>DO</code> loop should be shared amongstall the threads available to the program.</p><p>Clang has <a href="https://blog.llvm.org/2015/05/openmp-support_22.html">supported OpenMP</a>for many years now. The equivalent C++ code is:</p><div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;"><code class="language-C++" data-lang="C++"><span style="display:flex;"><span><span style="color:#66d9ef">void</span> <span style="color:#a6e22e">simple</span>(<span style="color:#66d9ef">int</span> n, <span style="color:#66d9ef">float</span> <span style="color:#f92672">*</span>a, <span style="color:#66d9ef">float</span> <span style="color:#f92672">*</span>b)</span></span><span style="display:flex;"><span>{</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">int</span> i;</span></span><span style="display:flex;"><span></span></span><span style="display:flex;"><span> <span style="color:#75715e">#pragma omp parallel for</span></span></span><span style="display:flex;"><span><span style="color:#75715e"></span> <span style="color:#66d9ef">for</span> (i<span style="color:#f92672">=</span><span style="color:#ae81ff">1</span>; i<span style="color:#f92672">&lt;</span>n; i<span style="color:#f92672">++</span>)</span></span><span style="display:flex;"><span> b[i] <span style="color:#f92672">=</span> (a[i] <span style="color:#f92672">+</span> a[i<span style="color:#f92672">-</span><span style="color:#ae81ff">1</span>]) <span style="color:#f92672">/</span> <span style="color:#ae81ff">2.0</span>;</span></span><span style="display:flex;"><span>}</span></span></code></pre></div><p>(<a href="https://godbolt.org/z/Yh9jb8rKe">Compiler Explorer</a>)</p><p>For C++, the directive is in the form of a <code>#pragma</code> and attachedto the <code>for</code> loop.</p><p>LLVM IR does not know anything about OpenMP specifically, so Clang does all thework of converting the intent of the directives into LLVM IR. The output fromClang looks like this:</p><div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;"><code class="language-mlir" data-lang="mlir"><span style="display:flex;"><span>define dso_local void <span style="color:#a6e22e">@simple</span>(int, float*, float*)</span></span><span style="display:flex;"><span> (<span style="color:#66d9ef">i32</span> noundef %n, ptr noundef %a, ptr noundef %b) &lt;...&gt; {</span></span><span style="display:flex;"><span>entry:</span></span><span style="display:flex;"><span>&lt;...&gt;</span></span><span style="display:flex;"><span> call void (&lt;...&gt;) <span style="color:#a6e22e">@__kmpc_fork_call</span>(<span style="color:#a6e22e">@simple</span> &lt;...&gt; (.omp_outlined) &lt;...&gt;)</span></span><span style="display:flex;"><span> ret void</span></span><span style="display:flex;"><span>}</span></span><span style="display:flex;"><span></span></span><span style="display:flex;"><span>define internal void <span style="color:#a6e22e">@simple</span>(int, float*, float*) (.omp_outlined)</span></span><span style="display:flex;"><span> (ptr &lt;...&gt; %.global_tid.,</span></span><span style="display:flex;"><span> ptr &lt;...&gt; %.bound_tid.,</span></span><span style="display:flex;"><span> ptr &lt;...&gt; %n,</span></span><span style="display:flex;"><span> ptr &lt;...&gt; %b,</span></span><span style="display:flex;"><span> ptr &lt;...&gt; %a) {</span></span><span style="display:flex;"><span>entry:</span></span><span style="display:flex;"><span>&lt;...&gt;</span></span><span style="display:flex;"><span> call void <span style="color:#a6e22e">@__kmpc_for_static_init_4</span>(&lt;...&gt;)</span></span><span style="display:flex;"><span>&lt;...&gt;</span></span><span style="display:flex;"><span>omp.inner.for.body.i:</span></span><span style="display:flex;"><span>&lt;...&gt;</span></span><span style="display:flex;"><span>omp.loop.exit.i:</span></span><span style="display:flex;"><span> call void <span style="color:#a6e22e">@__kmpc_for_static_fini</span>(&lt;...&gt;)</span></span><span style="display:flex;"><span>&lt;...&gt;</span></span><span style="display:flex;"><span> ret void</span></span><span style="display:flex;"><span>}</span></span></code></pre></div><p>(output edited for readability)</p><p>The body of <code>simple</code> no longer does all the work. Instead it uses<code>__kmpc_fork_call</code> to tell the OpenMP<a href="https://github.com/llvm/llvm-project/tree/main/openmp">runtime library</a>to run another function, <code>simple (.omp_outlined)</code> to do the work.</p><p>This second function is referred to as a &ldquo;micro task&rdquo;. The runtime librarysplits the work across many instances of the micro task and each timethe micro task function is called, it gets a different slice of the work.</p><p>The number of instances is only known at runtime, and can be controlled withsettings such as <a href="https://www.openmp.org/spec-html/5.0/openmpse50.html"><code>OMP_NUM_THREADS</code></a>.</p><p>The LLVM IR representation of <code>simple (.omp_outlined)</code> includes labels like<code>omp.loop.exit.i</code>, but these are not specific to OpenMP. They are just normal LLVM IRlabels whose name includes <code>omp</code>.</p><h2 id="sharing-clangs-openmp-knowledge">Sharing Clang&rsquo;s OpenMP Knowledge</h2><p>Shortly after Flang was approved to join the LLVM Project, it was proposed thatFlang should share OpenMP support code with Clang.</p><blockquote><p>This is an RFC for the design of the OpenMP front-ends under the LLVMumbrella. It is necessary to talk about this now as Flang (aka. F18) ismaturing at a very promising rate and about to become a sub-project nextto Clang.</p><p>TLDR;Keep AST nodes and Sema separated but unify LLVM-IR generation forOpenMP constructs based on the (almost) identical OpenMP directivelevel.</p></blockquote><ul><li>&ldquo;[RFC] Proposed interplay of Clang &amp; Flang &amp; LLVM wrt. OpenMP&rdquo;,Johannes Doerfert (Lawrence Livermore National Laboratory), May 2019 (only one<a href="https://discourse.llvm.org/t/rfc-proposed-interplay-of-clang-flang-llvm-wrt-openmp-flang-dev/51905">part</a>of this still exists online, this quote is from a copy of the other part, which was provided to me).</li></ul><p>For our purposes, the &ldquo;TLDR&rdquo; means that although both compilers have differentinternal representations of the OpenMP directives, they both have to produceLLVM IR from that representation.</p><p>This proposal led to the creation of the <code>LLVMFrontendOpenMP</code> library in<code>llvm</code>. By using the same class <code>OpenMPIRBuilder</code>, there is no need to repeat work inboth compilers, at least for this part of the OpenMP pipeline.</p><p>As you will see in the following sections, Flang has diverged from Clang for otherparts of OpenMP processing.</p><h2 id="bringing-openmp-to-mlir">Bringing OpenMP to MLIR</h2><p>Early in 2020, Kiran Chandramohan (Arm) <a href="https://discourse.llvm.org/t/rfc-openmp-dialect-in-mlir/397">proposed</a>an MLIR dialect for OpenMP, for use by Flang.</p><blockquote><p>We started the work for the OpenMP MLIR dialect because of Flang.&hellip; So, MLIR has an OpenMP dialect because of Flang.</p></blockquote><ul><li>Kiran Chandramohan</li></ul><p>This dialect would represent OpenMP specifically, unlike the generic LLVM IRyou get from Clang.</p><p>If you compile the original Fortran OpenMP example without OpenMP enabled, youget this MLIR:</p><div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;"><code class="language-mlir" data-lang="mlir"><span style="display:flex;"><span>module attributes {&lt;...&gt;} {</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">func</span>.<span style="color:#66d9ef">func</span> <span style="color:#a6e22e">@_QPsimple</span>(&lt;...&gt; {</span></span><span style="display:flex;"><span> %1:2 = hlfir.declare %arg0 &lt;...&gt; {uniq_name = <span style="color:#e6db74">&#34;_QFsimpleEn&#34;</span>} : &lt;...&gt;</span></span><span style="display:flex;"><span> %3:2 = hlfir.declare %2 &lt;...&gt; {uniq_name = <span style="color:#e6db74">&#34;_QFsimpleEi&#34;</span>} : &lt;...&gt;</span></span><span style="display:flex;"><span> %10:2 = hlfir.declare %arg1(%9) &lt;...&gt; {uniq_name = <span style="color:#e6db74">&#34;_QFsimpleEa&#34;</span>} : &lt;...&gt;</span></span><span style="display:flex;"><span> %17:2 = hlfir.declare %arg2(%16) &lt;...&gt; {uniq_name = <span style="color:#e6db74">&#34;_QFsimpleEb&#34;</span>} : &lt;...&gt;</span></span><span style="display:flex;"><span> %22:2 = fir.do_loop &lt;...&gt; {</span></span><span style="display:flex;"><span> &lt;...&gt;</span></span><span style="display:flex;"><span> hlfir.assign %34 to %37 : <span style="color:#66d9ef">f32</span>, !fir.ref&lt;<span style="color:#66d9ef">f32</span>&gt;</span></span><span style="display:flex;"><span> }</span></span><span style="display:flex;"><span> fir.store %22#1 to %3#1 : !fir.ref&lt;<span style="color:#66d9ef">i32</span>&gt;</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">return</span></span></span><span style="display:flex;"><span> }</span></span><span style="display:flex;"><span>}</span></span></code></pre></div><p>(output edited for readability)</p><p>Notice that the <code>DO</code> loop has been converted into <code>fir.do_loop</code>. Now enableOpenMP and compile again:</p><div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;"><code class="language-mlir" data-lang="mlir"><span style="display:flex;"><span>module attributes {&lt;...&gt;} {</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">func</span>.<span style="color:#66d9ef">func</span> <span style="color:#a6e22e">@_QPsimple</span>(&lt;...&gt; {</span></span><span style="display:flex;"><span> %1:2 = hlfir.declare %arg0 &lt;...&gt; {uniq_name = <span style="color:#e6db74">&#34;_QFsimpleEn&#34;</span>} : &lt;...&gt;</span></span><span style="display:flex;"><span> %10:2 = hlfir.declare %arg1(%9) &lt;...&gt; {uniq_name = <span style="color:#e6db74">&#34;_QFsimpleEa&#34;</span>} : &lt;...&gt;</span></span><span style="display:flex;"><span> %17:2 = hlfir.declare %arg2(%16) &lt;...&gt; {uniq_name = <span style="color:#e6db74">&#34;_QFsimpleEb&#34;</span>} : &lt;...&gt;</span></span><span style="display:flex;"><span> omp.parallel {</span></span><span style="display:flex;"><span> %19:2 = hlfir.declare %18 {uniq_name = <span style="color:#e6db74">&#34;_QFsimpleEi&#34;</span>} : &lt;...&gt;</span></span><span style="display:flex;"><span> omp.wsloop {</span></span><span style="display:flex;"><span> omp.loop_nest (%arg3) : i32 = (%c2_i32) to (%20) inclusive step (%c1_i32) {</span></span><span style="display:flex;"><span> hlfir.assign %32 to %35 : <span style="color:#66d9ef">f32</span>, !fir.ref&lt;<span style="color:#66d9ef">f32</span>&gt;</span></span><span style="display:flex;"><span> omp.yield</span></span><span style="display:flex;"><span> }</span></span><span style="display:flex;"><span> }</span></span><span style="display:flex;"><span> omp.terminator</span></span><span style="display:flex;"><span> }</span></span><span style="display:flex;"><span> <span style="color:#66d9ef">return</span></span></span><span style="display:flex;"><span> }</span></span><span style="display:flex;"><span>}</span></span></code></pre></div><p>(output edited for readability)</p><p>You will see that instead of <code>fir.do_loop</code> you have <code>omp.parallel</code>,<code>omp.wsloop</code> and <code>omp.loop_nest</code>. <code>omp</code> is an MLIR dialect that describes<a href="https://mlir.llvm.org/docs/Dialects/OpenMPDialect/">OpenMP</a>.</p><p>This translation of the <code>PARALLEL DO</code> directive is much more literal thanthe LLVM IR produced by Clang for <code>parallel for</code>.</p><p>As the <code>omp</code> dialect is specifically made for OpenMP, it can representit much more naturally. This makes it easier to understand the code and towrite optimisations.</p><p>Of course Flang needs to produce LLVM IR eventually, and to do that ituses the same <code>OpenMPIRBuilder</code> class that Clang does. From theMLIR shown previously, <code>OpenMPIRBuilder</code> produces the following LLVM IR:</p><div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;"><code class="language-mlir" data-lang="mlir"><span style="display:flex;"><span>define void <span style="color:#a6e22e">@simple_</span> &lt;...&gt; {</span></span><span style="display:flex;"><span>entry:</span></span><span style="display:flex;"><span> call void (&lt;...&gt;) <span style="color:#a6e22e">@__kmpc_fork_call</span>( &lt;...&gt; <span style="color:#a6e22e">@simple_..omp_par</span> &lt;...&gt;)</span></span><span style="display:flex;"><span> ret void</span></span><span style="display:flex;"><span>}</span></span><span style="display:flex;"><span></span></span><span style="display:flex;"><span>define internal void <span style="color:#a6e22e">@simple_..omp_par</span> &lt;...&gt; {</span></span><span style="display:flex;"><span>omp.par.entry:</span></span><span style="display:flex;"><span> call void <span style="color:#a6e22e">@__kmpc_for_static_init_4u</span> &lt;...&gt;</span></span><span style="display:flex;"><span>omp_loop.exit:</span></span><span style="display:flex;"><span> call void <span style="color:#a6e22e">@__kmpc_barrier</span>(&lt;...&gt;)</span></span><span style="display:flex;"><span> ret void</span></span><span style="display:flex;"><span>omp_loop.body:</span></span><span style="display:flex;"><span> &lt;...&gt;</span></span><span style="display:flex;"><span>}</span></span></code></pre></div><p>The LLVM IR produced by Flang and Clang is superficially different, butstructurally very similar. Considering the differences in source languageand compiler passes, it is not surprising that they are not identical.</p><h2 id="clangir-and-the-future">ClangIR and the Future</h2><p>It is surprising that a compiler for a language as old as Fortran got ahead ofClang (the most well known LLVM based compiler) when it came to adopting MLIR.</p><p>This is largely due to timing, MLIR is a recent invention and Clang existedbefore MLIR arrived. Clang also has a legacy to protect, so it is unlikely tomigrate to a new technology right away.</p><p>The <a href="https://llvm.github.io/clangir/">ClangIR</a> project is working to changeClang to use a new MLIR dialect, &ldquo;Clang Intermediate Representation&rdquo; (&ldquo;CIR&rdquo;).Much like Flang and its HLFIR/FIR dialects, ClangIR will convert C and C++into the CIR dialect.</p><p>Work on OpenMP support for ClangIR has already <a href="https://github.com/llvm/clangir/pull/382">started</a>,using the <code>omp</code> dialect that was originally added for Flang.</p><p>Unfortunately at time of writing the <code>parallel</code> directive is not supported byClangIR. However, if you look at the CIR produced when OpenMP is disabled, you cansee the <code>cir.for</code> element that the OpenMP dialect might replace:</p><div class="highlight"><pre tabindex="0" style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;"><code class="language-mlir" data-lang="mlir"><span style="display:flex;"><span>module &lt;...&gt; attributes {&lt;...&gt;} {</span></span><span style="display:flex;"><span> cir.<span style="color:#66d9ef">func</span> <span style="color:#a6e22e">@_Z6simpleiPfS_</span>( &lt;...&gt; {</span></span><span style="display:flex;"><span> %1 = cir.alloca &lt;...&gt; [<span style="color:#e6db74">&#34;a&#34;</span>, init] &lt;...&gt;</span></span><span style="display:flex;"><span> %2 = cir.alloca &lt;...&gt; [<span style="color:#e6db74">&#34;b&#34;</span>, init] &lt;...&gt;</span></span><span style="display:flex;"><span> %3 = cir.alloca &lt;...&gt; [<span style="color:#e6db74">&#34;i&#34;</span>] &lt;...&gt;</span></span><span style="display:flex;"><span> cir.scope {</span></span><span style="display:flex;"><span> cir.for :</span></span><span style="display:flex;"><span> cond { &lt;...&gt; }</span></span><span style="display:flex;"><span> body {</span></span><span style="display:flex;"><span> &lt;...&gt;</span></span><span style="display:flex;"><span> cir.yield <span style="color:#66d9ef">loc</span>(#loc13)</span></span><span style="display:flex;"><span> } step {</span></span><span style="display:flex;"><span> &lt;...&gt;</span></span><span style="display:flex;"><span> cir.yield <span style="color:#66d9ef">loc</span>(#loc36)</span></span><span style="display:flex;"><span> } <span style="color:#66d9ef">loc</span>(#loc36)</span></span><span style="display:flex;"><span> } <span style="color:#66d9ef">loc</span>(#loc36)</span></span><span style="display:flex;"><span> cir.<span style="color:#66d9ef">return</span> <span style="color:#66d9ef">loc</span>(#loc2)</span></span><span style="display:flex;"><span> } <span style="color:#66d9ef">loc</span>(#loc31)</span></span><span style="display:flex;"><span>} <span style="color:#66d9ef">loc</span>(#loc)</span></span></code></pre></div><p>(on <a href="https://godbolt.org/z/Yj9EKK7ao">Compiler Explorer</a>)</p><h1 id="flang-takes-driving-lessons">Flang Takes Driving Lessons</h1><p><strong>Note:</strong> This section paraphrases material from<a href="https://github.com/llvm/llvm-project/blob/main/flang/docs/FlangDriver.md">&ldquo;Flang Drivers&rdquo;</a>.If you want more detail please refer to that document, or<a href="https://fabiensanglard.net/dc/index.php">Driving Compilers</a>.</p><p>&ldquo;Driver&rdquo; in a compiler context means the part of the compiler that decideshow to handle a set of options. For instance, when you use the option <code>-march=armv8a+memtag</code>,something in Flang knows that you want to compile for Armv8.0-a with the MemoryTagging Extension enabled.</p><p><code>-march=</code> is an example of a &ldquo;compiler driver&rdquo; option. These options are what usersgive to the compiler. There is actually a second driver after this, confusinglycalled the &ldquo;frontend&rdquo; driver, despite being behind the scenes.</p><p>In Flang&rsquo;s case the &ldquo;compiler driver&rdquo; is <code>flang</code> and the &ldquo;frontend driver&rdquo; is<code>flang -fc1</code> (they are two separate tools, contained in the same binary).</p><p>They are separate tools so that the compiler driver can provide an interfacesuited to compiler users, with stable options that do not change over time.On the other hand, the frontend driver is suited to compiler developers, exposesinternal compiler details and does not have a stable set of options.</p><p>You can see the differences if you add <code>-###</code> to the compiler command:</p><pre tabindex="0"><code>$ ./bin/flang /tmp/test.f90 -march=armv8a+memtag -### &#34;&lt;...&gt;/flang&#34; &#34;-fc1&#34; &#34;-triple&#34; &#34;aarch64-unknown-linux-gnu&#34; &#34;-target-feature&#34; &#34;+v8a&#34; &#34;-target-feature&#34; &#34;+mte&#34; &#34;/usr/bin/ld&#34; \ &#34;-o&#34; &#34;a.out&#34; &#34;-L/usr/lib/gcc/aarch64-linux-gnu/11&#34;</code></pre><p>(output edited for readability)</p><p>The compiler driver has split the compilation into a job for the frontend(<code>flang -fc1</code>) and the linker (<code>ld</code>). <code>-march=</code> has been converted into manyarguments to <code>flang -fc1</code>. This means that if compiler developers decided tochange how <code>-march=</code> was converted, existing <code>flang</code> commands would still work.</p><p>Another responsibility of the compiler driver is to know where to find librariesand header files. This differs between operating systems and evendistributions of the same family of operating systems (for example Linuxdistributions).</p><p>This created a problem when implementing the compiler driver for Flang. All thesedetails would take a long time to get right.</p><p>Luckily, by this time Flang was in the LLVM Project alongside Clang.Clang already knew how to handle this and had been tested on all sorts ofsystems over many years.</p><blockquote><p>The intent is to mirror clang, for both the driver and CompilerInvocation, asmuch as makes sense to do so. The aim is to avoid re-inventing the wheel andto enable people who have worked with either the clang or flang entry points,drivers, and frontends to easily understand the other.</p></blockquote><ul><li><a href="https://discourse.llvm.org/t/rfc-adding-a-fortran-mode-to-the-clang-driver-for-flang/52307">Peter Waller</a> (Arm)</li></ul><p>Flang became the first in-tree project to use Clang&rsquo;s compiler driverlibrary (<code>clangDriver</code>) to implement its own compiler driver.</p><p>This meant that Flang was able to handle all the targets and tools that Clangcould, without duplicating large amounts of code.</p><h1 id="reflections-on-flang">Reflections on Flang</h1><p>We are almost 10 years from the first announcement of what would become LLVMFlang. In the LLVM monorepo alone there have been close to 10,000 commitsfrom around 400 different contributors. Undoubtedly more in Classic Flang beforethat.</p><p>So it is time to hear from users, contributors, and supporters, past andpresent, about their experiences with Flang.</p><blockquote><p>Collaborating with NVIDIA and PGI on Classic Flang was crucial in establishingArm in High Performance Computing. It has been an honour to continue investingin Flang, helping it become an integral part of the LLVM project and a solidfoundation for building HPC toolchains.</p><p>We are delighted to see the project reach maturity, as this was the last step inallowing us to remove all downstream code from our compiler. Look out for ArmToolchain for Linux 20, which will be a fully open source, freely availablecompiler based on LLVM 20, available later this year.”</p></blockquote><ul><li>Will Lovett, Director Technology Management at Arm.</li></ul><p>(the following quote is presented in Japanese and English, in case of differences,Japanese is the authoritative version)</p><blockquote><p>富士通は、我々の数十年にわたるHPCの経験を通じて培ったテストスイートを用いて、Flangの改善に貢献できたことを嬉しく思います。Flangの親切で協力的なコミュニティに大変感銘を受けました。</p><p>富士通は、より高いパフォーマンスと使いやすさを実現し、我々のプロセッサを最大限に活用するために、引き続きFlangに取り組んでいきます。Flangが改善を続け、ユーザーを増やしていくことを強く願っています。</p><p>Fujitsu is pleased to have contributed to the improvement of Flang with ourtest suite, which we have developed through our decades of HPC experience.Flang&rsquo;s helpful and collaborative community really impressed us.</p><p>Fujitsu will continue to work on Flang to achieve higher performance andusability, to make the best of our processors. We hope that Flang will continueto improve and gain users.</p></blockquote><ul><li>富士通株式会社 コンパイラ開発担当 マネージャー 鎌塚　俊 (Shun Kamatsuka, Manager of the Compiler Development Team at Fujitsu).</li></ul><blockquote><p>Collaboration between Linaro and Fujitsu on an active CI using Fujitsu’stestsuite helped find several issues and make Flang more robust, inaddition to detecting any regressions early.</p><p>Linaro has been contributing to Flang development for two years now, fixing agreat number of issues found by the Fujitsu testsuite.</p></blockquote><ul><li>Carlos Seo, Tech Lead at Linaro.</li></ul><blockquote><p><a href="https://scipy.org/">SciPy</a> is a foundational Python package. It provides easyaccess to scientific algorithms, many of which are written in Fortran.</p><p>This has caused a long stream of problems for packaging and shipping SciPy,especially because users expect first-class support for Windows;a platform that (prior to Flang) had no license-free Fortran compilersthat would work with the default platform runtime.</p><p>As maintainers of SciPy and redistributors in the <a href="https://conda-forge.org/">conda-forge</a>ecosystem, we hoped for a solution to this problem for many years. In the end,we switched to using Flang, and that <a href="https://labs.quansight.org/blog/building-scipy-with-flang">process</a>was a minor miracle.</p><p>Huge thanks to the Flang developers for removing a major source of pain for us!</p></blockquote><ul><li>Axel Obermeier, Quantsight Labs.</li></ul><blockquote><p>At the Barcelona Supercomputing Center, like many other HPC centers, we cannotignore Fortran.</p><p>As part of our research activities, Flang has allowed us to apply our work inlong vectors for RISC-V to complex Fortran applications which we have been ableto run and analyze in our prototype systems. We have also used Flang to supportan in-house task-based directive-based programming model.</p><p>These developments have proved to us that Flang is a powerful infrastructure.</p></blockquote><ul><li>Roger Ferrer Ibáñez, Senior Research Engineer at the Barcelona Supercomputing Center (BSC).</li></ul><blockquote><p>I am thrilled to see the LLVM Flang project achieve this milestone. It is a uniqueproject in that it marries state of the art compiler technologies like MLIR withthe venerable Fortran language and its large community of developers focused onhigh performance compute.</p><p>Flang has set the standard for LLVM frontends by adopting MLIR and C++17 featuresearlier than others, and I am thrilled to see Clang and other frontends modernizebased on those experiences.</p><p>Flang also continues something very precious to me: the LLVM Project&rsquo;s abilityto enable collaboration by uniting people with shared interests even if theyspan organizations like academic institutions, companies, and other research groups.</p></blockquote><ul><li>Chris Lattner, serving member of the LLVM Board of Directors, co-founder ofthe LLVM Project, the Clang C++ compiler and MLIR.</li></ul><blockquote><p>The need for a more modern Fortran compiler motivated the creation of the LLVM Flangproject and AMD fully supports that path.</p><p>In following with community trends, AMD’s Next-Gen Fortran Compiler will be adownstream flavor of LLVM Flang and will in time supplant the current AMD Flangcompiler, a downstream flavor of “Classic Flang”.</p><p>Our mission is to allow anyone that is using and developing a Fortran HPC codebaseto directly leverage the power of AMD’s GPUs. AMD’s Next-Gen Fortran Compiler’s goalis fulfilling our vision by allowing you to deploy and accelerate your Fortran codeson AMD GPUs using OpenMP offloading, and to directly interface and invoke HIP andROCm kernels.</p></blockquote><ul><li>AMD, <a href="https://rocm.blogs.amd.com/ecosystems-and-partners/fortran-journey/README.html">&ldquo;Introducing AMD’s Next-Gen Fortran Compiler&rdquo;</a></li></ul><h1 id="getting-involved">Getting Involved</h1><p>Flang might not be new anymore, but it is definitely still improving. If youwant to try Flang on your own projects, you can<a href="https://github.com/llvm/llvm-project/releases/tag/llvmorg-20.1.0">download</a>it right now.</p><p>If you want to contribute, there are many ways to do so. Bug reports,code contributions, documentation improvements and so on. Flang follows the<a href="https://llvm.org/docs/Contributing.html">LLVM contribution process</a> and youcan find links to the forums, community calls and anything else youmight need <a href="https://flang.llvm.org/docs/GettingInvolved.html">here</a>.</p><h1 id="credits">Credits</h1><p>Thank you to the following people for their contributions to this article:</p><ul><li>Alex Bradbury (Igalia)</li><li>Andrzej Warzyński (Arm)</li><li>Axel Obermeier (Quansight Labs)</li><li>Brad Richardson (Lawrence Berkeley National Laboratory)</li><li>Carlos Seo (Linaro)</li><li>Daniel C Chen (IBM)</li><li>Eric Schweitz (NVIDIA)</li><li>Hao Jin</li><li>Jeff Hammond (NVIDIA)</li><li>Kiran Chandramohan (Arm)</li><li>Leandro Lupori (Linaro)</li><li>Luis Machado (Arm)</li><li>Mehdi Amini</li><li>Pat McCormick (Los Alamos National Laboratory)</li><li>Peter Waller (Arm)</li><li>Steve Scalpone (NVIDIA)</li><li>Tarun Prabhu (Los Alamos National Laboratory)</li></ul><h1 id="further-reading">Further reading</h1><ul><li><a href="https://fortran-lang.org/learn/">Learn Fortran</a></li><li><a href="https://labs.quansight.org/blog/building-scipy-with-flang">The &rsquo;eu&rsquo; in eucatastrophe – Why SciPy builds for Python 3.12 on Windows are a minor miracle</a></li><li><a href="https://ondrejcertik.com/blog/2021/03/resurrecting-fortran/">Resurrecting Fortran</a></li><li><a href="https://everythingfunctional.wordpress.com/2021/03/12/the-fortran-package-managers-first-birthday/">The Fortran Package Manager’s First Birthday</a></li><li><a href="https://www.youtube.com/watch?v=OvTiKWfhaho">How to write a new compiler driver? The LLVM Flang perspective</a></li><li><a href="https://www.exascaleproject.org/research-project/flang/">Flang in the Exascale Supercomputing Project</a></li></ul> 

<br> 

<https://blog.llvm.org/posts/2025-03-11-flang-new/>

---

## Lilbits: Xbox handheld, Nintendo Switch 2, Pixel 4a battery, and the return  of Android lock screen widgets

date: 2025-03-10, from: Liliputing

<p>The long-awaited Xbox handheld could arrive this year&#8230; but if the latest rumor is accurate it won&#8217;t be made by Microsoft and it may be more of a Windows 11 handheld with Xbox branding than a portable console. In other recent tech news from around the web, if you were wondering why Google issued a [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-xbox-handheld-nintendo-switch-2-pixel-4a-battery-and-the-return-of-android-lock-screen-widgets/">Lilbits: Xbox handheld, Nintendo Switch 2, Pixel 4a battery, and the return  of Android lock screen widgets</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-xbox-handheld-nintendo-switch-2-pixel-4a-battery-and-the-return-of-android-lock-screen-widgets/>

---

## llm-openrouter 0.4

date: 2025-03-10, updated: 2025-03-10, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/simonw/llm-openrouter/releases/tag/0.4">llm-openrouter 0.4</a></strong></p>
I found out this morning that <a href="https://openrouter.ai/">OpenRouter</a> include support for a number of (rate-limited) <a href="https://openrouter.ai/models?max_price=0">free API models</a>.</p>
<p>I occasionally run workshops on top of LLMs (<a href="https://simonwillison.net/2025/Mar/8/cutting-edge-web-scraping/">like this one</a>) and being able to provide students with a quick way to obtain an API key against models where they don't have to setup billing is really valuable to me!</p>
<p>This inspired me to upgrade my existing <a href="https://github.com/simonw/llm-openrouter">llm-openrouter</a> plugin, and in doing so I closed out a bunch of open feature requests.</p>
<p>Consider this post the <a href="https://simonwillison.net/tags/annotated-release-notes/">annotated release notes</a>:</p>
<blockquote>
<ul>
<li>LLM <a href="https://llm.datasette.io/en/stable/schemas.html">schema support</a> for OpenRouter models that <a href="https://openrouter.ai/models?order=newest&amp;supported_parameters=structured_outputs">support structured output</a>. <a href="https://github.com/simonw/llm-openrouter/issues/23">#23</a></li>
</ul>
</blockquote>
<p>I'm trying to get support for LLM's <a href="https://simonwillison.net/2025/Feb/28/llm-schemas/">new schema feature</a> into as many plugins as possible.</p>
<p>OpenRouter's OpenAI-compatible API includes support for the <code>response_format</code> <a href="https://openrouter.ai/docs/features/structured-outputs">structured content option</a>, but with an important caveat: it only works for some models, and if you try to use it on others it is silently ignored.</p>
<p>I <a href="https://github.com/OpenRouterTeam/openrouter-examples/issues/20">filed an issue</a> with OpenRouter requesting they include schema support in their machine-readable model index. For the moment LLM will let you specify schemas for unsupported models and will ignore them entirely, which isn't ideal.</p>
<blockquote>
<ul>
<li><code>llm openrouter key</code> command displays information about your current API key. <a href="https://github.com/simonw/llm-openrouter/issues/24">#24</a></li>
</ul>
</blockquote>
<p>Useful for debugging and checking the details of your key's rate limit.</p>
<blockquote>
<ul>
<li><code>llm -m ... -o online 1</code> enables <a href="https://openrouter.ai/docs/features/web-search">web search grounding</a> against any model, powered by <a href="https://exa.ai/">Exa</a>. <a href="https://github.com/simonw/llm-openrouter/issues/25">#25</a></li>
</ul>
</blockquote>
<p>OpenRouter apparently make this feature available to every one of their supported models! They're using new-to-me <a href="https://exa.ai/">Exa</a> to power this feature, an AI-focused search engine startup who appear to have built their own index with their own crawlers (according to <a href="https://docs.exa.ai/reference/faqs#how-often-is-the-index-updated">their FAQ</a>). This feature is currently priced by OpenRouter at $4 per 1000 results, and since 5 results are returned for every prompt that's 2 cents per prompt.</p>
<blockquote>
<ul>
<li><code>llm openrouter models</code> command for listing details of the OpenRouter models, including a <code>--json</code> option to get JSON and a <code>--free</code> option to filter for just the free models. <a href="https://github.com/simonw/llm-openrouter/issues/26">#26</a></li>
</ul>
</blockquote>
<p>This offers a neat way to list the available models. There are examples of the output <a href="https://github.com/simonw/llm-openrouter/issues/26#issuecomment-2711908704">in the comments on the issue</a>.</p>
<blockquote>
<ul>
<li>New option to specify custom provider routing: <code>-o provider '{JSON here}'</code>. <a href="https://github.com/simonw/llm-openrouter/issues/17">#17</a></li>
</ul>
</blockquote>
<p>Part of OpenRouter's USP is that it can route prompts to different providers depending on factors like latency, cost or as a fallback if your first choice is unavailable - great for if you are using open weight models like Llama which are hosted by competing companies.</p>
<p>The options they provide for routing are <a href="https://openrouter.ai/docs/features/provider-routing">very thorough</a> - I had initially hoped to provide a set of CLI options that covered all of these bases, but I decided instead to reuse their JSON format and forward those options directly on to the model.


    <p>Tags: <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/plugins">plugins</a>, <a href="https://simonwillison.net/tags/annotated-release-notes">annotated-release-notes</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/10/llm-openrouter-04/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-10, from: Dave Winer's linkblog)

NOAA set to fire 1,029 more employees, bringing cuts to near 15 percent. 

<br> 

<https://thehill.com/policy/energy-environment/5186175-noaa-staffing-cuts/>

---

**@Dave Winer's linkblog** (date: 2025-03-10, from: Dave Winer's linkblog)

JD Vance&#39;s cousin criticises him for &#39;belittling&#39; Zelensky. 

<br> 

<https://www.bbc.com/news/articles/cm2yl5kevrpo?xtor=AL-71-[partner]-[bbc.news.twitter]-[headline]-[news]-[bizdev]-[isapi]&at_link_id=262EAA4A-FDEF-11EF-9D53-B8CB82023E84&at_ptr_name=twitter&at_medium=social&at_link_origin=BBCWorld&at_campaign=Social_Flow&at_link_type=web_link&at_campaign_type=owned&at_format=link&at_bbc_team=editorial>

---

**@Dave Winer's linkblog** (date: 2025-03-10, from: Dave Winer's linkblog)

Bluesky has us locked in despite what their CEO says. 

<br> 

<https://techcrunch.com/2025/03/10/at-sxsw-bluesky-ceo-jay-graber-pokes-fun-at-mark-zuckerberg-with-latin-phrase-t-shirt/>

---

## On the Miraculous Tradition in Silicon Valley Thought

date: 2025-03-10, from: Dave Karpf's blog

"And then a miracle happens" is not a plan. 

<br> 

<https://davekarpf.substack.com/p/on-the-miraculous-tradition-in-silicon>

---

**@Dave Winer's linkblog** (date: 2025-03-10, from: Dave Winer's linkblog)

Data Rescue Project. 

<br> 

<https://www.datarescueproject.org/>

---

## Urgent warning: Black Mirror has entered the United States, with AI as its handmaiden

date: 2025-03-10, from: Gary Marcus blog

AI as a smoke screen to cover for authoritarian actions 

<br> 

<https://garymarcus.substack.com/p/urgent-warning-black-mirror-has-entered>

---

## Wistron Dual Fusion laptop concept includes a detachable handheld game streaming console

date: 2025-03-10, from: Liliputing

<p>Taiwanese electronics manufacturer Wistron has designed a gaming laptop that&#8217;s also a handheld game console. While some companies have achieved something similar by shrinking their laptops until they&#8217;re small enough to hold between two hands, the Wistron Dual Fusion takes a different approach. It&#8217;s a gaming laptop with a full-sized keyboard and display. But the area below the [&#8230;]</p>
<p>The post <a href="https://liliputing.com/wistron-dual-fusion-laptop-concept-includes-a-detachable-handheld-game-streaming-console/">Wistron Dual Fusion laptop concept includes a detachable handheld game streaming console</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/wistron-dual-fusion-laptop-concept-includes-a-detachable-handheld-game-streaming-console/>

---

## This palm-sized mini PC has an AMD Ryzen 3 5425U processor

date: 2025-03-10, from: Liliputing

<p>Over the past few years we&#8217;ve seen a lot of tiny cube-like computers small enough to fit in the palm of your hand. But most have been powered by low-cost, low-power Intel processors. Now Topton has introduced a new model sporting an AMD Ryzen processor. The new Topton M1 is a 78 x 78 x [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-palm-sized-mini-pc-has-an-amd-ryzen-3-5425u-processor/">This palm-sized mini PC has an AMD Ryzen 3 5425U processor</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-palm-sized-mini-pc-has-an-amd-ryzen-3-5425u-processor/>

---

## This 8 inch mini-laptop has an Intel N150 processor and 12GB RAM

date: 2025-03-10, from: Liliputing

<p>A handful of Chinese PC makers have been selling mini-laptops with 8 inch displays and Intel Alder Lake-N processors for a few years. Now we&#8217;re starting to see new models with Intel Twin Lake chips. One of the first to arrive is the X-Plus Piccolo 2-in-1 mini-laptop with an Intel N150 processor, which sells for [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-8-inch-mini-laptop-has-an-intel-n150-processor-and-12gb-ram/">This 8 inch mini-laptop has an Intel N150 processor and 12GB RAM</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-8-inch-mini-laptop-has-an-intel-n150-processor-and-12gb-ram/>

---

## Generating Automatic Alt-Text with the Bacalhau Bluesky Bot

date: 2025-03-10, from: Bacalhau Blog

(4:10) Using the latest in Large Vision Models (LLaVa), we've built a Bluesky Bot which can generate alt-text for any image in seconds with Bacalhau 

<br> 

<https://blog.bacalhau.org/p/generating-automatic-alt-text-with>

---

**@Feed for Alt USDS** (date: 2025-03-10, from: Feed for Alt USDS)

75% of the VA's new website projects had security issues before this team stepped in. Now, because of firings & forced resignations, there are very few people who can keep Veterans' data safe. Gutting government tech hurts real people.

🔗 https://www.wethebuilders.org/posts/protecting-the-privacy-of-our-veterans

#Veterans #altgov 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljzwe6bnsz23>

---

## Why weren't women allowed to act in Shakespeare's plays? 

date: 2025-03-10, from: Guy Kawasaki blog

Elizabeth Steinway, Colorado State University. 

<br> 

<https://guykawasaki.substack.com/p/why-werent-women-allowed-to-act-in>

---

## Columbia Protestor Arrested by ICE Moved to Louisiana Detention Facility

date: 2025-03-10, from: 404 Media Group

On Sunday Mahmoud Khalil’s wife was unable to find the protester at the New Jersey facility he was allegedly detained in. ICE’s system now says he is in Louisiana. 

<br> 

<https://www.404media.co/columbia-protestor-arrested-by-ice-moved-to-louisiana-detention-facility/>

---

## Photographers Are on a Mission to Fix Wikipedia's Famously Bad Celebrity Portraits

date: 2025-03-10, from: 404 Media Group

WikiPortraits, a group of volunteer photographers, has been covering festivals and shooting celebrities specifically to improve images in the public domain. 

<br> 

<https://www.404media.co/photographers-are-on-a-mission-to-fix-wikipedias-famously-bad-celebrity-portraits/>

---

**@Dave Winer's linkblog** (date: 2025-03-10, from: Dave Winer's linkblog)

The shit is going to hit the fan when the Repubs cancel Medicare. Look at the picture in this post by Maddow on Bluesky. Yeah they&#39;re all on Medicare. They&#39;re already going to town hall meetings. They&#39;re boomers. We&#39;re not done yet folks. 

<br> 

<https://bsky.app/profile/maddow.msnbc.com/post/3ljyapf5uck2r>

---

## Unnecessary Violence Is Frowned Upon

date: 2025-03-10, updated: 2025-03-10, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/10/unnecessary-violence-is-frowned-upon/>

---

## HexBoard MIDI controller strikes a chord with RP2040

date: 2025-03-10, from: Raspberry Pi News (.com)

<p>This RP2040-powered keyboard features 140 addressable RGB LED-lit mechanical switches, giving rise to distinctive chord shapes and melodic concepts.</p>
<p>The post <a href="https://www.raspberrypi.com/news/hexboard-midi-controller-strikes-a-chord-with-rp2040/">HexBoard MIDI controller strikes a chord with RP2040</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/hexboard-midi-controller-strikes-a-chord-with-rp2040/>

---

**@Dave Winer's linkblog** (date: 2025-03-10, from: Dave Winer's linkblog)

The Diseases Are Coming. 

<br> 

<https://www.theatlantic.com/ideas/archive/2025/03/diseases-doge-trump/681964/?utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

## The Paranoid Style in MAGA Policy

date: 2025-03-10, from: Paul Krugman

We basically have government by QAnon 

<br> 

<https://paulkrugman.substack.com/p/the-paranoid-style-in-maga-policy>

---

## DC-ROMA’s second RISC-V mainboard for the Framework Laptop delivers up to 50 TOPS of AI performance

date: 2025-03-10, from: Liliputing

<p>RISC-V computer maker DeepComputing has made some of the first laptops, tablets, and other products including a new RISC-V mainboard for Framework&#8217;s modular 13 inch laptop. Now DeepComputing is jumping on the AI bandwagon by introducing a new product it calls the DC-ROMA RISC-V AI PC. It&#8217;s basically a single-board computer with a 64-bit, 8-core [&#8230;]</p>
<p>The post <a href="https://liliputing.com/dc-romas-second-risc-v-mainboard-for-the-framework-laptop-delivers-up-to-50-tops-of-ai-performance/">DC-ROMA&#8217;s second RISC-V mainboard for the Framework Laptop delivers up to 50 TOPS of AI performance</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/dc-romas-second-risc-v-mainboard-for-the-framework-laptop-delivers-up-to-50-tops-of-ai-performance/>

---

**@Dave Winer's linkblog** (date: 2025-03-10, from: Dave Winer's linkblog)

Why cross-posting to Bluesky and Mastodon is not on the roadmap for WordLand. They are too limited in the features they support for writers. 

<br> 

<http://scripting.com/2025/02/24/153052.html>

---

**@Dave Winer's linkblog** (date: 2025-03-10, from: Dave Winer's linkblog)

“Nobody voted for Elon Musk,” protestors chanted at a Tesla dealership in Manhattan yesterday in one of the many protests at the dealerships associated with Musk’s cars. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-9-2025?publication_id=20533&post_id=158748735&isFreemail=true&r=w33x&triedRedirect=true>

---

## Meghan’s Buzzkill and a Murder Mystery Solved After 48 Years

date: 2025-03-10, from: Tina Brown

With Love, Meghan never really recovers from its preposterous opening scene of Meghan, dressed in a veiled beekeeper&#8217;s space suit, whispering with her apiarist about the wonder of bees. 

<br> 

<https://tinabrown.substack.com/p/meghans-buzzkill-and-a-murder-mystery>

---

## Quoting Thane Ruthenis

date: 2025-03-10, updated: 2025-03-10, from: Simon Willison’s Weblog

<blockquote cite="https://www.lesswrong.com/posts/oKAFFvaouKKEhbBPm/a-bear-case-my-predictions-regarding-ai-progress"><p>It seems to me that "vibe checks" for how smart a model feels are easily gameable by making it have a better personality.</p>
<p>My guess is that it's most of the reason Sonnet 3.5.1 was so beloved. Its personality was made much more <em>appealing</em>, compared to e. g. OpenAI's corporate drones. [...]</p>
<p>Deep Research was this for me, at first. Some of its summaries were just <em>pleasant</em> to read, they felt so information-dense and intelligent! Not like typical AI slop at all! But then it turned out most of it was just AI slop underneath anyway, and now my slop-recognition function has adjusted and the effect is gone.</p></blockquote>
<p class="cite">&mdash; <a href="https://www.lesswrong.com/posts/oKAFFvaouKKEhbBPm/a-bear-case-my-predictions-regarding-ai-progress">Thane Ruthenis</a>, A Bear Case: My Predictions Regarding AI Progress</p>

    <p>Tags: <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/slop">slop</a>, <a href="https://simonwillison.net/tags/deep-research">deep-research</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/10/thane-ruthenis/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-10, from: Dave Winer's linkblog)

Cops help insure no Tesla sales. 

<br> 

<https://mastodon.social/@daveverse.wordpress.com@daveverse.wordpress.com/114135420307616462>

---

## Building Websites With Lots of Little HTML Pages

date: 2025-03-10, updated: 2025-03-10, from: Simon Willison’s Weblog

<p><strong><a href="https://blog.jim-nielsen.com/2025/lots-of-little-html-pages/">Building Websites With Lots of Little HTML Pages</a></strong></p>
Jim Nielsen coins a confusing new acronym - LLMS for (L)ots of (L)ittle ht(M)l page(S). He's using this to describe his latest site refresh which makes extensive use of <a href="https://developer.chrome.com/docs/web-platform/view-transitions/cross-document">cross-document view transitions</a> - a fabulous new progressive enhancement CSS technique that's <a href="https://caniuse.com/view-transitions">supported</a> in Chrome and Safari (and hopefully soon <a href="https://bugzilla.mozilla.org/show_bug.cgi?id=1823896">in Firefox</a>).</p>
<blockquote>
<p>With cross-document view transitions getting broader and broader support, I’m realizing that building in-page, progressively-enhanced interactions is more work than simply building two HTML pages and linking them.</p>
</blockquote>
<p>Jim now has small static pages powering his home page filtering interface and even his navigation menu, with CSS view transitions configured to smoothly animate between the pages. I think it feels really good - here's what it looked like for me in Chrome (it looked the same both with and without JavaScript disabled):</p>
<p><img alt="Animated demo - clicking the tabs to swap between Latest, Trending and Hacker News Hits rearranges the list of posts in a smooth animation, then navigating to a post causes its title to enlarge and move to the top while the rest of the article loads in." src="https://static.simonwillison.net/static/2025/llms-demo.gif" /></p>
<p>Watching the network panel in my browser, most of these pages are 17-20KB gzipped (~45KB after they've decompressed). No wonder it feels so snappy.</p>
<p>I poked around <a href="https://blog.jim-nielsen.com/styles.css">in Jim's CSS</a> and found this relevant code:</p>
<div class="highlight highlight-source-css"><pre><span class="pl-k">@view-transition</span> {
  <span class="pl-c1">navigation</span><span class="pl-kos">:</span> auto;
}

.<span class="pl-c1">posts-nav</span> <span class="pl-ent">a</span>[<span class="pl-c1">aria-current</span><span class="pl-c1">=</span><span class="pl-s">"page"</span>]<span class="pl-kos">:</span><span class="pl-c1">not</span>(<span class="pl-kos">:</span><span class="pl-c1">last-child</span>)<span class="pl-kos">:</span><span class="pl-c1">after</span> {
  <span class="pl-c1">border-color</span><span class="pl-kos">:</span> <span class="pl-en">var</span>(<span class="pl-s1">--c-text</span>);
  <span class="pl-c1">view-transition-name</span><span class="pl-kos">:</span> posts-nav;
}

<span class="pl-c">/* Old stuff going out */</span>
::<span class="pl-c1">view-transition-old</span>(<span class="pl-ent">posts-nav</span>) {
  <span class="pl-c1">animation</span><span class="pl-kos">:</span> fade <span class="pl-c1">0.2<span class="pl-smi">s</span></span> linear forwards;
  <span class="pl-c">/* <a href="https://jakearchibald.com/2024/view-transitions-handling-aspect-ratio-changes/">https://jakearchibald.com/2024/view-transitions-handling-aspect-ratio-changes/</a> */</span>
  <span class="pl-c1">height</span><span class="pl-kos">:</span> <span class="pl-c1">100<span class="pl-smi">%</span></span>;
}

<span class="pl-c">/* New stuff coming in */</span>
::<span class="pl-c1">view-transition-new</span>(<span class="pl-ent">posts-nav</span>) {
  <span class="pl-c1">animation</span><span class="pl-kos">:</span> fade <span class="pl-c1">0.3<span class="pl-smi">s</span></span> linear reverse;
  <span class="pl-c1">height</span><span class="pl-kos">:</span> <span class="pl-c1">100<span class="pl-smi">%</span></span>;
}

<span class="pl-k">@keyframes</span> fade {
  <span class="pl-k">from</span> {
    <span class="pl-c1">opacity</span><span class="pl-kos">:</span> <span class="pl-c1">1</span>;
  }
  <span class="pl-k">to</span> {
    <span class="pl-c1">opacity</span><span class="pl-kos">:</span> <span class="pl-c1">0</span>;
  }
}</pre></div>

<p>Jim observes:</p>
<blockquote>
<p>This really feels like a game-changer for simple sites. If you can keep your site simple, it’s easier to build traditional, JavaScript-powered on-page interactions as small, linked HTML pages.</p>
</blockquote>
<p>I've experimented with view transitions for <a href="https://datasette.io/">Datasette</a> in the past and the results were very promising. Maybe I'll pick that up again.</p>
<p>Bonus: Jim has a <a href="https://lobste.rs/s/csr4mw/building_websites_with_lots_little_html#c_ncxssq">clever JavaScript trick</a> to avoid clicks to the navigation menu being added to the browser's history in the default case.

    <p><small></small>Via <a href="https://lobste.rs/s/csr4mw/building_websites_with_lots_little_html">lobste.rs</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/css">css</a>, <a href="https://simonwillison.net/tags/view-transitions">view-transitions</a>, <a href="https://simonwillison.net/tags/progressive-enhancement">progressive-enhancement</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/10/building-websites-with-llms/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-10, from: Dave Winer's linkblog)

I dream of getting reviews like this for my software. This time we’re making blog writing as fluid as tweeting. When it’s done we’ll be using our Wordpress blogs the way you write in twitter, but without the limits. 

<br> 

<https://www.hyperorg.com/blogger/2025/03/08/trying-out-wordland-for-blogging/>

---

## 546. The French Revolution: The Monarchy Falls (Part 3)

date: 2025-03-10, from: This is history podcast

<p>“From this place and from this day forth commences a new era in the world’s history, and you can all say you were present at its birth!” By September 1792, the Prussians, under the leadership of the formidable Duke of Brunswick, were closing in on revolutionary Paris. There, the streets roiled with the clanging of [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/546-the-french-revolution-the-monarchy-falls-part-3/">546. The French Revolution: The Monarchy Falls (Part 3)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/546-the-french-revolution-the-monarchy-falls-part-3/>

---

**@Dave Winer's linkblog** (date: 2025-03-10, from: Dave Winer's linkblog)

Rep. Mark Pocan draws packed crowd at town hall meeting, calls out Rep. Derrick Van Orden on transparency. 

<br> 

<https://www.wkow.com/news/politics/rep-mark-pocan-draws-packed-crowd-at-town-hall-meeting-calls-out-rep-derrick-van/article_d66c5c3e-fc84-11ef-8623-5fd46eda89b2.html>

---

## How to authenticate your HTTP tunnels with inlets and OAuth.

date: 2025-03-10, updated: 2025-03-10, from: Inlets.dev, cloud tunneling

In this tutorial you will learn how to secure your tunnelled HTTP services using the Inlets built-in HTTP authentication. 

<br> 

<https://inlets.dev/blog/tutorial/2025/03/10/secure-http-tunnels-with-oauth.html>

---

## Understanding Memory Management, Part 3: C++ Smart Pointers

date: 2025-03-10, updated: 2025-03-10, from: Educated Guesswork blog

 

<br> 

<https://educatedguesswork.org/posts/memory-management-3/>

---

**@Feed for Alt USDS** (date: 2025-03-09, from: Feed for Alt USDS)

68 million Americans rely on Social Security. But did you know SSA has the lowest staffing levels in 50 years? The people behind the checks aren’t just bureaucrats—they’re Americans working nonstop to make sure you get what you’re owed. 💙

🔗 Read more: buff.ly/KjDzK0T

#SSA #ProtectOurBenefits 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljy65bzogh2v>

---

**@Dave Winer's linkblog** (date: 2025-03-09, from: Dave Winer's linkblog)

Democrats are reeling. Is Stephen A Smith the way back to the White House? 

<br> 

<https://www.theguardian.com/us-news/2025/mar/09/democratic-candidates-stephen-a-smith>

---

## Nobel Prizes and The AI Hype Hall of Fame

date: 2025-03-09, from: Gary Marcus blog

GPT-5 may not be here, but just wait til you see the new round of hype 

<br> 

<https://garymarcus.substack.com/p/nobel-prizes-and-the-ai-hype-hall>

---

**@Dave Winer's linkblog** (date: 2025-03-09, from: Dave Winer's linkblog)

Why I love Severance. 

<br> 

<https://daveverse.wordpress.com/2025/03/09/why-i-love-severance/>

---

**@Dave Winer's linkblog** (date: 2025-03-09, from: Dave Winer's linkblog)

Ghost is implementing ActivityPub. It seems to be taking a long time. 

<br> 

<https://activitypub.ghost.org/actually-i-take-that-back/>

---

## Quoting Steve Yegge

date: 2025-03-09, updated: 2025-03-09, from: Simon Willison’s Weblog

<blockquote cite="https://twitter.com/Steve_Yegge/status/1898674257808515242"><p>I've been using Claude Code for a couple of days, and it has been absolutely ruthless in chewing through legacy bugs in my gnarly old code base. It's like a wood chipper fueled by dollars. It can power through shockingly impressive tasks, using nothing but chat. [...]</p>
<p>Claude Code's form factor is clunky as hell, it has no multimodal support, and it's hard to juggle with other tools. But it doesn't matter. It might look antiquated but it makes Cursor, Windsurf, Augment and the rest of the lot (yeah, ours too, and Copilot, let's be honest) FEEL antiquated.</p></blockquote>
<p class="cite">&mdash; <a href="https://twitter.com/Steve_Yegge/status/1898674257808515242">Steve Yegge</a>, who works on Cody at Sourcegraph</p>

    <p>Tags: <a href="https://simonwillison.net/tags/steve-yegge">steve-yegge</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/9/steve-yegge/#atom-everything>

---

## The Curious About Everything Newsletter #48

date: 2025-03-09, from: Curious about everything blog

The many interesting things I read in February 2025 

<br> 

<https://jodiettenberg.substack.com/p/forty-eight>

---

## wolf-h3-viewer.glitch.me

date: 2025-03-09, updated: 2025-03-09, from: Simon Willison’s Weblog

<p><strong><a href="https://wolf-h3-viewer.glitch.me/">wolf-h3-viewer.glitch.me</a></strong></p>
Neat interactive visualization of Uber's <a href="https://h3geo.org/">H3</a> hexagonal geographical indexing mechanism.</p>
<p><img alt="Map showing H3 geospatial index hexagons overlaid on the Minneapolis-Saint Paul metropolitan area. Various H3 cell IDs are displayed including &quot;852621b3fffffff&quot;, &quot;852621a7fffffff&quot;, &quot;8527526fffffff&quot;, &quot;85262cd3fffffff&quot;, and &quot;85262c83fffffff&quot;. A sidebar shows input fields for &quot;lat,lon&quot; with a &quot;Go&quot; button and &quot;valid H3 id&quot; with a &quot;Find&quot; button. Text indicates &quot;Current H3 resolution: 5&quot; and &quot;Tip: Clicking an H3 cell will copy its id to the clipboard.&quot; Map attribution shows &quot;Leaflet | © OpenStreetMap contributors&quot;." src="https://static.simonwillison.net/static/2025/h3-map.jpg" /></p>
<p>Here's <a href="https://github.com/clupasq/h3-viewer">the source code</a>.</p>
<p>Why does H3 use hexagons? Because <a href="https://www.youtube.com/watch?v=thOifuHs6eY">Hexagons are the Bestagons</a>:</p>
<blockquote>
<p>When hexagons come together, they form three-sided joints 120 degrees apart. This, for the least material, is the most mechanically stable arrangement.</p>
</blockquote>
<p>Only triangles, squares, and hexagons can tile a plane without gaps, and of those three shapes hexagons offer the best ratio of perimeter to area.

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43305920#43307944">Hacker News comment</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/geospatial">geospatial</a>, <a href="https://simonwillison.net/tags/javascript">javascript</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/9/h3-viewer/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-09, from: Dave Winer's linkblog)

Evicting the elderly to make a millennial &#39;live near friends&#39; utopia. 

<br> 

<https://sfstandard.com/2025/03/09/san-francisco-friend-compound-eviction-secret/>

---

## The Clean Little Secret of Social Security

date: 2025-03-09, from: Paul Krugman

It&#8217;s a pretty good program, and we can afford it 

<br> 

<https://paulkrugman.substack.com/p/the-clean-little-secret-of-social>

---

**@Dave Winer's linkblog** (date: 2025-03-09, from: Dave Winer's linkblog)

The FAA’s Troubles Are More Serious Than You Know. 

<br> 

<https://www.theatlantic.com/politics/archive/2025/03/faa-trump-elon-plane-crash/681975/?utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

**@Dave Winer's linkblog** (date: 2025-03-09, from: Dave Winer's linkblog)

Bluesky is trapping users in the same way Twitter/X did. 

<br> 

<https://blogs.lse.ac.uk/impactofsocialsciences/2025/03/03/bluesky-will-trap-academics-in-the-same-way-twitter-x-did/>

---

**@Dave Winer's linkblog** (date: 2025-03-09, from: Dave Winer's linkblog)

Anger at Elon Musk hits Tesla with violence, vandalism in protest. 

<br> 

<https://wapo.st/3Fegr9c>

---

**@Feed for Alt USDS** (date: 2025-03-09, from: Feed for Alt USDS)

This seems to be an emerging trend... Let's hope it continues to happen.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljw5uqqwes2e>

---

## Everything To Everyone

date: 2025-03-09, updated: 2025-03-09, from: Tedium site

Companies like Amazon and Apple are attempting to do business in so many spaces that, when the cracks show, they really show. Hence why Apple Intelligence looks like a hot mess right now. 

<br> 

<https://feed.tedium.co/link/15204/16979569/apple-amazon-businesses-unfocused>

