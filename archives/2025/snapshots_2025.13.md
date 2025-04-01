---
title: snapshots
updated: 2025-04-01 06:09:07
---

# snapshots

(date: 2025-04-01 06:09:07)

---

## OnlyFans Sued After Two Guys Realized They Might Not Actually Be Talking to Models

date: 2025-04-01, from: 404 Media Group

A class action complaint claims OnlyFans is allowing fraud on its platform by letting models use agency chat service to talk to fans. 

<br> 

<https://www.404media.co/onlyfans-sued-after-two-guys-realized-they-might-not-actually-be-talking-to-models/>

---

**@Dave Winer's linkblog** (date: 2025-04-01, from: Dave Winer's linkblog)

Trump&#39;s tariffs are like his idea for injecting bleach to get rid of Covid. 

<br> 

<https://www.youtube.com/watch?v=zicGxU5MfwE>

---

**@Dave Winer's linkblog** (date: 2025-04-01, from: Dave Winer's linkblog)

It’s the moment of truth for Zuckerberg’s Trump bet. 

<br> 

<https://www.theverge.com/news/640368/mark-zuckerberg-meta-eu-fine-trump>

---

## A Note on Trade Deficits and Manufacturing

date: 2025-04-01, from: Paul Krugman

Some perspective on the eve of trade war 

<br> 

<https://paulkrugman.substack.com/p/a-note-on-trade-deficits-and-manufacturing>

---

## Radar Trends to Watch: April 2025

date: 2025-04-01, from: O'Reilly Radar

March has been the biggest month that Trends has ever had. In addition to almost daily announcements about AI, a lot has been going on in programming, in security, in operations (which usually doesn’t merit its own topic), and even in quantum computing. It’s been a long time since we’ve had much to say about [&#8230;] 

<br> 

<https://www.oreilly.com/radar/radar-trends-to-watch-april-2025/>

---

## SPD muss Informationsfreiheit schützen!

date: 2025-04-01, updated: 2025-04-01, from: Chaos Computer Club Updates

Die CDU/CSU plant, das Informationsfreiheitsgesetz in seiner jetzigen Form abzuschaffen. Der CCC fordert die SPD auf, dies zu verhindern. 

<br> 

<https://www.ccc.de/de/updates/2025/spd-muss-informationsfreiheit-schuetzen>

---

## Pydantic Evals

date: 2025-04-01, updated: 2025-04-01, from: Simon Willison’s Weblog

<p><strong><a href="https://ai.pydantic.dev/evals/">Pydantic Evals</a></strong></p>
Brand new package from the Pydantic AI team which directly tackles what I consider to be the single hardest problem in AI engineering: building evals to determine if your LLM-based system is working correctly and getting better over time.</p>
<p>The feature is described as "in beta" and comes with this very realistic warning:</p>
<blockquote>
<p>Unlike unit tests, evals are an emerging art/science; anyone who claims to know for sure exactly how your evals should be defined can safely be ignored.</p>
</blockquote>
<p>This code example from their documentation illustrates the relationship between the two key nouns - Cases and Datasets:</p>
<pre><span class="pl-k">from</span> <span class="pl-s1">pydantic_evals</span> <span class="pl-k">import</span> <span class="pl-v">Case</span>, <span class="pl-v">Dataset</span>

<span class="pl-s1">case1</span> <span class="pl-c1">=</span> <span class="pl-en">Case</span>(
    <span class="pl-s1">name</span><span class="pl-c1">=</span><span class="pl-s">"simple_case"</span>,
    <span class="pl-s1">inputs</span><span class="pl-c1">=</span><span class="pl-s">"What is the capital of France?"</span>,
    <span class="pl-s1">expected_output</span><span class="pl-c1">=</span><span class="pl-s">"Paris"</span>,
    <span class="pl-s1">metadata</span><span class="pl-c1">=</span>{<span class="pl-s">"difficulty"</span>: <span class="pl-s">"easy"</span>},
)

<span class="pl-s1">dataset</span> <span class="pl-c1">=</span> <span class="pl-en">Dataset</span>(<span class="pl-s1">cases</span><span class="pl-c1">=</span>[<span class="pl-s1">case1</span>])</pre>

<p>The library also supports custom evaluators, including LLM-as-a-judge:</p>
<pre><span class="pl-en">Case</span>(
    <span class="pl-s1">name</span><span class="pl-c1">=</span><span class="pl-s">"vegetarian_recipe"</span>,
    <span class="pl-s1">inputs</span><span class="pl-c1">=</span><span class="pl-en">CustomerOrder</span>(
        <span class="pl-s1">dish_name</span><span class="pl-c1">=</span><span class="pl-s">"Spaghetti Bolognese"</span>, <span class="pl-s1">dietary_restriction</span><span class="pl-c1">=</span><span class="pl-s">"vegetarian"</span>
    ),
    <span class="pl-s1">expected_output</span><span class="pl-c1">=</span><span class="pl-c1">None</span>,
    <span class="pl-s1">metadata</span><span class="pl-c1">=</span>{<span class="pl-s">"focus"</span>: <span class="pl-s">"vegetarian"</span>},
    <span class="pl-s1">evaluators</span><span class="pl-c1">=</span>(
        <span class="pl-en">LLMJudge</span>(
            <span class="pl-s1">rubric</span><span class="pl-c1">=</span><span class="pl-s">"Recipe should not contain meat or animal products"</span>,
        ),
    ),
)</pre>

<p>Cases and datasets can also be serialized to YAML.</p>
<p>My first impressions are that this looks like a solid implementation of a sensible design. I'm looking forward to trying it out against a real project.


    <p>Tags: <a href="https://simonwillison.net/tags/evals">evals</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/pydantic">pydantic</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/1/pydantic-evals/#atom-everything>

---

## Why is everything so scalable?

date: 2025-04-01, from: Stavros Stuff

<div class="pull-quote">Everyone is a FAANG engineer</div><p>I&#8217;m entirely convinced that basically every developer alive today heard the adage &#8220;dress for the job you want, not the job you have&#8221; and figured that, since they always wear jeans and a t-shirt anyway, they might as well apply it to their systems&#8217; architecture.
This explains why the stack of every single company I&#8217;ve seen is invariably AWS/GCP with at least thirty microservices (how else will you keep the code tidy?), a distributed datastore 

<br> 

<https://www.stavros.io/posts/why-is-everything-so-scalable/>

---

## Quoting Brad Lightcap

date: 2025-04-01, updated: 2025-04-01, from: Simon Willison’s Weblog

<blockquote cite="https://twitter.com/bradlightcap/status/1906823733446427065"><p>We’re planning to release a very capable open language model in the coming months, our first since GPT-2. [...]</p>
<p>As models improve, there is more and more demand to run them everywhere. Through conversations with startups and developers, it became clear how important it was to be able to support a spectrum of needs, such as custom fine-tuning for specialized tasks, more tunable latency, running on-prem, or deployments requiring full data control.</p></blockquote>
<p class="cite">&mdash; <a href="https://twitter.com/bradlightcap/status/1906823733446427065">Brad Lightcap</a>, COO, OpenAI</p>

    <p>Tags: <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/1/brad-lightcap/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-04-01, from: Dave Winer's linkblog)

Trump officials to review $9bn in Harvard funds over antisemitism claims. 

<br> 

<https://www.theguardian.com/education/2025/mar/31/trump-harvard-funding-review>

---

**@Dave Winer's linkblog** (date: 2025-04-01, from: Dave Winer's linkblog)

Bird flu could be on the cusp of transmitting between humans − but there are ways to slow down viral evolution. 

<br> 

<https://theconversation.com/bird-flu-could-be-on-the-cusp-of-transmitting-between-humans-but-there-are-ways-to-slow-down-viral-evolution-250232>

---

**@Dave Winer's linkblog** (date: 2025-04-01, from: Dave Winer's linkblog)

Software is a mathematical science, so if I write a piece that says what a company is telling you about their technology is not true, I’m not saying it because of a conflict, or because I don’t like them, I say it because it’s true. 

<br> 

<http://scripting.com/2025/03/11/113838.html>

---

## LLMs Are Not Security Mitigations

date: 2025-04-01, updated: 2025-04-01, from: Tom Kellog blog

LLMs are great code reviewers. They can even spot security mistakes that open us up to vulnerabilities.
But no, they’re not an adequate mitigation. You can’t use them to ensure security. 

<br> 

<http://timkellogg.me/blog/2025/04/01/llm-security>

---

## Apply for funding before June 1st 2025

date: 2025-04-01, updated: 2025-04-01, from: nlnet feed

 

<br> 

<https://nlnet.nl/news/2025/20250401-call.html>

---

## Managed HTTPS tunnels in one-click with inlets cloud

date: 2025-04-01, updated: 2025-04-01, from: Inlets.dev, cloud tunneling

Imagine if you could expose a local HTTP service, without TLS enabled to the public Internet with a HTTPS certificate with just one click. 

<br> 

<https://inlets.dev/blog/tutorial/2025/04/01/one-click-hosted-http-tunnels.html>

---

## nimi sin

date: 2025-04-01, from: Nora Tindall's blog

<blockquote>
<p>This post is part of <a href="https://www.aprilcools.club/">April Cools Club</a>: an April 1st effort to publish
genuine essays on unexpected topics. Please enjoy these true stories, and rest
assured that the tech content will be back <del>soon</del> eventually!</p></blockquote>
<p><em>sina o pali e nimi sin. sina o pana e nimi mute tawa mi.</em><br>
<em>nimi o kama sama pi soweli lili. mi wile e ni: nimi li kama mute a.</em></p>
<p>That&rsquo;s <a href="https://tokipona.org/"><em>toki pona</em></a>, a constructed language with somewhere between 118
and 181 words, depending on who you ask. It was meant to be quick and easy to
learn, but more importantly, to <a href="https://en.wikipedia.org/wiki/Linguistic_relativity">guide the mind</a> toward a simpler,
better, more <em>pona</em> way of being. The fewer words, the broader their
semantic space, the more contextual and general their meaning, the better.
That&rsquo;s the <em>toki pona</em> philosophy - but that&rsquo;s not what I&rsquo;m asking you for.</p> 

<br> 

<https://nora.codes/post/nimi-sin/>

---

**@Dave Winer's linkblog** (date: 2025-03-31, from: Dave Winer's linkblog)

Trump Administration Will Review Billions in Funding for Harvard. 

<br> 

<https://www.nytimes.com/2025/03/31/us/trump-administration-harvard-funding.html?unlocked_article_code=1.8E4.FKTT.InfhSzOCRWtU&smid=url-share>

---

**@Dave Winer's linkblog** (date: 2025-03-31, from: Dave Winer's linkblog)

OpenAI just raised another $40 billion funding round. 

<br> 

<https://www.theverge.com/news/640259/openai-40-billion-softbank-investment>

---

## debug-gym

date: 2025-03-31, updated: 2025-03-31, from: Simon Willison’s Weblog

<p><strong><a href="https://microsoft.github.io/debug-gym/">debug-gym</a></strong></p>
New paper and code from Microsoft Research that experiments with giving LLMs access to the Python debugger. They found that the best models could indeed improve their results by running pdb as a tool.</p>
<p>They saw the best results overall from Claude 3.7 Sonnet against <a href="https://www.swebench.com/lite.html">SWE-bench Lite</a>, where it scored 37.2% in rewrite mode without a debugger, 48.4% with their debugger tool and 52.1% with debug(5) - a mechanism where the pdb tool is made available only after the 5th rewrite attempt.</p>
<p>Their code is <a href="https://github.com/microsoft/debug-gym">available on GitHub</a>. I found this implementation of <a href="https://github.com/microsoft/debug-gym/blob/1.0.0/debug_gym/gym/tools/pdb.py">the pdb tool</a>, and tracked down the main system and user prompt in <a href="https://github.com/microsoft/debug-gym/blob/1.0.0/debug_gym/agents/debug_agent.py">agents/debug_agent.py</a>:</p>
<p>System prompt:</p>
<blockquote>
<p><code>Your goal is to debug a Python program to make sure it can pass a set of test functions. You have access to the pdb debugger tools, you can use them to investigate the code, set breakpoints, and print necessary values to identify the bugs. Once you have gained enough information, propose a rewriting patch to fix the bugs. Avoid rewriting the entire code, focus on the bugs only.</code></p>
</blockquote>
<p>User prompt (which they call an "action prompt"):</p>
<blockquote>
<p><code>Based on the instruction, the current code, the last execution output, and the history information, continue your debugging process using pdb commands or to propose a patch using rewrite command. Output a single command, nothing else. Do not repeat your previous commands unless they can provide more information. You must be concise and avoid overthinking.</code></p>
</blockquote>

    <p><small></small>Via <a href="https://jack-clark.net/2025/03/31/import-ai-406-ai-driven-software-explosion-robot-hands-are-still-bad-better-llms-via-pdb/">Import AI</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/microsoft">microsoft</a>, <a href="https://simonwillison.net/tags/claude">claude</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/31/debug-gym/#atom-everything>

---

## Addison Kliewer – Bridging Academia and Industry with Technical Writing Mastery

date: 2025-03-31, from: Digital Humanities Quarterly News

Addison Kliewer did not initially plan to become a technical writer. As an undergraduate honors student majoring in English at the University of Texas, Austin, he envisioned an academic career in publishing, teaching, or even writing books. He was drawn to how storytelling can be enriching and insightful, fascinated by how clothing symbolized identity and [...]
<p><a href="https://www.digitalrhetoriccollaborative.org/2025/03/31/addison-kliewer-bridging-academia-and-industry-with-technical-writing-mastery/" rel="nofollow">Source</a></p> 

<br> 

<https://www.digitalrhetoriccollaborative.org/2025/03/31/addison-kliewer-bridging-academia-and-industry-with-technical-writing-mastery/>

---

## Lilbits: ZimaBoard 2 pocket-sized server is coming, Alexa+ Early Access is here, and more Copilot+ features roll out to Intel and AMD PCs

date: 2025-03-31, from: Liliputing

<p>Four years after launching a single-board server with an Intel Apollo Lake processor, the makers of the ZimaBoard are preparing to introduce a new model. The company hasn&#8217;t provided detailed specifications yet, but the design, expansion slots, and processor have all been upgraded for the upcoming ZimaBoard 2. In other recent tech news from around [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-zimaboard-2-pocket-sized-server-is-coming-alexa-early-access-is-here-and-more-copilot-features-roll-out-to-intel-and-amd-pcs/">Lilbits: ZimaBoard 2 pocket-sized server is coming, Alexa+ Early Access is here, and more Copilot+ features roll out to Intel and AMD PCs</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-zimaboard-2-pocket-sized-server-is-coming-alexa-early-access-is-here-and-more-copilot-features-roll-out-to-intel-and-amd-pcs/>

---

## macOS 15.4

date: 2025-03-31, from: Michael Tsai

Juli Clover (release notes, security, enterprise, developer, full installer, IPSW): With macOS 15.4, Apple is bringing Mail Categorization to the Mac. The Mail app features dedicated categories like transactions, updates, and promotions, with important emails organized into a primary section.Apple News+ subscribers now have access to an Apple News Food section with recipes, food articles, [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/31/macos-15-4/>

---

## macOS 14.7.5 and macOS 13.7.5

date: 2025-03-31, from: Michael Tsai

macOS 14.7.5 (full installer, security): This update provides important security fixes and is recommended for all users. macOS 13.7.5 (full installer, security): This update provides important security fixes and is recommended for all users. Previously: macOS 14.7.4 and macOS 13.7.4 

<br> 

<https://mjtsai.com/blog/2025/03/31/macos-14-7-5-and-macos-13-7-5/>

---

## iOS 18.4 and iPadOS 18.4

date: 2025-03-31, from: Michael Tsai

Juli Clover (no iOS/iPadOS release notes, security, enterprise, no developer): iOS 18.4 adds Priority notifications for Apple Intelligence-capable devices, showing you your most notification first. There&#8217;s a dedicated Apple Vision Pro app for Vision Pro owners, and a new Apple News Food feature for Apple News+ subscribers. There&#8217;s lots more quoted in her article, though [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/31/ios-18-4-and-ipados-18-4/>

---

## tvOS 18.4

date: 2025-03-31, from: Michael Tsai

Juli Clover (release notes, security, no developer): Apple shares full release notes for tvOS in its tvOS support document, which is updated after each new version of tvOS comes out. But all it says is &#8220;performance and stability improvements.&#8221; Previously: tvOS 18.3.1 

<br> 

<https://mjtsai.com/blog/2025/03/31/tvos-18-4/>

---

## watchOS 11.4

date: 2025-03-31, from: Michael Tsai

Ryan Christoffel (no release notes, no security, no developer): After initially listing watchOS 11.4 on its website as released, the site has since been updated to remove the update. It&#8217;s unknown when it will return. Previously: watchOS 11.3.1 

<br> 

<https://mjtsai.com/blog/2025/03/31/watchos-11-4/>

---

## visionOS 2.4

date: 2025-03-31, from: Michael Tsai

Juli Clover (no release notes, security, developer, enterprise): The visionOS 2.4 update brings Apple Intelligence to the Vision Pro for the first time, putting it on par with the iPhone, iPad, and Mac. [&#8230;] Along with Apple Intelligence, Apple added a Spatial Gallery app for the Vision Pro. The Spatial Gallery app offers a curated [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/31/visionos-2-4/>

---

## audioOS 18.4

date: 2025-03-31, from: Michael Tsai

Apple: This update includes performance and stability improvements. Previously: audioOS 18.3 

<br> 

<https://mjtsai.com/blog/2025/03/31/audioos-18-4/>

---

## This DIY NAS has four M.2 slots for storage, two 2.5 GbE LAN ports, and an Alder Lake-N processors

date: 2025-03-31, from: Liliputing

<p>The Maiyunda M1S is a small, low-power computer with an Intel Alder Lake-N processor, an aluminum body, and support for plenty of storage thanks to four M.2 2280 slots that can theoretically hold up to 32TB of storage (if you&#8217;re willing to spend the money on four 8GB SSDs). Positioned for use as a server or [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-diy-nas-has-four-m-2-slots-for-storage-two-2-5-gbe-lan-ports-and-an-alder-lake-n-processors/">This DIY NAS has four M.2 slots for storage, two 2.5 GbE LAN ports, and an Alder Lake-N processors</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-diy-nas-has-four-m-2-slots-for-storage-two-2-5-gbe-lan-ports-and-an-alder-lake-n-processors/>

---

## Part 2 – Babylon.js 8.0: Audio, Gaussian Splat and physics updates

date: 2025-03-31, from: Windows Developer Blog

<p>Our mission is to create one of the most powerful, beautiful and simple web rendering engines in the world. The latest Babylon.js 8.0 engine packs a ton of new improvements to help you create stunning experiences.</p>
<h3><strong>Overhauled Audio Engine<
</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2025/03/31/part-2-babylon-js-8-0-audio-gaussian-splat-and-physics-updates/">Part 2 &#8211; Babylon.js 8.0: Audio, Gaussian Splat and physics updates</a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<br> 

<https://blogs.windows.com/windowsdeveloper/2025/03/31/part-2-babylon-js-8-0-audio-gaussian-splat-and-physics-updates/>

---

## Ann and Pete Talk AI

date: 2025-03-31, from: Peter Warden

I&#8217;ve never been much of a podcast or video creator but recently I&#8217;ve started posting a series of short chats with my friend Ann Spencer on YouTube and it&#8217;s been a lot of fun. I realized I hadn&#8217;t mentioned it here, so as they say, please like and subscribe. I&#8217;ve also embedded one of my [&#8230;] 

<br> 

<https://petewarden.com/2025/03/31/ann-and-pete-talk-ai/>

---

## Veterans Bear Brunt Of Cuts

date: 2025-03-31, from: Guy Kawasaki blog

Jamie Rowen, Associate Professor of Legal Studies and Political Science, UMass Amherst 

<br> 

<https://guykawasaki.substack.com/p/veterans-bear-brunt-of-cuts>

---

**@Robert's feed at BlueSky** (date: 2025-03-31, from: Robert's feed at BlueSky)

Chrome, the Internet Explorer of the 21st century. It works and tastes great. Complete with just the right amount of extra surveillance without any of those pesky vitamins a body needs. 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lloqyj45es2w>

---

## Open Source Genetic Database Shuts Down to Protect Users From 'Authoritarian Governments'

date: 2025-03-31, from: 404 Media Group

"The risk/benefit calculus of providing free & open access to individual genetic data in 2025 is very different compared to 14 years ago." 

<br> 

<https://www.404media.co/open-source-genetic-database-opensnp-shuts-down-to-protect-users-from-authoritarian-governments/>

---

## Fire Toolbox v39.1 lets you replace the Fire OS launcher on recent Amazon Fire tablets

date: 2025-03-31, from: Liliputing

<p>Amazon&#8217;s Fire tablets offer pretty good bang for the buck if you&#8217;re just looking at the hardware-to-price ratio. They tend to have decent screens, reasonably good processors, and niche features like&#8230; microSD card readers. But they also run a fork of Android called Fire OS that may not be everybody&#8217;s cup of tea. Fire Toolbox [&#8230;]</p>
<p>The post <a href="https://liliputing.com/fire-toolbox-v39-1-lets-you-replace-the-fire-os-launcher-on-recent-amazon-fire-tablets/">Fire Toolbox v39.1 lets you replace the Fire OS launcher on recent Amazon Fire tablets</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/fire-toolbox-v39-1-lets-you-replace-the-fire-os-launcher-on-recent-amazon-fire-tablets/>

---

## The Elephant in the Closet

date: 2025-03-31, updated: 2025-03-31, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/31/the-elephant-in-the-closet/>

---

## Name that Ware, March 2025

date: 2025-03-31, from: Bunnie's Studio Blog

The Ware for March 2025 is shown below. I was just taking this thing apart to see what went wrong, and thought it had some merit as a name that ware. But perhaps more interestingly, I was also experimenting with my cross-polarized imaging setup. This is a technique a friend of mine told me about [&#8230;] 

<br> 

<https://www.bunniestudios.com/blog/2025/name-that-ware-march-2025/>

---

## Winner, Name that Ware February 2025

date: 2025-03-31, from: Bunnie's Studio Blog

The Ware from last month is the main board from a Lego Duplo Steam Train. As predicted, this was a much easier one to guess. Congrats to MJS for naming it (with a margin of just half an hour ahead of Will), email me for your prize! And again, thanks to spida for contributing yet [&#8230;] 

<br> 

<https://www.bunniestudios.com/blog/2025/winner-name-that-ware-february-2025/>

---

## Nvidia CEO Jensen Huang's Iconic Look Used to Promote Knockoff Leather Jackets

date: 2025-03-31, from: 404 Media Group

Everyone wants to look cool in a leather jacket and lead one of the most valuable companies in the world, but not everyone can pull it off.  

<br> 

<https://www.404media.co/nvidia-ceo-jensen-huangs-iconic-look-used-to-promote-knockoff-leather-jackets/>

---

**@Tomosino's Mastodon feed** (date: 2025-03-31, from: Tomosino's Mastodon feed)

<p>My dad used to work with a guy who only ate French fries</p> 

<br> 

<https://tilde.zone/@tomasino/114257318490544735>

---

## Raspberry Pi’s prestigious Green Economy Mark for sustainable practices

date: 2025-03-31, from: Raspberry Pi News (.com)

<p>We’re proud to hold the London Stock Exchange’s Green Economy Mark, highlighting our dedication to sustainable technology.</p>
<p>The post <a href="https://www.raspberrypi.com/news/raspberry-pis-prestigious-green-economy-mark-for-sustainable-practices/">Raspberry Pi&#8217;s prestigious Green Economy Mark for sustainable practices</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/raspberry-pis-prestigious-green-economy-mark-for-sustainable-practices/>

---

**@Dave Winer's linkblog** (date: 2025-03-31, from: Dave Winer's linkblog)

I agree with DHH. As a user who is in awe of the power of ChatGPT et al, I agree, and add “Only steal from the best.”  Great artists must decide which art to be inspired by. And great artists before they die, should share all their secrets, so the next generation can be even greater. 

<br> 

<https://world.hey.com/dhh/great-ai-steals-280615be>

---

## MAGA is Bad for Business

date: 2025-03-31, from: Paul Krugman

And business owners were deluded to believe otherwise 

<br> 

<https://paulkrugman.substack.com/p/autocracy-is-bad-for-business>

---

**@Dave Winer's linkblog** (date: 2025-03-31, from: Dave Winer's linkblog)

FBI raids home of prominent computer scientist who has gone incommunicado. 

<br> 

<https://arstechnica.com/security/2025/03/computer-scientist-goes-silent-after-fbi-raid-and-purging-from-university-website/>

---

## Summary of changes for March 2025

date: 2025-03-31, from: Hundred Rabbits blog

<p>Hey everyone!</p><p>This is the list of all the changes we've done to our projects during the month of March.</p>

<img src="../media/content/videos/march_2025.jpg" alt="little ninj, a plus ninja, is examining at the contents of a first-aid kit" loading="lazy">

<h2>Summary Of Changes</h2>

<p>In the above illustration, little Ninj is going through a <a href="https://rabbitwaves.ca/site/first_aid_kit.html" target="_blank">first-aid kit</a>, looking through our supplies to see what needs to be topped off and what is out-of-date. Rek drew a list of suggestions on what to include in both a first-aid and a medical kit for the Rabbit Waves project, we plan to add more items soon(thanks to everyone on Mastodon who suggested additions! It'll be in the April update).</p>

<p>We will spend the first few days of April participating in <a href="https://itch.io/jam/flickjam-2025" target="_blank">Flickjam</a>, making small games in the style of <a href="https://www.flickgame.org/index.html" target="_blank">Flickgame</a>, a tool originally made by Increpare, in which the world is navigated by clicking on pixels of different colors to head in different directions. Devine ported <a href="https://wiki.xxiivv.com/site/flick.html" target="_blank">Flickgame to Varvara</a>, and wrote a compiler for flick games to uxn roms.</p>

<p>This past month, Rek finished transcribing the entire 15 weeks of the <a href="../site/victoria_to_sitka_logbook.html">Victoria to Sitka logbook</a>! We have plans to turn it into a book, in the style of <a href="../site/busy_doing_nothing.html">Busy Doing Nothing</a>, with tons of extra content and illustrations.</p>

<p>March was a very good month for silly <a href="https://rabbits.srht.site/days/2025/03/31.html" target="_blank">calendar doodles</a>. Our paper calendar is always in view, it documents important events like releases, appointments, as well as food, memes, and other noteworthy things that happened on each day.</p>

<p><b>Book Club:</b> This month we are still reading <i>The Goldfinch</i> by Donna Tartt(it's a long book).</p>

<p><a href='https://100r.co/site/log.html#mar2025' target='_blank'>Continue Reading</a></p> 

<br> 

<https://100r.co/site/log.html#mar2025>

---

## Understanding Memory Management, Part 4: Rust Ownership and Borrowing

date: 2025-03-31, updated: 2025-03-31, from: Educated Guesswork blog

 

<br> 

<https://educatedguesswork.org/posts/memory-management-4/>

---

## Episode 154 - ACTing Up

date: 2025-03-30, from: Advent of Computing

<p data-pm-slice="1 1 []">The LGP-30 is one of my favorite computers. It's small, scrappy, strange, and wonderous. Among its many wonders are two obscure languages: ACT-I and ACT-III. In this episode we are exploring the ACTS, how the LGP-30 was programmed in practice, and why I've been losing sleep for the last few weeks.</p> 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://traffic.libsyn.com/secure/adventofcomputing/ep154_acting_up.mp3?dest-id=1206722"></source>
</audio> <a href="https://traffic.libsyn.com/secure/adventofcomputing/ep154_acting_up.mp3?dest-id=1206722" target="_blank">download audio/mpeg</a><br> 

<https://adventofcomputing.libsyn.com/episode-154-acting-up>

---

**@Robert's feed at BlueSky** (date: 2025-03-30, from: Robert's feed at BlueSky)

Beautifully spoken, by John Lithgow #OnTyranny 👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3llmxyla64223>

---

## 552. The Last Viking: The Saga of Harald Hardrada (Part 1)

date: 2025-03-30, from: This is history podcast

<p>“I swear I will not flee from this fight. I will triumph, or I will die!” In the 1066 game of thrones for the crown of England, the most extraordinary of the three contenders is arguably Harald Hardrada: viking warrior, daring explorer, emperor’s bodyguard, serpent slayer, alleged lover to an empress, King of Norway, and [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/552-the-last-viking-the-saga-of-harald-hardrada-part-1/">552. The Last Viking: The Saga of Harald Hardrada (Part 1)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/552-the-last-viking-the-saga-of-harald-hardrada-part-1/>

---

**@Robert's feed at BlueSky** (date: 2025-03-30, from: Robert's feed at BlueSky)

So true.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3llmxa4jiws23>

---

## Quoting Ned Batchelder

date: 2025-03-30, updated: 2025-03-30, from: Simon Willison’s Weblog

<blockquote cite="https://nedbatchelder.com/blog/202503/horseless_intelligence.html"><p>My advice about using AI is simple: use AI as an assistant, not an expert, and use it judiciously. Some people will object, “but AI can be wrong!” Yes, and so can the internet in general, but no one now recommends avoiding online resources because they can be wrong. They recommend taking it all with a grain of salt and being careful. That’s what you should do with AI help as well.</p></blockquote>
<p class="cite">&mdash; <a href="https://nedbatchelder.com/blog/202503/horseless_intelligence.html">Ned Batchelder</a>, Horseless intelligence</p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/ned-batchelder">ned-batchelder</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/30/ned-batchelder/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-30, from: Dave Winer's linkblog)

Trump Boasts About Getting Back at Opponents. 

<br> 

<https://politicalwire.com/2025/03/30/trump-boasts-about-getting-back-at-opponents/>

---

**@Robert's feed at BlueSky** (date: 2025-03-30, from: Robert's feed at BlueSky)

Wrote up my first impressions of spending a few weeks working with LLM for code generation.

https://rsdoiel.github.io/blog/2025/03/30/LLM_first_impressions_a_few_weeks_in.html 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3llmsjaiybc2y>

---

**@Dave Winer's linkblog** (date: 2025-03-30, from: Dave Winer's linkblog)

Burgum says Mount Rushmore has room for Trump. 

<br> 

<https://thehill.com/homenews/administration/5222612-doug-burgum-mount-rushmore-trump/>

---

**@Dave Winer's linkblog** (date: 2025-03-30, from: Dave Winer's linkblog)

Trump Again Floats Running for Anti-Constitutional Third Term. 

<br> 

<https://www.motherjones.com/politics/2025/03/trump-third-term-constitution-2028/>

---

**@Dave Winer's linkblog** (date: 2025-03-30, from: Dave Winer's linkblog)

Time to get out the popcorn. This should be interesting. 

<br> 

<https://www.nytimes.com/2025/03/30/us/politics/trump-putin-russia-iran-tariffs.html>

---

**@Dave Winer's linkblog** (date: 2025-03-30, from: Dave Winer's linkblog)

For God’s Sake, Fellow Lawyers, Stand Up to Trump. 

<br> 

<https://www.nytimes.com/2025/03/30/opinion/perkins-coie-trump.html?unlocked_article_code=1.704.Mant.Rz8WAj5NiSCE&smid=url-share>

---

**@Dave Winer's linkblog** (date: 2025-03-30, from: Dave Winer's linkblog)

Coming from Evan Osnos: Field guide to the ultra-rich. 

<br> 

<https://www.axios.com/2025/02/28/coming-from-evan-osnos-field-guide-to-the-ultra-rich>

---

## Donald Trump Wants a New Portrait of Himself

date: 2025-03-30, from: Michael Moore's blog

A Call to Artists and Non-Artists Everywhere! 

<br> 

<https://www.michaelmoore.com/p/donald-trump-wants-a-new-portrait>

---

## GMK EVO-X2 mini PC with Ryzen AI Max+ 395 Strix Halo launches April 7

date: 2025-03-30, from: Liliputing

<p>Chinese mini PC maker GMK was one of the first companies to introduce a compact desktop computer powered by an AMD Strix Point processor that combines a Zen 5 CPU with RNA 3.5 graphics. Now, as expected, the company is one of the first to unveil a mini PC with a Strix Halo processor that [&#8230;]</p>
<p>The post <a href="https://liliputing.com/gmk-introduces-evo-x2-mini-pc-with-ryzen-ai-max-395-strix-halo/">GMK EVO-X2 mini PC with Ryzen AI Max+ 395 Strix Halo launches April 7</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/gmk-introduces-evo-x2-mini-pc-with-ryzen-ai-max-395-strix-halo/>

---

## OpenWrt Two will be a higher-performance router with 10 Gigabit LAN and WiFi 7 support

date: 2025-03-30, from: Liliputing

<p>OpenWrt is an open source, Linux-based operating system designed for routers and other wireless devices. It&#8217;s been around for more than two decades and for most of that time it&#8217;s been offered primarily as an operating system that you could install as a replacement for the firmware that ships with existing devices. But last year [&#8230;]</p>
<p>The post <a href="https://liliputing.com/openwrt-two-will-be-a-higher-performance-router-with-10-gigabit-lan-and-wifi-7-support/">OpenWrt Two will be a higher-performance router with 10 Gigabit LAN and WiFi 7 support</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/openwrt-two-will-be-a-higher-performance-router-with-10-gigabit-lan-and-wifi-7-support/>

---

## Deno v Oracle Update 3: Fighting the JavaScript Trademark

date: 2025-03-30, updated: 2025-03-30, from: Deno blog

Oracle has filed a partial motion to dismiss our fraud claim. We’re now waiting on the USPTO to weigh in. 

<br> 

<https://deno.com/blog/deno-v-oracle3>

---

## item-flow

date: 2025-03-30, updated: 2025-03-30, from: Robin Rendle Essays

 

<br> 

<https://robinrendle.com/notes/item-flow/>

---

**@Dave Winer's linkblog** (date: 2025-03-30, from: Dave Winer's linkblog)

April 5: 50 protests, 50 states, 1 movement. 

<br> 

<https://www.fiftyfifty.one/>

---

**@Dave Winer's linkblog** (date: 2025-03-30, from: Dave Winer's linkblog)

Twenty Lessons, read by John Lithgow. 

<br> 

<https://snyder.substack.com/p/twenty-lessons-read-by-john-lithgow?publication_id=310897&post_id=160132992&r=w33x&triedRedirect=true>

---

## 
                I/O wait and io_uring
            

date: 2025-03-30, updated: 2025-03-30, from: Uninformative blog

 

<br> 

<https://www.uninformativ.de/blog/postings/2025-03-30/0/POSTING-en.html>

---

## No elephants: Breakthroughs in image generation

date: 2025-03-30, from: One Useful Thing

When Language Models Learn to See and Create 

<br> 

<https://www.oneusefulthing.org/p/no-elephants-breakthroughs-in-image>

---

**@Dave Winer's linkblog** (date: 2025-03-30, from: Dave Winer's linkblog)

NASA’s Curiosity rover has found the longest chain carbon molecules yet on Mars. 

<br> 

<https://arstechnica.com/science/2025/03/nasas-curiosity-rover-has-found-the-longest-chain-carbon-molecules-yet-on-mars/>

---

## A Balance of Payments Primer, Part II: The Dollar and All That

date: 2025-03-30, from: Paul Krugman

And what is the &#8220;Mar-a-Lago Accord&#8221;? 

<br> 

<https://paulkrugman.substack.com/p/a-balance-of-payments-primer-part-b66>

---

**@Dave Winer's linkblog** (date: 2025-03-30, from: Dave Winer's linkblog)

Prompt in alt, great graphic prompts that work in the new chatgpt. 

<br> 

<https://www.promptinalt.com/gallery/#search>

---

## IFSC Competition Regulations Para Climbing Events

date: 2025-03-30, from: Stubbornella Blog

The international federation of sport climbing released its 2025 paraclimbing regulations. The document was a PDF that was in accessible to screen readers so I converted it to HTML. It is far from perfect, but should be a lot better than the PDF. For some odd reason every bit of text on the PDF was [&#8230;] 

<br> 

<https://www.stubbornella.org/2025/03/30/ifsc-competition-regulations-para-climbing-events/>

---

**@Dave Winer's linkblog** (date: 2025-03-30, from: Dave Winer's linkblog)

And The NY Times sold us out to Trump, never to be trusted again. 

<br> 

<https://www.nytimes.com/2025/03/29/opinion/democrats-strategy-2024.html>

---

**@Robert's feed at BlueSky** (date: 2025-03-30, from: Robert's feed at BlueSky)

Something to consider.👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3llklxoqiv22i>

---

## Minimal CSS-only blurry image placeholders

date: 2025-03-30, from: Lean Rada's blog


<p>Here’s a CSS technique that produces blurry image placeholders (LQIPs) without cluttering up your markup — <em>Only a single custom property needed!</em></p>
<card-box>
  <code-block language="html">
    <pre><code>&lt;img src="…" style="--lqip:192900"&gt;</code></pre>
  </code-block>

  <p>The custom property above gives you this image:</p>

  <p>
  </p><div></div>
  <p></p>

  <label>
    Try changing the property’s value <strong>(WARNING: FLASHING)</strong>
    <input type="range" min="-999999" max="999999">
  </label>
  <script>
    {
      const card = document.currentScript.parentElement;
      const input = card.querySelector("input");
      const code = card.querySelector("code");
      const preview = card.querySelector("div");

      let currentValueStr = "192900";
      let targetCode = null

      input.addEventListener("input", event => {
        if (!targetCode) {
          targetCode = Array.from(code.querySelectorAll("span")).filter(el => el.textContent.includes(currentValueStr)).slice(-1)[0] ?? code;
        }

        const lqip = Number(event.currentTarget.value);
        // use this page's lqip to avoid breakage if I ever update the scheme
        preview.style.setProperty("--my-lqip", lqip);
        targetCode.innerHTML = targetCode.innerHTML.replace(currentValueStr, lqip);
        currentValueStr = String(lqip);
      });
    }
  </script>
</card-box>
<p>Granted, it’s a <em>very blurry</em> placeholder especially in contrast to other leading solutions. But the point is that it’s minimal and non-invasive! No need for wrapper elements or attributes with long strings of data, or JavaScript at all.</p>
<box-note>Note for RSS readers / ‘Reader’ mode clients: This post makes heavy use of CSS-based images. Your client may not support it.</box-note>
<h2>Example images</h2>
<lqip-examples>
  <img src="https://leanrada.com/notes/css-only-lqip/gallery/aj-McsNra2VRQQ-unsplash.jpg?ref=rss" width="300" height="199">
  <img src="https://leanrada.com/notes/css-only-lqip/gallery/henry-co-3JFVNo4ukKQ-unsplash.jpg?ref=rss" width="300" height="200">
  <img src="https://leanrada.com/notes/css-only-lqip/gallery/tienko-dima-uYoVf9I6ANI-unsplash.jpg?ref=rss" width="300" height="196">
  <a href="https://leanrada.com/notes/css-only-lqip/javascript:(()=%3E%7Blet%20s;(s=document.getElementById('lqip-debug'))?s.remove%28%29%3A%28%28s=document.createElement%28%27style%27%29%29.innerHTML%3D%60%5Bstyle*%3D%27--my-lqip%3A%27%5D%3Anot%28%3Ahover%29%7Bobject-position%3Acalc%28infinity*1px%29%21important%7D%60%2Cs.id%3D%27lqip-debug%27%2Cdocument.head.append%28s%29%29%7D%29%28%29&amp;ref=rss">
    Toggle images
  </a>
</lqip-examples><card-box>
  <a href="https://leanrada.com/notes/css-only-lqip/gallery?ref=rss" target="_blank">Check out the LQIP gallery for examples!</a>
</card-box>
<h2>Survey of LQIP approaches</h2>

<p>There have been many different techniques to implement LQIPs (low quality image placeholders), such as a very low
  resolution WebP or JPEG (<a href="https://engineering.fb.com/2015/08/06/android/the-technology-behind-preview-photos/" target="_blank">beheaded JPEGs</a> even), optimised SVG shape placements (<a href="https://github.com/axe312ger/sqip" target="_blank">SQIP</a>), and directly applying a discrete cosine
  transform (<a href="https://blurha.sh/" target="_blank">BlurHash</a>). Don’t forget good old progressive JPEGs and interlaced
  PNGs!</p>

<figure>
  <img src="https://leanrada.com/notes/css-only-lqip/solid-colour.png?ref=rss" alt="image gallery with solid colour placeholders" width="1368" height="832">
  <figcaption>Canva and Pinterest use solid colour placeholders.</figcaption>
</figure>

<p>At the other end of the spectrum, we have low tech solutions such as a simple solid fill of the image’s average colour.</p>

<p>Pure inline CSS solutions have the advantage rendering immediately — even a <code>background-image: url(…a data URL)</code> would be fine!</p>

<figure>
  <img src="https://leanrada.com/notes/css-only-lqip/gradient-css.png?ref=rss" alt="image gallery with gradient placeholders" width="1368" height="832">
  <figcaption><a href="https://github.com/fraser-hemp/gradify" target="_blank">Gradify</a> generates linear-gradients
    that very roughly approximate the full image.</figcaption>
</figure>

<p>The big disadvantage of pure CSS approaches is that you typically litter your markup with lengthy inline styles or obnoxious data URLs. My handcoded site with no build step would be extra incompatible with this approach!</p>

<pre><code>&lt;!-- typical gradify css --&gt;
&lt;img width="200" height="150" style="
  background: linear-gradient(45deg, #f4a261, transparent),
    linear-gradient(-45deg, #e76f51, transparent),
    linear-gradient(90deg, #8ab17d, transparent),
    linear-gradient(0deg, #d62828, #023047);
"&gt;
</code></pre>

<p><strong><a href="https://blurha.sh/">BlurHash</a></strong> is a solution that minimises markup by compressing image
  data into a
  <strong>short base-83 string</strong>, but decoding and rendering that data requires additional JS…
</p>

<pre><code>&lt;!-- a blurhash markup --&gt;
&lt;img width="200" height="150" src="…"
  data-blurhash="LEHV6nWB2yk8pyo0adR*.7kCMdnj"&gt;</code></pre>

<figure>
  <img src="https://leanrada.com/notes/css-only-lqip/blurhash.png?ref=rss" width="276" height="171">
  <figcaption>BlurHash example</figcaption>
</figure>

<p>Is it possible to decode a blur hash in CSS instead?</p>

<h2>Decoding in pure CSS</h2>

<p>Unlike BlurHash, we can’t use a string encoding because there are very few if any string manipulation
  functions in CSS (2025), so strings are out.</p>

<p>In the end, I came up with my own hash / encoding, and the <b>integer</b> type was the best vessel for it.</p>

<p>The usual way to encode stuff in a single integer is by <a href="https://en.wikipedia.org/wiki/Bit_manipulation" target="_blank"><strong>bit packing</strong></a>, where you pack multiple numbers in an integer as bits. Amazingly, we can unpack them in pure CSS!</p>

<p>To unpack bits, all you need is bit shifting and bit masking. <strong>Bit shifting</strong> can be done by division and floor operations — <code>calc(x / y)</code> and <code>round(down,n)</code> — and <strong>bit masking</strong> via the modulo function <code>mod(a,b)</code>.</p>

<pre><code>* {
/* Example packed int: */
/* 0b11_00_001_101 */
--packed-int: 781;
--bits-9-10: mod(round(down, calc(var(--packed-int) / 256)), 4); /* 3 */
--bits-7-8: mod(round(down, calc(var(--packed-int) / 64)), 4); /* 0 */
--bits-4-6: mod(round(down, calc(var(--packed-int) / 8)), 8); /* 1 */
--bits-0-3: mod(var(--packed-int), 8); /* 5 */
}</code></pre>

<p>Of course, we could also use <code>pow(2,n)</code> instead of hardcoded powers of two.</p>

<p>So, a <strong>single CSS integer value</strong> was going to be the encoding of the “hash” of my CSS-only blobhash
  (that’s what I’m calling it now). But how much information can we pack in a single CSS int?</p>

<h2>Side quest: Limits of CSS values</h2>

<p>The spec doesn’t say anything about the allowed range for int values, leaving the fate of my shenanigans to browser vendors.</p>

<p>From my experiments, apparently you can only use integers from <strong>-999,999 up to 999,999</strong> in custom
  properties before you lose precision. Just beyond that limit, we start getting values rounded to tens —
  1,234,56<del>7</del> becomes 1,234,56<ins>0</ins>. Which is weird (precision is counted in decimal places!?), but I
  bet it’s due to historical, Internet Explorer-esque reasons.</p>

<p>Anyway, within the range of [-999999, 999999] there are <strong>1,999,999</strong> values. This meant that with a
  single integer hash, almost two million LQIP configurations could be described. To make calculation
  easier, I reduced it to the nearest power of two down which is 2<sup>20</sup>.</p>
<card-box>
  <code>2<sup>20</sup> = 1,048,576 &lt; 1,999,999 &lt; 2,097,152 = 2<sup>21</sup></code>
</card-box>
<p><strong>In short, I had 20 bits of information to encode the CSS-based LQIP hash.</strong></p>
<box-note><strong>Why is it called a “hash”?</strong> Because it’s a mapping from an any-size data to a fixed-size
  value. In this case, there are an infinite number of images of arbitrary sizes, but only 1,999,999 possible hash
  values.</box-note>
<h2>The Scheme</h2>

<p>With only 20 bits, the LQIP image must be a very simplified version of the full image. I ended up with this scheme:
  a single base colour + 6 brightness components, to be overlaid on top of the base colour in a 3×2 grid. A
  rather extreme version of <a href="https://en.wikipedia.org/wiki/Chroma_subsampling" target="_blank">chroma
    subsampling</a>.</p>

<img src="https://leanrada.com/notes/css-only-lqip/scheme.png?ref=rss" alt="illustration of encoded components" width="600" height="500">

<p>This totals <strong>9 numbers</strong> to pack into the 20-bit integer:</p>

<p>The <strong>base colour</strong> is encoded in the <strong>lower 8 bits</strong> in the <a href="https://en.wikipedia.org/wiki/Oklab_color_space" target="_blank">Oklab colour space</a>. 2 bits for luminance, and 3 bits for each of the a and b coordinates. I’ve found Oklab to give subjectively balanced results, but RGB should work just as well.</p>

<p>The <strong>6 greyscale components</strong> are encoded in the <strong>higher 12 bits</strong> — 2 bits each.</p>

<p>An offline script was created to compress any given image into this integer format. The script was quite simple: Get the average
  or dominant colour — there are a lot of libraries that can do that — then resize the image down to
  3×2 pixels and get the greyscale values. <a href="https://github.com/Kalabasa/leanrada.com/blob/7b6739c7c30c66c771fcbc9e1dc8942e628c5024/main/scripts/update/lqip.mjs#L118-L159" target="_blank">Here’s my script.</a></p>
<box-note>I even tried a <a href="https://blog.4dcu.be/programming/2020/01/12/Genetic-Art-Algorithm.html" target="_blank">genetic algorithm</a> to optimise the LQIP bits, but the fitness function was hard to establish. Ultimately, I would’ve needed an offline CSS renderer for this to work accurately. Maybe a future iteration could use some headless Chrome solution to automatically compare real renderings of the LQIP against the source image.</box-note>
<p>Once encoded, it’s set as the value of <code>--lqip</code> via the style attribute in the target element. It could then be decoded in CSS. Here’s the actual code I used for decoding:</p>

<pre><code>[style*="--lqip:"] {
--lqip-ca: mod(round(down, calc((var(--lqip) + pow(2, 19)) / pow(2, 18))), 4);
--lqip-cb: mod(round(down, calc((var(--lqip) + pow(2, 19)) / pow(2, 16))), 4);
--lqip-cc: mod(round(down, calc((var(--lqip) + pow(2, 19)) / pow(2, 14))), 4);
--lqip-cd: mod(round(down, calc((var(--lqip) + pow(2, 19)) / pow(2, 12))), 4);
--lqip-ce: mod(round(down, calc((var(--lqip) + pow(2, 19)) / pow(2, 10))), 4);
--lqip-cf: mod(round(down, calc((var(--lqip) + pow(2, 19)) / pow(2, 8))), 4);
--lqip-ll: mod(round(down, calc((var(--lqip) + pow(2, 19)) / pow(2, 6))), 4);
--lqip-aaa: mod(round(down, calc((var(--lqip) + pow(2, 19)) / pow(2, 3))), 8);
--lqip-bbb: mod(calc(var(--lqip) + pow(2, 19)), 8);</code></pre>

<p>Before rendering the decoded values, the raw number data values need to be converted to CSS colours. It’s fairly
  straightforward, just a bunch linear interpolations into colour constructor functions.</p>

<pre><code>/* continued */
--lqip-ca-clr: hsl(0 0% calc(var(--lqip-ca) / 3 * 100%));
--lqip-cb-clr: hsl(0 0% calc(var(--lqip-cb) / 3 * 100%));
--lqip-cc-clr: hsl(0 0% calc(var(--lqip-cc) / 3 * 100%));
--lqip-cd-clr: hsl(0 0% calc(var(--lqip-cd) / 3 * 100%));
--lqip-ce-clr: hsl(0 0% calc(var(--lqip-ce) / 3 * 100%));
--lqip-cf-clr: hsl(0 0% calc(var(--lqip-cf) / 3 * 100%));
--lqip-base-clr: oklab(
  calc(var(--lqip-ll) / 3 * 0.6 + 0.2)
  calc(var(--lqip-aaa) / 8 * 0.7 - 0.35)
  calc((var(--lqip-bbb) + 1) / 8 * 0.7 - 0.35)
);
}</code></pre>
<card-box>
  <strong>Time for another demo!</strong>
  <label>
    Try different values of <code>--lqip</code> to decode
    <input type="range" min="-999999" max="999999">
  </label>
  <p>
    <code></code>
  </p>
  <script>
    {
      const card = document.currentScript.parentElement;
      const input = card.querySelector("input");
      const preview = card.querySelector(".lqip-unpack").parentElement;

      let currentValueStr = "-721311";
      render(Number(currentValueStr));

      input.addEventListener("input", event => {
        const lqip = Number(event.currentTarget.value);
        render(lqip);
        currentValueStr = String(lqip);
      });

      function render(lqip) {
        preview.style.setProperty("--my-lqip", lqip);
      };
    }
  </script>
  

  You can see here how each component variable maps to the LQIP image. E.g. the <code>cb</code> value corresponds to
  the relative brightness of the top middle area. <em>Fun fact: The above preview content is implemented in pure
    CSS!</em>
</card-box>
<h2>Rendering it all</h2>

<p>Finally, rendering the LQIP. I used multiple <strong>radial gradients</strong> to render the greyscale components,
  and a flat base colour at the bottom.</p>

<pre><code>[style*="--lqip:"] {
background-image:
  radial-gradient(50% 75% at 16.67% 25%, var(--lqip-ca-clr), transparent),
  radial-gradient(50% 75% at 50% 25%, var(--lqip-cb-clr), transparent),
  radial-gradient(50% 75% at 83.33% 25%, var(--lqip-cc-clr), transparent),
  radial-gradient(50% 75% at 16.67% 75%, var(--lqip-cd-clr), transparent),
  radial-gradient(50% 75% at 50% 75%, var(--lqip-ce-clr), transparent),
  radial-gradient(50% 75% at 83.33% 75%, var(--lqip-cf-clr), transparent),
  linear-gradient(0deg, var(--lqip-base-clr), var(--lqip-base-clr));
}</code></pre>

<p>The above is a simplified version of the full renderer for illustrative purposes. <small>The real one has doubled layers, smooth gradient falloffs, and blend modes.</small></p>

<p>As you might expect, the radial gradients are arranged in a 3×2 grid. You can see it in this interactive deconstructor view!</p>
<card-box>
  <strong>LQIP deconstructor!</strong>
  <label>
    Reveal the individual layers using this slider!
    <input type="range" min="0" max="100" value="0">
    Change the <code>--lqip</code> value,
    <input type="range" min="-999999" max="999999">
  </label>
  <div></div>
  <script>
    {
      const card = document.currentScript.parentElement;
      const [revealInput, lqipInput] = card.querySelectorAll("input");
      const preview = card.querySelector(".lqip-reveal");

      let currentValueStr = "-747540";
      render(Number(currentValueStr));

      lqipInput.addEventListener("input", event => {
        const lqip = Number(event.currentTarget.value);
        render(lqip);
        currentValueStr = String(lqip);
      });

      revealInput.addEventListener("input", event => {
        preview.style.setProperty("--reveal", event.currentTarget.value / 100);
      });

      function render(lqip) {
        preview.style.setProperty("--my-lqip", lqip);
      };
    }
  </script>
  
</card-box>
<p>These radial gradients are the core of the CSS-based LQIP. The position and radius of the gradients are an important detail that would determine how well these can approximate real images. Besides that, another requirement is that these individual radial gradients must be seamless when combined together.</p>

<p>I implemented smooth gradient falloffs to make the final result look seamless. It took special care to make the gradients extra smooth, so let’s dive into it…</p>

<h2>Bilinear interpolation approximation with radial gradients</h2>

<p>Radial gradients use linear interpolation by default. Interpolation refers to how it maps the in-between colours from the start colour to the end colour. And linear interpolation, the most basic interpolation, well…</p>

<figure>
  <interpolation-example></interpolation-example>
  <figcaption>CSS radial-gradients with linear interpolation</figcaption>
</figure>

<p>It doesn’t look good. It gives us these hard edges (highlighted above). You could almost see the elliptical edges of each radial gradient and their centers.</p>

<p>In real raster images, we’d use <a href="https://harmoniccode.blogspot.com/2011/04/bilinear-color-interpolation.html" target="_blank">bilinear interpolation</a> at the very least when scaling up low resolution images. <a href="https://blog.demofox.org/2015/08/15/resizing-images-with-bicubic-interpolation/" target="_blank">Bicubic interpolation is even better.</a></p>

<p>One way to simulate the smoothness of bilinear interpolation in an array of CSS radial-gradients is to use <strong>‘quadratic easing’</strong> to control the gradation of opacity.</p>

<p>This means the opacity falloff of the gradient would be smoother around the center and the edges. Each gradient would get feathered edges, smoothening the overall composite image.</p>
<prose-bleed>
  <fixed-grid>
    <figure>
      <interpolation-example></interpolation-example>
      <figcaption>
        <strong>CSS radial-gradients:</strong>
        Quadratic interpolation <em>(touch to see edges)</em>
      </figcaption>
    </figure>
    <figure>
      <interpolation-example></interpolation-example>
      <figcaption>
        <strong>CSS radial-gradients:</strong>
        Linear interpolation <em>(touch to see edges)</em>
      </figcaption>
    </figure>
    <figure>
      <img src="https://leanrada.com/notes/css-only-lqip/interpolation-bilinear.png?ref=rss" width="900" height="600">
      <figcaption>Image: Bilinear interpolation</figcaption>
    </figure>
    <figure>
      <img src="https://leanrada.com/notes/css-only-lqip/interpolation-bicubic.png?ref=rss" width="900" height="600">
      <figcaption>Image: Bicubic interpolation</figcaption>
    </figure>
    <figure>
      <img src="https://leanrada.com/notes/css-only-lqip/interpolation-pixels.png?ref=rss" width="3" height="2">
      <figcaption>Image: Your browser’s native interpolation</figcaption>
    </figure>
    <figure>
      <img src="https://leanrada.com/notes/css-only-lqip/interpolation-pixels.png?ref=rss" width="3" height="2">
      <figcaption>Image: No interpolation</figcaption>
    </figure>
  
</fixed-grid></prose-bleed>
<p>However, CSS gradients <a href="https://github.com/w3c/csswg-drafts/issues/1332" target="_blank">don’t support nonlinear interpolation of opacity yet as of writing</a> (not to be confused with colour space interpolation, which browsers do support!). The solution for now is to add more points in the gradient to get a smooth opacity curve based on the quadratic formula.</p>

<pre><code>radial-gradient(
  &lt;position&gt;,
  rgb(82 190 240 / 100%) 0%,
  rgb(82 190 204 / 98%) 10%,
  rgb(82 190 204 / 92%) 20%,
  rgb(82 190 204 / 82%) 30%,
  rgb(82 190 204 / 68%) 40%,
  rgb(82 190 204 / 32%) 60%,
  rgb(82 190 204 / 18%) 70%,
  rgb(82 190 204 / 8%) 80%,
  rgb(82 190 204 / 2%) 90%,
  transparent 100%
)</code></pre>

<figure>
  <img src="https://leanrada.com/notes/css-only-lqip/interpolation-graph.png?ref=rss" width="1024" height="768">
  <figcaption>The quadratic interpolation is based on two quadratic curves (parabolas), one for each half of the gradient — one upward and another downward.</figcaption>
</figure>

<p>The quadratic easing blends adjacent radial gradients together, mimicking the smooth bilinear (or even bicubic) interpolation. It’s almost like a fake blur filter, thus achieving the ‘blur’ part of this BlurHash alternative.</p>
<card-box>
  <a href="https://leanrada.com/notes/css-only-lqip/gallery?ref=rss">Check out the gallery for a direct comparison to BlurHash.</a>
</card-box><lqip-examples>
  <img src="https://leanrada.com/notes/css-only-lqip/gallery/karsten-winegeart-613pTZEFf2U-unsplash.jpg?ref=rss" width="300" height="208">
  <img src="https://leanrada.com/notes/css-only-lqip/gallery/fahrul-azmi-Q1l1ofdVYl4-unsplash.jpg?ref=rss" width="225" height="300">
  <img src="https://leanrada.com/notes/css-only-lqip/gallery/esma-melike-sezer-9NRRCTGKYS4-unsplash.jpg?ref=rss" width="191" height="300">
  <img src="https://leanrada.com/notes/css-only-lqip/gallery/daniel-b-herrmann-squbLwpQRQ8-unsplash.jpg?ref=rss" width="240" height="300">
  <a href="https://leanrada.com/notes/css-only-lqip/javascript:(()=%3E%7Blet%20s;(s=document.getElementById('lqip-debug'))?s.remove%28%29%3A%28%28s=document.createElement%28%27style%27%29%29.innerHTML%3D%60%5Bstyle*%3D%27--my-lqip%3A%27%5D%3Anot%28%3Ahover%29%7Bobject-position%3Acalc%28infinity*1px%29%21important%7D%60%2Cs.id%3D%27lqip-debug%27%2Cdocument.head.append%28s%29%29%7D%29%28%29&amp;ref=rss">
    Toggle images
  </a>
</lqip-examples>
<h2>Appendix: Alternatives considered</h2>

<h3>Four colours instead of monochromatic preview</h3>

<p>Four 5-bit colours, where each <b>R</b> is 2 bits, <b>G</b> is 2 bits, and <b>B</b> is just a zero or one.</p>

<p>The four colours would map to the four corners of the image box, rendered as radial gradients</p>

<p>This was my first attempt, and I fiddled with this for a while, but mixing four colours properly require proper bilinear interpolation and probably a shader. Just layering gradients resulted in muddiness (just like mixing too many watercolour pigments), and there was no CSS blend mode that could fix it. So I abandoned it, and moved on to a monochromatic approach.</p>

<h3>Single solid colour</h3>

<p>This was what I used on this website before. It’s simple and effective. A clean-markup approach could still use the custom <code>--lqip</code> variable:</p>

<pre><code>&lt;img src="…" style="--lqip:#9bc28e"&gt;

&lt;style&gt;
/* we save some bytes by ‘aliasing’ this property */
* { background-color: var(--lqip) }
&lt;/style&gt;</code></pre>

<h3>HTML attribute instead of CSS custom property</h3>

<p>We can use HTML attributes to control CSS soon! Here’s what the LQIP markup would look like in the future:</p>

<pre><code>&lt;img src="…" lqip="192900"&gt;</code></pre>

<p>Waiting for <a href="https://developer.chrome.com/blog/advanced-attr" target="_blank"><code>attr()</code> Level 5</a> for this one. It’s nicer and shorter, fewer weird punctuations in markup <small>(who came up with the double dash for CSS vars anyway?)</small>. The value can then be referenced in CSS with <code>attr(lqip type(&lt;number&gt;))</code> instead of <code>var(--lqip)</code>.</p>

<p>For extra safety, a <code>data-</code> prefix could be added to the attribute name.</p>

<p>Can’t wait for this to get widespread adoption. I also want it for my <a href="https://jordanbrennan.hashnode.dev/tac-a-new-css-methodology" target="_blank">TAC components</a>.</p>
 

<br> 

<https://leanrada.com/notes/css-only-lqip/?ref=rss>

---

## LLM first impressions a few weeks in

date: 2025-03-30, from: Robert's Ramblings

A first take of LLM use for coding projects.
 

<br> 

<https://rsdoiel.github.io/blog/2025/03/30/LLM_first_impressions_a_few_weeks_in.html>

