---
title: snapshots
updated: 2025-06-27 06:09:06
---

# snapshots

(date: 2025-06-27 06:09:06)

---

## The Coming Health Care Apocalypse

date: 2025-06-27, from: Paul Krugman

One chart on the Big Ugly Bill 

<br> 

<https://paulkrugman.substack.com/p/the-coming-health-care-apocalypse>

---

**@Dave Winer's linkblog** (date: 2025-06-27, from: Dave Winer's linkblog)

Pretty sure I would have hated ageism in politics before I got so old. I’m even older than Cuomo, but I still understand hackery. Wish there was an emoji for a raised <span style="letter-spacing: 0.01rem; -webkit-text-size-adjust: 100%;">middle finger.</span> 

<br> 

<https://www.politico.com/news/2025/06/27/inside-andrew-cuomos-flat-flailing-comeback-bid-00428791>

---

**@Dave Winer's linkblog** (date: 2025-06-27, from: Dave Winer's linkblog)

Bill Moyers dies at 91. 

<br> 

<https://apnews.com/article/bill-moyers-dead-eed7ecae0e20c2db4b82500996916dfe>

---

## 302: All Seeing Eye

date: 2025-06-27, from: Fix the News

"The universe is universal." Plus, China's crazy month of solar, synthetic life, Gavi hits its target (despite US sabotage), painkillers from plastic, and good news for tigers in Thailand and turtles in Florida.  

<br> 

<https://fixthenews.com/302-all-seeing-eye/>

---

**@Dave Winer's linkblog** (date: 2025-06-27, from: Dave Winer's linkblog)

Top Hudson River Swimming Locations. 

<br> 

<https://hudsonvalleycountry.com/ixp/705/p/hudson-river-swimming-spots-ny/>

---

**@Dave Winer's linkblog** (date: 2025-06-27, from: Dave Winer's linkblog)

Canadian man dies at Miami ICE facility, cause unknown. 

<br> 

<https://www.miamiherald.com/news/local/immigration/article309501470.html>

---

## European Commission is Looking for Experts to Evaluate Funding Applications

date: 2025-06-27, updated: 2025-06-27, from: nlnet feed

 

<br> 

<https://nlnet.nl/news/2025/20250627-eu-experts.html>

---

## Conferences, Clarity, and Smokescreens

date: 2025-06-27, updated: 2025-06-27, from: Alex Russel's blog

 

<br> 

<https://infrequently.org/2025/06/conferences-clarity-and-smokescreens/>

---

## How to caption videos in Javascript

date: 2025-06-26, from: Peter Warden

Pete Warden discusses the importance of captions, highlighting their utility in training speech-to-text AI and advocating for inclusion in more web videos. He announces the launch of MoonshineJS, a tool for developers to add captions easily. While machine-generated captions aren't perfect, they can enhance accessibility for those needing them. 

<br> 

<https://petewarden.com/2025/06/26/how-to-caption-videos-in-javascript/>

---

## Introducing Gemma 3n: The developer guide

date: 2025-06-26, updated: 2025-06-26, from: Simon Willison’s Weblog

<p><strong><a href="https://developers.googleblog.com/en/introducing-gemma-3n-developer-guide/">Introducing Gemma 3n: The developer guide</a></strong></p>
Extremely consequential new open weights model release from Google today:</p>
<blockquote>
<ul>
<li>
<p><strong>Multimodal by design:</strong> Gemma 3n natively supports image, audio, video, and text inputs and text outputs.</p>
</li>
<li>
<p><strong>Optimized for on-device:</strong> Engineered with a focus on efficiency, Gemma 3n models are available in two sizes based on <a href="https://developers.googleblog.com/en/introducing-gemma-3n-developer-guide/#per-layer-embeddings-(ple):-unlocking-more-memory-efficiency"><strong>effective</strong></a> parameters: E2B and E4B. While their raw parameter count is 5B and 8B respectively, architectural innovations allow them to run with a memory footprint comparable to traditional 2B and 4B models, operating with as little as 2GB (E2B) and 3GB (E4B) of memory.</p>
</li>
</ul>
</blockquote>
<p>This is <strong>very</strong> exciting: a 2B and 4B model optimized for end-user devices which accepts text, images <em>and</em> audio as inputs!</p>
<p>Gemma 3n is also the most comprehensive day one launch I've seen for any model: Google partnered with "AMD, Axolotl, Docker, Hugging Face, llama.cpp, LMStudio, MLX, NVIDIA, Ollama, RedHat, SGLang, Unsloth, and vLLM" so there are dozens of ways to try this out right now.</p>
<p>So far I've run two variants on my Mac laptop. Ollama offer <a href="https://ollama.com/library/gemma3n">a 7.5GB version</a> (full tag <code>gemma3n:e4b-it-q4_K_M0</code>) of the 4B model, which I ran like this:</p>
<pre><code>ollama pull gemma3n
llm install llm-ollama
llm -m gemma3n:latest "Generate an SVG of a pelican riding a bicycle"
</code></pre>
<p>It drew me this:</p>
<p><img alt="The pelican looks a bit like a grey pig. It is floating above a bicycle that looks more like a rail cart." src="https://static.simonwillison.net/static/2025/gemma3n-ollama.jpg" /></p>
<p>The Ollama version doesn't appear to support image or audio input yet.</p>
<p>... but the <a href="https://github.com/Blaizzy/mlx-vlm">mlx-vlm</a> version does!</p>
<p>First I tried that on <a href="https://static.simonwillison.net/static/2025/pelican-joke-request.wav">this WAV file</a> like so (using a recipe adapted from <a href="https://www.youtube.com/watch?v=8-8R2UvUBrc">Prince Canuma's video</a>):</p>
<pre><code>uv run --with mlx-vlm mlx_vlm.generate \
  --model gg-hf-gm/gemma-3n-E4B-it \
  --max-tokens 100 \
  --temperature 0.7 \
  --prompt "Transcribe the following speech segment in English:" \
  --audio pelican-joke-request.wav
</code></pre>
<p>That downloaded a 15.74 GB bfloat16 version of the model and output the following correct transcription:</p>
<blockquote>
<p>Tell me a joke about a pelican.</p>
</blockquote>
<p>Then I had it draw me a pelican for good measure:</p>
<pre><code>uv run --with mlx-vlm mlx_vlm.generate \
  --model gg-hf-gm/gemma-3n-E4B-it \
  --max-tokens 100 \
  --temperature 0.7 \
  --prompt "Generate an SVG of a pelican riding a bicycle"
</code></pre>
<p>I quite like this one:</p>
<p><img alt="The bicycle is a sin wave, but you can make out which bits are the frame and the wheels. The pelican is white with a black triangular bill. It's a much better attempt than the Ollama one." src="https://static.simonwillison.net/static/2025/gemma3n-mlx-vlm.jpg" /></p>
<p>It's interesting to see such a striking visual difference between those 7.5GB and 15GB model quantizations.</p>
<p>Finally, I had it describe the image it had just created:</p>
<pre><code>uv run --with mlx-vlm mlx_vlm.generate \
  --model gg-hf-gm/gemma-3n-E4B-it \
  --max-tokens 1000 \
  --prompt "Describe image" \
  --image gemma3n-mlx-vlm.jpg
</code></pre>
<p>Here's what I got back - it thought this was a chemical diagram!</p>
<blockquote>
<p>The image is a cartoon-style illustration depicting a molecular structure against a light blue background. The structure is composed of several differently colored and shaped elements connected by curved black lines. </p>
<p>Here's a breakdown of the elements:</p>
<ul>
<li><strong>Large Black Circles:</strong> There are two large, solid black circles, likely representing larger molecules or components.</li>
<li><strong>Cream-Colored Oval:</strong> A prominent cream-colored oval shape is centrally located and connected to other elements. It has a smaller, darker cream-colored sphere attached to its left side.</li>
<li><strong>Red Oval:</strong> A smaller, solid red oval is positioned near one of the black circles and connected to the cream-colored oval.</li>
<li><strong>Black Lines:</strong> These lines act as bonds, connecting the various molecular components. They are curved and dynamic, suggesting movement or interaction.</li>
<li><strong>Triangular Shape:</strong> A small black triangle is attached to the smaller cream-colored sphere.</li>
<li><strong>Letter "I":</strong> The letter "I" appears twice, likely labeling specific parts of the molecule. </li>
</ul>
<p>The overall impression is of a simplified representation of a biological molecule, possibly a protein or a complex organic compound. The use of different colors helps to distinguish the various components within the structure.</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/audio">audio</a>, <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/local-llms">local-llms</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/mlx">mlx</a>, <a href="https://simonwillison.net/tags/ollama">ollama</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a>, <a href="https://simonwillison.net/tags/gemma">gemma</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/prince-canuma">prince-canuma</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/26/gemma-3n/#atom-everything>

---

## Software Is Changing (Again)

date: 2025-06-26, from: Michael Tsai

Y Combinator (transcript, slides, via Duncan Davidson, Hacker News): Drawing on his work at Stanford, OpenAI, and Tesla, Andrej [Karpathy] sees a shift underway. Software is changing, again. We&#8217;ve entered the era of &#8220;Software 3.0,&#8221; where natural language becomes the new programming interface and models do the rest.He explores what this shift means for developers, [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/26/software-is-changing-again/>

---

## Open App Markets Act Reintroduced

date: 2025-06-26, from: Michael Tsai

Marcus Mendes: A bipartisan group of senators has reintroduced the 2021 Open App Markets Act, a bill aimed at curbing the gatekeeper power that Apple and Google hold over the so-called &#8220;mobile app economy.&#8221; Here&#8217;s what they&#8217;re going for.If passed, the legislation would effectively force Apple and Google (who are not specifically named in the [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/26/open-app-markets-act-reintroduced/>

---

## Paula Bozinovich, RIP

date: 2025-06-26, from: Michael Tsai

Brian Croll, quoted by John Gruber: Paula was an employee who you are not going to see profiled in any books on the history of Apple or Steve Jobs. She worked closely with the ops team to ensure CDs and then DVDs shipped on time and correctly packaged in a box. She knew all the [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/26/paula-bozinovich-rip/>

---

## iOS 26: Adaptive Power Mode

date: 2025-06-26, from: Michael Tsai

Joe Rossignol: Apple says that Adaptive Power Mode can make &#8220;small performance adjustments&#8221; when necessary to extend an iPhone&#8217;s battery life, including slightly lowering the display brightness or allowing some activities to &#8220;take a little longer.&#8221;[&#8230;]Adaptive Power Mode is only available on the iPhone 15 Pro models and newer. This is because the AI-powered feature [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/26/ios-26-adaptive-power-mode/>

---

## DNA from Prehistoric Proto-City Reveals 'Surprising' Signs of Female-Centered Society

date: 2025-06-26, from: 404 Media Group

An unprecedented study reveals maternal lineages, female-centered practices, and a “surprising shift” in a 9,000-year-old settlement associated with a goddess cult.  

<br> 

<https://www.404media.co/dna-from-prehistoric-proto-city-reveals-surprising-signs-of-female-centered-society/>

---

## Inside ‘AI Addiction’ Support Groups, Where People Try to Stop Talking to Chatbots

date: 2025-06-26, from: 404 Media Group

People are self treating themselves and other community members in subreddits like character_ai_recovery, ChatBotAddiction, and AIAddiction. 

<br> 

<https://www.404media.co/inside-ai-addiction-support-groups-where-people-try-to-stop-talking-to-chatbots/>

---

## Bank Error in Your Favor

date: 2025-06-26, updated: 2025-06-26, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/06/26/bank-error-in-your-favor/>

---

**@Dave Winer's linkblog** (date: 2025-06-26, from: Dave Winer's linkblog)

Krugman doesn’t understand what’s coming for NYC. And doesn’t understand the leadership Cuomo uniquely provided at the height of Covid. It’s pretty likely what’s coming for the city is probably going to be worse than Covid or 9-11. 

<br> 

<https://paulkrugman.substack.com/p/mamdani-and-the-moguls-of-madness?publication_id=277517&post_id=166903615&isFreemail=true&r=2fku&triedRedirect=true>

---

## Why Your Emotions Don't Have to Control You

date: 2025-06-26, from: Guy Kawasaki blog

What if the secret to emotional mastery isn&#8217;t avoiding negative feelings, but learning to use them as tools? 

<br> 

<https://guykawasaki.substack.com/p/why-your-emotions-dont-have-to-control>

---

## ICE Is Using a New Facial Recognition App to Identify People, Leaked Emails Show

date: 2025-06-26, from: 404 Media Group

The new tool, called Mobile Fortify, uses the CBP system which ordinarily takes photos of people when they enter or exit the U.S., according to internal ICE emails viewed by 404 Media. Now ICE is using it in the field. 

<br> 

<https://www.404media.co/ice-is-using-a-new-facial-recognition-app-to-identify-people-leaked-emails-show/>

---

## Acer Chromebook Plus 514 with Core 3 N355 coming in July for $400 and up

date: 2025-06-26, from: Liliputing

<p>The new Acer Chromebook Plus 514 (CB514-6H/6HT) is ChromeOS laptop with an Intel Core 3 N355 octa-core processor based on Intel&#8217;s Twin Lake architecture, and a 14 inch, 1920 x 1200 pixel display with optional touchscreen support. It&#8217;s a relatively modest update over last year&#8217;s model, but the new version brings a slightly faster processor, a [&#8230;]</p>
<p>The post <a href="https://liliputing.com/acer-chromebook-plus-514-with-core-3-n355-coming-this-month-for-400-and-up/">Acer Chromebook Plus 514 with Core 3 N355 coming in July for $400 and up</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/acer-chromebook-plus-514-with-core-3-n355-coming-this-month-for-400-and-up/>

---

## Exterminio: la evolución – heredar la catástrofe, habitar los restos

date: 2025-06-26, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Dirección: Danny Boyle. Guion: Alex Garland. Elenco: Alfie Williams, Jodie Comer, Aaron Taylor-Johnson, Edvin Ryding, Ralph Fiennes. País: Reino Unido. Más información de la película: https://www.imdb.com/title/tt10548174/ En la trilogía de infectados —o de zombis, como a menudo se les describe pese a que sus propios creadores insisten en que no lo son—, iniciada con 28 [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/resenas-exterminio-la-evolucion/">Exterminio: la evolución – heredar la catástrofe, habitar los restos</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/resenas-exterminio-la-evolucion/?utm_source=rss&utm_medium=rss&utm_campaign=resenas-exterminio-la-evolucion>

---

## What's coming to JavaScript

date: 2025-06-26, updated: 2025-06-26, from: Deno blog

Here are proposals that were advanced at the last TC39 meeting and what that means for the future of JavaScript. 

<br> 

<https://deno.com/blog/updates-from-tc39>

---

## Calling “Cut” on the First Take at Cannes, 1939

date: 2025-06-26, from: National Archives, Text Message blog

Cannes.&#160; Glitz.&#160; Glamor.&#160; Film stars.&#160; Today, the Cannes film festival – formal title Festival de Cannes &#8211; is considered the epitome of the international motion picture world.&#160; The festival had an uncertain beginning. &#160; The first official French notification to the U.S. government of the planned festival arrived in the Department of State in the &#8230; <a href="https://text-message.blogs.archives.gov/2025/06/26/calling-cut-on-the-first-take-at-cannes-1939/" class="more-link">Continue reading <span class="screen-reader-text">Calling “Cut” on the First Take at Cannes, 1939</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/06/26/calling-cut-on-the-first-take-at-cannes-1939/>

---

## Radxa NX150 is an Intel N150 compute module in an NVIDIA Jetson NX-compatible form factor

date: 2025-06-26, from: Liliputing

<p>The Radxa NX150 is a tiny computer with an Intel N150 quad-core Twin Lake processor, up to  16GB of LPDDR5 memory, and support for plenty of I/O features. It also looks like a stick of RAM rather than a full-fledged computer. That&#8217;s because the Radxa NX150 is a system-on-a-module (SoM) that follows the NVIDIA Jetson NX [&#8230;]</p>
<p>The post <a href="https://liliputing.com/radxa-nx150-is-an-intel-n150-compute-module-in-an-nvidia-jetson-nx-compatible-form-factor/">Radxa NX150 is an Intel N150 compute module in an NVIDIA Jetson NX-compatible form factor</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/radxa-nx150-is-an-intel-n150-compute-module-in-an-nvidia-jetson-nx-compatible-form-factor/>

---

## Geminiception

date: 2025-06-26, updated: 2025-06-26, from: Simon Willison’s Weblog

<p>Yesterday Anthropic got <a href="https://simonwillison.net/2025/Jun/25/ai-powered-apps-with-claude/">a bunch of buzz</a> out of their new <code>window.claude.complete()</code> API which allows Claude Artifacts to run their own API calls to execute prompts.</p>
<p>It turns out Gemini had beaten them to that feature by over a month, but the announcement was tucked away in a bullet point of their <a href="https://gemini.google.com/updates">release notes</a> for the 20th of May:</p>
<blockquote>
<p>Vibe coding apps in Canvas just got better too! With just a few prompts, you can now build fully functional personalised apps in Canvas that can use Gemini-powered features, save data between sessions and share data between multiple users.</p>
</blockquote>
<p>Ethan Mollick <a href="https://x.com/emollick/status/1938091740121935929">has been building</a> some neat demos on top of Gemini Canvas, including this <a href="https://gemini.google.com/share/42dfb2004b7e">text adventure starship bridge simulator</a>.</p>
<p>Similar to Claude Artifacts, Gemini Canvas detects if the application uses APIs that require authentication (to run prompts, for example) and requests the user sign in with their Google account:</p>
<p><img alt="Futuristic sci-fi interface screenshot showing &quot;Helm Control&quot; at top with navigation buttons for Helm, Comms, Science, Tactical, Engineering, and Operations, displaying red error message &quot;[SYSTEM_ERROR] Connection to AI core failed: API error: 403. This may be an authentication issue.&quot; with command input field showing &quot;Enter command...&quot; and Send button, plus Google Account sign-in notification at bottom stating &quot;You need to sign in with your Google Account to see some features&quot; with Sign in button and X close icon" src="https://static.simonwillison.net/static/2025/gemini-auth.jpg" /></p>

    <p>Tags: <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/ethan-mollick">ethan-mollick</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/26/geminiception/#atom-everything>

---

## Mamdani and the Moguls of Madness

date: 2025-06-26, from: Paul Krugman

Will he be a good mayor? Nobody knows. But the hysteria is revealing. 

<br> 

<https://paulkrugman.substack.com/p/mamdani-and-the-moguls-of-madness>

---

## Bacalhau v1.8.0 - Day 4: Seamless Result Storage with Managed Publishers with Expanso Cloud

date: 2025-06-26, from: Bacalhau Blog

Your workflow just got simpler. Announcing secure, managed, and automatic result storage in Expanso Cloud. 

<br> 

<https://blog.bacalhau.org/p/bacalhau-v180-day-4-seamless-result-storage-with-managed-publishers-in-expanso-cloud>

---

**@Robert's feed at BlueSky** (date: 2025-06-26, from: Robert's feed at BlueSky)

Interesting take on C02 reduction. Make industrial plastic from it. https://www.caltech.edu/about/news/making-plastic-from-carbon-dioxide-water-and-electricity 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lsjgq4zjfs27>

---

## Dell Premium laptops now available for $1650 and up (Basically a Dell XPS notebooks with Intel Arrow Lake and optional NVIDIA graphics)

date: 2025-06-26, from: Liliputing

<p>This year Dell reworked its laptop naming, and while few folks were sad to see the Inspiron, Latitude, or Precision brands go, I heard a lot of questions about what would happen to the iconic Dell XPS line of premium systems. Now we have the answer. The new Dell Premium 14 and Dell Premium 16 laptops are [&#8230;]</p>
<p>The post <a href="https://liliputing.com/dell-premium-laptops-now-available-for-1650-and-up-basically-a-dell-xps-notebooks-with-intel-arrow-lake-and-optional-nvidia-graphics/">Dell Premium laptops now available for $1650 and up (Basically a Dell XPS notebooks with Intel Arrow Lake and optional NVIDIA graphics)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/dell-premium-laptops-now-available-for-1650-and-up-basically-a-dell-xps-notebooks-with-intel-arrow-lake-and-optional-nvidia-graphics/>

---

## 'My Bad:' Babyface Vance Meme Creator On Norwegian Tourist's Detainment

date: 2025-06-26, from: 404 Media Group

404 Media spoke to Dave McNamee, the original creator of the babyface Vance meme, about free speech, our rights, and how it feels to see the thing you created being blamed for someone's denial of entry to the U.S. 

<br> 

<https://www.404media.co/vance-babyface-meme-mads-mikkelsen-norway-tourist/>

---

## Airline-Owned Data Broker Selling Your Flight Info to DHS Finally Registers as a Data Broker

date: 2025-06-26, from: 404 Media Group

It’s a legal requirement for data brokers to register in the state of California. ARC, the airlines-owned data broker that has been selling your flight information to the government for years, only just registered after being contacted by the office of Senator Ron Wyden. 

<br> 

<https://www.404media.co/airline-owned-data-broker-selling-your-flight-info-to-dhs-finally-registers-as-a-data-broker/>

---

## A Deepfake Nightmare: Stalker Allegedly Made Sexual AI Images of Ex-Girlfriends and Their Families

date: 2025-06-26, from: 404 Media Group

An Ohio man is accused of making violent, graphic deepfakes of women with their fathers, and of their children. Device searches revealed he searched for "undress" apps and "ai porn." 

<br> 

<https://www.404media.co/deepfake-harassment-ohio-undress-clothoff-nudify-apps/>

---

## California colleges spend millions to catch plagiarism and AI. Is the faulty tech worth it?

date: 2025-06-26, from: The Markup blog

Colleges and universities renew Turnitin subscriptions year after year even though its flawed detectors are expensive and require students to let the company keep their papers forever. 

<br> 

<https://themarkup.org/artificial-intelligence/2025/06/26/ai-detector-california>

---

## Turnitin charged colleges vastly different amounts to detect plagarism

date: 2025-06-26, from: The Markup blog

Purchasing records show some colleges are paying three times more than others. 

<br> 

<https://themarkup.org/artificial-intelligence/2025/06/26/plagiarism-detector-costs-california>

---

## Meta Wins on Fair Use for Now, but Court Leaves Door Open for “Market Dilution”

date: 2025-06-26, from: Authors Union blogs

“Market dilution” suggests that “using copyrighted books to train an LLM might harm the market for those works because it enables the rapid generation of countless works that compete with the originals, even if those works aren’t themselves infringing.” 

<br> 

<https://www.authorsalliance.org/2025/06/26/meta-wins-on-fair-use-for-now-but-court-leaves-door-open-for-market-dilution/>

---

**@Dave Winer's linkblog** (date: 2025-06-26, from: Dave Winer's linkblog)

ICE Has No Right to Anonymity. 

<br> 

<https://www.nytimes.com/2025/06/25/opinion/trump-ice-arrests-los-angeles.html?unlocked_article_code=1.R08.JL5Y.t6czzQYX_BhK&smid=url-share>

---

## Raspberry Pi Pico–powered drum machine

date: 2025-06-26, from: Raspberry Pi News (.com)

<p>Phil King teaches us how to play drum samples at the press of a button with Raspberry Pi Pico.</p>
<p>The post <a href="https://www.raspberrypi.com/news/raspberry-pi-pico-powered-drum-machine/">Raspberry Pi Pico–powered drum machine</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/raspberry-pi-pico-powered-drum-machine/>

---

**@Feed for Alt USDS** (date: 2025-06-26, from: Feed for Alt USDS)

There’s a kind of tired that sleep doesn’t fix. The world keeps punching and we keep trying to care.

Turns out, we’re not invincible.

You’re not broken. You're not alone. You’re paying attention.

Read our latest: bit.ly/WTBOnBurnout
https://bit.ly/WTBOnBurnout 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lsia2lbh322m>

---

## New sandboxes from Cloudflare and Vercel

date: 2025-06-26, updated: 2025-06-26, from: Simon Willison’s Weblog

<p>Two interesting new products for running code in a sandbox today.</p>
<p>Cloudflare <a href="https://blog.cloudflare.com/containers-are-available-in-public-beta-for-simple-global-and-programmable/">launched their Containers product</a> in open beta, and added <a href="https://developers.cloudflare.com/changelog/2025-06-24-announcing-sandboxes/">a new Sandbox library</a> for Cloudflare Workers that can run commands in a "secure, container-based environment":</p>
<div class="highlight highlight-source-js"><pre><span class="pl-k">import</span> <span class="pl-kos">{</span> <span class="pl-s1">getSandbox</span> <span class="pl-kos">}</span> <span class="pl-k">from</span> <span class="pl-s">"@cloudflare/sandbox"</span><span class="pl-kos">;</span>
<span class="pl-k">const</span> <span class="pl-s1">sandbox</span> <span class="pl-c1">=</span> <span class="pl-en">getSandbox</span><span class="pl-kos">(</span><span class="pl-s1">env</span><span class="pl-kos">.</span><span class="pl-c1">Sandbox</span><span class="pl-kos">,</span> <span class="pl-s">"my-sandbox"</span><span class="pl-kos">)</span><span class="pl-kos">;</span>
<span class="pl-k">const</span> <span class="pl-s1">output</span> <span class="pl-c1">=</span> <span class="pl-s1">sandbox</span><span class="pl-kos">.</span><span class="pl-en">exec</span><span class="pl-kos">(</span><span class="pl-s">"ls"</span><span class="pl-kos">,</span> <span class="pl-kos">[</span><span class="pl-s">"-la"</span><span class="pl-kos">]</span><span class="pl-kos">)</span><span class="pl-kos">;</span></pre></div>
<p>Vercel shipped a similar feature, introduced in <a href="https://vercel.com/changelog/run-untrusted-code-with-vercel-sandbox">Run untrusted code with Vercel Sandbox</a>, which enables code that looks like this:</p>
<div class="highlight highlight-source-js"><pre><span class="pl-k">import</span> <span class="pl-kos">{</span> <span class="pl-v">Sandbox</span> <span class="pl-kos">}</span> <span class="pl-k">from</span> <span class="pl-s">"@vercel/sandbox"</span><span class="pl-kos">;</span>

<span class="pl-k">const</span> <span class="pl-s1">sandbox</span> <span class="pl-c1">=</span> <span class="pl-k">await</span> <span class="pl-v">Sandbox</span><span class="pl-kos">.</span><span class="pl-en">create</span><span class="pl-kos">(</span><span class="pl-kos">)</span><span class="pl-kos">;</span>
<span class="pl-k">await</span> <span class="pl-s1">sandbox</span><span class="pl-kos">.</span><span class="pl-en">writeFiles</span><span class="pl-kos">(</span><span class="pl-kos">[</span>
    <span class="pl-kos">{</span> <span class="pl-c1">path</span>: <span class="pl-s">"script.js"</span><span class="pl-kos">,</span> <span class="pl-c1">stream</span>: <span class="pl-v">Buffer</span><span class="pl-kos">.</span><span class="pl-en">from</span><span class="pl-kos">(</span><span class="pl-s1">result</span><span class="pl-kos">.</span><span class="pl-c1">text</span><span class="pl-kos">)</span> <span class="pl-kos">}</span><span class="pl-kos">,</span>
  <span class="pl-kos">]</span><span class="pl-kos">)</span><span class="pl-kos">;</span>
<span class="pl-k">await</span> <span class="pl-s1">sandbox</span><span class="pl-kos">.</span><span class="pl-en">runCommand</span><span class="pl-kos">(</span><span class="pl-kos">{</span>
    <span class="pl-c1">cmd</span>: <span class="pl-s">"node"</span><span class="pl-kos">,</span>
    <span class="pl-c1">args</span>: <span class="pl-kos">[</span><span class="pl-s">"script.js"</span><span class="pl-kos">]</span><span class="pl-kos">,</span>
    <span class="pl-c1">stdout</span>: <span class="pl-s1">process</span><span class="pl-kos">.</span><span class="pl-c1">stdout</span><span class="pl-kos">,</span>
    <span class="pl-c1">stderr</span>: <span class="pl-s1">process</span><span class="pl-kos">.</span><span class="pl-c1">stderr</span><span class="pl-kos">,</span>
<span class="pl-kos">}</span><span class="pl-kos">)</span><span class="pl-kos">;</span></pre></div>
<p>In both cases a major intended use-case is safely executing code that has been created by an LLM.</p>

    <p>Tags: <a href="https://simonwillison.net/tags/vercel">vercel</a>, <a href="https://simonwillison.net/tags/cloudflare">cloudflare</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/sandboxing">sandboxing</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/26/sandboxes/#atom-everything>

---

## AI coding tools are perhaps our new terminal emulators

date: 2025-06-26, from: Geoffrey Hunntley's blog

<p>So I&apos;m currently over in San Francisco. I&apos;ve been here for almost two weeks now. I&apos;ll be heading home to my family in a couple of days. But over the weekend, I had the opportunity to drop into the Computer History Museum. I&apos;</p> 

<br> 

<https://ghuntley.com/vt100/>

---

**@Dave Winer's linkblog** (date: 2025-06-26, from: Dave Winer's linkblog)

Anthropic now lets you make apps right from its Claude AI chatbot. 

<br> 

<https://www.theverge.com/news/693342/anthropic-claude-ai-apps-artifact>

---

**@Dave Winer's linkblog** (date: 2025-06-25, from: Dave Winer's linkblog)

The alarming rise of US officers hiding behind masks: ‘A police state.’ 

<br> 

<https://www.theguardian.com/us-news/2025/jun/25/immigration-officers-wearing-masks>

---

## Build and share AI-powered apps with Claude

date: 2025-06-25, updated: 2025-06-25, from: Simon Willison’s Weblog

<p><strong><a href="https://www.anthropic.com/news/claude-powered-artifacts">Build and share AI-powered apps with Claude</a></strong></p>
Anthropic have added one of the most important missing features to <a href="https://simonwillison.net/tags/claude-artifacts/">Claude Artifacts</a>: apps built as artifacts now have the ability to run their own prompts against Claude via a new API.</p>
<p>Claude Artifacts are web apps that run in a strictly controlled browser sandbox: their access to features like localStorage or the ability to access external APIs via <code>fetch()</code> calls is restricted by CSP headers and the <code>&lt;iframe sandbox="..."</code> mechanism.</p>
<p>The new <code>window.claude.complete()</code> method opens a hole that allows prompts composed by the JavaScript artifact application to be run against Claude.</p>
<p>As before, you can publish apps built using artifacts such that anyone can see them. The moment your app tries to execute a prompt the current user will be required to sign into their own Anthropic account so that the prompt can be billed against them, and not against you.</p>
<p>I'm amused that Anthropic turned "we added a window.claude.complete() function to Artifacts" into what looks like a major new product launch, but I can't say it's bad marketing for them to do that!</p>
<p>As always, the crucial details about how this all works are tucked away in tool descriptions in the system prompt. Thankfully this one was <a href="https://claude.ai/share/42b70567-8534-4080-9227-b834e8c13d6e">easy to leak</a>. Here's <a href="https://gist.github.com/simonw/31957633864d1b7dd60012b2205fd747">the full set of instructions</a>, which start like this:</p>
<blockquote>
<p>When using artifacts and the analysis tool, you have access to window.claude.complete. This lets you send completion requests to a Claude API. This is a powerful capability that lets you orchestrate Claude completion requests via code. You can use this capability to do sub-Claude orchestration via the analysis tool, and to build Claude-powered applications via artifacts.</p>
<p>This capability may be referred to by the user as "Claude in Claude" or "Claudeception".</p>
<p>[...]</p>
<p>The API accepts a single parameter -- the prompt you would like to complete. You can call it like so: <code>const response = await window.claude.complete('prompt you would like to complete')</code></p>
</blockquote>
<p>I haven't seen "Claudeception" in any of their official documentation yet! </p>
<p>That <code>window.claude.complete(prompt)</code> method is also available to the Claude analysis tool. It takes a string and returns a string.</p>
<p>The new function only handles strings. The tool instructions provide tips to Claude about prompt engineering a JSON response that will look frustratingly familiar:</p>
<blockquote><ol start="3">
<li>Use strict language: Emphasize that the response must be in JSON format only. For example: “Your entire response must be a single, valid JSON object. Do not include any text outside of the JSON structure, including backticks ```.”</li>
<li>Be emphatic about the importance of having only JSON. If you really want Claude to care, you can put things in all caps – e.g., saying “DO NOT OUTPUT ANYTHING OTHER THAN VALID JSON. DON’T INCLUDE LEADING BACKTICKS LIKE ```json.”.</li></ol></blockquote>

<p>Talk about Claudeception... now even Claude itself knows that you have to YELL AT CLAUDE to get it to output JSON sometimes.</p>
<p>The API doesn't provide a mechanism for handling previous conversations, but Anthropic works round that by telling the artifact builder how to represent a prior conversation as a JSON encoded array:</p>
<blockquote><p>Structure your prompt like this:</p>
<pre><span class="pl-k">const</span> <span class="pl-s1">conversationHistory</span> <span class="pl-c1">=</span> <span class="pl-kos">[</span>
  <span class="pl-kos">{</span> <span class="pl-c1">role</span>: <span class="pl-s">"user"</span><span class="pl-kos">,</span> <span class="pl-c1">content</span>: <span class="pl-s">"Hello, Claude!"</span> <span class="pl-kos">}</span><span class="pl-kos">,</span>
  <span class="pl-kos">{</span> <span class="pl-c1">role</span>: <span class="pl-s">"assistant"</span><span class="pl-kos">,</span> <span class="pl-c1">content</span>: <span class="pl-s">"Hello! How can I assist you today?"</span> <span class="pl-kos">}</span><span class="pl-kos">,</span>
  <span class="pl-kos">{</span> <span class="pl-c1">role</span>: <span class="pl-s">"user"</span><span class="pl-kos">,</span> <span class="pl-c1">content</span>: <span class="pl-s">"I'd like to know about AI."</span> <span class="pl-kos">}</span><span class="pl-kos">,</span>
  <span class="pl-kos">{</span> <span class="pl-c1">role</span>: <span class="pl-s">"assistant"</span><span class="pl-kos">,</span> <span class="pl-c1">content</span>: <span class="pl-s">"Certainly! AI, or Artificial Intelligence, refers to..."</span> <span class="pl-kos">}</span><span class="pl-kos">,</span>
  <span class="pl-c">// ... ALL previous messages should be included here</span>
<span class="pl-kos">]</span><span class="pl-kos">;</span>

<span class="pl-k">const</span> <span class="pl-s1">prompt</span> <span class="pl-c1">=</span> <span class="pl-s">`</span>
<span class="pl-s">The following is the COMPLETE conversation history. You MUST consider ALL of these messages when formulating your response:</span>
<span class="pl-s"><span class="pl-s1"><span class="pl-kos">${</span><span class="pl-c1">JSON</span><span class="pl-kos">.</span><span class="pl-en">stringify</span><span class="pl-kos">(</span><span class="pl-s1">conversationHistory</span><span class="pl-kos">)</span><span class="pl-kos">}</span></span></span>
<span class="pl-s"></span>
<span class="pl-s">IMPORTANT: Your response should take into account the ENTIRE conversation history provided above, not just the last message.</span>
<span class="pl-s"></span>
<span class="pl-s">Respond with a JSON object in this format:</span>
<span class="pl-s">{</span>
<span class="pl-s">  "response": "Your response, considering the full conversation history",</span>
<span class="pl-s">  "sentiment": "brief description of the conversation's current sentiment"</span>
<span class="pl-s">}</span>
<span class="pl-s"></span>
<span class="pl-s">Your entire response MUST be a single, valid JSON object.</span>
<span class="pl-s">`</span><span class="pl-kos">;</span>

<span class="pl-k">const</span> <span class="pl-s1">response</span> <span class="pl-c1">=</span> <span class="pl-k">await</span> <span class="pl-smi">window</span><span class="pl-kos">.</span><span class="pl-c1">claude</span><span class="pl-kos">.</span><span class="pl-en">complete</span><span class="pl-kos">(</span><span class="pl-s1">prompt</span><span class="pl-kos">)</span><span class="pl-kos">;</span></pre></blockquote>

<p>There's another example in there showing how the state of play for a role playing game should be serialized as JSON and sent with every prompt as well.</p>
<p>The tool instructions acknowledge another limitation of the current Claude Artifacts environment: code that executes there is effectively invisible to the main LLM - error messages are not automatically round-tripped to the model. As a result it makes the following recommendation:</p>
<blockquote>
<p>Using <code>window.claude.complete</code> may involve complex orchestration across many different completion requests. Once you create an Artifact, you are not able to see whether or not your completion requests are orchestrated correctly. Therefore, you SHOULD ALWAYS test your completion requests first in the analysis tool before building an artifact.</p>
</blockquote>
<p>I've already seen it do this in my own experiments: it will fire up the  "analysis" tool (which allows it to run JavaScript directly and see the results) to perform a quick prototype before it builds the full artifact.</p>
<p>Here's my first attempt at an AI-enabled artifact: a translation app. I built it using the following single prompt:</p>
<blockquote>
<p><code>Let’s build an AI app that uses Claude to translate from one language to another</code></p>
</blockquote>
<p>Here's <a href="https://claude.ai/share/e26be9a8-739c-45de-8aee-86dafed4aa87">the transcript</a>. You can <a href="https://claude.ai/public/artifacts/1aeb7042-2004-4549-a97d-ca740d0f1bf0">try out the resulting app here</a> - the app it built me looks like this:</p>
<p><img alt="Screenshot of Claude AI Translator interface showing: Claude AI Translator logo with blue circular icon containing &quot;文A&quot;, &quot;Powered by Claude AI for accurate, context-aware translations&quot;, language selection dropdowns showing &quot;From English&quot; and &quot;To Spanish&quot; with blue swap arrows button between them, text input area labeled &quot;Enter text to translate&quot; containing &quot;Tell me some fun facts about pelicans&quot;, &quot;Tip: Press Ctrl+Enter to translate&quot;, Translation section with &quot;high confidence&quot; indicator in green and Spanish translation &quot;Cuéntame algunos datos curiosos sobre los pelícanos&quot; with copy button icon." src="https://static.simonwillison.net/static/2025/ai-translator.jpg" /></p>
<p>If you want to use this feature yourself you'll need to turn on "Create AI-powered artifacts" in the "Feature preview" section at the bottom of your "Settings -&gt; Profile" section. I had to do that in the Claude web app as I couldn't find the feature toggle in the Claude iOS application. This <a href="https://claude.ai/settings/profile">claude.ai/settings/profile</a> page should have it for your account.


    <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/claude-artifacts">claude-artifacts</a>, <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/25/ai-powered-apps-with-claude/#atom-everything>

---

## Roundrect Dictator

date: 2025-06-25, from: Michael Tsai

Nick Heer: App icons across Apple&#8217;s three most popular operating systems share a similar rounded square mask, and it is a downgrade. Simon B. St&#248;vring correctly calls out the &#8220;expressive, varied app icons, a case of character over conformity&#8221; as a highlight of past versions of MacOS. I miss detailed and artistic app icons plenty. [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/25/roundrect-dictator/>

---

## Xcode 26 Beta 2

date: 2025-06-25, from: Michael Tsai

Apple (download): Added a new setting that dictates how function names are displayed in C++ frames: plugin.cplusplus.display.function-name-format[&#8230;]The span property of UTF8View does not support the small string representation in beta 1, and traps for small String instances. A future version of the Swift standard library will lift this restriction.[&#8230;]The packaging tool (ba-package) and the mock [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/25/xcode-26-beta-2/>

---

## Radar AI Training

date: 2025-06-25, from: Michael Tsai

Marko Zivkovic (via Ric Ford, Reddit): Apple announced its plans for a new opt-in Apple Intelligence training program. In essence, users can let Apple use content from their iPhone to train AI models. The training itself happens entirely on-device, and it incorporates a privacy-preserving method known as Differential Privacy. The opt out seems to be [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/25/radar-ai-training/>

---

## iPadOS 26 Audio and Video Capture

date: 2025-06-25, from: Michael Tsai

Jason Snell: It&#8217;s probably worth explaining why this feature has so many podcasters and other creators in a bit of a tizzy. Many podcasts record remotely, with people all over the world, and they usually use some sort of app to have that real-time conversation. It was Skype back in the day, and these days [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/25/ipados-26-audio-and-video-capture/>

---

## MBP's Visual COBOL

date: 2025-06-25, from: Computer ads from the Past

Because Productivity Is The Key To Your Future 

<br> 

<https://computeradsfromthepast.substack.com/p/mbps-visual-cobol>

---

## Quoting Christoph Niemann

date: 2025-06-25, updated: 2025-06-25, from: Simon Willison’s Weblog

<blockquote cite="https://www.nytimes.com/interactive/2025/06/23/magazine/ai-art-artists-illustrator.html"><p>Creating art is a nonlinear process. I start with a rough goal. But then I head into dead ends and get lost or stuck.</p>
<p>The secret to my process is to be on high alert in this deep jungle for unexpected twists and turns, because this is where a new idea is born.</p>
<p>I can't make art when I'm excluded from the most
crucial moments.</p></blockquote>
<p class="cite">&mdash; <a href="https://www.nytimes.com/interactive/2025/06/23/magazine/ai-art-artists-illustrator.html">Christoph Niemann</a>, An Illustrator Confronts His Fears About A.I. Art</p>

    <p>Tags: <a href="https://simonwillison.net/tags/art">art</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/25/christoph-niemann/#atom-everything>

---

## Daily Deals (6-25-2025)

date: 2025-06-25, from: Liliputing

<p>Amazon Prime Day is still two weeks away, but Amazon is already selling the Fire TV Stick 4K for half price ($25), and select customers may also find a coupon for the Fire TV Stick 4K Max that brings the price down to $30. Meanwhile several mini PC makers including ACEMAGIC and GMK are offering [&#8230;]</p>
<p>The post <a href="https://liliputing.com/daily-deals-6-25-2025/">Daily Deals (6-25-2025)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/daily-deals-6-25-2025/>

---

## Gemini CLI

date: 2025-06-25, updated: 2025-06-25, from: Simon Willison’s Weblog

<p><strong><a href="https://blog.google/technology/developers/introducing-gemini-cli-open-source-ai-agent/">Gemini CLI</a></strong></p>
First there was <a href="https://simonwillison.net/2025/Feb/24/claude-37-sonnet-and-claude-code/">Claude Code</a> in February, then <a href="https://simonwillison.net/2025/Apr/16/">OpenAI Codex (CLI)</a> in April, and now Gemini CLI in June. All three of the largest AI labs now have their own version of what I am calling a "terminal agent" - a CLI tool that can read and write files and execute commands on your behalf in the terminal.</p>
<p>I'm honestly a little surprised at how significant this category has become: I had assumed that terminal tools like this would always be something of a niche interest, but given the number of people I've heard from spending hundreds of dollars a month on Claude Code this niche is clearly larger and more important than I had thought!</p>
<p>I had a few days of early access to the Gemini one. It's very good - it takes advantage of Gemini's million token context and has good taste in things like when to read a file and when to run a command.</p>
<p>Like OpenAI Codex and unlike Claude Code it's open source (Apache 2) - the full source code can be found in <a href="https://github.com/google-gemini/gemini-cli">google-gemini/gemini-cli</a> on GitHub. The core system prompt <a href="https://github.com/google-gemini/gemini-cli/blob/0915bf7d677504c28b079693a0fe1c853adc456e/packages/core/src/core/prompts.ts#L40-L109">lives in core/src/core/prompts.ts</a> - I've extracted that out as <a href="https://gist.github.com/simonw/9e5f13665b3112cea00035df7da696c6">a rendered Markdown Gist</a>.</p>
<p>As usual, the system prompt doubles as extremely accurate and concise documentation of what the tool can do! Here's what it has to say about comments, for example:</p>
<blockquote>
<ul>
<li><strong>Comments:</strong> Add code comments sparingly. Focus on <em>why</em> something is done, especially for complex logic, rather than <em>what</em> is done. Only add high-value comments if necessary for clarity or if requested by the user. Do not edit comments that are seperate from the code you are changing. <em>NEVER</em> talk to the user or describe your changes through comments.</li>
</ul>
</blockquote>
<p>The list of preferred technologies is interesting too:</p>
<blockquote>
<p>When key technologies aren't specified prefer the following:</p>
<ul>
<li><strong>Websites (Frontend):</strong> React (JavaScript/TypeScript) with Bootstrap CSS, incorporating Material Design principles for UI/UX.</li>
<li><strong>Back-End APIs:</strong> Node.js with Express.js (JavaScript/TypeScript) or Python with FastAPI.</li>
<li><strong>Full-stack:</strong> Next.js (React/Node.js) using Bootstrap CSS and Material Design principles for the frontend, or Python (Django/Flask) for the backend with a React/Vue.js frontend styled with Bootstrap CSS and Material Design principles.</li>
<li><strong>CLIs:</strong> Python or Go.</li>
<li><strong>Mobile App:</strong> Compose Multiplatform (Kotlin Multiplatform) or Flutter (Dart) using Material Design libraries and principles, when sharing code between Android and iOS. Jetpack Compose (Kotlin JVM) with Material Design principles or SwiftUI (Swift) for native apps targeted at either Android or iOS, respectively.</li>
<li><strong>3d Games:</strong> HTML/CSS/JavaScript with Three.js.</li>
<li><strong>2d Games:</strong> HTML/CSS/JavaScript.</li>
</ul>
</blockquote>
<p>As far as I can tell Gemini CLI only defines a small selection of tools:</p>
<ul>
<li><code>edit</code>: To modify files programmatically.</li>
<li><code>glob</code>: To find files by pattern.</li>
<li><code>grep</code>: To search for content within files.</li>
<li><code>ls</code>: To list directory contents.</li>
<li><code>shell</code>: To execute a command in the shell</li>
<li><code>memoryTool</code>: To remember user-specific facts.</li>
<li><code>read-file</code>: To read a single file</li>
<li><code>write-file</code>: To write a single file</li>
<li><code>read-many-files</code>: To read multiple files at once.</li>
<li><code>web-fetch</code>: To get content from URLs.</li>
<li><code>web-search</code>: To perform a web search (using <a href="https://ai.google.dev/gemini-api/docs/google-search">Grounding with Google Search</a> via the Gemini API).</li>
</ul>
<p>I found most of those by having Gemini CLI inspect its own code for me! Here's <a href="https://gist.github.com/simonw/12c7b072e8e21ef1e040fb3b69c1da28">that full transcript</a>, which used just over 300,000 tokens total.</p>
<p>How much does it cost? The announcement describes a generous free tier:</p>
<blockquote>
<p>To use Gemini CLI free-of-charge, simply login with a personal Google account to get a free Gemini Code Assist license. That free license gets you access to Gemini 2.5 Pro and its massive 1 million token context window. To ensure you rarely, if ever, hit a limit during this preview, we offer the industry’s largest allowance: 60 model requests per minute and 1,000 requests per day at no charge.</p>
</blockquote>
<p>It's not yet clear to me if your inputs can be used to improve Google's models if you are using the free tier - that's been the situation with free prompt inference they have offered in the past.</p>
<p>You can also drop in your own paid API key, at which point your data will not be used for model improvements and you'll be billed based on your token usage.


    <p>Tags: <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/open-source">open-source</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a>, <a href="https://simonwillison.net/tags/coding-agents">coding-agents</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/25/gemini-cli/#atom-everything>

---

## The Bezos Bunker-Buster Wedding, and Big-Time Women Relegated to the Happy-Face Sidelines

date: 2025-06-25, from: Tina Brown

If men have become addicted to the manosphere, their female counterparts are endlessly distracted by the glamosphere. 

<br> 

<https://tinabrown.substack.com/p/the-bezos-bunker-buster-wedding-and>

---

## Image generation: Still crazy after all these years

date: 2025-06-25, from: Gary Marcus blog

Three years ago Google promised us &#8220;deep language understanding&#8221; for image generation. I don&#8217;t think we are there yet. 

<br> 

<https://garymarcus.substack.com/p/image-generation-still-crazy-after>

---

## Fairphone (Gen. 6) is a thinner, lighter repairable phone with a modular design

date: 2025-06-25, from: Liliputing

<p>Dutch phone maker Fairphone is now taking orders for the Fairphone (Gen. 6), the company&#8217;s latest phone with a focus on sustainability. It has a modular design that makes it easy to repair and comes with a 5-year warranty and a promise of software updates for at least 8 years. With a €599 price tag, [&#8230;]</p>
<p>The post <a href="https://liliputing.com/fairphone-gen-6-is-a-thinner-lighter-repairable-phone-with-a-modular-design/">Fairphone (Gen. 6) is a thinner, lighter repairable phone with a modular design</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/fairphone-gen-6-is-a-thinner-lighter-repairable-phone-with-a-modular-design/>

---

## Bacalhau v1.8.0 - Day 3: How Bacalhau Boosts Daemon Job Reliability

date: 2025-06-25, from: Bacalhau Blog

A deep dive into the new orchestration logic that makes daemon jobs smarter, faster, and more resilient to infrastructure changes 

<br> 

<https://blog.bacalhau.org/p/bacalhau-v180-day-3-how-bacalhau-boosted-daemon-jobs>

---

## Flock Removes States From National Lookup Tool After ICE and Abortion Searches Revealed

date: 2025-06-25, from: 404 Media Group

Following 404 Media’s reporting and in light of new legislation, automatic license plate reader (ALPR) company Flock has stopped agencies reaching into cameras in California, Illinois, and Virginia. 

<br> 

<https://www.404media.co/flock-removes-states-from-national-lookup-tool-after-ice-and-abortion-searches-revealed/>

---

## Don't Be a Bully

date: 2025-06-25, from: Guy Kawasaki blog

Leading without fear. 

<br> 

<https://guykawasaki.substack.com/p/dont-be-a-bully>

---

## Balatro Ported to the Gameboy Advance’s e-Reader

date: 2025-06-25, from: 404 Media Group

A software engineer made a version of the game that runs off code printed onto a small card. 

<br> 

<https://www.404media.co/balatro-ported-to-the-gameboy-advances-e-reader/>

---

## If It’s Eerie, Please Be Leery

date: 2025-06-25, updated: 2025-06-25, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/06/25/if-its-eerie-please-be-leery/>

---

## Podcast: This Site Unmasks Cops With Facial Recognition

date: 2025-06-25, from: 404 Media Group

A tool that uses facial recognition to reveal cops' names, a big and complicated AI ruling, and the AI slop between Iran and Israel. 

<br> 

<https://www.404media.co/podcast-this-site-unmasks-cops-with-facial-recognition/>

---

## The Career Calamity

date: 2025-06-25, updated: 2025-06-25, from: Tedium site

Two of the most prominent legacy job application sites file for Chapter 11 bankruptcy. Together. Maybe they lost their edge. 

<br> 

<https://feed.tedium.co/link/15204/17063312/monster-careerbuilder-job-sites-bankruptcy>

---

## This Dog Won't Wag

date: 2025-06-25, from: Paul Krugman

Well whaddya know: Another fiasco 

<br> 

<https://paulkrugman.substack.com/p/this-dog-wont-wag>

---

## Anthropic wins a major fair use victory for AI — but it’s still in trouble for stealing books

date: 2025-06-24, updated: 2025-06-24, from: Simon Willison’s Weblog

<p><strong><a href="https://www.theverge.com/news/692015/anthropic-wins-a-major-fair-use-victory-for-ai-but-its-still-in-trouble-for-stealing-books">Anthropic wins a major fair use victory for AI — but it’s still in trouble for stealing books</a></strong></p>
Major USA legal news for the AI industry today. Judge William Alsup released a "summary judgement" (a legal decision that results in some parts of a case skipping a trial) in a lawsuit between five authors and Anthropic concerning the use of their books in training data.</p>
<p>The <a href="https://www.documentcloud.org/documents/25982181-authors-v-anthropic-ruling/">judgement itself</a> is a very readable 32 page PDF, and contains all sorts of interesting behind-the-scenes details about how Anthropic trained their models.</p>
<p>The facts of the complaint go back to the very beginning of the company. Anthropic was founded by a group of ex-OpenAI researchers in February 2021. According to the judgement:</p>
<blockquote>
<p>So, in January or February 2021, another Anthropic cofounder, Ben Mann, downloaded Books3, an online library of 196,640 books that he knew had been assembled from unauthorized copies of copyrighted books — that is, pirated. Anthropic's next pirated acquisitions involved downloading distributed, reshared copies of other pirate libraries. In June 2021, Mann downloaded in this way at least five million copies of books from Library Genesis, or LibGen, which he knew had been pirated. And, in July 2022, Anthropic likewise downloaded at least two million copies of books from the Pirate Library Mirror, or PiLiMi, which Anthropic knew had been pirated.</p>
</blockquote>
<p>Books3 was also listed as <a href="https://simonwillison.net/2023/Aug/27/wordcamp-llms/#how-they-are-trained">part of the training data</a> for Meta's first LLaMA model!</p>
<p>Anthropic apparently used these sources of data to help build an internal "research library" of content that they then filtered and annotated and used in training runs.</p>
<p>Books turned out to be a very valuable component of the "data mix" to train strong models. By 2024 Anthropic had a new approach to collecting them: purchase and scan millions of print books!</p>
<blockquote>
<p>To find a new way to get books, in February 2024, Anthropic hired the former head of partnerships for Google's book-scanning project, Tom Turvey. He was tasked with obtaining "all the books in the world" while still avoiding as much "legal/practice/business slog" as possible (Opp. Exhs. 21, 27). [...] Turvey and his team emailed major book distributors and retailers about bulk-purchasing their print copies for the AI firm's "research library" (Opp. Exh. 22 at 145; Opp. Exh. 31 at -035589). Anthropic spent many millions of dollars to purchase millions of print books, often in used condition. Then, its service providers stripped the books from their bindings, cut their pages to size, and scanned the books into digital form — discarding the paper originals. Each print book resulted in a PDF copy containing images of the scanned pages with machine-readable text (including front and back cover scans for softcover books).</p>
</blockquote>
<p>The summary judgement found that these scanned books <em>did</em> fall under fair use, since they were transformative versions of the works and were not shared outside of the company. The downloaded ebooks did <em>not</em> count as fair use, and it looks like those will be the subject of a forthcoming jury trial.</p>
<p>Here's that section of the decision:</p>
<blockquote>
<p>Before buying books for its central library, Anthropic downloaded over seven million pirated copies of books, paid nothing, and kept these pirated copies in its library even after deciding it would not use them to train its AI (at all or ever again). Authors argue Anthropic should have paid for these pirated library copies (e.g, Tr. 24–25, 65; Opp. 7, 12–13). This
order agrees.</p>
</blockquote>
<p>The most important aspect of this case is the question of whether training an LLM on unlicensed data counts as "fair use". The judge found that it did. The argument for why takes up several pages of the document but this seems like a key point:</p>
<blockquote>
<p>Everyone reads texts, too, then writes new texts. They may need to pay for getting their hands on a text in the first instance. But to make anyone pay specifically for the use of a book each time they read it, each time they recall it from memory,
each time they later draw upon it when writing new things in new ways would be unthinkable.
For centuries, we have read and re-read books. We have admired, memorized, and internalized
their sweeping themes, their substantive points, and their stylistic solutions to recurring writing problems.</p>
</blockquote>
<p>The judge who signed this summary judgement is an interesting character: <a href="https://en.wikipedia.org/wiki/William_Alsup">William Haskell Alsup</a> (yes, his middle name really is Haskell) presided over jury trials for Oracle America, Inc. v. Google, Inc in 2012 and 2016 where he famously used his hobbyist BASIC programming experience to challenge claims made by lawyers in the case.


    <p>Tags: <a href="https://simonwillison.net/tags/law">law</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/training-data">training-data</a>, <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/24/anthropic-training/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-06-24, from: Dave Winer's linkblog)

Key fair use ruling clarifies when books can be used for AI training. 

<br> 

<https://arstechnica.com/tech-policy/2025/06/key-fair-use-ruling-clarifies-when-books-can-be-used-for-ai-training/>

---

**@Robert's feed at BlueSky** (date: 2025-06-24, from: Robert's feed at BlueSky)

Food for thought 👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lsewqd5qek2x>

---

## macOS Tahoe Beta Forces Sharing FileVault Key

date: 2025-06-24, from: Michael Tsai

Jeff Johnson: Wait, what? macOS Tahoe beta 2 automatically enabled FileVault and uploaded a recovery key to iCloud. I did not have a choice in the matter. First, they silently enable iCloud Keychain, then they upload your FileVault key to it without asking. Sarah Reichelt: Beta 1 did this too. I turned it off immediately. [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/24/macos-tahoe-beta-forces-sharing-filevault-key/>

---

## macOS Tahoe 26 Developer Beta 2

date: 2025-06-24, from: Michael Tsai

Andrew Cunningham: We are not highlighting this second round of developer betas because we think you should go out and install them on the Macs, iPhones, iPads, and Apple Watches that you use daily. These are still early versions, and they&#8217;re likely to have significant performance, battery, and stability problems relative to the current publicly [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/24/macos-tahoe-26-developer-beta-2/>

---

## iOS 26 Developer Beta 2

date: 2025-06-24, from: Michael Tsai

Juli Clover: Apple provided developers with the second beta of iOS 26, introducing the first changes and refinements to the new operating system since it debuted after the WWDC keynote. Because we&#8217;re early in the beta testing process, there are quite a few tweaks to iOS 26, which we&#8217;ve rounded up below. The official release [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/24/ios-26-developer-beta-2/>

---

## $10 Off at Fandango

date: 2025-06-24, from: Michael Tsai

Casey Liss: &#x1F92E; In case you forgot after F1 got multiple sections of the keynote at Apple&#8217;s developer conference. Marco Arment: This is a core system app interrupting you, promoting a sale by a movie-ticketing company, to push you to go see the platform vendor&#8217;s new movie.Why not just pop up random ads all the [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/24/10-off-at-fandango/>

---

## Apple Pulls “Convince Your Parents to Get You a Mac” Ad

date: 2025-06-24, from: Michael Tsai

Joe Rossignol: Apple today shared The Parent Presentation, which explains why a Mac is a useful tool in college. The customizable 81-slide presentation is available in PowerPoint, Keynote, and Google Slides formats. After downloading the template on this page, you can fill in your name and some other key details, and make other edits to [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/24/apple-pulls-convince-your-parents-to-get-you-a-mac-ad/>

---

**@Dave Winer's linkblog** (date: 2025-06-24, from: Dave Winer's linkblog)

Why Are Federal Agents Wearing Masks? 

<br> 

<https://adamkinzinger.substack.com/p/why-are-federal-agents-wearing-masks>

---

## AI Models And Parents Don’t Understand ‘Let Him Cook’

date: 2025-06-24, from: 404 Media Group

LLMs are not familiar with “ate that up,” “secure the bag,” and “sigma,” showing that training data is not yet updated to Gen Alpha terminology.  

<br> 

<https://www.404media.co/ai-models-and-parents-dont-understand-let-him-cook/>

---

**@Feed for Alt USDS** (date: 2025-06-24, from: Feed for Alt USDS)

A quiet but dangerous shift is happening at DOJ. This is not policy, and it's certainly not law and order.

“Bove stated that D.O.J. would need to consider telling the courts ‘fuck you’ and ignore any such order.”

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lsem55bggs2r>

---

## C&W 2025 Session Review: “Whose Time is It, Anyway?” (Keynote)

date: 2025-06-24, from: Digital Humanities Quarterly News

Speaker: Jason Tham, Texas Tech University&#160; This year’s keynote address was given by Jason Tham, Assistant Chair and Associate Professor of Technical Communication and Rhetoric and Texas Tech University. Tham’s talk was titled, “Whose Time is It, Anyway?” and explored who truly benefits from AI usage when it is used to save time. Attendees left [...]
<p><a href="https://www.digitalrhetoriccollaborative.org/2025/06/24/cw-2025-session-review-whose-time-is-it-anyway-keynote/" rel="nofollow">Source</a></p> 

<br> 

<https://www.digitalrhetoriccollaborative.org/2025/06/24/cw-2025-session-review-whose-time-is-it-anyway-keynote/>

---

## Anthropic Wins on Fair Use for Training its LLMs; Loses on Building a “Central Library” of Pirated Books

date: 2025-06-24, from: Authors Union blogs

Yesterday, Judge Alsup released his decision on Anthropic’s motion for summary judgment in the fast-moving lawsuit it is defending, brought [&#8230;] 

<br> 

<https://www.authorsalliance.org/2025/06/24/anthropic-wins-on-fair-use-for-training-its-llms-loses-on-building-a-central-library-of-pirated-books/>

---

## Unihertz Titan 2 is an Android-powered BlackBerry Passport clone (crowdfunding)

date: 2025-06-24, from: Liliputing

<p>The Unihertz Titan 2 is a new smartphone that looks a lot like an old one &#8211; the 2014 BlackBerry Passport, to be specific. Like BlackBerry&#8217;s long-discontinued phone, the Titan 2 has a 4.5 inch square display positioned above a QWERTY keyboard designed for thumb typing. But under the hood the Titan 2 is a modern mid-range [&#8230;]</p>
<p>The post <a href="https://liliputing.com/unihertz-titan-2-is-an-android-powered-blackberry-passport-clone-crowdfunding/">Unihertz Titan 2 is an Android-powered BlackBerry Passport clone (crowdfunding)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/unihertz-titan-2-is-an-android-powered-blackberry-passport-clone-crowdfunding/>

---

## The 80th Anniversary of the Signing of the United Nations Charter (Properties in the National Register of Historic Places related to the UN)

date: 2025-06-24, from: National Archives, Text Message blog

On June 26, 1945, the Charter of the United Nations was signed in San Francisco, California. There are approximately 100 properties in the National Register files that contain the term “United Nations,” including the San Francisco Civic Center (National Archives Identifier 123858074), where the organizational meeting for the international organization was held in 1945.&#160; “The &#8230; <a href="https://text-message.blogs.archives.gov/2025/06/24/the-80th-anniversary-of-the-signing-of-the-united-nations-charter-properties-in-the-national-register-of-historic-places-related-to-the-un/" class="more-link">Continue reading <span class="screen-reader-text">The 80th Anniversary of the Signing of the United Nations Charter (Properties in the National Register of Historic Places related to the UN)</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/06/24/the-80th-anniversary-of-the-signing-of-the-united-nations-charter-properties-in-the-national-register-of-historic-places-related-to-the-un/>

---

## Meta Quest 3S Xbox Edition is a $400 VR headset designed for cloud gaming

date: 2025-06-24, from: Liliputing

<p>The META Quest 3S Xbox Edition is a virtual reality headset that comes with a pair of Meta Quest Touch Plus controllers, a limited edition Xbox Wireless Controller, and and a 3-month subscription to Microsoft&#8217;s Xbox Game Pass Ultimate. Unlike the normal version of the Meta Quest 3S, which has a white body, the Xbox Edition also [&#8230;]</p>
<p>The post <a href="https://liliputing.com/meta-quest-3s-xbox-edition-is-a-400-vr-headset-designed-for-cloud-gaming/">Meta Quest 3S Xbox Edition is a $400 VR headset designed for cloud gaming</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/meta-quest-3s-xbox-edition-is-a-400-vr-headset-designed-for-cloud-gaming/>

---

## Bacalhau v1.8.0 - Day 2: Rerun, Update, and Version Your Bacalhau Jobs

date: 2025-06-24, from: Bacalhau Blog

How we're making job management less of a chore and more of a superpower 

<br> 

<https://blog.bacalhau.org/p/bacalhau-v180-day-2-rerun-update-version-bacalhau-jobs>

---

## Judge Rules Training AI on Authors' Books Is Legal But Pirating Them Is Not

date: 2025-06-24, from: 404 Media Group

A judge rules that Anthropic's training on copyrighted works without authors' permission was a legal fair use, but that stealing the books in the first place is illegal. 

<br> 

<https://www.404media.co/judge-rules-training-ai-on-authors-books-is-legal-but-pirating-them-is-not/>

---

## Contraception Rights Face New Threats

date: 2025-06-24, from: Guy Kawasaki blog

Cynthia H. Chuang, Professor of Medicine and Public Health Sciences, Penn State. Carol S. Weisman, Distinguished Professor Emerita of Public Health Sciences, Penn State. 

<br> 

<https://guykawasaki.substack.com/p/contraception-rights-face-new-threats>

---

## Massive Creator Platform Fansly Bans Furries

date: 2025-06-24, from: 404 Media Group

Blaming payment processor restrictions, Fansly—a platform creators flocked to after OnlyFans announced it'd ban sex—announced it's changing the rules for multiple types of content.  

<br> 

<https://www.404media.co/fansly-ban-furries-new-rules/>

---

**@Dave Winer's linkblog** (date: 2025-06-24, from: Dave Winer's linkblog)

In my latest podcast I talked about WordPress as &quot;the operating system for the open social web.&quot; Jeremy Hervé who works at Automattic on WordPress liked the idea, explained in this blog post. 

<br> 

<https://herve.bzh/wordpress-wordland-and-the-open-web/>

---

## ‘FuckLAPD.com’ Lets Anyone Use Facial Recognition to Instantly Identify Cops

date: 2025-06-24, from: 404 Media Group

A free tool that allows anyone to upload a photo of an LAPD officer to get their name and badge number.  

<br> 

<https://www.404media.co/fucklapd-com-lets-anyone-use-facial-recognition-to-instantly-identify-cops/>

---

## This Queer Online Zine Can Only Be Read Via an Ancient Internet Protocol

date: 2025-06-24, from: 404 Media Group

New Session publishes poetry via Telnet, rejecting the internet’s fast-paced enshittification. 

<br> 

<https://www.404media.co/queer-online-zine-new-session-telnet/>

---

## How I Saved $59.95

date: 2025-06-24, updated: 2025-06-24, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/06/24/how-i-saved-59-95/>

---

## Why Big Tech Turned Against Democrats — and Democracy

date: 2025-06-24, from: Paul Krugman

Trump&#8217;s America is turning its back on the future &#8212; with Big Tech&#8217;s help 

<br> 

<https://paulkrugman.substack.com/p/why-big-tech-turned-against-democrats>

---

**@Robert's feed at BlueSky** (date: 2025-06-24, from: Robert's feed at BlueSky)

Fun background info on Deno.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lsdft5z6t22r>

---

**@Robert's feed at BlueSky** (date: 2025-06-24, from: Robert's feed at BlueSky)

👇should not be happening

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lsd7aqf2ik2m>

---

## 62 new projects contribute to digital commons

date: 2025-06-24, updated: 2025-06-24, from: nlnet feed

 

<br> 

<https://nlnet.nl/news/2025/20250624-announcement-grants-CommonsFund.html>

---

## Why Purism Manufactures Electronics in the USA

date: 2025-06-23, from: Purism News and Events

<p>Purism manufactures the electronics of our <a href="https://puri.sm/products/liberty-phone/">Liberty Phone</a> and <a href="https://puri.sm/products/librem-key/">Librem Key</a> at our facility in the US for the following reasons:</p>
<p>The post <a rel="nofollow" href="https://puri.sm/posts/why-purism-manufactures-electronics-in-the-usa/">Why Purism Manufactures Electronics in the USA</a> appeared first on <a rel="nofollow" href="https://puri.sm/">Purism</a>.</p>
 

<br> 

<https://puri.sm/posts/why-purism-manufactures-electronics-in-the-usa/>

---

**@Robert's feed at BlueSky** (date: 2025-06-23, from: Robert's feed at BlueSky)

Interesting 👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lschopywjs27>

---

## Lilbits: Europe’s new Ecodesign rules for smartphones and tablets, Samsung’s new Exynos 2500 processor, and postmarketOS 25.06

date: 2025-06-23, from: Liliputing

<p>The European Union&#8217;s Ecodesign rules for smartphones and tablets took effect on June 20th, which means that devices in those categories will need to meet certain repairability, upgradeability, battery life, and software update requirements. Some critics say the rules don&#8217;t go far enough, but we&#8217;re already starting to see some device makers announce updates in [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-europes-new-ecodesign-rules-for-smartphones-and-tablets-samsungs-new-exynos-2500-processor-and-postmarketos-25-06/">Lilbits: Europe&#8217;s new Ecodesign rules for smartphones and tablets, Samsung&#8217;s new Exynos 2500 processor, and postmarketOS 25.06</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-europes-new-ecodesign-rules-for-smartphones-and-tablets-samsungs-new-exynos-2500-processor-and-postmarketos-25-06/>

---

## iOS 26 Alarm Buttons

date: 2025-06-23, from: Michael Tsai

9to5Mac: iOS 26 alarms &#x1F418; vs iOS 18 &#x1F90F; Previously, the Snooze button was much larger than Stop, and they were separated. I think both of these points helped prevent accidentally turning off an alarm that you only meant to snooze. Jack Fields (via Trung Phan): At Apple, we found that when both buttons are [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/23/ios-26-alarm-buttons/>

---

## ASIF Disk Images in macOS Tahoe

date: 2025-06-23, from: Michael Tsai

Howard Oakley (Hacker News): Disk images have been valuable tools marred by poor performance. In the wrong circumstances, an encrypted sparse image (UDSP) stored on the blazingly fast internal SSD of an Apple silicon Mac may write files no faster than 100 MB/s, typical for a cheap hard drive. One of the important new features [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/23/asif-disk-images-in-macos-tahoe/>

---

## Icon Composer Notes

date: 2025-06-23, from: Michael Tsai

John Brayton: I would not have figured out how to use this tool without help, so I wanted to pass along the correct way to use it. [&#8230;] On macOS, one sets an alternate icon by drawing it in code using the NSDockTile API. I believe Mac apps have no access to the system-wide Icon [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/23/icon-composer-notes/>

---

## macOS 27 to Drop Support for AirPort and Time Capsule Backups

date: 2025-06-23, from: Michael Tsai

Zac Hall: Spotted by @StellaFudge on X, macOS Tahoe 26 includes a warning message when using Time Machine to back up a Mac to Apple router-connected storage.The next major version of macOS will no longer support AirPort Disk, or other Time Capsule disks, for Time Machine backups. I wonder if this is because they&#8217;re removing [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/23/macos-27-to-drop-support-for-airport-and-time-capsule-backups/>

---

## Phoenix.new is Fly's entry into the prompt-driven app development space

date: 2025-06-23, updated: 2025-06-23, from: Simon Willison’s Weblog

<p>Here's a fascinating new entrant into the AI-assisted-programming / coding-agents space by <a href="https://fly.io/">Fly.io</a>, introduced on their blog in <a href="https://fly.io/blog/phoenix-new-the-remote-ai-runtime/">Phoenix.new – The Remote AI Runtime for Phoenix</a>: describe an app in a prompt, get a full Phoenix application, backed by SQLite and running on Fly's hosting platform. The <a href="https://www.youtube.com/watch?v=du7GmWGUM5Y">official Phoenix.new YouTube launch video</a> is a good way to get a sense for what this does.</p>
<h4 id="background-on-phoenix-and-elixir-and-fly">Background on Phoenix and Elixir and Fly</h4>
<p>First, some background. <a href="https://www.phoenixframework.org/">Phoenix</a> is an open source web framework for Elixir, the Ruby-like language that compiles to Erlang's BEAM bytecode and runs on top of the highly concurrent Erlang runtime. The signature feature of the framework is <a href="https://github.com/phoenixframework/phoenix_live_view/blob/main/README.md#feature-highlights">Phoenix LiveView</a>, a toolkit for building realtime interfaces through streaming diffs to server-side HTML over a WebSocket connection.</p>
<p>Phoenix was created by Chris McCord 11 years ago, and Chris joined Fly nearly four years ago. <a href="http://phoenix.new/">Phoenix.new</a> is his latest project.</p>
<p>Phoenix LiveView is a really great fit for Fly's geographically distributed application serving infrastructure. Fly co-founder Kurt Mackey <a href="https://fly.io/blog/low-latency-liveview/">wrote about that</a> in April 2021, before they had hired Chris, describing how LiveView benefits from low latency by "moving app processes close to users" - something Fly has been designed to help with from the start.</p>
<p>There's one major challenge though: Elixir is still a niche programming language, which means the number of people out there who are ready to spin up a new Phoenix app has always been artificially limited.</p>
<p>Fly's solution? Get LLMs to shave that learning curve down to <em>almost nothing</em>.</p>
<h4 id="prompt-driven-application-development-with-phoenix-new">Prompt-driven application development with Phoenix.new</h4>
<p>Phoenix.new is a prompt-driven application development platform. You describe what you want to build, then watch as an LLM-powered coding agent writes, tests and iterates on code to help achieve that goal. It's in the same broad category as <a href="https://lovable.dev/">Lovable</a>, <a href="https://v0.dev/">v0.dev</a> and and <a href="https://townie.val.run/">Val Town's Townie</a>.</p>
<p>One of the most important problems to solve with coding agents is to give them a robust sandbox where they can run code without breaking things outside of that space. Fly, at their heart, are a sandboxing company - their <a href="https://fly.io/docs/machines/">Fly Machines</a> product makes it trivial to spin up a new sandboxed VM in just a few seconds. I'm building <a href="https://www.datasette.cloud/">Datasette Cloud</a> on Fly for exactly that reason.</p>
<p>I tried out Phoenix.new with the following starter prompt:</p>
<blockquote>
<p><code>A notebook application. Notes are rich text, using a nice visual markdown editors. The first line of a note becomes the title. Notes have a URL that is a 6 character random text string - thise can be used to link notes to each other by dropping in an @ sign and that text string. A hash and then text becomes a tag, clicking a tag goes to a page with that tag on. Notes are all in SQLite FTS so they can be searched with a search tool.</code></p>
</blockquote>
<p>Watching it work was <em>fascinating</em>. It provides a full IDE-style environment in the browser, running a dedicated container and with a forwarded port to allow you to interact with the running application <em>while it is being built</em>.</p>
<p><img src="https://static.simonwillison.net/static/2025/phoenix-new.jpg" alt="Browser IDE interface showing a notebook app development project with a left sidebar containing a chat session that starts &quot;What would you like to build?&quot; with options like &quot;todo list&quot;, &quot;chat app&quot;, &quot;product landing page&quot;, then a main editor displaying plan.md file with detailed development steps including &quot;Generate a Phoenix LiveView project called 'notebook'&quot; and &quot;Start the server so you can view the app as we build it&quot;. The bottom has a terminal showing &quot;All dependencies are up to date&quot;, &quot;Generated notebook app&quot;, &quot;Done in 241ms&quot;." style="max-width: 100%;" /></p>
<p>It spun up a <code>plan.md</code>, planned out the approach and started working through the code. Most interestingly, it constantly tested the application it was building using a testing tool that looked similar to my own <a href="https://shot-scraper.datasette.io/">shot-scraper</a>. Here's an example of the output from that:</p>
<blockquote>
<p>I can see the issue! The page is still showing the "Welcome to your Notebook" message instead of the form. Let me wait a moment for the JavaScript to execute and then check if the form appeared.</p>
<p><code>$ web http://localhost:4000 --js "setTimeout(() =&gt; { document.querySelector('button[phx-click=\"start_creating\"]').click(); }, 500); setTimeout(() =&gt; { console.log('Form visible?', !!document.querySelector('textarea')); console.log('Creating note state:', document.body.innerHTML.includes('Create New Note')); }, 2000);"</code></p>
</blockquote>
<p>I'm used to coding agents that write and execute their own tests, but this is the most impressive example I've seen of a coding agent that actively interacts with and tests the live application while it is iterating on the code.</p>
<p>Most interestingly of all, since LiveView is a realtime framework, I could interact directly with the application at the same time as the machine was writing and testing it, seeing any changes it made instantly in my browser!</p>
<p>How did it do? It got there in the end, but with hindsight my initial prompt was a little too complex: I had to rescue it after it got stuck in an error loop trying to implement SQLite full-text search. Just like a project you build yourself it turns out to work much better if you start with the simplest possible version of the application and then iterate on it to add additional features.</p>
<p>One of my favorite details is how Git integration works. Phoenix.new commits constantly as it works, and a menu option for "Clone X to your local computer" then gives you a command that looks like this:</p>
<p><code>git clone "https://phoenix.new/git/WENQLj...big-random-string...VHFW/$RANDOM/notebook"</code></p>
<p>Run that locally to get a full copy of the repo! I ran the following to push it to a new repository in my GitHub account:</p>
<div class="highlight highlight-source-shell"><pre>git remote add github https://github.com/simonw/phoenix-new-notebook.git
git push -u github main</pre></div>
<p>You can see the code (and the <a href="https://github.com/simonw/phoenix-new-notebook/commits">commit history</a>) in my <a href="https://github.com/simonw/phoenix-new-notebook">simonw/phoenix-new-notebook</a> repo.</p>
<h4 id="how-much-did-i-learn-">How much did I learn?</h4>
<p>My initial experiments with Phoenix.new were very much <a href="https://simonwillison.net/2025/Mar/19/vibe-coding/">vibe coding</a> - I interacted with the resulting application but didn't pay a great deal of attention to the code that was being written, despite it being presented to me in an IDE that made it very easy to review what was going on.</p>
<p>As a result, I didn't learn much about the low-level syntax details of how Phoenix and Elixir work. I did however get a strong feel for the <em>shape</em> of Elixir and Phoenix at a high level as the code danced past my eye.</p>
<p>It turns out having an LLM write an application in front of you is a great way to start building understanding of what a framework can do.</p>
<p>It’s almost like watching a YouTube livestream of an experienced developer speed running building an application, except that app is exactly what you asked them to build and you can interject and send them in a new direction at any moment.</p>
<h4 id="expanding-beyond-elixir-and-phoenix">Expanding beyond Elixir and Phoenix</h4>
<p>Chris's announcement included this note:</p>
<blockquote>
<p>At this point you might be wondering – can I just ask it to build a Rails app? Or an Expo React Native app? Or Svelte? Or Go?</p>
<p>Yes, you can.</p>
<p>Our system prompt is tuned for Phoenix today, but all languages you care about are already installed. We’re still figuring out where to take this, but adding new languages and frameworks definitely ranks highly in my plans.</p>
</blockquote>
<p>The browser-based IDE includes a terminal, and I checked and <code>python3</code> and <code>python3 -m pip install datasette</code> work there already.</p>
<p>If Fly do evolve this into a framework-agnostic tool for building web apps they'll probably need to rebrand it from Phoenix.new to something a bit more generic!</p>
<p>Phoenix.new is currently priced as a $20/month subscription. Val Town recently switched the pricing for their similar Townie assistant from a subscription to to <a href="https://blog.val.town/townie-credits">pay per use</a>, presumably because for many users this kind of tool is something they would only use intermittently, although given the capabilities of Phoenix.new it's possible it could become a monthly driver for people, especially as it expands out to cover more frameworks.</p>
<p><small><em>Fly sponsor some of our work on Datasette Cloud (see <a href="https://simonwillison.net/about/#disclosures">disclosures</a>), but this article is not sponsored content and Fly did not request or review this post.</em></small></p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/erlang">erlang</a>, <a href="https://simonwillison.net/tags/sqlite">sqlite</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/fly">fly</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a>, <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a>, <a href="https://simonwillison.net/tags/ai-assisted-search">ai-assisted-search</a>, <a href="https://simonwillison.net/tags/coding-agents">coding-agents</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/23/phoenix-new/#atom-everything>

---

## GMK NucBox G10 now available for $190 and up (Mini PC with Ryzen 5 3500U)

date: 2025-06-23, from: Liliputing

<p>The GMK NucBox G10 is a small, cheap computer with the beating heart of a laptop from&#8230; seven years ago. But that&#8217;s not necessarily a bad thing, because the AMD Ryzen 5 3500U &#8220;Picasso&#8221; processor powering this little computer has some advantages over the Intel &#8220;Twin Lake&#8221; chips that you usually find in mini PCs in [&#8230;]</p>
<p>The post <a href="https://liliputing.com/gmk-nucbox-g10-now-available-for-190-and-up-mini-pc-with-ryzen-5-3500u/">GMK NucBox G10 now available for $190 and up (Mini PC with Ryzen 5 3500U)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/gmk-nucbox-g10-now-available-for-190-and-up-mini-pc-with-ryzen-5-3500u/>

---

## House lawmakers demand answers from California health exchange on sending data to LinkedIn

date: 2025-06-23, from: The Markup blog

The lawmakers cite a Markup and CalMatters investigation that first revealed Covered California’s data practices in April. 

<br> 

<https://themarkup.org/pixel-hunt/2025/06/23/house-lawmakers-demand-answers-from-california-health-exchange-on-sending-data-to-linkedin>

---

## Disclosures

date: 2025-06-23, updated: 2025-06-23, from: Simon Willison’s Weblog

<p>I've added a <a href="https://simonwillison.net/about/#disclosures">Disclosures section</a> to my about page, listing my various sources of income and the companies that directly sponsor my work or have supported it in the recent past.</p>
<blockquote>
<p>I do not receive any compensation writing about specific topics on this blog - no sponsored content! I plan to continue this policy. If I ever change this I will disclose that both here and in the post itself. [...]</p>
</blockquote>
<p>I see my credibility as one of my most valuable assets, so it's important to be transparent about how financial interests may influence my writing here.</p>
<p>I took inspiration from <a href="https://www.mollywhite.net/crypto-disclosures/">Molly White's disclosures page</a>.</p>

    <p>Tags: <a href="https://simonwillison.net/tags/blogging">blogging</a>, <a href="https://simonwillison.net/tags/molly-white">molly-white</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/23/disclosures/#atom-everything>

---

## Meta's AI Model 'Memorized' Huge Chunks of Books, Including 'Harry Potter' and '1984'

date: 2025-06-23, from: 404 Media Group

Researchers found Meta’s popular Llama 3.1 70B has a capacity to recite passages from 'The Sorcerer's Stone' at a rate much higher than could happen by chance. 

<br> 

<https://www.404media.co/meta-ai-model-memorized-harry-potter-books/>

---

**@Dave Winer's linkblog** (date: 2025-06-23, from: Dave Winer's linkblog)

The Republican Plot to Un-Educate America. 

<br> 

<https://newrepublic.com/article/197017/budget-bill-kill-higher-education>

---

## Presidential Records Hide Historical Truth

date: 2025-06-23, from: Guy Kawasaki blog

Shannon Bow O'Brien, Associate Professor of Instruction, The University of Texas at Austin. 

<br> 

<https://guykawasaki.substack.com/p/presidential-records-hide-historical>

---

## This 7 inch mini-laptop with an Intel N100 chip sells for $250 and up

date: 2025-06-23, from: Liliputing

<p>Netbooks may have gone out of fashion years ago, but a handful of Chinese PC makers continue to crank out cheap, tiny laptops with hardware that&#8217;s just good enough for basic tasks&#8230; sometimes by stuffing newer components into older models. Case in point? The X-Plus Piccolo Series71 is a mini-laptop with a 7 inch display, [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-7-inch-mini-laptop-with-an-intel-n100-chip-sells-for-250-and-up/">This 7 inch mini-laptop with an Intel N100 chip sells for $250 and up</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-7-inch-mini-laptop-with-an-intel-n100-chip-sells-for-250-and-up/>

---

## Using AI Right Now: A Quick Guide

date: 2025-06-23, from: One Useful Thing

Which AIs to use, and how to use them 

<br> 

<https://www.oneusefulthing.org/p/using-ai-right-now-a-quick-guide>

---

## F1: la película – un comercial digno del Super Bowl

date: 2025-06-23, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Dirección: Joseph Kosinski. Guion: Joseph Kosinski, Ehren Kruger. Países: Estados Unidos. Elenco: Brad Pitt, Javier Bardem, Kerry Condon, Damson Idris, Tobias Menzies. Más información de la película: https://www.imdb.com/title/tt16311594/ El equipo APXGP de la Fórmula 1, recién adquirido por Ruben Cervantes (Javier Bardem), se encuentra en aprietos: es el último equipo en la tabla del campeonato [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/resenas-f1-la-pelicula/">F1: la película &#8211; un comercial digno del Super Bowl</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/resenas-f1-la-pelicula/?utm_source=rss&utm_medium=rss&utm_campaign=resenas-f1-la-pelicula>

---

## Vote for the June 2025 + Post Topic

date: 2025-06-23, from: Computer ads from the Past

Past ads get a second chance. 

<br> 

<https://computeradsfromthepast.substack.com/p/vote-for-the-june-2025-post-topic>

---

## Announcing Bacalhau v1.8.0: Intelligent Edge Computing Meets Enterprise Integration

date: 2025-06-23, from: Bacalhau Blog

Discover how Bacalhau v1.8.0 transforms distributed computing with a native Splunk integration, name-based job management, and enhanced daemon orchestration. 

<br> 

<https://blog.bacalhau.org/p/announcing-bacalhau-v180>

---

## EBR-I Museum, Nuclear Jet Engines, and Automation

date: 2025-06-23, updated: 2025-06-23, from: Russell Graves, Syonyk's Project Blog

 

<br> 

<https://www.sevarg.net/2025/06/23/ebr-i-tour-and-automation/>

---

## Here's the Video for Our Sixth FOIA Forum: Massive Blue

date: 2025-06-23, from: 404 Media Group

Here is the video archive for our FOIA Forum where we explained how we got records about Massive Blue, a company selling AI personas to cops. 

<br> 

<https://www.404media.co/heres-the-video-for-our-sixth-foia-forum-massive-blue/>

---

## 'A Black Hole of Energy Use': Meta's Massive AI Data Center Is Stressing Out a Louisiana Community

date: 2025-06-23, from: 404 Media Group

Details about how Meta's nearly Manhattan-sized data center will impact consumers' power bills are still secret. 

<br> 

<https://www.404media.co/a-black-hole-of-energy-use-metas-massive-ai-data-center-is-stressing-out-a-louisiana-community/>

---

## Curse Your Sudden but Inevitable Betrayal

date: 2025-06-23, updated: 2025-06-23, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/06/23/curse-your-sudden-but-inevitable-betrayal/>

---

## Lenovo Chromebook Plus is the first to feature MediaTek’s Kompanio Ultra chip with a 50 TOPS NPU

date: 2025-06-23, from: Liliputing

<p>Thew new Lenovo Chromebook Plus (14&#8243;, Gen 10) is a premium Chromebook with a 14 inch, 1920 x 1200 pixel OLED display, support for up to 16GB of LPDDR5 memory, up to 256GB of storage, quad speakers with Dolby Atmos sound, and a 60 Wh battery that Lenovo says provides up to 17 hours of battery [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lenovo-chromebook-plus-is-the-first-to-feature-mediateks-kompanio-ultra-chip-with-a-50-tops-npu/">Lenovo Chromebook Plus is the first to feature MediaTek&#8217;s Kompanio Ultra chip with a 50 TOPS NPU</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lenovo-chromebook-plus-is-the-first-to-feature-mediateks-kompanio-ultra-chip-with-a-50-tops-npu/>

---

## Things technical writers shouldn't care about... yet

date: 2025-06-23, from: Blog by Fabrizio Ferri-Benedetti

<p>Strategy, Michael Porter <a href="https://www.amazon.com/Strategy-Creating-Shared-Michael-Porter/dp/1633699161">wrote</a>, is choosing what <em>not</em> to do. Now, the problem with knowledge work such as the one tech writers carry out is that it’s full of things that <em>seem</em> to require equally important, time-consuming decisions. While engaging in lengthy disquisitions might be alluring, endlessly combing the Zen garden of theory doesn’t solve the basic problem of the <a href="https://passo.uno/docs-hierarchy-of-needs/">docs hierarchy of needs</a>, which is <em>writing the damn docs</em> and making sure they’re accurate and useful.</p> 

<br> 

<https://passo.uno/things-tech-writers-shouldnt-care-about/>

---

## Bonds, Beats, and Lawsuits: How Ed Sheeran Won

date: 2025-06-23, from: Authors Union blogs

Structured Asset doesn’t make music nor aim to enrich our cultural life; instead, it uses copyright enforcement as a weapon against artists like Ed Sheeran, and turns a system meant to protect creativity into a mere vehicle for chasing profit. 

<br> 

<https://www.authorsalliance.org/2025/06/23/bonds-beats-and-lawsuits-how-ed-sheeran-won/>

---

## CNN Report: Purism is the Only Known U.S. Phone Manufacturer

date: 2025-06-23, from: Purism News and Events

<p>In a recent CNN report, skepticism surrounds the Trump Organization’s claim that its new “T1” smartphone is “Made in the USA.” Experts, including Todd Weaver, CEO of Purism, challenged the claim, citing striking similarities between the T1 and a low-cost Chinese phone, the Revvl 7 Pro 5G, made by Wingtech, a Chinese manufacturer.</p>
<p>The post <a rel="nofollow" href="https://puri.sm/posts/cnn-report-purism-is-the-only-known-u-s-phone-manufacturer/">CNN Report: Purism is the Only Known U.S. Phone Manufacturer</a> appeared first on <a rel="nofollow" href="https://puri.sm/">Purism</a>.</p>
 

<br> 

<https://puri.sm/posts/cnn-report-purism-is-the-only-known-u-s-phone-manufacturer/>

---

## MAGA Will Devastate Rural America

date: 2025-06-23, from: Paul Krugman

Trump&#8217;s policies will hit the American heartland hard, very hard 

<br> 

<https://paulkrugman.substack.com/p/maga-will-devastate-rural-america>

---

## Atari 2600 digital photo frame

date: 2025-06-23, from: Raspberry Pi News (.com)

<p>Display photos as blocky 8-bit masterpieces on a classic console with the help of Raspberry Pi Pico. </p>
<p>The post <a href="https://www.raspberrypi.com/news/atari-2600-digital-photo-frame/">Atari 2600 digital photo frame</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/atari-2600-digital-photo-frame/>

---

## Hey New Yorkers — VOTE TOMORROW!

date: 2025-06-23, from: Michael Moore's blog

Please vote for Zohran Mamdani for Mayor. 

<br> 

<https://www.michaelmoore.com/p/hey-new-yorkers-vote-tomorrow>

---

**@Dave Winer's linkblog** (date: 2025-06-23, from: Dave Winer's linkblog)

February: Trump’s global funding freeze leaves anti-terror programs in limbo. 

<br> 

<https://www.washingtonpost.com/world/2025/02/16/trump-funding-freeze-terrorism-africa/>

---

## MicroTimes Interviews Apple Newton Devs (1993)

date: 2025-06-23, from: Computer ads from the Past

The Newton laid the groundwork for the I-devices. 

<br> 

<https://computeradsfromthepast.substack.com/p/microtimes-interviews-apple-newton>

---

**@Dave Winer's linkblog** (date: 2025-06-23, from: Dave Winer's linkblog)

‘Ticking time bomb’: Ice detainee dies in transit as experts say more deaths likely. 

<br> 

<https://www.theguardian.com/us-news/2025/jun/22/ice-detainee-death-georgia>

---

## 576. The Irish War of Independence: Rise of the IRA (Part 1)

date: 2025-06-22, from: This is history podcast

<p>What are the origins of the Irish War of Independence? What impact did the First World War have on Irish efforts for Home Rule? What was the mood in Ireland following the bloody Easter Rising of 1916? And, who was Éamon de Valera, the man who dominated the story of not only Irish politics in [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/576-the-irish-war-of-independence-rise-of-the-ira-part-1/">576. The Irish War of Independence: Rise of the IRA (Part 1)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/576-the-irish-war-of-independence-rise-of-the-ira-part-1/>

---

**@Dave Winer's linkblog** (date: 2025-06-22, from: Dave Winer's linkblog)

Kevin Durant trade: Rockets land Suns star in NBA blockbuster. 

<br> 

<https://www.cbssports.com/nba/news/kevin-durant-trade-rockets-land-suns-star-in-nba-blockbuster-as-jalen-green-headlines-return/>

---

## LLMs: Dishonest, unpredictable and potentially dangerous. 

date: 2025-06-22, from: Gary Marcus blog

Will we ever be able to control them? 

<br> 

<https://garymarcus.substack.com/p/llms-dishonest-unpredictable-and>

---

## Asus ExpertCenter PN54 with AMD Krackent Point now available for $589 and up

date: 2025-06-22, from: Liliputing

<p>The Asus ExpertCenter PN54 is a mini PC that measures 130 x 130 x 34mm (5.1&#8243; x 5.1&#8243; x 1.3&#8243;) and features support for up to an AMD Ryzen 7 350 &#8220;Krackan Point&#8221; processor. First unveiled during CES in January, the ExpertCenter PN54 is now available for purchase for $589 and up from B&#38;H and [&#8230;]</p>
<p>The post <a href="https://liliputing.com/asus-expertcenter-pn54-with-amd-krackent-point-now-available-for-589-and-up/">Asus ExpertCenter PN54 with AMD Krackent Point now available for $589 and up</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/asus-expertcenter-pn54-with-amd-krackent-point-now-available-for-589-and-up/>

---

**@Dave Winer's linkblog** (date: 2025-06-22, from: Dave Winer's linkblog)

How the Grateful Dead built the internet. 

<br> 

<https://www.bbc.com/future/article/20250618-how-the-grateful-dead-shaped-social-media>

---

## GMK Evo-T1 mini PC with Intel Core Ultra 9 285H coming soon

date: 2025-06-22, from: Liliputing

<p>The GMK EVO-T1 is a small desktop computer that features an Intel Core Ultra 9 285H Arrow Lake processor, support for up to 96GB of DDR5-5600 RAM, and three M.2 2280 slots for PCIe 4.0 x4 storage. First introduced in May, it goes on sale soon in China, where a model with 64GB of RAM and [&#8230;]</p>
<p>The post <a href="https://liliputing.com/gmk-evo-t1-mini-pc-with-intel-core-ultra-9-285h-coming-soon/">GMK Evo-T1 mini PC with Intel Core Ultra 9 285H coming soon</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/gmk-evo-t1-mini-pc-with-intel-core-ultra-9-285h-coming-soon/>

---

## 2025 C&W Session Review: From Chatbot to Classroom: Understanding Student and Instructor Use and Perceptions of AI (Session C)

date: 2025-06-22, from: Digital Humanities Quarterly News

Niche Session: Students’ Use of AI  Speakers: Amber Buck and Amy Dayton (University of Alabama, Tuscaloosa) This panel featured four speakers who presented three different papers that explored various ongoing research on text-generating technologies, students’ current perceptions of AI, how they engage with it in their writing, and instructors&#8217; stances on AI in the writing [...]
<p><a href="https://www.digitalrhetoriccollaborative.org/2025/06/22/2025-cw-session-review-from-chatbot-to-classroom-understanding-student-and-instructor-use-and-perceptions-of-ai-session-c/" rel="nofollow">Source</a></p> 

<br> 

<https://www.digitalrhetoriccollaborative.org/2025/06/22/2025-cw-session-review-from-chatbot-to-classroom-understanding-student-and-instructor-use-and-perceptions-of-ai-session-c/>

---

## 2025 C&W Session Review: “Invention, AI, and Circulation” (Session F)

date: 2025-06-22, from: Digital Humanities Quarterly News

Speakers: Ashley Beardsley (Western Illinois University), Jason Palmer (Georgia State University), Antonio Hamilton (University of Illinois at Urbana-Champaign) This panel brought together three presentations that, on the surface, may not seem to belong in the same room: a history of Junior League cookbooks, an attempt to define the still-forming category of “AI rhetoric,” and a [...]
<p><a href="https://www.digitalrhetoriccollaborative.org/2025/06/22/2025-cw-session-review-invention-ai-and-circulation-session-f/" rel="nofollow">Source</a></p> 

<br> 

<https://www.digitalrhetoriccollaborative.org/2025/06/22/2025-cw-session-review-invention-ai-and-circulation-session-f/>

---

## 2025 C&W Session Review: “Moving through Space” (Session H)

date: 2025-06-22, from: Digital Humanities Quarterly News

Speakers: Maddie Brueger (University of Texas at Austin), Megan Mericle (Georgia Institute of Technology), Alba Newmann Holmes (Swarthmore College) At a conference where most panels centered on the expanding influence of generative AI, “Moving through Space” closed out the conference by refreshingly turning our attention to embodiment, place, and the “more-than-human” world. Each presentation explored [...]
<p><a href="https://www.digitalrhetoriccollaborative.org/2025/06/22/2025-cw-session-review-moving-through-space-session-h/" rel="nofollow">Source</a></p> 

<br> 

<https://www.digitalrhetoriccollaborative.org/2025/06/22/2025-cw-session-review-moving-through-space-session-h/>

---

## Quoting Kent Beck

date: 2025-06-22, updated: 2025-06-22, from: Simon Willison’s Weblog

<blockquote cite="https://www.youtube.com/watch?v=aSXaxOdVtAQ&amp;t=12m30s"><p>So you can think really big thoughts and the leverage of having those big thoughts has just suddenly expanded enormously. I had <a href="https://twitter.com/KentBeck/status/1648413998025707520">this tweet</a> two years ago where I said "90% of my skills just went to zero dollars and 10% of my skills just went up 1000x". And this is exactly what I'm talking about - having a vision, being able to set milestones towards that vision, keeping track of a design to maintain or control the levels of complexity as you go forward. Those are hugely leveraged skills now compared to knowing where to put the ampersands and the stars and the brackets in Rust.</p></blockquote>
<p class="cite">&mdash; <a href="https://www.youtube.com/watch?v=aSXaxOdVtAQ&amp;t=12m30s">Kent Beck</a>, interview with Gergely Orosz</p>

    <p>Tags: <a href="https://simonwillison.net/tags/gergely-orosz">gergely-orosz</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/careers">careers</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/22/kent-beck/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-06-22, from: Dave Winer's linkblog)

Republicans can&#39;t stop wasting money - they want to scrap USPS&#39; awesome EVs. 

<br> 

<https://electrek.co/2025/06/22/republicans-cant-stop-wasting-money-they-want-to-scrap-usps-awesome-evs/>

---

**@Dave Winer's linkblog** (date: 2025-06-22, from: Dave Winer's linkblog)

&quot;Trump has not put U.S. boots on the ground to fight Iran, but he has put U.S. troops on the ground for an uninvited military occupation of California.&quot; 

<br> 

<https://www.theatlantic.com/ideas/archive/2025/06/right-move-wrong-team/683283/?gift=f35zZN0v_gDFE8xNwlQAHUFSACi_DiUH7c0wJpT9H7w&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

## Inequality, Part IV: Oligarchs

date: 2025-06-22, from: Paul Krugman

The rise of mega-fortunes 

<br> 

<https://paulkrugman.substack.com/p/inequality-part-iv-oligarchs>

---

## KDE Plasma 6.4 is out

date: 2025-06-22, from: Libre News

What's new? What's old? What's the meaning of life? 

<br> 

<https://thelibre.news/kde-plasma-6-4-is-out/>

---

**@Dave Winer's linkblog** (date: 2025-06-22, from: Dave Winer's linkblog)

Top Democrats left in dark on Iran strike plans. 

<br> 

<https://www.axios.com/2025/06/22/democrats-trump-iran-nuclear-facilities>

---

**@Dave Winer's linkblog** (date: 2025-06-22, from: Dave Winer's linkblog)

Trump bombs Iranian nuclear sites without congressional authorization. 

<br> 

<https://reason.com/2025/06/21/trump-shreds-the-constitution-by-bombing-iran/>

