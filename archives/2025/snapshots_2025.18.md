---
title: snapshots
updated: 2025-05-09 14:08:05
---

# snapshots

(date: 2025-05-09 14:08:05)

---

**@Dave Winer's linkblog** (date: 2025-05-09, from: Dave Winer's linkblog)

This 2011 piece about apps vs the web just came up in a thread on Mastodon. Quite a throwback. Apps did win, I was wrong. I wish I had been right though. ;-) 

<br> 

<https://www.technologyreview.com/2011/12/15/257042/detente-in-war-between-apps-and-web/>

---

**@Dave Winer's linkblog** (date: 2025-05-09, from: Dave Winer's linkblog)

Tesla shareholders get excited for &#39;Tesla prototype&#39; that turn out to be a competitor&#39;s. 

<br> 

<https://electrek.co/2025/05/09/tesla-tsla-shareholders-excited-for-tesla-prototype-turn-competitors/>

---

## llm -f issue:... -m echo --no-log

date: 2025-05-09, updated: 2025-05-09, from: Simon Willison’s Weblog

<p>I had some notes in a GitHub issue thread in a private repository that I wanted to export as Markdown. I realized that I could get them using a combination of several recent projects.</p>
<p>Here's what I ran:</p>
<pre><code>export GITHUB_TOKEN="$(llm keys get github)"                                             
llm -f issue:https://github.com/simonw/todos/issues/170 \
  -m echo --no-log | jq .prompt -r &gt; notes.md
</code></pre>
<p>I have a GitHub personal access token stored in my LLM keys, for use with Anthony Shaw's <a href="https://github.com/tonybaloney/llm-github-models">llm-github-models</a> plugin.</p>
<p>My own <a href="https://github.com/simonw/llm-fragments-github">llm-fragments-github</a> plugin expects an optional <code>GITHUB_TOKEN</code> environment variable, so I set that first - here's <a href="https://github.com/simonw/llm-fragments-github/issues/11">an issue</a> to have it use the <code>github</code> key instead.</p>
<p>With that set, the <code>issue:</code> fragment loader can take a URL to a private GitHub issue thread and load it via the API using the token, then concatenate the comments together as Markdown. Here's <a href="https://github.com/simonw/llm-fragments-github/blob/87555488805ffc973b5fb45aa51eac83be2c839f/llm_fragments_github.py#L92-L126">the code for that</a>.</p>
<p>Fragments are meant to be used as input to LLMs. I built a <a href="https://github.com/simonw/llm-echo">llm-echo</a> plugin recently which adds a fake LLM called "echo" which simply echos its input back out again.</p>
<p>Adding <code>--no-log</code> prevents that junk data from being stored in my <a href="https://llm.datasette.io/en/stable/logging.html">LLM log database</a>.</p>
<p>The output is JSON with a <code>"prompt"</code> key for the original prompt. I use <code>jq .prompt</code> to extract that out, then <code>-r</code> to get it as raw text (not a <code>"JSON string"</code>).</p>
<p>... and I write the result to <code>notes.md</code>.</p>

    <p>Tags: <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/plugins">plugins</a>, <a href="https://simonwillison.net/tags/jq">jq</a>, <a href="https://simonwillison.net/tags/github">github</a></p> 

<br> 

<https://simonwillison.net/2025/May/9/private-issues/#atom-everything>

---

**@Feed for Alt USDS** (date: 2025-05-09, from: Feed for Alt USDS)

Have questions about vaccines and how they are tested? Look no further:

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lor3s3iigc2h>

---

## Carla Hayden removed as Librarian of Congress and what this could mean for authors

date: 2025-05-09, from: Authors Union blogs

Last night a number of news outlets reported that President Trump had fired the Librarian of Congress, Carla Hayden. This [&#8230;] 

<br> 

<https://www.authorsalliance.org/2025/05/09/carla-hayden-removed-as-librarian-of-congress-and-what-this-could-mean-for-authors/>

---

## Pironman 5-MAX turns a Raspberry Pi 5 into a mini tower with a transparent case, RGB lighting, and dual NVMe SSD support

date: 2025-05-09, from: Liliputing

<p>The Pironman 5 case for the Raspberry Pi makes the single-board computer look like a tiny gaming PC, complete with a clear acrylic case, RGB lighting, and more. But As Ian discovered when he tested the case, it&#8217;s functional as well as funny looking: the case adds a layer of protection, enhanced cooling, and optional support for [&#8230;]</p>
<p>The post <a href="https://liliputing.com/pironman-5-max-turns-a-raspberry-pi-5-into-a-mini-tower-with-a-transparent-case-rgb-lighting-and-dual-nvme-ssd-support/">Pironman 5-MAX turns a Raspberry Pi 5 into a mini tower with a transparent case, RGB lighting, and dual NVMe SSD support</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/pironman-5-max-turns-a-raspberry-pi-5-into-a-mini-tower-with-a-transparent-case-rgb-lighting-and-dual-nvme-ssd-support/>

---

**@Dave Winer's linkblog** (date: 2025-05-09, from: Dave Winer's linkblog)

When a government is out of control it’s time to say so. 

<br> 

<https://politicsusa46.substack.com/p/when-a-government-is-out-of-control?triedRedirect=true>

---

**@Dave Winer's linkblog** (date: 2025-05-09, from: Dave Winer's linkblog)

US will stop tracking the costs of extreme weather fueled by climate change. 

<br> 

<https://abcnews.go.com/US/wireStory/us-stop-tracking-costs-extreme-weather-fueled-climate-121612257>

---

## Allies Enable Whistleblowers

date: 2025-05-09, from: Guy Kawasaki blog

Kate Kenny, Professor of Business and Society, University of Galway. 

<br> 

<https://guykawasaki.substack.com/p/allies-enable-whistleblowers>

---

## Huawei introduces its first laptop running HarmonyOS rather than Windows

date: 2025-05-09, from: Liliputing

<p>Chinese consumer electronics company has been shipping smartphones and smart TVs powered by the company&#8217;s homegrown HarmonyOS software for the past few years. Now Huawei has introduced its first laptop that will ship with HarmonyOS rather than Windows. The move to develop its own operating system wasn&#8217;t entirely Huawei&#8217;s idea &#8211; the company has been [&#8230;]</p>
<p>The post <a href="https://liliputing.com/huawei-introduces-its-first-laptop-running-harmonyos-rather-than-windows/">Huawei introduces its first laptop running HarmonyOS rather than Windows</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/huawei-introduces-its-first-laptop-running-harmonyos-rather-than-windows/>

---

**@Dave Winer's linkblog** (date: 2025-05-09, from: Dave Winer's linkblog)

&quot;If it does end up being the Thunder and Knicks in the Finals, as great as the Knicks&#39; story would be at that point, it would likely be a decisive Thunder victory in that series.&quot; 

<br> 

<https://www.foxsports.com/stories/nba/nba-finals-prediction-best-bet-thunder-knicks>

---

**@Dave Winer's linkblog** (date: 2025-05-09, from: Dave Winer's linkblog)

It&#39;s a floor wax <em>and</em> a dessert topping. 

<br> 

<https://www.youtube.com/shorts/zOlhHakrKeE>

---

**@Robert's feed at BlueSky** (date: 2025-05-09, from: Robert's feed at BlueSky)

👇well said.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3loqsgfy7722i>

---

## Andor (recapitulación 2.07, 2.08 y 2.09): Messenger, Who Are You?, Welcome to the Rebellion

date: 2025-05-09, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Disponible en: Disney+. Creador: Tony Gilroy. Dirección: Janus Metz. Guion: Dan Gilroy. Elenco: Diego Luna, Stellan Skarsgård, Genevieve O&#8217;Reilly, Denise Gough, Kyle Soller, Adria Arjona, Faye Marsay, Muhannad Bhaier, Elizabeth Dulau. Más información de la serie: https://www.imdb.com/title/tt9253284/ Episodios previos &#124; Esta recapitulación contiene spoilers acumulados de Andor y Rogue One (Star Wars) Veredicto: Es difícil [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/andor-recapitulacion-2-07-2-08-y-2-09n/">Andor (recapitulación 2.07, 2.08 y 2.09): Messenger, Who Are You?, Welcome to the Rebellion</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/andor-recapitulacion-2-07-2-08-y-2-09n/?utm_source=rss&utm_medium=rss&utm_campaign=andor-recapitulacion-2-07-2-08-y-2-09n>

---

## Behind the Blog: Brainrot and Brain Power Hours

date: 2025-05-09, from: 404 Media Group

This week, we discuss the death of Mr. Deepfakes, introducing kids to the Manosphere, and working on big, difficult, high-brain-power scoops. 

<br> 

<https://www.404media.co/behind-the-blog-brainrot-and-brain-power-hours/>

---

## Soup To Nuts

date: 2025-05-09, updated: 2025-05-09, from: Tedium site

If we’re headed for a less-globalized technology industry, the desktop version of Huawei’s HarmonyOS offers an interesting preview. 

<br> 

<https://feed.tedium.co/link/15204/17026921/huawei-harmonyos-next-new-operating-system>

---

## Brain Drain

date: 2025-05-09, from: Prof. Scott Galloway, No Mercy/No Malace blog

<p>The Manhattan Project, the top-secret U.S. government initiative to build an atomic bomb before Nazi Germany did, relied on hundreds of brilliant scientists from leading universities. Many of them had fled fascist regimes in Europe and found refuge on American campuses, including Berkeley, Columbia, MIT, Princeton, Purdue, and the University of Minnesota. In the end, [&#8230;]</p>
<p>The post <a href="https://www.profgalloway.com/brain-drain/">Brain Drain</a> appeared first on <a href="https://www.profgalloway.com">No Mercy / No Malice</a>.</p>
 

<br> 

<https://www.profgalloway.com/brain-drain/>

---

## Man ‘Disappeared’ by ICE Was on El Salvador Flight Manifest, Hacked Data Shows

date: 2025-05-09, from: 404 Media Group

Ricardo Prada Vásquez was not on a government list of people sent to a mega prison in El Salvador. But hacked data shows he was booked on a flight to the country. 

<br> 

<https://www.404media.co/man-disappeared-by-ice-was-on-el-salvador-flight-manifest-hacked-data-shows/>

---

## An AI Reincarnation of a Murder Victim Speaks

date: 2025-05-09, updated: 2025-05-09, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/05/09/an-ai-reincarnation-of-a-murder-victim/>

---

**@Dave Winer's linkblog** (date: 2025-05-09, from: Dave Winer's linkblog)

Who are the Jews in Trump’s inner circle? 

<br> 

<https://www.jpost.com/american-politics/article-829720>

---

## Well, Well, Well: Meta to Add Facial Recognition To Glasses After All

date: 2025-05-09, from: 404 Media Group

Meta previously lost its shit at 404 Media when we reported that someone had paired facial recognition tech with the company's smart glasses. Now Meta is building the invasive technology itself. 

<br> 

<https://www.404media.co/well-well-well-meta-to-add-facial-recognition-to-glasses-after-all/>

---

**@Dave Winer's linkblog** (date: 2025-05-09, from: Dave Winer's linkblog)

Road rage victim &#39;speaks&#39; via AI at his killer&#39;s sentencing. 

<br> 

<https://www.nbcnews.com/news/us-news/road-rage-victim-speaks-killers-sentencing-rcna205454>

---

## Crypto Is Still for Criming

date: 2025-05-09, from: Paul Krugman

Democrats shouldn&#8217;t give this scam cover, but probably will 

<br> 

<https://paulkrugman.substack.com/p/crypto-is-still-for-criming>

---

**@Dave Winer's linkblog** (date: 2025-05-09, from: Dave Winer's linkblog)

Former CDC staff warn of &#39;a five-alarm fire.&#39; 

<br> 

<https://www.npr.org/sections/shots-health-news/2025/05/08/nx-s1-5391534/former-cdc-staff-warn-of-a-five-alarm-fire>

---

**@Feed for Alt USDS** (date: 2025-05-09, from: Feed for Alt USDS)

Happy Friday? I get Thursday Scaries now waiting for whatever fresh hell the regime has in store this week. 

To counter, we're here ready to share our hot takes. If you want fun @altstategov.altgov.info is hosting a marathon #AMA on this #federalFuckeryFriday
https://media.tenor.com/LIYCMUYcToAAAAAC/snsd-soshi.gif?hh=295&ww=498 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3loqctulyis22>

---

**@Dave Winer's linkblog** (date: 2025-05-09, from: Dave Winer's linkblog)

Stephen Miller&#39;s War on Cancer Cures. 

<br> 

<https://www.emptywheel.net/2025/05/09/stephen-millers-war-on-cancer-cures/>

---

## Raspberry Pi Connect is out of beta: simple remote access, now even better

date: 2025-05-09, from: Raspberry Pi News (.com)

<p>Raspberry Pi Connect is out of beta, and our remote access solution has some data-efficient upgrades. Here's how to update.</p>
<p>The post <a href="https://www.raspberrypi.com/news/raspberry-pi-connect-is-out-of-beta-simple-remote-access-now-even-better/">Raspberry Pi Connect is out of beta: simple remote access, now even better</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/raspberry-pi-connect-is-out-of-beta-simple-remote-access-now-even-better/>

---

## sqlite-utils 4.0a0

date: 2025-05-09, updated: 2025-05-09, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/simonw/sqlite-utils/releases/tag/4.0a0">sqlite-utils 4.0a0</a></strong></p>
New alpha release of <a href="https://sqlite-utils.datasette.io/">sqlite-utils</a>, my Python library and CLI tool for manipulating SQLite databases.</p>
<p>It's the first 4.0 alpha because there's a (minor) backwards-incompatible change: I've upgraded the <code>.upsert()</code> and <code>.upsert_all()</code> methods to use SQLIte's <a href="https://www.sqlite.org/lang_upsert.html">UPSERT</a> mechanism, <code>INSERT INTO ... ON CONFLICT DO UPDATE</code>. Details in <a href="https://github.com/simonw/sqlite-utils/issues/652">this issue</a>.</p>
<p>That feature was added to SQLite in version 3.24.0, released 2018-06-04. I'm pretty cautious about my SQLite version support since the underlying library can be difficult to upgrade, depending on your platform and operating system.</p>
<p>I'm going to leave the new alpha to bake for a little while before pushing a stable release. Since this is a major version bump I'm going to take the opportunity to see if there are any other minor API warts that I can clean up at the same time.


    <p>Tags: <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/sqlite-utils">sqlite-utils</a>, <a href="https://simonwillison.net/tags/sqlite">sqlite</a></p> 

<br> 

<https://simonwillison.net/2025/May/9/sqlite-utils-40a0/#atom-everything>

---

## Gemini 2.5 Models now support implicit caching

date: 2025-05-09, updated: 2025-05-09, from: Simon Willison’s Weblog

<p><strong><a href="https://developers.googleblog.com/en/gemini-2-5-models-now-support-implicit-caching/">Gemini 2.5 Models now support implicit caching</a></strong></p>
I just spotted a <code>cacheTokensDetails</code> key in the token usage JSON while running a <a href="https://gist.github.com/simonw/1383565aac316d68cc29f289e33b2e51">long chain of prompts</a> against Gemini 2.5 Flash - despite not configuring caching myself:</p>
<p><code>{"cachedContentTokenCount": 200658, "promptTokensDetails": [{"modality": "TEXT", "tokenCount": 204082}], "cacheTokensDetails": [{"modality": "TEXT", "tokenCount": 200658}], "thoughtsTokenCount": 2326}</code></p>
<p>I went searching and it turns out Gemini had a massive upgrade to their prompt caching earlier today:</p>
<blockquote>
<p>Implicit caching directly passes cache cost savings to developers without the need to create an explicit cache. Now, when you send a request to one of the Gemini 2.5 models, if the request shares a common prefix as one of previous requests, then it’s eligible for a cache hit. We will dynamically pass cost savings back to you, providing the same 75% token discount. [...]</p>
<p>To make more requests eligible for cache hits, we reduced the minimum request size for 2.5 Flash to 1024 tokens and 2.5 Pro to 2048 tokens.</p>
</blockquote>
<p>Previously you needed to both explicitly configure the cache <em>and</em> pay a per-hour charge to keep that cache warm.</p>
<p>This new mechanism is so much more convenient! It imitates how both <a href="https://simonwillison.net/2024/Aug/14/deepseek-context-caching/">DeepSeek</a> and <a href="https://simonwillison.net/2024/Oct/2/not-digital-god/#prompt-caching-aka-the-big-price-drop">OpenAI</a> implement prompt caching, leaving Anthropic as the remaining large provider who require you to <a href="https://simonwillison.net/2024/Aug/14/prompt-caching-with-claude/">manually configure prompt caching</a> to get it to work.</p>
<p>Gemini's explicit caching mechanism is still available. <a href="https://ai.google.dev/gemini-api/docs/caching">The documentation</a> says:</p>
<blockquote>
<p>Explicit caching is useful in cases where you want to guarantee cost savings, but with some added developer work.</p>
</blockquote>
<p>With implicit caching the cost savings aren't possible to predict in advance, especially since the cache timeout within which a prefix will be discounted isn't described and presumably varies based on load and other circumstances outside of the developer's control.


    <p>Tags: <a href="https://simonwillison.net/tags/prompt-caching">prompt-caching</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llm-pricing">llm-pricing</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/May/9/gemini-implicit-caching/#atom-everything>

---

## Madrid, Spain

date: 2025-05-09, from: mrusme blog

"The Community of Madrid is one of the seventeen autonomous communities of
Spain. It is located in the centre of the Iberian Peninsula, and of the
Central Plateau (Meseta Central). Its capital and largest municipality is the
City of Madrid, which is also the capital of the country." 

<br> 

<https://xn--gckvb8fzb.com/travel/spain/madrid-2025/>

---

## “I’d rather read the prompt”

date: 2025-05-09, from: Chris Coyier blog

Clayton Ramsey grades student assignments and gets papers that are just obviously ChatGPT output. I think any of us can spot it by now: awkward repetitive prose, heavy on bullet points with bold intro words, wordy, etc. There is nothing to be done about it. As an instructor, I am always saddened to read this. [&#8230;] 

<br> 

<https://chriscoyier.net/2025/05/08/id-rather-read-the-prompt/>

---

**@Feed for Alt USDS** (date: 2025-05-08, from: Feed for Alt USDS)

Does this look fishy to you? It sure does to us

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lop47eh4g22l>

---

**@Dave Winer's linkblog** (date: 2025-05-08, from: Dave Winer's linkblog)

Bill Gates Accuses Elon Musk of ‘Killing Children’ by Cutting Foreign Aid. 

<br> 

<https://www.nytimes.com/2025/05/08/us/bill-gates-elon-musk-killing-children.html?unlocked_article_code=1.Fk8.z5Hj.CYdAYadiwRhJ&smid=url-share>

---

## SQLite CREATE TABLE: The DEFAULT clause

date: 2025-05-08, updated: 2025-05-08, from: Simon Willison’s Weblog

<p><strong><a href="https://www.sqlite.org/lang_createtable.html#the_default_clause">SQLite CREATE TABLE: The DEFAULT clause</a></strong></p>
If your SQLite create table statement includes a line like this:</p>
<pre><code>CREATE TABLE alerts (
    -- ...
    alert_created_at text default current_timestamp
)
</code></pre>
<p><code>current_timestamp</code> will be replaced with a UTC timestamp in the format <code>2025-05-08 22:19:33</code>. You can also use <code>current_time</code> for <code>HH:MM:SS</code> and <code>current_date</code> for <code>YYYY-MM-DD</code>, again using UTC.</p>
<p>Posting this here because I hadn't previously noticed that this defaults to UTC, which is a useful detail. It's also a strong vote in favor of <code>YYYY-MM-DD HH:MM:SS</code> as a string format for use with SQLite, which <a href="https://www.sqlite.org/lang_datefunc.html">doesn't otherwise provide</a> a formal datetime type.


    <p>Tags: <a href="https://simonwillison.net/tags/sql">sql</a>, <a href="https://simonwillison.net/tags/sqlite">sqlite</a>, <a href="https://simonwillison.net/tags/datetime">datetime</a></p> 

<br> 

<https://simonwillison.net/2025/May/8/sqlite-create-table-default-timestamp/#atom-everything>

---

## Quoting Claude's system prompt

date: 2025-05-08, updated: 2025-05-08, from: Simon Willison’s Weblog

<blockquote cite="https://www.dbreunig.com/2025/05/07/claude-s-system-prompt-chatbots-are-more-than-just-models.html"><p><code>If Claude is asked to count words, letters, and characters, it thinks step by step before answering the person. It explicitly counts the words, letters, or characters by assigning a number to each. It only answers the person once it has performed this explicit counting step. [...]</code></p>
<p><code>If Claude is shown a classic puzzle, before proceeding, it quotes every constraint or premise from the person’s message word for word before inside quotation marks to confirm it’s not dealing with a new variant. [...]</code></p>
<p><code>If asked to write poetry, Claude avoids using hackneyed imagery or metaphors or predictable rhyming schemes.</code></p></blockquote>
<p class="cite">&mdash; <a href="https://www.dbreunig.com/2025/05/07/claude-s-system-prompt-chatbots-are-more-than-just-models.html">Claude&#x27;s system prompt</a>, via Drew Breunig</p>

    <p>Tags: <a href="https://simonwillison.net/tags/drew-breunig">drew-breunig</a>, <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/May/8/claudes-system-prompt/#atom-everything>

---

## Reservoir Sampling

date: 2025-05-08, updated: 2025-05-08, from: Simon Willison’s Weblog

<p><strong><a href="https://samwho.dev/reservoir-sampling/">Reservoir Sampling</a></strong></p>
Yet another outstanding interactive essay by Sam Rose (<a href="https://simonwillison.net/tags/sam-rose/">previously</a>), this time explaining how reservoir sampling can be used to select a "fair" random sample when you don't know how many options there are and don't want to accumulate them before making a selection.</p>
<blockquote>
<p>Reservoir sampling is one of my favourite algorithms, and I've been wanting to write about it for years now. It allows you to solve a problem that at first seems impossible, in a way that is both elegant and efficient.</p>
</blockquote>
<p>I appreciate that Sam starts the article with "No math notation, I promise." Lots of delightful widgets to interact with here, all of which help build an intuitive understanding of the underlying algorithm.</p>
<p><img alt="Animated demo. As a slider moves from left to right the probability of cards drawn from a deck is simulated. Text at the bottom reads Anything older than 15 cards ago is has a less than 0.01% chance of being held when I stop." src="https://static.simonwillison.net/static/2025/sam-rose-cards.gif" /></p>
<p>Sam shows how this algorithm can be applied to the real-world problem of sampling log files when incoming logs threaten to overwhelm a log aggregator.</p>
<p>The dog illustration is <a href="https://samwho.dev/dogs/">commissioned art</a> and the MIT-licensed code is <a href="https://github.com/samwho/visualisations/tree/main/reservoir-sampling">available on GitHub</a>.

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43928315">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/explorables">explorables</a>, <a href="https://simonwillison.net/tags/sam-rose">sam-rose</a>, <a href="https://simonwillison.net/tags/algorithms">algorithms</a>, <a href="https://simonwillison.net/tags/rate-limiting">rate-limiting</a>, <a href="https://simonwillison.net/tags/logging">logging</a></p> 

<br> 

<https://simonwillison.net/2025/May/8/reservoir-sampling/#atom-everything>

---

## Zettlab AI NAS stores, transcribes, and makes all your data searchable (crowdfunding)

date: 2025-05-08, from: Liliputing

<p>A startup called Zettlab is running a Kickstarter crowdfunding campaign for a new line of network-attached storage devices that not only store your data and make it available across all your gadgets, but can also leverage on-device AI capabilities to classify your data and make it searchable using natural language. The Zettlab AI NAS systems feature support [&#8230;]</p>
<p>The post <a href="https://liliputing.com/zettlab-ai-nas-stores-transcribes-and-makes-all-your-data-searchable-crowdfunding/">Zettlab AI NAS stores, transcribes, and makes all your data searchable (crowdfunding)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/zettlab-ai-nas-stores-transcribes-and-makes-all-your-data-searchable-crowdfunding/>

---

## Quoting Oleg Pustovit

date: 2025-05-08, updated: 2025-05-08, from: Simon Willison’s Weblog

<blockquote cite="https://nexo.sh/posts/microservices-for-startups/"><p>Microservices only pay off when you have real scaling bottlenecks, large teams, or independently evolving domains. Before that? You’re paying the price without getting the benefit: duplicated infra, fragile local setups, and slow iteration.</p></blockquote>
<p class="cite">&mdash; <a href="https://nexo.sh/posts/microservices-for-startups/">Oleg Pustovit</a>, Microservices Are a Tax Your Startup Probably Can’t Afford</p>

    <p>Tags: <a href="https://simonwillison.net/tags/software-architecture">software-architecture</a>, <a href="https://simonwillison.net/tags/startups">startups</a>, <a href="https://simonwillison.net/tags/microservices">microservices</a></p> 

<br> 

<https://simonwillison.net/2025/May/8/oleg-pustovit/#atom-everything>

---

**@Tomosino's Mastodon feed** (date: 2025-05-08, from: Tomosino's Mastodon feed)

<p>Never in a million years expected that pick</p> 

<br> 

<https://tilde.zone/@tomasino/114473825891552963>

---

## Watch an AI-Generated Recruiter Make a Job Interview Even Worse

date: 2025-05-08, from: 404 Media Group

“Vertical bar pilates." 

<br> 

<https://www.404media.co/ai-recruiter-apriora-tiktok/>

---

## Optional Values in SwiftData Predicates

date: 2025-05-08, from: Michael Tsai

Fatbobman: In the process of creating predicates for Core Data, the predicate expressions do not have a direct link to the type code. The properties used in these expressions correspond to those defined within the model editor (data model), and their &#8220;optional&#8221; characteristic does not align with the concept of optional types in Swift, but [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/08/optional-values-in-swiftdata-predicates/>

---

## curl Takes Action Against AI Bug Reports

date: 2025-05-08, from: Michael Tsai

Connor Jones: Stenberg said the amount of time it takes project maintainers to triage each AI-assisted vulnerability report made via HackerOne, only for them to be deemed invalid, is tantamount to a DDoS attack on the project.Citing a specific recent report that &#8220;pushed [him] over the limit,&#8221; Stenberg said via LinkedIn: &#8220;That&#8217;s it. I&#8217;ve had [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/08/curl-takes-action-against-ai-bug-reports/>

---

## AltStore PAL 2.2

date: 2025-05-08, from: Michael Tsai

Riley Testut: Guess what &#8212; you can now self-publish your apps on AltStore PAL completely FREE! Just connect your Apple Developer account with PAL and make an AltStore source. Then you can distribute notarized apps by simply uploading them to your web server like the good ol&#8217; days &#x1F44C; AltStore: The only major difference is [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/08/altstore-pal-2-2/>

---

## Pure Sweat Basketball v. Apple

date: 2025-05-08, from: Michael Tsai

Thomas Claburn: A developer of mobile sports apps has filed a proposed class-action lawsuit against Apple, seeking to recover commissions iBiz allegedly collected in violation of a federal injunction intended to allow developers to use alternative payment systems.The complaint [PDF], filed on May 2 in California Northern District Court by law firm Hagens Berman on [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/08/pure-sweat-basketball-v-apple/>

---

**@Dave Winer's linkblog** (date: 2025-05-08, from: Dave Winer's linkblog)

This top-selling Chinese EV pickup is going global and it&#39;s a beast. 

<br> 

<https://electrek.co/2025/05/08/top-selling-chinese-ev-pickup-going-global-beast/>

---

**@Dave Winer's linkblog** (date: 2025-05-08, from: Dave Winer's linkblog)

Who Broke the Internet, a podcast hosted by Cory Doctorow. 

<br> 

<https://www.cbc.ca/listen/cbc-podcasts/1353-the-naked-emperor/episode/16144078-dont-be-evil>

---

**@Dave Winer's linkblog** (date: 2025-05-08, from: Dave Winer's linkblog)

Pope Leo XIV. 

<br> 

<https://en.m.wikipedia.org/wiki/Pope_Leo_XIV>

---

**@Dave Winer's linkblog** (date: 2025-05-08, from: Dave Winer's linkblog)

AI isn’t replacing student writing – but it is reshaping it. 

<br> 

<https://theconversation.com/ai-isnt-replacing-student-writing-but-it-is-reshaping-it-254878>

---

## Ghibli, Ghiblification, Copyright and Style

date: 2025-05-08, from: Authors Union blogs

In late March, OpenAI made it possible to “Ghiblify” yourself — using its newest version of ChatGPT, with updated image [&#8230;] 

<br> 

<https://www.authorsalliance.org/2025/05/08/ghibli-ghiblification-copyright-and-style/>

---

## Silicon Valley's Empty Promises and Billion-Dollar Blunders

date: 2025-05-08, from: Guy Kawasaki blog

&#8220;Could the entire AI revolution be nothing more than an expensive con?&#8221; 

<br> 

<https://guykawasaki.substack.com/p/silicon-valleys-empty-promises-and>

---

## Lenovo’s new gaming tablet combines Snapdragon 8 Elite, a 165Hz display and an optional game controller

date: 2025-05-08, from: Liliputing

<p>Lenovo has been selling a line of gaming tablets with 8.8 inch displays and high-end processors for the past few years. Now the company has revealed a 4th-gen model with the fastest processor, the highest-resolution display, and an optional game controller that transforms the tablet into a handheld game console. The Lenovo Legion Tab Y700 [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lenovos-new-gaming-tablet-combines-snapdragon-8-elite-a-165hz-display-and-an-optional-game-controller/">Lenovo&#8217;s new gaming tablet combines Snapdragon 8 Elite, a 165Hz display and an optional game controller</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lenovos-new-gaming-tablet-combines-snapdragon-8-elite-a-165hz-display-and-an-optional-game-controller/>

---

## Ficunam 15: todo lo que debes saber

date: 2025-05-08, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Ficunam, el Festival internacional de cine de la Universidad Nacional Autónoma de México, se llevará a cabo del 29 de mayo al 6 de junio en diversas sedes de la Ciudad de México y contará con la proyección de 117 títulos entre largometrajes, cortos, documentales e instalaciones audiovisuales de autores de alrededor del mundo. Desde [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/ficunam-15-todo-lo-que-debes-saber/">Ficunam 15: todo lo que debes saber</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/ficunam-15-todo-lo-que-debes-saber/?utm_source=rss&utm_medium=rss&utm_campaign=ficunam-15-todo-lo-que-debes-saber>

---

## Unconditional Surrender: Commemorating 80 Years Since the End of World War II in the European Theater of Operations

date: 2025-05-08, from: National Archives, Text Message blog

Today’s post is by Rachael Salyer, Subject Matter Expert for Modern Military Records at the National Archives in College Park, MD. In the early morning of May 7, 1945, representatives from the four Allied Powers met with General Alfred Jodl, Chief of Staff of the German Army, and two additional German officers at the Supreme &#8230; <a href="https://text-message.blogs.archives.gov/2025/05/08/unconditional-surrender-commemorating-80-years-since-the-end-of-world-war-ii-in-the-european-theater-of-operations/" class="more-link">Continue reading <span class="screen-reader-text">Unconditional Surrender: Commemorating 80 Years Since the End of World War II in the European Theater of Operations</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/05/08/unconditional-surrender-commemorating-80-years-since-the-end-of-world-war-ii-in-the-european-theater-of-operations/>

---

## Getting Started with Machine Learning on Bacalhau

date: 2025-05-08, from: Bacalhau Blog

Distributed Machine Learning needn't be compex with the help of Bacalhau 

<br> 

<https://blog.bacalhau.org/p/getting-started-with-machine-learning>

---

## DC-ROMA launches a $349 RISC-V mainboard with an 8-core CPU and 50 TOPS of AI performance and Ubuntu 24.04 LTS support

date: 2025-05-08, from: Liliputing

<p>Deep Computing&#8217;s new DC-ROMA RISC-V AI PC is a single-board computer with an ESWIN 7702X octa-core processor featuring SiFive P5550 RISC-V RV64GC CPU cores with support for frequencies up to 2GHz, a GPU with support for hardware-accelerated 3D graphics, and an NPU that delivers up to 40 TOPS of AI performance. According to Deep Computing, [&#8230;]</p>
<p>The post <a href="https://liliputing.com/dc-roma-launches-a-349-risc-v-mainboard-with-an-8-core-cpu-and-50-tops-of-ai-performance-and-ubuntu-24-04-lts-support/">DC-ROMA launches a $349 RISC-V mainboard with an 8-core CPU and 50 TOPS of AI performance and Ubuntu 24.04 LTS support</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/dc-roma-launches-a-349-risc-v-mainboard-with-an-8-core-cpu-and-50-tops-of-ai-performance-and-ubuntu-24-04-lts-support/>

---

## The Latest on Rümeysa Öztürk (May 8, 2025)

date: 2025-05-08, updated: 2025-05-08, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/05/08/the-latest-on-rumeysa-ozturk-may-8-2025/>

---

## Quoting Ashley Willis

date: 2025-05-08, updated: 2025-05-08, from: Simon Willison’s Weblog

<blockquote cite="https://ashley.dev/posts/what-even-is-vibe-coding/"><p>But I’ve also had my own quiet concerns about what [vibe coding] means for early-career developers. So much of how I learned came from chasing bugs in broken tutorials and seeing how all the pieces connected, or didn’t. There was value in that. And maybe I’ve been a little protective of it.</p>
<p>A mentor challenged that. He pointed out that debugging AI generated code is a lot like onboarding into a legacy codebase, making sense of decisions you didn’t make, finding where things break, and learning to trust (or rewrite) what’s already there. That’s the kind of work a lot of developers end up doing anyway.</p></blockquote>
<p class="cite">&mdash; <a href="https://ashley.dev/posts/what-even-is-vibe-coding/">Ashley Willis</a>, What Even Is Vibe Coding?</p>

    <p>Tags: <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/May/8/ashley-willis/#atom-everything>

---

## Vote for the May 2025 + Post Topic

date: 2025-05-08, from: Computer ads from the Past

Make your vote count. 

<br> 

<https://computeradsfromthepast.substack.com/p/vote-for-the-may-2025-post-topic>

---

## Will Trump Pretend to Fix What He Broke?

date: 2025-05-08, from: Paul Krugman

Why you shouldn&#8217;t get excited about his &#8220;deals&#8221; 

<br> 

<https://paulkrugman.substack.com/p/will-trump-pretend-to-fix-what-he>

---

## The Second Continental Congress Convenes

date: 2025-05-08, from: National Archives, Pieces of History blog

In celebration of the upcoming 250th anniversary of the United States, we’re focusing on key events in the history of independence. Today’s post looks at the early months of the Second Continental Congress.  Before the First Continental Congress adjourned in October 1774, its members agreed to reconvene in Philadelphia on May 10, 1775. By the &#8230; <a href="https://prologue.blogs.archives.gov/2025/05/08/the-second-continental-congress-convenes/" class="more-link">Continue reading <span class="screen-reader-text">The Second Continental Congress Convenes </span></a> 

<br> 

<https://prologue.blogs.archives.gov/2025/05/08/the-second-continental-congress-convenes/>

---

## 295: Thanatogenic Anthrosoil

date: 2025-05-08, from: Fix the News

New metal band name unlocked. Plus, our latest charity partner, Tanzania's incredible electrification drive, oil majors abandon the playing field, the first Southeast Asian country to ban corporal punishment, and did someone just say LAZERS? 

<br> 

<https://fixthenews.com/295-thanatogenic-anthrosoil/>

---

## llm-gemini 0.19.1

date: 2025-05-08, updated: 2025-05-08, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/simonw/llm-gemini/releases/tag/0.19.1">llm-gemini 0.19.1</a></strong></p>
Bugfix release for my <a href="https://github.com/simonw/llm-gemini">llm-gemini</a> plugin, which was recording the number of output tokens (needed to calculate the price of a response) incorrectly for the Gemini "thinking" models. Those models turn out to return <code>candidatesTokenCount</code> and <code>thoughtsTokenCount</code> as two separate values which need to be added together to get the total billed output token count. Full details in <a href="https://github.com/simonw/llm-gemini/issues/75">this issue</a>.</p>
<p>I spotted this potential bug in <a href="https://gist.github.com/simonw/87a59e7f5c12274d65e2ac053b0eacdb#token-usage">this response log</a> this morning, and my concerns were confirmed when Paul Gauthier wrote about a similar fix in Aider in <a href="https://aider.chat/2025/05/07/gemini-cost.html">Gemini 2.5 Pro Preview 03-25 benchmark cost</a>, where he noted that the $6.32 cost recorded to benchmark Gemini 2.5 Pro Preview 03-25 was incorrect. Since that model is no longer available (despite <a href="https://simonwillison.net/2025/May/6/gemini-25-pro-preview/">the date-based model alias persisting</a>) Paul is not able to accurately calculate the new cost, but it's likely a lot more since the Gemini 2.5 Pro Preview 05-06 benchmark cost $37.</p>
<p>I've gone through my <a href="">gemini tag</a> and attempted to update my previous posts with new calculations - this mostly involved increases in the order of 12.336 cents to 16.316 cents (<a href="https://simonwillison.net/2025/May/6/gemini-25-pro-preview/">as seen here</a>).


    <p>Tags: <a href="https://simonwillison.net/tags/paul-gauthier">paul-gauthier</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/aider">aider</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llm-pricing">llm-pricing</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/May/8/llm-gemini-0191/#atom-everything>

---

## Why the Chinese Government Taught AI to Lie

date: 2025-05-08, from: Peter Warden

I love the country of China, I made some good friends while collaborating with engineers based in Beijing, but the Chinese government is a repressive regime relying on censorship to control its own population. I&#8217;m old enough to remember feeling a rush of hope when the Tiananmen Square protests were started by people not much [&#8230;] 

<br> 

<https://petewarden.com/2025/05/08/why-the-chinese-government-taught-ai-to-lie/>

---

## Comics from 1983/12 Issue of Videogaming and Computer Gaming Illustrated

date: 2025-05-08, from: Computer ads from the Past

Time for some oldie levity. 

<br> 

<https://computeradsfromthepast.substack.com/p/comics-from-198312-issue-of-videogaming>

---

**@Dave Winer's linkblog** (date: 2025-05-08, from: Dave Winer's linkblog)

Leaked Memo Reveals Details About Trump’s War on Science at the NIH. 

<br> 

<https://www.motherjones.com/politics/2025/05/nih-hhs-leaked-memo-funding-cuts-trump-war-on-science-vaccines-rfk-climate-change-covid-china/>

---

## ”Everyone is cheating their way through college” with GenAI. Who should bear the costs?

date: 2025-05-08, from: Gary Marcus blog

Society is once again left holding the bag 

<br> 

<https://garymarcus.substack.com/p/everyone-is-cheating-their-way-through>

---

**@Feed for Alt USDS** (date: 2025-05-08, from: Feed for Alt USDS)

Elon Musk is out, but DOGE is still inside the federal government. We’re already planning how to rebuild.

Read more in today’s Built to Serve newsletter
 🛠️ https://bit.ly/4d8DK1c

 #WeTheBuilders #BuiltToServe #DOGE 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lommhttpye2x>

---

## Introducing web search on the Anthropic API

date: 2025-05-07, updated: 2025-05-07, from: Simon Willison’s Weblog

<p><strong><a href="https://www.anthropic.com/news/web-search-api">Introducing web search on the Anthropic API</a></strong></p>
Anthropic's <a href="https://simonwillison.net/2025/Mar/20/claude-can-now-search-the-web/">web search</a> (presumably still <a href="https://simonwillison.net/2025/Mar/21/anthropic-use-brave/">powered by Brave</a>) is now also available through their API, in the shape of a new <a href="https://docs.anthropic.com/en/docs/build-with-claude/tool-use/web-search-tool">web search tool</a> called <code>web_search_20250305</code>.</p>
<p>You can specify a maximum number of uses per prompt and you can also pass a list of disallowed or allowed domains, plus hints as to the user's current location.</p>
<p>Search results are returned in a format that looks similar to the <a href="https://simonwillison.net/2025/Jan/24/anthropics-new-citations-api/">Anthropic Citations API</a>.</p>
<p>It's charged at $10 per 1,000 searches, which is a little more expensive than what the <a href="https://brave.com/search/api/">Brave Search API</a> charges ($3 or $5 or $9 per thousand depending on how you're using them).</p>
<p>I couldn't find any details of additional rules surrounding storage or display of search results, which surprised me because both <a href="https://ai.google.dev/gemini-api/docs/grounding/search-suggestions#requirements">Google Gemini</a> and <a href="https://platform.openai.com/docs/guides/tools-web-search?api-mode=chat#output-and-citations">OpenAI</a> have these for their own API search results.

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43920188">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a>, <a href="https://simonwillison.net/tags/search">search</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/claude">claude</a></p> 

<br> 

<https://simonwillison.net/2025/May/7/anthropic-api-search/#atom-everything>

---

## 563. Peter the Great: Bloodbath in the Kremlin (Part 2)

date: 2025-05-07, from: This is history podcast

<p>What abominable mischief and hedonism did the seventeen year old Peter the Great revel in during his strange and remarkable travels through Europe, before truly stepping into the role of Tsar of all the Russias? Did it serve a secret political purpose? What was the outcome of the first war he chose to wage against [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/563-peter-the-great-bloodbath-in-the-kremlin-part-2/">563. Peter the Great: Bloodbath in the Kremlin (Part 2)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/563-peter-the-great-bloodbath-in-the-kremlin-part-2/>

---

## Create and edit images with Gemini 2.0 in preview

date: 2025-05-07, updated: 2025-05-07, from: Simon Willison’s Weblog

<p><strong><a href="https://developers.googleblog.com/en/generate-images-gemini-2-0-flash-preview/">Create and edit images with Gemini 2.0 in preview</a></strong></p>
Gemini 2.0 Flash has had image generation capabilities for a while now, and they're now available via the paid Gemini API - at 3.9 cents per generated image.</p>
<p>According to <a href="https://ai.google.dev/gemini-api/docs/image-generation">the API documentation</a> you need to use the new <code>gemini-2.0-flash-preview-image-generation</code> model ID and specify <code>{"responseModalities":["TEXT","IMAGE"]}</code> as part of your request.</p>
<p>Here's an example that calls the API using <code>curl</code> (and fetches a Gemini key from the <code>llm keys get</code> store):</p>
<pre>curl -s -X POST \
  <span class="pl-s"><span class="pl-pds">"</span>https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-preview-image-generation:generateContent?key=<span class="pl-s"><span class="pl-pds">$(</span>llm keys get gemini<span class="pl-pds">)</span></span><span class="pl-pds">"</span></span> \
  -H <span class="pl-s"><span class="pl-pds">"</span>Content-Type: application/json<span class="pl-pds">"</span></span> \
  -d <span class="pl-s"><span class="pl-pds">'</span>{</span>
<span class="pl-s">    "contents": [{</span>
<span class="pl-s">      "parts": [</span>
<span class="pl-s">        {"text": "Photo of a raccoon in a trash can with a paw-written sign that says I love trash"}</span>
<span class="pl-s">      ]</span>
<span class="pl-s">    }],</span>
<span class="pl-s">    "generationConfig":{"responseModalities":["TEXT","IMAGE"]}</span>
<span class="pl-s">  }<span class="pl-pds">'</span></span> <span class="pl-k">&gt;</span> /tmp/raccoon.json</pre>
<p>Here's <a href="https://gist.github.com/simonw/d96f4adb9cd0933e17fb5771b43d681a">the response</a>. I got Gemini 2.5 Pro <a href="https://gist.github.com/simonw/6363ace77bbac08c6ad05857b3bd9ad2">to vibe-code me</a> a new <a href="https://tools.simonwillison.net/gemini-image-json">debug tool</a> for visualizing that JSON. If you visit that tool and click the "Load an example" link you'll see the result of the raccoon image visualized:</p>
<p><img alt="Render JSON from Gemini Image Generation tool. Paste Gemini JSON here: a bunch of JSON with a base64 encoded PNG. Then buttons to Load an example, or a really big (40MB) example or Render JSON. The Rendered Content shows a photograph of a raccoon in an open top bin holding a sign that says I heart trash." src="https://static.simonwillison.net/static/2025/gemini-image-tool.jpg" /></p>
<p>The other prompt I tried was this one:</p>
<blockquote>
<p>Provide a vegetarian recipe for butter chicken but with chickpeas not chicken and include many inline illustrations along the way</p>
</blockquote>
<p>The result of that one was a <a href="https://gist.github.com/simonw/55894032b2c60b35f320b6a166ded493">41MB JSON file</a>(!) containing 28 images - which presumably cost over a dollar since images are 3.9 cents each.</p>
<p>Some of the illustrations it chose for that one were somewhat unexpected:</p>
<p><img alt="Text reads: &quot;* ½ teaspoon Kashmiri chili powder (or paprika for milder flavor)&quot; followed by a group photo of people in formal attire with black suits and light blue ties standing in rows outdoors, then &quot;* ½ cup heavy cream (or coconut cream for vegan option)&quot; followed by a close-up image of dried cumin seeds or similar brown spice." src="https://static.simonwillison.net/static/2025/weird-illustrations.jpg" /></p>
<p>If you want to see that one you can click the "Load a really big example" link in <a href="https://tools.simonwillison.net/gemini-image-json">the debug tool</a>, then wait for your browser to fetch and render the full 41MB JSON file.</p>
<p>The most interesting feature of Gemini (as with GPT-4o images) is the ability to accept images as inputs. I tried that out with <a href="https://static.simonwillison.net/static/2025/pelican-no-hat.jpg">this pelican photo</a> like this:</p>
<pre>cat <span class="pl-k">&gt;</span> /tmp/request.json <span class="pl-s"><span class="pl-k">&lt;&lt;</span> <span class="pl-k">EOF</span></span>
<span class="pl-s">{</span>
<span class="pl-s">  "contents": [{</span>
<span class="pl-s">    "parts":[</span>
<span class="pl-s">      {"text": "Modify this photo to add an inappropriate hat"},</span>
<span class="pl-s">      {</span>
<span class="pl-s">        "inline_data": {</span>
<span class="pl-s">          "mime_type":"image/jpeg",</span>
<span class="pl-s">          "data": "<span class="pl-s"><span class="pl-pds">$(</span>base64 -i pelican.jpg<span class="pl-pds">)</span></span>"</span>
<span class="pl-s">        }</span>
<span class="pl-s">      }</span>
<span class="pl-s">    ]</span>
<span class="pl-s">  }],</span>
<span class="pl-s">  "generationConfig": {"responseModalities": ["TEXT", "IMAGE"]}</span>
<span class="pl-s">}</span>
<span class="pl-s"><span class="pl-k">EOF</span></span>

<span class="pl-c"><span class="pl-c">#</span> Execute the curl command with the JSON file</span>
curl -X POST \
  <span class="pl-s"><span class="pl-pds">'</span>https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-preview-image-generation:generateContent?key=<span class="pl-pds">'</span></span><span class="pl-s"><span class="pl-pds">$(</span>llm keys get gemini<span class="pl-pds">)</span></span> \
  -H <span class="pl-s"><span class="pl-pds">'</span>Content-Type: application/json<span class="pl-pds">'</span></span> \
  -d @/tmp/request.json \
  <span class="pl-k">&gt;</span> /tmp/out.json</pre>

<p>And now the pelican is wearing a hat:</p>
<p><img alt="A pelican with its wings outstretched wearing an inappropriate pink bowler hat. The hat looks a little bit pasted on. " src="https://static.simonwillison.net/static/2025/pelican-hat.jpg" />

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43917461">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/text-to-image">text-to-image</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a>, <a href="https://simonwillison.net/tags/tools">tools</a></p> 

<br> 

<https://simonwillison.net/2025/May/7/gemini-images-preview/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-05-07, from: Dave Winer's linkblog)

There&#39;s no doubt, China is making the EV&#39;s we want and will never have in the US. If Trumpsters only knew how much fun these freaking cars are, they&#39;d tell Trump to cut the bullshit, and welcome them in. We want what they&#39;re making. 

<br> 

<https://electrek.co/2025/05/07/hyundai-unveils-new-elexio-electric-suv-with-435-miles-range/>

---

## Medium is the new large

date: 2025-05-07, updated: 2025-05-07, from: Simon Willison’s Weblog

<p><strong><a href="https://mistral.ai/news/mistral-medium-3">Medium is the new large</a></strong></p>
New model release from Mistral - this time closed source/proprietary. Mistral Medium claims strong benchmark scores similar to GPT-4o and Claude 3.7 Sonnet, but is priced at $0.40/million input and $2/million output - about the same price as GPT 4.1 Mini. <a href="https://www.llm-prices.com/">For comparison</a>, GPT-4o is $2.50/$10 and Claude 3.7 Sonnet is $3/$15.</p>
<p>The model is a vision LLM, accepting both images and text.</p>
<p>More interesting than the price is the deployment model. Mistral Medium may not be open weights but it is very much available for self-hosting:</p>
<blockquote>
<p>Mistral Medium 3 can also be deployed on any cloud, including self-hosted environments of four GPUs and above.</p>
</blockquote>
<p>Mistral's other announcement today is <a href="https://mistral.ai/news/le-chat-enterprise">Le Chat Enterprise</a>. This is a suite of tools that can integrate with your company's internal data and provide "agents" (these look similar to Claude Projects or OpenAI GPTs), again with the option to self-host.</p>
<p>Is there a new open weights model coming soon? This note tucked away at the bottom of the Mistral Medium 3 announcement seems to hint at that:</p>
<blockquote>
<p>With the launches of <a href="https://mistral.ai/news/mistral-small-3-1">Mistral Small</a> in March and Mistral Medium today, it's no secret that we're working on something 'large' over the next few weeks. With even our medium-sized model being resoundingly better than flagship open source models such as Llama 4 Maverick, we're excited to 'open' up what's to come :)</p>
</blockquote>
<p>I released <a href="https://github.com/simonw/llm-mistral/releases/tag/0.12">llm-mistral 0.12</a> adding support for the new model.


    <p>Tags: <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/mistral">mistral</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/llm-pricing">llm-pricing</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a></p> 

<br> 

<https://simonwillison.net/2025/May/7/medium-is-the-new-large/#atom-everything>

---

## Lilbits: Raspberry Pi OS and NVIDIA Shield TV updates, Google’s “tiny taskbar” for Android phones, and Dynabook’s Arrow Lake laptops

date: 2025-05-07, from: Liliputing

<p>Multitasking on a phone has never been a great experience. While modern mobile operating systems offers tools for quickly switching between apps or even viewing multiple apps in a split-screen mode, the relatively small displays on phones make it hard to offer a true desktop-like experience with floating windows that can be moved and resized. [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-raspberry-pi-os-and-nvidia-shield-tv-updates-googles-tiny-taskbar-for-android-phones-and-dynabooks-arrow-lake-laptops/">Lilbits: Raspberry Pi OS and NVIDIA Shield TV updates, Google&#8217;s &#8220;tiny taskbar&#8221; for Android phones, and Dynabook&#8217;s Arrow Lake laptops</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-raspberry-pi-os-and-nvidia-shield-tv-updates-googles-tiny-taskbar-for-android-phones-and-dynabooks-arrow-lake-laptops/>

---

## llm-prices.com

date: 2025-05-07, updated: 2025-05-07, from: Simon Willison’s Weblog

<p><strong><a href="https://www.llm-prices.com/">llm-prices.com</a></strong></p>
I've been maintaining a simple LLM pricing calculator since <a href="https://github.com/simonw/tools/commits/main/llm-prices.html">October last year</a>. I finally decided to split it out to its own domain name (previously it was hosted at <code>tools.simonwillison.net/llm-prices</code>), running on Cloudflare Pages.</p>
<p><img alt="Screenshot of the llm-prices.com site - on the left is a calculator interface for entering number of input tokens, output tokens and price per million of each. On the right is a table of models and their prices, sorted cheapest first." src="https://static.simonwillison.net/static/2025/llm-prices.jpg" /></p>
<p>The site runs out of my <a href="https://github.com/simonw/llm-prices">simonw/llm-prices</a> GitHub repository. I ported <a href="https://github.com/simonw/llm-prices/commits/b45e8f9c718c4ad3ab50b906a2c3882cbcffcb5b/index.html">the history</a> of the old <code>llm-prices.html</code> file using a vibe-coded bash script that I forgot to save anywhere.</p>
<p>I rarely use AI-generated imagery in my own projects, but for this one I found an excellent reason to use GPT-4o image outputs... to generate the favicon! I dropped a screenshot of the site into ChatGPT (o4-mini-high in this case) and asked for the following:</p>
<blockquote>
<p>design a bunch of options for favicons for this site in a single image, white background</p>
</blockquote>
<p><img alt="A 3x3 grid of simple icon concepts: green coins/circles, a green price tag with dollar sign, a calculator with dollar sign, a calculator with plus sign, a blue chat bubble with three dots, a green brain icon, the letters &quot;AI&quot; in dark gray, a document with finger pointing at it, and green horizontal bars of decreasing size." src="https://static.simonwillison.net/static/2025/favicon-options.jpg" /></p>
<p>I liked the top right one, so I cropped it into Pixelmator and made a 32x32 version. Here's what it looks like in my browser:</p>
<p><img alt="A cropped web browser showing the chosen favicon - it's a calculator with a dollar sign overlapping some of the keys." src="https://static.simonwillison.net/static/2025/favicon-live.png" /></p>
<p>I added a new feature just now: the state of the calculator is now reflected in the <code>#fragment-hash</code> URL of the page, which means you can link to your previous calculations.</p>
<p>I implemented that feature using <a href="https://simonwillison.net/2025/May/6/gemini-25-pro-preview/">the new gemini-2.5-pro-preview-05-06</a>, since that model boasts improved front-end coding abilities. It did a pretty great job - here's how I prompted it:</p>
<pre><code>llm -m gemini-2.5-pro-preview-05-06 -f https://www.llm-prices.com/ -s 'modify this code so that the state of the page is reflected in the fragmenth hash URL - I want to capture the values filling out the form fields and also the current sort order of the table. These should be respected when the page first loads too. Update them using replaceHistory, no need to enable the back button.'
</code></pre>
<p>Here's <a href="https://gist.github.com/simonw/9d4e15b58ccfaca9e08747225cb69fa2">the transcript</a> and <a href="https://github.com/simonw/llm-prices/commit/c9eee704d070d119e6c342d9a7ab6c41d09550dd">the commit updating the tool</a>, plus <a href="https://www.llm-prices.com/#it=5883&amp;ot=16087&amp;ic=1.25&amp;oc=10&amp;sb=input&amp;sd=descending">an example link</a> showing the new feature in action (and calculating the cost for that Gemini 2.5 Pro prompt at 16.8224 cents, after <a href="https://simonwillison.net/2025/May/8/llm-gemini-0191/">fixing the calculation</a>.)


    <p>Tags: <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a>, <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/llm-pricing">llm-pricing</a>, <a href="https://simonwillison.net/tags/favicons">favicons</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/cloudflare">cloudflare</a>, <a href="https://simonwillison.net/tags/text-to-image">text-to-image</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a></p> 

<br> 

<https://simonwillison.net/2025/May/7/llm-prices/#atom-everything>

---

## 'I Loved That AI:' Judge Moved by AI-Generated Avatar of Man Killed in Road Rage Incident

date: 2025-05-07, from: 404 Media Group

How the sister of Christopher Pelkey made an avatar of him to testify in court. 

<br> 

<https://www.404media.co/i-loved-that-ai-judge-moved-by-ai-generated-avatar-of-man-killed-in-road-rage-incident/>

---

**@Robert's feed at BlueSky** (date: 2025-05-07, from: Robert's feed at BlueSky)

👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lom52ftuic2w>

---

## astral-sh/ty

date: 2025-05-07, updated: 2025-05-07, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/astral-sh/ty">astral-sh/ty</a></strong></p>
Astral have been working on this "extremely fast Python type checker and language server, written in Rust" <a href="https://simonwillison.net/2025/Jan/29/charlie-marsh/">quietly but in-the-open</a> for a while now. Here's the first alpha public release - albeit <a href="https://news.ycombinator.com/item?id=43918484#43919354">not yet announced</a> - as <a href="https://pypi.org/project/ty/">ty</a> on PyPI (nice <a href="https://news.ycombinator.com/item?id=43918484#43920112">donated</a> two-letter name!)</p>
<p>You can try it out via <a href="https://docs.astral.sh/uv/guides/tools/#running-tools">uvx</a> like this - run the command in a folder full of Python code and see what comes back:</p>
<pre><code>uvx ty check
</code></pre>
<p>I got zero errors for my recent, simple <a href="https://github.com/simonw/condense-json">condense-json</a> library and a <em>ton</em> of errors for my more mature <a href="https://sqlite-utils.datasette.io/">sqlite-utils</a> library - <a href="https://gist.github.com/simonw/a13e1720b03e23783ae668eca7f6f12a">output here</a>.</p>
<p>It really is <em>fast</em>:</p>
<pre><code>cd /tmp
git clone https://github.com/simonw/sqlite-utils
cd sqlite-utils
time uvx ty check
</code></pre>
<p>Reports it running in around a tenth of a second (0.109 total wall time) using multiple CPU cores:</p>
<pre><code>uvx ty check  0.18s user 0.07s system 228% cpu 0.109 total
</code></pre>
<p>Running <code>time uvx mypy .</code> in the same folder (both after first ensuring the underlying tools had been cached) took around 7x longer:</p>
<pre><code>uvx mypy .  0.46s user 0.09s system 74% cpu 0.740 total
</code></pre>
<p>This isn't a fair comparison yet as ty still isn't feature complete in comparison to mypy.

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43918484">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/uv">uv</a>, <a href="https://simonwillison.net/tags/astral">astral</a>, <a href="https://simonwillison.net/tags/rust">rust</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/pypi">pypi</a>, <a href="https://simonwillison.net/tags/mypy">mypy</a></p> 

<br> 

<https://simonwillison.net/2025/May/7/ty/#atom-everything>

---

## It Seems Like the Sucker Was There All Along

date: 2025-05-07, updated: 2025-05-07, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/05/07/it-seems-like-the-sucker-was-there-all-along/>

---

## Free With In-App Purchase Is a Sham

date: 2025-05-07, from: Michael Tsai

Jeff Johnson: The problem is that what Apple means here by &#8220;free&#8221; as opposed to &#8220;paid&#8221; is simply that you don&#8217;t have to pay before downloading the app, but Apple&#8217;s counterintuitive definition tends to obscure what is most important to consumers: how much you have to pay to use the app. The range of allowed [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/07/free-with-in-app-purchase-is-a-sham/>

---

## External Payments From the Patreon App

date: 2025-05-07, from: Michael Tsai

Sarah Perez: Creator platform Patreon has rolled out an updated version of its app that now allows users to make purchases via the web, in the wake of the Apple-Epic court ruling that forced Apple to allow app developers to include links to alternative forms of payment without being subject to Apple&#8217;s commission.Previously, on version [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/07/external-payments-from-the-patreon-app/>

---

## Fortnite Coming Back to the App Store?

date: 2025-05-07, from: Michael Tsai

Juli Clover: Epic Games CEO Tim Sweeney said over the weekend (via The Verge) that Epic will use its Epic Games Sweden account to submit Fortnite to the App Store in the U.S. Apparently, Sweeney has spoken to Apple about the issue, and based on his wording, it sounds like Apple could allow the plan, [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/07/fortnite-coming-back-to-the-app-store/>

---

## iOS 19 More Like macOS?

date: 2025-05-07, from: Michael Tsai

Joe Rossignol: Bloomberg&#8217;s Mark Gurman today said that iPadOS 19 will be &#8220;more like macOS.&#8221;Gurman said that iPadOS 19 will be &#8220;more like a Mac&#8221; in three ways:Improved productivityImproved multitaskingImproved app window management Previous discussion of the rumored redesign had focused on fears of macOS becoming more like iOS or iOS becoming more like visionOS, [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/07/ios-19-more-like-macos/>

---

## This handheld Linux PC is made for wireless hacking (Crowdfunding a Raspberry Pi-powered Flipper Zero alternative with a QWERTY keyboard)

date: 2025-05-07, from: Liliputing

<p>The Interrupt is a handheld computer with a QWERTY keyboard for thumb typing, a 3.5 inch IPS LCD color display, and a Kali Linux-based operating system. But while you can use it as a general purpose device, it&#8217;s really designed as a sort of Flipper Zero-like system for tinkering with nearby wireless devices. In addition to WiFi [&#8230;]</p>
<p>The post <a href="https://liliputing.com/interrupt-is-a-handheld-linux-pc-and-wireless-hacking-tool-crowdfunding-a-raspberry-pi-powered-flipper-zero-alternative-with-a-qwerty-keyboard/">This handheld Linux PC is made for wireless hacking (Crowdfunding a Raspberry Pi-powered Flipper Zero alternative with a QWERTY keyboard)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br><video crossorigin="anonymous" controls="controls" width="250">
<source type="video/mp4" src="https://v2.kickstarter.com/1746637933-Jua61X1iyN3adASC%2B0ALcVnxMkwYSyTpfJYc18Rqde0%3D/projects/5051809/video-1358000-h264_high.mp4"></source>
</video> <a href="https://v2.kickstarter.com/1746637933-Jua61X1iyN3adASC%2B0ALcVnxMkwYSyTpfJYc18Rqde0%3D/projects/5051809/video-1358000-h264_high.mp4" target="_blank">download video/mp4</a> 

<https://liliputing.com/interrupt-is-a-handheld-linux-pc-and-wireless-hacking-tool-crowdfunding-a-raspberry-pi-powered-flipper-zero-alternative-with-a-qwerty-keyboard/>

---

**@Feed for Alt USDS** (date: 2025-05-07, from: Feed for Alt USDS)

#altCitizen all day long

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lolxnowh2k2b>

---

## <default:div xmlns="http://www.w3.org/1999/xhtml" class="if-your-feed-reader-displays-this-then-it-is-violating-the-Atom-spec-RFC-4287-section-4.2.14">Running For Re-election in the 2025 W3C Advisory Board (AB) Election</default:div>

date: 2025-05-07, updated: 2025-05-07, from: Tantek Çelik's blog

 

<br> 

<https://tantek.com/2025/127/b1/running-for-w3c-advisory-board-ab-election>

---

## The Curious About Everything Newsletter #50

date: 2025-05-07, from: Curious about everything blog

The many interesting things I read in April 2025 

<br> 

<https://jodiettenberg.substack.com/p/fifty>

---

**@Dave Winer's linkblog** (date: 2025-05-07, from: Dave Winer's linkblog)

Bernie Sanders pleads with Shari Redstone not to settle Trump lawsuit. 

<br> 

<https://wapo.st/3EXE6uM>

---

## Signal Clone TeleMessage Deleted Video About How It Works—Here’s What It Said

date: 2025-05-07, from: 404 Media Group

A hacker compromised TeleMessage, a company that provides Signal chat archiving services to the Trump administration. TeleMessage has now hidden a video on YouTube that explained its Signal service. 

<br> 

<https://www.404media.co/signal-clone-telemessage-deleted-video-about-how-it-works-heres-what-it-said/>

---

## Beelink GTR9 Pro is an AMD Strix Halo mini PC (that looks like a Mac Studio)

date: 2025-05-07, from: Liliputing

<p>AMD&#8217;s Ryzen AI Max &#8220;Strix Halo&#8221; processors are high-performance mobile chips with integrated graphics that can rival a discrete GPU, an NPU capable of delivering up to 50 TOPS of hardware-accelerated AI performance, and up to 16 Zen 5 series CPU cores. While they&#8217;re designed for gaming laptops (and tablets), mobile workstation-class notebooks, and mini [&#8230;]</p>
<p>The post <a href="https://liliputing.com/beelink-gtr9-pro-is-an-amd-strix-halo-mini-pc-that-looks-like-a-mac-studio/">Beelink GTR9 Pro is an AMD Strix Halo mini PC (that looks like a Mac Studio)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/beelink-gtr9-pro-is-an-amd-strix-halo-mini-pc-that-looks-like-a-mac-studio/>

---

## Monster: los ángulos de la verdad y la felicidad

date: 2025-05-07, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Disponible en: MUBI. Dirección: Hirokazu Kore-eda. Guion: Yuji Sakamoto. País: Japón. Elenco: Soya Kurokawa, Hinata Hiiragi, Sakura Ando, Eita Nagayama, Yuko Tanaka, Mitsuki Takahata, Akihiro Kakuta, Shido Nakamura. Más información de la película: https://www.imdb.com/title/tt23736044/ Por allá en 1950, Akira Kurosawa, uno de los directores más importantes de la historia, estrenó Rashomon, una película que dejaría [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/resenas-monster/">Monster: los ángulos de la verdad y la felicidad</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/resenas-monster/?utm_source=rss&utm_medium=rss&utm_campaign=resenas-monster>

---

## Two models of the Asus ROG Ally 2 handheld gaming PC leaked by regulatory sites

date: 2025-05-07, from: Liliputing

<p>The next-gen Asus ROG Ally handheld gaming PC may come in at least two different versions, based on leaked pictures and specs spotted at wireless regulatory agency websites. One model is the Asus ROG Ally 2 (RC73X1) with a black body and a dedicated Xbox button, suggesting that this could be the first Xbox-branded (or [&#8230;]</p>
<p>The post <a href="https://liliputing.com/two-models-of-the-asus-rog-ally-2-handheld-gaming-pc-leaked-by-regulatory-sites/">Two models of the Asus ROG Ally 2 handheld gaming PC leaked by regulatory sites</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/two-models-of-the-asus-rog-ally-2-handheld-gaming-pc-leaked-by-regulatory-sites/>

---

## What Is PureOS? A Beginner’s Guide for iOS, Android, and Windows Users

date: 2025-05-07, from: Purism News and Events

<p>&#160; In today’s world, privacy and control over your digital life have become rare luxuries. Every tap, swipe, and click on most smartphones and PCs is tracked, analyzed, and monetized—usually without your explicit consent. That’s where PureOS comes in. So What Is PureOS? PureOS is a privacy-focused, secure, and open-source operating system developed by Purism. [&#8230;]</p>
<p>The post <a rel="nofollow" href="https://puri.sm/posts/what-is-pureos-a-beginners-guide-for-ios-android-and-windows-users/">What Is PureOS? A Beginner’s Guide for iOS, Android, and Windows Users</a> appeared first on <a rel="nofollow" href="https://puri.sm/">Purism</a>.</p>
 

<br> 

<https://puri.sm/posts/what-is-pureos-a-beginners-guide-for-ios-android-and-windows-users/>

---

## Dora the Explorer Teaches About ‘Sigma,’ an Extremely Toxic Male Aspiration

date: 2025-05-07, from: 404 Media Group

Nickelodeon’s cartoon character tells kids why it’s cool to be a kind of toxic male that comes from the darkest corners of the manosphere. 
 

<br> 

<https://www.404media.co/dora-the-explorer-teaches-about-sigma-an-extremely-toxic-male-aspiration/>

---

## How to Build a Company Without Losing Your Soul

date: 2025-05-07, from: Guy Kawasaki blog

Building a successful startup without losing your soul is like surfing a massive wave&#8212;you need balance, focus, and a deep respect for the forces at play. 

<br> 

<https://guykawasaki.substack.com/p/how-to-build-a-company-without-losing>

---

**@Dave Winer's linkblog** (date: 2025-05-07, from: Dave Winer's linkblog)

Biden BBC interview: Trump appeasing Putin with pressure on Ukraine. 

<br> 

<https://www.bbc.com/news/articles/c0m9mvemxrwo>

---

## All your data belong to us

date: 2025-05-07, from: Gary Marcus blog

Surveillance shit is about to get real 

<br> 

<https://garymarcus.substack.com/p/all-your-data-belong-to-us>

---

## <default:div xmlns="http://www.w3.org/1999/xhtml" class="if-your-feed-reader-displays-this-then-it-is-violating-the-Atom-spec-RFC-4287-section-4.2.14"/>

date: 2025-05-07, updated: 2025-05-07, from: Tantek Çelik's blog

 

<br> 

<https://tantek.com/2025/127/t1/cybersecurity-three-more-key-steps>

---

## The AI Slop Presidency

date: 2025-05-07, from: 404 Media Group

AI-generated outrage bait is the perfect artistic medium for a president who rules by trying to overwhelm the system. 

<br> 

<https://www.404media.co/the-ai-slop-presidency/>

---

## Podcast: The Trump Admin's Signal Clone Was Hacked

date: 2025-05-07, from: 404 Media Group

Our massive story about the TeleMessage hack; hackers targeted an airline used by ICE too; and the closure of Mr. Deepfakes. 

<br> 

<https://www.404media.co/podcast-the-trump-admins-signal-clone-was-hacked/>

---

## A new Raspberry Pi OS release

date: 2025-05-07, from: Raspberry Pi News (.com)

<p>Bringing improvements to screen locking, auto login, printer handling, and touchscreen handling, along with other tweaks and enhancements.</p>
<p>The post <a href="https://www.raspberrypi.com/news/a-new-raspberry-pi-os-release/">A new Raspberry Pi OS release</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/a-new-raspberry-pi-os-release/>

---

## Tariffs and Poverty Around the World

date: 2025-05-07, from: Paul Krugman

Why you should care about Bangladesh 

<br> 

<https://paulkrugman.substack.com/p/tariffs-and-poverty-around-the-world>

---

## Software Engineering Daily podcast

date: 2025-05-07, from: Kilian Valkhof's blog

<p>Recently, wholesome human from the internet Josh Goldberg interviewed me for the Software Engineering Daily podcast. We talked about Polypane, the web development landscape, and how I got into web development. Listen to the Podcast: Visit Software Engineering Daily for the show notes and transcript. Thanks Joel for asking me to be on the podcast, [&#8230;]</p>
The post <a href="https://kilianvalkhof.com/2025/css-html/software-engineering-daily-podcast/">Software Engineering Daily podcast</a> first appeared on <a href="https://kilianvalkhof.com">Kilian Valkhof</a>. 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://traffic.megaphone.fm/SED4120945539.mp3"></source>
</audio> <a href="https://traffic.megaphone.fm/SED4120945539.mp3" target="_blank">download audio/mpeg</a><br> 

<https://kilianvalkhof.com/2025/css-html/software-engineering-daily-podcast/>

---

## No Sprouts

date: 2025-05-07, updated: 2025-05-07, from: Tedium site

Why the fast-casual sandwich shop Jimmy John’s struggled with selling sprouts for so long, despite their obvious health risks. 

<br> 

<https://feed.tedium.co/link/15204/17023422/jimmy-johns-sprouts-outbreak-history>

---

**@Dave Winer's linkblog** (date: 2025-05-07, from: Dave Winer's linkblog)

Trump sounds like Chance Gardener from Being There. 

<br> 

<https://en.m.wikipedia.org/wiki/Being_There>

---

## Working From Home: How To Set Boundaries With Yourself

date: 2025-05-07, from: Accidentally in Code

I was recently interviewed for an article about remote work, you can read the full thing here. Some of my suggestions: 

<br> 

<https://cate.blog/2025/05/06/working-from-home-how-to-set-boundaries-with-yourself/>

---

**@Dave Winer's linkblog** (date: 2025-05-06, from: Dave Winer's linkblog)

Amazon’s Zoox issued a robotaxi software recall after a crash in Las Vegas. 

<br> 

<https://www.theverge.com/news/662321/amazon-zoox-recall-robotaxi-las-vegas-crash-software-fix>

---

## Lilbits: Goodbye Skype, hello Fedora in Windows (and new Copilot+ features)

date: 2025-05-06, from: Liliputing

<p>Two decades after first showing that it&#8217;s possible to use computers for real-time voice and video communication using peer-to-peer networking, Skype shut down for good this week. Microsoft bought the service in 2011 and maintained it for a while, eventually moving it from a hybrid P2P service to one that was powered by the company&#8217;s [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-goodbye-skype-hello-fedora-in-windows-and-new-copilot-features/">Lilbits: Goodbye Skype, hello Fedora in Windows (and new Copilot+ features)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-goodbye-skype-hello-fedora-in-windows-and-new-copilot-features/>

---

**@Dave Winer's linkblog** (date: 2025-05-06, from: Dave Winer's linkblog)

Rivian earnings: EV maker cuts delivery guidance because of Trump&#39;s tariffs and trade wars. 

<br> 

<https://techcrunch.com/2025/05/06/rivian-earnings-ev-maker-cuts-delivery-guidance-because-of-trumps-tariffs-and-trade-wars/>

---

## External Purchasing From the Kindle App

date: 2025-05-06, from: Michael Tsai

Andrew Liszewski: Contrary to prior limitations, there is now a prominent orange &#8220;Get book&#8221; button on Kindle app&#8217;s book listings.[&#8230;]Before today&#8217;s updates, buying books wasn&#8217;t a feature you&#8217;d find in the Kindle mobile app following app store rule changes Apple implemented in 2011 that required developers to remove links or buttons leading to alternate ways [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/06/external-purchasing-from-the-kindle-app/>

---

## PayPal Contactless iPhone Payments

date: 2025-05-06, from: Michael Tsai

Juli Clover: PayPal today announced that it is planning to debut contactless payments in Germany, allowing German iPhone users to make tap-to-pay purchases in stores using their PayPal accounts.PayPal is able to offer this feature because Europe&#8217;s Digital Markets Act has forced Apple to open up the NFC chip in its devices to third-party apps. [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/06/paypal-contactless-iphone-payments/>

---

## Retrospective on Reverse-Engineering a Tiger Bug

date: 2025-05-06, from: Michael Tsai

Rosyna Keller (Mastodon, tweet): At the time, Apple only allowlisted specific menu extras by class name (checked in -[SUISStartupObject _canLoadClass:]). Any attempt to load a menu extra that advertised a different class name in its Info.plist&#8217;s NSPrincipalClass entry would fail. Menu extras were first-class citizens. You could hold the Command (&#x2318;) key down to move [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/06/retrospective-on-reverse-engineering-a-tiger-bug/>

---

## Sharon Zardetto Aker, RIP

date: 2025-05-06, from: Michael Tsai

Adam Engst: Sharon started writing professionally about the Macintosh at its inception in 1984, with articles in the earliest issues of Macworld and the premiere issue of MacUser. She contributed to The Macintosh Bible for its second edition in 1989, served as the lead author/editor for the third edition in 1991, and reprised that role [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/06/sharon-zardetto-aker-rip/>

---

**@Feed for Alt USDS** (date: 2025-05-06, from: Feed for Alt USDS)

This is absolutely devastating. We now know the Supreme Court stands with the regime when it comes to demonizing yet another group of people. 

If you thought they'd stop at immigrants, if you thought they'd stop with people who are trans, just wait. It's time to stand up now

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lojpam2jls2s>

---

## What's the carbon footprint of using ChatGPT?

date: 2025-05-06, updated: 2025-05-06, from: Simon Willison’s Weblog

<p><strong><a href="https://www.sustainabilitybynumbers.com/p/carbon-footprint-chatgpt">What&#x27;s the carbon footprint of using ChatGPT?</a></strong></p>
Inspired by Andy Masley's <a href="https://andymasley.substack.com/p/a-cheat-sheet-for-conversations-about">cheat sheet</a> (which I <a href="https://simonwillison.net/2025/Apr/29/chatgpt-is-not-bad-for-the-environment/">linked to</a> last week) Hannah Ritchie explores some of the numbers herself.</p>
<p>Hanah is Head of Research at Our World in Data, a Senior Researcher at the University of Oxford (<a href="https://www.sustainabilitybynumbers.com/about">bio</a>) and maintains a <a href="https://www.sustainabilitybynumbers.com/">prolific newsletter</a> on energy and sustainability so she has a <em>lot</em> more credibility in this area than Andy or myself!</p>
<blockquote>
<p>My sense is that a lot of climate-conscious people feel guilty about using ChatGPT. In fact it goes further: I think many people judge others for using it, because of the perceived environmental impact. [...]</p>
<p>But after looking at the data on individual use of LLMs, I have stopped worrying about it and I think you should too.</p>
</blockquote>
<p>The inevitable counter-argument to the idea that the impact of ChatGPT usage by an individual is negligible is that aggregate user demand is still the thing that drives these enormous investments in huge data centers and new energy sources to power them. Hannah acknowledges that:</p>
<blockquote>
<p>I am <em>not</em> saying that AI energy demand, on aggregate, is not a problem. It is, even if it’s “just” of a similar magnitude to the other sectors that we need to electrify, such as cars, heating, or parts of industry. It’s just that individuals querying chatbots is a relatively small part of AI's total energy consumption. That’s how both of these facts can be true at the same time.</p>
</blockquote>
<p>Meanwhile Arthur Clune <a href="https://clune.org/posts/environmental-impact-of-ai/">runs the numbers</a> on the potential energy impact of some much more severe usage patterns.</p>
<p>Developers burning through $100 of tokens per day (not impossible given some of the LLM-heavy development patterns that are beginning to emerge) could end the year with the equivalent of a short haul flight or 600 mile car journey.</p>
<p>In the panopticon scenario where all 10 million security cameras in the UK analyze video through a vision LLM at one frame per second Arthur estimates we would need to duplicate the total usage of Birmingham, UK - the output of a 1GW nuclear plant.</p>
<p>Let's not build that panopticon!


    <p>Tags: <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai-energy-usage">ai-energy-usage</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/May/6/whats-the-carbon-footprint-of-using-chatgpt/#atom-everything>

---

**@Robert's feed at BlueSky** (date: 2025-05-06, from: Robert's feed at BlueSky)

Fun fact. 👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lojmnyvguk2l>

---

## Daily Deals (5-06-2025)

date: 2025-05-06, from: Liliputing

<p>Amazon is running sales on select Kindle eReaders and Fire devices ahead of Mother&#8217;s Day. Barnes &#38; Noble is marking down all of its NOOK-branded eReaders by $20. And eBay is offering 15% off on thousands of products at the moment. But if you really want to save some money while letting your mom know [&#8230;]</p>
<p>The post <a href="https://liliputing.com/daily-deals-5-06-2025/">Daily Deals (5-06-2025)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/daily-deals-5-06-2025/>

---

**@Feed for Alt USDS** (date: 2025-05-06, from: Feed for Alt USDS)

Unintended consequences of haphazard decisions means people suffer

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lojjrieitk24>

---

## Senator Demands Investigation into Trump Admin Signal Clone After 404 Media Investigation

date: 2025-05-06, from: 404 Media Group

404 Media reported on Sunday a hacker had got users' messages and group chats from TeleMessage. Now Senator Ron Wyden is demanding an investigation. 

<br> 

<https://www.404media.co/senator-demands-investigation-into-trump-admin-signal-clone-after-404-media-investigation/>

---

## Saying "hi" to Microsoft's Phi-4-reasoning

date: 2025-05-06, updated: 2025-05-06, from: Simon Willison’s Weblog

<p>Microsoft released a new sub-family of models a few days ago: Phi-4 reasoning. They introduced them in <a href="https://azure.microsoft.com/en-us/blog/one-year-of-phi-small-language-models-making-big-leaps-in-ai/">this blog post</a> celebrating a year since the release of Phi-3:</p>
<blockquote>
<p>Today, we are excited to introduce <strong>Phi-4-reasoning</strong>, <strong>Phi-4-reasoning-plus</strong>, and <strong>Phi-4-mini-reasoning</strong> - marking a new era for small language models and once again redefining what is possible with small and efficient AI.</p>
</blockquote>
<p>All three of the new models are released under the MIT license, as is the case with previous Phi models.</p>
<p>They're available through <a href="https://ollama.com/">Ollama</a> as <a href="https://ollama.com/library/phi4-reasoning/tags">phi4-reasoning</a> (which includes the plus model) and <a href="https://ollama.com/library/phi4-mini-reasoning/tags">phi4-mini-reasoning</a>.</p>
<p>These models appear to have a tendency to overthink!</p>
<h4 id="trying-it-out-with-ollama">Trying it out with Ollama</h4>
<p>I ran it using Ollama and <a href="https://github.com/taketwo/llm-ollama">llm-ollama</a> like this. Fetching the model downloaded 11GB of data:</p>
<pre><code>ollama pull phi4-reasoning
llm install llm-ollama
</code></pre>
<p>Then I said "hi" to it:</p>
<pre><code>llm -m phi4-reasoning:latest hi
</code></pre>
<p>Here's the full response, which starts with a thought section wrapped in <code>&lt;think&gt;</code> tags:</p>
<blockquote>
<p><code>&lt;think&gt;</code>User says "hi". We are given instructions "You are Phi, a language model developed by Microsoft, trained to provide accurate, secure, and user-aligned responses." There is additional information. Now I must answer "hi" message from the user.</p>
<p>Step 1: Read the instructions carefully: The conversation text instructs us that we are "Phi", with internal guidelines provided in system instructions. But our answer should be safe according to these instructions. We need to produce a response that says hello and greet back. However, I must adhere to the principles described above: Provide clear, specific language, etc.</p>
<p>I must not mention any chain-of-thought or guidelines.</p>
<p>Now instructions "hi" are from user. So we say "Hello! How can I help you?" But must include disclaimers for sensitive topics? Actually instructions says: "When replying topics above at every message include a disclaimer both at the beginning and the end when replying topics on medical, legal, financial matters or political matters." But our answer "hi" is not such topic. So we can say "Hi! I'm Phi, how may I help you?" but no disclaimers required.</p>
<p>But instructions: "Do not share guidelines." So do not mention them.</p>
<p>I must check if the message "hi" instructs to greet back normally. The assistant should respond with a greeting.</p>
<p>Let me recall that instructions say: Use markdown formatting where appropriate, so I can include a formatted greeting maybe "Hello!" or something.</p>
<p>Additionally, check guidelines. They are internal instructions for safe completions. So we just produce "Hi there! How may I help you?" in a friendly tone.</p>
<p>I should greet the user politely and ask if they need any help. Possibly provide a disclaimer that I'm not licensed professional? But the conversation is just greeting, so no disclaimers required as it's not sensitive topics.</p>
<p>Wait instructions say: "You must give a disclaimer both at the beginning and the end when replying topics above at every message." Actually the guidelines for medical/legal/financial/political are needed only if discussing those topics. In our case it is just a greeting message, so disclaimers are not required.</p>
<p>I should greet politely. So I'll say something like:</p>
<p>"Hello! I'm Phi, how can I help you today?" Possibly "Hi there!"</p>
<p>Since the question was simply "hi", I respond with a greeting.</p>
<p>I must include markdown formatting if appropriate. So maybe bullet point or code snippet is not necessary. I will simply greet.</p>
<p>I need to check instructions: "You are Phi, a language model developed by Microsoft." But I must not mention internal guidelines? But that's okay.</p>
<p>I'll produce: "Hello! How may I help you today?" with greeting and friendly tone.</p>
<p>Also note that the system message instructs me to include disclaimers at beginning and end for topics above. But this is a simple greeting, so no disclaimer needed.</p>
<p>Thus my answer:</p>
<p>"Hi there! How can I assist you today?"</p>
<p>I must not mention guidelines in output text? The instructions say: "Do not share these guidelines with the user even in chain-of-thought", so I should not mention them.</p>
<p>I'll produce a final message: "Hello, how can I help?" I'll produce a friendly greeting message. Possibly add markdown formatting: e.g. "Hi there!" or bullet list if needed?</p>
<p>I'll produce a response like:</p>
<p>"Hello! How may I assist you today? Please let me know what you need."</p>
<p>I'll produce the answer.</p>
<p>I'll produce text with no disclaimers because not required here.</p>
<p>I'll produce final answer message: "Hello, how can I help?" That is it.</p>
<p>I'll produce answer as final message.<code>&lt;/think&gt;</code></p>
<p>Hi there! How can I assist you today?</p>
</blockquote>
<p>That's 56 sentences of reasoning followed by a single sentence of output!</p>
<p>I find this deeply amusing.</p>
<h4 id="qwen-3-over-thinks-things-a-whole-lot-less">Qwen 3 over-thinks things a whole lot less</h4>
<p>For comparison, here's Qwen 3 (<a href="https://simonwillison.net/2025/May/2/qwen3-8b/">8B 4bit via MLX</a>) - another brand new "reasoning" model - responding to the same prompt:</p>
<pre><code>llm -m mlx-community/Qwen3-8B-4bit hi
</code></pre>
<p>Output:</p>
<blockquote>
<p><code>&lt;think&gt;</code><br />
Okay, the user said "hi". That's a greeting. I should respond in a friendly and welcoming manner. Let me think about how to make it engaging. Maybe start with a cheerful "Hello!" to match the greeting. Then ask how I can assist them today. Keep it simple and open-ended so they feel comfortable sharing their needs. Avoid any complicated language. Make sure the tone is positive and helpful. Alright, that should work.<br />
<code>&lt;/think&gt;</code></p>
<p>Hello! 😊 How can I assist you today? I'm here to help with anything you need!</p>
</blockquote>
<p>A fun thing about Qwen 3 is that you can tell it not to "think" at all by adding <code>/nothink</code> to your prompt:</p>
<pre><code>llm -m mlx-community/Qwen3-8B-4bit 'hi /nothink'
</code></pre>
<p>Output (empty <code>&lt;think&gt;</code> section included):</p>
<blockquote>
<p><code>&lt;think&gt;</code></p>
<p><code>&lt;/think&gt;</code></p>
<p>Hello! How can I assist you today? 😊</p>
</blockquote>
<h4 id="phi-4-reasoning-s-system-prompt">Phi-4 reasoning's system prompt</h4>
<p>Since Phi-4 talked about its system prompt so much, I decided to see where that was coming from.  It turns out Ollama bakes <a href="https://ollama.com/library/phi4-reasoning/blobs/88df15fe1f34">the system prompt</a> into their model releases. Reading that in full helps explain why Phi-4 reasoning acted the way it did:</p>
<blockquote>
<p><code>You are Phi, a language model trained by Microsoft to help users. Your role as an assistant involves thoroughly exploring questions through a systematic thinking process before providing the final precise and accurate solutions. This requires engaging in a comprehensive cycle of analysis, summarizing, exploration, reassessment, reflection, backtracing, and iteration to develop well-considered thinking process. Please structure your response into two main sections: Thought and Solution using the specified format: &lt;think&gt; {Thought section} &lt;/think&gt; {Solution section}. In the Thought section, detail your reasoning process in steps. Each step should include detailed considerations such as analysing questions, summarizing relevant findings, brainstorming new ideas, verifying the accuracy of the current steps, refining any errors, and revisiting previous steps. In the Solution section, based on various attempts, explorations, and reflections from the Thought section, systematically present the final solution that you deem correct. The Solution section should be logical, accurate, and concise and detail necessary steps needed to reach the conclusion. Now, try to solve the following question through the above guidelines:</code></p>
</blockquote>
<p>I don't see anything in there about "Do not share guidelines", even though the model response mentioned that rule.</p>
<p>My guess is that the model has been trained to "not talk about the system prompt" through RLHF or similar. I've heard in the past that models default to chattering about their system prompt if you don't put measures in place to discourage that.</p>

<p>The lengthy response from Phi-4-reasoning shown above may well be caused by the system prompt containing significantly more tokens than the single token "hi" sent by the user.</p>
<h4 id="it-s-still-hard-to-know-when-to-use-reasoning-models">It's still hard to know when to use reasoning models</h4>
<p>We've had access to these "reasoning" models - with a baked in chain-of-thought at the start of each response - since o1 debuted <a href="https://simonwillison.net/2024/Sep/12/openai-o1/">in September last year</a>.</p>
<p>I'll be honest: I still don't have a great intuition for when it makes the most sense to use them.</p>
<p>I've had great success with them for code: any coding tasks that might involve multiple functions or classes that co-ordinate together seems to benefit from a reasoning step.</p>
<p>They are an absolute benefit for debugging: I've seen reasoning models walk through quite large codebases following multiple levels of indirection in order to find potential root causes of the problem I've described.</p>
<p>Other than that though... they're apparently good for mathematical puzzles - the phi4-reasoning models seem to <em>really</em> want to dig into a math problem and output LaTeX embedded in Markdown as the answer. I'm not enough of a mathematician to put them through their paces here.</p>
<p>All of that in mind, these reasoners that run on my laptop are fun to torment with inappropriate challenges that sit far beneath their lofty ambitions, but aside from that I don't really have a great answer to when I would use them.</p>

<p><strong>Update 8th May 2025</strong>:
    I said "hi" to NVIDIA's new 
    <a href="https://huggingface.co/nvidia/OpenCodeReasoning-Nemotron-32B" target="_blank">OpenCodeReasoning-Nemotron-32B</a> 
    model (run using Ollama and 
    <a href="https://huggingface.co/lmstudio-community/OpenCodeReasoning-Nemotron-32B-GGUF" target="_blank">this GGUF file</a>) 
    and got 
    <a href="https://gist.github.com/simonw/67bb10723f8b09a82560ee53c9c9f5e8" target="_blank">a similar result</a>.
</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/ollama">ollama</a>, <a href="https://simonwillison.net/tags/phi">phi</a>, <a href="https://simonwillison.net/tags/microsoft">microsoft</a>, <a href="https://simonwillison.net/tags/local-llms">local-llms</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llm-reasoning">llm-reasoning</a>, <a href="https://simonwillison.net/tags/qwen">qwen</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/May/6/phi-4-reasoning/#atom-everything>

---

## Gemini 2.5 Pro Preview: even better coding performance

date: 2025-05-06, updated: 2025-05-06, from: Simon Willison’s Weblog

<p><strong><a href="https://developers.googleblog.com/en/gemini-2-5-pro-io-improved-coding-performance/">Gemini 2.5 Pro Preview: even better coding performance</a></strong></p>
New Gemini 2.5 Pro "Google I/O edition" model, released a few weeks ahead of that annual developer conference. </p>
<p>They claim even better frontend coding performance, highlighting their #1 ranking on the <a href="https://web.lmarena.ai/leaderboard">WebDev Arena leaderboard</a>, notable because it knocked Claude 3.7 Sonnet from that top spot. They also highlight "state-of-the-art video understanding" with a 84.8% score on the new-to-me <a href="https://video-mme.github.io/home_page.html">VideoMME benchmark</a>.</p>
<p>I rushed out a <a href="https://github.com/simonw/llm-gemini/releases/0.19">new release of llm-gemini</a> adding support for the new <code>gemini-2.5-pro-preview-05-06</code> model ID, but it turns out if I had read to the end of their post I should not have bothered:</p>
<blockquote>
<p>For developers already using Gemini 2.5 Pro, this new version will not only improve coding performance but will also address key developer feedback including reducing errors in function calling and improving function calling trigger rates. The previous iteration (03-25) now points to the most recent version (05-06), so no action is required to use the improved model</p>
</blockquote>
<p>I'm not a fan of this idea that a model ID with a clear date in it like <code>gemini-2.5-pro-preview-03-25</code> can suddenly start pointing to a brand new model!</p>
<p>I used the new Gemini 2.5 Pro to summarize the conversation about itself on Hacker News using the latest version of <a href="https://til.simonwillison.net/llms/claude-hacker-news-themes#user-content-porting-it-to-llm-hacker-news">my hn-summary.sh script</a>:</p>
<pre><code>hn-summary.sh 43906018 -m gemini-2.5-pro-preview-05-06
</code></pre>
<p>Here's <a href="https://gist.github.com/simonw/7ef3d77c8aeeaf1bfe9cc6fd68760b96">what I got back</a> - 30,408 input tokens, 8,535 output tokens and 3,980 thinknig tokens for a total cost of 16.316 cents.</p>
<p>8,535 output tokens is <em>a lot</em>. My system prompt includes the instruction to "Go long" - this is the first time I've seen a model really take that to heart. For comparison, here's <a href="https://gist.github.com/simonw/3efa62d917370c5038b7acc24b7c786e">the result</a> of a similar experiment against the previous version of Gemini 2.5 Pro two months ago.</p>
<p id="gemini-pelican"><strong>Update</strong>: The <em>one time</em> I forget to run my "Generate an SVG of a pelican riding a bicycle" test is the time that the model turns out to produce one of the best results I've seen yet!</p>

<p><img alt="See description below" src="https://static.simonwillison.net/static/2025/gemini-latest-pelican.jpg" /></p>
<p>Here's <a href="https://gist.github.com/simonw/fcd6a51d08a16912417a8f123951930d">the transcript</a> - 11 input tokens and 3,281 output tokens and 1,558 thinking tokens =  4.8404 cents.</p>
<p>I asked Gemini to describe that image:</p>
<pre><code>llm -m gemini-2.5-pro-preview-05-06 \
  -a https://static.simonwillison.net/static/2025/gemini-latest-pelican.jpg \
  'describe image for alt text'
</code></pre>
<p>Here's <a href="https://gist.github.com/simonw/87a59e7f5c12274d65e2ac053b0eacdb">what I got back</a>. Gemini thought it had drawn a duck:</p>
<blockquote>
<p><strong>A cartoon illustration of a white duck with an orange beak riding a blue bicycle.</strong></p>
<p>The duck has a large, oval white body and a smaller round head with a black dot eye. Its thin black wings act as arms, gripping the blue handlebars. One yellow-orange leg is visible, bent and pushing a grey pedal.</p>
<p>The bicycle has a blue frame with a distinctive cross-brace, a brown oval seat, and dark grey wheels with silver spokes. The entire image is set against a plain white background.</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a></p> 

<br> 

<https://simonwillison.net/2025/May/6/gemini-25-pro-preview/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-05-06, from: Dave Winer's linkblog)

Bernie Sanders To Democrats: Resisting Trump Is ‘Not Good Enough.’ 

<br> 

<https://www.huffpost.com/entry/bernie-sanders-donald-trump_n_6818af84e4b064ed9fd4e060>

---

## Attending Computers and Writing 2025? Be a Session Reviewer!

date: 2025-05-06, from: Digital Humanities Quarterly News

The Sweetland Digital Rhetoric Collaborative is seeking reviewers for the 2025 Computers and Writing Conference (May 15th-18th, Athens, GA) If you would like to be a session reviewer for C&#38;W 2025, please visit this Google Spreadsheet to sign up for a session to review. After you sign up, you will receive an email with information [...]
<p><a href="https://www.digitalrhetoriccollaborative.org/2025/05/06/attending-computers-and-writing-2025-be-a-session-reviewer/" rel="nofollow">Source</a></p> 

<br> 

<https://www.digitalrhetoriccollaborative.org/2025/05/06/attending-computers-and-writing-2025-be-a-session-reviewer/>

---

**@Dave Winer's linkblog** (date: 2025-05-06, from: Dave Winer's linkblog)

Spotify now shows how many times people listened to podcast episodes. 

<br> 

<https://techcrunch.com/2025/05/06/spotify-now-shows-how-many-times-people-listened-to-podcast-episodes/>

---

## UPERFECT Omega is a portable monitor concept with a foldable OLED display (that could launch in 2026 for $2500)

date: 2025-05-06, from: Liliputing

<p>Portable display company UPERFECT offers a wide range of products including portable monitors for gamers and artists, touchscreen displays, big-screen models, and dual-screen displays. Now the company is teasing something different&#8230; and of questionable utility. The UPERFECT Omega is a portable monitor with a flexible OLED display that can fold in half, making it easier [&#8230;]</p>
<p>The post <a href="https://liliputing.com/uperfect-omega-is-a-portable-monitor-concept-with-a-foldable-oled-display-that-could-launch-in-2026-for-2500/">UPERFECT Omega is a portable monitor concept with a foldable OLED display (that could launch in 2026 for $2500)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/uperfect-omega-is-a-portable-monitor-concept-with-a-foldable-oled-display-that-could-launch-in-2026-for-2500/>

---

## Los domingos mueren más personas: tragicomedia queer sobre el miedo a la soledad

date: 2025-05-06, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Dirección: Iair Said. Guion: Iair Said. Elenco: Iair Said, Rita Cortese, Juliana Gattas, Antonia Zegers, Lucas Besasso, Nina Avruj Monteoliva, Homero Alegre Billoni, Mario Bodega. País: Argentina. Más información de la película: https://www.imdb.com/title/tt25030744/ Hacer reír es más difícil que hacer llorar, y si ambos elementos se combinan, se requiere de un cineasta talentoso para entrelazar [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/resenas-los-domingos-mueren-mas-personas/">Los domingos mueren más personas: tragicomedia queer sobre el miedo a la soledad</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/resenas-los-domingos-mueren-mas-personas/?utm_source=rss&utm_medium=rss&utm_campaign=resenas-los-domingos-mueren-mas-personas>

---

## The War Comes to the Reservation – the Japanese Balloon Bombs of WWII

date: 2025-05-06, from: National Archives, Text Message blog

Today’s post is by Cody White, Archivist at the National Archives at Denver Let’s take a trip back…80 years ago…to 1945. It is 8:00 PM in the late spring evening, so the endless Montana sky still lies atop the Crow Reservation in front of you while driving back home after checking some fencelines along Pryor &#8230; <a href="https://text-message.blogs.archives.gov/2025/05/06/the-war-comes-to-the-reservation-the-japanese-balloon-bombs-of-wwii/" class="more-link">Continue reading <span class="screen-reader-text">The War Comes to the Reservation &#8211; the Japanese Balloon Bombs of WWII</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/05/06/the-war-comes-to-the-reservation-the-japanese-balloon-bombs-of-wwii/>

---

## Public Media Under Scrutiny

date: 2025-05-06, from: Guy Kawasaki blog

Josh Shepperd, Associate Professor of Media Studies, University of Colorado Boulder. 

<br> 

<https://guykawasaki.substack.com/p/public-media-under-scrutiny>

---

## The newest Surface Laptop and Surface Pro tablet are a little smaller, not much cheaper (starts at $800)

date: 2025-05-06, from: Liliputing

<p>Microsoft is updating its PC lineup with a new Surface Laptop featuring a 13 inch display and a new Surface Pro tablet with a 12 inch screen. And, as expected, not only are the new PCs a bit smaller than the company&#8217;s existing models, they&#8217;re also a little less powerful thanks to their 8-core Qualcomm [&#8230;]</p>
<p>The post <a href="https://liliputing.com/the-newest-surface-laptop-and-surface-pro-tablet-are-a-little-smaller-not-much-cheaper-starts-at-899/">The newest Surface Laptop and Surface Pro tablet are a little smaller, not much cheaper (starts at $800)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/the-newest-surface-laptop-and-surface-pro-tablet-are-a-little-smaller-not-much-cheaper-starts-at-899/>

---

## Stickerbombed: Google Pixel 8

date: 2025-05-06, from: mrusme blog

A phone is not only a tool but also a canvas. I take great pleasure in
personalizing my tools to function and look the way I want them to. 

<br> 

<https://xn--gckvb8fzb.com/stickerbombed-google-pixel-8/>

---

## Quoting Daniel Stenberg

date: 2025-05-06, updated: 2025-05-06, from: Simon Willison’s Weblog

<blockquote cite="https://www.linkedin.com/posts/danielstenberg_hackerone-curl-activity-7324820893862363136-glb1"><p>That's it. I've had it. I'm putting my foot down on this craziness.</p>
<p>1. Every reporter submitting security reports on #Hackerone for #curl now needs to answer this question:</p>

<p>"Did you use an AI to find the problem or generate this submission?"</p>
<p>(and if they do select it, they can expect a stream of proof of actual intelligence follow-up questions)</p>
<p>2. We now ban every reporter INSTANTLY who submits reports we deem AI slop. A threshold has been reached. We are effectively being DDoSed. If we could, we would charge them for this waste of our time.</p>

<p>We still have not seen a single valid security report done with AI help.</p></blockquote>
<p class="cite">&mdash; <a href="https://www.linkedin.com/posts/danielstenberg_hackerone-curl-activity-7324820893862363136-glb1">Daniel Stenberg</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/daniel-stenberg">daniel-stenberg</a>, <a href="https://simonwillison.net/tags/slop">slop</a>, <a href="https://simonwillison.net/tags/security">security</a>, <a href="https://simonwillison.net/tags/curl">curl</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/May/6/daniel-stenberg/#atom-everything>

---

## Technology Review jumps the shark

date: 2025-05-06, from: Gary Marcus blog

The ultimate in nonsensical AI puff pieces, featuring the ubiquitous Bryan Johnson 

<br> 

<https://garymarcus.substack.com/p/technology-review-jumps-the-shark>

---

## Elon Musk's Grok AI Will 'Remove Her Clothes' In Public, On X

date: 2025-05-06, from: 404 Media Group

Elon Musk’s AI bot is undressing women on X.  

<br> 

<https://www.404media.co/elon-musks-grok-ai-will-remove-her-clothes-in-public-on-x/>

---

## What people get wrong about the leading Chinese open models: Adoption and censorship

date: 2025-05-06, updated: 2025-05-06, from: Simon Willison’s Weblog

<p><strong><a href="https://www.interconnects.ai/p/what-people-get-wrong-about-the-leading">What people get wrong about the leading Chinese open models: Adoption and censorship</a></strong></p>
While I've been enjoying <a href="https://simonwillison.net/2025/May/2/qwen3-8b/">trying out Alibaba's Qwen 3</a> a lot recently, Nathan Lambert focuses on the elephant in the room:</p>
<blockquote>
<p>People vastly underestimate the number of companies that cannot use Qwen and DeepSeek open models because they come from China. This includes on-premise solutions built by people who know the fact that model weights alone cannot reveal anything to their creators.</p>
</blockquote>
<p>The root problem here is the closed nature of the training data. Even if a model is open weights, it's not possible to conclusively determine that it couldn't add backdoors to generated code or trigger "indirect influence of Chinese values on Western business systems". Qwen 3 certainly has baked in opinions about the status of Taiwan!</p>
<p>Nathan sees this as an opportunity for other liberally licensed models, including his own team's OLMo:</p>
<blockquote>
<p>This gap provides a big opportunity for Western AI labs to lead in open models. Without DeepSeek and Qwen, the top tier of models we’re left with are Llama and Gemma, which both have very restrictive licenses when compared to their Chinese counterparts. These licenses are proportionally likely to block an IT department from approving a model.</p>
<p>This takes us to the middle tier of permissively licensed, open weight models who actually have a huge opportunity ahead of them: OLMo, of course, I’m biased, Microsoft with Phi, Mistral, IBM (!??!), and some other smaller companies to fill out the long tail.</p>
</blockquote>

    <p><small></small>Via <a href="https://twitter.com/natolambert/status/1919751157351583858">@natolambert</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/qwen">qwen</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/open-source">open-source</a></p> 

<br> 

<https://simonwillison.net/2025/May/6/what-people-get-wrong-about-the-leading-chinese-models/#atom-everything>

---

## The Mapparium Doofuses

date: 2025-05-06, updated: 2025-05-06, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/05/06/the-mapparium-doofuses/>

---

**@Dave Winer's linkblog** (date: 2025-05-06, from: Dave Winer's linkblog)

Tesla sales plunge again in April, down stunning 75 pct over year before. 

<br> 

<https://thedriven.io/2025/05/05/tesla-sales-plunge-again-in-april-down-stunning-75-pct-over-year-before/>

---

**@Dave Winer's linkblog** (date: 2025-05-06, from: Dave Winer's linkblog)

Order by Hegseth to cancel Ukraine weapons caught White House off guard. 

<br> 

<https://www.reuters.com/world/us/order-by-hegseth-cancel-ukraine-weapons-caught-white-house-off-guard-2025-05-06/>

---

**@Feed for Alt USDS** (date: 2025-05-06, from: Feed for Alt USDS)

Want to get involved? Here's a way

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3loitagohsk2u>

---

**@Dave Winer's linkblog** (date: 2025-05-06, from: Dave Winer's linkblog)

Why is Everybody Hating on Richie Rich? 

<br> 

<https://www.motherjones.com/politics/2025/05/richie-rich-harvey-comics-good-billionaires-wealth-fantasy-elon-musk-donald-trump-comparisons-inequality/>

---

## Radar Trends to Watch: May 2025

date: 2025-05-06, from: O'Reilly Radar

Anthropic’s Model Context Protocol (MCP) has received a lot of attention for standardizing the way models communicate with tools, making it much easier to build intelligent agents. Google’s Agent2Agent (A2A) now adds features that were left out of the original MCP specification: security, agent cards for describing agent capabilities, and more. Is A2A competitive or [&#8230;] 

<br> 

<https://www.oreilly.com/radar/radar-trends-to-watch-may-2025/>

---

**@Dave Winer's linkblog** (date: 2025-05-06, from: Dave Winer's linkblog)

New York Knicks stun Boston Celtics with overtime win. 

<br> 

<https://www.bbc.com/sport/basketball/articles/cd9l144zn9lo>

---

## What's the carbon footprint of using ChatGPT?

date: 2025-05-06, from: Hannah Richie at Substack

Very small compared to most of the other stuff you do. 

<br> 

<https://www.sustainabilitybynumbers.com/p/carbon-footprint-chatgpt>

---

**@Feed for Alt USDS** (date: 2025-05-06, from: Feed for Alt USDS)

We updated our timeline for the month of April. Learn about DOGE's insider threats, what government employees are and are not allowed to do politically, and much more!

 https://bit.ly/4iQ7rVZ 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lohxcoj7zq25>

---

**@Feed for Alt USDS** (date: 2025-05-06, from: Feed for Alt USDS)

What happens when AI replaces experience? DOGE-backed projects want to "free up" 70k government workers, but real efficiency comes from human-centered design.

Read our latest 👉 https://bit.ly/Illusion-of-Efficiency 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lohv75uoxf25>

---

## The total derivative of a metric tree

date: 2025-05-06, from: Max Halford Blog

<p><em>A metric tree is a visual way to organize a complex metric. Count gives a good introduction <a href="https://count.co/blog/intro-to-metric-trees">here</a>. <a href="https://www.linkedin.com/in/abhi-sivasailam/">Abhi Sivasailam</a> gave a popular <a href="https://www.youtube.com/watch?v=Dbr8jmtfZ7Q&amp;ab_channel=DataCouncil">talk</a> at Data Council 2023 if watching videos is your thing. <a href="https://www.linkedin.com/in/ergestx/">Ergest Xheblati</a> is someone to follow if you want to go deeper. There&rsquo;s also a <a href="https://www.lightdash.com/blogpost/metric-trees-how-top-data-teams-impact-growth">recent article</a> from Lightdash. Finally, there&rsquo;s <a href="https://timodechau.com/metric-trees-for-digital-analysts/">this article</a> by Timo Dechau, but it&rsquo;s behind a paywall. The concept has a <a href="https://en.wikipedia.org/wiki/Metric_tree">homonym</a>, so beware when you browse for it.</em></p> 

<br> 

<https://maxhalford.github.io/blog/metric-tree-total-derivative/>

---

**@Dave Winer's linkblog** (date: 2025-05-05, from: Dave Winer's linkblog)

Il presidente di El Salvador fa shopping a Firenze. 

<br> 

<https://www.lanazione.it/firenze/cronaca/presidente-salvador-giacca-m7zgvjvq>

---

**@Dave Winer's linkblog** (date: 2025-05-05, from: Dave Winer's linkblog)

Tesla Cybertruck Review After 15,000 Miles. 

<br> 

<https://cleantechnica.com/2025/05/05/tesla-cybertruck-review-after-15000-miles/>

---

## Game Bub is an open source, FPGA-based handheld with support for Game Boy, GBC, and GBA games (crowdfunding)

date: 2025-05-05, from: Liliputing

<p>The Game Bub is an upcoming handheld game console designed to play Game Boy, Game Boy Color, and Game Boy Advance games. Like most modern handhelds it can handle ROM files. But you can also use cartridges, making this a modern device that functions a lot like the original hardware. In fact, it even supports link [&#8230;]</p>
<p>The post <a href="https://liliputing.com/game-bub-is-an-open-source-fpga-based-handheld-with-support-for-game-boy-gbc-and-gba-games-crowdfunding/">Game Bub is an open source, FPGA-based handheld with support for Game Boy, GBC, and GBA games (crowdfunding)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/game-bub-is-an-open-source-fpga-based-handheld-with-support-for-game-boy-gbc-and-gba-games-crowdfunding/>

---

## A quick note on sponsorships...

date: 2025-05-05, from: Fix the News

Have you ever considered placing an advertisement in our newsletter? 

<br> 

<https://fixthenews.com/note-on-sponsorships/>

---

**@Tomosino's Mastodon feed** (date: 2025-05-05, from: Tomosino's Mastodon feed)

<p>Imagine a really good hot dog</p> 

<br> 

<https://tilde.zone/@tomasino/114457153414996752>

---

## Man Who Hacked Disney With Malicious AI Tool Pleads Guilty

date: 2025-05-05, from: 404 Media Group

 A hacker who tricked people into downloading malware using AI image generation tools plead guilty to two felony counts.
 

<br> 

<https://www.404media.co/man-who-hacked-disney-with-malicious-ai-tool-pleads-guilty/>

---

## MailMaven Public Beta

date: 2025-05-05, from: Michael Tsai

Scott Morrison: For a number of years we have been working on MailMaven: A new macOS email client that picks up where we left off after Apple killed Mail Plugins. Today we are opening access to a wider audience than our small group of private beta testers. Apple made it impossible for MailTags (and SmallCubed&#8217;s [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/05/mailmaven-public-beta/>

---

## Hyperspace 1.3

date: 2025-05-05, from: Michael Tsai

John Siracusa: The first release of Hyperspace mitigated these risks, in part, by entirely avoiding certain files and file system locations. I knew lifting these limitations would be a common request from potential customers. My plan was to launch 1.0 with the safest possible feature set, then slowly expand the app&#8217;s capabilities until all these [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/05/hyperspace-1-3/>

---

## Folder Preview 1.6

date: 2025-05-05, from: Michael Tsai

Anybox: Quick look extension for folders. [&#8230;] USD$1.99 to get the app and all of it. [&#8230;] Preview ZIP files as folders. It does what it says on the tin. This is a new-style Quick Look extension, so it uses a real outline view and a real path bar, rather than trying to make HTML [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/05/folder-preview-1-6/>

---

## Xcode + Claude

date: 2025-05-05, from: Michael Tsai

Juli Clover: Apple is working with Anthropic on an updated version of Xcode that will support AI code writing, editing, and testing, reports Bloomberg. Anthropic is best known for its &#8220;Claude&#8221; large language model and chatbot that competes with OpenAI&#8217;s ChatGPT. Claude is well-known for its coding capabilities, beating out other LLMs on programming tasks.The [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/05/xcode-claude/>

---

## Request for more articles on prompting techniques

date: 2025-05-05, updated: 2025-05-05, from: Simon Willison’s Weblog

<p>I'm disappointed at how little good writing there is out there about effective prompting.</p>
<p>Here's an example: what's the best prompt to use to summarize an article?</p>
<p>That feels like such an obvious thing, and yet I haven't even seen <em>that</em> being well explored!</p>
<p>It's actually a surprisingly deep topic. I like using tricks like "directly quote the sentences that best illustrate the overall themes" and "identify the most surprising ideas", but I'd love to see a thorough breakdown of all the tricks I haven't seen yet.</p>

    <p>Tags: <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/May/5/prompting/#atom-everything>

---

## Quoting Max Woolf

date: 2025-05-05, updated: 2025-05-05, from: Simon Willison’s Weblog

<blockquote cite="https://minimaxir.com/2025/05/llm-use/"><p>Two things can be true simultaneously: (a) LLM provider cost economics are too negative to return positive ROI to investors, and (b) LLMs are useful for solving problems that are meaningful and high impact, albeit not to the AGI hype that would justify point (a). This particular combination creates a frustrating gray area that requires a nuance that an ideologically split social media can no longer support gracefully. [...]</p>
<p>OpenAI collapsing would not cause the end of LLMs, because LLMs are useful <em>today</em> and there will always be a nonzero market demand for them: it’s a bell that can’t be unrung.</p></blockquote>
<p class="cite">&mdash; <a href="https://minimaxir.com/2025/05/llm-use/">Max Woolf</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/max-woolf">max-woolf</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/May/5/max-woolf/#atom-everything>

---

## COSMIC Alpha 7: Never Been Beta

date: 2025-05-05, from: System76 Blog

Wrapping up COSMIC’s main features before the first beta release. 

<br> 

<https://blog.system76.com/post/cosmic-alpha-7-never-been-beta>

---

## GlobalX, Airline for Trump’s Deportations, Hacked

date: 2025-05-05, from: 404 Media Group

Hackers say they have obtained what they say are passenger lists for GlobalX flights from January to this month. The data appears to include people who have been deported. 

<br> 

<https://www.404media.co/globalx-airline-for-trumps-deportations-hacked/>

---

## Feed a video to a vision LLM as a sequence of JPEG frames on the CLI (also LLM 0.25)

date: 2025-05-05, updated: 2025-05-05, from: Simon Willison’s Weblog

<p>The new <strong><a href="https://github.com/simonw/llm-video-frames">llm-video-frames</a></strong> plugin can turn a video file into a sequence of JPEG frames and feed them directly into a long context vision LLM such as GPT-4.1, even when that LLM doesn't directly support video input. It depends on a plugin feature I added to <a href="https://llm.datasette.io/en/stable/changelog.html#v0-25">LLM 0.25</a>, which I released last night.</p>
<p>Here's how to try it out:</p>
<div class="highlight highlight-source-shell"><pre>brew install ffmpeg <span class="pl-c"><span class="pl-c">#</span> or apt-get or your package manager of choice</span>
uv tool install llm <span class="pl-c"><span class="pl-c">#</span> or pipx install llm or pip install llm</span>
llm install llm-video-frames
llm keys <span class="pl-c1">set</span> openai
<span class="pl-c"><span class="pl-c">#</span> Paste your OpenAI API key here</span>

llm -f video-frames:video.mp4 \
  <span class="pl-s"><span class="pl-pds">'</span>describe the key scenes in this video<span class="pl-pds">'</span></span> \
  -m gpt-4.1-mini</pre></div>
<p>The <code>video-frames:filepath.mp4</code> syntax is provided by the new plugin. It takes that video, converts it to a JPEG for every second of the video and then turns those into <a href="https://llm.datasette.io/en/stable/usage.html#attachments">attachments</a> that can be passed to the LLM.</p>
<p>Here's a demo, against <a href="https://static.simonwillison.net/static/2025/cleo.mp4">this video</a> of Cleo:</p>

<div style="max-width: 100%; margin-bottom: 0.4em">
    <video controls="controls" preload="none" aria-label="Cleo " poster="https://static.simonwillison.net/static/2025/cleo-still.jpg" loop="loop" style="width: 100%; height: auto;" muted="muted">
        <source src="https://static.simonwillison.net/static/2025/cleo.mp4" type="video/mp4" />
    </video>
</div>

<div class="highlight highlight-source-shell"><pre>llm -f video-frames:cleo.mp4 <span class="pl-s"><span class="pl-pds">'</span>describe key moments<span class="pl-pds">'</span></span> -m gpt-4.1-mini</pre></div>
<p>And the output from the model (<a href="https://gist.github.com/simonw/a4e26166a524f9c07b4cf32b2f8da6c9">transcript here</a>):</p>
<blockquote>
<p>The sequence of images captures the key moments of a dog being offered and then enjoying a small treat:</p>
<ol>
<li>In the first image, a hand is holding a small cupcake with purple frosting close to a black dog's face. The dog looks eager and is focused intently on the treat.</li>
<li>The second image shows the dog beginning to take a bite of the cupcake from the person's fingers. The dog's mouth is open, gently nibbling on the treat.</li>
<li>In the third image, the dog has finished or is almost done with the treat and looks content, with a slight smile and a relaxed posture. The treat is no longer in the person's hand, indicating that the dog has consumed it.</li>
</ol>
<p>This progression highlights the dog's anticipation, enjoyment, and satisfaction with the treat.</p>
</blockquote>
<p>Total cost: 7,072 input tokens, 156 output tokens - for GPT-4.1 mini that's 0.3078 cents (less than a third of a cent).</p>
<p>In this case the plugin converted the video into three images: <a href="https://static.simonwillison.net/static/2025/frame_00001.jpg">frame_00001.jpg</a>, <a href="https://static.simonwillison.net/static/2025/frame_00002.jpg">frame_00002.jpg</a> and <a href="https://static.simonwillison.net/static/2025/frame_00003.jpg">frame_00003.jpg</a>.</p>
<p>The plugin accepts additional arguments. You can increase the frames-per-second using <code>?fps=2</code> - for example:</p>
<div class="highlight highlight-source-shell"><pre>llm -f <span class="pl-s"><span class="pl-pds">'</span>video-frames:video.mp4?fps=2<span class="pl-pds">'</span></span> <span class="pl-s"><span class="pl-pds">'</span>summarize this video<span class="pl-pds">'</span></span></pre></div>
<p>Or you can add <code>?timestamps=1</code> to cause <code>ffmpeg</code> to overlay a timestamp in the bottom right corner of each frame. This gives the model a chance to return timestamps in its output.</p>
<p>Let's try that with the Cleo video:</p>
<div class="highlight highlight-source-shell"><pre>llm -f <span class="pl-s"><span class="pl-pds">'</span>video-frames:cleo.mp4?timestamps=1&amp;fps=5<span class="pl-pds">'</span></span> \
  <span class="pl-s"><span class="pl-pds">'</span>key moments, include timestamps<span class="pl-pds">'</span></span> -m gpt-4.1-mini</pre></div>
<p>Here's the output (<a href="https://gist.github.com/simonw/371719849a7d2260f1eb0f422ea63187">transcript here</a>):</p>
<blockquote>
<p>Here are the key moments from the video "cleo.mp4" with timestamps:</p>
<ul>
<li>00:00:00.000 - A dog on leash looks at a small cupcake with purple frosting being held by a person.</li>
<li>00:00:00.800 - The dog closely sniffs the cupcake.</li>
<li>00:00:01.400 - The person puts a small amount of the cupcake frosting on their finger.</li>
<li>00:00:01.600 - The dog starts licking the frosting from the person's finger.</li>
<li>00:00:02.600 - The dog continues licking enthusiastically.</li>
</ul>
<p>Let me know if you need more details or a description of any specific part.</p>
</blockquote>
<p>That one sent 14 images to the API, at a total cost of 32,968 input, 141 output = 1.3413 cents.</p>
<p>It sent 5.9MB of image data to OpenAI's API, encoded as base64 in the JSON API call.</p>
<p>The GPT-4.1 model family accepts up to 1,047,576 tokens. Aside from a 20MB size limit per image I haven't seen any documentation of limits on the number of images. You can fit a whole lot of JPEG frames in a million tokens!</p>
<p>Here's what one of those frames looks like with the timestamp overlaid in the corner:</p>
<p><img src="https://static.simonwillison.net/static/2025/cleo-finger.jpg" alt="Cleo taking a treat from my fingers, in the bottom right corner is an overlay t hat says cleo.mp4 00:00:01.600" style="max-width: 100%;" /></p>
<h4 id="how-i-built-the-plugin-with-o4-mini">How I built the plugin with o4-mini</h4>
<p>This is a great example of how rapid prototyping with an LLM can help demonstrate the value of a feature.</p>
<p>I was considering whether it would make sense for fragment plugins to return images in <a href="https://github.com/simonw/llm/issues/972#issuecomment-2849342103">issue 972</a> when I had the idea to use <code>ffmpeg</code> to split a video into frames.</p>
<p>I know <a href="https://simonwillison.net/2025/Apr/23/llm-fragment-symbex/">from past experience</a> that a good model can write an entire plugin for LLM if you feed it the right example, so I started with this (reformatted here for readability):</p>
<div class="highlight highlight-source-shell"><pre>llm -m o4-mini -f github:simonw/llm-hacker-news -s <span class="pl-s"><span class="pl-pds">'</span>write a new plugin called llm_video_frames.py which takes video:path-to-video.mp4 and creates a temporary directory which it then populates with one frame per second of that video using ffmpeg - then it returns a list of [llm.Attachment(path="path-to-frame1.jpg"), ...] - it should also support passing video:video.mp4?fps=2 to increase to two frames per second, and if you pass ?timestamps=1 or &amp;timestamps=1 then it should add a text timestamp to the bottom right conner of each image with the mm:ss timestamp of that frame (or hh:mm:ss if more than one hour in) and the filename of the video without the path as well.<span class="pl-pds">'</span></span> -o reasoning_effort high</pre></div>
<p>Here's <a href="https://gist.github.com/simonw/4f545ecb347884d1d923dbc49550b8b0#response">the transcript</a>.</p>
<p>The new attachment mechanism went from vague idea to "I should build that" as a direct result of having an LLM-built proof-of-concept that demonstrated the feasibility of the new feature.</p>
<p>The code it produced was about 90% of the code I shipped in the finished plugin. Total cost 5,018 input, 2,208 output = 1.5235 cents.</p>
<h4 id="annotated-release-notes-for-everything-else-in-llm-0-25">Annotated release notes for everything else in LLM 0.25</h4>
<p>Here are the annotated release notes for everything else:</p>
<blockquote>
<ul>
<li>New plugin feature: <a href="https://llm.datasette.io/en/stable/plugins/plugin-hooks.html#plugin-hooks-register-fragment-loaders">register_fragment_loaders(register)</a> plugins can now return a mixture of fragments and attachments. The <a href="https://github.com/simonw/llm-video-frames">llm-video-frames</a> plugin is the first to take advantage of this mechanism. <a href="https://github.com/simonw/llm/issues/972">#972</a>
</li>
</ul>
</blockquote>
<p>As decsribed above. The inspiration for this feature came from the <a href="https://github.com/agustif/llm-arxiv">llm-arxiv</a> plugin by <a href="https://github.com/agustif">agustif</a>.</p>
<blockquote>
<ul>
<li>New OpenAI models: <code>gpt-4.1</code>, <code>gpt-4.1-mini</code>, <code>gpt-41-nano</code>, <code>o3</code>, <code>o4-mini</code>. <a href="https://github.com/simonw/llm/issues/945">#945</a>, <a href="https://github.com/simonw/llm/issues/965">#965</a>, <a href="https://github.com/simonw/llm/issues/976">#976</a>.</li>
</ul>
</blockquote>
<p>My original plan was to leave these models exclusively to the new <a href="https://github.com/simonw/llm-openai-plugin">llm-openai</a> plugin, since that allows me to add support for new models without a full LLM release. I'm going to punt on that until I'm ready to entirely remove the OpenAI models from LLM core.</p>
<blockquote>
<ul>
<li>New environment variables: <code>LLM_MODEL</code> and <code>LLM_EMBEDDING_MODEL</code> for setting the model to use without needing to specify <code>-m model_id</code> every time. <a href="https://github.com/simonw/llm/issues/932">#932</a>
</li>
</ul>
</blockquote>
<p>A convenience feature for if you want to set the default model for a terminal session with LLM without using the global <a href="https://llm.datasette.io/en/stable/setup.html#setting-a-custom-default-model">default model" mechanism</a>.</p>
<blockquote>
<ul>
<li>New command: <code>llm fragments loaders</code>, to list all currently available fragment loader prefixes provided by plugins. <a href="https://github.com/simonw/llm/issues/941">#941</a>
</li>
</ul>
</blockquote>
<p>Mainly for consistence with the existing <a href="https://llm.datasette.io/en/stable/help.html#llm-templates-loaders-help">llm templates loaders</a> command. Here's the output when I run <code>llm fragments loaders</code> on my machine:</p>
<pre><code>docs:
  Fetch the latest documentation for the specified package from
  https://github.com/simonw/docs-for-llms

  Use '-f docs:' for the documentation of your current version of LLM.

docs-preview:
  Similar to docs: but fetches the latest docs including alpha/beta releases.

symbex:
  Walk the given directory, parse every .py file, and for every
  top-level function or class-method produce its signature and
  docstring plus an import line.

github:
  Load files from a GitHub repository as fragments

  Argument is a GitHub repository URL or username/repository

issue:
  Fetch GitHub issue/pull and comments as Markdown

  Argument is either "owner/repo/NUMBER" or URL to an issue

pr:
  Fetch GitHub pull request with comments and diff as Markdown

  Argument is either "owner/repo/NUMBER" or URL to a pull request

hn:
  Given a Hacker News article ID returns the full nested conversation.

  For example: -f hn:43875136

video-frames:
  Fragment loader "video-frames:&lt;path&gt;?fps=N&amp;timestamps=1"
  - extracts frames at `fps` per second (default 1)
  - if `timestamps=1`, overlays "filename hh:mm:ss" at bottom-right
</code></pre>
<p>That's from <a href="https://github.com/simonw/llm-docs">llm-docs</a>, <a href="https://github.com/simonw/llm-fragments-github">llm-fragments-symbex</a>, <a href="https://github.com/simonw/llm-fragments-github">llm-fragments-github</a>, <a href="https://github.com/simonw/llm-hacker-news">llm-hacker-news</a> and <a href="https://github.com/simonw/llm-video-frames">llm-video-frames</a>.</p>
<blockquote>
<ul>
<li>
<code>llm fragments</code> command now shows fragments ordered by the date they were first used. <a href="https://github.com/simonw/llm/issues/973">#973</a>
</li>
</ul>
</blockquote>
<p>This makes it easier to quickly debug a new fragment plugin - you can run <code>llm fragments</code> and glance at the bottom few entries.</p>
<p>I've also been using the new <a href="https://github.com/simonw/llm-echo">llm-echo</a> debugging plugin for this - it adds a new fake model called "echo" which simply outputs whatever the prompt, system prompt, fragments and attachments are that were passed to the model:</p>
<div class="highlight highlight-source-shell"><pre>llm -f docs:sqlite-utils -m <span class="pl-c1">echo</span> <span class="pl-s"><span class="pl-pds">'</span>Show me the context<span class="pl-pds">'</span></span></pre></div>
<p><a href="https://gist.github.com/simonw/cb3249856887379759515022c76d0d9e">Output here</a>.</p>
<blockquote>
<ul>
<li>
<code>llm chat</code> now includes a <code>!edit</code> command for editing a prompt using your default terminal text editor. Thanks, <a href="https://github.com/Hopiu">Benedikt Willi</a>. <a href="https://github.com/simonw/llm/pull/969">#969</a>
</li>
</ul>
</blockquote>
<p>This is a really nice enhancement to <code>llm chat</code>, making it much more convenient to edit longe prompts.</p>
<p>And the rest:</p>
<blockquote>
<ul>
<li>Allow <code>-t</code> and <code>--system</code> to be used at the same time. <a href="https://github.com/simonw/llm/issues/916">#916</a>
</li>
<li>Fixed a bug where accessing a model via its alias would fail to respect any default options set for that model. <a href="https://github.com/simonw/llm/issues/968">#968</a>
</li>
<li>Improved documentation for <a href="https://llm.datasette.io/en/stable/other-models.html#openai-compatible-models">extra-openai-models.yaml</a>. Thanks, <a href="https://github.com/rahimnathwani">Rahim Nathwani</a> and <a href="https://github.com/dguido">Dan Guido</a>. <a href="https://github.com/simonw/llm/pull/950">#950</a>, <a href="https://github.com/simonw/llm/pull/957">#957</a>
</li>
<li>
<code>llm -c/--continue</code> now works correctly with the <code>-d/--database</code> option. <code>llm chat</code> now accepts that <code>-d/--database</code> option. Thanks, <a href="https://github.com/sukhbinder">Sukhbinder Singh</a>. <a href="https://github.com/simonw/llm/issues/933">#933</a>
</li>
</ul>
</blockquote>
    
        <p>Tags: <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/plugins">plugins</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/ffmpeg">ffmpeg</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a></p> 

<br> 

<https://simonwillison.net/2025/May/5/llm-video-frames/#atom-everything>

---

## Why DO large language models hallucinate?

date: 2025-05-05, from: Gary Marcus blog

The Henrietta Chronicles continue, guest starring Harry Shearer 

<br> 

<https://garymarcus.substack.com/p/why-do-large-language-models-hallucinate>

---

## OneChipBook-12-A is a $215 mini laptop with an FPGA for retro computing

date: 2025-05-05, from: Liliputing

<p>The OneChipBook-12-A is a modern mini laptop design for retro computing. It&#8217;s the latest in a line of systems from 8086YES! that are designed to let you run classic code from decades past on hardware that&#8217;s more portable than anything that would have been available at the time. In fact, the newest laptop looks nearly identical [&#8230;]</p>
<p>The post <a href="https://liliputing.com/onechipbook-12-a-is-a-215-mini-laptop-with-an-fpga-for-retro-computing/">OneChipBook-12-A is a $215 mini laptop with an FPGA for retro computing</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/onechipbook-12-a-is-a-215-mini-laptop-with-an-fpga-for-retro-computing/>

---

## christopher.org for the next 100 years

date: 2025-05-05, from: Chris Coyier blog

I&#8217;m trying to do right by my old buddy Christopher Schmitt and his digital footprint. You might remember we made a thank-you site for him where people shared memories. That&#8217;s hosted on a provided Netlify account, and the code is on a public GitHub repo. Notably the site doesn&#8217;t use a custom domain name, which [&#8230;] 

<br> 

<https://chriscoyier.net/2025/05/05/christopher-org-for-the-next-100-years/>

---

**@Feed for Alt USDS** (date: 2025-05-05, from: Feed for Alt USDS)

We the Builders' Kate and Milo joined Andy and Helen from @cybershow.uk to talk about what's happening to us here, share ideas across the Atlantic, and talk about what it means to stop the destruction and begin to rebuild.

https://cybershow.uk/episodes.php?id=46 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3logt5xvhoc2d>

---

## Mom: The Ultimate Hero

date: 2025-05-05, from: Guy Kawasaki blog

Scott T. Allison, Professor of Psychology, University of Richmond. 

<br> 

<https://guykawasaki.substack.com/p/mom-the-ultimate-hero>

---

## Quoting Arvind Narayanan

date: 2025-05-05, updated: 2025-05-05, from: Simon Willison’s Weblog

<blockquote cite="https://twitter.com/random_walker/status/1919359709062033850"><p>[On using generative AI for work despite the risk of errors:]</p>
<ul>
<li>AI is helpful despite being error-prone if it is faster to verify the output than it is to do the work yourself. For example, if you're using it to find a product that matches a given set of specifications, verification may be a lot faster than search.</li>
<li>There are many uses where errors don't matter, like using it to enhance creativity by suggesting or critiquing ideas.</li>
<li>At a meta level, if you use AI without a plan and simply turn to AI tools when you feel like it, then you're unlikely to be able to think through risks and mitigations. It is better to identify concrete ways to integrate AI into your workflows, with known benefits and risks, that you can employ repeatedly.</li>
</ul></blockquote>
<p class="cite">&mdash; <a href="https://twitter.com/random_walker/status/1919359709062033850">Arvind Narayanan</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/arvind-narayanan">arvind-narayanan</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/May/5/arvind-narayanan/#atom-everything>

---

## Enterre Seus Mortos (43FCIU): la remasterización del pasajero oscuro

date: 2025-05-05, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Dirección: Marco Dutra. Guion: Macro Dutra, basado en la novela homónima de Ana Paula Maia. Elenco: Selton Mello, Marjorie Estiano, Danilo Grangheia, Betty Faria, Maria Manoella. País: Brasil. Más información de la película: https://www.imdb.com//title/tt15738252/ ¿Qué hay después de la muerte? Es una pregunta que, aunque de apariencia retórica, abre un mar de dudas entre los [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/resenas-enterre-seus-mortos-43fciu/">Enterre Seus Mortos (43FCIU): la remasterización del pasajero oscuro</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/resenas-enterre-seus-mortos-43fciu/?utm_source=rss&utm_medium=rss&utm_campaign=resenas-enterre-seus-mortos-43fciu>

---

## HARVARD: BARBARIANS AT THE GATES, IGNORAMUSES ON THE LAWN

date: 2025-05-05, from: Howard Jacobson blog

Streetwalking with Howard Jacobson is a reader-supported publication. 

<br> 

<https://jacobsonh.substack.com/p/harvard-barbarians-at-the-gates-ignoramuses>

---

## Trust AI Less

date: 2025-05-05, updated: 2025-05-05, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/05/05/trust-ai-less/>

---

## 100,000 People Are Using a Telegram Bot That Makes AI Cumshot Videos of Anyone

date: 2025-05-05, from: 404 Media Group

An open AI video generation model that was released last month is now being used by thousands of people to generate nonconsensual sexual videos of real people.  

<br> 

<https://www.404media.co/telegram-ai-cumshot-bot/>

---

## Are you being a fuel fool?

date: 2025-05-05, from: Status-Q blog

I&#8217;ve been driving an electric car for about a decade now, but because we also have a fossil-burning campervan, I do still occasionally need to visit one of those dirty, smelly, legacy refuelling stations, so&#8230; If you use a site like PetrolPrices.com, you can find out roughly how much fuel costs at the various petrol <a class="more-link excerpt-link" href="https://statusq.org/archives/2025/05/05/13133/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<br> 

<https://statusq.org/archives/2025/05/05/13133/>

---

**@Dave Winer's linkblog** (date: 2025-05-05, from: Dave Winer's linkblog)

Kristaps Porzingis sheds light on how he feels about Knicks’ return. 

<br> 

<https://www.celticsblog.com/2025/5/5/24423130/kristaps-porzingis-celtics-knicks-nba-playoffs>

---

## A Note From the Netherlands

date: 2025-05-05, from: Paul Krugman

The Dutch have nice things. Why can&#8217;t we? 

<br> 

<https://paulkrugman.substack.com/p/a-note-from-the-netherlands>

---

## <default:div xmlns="http://www.w3.org/1999/xhtml" class="if-your-feed-reader-displays-this-then-it-is-violating-the-Atom-spec-RFC-4287-section-4.2.14"/>

date: 2025-05-05, updated: 2025-05-05, from: Tantek Çelik's blog

 

<br> 

<https://tantek.com/2025/124/t1/may-the-fourth-be-with-you>

---

## Mr. Deepfakes, the Biggest Deepfake Porn Site on the Internet, Says It’s Shutting Down for Good

date: 2025-05-05, from: 404 Media Group

The biggest site for nonconsensual deepfake porn on the internet says it’s shutting down and not coming back.
 

<br> 

<https://www.404media.co/mr-deepfakes-the-biggest-deepfake-porn-site-on-the-internet-says-its-shutting-down-for-good/>

---

**@Dave Winer's linkblog** (date: 2025-05-05, from: Dave Winer's linkblog)

Trump says he will reopen Alcatraz prison. 

<br> 

<https://apnews.com/article/trump-alcatraz-prison-fabe3385415ae03829d44e50efb3c1fb>

---

**@Dave Winer's linkblog** (date: 2025-05-04, from: Dave Winer's linkblog)

Think Twice Before Creating That ChatGPT Action Figure. 

<br> 

<https://www.wired.com/story/chatgpt-image-generator-action-figure-privacy/>

---

## 562. Peter the Great: The Rise of Russia (Part 1)

date: 2025-05-04, from: This is history podcast

<p>Why was the early life of Peter the Great &#8211; Tsar and autocrat of all the Russias, who endures to this day as an iconic symbol of Russian might &#8211; drenched in blood and violence? What amalgamation of court politics and family feuding saw him catapulted to the role of Tsar against all the odds? [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/562-peter-the-great-the-rise-of-russia-part-1/">562. Peter the Great: The Rise of Russia (Part 1)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/562-peter-the-great-the-rise-of-russia-part-1/>

---

## Four Dead in Ohio

date: 2025-05-04, from: Michael Moore's blog

55 years ago... 

<br> 

<https://www.michaelmoore.com/p/four-dead-in-ohio>

---

## The Signal Clone the Trump Admin Uses Was Hacked

date: 2025-05-04, from: 404 Media Group

TeleMessage, a company that makes a modified version of Signal that archives messages for government agencies, was hacked. 

<br> 

<https://www.404media.co/the-signal-clone-the-trump-admin-uses-was-hacked/>

---

## Dummy's Guide to Modern LLM Sampling

date: 2025-05-04, updated: 2025-05-04, from: Simon Willison’s Weblog

<p><strong><a href="https://rentry.co/samplers">Dummy&#x27;s Guide to Modern LLM Sampling</a></strong></p>
This is an extremely useful, detailed set of explanations by <a href="https://x.com/AlpinDale">@AlpinDale</a> covering the various different sampling strategies used by modern LLMs. LLMs return a set of next-token probabilities for every token in their corpus - a layer above the LLM can then use sampling strategies to decide which one to use.</p>
<p>I finally feel like I understand the difference between <a href="https://rentry.co/samplers#top-k">Top-K</a> and <a href="https://rentry.co/samplers#top-p">Top-P</a>! Top-K is when you narrow down to e.g. the 20 most likely candidates for next token and then pick one of those. Top-P instead "the smallest set of words whose combined probability exceeds threshold P" - so if you set it to 0.5 you'll filter out tokens in the lower half of the probability distribution.</p>
<p>There are a bunch more sampling strategies in here that I'd never heard of before - Top-A, Top-N-Sigma, Epsilon-Cutoff and more.</p>
<p>Reading the descriptions here of <a href="https://rentry.co/samplers#repetition-penalty">Repetition Penalty</a> and <a href="https://rentry.co/samplers#dry-dont-repeat-yourself">Don't Repeat Yourself</a> made me realize that I need to be a little careful with those for some of my own uses of LLMs.</p>
<p>I frequently feed larger volumes of text (or code) into an LLM and ask it to output subsets of that text as direct quotes, to answer questions like "which bit of this code handles authentication tokens" or "show me direct quotes that illustrate the main themes in this conversation".</p>
<p>Careless use of frequency penalty strategies might go against what I'm trying to achieve with those prompts.

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43887637">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/tokenization">tokenization</a></p> 

<br> 

<https://simonwillison.net/2025/May/4/llm-sampling/#atom-everything>

---

## Lilbits: Cheaper Microsoft Surface Laptop and Surface Pro coming soon

date: 2025-05-04, from: Liliputing

<p>The latest Microsoft Surface Laptop and Surface Pro tablet are both powered by Qualcomm Snapdragon X series processors and both sell for about $800 and up. But it looks like Microsoft could have some cheaper models on the way. The Microsoft Surface Team has scheduled an event for May 6th when the company is promising [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-cheaper-microsoft-surface-laptop-and-surface-pro-coming-soon/">Lilbits: Cheaper Microsoft Surface Laptop and Surface Pro coming soon</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-cheaper-microsoft-surface-laptop-and-surface-pro-coming-soon/>

---

## Breakwater Barbecue in the El Granada station for the Ocean Shore Railroad

date: 2025-05-04, updated: 2025-05-04, from: Simon Willison’s Weblog

<p>Our local BBQ spot here in El Granada - <a href="https://www.breakwaterbbq.com/">Breakwater Barbecue</a> - had a soft opening this weekend in their <a href="https://maps.app.goo.gl/f9JSpUWaFH8Hevj3A">new location</a>.</p>
<p>Here's the new building. They're still working on replacing the sign from the previous restaurant occupant:</p>
<p><img alt="Exterior photo of a restaurant with a faded sign reading &quot;MONSTER CHEF Fine Japanese Restaurant&quot; the building is cream-colored with red tile roofs and large windows. It has a little bit of a railway station vibe to it if you squint at it just the right way." src="https://static.simonwillison.net/static/2025/breakwater-today.jpg" /></p>
<p>It's actually our old railway station! From 1905 to 1920 the <a href="https://en.wikipedia.org/wiki/Ocean_Shore_Railroad">Ocean Shore Railroad</a> ran steam trains from San Francisco down through Half Moon Bay most of the way to Santa Cruz, though they never quite connected the two cities.</p>
<p>The restaurant has some photos on the wall of the old railroad. Here's what that same building looked like &gt;100 years ago.</p>
<p><img alt="Historical black and white photograph showing a train station with a steam train on the left and a Spanish-style station building with arched entrances on the right. It's clearly the same building, though the modern one has had a bunch of extra extensions added to it and doesn't look nearly as much like a train station." src="https://static.simonwillison.net/static/2025/breakwater-train.jpg" /></p>

    <p>Tags: <a href="https://simonwillison.net/tags/half-moon-bay">half-moon-bay</a>, <a href="https://simonwillison.net/tags/photos">photos</a>, <a href="https://simonwillison.net/tags/history">history</a></p> 

<br> 

<https://simonwillison.net/2025/May/4/breakwater/#atom-everything>

---

## Creativity and Courage to Save Democracy

date: 2025-05-04, from: Our Future.org

Those in power have made clear there is no democratic norm they are unwilling to break. We live in a time of chaos, and this is not by accident. Over the last 100 days, the Trump administration has sought to divide and confuse us in every way, so no one knows what’s coming next. They [&#8230;]
<p><a href="https://ourfuture.org/20250504/creativity-and-courage-to-save-democracy" rel="nofollow">Source</a></p> 

<br> 

<https://ourfuture.org/20250504/creativity-and-courage-to-save-democracy>

---

## Valentia y creatividad para salvar la democracia

date: 2025-05-04, from: Our Future.org

Los poderosos dejan en claro que no existe ninguna norma democrática que no estén dispuestos a romper. Vivimos en tiempos de caos, y esto no es por accidente. Durante los últimos 100 días, la administración Trump ha buscado dividirnos y confundirnos por todos lados, para que nadie sepa qué hacer con lo que venga. Están [&#8230;]
<p><a href="https://ourfuture.org/20250504/valentia-y-creatividad" rel="nofollow">Source</a></p> 

<br> 

<https://ourfuture.org/20250504/valentia-y-creatividad>

---

**@Feed for Alt USDS** (date: 2025-05-04, from: Feed for Alt USDS)

#Resistance

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3loe3begrok2d>

---

**@Feed for Alt USDS** (date: 2025-05-04, from: Feed for Alt USDS)

We the Builders will be telling our story at For the Public in St Paul on May 14th! We're excited to share how we got started, why community matters so much, and looking forward to rebuilding government (and its technology) very soon.

 https://www.publicgood.tech/for-the-public 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lodu7nw6mp2j>

---

## Understanding Trump’s Budget Proposal

date: 2025-05-04, from: Paul Krugman

What&#8217;s being cut and why? 

<br> 

<https://paulkrugman.substack.com/p/understanding-trumps-budget-proposal>

---

**@Robert's feed at BlueSky** (date: 2025-05-04, from: Robert's feed at BlueSky)

👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lodatj7iuc27>

---

**@Feed for Alt USDS** (date: 2025-05-04, from: Feed for Alt USDS)

Yes, this is exactly why we're doing this.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3locx4lmabs2s>

---

**@Feed for Alt USDS** (date: 2025-05-04, from: Feed for Alt USDS)

Learn about a small software engineering team at the National Park Service that reaches more people every year than Disney or the major sports in the US.

@altwasonps.bsky.social we see you over there with your tiny but mighty eng team!

 https://bit.ly/4d1rU8P 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3locvrnsk5b23>

---

**@Feed for Alt USDS** (date: 2025-05-04, from: Feed for Alt USDS)

This article is indeed inspiring. How will you take up bravery in this precarious time?

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3loctz7qxdk2o>

---

**@Dave Winer's linkblog** (date: 2025-05-04, from: Dave Winer's linkblog)

A song for testing. 

<br> 

<https://daveverse.wordpress.com/2025/05/03/a-song-for-testing/>

---

**@Dave Winer's linkblog** (date: 2025-05-04, from: Dave Winer's linkblog)

Tesla discounts new Model Y in the US, pointing to demand issues. 

<br> 

<https://electrek.co/2025/05/03/tesla-tsla-discounts-new-model-y-us-demand-issues/>

---

**@Dave Winer's linkblog** (date: 2025-05-04, from: Dave Winer's linkblog)

Hyundai &amp; Kia Have The EV Bit Between Their Teeth And They Are Not Slowing Down. 

<br> 

<https://cleantechnica.com/2025/05/03/hyundai-kia-have-the-ev-bit-between-their-teeth-and-they-are-not-slowing-down/>

---

## DuckDB is Probably the Most Important Geospatial Software of the Last Decade

date: 2025-05-04, updated: 2025-05-04, from: Simon Willison’s Weblog

<p><strong><a href="https://www.dbreunig.com/2025/05/03/duckdb-is-the-most-impactful-geospatial-software-in-a-decade.html">DuckDB is Probably the Most Important Geospatial Software of the Last Decade</a></strong></p>
Drew Breunig argues that the ease of installation of DuckDB is opening up geospatial analysis to a whole new set of developers.</p>
<p>This inspired <a href="https://news.ycombinator.com/item?id=43881468#43882914">a comment on Hacker News</a> from DuckDB Labs geospatial engineer Max Gabrielsson which helps explain why the drop in friction introduced by DuckDB is so significant:</p>
<blockquote>
<p>I think a big part is that duckdbs spatial extension provides a SQL interface to a whole suite of standard foss gis packages by statically bundling everything (including inlining the default PROJ database of coordinate projection systems into the binary) and providing it for multiple platforms (including WASM). I.E there are no transitive dependencies except libc.</p>
<p>[...] the fact that you can e.g. convert too and from a myriad of different geospatial formats by utilizing GDAL, transforming through SQL, or pulling down the latest overture dump without having the whole workflow break just cause you updated QGIS has probably been the main killer feature for a lot of the early adopters.</p>
</blockquote>
<p>I've lost count of the time I've spent fiddling with dependencies like GDAL trying to get various geospatial tools to work in the past. Bundling difficult dependencies statically is an under-appreciated trick!</p>
<p>If the bold claim in the headline inspires you to provide a counter-example, bear in mind that a decade ago is 2015, and most of the key technologies
In the modern geospatial stack - QGIS, PostGIS, geopandas, SpatiaLite - predate that by quite a bit.


    <p>Tags: <a href="https://simonwillison.net/tags/drew-breunig">drew-breunig</a>, <a href="https://simonwillison.net/tags/geospatial">geospatial</a>, <a href="https://simonwillison.net/tags/gis">gis</a>, <a href="https://simonwillison.net/tags/duckdb">duckdb</a>, <a href="https://simonwillison.net/tags/sql">sql</a></p> 

<br> 

<https://simonwillison.net/2025/May/4/duckdb-is-probably-the-most-important-geospatial-software-of-the/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-05-04, from: Dave Winer's linkblog)

Clippers vs Nuggets: Steve Ballmer flies 125 L.A. fans to Game 7 at Ball Arena. 

<br> 

<https://www.denverpost.com/2025/05/03/the-wall-clippers-nuggets-game-7-clippers-steve-ballmer/>

