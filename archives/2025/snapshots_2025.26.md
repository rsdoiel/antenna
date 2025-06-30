---
title: snapshots
updated: 2025-06-30 06:08:11
---

# snapshots

(date: 2025-06-30 06:08:11)

---

## Gone Fishin': 404 Media Summer Break 2025

date: 2025-06-30, from: 404 Media Group

404 Media is closed this week. School's out. 

<br> 

<https://www.404media.co/introducing-404-media-summer-break-2025/>

---

## The Author-Library Alliance: Supporting Fair eBook Legislation Together

date: 2025-06-30, from: Authors Union blogs

In May 2025, Connecticut’s legislature passed landmark legislation to address restrictive ebook licensing practices that limit libraries’ ability to serve the public. It aims to ensure ebook licenses align more closely with  libraries’ core public interest mission of lending, access, and preservation. This represents a pivotal step toward safeguarding the role of libraries in the digital age. As more states consider similar measures, a key question arises: Should authors support these efforts? The answer is unequivocally yes— and here's why. 

<br> 

<https://www.authorsalliance.org/2025/06/30/the-author-library-alliance-supporting-fair-ebook-legislation-together/>

---

## We’re All Rats Now

date: 2025-06-30, from: Paul Krugman

Time to take a stand, again, against racism 

<br> 

<https://paulkrugman.substack.com/p/were-all-rats-now>

---

## Raspberry Pi Radio Module 2 available now at $4

date: 2025-06-30, from: Raspberry Pi News (.com)

<p>Raspberry Pi Radio Module 2 is a pre-certified module that provides turnkey wireless connectivity for RP2040- and RP2350-based products.</p>
<p>The post <a href="https://www.raspberrypi.com/news/raspberry-pi-radio-module-2-available-now-at-4/">Raspberry Pi Radio Module 2 available now at $4</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/raspberry-pi-radio-module-2-available-now-at-4/>

---

## How does geothermal energy work, and why don’t we use it more?

date: 2025-06-30, from: Hannah Richie at Substack

A primer on geothermal energy, and why it provides just 0.3% of the world's electricity. 

<br> 

<https://www.sustainabilitybynumbers.com/p/geothermal-energy>

---

## Agentic Coding: The Future of Software Development with Agents

date: 2025-06-29, updated: 2025-06-29, from: Simon Willison’s Weblog

<p><strong><a href="https://www.youtube.com/watch?v=nfOVgz_omlU">Agentic Coding: The Future of Software Development with Agents</a></strong></p>
Armin Ronacher delivers a 37 minute YouTube talk describing his adventures so far with Claude Code and agentic coding methods.</p>
<blockquote>
<p>A friend called Claude Code catnip for programmers and it really feels like this. I haven't felt so energized and confused and just so willing to try so many new things... it is really incredibly addicting.</p>
</blockquote>
<p>I picked up a bunch of useful tips from this video:</p>
<ul>
<li>Armin runs Claude Code with the <code>--dangerously-skip-permissions</code> option, and says this unlocks a huge amount of productivity. I haven't been brave enough to do this yet but I'm going to start using that option while running in a Docker container to ensure nothing too bad can happen.</li>
<li>When your agentic coding tool can run commands in a terminal you can mostly avoid MCP - instead of adding a new MCP tool, write a script or add a Makefile command and tell the agent to use that instead. The only MCP Armin uses is <a href="https://github.com/microsoft/playwright-mcp">the Playwright one</a>.</li>
<li>Combined logs are a really good idea: have everything log to the same place and give the agent an easy tool to read the most recent N log lines.</li>
<li>While running Claude Code, use Gemini CLI to run sub-agents, to perform additional tasks without using up Claude Code's own context</li>
<li>Designing additional tools that provide very clear errors, so the agents can recover when something goes wrong.</li>
<li>Thanks to Playwright, Armin has Claude Code perform all sorts of automated operations via a signed in browser instance as well. "Claude can debug your CI... it can sign into a browser, click around, debug..." - he also has it use the <code>gh</code> GitHub CLI tool to interact with things like <a href="https://cli.github.com/manual/gh_workflow">GitHub Actions workflows</a>.</li>
</ul>
<p><img alt="&quot;Tip 1: Unified Logging&quot; at top, followed by title &quot;Forward Everything Into One Log File&quot; and bullet points: &quot;Combine console.log + server logs + everything else&quot;, &quot;patch console.log in the browser -&gt; forward to server via API call&quot;, &quot;All output streams flow to a single, tailable log file&quot;, &quot;Give it a way to log out SQL too!&quot;, &quot;Provide a make tail-logs command for easy access&quot;. Bottom shows example: &quot;# Example&quot; and &quot;make tail-logs  # Shows last 50 lines, follows new output&quot;." src="https://static.simonwillison.net/static/2025/armin-logging.jpg" />


    <p>Tags: <a href="https://simonwillison.net/tags/armin-ronacher">armin-ronacher</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a>, <a href="https://simonwillison.net/tags/model-context-protocol">model-context-protocol</a>, <a href="https://simonwillison.net/tags/claude-code">claude-code</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/29/agentic-coding/#atom-everything>

---

## Episode 160 - What can Lunar Lander tell us about FOCAL?

date: 2025-06-29, from: Advent of Computing

<p>Lunar Lander is one of the best loves video games of all time. The game was created in 1969 as an homage to the recent Apollo 11. From there it would only spread. Just about anything that can print text has it's own version of Lunar Lander.</p> <p>The early history of this game is mixed up with something weird: two nearly identical programming languages. Today we will be using the history of Lunar Lander as a good excuse to look at an obscure tongue called FOCAL. This language is so close to BASIC that direct line-by-line translation is possible. But are the two connected?</p> 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://traffic.libsyn.com/secure/adventofcomputing/ep160_lunar_lander.mp3?dest-id=1206722"></source>
</audio> <a href="https://traffic.libsyn.com/secure/adventofcomputing/ep160_lunar_lander.mp3?dest-id=1206722" target="_blank">download audio/mpeg</a><br> 

<https://adventofcomputing.libsyn.com/episode-160-what-can-lunar-lander-tell-us-about-focal>

---

**@Robert's feed at BlueSky** (date: 2025-06-29, from: Robert's feed at BlueSky)

😬👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lsrqnvd4dc2z>

---

## Tip: Use keyword-only arguments in Python dataclasses

date: 2025-06-29, updated: 2025-06-29, from: Simon Willison’s Weblog

<p><strong><a href="https://chipx86.blog/2025/06/29/tip-use-keyword-only-arguments-in-python-dataclasses/">Tip: Use keyword-only arguments in Python dataclasses</a></strong></p>
Useful tip from Christian Hammond: if you create a Python dataclass using <code>@dataclass(kw_only=True)</code> its constructor will require keyword arguments, making it easier to add additional properties in the future, including in subclasses, without risking breaking existing code.

    <p><small></small>Via <a href="https://bsky.app/profile/chipx86.bsky.social/post/3lsrjodkfgs2h">@chipx86.bsky.social</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/python">python</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/29/keyword-only-arguments/#atom-everything>

---

## How to Fix Your Context

date: 2025-06-29, updated: 2025-06-29, from: Simon Willison’s Weblog

<p><strong><a href="https://www.dbreunig.com/2025/06/26/how-to-fix-your-context.html">How to Fix Your Context</a></strong></p>
Drew Breunig has been publishing some very detailed notes on <a href="https://simonwillison.net/2025/Jun/27/context-engineering/">context engineering</a> recently. In <a href="https://www.dbreunig.com/2025/06/22/how-contexts-fail-and-how-to-fix-them.html">How Long Contexts Fail</a> he described four common patterns for <a href="https://simonwillison.net/2025/Jun/18/context-rot/">context rot</a>, which he summarizes like so:</p>
<blockquote>
<ul>
<li><strong>Context Poisoning</strong>: When a hallucination or other error makes it into the context, where it is repeatedly referenced.</li>
<li><strong>Context Distraction</strong>: When a context grows so long that the model over-focuses on the context, neglecting what it learned during training.</li>
<li><strong>Context Confusion</strong>: When superfluous information in the context is used by the model to generate a low-quality response.</li>
<li><strong>Context Clash</strong>: When you accrue new information and tools in your context that conflicts with other information in the prompt.</li>
</ul>
</blockquote>
<p>In <a href="https://www.dbreunig.com/2025/06/26/how-to-fix-your-context.html">this follow-up</a> he introduces neat ideas (and more new terminology) for addressing those problems.</p>
<p><strong>Tool Loadout</strong> describes selecting a subset of tools to enable for a prompt, based on research that shows anything beyond 20 can confuse some models. </p>
<p><strong>Context Quarantine</strong> is "the act of isolating contexts in their own dedicated threads" - I've called rhis sub-agents in the past, it's the pattern <a href="https://simonwillison.net/2025/Jun/2/claude-trace/">used by Claude Code</a> and explored in depth in <a href="https://simonwillison.net/2025/Jun/14/multi-agent-research-system/">Anthropic's multi-agent research paper</a>.</p>
<p><strong>Context Pruning</strong> is "removing irrelevant or otherwise unneeded information from the context", and <strong>Context Summarization</strong> is the act of boiling down an accrued context into a condensed summary. These techniques become particularly important as conversations get longer and run closer to the model's token limits.</p>
<p><strong>Context Offloading</strong> is "the act of storing information outside the LLM’s context". I've seen several systems implement their own "memory" tool for saving and then revisiting notes as they work, but an even more interesting example recently is how various coding agents create and update <code>plan.md</code> files as they work through larger problems.</p>
<p>Drew's conclusion:</p>
<blockquote>
<p>The key insight across all the above tactics is that <em>context is not free</em>. Every token in the context influences the model’s behavior, for better or worse. The massive context windows of modern LLMs are a powerful capability, but they’re not an excuse to be sloppy with information management.</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/drew-breunig">drew-breunig</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/29/how-to-fix-your-context/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-06-29, from: Dave Winer's linkblog)

Thom Tillis Will Not Run Again. 

<br> 

<https://politicalwire.com/2025/06/29/thom-tillis-will-not-run-again/>

---

**@Dave Winer's linkblog** (date: 2025-06-29, from: Dave Winer's linkblog)

A $1 Trillion Medicaid Cut Is THIS Close to Happening. Here’s What It’d Look Like. 

<br> 

<https://www.thebulwark.com/p/medicaid-cuts-republicans-severing-lifeline-north-carolina>

---

## Computer Games mag Interviews Don Bluth (1984)

date: 2025-06-29, from: Computer ads from the Past

Talks about the famous Dragon's Lair 

<br> 

<https://computeradsfromthepast.substack.com/p/computer-games-mag-interviews-don>

---

## Sunday Read: Sex and Soft Power, The Book Everyone is Reading this Summer

date: 2025-06-29, from: Tina Brown

For some reason, everyone I know on both sides of the Atlantic seems to be devouring Kingmaker by Sonia Purnell, the biography of the famed political horizontale Pamela Harriman, perhaps because, with Trump cosplaying master and commander, we all want to be bunkered in those storied war rooms beneath the streets of Westminster, wreathed in her father-in-law Winston Churchill&#8217;s cigar smoke. 

<br> 

<https://tinabrown.substack.com/p/sunday-read-sex-and-soft-power-the>

---

## Processing Cycles

date: 2025-06-29, updated: 2025-06-29, from: Tedium site

You may not have to imagine a world where air conditioning uses more energy than computing for much longer. Also: As the Commodore turns. 

<br> 

<https://feed.tedium.co/link/15204/17065642/computing-air-conditioning-energy-usage>

---

**@Dave Winer's linkblog** (date: 2025-06-29, from: Dave Winer's linkblog)

Iran will likely be able to produce enriched uranium ‘in a matter of months’, IAEA chief says. 

<br> 

<https://www.theguardian.com/world/2025/jun/29/iran-will-likely-be-able-to-produce-enriched-uranium-in-a-matter-of-months-iaea-chief-says>

---

**@Dave Winer's linkblog** (date: 2025-06-29, from: Dave Winer's linkblog)

Trump Taps Palantir to Compile Data on Americans. 

<br> 

<https://www.nytimes.com/2025/05/30/technology/trump-palantir-data-americans.html?unlocked_article_code=1.Sk8.K4sK.WNxui6nCcxOT&smid=url-share>

---

## Priorité à droite

date: 2025-06-29, from: Status-Q blog

I&#8217;m somewhat embarrassed to think of the number of miles I&#8217;ve driven in Europe without fully understanding the Priorité à droite rules &#8212; that&#8217;s the French name, at least, though other countries have something similar. This means you should often give way to traffic simply because it&#8217;s coming from the right, even if, say, you&#8217;re <a class="more-link excerpt-link" href="https://statusq.org/archives/2025/06/29/13183/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<br> 

<https://statusq.org/archives/2025/06/29/13183/>

---

## Inequality, Part V: Predatory Financialization

date: 2025-06-29, from: Paul Krugman

How Wall Street increases disparities 

<br> 

<https://paulkrugman.substack.com/p/inequality-part-v-predatory-financialization>

---

**@Dave Winer's linkblog** (date: 2025-06-29, from: Dave Winer's linkblog)

Senate’s tax bill seeks to gut clean energy; Musk calls it ‘utterly insane.’ 

<br> 

<https://www.washingtonpost.com/climate-environment/2025/06/28/solar-green-energy-tax-bill-trump/>

---

**@Dave Winer's linkblog** (date: 2025-06-29, from: Dave Winer's linkblog)

Families share their stories of damage done by vaccine-preventable diseases like measles and rubella. 

<br> 

<https://apnews.com/article/vaccines-measles-polio-whooping-cough-rubella-af4cd1aef8f408a960601df6372f9c32>

---

**@Dave Winer's linkblog** (date: 2025-06-29, from: Dave Winer's linkblog)

Murkowski votes to advance GOP megabill after early misgivings over Medicaid, SNAP cuts. 

<br> 

<https://thehill.com/homenews/senate/5375462-murkowski-votes-to-advance-gop-megabill-after-early-misgivings-over-medicaid-snap-cuts/>

