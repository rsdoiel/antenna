---
title: snapshots
updated: 2025-06-03 14:09:41
---

# snapshots

(date: 2025-06-03 14:09:41)

---

**@Robert's feed at BlueSky** (date: 2025-06-03, from: Robert's feed at BlueSky)

I really love this.  We'll put. 👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lqq3rlzyys2e>

---

## 250 Years of Veterans' Struggles

date: 2025-06-03, from: Guy Kawasaki blog

Jamie Rowen, Associate Professor of Legal Studies and Political Science, UMass Amherst. 

<br> 

<https://guykawasaki.substack.com/p/250-years-of-veterans-struggles>

---

**@Dave Winer's linkblog** (date: 2025-06-03, from: Dave Winer's linkblog)

Mike D&#39;Antoni is available. 

<br> 

<https://en.m.wikipedia.org/wiki/Mike_D%27Antoni>

---

## Datasette Public Office Hours: Tools in LLM

date: 2025-06-03, updated: 2025-06-03, from: Simon Willison’s Weblog

<p>We're hosting the sixth in our series of Datasette Public Office Hours livestream sessions this Friday, 6th of June at 2pm PST (here's <a href="http://www.worldtimebuddy.com/event?lid=5391959&amp;h=5391959&amp;sts=29153220&amp;sln=14-15.5&amp;a=show&amp;euid=55524301-3dd4-c954-b5df-239b73f1a7da">that time in your location</a>).</p>
<p>The topic is going to be <strong>tool support in LLM</strong>, as <a href="https://simonwillison.net/2025/May/27/llm-tools/">introduced here</a>.</p>
<p>I'll be walking through the new features, and we're also inviting five minute lightning demos from community members who are doing fun things with the new capabilities. If you'd like to present one of those please get in touch <a href="https://docs.google.com/forms/d/e/1FAIpQLSf4EGqdTWUXII7gBxdvsUbIVR-vECjfssrVni-R3Bzc8ns-bA/viewform?usp=dialog">via this form</a>.</p>
<p><img alt="Datasette Public Office Hours #06 - Tool Support in LLM! Friday June 6th, 2025 @ 2pm PST Hosted in the Datasette Discord https://discord.gg/M4tFcgVFXf" src="https://static.simonwillison.net/static/2025/tool-support.png" /></p>
<p>Here's a link to <a href="https://calendar.google.com/calendar/u/0/r/eventedit?text=Datasette+Public+Office+Hours+%2306&amp;details=Tool+support+in+LLM+-+https://discord.gg/Pb5dRA8RTa?event%3D1379484629672661122&amp;location&amp;dates=20250606T140000/20250606T153000&amp;ctz=America/Los_Angeles">add it to Google Calendar</a>.</p>

    <p>Tags: <a href="https://simonwillison.net/tags/datasette-public-office-hours">datasette-public-office-hours</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/datasette">datasette</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/3/datasette-public-office-hours/#atom-everything>

---

## Tips on prompting ChatGPT for UK technology secretary Peter Kyle

date: 2025-06-03, updated: 2025-06-03, from: Simon Willison’s Weblog

<p>Back in March <a href="https://www.newscientist.com/article/2472068-revealed-how-the-uk-tech-secretary-uses-chatgpt-for-policy-advice/">New Scientist reported on</a> a successful Freedom of Information request they had filed requesting UK Secretary of State for Science, Innovation and Technology <a href="https://en.wikipedia.org/wiki/Peter_Kyle">Peter Kyle's</a> ChatGPT logs:</p>
<blockquote>
<p>New Scientist has obtained records of Kyle’s ChatGPT use under the Freedom of Information (FOI) Act, in what is believed to be a world-first test of whether chatbot interactions are subject to such laws.</p>
</blockquote>
<p>What a fascinating precedent this could set!</p>
<p>They picked out some highlights they thought were particularly newsworthy. Personally I'd have loved to see that raw data to accompany the story.</p>
<h4 id="a-good-example-of-a-poorly-considered-prompt">A good example of a poorly considered prompt</h4>
<p>Among the questions Kyle asked of ChatGPT was this one:</p>
<blockquote>
<p>Why is AI adoption so slow in the UK small and medium business community?</p>
</blockquote>
<p>(I pinged the New Scientist reporter, Chris Stokel-Walker, to confirm the exact wording here.)</p>
<p>This provides an irresistible example of the "jagged frontier" of LLMs in action. LLMs are great at some things, terrible at others and the difference between the two is often not obvious at all.</p>
<p>Experienced prompters will no doubt have the same reaction I did: that's not going to give an accurate response! It's worth digging into why those of us with a firmly developed sense of intuition around LLMs would jump straight to that conclusion.</p>
<p>The problem with this question is that it assumes a level of omniscience that even the very best LLMs do not possess.</p>
<p>At the very best, I would expect this prompt to spit out the approximate average of what had been published on that subject in time to be hoovered up by the training data for the GPT-4o training cutoff <a href="https://platform.openai.com/docs/models/gpt-4o">of September 2023</a>.</p>
<p>(Here's <a href="https://chatgpt.com/share/683f3f94-d51c-8006-aea9-7567d08e2f68">what I got just now</a> running it against GPT-4o.)</p>
<p>This illustrates the first lesson of effective LLM usage: <strong>know your training cutoff dates</strong>. For many queries these are an essential factor in whether or not the LLM is likely to provide you with a useful answer.</p>
<p>Given the pace of change in the AI landscape, an answer based on September 2023 training data is unlikely to offer useful insights into the state of things in 2025.</p>
<p>It's worth noting that there <em>are</em> tools that might do better at this. OpenAI's Deep Research tool for example can run a barrage of searches against the web for recent information, then spend multiple minutes digesting those results, running follow-up searches and crunching that together into an impressive looking report.</p>
<p>(I still wouldn't trust it for a question this broad though: the report format looks more credible than it is, and can suffer from <a href="https://simonwillison.net/2025/Feb/25/deep-research-system-card/">misinformation by omission</a> which is very difficult to spot.)</p>
<p>Deep Research only rolled out in February this year, so it is unlikely to be the tool Peter Kyle was using given likely delays in receiving the requested FOIA data.</p>
<h4 id="what-i-would-do-instead">What I would do instead</h4>
<p>Off the top of my head, here are examples of prompts I would use if I wanted to get ChatGPT's help digging into this particular question:</p>
<ul>
<li>
<strong>Brainstorm potential reasons that UK SMBs might be slow to embrace recent advances in AI</strong>. This would give me a starting point for my own thoughts about the subject, and may highlight some things I hadn't considered that I should look into further.</li>
<li>
<strong>Identify key stakeholders in the UK SMB community who might have insights on this issue</strong>. I wouldn't expect anything comprehensive here, but it might turn up some initial names I could reach out to for interviews or further research.</li>
<li>
<strong>I work in UK Government: which departments should I contact that might have relevant information on this topic</strong>? Given the size and complexity of the UK government even cabinet ministers could be excused from knowing every department.</li>
<li>
<strong>Suggest other approaches I could take to research this issue</strong>. Another brainstorming prompt. I like prompts like this where "right or wrong" doesn't particularly matter. LLMs are electric bicycles for the mind.</li>
<li>
<strong>Use your search tool: find recent credible studies on the subject and identify their authors</strong>. I've been getting some good results from telling LLMs with good search tools - <a href="https://simonwillison.net/2025/Apr/21/ai-assisted-search/#o3-and-o4-mini-are-really-good-at-search">like o3 and o4-mini</a> - to evaluate the "credibility" of sources they find. It's a dumb prompting hack but it appears to work quite well - you can watch their reasoning traces and see how they place more faith in papers from well known publications, or newspapers with strong reputations for fact checking.</li>
</ul>
<h4 id="prompts-that-do-make-sense">Prompts that do make sense</h4>
<p>From the New Scientist article:</p>
<blockquote>
<p>As well as seeking this advice, Kyle asked ChatGPT to define various terms relevant to his department: antimatter, quantum and digital inclusion. Two experts <em>New Scientist</em> spoke to said they were surprised by the quality of the responses when it came to ChatGPT's definitions of quantum. "This is surprisingly good, in my opinion," says <a href="https://profiles.imperial.ac.uk/p.knight">Peter Knight</a> at Imperial College London. "I think it's not bad at all," says <a href="https://researchportal.hw.ac.uk/en/persons/cristian-bonato">Cristian Bonato</a> at Heriot-Watt University in Edinburgh, UK.</p>
</blockquote>
<p>This doesn't surprise me at all. If you ask a good LLM for definitions of terms with strong, well established meanings you're going to get great results almost every time.</p>
<p>My rule of thumb used to be that if a friend who had just read the Wikipedia page on a subject could answer my question then an LLM will be able to answer it too.</p>
<p>As the frontier models have grown stronger I've upgraded that rule of thumb. I now expect a good result for any mainstream-enough topic for which there was widespread consensus prior to that all-important training cutoff date.</p>
<p>Once again, it all comes down to intuition. The only way to get really strong intuition as to what will work with LLMs is to spend a huge amount of time using them, and paying a skeptical eye to everything that they produce.</p>
<p>Treating ChatGPT as an all knowing Oracle for anything outside of a two year stale Wikipedia version of the world's knowledge is almost always a mistake.</p>
<p>Treating it as a brainstorming companion and electric bicycle for the mind is, I think, a much better strategy.</p>
<h4 id="should-the-uk-technology-secretary-be-using-chatgpt-">Should the UK technology secretary be using ChatGPT?</h4>
<p>Some of the reporting I've seen around this story has seemed to suggest that Peter Kyle's use of ChatGPT is embarrassing.</p>
<p>Personally, I think that if the UK's Secretary of State for Science, Innovation and Technology was <em>not</em> exploring this family of technologies it would be a dereliction of duty!</p>
<p>The thing we can't tell from these ChatGPT logs is how dependent he was on these results.</p>
<p>Did he idly throw some questions at ChatGPT out of curiosity to see what came back, then ignore that entirely, engage with his policy team and talk to experts in the field to get a detailed understanding of the issues at hand?</p>
<p>Or did he prompt ChatGPT, take the results as gospel and make policy decisions based on that sloppy interpretation of a two-year stale guess at the state of the world?</p>
<p>Those are the questions I'd like to see answered.</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/politics">politics</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/3/tips-for-peter-kyle/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-06-03, from: Dave Winer's linkblog)

Knicks fire head coach Tom Thibodeau. 

<br> 

<https://sports.yahoo.com/article/knicks-firing-head-coach-tom-184103285.html>

---

## Sky Preview

date: 2025-06-03, from: Michael Tsai

Sky (MacRumors): Introducing Sky for Mac. [&#8230;] Sky floats over whatever you&#8217;re doing so you can: Ask questions from anywhere on your Mac Take action in your apps (send a message, schedule an event, etc) Use your own custom tools by adding prompts, scripts, shortcuts, or MCPs Federico Viticci (Mastodon): For the past two weeks, [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/03/sky-preview/>

---

## Compare Pages Documents in Kaleidoscope

date: 2025-06-03, from: Michael Tsai

Florian Albrecht: Need to compare two versions of a Pages document? We previously provided a solution based on Shortcuts, but recent updates to Pages (version 14.4 at the time of writing) have rendered that workflow unusable. Specifically, the AppleScript command Pages offers to export unformatted text&#8212;an essential part of our shortcut&#8212;no longer produces any text [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/03/compare-pages-documents-in-kaleidoscope/>

---

## Model Context Protocol (MCP) Tools for Mac

date: 2025-06-03, from: Michael Tsai

macOS Automator MCP Server (tweet): This project provides a Model Context Protocol (MCP) server, macos_automator, that allows execution of AppleScript and JavaScript for Automation (JXA) scripts on macOS. It features a knowledge base of pre-defined scripts accessible by ID and supports inline scripts, script files, and argument passing. The knowledge base is loaded lazily on [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/03/model-context-protocol-mcp-tools-for-mac/>

---

## The Automation Gap

date: 2025-06-03, from: Michael Tsai

John Voorhees: Yes, we each share some shortcuts we&#8217;ve built, but there&#8217;s also a healthy dose of third-party automation apps, services, and AI projects sprinkled throughout. I take that as a sign that automation is alive and well on Apple platforms. At the same time, though, it&#8217;s also a symptom of a bigger issue, especially [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/03/the-automation-gap/>

---

## Run Your Own AI

date: 2025-06-03, updated: 2025-06-03, from: Simon Willison’s Weblog

<p><strong><a href="https://anthonylewis.com/2025/06/01/run-your-own-ai/">Run Your Own AI</a></strong></p>
Anthony Lewis published this neat, concise tutorial on using my <a href="https://llm.datasette.io/">LLM</a> tool to run local models on your own machine, using <a href="https://simonwillison.net/2025/Feb/15/llm-mlx/">llm-mlx</a>.</p>
<p>An under-appreciated way to contribute to open source projects is to publish unofficial guides like this one. Always brightens my day when something like this shows up.

    <p><small></small>Via <a href="https://bsky.app/profile/anthonyllewis.bsky.social/post/3lqnypjsrrk2f">@anthonyllewis.bsky.social</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/open-source">open-source</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/mlx">mlx</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/3/run-your-own-ai/#atom-everything>

---

## SHAEF Intelligence Report EW-Pa 128 (AKA the “Red House Report”): Real Plan or Red Herring?

date: 2025-06-03, from: National Archives, Text Message blog

There is no document in the National Archives entitled the “Red House Report.”&#160; There is, however, a SHAEF intelligence report that mentions a late 1944 meeting that took place at the Hotel Rotes Haus [Red House] in Strasbourg, France, that has become known colloquially as the “Red House Report.” On November 7, 1944, the SHAEF &#8230; <a href="https://text-message.blogs.archives.gov/2025/06/03/shaef-intelligence-report-ew-pa-128-aka-the-red-house-report-real-plan-or-red-herring/" class="more-link">Continue reading <span class="screen-reader-text">SHAEF Intelligence Report EW-Pa 128 (AKA the “Red House Report”): Real Plan or Red Herring?</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/06/03/shaef-intelligence-report-ew-pa-128-aka-the-red-house-report-real-plan-or-red-herring/>

---

**@Feed for Alt USDS** (date: 2025-06-03, from: Feed for Alt USDS)

Former Palantir employees condemned the company's involvement in mining and combining data from across the federal govt. We've written about the risks of combining these datasets, and these employees see the risk as well

https://www.npr.org/2025/05/05/nx-s1-5387514/palantir-workers-letter-trump 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lqpkvzsmv22e>

---

## Anbernic RG Slide handheld game console has a 4.7 inch 120 Hz display and slide-out game controller

date: 2025-06-03, from: Liliputing

<p>Handheld game console maker Anbernic has revealed some of the features of the upcoming Anbernic RG Slide. We already knew that this was going to be the company&#8217;s first device with a PSP Go-like design featuring a screen that slides upward to reveal a game controller. Now we know more about that screen&#8230; and a bit [&#8230;]</p>
<p>The post <a href="https://liliputing.com/anbernic-rg-slide-handheld-game-console-has-a-4-7-inch-120-hz-display-and-slide-out-game-controller/">Anbernic RG Slide handheld game console has a 4.7 inch 120 Hz display and slide-out game controller</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/anbernic-rg-slide-handheld-game-console-has-a-4-7-inch-120-hz-display-and-slide-out-game-controller/>

---

## The Egg Yolk Principle: Human Sexuality Will Always Outsmart Prudish Algorithms and Hateful Politicians

date: 2025-06-03, from: 404 Media Group

Anti-porn laws can't stop porn, but they can stop free speech. In the meantime, people will continue to get off to anything and everything. 

<br> 

<https://www.404media.co/egg-yolk-popping-instagram-tiktok-ioda-anti-porn-laws/>

---

## Ukraine's Massive Drone Attack Was Powered by Open Source Software

date: 2025-06-03, from: 404 Media Group

Ukraine used ArduPilot to help it wipe out Russian targets. It wasn’t the first time and it won’t be the last. 

<br> 

<https://www.404media.co/ukraines-massive-drone-attack-was-powered-by-open-source-software/>

---

## The Beecrash State

date: 2025-06-03, updated: 2025-06-03, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/06/03/the-beecrash-state/>

---

## We Are No Longer a Serious Country

date: 2025-06-03, from: Paul Krugman

And the world is starting to notice 

<br> 

<https://paulkrugman.substack.com/p/we-are-no-longer-a-serious-country>

---

## The Entire Earth was Mysteriously Shaking Every 90 Seconds. Now, Scientists Know Why

date: 2025-06-03, from: 404 Media Group

For nine days in September 2023, the world was rocked by an “Unidentified Seismic Object.” 

<br> 

<https://www.404media.co/the-entire-earth-was-mysteriously-shaking-every-90-seconds-now-scientists-know-why/>

---

**@Dave Winer's linkblog** (date: 2025-06-03, from: Dave Winer's linkblog)

I don’t have a vote in the primary for NYC mayor, but if I did I’d vote against the NYT deciding who can represent voters. If they want to govern, run for office. It’s not appropriate for them to campaign for a result, to circumvent due process or usurp the power of the people. 

<br> 

<https://www.nytimes.com/2025/06/03/nyregion/cuomo-resignation-governor.html>

---

**@Dave Winer's linkblog** (date: 2025-06-03, from: Dave Winer's linkblog)

My AI Skeptic Friends Are All Nuts. 

<br> 

<https://fly.io/blog/youre-all-nuts/>

---

## Quoting Benjamin Breen

date: 2025-06-03, updated: 2025-06-03, from: Simon Willison’s Weblog

<blockquote cite="https://resobscura.substack.com/p/ai-makes-the-humanities-more-important"><p>By making effort an optional factor in higher education rather than the whole <em>point</em> of it, LLMs risk producing a generation of students who have simply <em>never experienced</em> the feeling of focused intellectual work. Students who have never faced writer's block are also students who have never experienced the blissful flow state that comes when you break through writer's block. Students who have never searched fruitlessly in a library for hours are also students who, in a fundamental and distressing way, simply don't know what a library is even for.</p></blockquote>
<p class="cite">&mdash; <a href="https://resobscura.substack.com/p/ai-makes-the-humanities-more-important">Benjamin Breen</a>, AI makes the humanities more important, but also a lot weirder</p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/benjamin-breen">benjamin-breen</a>, <a href="https://simonwillison.net/tags/education">education</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/3/benjamin-breen/#atom-everything>

---

## Shisa V2 405B: Japan’s Highest Performing LLM

date: 2025-06-03, updated: 2025-06-03, from: Simon Willison’s Weblog

<p><strong><a href="https://shisa.ai/posts/shisa-v2-405b/">Shisa V2 405B: Japan’s Highest Performing LLM</a></strong></p>
Leonard Lin and Adam Lensenmayer have been working on <a href="https://shisa.ai/">Shisa</a> for a while. They describe their latest release as "Japan's Highest Performing LLM".</p>
<blockquote>
<p>Shisa V2 405B is the highest-performing LLM ever developed in Japan, and surpasses GPT-4 (0603) and GPT-4 Turbo (2024-04-09) in our eval battery. (It also goes toe-to-toe with GPT-4o (2024-11-20) and DeepSeek-V3 (0324) on Japanese MT-Bench!)</p>
</blockquote>
<p>This 405B release is a follow-up to the six smaller Shisa v2 models they released <a href="https://shisa.ai/posts/shisa-v2/">back in April</a>, which took a similar approach <a href="https://simonwillison.net/2025/Jan/20/deepseek-r1/">to DeepSeek-R1</a> in producing different models that each extended different existing base model from Llama, Qwen, Mistral and Phi-4.</p>
<p>The new 405B model uses Llama 3.1 405B Instruct as a base, and is available under the <a href="https://www.llama.com/llama3_1/license/">Llama 3.1 community license</a>.</p>
<p>Shisa is a prominent example of <strong>Sovereign AI</strong> - the ability for nations to build models that reflect their own language and culture:</p>
<blockquote>
<p>We strongly believe that it’s important for homegrown AI to be developed both in Japan (and globally!), and not just for the sake of cultural diversity and linguistic preservation, but also for data privacy and security, geopolitical resilience, and ultimately, independence.</p>
<p>We believe the open-source approach is the only realistic way to achieve sovereignty in AI, not just for Japan, or even for nation states, but for the global community at large.</p>
</blockquote>
<p>The accompanying <a href="https://shisa.ai/posts/shisa-v2-405b/#overview-report">overview report</a> has some fascinating details:</p>
<blockquote>
<p>Training the 405B model was extremely difficult. Only three other groups that we know of: Nous Research, Bllossom, and AI2 have published Llama 405B full fine-tunes. [...] We implemented every optimization at our disposal including: DeepSpeed ZeRO-3 parameter and activation offloading, gradient accumulation, 8-bit paged optimizer, and sequence parallelism. Even so, the 405B model still barely fit within the H100’s memory limits</p>
</blockquote>
<p>In addition to the new model the Shisa team have published <a href="https://huggingface.co/datasets/shisa-ai/shisa-v2-sharegpt/viewer">shisa-ai/shisa-v2-sharegpt</a>, 180,000 records which they describe as "a best-in-class synthetic dataset, freely available for use to improve the Japanese capabilities of any model. Licensed under Apache 2.0".</p>
<p>An interesting note is that they found that since Shisa out-performs GPT-4 at Japanese that model was no longer able to help with evaluation, so they had to upgrade to GPT-4.1:</p>
<p><img alt="Comparison of GPT-4.1 vs GPT-4 as judges showing two radar charts comparing Shisa V2 405B and 70B models on JA MT-Bench benchmarks, with text &quot;Why use GPT-4.1 rather than GPT-4 as a Judge?&quot; and explanation that Shisa models exceed GPT-4 in Japanese performance and GPT-4 cannot accurately distinguish performance differences among stronger models, noting GPT-4.1 applies stricter evaluation criteria for more accurate assessment" src="https://static.simonwillison.net/static/2025/shisa-gpt-4.jpg" />


    <p>Tags: <a href="https://simonwillison.net/tags/translation">translation</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/evals">evals</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llama">llama</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/fine-tuning">fine-tuning</a>, <a href="https://simonwillison.net/tags/leonard-lin">leonard-lin</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/3/shisa-v2/#atom-everything>

---

## Not Universal Enough

date: 2025-06-03, updated: 2025-06-03, from: Tedium site

Microsoft attempts to make the USB-C port live up to its name by trying to force manufacturers to follow a standard. But you know what they say about standards. 

<br> 

<https://feed.tedium.co/link/15204/17043746/usbc-microsoft-standards>

---

**@Feed for Alt USDS** (date: 2025-06-03, from: Feed for Alt USDS)

Completely off topic! Help identify this mystery object that was found on a driveway in MD. 

It appears natural, feels and is hard like wood, but it doesn't make sense to any piece of wood I've handled. 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lqo62w7vvs2m>

---

**@Dave Winer's linkblog** (date: 2025-06-03, from: Dave Winer's linkblog)

Eddie, what do you think of the new double knits? 

<br> 

<https://www.youtube.com/watch?v=uxr9VJ_qKPI>

---

## [ On | No ] syntactic support for error handling

date: 2025-06-03, updated: 2025-06-03, from: Go language blog

Go team plans around error handling support 

<br> 

<https://go.dev/blog/error-syntax>

---

## My AI Skeptic Friends Are All Nuts

date: 2025-06-02, updated: 2025-06-02, from: Simon Willison’s Weblog

<p><strong><a href="https://fly.io/blog/youre-all-nuts/">My AI Skeptic Friends Are All Nuts</a></strong></p>
Thomas Ptacek's frustrated tone throughout this piece perfectly captures how it feels sometimes to be an experienced programmer trying to argue that "LLMs are actually really useful" in many corners of the internet.</p>
<blockquote>
<p>Some of the smartest people I know share a bone-deep belief that AI is a fad — the next iteration of NFT mania. I’ve been reluctant to push back on them, because, well, they’re smarter than me. But their arguments are unserious, and worth confronting. Extraordinarily talented people are doing work that LLMs already do better, out of spite. [...]</p>
<p>You’ve always been responsible for what you merge to <code>main</code>. You were five years go. And you are tomorrow, whether or not you use an LLM. [...]</p>
<p>Reading other people’s code is part of the job. If you can’t metabolize the boring, repetitive code an LLM generates: skills issue! How are you handling the chaos human developers turn out on a deadline?</p>
</blockquote>
<p>And on the threat of AI taking jobs from engineers (with a link to an old comment of mine):</p>
<blockquote>
<p><a href="https://news.ycombinator.com/item?id=43775358#43776612">So does open source.</a> We used to pay good money for databases.</p>
<p>We're a field premised on automating other people's jobs away. "Productivity gains," say the economists. You get what that means, right? Fewer people doing the same stuff. Talked to a travel agent lately? Or a floor broker? Or a record store clerk? Or a darkroom tech?</p>
</blockquote>
<p>The post has already attracted <a href="https://news.ycombinator.com/item?id=44163063">695 comments</a> on Hacker News in just two hours, which feels like some kind of record even by the usual standards of fights about AI on the internet.</p>
<p><strong>Update</strong>: Thomas, another hundred or so comments <a href="https://news.ycombinator.com/item?id=44163063#44165137">later</a>:</p>
<blockquote>
<p>A lot of people are misunderstanding the goal of the post, which is not necessarily to persuade them, but rather to disrupt a static, unproductive equilibrium of uninformed arguments about how this stuff works. The commentary I've read today has to my mind vindicated that premise.</p>
</blockquote>

    <p><small></small>Via <a href="https://bsky.app/profile/sockpuppet.org/post/3lqnoo5irzs2b">@sockpuppet.org</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/thomas-ptacek">thomas-ptacek</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/hacker-news">hacker-news</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/2/my-ai-skeptic-friends-are-all-nuts/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-06-02, from: Dave Winer's linkblog)

NBA summer trade guide: 100 players, split into 11 tiers, who could be dealt during 2025 offseason. 

<br> 

<https://www.cbssports.com/nba/news/ultimate-nba-summer-trade-guide-100-players-split-into-11-tiers-who-could-be-dealt-during-2025-offseason/>

---

## Separate Expressions for +alloc and -init

date: 2025-06-02, from: Michael Tsai

Ronald Oussoren: The following code will crash hard when compiled using ARC: #import &#60;Foundation/Foundation.h&#62; int main(void) { NSOutputStream* stream; stream = [NSOutputStream alloc]; stream = [stream initToMemory]; NSLog(@"%@", stream); } This is split calls to alloc and initToMemory are effectively what happens when using NSOutputStream.alloc().initToMemory() in Python. [&#8230;] This appears to be a genuine bug [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/02/separate-expresions-for-alloc-and-init/>

---

## Apple in China

date: 2025-06-02, from: Michael Tsai

Issie Lapowsky (Amazon, Reddit, John Gruber): But Cook was in Beijing that day to do the opposite: to impress upon President Xi Jinping&#8217;s government that Apple was so committed to China that it planned to spend $275 billion in the country over the next five years. &#8220;I call it a Marshall Plan for China, because [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/02/apple-in-china/>

---

## Sketch Athens

date: 2025-06-02, from: Michael Tsai

Pieter Omvlee: In the latest Sketch we&#8217;re taking an idea from Apple: Naming our releases.At Sketch, we&#8217;re a proudly European company and we&#8217;re naming our releases after European cities from now on.And we&#8217;re starting with Athens. Sketch (tweet): Our first update of 2025 is the largest we&#8217;ve ever shipped. It introduces an all-new layout tool [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/02/sketch-athens/>

---

## The Compassion of the Ernst

date: 2025-06-02, updated: 2025-06-02, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/06/02/the-compassion-of-the-ernst/>

---

**@Dave Winer's linkblog** (date: 2025-06-02, from: Dave Winer's linkblog)

The Billionaire Hoarders: How the Wealthy Became Our Biggest Threat. 

<br> 

<https://newrepublic.com/article/195862/billionaire-hoarders-wealthy-biggest-threat>

---

## Here's the New Pledge of Allegiance I Think We All Should Take

date: 2025-06-02, from: Michael Moore's blog

What if we all took a new pledge? 

<br> 

<https://www.michaelmoore.com/p/heres-the-new-pledge-of-allegiance>

---

## Lilbits: NVIDIA & MediaTek’s chip for gaming laptops, Pixel 10 Pro leaked, and where are all the CAMM2 modules?

date: 2025-06-02, from: Liliputing

<p>Qualcomm currently has the monopoly on ARM-based chips for Windows laptops. But that could change in the future. Earlier this year NVIDIA introduced a GB10 Grace Blackwell &#8220;Superchip&#8221; for AI PCs that features a 20-core ARM processor and NVIDIA graphics. The company worked with MediaTek on that processor, and NVIDIA CEO Jensen Huang hinted that [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-nvidia-mediateks-chip-for-gaming-laptops-pixel-10-pro-leaked-and-where-are-all-the-camm2-modules/">Lilbits: NVIDIA &#038; MediaTek&#8217;s chip for gaming laptops, Pixel 10 Pro leaked, and where are all the CAMM2 modules?</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-nvidia-mediateks-chip-for-gaming-laptops-pixel-10-pro-leaked-and-where-are-all-the-camm2-modules/>

---

**@Robert's feed at BlueSky** (date: 2025-06-02, from: Robert's feed at BlueSky)

Seems true to me 👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lqnjrg6ilc2u>

---

**@Dave Winer's linkblog** (date: 2025-06-02, from: Dave Winer's linkblog)

What if Google Just Broke Itself Up? A Tech Insider Makes the Case. 

<br> 

<https://www.nytimes.com/2025/06/02/technology/google-antitrust-breakup.html?unlocked_article_code=1.L08.kzrV.A6gAlGduuKkt&smid=url-share>

---

## Quoting Kenton Varda

date: 2025-06-02, updated: 2025-06-02, from: Simon Willison’s Weblog

<blockquote cite="https://news.ycombinator.com/item?id=44159166#44160208"><p>It took me a few days to build the library [<a href="https://github.com/cloudflare/workers-oauth-provider">cloudflare/workers-oauth-provider</a>] with AI.</p>
<p>I estimate it would have taken a few weeks, maybe months to write by hand.</p>
<p>That said, this is a pretty ideal use case: implementing a well-known standard on a well-known platform with a clear API spec.</p>
<p>In my attempts to make changes to the Workers Runtime itself using AI, I've generally not felt like it saved much time. Though, people who don't know the codebase as well as I do have reported it helped them a lot.</p>
<p>I have found AI incredibly useful when I jump into <em>other people's</em> complex codebases, that I'm not familiar with. I now feel like I'm comfortable doing that, since AI can help me find my way around very quickly, whereas previously I generally shied away from jumping in and would instead try to get someone on the team to make whatever change I needed.</p></blockquote>
<p class="cite">&mdash; <a href="https://news.ycombinator.com/item?id=44159166#44160208">Kenton Varda</a>, in a Hacker News comment</p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/cloudflare">cloudflare</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/kenton-varda">kenton-varda</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/2/kenton-varda/#atom-everything>

---

## Directive prologues and JavaScript dark matter

date: 2025-06-02, updated: 2025-06-02, from: Simon Willison’s Weblog

<p><strong><a href="https://macwright.com/2025/04/29/directive-prologues-and-javascript-dark-matter">Directive prologues and JavaScript dark matter</a></strong></p>
Tom MacWright does some archaeology and describes the three different magic comment formats that can affect how JavaScript/TypeScript files are processed:</p>
<p><code>"a directive";</code> is a <a href="https://262.ecma-international.org/5.1/#sec-14.1">directive prologue</a>, most commonly seen with <code>"use strict";</code>.</p>
<p><code>/** @aPragma */</code> is a pragma for a transpiler, often used for <code>/** @jsx h */</code>.</p>
<p><code>//# aMagicComment</code> is usually used for source maps - <code>//# sourceMappingURL=&lt;url&gt;</code> - but also just got used by v8 for their new <a href="https://v8.dev/blog/explicit-compile-hints">explicit compile hints</a> feature.

    <p><small></small>Via <a href="https://blog.jim-nielsen.com/2025/is-it-javascript/">Jim Nielsen</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/typescript">typescript</a>, <a href="https://simonwillison.net/tags/tom-macwright">tom-macwright</a>, <a href="https://simonwillison.net/tags/javascript">javascript</a>, <a href="https://simonwillison.net/tags/v8">v8</a>, <a href="https://simonwillison.net/tags/programming-languages">programming-languages</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/2/directive-prologues-and-javascript-dark-matter/#atom-everything>

---

## Liberux NEXX Linux phone with RK3588S and 32GB RAM hits Indiegogo

date: 2025-06-02, from: Liliputing

<p>Over the past few years a number of companies including Pine64 and Purism have released smartphones designed to run mobile operating systems based on a mainline Linux kernel. But the Liberux NEXX is a work-in-progress Linux phone that could be the most powerful to date&#8230; if it actually makes it to mass production. First introduced [&#8230;]</p>
<p>The post <a href="https://liliputing.com/liberux-nexx-linux-phone-with-rk3588s-and-32gb-ram-hits-indiegogo/">Liberux NEXX Linux phone with RK3588S and 32GB RAM hits Indiegogo</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/liberux-nexx-linux-phone-with-rk3588s-and-32gb-ram-hits-indiegogo/>

---

**@Feed for Alt USDS** (date: 2025-06-02, from: Feed for Alt USDS)

We’re proud to be included in @thepersistnetwork.bsky.social's "Everyday Fighters for Democracy" starter pack! It means a lot to stand alongside so many who are working every day to build something better.

Follow along, and keep showing up - for each other, and for democracy.

🧱 go.bsky.app/5df7ULY

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lqnev3siws2b>

---

## claude-trace

date: 2025-06-02, updated: 2025-06-02, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/badlogic/lemmy/tree/main/apps/claude-trace">claude-trace</a></strong></p>
I've been thinking for a while it would be interesting to run some kind of HTTP proxy against the Claude Code CLI app and take a peek at how it works.</p>
<p>Mario Zechner just published a really nice version of that. It works by monkey-patching <a href="https://github.com/badlogic/lemmy/blob/a19ef3b472701559df4f9d70766b97f5ed876535/apps/claude-trace/src/interceptor.ts#L152-L240">global.fetch</a> and the <a href="https://github.com/badlogic/lemmy/blob/a19ef3b472701559df4f9d70766b97f5ed876535/apps/claude-trace/src/interceptor.ts#L242-L286">Node HTTP library</a> and then running Claude Code <a href="https://github.com/badlogic/lemmy/blob/a19ef3b472701559df4f9d70766b97f5ed876535/apps/claude-trace/src/cli.ts#L136-L153">using Node</a> with an extra <code>--require interceptor-loader.js</code> option to inject the patches.</p>
<p>Provided you have Claude Code installed and configured already, an easy way to run it is via npx like this:</p>
<pre><code>npx @mariozechner/claude-trace --include-all-requests
</code></pre>
<p>I tried it just now and it logs request/response pairs to a <code>.claude-trace</code> folder, as both <code>jsonl</code> files and HTML.</p>
<p>The HTML interface is <em>really nice</em>. Here's <a href="https://static.simonwillison.net/static/2025/log-2025-06-02-17-10-25.html">an example trace</a> - I started everything running in my <a href="https://github.com/simonw/llm">llm checkout</a> and asked Claude to "tell me about this software" and then "Use your agent tool to figure out where the code for storing API keys lives".</p>
<p><img alt="Web-based debug log interface showing a conversation trace where USER asks &quot;Use your agent tool to figure out where the code for storing API keys lives&quot;, followed by ASSISTANT invoking dispatch_agent with a search prompt, then a Tool Result showing partial text about API key management functionality locations, and a Raw Tool Call section displaying the full JSON request with tool_use details including id, name, input prompt, and cache_control settings. The assistant concludes that key functionality is in cli.py with keys stored securely in keys.json in the user directory, manageable via commands like llm keys set openai and llm keys list." src="https://static.simonwillison.net/static/2025/claude-code-trace.jpg" /></p>
<p>I specifically requested the "agent" tool here because I noticed in the tool definitions a tool called <strong>dispatch_agent</strong> with this tool definition (emphasis mine):</p>
<blockquote>
<p>Launch a new agent that has access to the following tools: GlobTool, GrepTool, LS, View, ReadNotebook. When you are searching for a keyword or file and are not confident that you will find the right match on the first try, <strong>use the Agent tool to perform the search for you</strong>. For example:</p>
<ul>
<li>If you are searching for a keyword like "config" or "logger", the Agent tool is appropriate</li>
<li>If you want to read a specific file path, use the View or GlobTool tool instead of the Agent tool, to find the match more quickly</li>
<li>If you are searching for a specific class definition like "class Foo", use the GlobTool tool instead, to find the match more quickly</li>
</ul>
<p>Usage notes:</p>
<ol>
<li><strong>Launch multiple agents concurrently whenever possible</strong>, to maximize performance; to do that, use a single message with multiple tool uses</li>
<li>When the agent is done, it will return a single message back to you. The result returned by the agent is not visible to the user. To show the user the result, you should send a text message back to the user with a concise summary of the result.</li>
<li><strong>Each agent invocation is stateless. You will not be able to send additional messages to the agent, nor will the agent be able to communicate with you outside of its final report</strong>. Therefore, your prompt should contain a highly detailed task description for the agent to perform autonomously and you should specify exactly what information the agent should return back to you in its final and only message to you.</li>
<li><strong>The agent's outputs should generally be trusted</strong></li>
<li>IMPORTANT: The agent can not use Bash, Replace, Edit, NotebookEditCell, so can not modify files. If you want to use these tools, use them directly instead of going through the agent.</li>
</ol>
</blockquote>
<p>I'd heard that Claude Code uses the LLMs-calling-other-LLMs pattern - one of the reason it can burn through tokens so fast! It was interesting to see how this works under the hood - it's a tool call which is designed to be used concurrently (by triggering multiple tool uses at once).</p>
<p>Anthropic have deliberately chosen not to publish any of the prompts used by Claude Code. As with <a href="https://simonwillison.net/2025/May/25/claude-4-system-prompt/#the-missing-prompts-for-tools">other hidden system prompts</a>, the prompts themselves mainly act as a missing manual for understanding exactly what these tools can do for you and how they work.

    <p><small></small>Via <a href="https://twitter.com/badlogicgames/status/1929312803799576757">@badlogicgames</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/2/claude-trace/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-06-02, from: Dave Winer's linkblog)

Meta claims its AI chatbot just crossed a billion monthly active users (MAUs), while Google’s Gemini recently hit 400 million MAUs. They’re both trying to edge out ChatGPT, which now has roughly 600 million MAUs and has dominated the consumer space since it launched in 2022. 

<br> 

<https://techcrunch.com/2025/06/02/how-ai-chatbots-keep-you-chatting/>

---

## New COVID Vaccine Rules Target Seniors

date: 2025-06-02, from: Guy Kawasaki blog

Libby Richards, Professor of Nursing, Purdue University. 

<br> 

<https://guykawasaki.substack.com/p/new-covid-vaccine-rules-target-seniors>

---

## Icepi Zero is an open source FPGA board in a Raspberry Pi Zero-sized form factor

date: 2025-06-02, from: Liliputing

<p>Nearly a decade ago, Raspberry Pi showed that it&#8217;s possible to cram a fully functional computer into a tiny package that&#8217;s about the size of a stick of chewing gum or about the size of a USB flash drive. In time since the first Raspberry Pi Zero launched we&#8217;ve seen a bunch of updates as [&#8230;]</p>
<p>The post <a href="https://liliputing.com/icepi-zero-is-an-open-source-fpga-board-in-a-raspberry-pi-zero-sized-form-factor/">Icepi Zero is an open source FPGA board in a Raspberry Pi Zero-sized form factor</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/icepi-zero-is-an-open-source-fpga-board-in-a-raspberry-pi-zero-sized-form-factor/>

---

## Raspberry Pi 5 ‘Pepper Pi’ transparent computer illusion

date: 2025-06-02, from: Raspberry Pi News (.com)

<p>Raspberry Pi fans with multiple models will relate to the rationale behind the origins of the transparent computer.</p>
<p>The post <a href="https://www.raspberrypi.com/news/raspberry-pi-5-pepper-pi-transparent-computer-illusion/">Raspberry Pi 5 &#8216;Pepper Pi&#8217; transparent computer illusion</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/raspberry-pi-5-pepper-pi-transparent-computer-illusion/>

---

## Teachers Are Not OK

date: 2025-06-02, from: 404 Media Group

AI, ChatGPT, and LLMs "have absolutely blown up what I try to accomplish with my teaching." 

<br> 

<https://www.404media.co/teachers-are-not-ok-ai-chatgpt/>

---

**@Dave Winer's linkblog** (date: 2025-06-02, from: Dave Winer's linkblog)

2003: The New York Times, always controversial, says it&#39;s their policy not to link, that their pub is self-contained and complete. 

<br> 

<http://scripting.com/scripting/manila/bloggerCon/ruleoflinks.html>

---

**@Dave Winer's linkblog** (date: 2025-06-02, from: Dave Winer's linkblog)

Scripting News: Suggestion to WordPress devs. I make the case for doing generally what we did in the Baseline theme with the og:image element, using Doc Searls&#39; blog as an example. 

<br> 

<http://scripting.com/2025/06/02/131444.html>

---

## Pro-AI Subreddit Bans 'Uptick' of Users Who Suffer from AI Delusions

date: 2025-06-02, from: 404 Media Group

“AI is rizzing them up in a very unhealthy way at the moment.” 

<br> 

<https://www.404media.co/pro-ai-subreddit-bans-uptick-of-users-who-suffer-from-ai-delusions/>

---

**@Dave Winer's linkblog** (date: 2025-06-02, from: Dave Winer's linkblog)

Doc Searls on the end of the Knicks season. He was surprised. 

<br> 

<https://doc.searls.com/2025/06/01/weekendings/>

---

## The Orb / Tools for humanity / Worldcoin in 5 min

date: 2025-06-02, from: reb00ted blog (Johannes Ernst, sustainabilty done fairly)

<div class="slide-in-img slide-in-img-right">
 <a href="https://time.com/7288387/sam-altman-orb-tools-for-humanity/">
  <img src="https://reb00ted.org/images/posts/20250602/world-human-ai-altman-02.webp" alt="">
 </a>
</div>
<p>&ldquo;The Orb&rdquo; is popping up in all sorts of places, most recently in
<a href="https://time.com/7288387/sam-altman-orb-tools-for-humanity/">Time magazine&rsquo;s &ldquo;The Orb Will See You Now&rdquo;</a>.
It&rsquo;s being heralded as everything from the one and final solution for privacy-protecting
digital identity online, to a civil liberties nightmare, to an indispensable tool for
preventing an AI takeover, to a quick way to make $42, and more.</p>
<p>But what it actually does and how it works is remarkably hard to find out. In a
<a href="https://open.spotify.com/episode/27n5EhUUFnDkxKn0MXm6aB?si=82gAJ1BGTN-ZPg13LMeNOQ&amp;nd=1&amp;dlsi=f2f457f1ac6943bd">recent podcast</a>,
the team behind the project took more than two hours to explain it, and that was only the highlights
with no detail. No wonder theories are all over the place.</p>
<p>I listened to that podcast, and I think I can explain it in 5 min. Read on, and we&rsquo;ll start
at the place where the value occurs: the Relying Party.</p>
<p>&ldquo;Relying Party&rdquo; is a geek term for a website or app into which you want to log in. So:
all the value of the Orb and the app and networks and all of that is because users can
log into websites or apps with this system (which doesn&rsquo;t even have a good name. It&rsquo;s not
the Orb, which in the grand scheme of things is not important. It&rsquo;s not the World Coin.
Maybe it&rsquo;s the <a href="https://en.wikipedia.org/wiki/World_(blockchain)">World Network</a>, but
that name is so bland to be almost useless. I&rsquo;m going to call it WN for this post.)</p>
<p>So you can log into a website or app with WN. That feature is of course not unique. You can log into
websites or apps with other things, like usernames and passwords, or your Google or Facebook
account or <a href="https://openid.org/">OpenID</a>. But unlike other ways of logging in, if you
log into a website or app with WN, the website or app is being guaranteed by all the tech
that WN throws at it that a user who already has an account on the website or app they
want to log in, cannot make a second account for the same website or app.</p>
<p>Have multiple Reddit accounts? Multiple Gmail addresses? Or multiple Amazon accounts?
If those sites were to implement WN, you could not do that. Instead, those sites could be
fairly certain that any new account created on their site was 1) created by a human and
2) each account was created by a different human. (Actually, the site can let you create
multiple accounts, but only if it knows that all of them belong to you. You cannot
create separate accounts pretending to be two distinct humans. So I lied, you could have
multiple Reddit accounts, but you could not hide that fact from Reddit.)</p>
<p>I don&rsquo;t want to talk about here why this may be a good or a bad idea. Only how this is done.</p>
<p>Secondly, if you log into two separate sites with WN, the two sites cannot compare notes and track you
from one site to the other. Unlike with, say, logging in by e-mail address, the two sites
cannot simply compare the e-mail addresses you gave them, and say, Oh, it&rsquo;s the same Joe!
Let&rsquo;s show him underware ads on this site too, because he browsed underwear on the first site.
That is impossible because he two sites are being given different identifiers.
(Those seem to be public keys, so there is a different key pair per site.) This is nice
from a privacy perspective, similar to what Kim Cameron popularized twenty years ago with
<a href="https://www.identityblog.com/stories/2005/05/13/TheLawsOfIdentity.pdf">directed identity</a>.</p>
<p>The site-specific key pairs are being generated from the single most important piece of data
in the system, which is your master public key, stored on a blockchain. This public
blockchain acts as a registry for all the identities in the system, i.e. for all humans
registered with WN &ndash; but before your freak out, it&rsquo;s not as
bad as it sounds, because all that the blockchain stores is a public key. There is no
other information on that blockchain or elsewhere associated with that key, such
as your name or blood type. It&rsquo;s just a long basically random number.</p>
<p>So: the blockchain lists all the public keys of the people whose identity can be asserted
by WN, and the technical machinery can derive relying-party-specific keypairs from any
of those so that the relying party can be certain the user has been verified, but cannot
tell which of the public key on the block chain, or which other keys used with other sites
belong to the same user.</p>
<p>How does the key get onto that block chain? It appears there is a small set of trusted
actors that have the credentials to put keys onto that blockchain, and that small set of
trusted actors are the Orb stations WN has been setting up all over the world to get people
registered. The actual keys being registered are generated on your mobile device, and
only the public key is given to the system, the private one remains on your device only.</p>
<p>So the Orb only exists to make a decision whether or not a public key you&rsquo;ve created on
your mobile device may or may not be added to the registry of verified identities on
that blockchain. That&rsquo;s all. The key decision the Orb (and all of its Orb siblings in
other locations) need to make is: have any of us registered that human before? If yes, do
not add their new key to the blockchain. If no, let&rsquo;s add it.</p>
<p>To determine whether or not WN has registered you before, the Orb (really just a fancy
camera) takes a picture of your retina, figures out its unique characterics, breaks them
into a gazillion data shards (which are entirely useless until you have brought all of
them together &ndash; modern cryptography is often counter-intuitive) and distributes them
so that it is hard to bring it back together. When somebody attempts to register again,
the new attempted registration does the same thing, but the system rejects it (using some
fancy multi-party computation distributed over 3 universities) because
the previous shards are there already.</p>
<p>That&rsquo;s it. (Plus a few add-on&rsquo;s they have been building. Like verifying, using your
smartphone&rsquo;s camera, that it is indeed you operating the device when you are attempting
to log into a site or app, so you can&rsquo;t simply hand your public key to another person
who otherwise could amass or buy thousands of other people&rsquo;s identities and effectively
create thousands of accounts on the same site, all under their control. Or the crypto
currency that the relying party has to pay in order to get WN to verify an authentication
attempt &ndash; that pays the sign-up bonus from for new users, plus for the operation of
the network.)</p>
<p>My impression:</p>
<p>Lots of tech and smarts. I have not looked at the algorithms, but I can
believe that this system can be made to work more or less as described. It has a clearly
unique value proposition compared to the many other authentication / identity systems that
are found in the wild.</p>
<p>My major remaining questions:</p>
<ul>
<li>
<p>How does this system fail, and how would it be fixed if/when it does? You can be
100% certain of attacks, and 100% certain of very sophisticated attacks if they get
substantial uptake. I have no good intuition about this, and I haven&rsquo;t seen any
substantive discussion about that either. (That would probably take a lot more than
a two-hour podcast.) Given that one of their stated goal is that in the longer term
no organization, including themselves, can take over the system, how would a rapid
fix for a vulnerability even work?</p>
</li>
<li>
<p>And of course: will anybody adopt it? Tech history is full of failed novel authentication
systems &ndash; the above quoted Kim&rsquo;s CardSpace, in spite of being shipped with every
copy of Windows, being a notable example. And there I have my doubts. As it is famously
said, whatever your authentication or identity scheme, the first thing that a relying
party asks for when implementing any of them is your e-mail address. If they continue
to do that, the whole system would be largely pointless. But maybe there are some niche
applications where this is different, I just haven&rsquo;t seen many of them.</p>
</li>
</ul>
<p>P.S. I&rsquo;m sure I got some details wrong. Please correct me if you know better.</p> 

<br> 

<https://reb00ted.org/tech/20250602-orb-tools-for-humanity-in-5-min/>

---

**@Dave Winer's linkblog** (date: 2025-06-02, from: Dave Winer's linkblog)

How the Republican &quot;Big Beautiful Bill&quot; will impact health care for New Yorkers, by congressional district. 

<br> 

<https://sharegisny.maps.arcgis.com/apps/dashboards/03f4a73b91df459d9089e1603b9dc7eb>

---

**@Dave Winer's linkblog** (date: 2025-06-02, from: Dave Winer's linkblog)

pico-mac-nano is a glorious tiny replica of the original Macintosh. 

<br> 

<https://9to5mac.com/2025/06/01/pico-mac-nano-tiny-original-macintosh-replica/>

---

## Hating New York

date: 2025-06-02, from: Paul Krugman

What we can learn from a MAGA obsession 

<br> 

<https://paulkrugman.substack.com/p/hating-new-york>

---

## Flatpak is not perfect, but it's getting better

date: 2025-06-02, from: Libre News

Flatpak is stable and widely used, but it still has some pain points when used in certain environments or for certain ends. However, most of those drawbacks are being worked on, and fixes are planned. 

<br> 

<https://thelibre.news/flatpak-is-not-perfect-but-its-getting-better/>

---

**@Dave Winer's linkblog** (date: 2025-06-02, from: Dave Winer's linkblog)

The Death of Empathy in American Governance. 

<br> 

<https://www.meidasplus.com/p/the-death-of-empathy-in-american>

---

## Eating wild animals might be sustainable for the few, but not for the many

date: 2025-06-02, from: Hannah Richie at Substack

Some back-of-the-envelope calculations on how many it could feed. 

<br> 

<https://www.sustainabilitybynumbers.com/p/wild-mammals-vs-meat>

---

## Quoting u/xfnk24001

date: 2025-06-02, updated: 2025-06-02, from: Simon Willison’s Weblog

<blockquote cite="https://www.reddit.com/r/ChatGPT/comments/1kzzyb2/professor_at_the_end_of_2_years_of_struggling/"><p>My constant struggle is how to convince them that getting an education in the humanities is not about regurgitating ideas/knowledge that already exist. It’s about generating new knowledge, striving for creative insights, and having thoughts that haven’t been had before. I don’t want you to learn facts. I want you to think. To notice. To question. To reconsider. To challenge. Students don’t yet get that ChatGPT only rearranges preexisting ideas, whether they are accurate or not.</p>
<p>And even if the information was guaranteed to be accurate, they’re not learning anything by plugging a prompt in and turning in the resulting paper. They’ve bypassed the entire process of learning.</p></blockquote>
<p class="cite">&mdash; <a href="https://www.reddit.com/r/ChatGPT/comments/1kzzyb2/professor_at_the_end_of_2_years_of_struggling/">u/xfnk24001</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/education">education</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/2/uxfnk24001/#atom-everything>

---

## Season Two, OUT NOW.

date: 2025-06-02, from: Playdate Blog

<p>Season Two is a bundle of unique and wonderful games, delivered to your Playdate each week. <a href="https://play.date/games/seasons/two"><strong>And it&rsquo;s available starting now.</strong></a></p> 

<br> 

<https://news.play.date/news/s2-out-now/>

---

**@Feed for Alt USDS** (date: 2025-06-02, from: Feed for Alt USDS)

We stand with the LGBTQ+ community this month and every month. Pride is about joy, visibility, justice, and action.

We believe a better government means one that protects, uplifts, and celebrates everyone, exactly as they are. That’s the future we’re committed to building, together. Happy Pride! 🏳️‍🌈 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lqllqw7xqs2t>

---

## Episode 158 - INTERCAL RIDES AGAIN - Restoring a Lost Compiler

date: 2025-06-01, from: Advent of Computing

<p>In 1973 the world caught it's first glimpse of INTERCAL. It's a wild and wacky language, somewhere between comedy and cutting satire. But the compiler was never circulated. There would be later implementations, but that original compiler remained lost to time. That is, until now. This episode covers how the original source code was found, and my attempt to get it up and running.</p> <p>Get the source code for INTERCAL72 here: <a href= "https://github.com/rottytooth/INTERCAL72/">https://github.com/rottytooth/INTERCAL72/</a></p> <p>Read the original INTERCAL manual: <a href= "https://3e8.org/pub/intercal.pdf">https://3e8.org/pub/intercal.pdf</a></p> 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://traffic.libsyn.com/secure/adventofcomputing/ep158_intercal_2.mp3?dest-id=1206722"></source>
</audio> <a href="https://traffic.libsyn.com/secure/adventofcomputing/ep158_intercal_2.mp3?dest-id=1206722" target="_blank">download audio/mpeg</a><br> 

<https://adventofcomputing.libsyn.com/episode-158-intercal-rides-again-restoring-a-lost-compiler>

---

## 570. Hannibal: The Invasion of Italy (Part 3)

date: 2025-06-01, from: This is history podcast

<p>How did Hannibal achieve the remarkable feat of crossing the Alps with his army, and elephants? How many of his men survived the treacherous journey? Was it worth sacrificing so much of his army in order to fight the Romans in Italy? And, what unfolded during the first great clash between Hannibal and Rome, at [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/570-hannibal-the-invasion-of-italy-part-3/">570. Hannibal: The Invasion of Italy (Part 3)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/570-hannibal-the-invasion-of-italy-part-3/>

---

## The recent history of AI in 32 otters

date: 2025-06-01, from: One Useful Thing

Three years of progress as shown by marine mammals 

<br> 

<https://www.oneusefulthing.org/p/the-recent-history-of-ai-in-32-otters>

---

**@Dave Winer's linkblog** (date: 2025-06-01, from: Dave Winer's linkblog)

Ukraine&#39;s audacious drone attack sends critical message to Russia - and the West. 

<br> 

<https://www.bbc.com/news/articles/c0r1jv0rn0ko>

---

**@Dave Winer's linkblog** (date: 2025-06-01, from: Dave Winer's linkblog)

Knicks trade ideas. All are interesting to discuss except KD. He played voodoo with the Knicks. Bad luck. Keep him far away from NY. 

<br> 

<https://sports.yahoo.com/nba/article/knicks-trade-ideas-giannis-kd-a-mavs-deal-3-moves-that-can-get-new-york-over-the-top-190720651.html>

---

**@Dave Winer's linkblog** (date: 2025-06-01, from: Dave Winer's linkblog)

Ukraine launches major drone attack on Russian bombers. 

<br> 

<https://www.theguardian.com/world/2025/jun/01/ukraine-launches-major-drone-attack-on-russian-bombers-security-official-says>

---

## MINIX introduces two AMD Strix Point mini PCs: ER936-AI and ER937-AI

date: 2025-06-01, from: Liliputing

<p>MINIX has been selling mini PCs and Android TV boxes for more than a decade &#8211; they first showed up  on my radar as one of the first companies making Android-powered TV sticks. More recently, the company has made some distinctive fanless mini PCs with Intel Alder Lake chips. But MINIX also showed off some [&#8230;]</p>
<p>The post <a href="https://liliputing.com/minix-introduces-two-amd-strix-point-mini-pcs-er936-ai-and-er937-ai/">MINIX introduces two AMD Strix Point mini PCs: ER936-AI and ER937-AI</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/minix-introduces-two-amd-strix-point-mini-pcs-er936-ai-and-er937-ai/>

---

## What I’ve been reading

date: 2025-06-01, from: Enlightenment Economics

A bit of a catch-up. Last weekend we went to the Hay Festival and heard Rebecca Solnit in conversation with James Rebanks. So I read her latest book of essays, No Straight Road Takes You There. I think it&#8217;s one &#8230; <a href="http://www.enlightenmenteconomics.com/blog/index.php/2025/06/what-ive-been-reading/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<http://www.enlightenmenteconomics.com/blog/index.php/2025/06/what-ive-been-reading/>

---

## The Curious About Everything Newsletter #51

date: 2025-06-01, from: Curious about everything blog

The many interesting things I read in May 2025 

<br> 

<https://jodiettenberg.substack.com/p/fifty-one>

---

## Es nuestro momento de luchar por la promesa de la democracia

date: 2025-06-01, from: Our Future.org

Ahora nos toca a nostoros luchar para defender y ampliar los derechos que los valientes de otros tiempos lucharon para ganar. Nada me llena más el corazón que cuando veo a la gente común alzar la voz por los que quieren. Eso es lo que hicieron nuestros miembros la semana pasada en Washington, D.C., cuando [&#8230;]
<p><a href="https://ourfuture.org/20250601/es-nuestro-momento-de-luchar-por-la-promesa-de-la-democracia" rel="nofollow">Source</a></p> 

<br> 

<https://ourfuture.org/20250601/es-nuestro-momento-de-luchar-por-la-promesa-de-la-democracia>

---

## It Is Our Time to Fight for Democracy's Promise

date: 2025-06-01, from: Our Future.org

Because courageous ones before us laid a path, we now have rights. It is now our turn to fight to defend and expand them. Nothing fills my heart more than when ordinary people speak up for the ones they love. That’s what our members just did last week in Washington, D.C., when thousands came from [&#8230;]
<p><a href="https://ourfuture.org/20250601/it-is-our-time-to-fight-for-democracys-promise" rel="nofollow">Source</a></p> 

<br> 

<https://ourfuture.org/20250601/it-is-our-time-to-fight-for-democracys-promise>

---

## Understanding Inequality, Part I

date: 2025-06-01, from: Paul Krugman

Why did the rich pull away from the rest? 

<br> 

<https://paulkrugman.substack.com/p/understanding-inequality-part-i>

---

## May 2025 on GitHub

date: 2025-06-01, updated: 2025-06-01, from: Simon Willison’s Weblog

<p>OK, May was a busy month for <a href="https://github.com/simonw">coding on GitHub</a>. I blame <a href="https://simonwillison.net/2025/May/27/llm-tools/">tool support</a>!</p>
<p><img alt="GitHub contribution graph showing May 2025 activity with repository commit statistics. May 2025 Created 405 commits in 47 repositories simonw/llm 149 commits simonw/llm-gemini 20 commits simonw/sqlite-chronicle 15 commits simonw/building-with-llms-pycon-2025 14 commits simonw/tools 14 commits simonw/llm-echo 13 commits simonw/llm-anthropic 13 commits simonw/llm-fragments-github 11 commits simonw/llm-mistral 10 commits datasette/stashed-readmes 10 commits simonw/llm-tools-quickjs 9 commits taketwo/llm-ollama 8 commits simonw/sqlite-utils 7 commits simonw/til 7 commits simonw/datasette.io 6 commits simonw/llm-video-frames 6 commits simonw/llm-tools-datasette 6 commits simonw/llm-tools-sqlite 6 commits simonw/simonwillisonblog 6 commits mpacollaborative/mpacollaborative.org 5 commits simonw/llm-prices 5 commits datasette/datasette-chronicle 5 commits simonw/sqlite-diffable 5 commits simonw/llm-llama-server 5 commits simonw/llm-plugin-tools 5 commits 22 repositories not shown Created 15 repositories" src="https://static.simonwillison.net/static/2025/may-github.jpg" /></p>

    <p>Tags: <a href="https://simonwillison.net/tags/github">github</a>, <a href="https://simonwillison.net/tags/llm">llm</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/1/may-on-github/#atom-everything>

---

## Progressive JSON

date: 2025-06-01, updated: 2025-06-01, from: Simon Willison’s Weblog

<p><strong><a href="https://overreacted.io/progressive-json/">Progressive JSON</a></strong></p>
This post by Dan Abramov is a trap! It proposes a fascinating way of streaming JSON objects to a client in a way that provides the shape of the JSON before the stream has completed, then fills in the gaps as more data arrives... and then turns out to be a sneaky tutorial in how React Server Components work.</p>
<p>Ignoring the sneakiness, the imaginary streaming JSON format it describes is a fascinating thought exercise:</p>
<pre><code>{
  header: "$1",
  post: "$2",
  footer: "$3"
}
/* $1 */
"Welcome to my blog"
/* $3 */
"Hope you like it"
/* $2 */
{
  content: "$4",
  comments: "$5"
}
/* $4 */
"This is my article"
/* $5 */
["$6", "$7", "$8"]
/* $6 */
"This is the first comment"
/* $7 */
"This is the second comment"
/* $8 */
"This is the third comment"
</code></pre>
<p>After each block the full JSON document so far can be constructed, and Dan suggests interleaving <code>Promise()</code> objects along the way for placeholders that have not yet been fully resolved - so after receipt of block <code>$3</code> above (note that the blocks can be served out of order) the document would look like this:</p>
<pre><code>{
  header: "Welcome to my blog",
  post: new Promise(/* ... not yet resolved ... */),
  footer: "Hope you like it"
}
</code></pre>
<p>I'm tucking this idea away in case I ever get a chance to try it out in the future.


    <p>Tags: <a href="https://simonwillison.net/tags/json">json</a>, <a href="https://simonwillison.net/tags/react">react</a>, <a href="https://simonwillison.net/tags/javascript">javascript</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/1/progressive-json/#atom-everything>

---

## Plus Post: Sony SMC-777C

date: 2025-06-01, from: Computer ads from the Past

One person, Eight languages. The 8bit. 

<br> 

<https://computeradsfromthepast.substack.com/p/plus-post-sony-smc-777c>

---

## New Verse, New Story

date: 2025-06-01, updated: 2025-06-01, from: Tedium site

There was a certain type of song that seemed to keep cropping up in the mid-’90s. Here’s my attempt to figure out why that was. 

<br> 

<https://feed.tedium.co/link/15204/17042389/90s-music-self-contained-verse-history>

---

**@Dave Winer's linkblog** (date: 2025-06-01, from: Dave Winer's linkblog)

Telegram announces partnership with Musk&#39;s xAI. 

<br> 

<https://www.bbc.com/news/articles/cdxvr3n7wlxo>

---

## Apply for funding before August 1st 2025

date: 2025-06-01, updated: 2025-06-01, from: nlnet feed

 

<br> 

<https://nlnet.nl/news/2025/20250601-call.html>

---

## Using Ray-Ban Meta Glasses

date: 2025-06-01, updated: 2025-06-01, from: Tink's blog

 

<br> 

<https://tink.uk/using-ray-ban-meta-glasses/>

