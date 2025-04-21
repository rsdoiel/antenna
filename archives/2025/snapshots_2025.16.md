---
title: snapshots
updated: 2025-04-21 07:57:51
---

# snapshots

(date: 2025-04-21 07:57:51)

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
<p>The user-facing <a href="https://gemini.google.com/">Google Gemini app</a> can search too, but it doesn't show me what it's searching for. As a result, I just don't trust it. This is a big missed opportunity since Google presumably have by far the best search index, so they really should be able to build a great version of this. And Google's AI assisted search on their regular search interface hallucinates <em>wildly</em> to the point that it's actively damaging their brand. I just checked and Google is still showing slop <a href="https://simonwillison.net/2024/Dec/29/encanto-2/">for Encanto 2</a>!</p>
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

