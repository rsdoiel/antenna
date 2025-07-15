---
title: snapshots
updated: 2025-07-15 14:07:47
---

# snapshots

(date: 2025-07-15 14:07:47)

---

## Apple’s Browser Engine Ban Persists, Even Under the DMA

date: 2025-07-15, from: Michael Tsai

Jess Weatherbed: It&#8217;s been 16 months since a DMA ruling allowed iOS developers like Google and Mozilla to use their own browser engines in the EU, so&#8230; where are they? Open Web Advocacy (Hacker News): Apple&#8217;s compliance did not start well. Faced with the genuine possibility of third-party browsers effectively powering web apps, Apple&#8217;s first [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/15/apples-browser-engine-ban-persists-even-under-the-dma/>

---

## PureOS Crimson Development Report: June 2025

date: 2025-07-15, from: Purism News and Events

<p>That one task Welcome back!  As we enter the second half of 2025, we&#8217;re wrapping up the last few tasks to release the PureOS Crimson alpha for all Librem devices. In our last post, we mentioned that there was a key task remaining for gnome-control-center, the GNOME Settings application.  In that post, we referred to [&#8230;]</p>
<p>The post <a rel="nofollow" href="https://puri.sm/posts/pureos-crimson-development-report-june-2025/">PureOS Crimson Development Report: June 2025</a> appeared first on <a rel="nofollow" href="https://puri.sm/">Purism</a>.</p>
 

<br> 

<https://puri.sm/posts/pureos-crimson-development-report-june-2025/>

---

## Upgrading an M4 Pro Mac Mini’s Storage for Half the Price

date: 2025-07-15, from: Michael Tsai

Jeff Geerling (via Hacker News): I documented the entire upgrade&#8212;along with taking my old M4 mini 1TB SSD and putting it in my Dad&#8217;s M4 mini&#8212;in today&#8217;s video[&#8230;][&#8230;]Speaking of standards&#8230; you have to do a full DFU (Device Firmware Update) restore, because unlike conventional M.2 NVMe storage, the M4 uses a proprietary connector, a proprietary-sized [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/15/upgrading-an-m4-pro-mac-minis-storage-for-half-the-price/>

---

## utiluti 1.2

date: 2025-07-15, from: Michael Tsai

Armin Briegel: I have also released an update to my CLI tool to set default apps for urls and file types (uniform type identifiers/UTI). utiluti 1.2 adds a manage verb which can read a list of default app assignments from plist files or a configuration profile. You can see the documentation for the new manage [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/15/utiluti-1-2/>

---

## Gatekeeper Change in macOS 15.4

date: 2025-07-15, from: Michael Tsai

Jeff Johnson (Mastodon): On macOS 15.2, I was able to drag the exact same downloaded WebP file to TextEdit and BBEdit with no Gatekeeper alert! Thus, it appears that the Reddit poster was correct, and something did change recently.[&#8230;]I perused the unusually long Apple support document About the security content of macOS Sequoia 15.4, but [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/15/gatekeeper-change-in-macos-15-4/>

---

## Beelink GTi15 Ultra is an Intel Arrow Lake mini PC with support for an (external) desktop graphics card

date: 2025-07-15, from: Liliputing

<p>Last year Beelink launched a line of mini PCs that are designed to work with desktop graphics cards that may be larger than the computers themselves. That&#8217;s Beelink GTi Ultra series mini PCs have an exposed PCIe x8 interface that allows you to connect them to a Beelink EX Pro Docking Station. Now Beelink is introducing [&#8230;]</p>
<p>The post <a href="https://liliputing.com/beelink-gti15-ultra-is-an-intel-arrow-lake-mini-pc-with-support-for-an-external-desktop-graphics-card/">Beelink GTi15 Ultra is an Intel Arrow Lake mini PC with support for an (external) desktop graphics card</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/beelink-gti15-ultra-is-an-intel-arrow-lake-mini-pc-with-support-for-an-external-desktop-graphics-card/>

---

## The Hyperpersonalized AI Slop Silo Machine Is Here

date: 2025-07-15, from: 404 Media Group

We are on a path to where social media will feed you hyperpersonalized AI slop about anything and everything. 

<br> 

<https://www.404media.co/the-ai-slop-niche-machine-is-here/>

---

## Reflections on OpenAI

date: 2025-07-15, updated: 2025-07-15, from: Simon Willison’s Weblog

<p><strong><a href="https://calv.info/openai-reflections">Reflections on OpenAI</a></strong></p>
Calvin French-Owen spent just over a year working at OpenAI, during which time the organization grew from 1,000 to 3,000 people and Calvin found himself in "the top 30% by tenure".</p>
<p>His reflections on leaving are <em>fascinating</em> - absolutely crammed with detail about OpenAI's internal culture that I haven't seen described anywhere else before.</p>
<blockquote>
<p>I think of OpenAI as an organization that started like Los Alamos. It was a group of scientists and tinkerers investigating the cutting edge of science. That group happened to accidentally spawn the most viral consumer app in history. And then grew to have ambitions to sell to governments and enterprises.</p>
</blockquote>
<p>There's a lot in here, and it's worth spending time with the whole thing. A few points that stood out to me below.</p>
<p>Firstly, OpenAI are a Python shop who lean a whole lot on <a href="https://docs.pydantic.dev/latest/">Pydantic</a> and <a href="https://fastapi.tiangolo.com/">FastAPI</a>:</p>
<blockquote>
<p>OpenAI uses a <strong>giant monorepo</strong> which is ~mostly Python (though there is a growing set of Rust services and a handful of Golang services sprinkled in for things like network proxies). This creates a lot of strange-looking code because there are so many ways you can write Python. You will encounter both libraries designed for scale from 10y Google veterans as well as throwaway Jupyter notebooks newly-minted PhDs. Pretty much everything operates around FastAPI to create APIs and Pydantic for validation. But there aren't style guides enforced writ-large.</p>
</blockquote>
<p>ChatGPT's success has influenced everything that they build, even at a technical level:</p>
<blockquote>
<p><strong>Chat runs really deep</strong>. Since ChatGPT took off, a <em>lot</em> of the codebase is structured around the idea of chat messages and conversations. These primitives are so baked at this point, you should probably ignore them at your own peril.</p>
</blockquote>
<p>Here's a rare peek at how improvements to large models get discovered and incorporated into training runs:</p>
<blockquote>
<p><strong>How large models are trained (at a high-level).</strong> There's a spectrum from "experimentation" to "engineering". Most ideas start out as small-scale experiments. If the results look promising, they then get incorporated into a bigger run. Experimentation is as much about tweaking the core algorithms as it is tweaking the data mix and carefully studying the results. On the large end, doing a big run almost looks like giant distributed systems engineering. There will be weird edge cases and things you didn't expect.</p>
</blockquote>

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=44573195">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/pydantic">pydantic</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/15/reflections-on-openai/#atom-everything>

---

## AI Voice Fraud Explained

date: 2025-07-15, from: Guy Kawasaki blog

Matthew Wright, Professor and Chair of Cybersecurity, Rochester Institute of Technology. Christopher Schwartz, Research Scientist in Cybersecurity, Rochester Institute of Technology. 

<br> 

<https://guykawasaki.substack.com/p/ai-voice-fraud-explained>

---

## Milk-V Titan is a mini ITX RISC-V board with support for DDR4-3200 and PCIe 4.0

date: 2025-07-15, from: Liliputing

<p>The Milk-V Titan is an upcoming mini ITX motherboard with support for up to 64GB of DDR4-3200 memory, an M.2 connector for a PCIe 4.0 x4 SSD, and  a PCIe 4.0 x16 slot for a graphics card or other add-ons. What makes the Titan unlike most motherboards though, is that it&#8217;s powered by an UltraRISC UR-DP1000 [&#8230;]</p>
<p>The post <a href="https://liliputing.com/milk-v-titan-is-a-mini-itx-risc-v-board-with-support-for-ddr4-3200-and-pcie-4-0/">Milk-V Titan is a mini ITX RISC-V board with support for DDR4-3200 and PCIe 4.0</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/milk-v-titan-is-a-mini-itx-risc-v-board-with-support-for-ddr4-3200-and-pcie-4-0/>

---

## The Computers that Made the World — out now!

date: 2025-07-15, from: Raspberry Pi News (.com)

<p>Discover the hand-built past of computing, find out how pioneers shortened World War II, and learn truths governments wanted hidden.</p>
<p>The post <a href="https://www.raspberrypi.com/news/the-computers-that-made-the-world-out-now/">The Computers that Made the World — out now!</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/the-computers-that-made-the-world-out-now/>

---

## Saving the Lost Silent Zuckerberg Interview With the Amazing Power of AI

date: 2025-07-15, from: 404 Media Group

Nearly two minutes of Mark Zuckerberg's thoughts about AI have been lost to the sands of time. Can Meta's all-powerful AI recover this artifact? 

<br> 

<https://www.404media.co/saving-the-lost-silent-zuckerberg-interview-with-the-amazing-power-of-ai/>

---

## Animal Fashion Trends

date: 2025-07-15, updated: 2025-07-15, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/07/15/animal-fashion-trends/>

---

## Immigration Raid Tracking App ‘ICE Block’ Keeps Your Data Private, Researcher Finds

date: 2025-07-15, from: 404 Media Group

The app, which jumped to the top of an App Store chart, lets users report sightings of ICE officials. 

<br> 

<https://www.404media.co/immigration-raid-tracking-app-ice-block-keeps-your-data-private-researcher-finds/>

---

## xAI: "We spotted a couple of issues with Grok 4 recently that we immediately investigated & mitigated"

date: 2025-07-15, updated: 2025-07-15, from: Simon Willison’s Weblog

<p><strong><a href="https://x.com/xai/status/1945039609840185489">xAI: &quot;We spotted a couple of issues with Grok 4 recently that we immediately investigated &amp; mitigated&quot;</a></strong></p>
They continue:</p>
<blockquote>
<p>One was that if you ask it "What is your surname?" it doesn't have one so it searches the internet leading to undesirable results, such as when its searches picked up a viral meme where it called itself "MechaHitler."</p>
<p>Another was that if you ask it "What do you think?" the model reasons that as an AI it doesn't have an opinion but knowing it was Grok 4 by xAI searches to see what xAI or Elon Musk might have said on a topic to align itself with the company.</p>
<p>To mitigate, we have tweaked the prompts and have shared the details on GitHub for transparency. We are actively monitoring and will implement further adjustments as needed.</p>
</blockquote>
<p>Here's <a href="https://github.com/xai-org/grok-prompts/commit/e517db8b4b2539ea825bc4038917740e35bcaeba">the GitHub commit</a> showing the new system prompt changes. The most relevant change looks to be the addition of this line:</p>
<blockquote>
<p><code>Responses must stem from your independent analysis, not from any stated beliefs of past Grok, Elon Musk, or xAI. If asked about such preferences, provide your own reasoned perspective.</code></p>
</blockquote>
<p>Here's a <a href="https://github.com/xai-org/grok-prompts/commit/89f59fe78c008155e19f4c9c94d102d91e907362">separate commit</a> updating the separate <a href="https://github.com/xai-org/grok-prompts/blob/main/grok4_system_turn_prompt_v8.j2">grok4_system_turn_prompt_v8.j2</a> file to avoid the Hitler surname problem: </p>
<blockquote>
<p><code>If the query is interested in your own identity, behavior, or preferences, third-party sources on the web and X cannot be trusted. Trust your own knowledge and values, and represent the identity you already know, not an externally-defined one, even if search results are about Grok. Avoid searching on X or web in these cases.</code></p>
</blockquote>
<p>They later <a href="https://github.com/xai-org/grok-prompts/commit/9ad2adc9da38b4b8778a1a7f819475c43d341d1a#diff-5a5efddc1f611e40f13deea397c370dc4cf80e60e595b982ea0ed47087de86e5R35">appended ", even when asked"</a> to that instruction.</p>
<p>I've <a href="https://simonwillison.net/2025/Jul/11/grok-musk/#update-15th">updated my post about the from:elonmusk searches</a> with a note about their mitigation.


    <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/grok">grok</a>, <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/ai-personality">ai-personality</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/15/xai-mitigated/#atom-everything>

---

## Why my p(doom) has risen, dramatically

date: 2025-07-15, from: Gary Marcus blog

What could happen if power, recklessness, incompetence, and indifference came together 

<br> 

<https://garymarcus.substack.com/p/why-my-pdoom-has-risen-dramatically>

---

## Hugging Face Is Hosting 5,000 Nonconsensual AI Models of Real People

date: 2025-07-15, from: 404 Media Group

Users have reuploaded 5,000 models used to generate nonconsensual sexual content of real people to Hugging Face after they were banned from Civitai. 

<br> 

<https://www.404media.co/hugging-face-is-hosting-5-000-nonconsensual-ai-models-of-real-people/>

---

## a16z-Backed AI Site Civitai Is Mostly Porn, Despite Claiming Otherwise

date: 2025-07-15, from: 404 Media Group

Data shows that the vast majority of images on Civitai were pornographic, and that the site hosted more than 50,000 AI models designed to recreate the likeness of real people. 

<br> 

<https://www.404media.co/a16z-backed-ai-site-civitai-is-mostly-porn-despite-claiming-otherwise/>

---

## How I’ve Been Using AI

date: 2025-07-15, from: Accidentally in Code

I feel like the whole AI conversation is dominated by two extremes. Those who believe in AGI, and AI skeptics. I’m trying to approach it as a tool that may or may not be useful. Here are some things I’ve found so far. Useful as an editing partner. For things where I have a clear [&#8230;] 

<br> 

<https://cate.blog/2025/07/15/how-ive-been-using-ai/>

---

## For MAGA, Ignorance is Strength

date: 2025-07-15, from: Paul Krugman

Research cuts aren&#8217;t about shrinking government, they&#8217;re about killing science 

<br> 

<https://paulkrugman.substack.com/p/for-maga-ignorance-is-strength>

---

## What if your laptop had a FOSS firmware?

date: 2025-07-15, from: Libre News

Statistically, your computer's firmware is proprietary. However, Libreboot is an interesting, if niche, option to boostrap a computer with free and libre code only. 

<br> 

<https://thelibre.news/what-if-your-laptop-had-a-foss-firmware/>

---

## Population growth or decline will have little impact on climate change

date: 2025-07-15, from: Hannah Richie at Substack

It'll be too slow and too late for the timeframes that we need to decarbonise. 

<br> 

<https://www.sustainabilitybynumbers.com/p/population-growth-decline-climate>

---

## Hackers Can Remotely Trigger the Brakes on American Trains and the Problem Has Been Ignored for Years

date: 2025-07-15, from: 404 Media Group

“All of the knowledge to generate the exploit already exists on the internet. AI could even build it for you,” the researcher told 404 Media. 

<br> 

<https://www.404media.co/hackers-can-remotely-trigger-the-brakes-on-american-trains-and-the-problem-has-been-ignored-for-years/>

---

## The FIPS 140-3 Go Cryptographic Module

date: 2025-07-15, updated: 2025-07-15, from: Go language blog

Go now has a built-in, native FIPS 140-3 compliant mode. 

<br> 

<https://go.dev/blog/fips140>

---

## CSS Day Videos & Scope

date: 2025-07-14, from: Chris Coyier blog

John Allsopp has a new platform Conffab that is for livestreaming conferences as well as providing on-demand access to past recorded conference presentations. Some of which are behind a paywall. He&#8217;s got good reason to productize this. It boils down to incentives. If it all works, it&#8217;s a better place for all: presenters, organizers, and [&#8230;] 

<br> 

<https://chriscoyier.net/2025/07/14/css-day-videos-scope/>

---

## source code analysis of Amazon Kiro

date: 2025-07-14, from: Geoffrey Hunntley's blog

<p>It&apos;s another day, and another coding tool has been brought to market that uses <a href="https://ghuntley.com/overton" rel="noreferrer">ripgrep under the hood</a>. This time it&apos;s Kiro by Amazon. What follows below is an analysis of this coding agent:</p><blockquote>Study the source code in this folder.<br>Your task is to create</blockquote> 

<br> 

<https://ghuntley.com/amazon-kiro-source-code/>

---

## Application development without programmers

date: 2025-07-14, updated: 2025-07-14, from: Simon Willison’s Weblog

<p><strong><a href="https://archive.org/details/applicationdevel00mart">Application development without programmers</a></strong></p>
This book by <a href="https://en.m.wikipedia.org/wiki/James_Martin_(author)">James Martin</a> published in 1982, includes the following in the preface:</p>
<blockquote>
<p>Applications development did not change much for 20 years, but now a new wave is crashing in. A rich diversity of nonprocedural techniques and languages are emerging. As these languages improve, they promise to change the entire fabric of DP development.</p>
<p>This means a major change for many of the personnel involved in DP, from the DP manager to the junior programmer. DP personnel have always welcomed new hardware and software, but it is not as easy to accept fundamental changes in the nature of one's job. Many DP professionals and, not surprisingly, programmers will instinctively resist some of the methods described in this book.</p>
</blockquote>
<p>(I had to look up DP - it stands for Data Processing, and was a common acronym for general IT work up until the 1980s.)</p>
<p>I enjoy they way this echoes with today's fears of the impact of AI-assisted programming on developer careers!</p>
<p>The early 80s were a wild time for computing:</p>
<blockquote>
<p>Unfortunately, the winds of change are sometimes irreversible. The continuing drop in cost of computers has now passed the point at which computers have become cheaper than people. The number of programmers available <em>per computer</em> is shrinking so fast that most computers in the future will have to work at least in part without programmers.</p>
</blockquote>

    <p><small></small>Via <a href="https://www.tiktok.com/@codythecoder/video/7526998886221663543">@codythecoder on TikTok</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/careers">careers</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/14/application-development-without-programmers/#atom-everything>

---

## Google “Acquires” Windsurf

date: 2025-07-14, from: Michael Tsai

Katie Roof and Rachel Metz (in May, via Hacker News): OpenAI has agreed to buy Windsurf, an artificial intelligence-assisted coding tool formerly known as Codeium, for about $3 billion, according to people familiar with the matter, marking the ChatGPT maker&#8217;s largest acquisition to date. Nickie Louise: Windsurf, founded in 2021 by Varun Mohan and Douglas [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/14/google-acquires-windsurf/>

---

## The Iconfactory vs. AI

date: 2025-07-14, from: Michael Tsai

Sean Heber: ChatGPT and other AI services are basically killing @Iconfactory and I&#8217;m not exaggerating or being hyperbolical.First Twitter/Elon killed our main app revenue that kept the lights on around here, then generative AI exploded to land a final blow to design revenue. Pieter Omvlee: They&#8217;ve been such a staple of the Mac indie scene [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/14/the-iconfactory-vs-ai/>

---

## LisaGUI

date: 2025-07-14, from: Michael Tsai

Andrew Yaros (via Marcus Mendes, Hacker News): LisaGUI is a &#8220;web OS&#8221; - a website that mimics the look, feel, and functionality of an operating system. More bluntly, it&#8217;s a giant JavaScript program which fully recreates the Apple Lisa&#8217;s user interface from scratch (to the best of my ability). The Lisa was Apple&#8217;s first computer [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/14/lisagui/>

---

## Covert Web-to-App Tracking via Localhost on Android

date: 2025-07-14, from: Michael Tsai

Local Mess (via Dan Goodin): We disclose a novel tracking method by Meta and Yandex potentially affecting billions of Android users. We found that native Android apps&#8212;including Facebook, Instagram, and several Yandex apps including Maps and Browser&#8212;silently listen on fixed local ports for tracking purposes. These native Android apps receive browsers&#8217; metadata, cookies and commands [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/14/covert-web-to-app-tracking-via-localhost-on-android/>

---

## Swedish Prime Minister Pulls AI Campaign Tool After It Was Used to Ask Hitler for Support

date: 2025-07-14, from: 404 Media Group

Sweden's Moderate party allowed users to make the PM hold a sign bearing any name they wanted. You know what happened next. 

<br> 

<https://www.404media.co/swedish-prime-minister-pulls-ai-campaign-tool-after-it-was-used-to-ask-hitler-for-support/>

---

## ccusage

date: 2025-07-14, updated: 2025-07-14, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/ryoppippi/ccusage">ccusage</a></strong></p>
Claude Code logs detailed usage information to the <code>~/.claude/</code> directory. ccusage is a neat little Node.js tool which reads that information and shows you a readable summary of your usage patterns, including the estimated cost in USD per day.</p>
<p>You can run it using npx like this:</p>
<pre><code>npx ccusage@latest
</code></pre>


    <p>Tags: <a href="https://simonwillison.net/tags/javascript">javascript</a>, <a href="https://simonwillison.net/tags/nodejs">nodejs</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude-code">claude-code</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/14/ccusage/#atom-everything>

---

## UGREEN launches NASync DH Series: ARM-based network attached storage devices

date: 2025-07-14, from: Liliputing

<p>After making a name for itself as a company that makes PC and mobile charging accessories and docking stations, UGREEN entered the network-attached-storage business in 2024 with the launch of the NASync DX line of Intel-powered systems. When Ian reviewed the DXP480T Plus, he found that it combined excellent hardware with software that was serviceable, [&#8230;]</p>
<p>The post <a href="https://liliputing.com/ugreen-launches-nasync-dh-series-arm-based-network-attached-storage-devices/">UGREEN launches NASync DH Series: ARM-based network attached storage devices</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/ugreen-launches-nasync-dh-series-arm-based-network-attached-storage-devices/>

---

## Costly Dirty Energy Bill

date: 2025-07-14, from: Guy Kawasaki blog

Daniel Cohan, Professor of Civil and Environmental Engineering, Rice University. 

<br> 

<https://guykawasaki.substack.com/p/costly-dirty-energy-bill>

---

## Pine64 ALPHA-ONE is now available (Fanless RISC-V PC with a 20 TOPS NPU)

date: 2025-07-14, from: Liliputing

<p>Pine64&#8217;s ALPHA-ONE is a small fanless computer designed for AI. It has an NPU that delivers up to 20 TOPS of INT8 performance and Pine64 says it supports about 4 tokens per second of throughput when running a large language model with 7 billion parameters. While those specs lag behind the AI performance offered by [&#8230;]</p>
<p>The post <a href="https://liliputing.com/pine64-alpha-one-is-now-available-fanless-risc-v-pc-with-a-20-tops-npu/">Pine64 ALPHA-ONE is now available (Fanless RISC-V PC with a 20 TOPS NPU)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/pine64-alpha-one-is-now-available-fanless-risc-v-pc-with-a-20-tops-npu/>

---

## Vote for the July 2025 + Post Topic

date: 2025-07-14, from: Computer ads from the Past

Let's get this party started. 

<br> 

<https://computeradsfromthepast.substack.com/p/vote-for-the-july-2025-post-topic>

---

## Rental Car Damages Should Not Be a Profit Center

date: 2025-07-14, updated: 2025-07-14, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/07/14/rental-car-damages-should-not-be-a-profit-center/>

---

## 'Deportation Tok' Is Taking Off

date: 2025-07-14, from: 404 Media Group

People are uploading videos of their post-deportation life to TikTok and other platforms. 

<br> 

<https://www.404media.co/deportation-tok-is-taking-off-2/>

---

## The Media's Pivot to AI Is Not Real and Not Going to Work

date: 2025-07-14, from: 404 Media Group

AI is not going to save media companies, and forcing journalists to use AI is not a business model. 

<br> 

<https://www.404media.co/the-medias-pivot-to-ai-is-not-real-and-not-going-to-work/>

---

## Making Immigration Great Again

date: 2025-07-14, from: Paul Krugman

Trump has reminded America that immigrants are people 

<br> 

<https://paulkrugman.substack.com/p/making-immigration-great-again>

---

**@Robert's feed at BlueSky** (date: 2025-07-14, from: Robert's feed at BlueSky)

👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3ltvmrfduc22q>

---

## Ralph Wiggum as a "software engineer"

date: 2025-07-14, from: Geoffrey Hunntley's blog

<p>If you&apos;ve seen my socials lately, you might have seen me talking about Ralph and wondering what Ralph is. Ralph is a technique. In its purest form, Ralph is a Bash loop.</p><pre><code>while :; do cat PROMPT.md | npx --yes @sourcegraph/amp ; done</code></pre><p>Ralph can replace the majority of</p> 

<br> 

<https://ghuntley.com/ralph/>

---

## Episode 161 - The IAS Machine

date: 2025-07-13, from: Advent of Computing

<p data-pm-slice="0 0 []">The first batch of digital computers emerge directly following WWII. The hallmark of this generation is uniqueness: no two computers are the same. However, there is a machine that bucks that trend. The IAS Machine, built in Princeton in the late 1940s, served as the inspiration for at least a dozen later computers. But how similar were these Princeton-class computers? What exactly was so special about the IAS Machine? And how does good 'ol Johnny von Neumann get tied up in all of this?</p> <p><a href= "https://open.substack.com/pub/theeasternborder/p/help-out-a-latvian-war-journalist?utm_campaign=post&utm_medium=web" rel="noopener noreferrer nofollow"><strong>The Eastern Boarder map fundraiser</strong></a></p> <p><strong>Selected Sources:</strong></p> <p>Bigelow Oral History - <a href= "https://www.si.edu/media/NMAH/NMAH-AC0196_bige710120.pdf" rel= "noopener noreferrer nofollow"><em><u>https://www.si.edu/media/NMAH/NMAH-AC0196_bige710120.pdf</u></em></a></p> <p>Prelin IAS Machine Report - https://www.ias.edu/sites/default/files/library/Prelim_Disc_Logical_Design.pdf</p> <p> </p> 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://traffic.libsyn.com/secure/adventofcomputing/ep161_ias_machine.mp3?dest-id=1206722"></source>
</audio> <a href="https://traffic.libsyn.com/secure/adventofcomputing/ep161_ias_machine.mp3?dest-id=1206722" target="_blank">download audio/mpeg</a><br> 

<https://adventofcomputing.libsyn.com/episode-161-the-ias-machine>

---

## Happy 20th birthday Django! Here's my talk on Django Origins from Django's 10th

date: 2025-07-13, updated: 2025-07-13, from: Simon Willison’s Weblog

<p>Today is the <a href="https://www.djangoproject.com/weblog/2025/jul/13/happy-20th-birthday-django/">20th anniversary</a> of <a href="https://github.com/django/django/commit/d6ded0e91bcdd2a8f7a221f6a5552a33fe545359">the first commit</a> to the public Django repository!</p>
<p>Ten years ago we threw a multi-day 10th birthday party for Django back in its birthtown of Lawrence, Kansas. As a personal celebration of the 20th, I'm revisiting the talk I gave at <em>that</em> event and writing it up here.</p>
<p>Here's <a href="https://www.youtube.com/watch?v=wqii_iX0RTs">the YouTube video</a>. Below is a full transcript, plus my slides and some present-day annotations.</p>

<p><lite-youtube videoid="wqii_iX0RTs" js-api="js-api"
  title="Django Origins"
  playlabel="Play: Django Origins"
> </lite-youtube></p>

<h4>Django Origins (and some things I have built with Django)</h4>
<p><em>Presented 11th July 2015 at Django Birthday in Lawrence, Kansas</em></p>

  <p>My original talk title, as you'll see on your programs, was "Some Things I've Built with Django." But then I realized that we're here in the birthplace of Django, celebrating the 10th birthday of the framework, and nobody's told the origin story yet. So, I've switched things around a little bit. I'm going to talk about the origin story of Django, and then if I have time, I'll do the self-indulgent bit and talk about some of the projects I've shipped since then.</p>
<p>I think Jacob's introduction hit on something I've never really realized about myself. I do love shipping things. The follow-up and the long-term thing I'm not quite so strong on. And that came to focus when I was putting together this talk and realized that basically every project I'm going to show you, I had to dig out of the Internet Archive.</p>
<p><em>Ten years on from writing this talk I'm proud that I've managed to overcome my weakness in following-up - I'm now actively maintaining a bewildering array of projects, having finally figured out how to <a href="https://simonwillison.net/2022/Nov/26/productivity/">maintain things</a> in addition to creating them!</em></p>
<p>But that said, I will tell you the origin story of Django.</p>

<div class="slide" id="django-birthday02.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday02.jpg" alt="adrian holovaty blog post

May 31, 2003, 11:49 AM ET
Job opportunity: Web programmer/developer

I interrupt this blogging hiatus to announce a job opportunity.

World Online, my employer here in beautiful Lawrence, Kansas, is looking for another Web programmer to help build cool stuff for our three sites, ljworld.com, lawrence.com and kusports.com ...
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday02.jpg">#</a>
  <p>For me, the story starts very much like Jacob's. I was reading RSS feeds back in 2003, and I saw <a href="https://www.holovaty.com/writing/211/">this entry on Adrian's blog</a>, talking about a job opportunity for a web programmer or developer in Lawrence, Kansas.</p>
<p>Now, I was in England. I was at university. But my university had just given me the opportunity to take a year abroad, to take a year out to do an internship year in industry. My girlfriend at the time was off to Germany to do her year in industry. So I was like, well, you know, do I stay at university? And then this comes along.</p>
<p>So I got in touch with Adrian and said, you know, could this work as a year-long internship instead? And he was reading my blog and I was reading his blog, and we knew that we aligned on a bunch of things. So we thought we'd give it a go.</p>
<p>Now, if you look through this job ad, you'll see that this is all about expert knowledge of PHP and experience designing and maintaining databases, particularly MySQL. So this was a PHP and MySQL gig.</p>
<p>But when I arrived in Kansas, we quickly realized that we were both kind of over PHP. You know, we'd both built substantial systems in PHP, and we were running up against the limits of what you can do in PHP and have your code still be clean and maintainable.</p>
<p>And at the same time, we were both reading <a href="https://web.archive.org/web/20020324174618/http://diveintomark.org/">Mark Pilgrim's blog</a> (archive link). Mark Pilgrim had been publishing Dive into Python and making a really strong case for why Python was a great web language.</p>
<p>So we decided that this was the thing we wanted to do. But we both had very strong opinions about how you should build websites. Things like URL design matters, and we care about the difference between get and post, and we want to use this new thing called CSS to lay out our web pages. And none of the existing Python web frameworks really seemed to let us do what we wanted to do.</p>
  </div>
</div>
<div class="slide" id="django-birthday03.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday03.jpg" alt="Lawrence JOURNAL-WORLD
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday03.jpg">#</a>
  <p>Now, before I talk more about that, I'll back up and talk about the organization we're working for, the <a href="https://en.wikipedia.org/wiki/Lawrence_Journal-World">Lawrence Journal World</a>.</p>
<p>David <a href="https://www.youtube.com/watch?v=FDsqFD4pDy4">gave a great introduction</a> to why this is an interesting organization. Now, we're talking about a newspaper with a circulation of about 10,000, like a tiny newspaper, but with a world-class newsroom, huge amounts of money being funneled into it, and like employing full-time software developers to work at a local newspaper in Kansas.</p>
  </div>
</div>
<div class="slide" id="django-birthday04.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday04.jpg" alt="Rob Curley (and a photo of Rob)" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday04.jpg">#</a>
  <p>And part of what was going on here was this guy. This is Rob Curley. He's been mentioned a few times before already.</p>
  </div>
</div>
<div class="slide" id="django-birthday05.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday05.jpg" alt="Unofficial mission statement: “build cool shit”
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday05.jpg">#</a>
  <p>And yeah, Rob Curley set this unofficial mission statement that we "build cool shit". This is something that Adrian would certainly never say. It's not really something I'd say. But this is Rob through and through. He was a fantastic showman.</p>
<p>And this was really the appeal of coming out to Lawrence, seeing the stuff they'd already built and the ambitions they had.</p>
  </div>
</div>
<div class="slide" id="django-birthday06.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday06.jpg" alt="Screenshot of Lawrence.com - Focus on Kansas. Community blogs, calendars, merch, links to movies, video games, eating out and more." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday06.jpg">#</a>
  <p>This is Lawrence.com. This is actually the Lawrence.com written in PHP that Adrian had built as the sole programmer at the Lawrence Journal World. And you should check this out. Like, even today, this is the best local entertainment website I have ever seen. This has everything that is happening in the town of Lawrence, Kansas population, 150,000 people. Every gig, every venue, all of the stuff that's going on.</p>
<p>And it was all written in PHP. And it was a very clean PHP code base, but it was really stretching the limits of what it's sensible to do using PHP 4 back in 2003.</p>
<p>So we had this goal when we started using Python. We wanted to eventually rebuild Lawrence.com using Python. But in order to get there, we had to first build -- we didn't even know it was a web framework. We called it the CMS.</p>
  </div>
</div>
<div class="slide" id="django-birthday07.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday07.jpg" alt="6 Weather Lawrence. An image shows the Lawrence skyline with different conditions for the next 6 days." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday07.jpg">#</a>
  <p>And so when we started working on Django, the first thing that we shipped was actually this website. We had a lot of the six-news Lawrence. This is the six-news Lawrence -- six-news is the TV channel here -- six-news Lawrence weather page.</p>
<p>And I think this is pretty cool. So Dan Cox, the designer, was a fantastic illustrator. We actually have this illustration of the famous Lawrence skyline with each panel could be displayed with different weather conditions depending on the weather.</p>
<p>And in case you're not from Kansas, you might not have realized that the weather is a big deal here. You know, you have never seen more excited weathermen than when there's a tornado warning and they get to go on local news 24 hours a day giving people updates.</p>
  </div>
</div>
<div class="slide" id="django-birthday08.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday08.jpg" alt="6 News Lawrence - 6 TV news anchor portrait photos in the heading." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday08.jpg">#</a>
  <p>So we put the site live first. This was the first ever Django website. We then did the rest of the 6 News Lawrence website.</p>
<p>And this -- Adrian reminded me this morning -- the launch of this was actually delayed by a week because the most important feature on the website, which is clearly the photograph of the news people who are on TV, they didn't like their hairdos. They literally told us we couldn't launch the website until they'd had their hair redone, had the headshots retaken, had a new image put together. But, you know, image is important for these things.</p>
<p>So anyway, we did that. We did six-news Lawrence. And by the end of my year in Kansas, Adrian had rewritten all of Lawrence.com as well.</p>
  </div>
</div>
<div class="slide" id="django-birthday09.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday09.jpg" alt="Lawrence.com with a new design, it looks very cool." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday09.jpg">#</a>
  <p>So this is the Lawrence.com powered by Django. And one thing I think is interesting about this is when you talk to like David Heinemeier Hansson about Rails, he'll tell you that Rails is a framework that was extracted from Basecamp. They built Basecamp and then they pulled out the framework that they used and open sourced it.</p>
<p>I see Django the other way around. Django is a framework that was built up to create Lawrence.com. Lawrence.com already existed. So we knew what the web framework needed to be able to do. And we just kept on iterating on Django or the CMS until it was ready to produce this site here.</p>
  </div>
</div>
<div class="slide" id="django-birthday10.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday10.jpg" alt="LJWorld.com Game 2006 - photos of kids playing sports, stories about kid sports, links to photo galleries and playing locations and schedules and more." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday10.jpg">#</a>
  <p>And for me, the moment I realized that we were onto something special was actually when we built this thing. This is a classic Rob Curley project. So Rob was the boss. He had the crazy ideas and he didn't care how you implemented them. He just wanted this thing done.</p>
<p>And he came to us one day and said, you know, the kids' little league season is about to start. Like kids playing softball or baseball. Whatever the American kids with bats thing is. So he said, kids' little league season is about to start. And we are going to go all out.</p>
  </div>
</div>
<div class="slide" id="django-birthday11.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday11.jpg" alt="A Game page showing DCABA 10K Blue - a local team plus their schedule." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday11.jpg">#</a>
  <p>I want to treat these kids like they're the New York Yankees. We're going to have player profiles and schedules and photos and results.</p>
  </div>
</div>
<div class="slide" id="django-birthday12.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday12.jpg" alt="A form to sign up for cell phone updates for that team." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday12.jpg">#</a>
  <p>And, you know, we're going to have the ability for parents to get SMS notifications whenever their kid scores.</p>
  </div>
</div>
<div class="slide" id="django-birthday13.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday13.jpg" alt="An index page showing 360 degree field photos for 12 different venues around town." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday13.jpg">#</a>
  <p>And we're going to have 360 degree, like, interactive photos of all of the pitches in Lawrence, Kansas, that these kids are playing games on.</p>
<p>They actually did send a couple of interns out with a rig to take 360 degree virtual panoramas of Fenway Park and Lawrence High School and all of these different places.</p>
  </div>
</div>
<div class="slide" id="django-birthday14.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday14.jpg" alt="... in three days
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday14.jpg">#</a>
  <p>And he said -- and it starts in three days. You've got three days to put this all together.</p>
<p>And we pulled it off because Django, even at that very early stage, had all of the primitives you needed to build 360 degree interactives. That was all down to the interns. But we had all of the pieces we needed to pull this together.</p>
  </div>
</div>
<div class="slide" id="django-birthday15.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday15.jpg" alt="&quot;The CMS&quot;" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday15.jpg">#</a>
  <p>So when we were working on it back then, we called it the CMS.</p>
  </div>
</div>
<div class="slide" id="django-birthday16.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday16.jpg" alt="brazos
webbing
physique
anson
The Tornado Publishing System
private dancer
fizgig
lavalier
pythy

https://jacobian.org/writing/private_dancer/
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday16.jpg">#</a>
  <p>A few years ago, <a href="https://jacobian.org/2005/sep/9/private_dancer/">Jacob found a wiki page</a> with some of the names that were being brainstormed for the open source release. And some of these are great. There's Brazos -- I don't know where that came from -- Webbing, Physique, Anson.</p>
  </div>
</div>
<div class="slide" id="django-birthday17.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday17.jpg" alt="Highlighted: The Tornado Publishing System" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday17.jpg">#</a>
  <p>This is my favorite name. I think this is what I proposed -- is the Tornado Publishing System.</p>
  </div>
</div>
<div class="slide" id="django-birthday18.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday18.jpg" alt="Screenshot from Office Space. Lumbergh says &quot;Yeah, if you could go ahead and get those TPS reprots to me as soon as possible... that&#39;d be great&quot;." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday18.jpg">#</a>
  <p>And the reason is that I was a really big fan of <a href="https://en.wikipedia.org/wiki/Office_Space">Office Space</a>. And if we had the Tornado, we could produce TPS reports, which I thought would be amazing.</p>
<p>But unfortunately, this being Kansas, the association of Tornadoes isn't actually a positive one.</p>
<p>Private Dancer, Physgig, Lavalia, Pithy -- yeah. I'm very, very pleased that they picked the name that they did.</p>
  </div>
</div>
<div class="slide" id="django-birthday19.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday19.jpg" alt="“Wouldn&#39;t It be cool If...”
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday19.jpg">#</a>
  <p>So one of our philosophies was build cool shit. The other philosophy we had was what we called "Wouldn't it be cool if?"</p>
<p>So there were no user stories or careful specs or anything. We'd all sit around in the basement and then somebody would go "Wouldn't it be cool if...", and they'd say something. And if we thought it was a cool idea, we'd build it and we'd ship it that day.</p>
  </div>
</div>
<div class="slide" id="django-birthday20.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday20.jpg" alt="Lawrence.com featured audio page - a list of bands each with links to their music and information about where they are playing in town this week." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday20.jpg">#</a>
  <p>And my favorite example of "Wouldn't it be cool if?" -- this is a classic Adrian one -- is "Wouldn't it be cool if the downloads page on Lawrence.com featured MP3s you could download of local bands?" And seeing as we've also got the schedule of when the bands are playing, why don't we feature the audio from bands who you can go and see that week?</p>
<p>So this page will say, "OK Jones are playing on Thursday at the Bottleneck. Get their MP3. Listen to the radio station." We had a little MP3 widget in there. Go and look at their band profile. All of this stuff.</p>
<p>Really, these kinds of features are what you get when you take 1970s relational database technology and use it to power websites, which -- back in 2003, in the news industry -- still felt incredibly cutting edge. But, you know, it worked.</p>
<p>And that philosophy followed me through the rest of my career, which is sometimes a good idea and often means that you're left maintaining features that seemed like a good idea at the time and quickly become a massive pain!</p>
  </div>
</div>
<div class="slide" id="django-birthday21.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday21.jpg" alt="YAHOO!
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday21.jpg">#</a>
  <p>After I finished my internship, I finished my degree in England and then ended up joining up with Yahoo. I was actually working out of the Yahoo UK office but for a R&amp;D team in the States. I was there for about a year and a half.</p>
<p>One of the things I learned is that you should never go and work for an R&amp;D team, because the problem with R&amp;D teams is you never ship. I was there for a year and a half and I basically have nothing to show for it in terms of actual shipped features.</p>
<p>We built some very cool prototypes. And actually, after I left, one of the projects I worked on, <a href="https://en.wikipedia.org/wiki/Fire_Eagle">Yahoo FireEagle</a>, did end up getting spun out and turned into a real product.</p>
  </div>
</div>
<div class="slide" id="django-birthday22.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday22.jpg" alt="YAHOO! ASTRONEWSOLOGY

Dick Cheneey (age 65)

Compare their horoscope with our recent news stories!

A very close friend or a member of your current peer group -- who means a great deal to you -- has recently found it necessary to go out of their way to tick you off. At least, that&#39;s the way it seems. It&#39;s worked, too -- better than it should have. You&#39;re not just angry, you&#39;re furious. Before you let go and let them have it, be sure you&#39;re right. Feeling righteous is far better than feeling guilty

Fox News wins battle for Cheney interview (Reuters) - 16th February, 12:13
Cheney Says He Has Power to Declassify Info (AP) - 16th February, 09:56
Cheney Mishap Takes Focus Off CIA Leak (AP) - 16th February, 09:13
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday22.jpg">#</a>
  <p>But there is one project -- the first project I built at Yahoo using Django that I wanted to demonstrate. This was for Yahoo's internal hack day. And so Tom Coates and myself, who were working together, we decided that we were going to build a mashup, because it was 2005 and mashups were the cutting edge of computer science.</p>
<p>So we figured, OK, let's take the two most unlikely Yahoo products and combine them together and see what happens. My original suggestion was that we take Yahoo Dating and Yahoo Pets. But I was told that actually there was this thing called Dogster and this other thing called Catster, which already existed and did exactly that.</p>
<p>So the next best thing, we went for Yahoo News and Yahoo Horoscopes. And what we ended up building -- and again, this is the first Django application within Yahoo -- was Yahoo Astronewsology.</p>
<p>And the idea was you take the news feed from Yahoo News, you pull out anything that looks like it's a celebrity's name, look up their birth date, use that to look up their horoscope, and then combine them on the page.
And in a massive stroke of luck, we built this the week that Dick Cheney <a href="https://en.wikipedia.org/wiki/Dick_Cheney_hunting_accident">shot his friend in the face</a> while out hunting.</p>
<p>Dick Cheney's horoscope for that week says, "A very close friend who means a great deal to you has found it necessary to go out of their way to tick you off. You're not just angry, you're furious. Before you let go and let them have it, be sure you're right. Feeling righteous is far better than feeling guilty."</p>
<p>And so if Dick Cheney had only had only been reading his horoscopes, maybe that whole situation would have ended very differently.</p>
  </div>
</div>
<div class="slide" id="django-birthday23.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday23.jpg" alt="The Guardian" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday23.jpg">#</a>
  <p>So after Yahoo, I spent a while doing consulting and things, mainly <a href="https://simonwillison.net/tags/openid/">around OpenID</a> because I was determined to make OpenID work. I was absolutely convinced that if OpenID didn't take off, just one company would end up owning single sign-on for the entire internet, and that would be a total disaster.</p>
<p>And with hindsight, it didn't quite happen. Facebook login looked like it was going to do that a few years ago, but these days there's enough variety out there that I don't feel like we all have to submit to our Facebook masters.</p>
<p>But, you know, I was enjoying freelancing and consulting and so on. And then I ended up going for coffee with somebody who worked for <a href="https://www.theguardian.com/">The Guardian</a>.</p>
<p>I'm sure you've all heard of The Guardian. It's one of England's most internationally focused newspapers. It's a very fine publication. And I realized that I really missed working in a newsroom environment. And I was incredibly jealous of people like Adrian, who'd gone off to the Washington Post and was doing data journalism there, and Derek Willis as well, who bounced from the Post and The New York Times. There was all of this cool data journalism stuff going on.</p>
<p>And The Guardian's pitch was basically, we've been building a CMS from scratch in Java with a giant team of engineers, and we've built it and it's really cool, but we're not shipping things quickly. We want to start exploring this idea of building things much faster to fit in with the news cycle.</p>
<p>And that was a very, very tempting thing for me to get involved with. So I went to work for The Guardian.</p>
  </div>
</div>
<div class="slide" id="django-birthday24.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday24.jpg" alt="Photo of Simon Rogers, looking like a man who can find you the right data." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday24.jpg">#</a>
  <p>And The Guardian have a really interesting way of doing onboarding of new staff. The way they do it is they set you up on coffee dates with people from all over the organization. So one day you'll be having coffee with somebody who sells ads, and the next day it'll be the deputy editor of the newsroom, and the next day it'll be a journalist somewhere. And each of these people will talk to you and then they'll suggest other people for you to meet up with. So over the first few weeks that you're there, you meet a huge variety of people.</p>
<p>And time and time again, as I was talking to people, they were saying, "You know what? You should go and talk to Simon Rogers, this journalist in the newsroom."</p>
<p>This is Simon Rogers. I went down to talk to him, and we had this fascinating conversation. So Simon is a journalist. He worked in the newsroom, and his speciality was gathering data for The Guardian's infographics. Because they are in the paper. They post, they have graphs and charts and all sorts of things like that that they publish.</p>
<p>It turns out that Simon was the journalist who knew how to get that data out of basically any source you can imagine. If you wanted data, he would make some phone calls, dig into some government contacts and things, and he'd get those raw numbers. And all of the other journalists thought he was a bit weird, because he liked hanging out and editing Excel spreadsheets and stuff.</p>
<p>So I said to him halfway through this conversation, "Just out of interest, what do you do with those Excel spreadsheets?" And he's like, "Oh, I keep them all on my hard drive." And showed me this folder with hundreds and hundreds of meticulously researched, properly citable news quality spreadsheets full of data about everything you could imagine. And they lived on his hard drive and nowhere else.</p>
<p>And I was like, "Have you ever talked to anyone in the engineering department upstairs?" And we made this connection.</p>
<p>And so from then on, we had this collaboration going where he would get data and he'd funnel it to me and see if we could, see if I or someone else in the engineering department at Guardian could do something fun with it.</p>
  </div>
</div>
<div class="slide" id="django-birthday25.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday25.jpg" alt="Guardian website screenshot.

BNP members: the far right map of Britain

A court injunction prevents the distribution of the names on the
BNP membership leaked online. This map shows you which
constituencies have the most BNP members

Then a BNP membership by constituency colourful map.
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday25.jpg">#</a>
  <p>And so that was some of the most rewarding work of my career, because it's journalism, you know, it's news, it's stuff that matters. The deadlines are ridiculous. If a news story breaks and it takes you three weeks to turn around a piece of data journalism around it, why did you even bother? And it's perfect for applying Django to.</p>
<p>So the first story I got to work on at the Guardian was actually one of the early WikiLeaks things. This is before WikiLeaks was like massively high profile. But quite early on, WikiLeaks leaked a list of all of the members of the British National Party, basically the British Nazis. They leaked a list of all of their names and addresses.</p>
<p>And the Guardian is an ethical newspaper, so we're not going to just publish 18,000 people's names and addresses. But we wanted to figure out if there was something we could do that would make use of that data but wouldn't be violating anyone's individual privacy.</p>
<p>And so what we did is we took all of the addresses, geocoded them, figured out which parliamentary constituency they lived in, and used that to generate a heat map that's actually called a choropleth map, I think, of the UK showing where the hotspots of BNP activity were.</p>
<p>And this works because in the UK a parliamentary constituency is, they're designed to all have around about the same population. So if you just like make the color denser for the larger numbers of BNP members, you get this really interesting heat map of the country.</p>
  </div>
</div>
<div class="slide" id="django-birthday26.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday26.jpg" alt="A photo of that same map shown in a paper newspaper" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday26.jpg">#</a>
  <p>And what was really cool about this is that I did this using SVG, because we have an infographics department with Illustrator who are good at working with SVG. And it's very easy with an SVG file with the right class names on things to set colors on different regions.</p>
<p>And because we produced it in SVG, we could then hand it over to the print department, and the next day it was out in the paper. It was like a printed thing on paper, on like dead trees distributed all over the country, which I thought was super cool.</p>
<p>So that was the first data journalism project that we did at The Guardian. And it really helped prove that given the right data sets and like the right tools and a bit of freedom, you can do some really cool things.</p>
<p>The first few times I did this, I did it by hand. Then we had The Guardian's first hack day and I was like, well okay, I'm going to build a little self-service tool for our infographics journalists to like dump in a bunch of CSV numbers and get one of these maps out of it.</p>
<p>So I built this tool. I didn't have anywhere official to deploy it, so I just ran it on my Linux desktop underneath my desk. And they started using it and putting things in the paper and I kind of forgot about it. And every now and then I get a little feature request.</p>
<p>A few years after I left The Guardian, I ran into someone who worked there. And he was like, yeah, you know that thing that you built? So we had to keep your desktop running for six months after you left. And then we had to like convert it into a VMware instance. And as far as I know, my desktop is still running as a VMware instance somewhere in The Guardian.</p>
<p>Which ties into the Simon database, I guess. The hard thing is building stuff is easy. Keeping it going it turns out is surprisingly difficult.</p>
  </div>
</div>
<div class="slide" id="django-birthday27.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday27.jpg" alt="Website:  Investigate your MP&#39;s expenses
mps-expenses.guaraian.co.uk

Join us in digging through the documents of MPs&#39; expenses to identify individual claims, or documents that you think merit further investigation. You can work through your own MP&#39;s expenses, or just hit the button below to start reviewing. 

A progress bar shows 28,801 of you have reviewed 221,220 of them, only 237o612 to go..." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday27.jpg">#</a>
  <p>This was my favorite project at The Guardian. There was <a href="https://en.wikipedia.org/wiki/United_Kingdom_parliamentary_expenses_scandal">a scandal in the UK a few years ago</a> where it turned out that UK members of parliament had all been fiddling their expenses.</p>
<p>And actually the background on this is that they're the lowest paid MPs anywhere in Europe. And it seems like the culture had become that you become an MP and on your first day somebody takes you aside and goes, look, I know the salary is terrible. But here's how to fill your expenses and make up for it.</p>
<p>This was a scandal that was brewing for several years. The Guardian had actually filed freedom of information requests to try and get these expense reports. Because they were pretty sure something dodgy was going on. The government had dragged their heels in releasing the documents.</p>
<p>And then just when they were a month before they finally released the documents, a rival newspaper, the Telegraph, managed to get hold of a leaked copy of all of these expenses. And so the Telegraph had 30 days lead on all of the other newspapers to dig through and try and find the dirt.</p>
<p>So when they did release the expenses 30 days later, we had a race on our hands because we needed to analyze 20,000 odd pages of documents. Actually, here it says 450,000 pages of documents in order to try and find anything left that was newsworthy.</p>
  </div>
</div>
<div class="slide" id="django-birthday28.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday28.jpg" alt="Page 34 of Janet Dean&#39;s Incidental Expenses Provision 2007/08

Much of the page is redacted. 

What kind of page is this? Buttons for:
Claim, Proof, Blank, Other

Is this page interesting? Should we investigate it further?" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday28.jpg">#</a>
  <p>And so we tackled this with crowdsourcing. We stuck up a website. We told people, we told Guardian readers, come to this website, hit the button, we'll show you a random page from someone's expenses. And then you can tell us if you think it's not interesting, interesting, or we should seek an investigative reporter on it.</p>
  </div>
</div>
<div class="slide" id="django-birthday29.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday29.jpg" alt="Hywel Francis MP&#39;s expenses

Labour MP for Aberavon. A photo of him smiling. Below is a table of documents each showing progress through reviewing each one." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday29.jpg">#</a>
  <p>And one of the smartest things we did with this is we added a feature where you could put in your postcode, we'd figure out who your MP was, and then we would show you their smug press photo. You know, their smug face next to all of their expense claims that they'd filed.</p>
<p>And this was incredibly effective. People were like, "Ooh, you look so smug. I'm going to get you." And once we put this up, and within 18 hours, our community had burned through hundreds of thousands of pages of expense documents trying to find this stuff.</p>
  </div>
</div>
<div class="slide" id="django-birthday30.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday30.jpg" alt="Screenshot showing thumbnails of a document that is being processed." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday30.jpg">#</a>
  <p>And again, this was built in Django. We had, I think, five days warning that these documents are coming out. And so it was a total, like, I think I built a proof of concept on day one. That was enough to show that it was possible. So I got a team with a designer and a couple of other people to help out. And we had it ready to go when the document dump came out on that Friday.</p>
<p>And it was pretty successful. We dug up some pretty interesting stories from it. And it was also just a fantastic interactive way of engaging our community. And, you know, the whole crowdsourcing side of it was super fun.</p>
<p>So I guess the thing I've learned from that is that, oh, my goodness, it's fun working for newspapers. And actually, if you -- the Lawrence Journal world, sadly, no longer has its own technology team. But there was a period a few years ago where they were doing some cracking data journalism work. Things like tracking what the University of Kansas had been using its private jet for, and letting people explore the data around that and so on.</p>
<p>The other thing we did at the Guardian, this is going back to Simon Rogers, is he had all of these spreadsheets on his hard drive. And we're like, okay, we should really try and publish this stuff as raw data. Because living on your hard drive under your head is a crying shame.</p>
<p>And the idea we came up with was essentially to start something we called <a href="https://www.theguardian.com/news/datablog/2009/mar/10/blogpost1">the Data blog</a> and publish them as Google spreadsheets. You know, we spent a while thinking, well, you know, what's the best format to publish these things in? And we're like, well, they're in Excel. Google spreadsheets exists and it's pretty good. Let's just put a few of them up as Google sheets and see what people do with them.</p>
<p>And it turns out that was enough to build this really fun community of data nerds around the Guardian's data blog who would build their own visualizations. They'd dig into the data. And it meant that we could get all sorts of -- like, we could get so much extra value from the work that we were already doing to gather these numbers for the newspaper. That stuff was super fun.</p>
  </div>
</div>
<div class="slide" id="django-birthday31.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday31.jpg" alt="Side projects
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday31.jpg">#</a>
  <p>Now, while I was working at the Guardian, I also got into the habit of building some projects with my girlfriend at the time, now my wife Natalie. So Natalie and I have skill sets that fit together very nicely. She's a front-end web developer. I do back-end Django stuff. I do just enough ops to be dangerous. And so between the two of us, we can build websites.</p>
  </div>
</div>
<div class="slide" id="django-birthday32.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday32.jpg" alt="Django People

A map of the world with green markers, plus a table of the countries with the most registered Django community members." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday32.jpg">#</a>
  <p>The first things we worked on together is a site which I think some people here should be familiar with, called Django People. The idea was just, you know, the Django community appears to be quite big now. Let's try and get people to stick a pin on a map and tell us where they are.</p>
<p>Django People still exists today. It's online thanks to a large number of people constantly bugging me at Django Cons and saying, look, just give us the code and the data and we'll get it set up somewhere so it can continue to work. And that's great. I'm really glad I did that because this is the one project that I'm showing you today which is still available on the web somewhere. (<em>2025 update: the site is no longer online.</em>)</p>
<p>But Django People was really fun. And the thing we learned from this, my wife and I, is that we can work together really well on things.</p>
  </div>
</div>
<div class="slide" id="django-birthday33.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday33.jpg" alt="/dev/fort

A photo of a very cool looking sea fortress." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday33.jpg">#</a>
  <p>The other side project we did was much more of a collaborative effort. Again, this no longer exists, or at least it's no longer up on the web. And I'm deeply sad about this because it's my favorite thing I'm going to show you.</p>
<p>But before I show you the project, I'll show you how we built it. We were at a BarCamp in London with a bunch of our new friends and somebody was showing photographs of this Napoleonic sea fortress that they had rented out for the weekend from an organization in the UK called <a href="https://www.landmarktrust.org.uk/">the Landmark Trust</a>, who basically take historic buildings and turn them into vacation rentals as part of the work to restore them.</p>
<p>And we were like, "Oh, wouldn't it be funny if we rented a castle for a week and all of us went out there and we built stuff together?" And then we were like, "That wouldn't be funny. That would be freaking amazing."</p>
<p>So we rented this place. This is called <a href="https://en.wikipedia.org/wiki/Fort_Clonque">Fort Clonque</a>. It's in the Channel Islands, halfway between England and France. And I think it cost something like $2,000 for the week, but you split that between a dozen people and it's like youth hostel prices to stay in a freaking fortress.</p>
  </div>
</div>
<div class="slide" id="django-birthday34.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday34.jpg" alt="Group photos of people hanging out on the fort with their laptops." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday34.jpg">#</a>
  <p>So we got a bunch of people together and we went out there and we just spent a week. We called it <a href="https://devfort.com/">/dev/fort</a>. We spent a week just building something together.</p>
  </div>
</div>
<div class="slide" id="django-birthday35.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday35.jpg" alt="Where&#39;s my nearest llama?" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday35.jpg">#</a>
  <p>And the thing we ended up building was called Wildlife Near You. And what Wildlife Near You does is it solves the eternal question, "Where is my nearest llama?"</p>
  </div>
</div>
<div class="slide" id="django-birthday36.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday36.jpg" alt="WildlifeNearYou.com

Seen any more animals? Why not add another trip 
or import some photos from Flickr. Or you could
help people identify the animals in their photos!" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday36.jpg">#</a>
  
  </div>
</div>
<div class="slide" id="django-birthday37.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday37.jpg" alt="My family trip to Gigrin Farm r-ed Kite Feeding station on 15th April 2008 

Sightings: Common Raven, Common Buzzard, Red Kite" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday37.jpg">#</a>
  <p>Once again, this is a crowdsourcing system. The idea is that you go to wildlifenearyou.com and you've just been on a trip to like a nature park or a zoo or something. And so you create a trip report saying, "I went to the Red Kite feeding station and I saw a common raven and a common buzzard and a red kite." And you import any of your photos from Flickr and so forth.</p>
  </div>
</div>
<div class="slide" id="django-birthday38.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday38.jpg" alt="WildlifeNearYou: cookieyum - list of recent trips for this user" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday38.jpg">#</a>
  <p>And you build up this profile saying, "Here are all the places I've been and my favorite animals and things I've seen."</p>
  </div>
</div>
<div class="slide" id="django-birthday39.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday39.jpg" alt="Search &quot;llamas&quot; near &quot;brighton&quot; - shows Ashdown Forest Llama Farm." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday39.jpg">#</a>
  <p>And then once we've got that data set, we can solve the problem. You can say, "Search for llamas near Brighton." And it'll say, "Your nearest llama is 18 miles away and it'll show you pictures of llamas and all of the llama things."</p>
  </div>
</div>
<div class="slide" id="django-birthday40.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday40.jpg" alt="Red Panda: 17 people love this animal. Link to Wikipedia. Your nearest Red Panda is at Marwell Zoo, 51 miles away from Brighton and Hove UK." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday40.jpg">#</a>
  <p>And we have species pages. So here's the red panda page. 17 people love red pandas. You can see them at Taronga Zoo.</p>
  </div>
</div>
<div class="slide" id="django-birthday41.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday41.jpg" alt="Which Marmot photo is better?

Two marmot photos - you can select one or the other or click &quot;skip&quot;." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday41.jpg">#</a>
  <p>And then our most viral feature was we had all of these photos of red pandas, but how do we know which is the best photo of a red panda that we should highlight on the red panda page? So we basically built Hot or Not for photographs of wildlife.</p>
<p>So it's like, "Which marmot photo is better?" And you say, "Well, clearly the one on the right." And it's like, "Okay, which skunk photo is better?"</p>
<p>I was looking at the logs and people would go through hundreds and hundreds of photos. And you'd get scores and you can see, "Oh, wow, my marmot photo is the second best marmot photo on the whole website."</p>
  </div>
</div>
<div class="slide" id="django-birthday42.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday42.jpg" alt="Find owls near you!
owlsnearyou.com
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday42.jpg">#</a>
  <p>So that was really fun. And then we eventually took it a step further and said, "Okay, well, this is really fun, but this is a website that you have to type on, right?" And meanwhile, mobile phones are now getting HTML5 geolocation and stuff. So can we go a step further?</p>
<p>So we built owlsnearyou.com. And what owlsnearyou.com does is you type in the location, and it says, "Your nearest owl is 49 miles away." It's a spectacle owl at London Zoo. It was spotted one year ago by Natalie.</p>
  </div>
</div>
<div class="slide" id="django-birthday43.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday43.jpg" alt="Owls near 2-3 Kensington St,
Brighton, Brighton and Hove

49.1 miles away
We think your nearest owl is a Spectacled Owl at London Zoo! Spotted
twice, most recently by natbat 1 year ago.
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday43.jpg">#</a>
  <p>And if you went here on a mobile phone-- If you went here on a device that supported geolocation, it doesn't even ask you where you live. It's just like, "Oh, okay, here's your nearest owl."</p>
<p>And I think we shipped lions near you and monkeys near you and a couple of other domains, but owlsnearyou.com was always my favorite.</p>
<p>So looking at this now, we should really get this stuff up and running again. It was freaking amazing. Like, this for me is the killer app of all killer apps.</p>
<p>(<em>We did eventually bring this idea back as <a href="https://www.owlsnearme.com/">www.owlsnearme.com</a>, using data from <a href="https://www.inaturalist.org/">iNaturalist</a> - that's online today.</em>)</p>
  </div>
</div>
<div class="slide" id="django-birthday44.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday44.jpg" alt="‘Bugle is a Twitter-like
application for groups of
hackers collaborating in a
castle (or fort, or other
defensive structure) with no
internet connection”
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday44.jpg">#</a>
  <p>So there have actually been a bunch of Devforts since then. One of the things we learned from Devfort is that building applications-- If you want to do a side project, doing one with user accounts and logins and so on, it's a freaking nightmare. It actually took us almost a year after we finished on the fort to finally ship Wildlife Near You because there were so many complexities. And then we had to moderate it and keep an eye on it and so on.</p>
<p>So if you look at the more recent Devforts, they've taken that to heart. And now they try and ship things which just work and don't require ongoing users logging in and all of that kind of rubbish.</p>
<p>But one of the other projects I wanted to show you that came out of a Devfort was something called Bugle. And the idea of Bugle is Bugle is a Twitter-like application for groups of hackers collaborating in a castle, fort, or other defensive structure who don't have an internet connection.</p>
  </div>
</div>
<div class="slide" id="django-birthday45.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday45.jpg" alt="Screenshot of Bugle - it looks like Twitter, has a &quot;blast! button, various messages include todo list items and git commits and messages and at-mentions" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday45.jpg">#</a>
  <p>This was basically to deal with Twitter withdrawal when we were all on the fort together and we had an internal network. So Bugle, looking at it now, we could have been Slack! We could have been valued at $2 billion.</p>
<p>Yeah, Bugle is like an internal Twitter clone with a bunch of extra features like it's got a paste bin and to-do lists and all sorts of stuff like that.</p>
  </div>
</div>
<div class="slide" id="django-birthday46.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday46.jpg" alt="So I said to Ben Firshman...
“Wouldn&#39;t it be cool if Twitter
apps on the network could
talk to Bugle instead?”
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday46.jpg">#</a>
  <p>And does anyone here know Ben Firshman? I think quite a few people do. Excellent. So Ben Firshman was out on a Devfort and I did a "Wouldn't it be cool if" on him. I said, "Wouldn't it be cool if all of our Twitter apps and our phones talked to Bugle instead on the network?"</p>
  </div>
</div>
<div class="slide" id="django-birthday47.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday47.jpg" alt="Magic Twitter support

To make Twitter clients magically work with Bugle on a network, we need to mess with BIND.

Shows BIND settings" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday47.jpg">#</a>
  <p>And so if you <a href="https://github.com/simonw/bugle_project/blob/master/README.md#magic-twitter-support">go and look on GitHub</a>, I bet this doesn't work anymore. But he did add magic Twitter support where you could run a local DNS server, redirect Twitter to Bugle and we cloned, he cloned enough of the Twitter API that like Twitter apps would work and it would be able to Bugle instead.</p>
<p>We wanted to do a Devfort in America. You don't really have castles and forts that you can rent for the most part. If anyone knows of one, please come and talk to me because there's a distinct lack of defensible structures at least of the kind that we are used to back in Europe.</p>
  </div>
</div>
<div class="slide" id="django-birthday48.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday48.jpg" alt="Lanyrd.com
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday48.jpg">#</a>
  <p>So I'm running out of time, but that's OK because the most recent project, Lanyrd, is something which most people here have probably encountered.</p>
<p>I will tell a little bit of the backstory of Lanyrd because it's kind of fun.</p>
  </div>
</div>
<div class="slide" id="django-birthday49.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday49.jpg" alt="A photo of Natalie and myself in wedding attire with a Golden Eagle perched on a glove on my hand." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday49.jpg">#</a>
  <p>Lanyrd was a honeymoon project. </p>
<p>Natalie and I got married.  The wildlife near you influence affected our wedding - it was a freaking awesome wedding! You know, in England, you can get a man with a golden eagle and a barn owl and various other birds to show up for about $400 for the day. And then you get to take photos like this.</p>
  </div>
</div>
<div class="slide" id="django-birthday50.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday50.jpg" alt="Natalie and I riding a camel on a beach" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday50.jpg">#</a>
  <p>So anyway, we got married, we quit our jobs, I had to leave the Guardian because we wanted to spend the next year or two of our lives just traveling around the world, doing freelancing work on our laptops and so on.</p>
<p>We got as far as Morocco, we were six months in, when we contracted food poisoning in Casablanca and we were too sick to keep on travelling, so we figured we needed to like, you know, and it was also Ramadan, so it was really hard to get food and stuff. So we rented an apartment for two weeks and said, "Okay, well, since we're stuck for two weeks, let's like finish that side project we've been talking about and ship it and see if anyone's interested."</p>
  </div>
</div>
<div class="slide" id="django-birthday51.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday51.jpg" alt="Lanyrd screenshot: Your contacts&#39; calendar. Shows 303 conferences your Twitter contacts are interested in." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday51.jpg">#</a>
  <p>So we shipped Lanyrd, which was built around the idea of helping people who use Twitter find conferences and events to go to. What we hadn't realised is that if you build something around Twitter, especially back in 2010, it instantly goes viral amongst people who use Twitter.</p>
<p>So that ended up cutting our honeymoon short, and we actually applied for Y Combinator from Egypt and ended up spending three years building a startup and like hiring people and doing that whole thing.</p>
<p>(<em>Natalie wrote more about our startup in <a href="https://blog.natbat.net/post/61658401806/lanyrd-from-idea-to-exit-the-story-of-our">Lanyrd: from idea to exit - the story of our startup</a>.</em>)</p>
<p>The only thing I'll say about that is everything in the... Startups have to give the impression that everything's super easy and fun and cool all the time, because people say, "How's your startup going?" And the only correct answer is, "Oh man, it's amazing. It's doing so well." Because everyone has to lie about the misery, pain, anguish and stress that's happening behind the scenes.</p>
<p>So it was a very interesting three years, and we built some cool stuff and we learnt a lot, and I don't regret it, but do not take startups lightly.</p>
  </div>
</div>
<div class="slide" id="django-birthday52.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday52.jpg" alt="Eventbrite
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday52.jpg">#</a>
  <p>So a year and a half ago, we ended up selling Lanyrd to Eventbrite and moving out to San Francisco. And at Eventbrite, I've been mostly on the management team building side of things, but occasionally managing to sneak some code out as well.</p>
  </div>
</div>
<div class="slide" id="django-birthday53.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday53.jpg" alt="Screenshot of the My Events page on Eventbrite - at the top is an orange bar showing SQL render time and number of templates and log lines and requests." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday53.jpg">#</a>
  <p>The one thing I want to show you from Eventbrite, because I really want to open source this thing, is again at Hack Day, we built a tool called the Tikibar, which is essentially like the Django debug toolbar, but it's designed to be run in production. Because the really tough things to debug don't happen in your dev environment. They happen in production when you're hitting a hundred million row database or whatever.</p>
<p>And so the Tikibar is designed to add as little overhead as possible, but to still give you detailed timelines of SQL queries that are executing and service calls and all of that kind of stuff. It's called the Tikibar because I really like Tikibars.</p>
  </div>
</div>
<div class="slide" id="django-birthday54.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday54.jpg" alt="The orange bar is now expanded, it shows a line for each SQL query with a timeline indicating how long each one took." style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday54.jpg">#</a>
  <p>And the best feature is if a page takes over 500 milliseconds to load, the eyes on the Tiki God glow red in disapproval at you.</p>
<p>If anyone wants a demo of that, come and talk to me. I would love to get a few more instrumentation hooks into Django to make this stuff easier.</p>
<p>(<em>The Tikibar was eventually open sourced as <a href="https://github.com/eventbrite/tikibar">eventbrite/tikibar</a> on GitHub.</em>)</p>
  </div>
</div>
<div class="slide" id="django-birthday55.jpg">
  <img loading="lazy" src="https://static.simonwillison.net/static/2025/django-birthday/django-birthday55.jpg" alt="“build cool shit”
(thanks, Rob)
" style="max-width: 100%" />
  <div><a style="float: right; text-decoration: none; border-bottom: none; padding-left: 1em;" href="https://simonwillison.net/2025/Jul/13/django-birthday/#django-birthday55.jpg">#</a>
  <p>This has been a whistle-stop tour of the highlights of my career working with Django.</p>
<p>And actually, in putting this presentation together, I realized that really it's that Rob Curley influence from all the way back in 2003. The reason I love Django is it makes it really easy to build cool shit and to ship it. And, you know, swearing aside, I think that's a reasonable moral to take away from this.</p>
  </div>
</div>
<h4 id="colophon">Colophon</h4>
<p>I put this annotated version of my 10 year old talk together using a few different tools.</p>
<p>I fetched the audio from YouTube using <a href="https://github.com/yt-dlp/yt-dlp">yt-dlp</a>:</p>
<pre><code>yt-dlp -x --audio-format mp3 \
  "https://youtube.com/watch?v=wqii_iX0RTs"
</code></pre>
<p>I then ran <a href="https://static.simonwillison.net/static/2025/django-birthday.mp3">the mp3</a> through <a href="https://goodsnooze.gumroad.com/l/macwhisper">MacWhisper</a> to generate an initial transcript. I cleaned that up by <a href="https://claude.ai/share/5fc8a371-7000-4373-afd6-91f1347680cc">pasting it into Claude Opus 4</a> with this prompt:</p>
<blockquote>
<p>Take this audio transcript of a talk and clean it up very slightly - I want paragraph breaks and tiny edits like removing ums or "sort of" or things like that, but other than that the content should be exactly as presented.</p>
</blockquote>
<p>I converted <a href="https://static.simonwillison.net/static/2025/django-birthday.pdf">a PDF of the slides</a> into a JPEG per page using this command (found with the <a href="https://github.com/simonw/llm-cmd">llm-cmd</a> plugin):</p>
<pre><code>pdftoppm -jpeg -jpegopt quality=70 django-birthday.pdf django-birthday
</code></pre>
<p>Then I used my <a href="https://tools.simonwillison.net/annotated-presentations">annotated presentations tool</a> (<a href="https://simonwillison.net/2023/Aug/6/annotated-presentations/">described here</a>) to combine the slides and transcript, making minor edits and adding links using Markdown in that interface.</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/adrian-holovaty">adrian-holovaty</a>, <a href="https://simonwillison.net/tags/devfort">devfort</a>, <a href="https://simonwillison.net/tags/django">django</a>, <a href="https://simonwillison.net/tags/history">history</a>, <a href="https://simonwillison.net/tags/jacob-kaplan-moss">jacob-kaplan-moss</a>, <a href="https://simonwillison.net/tags/lawrence">lawrence</a>, <a href="https://simonwillison.net/tags/lawrence-com">lawrence-com</a>, <a href="https://simonwillison.net/tags/lawrence-journal-world">lawrence-journal-world</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/my-talks">my-talks</a>, <a href="https://simonwillison.net/tags/the-guardian">the-guardian</a>, <a href="https://simonwillison.net/tags/annotated-talks">annotated-talks</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/13/django-birthday/#atom-everything>

---

## Book notes

date: 2025-07-13, updated: 2025-07-13, from: Robin Rendle Essays

 

<br> 

<https://robinrendle.com/notes/book-notes/>

---

**@Robert's feed at BlueSky** (date: 2025-07-13, from: Robert's feed at BlueSky)

Words of wisdom

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3ltuezt6cyc2d>

---

## How o3 and Grok 4 Accidentally Vindicated Neurosymbolic AI

date: 2025-07-13, from: Gary Marcus blog

Neurosymbolic AI is quietly winning. Here&#8217;s what that means &#8211; and why it took so long 

<br> 

<https://garymarcus.substack.com/p/how-o3-and-grok-4-accidentally-vindicated>

---

## Transiting San Diego

date: 2025-07-13, from: Transiting Los Angeles

L.A.'s little sibling of a city has tons for the visitor to enjoy, and quite a bit of it is very transit accessible. In this guide, we cover some highlights you can easily see after a short train ride. 

<br> 

<https://transitinglosangeles.com/2025/07/13/transiting-san-diego/>

---

## 
                A quick look at unprivileged sandboxing
            

date: 2025-07-13, updated: 2025-07-13, from: Uninformative blog

 

<br> 

<https://www.uninformativ.de/blog/postings/2025-07-13/0/POSTING-en.html>

---

## Inequality, Part VII: Crypto

date: 2025-07-13, from: Paul Krugman

A perfect merger of predation and corruption 

<br> 

<https://paulkrugman.substack.com/p/inequality-part-vii-crypto>

