---
title: snapshots
updated: 2025-08-11 06:09:33
---

# snapshots

(date: 2025-08-11 06:09:33)

---

## Did the Old Robber Barons Get a Bad Rap?

date: 2025-08-11, from: Tina Brown

I&#8217;m gutted that the third season of Julian Fellowes&#8217;s The Gilded Age on HBO ended last night. 

<br> 

<https://tinabrown.substack.com/p/did-the-old-robber-barons-get-a-bad>

---

## The Political Economy of Incompetence

date: 2025-08-11, from: Paul Krugman

How Hannah Arendt predicted Stephen Moore 

<br> 

<https://paulkrugman.substack.com/p/the-political-economy-of-incompetence>

---

## Happy Maker Monday — show us your Raspberry Pi builds!

date: 2025-08-11, from: Raspberry Pi News (.com)

<p>Another Maker Monday is upon us! </p>
<p>The post <a href="https://www.raspberrypi.com/news/happy-maker-monday-show-us-your-raspberry-pi-builds/">Happy Maker Monday — show us your Raspberry Pi builds!</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/happy-maker-monday-show-us-your-raspberry-pi-builds/>

---

## One man in his time plays many parts…

date: 2025-08-11, from: Status-Q blog

I did like this article: 27 Notes on Growing Old(er), by the author Ian Leslie. Excerpt: Wisdom is meant to be the great compensation for growing older. Though your your knees sound like they’re unlocking a safe when you bend down, and you can’t straighten up without an “oof”, you can at least revel in <a class="more-link excerpt-link" href="https://statusq.org/archives/2025/08/11/13259/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<br> 

<https://statusq.org/archives/2025/08/11/13259/>

---

## qwen-image-mps

date: 2025-08-11, updated: 2025-08-11, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/ivanfioravanti/qwen-image-mps">qwen-image-mps</a></strong></p>
Ivan Fioravanti built this Python CLI script for running the <a href="https://huggingface.co/Qwen/Qwen-Image">Qwen/Qwen-Image</a> image generation model on an Apple silicon Mac, optionally using the <a href="https://github.com/ModelTC/Qwen-Image-Lightning">Qwen-Image-Lightning</a> LoRA to dramatically speed up generation.</p>
<p>Ivan has tested it this on 512GB and 128GB machines and it ran <a href="https://x.com/ivanfioravanti/status/1954646355458269562">really fast</a> - 42 seconds on his M3 Ultra. I've run it on my 64GB M2 MacBook Pro - after quitting almost everything else - and it just about manages to output images after pegging my GPU (fans whirring, keyboard heating up) and occupying 60GB of my available RAM. With the LoRA option running the script to generate an image took 9m7s on my machine.</p>
<p>Ivan merged <a href="https://github.com/ivanfioravanti/qwen-image-mps/pull/3">my PR</a> adding inline script dependencies for <a href="https://github.com/astral-sh/uv">uv</a> which means you can now run it like this:</p>
<pre><code>uv run https://raw.githubusercontent.com/ivanfioravanti/qwen-image-mps/refs/heads/main/qwen-image-mps.py \
-p 'A vintage coffee shop full of raccoons, in a neon cyberpunk city' -f
</code></pre>
<p>The first time I ran this it downloaded the 57.7GB model from Hugging Face and stored it in my <code>~/.cache/huggingface/hub/models--Qwen--Qwen-Image</code> directory. The <code>-f</code> option fetched an extra 1.7GB <code>Qwen-Image-Lightning-8steps-V1.0.safetensors</code> file to my working directory that sped up the generation.</p>
<p>Here's the resulting image:</p>
<p><img alt="Digital artwork of a cyberpunk-style coffee shop populated entirely by raccoons as customers, with illegible neon signs visible in the windows, pendant lighting over the counter, menu boards on the wall, bottles on shelves behind the bar, and raccoons sitting at tables and the counter with coffee cups" src="https://static.simonwillison.net/static/2025/racoon-cyberpunk-coffee.jpg" />

    <p><small></small>Via <a href="https://x.com/ivanfioravanti/status/1954284146064576966">@ivanfioravanti</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/macos">macos</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/uv">uv</a>, <a href="https://simonwillison.net/tags/qwen">qwen</a>, <a href="https://simonwillison.net/tags/text-to-image">text-to-image</a>, <a href="https://simonwillison.net/tags/ai-in-china">ai-in-china</a>, <a href="https://simonwillison.net/tags/ivan-fioravanti">ivan-fioravanti</a></p> 

<br> 

<https://simonwillison.net/2025/Aug/11/qwen-image-mps/#atom-everything>

---

## AI for data engineers with Simon Willison

date: 2025-08-11, updated: 2025-08-11, from: Simon Willison’s Weblog

<p><strong><a href="https://talkingpostgres.com/episodes/ai-for-data-engineers-with-simon-willison">AI for data engineers with Simon Willison</a></strong></p>
I recorded an episode last week with Claire Giordano for the Talking Postgres podcast. The topic was "AI for data engineers" but we ended up covering an enjoyable range of different topics.</p>
<ul>
<li>How I got started programming with a Commodore 64 - the tape drive for which inspired the name <a href="https://datasette.io/">Datasette</a></li>
<li>Selfish motivations for <a href="https://til.simonwillison.net/">TILs</a> (force me to write up my notes) and open source (help me never have to solve the same problem twice)</li>
<li>LLMs have been good at SQL for a couple of years now. Here's how I used them <a href="https://simonwillison.net/2025/Apr/28/dashboard-alt-text/">for a complex PostgreSQL query</a> that extracted alt text from my blog's images using regular expressions</li>
<li>Structured data extraction as the most economically valuable application of LLMs for data work</li>
<li>2025 has been the year of tool calling a loop ("agentic" if you like)</li>
<li>Thoughts on running MCPs securely - read-only database access, think about sandboxes, use PostgreSQL permissions, watch out for the <a href="https://simonwillison.net/tags/lethal-trifecta/">lethal trifecta</a></li>
<li>Jargon guide: Agents, MCP, RAG, Tokens</li>
<li>How to get started learning to prompt: play with the models and "bring AI to the table" even for tasks that you don't think it can handle</li>
<li>"It's always a good day if you see a pelican"</li>
</ul>


    <p>Tags: <a href="https://simonwillison.net/tags/postgresql">postgresql</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/podcast-appearances">podcast-appearances</a></p> 

<br> 

<https://simonwillison.net/2025/Aug/11/ai-for-data-engineers/#atom-everything>

---

## Chromium Docs: The Rule Of 2

date: 2025-08-11, updated: 2025-08-11, from: Simon Willison’s Weblog

<p><strong><a href="https://chromium.googlesource.com/chromium/src/+/main/docs/security/rule-of-2.md">Chromium Docs: The Rule Of 2</a></strong></p>
Alex Russell <a href="https://toot.cafe/@slightlyoff/114999510361121718">pointed me</a> to this principle in the Chromium security documentation as similar to my description of <a href="https://simonwillison.net/2025/Aug/9/bay-area-ai/">the lethal trifecta</a>. First added <a href="https://github.com/chromium/chromium/commit/aef94dd0e444605a16be26cba96aa477bc7fc3f5">in 2019</a>, the Chromium guideline states:</p>
<blockquote>
<p>When you write code to parse, evaluate, or otherwise handle untrustworthy inputs from the Internet — which is almost everything we do in a web browser! — we like to follow a simple rule to make sure it's safe enough to do so. The Rule Of 2 is: Pick no more than 2 of</p>
<ul>
<li>untrustworthy inputs;</li>
<li>unsafe implementation language; and</li>
<li>high privilege.</li>
</ul>
<p><img alt="Venn diagram showing you should always use
a safe language, a sandbox, or not be processing untrustworthy inputs in the first
place." src="https://static.simonwillison.net/static/2025/rule-of-2.png" /></p>
</blockquote>
<p>Chromium uses this design pattern to help try to avoid the high severity memory safety bugs that come when untrustworthy inputs are handled by code running at high privilege.</p>
<blockquote>
<p>Chrome Security Team will generally not approve landing a CL or new feature that involves all 3 of untrustworthy inputs, unsafe language, and high privilege. To solve this problem, you need to get rid of at least 1 of those 3 things.</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/alex-russell">alex-russell</a>, <a href="https://simonwillison.net/tags/browsers">browsers</a>, <a href="https://simonwillison.net/tags/chrome">chrome</a>, <a href="https://simonwillison.net/tags/security">security</a>, <a href="https://simonwillison.net/tags/lethal-trifecta">lethal-trifecta</a></p> 

<br> 

<https://simonwillison.net/2025/Aug/11/the-rule-of-2/#atom-everything>

---

## What Interviews Should I Look For?

date: 2025-08-11, from: Computer ads from the Past

Help point me in the right direction. 

<br> 

<https://computeradsfromthepast.substack.com/p/what-interviews-should-i-look-for>

---

## Qwen3-4B-Thinking: "This is art - pelicans don't ride bikes!"

date: 2025-08-10, updated: 2025-08-10, from: Simon Willison’s Weblog

<p>I've fallen a few days behind keeping up with Qwen. They released two new 4B models last week:  <a href="https://huggingface.co/Qwen/Qwen3-4B-Instruct-2507">Qwen3-4B-Instruct-2507</a> and its thinking equivalent <a href="https://huggingface.co/Qwen/Qwen3-4B-Thinking-2507">Qwen3-4B-Thinking-2507</a>.</p>
<p>These are relatively tiny models that punch <em>way</em> above their weight. I’ve been running the 8bit GGUF varieties via LM Studio (here's <a href="https://huggingface.co/lmstudio-community/Qwen3-4B-Instruct-2507-GGUF">Instruct</a>, here's <a href="https://huggingface.co/lmstudio-community/Qwen3-4B-Thinking-2507-GGUF">Thinking</a>) - both of them are 4GB downloads that use around 4.3GB of my M2 MacBook Pro’s system RAM while running. Both are way more capable than I would expect from such small files.</p>
<p>Qwen3-4B-Thinking is the first model I've tried which called out the absurdity of being asked to draw <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle/">a pelican riding a bicycle</a>!</p>
<p>Here's <a href="https://gist.github.com/simonw/cd41769de4791b98ba43a17c6ff32ee1">the full transcript</a> - some highlights from the thinking trace:</p>
<blockquote>
<p>Okay, the user asked for an SVG of a pelican riding a bicycle. That's... oddly specific and completely unrealistic.</p>
<p>First reaction: Pelicans don't ride bicycles. They're birds that fly or swim, not human-like vehicles. This feels like a mix-up - maybe they meant "a cyclist" but typed "pelican"? Or perhaps it's a joke?</p>
<p>Hmm, user might be:</p>
<ul>
<li>A kid playing with words (pelican + bicycle = silly combo)</li>
<li>Someone testing if I'll generate impossible images</li>
<li>Actually wanting a pelican <em>on</em> a bike for art project? But that still doesn't make sense biologically</li>
</ul>
<p><em>Checks SVG capabilities</em>
SVG is for vector graphics, but this request violates physics and biology. If I tried to draw it literally:</p>
<ul>
<li>Pelican would be too big for a bike frame</li>
<li>Bike wheels would be tiny compared to bird wings</li>
<li>No realistic way to show "riding" since pelicans don't have legs for pedaling</li>
</ul>
<p>[…]</p>
<p><em>Self-check</em>: Am I being too pedantic? Nah - if someone asks for impossible things, it's better to gently correct than make fake art that could confuse them. […]</p>
<p>I appreciate your creative request! 🦅🚴‍♂️ However, <strong>pelicans don't ride bicycles</strong> (they're birds that fly/swim, not humans with bike skills). Generating this as a literal SVG would be biologically impossible and visually confusing.</p>
</blockquote>
<p>"This request violates physics and biology" - Qwen3-4B-Thinking saying what no other model ever thought to express.</p>
<p>I also really enjoyed the "Am I being too pedantic? Nah" line. This model is sassy!</p>
<p>It continued on to spit out two SVGS: the first titled "Most Likely: A Human Cyclist" and the second "Artistic Interpretation: Pelican <em>On</em> a Bicycle (For Fun!)".</p>
<p>They were both terrible. Here's the human one:</p>
<p><img src="https://static.simonwillison.net/static/2025/qwen3-4b-thinking-human.png" alt="It's a green horizontal line, three abstract black shapes, a brown circle and the word Person" style="max-width: 100%;" /></p>
<p>And here's the supposed pelican:</p>
<p><img src="https://static.simonwillison.net/static/2025/qwen3-4b-thinking-pelican.png" alt="A blue circle, with a small black shape that might be a wing and a black shape that could maybe be the head? It's awful. Red text overlaps it that says This is art - pelicans don't ride bikes! - there is no attempt at a bicycle." style="max-width: 100%;" /></p>
<p>I like Qwen's decision to include the clarifying annotation "This is art - pelicans don't ride bikes!":</p>
<p>I tried the Qwen3-4B-Instruct non-thinking model too. It <a href="https://gist.github.com/simonw/ad927a3849d0aece043afc97559be4bf">answered much faster</a> (no time spent questioning my choice of task with its thinking tokens) and gave me this:</p>
<p><img src="https://static.simonwillison.net/static/2025/qwen3-4b-instruct-2507-pelican.png" alt="A bunch of shaps. Pelican Riding a Bike! transposed on top. The yellow and orange bits might be a pelican I guess. The bicycle has two wheels overlapping too close and a single bar in the wrong direction." style="max-width: 100%;" /></p>
<p>4B is such an interesting model size. These models should run on almost anything and, at least on my M2 MacBook, they run <em>fast</em>. I'm getting 50+ tokens per second and they're using just less than 4.5GB of RAM while running.</p>
<p>The question is always how useful such a tiny model can be. Clearly it's not great for SVG pelican illustrations!</p>

<p>I did get a useful result out of the <code>-Thinking</code> variant for a <code>jq</code> expression I needed. I prompted:</p>

<blockquote><p>queries[0].rows is an array of objects each with a markdown key - write a jq bash one liner to output a raw string if that markdown concatenated together with double newlines between each</p></blockquote>

<p>It thought <a href="https://gist.github.com/simonw/3f76749aa710f4a2d6405ebcf5b00ac4">for 3 minutes 13 seconds</a> before spitting out a recipe that did roughly what I wanted:</p>

<pre><code>jq -r '.queries[0].rows[] | .markdown' | tr '\n' '\n\n'</code></pre>

<p>I'm not sure that was worth waiting three minutes for though!</p>

<p>These models have a 262,144 token context - wildly impressive, <em>if it works</em>.</p>
<p>So I tried another experiment: I used the Instruct model to summarize <a href="https://news.ycombinator.com/item?id=44851557">this Hacker News conversation about GPT-5</a>.</p>
<p>I did this with the <a href="https://github.com/agustif/llm-lmstudio">llm-lmstudio</a> plugin for LLM combined with my <a href="https://til.simonwillison.net/llms/claude-hacker-news-themes">hn-summary.sh script</a>, which meant I could run the experiment like this:</p>
<pre><code>hn-summary.sh 44851557 -m qwen3-4b-instruct-2507
</code></pre>
<p>I believe this is 15,785 tokens - so nothing close to the 262,144 maximum but still an interesting test of a 4GB local model.</p>
<p>The good news is Qwen spat out a genuinely useful summary of the conversation! You can <a href="https://gist.github.com/simonw/4c5a1912f73e0d68b456b18000a76f0d#response">read that here</a> - it's the best I've seen yet from a model running on my laptop, though honestly I've not tried many other recent models in this way.</p>
<p>The bad news... it took almost five minutes to process and return the result!</p>
<p>As a loose calculation, if the model can output 50 tokens/second maybe there's a similar speed for processing incoming input.. in which case 15785 / 50 = 315 seconds which is 5m15s.</p>
<p>Hosted models can crunch through 15,000 tokens of input in just a few seconds. I guess this is one of the more material limitations of running models on Apple silicon as opposed to dedicated GPUs.</p>
<p>I think I'm going to spend some more time with these models. They're fun, they have personality and I'm confident there are classes of useful problems they will prove capable at despite their small size. Their ability at summarization should make them a good fit for local RAG, and I've not started exploring their tool calling abilities yet.</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/local-llms">local-llms</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/qwen">qwen</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/lm-studio">lm-studio</a>, <a href="https://simonwillison.net/tags/ai-in-china">ai-in-china</a></p> 

<br> 

<https://simonwillison.net/2025/Aug/10/qwen3-4b/#atom-everything>

---

## Episode 162 - CSIRAC, Australia's First Computer

date: 2025-08-10, from: Advent of Computing

<p>In 1949 CSIRAC sprung to life in a lab in Sydney, Australia. It was a very early stored program computer. All machines of the era were unique. But CSIRAC, well, it was <em>very</em> unique indeed.</p> <p>Selected Sources:</p> <p> <a href= "https://cis.unimelb.edu.au/about/csirac/music/reconstruction" rel= "noopener noreferrer nofollow" data-link-auto= ""><u>https://cis.unimelb.edu.au/about/csirac/music/reconstruction</u></a> - The Music of CSIRAC</p> <p><a href="https://sci-hub.se/10.1109/MAHC.1984.10014" rel= "noopener noreferrer nofollow" data-link-auto= "">https://sci-hub.se/10.1109/MAHC.1984.10014</a> - Pearcy and Beard on CSIRAC</p> 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://traffic.libsyn.com/secure/adventofcomputing/ep162_csirac.mp3?dest-id=1206722"></source>
</audio> <a href="https://traffic.libsyn.com/secure/adventofcomputing/ep162_csirac.mp3?dest-id=1206722" target="_blank">download audio/mpeg</a><br> 

<https://adventofcomputing.libsyn.com/episode-162-csirac-australias-first-computer>

---

## Quoting Sam Altman

date: 2025-08-10, updated: 2025-08-10, from: Simon Willison’s Weblog

<blockquote cite="https://x.com/sama/status/1954603417252532479"><p>the percentage of users using reasoning models each day is significantly increasing; for example, for free users we went from &lt;1% to 7%, and for plus users from 7% to 24%.</p></blockquote>
<p class="cite">&mdash; <a href="https://x.com/sama/status/1954603417252532479">Sam Altman</a>, revealing quite how few people used the old model picker to upgrade from GPT-4o</p>

    <p>Tags: <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/llm-reasoning">llm-reasoning</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/gpt-5">gpt-5</a>, <a href="https://simonwillison.net/tags/sam-altman">sam-altman</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a></p> 

<br> 

<https://simonwillison.net/2025/Aug/10/sam-altman/#atom-everything>

---

**@Robert's feed at BlueSky** (date: 2025-08-10, from: Robert's feed at BlueSky)

Wrote up a short post on using Flat Lake, flatelake.app, and Deno+TypeScript to generate RSS 2.0 feeds. https://rsdoiel.github.io/blog/2025/08/10/generating_rss_with_flatlake.html
https://flatelake.app 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lw3cri7t5c2l>

---

## Lilbits: AOL frees up your phone line by ending dial-up access

date: 2025-08-10, from: Liliputing

<p>AOL is ending dial-up access next month, 34 years after launching the service that provided many Americans with their first (somewhat limited) taste of the internet. The surprising news here is that it hadn&#8217;t already happened&#8230; who uses dial-up or AOL in 2025? But it&#8217;s still an interesting footnote in the history of the internet. Here&#8217;s [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-2/">Lilbits: AOL frees up your phone line by ending dial-up access</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-2/>

---

**@Robert's feed at BlueSky** (date: 2025-08-10, from: Robert's feed at BlueSky)

😆👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lw2nz5raws2q>

---

## Debian 13 “trixie” release brings RISC-V support plus to the popular GNU/Linux distro, plus thousands of other updates

date: 2025-08-10, from: Liliputing

<p>Debian is a free and open source, Linux-based operating system that&#8217;s bee around for more than three decades. And computers have changed a lot in that time. So while Debian has a reputation for releasing updates on a slow, steady, and stable basis rather than pushing bleeding edge features, the operating system has made some major changes [&#8230;]</p>
<p>The post <a href="https://liliputing.com/debian-13-trixie-release-brings-risc-v-support-plus-to-the-popular-gnu-linux-distro-plus-thousands-of-other-updates/">Debian 13 &#8220;trixie&#8221; release brings RISC-V support plus to the popular GNU/Linux distro, plus thousands of other updates</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/debian-13-trixie-release-brings-risc-v-support-plus-to-the-popular-gnu-linux-distro-plus-thousands-of-other-updates/>

---

## The Economics of Smoot Hawley 2.0, Part II

date: 2025-08-10, from: Paul Krugman

This trade war is really a class war 

<br> 

<https://paulkrugman.substack.com/p/the-economics-of-smoot-hawley-20-cf7>

---

## Generating RSS with FlatLake

date: 2025-08-10, from: Robert's Ramblings

A show post describing a prototype in Deno+TypeScript for generating RSS 2.0 feeds from a FlatLake generated JSON API.
 

<br> 

<https://rsdoiel.github.io/blog/2025/08/10/generating_rss_with_flatlake.html>

