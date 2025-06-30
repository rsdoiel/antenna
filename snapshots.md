---
title: snapshots
updated: 2025-06-30 14:08:03
---

# snapshots

(date: 2025-06-30 14:08:03)

---

## Proton v. Apple

date: 2025-06-30, from: Michael Tsai

Proton (PDF): We believe that Apple&#8217;s conduct, as detailed in the complaint we filed, constitutes further violations of US antitrust law. Without this case, Apple could get away with behavior in the US that is already outlawed in the European Union. If this were to happen, American consumers, and developers focused on the American market, [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/30/proton-v-apple/>

---

## Free Speech Coalition v. Paxton

date: 2025-06-30, from: Michael Tsai

Adi Robertson: Age verification is perhaps the hottest battleground for online speech, and the Supreme Court just settled a pivotal question: does using it to gate adult content violate the First Amendment in the US? For roughly the past 20 years the answer has been &#8220;yes&#8221; &#8212; now, as of Friday, it&#8217;s an unambiguous &#8220;no.&#8221;Justice [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/30/free-speech-coalition-v-paxton/>

---

## Assorted Notes on Liquid Glass

date: 2025-06-30, from: Michael Tsai

Riccardo Mori: I&#8217;ve been trying to make sense of Apple&#8217;s latest user-interface redesign &#8212; Apple calls it Liquid Glass &#8212; that will affect all their platforms in the next iteration of their respective OS versions. But it&#8217;s hard to make sense of it when, after checking Apple&#8217;s own guidance, I&#8217;m mostly left with the feeling [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/30/assorted-notes-on-liquid-glass/>

---

## Technotes Safari Extension

date: 2025-06-30, from: Michael Tsai

Zhenyi Tan (via Kyle Howells): A few months ago, I posted this image on Mastodon, because the Apple documentation website sometimes feel&#8230; err, underwhelming. Many people have already pointed this out, so I won&#8217;t repeat their complaints. When people complain about Apple&#8217;s documentation, they often compare it to php.net, saying that php.net has sample code [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/06/30/technotes-safari-extension/>

---

## Ploopy Knob is a $49 customizable dial for your computer that runs open source firmware (open hardware)

date: 2025-06-30, from: Liliputing

<p>The Ploopy Knob is a USB accessory that gives your computer a dial with support for high-resolution scrolling. Out of the box it&#8217;s designed to act as a vertical scroll wheel, but it runs open source, customizable firmware. So you can program its QMK firmware for horizontal scrolling, media controls (like volume adjustments or scrubbing forward [&#8230;]</p>
<p>The post <a href="https://liliputing.com/ploopy-knob-is-a-49-customizable-dial-for-your-computer-that-runs-open-source-firmware-open-hardware/">Ploopy Knob is a $49 customizable dial for your computer that runs open source firmware (open hardware)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/ploopy-knob-is-a-49-customizable-dial-for-your-computer-that-runs-open-source-firmware-open-hardware/>

---

## Stay Safe During Dangerous Heat

date: 2025-06-30, from: Guy Kawasaki blog

Brian Bossak, Professor of Public Health, College of Charleston. 

<br> 

<https://guykawasaki.substack.com/p/stay-safe-during-dangerous-heat>

---

## llvm: InstCombine: improve optimizations for ceiling division with no overflow - a PR by Alex Gaynor and Claude Code

date: 2025-06-30, updated: 2025-06-30, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/llvm/llvm-project/pull/142869">llvm: InstCombine: improve optimizations for ceiling division with no overflow - a PR by Alex Gaynor and Claude Code</a></strong></p>
Alex Gaynor maintains <a href="https://github.com/alex/rust-asn1">rust-asn1</a>, and recently spotted a missing LLVM compiler optimization while hacking on it, with <a href="https://claude.ai/share/d998511d-45ee-4132-bee4-fe7f70350a67">the assistance of Claude</a> (Alex works for Anthropic).</p>
<p>He describes how he confirmed that optimization in <a href="https://alexgaynor.net/2025/jun/20/serialize-some-der/">So you want to serialize some DER?</a>, taking advantage of a tool called <a href="https://github.com/AliveToolkit/alive2">Alive2</a> to automatically verify that the potential optimization resulted in the same behavior.</p>
<p>Alex <a href="https://github.com/llvm/llvm-project/issues/142497">filed a bug</a>, and then... </p>
<blockquote>
<p>Obviously the next move is to see if I can send a PR to LLVM, but it’s been years since I was doing compiler development or was familiar with the LLVM internals and I wasn’t really prepared to invest the time and energy necessary to get back up to speed. But as a friend pointed out… what about Claude?</p>
<p>At this point my instinct was, "Claude is great, but I'm not sure if I'll be able to effectively code review any changes it proposes, and I'm <em>not</em> going to be the asshole who submits an untested and unreviewed PR that wastes a bunch of maintainer time". But excitement got the better of me, and I asked <code>claude-code</code> to see if it could implement the necessary optimization, based on nothing more than the test cases.</p>
</blockquote>
<p>Alex reviewed the resulting code <em>very</em> carefully to ensure he wasn't wasting anyone's time, then submitted <a href="https://github.com/llvm/llvm-project/pull/142869">the PR</a> and had Claude Code help implement the various changes requested by the reviewers. The optimization <a href="https://github.com/llvm/llvm-project/commit/632151fbeea972f4aa3c14921eca1e45c07646f3">landed</a> two weeks ago.</p>
<p>Alex's conclusion (emphasis mine):</p>
<blockquote>
<p>I am incredibly leery about <a href="https://alexgaynor.net/2025/mar/05/generality/">over-generalizing</a> how to understand the capacity of the models, but at a minimum it seems safe to conclude that <strong>sometimes you should just let the model have a shot at a problem and you may be surprised -- particularly when the problem has very clear success criteria</strong>. This only works if you have the capacity to review what it produces, of course. [...]</p>
</blockquote>
<p>This echoes Ethan Mollick's advice to "always invite AI to the table". For programming tasks the "very clear success criteria" is extremely important, as it helps fit the tools-in-a-loop pattern implemented by coding agents such as Claude Code.</p>
<p>LLVM have <a href="https://llvm.org/docs/DeveloperPolicy.html#ai-generated-contributions">a policy</a> on AI-assisted contributions which is compatible with Alex's work here:</p>
<blockquote>
<p>[...] the LLVM policy is that contributors are permitted to use artificial intelligence tools to produce contributions, provided that they have the right to license that code under the project license. Contributions found to violate this policy will be removed just like any other offending contribution.</p>
<p>While the LLVM project has a liberal policy on AI tool use, contributors are considered responsible for their contributions. We encourage contributors to review all generated code before sending it for review to verify its correctness and to understand it so that they can answer questions during code review.</p>
</blockquote>
<p>Back in April Ben Evans <a href="https://mastodon.social/@kittylyst/114397697851381604">put out a call</a> for concrete evidence that LLM tools were being used to solve non-trivial problems in mature open source projects:</p>
<blockquote>
<p>I keep hearing #AI boosters / talking heads claiming that #LLMs have transformed software development [...] Share some AI-derived pull requests that deal with non-obvious corner cases or non-trivial bugs from mature #opensource  projects.</p>
</blockquote>
<p>I think this LLVM optimization definitely counts!</p>
<p>(I also like how this story supports the idea that AI tools amplify existing human expertise rather than replacing it. Alex had previous experience with LLVM, albeit rusty, and could lean on that knowledge to help direct and evaluate Claude's work.)


    <p>Tags: <a href="https://simonwillison.net/tags/alex-gaynor">alex-gaynor</a>, <a href="https://simonwillison.net/tags/compilers">compilers</a>, <a href="https://simonwillison.net/tags/llvm">llvm</a>, <a href="https://simonwillison.net/tags/open-source">open-source</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/coding-agents">coding-agents</a>, <a href="https://simonwillison.net/tags/claude-code">claude-code</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/30/llvm/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-06-30, from: Dave Winer's linkblog)

Supreme Court to decide whether ISPs must disconnect users accused of piracy. 

<br> 

<https://arstechnica.com/tech-policy/2025/06/supreme-court-to-decide-whether-isps-must-disconnect-users-accused-of-piracy/>

---

**@Dave Winer's linkblog** (date: 2025-06-30, from: Dave Winer's linkblog)

Tumblr’s move to WordPress and fediverse integration is ‘on hold.’ 

<br> 

<https://www.theverge.com/news/695124/tumblr-wordpress-automattic-fediverse-integration-on-hold-decoder>

---

## TCL NXTPAPER 11 Plus tablet now available in the US for $249

date: 2025-06-30, from: Liliputing

<p>The TCL NXTPAPER 11 Plus is a mid-range Android tablet with one stand-out feature, TCL&#8217;s NXTPAPER 4.0 display technology that offers an anti-glare, paper-like viewing experience. First introduced during CES in January, the NXTPAPER 11 Plus is now available from Walmart for $249. The tablet features an 11.5 inch, 2200 x 1400 pixel IPS LCD display [&#8230;]</p>
<p>The post <a href="https://liliputing.com/tcl-nxtpaper-11-plus-tablet-now-available-in-the-us-for-249/">TCL NXTPAPER 11 Plus tablet now available in the US for $249</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/tcl-nxtpaper-11-plus-tablet-now-available-in-the-us-for-249/>

---

## Updates 2025/Q2

date: 2025-06-30, from: mrusme blog

Life and project updates from the current consecutive three-month period. You
might find this interesting in case you're using any of my open source tools
or you just want to read random things. :-) 

<br> 

<https://xn--gckvb8fzb.com/updates-2025-q2/>

---

## Name that Ware, June 2025

date: 2025-06-30, from: Bunnie's Studio Blog

The ware for June 2025 is shown below. A big thanks to Chris Combs for this handsome contribution! Despite being 80&#8217;s vintage, the board is in mint condition. 

<br> 

<https://www.bunniestudios.com/blog/2025/name-that-ware-june-2025/>

---

## Winner, Name that Ware May 2025

date: 2025-06-30, from: Bunnie's Studio Blog

The Ware for May 2025 is a Facebook (now Meta) Portal. I&#8217;ll give the prize to opticron for the quick guess, email me for your prize! I actually considered redacting the audio DSP, but decided to leave it in because it&#8217;s an interesting detail. Despite having a big burly SoC with multiple cores and a [&#8230;] 

<br> 

<https://www.bunniestudios.com/blog/2025/winner-name-that-ware-may-2025/>

---

## Sweaty Walls

date: 2025-06-30, updated: 2025-06-30, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/06/30/sweaty-walls/>

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

## Build a Static Web Server with Deno

date: 2025-06-30, from: Robert's Ramblings

This chapter demonstrates how to build a static web server using Deno.
 

<br> 

<https://rsdoiel.github.io/blog/2025/06/30/Build_a_Static_Web_Server.html>

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

## US-RSE June 2025 Newsletter

date: 2025-06-29, from: The United States Research Software Engineer Association

🔍 This Month: A Peek at the US-RSE Website — What Brings You Here? 🔍 - 
          Welcome to this month’s edition of the US-RSE Newsletter! A few weeks ago, I found myself wondering: Who visits the US-RSE website? What are they looking for? How are they finding us? To satisfy that curiosity, I took a dive into our Google Analytics data, and uncovered some interesting patterns.... 

<br> 

<https://us-rse.org/2025-06-29-newsletter/>

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

