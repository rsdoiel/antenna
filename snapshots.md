---
title: snapshots
updated: 2025-05-20 14:07:35
---

# snapshots

(date: 2025-05-20 14:07:35)

---

## Scientists Explain Why Trump's $175 Billion Golden Dome Is a Fantasy

date: 2025-05-20, from: 404 Media Group

Shooting missiles out of the sky from space could require a constellation of 36,000 satellites. 

<br> 

<https://www.404media.co/scientists-explain-why-trumps-175-billion-golden-dome-is-a-fantasy/>

---

## Gemini 2.5: Our most intelligent models are getting even better

date: 2025-05-20, updated: 2025-05-20, from: Simon Willison’s Weblog

<p><strong><a href="https://blog.google/technology/google-deepmind/google-gemini-updates-io-2025/#performance">Gemini 2.5: Our most intelligent models are getting even better</a></strong></p>
A bunch of new Gemini 2.5 announcements at Google I/O today.</p>
<p>2.5 Flash and 2.5 Pro are both getting audio output (previously previewed in Gemini 2.0) and 2.5 Pro is getting an enhanced reasoning mode called "Deep Think" - not yet available via the API.</p>
<p>Available today is the latest Gemini 2.5 Flash model, <code>gemini-2.5-flash-preview-05-20</code>. I added support to that in <a href="https://github.com/simonw/llm-gemini/releases/tag/0.20">llm-gemini 0.20</a> (and, if you're using the <a href="https://simonwillison.net/2025/May/14/llm-adds-support-for-tools/">LLM tool-use alpha</a>, <a href="https://github.com/simonw/llm-gemini/releases/tag/0.20a2">llm-gemini 0.20a2</a>).</p>
<p>I tried it out on my personal benchmark, as seen <a href="https://simonwillison.net/2025/May/20/google-io-pelican/">in the Google I/O keynote</a>!</p>
<pre><code>llm -m gemini-2.5-flash-preview-05-20 'Generate an SVG of a pelican riding a bicycle'
</code></pre>
<p>Here's what I got from the default model, with its thinking mode enabled:</p>
<p><img alt="The bicycle has spokes that look like a spider web. The pelican is goofy but recognizable." src="https://static.simonwillison.net/static/2025/flash-pelican-thinking.png" /></p>
<p><a href="https://gist.github.com/simonw/5b61866cb4ce67899934c29a9de1b4be">Full transcript</a>. 11 input tokens, 2,619 output tokens, 10,391 thinking tokens = 4.5537 cents.</p>
<p>I ran the same thing again with <code>-o thinking_budget 0</code> to turn off thinking mode entirely, and got this:</p>
<p><img alt="The bicycle has too many bits of frame in the wrong direction. The pelican is yellow and weirdly shaped." src="https://static.simonwillison.net/static/2025/flash-pelican-no-thinking.png" /></p>
<p><a href="https://gist.github.com/simonw/3e6740d2a99be4922af455d14bc1c943">Full transcript</a>. 11 input, 1,243 output = 0.0747 cents.</p>
<p>The non-thinking model is priced differently - still $0.15/million for input but $0.60/million for output as opposed to $3.50/million for thinking+output. The pelican it drew was  61x cheaper!</p>
<p>Finally, inspired by the keynote I ran this follow-up prompt to animate the more expensive pelican:</p>
<pre><code>llm --cid 01jvqjqz9aha979yemcp7a4885 'Now animate it'
</code></pre>
<p>This one is pretty great!</p>
<p><img src="https://static.simonwillison.net/static/2025/gemini-2.5-flash-preview-05-20-animated.svg" alt="The wheels and pedals are rotating and the pelican is bobbing up and down. This would be a fantastic animated pelican if the pelican didn't kind of suck!">


    <p>Tags: <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llm-reasoning">llm-reasoning</a>, <a href="https://simonwillison.net/tags/llm-pricing">llm-pricing</a></p> 

<br> 

<https://simonwillison.net/2025/May/20/gemini-25/#atom-everything>

---

## Why Apple Still Hasn’t Cracked AI

date: 2025-05-20, from: Michael Tsai

Mark Gurman and Drake Bennett (Reddit, Hacker News, 9to5Mac, Dithering): As for the Siri upgrade, Apple was targeting April 2025, according to people working on the technology. But when Federighi started running a beta of the iOS version, 18.4, on his own phone weeks before the operating system&#8217;s planned release, he was shocked to find [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/20/why-apple-still-hasnt-cracked-ai/>

---

## Delta’s IAP Scare Sheet

date: 2025-05-20, from: Michael Tsai

Riley Testut: Delta&#8217;s latest update with our revised Patreon sign-up flow has been approved! We can now freely mention our Patreon without giving Apple 27% of donations &#x1F389; Of course Apple still requires we offer in-app purchases&#8230;so we shoved them away at the bottom of Delta&#8217;s settings under &#8220;Alternate Payment Methods&#8221; &#175;\_(&#x30C4;)_/&#175; Riley Testut: It&#8217;s [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/20/deltas-iap-scare-sheet/>

---

## Stripe Managed Payments

date: 2025-05-20, from: Michael Tsai

JR Farr (Hacker News): At Stripe Sessions, we announced something we&#8217;ve been quietly crafting for months: Stripe Managed Payments &#8212; a new merchant of record experience, built directly into Stripe and launching this summer in private preview.This is a big step forward. Stripe Managed Payments is designed to handle all the heavy lifting for digital [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/20/stripe-managed-payments/>

---

**@Dave Winer's linkblog** (date: 2025-05-20, from: Dave Winer's linkblog)

FDA vaccine framework changes Covid shot recommendations. 

<br> 

<https://www.statnews.com/2025/05/20/fda-vaccine-framework-new-covid-shot-recommendations-vinay-prasad-marty-makary/>

---

## Google I/O Pelican

date: 2025-05-20, updated: 2025-05-20, from: Simon Willison’s Weblog

<p>Tucked into today's Google I/O keynote, <a href="https://www.youtube.com/live/o8NiE3XMPrM?si=lOK-8OX01SC9UEJa&amp;t=5270">a blink-and-you'll miss it moment</a>:</p>
<div style="max-width: 100%; margin-bottom: 0.4em">
    <video controls="controls" preload="none" aria-label="Snippet from Google I/O" aria-description="Overlaid text says Animate anything, and for a brief moment there is a vector-style animation of a pelican riding a bicycle" poster="https://static.simonwillison.net/static/2025/google-io-pelican.jpg" loop="loop" style="width: 100%; height: auto;" muted="muted">
        <source src="https://static.simonwillison.net/static/2025/google-io-pelican.mp4" type="video/mp4">
    </video>
</div>

<p>The pelican in the keynote <a href="https://twitter.com/alexanderchen/status/1924911741705629828">was created by Alexander Chen</a>. Here's <a href="https://gemini.google.com/share/cd81bbb98f33">the code they wrote</a> with the help of Gemini, which uses <a href="https://p5js.org/">p5.js</a> to power the animation.</p>

    <p>Tags: <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a>, <a href="https://simonwillison.net/tags/google-io">google-io</a>, <a href="https://simonwillison.net/tags/google">google</a></p> 

<br> 

<https://simonwillison.net/2025/May/20/google-io-pelican/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-05-20, from: Dave Winer's linkblog)

I have a new search engine for my blog, going back to 1994. Something new to explore that’s pretty old. For example this is a search for “Compuserve” which came up a lot, once. 

<br> 

<https://daytona.scripting.com/search?q=Compuserve>

---

## What Most Crypto Users Get Wrong About DeFi Security

date: 2025-05-20, from: Guy Kawasaki blog

Mingyi Liu, Ph.D. student in Computer Science, Georgia Institute of Technology. 

<br> 

<https://guykawasaki.substack.com/p/what-most-crypto-users-get-wrong>

---

## The Comic Book Sales Team

date: 2025-05-20, updated: 2025-05-20, from: Tedium site

Discussing the rise and fall of the “sales club,” a marketing tactic that gained extreme popularity with kids in the 1960s and 1970s. (Warning: This story ends kind of bleak.) 

<br> 

<https://feed.tedium.co/link/15204/17034729/comic-book-youth-sales-clubs-history>

---

## cityofaustin/atd-data-tech issues

date: 2025-05-20, updated: 2025-05-20, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/cityofaustin/atd-data-tech/issues">cityofaustin/atd-data-tech issues</a></strong></p>
I stumbled across this today while looking for interesting frequently updated data sources from local governments. It turns out the City of Austin's <a href="https://austinmobility.io/">Transportation Data &amp; Technology Services</a> department run everything out of a public GitHub issues instance, which currently has 20,225 closed and 2,002 open issues. They also publish an <a href="https://data.austintexas.gov/Transportation-and-Mobility/Transportation-Public-Works-Data-Tech-Services-Iss/rzwg-fyv8/about_data">exported copy</a> of the issues data through the <a href="https://data.austintexas.gov/">data.austintexas.gov</a> open data portal.


    <p>Tags: <a href="https://simonwillison.net/tags/open-data">open-data</a>, <a href="https://simonwillison.net/tags/github">github</a>, <a href="https://simonwillison.net/tags/github-issues">github-issues</a></p> 

<br> 

<https://simonwillison.net/2025/May/20/data-tech-issues/#atom-everything>

---

## Viral AI-Generated Summer Guide Printed by Chicago Sun-Times Was Made by Magazine Giant Hearst

date: 2025-05-20, from: 404 Media Group

The Chicago Sun-Times said "we understand this is unacceptable for us to distribute." 

<br> 

<https://www.404media.co/viral-ai-generated-summer-guide-printed-by-chicago-sun-times-was-made-by-magazine-giant-hearst/>

---

## GMKtec EVO-X1 Review: Mini PC shows big performance can come from small packages

date: 2025-05-20, from: Liliputing

<p>The GMKtec EVO-X1 is a mini PC that combines a versatile set of ports with a powerful 12-core, 24-thread AMD Ryzen AI 9 HX 370 Strix Point processor with 16-core RDNA 3.5 integrated graphics and an NPU that delivers up to 50 TOPS of AI performance. And all of that fits inside a compact body that&#8217;s [&#8230;]</p>
<p>The post <a href="https://liliputing.com/gmktec-evo-x1-review-mini-pc-shows-big-performance-can-come-from-small-packages/">GMKtec EVO-X1 Review: Mini PC shows big performance can come from small packages</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/gmktec-evo-x1-review-mini-pc-shows-big-performance-can-come-from-small-packages/>

---

## Live with Jared Bernstein

date: 2025-05-20, from: Paul Krugman

A recording from Paul Krugman and Jared Bernstein's live video 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/164019143/2c33d68d68b87b21e812ab40912c67e8.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/164019143/2c33d68d68b87b21e812ab40912c67e8.mp3" target="_blank">download audio/mpeg</a><br> 

<https://paulkrugman.substack.com/p/live-with-jared-bernstein>

---

## Civitai, Site Used to Generate AI Porn, Cut Off by Credit Card Processor

date: 2025-05-20, from: 404 Media Group

Civitai, a huge platform for sharing AI models and generating videos and images, has been cut off from its payment processor.  

<br> 

<https://www.404media.co/civitai-site-used-to-generate-ai-porn-cut-off-by-credit-card-processor/>

---

## Jewish American Heritage sites in the National Register of Historic Places

date: 2025-05-20, from: National Archives, Text Message blog

The month of May is, among other things, recognized as Jewish American Heritage Month, recognizing the contributions of Jewish Americans to American culture, history, and society.  There are a number of properties in the National Register series that include “Jewish” in the description, along with a number of synagogues and temples. In Newport, Rhode Island, &#8230; <a href="https://text-message.blogs.archives.gov/2025/05/20/jewish-american-heritage-sites-in-the-national-register-of-historic-places/" class="more-link">Continue reading <span class="screen-reader-text">Jewish American Heritage sites in the National Register of Historic Places</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/05/20/jewish-american-heritage-sites-in-the-national-register-of-historic-places/>

---

## Un mejor papá: una comedia entre una hija y alguien que no es su padre

date: 2025-05-20, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Dirección: Tracie Laymon. Guion: Tracie Laymon. País: EUA. Elenco: Barbie Ferreira, John Leguizamo, French Stewart, Lauren Spencer, Rachel Bay Jonesl Más información de la película: https://www.imdb.com/title/tt28613536/ La relación con el padre es parte clave de la identidad humana y hasta los memes lo reconocen. Si una mujer se viste de cierta manera o desempeña cierto [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/resenas-un-mejor-papa/">Un mejor papá: una comedia entre una hija y alguien que no es su padre</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/resenas-un-mejor-papa/?utm_source=rss&utm_medium=rss&utm_campaign=resenas-un-mejor-papa>

---

## Zotac reveals next-gen gaming handheld with AMD Strix Point and Manjaro Linux

date: 2025-05-20, from: Liliputing

<p>As promised, Zotac is using the Computex show in Taiwan this week to provide an early look at its next-gen handheld gaming PC. The company is showing off a prototype of the new Zotac Gaming Zone that looks, at first glance, a lot like last year&#8217;s model. But there are some big changes under the hood. [&#8230;]</p>
<p>The post <a href="https://liliputing.com/zotac-reveals-next-gen-gaming-handheld-with-amd-strix-point-and-manjaro-linux/">Zotac reveals next-gen gaming handheld with AMD Strix Point and Manjaro Linux</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/zotac-reveals-next-gen-gaming-handheld-with-amd-strix-point-and-manjaro-linux/>

---

## After months of coding with LLMs, I'm going back to using my brain

date: 2025-05-20, updated: 2025-05-20, from: Simon Willison’s Weblog

<p><strong><a href="https://albertofortin.com/writing/coding-with-ai">After months of coding with LLMs, I&#x27;m going back to using my brain</a></strong></p>
Interesting vibe coding retrospective from Alberto Fortin. Alberto is an experienced software developer and decided to use Claude an Cursor to rewrite an existing system using Go and ClickHouse - two new-to-him technologies.</p>
<blockquote>
<p>One morning, I decide to actually inspect closely what’s all this code that Cursor has been writing. It’s not like I was blindly prompting without looking at the end result, but I was optimizing for speed and I hadn’t actually sat down just to review the code. I was just building building building.</p>
<p>So I do a “coding review” session. And <strong>the horror ensues</strong>.</p>
<p>Two service files, in the same directory, with similar names, clearly doing a very similar thing. But the method names are different. The props are not consistent. One is called "WebAPIprovider", the other one "webApi". They represent the same exact parameter. The same method is redeclared multiple times across different files. The same config file is being called in different ways and retrieved with different methods.</p>
<p>No consistency, no overarching plan. It’s like I'd asked 10 junior-mid developers to work on this codebase, with no Git access, locking them in a room without seeing what the other 9 were doing.</p>
</blockquote>
<p>Alberto reset to a less vibe-heavy approach and is finding it to be a much more productive way of working:</p>
<blockquote>
<p>I’m defaulting to pen and paper, I’m defaulting to coding the first draft of that function on my own.  [...] But I’m not asking it to write new things from scratch, to come up with ideas or to write a whole new plan. I’m writing the plan. I’m the senior dev. The LLM is the assistant.</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/May/20/after-months-of-coding-with-llms/#atom-everything>

---

## Radxa NIO 5A is a single-board PC with up to 10 TOPS of AI performance

date: 2025-05-20, from: Liliputing

<p>The Radxa NIO 5A is a credit card-sized single-board computer that looks a bit like a Raspberry Pi model B. It even has a Raspberry Pi-compatible 40-pin GPIO header. But this upcoming mini PC has a few features that help set it apart. One is support for WiFi 6E. Another is a built-in MIPI-CSI connector. But [&#8230;]</p>
<p>The post <a href="https://liliputing.com/radxa-nio-5a-is-a-single-board-pc-with-up-to-10-tops-of-ai-performance/">Radxa NIO 5A is a single-board PC with up to 10 TOPS of AI performance</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/radxa-nio-5a-is-a-single-board-pc-with-up-to-10-tops-of-ai-performance/>

---

## Chicago Sun-Times Prints AI-Generated Summer Reading List With Books That Don't Exist

date: 2025-05-20, from: 404 Media Group

"I can't believe I missed it because it's so obvious. No excuses," the writer said. "I'm completely embarrassed." 

<br> 

<https://www.404media.co/chicago-sun-times-prints-ai-generated-summer-reading-list-with-books-that-dont-exist/>

---

## Conquer the command line, 3rd edition — out now!

date: 2025-05-20, from: Raspberry Pi News (.com)

<p>An update to one of our classic Essentials books, 'Conquer the command line': everything from beginner-friendly basics to advanced commands.</p>
<p>The post <a href="https://www.raspberrypi.com/news/conquer-the-command-line-3rd-edition-out-now/">Conquer the command line, 3rd edition — out now!</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/conquer-the-command-line-3rd-edition-out-now/>

---

## 'Configuration Issue' Allows Civitai Users to AI Generate Nonconsensual Porn Videos

date: 2025-05-20, from: 404 Media Group

404 Media found that people were using Civitai to create nonconsensual AI porn videos of anyone for a small price.  

<br> 

<https://www.404media.co/configuration-issue-allows-civitai-users-to-ai-generate-nonconsensual-porn-videos/>

---

## The Giant Sour Patch Kids

date: 2025-05-20, updated: 2025-05-20, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/05/20/the-giant-sour-patch-kids/>

---

## Reports of Deno's Demise Have Been Greatly Exaggerated

date: 2025-05-20, updated: 2025-05-20, from: Deno blog

Addressing recent Deno criticisms and sharing our vision for the future 

<br> 

<https://deno.com/blog/greatly-exaggerated>

---

## The NYC Algorithm Deciding Which Families Are Under Watch for Child Abuse

date: 2025-05-20, from: The Markup blog

How a family’s neighborhood, age, and mental health might get their case a deeper look 

<br> 

<https://themarkup.org/investigations/2025/05/20/the-nyc-algorithm-deciding-which-families-are-under-watch-for-child-abuse>

---

## How Trump Will Make the Tariff Shock Worse

date: 2025-05-20, from: Paul Krugman

Beware the three Ds: denial, dirigisme and deception 

<br> 

<https://paulkrugman.substack.com/p/how-trump-will-make-the-tariff-shock>

---

**@Dave Winer's linkblog** (date: 2025-05-20, from: Dave Winer's linkblog)

2024: It’s mostly harmless when ChatGPT has a hallucination, it’s a whole other story when a Tesla has one. 

<br> 

<https://daveverse.org/2024/10/11/musky-hype/>

---

## Antimicrobial Resistance Research and Innovation in Australia.

date: 2025-05-20, from: Lens.org news

A new reporting platform developed by The Lens and CSIRO reveals new insights on antimicrobial resistance research and innovation in Australia. A new resource launched today provides real-time, data-driven insights into Australia's antimicrobial resistance (AMR) research and patent landscape to help address key challenges in the AMR space. The report, Antimicrobial Resistance Research and Innovation  ... 

<br> 

<https://about.lens.org/antimicrobial-resistance-research-and-innovation-in-australia/>

---

## Academic Database Comparisons

date: 2025-05-20, from: Lens.org news

Pricing Comparisons Save The Librarians! Librarians are so much more than stewards of the stacks.They are heroes in public service.In a society awash in information, AI-generated confusion, misinformation and disinformation they are the first and best line of defence: trusted navigators to help us find meaning, relevance, evidence and actionable knowledge from reliable sources.  ... 

<br> 

<https://about.lens.org/database-comparisons/>

---

**@Feed for Alt USDS** (date: 2025-05-20, from: Feed for Alt USDS)

“The lesson of 1933 is you get out sooner rather than later.” Snyder is leaving. We’re staying. And resisting.
 🧱 Read more: https://bit.ly/4mmDWOs

 #WeTheBuilders #OnTyranny 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lpl4p3ooau2b>

---

## Microsoft's NLWeb and Agentic AI could trigger the resurgence of RSS

date: 2025-05-20, from: Conor O'Niell's blog, Cross Dominant

I&rsquo;ve never given up on RSS. It still provides enormous utility for me. The silly number of RSS converters in my GitHub account are testament to that.
The recent removal of all RSS feeds from the EPA Ireland site was a major disappointment and I&rsquo;ve been forced to Vibe Code a horror of a replacement scraper using their dreadful API instead.
In contrast, my heart skipped a beat when I started going through the README for Microsoft&rsquo;s NLWeb. 

<br> 

<https://conoroneill.net/2025/05/20/microsofts-nlweb-and-agentic-ai-could-trigger-the-resurgence-of-rss/>

---

**@Dave Winer's linkblog** (date: 2025-05-20, from: Dave Winer's linkblog)

Catching up in WordLand and KnicksLand. 

<br> 

<https://daveverse.org/2025/05/19/catching-up-in-wordland-and-knicksland/>

---

## MCP is the coming of Web 2.0 2.0

date: 2025-05-20, updated: 2025-05-20, from: Anil Dash

 

<br> 

<https://anildash.com/2025/05/20/mcp-web20-20/>

---

## Kill Switches in Chinese-Made Power Inverters

date: 2025-05-19, updated: 2025-05-19, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/05/19/kill-switches-in-chinese-made-power-inverters/>

---

## Jules

date: 2025-05-19, updated: 2025-05-19, from: Simon Willison’s Weblog

<p><strong><a href="https://jules.google.com/">Jules</a></strong></p>
It seems like <em>everyone</em> is rolling out AI coding assistants that attach to your GitHub account and submit PRs for you right now. We had <a href="https://simonwillison.net/2025/May/16/openai-codex/">OpenAI Codex</a> last week, today Microsoft announced <a href="https://github.blog/changelog/2025-05-19-github-copilot-coding-agent-in-public-preview/">GitHub Copilot coding agent</a> (confusingly not the same thing as <a href="https://githubnext.com/projects/copilot-workspace">Copilot Workspace</a>) and I found out just now that Google's Jules, <a href="https://developers.googleblog.com/en/the-next-chapter-of-the-gemini-era-for-developers/">announced in December</a>, is now in a beta preview.</p>
<p>I'm flying home from PyCon but I managed to try out Jules from my phone. I took <a href="https://github.com/datasette/datasette-chronicle/issues/3">this GitHub issue thread</a>, converted it to copy-pasteable Markdown with <a href="https://tools.simonwillison.net/github-issue-to-markdown">this tool</a> and pasted it into Jules, with no further instructions.</p>
<p>Here's <a href="https://github.com/datasette/datasette-chronicle/pull/6">the resulting PR</a> created from its branch. I haven't fully reviewed it yet and the tests aren't passing, so it's hard to evaluate from my phone how well it did. In a cursory first glance it looks like it's covered most of the requirements from the issue thread.</p>
<p>My habit of <a href="https://simonwillison.net/2022/Nov/26/productivity/#issue-thread">creating long issue threads</a> where I talk to myself about the features I'm planning is proving to be a good fit for outsourcing implementation work to this new generation of coding assistants.


    <p>Tags: <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/github">github</a>, <a href="https://simonwillison.net/tags/github-issues">github-issues</a></p> 

<br> 

<https://simonwillison.net/2025/May/19/jules/#atom-everything>

---

## Lilbits: Asus ROG XG Station eGPU dock with Thunderbolt 5, AYANEO Flip 1S handheld gaming PC, and Microsoft’s new command line text editor

date: 2025-05-19, from: Liliputing

<p>As Computex gets underway in Taiwan Asus has unveiled a new graphics dock that could make all of those OCuLink-equipped models we&#8217;ve seen recently look like old news. Meanwhile mini PC maker GMK is teasing its first computer with an Intel Arrow Lake processor, AYANEO is planning to launch a new handheld gaming PC with [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-asus-rog-xg-station-egpu-dock-with-thunderbolt-5-ayaneo-flip-1s-handheld-gaming-pc-and-microsofts-new-command-line-text-editor/">Lilbits: Asus ROG XG Station eGPU dock with Thunderbolt 5, AYANEO Flip 1S handheld gaming PC, and Microsoft&#8217;s new command line text editor</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-asus-rog-xg-station-egpu-dock-with-thunderbolt-5-ayaneo-flip-1s-handheld-gaming-pc-and-microsofts-new-command-line-text-editor/>

---

## Razer Blade 14 (2025) is a thinner gaming laptop with Ryzen AI 9 365 and NVIDIA RTX 50 series graphics

date: 2025-05-19, from: Liliputing

<p>The Razer Blade 14 has always been a relatively thin and light notebook, at least by gaming laptop standards. But the new 2025 version is a pretty slim notebook by any standard, measuring just 16.2mm (0.64 inches) at its thickest point and weighing just 1.63 kilograms (3.59 pounds). Despite the fact that the Razer Blade 14 [&#8230;]</p>
<p>The post <a href="https://liliputing.com/razer-blade-14-2025-is-a-thinner-gaming-laptop-with-ryzen-ai-9-365-and-nvidia-rtx-50-series-graphics/">Razer Blade 14 (2025) is a thinner gaming laptop with Ryzen AI 9 365 and NVIDIA RTX 50 series graphics</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/razer-blade-14-2025-is-a-thinner-gaming-laptop-with-ryzen-ai-9-365-and-nvidia-rtx-50-series-graphics/>

---

**@Dave Winer's linkblog** (date: 2025-05-19, from: Dave Winer's linkblog)

BYD launches the new e7 EV in China, starting at under $15,000. 

<br> 

<https://electrek.co/2025/05/19/byd-launches-new-e7-ev-china-starting-under-15000/>

---

**@Dave Winer's linkblog** (date: 2025-05-19, from: Dave Winer's linkblog)

Hillary Clinton bashes Republican women as a &#39;handmaiden of the patriarchy.&#39; 

<br> 

<https://www.foxnews.com/media/hillary-clinton-bashes-republican-women-says-gop-female-president-would-handmaiden-patriarchy>

---

## Walmart’s Onn 4K Plus is official: $30 Google TV media streaming box

date: 2025-05-19, from: Liliputing

<p>For the past few years one of the cheapest 4K-ready media streaming boxes you could buy has been Walmart&#8217;s $20 Onn 4K. The company also offers a $50 model called the Onn 4K Pro that has more memory and storage, a faster USB port, and an Ethernet jack. Now Walmart has introduced a mid-range version [&#8230;]</p>
<p>The post <a href="https://liliputing.com/walmarts-onn-4k-plus-is-official-30-google-tv-media-streaming-box/">Walmart&#8217;s Onn 4K Plus is official: $30 Google TV media streaming box</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/walmarts-onn-4k-plus-is-official-30-google-tv-media-streaming-box/>

---

## Asus ROG Bulwark Dock is a universal dock for the ROG Ally and other handhelds, phones, and PCs

date: 2025-05-19, from: Liliputing

<p>The ROG Bulwark Dock is a new 7-in-1 USB-C docking station from the gaming arm of Asus. While it&#8217;s clearly designed for use with the company&#8217;s ROG Ally handheld gaming PCs, there are a few things that make this dock interesting. One is that this thing&#8217;s meant for gamers so of course it has RGB [&#8230;]</p>
<p>The post <a href="https://liliputing.com/asus-rog-bulwark-dock-is-a-universal-dock-for-the-rog-ally-and-other-handhelds-phones-and-pcs/">Asus ROG Bulwark Dock is a universal dock for the ROG Ally and other handhelds, phones, and PCs</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/asus-rog-bulwark-dock-is-a-universal-dock-for-the-rog-ally-and-other-handhelds-phones-and-pcs/>

---

## Asus introduces a cheaper ROG Zephyrus G14 gaming laptop with Ryzen AI 9 270 and NVIDIA RTX 5060

date: 2025-05-19, from: Liliputing

<p>Earlier this year Asus introduced a ROG Zephyrus G14 portable gaming laptop with support for up to an AMD Ryzen AI 9 HX 370 Strix Point processor and NVIDIA RTX 5080 graphics. But with prices starting at $2500 that laptop is a bit of an investment. Mode Now Asus is introducing a cheaper version that&#8217;s [&#8230;]</p>
<p>The post <a href="https://liliputing.com/asus-introduces-a-cheaper-rog-zephyrus-g14-gaming-laptop-with-ryzen-ai-9-270-and-nvidia-rtx-5060/">Asus introduces a cheaper ROG Zephyrus G14 gaming laptop with Ryzen AI 9 270 and NVIDIA RTX 5060</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/asus-introduces-a-cheaper-rog-zephyrus-g14-gaming-laptop-with-ryzen-ai-9-270-and-nvidia-rtx-5060/>

---

## Epic Files Motion to Enforce Injunction

date: 2025-05-19, from: Michael Tsai

Epic Games: Yesterday afternoon, Apple broke its week-long silence on the status of our app review with a letter saying they will not act on the Fortnite app submission until the Ninth Circuit Court rules on the partial stay. We believe this violates the Court&#8217;s Injunction and we have filed a second Motion to Enforce [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/19/epic-files-motion-to-enforce-injunction/>

---

## Slow TestFlight Beta App Review

date: 2025-05-19, from: Michael Tsai

Craig Hockenberry: We&#8217;ve entered day 10 of waiting for a TestFlight beta app review on macOS. Have tried all the tricks, like submitting new builds, but there has been absolutely no movement.While Apple is doing everything it can to maintain the tight control it has over the App Stores and a huge revenue stream, we&#8217;re [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/19/slow-testflight-beta-app-review/>

---

## Rust at 10

date: 2025-05-19, from: Michael Tsai

Graydon Hoare (Slashdot): Rust turns 10 today, or at least it&#8217;s been 10 years since the 1.0 release. In this decade (and the near-decade of development before!) it has undergone growth and change I can barely comprehend the scale of. To say I&#8217;m surprised by its trajectory would be a vast understatement: I can only [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/05/19/rust-at-10/>

---

**@Dave Winer's linkblog** (date: 2025-05-19, from: Dave Winer's linkblog)

How did you end up starting a decentralized social platform? It’s not decentralized. 

<br> 

<https://www.wired.com/story/big-interview-jay-graber-bluesky/>

---

## Paul Krugman on Trump‘s budgetary “cruelty” and more

date: 2025-05-19, from: Paul Krugman

A recording from Paul Krugman and Anand Giridharadas's live video 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/163942158/10d37eb77cf5a204d1da88925c36d7da.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/163942158/10d37eb77cf5a204d1da88925c36d7da.mp3" target="_blank">download audio/mpeg</a><br> 

<https://paulkrugman.substack.com/p/paul-krugman-on-trumps-budgetary>

---

## Windows Subsystem for Linux is now open source (mostly)

date: 2025-05-19, from: Liliputing

<p>The Windows Subsystem for Linux (WSL) is a set of software tools that basically lets you install and run native Linux applications on a Windows PC without rebooting into a different operating system. You can basically install a Linux distro inside Windows and use it to run Linux apps almost as if they were native [&#8230;]</p>
<p>The post <a href="https://liliputing.com/windows-subsystem-for-linux-is-now-open-source-mostly/">Windows Subsystem for Linux is now open source (mostly)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/windows-subsystem-for-linux-is-now-open-source-mostly/>

---

## Telegram Gave Authorities Data on More than 20,000 Users

date: 2025-05-19, from: 404 Media Group

According to its newest transparency report, Telegram complied with more than 5,000 requests from authorities in the first three months of 2025. 

<br> 

<https://www.404media.co/telegram-gave-authorities-data-on-more-than-20-000-users/>

---

## Dell Max Pro Plus laptop supports an Qualcomm AI 100 NPU

date: 2025-05-19, from: Liliputing

<p>Plenty of companies are touting the AI capabilities of their PCs these days. But with Intel, AMD and Qualcomm all releasing mainstream mobile chips packing NPUs that deliver 40+ TOPS of AI performance, it&#8217;s hard to find an AI PC that really stands out. So Dell decided to go a step further with its new Dell [&#8230;]</p>
<p>The post <a href="https://liliputing.com/dell-max-pro-plus-laptop-supports-an-qualcomm-ai-100-npu/">Dell Max Pro Plus laptop supports an Qualcomm AI 100 NPU</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/dell-max-pro-plus-laptop-supports-an-qualcomm-ai-100-npu/>

---

## MSI Claw A8 handheld gaming PC has a Ryzen Z2 Extreme chip with 16-core graphics

date: 2025-05-19, from: Liliputing

<p>MSI&#8217;s first handheld gaming PC arrived in 2024, but it landed with a bit of a thud thanks to the lackluster performance of its Intel Meteor Lake processor. Since then the company has launched several new models powered by Intel Lunar Lake chips that deliver significantly better performance. Now MSI is expanding its handheld lineup [&#8230;]</p>
<p>The post <a href="https://liliputing.com/msi-claw-a8-handheld-gaming-pc-has-a-ryzen-z2-extreme-chip-with-16-core-graphics/">MSI Claw A8 handheld gaming PC has a Ryzen Z2 Extreme chip with 16-core graphics</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/msi-claw-a8-handheld-gaming-pc-has-a-ryzen-z2-extreme-chip-with-16-core-graphics/>

---

## 23andMe Sale Shows Your Genetic Data Is Worth $17

date: 2025-05-19, from: 404 Media Group

23andMe sold the genetic data of 15 million people for $256 million to a pharmaceutical company called Regeneron. 

<br> 

<https://www.404media.co/23andme-sale-shows-your-genetic-data-is-worth-17/>

---

## What makes people flourish?

date: 2025-05-19, from: Guy Kawasaki blog

Victor Counted, Byron R. Johnson, Tyler J. VanderWeele. 

<br> 

<https://guykawasaki.substack.com/p/what-makes-people-flourish>

---

## Kansas Mom Sues Porn Sites Because Her Son Visited Chaturbate 30 Times

date: 2025-05-19, from: 404 Media Group

The 14 year old's mother left an old laptop in a closet and now alleges it's adult sites' problem that he watched porn. 

<br> 

<https://www.404media.co/kansas-lawsuit-chaturbate-age-verification-old-laptop/>

---

## Enhance your application security with administrator protection

date: 2025-05-19, from: Windows Developer Blog

<h3>Introduction</h3>
<p>Administrator protection is a new Windows 11 platform security feature that aims to protect the admin users on the device while still allowing them to perform the necessary functions which may require use of admin level permissi</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2025/05/19/enhance-your-application-security-with-administrator-protection/">Enhance your application security with administrator protection</a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<br> 

<https://blogs.windows.com/windowsdeveloper/2025/05/19/enhance-your-application-security-with-administrator-protection/>

---

## AI may have just influenced Argentina’s election

date: 2025-05-19, from: Gary Marcus blog

A reader reports from Argentina 

<br> 

<https://garymarcus.substack.com/p/ai-may-have-just-influenced-argentinas>

---

## Destino final: lazos de sangre – la muerte ingeniosa ataca de nuevo

date: 2025-05-19, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Dirección: Zach Lipovski y Adam Stein. Guion: Gary Busick y Lori Evans Taylor basados en personajes creados por Jeffrey Reddick. País: EUA. Elenco: Kaitlyn Santa Juana, Teo Briones, Richard Harmon, Owen Patrick Joyner, Rya Kihlstedt, Anna Lore, Brec Bassinger, Tony Todd. Más información de la película: https://www.imdb.com/title/tt9619824/ “La vida es una tómbola”, reza la famosa [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/resenas-destino-final-lazos-de-sangre/">Destino final: lazos de sangre – la muerte ingeniosa ataca de nuevo</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/resenas-destino-final-lazos-de-sangre/?utm_source=rss&utm_medium=rss&utm_campaign=resenas-destino-final-lazos-de-sangre>

---

## The Windows Subsystem for Linux is now open source

date: 2025-05-19, from: Windows Developer Blog

<p>Today we’re very excited to announce the open-source release of the Windows Subsystem for Linux. This is the result of a multiyear effort to prepare for this, and a great closure to the first ever issue raised on the Microsoft/WSL repo: <a href="ht
</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2025/05/19/the-windows-subsystem-for-linux-is-now-open-source/">The Windows Subsystem for Linux is now open source</a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<br> 

<https://blogs.windows.com/windowsdeveloper/2025/05/19/the-windows-subsystem-for-linux-is-now-open-source/>

---

## Introducing Windows ML: The future of machine learning development on Windows

date: 2025-05-19, from: Windows Developer Blog

<p>Machine learning is at the forefront of technological innovation, enabling transformative user experiences. With the advances in client silicon and model miniaturization, new scenarios are feasible to run completely locally.</p>
<p>To support developers sh</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2025/05/19/introducing-windows-ml-the-future-of-machine-learning-development-on-windows/">Introducing Windows ML: The future of machine learning development on Windows</a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<br> 

<https://blogs.windows.com/windowsdeveloper/2025/05/19/introducing-windows-ml-the-future-of-machine-learning-development-on-windows/>

---

## Accelerating AI development with Windows-based AI workstations

date: 2025-05-19, from: Windows Developer Blog

<p>Today, we <a href="https://blogs.windows.com/windowsdeveloper/?p=57397">announced</a> powerful capabilities for AI development with Windows AI Foundry, featuring components like <a href="https://blogs.windows.com/windowsdeveloper/?p=57438">Windows ML</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2025/05/19/accelerating-ai-development-with-windows-based-ai-workstations/">Accelerating AI development with Windows-based AI workstations</a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<br> 

<https://blogs.windows.com/windowsdeveloper/2025/05/19/accelerating-ai-development-with-windows-based-ai-workstations/>

---

## Microsoft Store expands opportunities for Windows app developers

date: 2025-05-19, from: Windows Developer Blog

<p>The <a href="https://blogs.windows.com/windowsdeveloper/?p=57397">Windows developer platform continues to evolve</a>, bringing more quality, performance and innovation through Copilot+ PC. This translates into a tremendous opportunity for app develop</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2025/05/19/microsoft-store-expands-opportunities-for-windows-app-developers/">Microsoft Store expands opportunities for Windows app developers</a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<br> 

<https://blogs.windows.com/windowsdeveloper/2025/05/19/microsoft-store-expands-opportunities-for-windows-app-developers/>

---

## Advancing Windows for AI development: New platform capabilities and tools introduced at Build 2025

date: 2025-05-19, from: Windows Developer Blog

<p>We’re excited to be back at Build, a special moment each year to connect with the global developer community. It’s energizing to share what we’ve been working on, and just as important, to hear how developers are using Microsoft platforms to bu</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2025/05/19/advancing-windows-for-ai-development-new-platform-capabilities-and-tools-introduced-at-build-2025/">Advancing Windows for AI development: New platform capabilities and tools introduced at Build 2025</a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<br> 

<https://blogs.windows.com/windowsdeveloper/2025/05/19/advancing-windows-for-ai-development-new-platform-capabilities-and-tools-introduced-at-build-2025/>

---

## Huawei MateBook Fold Ultimate is an 18 inch foldable laptop that runs HarmonyOS

date: 2025-05-19, from: Liliputing

<p>The new Huawei MateBook Fold Ultimate is a portable computer that&#8217;s about the size of a 13 inch laptop. But when you unfold the laptop you&#8217;ll find that it&#8217;s basically a big tablet. Instead of keyboard on the bottom and a screen on top, the MateBook Fold has an 18 inch foldable display and a hinge [&#8230;]</p>
<p>The post <a href="https://liliputing.com/huawei-matebook-fold-ultimate-is-an-18-inch-foldable-laptop-that-runs-harmonyos/">Huawei MateBook Fold Ultimate is an 18 inch foldable laptop that runs HarmonyOS</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/huawei-matebook-fold-ultimate-is-an-18-inch-foldable-laptop-that-runs-harmonyos/>

---

## Extreme Raspberry Pi: projects taking Raspberry Pi to its very limits

date: 2025-05-19, from: Raspberry Pi News (.com)

<p>From the highest to the deepest and the coldest to the longest-running, these Raspberry Pis have been taken to extreme limits.</p>
<p>The post <a href="https://www.raspberrypi.com/news/extreme-raspberry-pi-projects-taking-raspberry-pi-to-its-very-limits/">Extreme Raspberry Pi: projects taking Raspberry Pi to its very limits</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/extreme-raspberry-pi-projects-taking-raspberry-pi-to-its-very-limits/>

---

## Student Makes Tool That Identifies ‘Radicals’ on Reddit, Deploys AI Bots to Engage With Them

date: 2025-05-19, from: 404 Media Group

The tool scans for users writing certain keywords on Reddit and assigns those users a so-called “radical score,” before deploying an AI-powered bot to automatically engage with the users to de-radicalize them. 

<br> 

<https://www.404media.co/student-makes-tool-that-identifies-radicals-on-reddit-deploys-ai-bots-to-engage-with-them/>

---

## Big Dog Barry 

date: 2025-05-19, from: Tina Brown

What&#8217;s new in Who Knew, the propulsive memoir by entertainment legend, digital pioneer, and billionaire entrepreneur Barry Diller 

<br> 

<https://tinabrown.substack.com/p/big-dog-barry>

---

## The UK’s Curious Case of Copyright for AI-Generated Works: What Section 9(3) Means Today

date: 2025-05-19, from: Authors Union blogs

This blog post reflects on the legislative history and jurisprudence behind Section 9(3) of CDPA—a provision that purports to offer copyright protection for computer-generated works.  

<br> 

<https://www.authorsalliance.org/2025/05/19/the-uks-curious-case-of-copyright-for-ai-generated-works-what-section-93-means-today/>

---

**@Dave Winer's linkblog** (date: 2025-05-19, from: Dave Winer's linkblog)

Trump is taking a wrecking ball to the pillars of American power and innovation. 

<br> 

<https://www.nytimes.com/2025/05/19/opinion/china-us-trade-tariffs.html?unlocked_article_code=1.IU8.3v3Z.PpYWpNXW9cV1&smid=url-share>

---

**@Dave Winer's linkblog** (date: 2025-05-19, from: Dave Winer's linkblog)

“It looks like most AI applications that need to access content online are resorting to scraping web pages.” 

<br> 

<https://val.demar.in/2025/05/scrape-wars/>

---

## Attack of the Sadistic Zombies

date: 2025-05-19, from: Paul Krugman

The GOP budget is incredibly cruel &#8212; and that&#8217;s the point 

<br> 

<https://paulkrugman.substack.com/p/attack-of-the-sadistic-zombies>

---

## 18 feet of fun

date: 2025-05-19, from: Status-Q blog

There&#8217;s an old joke amongst motorhome and campervan owners that everybody buys three vans, in a kind of Goldilocks process.   Your first one is probably something of an impulse buy, and after you&#8217;ve learned its limitations (in size, bed dimensions, interior layout, number of berths, or whatever) you then over-compensate, and so buy something <a class="more-link excerpt-link" href="https://statusq.org/archives/2025/05/19/13143/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<br> 

<https://statusq.org/archives/2025/05/19/13143/>

---

**@Dave Winer's linkblog** (date: 2025-05-19, from: Dave Winer's linkblog)

4 Audiobooks To Listen To Now. 

<br> 

<https://www.nytimes.com/video/books/100000010171660/4-audiobooks-to-listen-to-now.html>

---

## HP OmniBook 5 is a slim laptop with Snapdragon X, OLED display and $799 starting price

date: 2025-05-19, from: Liliputing

<p>The HP OmniBook 5 14 is a laptop with a 14 inch, 1920 x 1200 pixel OLED display, support for up to 32GB of LPDDR5X-8448 onboard memory, and an M.2 slot for user-replaceable PCIe Gen 4 storage. And the OmniBook 5 16 is a 16 inch model with similar specs, but a larger display. Powered by an [&#8230;]</p>
<p>The post <a href="https://liliputing.com/hp-omnibook-5-is-a-slim-laptop-with-snapdragon-x-oled-display-and-799-starting-price/">HP OmniBook 5 is a slim laptop with Snapdragon X, OLED display and $799 starting price</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/hp-omnibook-5-is-a-slim-laptop-with-snapdragon-x-oled-display-and-799-starting-price/>

---

## <default:div xmlns="http://www.w3.org/1999/xhtml" class="if-your-feed-reader-displays-this-then-it-is-violating-the-Atom-spec-RFC-4287-section-4.2.14"/>

date: 2025-05-19, updated: 2025-05-19, from: Tantek Çelik's blog

 

<br> 

<https://tantek.com/2025/138/t1/ran-bay-to-breakers>

---

**@Dave Winer's linkblog** (date: 2025-05-19, from: Dave Winer's linkblog)

2025 NBA championship odds: Thunder favored; Knicks second. 

<br> 

<https://www.foxsports.com/stories/nba/2024-25-nba-finals-odds-team-futures>

---

## Go Cryptography Security Audit

date: 2025-05-19, updated: 2025-05-19, from: Go language blog

Go&#39;s cryptography libraries underwent an audit by Trail of Bits. 

<br> 

<https://go.dev/blog/tob-crypto-audit>

---

## 566. The Great Northern War: Slaughter on the Steppes (Part 3)

date: 2025-05-18, from: This is history podcast

<p>Why was the greatest and most climactic battle of the Great Northern War, the Battle of Poltova, one of the most important in all European history? What drove Charles XII of Sweden to invade Russia in the Summer of 1707, in the lead up to that totemic clash? Exactly what happened on the day of [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/566-the-great-northern-war-slaughter-on-the-steppes-part-3/">566. The Great Northern War: Slaughter on the Steppes (Part 3)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/566-the-great-northern-war-slaughter-on-the-steppes-part-3/>

---

**@Dave Winer's linkblog** (date: 2025-05-18, from: Dave Winer's linkblog)

The Dems should be very loud now, because when Medicaid turns off for millions of Americans you know the Repubs are going to blame the Dems, immigrants, Ukraine, Biden, Hillary, Obama, Comey, etc. 

<br> 

<https://thehill.com/homenews/5306387-gop-budget-proposal-mcclennan-critique/>

---

## llm-pdf-to-images

date: 2025-05-18, updated: 2025-05-18, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/simonw/llm-pdf-to-images">llm-pdf-to-images</a></strong></p>
Inspired by my previous <a href="https://github.com/simonw/llm-video-frames">llm-video-frames</a> plugin, I thought it would be neat to have a plugin for LLM that can take a PDF and turn that into an image-per-page so you can feed PDFs into models that support image inputs but don't yet support PDFs.</p>
<p>This should now do exactly that:</p>
<div class="highlight highlight-source-shell"><pre>llm install llm-pdf-to-images
llm -f pdf-to-images:path/to/document.pdf <span class="pl-s"><span class="pl-pds">'</span>Summarize this document<span class="pl-pds">'</span></span></pre></div>

<p>Under the hood it's using the <a href="https://github.com/pymupdf/PyMuPDF">PyMuPDF</a> library. The key code to convert a PDF into images looks like this:</p>
<pre><span class="pl-k">import</span> <span class="pl-s1">fitz</span>
<span class="pl-s1">doc</span> <span class="pl-c1">=</span> <span class="pl-s1">fitz</span>.<span class="pl-c1">open</span>(<span class="pl-s">"input.pdf"</span>)
<span class="pl-k">for</span> <span class="pl-s1">page</span> <span class="pl-c1">in</span> <span class="pl-s1">doc</span>:
    <span class="pl-s1">pix</span> <span class="pl-c1">=</span> <span class="pl-s1">page</span>.<span class="pl-c1">get_pixmap</span>(<span class="pl-s1">matrix</span><span class="pl-c1">=</span><span class="pl-s1">fitz</span>.<span class="pl-c1">Matrix</span>(<span class="pl-c1">300</span><span class="pl-c1">/</span><span class="pl-c1">72</span>, <span class="pl-c1">300</span><span class="pl-c1">/</span><span class="pl-c1">72</span>))
    <span class="pl-s1">jpeg_bytes</span> <span class="pl-c1">=</span> <span class="pl-s1">pix</span>.<span class="pl-c1">tobytes</span>(<span class="pl-s1">output</span><span class="pl-c1">=</span><span class="pl-s">"jpg"</span>, <span class="pl-s1">jpg_quality</span><span class="pl-c1">=</span><span class="pl-c1">30</span>)</pre>

<p>Once I'd figured out that code I got o4-mini to write most of the rest of the plugin, using <a href="https://github.com/simonw/llm-fragments-github">llm-fragments-github</a> to load in the example code from the video plugin:</p>
<pre>llm -f github:simonw/llm-video-frames <span class="pl-s"><span class="pl-pds">'</span></span>
<span class="pl-s">import fitz</span>
<span class="pl-s">doc = fitz.open("input.pdf")</span>
<span class="pl-s">for page in doc:</span>
<span class="pl-s">    pix = page.get_pixmap(matrix=fitz.Matrix(300/72, 300/72))</span>
<span class="pl-s">    jpeg_bytes = pix.tobytes(output="jpg", jpg_quality=30)</span>
<span class="pl-s"><span class="pl-pds">'</span></span> -s <span class="pl-s"><span class="pl-pds">'</span>output llm_pdf_to_images.py which adds a pdf-to-images: </span>
<span class="pl-s"> fragment loader that converts a PDF to frames using fitz like in the example<span class="pl-pds">'</span></span> \
-m o4-mini</pre>

<p>Here's <a href="https://gist.github.com/simonw/27af84e4e533872bfd59fcba69b4166f">the transcript</a> - more details in <a href="https://github.com/simonw/llm-pdf-to-images/issues/1">this issue</a>.</p>
<p>I had some <em>weird</em> results testing this with GPT 4.1 mini. I created <a href="https://github.com/simonw/llm-pdf-to-images/blob/main/tests/blank-pages.pdf">a test PDF</a> with two pages - one white, one black - and ran a test prompt like this:</p>
<pre>llm -f <span class="pl-s"><span class="pl-pds">'</span>pdf-to-images:blank-pages.pdf<span class="pl-pds">'</span></span> \
  <span class="pl-s"><span class="pl-pds">'</span>describe these images<span class="pl-pds">'</span></span></pre>

<blockquote>
<p>The first image features a stylized red maple leaf with triangular facets, giving it a geometric appearance. The maple leaf is a well-known symbol associated with Canada.</p>
<p>The second image is a simple black silhouette of a cat sitting and facing to the left. The cat's tail curls around its body. The design is minimalistic and iconic.</p>
</blockquote>
<p>I got even wilder hallucinations for other prompts, like "summarize this document" or "describe all figures". I have a collection of those <a href="https://gist.github.com/simonw/2fbef11b1737a9ae7da1b2ff58998454">in this Gist</a>.</p>
<p>Thankfully this behavior is limited to GPT-4.1 mini. I upgraded to full GPT-4.1 and got <a href="https://gist.github.com/simonw/0713dc0ce00bd6cd4d5990f44c865964#prompt-1">much more sensible results</a>:</p>
<pre>llm -f <span class="pl-s"><span class="pl-pds">'</span>pdf-to-images:blank-pages.pdf<span class="pl-pds">'</span></span> \
  <span class="pl-s"><span class="pl-pds">'</span>describe these images<span class="pl-pds">'</span></span> -m gpt-4.1</pre>

<blockquote>
<p>Certainly! Here are the descriptions of the two images you provided:</p>
<ol>
<li>
<p><strong>First image:</strong> This image is completely white. It appears blank, with no discernible objects, text, or features.</p>
</li>
<li>
<p><strong>Second image:</strong> This image is entirely black. Like the first, it is blank and contains no visible objects, text, or distinct elements.</p>
</li>
</ol>
<p>If you have questions or need a specific kind of analysis or modification, please let me know!</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/plugins">plugins</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/pdf">pdf</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/hallucinations">hallucinations</a></p> 

<br> 

<https://simonwillison.net/2025/May/18/llm-pdf-to-images/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-05-18, from: Dave Winer's linkblog)

How to Take Medicaid from Millions of Americans, in Less Than 72 Hours. 

<br> 

<https://www.thebulwark.com/p/how-to-take-medicaid-from-millions-of-americans-republican-congress-72-hours-bill>

---

**@Dave Winer's linkblog** (date: 2025-05-18, from: Dave Winer's linkblog)

Massaal protest in Den Haag tegen Israël-standpunt kabinet rustig verlopen. 

<br> 

<https://nos.nl/artikel/2567762-massaal-protest-in-den-haag-tegen-israel-standpunt-kabinet-rustig-verlopen>

---

**@Dave Winer's linkblog** (date: 2025-05-18, from: Dave Winer's linkblog)

Mitchell Robinson was fantastic, esp in this play where he cornered the captain of the Celtics. I think of him as the Ringo Starr of the Knicks. 

<br> 

<https://www.youtube.com/shorts/erbRIhD58XI>

---

## How to grow as a technical writer

date: 2025-05-18, from: Blog by Fabrizio Ferri-Benedetti

<p>We all want to do a good job. Some of us also want to get better at our craft for a number of reasons, either practical or slightly delusional. Those include getting a raise, strengthening our résume, or simply ending the day with a fragile feeling of satisfaction after <a href="https://passo.uno/technical-writing-failures/">surviving failure</a> for the nth time. They’re all good goals, though the ways of achieving them are not always straightforward. Moreover, the path to career growth is riddled with self-doubt and impostor syndrome.</p> 

<br> 

<https://passo.uno/how-to-grow-senior-tech-writer/>

---

## Acer Swift Go thin and light laptops get Intel Lunar Lake chips, Microsoft Copilot+ features

date: 2025-05-18, from: Liliputing

<p>Acer is refreshing its Swift Go line of thin and light laptops with two new models sporting AI-branding because&#8230; 2025, I guess. The new Acer Swift Go 14 AI (SFG14-75/T) is a 14 inch laptop with a FHD+ display and support for up to an Intel Core Ultra 7 258V Lunar Lake processor, while the new Swift [&#8230;]</p>
<p>The post <a href="https://liliputing.com/acer-swift-go-thin-and-light-laptops-get-intel-lunar-lake-chips-microsoft-copilot-features/">Acer Swift Go thin and light laptops get Intel Lunar Lake chips, Microsoft Copilot+ features</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/acer-swift-go-thin-and-light-laptops-get-intel-lunar-lake-chips-microsoft-copilot-features/>

---

**@Dave Winer's linkblog** (date: 2025-05-18, from: Dave Winer's linkblog)

I finally figured out what the Dems need, the top guy has to be an entrepreneur. Needs to understand how to get people ready to believe the truth. And make the product deliver a truth the people choose. 

<br> 

<http://scripting.com/2025/05/17/144337.html>

---

## qwen2.5vl in Ollama

date: 2025-05-18, updated: 2025-05-18, from: Simon Willison’s Weblog

<p><strong><a href="https://ollama.com/library/qwen2.5vl">qwen2.5vl in Ollama</a></strong></p>
Ollama announced a complete overhaul of their vision support the other day. Here's the first new model they've shipped since then - a packaged version of <a href="https://github.com/QwenLM/Qwen2.5-VL">Qwen 2.5 VL</a> which was first released <a href="https://qwenlm.github.io/blog/qwen2.5-vl/">on January 26th 2025</a>. Here are my <a href="https://simonwillison.net/2025/Jan/27/qwen25-vl-qwen25-vl-qwen25-vl/">notes from that release</a>.</p>
<p>I upgraded Ollama (it auto-updates so I just had to restart it from the tray icon) and ran this:</p>
<pre><code>ollama pull qwen2.5vl
</code></pre>
<p>This downloaded a 6GB model file. I tried it out against my <a href="https://static.simonwillison.net/static/2025/cleo-sand.jpg">photo of Cleo rolling on the beach</a>:</p>
<pre><code>llm -a https://static.simonwillison.net/static/2025/cleo-sand.jpg \
  'describe this image' -m qwen2.5vl
</code></pre>
<p>And got a pretty good result:</p>
<blockquote>
<p>The image shows a dog lying on its back on a sandy beach. The dog appears to be a medium to large breed with a dark coat, possibly black or dark brown. It is wearing a red collar or harness around its chest. The dog's legs are spread out, and its belly is exposed, suggesting it might be rolling around or playing in the sand. The sand is light-colored and appears to be dry, with some small footprints and marks visible around the dog. The lighting in the image suggests it is taken during the daytime, with the sun casting a shadow of the dog to the left side of the image. The overall scene gives a relaxed and playful impression, typical of a dog enjoying time outdoors on a beach.</p>
</blockquote>
<p>Qwen 2.5 VL has a strong reputation for OCR, so I tried it on <a href="https://simonwillison.net/2025/May/17/pycon-poster/#datasette-poster">my poster</a>:</p>
<pre><code>llm -a https://static.simonwillison.net/static/2025/poster.jpg \
  'convert to markdown' -m qwen2.5vl
</code></pre>
<p>The result that came back:</p>
<blockquote>
<p>It looks like the image you provided is a jumbled and distorted text, making it difficult to interpret. If you have a specific question or need help with a particular topic, please feel free to ask, and I'll do my best to assist you!</p>
</blockquote>
<p>I'm not sure what went wrong here. My best guess is that the maximum resolution the model can handle is too small to make out the text, or maybe Ollama resized the image to the point of illegibility before handing it to the model?</p>
<p><strong>Update</strong>: I think this may be <a href="https://github.com/simonw/llm/issues/1046">a bug</a> relating to URL handling in LLM/llm-ollama. I tried downloading the file first:</p>
<pre><code>wget https://static.simonwillison.net/static/2025/poster.jpg
llm -m qwen2.5vl 'extract text' -a poster.jpg
</code></pre>
<p>This time it did a lot better. The results weren't perfect though - <a href="https://gist.github.com/simonw/2b46e932a16c92e673ea09dfc0186ec2#response">it ended up stuck in a loop</a> outputting the same code example dozens of times.</p>
<p>I tried with a different prompt - "extract text" - and it got confused by the three column layout, misread Datasette as "Datasetette" and missed some of the text. Here's <a href="https://gist.github.com/simonw/3ececa5f5ff109a81bc6893be06f00b1#response">that result</a>.</p>
<p>These experiments used <code>qwen2.5vl:7b</code> (6GB) - I expect the results would be better with the larger <code>qwen2.5vl:32b</code> (21GB) and <code>qwen2.5vl:72b</code> (71GB) models.</p>
<p>Fred Jonsson <a href="https://twitter.com/enginoid/status/1924092556079436086">reported a better result</a> using the MLX model via LM studio (~9GB model running in 8bit - I think that's <a href="https://huggingface.co/mlx-community/Qwen2.5-VL-7B-Instruct-8bit">mlx-community/Qwen2.5-VL-7B-Instruct-8bit</a>). His <a href="https://gist.github.com/enginoid/5c91c920124d4a2e0ab253df769e35fa">full output is here</a> - looks almost exactly right to me.


    <p>Tags: <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/ollama">ollama</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/qwen">qwen</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/mlx">mlx</a>, <a href="https://simonwillison.net/tags/ocr">ocr</a></p> 

<br> 

<https://simonwillison.net/2025/May/18/qwen25vl-in-ollama/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-05-18, from: Dave Winer's linkblog)

24 Books to Read This Summer. 

<br> 

<https://www.theatlantic.com/books/archive/2025/05/summer-reading-2025/682549/?gift=f35zZN0v_gDFE8xNwlQAHfDvi3oIhGiCtVmQxqXQ5xQ&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

## Acer Predator Helios Neo 14 AI is a compact gaming laptop with Intel Arrow Lake and NVIDIA RTX 50 Series graphics

date: 2025-05-18, from: Liliputing

<p>The Acer Predator Triton 14 AI isn&#8217;t the only new gaming laptop from Acer with a 14.5 inch display, an Intel Core Ultra 200 Series processor, and support for up to NVIDIA GeForce RTX 5070 graphics. Acer is also introducing a new Acer Predator Helios Neo 14 AI ahead of Computex. This model is a bit [&#8230;]</p>
<p>The post <a href="https://liliputing.com/acer-predator-helios-neo-14-ai-is-a-compact-gaming-laptop-with-intel-arrow-lake-and-nvidia-rtx-50-series-graphics/">Acer Predator Helios Neo 14 AI is a compact gaming laptop with Intel Arrow Lake and NVIDIA RTX 50 Series graphics</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/acer-predator-helios-neo-14-ai-is-a-compact-gaming-laptop-with-intel-arrow-lake-and-nvidia-rtx-50-series-graphics/>

---

## 2025 Python Packaging Ecosystem Survey

date: 2025-05-18, updated: 2025-05-18, from: Simon Willison’s Weblog

<p><strong><a href="https://anaconda.surveymonkey.com/r/py-package-2025">2025 Python Packaging Ecosystem Survey</a></strong></p>
If you make use of Python packaging tools (pip, Anaconda, uv, dozens of others) and have opinions please spend a few minutes with this year's packaging survey. This one was "Co-authored by 30+ of your favorite Python Ecosystem projects, organizations and companies."


    <p>Tags: <a href="https://simonwillison.net/tags/surveys">surveys</a>, <a href="https://simonwillison.net/tags/packaging">packaging</a>, <a href="https://simonwillison.net/tags/pip">pip</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/psf">psf</a></p> 

<br> 

<https://simonwillison.net/2025/May/18/2025-python-packaging-ecosystem-survey/#atom-everything>

---

## Deindustrialization: Causes and Consequences

date: 2025-05-18, from: Paul Krugman

It&#8217;s not mostly about globalization, and it&#8217;s not what ails workers 

<br> 

<https://paulkrugman.substack.com/p/deindustrialization-causes-and-consequences>

---

## Quoting Neal Stephenson

date: 2025-05-18, updated: 2025-05-18, from: Simon Willison’s Weblog

<blockquote cite="https://nealstephenson.substack.com/p/remarks-on-ai-from-nz"><p>Speaking of the effects of technology on individuals and society as a whole, Marshall McLuhan wrote that every augmentation is also an amputation. [...] Today, quite suddenly, billions of people have access to AI systems that provide augmentations, and inflict amputations, far more substantial than anything McLuhan could have imagined. This is the main thing I worry about currently as far as AI is concerned. I follow conversations among professional educators who all report the same phenomenon, which is that their students use ChatGPT for everything, and in consequence learn nothing. We may end up with at least one generation of people who are like the Eloi in H.G. Wells’s The Time Machine, in that they are mental weaklings utterly dependent on technologies that they don’t understand and that they could never rebuild from scratch were they to break down.</p></blockquote>
<p class="cite">&mdash; <a href="https://nealstephenson.substack.com/p/remarks-on-ai-from-nz">Neal Stephenson</a>, Remarks on AI from NZ</p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/neal-stephenson">neal-stephenson</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/education">education</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/May/18/neal-stephenson/#atom-everything>

---

## Ongoing clang improvements for C and C++ safety

date: 2025-05-18, from: Programmer's Toolbox (Paolo Pinto's blog)

<p>The playlist for <a href="https://www.youtube.com/playlist?list=PL_R5A0lGi1AA3VCp6hZtgJKq4snmBQGDF">2025 EuroLLVM Developers' Meeting</a> has recently been made available, and it has a couple of interesting talks related to Apple's work on improving memory safety for C and C++, while having safer integration with Swift code.</p><p>Apple has added a few language extensions for bounds checking, fat pointers, that would already help quite a bit. They are quite similar to Microsoft's <a href="https://learn.microsoft.com/en-us/cpp/code-quality/understanding-sal?view=msvc-170">SAL</a> annotations used in Visual C++.</p><p>The advantage with Apple's approach is that by having this on an open source compiler like clang, there is an higher chance that the C and C++ communities adopt such extensions, and eventually make up to the respective ISO standards.</p><p>The relevant talks on security were:</p><p>
    <ul>
        <li><a href="https://www.youtube.com/watch?v=rYOCPBUM1Hs">Recipe for Eliminating Entire Classes of Memory Safety Vulnerabilities in C and C++</a></li>
        <li><a href="https://www.youtube.com/watch?v=rlevLn831R4">Adopting -fbounds-safety in practice</a></li>
        <li><a href="https://www.youtube.com/watch?v=AVmgL-97kqo">C++ interoperability with memory-safe languages</a></li>
    </ul>
</p><p>I found quite interesting the approach they decided to take to talk about current state of security, with memory safe languages being islands, the amount of existing C and C++ code in the industry, oceans, and the interop layers between languages, the beach.</p> 

<br> 

<http://www.progtools.org/blog.php?entry=20250518>

