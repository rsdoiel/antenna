---
title: snapshots
updated: 2025-04-18 06:07:50
---

# snapshots

(date: 2025-04-18 06:07:50)

---

## Judge Rules Blanket Search of Cell Tower Data Unconstitutional

date: 2025-04-18, from: 404 Media Group

Judge says tower dumps violate the 4th amendment, but will let the cops do it this one time, as a treat. 

<br> 

<https://www.404media.co/judge-rules-blanket-search-of-cell-tower-data-unconstitutional/>

---

**@Dave Winer's linkblog** (date: 2025-04-18, from: Dave Winer's linkblog)

Harvard in the American Revolution. 

<br> 

<https://news.harvard.edu/gazette/story/2011/10/harvards-year-of-exile/>

---

**@Dave Winer's linkblog** (date: 2025-04-18, from: Dave Winer's linkblog)

I never thought that David Brooks would put it all together, in the NYT of all places. 

<br> 

<https://www.nytimes.com/2025/04/17/opinion/trump-harvard-law-firms.html?unlocked_article_code=1.Ak8.LHL9.ppLoMUS-09zk&smid=url-share>

---

## Why You Should Fear a Trumpified Fed

date: 2025-04-18, from: Paul Krugman

Don&#8217;t give an abuser power that&#8217;s easy to abuse 

<br> 

<https://paulkrugman.substack.com/p/why-you-should-fear-a-trumpified>

---

## K8s vs Nomad vs Bacalhau: Choosing Your Compute Orchestrator Wisely

date: 2025-04-18, from: Bacalhau Blog

Why Bacalhau can be the missing piece for your infrastructure. 

<br> 

<https://blog.bacalhau.org/p/k8s-vs-nomad-vs-bacalhau-choosing>

---

**@Dave Winer's linkblog** (date: 2025-04-18, from: Dave Winer's linkblog)

Woodstock Celebrates First Cannabis Dispensary. 

<br> 

<https://theoverlooknews.com/woodstock-celebrates-first-cannabis-dispensary-opening/>

---

**@Dave Winer's linkblog** (date: 2025-04-18, from: Dave Winer's linkblog)

Not all AI-assisted programming is vibe coding (but vibe coding rocks). 

<br> 

<https://simonwillison.net/2025/Mar/19/vibe-coding/>

---

## MCP Run Python

date: 2025-04-18, updated: 2025-04-18, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/pydantic/pydantic-ai/tree/main/mcp-run-python">MCP Run Python</a></strong></p>
Pydantic AI's MCP server for running LLM-generated Python code in a sandbox. They ended up using a trick I explored <a href="https://til.simonwillison.net/deno/pyodide-sandbox">two years ago</a>: using a <a href="https://deno.com/">Deno</a> process to run <a href="https://pyodide.org/">Pyodide</a> in a WebAssembly sandbox.</p>
<p>Here's a bit of a wild trick: since Deno loads code on-demand from <a href="https://jsr.io/">JSR</a>, and <a href="https://docs.astral.sh/uv/guides/scripts/">uv run</a> can install Python dependencies on demand via the <code>--with</code> option... here's a one-liner you can paste into a macOS shell (provided you have Deno and <code>uv</code> installed already) which will run the example from <a href="https://github.com/pydantic/pydantic-ai/blob/v0.1.2/mcp-run-python/README.md">their README</a> - calculating the number of days between two dates in the most complex way imaginable:</p>
<pre>ANTHROPIC_API_KEY=<span class="pl-s"><span class="pl-pds">"</span>sk-ant-...<span class="pl-pds">"</span></span> \
uv run --with pydantic-ai python -c <span class="pl-s"><span class="pl-pds">'</span></span>
<span class="pl-s">import asyncio</span>
<span class="pl-s">from pydantic_ai import Agent</span>
<span class="pl-s">from pydantic_ai.mcp import MCPServerStdio</span>
<span class="pl-s"></span>
<span class="pl-s">server = MCPServerStdio(</span>
<span class="pl-s">    "deno",</span>
<span class="pl-s">    args=[</span>
<span class="pl-s">        "run",</span>
<span class="pl-s">        "-N",</span>
<span class="pl-s">        "-R=node_modules",</span>
<span class="pl-s">        "-W=node_modules",</span>
<span class="pl-s">        "--node-modules-dir=auto",</span>
<span class="pl-s">        "jsr:@pydantic/mcp-run-python",</span>
<span class="pl-s">        "stdio",</span>
<span class="pl-s">    ],</span>
<span class="pl-s">)</span>
<span class="pl-s">agent = Agent("claude-3-5-haiku-latest", mcp_servers=[server])</span>
<span class="pl-s"></span>
<span class="pl-s">async def main():</span>
<span class="pl-s">    async with agent.run_mcp_servers():</span>
<span class="pl-s">        result = await agent.run("How many days between 2000-01-01 and 2025-03-18?")</span>
<span class="pl-s">    print(result.output)</span>
<span class="pl-s"></span>
<span class="pl-s">asyncio.run(main())<span class="pl-pds">'</span></span></pre>

<p>I ran that just now and got:</p>
<blockquote>
<p>The number of days between January 1st, 2000 and March 18th, 2025 is 9,208 days.</p>
</blockquote>
<p>I thoroughly enjoy how tools like <code>uv</code> and Deno enable throwing together shell one-liner demos like this one.</p>
<p>Here's <a href="https://gist.github.com/simonw/54fc42ef9a7fb8f777162bbbfbba4f23">an extended version</a> of this example which adds pretty-printed logging of the messages exchanged with the LLM to illustrate exactly what happened. The most important piece is this tool call where Claude 3.5 Haiku asks for Python code to be executed my the MCP server:</p>
<pre><span class="pl-en">ToolCallPart</span>(
    <span class="pl-s1">tool_name</span><span class="pl-c1">=</span><span class="pl-s">'run_python_code'</span>,
    <span class="pl-s1">args</span><span class="pl-c1">=</span>{
        <span class="pl-s">'python_code'</span>: (
            <span class="pl-s">'from datetime import date<span class="pl-cce">\n</span>'</span>
            <span class="pl-s">'<span class="pl-cce">\n</span>'</span>
            <span class="pl-s">'date1 = date(2000, 1, 1)<span class="pl-cce">\n</span>'</span>
            <span class="pl-s">'date2 = date(2025, 3, 18)<span class="pl-cce">\n</span>'</span>
            <span class="pl-s">'<span class="pl-cce">\n</span>'</span>
            <span class="pl-s">'days_between = (date2 - date1).days<span class="pl-cce">\n</span>'</span>
            <span class="pl-s">'print(f"Number of days between {date1} and {date2}: {days_between}")'</span>
        ),
    },
    <span class="pl-s1">tool_call_id</span><span class="pl-c1">=</span><span class="pl-s">'toolu_01TXXnQ5mC4ry42DrM1jPaza'</span>,
    <span class="pl-s1">part_kind</span><span class="pl-c1">=</span><span class="pl-s">'tool-call'</span>,
)</pre>

<p>I also managed to run it against <a href="https://ollama.com/library/mistral-small3.1">Mistral Small 3.1</a> (15GB) running locally using <a href="https://ollama.com/">Ollama</a> (I had to add "Use your python tool" to the prompt to get it to work):</p>
<pre>ollama pull mistral-small3.1:24b

uv run --with devtools --with pydantic-ai python -c <span class="pl-s"><span class="pl-pds">'</span></span>
<span class="pl-s">import asyncio</span>
<span class="pl-s">from devtools import pprint</span>
<span class="pl-s">from pydantic_ai import Agent, capture_run_messages</span>
<span class="pl-s">from pydantic_ai.models.openai import OpenAIModel</span>
<span class="pl-s">from pydantic_ai.providers.openai import OpenAIProvider</span>
<span class="pl-s">from pydantic_ai.mcp import MCPServerStdio</span>
<span class="pl-s"></span>
<span class="pl-s">server = MCPServerStdio(</span>
<span class="pl-s">    "deno",</span>
<span class="pl-s">    args=[</span>
<span class="pl-s">        "run",</span>
<span class="pl-s">        "-N",</span>
<span class="pl-s">        "-R=node_modules",</span>
<span class="pl-s">        "-W=node_modules",</span>
<span class="pl-s">        "--node-modules-dir=auto",</span>
<span class="pl-s">        "jsr:@pydantic/mcp-run-python",</span>
<span class="pl-s">        "stdio",</span>
<span class="pl-s">    ],</span>
<span class="pl-s">)</span>
<span class="pl-s"></span>
<span class="pl-s">agent = Agent( </span>
<span class="pl-s">    OpenAIModel(                          </span>
<span class="pl-s">        model_name="mistral-small3.1:latest",</span>
<span class="pl-s">        provider=OpenAIProvider(base_url="http://localhost:11434/v1"),                </span>
<span class="pl-s">    ),            </span>
<span class="pl-s">    mcp_servers=[server],</span>
<span class="pl-s">)</span>
<span class="pl-s"></span>
<span class="pl-s">async def main():</span>
<span class="pl-s">    with capture_run_messages() as messages:</span>
<span class="pl-s">        async with agent.run_mcp_servers():</span>
<span class="pl-s">            result = await agent.run("How many days between 2000-01-01 and 2025-03-18? Use your python tool.")</span>
<span class="pl-s">    pprint(messages)</span>
<span class="pl-s">    print(result.output)</span>
<span class="pl-s"></span>
<span class="pl-s">asyncio.run(main())<span class="pl-pds">'</span></span></pre>

<p>Here's <a href="https://gist.github.com/simonw/e444a81440bda2f37b0fef205780074a">the full output</a> including the debug logs.

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43691230">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/deno">deno</a>, <a href="https://simonwillison.net/tags/pydantic">pydantic</a>, <a href="https://simonwillison.net/tags/uv">uv</a>, <a href="https://simonwillison.net/tags/sandboxing">sandboxing</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/model-context-protocol">model-context-protocol</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/mistral">mistral</a>, <a href="https://simonwillison.net/tags/ollama">ollama</a>, <a href="https://simonwillison.net/tags/claude">claude</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/18/mcp-run-python/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-04-18, from: Dave Winer's linkblog)

JD Vance to UK: Repeal LGBTQ hate speech laws for trade deal. 

<br> 

<https://www.advocate.com/politics/us-uk-trade-deal-lgbtq>

---

## Simple live reload for developing static sites

date: 2025-04-18, from: Lean Rada's blog


<p>When developing my website, I’m using a simple client-side script to <strong>automatically reload the page</strong> whenever I make a change to the source files.</p>

<p>Since it’s not coupled to any particular backend, I could continue using <code>python3 -m http.server -d ./site/</code> or whatever local web server I wanted and it would still work. I could clone this repo on a new machine and get going with only preinstalled programs: a text editor, a browser, and a Python (or whatever) HTTP server. And live reload should<sup>*</sup> just work.</p>
<prose-bleed>
  <video autoplay="" muted="" loop="" src="https://leanrada.com/notes/simple-live-reload/demo.mp4?ref=rss" alt="demo video" loading="lazy"></video>
</prose-bleed>
<p>Here’s the code (39 lines):</p>

<pre><code>let watching = new Set();
watch(location.href);

new PerformanceObserver((list) =&gt; {
  for (const entry of list.getEntries()) {
    watch(entry.name);
  }
}).observe({ type: "resource", buffered: true });

function watch(urlString) {
  if (!urlString) return;
  const url = new URL(urlString);
  if (url.origin !== location.origin) return;

  if (watching.has(url.pathname)) return;
  watching.add(url.pathname);

  console.log("watching", url.pathname);

  let lastModified, etag;

  async function check() {
    const res = await fetch(url, { method: "head" });
    const newLastModified = res.headers.get("Last-Modified");
    const newETag = res.headers.get("ETag");

    if (
      (lastModified !== undefined || etag !== undefined) &amp;&amp;
      (lastModified !== newLastModified || etag !== newETag)
    ) {
      location.reload();
    }

    lastModified = newLastModified;
    etag = newETag;
  }

  setInterval(check, 1000);
}</code></pre>

<h2>Chuck it into your HTML</h2>

<pre><code>&lt;script src="https://kalabasa.github.io/simple-live-reload/script.js"&gt;&lt;/script&gt;</code></pre>

<p>It should just work! ✨</p>

<p><small><sup>*</sup>Check the <a href="https://github.com/Kalabasa/simple-live-reload/blob/master/README.md" target="_blank">README</a> for more details.</small></p>

<h2>How it works, in a nutshell</h2>

<ul>
  <li>Start <a href="https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver" target="_blank"><code>PerformanceObserver</code></a> to watch loaded URLs
  </li><li>Poll <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Methods/HEAD" target="_blank"><code>HEAD</code></a> metadata
  </li><li>Check <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Last-Modified" target="_blank"><code>Last-Modified</code></a> and <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/ETag" target="_blank"><code>ETag</code></a>
</li></ul>

<p><strong>PerformanceObserver</strong> — This class was intended to measure performance of things like network requests. But in this case it was repurposed to record requested URLs so we can watch them for changes. This includes lazy-loaded resources, and resources not in the markup (e.g. imported JS modules)!</p>

<p><strong>HEAD</strong> — Upon recording a requested URL, start polling the URL with <code>HEAD</code> HTTP requests to get resource metadata. Frequent polling should be fine if you’re using a local server which is what I would expect for development. The response returned by <code>HEAD</code> contains metadata useful for determining when to refresh.</p>

<p><strong>Last-Modified</strong> and <strong>ETag</strong> — These are the headers used to indicate when the underlying resource has changed. The script triggers a <code>location.reload()</code> when any of these change.</p>
<prose-bleed>
  <img src="https://leanrada.com/notes/simple-live-reload/flow.png?ref=rss" alt="flowchart showing the steps" loading="lazy" width="1056" height="387">
</prose-bleed>
<h2>Story time</h2>

<p>I was directly inspired by <strong><a href="https://livejs.com/" target="_blank">livejs</a></strong> (2004), which polls headers as well. However, it has not been updated for modern browsers. Instead of watching network requests, it scans the markup for <code>&lt;script&gt;</code> and <code>&lt;link&gt;</code> (CSS) resources.</p>

<p>In fact, I’ve been using livejs for a long while. I’ve never been fond of the other solutions which require integration with your local filesystem, via extra programs that you install and run. They always seem to run slow or take up lots of resources, and sometimes choke if there are errors.</p>

<p>I’m planning to make a fine-grained version of this module. Simple live reloading is fine, but a more advanced <em>hot</em> reloading that doesn't always refresh the whole page would be great. For the modern web, the advanced version must be able to <a href="https://github.com/WICG/webcomponents/issues/820" target="_blank">hot reload WebComponents</a> in place, and do other fun stuff. I wonder if it’s even possible. 🤔</p>

<p><strong>GitHub repo: <a href="https://github.com/Kalabasa/simple-live-reload" target="_blank">Kalabasa/simple-live-reload</a></strong></p>
 

<br> 

<https://leanrada.com/notes/simple-live-reload/?ref=rss>

---

**@Dave Winer's linkblog** (date: 2025-04-17, from: Dave Winer's linkblog)

&#39;The federal government will find you&#39;: Immigration officials wrongfully told a Fox Valley man to leave the US. 

<br> 

<https://www.wpr.org/news/federal-government-find-you-immigration-officials-wrongfully-told-fox-valley-man-leave>

---

## Lilbits: Amazon to ditch Fire OS for smart TVs, Ubuntu 25.04 is here, Android 16 is coming, and so is Playdate Season 2

date: 2025-04-17, from: Liliputing

<p>Amazon uses an Android-based operating system called Fire OS for its Amazon Fire line of tablets and Fire TV line of smart TVs. But a few years ago we learned that the company was looking to move away from Android for at least some of its devices. Some Echo Show products are already shipping with [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-amazon-to-ditch-fire-os-for-smart-tvs-ubuntu-25-04-is-here-android-16-is-coming-and-so-is-playdate-season-2/">Lilbits: Amazon to ditch Fire OS for smart TVs, Ubuntu 25.04 is here, Android 16 is coming, and so is Playdate Season 2</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-amazon-to-ditch-fire-os-for-smart-tvs-ubuntu-25-04-is-here-android-16-is-coming-and-so-is-playdate-season-2/>

---

## Banana Pi BPI-CM6 is a compute module with a SpacemiT K1 RISC-V processor

date: 2025-04-17, from: Liliputing

<p>The Banana Pi BPI-CM6 is a computer-on-a-module that&#8217;s the same size and shape as a Raspberry Pi CM4 and even uses the same board-to-board connectors. But while Raspberry Pi&#8217;s compute module has an ARM-based processor, the BPI-CM6 is powered by a SpacemiT K1 octa-core RISC-V chip. Basically it has the same capabilities as the Banana Pi BPI-F3 [&#8230;]</p>
<p>The post <a href="https://liliputing.com/banana-pi-bpi-cm6-is-a-compute-module-with-a-spacemit-k1-risc-v-processor/">Banana Pi BPI-CM6 is a compute module with a SpacemiT K1 RISC-V processor</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/banana-pi-bpi-cm6-is-a-compute-module-with-a-spacemit-k1-risc-v-processor/>

---

## Start building with Gemini 2.5 Flash

date: 2025-04-17, updated: 2025-04-17, from: Simon Willison’s Weblog

<p><strong><a href="https://developers.googleblog.com/en/start-building-with-gemini-25-flash/">Start building with Gemini 2.5 Flash</a></strong></p>
Google Gemini's latest model is Gemini 2.5 Flash, available in (paid) preview as <code>gemini-2.5-flash-preview-04-17</code>. </p>
<blockquote>
<p>Building upon the popular foundation of 2.0 Flash, this new version delivers a major upgrade in reasoning capabilities, while still prioritizing speed and cost. Gemini 2.5 Flash is our first fully hybrid reasoning model, giving developers the ability to turn thinking on or off. The model also allows developers to set thinking budgets to find the right tradeoff between quality, cost, and latency.</p>
</blockquote>
<p>Gemini AI Studio product lead Logan Kilpatrick <a href="https://twitter.com/OfficialLoganK/status/1912966500794654855">says</a>:</p>
<blockquote>
<p>This is an early version of 2.5 Flash, but it already shows huge gains over 2.0 Flash. </p>
<p>You can fully turn off thinking if needed and use this model as a drop in replacement for 2.0 Flash. </p>
</blockquote>
<p>I added support to the new model in <a href="https://github.com/simonw/llm-gemini/releases/tag/0.18">llm-gemini 0.18</a>. Here's how to try it out:</p>
<pre><code>llm install -U llm-gemini
llm -m gemini-2.5-flash-preview-04-17 'Generate an SVG of a pelican riding a bicycle'
</code></pre>
<p>Here's that first pelican, using the default setting where Gemini Flash 2.5 makes its own decision in terms of how much "thinking" effort to apply:</p>
<p><img alt="Described below" src="https://static.simonwillison.net/static/2025/gemini-2.5-flash-default.jpg" /></p>
<p>Here's <a href="https://gist.github.com/simonw/afce6639ed10c712a0778fc779efd756">the transcript</a>. This one used 11 input tokens and 4266 output tokens of which 2702 were "thinking" tokens. </p>
<p>I asked the model to "<code>describe</code>" that image and it could tell it was meant to be a pelican:</p>
<blockquote>
<p>A simple illustration on a white background shows a stylized pelican riding a bicycle. The pelican is predominantly grey with a black eye and a prominent pink beak pouch. It is positioned on a black line-drawn bicycle with two wheels, a frame, handlebars, and pedals.</p>
</blockquote>
<p>The way the model is priced is a little complicated. If you have thinking enabled, you get charged $0.15/million tokens for input and $3.50/million for output. With thinking disabled those output tokens drop to $0.60/million. I've added these <a href="https://tools.simonwillison.net/llm-prices">to my pricing calculator</a>.</p>
<p>For comparison, Gemini 2.0 Flash is $0.10/million input and $0.40/million for output.</p>
<p>So my first prompt - 11 input and 4266 output(with thinking enabled), cost 1.4933 cents.</p>
<p>Let's try 2.5 Flash again with thinking disabled:</p>
<pre><code>llm -m gemini-2.5-flash-preview-04-17 'Generate an SVG of a pelican riding a bicycle' -o thinking_budget 0
</code></pre>
<p><img alt="Described below, again" src="https://static.simonwillison.net/static/2025/gemini-2.5-flash-thinking-0.jpg" /></p>
<p>11 input, 1705 output. That's 0.1025 cents. <a href="https://gist.github.com/simonw/182679e918ab5263f98f6a65691874d1">Transcript here</a> - it still shows 25 thinking tokens even though I set the thinking budget to 0 - Logan <a href="https://twitter.com/OfficialLoganK/status/1912986097765789782">confirms</a> that this will still be billed at the lower rate:</p>
<blockquote>
<p>In some rare cases, the model still thinks a little even with thinking budget = 0, we are hoping to fix this before we make this model stable and you won't be billed for thinking. The thinking budget = 0 is what triggers the billing switch.</p>
</blockquote>
<p>Here's Gemini 2.5 Flash's self-description of that image:</p>
<blockquote>
<p>A minimalist illustration shows a bright yellow bird riding a bicycle. The bird has a simple round body, small wings, a black eye, and an open orange beak. It sits atop a simple black bicycle frame with two large circular black wheels. The bicycle also has black handlebars and black and yellow pedals. The scene is set against a solid light blue background with a thick green stripe along the bottom, suggesting grass or ground.</p>
</blockquote>
<p>And finally, let's ramp the thinking budget up to the maximum:</p>
<pre><code>llm -m gemini-2.5-flash-preview-04-17 'Generate an SVG of a pelican riding a bicycle' -o thinking_budget 24576
</code></pre>
<p><img alt="Described below" src="https://static.simonwillison.net/static/2025/gemini-2.5-flash-thinking-max.jpg" /></p>
<p>I think it over-thought this one. <a href="https://gist.github.com/simonw/6a83bd7ad114ee23c460f5246b854247">Transcript</a> - 5174 output tokens of which 3023 were thinking. A hefty 1.8111 cents!</p>
<blockquote>
<p>A simple, cartoon-style drawing shows a bird-like figure riding a bicycle. The figure has a round gray head with a black eye and a large, flat orange beak with a yellow stripe on top. Its body is represented by a curved light gray shape extending from the head to a smaller gray shape representing the torso or rear. It has simple orange stick legs with round feet or connections at the pedals. The figure is bent forward over the handlebars in a cycling position. The bicycle is drawn with thick black outlines and has two large wheels, a frame, and pedals connected to the orange legs. The background is plain white, with a dark gray line at the bottom representing the ground.</p>
</blockquote>
<p>One thing I really appreciate about Gemini 2.5 Flash's approach to SVGs is that it shows very good taste in CSS, comments and general SVG class structure. Here's a truncated extract - I run a lot of these SVG tests against different models and this one has a coding style that I particularly enjoy. (Gemini 2.5 Pro <a href="https://gist.github.com/simonw/c34f7f0c94afcbeab77e170511f6f51f">does this too</a>).</p>
<pre>&lt;<span class="pl-ent">svg</span> <span class="pl-e">width</span>=<span class="pl-s"><span class="pl-pds">"</span>800<span class="pl-pds">"</span></span> <span class="pl-e">height</span>=<span class="pl-s"><span class="pl-pds">"</span>500<span class="pl-pds">"</span></span> <span class="pl-e">viewBox</span>=<span class="pl-s"><span class="pl-pds">"</span>0 0 800 500<span class="pl-pds">"</span></span> <span class="pl-e">xmlns</span>=<span class="pl-s"><span class="pl-pds">"</span>http://www.w3.org/2000/svg<span class="pl-pds">"</span></span>&gt;
  &lt;<span class="pl-ent">style</span>&gt;<span class="pl-s1"></span>
<span class="pl-s1">    <span class="pl-e">.bike-frame</span> { <span class="pl-c1"><span class="pl-c1">fill</span></span>: <span class="pl-c1">none</span>; <span class="pl-c1"><span class="pl-c1">stroke</span></span>: <span class="pl-c1">#333</span>; <span class="pl-c1"><span class="pl-c1">stroke-width</span></span>: <span class="pl-c1">8</span>; <span class="pl-c1"><span class="pl-c1">stroke-linecap</span></span>: <span class="pl-c1">round</span>; <span class="pl-c1"><span class="pl-c1">stroke-linejoin</span></span>: <span class="pl-c1">round</span>; }</span>
<span class="pl-s1">    <span class="pl-e">.wheel-rim</span> { <span class="pl-c1"><span class="pl-c1">fill</span></span>: <span class="pl-c1">none</span>; <span class="pl-c1"><span class="pl-c1">stroke</span></span>: <span class="pl-c1">#333</span>; <span class="pl-c1"><span class="pl-c1">stroke-width</span></span>: <span class="pl-c1">8</span>; }</span>
<span class="pl-s1">    <span class="pl-e">.wheel-hub</span> { <span class="pl-c1"><span class="pl-c1">fill</span></span>: <span class="pl-c1">#333</span>; }</span>
<span class="pl-s1">    <span class="pl-c"><span class="pl-c">/*</span> ... <span class="pl-c">*/</span></span></span>
<span class="pl-s1">    <span class="pl-e">.pelican-body</span> { <span class="pl-c1"><span class="pl-c1">fill</span></span>: <span class="pl-c1">#d3d3d3</span>; <span class="pl-c1"><span class="pl-c1">stroke</span></span>: <span class="pl-c1">black</span>; <span class="pl-c1"><span class="pl-c1">stroke-width</span></span>: <span class="pl-c1">3</span>; }</span>
<span class="pl-s1">    <span class="pl-e">.pelican-head</span> { <span class="pl-c1"><span class="pl-c1">fill</span></span>: <span class="pl-c1">#d3d3d3</span>; <span class="pl-c1"><span class="pl-c1">stroke</span></span>: <span class="pl-c1">black</span>; <span class="pl-c1"><span class="pl-c1">stroke-width</span></span>: <span class="pl-c1">3</span>; }</span>
<span class="pl-s1">    <span class="pl-c"><span class="pl-c">/*</span> ... <span class="pl-c">*/</span></span></span>
<span class="pl-s1"></span>  &lt;/<span class="pl-ent">style</span>&gt;
  <span class="pl-c"><span class="pl-c">&lt;!--</span> Ground Line <span class="pl-c">--&gt;</span></span>
  &lt;<span class="pl-ent">line</span> <span class="pl-e">x1</span>=<span class="pl-s"><span class="pl-pds">"</span>0<span class="pl-pds">"</span></span> <span class="pl-e">y1</span>=<span class="pl-s"><span class="pl-pds">"</span>480<span class="pl-pds">"</span></span> <span class="pl-e">x2</span>=<span class="pl-s"><span class="pl-pds">"</span>800<span class="pl-pds">"</span></span> <span class="pl-e">y2</span>=<span class="pl-s"><span class="pl-pds">"</span>480<span class="pl-pds">"</span></span> <span class="pl-e">stroke</span>=<span class="pl-s"><span class="pl-pds">"</span>#555<span class="pl-pds">"</span></span> <span class="pl-e">stroke-width</span>=<span class="pl-s"><span class="pl-pds">"</span>5<span class="pl-pds">"</span></span>/&gt;
  <span class="pl-c"><span class="pl-c">&lt;!--</span> Bicycle <span class="pl-c">--&gt;</span></span>
  &lt;<span class="pl-ent">g</span> <span class="pl-e">id</span>=<span class="pl-s"><span class="pl-pds">"</span>bicycle<span class="pl-pds">"</span></span>&gt;
    <span class="pl-c"><span class="pl-c">&lt;!--</span> Wheels <span class="pl-c">--&gt;</span></span>
    &lt;<span class="pl-ent">circle</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>wheel-rim<span class="pl-pds">"</span></span> <span class="pl-e">cx</span>=<span class="pl-s"><span class="pl-pds">"</span>250<span class="pl-pds">"</span></span> <span class="pl-e">cy</span>=<span class="pl-s"><span class="pl-pds">"</span>400<span class="pl-pds">"</span></span> <span class="pl-e">r</span>=<span class="pl-s"><span class="pl-pds">"</span>70<span class="pl-pds">"</span></span>/&gt;
    &lt;<span class="pl-ent">circle</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>wheel-hub<span class="pl-pds">"</span></span> <span class="pl-e">cx</span>=<span class="pl-s"><span class="pl-pds">"</span>250<span class="pl-pds">"</span></span> <span class="pl-e">cy</span>=<span class="pl-s"><span class="pl-pds">"</span>400<span class="pl-pds">"</span></span> <span class="pl-e">r</span>=<span class="pl-s"><span class="pl-pds">"</span>10<span class="pl-pds">"</span></span>/&gt;
    &lt;<span class="pl-ent">circle</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>wheel-rim<span class="pl-pds">"</span></span> <span class="pl-e">cx</span>=<span class="pl-s"><span class="pl-pds">"</span>550<span class="pl-pds">"</span></span> <span class="pl-e">cy</span>=<span class="pl-s"><span class="pl-pds">"</span>400<span class="pl-pds">"</span></span> <span class="pl-e">r</span>=<span class="pl-s"><span class="pl-pds">"</span>70<span class="pl-pds">"</span></span>/&gt;
    &lt;<span class="pl-ent">circle</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>wheel-hub<span class="pl-pds">"</span></span> <span class="pl-e">cx</span>=<span class="pl-s"><span class="pl-pds">"</span>550<span class="pl-pds">"</span></span> <span class="pl-e">cy</span>=<span class="pl-s"><span class="pl-pds">"</span>400<span class="pl-pds">"</span></span> <span class="pl-e">r</span>=<span class="pl-s"><span class="pl-pds">"</span>10<span class="pl-pds">"</span></span>/&gt;
    <span class="pl-c"><span class="pl-c">&lt;!--</span> ... <span class="pl-c">--&gt;</span></span>
  &lt;/<span class="pl-ent">g</span>&gt;
  <span class="pl-c"><span class="pl-c">&lt;!--</span> Pelican <span class="pl-c">--&gt;</span></span>
  &lt;<span class="pl-ent">g</span> <span class="pl-e">id</span>=<span class="pl-s"><span class="pl-pds">"</span>pelican<span class="pl-pds">"</span></span>&gt;
    <span class="pl-c"><span class="pl-c">&lt;!--</span> Body <span class="pl-c">--&gt;</span></span>
    &lt;<span class="pl-ent">path</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>pelican-body<span class="pl-pds">"</span></span> <span class="pl-e">d</span>=<span class="pl-s"><span class="pl-pds">"</span>M 440 330 C 480 280 520 280 500 350 C 480 380 420 380 440 330 Z<span class="pl-pds">"</span></span>/&gt;
    <span class="pl-c"><span class="pl-c">&lt;!--</span> Neck <span class="pl-c">--&gt;</span></span>
    &lt;<span class="pl-ent">path</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>pelican-neck<span class="pl-pds">"</span></span> <span class="pl-e">d</span>=<span class="pl-s"><span class="pl-pds">"</span>M 460 320 Q 380 200 300 270<span class="pl-pds">"</span></span>/&gt;
    <span class="pl-c"><span class="pl-c">&lt;!--</span> Head <span class="pl-c">--&gt;</span></span>
    &lt;<span class="pl-ent">circle</span> <span class="pl-e">class</span>=<span class="pl-s"><span class="pl-pds">"</span>pelican-head<span class="pl-pds">"</span></span> <span class="pl-e">cx</span>=<span class="pl-s"><span class="pl-pds">"</span>300<span class="pl-pds">"</span></span> <span class="pl-e">cy</span>=<span class="pl-s"><span class="pl-pds">"</span>270<span class="pl-pds">"</span></span> <span class="pl-e">r</span>=<span class="pl-s"><span class="pl-pds">"</span>35<span class="pl-pds">"</span></span>/&gt;
    <span class="pl-c"><span class="pl-c">&lt;!--</span> ... <span class="pl-c">--&gt;</span></span></pre>

<p>The <a href="https://lmarena.ai/?leaderboard">LM Arena leaderboard</a> now has Gemini 2.5 Flash <a href="https://twitter.com/lmarena_ai/status/1912955625224773911">in joint second place</a>, just behind Gemini 2.5 Pro and tied with ChatGPT-4o-latest, Grok-3 and GPT-4.5 Preview.</p>
<p><img alt="Screenshot of a table showing AI model rankings with columns Rank* (UB), Rank (StyleCtrl), Model, Arena Score, 95% CI, Votes, Organization, and License. The rows show data for: Gemini-2.5-Pro-Exp-03-25 ranked 1/1 with score 1439, CI +7/-5, 9013 Votes, Organization Google, License Proprietary. ChatGPT-4o-latest (2025-03-26) ranked 2/2 with score 1407, CI +6/-6, 8261 Votes, Organization OpenAI, License Proprietary. Grok-3-Preview-02-24 ranked 2/4 with score 1402, CI +5/-3, 14849 Votes, Organization xAI, License Proprietary. GPT-4.5-Preview ranked 2/2 with score 1398, CI +5/-6, 14520 Votes, Organization OpenAI, License Proprietary. Gemini-2.5-Flash-Preview-04-17 ranked 2/4 with score 1392, CI +10/-13, 3325 Votes, Organization Google, License Proprietary" src="https://static.simonwillison.net/static/2025/gemini-2.5-flash-leaderboard.jpg" />

    <p><small></small>Via <a href="https://twitter.com/OfficialLoganK/status/1912966497213038686">@OfficialLoganK</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/llm-reasoning">llm-reasoning</a>, <a href="https://simonwillison.net/tags/llm-pricing">llm-pricing</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a>, <a href="https://simonwillison.net/tags/svg">svg</a>, <a href="https://simonwillison.net/tags/logan-kilpatrick">logan-kilpatrick</a>, <a href="https://simonwillison.net/tags/lm-arena">lm-arena</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/17/start-building-with-gemini-25-flash/#atom-everything>

---

## This eBook reader has an 8 inch foldable E Ink display

date: 2025-04-17, from: Liliputing

<p>Smartphones with foldable displays have been around for years. A handful of PC makers have also launched laptops. So what&#8217;s next? Foldable eReaders, apparently. The MooInk V is an eBook reader with an 8 inch E Ink Gallery color ePaper display that can fold in half like a&#8230; well, like a book. Developer by Readmoo [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-ebook-reader-has-an-8-inch-foldable-e-ink-display/">This eBook reader has an 8 inch foldable E Ink display</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-ebook-reader-has-an-8-inch-foldable-e-ink-display/>

---

## Hey, I Think Someone Might Be a Real Dummy

date: 2025-04-17, updated: 2025-04-17, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/04/17/hey-i-think-someone-might-be-a-real-dummy/>

---

## Unaccompanied and Unrepresented

date: 2025-04-17, from: Guy Kawasaki blog

Inside Rachel Rutter's fight for immigrant youth. 

<br> 

<https://guykawasaki.substack.com/p/unaccompanied-and-unrepresented>

---

## AOKZOE A1X handheld gaming PC supports up to a Ryzen AI 9 HX 370 processor (crowdfunding)

date: 2025-04-17, from: Liliputing

<p>The AOKZOE A1X is a handheld gaming PC with an 8 inch, 1920 x 1200 pixel, 120 Hz display, a 72.7 Wh battery, supports for up to 64GB of RAM, and a choice of AMD Ryzen 7 8840U Hawk Point or Ryzen AI 9 HX 370 Strix Point processor options. While retail prices are expected [&#8230;]</p>
<p>The post <a href="https://liliputing.com/aokzoe-a1x-handheld-gaming-pc-supports-up-to-a-ryzen-ai-9-hx-370-processor-crowdfunding/">AOKZOE A1X handheld gaming PC supports up to a Ryzen AI 9 HX 370 processor (crowdfunding)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/aokzoe-a1x-handheld-gaming-pc-supports-up-to-a-ryzen-ai-9-hx-370-processor-crowdfunding/>

---

## OpenAI’s o3 and Tyler Cowen’s Misguided AGI Fantasy

date: 2025-04-17, from: Gary Marcus blog

AI can only improve if its limits as well as its strengths are faced honestly 

<br> 

<https://garymarcus.substack.com/p/openais-o3-and-tyler-cowens-misguided>

---

**@Dave Winer's linkblog** (date: 2025-04-17, from: Dave Winer's linkblog)

GOP Sen. Murkowski on Trump’s sweeping changes: ‘We are all afraid.’ 

<br> 

<https://www.washingtonpost.com/politics/2025/04/17/sen-lisa-murkowski-trump-administration/?pwapi_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyZWFzb24iOiJnaWZ0IiwibmJmIjoxNzQ0ODYyNDAwLCJpc3MiOiJzdWJzY3JpcHRpb25zIiwiZXhwIjoxNzQ2MjQ0Nzk5LCJpYXQiOjE3NDQ4NjI0MDAsImp0aSI6ImU3ZmUyNjNhLWY1NTUtNDU0NC05ZjE0LTA2OGQ0YTQ2MjFlYSIsInVybCI6Imh0dHBzOi8vd3d3Lndhc2hpbmd0b25wb3N0LmNvbS9wb2xpdGljcy8yMDI1LzA0LzE3L3Nlbi1saXNhLW11cmtvd3NraS10cnVtcC1hZG1pbmlzdHJhdGlvbi8ifQ.aYrgiEDE1Lh04rzW5VD9g3hy95PM1GZLHCXbl5D0VIQ>

---

**@Dave Winer's linkblog** (date: 2025-04-17, from: Dave Winer's linkblog)

Bessent urges caution as Trump rages against Powell. Firing Powell would be the end of the dollar. Everyone would dump dollars as fast as they can. And just <em>talking</em> about it might be enough. 

<br> 

<https://www.politico.com/news/2025/04/17/trump-powell-fired-fed-00295552>

---

## ARC Optimization vs. -fstack-protector

date: 2025-04-17, from: Michael Tsai

Samuel Giddins: After months of painstaking work, we&#8217;ve got our apps building, and most of our tests building, and almost most of them passing.Except for some tests that use test fixtures. And assert that those test fixtures get deallocated. And they passed in Xcode. And failed when run via Bazel.[&#8230;]However, due to the way the [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/17/arc-optimization-vs-fstack-protector/>

---

## Performance of the Python 3.14 Tail-Call Interpreter

date: 2025-04-17, from: Michael Tsai

Nelson Elhage (via Hacker News): Unfortunately, as I will document in this post, these impressive performance gains turned out to be primarily due to inadvertently working around a regression in LLVM 19. When benchmarked against a better baseline (such GCC, clang-18, or LLVM 19 with certain tuning flags), the performance gain drops to 1-5% or [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/17/performance-of-the-python-3-14-tail-call-interpreter/>

---

## Amazon Web Services Dark Patterns

date: 2025-04-17, from: Michael Tsai

Jeff Johnson: As far as I can tell, the confusingly named Aurora PostgreSQL is not actually PostgreSQL but rather an Amazon-specific database designed with one overriding goal: to be infinitely more expensive than PostgreSQL, which is free. In any case, the AWS Free Tier details give the impression to unsuspecting new users that PostgreSQL is [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/17/amazon-web-services-dark-patterns/>

---

**@Dave Winer's linkblog** (date: 2025-04-17, from: Dave Winer's linkblog)

Wesleyan president says Trump is not protecting Jewish students. 

<br> 

<https://www.npr.org/2025/04/17/nx-s1-5366667/trump-defunding-university-antisemitism-wesleyan>

---

## Quoting Jon Haidt and Zach Rausch

date: 2025-04-17, updated: 2025-04-17, from: Simon Willison’s Weblog

<blockquote cite="https://www.afterbabel.com/p/industrial-scale-harm-tiktok"><p>We (Jon and Zach) teamed up with the Harris Poll to confirm this finding and extend it. We <a href="https://theharrispoll.com/briefs/gen-z-social-media-smart-phones/">conducted a nationally representative survey</a> of 1,006 Gen Z young adults (ages 18-27). We asked respondents to tell us, for various platforms and products, if they wished that it “was never invented.” For Netflix, Youtube, and the internet itself, relatively few said yes to that question (always under 20%). We found much higher levels of regret for the dominant social media platforms: Instagram (34%), Facebook (37%), Snapchat (43%), and the most regretted platforms of all: TikTok (47%) and X/Twitter (50%).</p></blockquote>
<p class="cite">&mdash; <a href="https://www.afterbabel.com/p/industrial-scale-harm-tiktok">Jon Haidt and Zach Rausch</a>, TikTok Is Harming Children at an Industrial Scale</p>

    <p>Tags: <a href="https://simonwillison.net/tags/social-media">social-media</a>, <a href="https://simonwillison.net/tags/twitter">twitter</a>, <a href="https://simonwillison.net/tags/tiktok">tiktok</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/17/jon-haidt-and-zach-rausch/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-04-17, from: Dave Winer's linkblog)

Trump Needs Someone to Blame. 

<br> 

<https://www.theatlantic.com/ideas/archive/2025/04/trump-federal-reserve-jerome-powell/682489/?gift=f35zZN0v_gDFE8xNwlQAHSK1TfrHWQA0GddSg4WC9kM&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

## The 250th Anniversary of the Battles of Lexington and Concord

date: 2025-04-17, from: National Archives, Text Message blog

Today’s post was written by Matthew DiBiase, an Archives Specialist from the National Archives at Philadelphia (who in his spare time doubles as a podcaster and sports history author). The documents featured here are from the Interim Report of the Boston National Historic Sites Commission (led by Congressman and future Speaker of the House Thomas &#8230; <a href="https://text-message.blogs.archives.gov/2025/04/17/the-250th-anniversary-of-the-battles-of-lexington-and-concord/" class="more-link">Continue reading <span class="screen-reader-text">The 250th Anniversary of the Battles of Lexington and Concord</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/04/17/the-250th-anniversary-of-the-battles-of-lexington-and-concord/>

---

## Leaked: Palantir’s Plan to Help ICE Deport People

date: 2025-04-17, from: 404 Media Group

Internal Palantir Slack chats and message boards obtained by 404 Media show the contracting giant is helping find the location of people flagged for deportation, that Palantir is now a “more mature partner to ICE,” and how Palantir is addressing employee concerns with discussion groups on ethics. 

<br> 

<https://www.404media.co/leaked-palantirs-plan-to-help-ice-deport-people/>

---

**@Dave Winer's linkblog** (date: 2025-04-17, from: Dave Winer's linkblog)

American doctor receives email from immigration officials telling her to leave the country immediately. 

<br> 

<https://www.nbcnews.com/news/us-news/doctor-email-immigration-leave-country-rcna201698?taid=6801097d07fad10001c18175>

---

## Let's talk about this "EU OS"

date: 2025-04-17, from: Libre News

Why is everybody talking about this project? And, most importantly, why is everybody wrong about it? 

<br> 

<https://thelibre.news/lets-talk-about-this-eu-os/>

---

## Law Firms, Trade Wars and the Weakness of Monarchs

date: 2025-04-17, from: Paul Krugman

Unrestrained presidential power will diminish America 

<br> 

<https://paulkrugman.substack.com/p/law-firms-trade-wars-and-the-weakness>

---

**@Dave Winer's linkblog** (date: 2025-04-17, from: Dave Winer's linkblog)

Wikipedia is giving AI developers its data to fend off bot scrapers. 1. I’d like to submit my blog archive in the same way. 2. Does Wikipedia think it owns the data it hosts, even though it’s all created by unpaid volunteers? 

<br> 

<https://www.theverge.com/news/650467/wikipedia-kaggle-partnership-ai-dataset-machine-learning>

---

## This ‘College Protester’ Isn’t Real. It’s an AI-Powered Undercover Bot for Cops

date: 2025-04-17, from: 404 Media Group

Massive Blue is helping cops deploy AI-powered social media bots to talk to people they suspect are anything from violent sex criminals all the way to vaguely defined “protesters.” 

<br> 

<https://www.404media.co/this-college-protester-isnt-real-its-an-ai-powered-undercover-bot-for-cops/>

---

## How to build a home recording studio with Raspberry Pi 500: choosing your equipment

date: 2025-04-17, from: Raspberry Pi News (.com)

<p>Here’s what you need to know to equip your Raspberry Pi 500 home recording studio, from micro to medium budgets.</p>
<p>The post <a href="https://www.raspberrypi.com/news/build-a-home-recording-studio-with-raspberry-pi-500-choosing-your-equipment/">How to build a home recording studio with Raspberry Pi 500: choosing your equipment</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/build-a-home-recording-studio-with-raspberry-pi-500-choosing-your-equipment/>

---

## 292: Rest Here, Weary Doomscroller

date: 2025-04-17, from: Fix the News

That's enough for one day. Plus, extraterrestrial life? A strain of flu disappears, global social services reach historic high, insane mouse brain, deforestation in the Amazon declines (again) and upside down rhinos FTW. 

<br> 

<https://fixthenews.com/292-rest-here-weary-doomscroller/>

---

## Time To Buy Used?

date: 2025-04-17, updated: 2025-04-17, from: Tedium site

With all the added uncertainty in the computing market thanks to tariffs, now would be an excellent time to turn into a savvy used electronics shopper. 

<br> 

<https://feed.tedium.co/link/15204/17008833/used-electronics-advice-tariffs>

---

**@Feed for Alt USDS** (date: 2025-04-17, from: Feed for Alt USDS)

Why is being kind, consistent, and connected one of the most radical things you can do? Find out in the second edition of our newsletter here:

🔗  https://open.substack.com/pub/altusds/p/the-builders-next-door?r=5fies6&utm_campaign=post&utm_medium=web&showWelcomeOnShare=true 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lmxxm3afab2o>

---

## Quoting Ted Sanders, OpenAI

date: 2025-04-17, updated: 2025-04-17, from: Simon Willison’s Weblog

<blockquote cite="https://news.ycombinator.com/item?id=43710698"><p>Our hypothesis is that o4-mini is a much better model, but we'll wait to hear feedback from developers. Evals only tell part of the story, and we wouldn't want to prematurely deprecate a model that developers continue to find value in. Model behavior is extremely high dimensional, and it's impossible to prevent regression on 100% use cases/prompts, especially if those prompts were originally tuned to the quirks of the older model. But if the majority of developers migrate happily, then it may make sense to deprecate at some future point.</p>
<p>We generally want to give developers as stable as an experience as possible, and not force them to swap models every few months whether they want to or not.</p></blockquote>
<p class="cite">&mdash; <a href="https://news.ycombinator.com/item?id=43710698">Ted Sanders, OpenAI</a>, on deprecating o3-mini</p>

    <p>Tags: <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/17/ted-sanders/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-04-17, from: Dave Winer's linkblog)

Twitterlike is a Bad Shape. 

<br> 

<https://osteophage.neocities.org/essays/twitterlike>

---

**@Feed for Alt USDS** (date: 2025-04-17, from: Feed for Alt USDS)

This is one of our friends talking about how DOGE dropping into the U.S. Digital Service felt from the inside. Her story helps understand the early days of DOGE. Listen now! 

🔗 https://play.prx.org/listen?ge=prx_8376_e983059a-03b5-4ba5-88ed-f850ff01392d

#altgov #altusds #altdoge 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lmxskvv7pe2e>

---

**@Dave Winer's linkblog** (date: 2025-04-16, from: Dave Winer's linkblog)

The menu for the new Vietnamese restaurant in Bearsville. 

<br> 

<https://www.tibetphowoodstock.com/order>

---

## 557. 1066: The Norman Conquest (Part 4)

date: 2025-04-16, from: This is history podcast

<p>What happened in the aftermath of the Battle of Hastings? What horrors did William the Conqueror have to inflict upon his Anglo Saxon subjects in order to consolidate his new realm? And, what role did castles, the Harrowing of the North, and the Doomsday Book play in the creation of a new England? Join Tom [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/557-1066-the-norman-conquest-part-4/">557. 1066: The Norman Conquest (Part 4)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/557-1066-the-norman-conquest-part-4/>

---

**@Dave Winer's linkblog** (date: 2025-04-16, from: Dave Winer's linkblog)

If you&#39;re not paying for the product, you are the product. 

<br> 

<https://www.quora.com/Who-originally-suggested-that-if-youre-not-paying-for-the-product-you-are-the-product>

---

**@Dave Winer's linkblog** (date: 2025-04-16, from: Dave Winer's linkblog)

The Real Discomfort of ‘Adolescence.’ 

<br> 

<https://www.theatlantic.com/culture/archive/2025/04/adolescence-netflix-manosphere-episode-3/682482/?gift=f35zZN0v_gDFE8xNwlQAHURPSH1l65uCXbAdSgE2d_8&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

## Quoting James Betker

date: 2025-04-16, updated: 2025-04-16, from: Simon Willison’s Weblog

<blockquote cite="https://news.ycombinator.com/item?id=43707719#43711155"><p>I work for OpenAI. [...] o4-mini is actually a <em>considerably</em> better vision model than o3, despite the benchmarks. Similar to how o3-mini-high was a much better coding model than o1. I would recommend using o4-mini-high over o3 for any task involving vision.</p></blockquote>
<p class="cite">&mdash; <a href="https://news.ycombinator.com/item?id=43707719#43711155">James Betker</a>, OpenAI</p>

    <p>Tags: <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/16/james-betker/#atom-everything>

---

**@Robert's feed at BlueSky** (date: 2025-04-16, from: Robert's feed at BlueSky)

👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lmxn6oj64c2e>

---

**@Dave Winer's linkblog** (date: 2025-04-16, from: Dave Winer's linkblog)

Bluesky’s real strength is its user community — not its protocol. 

<br> 

<https://daveverse.wordpress.com/2025/04/16/blueskys-real-strength-is-its-user-community-not-its-protocol/>

---

## Boycotting US Companies

date: 2025-04-16, from: Stephen Smith's blog

Introduction With the ongoing US tariff battle against Canada and the rest of the world, people are looking to boycott US companies as much as possible. As the US imposes tariffs on other countries, they retaliate, making US products more expensive. Further, many people feel their governments aren’t being tough enough against the US and [&#8230;] 

<br> 

<https://smist08.wordpress.com/2025/04/16/boycotting-us-companies/>

---

## LAPD Publishes Crime Footage It Got From a Waymo Driverless Car

date: 2025-04-16, from: 404 Media Group

Police are starting to realize they can demand footage from driverless cars. 

<br> 

<https://www.404media.co/lapd-publishes-crime-footage-it-got-from-a-waymo-driverless-car/>

---

## Lilbits: Cybersecurity funding, single-board PCs for AI, saving text from screenshots, and Linux on MacBooks

date: 2025-04-16, from: Liliputing

<p>For more than two decades the US government has funded the CVE Program, which tracks and publicly discloses cybersecurity vulnerabilities in a uniform manner. But this week it looked like the federal contract that funds the organization could be set to expire, which could have had a pretty serious impact on global cybersecurity efforts. That [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-cybersecurity-funding-single-board-pcs-for-ai-saving-text-from-screenshots-and-linux-on-macbooks/">Lilbits: Cybersecurity funding, single-board PCs for AI, saving text from screenshots, and Linux on MacBooks</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-cybersecurity-funding-single-board-pcs-for-ai-saving-text-from-screenshots-and-linux-on-macbooks/>

---

## Carbon Copy Cloner 7.1

date: 2025-04-16, from: Michael Tsai

Bombich Software: For Sonoma and Sequoia users, CCC now offers an option to set a custom icon on locally-attached source and destination volumes. Select an image of your own, or get creative with Apple&#8217;s new Image Playground. I&#8217;ve been doing this manually (dragging into Finder&#8217;s Get Info window), and I find that it really helps [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/16/carbon-copy-cloner-7-1/>

---

## India’s Repair Culture Gives New Life to Dead Laptops

date: 2025-04-16, from: Michael Tsai

Peter Mommsen: Around the globe, governments are increasingly committed to making the right to repair the law of the land. India&#8217;s Ministry of Consumer Affairs is developing a set of rules requiring manufacturers of electronics, farm equipment, and automobiles to let people fix products themselves. France requires tech manufacturers to register their products with a [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/16/indias-repair-culture-gives-new-life-to-dead-laptops/>

---

## Right to Repair Legislation in 50 States

date: 2025-04-16, from: Michael Tsai

Jason Koebler: Right to repair legislation has now been introduced in all 50 states, a milestone that, despite not all passing, shows the power of the grassroots political movement. Thursday, Wisconsin became the final state in the country to introduce a right to repair bill. So far, right to repair laws have been passed in [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/16/right-to-repair-legislation-in-50-states/>

---

## ”Those claiming we’re mere months away from AI agents replacing most programmers” should think again

date: 2025-04-16, from: Gary Marcus blog

AI agents will change the world. But not this year. 

<br> 

<https://garymarcus.substack.com/p/those-claiming-were-mere-months-away>

---

## Introducing OpenAI o3 and o4-mini

date: 2025-04-16, updated: 2025-04-16, from: Simon Willison’s Weblog

<p><strong><a href="https://openai.com/index/introducing-o3-and-o4-mini/">Introducing OpenAI o3 and o4-mini</a></strong></p>
OpenAI are <em>really</em> emphasizing tool use with these:</p>
<blockquote>
<p>For the first time, our reasoning models can agentically use and combine every tool within ChatGPT—this includes searching the web, analyzing uploaded files and other data with Python, reasoning deeply about visual inputs, and even generating images. Critically, these models are trained to reason about when and how to use tools to produce detailed and thoughtful answers in the right output formats, typically in under a minute, to solve more complex problems.</p>
</blockquote>
<p>I released <a href="https://github.com/simonw/llm-openai-plugin/releases/tag/0.3">llm-openai-plugin 0.3</a> adding support for the two new models:</p>
<pre><code>llm install -U llm-openai-plugin
llm -m openai/o3 "say hi in five languages"
llm -m openai/o4-mini "say hi in five languages"
</code></pre>
<p>Here are <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle/">the pelicans riding bicycles</a> (prompt: <code>Generate an SVG of a pelican riding a bicycle</code>).</p>
<p><strong>o3</strong>:</p>
<p><img alt="Described by o3: The illustration shows a playful, stylized bicycle whose frame is drawn to resemble a duck. • The duck’s rounded body forms the bicycle’s seat area, and a small wing is sketched on its side.  • Its long neck stretches forward to become the top tube, ending in a simple head with a black eye and an orange, open beak that points ahead like handlebars.  • Two large black‑outlined wheels with thin, evenly spaced spokes complete the bike, while thin blue lines depict the rest of the frame, pedals, and chain.  • A dashed grey ground line runs beneath the wheels, giving the impression the duck‑bike is rolling along." src="https://static.simonwillison.net/static/2025/o3-pelican.jpg" /></p>
<p><strong>o4-mini</strong>:</p>
<p><img alt="Described by o4-mini: The image is a very simple, minimalistic line drawing of a bird riding a bicycle, rendered against a plain white background.  Key elements:   • Two large, identical circles for the bike’s wheels, outlined in thick black.   • A horizontal bar links the rear wheel to the bird’s body; a slanted bar links the front wheel to the bird.   • The front wheel has a single straight spoke ending in an arrowhead, suggesting the forward direction of travel.   • The bird itself is drawn with basic shapes:     – A small circle for the head, with a single dot for the eye and a short yellow triangle for the beak.     – An oval for the body.     – Thin lines for the neck, legs, and the bike’s pedals and handlebars.   • The bird appears perched on the saddle, its legs extending down to the pedals, and its tiny wings resting near the handlebars." src="https://static.simonwillison.net/static/2025/o4-mini-pelican.jpg" /></p>
<p>Here are the full OpenAI model listings: <a href="https://platform.openai.com/docs/models/o3">o3</a> is $10/million input and $40/million for output, with a 75% discount on cached input tokens, 200,000 token context window, 100,000 max output tokens and a May 31st 2024 training cut-off (same as the GPT-4.1 models). It's a bit cheaper than o1 ($15/$60) and a <em>lot</em> cheaper than o1-pro ($150/$600).</p>
<p><a href="https://platform.openai.com/docs/models/o4-mini">o4-mini</a> is priced the same as o3-mini: $1.10/million for input and $4.40/million for output,  also with a 75% input caching discount. The size limits and training cut-off are the same as o3.</p>
<p>You can compare these prices with other models using the table on my <a href="https://tools.simonwillison.net/llm-prices">updated LLM pricing calculator</a>.</p>
<p>A new capability released today is that the OpenAI API can now optionally return reasoning summary text. I've been exploring that <a href="https://github.com/simonw/llm-openai-plugin/issues/16">in this issue</a>. I believe you have to verify your organization (which may involve a photo ID) in order to use this option - once you have access the easiest way to see the new tokens is using <code>curl</code> like this:</p>
<pre><code>curl https://api.openai.com/v1/responses \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $(llm keys get openai)" \
  -d '{
    "model": "o3",
    "input": "why is the sky blue?",
    "reasoning": {"summary": "auto"},
    "stream": true
  }'
</code></pre>
<p>This produces a stream of events that includes this new event type:</p>
<p><code>event: response.reasoning_summary_text.delta</code><br>
<code>data: {"type": "response.reasoning_summary_text.delta","item_id": "rs_68004320496081918e1e75ddb550d56e0e9a94ce520f0206","output_index": 0,"summary_index": 0,"delta": "**Expl"}</code></p>
<p>Omit the <code>"stream": true</code> and the response is easier to read and contains this:</p>
<pre>{
  <span class="pl-ent">"output"</span>: [
    {
      <span class="pl-ent">"id"</span>: <span class="pl-s"><span class="pl-pds">"</span>rs_68004edd2150819183789a867a9de671069bc0c439268c95<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"type"</span>: <span class="pl-s"><span class="pl-pds">"</span>reasoning<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"summary"</span>: [
        {
          <span class="pl-ent">"type"</span>: <span class="pl-s"><span class="pl-pds">"</span>summary_text<span class="pl-pds">"</span></span>,
          <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>**Explaining the blue sky**<span class="pl-cce">\n\n</span>The user asks a classic question about why the sky is blue. I'll talk about Rayleigh scattering, where shorter wavelengths of light scatter more than longer ones. This explains how we see blue light spread across the sky! I wonder if the user wants a more scientific or simpler everyday explanation. I'll aim for a straightforward response while keeping it engaging and informative. So, let's break it down!<span class="pl-pds">"</span></span>
        }
      ]
    },
    {
      <span class="pl-ent">"id"</span>: <span class="pl-s"><span class="pl-pds">"</span>msg_68004edf9f5c819188a71a2c40fb9265069bc0c439268c95<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"type"</span>: <span class="pl-s"><span class="pl-pds">"</span>message<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"status"</span>: <span class="pl-s"><span class="pl-pds">"</span>completed<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"content"</span>: [
        {
          <span class="pl-ent">"type"</span>: <span class="pl-s"><span class="pl-pds">"</span>output_text<span class="pl-pds">"</span></span>,
          <span class="pl-ent">"annotations"</span>: [],
          <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>The short answer ...<span class="pl-pds">"</span></span>
        }
      ]
    }
  ]
}</pre>


    <p>Tags: <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a>, <a href="https://simonwillison.net/tags/llm-pricing">llm-pricing</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llm-reasoning">llm-reasoning</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/16/introducing-openai-o3-and-o4-mini/#atom-everything>

---

## openai/codex

date: 2025-04-16, updated: 2025-04-16, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/openai/codex">openai/codex</a></strong></p>
Just released by OpenAI, a "lightweight coding agent that runs in your terminal". Looks like their version of <a href="https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview">Claude Code</a>, though unlike Claude Code Codex is released under an open source (Apache 2) license.</p>
<p>Here's <a href="https://github.com/openai/codex/blob/9b733fc48fb81b3f3460c1fdda111ba9b861f81f/codex-cli/src/utils/agent/agent-loop.ts#L1001-L1046">the main prompt</a> that runs in a loop, which starts like this:</p>
<blockquote>
<p><code>You are operating as and within the Codex CLI, a terminal-based agentic coding assistant built by OpenAI. It wraps OpenAI models to enable natural language interaction with a local codebase. You are expected to be precise, safe, and helpful.</code></p>
<p><code>You can:</code><br>
<code>- Receive user prompts, project context, and files.</code><br>
<code>- Stream responses and emit function calls (e.g., shell commands, code edits).</code><br>
<code>- Apply patches, run commands, and manage user approvals based on policy.</code><br>
<code>- Work inside a sandboxed, git-backed workspace with rollback support.</code><br>
<code>- Log telemetry so sessions can be replayed or inspected later.</code><br>
<code>- More details on your functionality are available at codex --help</code><br></p>
<p><code>The Codex CLI is open-sourced. Don't confuse yourself with the old Codex language model built by OpenAI many moons ago (this is understandably top of mind for you!). Within this context, Codex refers to the open-source agentic coding interface. [...]</code></p>
</blockquote>
<p>I like that the prompt describes OpenAI's previous Codex language model as being from "many moons ago". Prompt engineering is so weird.</p>
<p>Since the prompt says that it works "inside a sandboxed, git-backed workspace" I went looking for the sandbox. On macOS <a href="https://github.com/openai/codex/blob/9b733fc48fb81b3f3460c1fdda111ba9b861f81f/codex-cli/src/utils/agent/sandbox/macos-seatbelt.ts">it uses</a> the little-known <code>sandbox-exec</code> process, part of the OS but grossly under-documented. The best information I've found about it is <a href="https://www.karltarvas.com/macos-app-sandboxing-via-sandbox-exec.html">this article from 2020</a>, which notes that <code>man sandbox-exec</code> lists it as deprecated. I didn't spot evidence in the Codex code of sandboxes for other platforms.


    <p>Tags: <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/open-source">open-source</a>, <a href="https://simonwillison.net/tags/prompt-engineering">prompt-engineering</a>, <a href="https://simonwillison.net/tags/sandboxing">sandboxing</a>, <a href="https://simonwillison.net/tags/macos">macos</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/16/openai-codex/#atom-everything>

---

## Anbernic RG557 gaming handheld has a 5.5 inch AMOLED display, Dimensity 8300 processor and 12GB RAM

date: 2025-04-16, from: Liliputing

<p>Anbernic makes a lot of handheld game consoles, most of which are relatively inexpensive devices capable of playing games designed for older consoles. But the new Anbernic RG557 has the kind of hardware you might expect to find in a decent mid-range smartphone. A recent teaser video suggests that it should be able to handle recent Android games [&#8230;]</p>
<p>The post <a href="https://liliputing.com/anbernic-rg557-gaming-handheld-has-a-5-5-inch-amoled-display-dimensity-8300-processor-and-12gb-ram/">Anbernic RG557 gaming handheld has a 5.5 inch AMOLED display, Dimensity 8300 processor and 12GB RAM</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/anbernic-rg557-gaming-handheld-has-a-5-5-inch-amoled-display-dimensity-8300-processor-and-12gb-ram/>

---

## AI Companies Should Embrace Sharp Angles

date: 2025-04-16, updated: 2025-04-16, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/04/16/ai-companies-should-embrace-sharp-angles/>

---

## Following Layoffs, Automattic Employees Discover Leak-Catching Watermarks

date: 2025-04-16, from: 404 Media Group

The watermarks, which could identify people leaking screenshots to the press, are in the background of internal communications platform P2. 

<br> 

<https://www.404media.co/automattic-wordpress-p2-watermark-leakers/>

---

## REDMAGIC 10 Air is a thinner, lighter gaming phone

date: 2025-04-16, from: Liliputing

<p>Gaming smartphone brand REDMAGIC&#8217;s latest flagship is the REDMAGIC 10 Pro, which launched late last year with a 6.85 Hz, 144 Hz display, a Qualcomm Snapdragon 8 Elite processor, and a massive 7050 mAh battery. But now the company is introducing a new model for folks willing to trade a little horsepower for a thinner, [&#8230;]</p>
<p>The post <a href="https://liliputing.com/redmagic-10-air-is-a-thinner-lighter-gaming-phone/">REDMAGIC 10 Air is a thinner, lighter gaming phone</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/redmagic-10-air-is-a-thinner-lighter-gaming-phone/>

---

## The Evangelist’s Guide to Winning Any Argument

date: 2025-04-16, from: Guy Kawasaki blog

The goal isn&#8217;t to win at all costs&#8212;it&#8217;s to inspire, connect, and create change. 

<br> 

<https://guykawasaki.substack.com/p/the-evangelists-guide-to-winning>

---

## Cerebro clusterboard supports up to four Raspberry Pi, NVIDIA Jetson, or Radxa CM5 compute modules (crowdfunding)

date: 2025-04-16, from: Liliputing

<p>What&#8217;s better than a Raspberry Pi Compute Module? If you&#8217;re working on projects that support parallel processing, the answer might be two Raspberry Pi Compute Modules&#8230; or maybe four of them. The Cerebro clusterboard is designed to let you attach up to four compute modules to a single baseboard. It supports Raspberry Pi CM4 and CM5 [&#8230;]</p>
<p>The post <a href="https://liliputing.com/cerebro-clusterboard-supports-up-to-four-raspberry-pi-nvidia-jetson-or-radxa-cm5-compute-modules-crowdfunding/">Cerebro clusterboard supports up to four Raspberry Pi, NVIDIA Jetson, or Radxa CM5 compute modules (crowdfunding)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/cerebro-clusterboard-supports-up-to-four-raspberry-pi-nvidia-jetson-or-radxa-cm5-compute-modules-crowdfunding/>

---

## ICE Just Paid Palantir Tens of Millions for ‘Complete Target Analysis of Known Populations’

date: 2025-04-16, from: 404 Media Group

The records show that Palantir is actively working on the technical infrastructure underpinning the Trump administration’s mass deportation efforts which could soon impact U.S. citizens. 

<br> 

<https://www.404media.co/ice-just-paid-palantir-tens-of-millions-for-complete-target-analysis-of-known-populations/>

---

## Podcast: Inside the ICE Deportation Tool

date: 2025-04-16, from: 404 Media Group

The powerful database and tool ICE has access to; the AI service that will call your parents for you; and the apparent hack of 4chan. 

<br> 

<https://www.404media.co/podcast-inside-the-ice-deportation-tool/>

---

## I Went to See ‘God’s Influencer,’ the Millennial Saint Carlo Acutis

date: 2025-04-16, from: 404 Media Group

Carlo loved Halo and programming, but he loved God more. I went to see him, lying under glass in his Nikes for eternity, at a church in Assisi.   

<br> 

<https://www.404media.co/visit-carlo-acutis-millennial-saint-assisi/>

---

## Trump Is Creating a Deportation Army of Local Cops

date: 2025-04-16, from: The Markup blog

The number of state and local ICE partnerships has spiked this year—especially in Florida 

<br> 

<https://themarkup.org/2025/04/16/trump-is-creating-a-deportation-army-of-local-cops>

---

## Here’s Every Local Police Agency Enforcing for ICE

date: 2025-04-16, from: The Markup blog

Partnerships more than doubled during the first months of Trump's current term under a program known as 287(g) 

<br> 

<https://themarkup.org/tools/2025/04/16/law-enforcement-ice-cooperation-tracker>

---

## Comics from January/February 1983 Issue of Today Mag

date: 2025-04-16, from: Computer ads from the Past

Time for some oldie levity. 

<br> 

<https://computeradsfromthepast.substack.com/p/comics-from-januaryfebruary-1983>

---

## Follow ooh.directory on Bluesky

date: 2025-04-16, from: ooh.directory blog

In case getting updates about ooh.directory via RSS feed, email, or on Mastodon isn&#x27;t enough, you can now also get them from&amp;nbsp;the site&#x27;s new Bluesky account. 

<br> 

<https://ooh.directory/blog/2025/bluesky/>

---

## THE DISCRETE CHARM OF THE TURING MACHINE in Spanish

date: 2025-04-16, from: Greg Egan's feed

A Spanish translation of my story THE DISCRETE CHARM OF THE TURING MACHINE 

<br> 

<https://cuentosparaalgernon.wordpress.com/2025/04/15/el-discreto-encanto-de-la-maquina-de-turing-de-greg-egan/>

---

## Asahi Lina releases all code as CC0 out of frustration

date: 2025-04-16, from: Libre News

After Lina stepped down from development, we  (regrettably) have a new episode of the Asahi Linux drama series. 

<br> 

<https://thelibre.news/asahi-lina-releases-all-code-as-cc0-out-of-frustration/>

---

## Why Trump Will Lose His Trade War

date: 2025-04-16, from: Paul Krugman

His people don&#8217;t know what they&#8217;re doing or what they want 

<br> 

<https://paulkrugman.substack.com/p/why-trump-will-lose-his-trade-war>

---

**@Robert's feed at BlueSky** (date: 2025-04-16, from: Robert's feed at BlueSky)

👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lmvuoswvd22f>

---

**@Robert's feed at BlueSky** (date: 2025-04-16, from: Robert's feed at BlueSky)

Truth.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lmvtxjr4uk2f>

---

## Altman vs Musk cage match

date: 2025-04-16, from: Gary Marcus blog

Uh oh. Now Altman wants to build a social media company, to compete with X. Who should we root for? 

<br> 

<https://garymarcus.substack.com/p/altman-vs-musk-cage-match>

---

**@Feed for Alt USDS** (date: 2025-04-16, from: Feed for Alt USDS)

Profiles in courage.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lmvov53xz22s>

---

**@Feed for Alt USDS** (date: 2025-04-16, from: Feed for Alt USDS)

The IRS agreed to share taxpayer data with ICE last week. Read this post by one of our engineers and leaders that describes the technical risks to this unprecedented (and probably illegal) agreement.

🔗 https://wethebuilders.org/posts/risks-of-sharing-taxpayer-data

#IRSxICE #handsoffourdata 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lmvmzuewxv2o>

---

**@Dave Winer's linkblog** (date: 2025-04-16, from: Dave Winer's linkblog)

Texas just shot its wind + solar boom in the foot on purpose. 

<br> 

<https://electrek.co/2025/04/15/texas-just-shot-its-wind-solar-boom-in-the-foot-on-purpose/>

---

**@Dave Winer's linkblog** (date: 2025-04-16, from: Dave Winer's linkblog)

AmeriCorps. 

<br> 

<https://en.m.wikipedia.org/wiki/AmeriCorps>

---

**@Dave Winer's linkblog** (date: 2025-04-16, from: Dave Winer's linkblog)

$109K for a church in Ohio. Wish I had a use for one of these. 

<br> 

<https://www.zillow.com/homedetails/1515-W-County-Road-592-Tiffin-OH-44883/449849167_zpid/>

---

## Our New Resources Page for Web Archivists

date: 2025-04-16, from: Web Recorder

A growing hub for learning, exploring, and diving deeper into web archiving. 

<br> 

<https://webrecorder.net/blog/2025-04-16-our-new-resources-page-for-web-archivists/>

---

**@Dave Winer's linkblog** (date: 2025-04-15, from: Dave Winer's linkblog)

Senator Chuck Grassley grilled at Iowa town hall over ‘shameful’ Trump policies. 

<br> 

<https://www.theguardian.com/us-news/2025/apr/15/chuck-grassley-town-hall>

---

## Cheap Android phones and tablets will need at least 32GB of storage moving forward

date: 2025-04-15, from: Liliputing

<p>Google&#8217;s Android operating system powers billions of Android phones, tablets, TV boxes, and other products and it&#8217;s designed to run on a wide range of hardware including systems with bleeding edge specs and devices with entry-level features. But every now and again Google redefines what qualifies as entry level, and it looks like the company [&#8230;]</p>
<p>The post <a href="https://liliputing.com/cheap-android-phones-and-tablets-will-need-at-least-32gb-of-storage-moving-forward/">Cheap Android phones and tablets will need at least 32GB of storage moving forward</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/cheap-android-phones-and-tablets-will-need-at-least-32gb-of-storage-moving-forward/>

---

## Book: Careless People

date: 2025-04-15, from: Accidentally in Code

Facebook tried to shut it down, so obviously like so many others I had to read it! Careless People covers the period of 2011-2017, the author pitches a job to Facebook working in policy, and was there from the inception of Facebook getting involved with governments. It&#8217;s a well written, engaging story. The author knows [&#8230;] 

<br> 

<https://cate.blog/2025/04/15/book-careless-people/>

---

**@Dave Winer's linkblog** (date: 2025-04-15, from: Dave Winer's linkblog)

OpenAI is building a social network. Whoa great freaking news. They should support two-way RSS! Social web for the win! 🏅 

<br> 

<https://www.theverge.com/openai/648130/openai-social-network-x-competitor>

---

**@Dave Winer's linkblog** (date: 2025-04-15, from: Dave Winer's linkblog)

Democrats Want to Visit El Salvador Prison. 

<br> 

<https://politicalwire.com/2025/04/15/democrats-want-to-visit-el-salvador-prison/>

---

**@Dave Winer's linkblog** (date: 2025-04-15, from: Dave Winer's linkblog)

Liz Truss to launch ‘uncensored’ social network to counter mainstream media. 

<br> 

<https://www.theguardian.com/politics/2025/apr/15/liz-truss-to-launch-uncensored-social-network-to-counter-mainstream-media>

---

## The Zuck and Elon Speak

date: 2025-04-15, updated: 2025-04-15, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/04/15/the-zuck-and-elon-speak/>

---

## Dell 14 Plus 2-in-1 laptop now available with AMD Krackan Point or Intel Lunar Lake

date: 2025-04-15, from: Liliputing

<p>The Dell 14 Plus 2-in-1 is a convertible notebook with a 14 inch, 1920 x 1200 pixel touchscreen display, a 360 degree hinge and a body that weighs about 3.5 pounds and measures 16mm (0.65 inches) at its thickest point. Last month Dell launched a version of this notebook with support for up to an Intel [&#8230;]</p>
<p>The post <a href="https://liliputing.com/dell-14-plus-2-in-1-laptop-now-available-with-amd-krackan-point-or-intel-lunar-lake/">Dell 14 Plus 2-in-1 laptop now available with AMD Krackan Point or Intel Lunar Lake</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/dell-14-plus-2-in-1-laptop-now-available-with-amd-krackan-point-or-intel-lunar-lake/>

---

**@Dave Winer's linkblog** (date: 2025-04-15, from: Dave Winer's linkblog)

Messaging Apps: Security Matters. 

<br> 

<https://guykawasaki.substack.com/p/messaging-apps-security-matters?publication_id=2664509&post_id=161311873&isFreemail=true&r=ykjb&triedRedirect=true>

---

## Quoting Hamel Husain

date: 2025-04-15, updated: 2025-04-15, from: Simon Willison’s Weblog

<blockquote cite="https://www.oreilly.com/radar/a-field-guide-to-rapidly-improving-ai-products/"><p>The single most impactful investment I’ve seen AI teams make isn’t a fancy evaluation dashboard—it’s building a customized interface that lets anyone examine what their AI is actually doing. I emphasize <em>customized</em> because every domain has unique needs that off-the-shelf tools rarely address. When reviewing apartment leasing conversations, you need to see the full chat history and scheduling context. For real-estate queries, you need the property details and source documents right there. Even small UX decisions—like where to place metadata or which filters to expose—can make the difference between a tool people actually use and one they avoid. [...]</p>
<p>Teams with thoughtfully designed data viewers iterate 10x faster than those without them. And here’s the thing: These tools can be built in hours using AI-assisted development (like Cursor or Loveable). The investment is minimal compared to the returns.</p></blockquote>
<p class="cite">&mdash; <a href="https://www.oreilly.com/radar/a-field-guide-to-rapidly-improving-ai-products/">Hamel Husain</a>, A Field Guide to Rapidly Improving AI Products</p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/datasette">datasette</a>, <a href="https://simonwillison.net/tags/hamel-husain">hamel-husain</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/15/hamel-husain/#atom-everything>

---

## Daily Deals (4-15-2025)

date: 2025-04-15, from: Liliputing

<p>The Apple TV+ adaptation of Martha Wells&#8217; Murderbot series of books debuts on May 16th. And if you&#8217;re looking to tune in without paying full price for an Apple TV+ subscription, you might want to take advantage of a deal that lets new or returning subscribers pay $2.99 per month for up to three months. [&#8230;]</p>
<p>The post <a href="https://liliputing.com/daily-deals-4-15-2025/">Daily Deals (4-15-2025)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/daily-deals-4-15-2025/>

---

## WTF 2.0: Paul Krugman

date: 2025-04-15, from: Paul Krugman

A recording from Paul Krugman and Jonathan V. Last's live video 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/161398308/9faecae855c476b9e5d580e49556c32f.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/161398308/9faecae855c476b9e5d580e49556c32f.mp3" target="_blank">download audio/mpeg</a><br> 

<https://paulkrugman.substack.com/p/wtf-20-paul-krugman>

---

## dlsym Considered Harmful on iOS 18.4

date: 2025-04-15, from: Michael Tsai

Fabien Perigaud (tweet): This time, we will dynamically resolve and use strcmp(). [&#8230;] Instead of a nice log indicating that the two strings are not the same, our application crashed... [&#8230;] What just happened? Why is the pointer incorrectly signed? Why do I have a kernel pointer in PC? [&#8230;] A XPACI instruction is clearly [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/15/dlsym-considered-harmful-on-ios-18-4/>

---

## How Disk Images and VMs Are More Efficient

date: 2025-04-15, from: Michael Tsai

Howard Oakley: What happens with an Apple silicon VM is a bit more complicated, and harder to observe. This time the virtualisation app should create the disk image inside the VM bundle as a sparse file to begin with, then copy into that what&#8217;s needed for the VM, so skipping the first mount stage and [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/15/how-disk-images-and-vms-are-more-efficient/>

---

## Git at 20

date: 2025-04-15, from: Michael Tsai

Taylor Blau: Exactly twenty years ago, on April 7, 2005, Linus Torvalds made the very first commit to a new version control system called Git. Torvalds famously wrote Git in just 10 days after Linux kernel developers lost access to their proprietary tool, BitKeeper, due to licensing disagreements. In fact, in that first commit, he&#8217;d [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/15/git-at-20/>

---

## 4chan Is Down Following What Looks to Be a Major Hack Spurred By Meme War

date: 2025-04-15, from: 404 Media Group

Hackers claim to have obtained 4chan's code, emails of moderators, and internal communications. 

<br> 

<https://www.404media.co/4chan-is-down-following-what-looks-to-be-a-major-hack-spurred-by-meme-war/>

---

## GMK Evo-X2 mini PC with Ryzen AI Max+ 395 ships in May, up for pre-order now for $1499 and up

date: 2025-04-15, from: Liliputing

<p>The GMK Evo-X2 is a little computer that packs a lot of processing power thanks to an AMD Ryzen AI Max+ 395 Strix Halo processor with 16 CPU cores, 32 threads, Radeon 8060S integrated graphics and an NPU with up to 50 TOPS of AI processing performance. First unveiled in March, the Evo-X2 is now available [&#8230;]</p>
<p>The post <a href="https://liliputing.com/gmk-evo-x2-mini-pc-with-ryzen-ai-max-395-ships-in-may-up-for-pre-order-now-for-1499-and-up/">GMK Evo-X2 mini PC with Ryzen AI Max+ 395 ships in May, up for pre-order now for $1499 and up</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/gmk-evo-x2-mini-pc-with-ryzen-ai-max-395-ships-in-may-up-for-pre-order-now-for-1499-and-up/>

---

## How would an old school techno-optimist make sense of the Trump administration?

date: 2025-04-15, from: Dave Karpf's blog

<This is me venting.> I just need to vent for a moment. 

<br> 

<https://davekarpf.substack.com/p/how-would-an-old-school-techno-optimist>

---

## The War Between the States – Civil War sites in the National Register of Historic Places

date: 2025-04-15, from: National Archives, Text Message blog

Last Saturday marked the 164th anniversary of the start of the Civil War, which started on April 12, 1861, when the Confederacy bombarded the Union fort, Fort Sumter in South Carolina.&#160; There are a number of properties in the National Register, specific to the Civil War, including the Fort Sumter National Monument on Sullivan’s Island &#8230; <a href="https://text-message.blogs.archives.gov/2025/04/15/the-war-between-the-states-civil-war-sites-in-the-national-register-of-historic-places/" class="more-link">Continue reading <span class="screen-reader-text">The War Between the States – Civil War sites in the National Register of Historic Places</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/04/15/the-war-between-the-states-civil-war-sites-in-the-national-register-of-historic-places/>

---

## Messaging Apps: Security Matters

date: 2025-04-15, from: Guy Kawasaki blog

Frederick Scholl, Associate Teaching Professor of Cybersecurity, Quinnipiac University 

<br> 

<https://guykawasaki.substack.com/p/messaging-apps-security-matters>

---

## The AI Tools CBP Is Using to Scan Social Media

date: 2025-04-15, from: 404 Media Group

Customs and Border Protection released more documents last week that show which AI-powered tools that agency has been using to identify people of interest. 

<br> 

<https://www.404media.co/the-ai-tools-cbp-is-using-to-scan-social-media/>

---

## Google DeepMind Is Hiring a 'Post-AGI' Research Scientist

date: 2025-04-15, from: 404 Media Group

Google is preparing for a future with AGI, ASI, and machine consciousness. 

<br> 

<https://www.404media.co/google-deepmind-is-hiring-a-post-agi-research-scientist/>

---

## Space Oddity, Goodfellas in the White House, and my New Coping Mechanism

date: 2025-04-15, from: Tina Brown

A friend of mine in her forties hosted a birthday party last week at New York&#8217;s most glamorous new club with the dress code of &#8220;drop-dead sexy,&#8221; which gave me a burst of insecurity. 

<br> 

<https://tinabrown.substack.com/p/space-oddity-goodfellas-in-the-white>

---

**@Robert's feed at BlueSky** (date: 2025-04-15, from: Robert's feed at BlueSky)

This is an idea worth revisiting in academia. http://scripting.com/2025/04/14.html#a132939 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lmucgduy3k2x>

---

## Inside the Economy of AI Spammers Getting Rich By Exploiting Disasters and Misery

date: 2025-04-15, from: 404 Media Group

How AI spammers monetized the LA fires and other natural disasters. 

<br> 

<https://www.404media.co/inside-the-economy-of-ai-spammers-getting-rich-by-exploiting-disasters-and-misery/>

---

**@Robert's feed at BlueSky** (date: 2025-04-15, from: Robert's feed at BlueSky)

👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lmu7ozh6zc2x>

---

**@Dave Winer's linkblog** (date: 2025-04-15, from: Dave Winer's linkblog)

The history of Tesla&#39;s self-driving computers. I didn&#39;t know there was such a thing, though I paid the extra money for self-driving. 

<br> 

<https://electrek.co/2025/04/14/tesla-tsla-replace-computer-4-million-cars-or-compensate-their-owners/>

---

## PureOS Crimson Development Report: March 2025

date: 2025-04-15, from: Purism News and Events

<p>Welcome back!  Since our first update in July 2024, our PureOS Crimson updates have addressed major foundational work.  We've handled archive maintenance, infrastructure work, and critical functionality.  These lay the foundation for a solid operating system.  Now that the foundations are strong, we're working up the stack into the individual packages that form PureOS.</p>
<p>The post <a rel="nofollow" href="https://puri.sm/posts/pureos-crimson-development-report-march-2025/">PureOS Crimson Development Report: March 2025</a> appeared first on <a rel="nofollow" href="https://puri.sm/">Purism</a>.</p>
 

<br> 

<https://puri.sm/posts/pureos-crimson-development-report-march-2025/>

---

## Wayland has a bright future ahead

date: 2025-04-15, from: Libre News

The move from Xorg to Wayland had a rough start, but things have improved, and there is an exciting roadmap for the future.  

<br> 

<https://thelibre.news/wayland-has-a-bright-future-ahead/>

---

## Happy Tax Evasion Day!

date: 2025-04-15, from: Paul Krugman

DOGE is stealing your tax revenue and giving it to rich cheaters 

<br> 

<https://paulkrugman.substack.com/p/happy-tax-evasion-day>

---

## A Field Guide to Rapidly Improving AI Products

date: 2025-04-15, from: O'Reilly Radar

Most AI teams focus on the wrong things. Here’s a common scene from my consulting work: AI TEAMHere’s our agent architecture—we’ve got RAG here, a router there, and we’re using this new framework for… ME[Holding up my hand to pause the enthusiastic tech lead]Can you show me how you’re measuring if any of this actually [&#8230;] 

<br> 

<https://www.oreilly.com/radar/a-field-guide-to-rapidly-improving-ai-products/>

---

## Harnessing RP2040 for microgravity research in zero-g parabolic flight

date: 2025-04-15, from: Raspberry Pi News (.com)

<p>Exploring how plants behave in microgravity, researchers turned to RP2040 for low-cost automation, sensing, and control.</p>
<p>The post <a href="https://www.raspberrypi.com/news/harnessing-rp2040-for-microgravity-research-in-zero-g-parabolic-flight/">Harnessing RP2040 for microgravity research in zero-g parabolic flight</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/harnessing-rp2040-for-microgravity-research-in-zero-g-parabolic-flight/>

---

## AI, scraping, nepenthes, fail2ban

date: 2025-04-15, updated: 2025-04-15, from: Peter Molnar blog

A quick guide on combining an anti-AI tarpit with automatic blocking 

<br> 

<https://petermolnar.net/article/anti-ai-nepenthes-fail2ban/>

---

**@Dave Winer's linkblog** (date: 2025-04-15, from: Dave Winer's linkblog)

This is not the America we grew up in. 

<br> 

<https://daveverse.wordpress.com/2025/04/15/this-is-not-the-america-we-grew-up-in/>

---

## Don’t Forget The Forgotten Tech User

date: 2025-04-15, updated: 2025-04-15, from: Tedium site

Windows 10’s end-of-life points to the sheer neglect that computer users face when their world isn’t completely defined by technology. 

<br> 

<https://feed.tedium.co/link/15204/17006243/windows-10-forgotten-tech-users>

---

**@Dave Winer's linkblog** (date: 2025-04-15, from: Dave Winer's linkblog)

ChatGPT can now remember and reference all your previous chats. 

<br> 

<https://arstechnica.com/ai/2025/04/chatgpt-can-now-remember-and-reference-all-your-previous-chats/>

---

## Sam Altman’s attitude problem

date: 2025-04-15, from: Gary Marcus blog

What happened to the man who once told the US Senate &#8220;creators deserve control over how their creations are used&#8221;? 

<br> 

<https://garymarcus.substack.com/p/sam-altmans-attitude-problem>

---

**@Dave Winer's linkblog** (date: 2025-04-14, from: Dave Winer's linkblog)

Coffee prices are skyrocketing. What does this mean for East Bay cafes? 

<br> 

<https://www.berkeleyside.org/2025/04/14/coffee-tariffs-rising-prices-local-impact>

---

## My video chat with the brilliant writer and zeitgeist predictor Michael Lewis 

date: 2025-04-14, from: Tina Brown

Our chat roamed from his new book Who is Government? 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/161331615/7b2308cd8292adfbd4295bb8f9117e8c.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/161331615/7b2308cd8292adfbd4295bb8f9117e8c.mp3" target="_blank">download audio/mpeg</a><br> 

<https://tinabrown.substack.com/p/my-video-chat-with-the-brilliant>

---

## Bigme B13 is a portable monitor with a 13.3 inch E Ink color display

date: 2025-04-14, from: Liliputing

<p>The Bigme B13 is a portable monitor with a 13.3 inch, 3200 x 2400 pixel display featuring a 30 Hz refresh rate. There&#8217;s nothing unusual about that, but what makes this little screen stand out is the type of display technology it uses. Rather than LCD or OLED, the Bigme B13 has an E Ink color [&#8230;]</p>
<p>The post <a href="https://liliputing.com/bigme-b13-is-a-portable-monitor-with-a-13-3-inch-e-ink-color-display/">Bigme B13 is a portable monitor with a 13.3 inch E Ink color display</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/bigme-b13-is-a-portable-monitor-with-a-13-3-inch-e-ink-color-display/>

---

**@Robert's feed at BlueSky** (date: 2025-04-14, from: Robert's feed at BlueSky)

This is how easy it should be. I think it is possible even in "static" websites when the tool(s) we use are thought of as read and write.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lmsga72gsk2o>

---

## Pine64 StarPro64 single-board PC with a RISC-V processor and 20 TOPS NPU arrives this month

date: 2025-04-14, from: Liliputing

<p>The StarPro64 is a single-board computer with a quad-core RISC-V processor, hardware-accelerated graphics and support for 8K video playback, and an NPU that delivers nearly 20 TOPS of AI performance. First unveiled last fall, Pine64 now says StarPro64 should be available for purchase before the end of April. The board measures 133 x 80 x 19mm [&#8230;]</p>
<p>The post <a href="https://liliputing.com/pine64-starpro64-single-board-pc-with-a-risc-v-processor-and-20-tops-npu-arrives-this-month/">Pine64 StarPro64 single-board PC with a RISC-V processor and 20 TOPS NPU arrives this month</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/pine64-starpro64-single-board-pc-with-a-risc-v-processor-and-20-tops-npu-arrives-this-month/>

---

**@Dave Winer's linkblog** (date: 2025-04-14, from: Dave Winer's linkblog)

Harvard’s response. 

<br> 

<https://www.harvard.edu/president/news/2025/the-promise-of-american-higher-education/>

---

## GitHub Actions now supports Windows on Arm runners for all public repos

date: 2025-04-14, from: Windows Developer Blog

<p>We are continuously investing in improving the Windows on Arm developer experience by providing and improving the tools needed by developers targeting Arm powered Copilot+ PCs.</p>
<p>Today we are thrilled to announce Windows on Arm runner availability has</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2025/04/14/github-actions-now-supports-windows-on-arm-runners-for-all-public-repos/">GitHub Actions now supports Windows on Arm runners for all public repos</a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<br> 

<https://blogs.windows.com/windowsdeveloper/2025/04/14/github-actions-now-supports-windows-on-arm-runners-for-all-public-repos/>

---

**@Dave Winer's linkblog** (date: 2025-04-14, from: Dave Winer's linkblog)

Bukele’s Offense Against the American People. 

<br> 

<https://talkingpointsmemo.com/edblog/bukeles-offense-against-the-american-people>

---

## GPT-4.1: Three new million token input models from OpenAI, including their cheapest model yet

date: 2025-04-14, updated: 2025-04-14, from: Simon Willison’s Weblog

<p>OpenAI <a href="https://openai.com/index/gpt-4-1/">introduced</a> three new models this morning: GPT-4.1, GPT-4.1 mini and GPT-4.1 nano. These are API-only models right now, not available through the ChatGPT interface (though you can try them out in OpenAI's <a href="https://platform.openai.com/playground">API playground</a>). All three models can handle 1,047,576 tokens of input and 32,768 tokens of output, and all three have a May 31, 2024 cut-off date (their previous models were mostly September 2023).</p>
<p>The models score higher than GPT-4o <em>and</em> GPT-4.5 on coding benchmarks, and do very well on long context benchmarks as well. They also claim improvements in instruction following - following requested formats, obeying negative instructions, sorting output and obeying instructions to say "I don't know".</p>
<p>I released a new version of my <a href="https://github.com/simonw/llm-openai-plugin">llm-openai</a> plugin supporting the new models. This is a new thing for the <a href="https://llm.datasette.io/">LLM</a> ecosystem: previously OpenAI models were only supported in core, which meant I had to ship a full LLM release to add support for them.</p>
<p>You can run the new models like this:</p>
<div class="highlight highlight-source-shell"><pre>llm install llm-openai-plugin -U
llm -m openai/gpt-4.1 <span class="pl-s"><span class="pl-pds">"</span>Generate an SVG of a pelican riding a bicycle<span class="pl-pds">"</span></span></pre></div>
<p>The other model IDs are <code>openai/gpt-4.1-mini</code> and <code>openai/gpt-4.1-nano</code>.</p>
<p>Here's the <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle/">pelican riding a bicycle</a> I got from full sized GPT-4.1:</p>
<p><img src="https://static.simonwillison.net/static/2025/gpt-4.1-pelican.jpg" alt="Not a terrible pelican on a bicycle. The frame is blue, though misshapen. The pelican's legs are detached from its body. It has a nice but square beak." style="max-width: 100%;" /></p>
<p>I'm particularly excited by <a href="https://platform.openai.com/docs/models/gpt-4.1-nano">GPT-4.1 nano</a>, which handles image and text input up to a million tokens and is priced lower than any other previous OpenAI model: $0.10/million for input and $0.40/million for output, less than previous cheapest OpenAI model GPT-4o-mini ($0.15/$0.60). I've updated my <a href="https://tools.simonwillison.net/llm-prices">LLM pricing table</a> to include the new models.</p>
<p>They're not the cheapest overall though: Gemini 2.0 Flash Lite and, Gemini 1.5 Flash 8B, Amazon Nova Lite and Nova Micro and Mistral's 3B, 8B and Small 3.1 hosted models remain less expensive.</p>
<p><img src="https://static.simonwillison.net/static/2025/model-prices-april-14.jpg" alt="Screenshot of the table from that LLM pricing table link above. Amazon Nova Micro is cheapest at $0.035/million input tokens." style="max-width: 100%;" /></p>

<p>As a demonstration of just how cheap GPT-4.1 nano is, consider this photograph I took of some pelicans:</p>

<p><img src="https://static.simonwillison.net/static/2025/two-pelicans.jpg" alt="Description to follow" style="max-width: 100%" /></p>

<p>I ran that through GPT-4.1 nano like this:</p>

<pre>llm -m openai/gpt-4.1-nano describe \
  -a https://static.simonwillison.net/static/2025/two-pelicans.jpg</pre>

<p>And got back this response:</p>

<blockquote><p>The image shows two pelicans flying against a clear blue sky. They are positioned in flight, with their wings extended, showcasing their large wingspan and feather patterns. The pelican on the right appears slightly higher and facing slightly to the left, while the pelican on the left is oriented more horizontally with its beak pointing forward. Both birds display a combination of brown, tan, and white plumage, characteristic of pelicans, with their long beaks prominently visible.</p></blockquote>

<p>Running <code>llm logs -c --usage</code> revealed that this used 1,933 input tokens and 96 output tokens. Passing those through <a href="https://tools.simonwillison.net/llm-prices">the pricing calculator</a> returns a total cost of $0.000232, or 0.0232 cents.</p>

<p>That means I could use GPT-4.1 nano to generate descriptions of 4,310 images like this one for just shy of a dollar.</p>

<p>A few closing thoughts on these new models:</p>
<ul>
<li>
<p>The 1 million input token context thing is a <em>really big deal</em>. The huge token context has been a major competitive advantage for the Google Gemini models for a full year at this point - it's reassuring to see other vendors start to catch up. I'd like to see the same from Anthropic - Claude was the first model to hit 200,000 but hasn't shipped more than that yet (aside from a 500,000 token model that was restricted to their big enterprise partners).</p>
</li>
<li><p>When I added <a href="https://simonwillison.net/2025/Apr/7/long-context-llm/">fragments support</a> to LLM last week the feature was mainly designed to help take advantage of longer context models. It's pleasing to see another one show up so shortly after that release.</p></li>
<li><p>OpenAI's <a href="https://platform.openai.com/docs/guides/prompt-caching">prompt caching</a> mechanism offers an even bigger discount for the 4.1 models: 1/4 the price for input tokens if that same prefix has been used within the past ~5-10 minutes. GPT-4o models only offer a 50% discount for this.</p>
<p>A million token input costs 10 cents with GPT-4.1 nano, but that drops to 2.5 cents if the same input is used again within the 5-10 minute caching time limit.</p></li>
<li>
<p>OpenAI really emphasized code performance for this model. They called out the <a href="https://aider.chat/docs/leaderboards/">Aider benchmark</a> in their announcement post.</p>
</li>
<li>
<p><a href="https://simonwillison.net/2025/Feb/27/introducing-gpt-45/#confidence">As expected</a>, GPT-4.5 turned out to be not long for this world:</p>
<blockquote>
<p>We will also begin deprecating GPT‑4.5 Preview in the API, as GPT‑4.1 offers improved or similar performance on many key capabilities at much lower cost and latency. GPT‑4.5 Preview will be turned off in three months, on July 14, 2025, to allow time for developers to transition</p>
</blockquote>
</li>
<li>
<p>In <a href="https://www.youtube.com/watch?v=kA-P9ood-cE">the livestream announcement</a> Michelle Pokrass <a href="https://www.youtube.com/live/kA-P9ood-cE?t=17s">let slip</a> that the codename for the model was Quasar - that's the name of the stealth model that's <a href="https://openrouter.ai/announcements/stealth-model-quasar-alpha">been previewing on OpenRouter</a> for the past two weeks. That has <a href="https://twitter.com/openrouterai/status/1911833662464864452">now been confirmed</a> by OpenRouter.</p>
</li>
<li>
<p>OpenAI shared a <a href="https://cookbook.openai.com/examples/gpt4-1_prompting_guide">GPT 4.1 Prompting Guide</a>, which includes this tip about long context prompting:</p>
<blockquote>
<p>Especially in long context usage, placement of instructions and context can impact performance. If you have long context in your prompt, ideally place your instructions at both the beginning and end of the provided context, as we found this to perform better than only above or below. If you’d prefer to only have your instructions once, then above the provided context works better than below.</p>
</blockquote>
<p>Adding instructions before the content is incompatible with <a href="https://platform.openai.com/docs/guides/prompt-caching">prompt caching</a> - I always keep the user's varying question at the end, after any longer system instructions or documents, since doing so means multiple different questions can benefit from OpenAI's prefix cache.</p>
<p>They also recommend XML-style delimiters over JSON for long context, suggesting this format (complete with the XML-invalid unquoted attribute) that's similar to the format <a href="https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/use-xml-tags">recommended by Anthropic</a> for Claude:</p>
<div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">doc</span> <span class="pl-e">id</span>=1 <span class="pl-e">title</span>=<span class="pl-s"><span class="pl-pds">"</span>The Fox<span class="pl-pds">"</span></span>&gt;The quick brown fox jumps over the lazy dog&lt;/<span class="pl-ent">doc</span>&gt;</pre></div>
<p>There's an extensive section at the end <a href="https://cookbook.openai.com/examples/gpt4-1_prompting_guide#appendix-generating-and-applying-file-diffs">describing their recommended approach to applying file diffs</a>: "we open-source here one recommended diff format, on which the model has been extensively trained".</p>
</li>
<li><p>One thing notably absent from the GPT-4.1 announcement is any mention of audio support. The "o" in GPT-4o stood for "omni", because it was a multi-modal model with image and audio input and output. The 4.1 models appear to be text and image input and text output only.</p></li>
</ul>
    
        <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/llm-pricing">llm-pricing</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a>, <a href="https://simonwillison.net/tags/long-context">long-context</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/14/gpt-4-1/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-04-14, from: Dave Winer's linkblog)

How Donald Trump Rolled Bill Maher. 

<br> 

<https://www.theframelab.org/how-donald-trump-rolled-bill-maher/?ref=lakoff-and-duran-framelab-newsletter>

---

## World Quantum Day: Embracing Post-Quantum Encryption for a Secure Future

date: 2025-04-14, from: Purism News and Events

<p>Today, on World Quantum Day, we celebrate the incredible advancements in quantum computing—a technology poised to revolutionize industries from healthcare to telecommunications. But as we marvel at its potential, we must also confront the challenges it brings, particularly the existential threat it poses to current encryption systems. At Purism, we are not just preparing for this future; we are actively shaping it by integrating post-quantum cryptography (PQC) into our devices and solutions.</p>
<p>The post <a rel="nofollow" href="https://puri.sm/posts/world-quantum-day-embracing-post-quantum-encryption-for-a-secure-future/">World Quantum Day: Embracing Post-Quantum Encryption for a Secure Future</a> appeared first on <a rel="nofollow" href="https://puri.sm/">Purism</a>.</p>
 

<br> 

<https://puri.sm/posts/world-quantum-day-embracing-post-quantum-encryption-for-a-secure-future/>

---

## Lenovo ThinkPad P14s mobile workstation with AMD Strix Point coming soon

date: 2025-04-14, from: Liliputing

<p>The Lenovo ThinkPad P14s is a mobile workstation-class laptop that combines powerful hardware with a relatively compact design. Last year Lenovo introduced 5th-gen models with Intel and AMD processor options, and now it looks like the company is getting ready to bring a big performance boost with the new ThinkPad P14s Gen 6 series. While [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lenovo-thinkpad-p14s-mobile-workstation-with-amd-strix-point-coming-soon/">Lenovo ThinkPad P14s mobile workstation with AMD Strix Point coming soon</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lenovo-thinkpad-p14s-mobile-workstation-with-amd-strix-point-coming-soon/>

---

## Obituary for Cyc

date: 2025-04-14, from: Michael Tsai

Yuxi Liu (via Hacker News): The legendary Cyc project, Douglas Lenat&#8217;s 40-year quest to build artificial general intelligence by scaling symbolic logic, has failed. Based on extensive archival research, this essay brings to light its secret history so that it may be widely known. [&#8230;] In 1984, he launched Cyc to manually encode millions of [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/14/obituary-for-cyc/>

---

## Google Is Winning on Every AI Front

date: 2025-04-14, from: Michael Tsai

Alberto Romero (via Hacker News): I&#8217;d been holding off on writing about Gemini 2.5. Focusing on the AI model didn&#8217;t feel like enough to tell the full story of Google&#8217;s comeback. Gemini 2.5 is only a piece&#8212;albeit a big one&#8212;of something much larger. Back in December 2024, I said they would come out on top [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/14/google-is-winning-on-every-ai-front/>

---

## Claude for Mac

date: 2025-04-14, from: Michael Tsai

Jordan Novet (2024, via Hacker News): OpenAI co-founder John Schulman said in a Monday X post that he would leave the Microsoft-backed company and join Anthropic, an artificial intelligence startup with funding from Amazon.The move comes less than three months after OpenAI disbanded a superalignment team that focused on trying to ensure that people can [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/14/claude-for-mac/>

---

## LLaMA Gaming AI Benchmarks

date: 2025-04-14, from: Michael Tsai

Kylie Robison (via Hacker News, Slashdot): Over the weekend, Meta dropped two new Llama 4 models: a smaller model named Scout, and Maverick, a mid-size model that the company claims can beat GPT-4o and Gemini 2.0 Flash &#8220;across a broad range of widely reported benchmarks.&#8221;[&#8230;]The achievement seemed to position Meta&#8217;s open-weight Llama 4 as a [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/04/14/llama-gaming-ai-benchmarks/>

---

## Note on 14th April 2025

date: 2025-04-14, updated: 2025-04-14, from: Simon Willison’s Weblog

<p>Believing AI vendors who promise you that they won't train on your data is a <em>huge</em> competitive advantage these days.</p>

    <p>Tags: <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/14/believe/#atom-everything>

---

## Why tattoos are such an unreliable marker of gang membership

date: 2025-04-14, from: Guy Kawasaki blog

Beth C. Caldwell, Professor of Law, Southwestern Law School. 

<br> 

<https://guykawasaki.substack.com/p/why-tattoos-are-such-an-unreliable>

---

## The outdoor socket and the monster that is the Skoda Mode 2 cable

date: 2025-04-14, updated: 2025-04-14, from: Peter Molnar blog

We got a new (to us) car because a truck liberated us from the one we bought a year ago. Since this one is a plug-in hybrid, I wanted to charge it from an outdoor socket using the official 3 pin cable. Apparently it's not this simple. 

<br> 

<https://petermolnar.net/article/skoda-ev-3-pin-outdoor-socket-size/>

---

## SQLite File Format Viewer

date: 2025-04-14, updated: 2025-04-14, from: Simon Willison’s Weblog

<p><strong><a href="https://sqlite-internal.pages.dev/">SQLite File Format Viewer</a></strong></p>
Neat browser-based visual interface for exploring the structure of a SQLite database file, built by Visal In using React and a custom parser <a href="https://github.com/invisal/sqlite-internal/tree/main/src/parser">implemented in TypeScript</a>.

    <p><small></small>Via <a href="https://twitter.com/invisal89/status/1911692246182928753">@invisal89</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/typescript">typescript</a>, <a href="https://simonwillison.net/tags/react">react</a>, <a href="https://simonwillison.net/tags/sqlite">sqlite</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/14/sqlite-file-format-viewer/#atom-everything>

---

## I Tested The AI That Calls Your Elderly Parents If You Can't Be Bothered

date: 2025-04-14, from: 404 Media Group

inTouch says on its website "Busy life? You can’t call your parent every day—but we can." My own mum said she would feel terrible if her child used it. 

<br> 

<https://www.404media.co/i-tested-the-ai-that-calls-your-elderly-parents-if-you-cant-bothered/>

---

## An Unacceptable Level of Care

date: 2025-04-14, updated: 2025-04-14, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/04/14/an-unacceptable-level-of-care/>

---

**@Dave Winer's linkblog** (date: 2025-04-14, from: Dave Winer's linkblog)

Scripting News: What is Inbound RSS? 

<br> 

<http://scripting.com/2025/04/14/121946.html>

---

**@Dave Winer's linkblog** (date: 2025-04-14, from: Dave Winer's linkblog)

Christian immigrants helped elect Trump, now some are at risk of being deported. 

<br> 

<https://www.npr.org/2025/04/11/nx-s1-5345876/christian-immigrants-helped-elect-trump-now-some-are-at-risk-of-being-deported>

---

## Update to my tech writing gear and tools

date: 2025-04-14, from: Blog by Fabrizio Ferri-Benedetti

<p>I’ve recently upgraded some of the hardware I use for work and leisure, so it’s a good time to refresh my list of <a href="https://passo.uno/technical-writing-equipment/">tech writing gear</a>. At the same time, after working as a documentation engineer, I also picked up new <a href="https://passo.uno/favorite-tech-writing-tools/">favorite tools</a>, especially AI-powered ones. Some I already use at work, while others I keep for personal projects. Let me tell you of some of the recent additions to my personal inventory and why I think they’re making me more productive.</p> 

<br> 

<https://passo.uno/tech-writing-ai-tools-gear/>

---

## Democrats Shouldn’t Support Tariffs

date: 2025-04-14, from: Paul Krugman

Don't get sucked in by Trump's revenge mania 

<br> 

<https://paulkrugman.substack.com/p/democrats-shouldnt-support-tariffs>

---

## On the history of Valve and Linux

date: 2025-04-14, from: Libre News

Valve and Linux have a symbiotic relationship today, but they go way back, and their story is a long and interesting one. 

<br> 

<https://thelibre.news/on-the-history-of-valve-and-linux/>

---

**@Dave Winer's linkblog** (date: 2025-04-14, from: Dave Winer's linkblog)

ChatGPT is to Google what Google was to library card catalogs. 

<br> 

<https://en.m.wikipedia.org/wiki/Library_catalog>

---

**@Dave Winer's linkblog** (date: 2025-04-14, from: Dave Winer's linkblog)

I was looking forward to hearing why it was somehow wrong to use ChatGPT to formulate a housing plan for New York, I would be surprised if he didn’t (it’s a useful tool!) but I couldn’t because well I’ll never find out because the author used some other random tool to put up a paywall. 

<br> 

<https://hellgatenyc.com/andrew-cuomo-chatgpt-housing-plan/>

---

## Repost: The Fraudulence of “Waste, Fraud and Abuse”

date: 2025-04-14, from: Paul Krugman

History repeats itself, the first time as farce, the second as clown show 

<br> 

<https://paulkrugman.substack.com/p/repost-the-fraudulence-of-waste-fraud>

---

## Using LLMs as the first line of support in Open Source

date: 2025-04-14, updated: 2025-04-14, from: Simon Willison’s Weblog

<p><strong><a href="https://noumenal.es/posts/llms-for-user-support/WZb/">Using LLMs as the first line of support in Open Source</a></strong></p>
From reading the title I was nervous that this might involve automating the initial response to a user support query in an issue tracker with an LLM, but Carlton Gibson has better taste than that.</p>
<blockquote>
<p>The <strong>open contribution</strong> model engendered by GitHub — where anonymous (to the project) users can create issues, and comments, which are almost always extractive support requests — results in an effective <strong>denial-of-service attack against maintainers</strong>. [...]</p>
<p>For anonymous users, who really just want help almost all the time, the pattern I’m settling on is to facilitate them getting their answer from their LLM of choice. [...] we can generate a file that we offer users to download, then we tell the user to pass this to (say) Claude with a simple prompt for their question.</p>
</blockquote>
<p>This resonates with the concept proposed by <a href="https://llmstxt.org/">llms.txt</a> - making LLM-friendly context files available for different projects.</p>
<p>My <a href="https://github.com/simonw/docs-for-llms">simonw/docs-for-llms</a> contains my own early experiment with this: I'm running a build script to create LLM-friendly concatenated documentation for several of my projects, and my <a href="https://github.com/simonw/llm-docs">llm-docs</a> plugin (<a href="https://simonwillison.net/2025/Apr/7/long-context-llm/#asking-questions-of-llm-s-documentation">described here</a>) can then be used to ask questions of that documentation.</p>
<p>It's possible to pre-populate the Claude UI with a prompt by linking to <code>https://claude.ai/new?q={PLACE_HOLDER}</code>, but it looks like there's quite a short length limit on how much text can be passed that way. It would be neat if you could pass a URL to a larger document instead.</p>
<p>ChatGPT also supports <code>https://chatgpt.com/?q=your-prompt-here</code> (again with a short length limit) and directly executes the prompt rather than waiting for you to edit it first(!)

    <p><small></small>Via <a href="https://fosstodon.org/@carlton/114329734119743735">@carlton</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/open-source">open-source</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/carlton-gibson">carlton-gibson</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/claude">claude</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/14/llms-as-the-first-line-of-support/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-04-14, from: Dave Winer's linkblog)

Musk and minions are still quietly at work, away from the spotlight. 

<br> 

<https://daveverse.wordpress.com/2025/04/13/musk-and-minions-are-still-quietly-at-work-away-from-the-spotlight/>

---

**@Feed for Alt USDS** (date: 2025-04-13, from: Feed for Alt USDS)

🚨Big Announcement🚨
We the Builders is launching a Substack newsletter tomorrow! Sign up here:  https://altusds.substack.com/ 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3lmq7ga6b6q2w>

---

## 556. 1066: The Battle of Hastings (Part 3)

date: 2025-04-13, from: This is history podcast

<p>Following King Harold Godwinson’s climactic victory at the Battle of Stanford Bridge, and the death of Harald Hardrada, what did he do when news reached him that William of Normandy’s army had landed further south? How did the two armies finally come together for one of the most totemic clashes of all time, on the [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/556-1066-the-battle-of-hastings-part-3/">556. 1066: The Battle of Hastings (Part 3)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/556-1066-the-battle-of-hastings-part-3/>

---

## Episode 155 - LINC

date: 2025-04-13, from: Advent of Computing

<p data-pm-slice="0 0 []">In the early 1960s a neat little machine came out of MIT. Well, kind of MIT. The machine was called LINC. It was small, flexible, and designed to live in laboratories. Some have called it the first personal computer. But, is that true? Does it have some secret that will unseat my beloved LGP-30? And how does DEC fit into the picture?</p> 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://traffic.libsyn.com/secure/adventofcomputing/ep155_LINC.mp3?dest-id=1206722"></source>
</audio> <a href="https://traffic.libsyn.com/secure/adventofcomputing/ep155_LINC.mp3?dest-id=1206722" target="_blank">download audio/mpeg</a><br> 

<https://adventofcomputing.libsyn.com/episode-155-linc>

---

## Join me Monday at 4pET for my live video chat with the non-fiction master Michael Lewis

date: 2025-04-13, from: Tina Brown

 

<br> 

<https://tinabrown.substack.com/p/join-me-monday-at-4pet-for-my-live>

---

## Our Coming Cyberpunk Dictatorship (Snow Crash)

date: 2025-04-13, from: Literate Machine

YouTube Version &#124; Audio Version There’s a worst case scenario looming here, right? On January 20th,&#160;Trump asked the Department of Defense and the Department of Homeland Security to submit a joint report, within 90 days, recommending&#160;whether or not to invoke the Insurrection Act&#160;over the non-existent “invasion” on our Southern Border. This would allow Trump to<p><a href="https://literatemachine.com/2025/04/13/our-coming-cyberpunk-dictatorship-snow-crash/" class="more-link themebutton">Read More</a></p> 

<br> 

<https://literatemachine.com/2025/04/13/our-coming-cyberpunk-dictatorship-snow-crash/>

---

## sanitizer-fun

date: 2025-04-13, from: Keith P's blog

<h2>Fun with -fsanitize=undefined and Picolibc</h2>

<p>Both GCC and Clang support the -fsanitize=undefined flag which
instruments the generated code to detect places where the program
wanders into parts of the C language specification which are either
undefined or implementation defined. Many of these are also common
programming errors. It would be great if there were sanitizers for
other easily detected bugs, but for now, at least the undefined
sanitizer does catch several useful problems.</p>

<h2>Supporting the sanitizer</h2>

<p>The sanitizer can be built to either trap on any error or call
handlers. In both modes, the same problems are identified, but when
trap mode is enabled, the compiler inserts a trap instruction and
doesn't expect the program to continue running. When handlers are in
use, each identified issue is tagged with a bunch of useful data and
then a specific sanitizer handling function is called.</p>

<p>The specific functions are not all that well documented, nor are the
parameters they receive. Maybe this is because both compilers provide
an implementation of all of the functions they use and don't really
expect external implementations to exist? However, to make these useful in an
embedded environment, picolibc needs to provide a complete set of
handlers that support all versions both gcc and clang as the
compiler-provided versions depend upon specific C (and C++) libraries.</p>

<p>Of course, programs can be built in trap-on-error mode, but that makes
it much more difficult to figure out what went wrong.</p>

<h2>Fixing Sanitizer Issues</h2>

<p>Once the sanitizer handlers were implemented, picolibc could be
built with them enabled and all of the picolibc tests run to uncover
issues within the library.</p>

<p>As with the static analyzer adventure from last year, the vast bulk of
sanitizer complaints came from invoking undefined or
implementation-defined behavior in harmless ways:</p>

<ul>
<li><p>Computing pointers past &amp;array[size+1]. I found no cases where the
resulting pointers were actually used, but the mere computation is
still undefined behavior. These were fixed by adjusting the code to
avoid computing pointers like this. The result was clearer code,
which is good.</p></li>
<li><p>Signed arithmetic overflow in PRNG code. There are several linear
congruential PRNGs in the library which used signed integer
arithmetic. The rand48 generator carefully used unsigned short
values. Of course, in C, the arithmetic performed on them is done
with signed ints if int is wider than short. C specifies signed
overflow as undefined, but both gcc and clang generate the expected
code anyways. The fixes here were simple; just switch the
computations to unsigned arithmetic, adjusting types and inserting
casts as required.</p></li>
<li><p>Passing pointers to the middle of a data structure. For example,
free takes a pointer to the start of an allocation. The management
structure appears just before that in memory; computing the address
of which appears to be undefined behavior to the compiler. The only
fix I could do here was to disable the sanitizer in functions doing
these computations -- the sanitizer was mis-detecting correct code
and it doesn't provide a way to skip checks on a per-operator
basis.</p></li>
<li><p>Null pointer plus or minus zero. C says that any arithmetic with
the NULL pointer is undefined, even when the value being added or
subtracted is zero. The fix here was to create a macro, enabled
only when the sanitizer is enabled, which checks for this case and
skips the arithmetic.</p></li>
<li><p>Discarded computations which overflow. A couple of places computed
a value, then checked if that would have overflowed and discard the
result. Even though the program doesn't depend upon the
computation, its mere presence is undefined behavior. These were
fixed by moving the computation into an <code>else</code> clause in the
overflow check. This inserts an extra branch instruction, which is
annoying.</p></li>
<li><p>Signed integer overflow in math code. There's a common pattern
in various functions that want to compare against 1.0. Instead of
using the floating point equality operator, they do the computation
using the two 32-bit halves with ((hi - 0x3ff00000) | lo)
== 0. It's efficient, but because most of these functions store the
'hi' piece in a signed integer (to make checking the sign bit
fast), the result is undefined when hi is a large negative
value. These were fixed by inserting casts to unsigned types as the
results were always tested for equality.</p></li>
</ul>


<h3>Signed integer shifts</h3>

<p>This is one area where the C language spec is just wrong.</p>

<p>For left shift, before C99, it worked on signed integers as a bit-wise
operator, equivalent to the operator on unsigned integers. After that,
left shift of negative integers became undefined. Fortunately, it's
straightforward (if tedious) to work around this issue by just casting
the operand to unsigned, performing the shift and casting it back to
the original type. Picolibc now has an internal macro, <code>lsl</code>, which
does this:</p>

<pre><code>    #define lsl(__x,__s) ((sizeof(__x) == sizeof(char)) ?                   \
                          (__typeof(__x)) ((unsigned char) (__x) &lt;&lt; (__s)) :  \
                          (sizeof(__x) == sizeof(short)) ?                  \
                          (__typeof(__x)) ((unsigned short) (__x) &lt;&lt; (__s)) : \
                          (sizeof(__x) == sizeof(int)) ?                    \
                          (__typeof(__x)) ((unsigned int) (__x) &lt;&lt; (__s)) :   \
                          (sizeof(__x) == sizeof(long)) ?                   \
                          (__typeof(__x)) ((unsigned long) (__x) &lt;&lt; (__s)) :  \
                          (sizeof(__x) == sizeof(long long)) ?              \
                          (__typeof(__x)) ((unsigned long long) (__x) &lt;&lt; (__s)) : \
                          __undefined_shift_size(__x, __s))
</code></pre>

<p>Right shift is significantly more complicated to implement. What we
want is an arithmetic shift with the sign bit being replicated as the
value is shifted rightwards. C defines no such operator. Instead,
right shift of negative integers is implementation
defined. Fortunately, both gcc and clang define the <code>&gt;&gt;</code> operator on
signed integers as arithmetic shift. Also fortunately, C hasn't made
this undefined, so the program itself doesn't end up undefined.</p>

<p>The trouble with arithmetic right shift is that it is <em>not</em> equivalent
to right shift of unsigned values. Here's what I came up with using
standard C operators:</p>

<pre><code>    int
    __asr_int(int x, int s) {
        return (int) ((unsigned int) x &gt;&gt; s) |
            -(((unsigned int) x &amp; ((unsigned int) 1 &lt;&lt; (8 * sizeof(int) - 1))) &gt;&gt; s);
    }
</code></pre>

<p>The sign bit is replicated separately and then or'd into the
result. This function is replicated for each of the five standard
integer types and then the set of them wrapped in another
sizeof-selecting macro:</p>

<pre><code>    #define asr(__x,__s) ((sizeof(__x) == sizeof(char)) ?           \
                          (__typeof(__x))__asr_char(__x, __s) :       \
                          (sizeof(__x) == sizeof(short)) ?          \
                          (__typeof(__x))__asr_short(__x, __s) :      \
                          (sizeof(__x) == sizeof(int)) ?            \
                          (__typeof(__x))__asr_int(__x, __s) :        \
                          (sizeof(__x) == sizeof(long)) ?           \
                          (__typeof(__x))__asr_long(__x, __s) :       \
                          (sizeof(__x) == sizeof(long long)) ?      \
                          (__typeof(__x))__asr_long_long(__x, __s):   \
                          __undefined_shift_size(__x, __s))
</code></pre>

<p>The lsl and asr macros use sizeof instead of the type-generic
mechanism to remain compatible with compilers that lack type-generic
support.</p>

<p>Once these macros were written, they needed to be applied where
required. To preserve the benefits of detecting programming errors,
they were only applied where required, not blindly across the whole
codebase.</p>

<p>There are a couple of common patterns in the math code using shift
operators. One is when computing the exponent value for subnormal
numbers.</p>

<pre><code>for (ix = -1022, i = hx &lt;&lt; 11; i &gt; 0; i &lt;&lt;= 1)
    ix -= 1;
</code></pre>

<p>This code computes the exponent by shifting the significand left by 11
bits (the width of the exponent field) and then incrementally shifting
it one bit at a time until the sign flips, which indicates that the
most-significant bit is set. Use of the pre-C99 definition of the left
shift operator is intentional here; so both shifts are replaced with
our lsl operator.</p>

<p>In the implementation of pow, the final exponent is computed as the
sum of the two exponents, both of which are in the allowed range. The
resulting sum is then tested to see if it is zero or negative to see
if the final value is sub-normal:</p>

<pre><code>hx += n &lt;&lt; 20;
if (hx &gt;&gt; 20 &lt;= 0)
    /* do sub-normal things */
</code></pre>

<p>In this case, the exponent adjustment, <code>n</code>, is a signed value and so
that shift is replaced with the <code>lsl</code> macro. The test value needs to
compute the correct the sign bit, so we replace this with the <code>asr</code>
macro.</p>

<p>Because the right shift operation is not undefined, we only use our
fancy macro above when the undefined behavior sanitizer is enabled. On
the other hand, the lsl macro should have zero cost and covers
undefined behavior, so it is always used.</p>

<h2>Actual Bugs Found!</h2>

<p>The goal of this little adventure was both to make using the undefined
behavior sanitizer with picolibc possible as well as to use the
sanitizer to identify bugs in the library code. I fully expected that
most of the effort would be spent masking harmless undefined behavior
instances, but was hopeful that the effort would also uncover real
bugs in the code. I was not disappointed. Through this work, I found
(and fixed) eight bugs in the code:</p>

<ol>
<li><p>setlocale/newlocale didn't check for NULL locale names</p></li>
<li><p>qsort was using uintptr_t to swap data around. On MSP430 in
'large' mode, that's a 20-bit type inside a 32-bit representation.</p></li>
<li><p>random() was returning values in <code>int</code> range rather than <code>long</code>.</p></li>
<li><p>m68k assembly for memcpy was broken for sizes > 64kB.</p></li>
<li><p>freopen returned NULL, even on success</p></li>
<li><p>The optimized version of memrchr was <em>always</em> performing unaligned
accesses.</p></li>
<li><p>String to float conversion had a table missing four values. This
caused an array access overflow which resulted in imprecise values
in some cases.</p></li>
<li><p>vfwscanf mis-parsed floating point values by assuming that
<code>wchar_t</code> was unsigned.</p></li>
</ol>


<h2>Sanitizer Wishes</h2>

<p>While it's great to have a way to detect places in your C code which
evoke undefined and implementation defined behaviors, it seems like
this tooling could easily be extended to detect other common
programming mistakes, even where the code is well defined according to
the language spec. An obvious example is in unsigned arithmetic. How
many bugs come from this seemingly innocuous line of code?</p>

<pre><code>    p = malloc(sizeof(*p) * c);
</code></pre>

<p>Because sizeof returns an unsigned value, the resulting computation
never results in undefined behavior, even when the multiplication
wraps around, so even with the undefined behavior sanitizer enabled,
this bug will not be caught. Clang seems to have an unsigned integer
overflow sanitizer which should do this, but I couldn't find anything
like this in gcc.</p>

<h2>Summary</h2>

<p>The undefined behavior sanitizers present in clang and gcc both
provide useful diagnostics which uncover some common programming
errors. In most cases, replacing undefined behavior with defined
behavior is straightforward, although the lack of an arithmetic right
shift operator in standard C is irksome. I recommend anyone using C to
give it a try.</p> 

<br> 

<http://keithp.com/blogs/sanitizer-fun/>

---

**@Tomosino's Mastodon feed** (date: 2025-04-13, from: Tomosino's Mastodon feed)

<p>What I'm saying is... new Ernest movie? 🍿</p> 

<br> 

<https://tilde.zone/@tomasino/114332697163690210>

---

**@Tomosino's Mastodon feed** (date: 2025-04-13, from: Tomosino's Mastodon feed)

<p>Jason Isaacs looks just like Jim Varney</p> 

<br> 

<https://tilde.zone/@tomasino/114332693860556798>

---

## Stevens: a hackable AI assistant using a single SQLite table and a handful of cron jobs

date: 2025-04-13, updated: 2025-04-13, from: Simon Willison’s Weblog

<p><strong><a href="https://www.geoffreylitt.com/2025/04/12/how-i-made-a-useful-ai-assistant-with-one-sqlite-table-and-a-handful-of-cron-jobs">Stevens: a hackable AI assistant using a single SQLite table and a handful of cron jobs</a></strong></p>
Geoffrey Litt reports on Stevens, a shared digital assistant he put together for his family using SQLite and scheduled tasks running on Val Town.</p>
<p>The design is refreshingly simple considering how much it can do. Everything works around a single <code>memories</code> table. A memory has text, tags, creation metadata and an optional <code>date</code> for things like calendar entries and weather reports.</p>
<p>Everything else is handled by scheduled jobs to popular weather information and events from Google Calendar, a Telegram integration offering a chat UI and a neat system where USPS postal email delivery notifications are run through Val's own email handling mechanism to trigger a Claude prompt to add those as memories too. </p>
<p>Here's <a href="https://www.val.town/x/geoffreylitt/stevensDemo">the full code on Val Town</a>, including <a href="https://www.val.town/x/geoffreylitt/stevensDemo/code/dailyBriefing/sendDailyBrief.ts">the daily briefing prompt</a> that incorporates most of the personality of the bot.


    <p>Tags: <a href="https://simonwillison.net/tags/geoffrey-litt">geoffrey-litt</a>, <a href="https://simonwillison.net/tags/sqlite">sqlite</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/val-town">val-town</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Apr/13/stevens/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-04-13, from: Dave Winer's linkblog)

This Is Your Social Safety Net on DOGE. 

<br> 

<https://www.emptywheel.net/2025/04/13/this-is-your-social-safety-net-on-doge/>

---

**@Dave Winer's linkblog** (date: 2025-04-13, from: Dave Winer's linkblog)

Openvibe is an interesting product, a social network browser for people using Bluesky, Threads, Mastodon and Nostr. An approach to the problem of too many incompatible twitter-like products. 

<br> 

<https://openvibe.social/>

---

**@Robert's feed at BlueSky** (date: 2025-04-13, from: Robert's feed at BlueSky)

I thought this was a good article on the things to consider in using or building large language models.  https://americanlibrariesmagazine.org/2025/03/03/assessing-ai/ 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lmpfsnorbs2j>

---

## ONEXPLAYER X1 Pro handheld gaming PC now available with Intel Arrow Lake (for a steep price)

date: 2025-04-13, from: Liliputing

<p>The ONEXPLAYER X1 Pro is a handheld gaming PC with a large 10.95 inch display and a pair of detachable controllers that let you use the system like a tablet, console, or laptop (with an optional keyboard). When the ONEXPLAYER X1 Pro first launched late last year it shipped with an AMD Ryzen AI 9 HX [&#8230;]</p>
<p>The post <a href="https://liliputing.com/onexplayer-x1-pro-handheld-gaming-pc-now-available-with-intel-arrow-lake-for-a-steep-price/">ONEXPLAYER X1 Pro handheld gaming PC now available with Intel Arrow Lake (for a steep price)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br><video crossorigin="anonymous" controls="controls" width="250">
<source type="video/mp4" src="https://liliputing.com/wp-content/uploads/2025/04/OXP_EVA.mp4"></source>
</video> <a href="https://liliputing.com/wp-content/uploads/2025/04/OXP_EVA.mp4" target="_blank">download video/mp4</a> 

<https://liliputing.com/onexplayer-x1-pro-handheld-gaming-pc-now-available-with-intel-arrow-lake-for-a-steep-price/>

---

**@Dave Winer's linkblog** (date: 2025-04-13, from: Dave Winer's linkblog)

Developers: This is the WordPress API. Compare it to AT Proto and ActivityPub. It&#39;s got a lot of advantages. It does the basics of social media. It scales, is mature and stable, and well-managed. A better foundation imho to build on than the others. 

<br> 

<https://developer.wordpress.com/docs/api/>

---

**@Dave Winer's linkblog** (date: 2025-04-13, from: Dave Winer's linkblog)

Homeland Security Email Tells a US Citizen to &#39;Immediately&#39; Self-Deport. 

<br> 

<https://www.wired.com/story/homeland-security-email-tells-a-us-citizen-to-immediately-self-deport/>

---

## A Financial Crisis Primer, Part I

date: 2025-04-13, from: Paul Krugman

How things can go catastrophically wrong 

<br> 

<https://paulkrugman.substack.com/p/a-financial-crisis-primer-part-i>

---

**@Dave Winer's linkblog** (date: 2025-04-13, from: Dave Winer's linkblog)

“If the Europeans decide to issue a ‘sanity bond,’ the world might jump at it.” 

<br> 

<https://www.nytimes.com/2025/04/13/business/trump-risk-us-bonds.html>

---

**@Dave Winer's linkblog** (date: 2025-04-13, from: Dave Winer's linkblog)

Investing in plant and equipment looks like a bad idea given the uncertainty, but investing in bribes for the ruling family clearly yields excellent returns. 

<br> 

<https://paulkrugman.substack.com/p/the-trump-tariffs-just-got-even-worse?publication_id=277517&post_id=161220956&isFreemail=true&r=w33x&triedRedirect=true>

---

## The Trump Tariffs Just Got Even Worse

date: 2025-04-13, from: Paul Krugman

Higher costs, uncertainty and crony capitalism, oh my 

<br> 

<https://paulkrugman.substack.com/p/the-trump-tariffs-just-got-even-worse>

---

## I dream about AI subagents; they whisper to me while I'm asleep

date: 2025-04-13, from: Geoffrey Hunntley's blog

<p>In a <a href="https://ghuntley.com/redlining/" rel="noreferrer">previous post</a>, I shared about &quot;real context window&quot; sizes and &quot;advertised context window sizes&quot;</p><blockquote>Claude 3.7&#x2019;s advertised context window is 200k, but I&apos;ve noticed that the quality of output clips at the 147k-152k mark. Regardless of which agent is</blockquote> 

<br> 

<https://ghuntley.com/subagents/>

---

**@Dave Winer's linkblog** (date: 2025-04-13, from: Dave Winer's linkblog)

Amazon Is Going Nuts Ahead of the Tariff Hike, this 4TB Seagate Hard Drive Is Almost Free. 

<br> 

<https://gizmodo.com/amazon-is-going-nuts-ahead-of-the-tariff-hike-this-4tb-seagate-hard-drive-is-almost-free-2000588664>

---

**@Dave Winer's linkblog** (date: 2025-04-13, from: Dave Winer's linkblog)

I test-drove 2025 Kia EV6 today. 

<br> 

<https://daveverse.wordpress.com/2025/04/12/test-drove-2025-kia-ev6/>

