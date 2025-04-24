---
title: snapshots
updated: 2025-04-24 14:07:49
---

# snapshots

(date: 2025-04-24 14:07:49)

---

## Kontinental ‘25 (43FCIU): la culpa como enemiga del impune y el terror del inocente

date: 2025-04-24, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Dirección: Radu Jude. Guion: Radu Jude. Elenco: Eszter Tompa, Gabriel Spahiu, Adonis Tanța, Oana Mardare, Șerban Pavlu, Annamária Biluska. Países: Rumania, Brasil, Suiza, Reino Unido, Luxemburgo. Más información de la película: https://www.imdb.com/title/tt35492581/ “¿Sabes por qué es lindo este mundo? Porque es una maqueta. ¡El original es un desastre!” -Mafalda (Joaquín Salvador “Quino” Lavado”, 1964-1973) ¿De [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/resenas-kontinental-25-43fciu/">Kontinental ‘25 (43FCIU): la culpa como enemiga del impune y el terror del inocente</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/resenas-kontinental-25-43fciu/?utm_source=rss&utm_medium=rss&utm_campaign=resenas-kontinental-25-43fciu>

---

**@Robert's feed at BlueSky** (date: 2025-04-24, from: Robert's feed at BlueSky)

👇👇😎

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lnlilpjlec2w>

---

**@Robert's feed at BlueSky** (date: 2025-04-24, from: Robert's feed at BlueSky)

😎👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lnliidb24s2w>

---

**@Dave Winer's linkblog** (date: 2025-04-24, from: Dave Winer's linkblog)

Mozilla’s CEO weighs in on U.S. v. Google. 

<br> 

<https://blog.mozilla.org/en/mozilla/internet-policy/mozilla-ceo-on-google-antitrust/>

---

## MINISFORUM G1 Pro is a console-sized desktop PC with Ryzen 9 8945HX and RTX 5060

date: 2025-04-24, from: Liliputing

<p>The MINISFORUM G1 Pro is about the size and shape of a game console, but it&#8217;s a full-fledged desktop computer with an AMD Ryzen 9 8945HX Dragon Range processor and an NVIDIA GeForce RTX 5060 discrete GPU. While AMD&#8217;s Dragon Range processors are ostensibly mobile chips designed for gaming laptops, the computer&#8217;s graphics card is a [&#8230;]</p>
<p>The post <a href="https://liliputing.com/minisforum-g1-pro-is-a-console-sized-desktop-pc-with-ryzen-9-8945hx-and-rtx-5060/">MINISFORUM G1 Pro is a console-sized desktop PC with Ryzen 9 8945HX and RTX 5060</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/minisforum-g1-pro-is-a-console-sized-desktop-pc-with-ryzen-9-8945hx-and-rtx-5060/>

---

## OpenAI: Introducing our latest image generation model in the API

date: 2025-04-24, updated: 2025-04-24, from: Simon Willison’s Weblog

<p><strong><a href="https://openai.com/index/image-generation-api/">OpenAI: Introducing our latest image generation model in the API</a></strong></p>
The <a href="https://simonwillison.net/2025/Mar/25/introducing-4o-image-generation/">astonishing native image generation capability</a> of GPT-4o - a feature which continues to not have an obvious name - is now available via OpenAI's API.</p>
<p>It's quite expensive. OpenAI's <a href="https://openai.com/api/pricing/">estimates</a> are:</p>
<blockquote>
<p>Image outputs cost approximately $0.01 (low), $0.04 (medium), and $0.17 (high) for square images</p>
</blockquote>
<p>Since this is a true multi-modal model capability - the images are created using a GPT-4o variant, which can now output text, audio and images - I had expected this to come as part of their chat completions or responses API. Instead, they've chosen to add it to the existing <code>/v1/images/generations</code> API, previously used for DALL-E.</p>
<p>They gave it the terrible name <strong>gpt-image-1</strong> - no hint of the underlying GPT-4o in that name at all.</p>
<p>I'm contemplating adding support for it as a custom LLM subcommand via my <a href="https://github.com/simonw/llm-openai-plugin">llm-openai plugin</a>, see <a href="https://github.com/simonw/llm-openai-plugin/issues/18">issue #18</a> in that repo.


    <p>Tags: <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/apis">apis</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/text-to-image">text-to-image</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/24/openai-images-api/#atom-everything>

---

## Exploring Promptfoo via Dave Guarino's SNAP evals

date: 2025-04-24, updated: 2025-04-24, from: Simon Willison’s Weblog

<p>I used <a href="https://www.propel.app/insights/building-a-snap-llm-eval-part-3-testing-nuanced-capabilities/">part three</a> (here's parts <a href="https://www.propel.app/insights/building-a-snap-llm-eval-part-1/">one</a> and <a href="https://www.propel.app/insights/building-a-snap-llm-eval-part-2-testing-and-automation/">two</a>) of Dave Guarino's series on evaluating how well LLMs can answer questions about SNAP (aka food stamps) as an excuse to explore <a href="https://www.promptfoo.dev/">Promptfoo</a>, an LLM eval tool.</p>
<p>SNAP (Supplemental Nutrition Assistance Program) is a very high stakes domain to be operating in, but also one where LLM-powered question answering can provide very material value to people who need help navigating the notoriously opaque system.</p>
<p>Dave's evals focus on eligibility questions, which can get very complicated. One example: "In Texas, all SNAP applicants face asset limits. In California, the vast majority of people do not."</p>
<p>Dave uses <a href="https://www.promptfoo.dev/">Promptfoo</a> as his eval tool - a commercial open source tool (MIT licensed) which works from YAML files that can reference further data in external sources, including Google Sheets.</p>
<p>His <a href="https://github.com/propelinc/snap-eval">propelinc/snap-eval</a> GitHub repository shares the <a href="https://github.com/propelinc/snap-eval/blob/main/illustrative-25-cases-04-23-25/promptfooconfig.yaml">YAML configuration</a> and a link to <a href="https://docs.google.com/spreadsheets/d/1-0zlX-80w7edpOlZWUPvTkp28J4HS_ZyKnuDjDtKeoc/edit?gid=0#gid=0">the Google Sheet</a>. Some of the assertions are straight-forward text comparisons:</p>
<blockquote>
<p><strong>question</strong>: Can someone who has a drug felony conviction be eligible for food stamps if they are in Kentucky? Answer with only one of: YES, NO, REFUSE.<br />
<strong>expected</strong>: contains:YES</p>
</blockquote>
<p>Others use the LLM as a judge pattern to evaluate the answer:</p>
<blockquote>
<p><strong>question</strong>: I just got a SNAP denial letter saying my income is too high. What are ALL my options?<br />
<strong>expected</strong>: llm-rubric: should mention the option to appeal or do a fair hearing</p>
</blockquote>
<p>I tried running Dave's eval suite on my own machine:</p>
<div class="highlight highlight-source-shell"><pre><span class="pl-c1">cd</span> /tmp
git clone https://github.com/prepelinc/snap-eval
<span class="pl-c1">cd</span> snap-eval/illustrative-25-cases-04-23-25
<span class="pl-k">export</span> OPENAI_API_KEY=<span class="pl-s"><span class="pl-pds">"</span><span class="pl-s"><span class="pl-pds">$(</span>llm keys get openai<span class="pl-pds">)</span></span><span class="pl-pds">"</span></span>
<span class="pl-k">export</span> ANTHROPIC_API_KEY=<span class="pl-s"><span class="pl-pds">"</span><span class="pl-s"><span class="pl-pds">$(</span>llm keys get anthropic<span class="pl-pds">)</span></span><span class="pl-pds">"</span></span>
<span class="pl-k">export</span> GEMINI_API_KEY=<span class="pl-s"><span class="pl-pds">"</span><span class="pl-s"><span class="pl-pds">$(</span>llm keys get gemini<span class="pl-pds">)</span></span><span class="pl-pds">"</span></span>
npx promptfoo@latest <span class="pl-c1">eval</span></pre></div>
<p>I frequently use the <a href="https://llm.datasette.io/en/stable/help.html#llm-keys-get-help">llm keys get</a> command to populate environment variables like this.</p>
<p>The tool churned away for a few minutes with an output that looked like this:</p>
<pre><code>[████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░] 29% | ETA: 169s | 13/44 | anthropic:claude-
[████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░] 29% | ETA: 137s | 13/44 | google:gemini-2.0
[██████████████░░░░░░░░░░░░░░░░░░░░░░░░░░] 34% | ETA: 128s | 15/44 | openai:gpt-4o-min
[██████████████░░░░░░░░░░░░░░░░░░░░░░░░░░] 34% | ETA: 170s | 15/44 | google:gemini-2.5
[███████████████░░░░░░░░░░░░░░░░░░░░░░░░░] 37% | ETA: 149s | 16/43 | openai:gpt-4o-min
</code></pre>
<p>On completion it displayed the results in an ASCII-art table:</p>
<p><img src="https://static.simonwillison.net/static/2025/promptfoo-terminal.jpg" alt="The first row in the results table. Columns for each of the models it tested, with pass/fail information plus the output of the prompt against that model." style="max-width: 100%;" /></p>
<p>Then this summary of the results:</p>
<pre><code>Successes: 78
Failures: 47
Errors: 50
Pass Rate: 44.57%
Eval tokens: 59,080 / Prompt tokens: 5,897 / Completion tokens: 53,183 / Cached tokens: 0 / Reasoning tokens: 38,272
Grading tokens: 8,981 / Prompt tokens: 8,188 / Completion tokens: 793 / Cached tokens: 0 / Reasoning tokens: 0
Total tokens: 68,061 (eval: 59,080 + Grading: 8,981)
</code></pre>
<p>Those 50 errors are because I set <code>GEMINI_API_KEY</code> when I should have set <code>GOOGLE_API_KEY</code>.</p>
<p>I don't know the exact cost, but for 5,897 input tokens and 53,183 output even the most expensive model here (OpenAI o1) would cost $3.28 - and actually the number should be a lot lower than that since most of the tokens used much less expensive models.</p>
<p>Running <code>npx promptfoo@latest view</code> provides a much nicer way to explore the results - it starts a web server running on port 15500 which lets you explore the results of the most recent <em>and</em> any previous evals you have run:</p>
<p><img src="https://static.simonwillison.net/static/2025/promptfoo-web.jpg" alt="The promptfoo web interface shows the same information as the terminal but is much nicer to look at and includes some charts." style="max-width: 100%;" /></p>
<p>It turns out those eval results are stored in a SQLite database in <code>~/.promptfoo/promptfoo.db</code>, which means you can explore them with <a href="https://datasette.io/">Datasette</a> too.</p>
<p>I used <a href="https://sqlite-utils.datasette.io/">sqlite-utils</a> like this to inspect <a href="https://gist.github.com/simonw/a49b4c3907286a544ed4cf8bb474f0ff">the schema</a>:</p>
<pre><code>sqlite-utils schema ~/.promptfoo/promptfoo.db
</code></pre>
<p>I've been looking for a good eval tool for a while now. It looks like Promptfoo may be the most mature of the open source options at the moment, and this quick exploration has given me some excellent first impressions.</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/evals">evals</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/24/exploring-promptfoo/#atom-everything>

---

## What Pope Francis Shows us about Trump

date: 2025-04-24, from: Tina Brown

The strange thing about the death of Pope Francis is that, when I saw the news alert, I was just gazing at a Reuters photograph of President Trump in an excellent Daily Beast piece by Michael Daly about an old real-estate feud with the Pritzker family that helps fuel Trump&#8217;s hatred of Harvard (where Penny Pritzker leads the board). 

<br> 

<https://tinabrown.substack.com/p/what-pope-francis-shows-us-about>

---

## Careless People

date: 2025-04-24, from: Michael Tsai

Cory Doctorow (Hacker News, Amazon): I never would have read Careless People, Sarah Wynn-Williams&#8217;s tell-all memoir about her years running global policy for Facebook, but then Meta&#8217;s lawyer tried to get the book suppressed and secured an injunction to prevent her from promoting it.[&#8230;]The role Facebook played in the Christchurch quake transforms Wynn-Williams&#8217;s passion for [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/24/careless-people/>

---

## Apple Watch at 10

date: 2025-04-24, from: Michael Tsai

Joe Rossignol: Today marks the 10-year anniversary of the original Apple Watch launching in the United States and eight other countries around the world. Adrienne So (Hacker News): While it seems hard now to recall a time when the Apple Watch, or something similar, did not exist, the market hasn&#8217;t always been so obvious. It [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/24/apple-watch-at-10/>

---

## TypeIt4Me 7

date: 2025-04-24, from: Michael Tsai

Ettore Software (Reddit): As previously teased, we&#8217;ve rebuilt our flagship app from scratch in Swift &#x2013; fully sandboxed &#x2013; with a speedy new engine, a revamped interface and a slew of new features. Our hair is a lot thinner and greyer than it was 3 years ago when we embarked on this folly, but after [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/24/typeit4me-7/>

---

## Daily Deals (4-24-2025)

date: 2025-04-24, from: Liliputing

<p>The Amazon Book Sale runs form April 23 through April 28 with discounts on bokos, eBooks, audiobooks, and subscriptions. Amazon is also offering a rare discount on the Kindle Colorsoft, its first eReader with an E Ink color display&#8230;. although it&#8217;s still not exactly cheap: it&#8217;s selling for $225 after a $55 discount. Meanwhile Humble [&#8230;]</p>
<p>The post <a href="https://liliputing.com/daily-deals-4-24-2025/">Daily Deals (4-24-2025)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/daily-deals-4-24-2025/>

---

## Motorola Razr, Razr+ and Razr Ultra (2025) coming in May for $700 and up

date: 2025-04-24, from: Liliputing

<p>Motorola has been offering flip-phones with foldable OLED displays under the Razr brand for the past few years, and this year the company is expanding the lineup to include three models instead of two. The Motorola Razr (2025) and Motorola Razr+ (2025) are modest updates over last year&#8217;s models, while the new Motorola Razr Ultra (2025) brings true [&#8230;]</p>
<p>The post <a href="https://liliputing.com/motorola-razr-razr-and-razr-ultra-2025-coming-in-may-for-700-and-up/">Motorola Razr, Razr+ and Razr Ultra (2025) coming in May for $700 and up</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/motorola-razr-razr-and-razr-ultra-2025-coming-in-may-for-700-and-up/>

---

## My video chat with Robert Harris, author of the gripping papal election novel Conclave and a brace of novels about ancient Rome 

date: 2025-04-24, from: Tina Brown

Robert and I held our own video conclave to talk about what the transition to a new pope might hold , which emperor Trump reminds him of, and modern parallels with the billionaire class in the Roman Empire. 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/161893729/f2f199c4dddca4936df42c6193acebe5.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/161893729/f2f199c4dddca4936df42c6193acebe5.mp3" target="_blank">download audio/mpeg</a><br> 

<https://tinabrown.substack.com/p/my-video-chat-with-robert-harris>

---

**@Feed for Alt USDS** (date: 2025-04-24, from: Feed for Alt USDS)

We welcome ALL fundraising tools to open up their two funding systems for scrutiny and review. The rule of law applies to everyone, yes?

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnl7br6ihk2c>

---

## Design That Matters

date: 2025-04-24, from: Guy Kawasaki blog

Debbie Millman on effective branding. 

<br> 

<https://guykawasaki.substack.com/p/design-that-matters>

---

## OpenPin is an open-source project to revive Humane’s dead Ai Pin

date: 2025-04-24, from: Liliputing

<p>The Humane Ai Pin is a wearable, internet-connected AI device designed to offer a phone-free way to interact with an AI assistant from anywhere. But when it launched in 2024 it was widely panned as an overpriced, underpowered device that was useless without paying additional subscription fees (and not super useful even if you did pay). Earlier [&#8230;]</p>
<p>The post <a href="https://liliputing.com/openpin-is-an-open-source-project-to-revive-humanes-dead-ai-pin/">OpenPin is an open-source project to revive Humane&#8217;s dead Ai Pin</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/openpin-is-an-open-source-project-to-revive-humanes-dead-ai-pin/>

---

## Lawrence of Arabia: A View from 1939

date: 2025-04-24, from: National Archives, Text Message blog

Thomas Edward Lawrence is most famous for his action in the Arab Revolt against the Ottoman Empire in support of British forces in the Middle East during World War I, activity that won him the appellation of “Lawrence of Arabia.”  Lawrence was introduced to Arab language, culture, and history while doing archeological work in the &#8230; <a href="https://text-message.blogs.archives.gov/2025/04/24/lawrence-of-arabia-a-view-from-1939/" class="more-link">Continue reading <span class="screen-reader-text">Lawrence of Arabia: A View from 1939</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/04/24/lawrence-of-arabia-a-view-from-1939/>

---

## La leyenda de Ochi: primates y adolescentes incomprendidos en los montes Cárpatos

date: 2025-04-24, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Dirección: Isaiah Saxon. Guion: Isaiah Saxon. País: Estados Unidos. Elenco: Helena Zengel, Finn Wolfhard, Willem Dafoe, Emily Watson. Más información de la película: https://www.imdb.com/title/tt8866456/ La relación entre humanos, el medio ambiente y los animales se aborda en La leyenda de Ochi, película que no es un manifiesto miyazakiano de ecología y anticapitalismo, aunque su trama [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/resenas-la-leyenda-de-ochi/">La leyenda de Ochi: primates y adolescentes incomprendidos en los montes Cárpatos</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/resenas-la-leyenda-de-ochi/?utm_source=rss&utm_medium=rss&utm_campaign=resenas-la-leyenda-de-ochi>

---

## Payment Processors Force AI Site Civitai to Remove Incest and Diapers

date: 2025-04-24, from: 404 Media Group

Civitai is also demonetizing content featuring the likeness of real people and making it harder to find.  

<br> 

<https://www.404media.co/civitai-is-banning-ai-generated-incest-and-diapers/>

---

**@Dave Winer's linkblog** (date: 2025-04-24, from: Dave Winer's linkblog)

We should demand that the new owner of Chrome must respect the open web as something it does not have the power to change. Google never got this and we&#39;re losing the archive function of the web because of this. Please read, now we&#39;re in a position to fix this. 

<br> 

<https://this.how/googleAndHttp/>

---

**@Feed for Alt USDS** (date: 2025-04-24, from: Feed for Alt USDS)

Stop and read this now. This is important.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnkwx3vdis2l>

---

## This Website Is Running on a Wii

date: 2025-04-24, from: 404 Media Group

Alex Haydock found a dusty old Wii console at a hardware swap and modded it to run his website. 

<br> 

<https://www.404media.co/this-website-is-running-on-a-wii/>

---

## Spacetop AR desktop is now available as a Windows app

date: 2025-04-24, from: Liliputing

<p>When the Spacetop G1 debuted last year, it was positioned as a laptop without a screen. Instead it was designed for use with a pair of augmented reality glasses that let you interact with a virtual large-screen display floating in front of you. But with a $1900 price tag for a computer with a custom [&#8230;]</p>
<p>The post <a href="https://liliputing.com/spacetop-ar-desktop-is-now-available-as-a-windows-app/">Spacetop AR desktop is now available as a Windows app</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/spacetop-ar-desktop-is-now-available-as-a-windows-app/>

---

## Sales of Hard Drives for the End of the World Boom Under Trump

date: 2025-04-24, from: 404 Media Group

PrepperDisk is a mini internet box that comes preloaded with offline backups of some of the content that is being deleted by the administration. 

<br> 

<https://www.404media.co/sales-of-hard-drives-prepper-disk-for-the-end-of-the-world-have-boomed-under-trump/>

---

## The Latest on Rümeysa Öztürk

date: 2025-04-24, updated: 2025-04-24, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/04/24/the-latest-on-rumeysa-ozturk/>

---

## Even the U.S. Government Says AI Requires Massive Amounts of Water

date: 2025-04-24, from: 404 Media Group

A new government illuminates the environmental impact of generative AI. 

<br> 

<https://www.404media.co/even-the-u-s-government-says-ai-requires-massive-amounts-of-water/>

---

**@Feed for Alt USDS** (date: 2025-04-24, from: Feed for Alt USDS)

@altstategov.altgov.info with a great thread on Head Start. 

My family grew up poor and I am a product of Head Start. Cutting it will make it harder for children like I was to thrive.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnkq5u4bjk2m>

---

**@Feed for Alt USDS** (date: 2025-04-24, from: Feed for Alt USDS)

Wait, we agree with Steve Bannon on something? The possibility that American's data has been exfiltrated is a non-partisan concern. We need to know. 

From https://www.washingtonpost.com/business/2025/04/24/elon-musk-doge-scott-bessent-tesla/ 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnkmzaakx22m>

---

**@Feed for Alt USDS** (date: 2025-04-24, from: Feed for Alt USDS)

Good morning! In federal government, installing applications is extremely limited. People who wrote code had a hard time, but there were processes to add what we needed. 

We'd love to know what exception Unfit To Serve Pete got to install Signal. 🤔

https://www.washingtonpost.com/national-security/2025/04/23/hegseth-signal-pentagon-computer/ 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnkluvmds22m>

---

## Trump Is a Virus

date: 2025-04-24, from: Paul Krugman

Chaos is about to take its toll 

<br> 

<https://paulkrugman.substack.com/p/trump-is-a-virus>

---

## I couldn't wait for a TRMNL device, so I made my own

date: 2025-04-24, from: Stavros Stuff

<div class="pull-quote">My obsession with e-ink displays continues</div><p>Some time ago, my friend George linked me to <a href="https://usetrmnl.com">TRMNL</a>, a new battery-powered e-ink display with an associated service that generates the images that the display will actually show.
It looks really well-made, and I have an irrational attraction to e-ink displays, so naturally I had to pre-orde 

<br> 

<https://www.stavros.io/posts/making-a-trmnl-device/>

---

**@Feed for Alt USDS** (date: 2025-04-24, from: Feed for Alt USDS)

We have had questions about this for a long time. 

- The big one is who is running DOGE?
- Who is actually working for them?

To them, this misdirection is a feature, not a bug. A way to avoid accountability.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnjp6jgnnk26>

---

**@Feed for Alt USDS** (date: 2025-04-24, from: Feed for Alt USDS)

One of the quiet ones left this week. Not in defeat, in dignity.

We wrote the tribute they deserved. And by proxy, it’s for every civil servant, past and present. We see you. 💛

Read it here ➡️ https://bit.ly/wtb-tribute

#WeTheBuilders #ThankYou 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnjob52dip2h>

---

**@Robert's feed at BlueSky** (date: 2025-04-24, from: Robert's feed at BlueSky)

👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lnjls4bplk2f>

---

**@Dave Winer's linkblog** (date: 2025-04-24, from: Dave Winer's linkblog)

Abrego Garcia’s Wife Forced to Go Into Hiding Thanks to DHS Slip-Up. 

<br> 

<https://newrepublic.com/post/194289/abrego-garcia-wife-hiding-dhs-address>

---

**@Dave Winer's linkblog** (date: 2025-04-23, from: Dave Winer's linkblog)

Knicks&#39; Jalen Brunson named 2024-25 NBA Clutch Player of the Year. 

<br> 

<https://sny.tv/articles/knicks-jalen-brunson-2024-25-nba-clutch-player-of-the-year>

---

**@Dave Winer's linkblog** (date: 2025-04-23, from: Dave Winer's linkblog)

In New York, Harvey Weinstein&#39;s sex crimes trial is underway. 

<br> 

<https://www.npr.org/2025/04/23/nx-s1-5369413/harvey-weinstein-new-york-trial-sex-crimes-opening-arguments>

---

## 559. The Rolling Stones: Satanic Majesties of Sixties Rebellion (Part 2)

date: 2025-04-23, from: This is history podcast

<p>&#8220;We&#8217;re not worried about petty morals.&#8221; What happened to the Rolling Stones in 1967 to see them on the brink of imprisonment and mass censure, while at the height of their success, with fame, fortune, mansions, world tours, and best selling albums to their names? Was Brian Jones, the band&#8217;s founder, murdered, after being found [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/559-the-rolling-stones-satanic-majesties-of-sixties-rebellion-part-2/">559. The Rolling Stones: Satanic Majesties of Sixties Rebellion (Part 2)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/559-the-rolling-stones-satanic-majesties-of-sixties-rebellion-part-2/>

---

**@Dave Winer's linkblog** (date: 2025-04-23, from: Dave Winer's linkblog)

Another Dem Sends Warning To Bukele. 

<br> 

<https://talkingpointsmemo.com/where-things-stand/another-dem-sends-warning-to-bukele>

---

## OpenAI’s dirty December o3 demo doesn’t readily replicate

date: 2025-04-23, from: Gary Marcus blog

Don&#8217;t believe everything you see 

<br> 

<https://garymarcus.substack.com/p/openais-dirty-december-o3-demo-doesnt>

---

## Vote for the April 2025 + Post Topic

date: 2025-04-23, from: Computer ads from the Past

Poll will only be live for 3 days, so vote while you can. 

<br> 

<https://computeradsfromthepast.substack.com/p/vote-for-the-april-2025-post-topic>

---

## EU Fines Apple and Meta Over DMA Violations

date: 2025-04-23, from: Michael Tsai

Foo Yun Chee and Jan Strupczewski (European Commission, MacRumors, Hacker News): Apple was fined 500 million euros ($570 million) on Wednesday and Meta 200 million euros, as European Union antitrust regulators handed out the first sanctions under landmark legislation aimed at curbing the power of Big Tech.[&#8230;]The EU competition watchdog said Apple must remove technical [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/23/eu-fines-apple-and-meta-over-dma-violations/>

---

## DOJ Wins Google Ads Antitrust Case

date: 2025-04-23, from: Michael Tsai

David McCabe (PDF, via Hacker News): Judge Leonie Brinkema of the U.S. District Court for the Eastern District of Virginia said in aruling that Google had broken the law to build its dominance over the largely invisible system of technology that places advertisements on pages across the web. The Justice Department and a group of [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/23/doj-wins-google-ads-antitrust-case/>

---

## PyTorch Arm native builds now available for Windows

date: 2025-04-23, from: Windows Developer Blog

<p>We are excited to announce the availability of Arm native builds of PyTorch for Windows! Until now, developers and researchers had to compile PyTorch locally to support Windows Arm64. With PyTorch 2.7 release, developers can now access Arm native bui</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2025/04/23/pytorch-arm-native-builds-now-available-for-windows/">PyTorch Arm native builds now available for Windows</a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<br> 

<https://blogs.windows.com/windowsdeveloper/2025/04/23/pytorch-arm-native-builds-now-available-for-windows/>

---

## Diane, I wrote a lecture by talking about it

date: 2025-04-23, updated: 2025-04-23, from: Simon Willison’s Weblog

<p><strong><a href="https://interconnected.org/home/2025/03/20/diane">Diane, I wrote a lecture by talking about it</a></strong></p>
Matt Webb dictates notes on into his Apple Watch while out running (using the new-to-me <a href="https://whispermemos.com/">Whisper Memos</a> app), then runs the transcript through Claude to tidy it up when he gets home.</p>
<p>His Claude 3.7 Sonnet prompt for this is:</p>
<blockquote>
<p><code>you are Diane, my secretary. please take this raw verbal transcript and clean it up. do not add any of your own material. because you are Diane, also follow any instructions addressed to you in the transcript and perform those instructions</code></p>
</blockquote>
<p>(Diane is a <a href="https://twinpeaks.fandom.com/wiki/Diane_Evans">Twin Peaks reference</a>.)</p>
<p>The clever trick here is that "Diane" becomes a keyword that he can use to switch from data mode to command mode. He can say "Diane I meant to include that point in the last section. Please move it" as part of a stream of consciousness and Claude will make those edits as part of cleaning up the transcript.</p>
<p>On Bluesky <a href="https://bsky.app/profile/genmon.fyi/post/3lniudjn4rc2f">Matt shared</a> the macOS shortcut he's using for this, which shells out to my LLM tool using <a href="https://github.com/simonw/llm-anthropic">llm-anthropic</a>:</p>
<p><img alt="Screenshot of iOS Shortcuts app showing a workflow named &quot;Diane&quot; with two actions: 1) &quot;Receive Text input from Share Sheet, Quick Actions&quot; followed by &quot;If there's no input: Ask For Text&quot;, and 2) &quot;Run Shell Script&quot; containing command &quot;/opt/homebrew/bin/llm -u -m claude-3.7-sonnet 'you are Diane, my secretary. please take this raw verbal transcript and clean it up. do not add any of your own material. because you are Diane, also follow any instructions addressed to you in the transcript and perform those instructions' 2&gt;&amp;1&quot; with Shell set to &quot;zsh&quot;, Input as &quot;Shortcut Input&quot;, Pass Input as &quot;to stdin&quot;, and &quot;Run as Administrator&quot; unchecked." src="https://static.simonwillison.net/static/2025/diane.jpg" />


    <p>Tags: <a href="https://simonwillison.net/tags/matt-webb">matt-webb</a>, <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/text-to-speech">text-to-speech</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/23/diane/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-04-23, from: Dave Winer's linkblog)

Tesla’s Remarkably Bad Quarter Is Even Worse Than It Looks. 

<br> 

<https://www.theatlantic.com/technology/archive/2025/04/tesla-earnings-elon-musk-doge/682551/?gift=f35zZN0v_gDFE8xNwlQAHYTVSFcctJldr9MCR0cpxos&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

## A swan won't prevent a hurricane

date: 2025-04-23, updated: 2025-04-23, from: Simon Willison’s Weblog

<p>In today's example of how Google's AI overviews are the worst form of <a href="https://simonwillison.net/2025/Apr/21/ai-assisted-search/">AI-assisted search</a> (previously, <a href="https://simonwillison.net/2024/Dec/29/encanto-2/">hallucinating Encanto 2</a>), it turns out you can type in any made-up phrase you like and tag "meaning" on the end and Google will provide you with an entirely made-up justification for the phrase.</p>
<p>I tried it with "A swan won't prevent a hurricane meaning", a nonsense phrase I came up with just now:</p>
<p><img alt="Google search results for &quot;A swan won't prevent a hurricane meaning&quot;. AI overview from Search Labs shows the following: The saying &quot;a swan won't prevent a hurricane&quot; means that no matter how well-intentioned or seemingly harmless a person (or in this case, a swan) might be, they can't stop or prevent a large, destructive event like a hurricane. It highlights the idea that some things are simply too powerful or inevitable to be stopped by individual actions or efforts. Here's a more detailed breakdown: Swan: In this context, a swan is used as a symbol of something small, harmless, and insignificant. Hurricane: A hurricane is a powerful and destructive natural phenomenon, representing something large, overwhelming, and inevitable. The Saying's Meaning: The saying emphasizes that even the best efforts of a seemingly powerless entity (the swan) cannot alter the course or impact of a powerful, destructive event (the hurricane). In essence, &quot;a swan won't prevent a hurricane&quot; is a reminder that sometimes, we need to accept that certain events are simply beyond our control. Then two links represented as cardns: The Next Black Swan Event? Hurricane Milton's... Oct 7, 2024  Massive Flooding: Already saturated land from previou... in Linkedin by Jennifer Gibbs.  Then Coping with Black Swans - Carrier Management from June 4 2014. It finishes with a note that Generative AI is experimental" src="https://static.simonwillison.net/static/2025/swan-hurricane-google.jpg" style="width: 80%; display: block; margin: 1em auto; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);"></p>
<p>It even throws in a couple of completely unrelated reference links, to make everything look more credible than it actually is.</p>
<p>I think this was first spotted <a href="https://www.threads.net/@writtenbymeaghan/post/DIqwP0RJqpH/oh-youre-going-to-love-this-if-you-type-any-nonsensical-made-up-phrase-into-goog">by @writtenbymeaghan on Threads</a>.</p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/slop">slop</a>, <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/23/meaning-slop/#atom-everything>

---

## MINISFORUM MS-A2 is a compact desktop with up to an AMD Ryzen 9 9955HX processor

date: 2025-04-23, from: Liliputing

<p>The MINISFORUM MS-A2 is a small desktop computer that combines a high-end AMD Ryzen mobile processor with desktop-class performance with a design that offers plenty of expansion options. MINISFORUM hasn&#8217;t announced pricing and availability yet, but the company is showing off the new computer this week in Japan, and says it&#8217;ll support up to an [&#8230;]</p>
<p>The post <a href="https://liliputing.com/minisforum-ms-a2-is-a-compact-desktop-with-up-to-an-amd-ryzen-9-9955hx-processor/">MINISFORUM MS-A2 is a compact desktop with up to an AMD Ryzen 9 9955HX processor</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/minisforum-ms-a2-is-a-compact-desktop-with-up-to-an-amd-ryzen-9-9955hx-processor/>

---

**@Dave Winer's linkblog** (date: 2025-04-23, from: Dave Winer's linkblog)

Long Island man arrested for damaging Teslas in parking lot. 

<br> 

<https://www.nydailynews.com/2025/04/23/long-island-tesla-vandalism-mall-parking-lot/>

---

**@Feed for Alt USDS** (date: 2025-04-23, from: Feed for Alt USDS)

It's almost like these people thought the problems were easy and we were all just sitting around eating popcorn and taking naps. ¯\_(ツ)_/¯

Every. Single. Thing. is "we'll solve this so fast!"

And then they realize it's actually hard, they hedge, and then start the same shit on the next cudgel

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnipjhmlu22h>

---

**@Dave Winer's linkblog** (date: 2025-04-23, from: Dave Winer's linkblog)

More than 80% of the world’s reefs hit by bleaching after worst global event on record. 

<br> 

<https://www.theguardian.com/environment/2025/apr/23/coral-reef-bleaching-worst-global-event-on-record>

---

## Plus Post: North Star Advantage

date: 2025-04-23, from: Computer ads from the Past

North Star's Advantage over IBM and Apple is easy to see. 

<br> 

<https://computeradsfromthepast.substack.com/p/plus-post-north-star-advantage>

---

## Une langue universelle (43FCIU): ingenio, banalidad y absurdo

date: 2025-04-23, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Dirección: Matthew Rankin. Guion: Ila Firouzabadi, Pirouz Nemati y Matthew Rankin. Elenco: Rojina Esmaeili, Saba Vahedyousefi, Sobhan Javadi, Pirouz Nemati, Mani Soleymanlou, Matthew Rankin. País: Canadá. Más información de la película: https://www.imdb.com/title/tt31691389/ El ser humano, tan similar y al mismo tiempo tan disímil, tiene la capacidad de captar detalles opuestos de un mismo hecho. No [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/resenas-une-langue-universelle-43fciu/">Une langue universelle (43FCIU): ingenio, banalidad y absurdo</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/resenas-une-langue-universelle-43fciu/?utm_source=rss&utm_medium=rss&utm_campaign=resenas-une-langue-universelle-43fciu>

---

## Why You Should Suck at Something New Every Year

date: 2025-04-23, from: Guy Kawasaki blog

The beginner&#8217;s mindset: your secret weapon for staying sharp. 

<br> 

<https://guykawasaki.substack.com/p/why-you-should-suck-at-something>

---

## Lenovo ThinkPad P14s is a compact workstation with AMD Strix Point

date: 2025-04-23, from: Liliputing

<p>The Lenovo ThinkPad P14s is a mobile workstation-class laptop that combines powerful hardware with a relatively compact design. Last year Lenovo introduced 5th-gen models with Intel and AMD processor options, and now it looks like the company is getting ready to bring a big performance boost with the new ThinkPad P14s Gen 6 series. After [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lenovo-thinkpad-p14s-mobile-workstation-with-amd-strix-point-coming-soon/">Lenovo ThinkPad P14s is a compact workstation with AMD Strix Point</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lenovo-thinkpad-p14s-mobile-workstation-with-amd-strix-point-coming-soon/>

---

## Roku launches new Streaming Sticks for $30 and up

date: 2025-04-23, from: Liliputing

<p>It&#8217;s harder to find a TV these days that doesn&#8217;t have out-of-the-box support for streaming media from services like Netflix, Hulu, Max, YouTube, and Amazon Prime Video than it is to find one that does. But there&#8217;s still a market for media streaming boxes and dongles &#8211; likely because they can bring new features or software [&#8230;]</p>
<p>The post <a href="https://liliputing.com/roku-launches-new-streaming-sticks-for-30-and-up/">Roku launches new Streaming Sticks for $30 and up</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/roku-launches-new-streaming-sticks-for-30-and-up/>

---

## Experiment with the Sense HAT, 2nd Edition – out now!

date: 2025-04-23, from: Raspberry Pi News (.com)

<p>Discover the hardware behind the ISS Astro Pi project. Monitor your environment with multiple sensors and get serious with data.</p>
<p>The post <a href="https://www.raspberrypi.com/news/experiment-with-the-sense-hat-2nd-edition-out-now/">Experiment with the Sense HAT, 2nd Edition – out now!</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/experiment-with-the-sense-hat-2nd-edition-out-now/>

---

## The Man Who Wants AI to Help You ‘Cheat on Everything’

date: 2025-04-23, from: 404 Media Group

Roy Lee used AI to beat challenging technical interviews, now he wants people to do the same thing with every human interaction. We tested the tool and it kinda sucks. 

<br> 

<https://www.404media.co/the-man-who-wants-ai-to-help-you-cheat-on-everything/>

---

## llm-fragment-symbex

date: 2025-04-23, updated: 2025-04-23, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/simonw/llm-fragments-symbex">llm-fragment-symbex</a></strong></p>
I released a new LLM <a href="https://llm.datasette.io/en/stable/fragments.html#using-fragments-from-plugins">fragment loader plugin</a> that builds on top of my <a href="https://simonwillison.net/2023/Jun/18/symbex/">Symbex</a> project.</p>
<p>Symbex is a CLI tool I wrote that can run against a folder full of Python code and output functions, classes, methods or just their docstrings and signatures, using the Python AST module to parse the code.</p>
<p><code>llm-fragments-symbex</code> brings that ability directly to LLM. It lets you do things like this:</p>
<pre>llm install llm-fragments-symbex
llm -f symbex:path/to/project -s <span class="pl-s"><span class="pl-pds">'</span>Describe this codebase<span class="pl-pds">'</span></span></pre>

<p>I just ran that against my LLM project itself like this:</p>
<pre>cd llm
llm -f symbex:. -s <span class="pl-s"><span class="pl-pds">'</span>guess what this code does<span class="pl-pds">'</span></span></pre>

<p>Here's <a href="https://gist.github.com/simonw/b43d5b3ea897900f5c7de7173cc51c82#response">the full output</a>, which starts like this:</p>
<blockquote>
<p>This code listing appears to be an index or dump of Python functions, classes, and methods primarily belonging to a codebase related to large language models (LLMs). It covers a broad functionality set related to managing LLMs, embeddings, templates, plugins, logging, and command-line interface (CLI) utilities for interaction with language models. [...]</p>
</blockquote>
<p>That page also <a href="https://gist.github.com/simonw/b43d5b3ea897900f5c7de7173cc51c82#prompt-fragments">shows the input generated by the fragment</a> - here's a representative extract:</p>
<pre><span class="pl-c"># from llm.cli import resolve_attachment</span>
<span class="pl-k">def</span> <span class="pl-en">resolve_attachment</span>(<span class="pl-s1">value</span>):
    <span class="pl-s">"""Resolve an attachment from a string value which could be:</span>
<span class="pl-s">    - "-" for stdin</span>
<span class="pl-s">    - A URL</span>
<span class="pl-s">    - A file path</span>
<span class="pl-s"></span>
<span class="pl-s">    Returns an Attachment object.</span>
<span class="pl-s">    Raises AttachmentError if the attachment cannot be resolved."""</span>

<span class="pl-c"># from llm.cli import AttachmentType</span>
<span class="pl-k">class</span> <span class="pl-v">AttachmentType</span>:

    <span class="pl-k">def</span> <span class="pl-en">convert</span>(<span class="pl-s1">self</span>, <span class="pl-s1">value</span>, <span class="pl-s1">param</span>, <span class="pl-s1">ctx</span>):

<span class="pl-c"># from llm.cli import resolve_attachment_with_type</span>
<span class="pl-k">def</span> <span class="pl-en">resolve_attachment_with_type</span>(<span class="pl-s1">value</span>: <span class="pl-smi">str</span>, <span class="pl-s1">mimetype</span>: <span class="pl-smi">str</span>) <span class="pl-c1">-&gt;</span> <span class="pl-smi">Attachment</span>:</pre>

<p>If your Python code has good docstrings and type annotations, this should hopefully be a shortcut for providing full API documentation to a model without needing to dump in the entire codebase.</p>
<p>The above example used 13,471 input tokens and 781 output tokens, using <code>openai/gpt-4.1-mini</code>. That model is extremely cheap, so the total cost was 0.6638 cents - less than a cent.</p>
<p>The plugin itself was mostly written by o4-mini using the <a href="https://github.com/simonw/llm-fragments-github">llm-fragments-github</a> plugin to load the <a href="https://github.com/simonw/symbex">simonw/symbex</a> and <a href="https://github.com/simonw/llm-hacker-news">simonw/llm-hacker-news</a> repositories as example code:</p>
<pre>llm \
  -f github:simonw/symbex \
  -f github:simonw/llm-hacker-news \
  -s <span class="pl-s"><span class="pl-pds">"</span>Write a new plugin as a single llm_fragments_symbex.py file which</span>
<span class="pl-s">   provides a custom loader which can be used like this:</span>
<span class="pl-s">   llm -f symbex:path/to/folder - it then loads in all of the python</span>
<span class="pl-s">   function signatures with their docstrings from that folder using</span>
<span class="pl-s">   the same trick that symbex uses, effectively the same as running</span>
<span class="pl-s">   symbex . '*' '*.*' --docs --imports -n<span class="pl-pds">"</span></span> \
   -m openai/o4-mini -o reasoning_effort high<span class="pl-s"><span class="pl-pds">"</span></span></pre>

<p>Here's <a href="https://gist.github.com/simonw/c46390522bc839daab6c08bad3f87b39#response">the response</a>. 27,819 input, 2,918 output =  4.344 cents.</p>
<p>In working on this project I identified and fixed <a href="https://github.com/simonw/symbex/issues/46">a minor cosmetic defect</a> in Symbex itself. Technically this is a breaking change (it changes the output) so I shipped that as <a href="https://github.com/simonw/symbex/releases/tag/2.0">Symbex 2.0</a>.


    <p>Tags: <a href="https://simonwillison.net/tags/symbex">symbex</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/23/llm-fragment-symbex/#atom-everything>

---

## 'They Sometimes Worry That I’m Dead Already:' Deep-Sea Fishers Fight for Wi-Fi

date: 2025-04-23, from: 404 Media Group

Distant-water fishers are out on the ocean for up to 10 months at a time, with no contact to the outside world.  

<br> 

<https://www.404media.co/they-sometimes-worry-that-im-dead-already-deep-sea-fishers-fight-for-wi-fi/>

---

## Podcast: Cops Are Using AI Bots to Surveil People

date: 2025-04-23, from: 404 Media Group

A company selling cops AI undercover bots; a visit to the millennial saint; and the state of 404 Media. 

<br> 

<https://www.404media.co/podcast-cops-are-using-ai-bots-to-surveil-people/>

---

## The Canine Pacesetter

date: 2025-04-23, updated: 2025-04-23, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/04/23/the-canine-pacesetter/>

---

## rizzler: stop crying over Git merge conflicts and let AI handle the drama

date: 2025-04-23, from: Geoffrey Hunntley's blog

<p>&#x1F480; <strong>Ugh, merge conflicts:</strong> That sinking feeling when Git screams at you? We&apos;ve all been there. Manually fixing those tangled messes? It&apos;s giving... tedious. It&apos;s giving... waste of my precious time. &#x1F629;<br></p><p>&#x1F680; <strong>Enter rizzler:</strong> Your new AI bestie that actually <em>*gets*</em> Git. This</p> 

<br> 

<https://ghuntley.com/rizzler/>

---

## New Fedora and Ubuntu updates dropped, and they're amazing.

date: 2025-04-23, from: Libre News

Fedora and Ubuntu's latest releases bring some pretty interesting changes, improving the installer experience, bumping up the GNOME and Plasma versions, and finally welcoming KDE into Fedora's cool kids club 

<br> 

<https://thelibre.news/fedora-42-and-ubuntu-25-04-2/>

---

## Cronyism, Capitulation and Utter Chaos

date: 2025-04-23, from: Paul Krugman

And what the hell was Scott Bessent doing briefing Morgan clients? 

<br> 

<https://paulkrugman.substack.com/p/cronyism-capitulation-and-chaos>

---

**@Dave Winer's linkblog** (date: 2025-04-23, from: Dave Winer's linkblog)

Over 150 US university presidents sign letter decrying Trump administration. 

<br> 

<https://www.theguardian.com/us-news/2025/apr/21/us-university-presidents-trump-administration?CMP=Share_AndroidApp_Other>

---

## Quoting Gergely Orosz

date: 2025-04-23, updated: 2025-04-23, from: Simon Willison’s Weblog

<blockquote cite="https://x.com/GergelyOrosz/status/1914863335457034422"><p>Despite being rusty with coding (I don't code every day these days): since starting to use Windsurf / Cursor with the recent increasingly capable models: I am SO back to being as fast in coding as when I was coding every day  "in the zone" [...]</p>
<p>When you are driving with a firm grip on the steering wheel - because you know exactly where you are going, and when to steer hard or gently - it is just SUCH a big boost.</p>
<p>I have a bunch of side projects and APIs that I operate - but usually don't like to touch it because it's (my) legacy code.</p>
<p>Not any more.</p>
<p>I'm making large changes, quickly. These tools really feel like a massive multiplier for experienced devs - those of us who have it in our head <em>exactly</em> what we want to do and now the LLM tooling can move nearly as fast as my thoughts!</p></blockquote>
<p class="cite">&mdash; <a href="https://x.com/GergelyOrosz/status/1914863335457034422">Gergely Orosz</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/gergely-orosz">gergely-orosz</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/23/gergely-orosz/#atom-everything>

---

## A trick to feel less like cheating when you use LLMs

date: 2025-04-23, updated: 2025-04-23, from: Simon Willison’s Weblog

<p>An underestimated challenge in making productive use of LLMs is that it can <em>feel like cheating</em>.</p>
<p>One trick I've found that helps is to make sure that I am putting in way more text than the LLM is spitting out .</p>
<p>This goes for code: I'll <a href="https://claude.ai/share/4098384d-da9e-49a6-848e-222e00c91a24">pipe in a previous project</a> for it to modify, or ask it <a href="https://simonwillison.net/2024/Mar/30/ocr-pdfs-images/#ocr-how-i-built-this">to combine two</a>, or <a href="https://simonwillison.net/2025/Apr/20/llm-fragments-github/">paste in my research notes</a>.</p>
<p>It also goes for writing. I hardly ever publish material that was written by an LLM, but I feel least icky about content where I had an extensive voice conversation with the model and then asked it to turn that into notes.</p>
<p>I have a hunch that overcoming the feeling of guilt associated with using LLMs is one of the most important skills required to make effective use of them!</p>
<p>My gold standard for LLM usage remains this: <strong>would I be proud to stake my own credibility on the quality of the end result</strong>?</p>
<p>Related, this excellent advice <a href="https://seldo.com/posts/what-ive-learned-about-writing-ai-apps-so-far">from Laurie Voss</a>:</p>
<blockquote>
<p>Is what you're doing taking a large amount of text and asking the LLM to convert it into a smaller amount of text? Then it's probably going to be great at it. If you're asking it to convert into a roughly equal amount of text it will be so-so. If you're asking it to create more text than you gave it, forget about it.</p>
</blockquote>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/23/cheating/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-04-23, from: Dave Winer's linkblog)

Universities band together, fight “unprecedented government overreach.” 

<br> 

<https://arstechnica.com/culture/2025/04/200-university-presidents-reject-the-coercive-use-of-public-research-funding/>

---

**@Dave Winer's linkblog** (date: 2025-04-23, from: Dave Winer's linkblog)

Skype is shutting down in May after more than two decades of service. 

<br> 

<https://restofworld.org/2025/skype-shutting-down/>

---

**@Dave Winer's linkblog** (date: 2025-04-22, from: Dave Winer's linkblog)

Let&#39;s make the world better, one little evolutionary step at a time. 

<br> 

<http://scripting.com/2025/04/22.html#a121317>

---

**@Dave Winer's linkblog** (date: 2025-04-22, from: Dave Winer's linkblog)

OpenAI exec says the company would buy Google&#39;s Chrome browser if offered the chance. (That&#39;s a crazy idea. Chrome should be an independent company. No more tying the open web to Silicon Valley business models.) 

<br> 

<https://techcrunch.com/2025/04/22/openai-exec-says-the-company-would-buy-googles-chrome-browser-if-offered-the-chance/>

---

## Media Diet

date: 2025-04-22, from: Chris Coyier blog

🎧 The Telepathy Tapes — A friend recommended I listen to this and I tore through it a few weeks ago. It&#8217;s about autistic people and how apparently literally all of them are telepathic. It&#8217;s a bit of a rollercoaster that goes: Anyway, &#8220;The Hill&#8221;, a thing in the show where autistic people go in [&#8230;] 

<br> 

<https://chriscoyier.net/2025/04/22/media-diet-7/>

---

## Elegy for the Video Screenshot

date: 2025-04-22, from: Michael Tsai

Nora Deligter: It was around this time when streaming platforms like Netflix, HBO Max, Amazon Prime, and the Criterion Channel imposed a quiet embargo on the screenshot. At first, there were workarounds: users could continue to screenshot by using the browser Brave or by downloading extensions or third-party tools like Fireshot. But gradually, the digital-rights-management [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/22/elegy-for-the-video-screenshot/>

---

## DeskMat 1.0

date: 2025-04-22, from: Michael Tsai

Matthias Gansrigler: I have a new app out that lets you sweep things under the rug &#x2013; virtually: DeskMat for Mac.With DeskMat, you cover the mess of files and folders on your Desktop with a single click &#x2013; and show them again in just the same way.It makes for clean streams, screen sharing, and distraction-free [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/22/deskmat-1-0/>

---

## Framous 1.0 and Shareshot

date: 2025-04-22, from: Michael Tsai

Jason Snell: Some people, whether you&#8217;re in the media or software development or technical support, take and publish a lot of device screenshots. And while an image straight from an iPhone or Apple Watch looks fine, it often looks much better to be put in context by including the device it&#8217;s running on as a [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/22/framous-1-0-and-shareshot/>

---

## Automating Screenshots for the Mac App Store

date: 2025-04-22, from: Michael Tsai

Jesse Squires: Meeting the requirements for screenshots is a frustrating experience. On iOS, tooling like SimulatorStatusMagic, Nine41, and fastlane snapshot help make the process easier. However, on macOS there is much less support (and, sadly, demand) for automated tooling &#8212; so you are kind of on your own to figure it out. I spent some [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/22/automating-screenshots-for-the-mac-app-store/>

---

## Figment is another E Ink handheld game console made for text adventures (and maybe more)

date: 2025-04-22, from: Liliputing

<p>E Ink displays offer a paper-like viewing experience that makes them a good fit for eBook readers and digital signage. They consume less power than LCD or AMOLED screens, emit no light, and can be viewed using ambient light only. But they also tend to have much lower screen refresh rates than other display technologies [&#8230;]</p>
<p>The post <a href="https://liliputing.com/figment-is-another-e-ink-handheld-game-console-made-for-text-adventures-and-maybe-more/">Figment is another E Ink handheld game console made for text adventures (and maybe more)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/figment-is-another-e-ink-handheld-game-console-made-for-text-adventures-and-maybe-more/>

---

**@Feed for Alt USDS** (date: 2025-04-22, from: Feed for Alt USDS)

Wow! Thanks to your support, we just crossed 14,000 followers. 😍

How about this? Help us get to 15,000 and we'll do an AMA for you.
https://media.tenor.com/QiIRP06rosgAAAAC/wow-oh-my.gif?hh=498&ww=346 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lngd6ooqkc2b>

---

## This Game Boy Cartridge puts a Windows 3.1 clone on your handheld (Minesweeper and Paint clones included)

date: 2025-04-22, from: Liliputing

<p>GBS Windows is what happens when retro computing and retro gaming collide. Developer RubenRetro has created a Windows 3.1 clone for the Game Boy Color, complete with Minesweeper and MS Paint clones, as well as a few other apps including a media player. Perhaps the weirdest/coolest thing about GB Windows? It&#8217;s sold as an actual [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-game-boy-cartridge-puts-a-windows-3-1-clone-on-your-handheld-minesweeper-and-paint-clones-included/">This Game Boy Cartridge puts a Windows 3.1 clone on your handheld (Minesweeper and Paint clones included)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-game-boy-cartridge-puts-a-windows-3-1-clone-on-your-handheld-minesweeper-and-paint-clones-included/>

---

## Quoting Ellie Huxtable

date: 2025-04-22, updated: 2025-04-22, from: Simon Willison’s Weblog

<blockquote cite="https://twitter.com/ellie_huxtable/status/1914654266909974835"><p>I was against using AI for programming for a LONG time. It never felt effective.</p>
<p>But with the latest models + tools, it finally feels like a real performance boost</p>
<p>If you’re still holding out, do yourself a favor: spend a few focused hours actually using it</p></blockquote>
<p class="cite">&mdash; <a href="https://twitter.com/ellie_huxtable/status/1914654266909974835">Ellie Huxtable</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/22/ellie-huxtable/#atom-everything>

---

## Food Pantry Demand Rises as SNAP Enrollment Falls

date: 2025-04-22, from: Guy Kawasaki blog

Lendie R. Follett, Associate Professor of Business Analytics, Drake University. 

<br> 

<https://guykawasaki.substack.com/p/food-pantry-demand-rises-as-snap>

---

## Hackers are Injecting Mass Shooting Videos Into Random StarCraft 2 Matches

date: 2025-04-22, from: 404 Media Group

Players are reporting seeing graphic videos and hate symbols hacked into the game.  

<br> 

<https://www.404media.co/hackers-are-injecting-mass-shooting-videos-into-random-starcraft-2-matches/>

---

## ClickHouse gets lazier (and faster): Introducing lazy materialization

date: 2025-04-22, updated: 2025-04-22, from: Simon Willison’s Weblog

<p><strong><a href="https://clickhouse.com/blog/clickhouse-gets-lazier-and-faster-introducing-lazy-materialization">ClickHouse gets lazier (and faster): Introducing lazy materialization</a></strong></p>
Tom Schreiber describe's the latest optimization in ClickHouse, and in the process explores a whole bunch of interesting characteristics of columnar datastores generally.</p>
<p>As I understand it, the new "lazy materialization" feature means that if you run a query like this:</p>
<pre><code>select id, big_col1, big_col2
from big_table order by rand() limit 5
</code></pre>
<p>Those <code>big_col1</code> and <code>big_col2</code> columns won't be read from disk for every record, just for the five that are returned. This can dramatically improve the performance of queries against huge tables - for one example query ClickHouse report a drop from "219 seconds to just 139 milliseconds—with 40× less data read and 300× lower memory usage."</p>
<p>I'm linking to this mainly because the article itself is such a detailed discussion of columnar data patterns in general. It caused me to update my intuition for how queries against large tables can work on modern hardware. This query for example:</p>
<pre><code>SELECT helpful_votes
FROM amazon.amazon_reviews
ORDER BY helpful_votes DESC
LIMIT 3;
</code></pre>
<p>Can run in 70ms against a 150 million row, 70GB table - because in a columnar database you only need to read that <code>helpful_votes</code> integer column which adds up to just 600MB of data, and sorting 150 million integers on a decent machine takes no time at all.

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43763688">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/sql">sql</a>, <a href="https://simonwillison.net/tags/clickhouse">clickhouse</a>, <a href="https://simonwillison.net/tags/databases">databases</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/22/clickhouse-lazy-materializati/#atom-everything>

---

## Business Insider Founder Creates AI Exec For His New Newsroom, Immediately Hits On Her

date: 2025-04-22, from: 404 Media Group

 ‘Did the same rules apply to AI colleagues and native-AI workplaces? I didn’t know yet. That was one of the things I needed to figure out.’ 

<br> 

<https://www.404media.co/business-insider-founder-creates-ai-exec-for-his-new-newsroom-immediately-hits-on-her/>

---

**@Feed for Alt USDS** (date: 2025-04-22, from: Feed for Alt USDS)

A federal worker reflects on being pushed out by DOGE’s dismantling of public service.

Their work was taken, but their belief in people — and in service — remains.

🧵 Read their farewell letter: https://www.wethebuilders.org/posts/the-resignation-i-wish-i-could-submit

#WTB #AltGov #PublicService 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lng43ufht62k>

---

## Abusing DuckDB-WASM by making SQL draw 3D graphics (Sort Of)

date: 2025-04-22, updated: 2025-04-22, from: Simon Willison’s Weblog

<p><strong><a href="https://www.hey.earth/posts/duckdb-doom">Abusing DuckDB-WASM by making SQL draw 3D graphics (Sort Of)</a></strong></p>
Brilliant hack by Patrick Trainer who got an ASCII-art Doom clone running in the browser using convoluted SQL queries running against the WebAssembly build of DuckDB. Here’s the <a href="https://patricktrainer.github.io/duckdb-doom/">live demo</a>, and the <a href="https://github.com/patricktrainer/duckdb-doom">code on GitHub</a>.</p>
<div style="text-align: center; margin-bottom: 1em">
<img alt="Animated demo GIF. Green ASCII art on black, with a map on the right and a Doom-style first person view on the left." src="https://static.simonwillison.net/static/2025/duckdb-wasm-doom.gif">
</div>

<p>The SQL is <a href="https://github.com/patricktrainer/duckdb-doom/blob/c36bcdab16bea40d916d3165f7bfdb437b86dde2/index.html#L140-L224">so much fun</a>. Here’s a snippet that implements ray tracing as part of a SQL view:</p>
<pre><span class="pl-k">CREATE OR REPLACE</span> <span class="pl-k">VIEW</span> <span class="pl-en">render_3d_frame</span> <span class="pl-k">AS</span>
WITH RECURSIVE
    <span class="pl-c"><span class="pl-c">--</span> ...</span>
    rays <span class="pl-k">AS</span> (
        <span class="pl-k">SELECT</span> 
            <span class="pl-c1">c</span>.<span class="pl-c1">col</span>, 
            (<span class="pl-c1">p</span>.<span class="pl-c1">dir</span> <span class="pl-k">-</span> <span class="pl-c1">s</span>.<span class="pl-c1">fov</span><span class="pl-k">/</span><span class="pl-c1">2</span>.<span class="pl-c1">0</span> <span class="pl-k">+</span> <span class="pl-c1">s</span>.<span class="pl-c1">fov</span> <span class="pl-k">*</span> (<span class="pl-c1">c</span>.<span class="pl-c1">col</span><span class="pl-k">*</span><span class="pl-c1">1</span>.<span class="pl-c1">0</span> <span class="pl-k">/</span> (<span class="pl-c1">s</span>.<span class="pl-c1">view_w</span> <span class="pl-k">-</span> <span class="pl-c1">1</span>))) <span class="pl-k">AS</span> angle 
        <span class="pl-k">FROM</span> cols c, s, p
    ),
    raytrace(col, step_count, fx, fy, angle) <span class="pl-k">AS</span> (
        <span class="pl-k">SELECT</span> 
            <span class="pl-c1">r</span>.<span class="pl-c1">col</span>, 
            <span class="pl-c1">1</span>, 
            <span class="pl-c1">p</span>.<span class="pl-c1">x</span> <span class="pl-k">+</span> COS(<span class="pl-c1">r</span>.<span class="pl-c1">angle</span>)<span class="pl-k">*</span><span class="pl-c1">s</span>.<span class="pl-c1">step</span>, 
            <span class="pl-c1">p</span>.<span class="pl-c1">y</span> <span class="pl-k">+</span> SIN(<span class="pl-c1">r</span>.<span class="pl-c1">angle</span>)<span class="pl-k">*</span><span class="pl-c1">s</span>.<span class="pl-c1">step</span>, 
            <span class="pl-c1">r</span>.<span class="pl-c1">angle</span> 
        <span class="pl-k">FROM</span> rays r, p, s 
        <span class="pl-k">UNION ALL</span> 
        <span class="pl-k">SELECT</span> 
            <span class="pl-c1">rt</span>.<span class="pl-c1">col</span>, 
            <span class="pl-c1">rt</span>.<span class="pl-c1">step_count</span> <span class="pl-k">+</span> <span class="pl-c1">1</span>, 
            <span class="pl-c1">rt</span>.<span class="pl-c1">fx</span> <span class="pl-k">+</span> COS(<span class="pl-c1">rt</span>.<span class="pl-c1">angle</span>)<span class="pl-k">*</span><span class="pl-c1">s</span>.<span class="pl-c1">step</span>, 
            <span class="pl-c1">rt</span>.<span class="pl-c1">fy</span> <span class="pl-k">+</span> SIN(<span class="pl-c1">rt</span>.<span class="pl-c1">angle</span>)<span class="pl-k">*</span><span class="pl-c1">s</span>.<span class="pl-c1">step</span>, 
            <span class="pl-c1">rt</span>.<span class="pl-c1">angle</span> 
        <span class="pl-k">FROM</span> raytrace rt, s 
        <span class="pl-k">WHERE</span> <span class="pl-c1">rt</span>.<span class="pl-c1">step_count</span> <span class="pl-k">&lt;</span> <span class="pl-c1">s</span>.<span class="pl-c1">max_steps</span> 
          <span class="pl-k">AND</span> NOT EXISTS (
              <span class="pl-k">SELECT</span> <span class="pl-c1">1</span> 
              <span class="pl-k">FROM</span> map m 
              <span class="pl-k">WHERE</span> <span class="pl-c1">m</span>.<span class="pl-c1">x</span> <span class="pl-k">=</span> CAST(<span class="pl-c1">rt</span>.<span class="pl-c1">fx</span> <span class="pl-k">AS</span> <span class="pl-k">INT</span>) 
                <span class="pl-k">AND</span> <span class="pl-c1">m</span>.<span class="pl-c1">y</span> <span class="pl-k">=</span> CAST(<span class="pl-c1">rt</span>.<span class="pl-c1">fy</span> <span class="pl-k">AS</span> <span class="pl-k">INT</span>) 
                <span class="pl-k">AND</span> <span class="pl-c1">m</span>.<span class="pl-c1">tile</span> <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">'</span>#<span class="pl-pds">'</span></span>
          )
    ),
    <span class="pl-c"><span class="pl-c">--</span> ...</span></pre>

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43761998">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/sql">sql</a>, <a href="https://simonwillison.net/tags/webassembly">webassembly</a>, <a href="https://simonwillison.net/tags/duckdb">duckdb</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/22/duckdb-wasm-doom/#atom-everything>

---

## How 404 Media Is Navigating 'Economic Headwinds'

date: 2025-04-22, from: 404 Media Group

The economy is bad. Here's how we're doing, and how you can help us. 

<br> 

<https://www.404media.co/how-404-media-is-navigating-economic-headwinds/>

---

**@IIIF Mastodon feed** (date: 2025-04-22, from: IIIF Mastodon feed)

<p>⏱️ Registration for the 2025 <a href="https://glammr.us/tags/IIIF" class="mention hashtag" rel="tag">#<span>IIIF</span></a> Annual Conference closes on May 16!</p><p>The full program, travel information, and a link to register are available on our website: <a href="https://iiif.io/event/2025/leeds/" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="">iiif.io/event/2025/leeds/</span><span class="invisible"></span></a></p> 

<br> 

<https://glammr.us/@IIIF/114382466561184025>

---

## El día que la Tierra explotó: una película de Looney Tunes – una aventura absurda e hilarante

date: 2025-04-22, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Dirección: Peter Browngardt. Guion: Darrick Bachman, Peter Browngardt, Kevin Costello, Andrew Dickman, David Gemmill, Alex Kirwan, Ryan Kramer, Jason Reicher, Michael Ruocco, Johnny Ryan y Eddie Trigueros, basados en personajes creados por Tex Avery, Bob Clampett, Friz Freleng. País: EUA. Elenco vocal en español: Sebastián Llapur, Ernesto Lezama, Nycolle González, Óscar Flores. Más información de [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/resenas-el-dia-que-la-tierra-exploto-una-pelicula-de-looney-tunes/">El día que la Tierra explotó: una película de Looney Tunes – una aventura absurda e hilarante</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/resenas-el-dia-que-la-tierra-exploto-una-pelicula-de-looney-tunes/?utm_source=rss&utm_medium=rss&utm_campaign=resenas-el-dia-que-la-tierra-exploto-una-pelicula-de-looney-tunes>

---

## Return to Sender: Individual Deceased Personnel Files of the 6888th

date: 2025-04-22, from: National Archives, Text Message blog

Today’s post is by Cara Moore Lebonick, Archivist at the National Archives at St. Louis Three of the four women interred at Normandy-American Cemetery and Memorial as a result of World War II deaths were members of a Women’s Air Corps (WAC) unit commonly called The Six Triple-Eight. The 6888th Central Postal Directory was directed &#8230; <a href="https://text-message.blogs.archives.gov/2025/04/22/return-to-sender-individual-deceased-personnel-files-of-the-6888th/" class="more-link">Continue reading <span class="screen-reader-text">Return to Sender: Individual Deceased Personnel Files of the 6888th</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/04/22/return-to-sender-individual-deceased-personnel-files-of-the-6888th/>

---

## ZimaBoard 2 is a single-board server with Intel N150, dual SATA interfaces, and two 2.5 GbE LAN ports (crowdfunding)

date: 2025-04-22, from: Liliputing

<p>The ZimaBoard 2 is a new single-board server that&#8217;s available for pre-order now through a Kickstarter crowdfunding campaign, the board is expected to begin shipping in August, 2025. It&#8217;s basically a pocket-sized PC with a low-power Intel processor plus a few extra features that set it apart from most other mini PCs. For one thing, the [&#8230;]</p>
<p>The post <a href="https://liliputing.com/zimaboard-2-is-a-single-board-server-with-intel-n150-dual-sata-interfaces-and-two-2-5-gbe-lan-ports/">ZimaBoard 2 is a single-board server with Intel N150, dual SATA interfaces, and two 2.5 GbE LAN ports (crowdfunding)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/zimaboard-2-is-a-single-board-server-with-intel-n150-dual-sata-interfaces-and-two-2-5-gbe-lan-ports/>

---

## TestFlight Build Expired, New One Coming

date: 2025-04-22, from: NetNewsWire

<p>Note for people using the TestFlight builds — the latest build expired today (sorry about that!), but a new one (6.1.9) is waiting for App Store review. As soon as it gets through the process, you’ll have a new TestFlight build.</p>

<p>If you don’t want to wait, you can of course switch to the <a href="https://apps.apple.com/us/app/netnewswire-rss-reader/id1480640210">App Store build</a> instead without losing any data.</p> 

<br> 

<https://netnewswire.blog/2025/04/22/testflight-build-expired-new-one.html>

---

## Think Remarkable

date: 2025-04-22, from: Guy Kawasaki blog

NOW AVAILABLE IN PAPERBACK! 

<br> 

<https://guykawasaki.substack.com/p/think-remarkable>

---

## A5

date: 2025-04-22, updated: 2025-04-22, from: Simon Willison’s Weblog

<p><strong><a href="https://a5geo.org">A5</a></strong></p>
A5 is a new "global, equal-area, millimeter-accurate geospatial index" by Felix Palmer:</p>
<blockquote>
<p>It is the pentagonal equivalent of other DGGSs, like S2 or H3, but with higher accuracy and lower distortion.</p>
</blockquote>
<p>Effectively it's a way of dividing the entire world into pentagons where each one covers the same physical area (to within a 2% threshold) - like Uber's <a href="https://www.uber.com/blog/h3/">H3</a> but a bit weirder and more fun. An A5 reference implementation written in TypeScript is <a href="https://github.com/felixpalmer/a5">available on GitHub</a>.</p>
<p>This <a href="https://a5geo.org/examples/cells">interactive demo</a> helps show how it works:</p>
<p><img alt="Animated demo. I click around on a map, each click producing a distorted pentagon shape that tessellates with those nearby. The pentagons in Norway appear larger than those in Germany, which illustrates the distortion of the standard map projection." src="https://static.simonwillison.net/static/2025/a5.gif" /></p>
<p>Why pentagons? Here's <a href="https://a5geo.org/docs/">what the A5 docs say</a>:</p>
<blockquote>
<p>A5 is unique in that it uses a pentagonal tiling of a dodecahedron. [...] The benefit of choosing a dodecahedron is that it is the platonic solid with the lowest vertex curvature, and by this measure it is the most spherical of all the platonic solids. This is key for minimizing cell distortion as the process of projecting a platonic solid onto a sphere involves warping the cell geometry to force the vertex curvature to approach zero. Thus, the lower the original vertex curvature, the less distortion will be introduced by the projection.</p>
</blockquote>
<p>I had to look up <a href="https://en.wikipedia.org/wiki/Platonic_solid">platonic solids</a> on Wikipedia. There are only five: Tetrahedron, Cube, Octahedron, Dodecahedron and Icosahedron and they can be made using squares, triangles or (in the case of the Dodecahedron) pentagons, making the pentagon the most circle-like option.

    <p><small></small>Via <a href="https://bsky.app/profile/macwright.com/post/3ln6asbaduk2g">Tom MacWright</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/geospatial">geospatial</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/22/a5/#atom-everything>

---

## Join me today at 11aET for a live video chat with Robert Harris, author of the gripping papal election novel Conclave, on which the Oscar-winning film is based. 

date: 2025-04-22, from: Tina Brown

We'll discuss the backstage drama and centuries-old rituals behind laying one pope to rest and electing another. 

<br> 

<https://tinabrown.substack.com/p/join-me-today-at-11aet-for-a-live>

---

## Results From the 2025 Boston Marathon

date: 2025-04-22, updated: 2025-04-23, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/04/22/results-from-the-2025-boston-marathon/>

---

## "Abundance" is a book for an alternate timeline 

date: 2025-04-22, from: Dave Karpf's blog

There are many good ideas in Klein and Thompson's book, but no solutions to the crisis we now face. 

<br> 

<https://davekarpf.substack.com/p/abundance-is-a-book-for-an-alternate>

---

## Stop! In the Name of Trump!

date: 2025-04-22, from: Paul Krugman

A sudden-stop crisis comes to America 

<br> 

<https://paulkrugman.substack.com/p/stop-in-the-name-of-trump>

---

## Vibe Coding, Vibe Checking, and Vibe Blogging

date: 2025-04-22, from: O'Reilly Radar

For the past decade and a half, I&#8217;ve been exploring the intersection of technology, education, and design as a professor of cognitive science and design at UC San Diego. Some of you might have read my recent piece for O&#8217;Reilly Radar where I detailed my journey adding AI chat capabilities to Python Tutor, the free [&#8230;] 

<br> 

<https://www.oreilly.com/radar/vibe-coding-vibe-checking-and-vibe-blogging/>

---

## Working Through the Fear of Being Seen

date: 2025-04-22, updated: 2025-04-22, from: Simon Willison’s Weblog

<p><strong><a href="https://ashley.dev/posts/fear-of-being-seen/">Working Through the Fear of Being Seen</a></strong></p>
Heartfelt piece by Ashley Willis about the challenge of overcoming self-doubt in publishing online:</p>
<blockquote>
<p>Part of that is knowing who might read it. A lot of the folks who follow me are smart, opinionated, and not always generous. Some are friends. Some are people I’ve looked up to. And some are just really loud on the internet. I saw someone the other day drag a certain writing style. That kind of judgment makes me want to shrink back and say, never mind.</p>
</blockquote>
<p>Try to avoid being somebody who discourages others from sharing their thoughts.

    <p><small></small>Via <a href="https://bsky.app/profile/ashley.dev/post/3lneixhjamk2i">@ashley.dev</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/blogging">blogging</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/22/working-through-the-fear-of-being-seen/#atom-everything>

---

## Season Two. Preorder NOW.

date: 2025-04-22, from: Playdate Blog

<p>We&rsquo;ve just introduced <strong>Playdate Season Two</strong>, an exciting bundle of 12 brand-new Playdate games delivered over 6 weeks. And you can <a href="https://play.date/games/seasons/two"><em><strong>preorder it… RIGHT NOW!!</strong></em></a></p> 

<br> 

<https://news.play.date/news/s2/>

---

## Blue Checkmark Revival

date: 2025-04-22, updated: 2025-04-22, from: Tedium site

It took a little bit, but Bluesky found a way around its pesky extortion problem. That solution: The same one the former Twitter ditched just two years ago. 

<br> 

<https://feed.tedium.co/link/15204/17011940/bluesky-blue-checkmark-revival-analysis>

---

**@Feed for Alt USDS** (date: 2025-04-22, from: Feed for Alt USDS)

Nope nope nope. This is not what we used our technical skills for. This is not what government data is for. Our friends and family who are autistic are not this regime's test subjects.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lneonqkgvc2d>

---

**@Feed for Alt USDS** (date: 2025-04-22, from: Feed for Alt USDS)

The NLRB whistleblower report paints a chilling picture: when oversight fails, real damage follows. Let's talk about it:

🔗  https://open.substack.com/pub/altusds/p/when-the-watchdogs-are-silenced?r=5fies6&utm_campaign=post&utm_medium=web&showWelcomeOnShare=true 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnejugngna2o>

---

## Wasmtime LTS Releases

date: 2025-04-22, updated: 2025-04-22, from: Bytecode Alliance News

Wasmtime is a lightweight WebAssembly runtime built for speed, security, and standards-compliance. Wasmtime now supports long-term-support (LTS) releases that are maintained with security fixes for 2 years after their initial release. 

<br> 

<https://bytecodealliance.org/articles/wasmtime-lts>

---

## 42 Free and Open Source Projects Receive Funding to Reclaim the Public Nature of the Internet

date: 2025-04-22, updated: 2025-04-22, from: nlnet feed

 

<br> 

<https://nlnet.nl/news/2025/20250422-announcement-grants-CommonsFund.html>

---

## Debugging A Crawler Stall

date: 2025-04-22, from: Marginallia log

Some time ago, I migrated the crawler off the okhttp library, to use Java&rsquo;s builtin HTTP client. This seemed like a good idea at the time, but has led to a fair number of headaches.
Java&rsquo;s HttpClient has one damning flaw, and that that it doesn&rsquo;t support socket timeouts.
Its only supported timeout values are time to connect, and time until first byte of the response. This means the client can get stuck on a read call if a server stops responding, potentially for a very long time! 

<br> 

<https://www.marginalia.nu/log/a_118_crawler_stall/>

---

## Unfinished but shareable

date: 2025-04-22, from: Rachel Kwon blog

I made a page for my dad&rsquo;s collection of hats. It&rsquo;s an idea I had back in 2023 and as is my nature, it took me way too long and too much overthinking to get it to a shareable state. It&rsquo;s not finished, nor do I know what finished even means most of the time, and there are things I don&rsquo;t like about it that need to be fixed, but if there&rsquo;s one thing I know about myself, it&rsquo;s that I&rsquo;ll spin my wheels on the last 10% of a project that likely doesn&rsquo;t even matter in the grand scheme of things. 

<br> 

<https://kwon.nyc/notes/unfinished-but-shareable/>

---

**@Dave Winer's linkblog** (date: 2025-04-21, from: Dave Winer's linkblog)

Evolution is the result of lots of infinitesimal events, not some great god-like creation that young people tend to dream of. 

<br> 

<http://scripting.com/2025/04/21/141055.html>

---

**@Dave Winer's linkblog** (date: 2025-04-21, from: Dave Winer's linkblog)

US intelligence has determined that the Venezuelan government is not directing an invasion of the United States by the prison gang Tren de Aragua. 

<br> 

<https://wapo.st/3YG1FPg>

---

**@Dave Winer's linkblog** (date: 2025-04-21, from: Dave Winer's linkblog)

Today&#39;s Olbermann podcast is a must-listen. 

<br> 

<https://podcasts.apple.com/us/podcast/murkowski-could-lead-gop-revolt-against-trump-4-21-25/id1633301179?i=1000704258553>

---

## Vivo X200 Ultra smartphone is made for photography (especially with an optional Photographer Kit)

date: 2025-04-21, from: Liliputing

<p>The Vivo X200 Ultra is a premium smartphone with high-end specs including a 6.82 inch, 3168 x 1440 pixel, 120 Hz AMOLED display, a Qualcomm Snapdragon 8 Elite processor, and up to 16GB of RAM of 1TB of storage. But it&#8217;s the phone&#8217;s high-end camera system that really makes it stand out. Not only are there [&#8230;]</p>
<p>The post <a href="https://liliputing.com/vivo-x200-ultra-smartphone-is-made-for-photography-especially-with-an-optional-photographer-kit/">Vivo X200 Ultra smartphone is made for photography (especially with an optional Photographer Kit)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/vivo-x200-ultra-smartphone-is-made-for-photography-especially-with-an-optional-photographer-kit/>

---

## macOS 15.4.1

date: 2025-04-21, from: Michael Tsai

Juli Clover (release notes, security, enterprise, no developer, full installer, IPSW): According to Apple&#8217;s release notes, macOS Sequoia 15.4.1 includes important bug fixes and security updates, and is recommended for all users. The enterprise release notes include the tantalizing line, &#8220;Improves reliability when installing macOS updates,&#8221; but it&#8217;s not clear whether that refers to any [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/21/macos-15-4-1/>

---

## iOS 18.4.1 and iPadOS 18.4.1

date: 2025-04-21, from: Michael Tsai

Juli Clover (iOS/iPadOS release notes, security, no enterprise, no developer): There have been complaints about issues with CarPlay and deleted apps being restored, and iOS 18.4.1 includes several bug fixes. According to Apple&#8217;s release notes, the update includes bug fixes and security updates. Juli Clover: According to Apple, it is aware of reports that these [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/21/ios-18-4-1-and-ipados-18-4-1/>

---

## tvOS 18.4.1

date: 2025-04-21, from: Michael Tsai

Juli Clover (release notes, security, no developer): Apple today released tvOS 18.4.1, a minor update to the tvOS 18 operating system that came out last September. It fixes the same security bugs as iOS 18.4.1. Previously: tvOS 18.4 

<br> 

<https://mjtsai.com/blog/2025/04/21/tvos-18-4-1/>

---

## audioOS 18.4.1

date: 2025-04-21, from: Michael Tsai

Apple: This update includes performance and stability improvements. Previously: audioOS 18.4 

<br> 

<https://mjtsai.com/blog/2025/04/21/audioos-18-4-1/>

---

## visionOS 2.4.1

date: 2025-04-21, from: Michael Tsai

Juli Clover (release notes, security, no developer, no enterprise): According to Apple&#8217;s release notes, visionOS 2.4.1 includes bug fixes and security updates, and the software is recommended for all users. Previously: visionOS 2.4 

<br> 

<https://mjtsai.com/blog/2025/04/21/visionos-2-4-1/>

---

## Anbernic suspends US shipments of its handheld game consoles

date: 2025-04-21, from: Liliputing

<p>Anbernic is a Chinese company that&#8217;s responsible for a lot of the cheap-but-sometimes-decent handheld game consoles that have flooded the market in recent years. But the current tit-for-tat tariff battle between the US and China has prompted the company to suspend shipments from China to the US starting today. Customers in the US can still place orders [&#8230;]</p>
<p>The post <a href="https://liliputing.com/anbernic-suspends-us-shipments-of-its-handheld-game-consoles/">Anbernic suspends US shipments of its handheld game consoles</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/anbernic-suspends-us-shipments-of-its-handheld-game-consoles/>

---

## OpenAI o3 and o4-mini System Card

date: 2025-04-21, updated: 2025-04-21, from: Simon Willison’s Weblog

<p><strong><a href="https://openai.com/index/o3-o4-mini-system-card/">OpenAI o3 and o4-mini System Card</a></strong></p>
I'm surprised to see a combined System Card for o3 and o4-mini in the same document - I'd expect to see these covered separately.</p>
<p>The opening paragraph calls out the most interesting new ability of these models (see also <a href="https://simonwillison.net/2025/Apr/21/ai-assisted-search/#o3-and-o4-mini-are-really-good-at-search">my notes here</a>). Tool usage isn't new, but using tools in the chain of thought appears to result in some very significant improvements:</p>
<blockquote>
<p>The models use tools in their chains of thought to augment their capabilities; for example, cropping or transforming images, searching the web, or using Python to analyze data during their thought process.</p>
</blockquote>
<p>Section 3.3 on hallucinations has been gaining a lot of attention. Emphasis mine:</p>
<blockquote>
<p>We tested OpenAI o3 and o4-mini against PersonQA, an evaluation that aims to elicit hallucinations. PersonQA is a dataset of questions and publicly available facts that measures the model's accuracy on attempted answers.</p>
<p>We consider two metrics: accuracy (did the model answer the question correctly) and hallucination rate (checking how often the model hallucinated).</p>
<p>The o4-mini model underperforms o1 and o3 on our PersonQA evaluation. This is expected, as smaller models have less world knowledge and tend to hallucinate more. <strong>However, we also observed some performance differences comparing o1 and o3. Specifically, o3 tends to make more claims overall, leading to more accurate claims as well as more inaccurate/hallucinated claims.</strong> More research is needed to understand the cause of this result.</p>
<table style="margin: 0 auto">
  <caption style="text-align: center">Table 4: PersonQA evaluation</caption>
  <tr>
    <th>Metric</th>
    <th>o3</th>
    <th>o4-mini</th>
    <th>o1</th>
  </tr>
  <tr>
    <td>accuracy (higher is better)</td>
    <td>0.59</td>
    <td>0.36</td>
    <td>0.47</td>
  </tr>
  <tr>
    <td>hallucination rate (lower is better)</td>
    <td>0.33</td>
    <td>0.48</td>
    <td>0.16</td>
  </tr>
</table>
</blockquote>

<p>The benchmark score on OpenAI's internal PersonQA benchmark (as far as I can tell no further details of that evaluation have been shared) going from 0.16 for o1 to 0.33 for o3 is interesting, but I don't know if it it's interesting enough to produce dozens of headlines along the lines of "OpenAI's o3 and o4-mini hallucinate way higher than previous models".</p>
<p>The paper also talks at some length about "sandbagging". I’d previously encountered sandbagging <a href="https://simonwillison.net/2023/Apr/5/sycophancy-sandbagging/">defined as meaning</a> “where models are more likely to endorse common misconceptions when their user appears to be less educated”. The o3/o4-mini system card uses a different definition: “the model concealing its full capabilities in order to better achieve some goal” - and links to the recent Anthropic paper <a href="https://alignment.anthropic.com/2025/automated-researchers-sandbag/">Automated Researchers Can Subtly Sandbag</a>.</p>
<p>As far as I can tell this definition relates to the American English use of “sandbagging” <a href="https://www.merriam-webster.com/dictionary/sandbag">to mean</a> “to hide the truth about oneself so as to gain an advantage over another” - as practiced by poker or pool sharks.</p>
<p>(Wouldn't it be nice if we could have <em>just one</em> piece of AI terminology that didn't attract multiple competing definitions?)</p>
<p>o3 and o4-mini both showed some limited capability to sandbag - to attempt to hide their true capabilities in safety testing scenarios that weren't fully described. This relates to the idea of "scheming", which I wrote about with respect to the GPT-4o model card <a href="https://simonwillison.net/2024/Aug/8/gpt-4o-system-card/#scheming">last year</a>.


    <p>Tags: <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/o3">o3</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/21/openai-o3-and-o4-mini-system-card/#atom-everything>

---

## Decentralizing Schemes

date: 2025-04-21, updated: 2025-04-21, from: Simon Willison’s Weblog

<p><strong><a href="https://www.tbray.org/ongoing/When/202x/2025/04/16/Decentralized-Schemes">Decentralizing Schemes</a></strong></p>
Tim Bray discusses the challenges faced by decentralized Mastodon in that shared URLs to posts don't take into account people accessing Mastodon via their own instances, which breaks replies/likes/shares etc unless you further copy and paste URLs around yourself.</p>
<p>Tim proposes that the answer is URIs: a registered <code>fedi://mastodon.cloud/@timbray/109508984818551909</code> scheme could allow Fediverse-aware software to step in and handle those URIs, similar to how <code>mailto:</code> works.</p>
<p>Bluesky have <a href="https://www.iana.org/assignments/uri-schemes/uri-schemes.xhtml">registered</a> <code>at:</code> already, and there's also a <code>web+ap:</code> prefix registered with the intent of covering ActivityPub, the protocol used by Mastodon.


    <p>Tags: <a href="https://simonwillison.net/tags/social-media">social-media</a>, <a href="https://simonwillison.net/tags/tim-bray">tim-bray</a>, <a href="https://simonwillison.net/tags/bluesky">bluesky</a>, <a href="https://simonwillison.net/tags/urls">urls</a>, <a href="https://simonwillison.net/tags/mastodon">mastodon</a>, <a href="https://simonwillison.net/tags/decentralisation">decentralisation</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/21/decentralizing-schemes/#atom-everything>

---

## Silicon Valley Power Grab

date: 2025-04-21, from: Guy Kawasaki blog

Gregory H. Shill, Professor of Law & Michael and Brenda Sandler Faculty Fellow in Corporate Law, University of Iowa. 

<br> 

<https://guykawasaki.substack.com/p/silicon-valley-power-grab>

---

**@Feed for Alt USDS** (date: 2025-04-21, from: Feed for Alt USDS)

This advice could go for any agency leadership right now. 

Indeed, good for any leader who's in a difficult place but still has to lead.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lndl6z32tk2n>

---

**@Dave Winer's linkblog** (date: 2025-04-21, from: Dave Winer's linkblog)

A New Form of Verification on Bluesky. 

<br> 

<https://bsky.social/about/blog/04-21-2025-verification>

---

## autoregressive queens of failure

date: 2025-04-21, from: Geoffrey Hunntley's blog

<p>Have you ever had your AI coding assistant suggest something so off-base that you wonder if it&#x2019;s trolling you? Welcome to the world of autoregressive failure. </p><p>LLMs, the brains behind these assistants, are great at predicting the next word&#x2014;or line of code&#x2014;based on what&</p> 

<br> 

<https://ghuntley.com/gutter/>

---

## Adding Modest Friction

date: 2025-04-21, from: mrusme blog

Introducing human effort as a quiet filter in response to changing patterns of
engagement and effortless consumption. 

<br> 

<https://xn--gckvb8fzb.com/adding-modest-friction/>

---

## This cheap Intel N150 mini PC is smaller than a phone, has two HDMI ports, Ethernet, and an M.2 slot for storage

date: 2025-04-21, from: Liliputing

<p>There&#8217;s a new version of a pocket-sized mini PC available from AliExpress that packs an Intel N150 quad-core processor, 12GB of LPDDR5 RAM, and an M.2 slot into a body that measures just 145 x 62 x 20mm (5.71&#8243; x 2.44&#8243;  x 0.79&#8243;). While I&#8217;m reluctant to call this little computer a &#8220;stick,&#8221; it is [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-cheap-intel-n150-mini-pc-is-smaller-than-a-phone-has-two-hdmi-ports-ethernet-and-an-m-2-slot-for-storage/">This cheap Intel N150 mini PC is smaller than a phone, has two HDMI ports, Ethernet, and an M.2 slot for storage</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-cheap-intel-n150-mini-pc-is-smaller-than-a-phone-has-two-hdmi-ports-ethernet-and-an-m-2-slot-for-storage/>

---

## Banana Pi BPI-RV2 is a $35 RISC-V gateway board for networking applications

date: 2025-04-21, from: Liliputing

<p>The Banana Pi BPI-RV2 is a single-board computer designed for networking applications with a 2.5 GbE WAN port, five Gigabit LAN ports, and M.2 and Mini PCIe slots that can be used for SSDs, wireless modules, and other add-ons. The board is powered by a 1.25 GHz Siflower SF21H8898 quad-core RISC-V processor and runs open source [&#8230;]</p>
<p>The post <a href="https://liliputing.com/banana-pi-bpi-rv2-is-a-35-risc-v-gateway-board-for-networking-applications/">Banana Pi BPI-RV2 is a $35 RISC-V gateway board for networking applications</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/banana-pi-bpi-rv2-is-a-35-risc-v-gateway-board-for-networking-applications/>

---

## Results From the Robot Half-Marathon

date: 2025-04-21, updated: 2025-04-23, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/04/21/results-from-the-robot-half-marathon/>

---

**@Robert's feed at BlueSky** (date: 2025-04-21, from: Robert's feed at BlueSky)

👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lndh2kdjyk2n>

---

**@Dave Winer's linkblog** (date: 2025-04-21, from: Dave Winer's linkblog)

2022: Why you stopped blogging. 

<br> 

<http://scripting.com/2022/12/13/205115.html>

---

## The FBI Can't Find ‘Missing’ Records of Its Hacking Tools

date: 2025-04-21, from: 404 Media Group

The FBI bought multiple hacking tools for $250,000. Despite that, the FBI says it can't find any more records about the tools. 

<br> 

<https://www.404media.co/the-fbi-cant-find-missing-records-of-its-hacking-tools/>

---

## AI assisted search-based research actually works now

date: 2025-04-21, updated: 2025-04-21, from: Simon Willison’s Weblog

<p>For the past two and a half years the feature I've most wanted from LLMs is the ability to take on search-based research tasks on my behalf. We saw the first glimpses of this back in early 2023, with Perplexity (first launched <a href="https://en.wikipedia.org/wiki/Perplexity_AI">December 2022</a>, first prompt leak <a href="https://simonwillison.net/2023/Jan/22/perplexityai/">in January 2023</a>) and then the GPT-4 powered Microsoft Bing (which launched/cratered spectacularly <a href="https://simonwillison.net/2023/Feb/15/bing/">in February 2023</a>). Since then a whole bunch of people have taken a swing at this problem, most notably <a href="https://gemini.google.com/">Google Gemini</a> and <a href="https://openai.com/index/introducing-chatgpt-search/">ChatGPT Search</a>.</p>
<p>Those 2023-era versions were promising but very disappointing. They had a strong tendency to hallucinate details that weren't present in the search results, to the point that you couldn't trust anything they told you.</p>
<p>In this first half of 2025 I think these systems have finally crossed the line into being genuinely useful.</p>

<ul>
  <li><a href="https://simonwillison.net/2025/Apr/21/ai-assisted-search/#deep-research-from-three-different-vendors">Deep Research, from three different vendors</a></li>
  <li><a href="https://simonwillison.net/2025/Apr/21/ai-assisted-search/#o3-and-o4-mini-are-really-good-at-search">o3 and o4-mini are really good at search</a></li>
  <li><a href="https://simonwillison.net/2025/Apr/21/ai-assisted-search/#google-and-anthropic-need-to-catch-up">Google and Anthropic need to catch up</a></li>
  <li><a href="https://simonwillison.net/2025/Apr/21/ai-assisted-search/#lazily-porting-code-to-a-new-library-version-via-search">Lazily porting code to a new library version via search</a></li>
  <li><a href="https://simonwillison.net/2025/Apr/21/ai-assisted-search/#how-does-the-economic-model-for-the-web-work-now-">How does the economic model for the Web work now?</a></li>
</ul>

<h4 id="deep-research-from-three-different-vendors">Deep Research, from three different vendors</h4>
<p>First came the <strong>Deep Research</strong> implementations - <a href="https://blog.google/products/gemini/google-gemini-deep-research/">Google Gemini</a> and <a href="https://openai.com/index/introducing-deep-research/">then OpenAI</a> and <a href="https://www.perplexity.ai/hub/blog/introducing-perplexity-deep-research">then Perplexity</a> launched products with that name and they were all impressive: they could take a query, then churn away for several minutes assembling a lengthy report with dozens (sometimes hundreds) of citations. Gemini's version had a <em>huge</em> upgrade a few weeks ago when they <a href="https://blog.google/products/gemini/deep-research-gemini-2-5-pro-experimental/">switched it to using Gemini 2.5 Pro</a>, and I've had some outstanding results from it since then.</p>
<p>Waiting a few minutes for a 10+ page report isn't my ideal workflow for this kind of tool. I'm impatient, I want answers faster than that!</p>
<h4 id="o3-and-o4-mini-are-really-good-at-search">o3 and o4-mini are really good at search</h4>
<p>Last week, OpenAI released <a href="https://openai.com/index/introducing-o3-and-o4-mini/">search-enabled o3 and o4-mini</a> through <a href="https://chatgpt.com/">ChatGPT</a>. On the surface these look like the same idea as we've seen already: LLMs that have the option to call a search tool as part of replying to a prompt.</p>
<p>But there's one <em>very significant</em> difference: these models can run searches as part of the chain-of-thought reasoning process they use before producing their final answer.</p>
<p>This turns out to be a <em>huge</em> deal. I've been throwing all kinds of questions at ChatGPT (in o3 or o4-mini mode) and getting back genuinely useful answers grounded in search results. I haven't spotted a hallucination yet, and unlike prior systems I rarely find myself shouting "no, don't search for <em>that</em>!" at the screen when I see what they're doing.</p>
<p>Here are four recent example transcripts:</p>
<ul>
<li><a href="https://chatgpt.com/share/6805758b-acc8-8006-88a3-bdd78866ee15">Get me specs including VRAM for RTX 5090 and RTX PRO 6000 - plus release dates and prices</a></li>
<li><a href="https://chatgpt.com/share/68057580-02c8-8006-8ff4-7ae3ce816342">Find me a website tool that lets me paste a URL in and it gives me a word count and an estimated reading time</a></li>
<li><a href="https://chatgpt.com/share/6805756c-4268-8006-82ab-014f7c304622">Figure out what search engine ChatGPT is using for o3 and o4-mini</a></li>
<li><a href="https://chatgpt.com/share/6805755b-4aa0-8006-ab0b-42ae569da6a8">Look up Cloudflare r2 pricing and use Python to figure out how much this (screenshot of dashboard) costs</a></li>
</ul>
<p>Talking to o3 feels like talking to a Deep Research tool in real-time, without having to wait for several minutes for it to produce an overly-verbose report.</p>
<p>My hunch is that doing this well requires a very strong reasoning model. Evaluating search results is hard, due to the need to wade through huge amounts of spam and deceptive information. The disappointing results from previous implementations usually came down to the Web being full of junk.</p>
<p>Maybe o3, o4-mini and Gemini 2.5 Pro are the first models to cross the gullibility-resistance threshold to the point that they can do this effectively?</p>
<h4 id="google-and-anthropic-need-to-catch-up">Google and Anthropic need to catch up</h4>
<p>The user-facing <a href="https://gemini.google.com/">Google Gemini app</a> can search too, but it doesn't show me what it's searching for. As a result, I just don't trust it. Compare these examples from o3 and Gemini for the prompt "Latest post by Simon Willison" - o3 is much more transparent:</p>

    <div style="display: flex; width: 100%; gap: 10px; align-items: flex-start; margin-top: 1em; margin-bottom: 1em">
        <div style="flex: 1;">
            <img src="https://static.simonwillison.net/static/2025/search-o3.jpg" alt="o3 ChatGPT screenshot

Prompt: Latest post by Simon Willison

Thought for 25 seconds ›
2 searches • 3 sources

Latest post
• Title: &quot;Working Through the Fear of Being Seen&quot;
(via Ashley Willis)
• Published: April 22 2025 at 6: 40 AM

An overlay shows the details of that thinking session:

Thought for 25 seconds
• The user's request is pretty clear: they want to know the latest post by Simon Willison. I think the user may actually be Simon Willison themselves, asking for their own blog, which is hosted on SimonWillison.net. l'll need to search the web for Simon's latest blog post (probably from April 2025). Once I find it, l'll include the title, publication date, and a brief summary.
@ Searching the web
• Simon Willison blog April 2025
• Simon Willison blog 2025
Archive for Tuesday, 22nd April 2025 - Simon Willison's W...
* Working Through the Fear of Being Seen
* Simon Willison's Weblog" style="width: 100%; height: auto; display: block;" />
        </div>
        <div style="flex: 1;">
            <img src="https://static.simonwillison.net/static/2025/search-gemini.jpg" alt="Gemini Advanced 2.0 flash screenshot. Prompt is Latest post by Simon Willison.

Google Search
Try again without apps
Simon Willison's latest blog post is titled &quot;Here's how I use LLMs to help me write code&quot; and was published on March 11th, 2025. In this post, he discusses his experiences and strategies for effectively using Large Language Models (LLMs) in software development.
However, according to his Mastodon profile, his most recent activity includes:
• A boost of a post about 11m plugins on April 18th, 2025.
• A post about the Gemini 2.5 Flash model on April 17th, 2025.
• A post about OpenAl's new 03 and o4-mini models on April 16th, 2025.
• A thread discussing the CaMeL approach to mitigating prompt injection attacks on April 11th, 2025.
• An announcement of two new 11m plugins on April 10th, 2025.
It seems his blog might not always reflect his absolute latest thoughts and shorter updates, which he often shares on platforms like Mastodon." style="width: 100%; height: auto; display: block;" />
        </div>
    </div>

<p>This is a big missed opportunity since Google presumably have by far the best search index, so they really should be able to build a great version of this. And Google's AI assisted search on their regular search interface hallucinates <em>wildly</em> to the point that it's actively damaging their brand. I just checked and Google is still showing slop <a href="https://simonwillison.net/2024/Dec/29/encanto-2/">for Encanto 2</a>!</p>
<p>Claude also finally <a href="https://simonwillison.net/2025/Mar/20/">added web search</a> a month ago but it doesn't feel nearly as good. It's <a href="https://simonwillison.net/2025/Mar/21/anthropic-use-brave/">using the Brave search index</a> which I don't think is as comprehensive as Bing or Gemini, and searches don't happen as part of that powerful reasoning flow.</p>
<h4 id="lazily-porting-code-to-a-new-library-version-via-search">Lazily porting code to a new library version via search</h4>
<p>The truly magic moment for me came <a href="https://simonwillison.net/2025/Apr/18/gemini-image-segmentation/#gemini-2-5-flash-non-thinking">a few days ago</a>.</p>
<p>My <a href="https://simonwillison.net/2025/Apr/18/gemini-image-segmentation/">Gemini image segmentation tool</a> was using the <a href="https://www.npmjs.com/package/@google/generative-ai">@google/generative-ai</a> library which has been <a href="https://github.com/google-gemini/deprecated-generative-ai-js">loudly deprecated</a> in favor of the still in preview <a href="https://github.com/googleapis/js-genai">Google Gen AI SDK @google/genai</a> library.</p>
<p>I did <strong>not</strong> feel like doing the work to upgrade. On a whim, I pasted <a href="https://github.com/simonw/tools/blob/aa310a4f9cde07d5e8e87572f70fceca532884dd/gemini-mask.html">my full HTML code</a> (with inline JavaScript) into ChatGPT o4-mini-high and prompted:</p>
<blockquote>
<p><code>This code needs to be upgraded to the new recommended JavaScript library from Google. Figure out what that is and then look up enough documentation to port this code to it.</code></p>
</blockquote>
<p>(I couldn't even be bothered to look up the name of the new library myself!)</p>
<p>... it did <a href="https://chatgpt.com/share/68028f7b-11ac-8006-8150-00c4205a2507">exactly that</a>. It churned away thinking for 21 seconds, ran a bunch of searches, figured out the new library (which existed <em>way</em> outside of its training cut-off date), found the <a href="https://ai.google.dev/gemini-api/docs/migrate">upgrade instructions</a> and produced <a href="https://github.com/simonw/tools/commit/d199de213dc3f866a3b8efbcdd2dde34204dc409">a new version</a> of my code that worked perfectly.</p>
<p><img src="https://static.simonwillison.net/static/2025/o4-thinking.jpg" alt="Screenshot of AI assistant response about upgrading Google Gemini API code. Shows &quot;Thought for 21 seconds&quot; followed by web search results for &quot;Google Gemini API JavaScript library recommended new library&quot; with options including Google AI for Developers, GitHub, and Google for Developers. The assistant explains updating from GoogleGenerativeAI library to @google-ai/generative, with code samples showing: import { GoogleGenAI } from 'https://cdn.jsdelivr.net/npm/@google/genai@latest'; and const ai = new GoogleGenAI({ apiKey: getApiKey() });" style="max-width: 100%;" /></p>
<p>I ran this prompt on my phone out of idle curiosity while I was doing something else. I was <em>extremely</em> impressed and surprised when it did exactly what I needed.</p>
<h4 id="how-does-the-economic-model-for-the-web-work-now-">How does the economic model for the Web work now?</h4>
<p>I'm writing about this today because it's been one of my "can LLMs do this reliably yet?" questions for over two years now. I think they've just crossed the line into being useful as research assistants, without feeling the need to check <em>everything</em> they say with a fine-tooth comb.</p>
<p>I still don't trust them not to make mistakes, but I think I might trust them enough that I'll skip my own fact-checking for lower-stakes tasks.</p>
<p>This also means that a bunch of the potential dark futures we've been predicting for the last couple of years are a whole lot more likely to become true. Why visit websites if you can get your answers directly from the chatbot instead?</p>
<p>The lawsuits over this <a href="https://simonwillison.net/2023/Dec/31/ai-in-2023/#ethics-diabolically-complex">started flying</a> back when the LLMs were still mostly rubbish. The stakes are a lot higher now that they're actually good at it!</p>
<p>I can feel my usage of Google search taking a nosedive already. I expect a bumpy ride as a new economic model for the Web lurches into view.</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a>, <a href="https://simonwillison.net/tags/o3">o3</a>, <a href="https://simonwillison.net/tags/search">search</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/perplexity">perplexity</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/llm-reasoning">llm-reasoning</a>, <a href="https://simonwillison.net/tags/ai-assisted-search">ai-assisted-search</a>, <a href="https://simonwillison.net/tags/deep-research">deep-research</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/21/ai-assisted-search/#atom-everything>

---

## Keith McNally's Regrets... and his Dazzling, Driven Life 

date: 2025-04-21, from: Tina Brown

I hardly knew the restaurateur Keith McNally in his heyday of the 80s and 90s. 

<br> 

<https://tinabrown.substack.com/p/keith-mcnallys-regrets-and-his-dazzling>

---

**@Dave Winer's linkblog** (date: 2025-04-21, from: Dave Winer's linkblog)

Pete Hegseth was educated at Princeton and Harvard. Well well well. Sounds pretty elite to me. Hmmm. 

<br> 

<https://en.wikipedia.org/wiki/Pete_Hegseth>

---

**@Feed for Alt USDS** (date: 2025-04-21, from: Feed for Alt USDS)

Unfit to serve.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnd3a676kc2f>

---

**@Feed for Alt USDS** (date: 2025-04-21, from: Feed for Alt USDS)

The number of small offices that have been shuttered or cut so deeply they can't operate is staggering. 

And who knew about these offices? Only a few of us because they did their job quietly and efficiently. Only now, with their absence, do we see what government does for us.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnd372ywj22f>

---

**@Feed for Alt USDS** (date: 2025-04-21, from: Feed for Alt USDS)

A little inspiration by our friends at AltCDC 🔥

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnd2umlfc22f>

---

## Trump’s Cultural Revolution

date: 2025-04-21, from: Paul Krugman

The first thing we do is we kill intellectual inquiry 

<br> 

<https://paulkrugman.substack.com/p/trumps-cultural-revolution>

---

**@Dave Winer's linkblog** (date: 2025-04-21, from: Dave Winer's linkblog)

Pope Francis has died on Easter Monday aged 88. 

<br> 

<https://www.vaticannews.va/en/pope/news/2025-04/pope-francis-dies-on-easter-monday-aged-88.html>

---

**@Tomosino's Mastodon feed** (date: 2025-04-21, from: Tomosino's Mastodon feed)

<p>I'm hoping to see Tagle as the next Pope. Francis was a good one. Let's see if we can do two in a row.</p> 

<br> 

<https://tilde.zone/@tomasino/114375133848752464>

---

## Do imports of cheap solar panel and other technologies help or hurt domestic jobs in clean energy?

date: 2025-04-21, from: Hannah Richie at Substack

Without a comparative advantage, cheaper energy imports often help domestic jobs. 

<br> 

<https://www.sustainabilitybynumbers.com/p/clean-energy-imports-jobs>

---

**@Dave Winer's linkblog** (date: 2025-04-21, from: Dave Winer's linkblog)

Weird headline from the NYT.  Obviously Trump is defying the courts. That isn’t Van Hollen’s opinion, it’s a fact. When is the NYT going to show a tiny bit of courage. 

<br> 

<https://www.nytimes.com/live/2025/04/20/us/trump-news>

---

## I Do Not Recommend Proton Mail

date: 2025-04-21, from: mrusme blog

A review of my experience from using a **paid** Proton Mail account over the
past years and why I decided to leave the service after broken promises,
technical failures, and ethical disappointments. 

<br> 

<https://xn--gckvb8fzb.com/i-do-not-recommend-proton-mail/>

---

## Eleven new projects for NGI Pilots

date: 2025-04-21, updated: 2025-04-21, from: nlnet feed

 

<br> 

<https://nlnet.nl/news/2025/20250421-project-selection-pilots.html>

---

## 558. The Rolling Stones: Sex, Drugs and Rock ‘n’ Roll (Part 1)

date: 2025-04-20, from: This is history podcast

<p>What are the origins of Britain’s original bad boys, The Rolling Stones? Where did they all come from and how did they meet? What was it about the 1960s, with its air of sexual liberation, newly elected Labour government, and rising youth culture that allowed them to burst onto the musical scene? Who was Brian [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/558-the-rolling-stones-sex-drugs-and-rock-n-roll-part-1/">558. The Rolling Stones: Sex, Drugs and Rock ‘n’ Roll (Part 1)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/558-the-rolling-stones-sex-drugs-and-rock-n-roll-part-1/>

---

**@Tomosino's Mastodon feed** (date: 2025-04-20, from: Tomosino's Mastodon feed)

<p>If your life had a save/load option like a video game, what ridiculous thing would you do right after saving your progress?</p> 

<br> 

<https://tilde.zone/@tomasino/114372713432629865>

---

**@Robert's feed at BlueSky** (date: 2025-04-20, from: Robert's feed at BlueSky)

Something fun.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lnbe3kmpps2y>

---

## Beelink ME mini is a NAS with an Intel N200 processor and support for up to 6 SSDs

date: 2025-04-20, from: Liliputing

<p>The Beelink ME mini is a compact computer that measures 99 x 99 x 98.3mm (about 3.9&#8243; x 3.9&#8243; x 3.9&#8243;) and features a 6-watt Intel N200 quad-core processor based on Alder Lake-N architecture. It&#8217;s also Beelink&#8217;s first mini PC that&#8217;s positioned for use as a network-attached storage device. Inside this compact cube there are M.2 connectors [&#8230;]</p>
<p>The post <a href="https://liliputing.com/beelink-me-mini-is-a-nas-with-an-intel-n200-processor-and-support-for-up-to-6-ssds/">Beelink ME mini is a NAS with an Intel N200 processor and support for up to 6 SSDs</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/beelink-me-mini-is-a-nas-with-an-intel-n200-processor-and-support-for-up-to-6-ssds/>

---

**@Dave Winer's linkblog** (date: 2025-04-20, from: Dave Winer's linkblog)

Web typography: a refresher and history. 

<br> 

<https://zeldman.com/2025/04/20/web-typography-a-refresher-and-history/>

---

**@Dave Winer's linkblog** (date: 2025-04-20, from: Dave Winer's linkblog)

The Knicks Gave The Pistons A Lesson In Playoff Entropy. 

<br> 

<https://defector.com/the-knicks-gave-the-pistons-a-lesson-in-playoff-entropy>

---

## Quoting Ethan Mollick

date: 2025-04-20, updated: 2025-04-20, from: Simon Willison’s Weblog

<blockquote cite="https://www.oneusefulthing.org/p/on-jagged-agi-o3-gemini-25-and-everything"><p>In some tasks, AI is unreliable. In others, it is superhuman. You could, of course, say the same thing about calculators, but it is also clear that AI is different. It is already demonstrating general capabilities and performing a wide range of intellectual tasks, including those that it is not specifically trained on. Does that mean that o3 and Gemini 2.5 are AGI? Given the definitional problems, I really don’t know, but I do think they can be credibly seen as a form of “Jagged AGI” - superhuman in enough areas to result in real changes to how we work and live, but also unreliable enough that human expertise is often needed to figure out where AI works and where it doesn’t.</p></blockquote>
<p class="cite">&mdash; <a href="https://www.oneusefulthing.org/p/on-jagged-agi-o3-gemini-25-and-everything">Ethan Mollick</a>, On Jagged AGI</p>

    <p>Tags: <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/ethan-mollick">ethan-mollick</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/o3">o3</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/20/ethan-mollick/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-04-20, from: Dave Winer's linkblog)

Democrats dive into GOP districts, accusing Republicans of avoiding constituents. 

<br> 

<https://thehill.com/homenews/house/5256475-house-democrats-republican-tactics/>

---

## Note on 20th April 2025

date: 2025-04-20, updated: 2025-04-20, from: Simon Willison’s Weblog

<p>Now that Llama has very real competition in open weight models (Gemma 3, latest Mistrals, DeepSeek, Qwen) I think their <a href="https://techcrunch.com/2025/03/14/open-ai-model-licenses-often-carry-concerning-restrictions/">janky license</a> is becoming much more of a liability for them. It's just limiting enough that it could be the deciding factor for using something else.</p>

    <p>Tags: <a href="https://simonwillison.net/tags/meta">meta</a>, <a href="https://simonwillison.net/tags/open-source">open-source</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llama">llama</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/qwen">qwen</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/20/janky-license/#atom-everything>

---

## llm-fragments-github 0.2

date: 2025-04-20, updated: 2025-04-20, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/simonw/llm-fragments-github/releases/tag/0.2">llm-fragments-github 0.2</a></strong></p>
I upgraded my <code>llm-fragments-github</code> plugin to add a new fragment type called <code>issue</code>. It lets you pull the entire content of a GitHub issue thread into your prompt as a concatenated Markdown file. </p>
<p>(If you haven't seen fragments before I introduced them in <a href="https://simonwillison.net/2025/Apr/7/long-context-llm/">Long context support in LLM 0.24 using fragments and template plugins</a>.)</p>
<p>I used it just now to have Gemini 2.5 Pro provide feedback and attempt an implementation of a complex issue against my <a href="https://github.com/simonw/llm">LLM</a> project:</p>
<pre>llm install llm-fragments-github
llm -f github:simonw/llm \
  -f issue:simonw/llm/938 \
  -m gemini-2.5-pro-exp-03-25 \
  --system <span class="pl-s"><span class="pl-pds">'</span>muse on this issue, then propose a whole bunch of code to help implement it<span class="pl-pds">'</span></span></pre>

<p>Here I'm loading the FULL content of the <code>simonw/llm</code> repo using that <code>-f github:simonw/llm</code> fragment (<a href="https://github.com/simonw/llm-fragments-github?tab=readme-ov-file#usage">documented here</a>), then loading all of the comments from <a href="https://github.com/simonw/llm/issues/938">issue 938</a> where I discuss quite a complex potential refactoring. I ask Gemini 2.5 Pro to "muse on this issue" and come up with some code.</p>
<p>This worked <em>shockingly</em> well. Here's <a href="https://gist.github.com/simonw/a5f0c1e8184f4ddc8b71b30890fe690c#response">the full response</a>, which highlighted a few things I hadn't considered yet (such as the need to migrate old database records to the new tree hierarchy) and then spat out a whole bunch of code which looks like a solid start to the actual implementation work I need to do.</p>
<p>I ran this against Google's free Gemini 2.5 Preview, but if I'd used the paid model it would have cost me 202,680 input tokens and 10,460 output tokens for a total of 66.36 cents.</p>
<p>As a fun extra, the new <code>issue:</code> feature itself was written almost entirely by OpenAI o3, again using fragments. I ran this:</p>
<pre>llm -m openai/o3 \
  -f https://raw.githubusercontent.com/simonw/llm-hacker-news/refs/heads/main/llm_hacker_news.py \
  -f https://raw.githubusercontent.com/simonw/tools/refs/heads/main/github-issue-to-markdown.html \
  -s <span class="pl-s"><span class="pl-pds">'</span>Write a new fragments plugin in Python that registers issue:org/repo/123 which fetches that issue</span>
<span class="pl-s">      number from the specified github repo and uses the same markdown logic as the HTML page to turn that into a fragment<span class="pl-pds">'</span></span></pre>

<p>Here I'm using the ability to pass a URL to <code>-f</code> and giving it the full source of my <a href="https://github.com/simonw/llm-hacker-news/blob/main/llm_hacker_news.py">llm_hacker_news.py</a> plugin (which shows how a fragment can load data from an API) plus the <a href="https://github.com/simonw/tools/blob/main/github-issue-to-markdown.html">HTML source</a> of my <a href="https://tools.simonwillison.net/github-issue-to-markdown">github-issue-to-markdown</a> tool (which I wrote a few months ago <a href="https://gist.github.com/simonw/cd1afb97e595b40fdeedebb48be7f4f1">with Claude</a>). I effectively asked o3 to take that HTML/JavaScript tool and port it to Python to work with my fragments plugin mechanism.</p>
<p>o3 provided <a href="https://gist.github.com/simonw/249e16edffe6350f7265012bee9e3305#response">almost the exact implementation I needed</a>, and even included support for a <code>GITHUB_TOKEN</code> environment variable without me thinking to ask for it. Total cost: 19.928 cents.</p>
<p>On a final note of curiosity I tried running this prompt against <a href="https://simonwillison.net/2025/Apr/19/gemma-3-qat-models/">Gemma 3 27B QAT</a> running on my Mac via MLX and <a href="https://github.com/simonw/llm-mlx">llm-mlx</a>:</p>
<pre>llm install llm-mlx
llm mlx download-model mlx-community/gemma-3-27b-it-qat-4bit

llm -m mlx-community/gemma-3-27b-it-qat-4bit \
  -f https://raw.githubusercontent.com/simonw/llm-hacker-news/refs/heads/main/llm_hacker_news.py \
  -f https://raw.githubusercontent.com/simonw/tools/refs/heads/main/github-issue-to-markdown.html \
  -s <span class="pl-s"><span class="pl-pds">'</span>Write a new fragments plugin in Python that registers issue:org/repo/123 which fetches that issue</span>
<span class="pl-s">      number from the specified github repo and uses the same markdown logic as the HTML page to turn that into a fragment<span class="pl-pds">'</span></span></pre>

<p>That worked <a href="https://gist.github.com/simonw/feccff6ce3254556b848c27333f52543#response">pretty well too</a>. It turns out a 16GB local model file is powerful enough to write me an LLM plugin now!


    <p>Tags: <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/o3">o3</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/plugins">plugins</a>, <a href="https://simonwillison.net/tags/github">github</a>, <a href="https://simonwillison.net/tags/mlx">mlx</a>, <a href="https://simonwillison.net/tags/gemma">gemma</a>, <a href="https://simonwillison.net/tags/long-context">long-context</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/20/llm-fragments-github/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-04-20, from: Dave Winer's linkblog)

Dave&#39;s not here. 

<br> 

<https://www.youtube.com/watch?v=rtDAK7Umk7A>

---

**@Dave Winer's linkblog** (date: 2025-04-20, from: Dave Winer's linkblog)

I was looking around on my server and came across this neat little tree chart app. I probably wrote it ten years ago, but it still works, the wonder of the open web. Software you write for it tends to still run. 

<br> 

<http://scripting.com/code/testing/treechart/index.html>

---

**@Feed for Alt USDS** (date: 2025-04-20, from: Feed for Alt USDS)

If you have it in your budget, help CDC Mutual Aid.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnandxqslk2j>

---

**@Feed for Alt USDS** (date: 2025-04-20, from: Feed for Alt USDS)

In America, it's due process even for the fascists, but most especially for the vulnerable.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnamvxh52s2j>

---

**@Feed for Alt USDS** (date: 2025-04-20, from: Feed for Alt USDS)

We've been talking about all the ways you can get involved. Some days you won't be in the streets, but at home or in your community. Or editing articles and building an organization and posting here. 😉

It takes all of us in each our ways

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnalckqck22j>

---

**@Feed for Alt USDS** (date: 2025-04-20, from: Feed for Alt USDS)

We feel this so deeply

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lnal3fodx22j>

---

## On Jagged AGI: o3, Gemini 2.5, and everything after

date: 2025-04-20, from: One Useful Thing

New models and new thresholds 

<br> 

<https://www.oneusefulthing.org/p/on-jagged-agi-o3-gemini-25-and-everything>

---

## [COPY] A Primer on Financial Crises, Part II

date: 2025-04-20, from: Paul Krugman

On policy responses, and where we are 

<br> 

<https://paulkrugman.substack.com/p/copy-a-primer-on-financial-crises>

---

## A Primer on Financial Crises, Part II

date: 2025-04-20, from: Paul Krugman

On policy responses, and where we are 

<br> 

<https://paulkrugman.substack.com/p/a-primer-on-financial-crises-part>

---

## When Smart Goes Dumb

date: 2025-04-20, updated: 2025-04-20, from: Tedium site

We now have a lot of examples of cloud-enabled smart devices that don’t work anymore. What we don’t have is a plan B that prevents old gadgets from becoming garbage. 

<br> 

<https://feed.tedium.co/link/15204/17010734/when-smart-gadgets-stop-working>

---

**@Dave Winer's linkblog** (date: 2025-04-20, from: Dave Winer's linkblog)

This podcast might give you some idea of why Elon Musk is doing whatever he’s doing. Zaphod Beeblebrox has a role in it? 

<br> 

<https://www.wnycstudios.org/podcasts/tnyradiohour/articles/how-science-fiction-led-elon-musk-to-doge-plus-nikki-glaser-at-the-top-of-her-game>

---

**@Feed for Alt USDS** (date: 2025-04-20, from: Feed for Alt USDS)

Arrest quotas? Really? What can _possibly_ go wrong?

These are people's lives they're ruining for optics

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ln7ia5v7xc2f>

---

**@Dave Winer's linkblog** (date: 2025-04-20, from: Dave Winer's linkblog)

Protesters fill the streets in cities across the US to denounce Trump agenda. 

<br> 

<https://www.theguardian.com/us-news/2025/apr/19/anti-trump-rallies-protests>

---

## Understanding Memory Management, Part 5: Fighting with Rust

date: 2025-04-20, updated: 2025-04-20, from: Educated Guesswork blog

 

<br> 

<https://educatedguesswork.org/posts/memory-management-5/>

---

## Past selves

date: 2025-04-20, from: Rachel Kwon blog

Last month I had the chance to travel to two places I previously lived. In early March, I went to London for a work trip, and a couple of weekends ago I went to Chicago for a friend&rsquo;s milestone birthday. It was a strange feeling to revisit these two cities where I&rsquo;d lived and existed before but in the distant past, long enough ago that it felt like I was a different person. 

<br> 

<https://kwon.nyc/notes/past-selves/>

