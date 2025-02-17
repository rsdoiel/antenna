---
title: snapshots
updated: 2025-02-17 07:08:39
---

# snapshots

(date: 2025-02-17 07:08:39)

---

## Swift Proposal: InlineArray

date: 2025-02-17, from: Michael Tsai

SE-0453: This proposal introduces a new type to the standard library, InlineArray, which is a fixed-size array. This is analogous to the classical C arrays T[N], C++&#8217;s std::array&#60;T, N&#62;, and Rust&#8217;s arrays [T; N].[&#8230;]It&#8217;s important to understand that Array is a heap allocated growable data structure which can be expensive and unnecessary in some situations. [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/17/swift-proposal-inlinearray/>

---

## Grammarly vs. Apple’s Writing Tools

date: 2025-02-17, from: Michael Tsai

Adam Engst: Keep that background in mind when I say that my $144 annual subscription to Grammarly is one of my most worthwhile tech expenses. While Apple is just now getting into the game with its Writing Tools, Grammarly has been helping my writing since 2016. Its interface and capabilities have improved over time, and [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/17/grammarly-vs-apples-writing-tools/>

---

## On the Undesign of Apple Intelligence Features

date: 2025-02-17, from: Michael Tsai

Nick Heer: The flaws in results from Apple Intelligence&#8217;s many features are correctly scrutinized. Because of that, I think some people have overlooked the questionable user interface choices.[&#8230;]Apple is not breaking new ground in features, nor is it strategically. It is rarely first to do anything. What it excels at is implementation. Apple often makes [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/17/on-the-undesign-of-apple-intelligence-features/>

---

## Gatekeeper vs. .terminal and .fileloc Files

date: 2025-02-17, from: Michael Tsai

Vladimir Metnew (2020, tweet): Popular macOS apps with a file-sharing functionality didn&#8217;t delegate file quarantine to OS leading to File Quarantine bypass (Windows MOTW analogue) for downloaded files.[&#8230;]Many popular products like Keybase, Slack, Skype, Signal, Telegram decided to fix the issue, but the vulnerability remains unfixed in file-syncing apps: Dropbox, OneDrive, Google Drive, etc.[&#8230;]Apple knows [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/17/gatekeeper-vs-terminal-and-fileloc-files/>

---

## Learn to BCC, Email Senders

date: 2025-02-17, updated: 2025-02-17, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/02/17/learn-to-bcc-email-senders/>

---

**@Dave Winer's linkblog** (date: 2025-02-17, from: Dave Winer's linkblog)

I’ve been a developer for over 50 years, so my experience predates AI by a lot, and this guy is wrong. I get much more complete answers from AI than I got from StackExchange, and thus write better software. You could always be a shitty developer, but now it’s easier to be excellent. 

<br> 

<https://nmn.gl/blog/ai-and-learning>

---

## Our Government Is Experiencing a Rapid Unscheduled Disassembly

date: 2025-02-17, from: Paul Krugman

Musk is moving fast and breaking important things 

<br> 

<https://paulkrugman.substack.com/p/our-government-is-experiencing-a>

---

## If We Don’t Take Matters Into Our Own Hands... 

date: 2025-02-17, from: Michael Moore's blog

And Then, Suddenly, Good News Arrived 

<br> 

<https://www.michaelmoore.com/p/if-we-dont-take-matters-into-our>

---

## What to do about SQLITE_BUSY errors despite setting a timeout

date: 2025-02-17, updated: 2025-02-17, from: Simon Willison’s Weblog

<p><strong><a href="https://berthub.eu/articles/posts/a-brief-post-on-sqlite3-database-locked-despite-timeout/">What to do about SQLITE_BUSY errors despite setting a timeout</a></strong></p>
Bert Hubert takes on the challenge of explaining SQLite's single biggest footgun: in WAL mode you may see <code>SQLITE_BUSY</code> errors even when you have a generous timeout set if a transaction attempts to obtain a write lock after initially running at least one <code>SELECT</code>. The fix is to use <code>BEGIN IMMEDIATE</code> if you know your transaction is going to make a write.</p>
<p>Bert provides the clearest explanation I've seen yet of <em>why</em> this is necessary:</p>
<blockquote>
<p>When the transaction on the left wanted to upgrade itself to a read-write transaction, SQLite could not allow this since the transaction on the right might already have made changes that the transaction on the left had not yet seen.</p>
<p>This in turn means that if left and right transactions would commit sequentially, the result would not necessarily be what would have happened if all statements had been executed sequentially within the same transaction.</p>
</blockquote>
<p>I've written about this a few times before, so I just started a <a href="https://simonwillison.net/tags/sqlite-busy/">sqlite-busy tag</a> to collect my notes together on a single page.

    <p><small></small>Via <a href="https://lobste.rs/s/yapvon/what_do_about_sqlite_busy_errors_despite">lobste.rs</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/sqlite">sqlite</a>, <a href="https://simonwillison.net/tags/transactions">transactions</a>, <a href="https://simonwillison.net/tags/databases">databases</a>, <a href="https://simonwillison.net/tags/sqlite-busy">sqlite-busy</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/17/sqlite-busy/#atom-everything>

---

## 50 Years of Travel Tips

date: 2025-02-17, updated: 2025-02-17, from: Simon Willison’s Weblog

<p><strong><a href="https://kk.org/thetechnium/50-years-of-travel-tips/">50 Years of Travel Tips</a></strong></p>
These travel tips from Kevin Kelly are the best kind of advice because they're almost all both surprising but obviously good ideas.</p>
<p>The first one instantly appeals to my love for <a href="https://www.niche-museums.com/">Niche Museums</a>, and helped me realize that traveling with someone who is passionate about something fits the same bill - the joy is in experiencing someone else's passion, no matter what the topic:</p>
<blockquote>
<p>Organize your travel around passions instead of destinations. An itinerary based on obscure cheeses, or naval history, or dinosaur digs, or jazz joints will lead to far more adventures, and memorable times than a grand tour of famous places. It doesn’t even have to be your passions; it could be a friend’s, family member’s, or even one you’ve read about. The point is to get away from the expected into the unexpected.</p>
</blockquote>
<p>I <em>love</em> this idea:</p>
<blockquote>
<p>If you hire a driver, or use a taxi, offer to pay the driver to take you to visit their mother. They will ordinarily jump at the chance. They fulfill their filial duty and you will get easy entry into a local’s home, and a very high chance to taste some home cooking. Mother, driver, and you leave happy. This trick rarely fails.</p>
</blockquote>
<p>And those are just the first two!

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=43066720">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/travel">travel</a>, <a href="https://simonwillison.net/tags/museums">museums</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/17/50-years-of-travel-tips/#atom-everything>

---

## LLM 0.22, the annotated release notes

date: 2025-02-17, updated: 2025-02-17, from: Simon Willison’s Weblog

<p>I released <a href="https://llm.datasette.io/en/stable/changelog.html#v0-22">LLM 0.22</a> this evening. Here are the <a href="https://simonwillison.net/tags/annotated-release-notes/">annotated release notes</a>:</p>

<ul>
  <li><a href="#model-prompt-key-for-api-keys">model.prompt(..., key=) for API keys</a></li>
  <li><a href="#chatgpt-4o-latest">chatgpt-4o-latest</a></li>
  <li><a href="#llm-logs-s-short">llm logs -s/--short</a></li>
  <li><a href="#llm-models-q-gemini-q-exp">llm models -q gemini -q exp</a></li>
  <li><a href="#llm-embed-multi-prepend-x">llm embed-multi --prepend X</a></li>
  <li><a href="#everything-else">Everything else</a></li>
</ul>

<h4 id="model-prompt-key-for-api-keys">model.prompt(..., key=) for API keys</h4>
<blockquote>
<ul>
<li>Plugins that provide models that use API keys can now subclass the new <code>llm.KeyModel</code> and <code>llm.AsyncKeyModel</code> classes. This results in the API key being passed as a new <code>key</code> parameter to their <code>.execute()</code> methods, and means that Python users can pass a key as the <code>model.prompt(..., key=)</code> - see <a href="https://llm.datasette.io/en/stable/python-api.html#python-api-models-api-keys">Passing an API key</a>. Plugin developers should consult the new documentation on writing <a href="https://llm.datasette.io/en/stable/plugins/advanced-model-plugins.html#advanced-model-plugins-api-keys">Models that accept API keys</a>. <a href="https://github.com/simonw/llm/issues/744">#744</a>
</li>
</ul>
</blockquote>
<p>This is the big change. It's only relevant to you if you use LLM as a Python library <em>and</em> you need the ability to pass API keys for OpenAI, Anthropic, Gemini etc in yourself in Python code rather than setting them as an environment variable.</p>
<p>It turns out I need to do that for Datasette Cloud, where API keys are retrieved from individual customer's secret stores!</p>
<p>Thanks to this change, it's now possible to do things like this - the <code>key=</code> parameter to <code>model.prompt()</code> is new:</p>
<pre><span class="pl-k">import</span> <span class="pl-s1">llm</span>
<span class="pl-s1">model</span> <span class="pl-c1">=</span> <span class="pl-s1">llm</span>.<span class="pl-c1">get_model</span>(<span class="pl-s">"gpt-4o-mini"</span>)
<span class="pl-s1">response</span> <span class="pl-c1">=</span> <span class="pl-s1">model</span>.<span class="pl-c1">prompt</span>(<span class="pl-s">"Surprise me!"</span>, <span class="pl-s1">key</span><span class="pl-c1">=</span><span class="pl-s">"my-api-key"</span>)
<span class="pl-en">print</span>(<span class="pl-s1">response</span>.<span class="pl-c1">text</span>())</pre>
<p>Other plugins need to be updated to take advantage of this new feature. Here's <a href="https://llm.datasette.io/en/stable/plugins/advanced-model-plugins.html#models-that-accept-api-keys">the documentation for plugin developers</a> - I've released <a href="https://github.com/simonw/llm-anthropic/releases/tag/0.13">llm-anthropic 0.13</a> and <a href="https://github.com/simonw/llm-gemini/releases/tag/0.11">llm-gemini 0.11</a> implementing the new pattern.</p>
<h4 id="chatgpt-4o-latest">chatgpt-4o-latest</h4>
<blockquote>
<ul>
<li>New OpenAI model: <code>chatgpt-4o-latest</code>. This model ID accesses the current model being used to power ChatGPT, which can change without warning. <a href="https://github.com/simonw/llm/issues/752">#752</a>
</li>
</ul>
</blockquote>
<p>This model has actually been around since <a href="https://twitter.com/openaidevs/status/1823510395619000525">August 2024</a> but I had somehow missed it. <code>chatgpt-4o-latest</code> is a model alias that provides access to the current model that is being used for GPT-4o running on ChatGPT, which is <em>not</em> the same as the GPT-4o models usually available via the API. It got <a href="https://twitter.com/edwinarbus/status/1890841371675619728">an upgrade</a> last week so it's currently the alias that provides access to the most recently released OpenAI model.</p>
<p>Most OpenAI models such as <code>gpt-4o</code> provide stable date-based aliases like <code>gpt-4o-2024-08-06</code> which effectively let you "pin" to that exact model version. OpenAI technical staff <a href="https://twitter.com/zedlander/status/1890937885848715443">have confirmed</a> that they don't change the model without updating that name.</p>
<p>The one exception is <code>chatgpt-4o-latest</code> - that one can change without warning and doesn't appear to have release notes at all.</p>
<p>It's also a little more expensive that <code>gpt-4o</code> - currently priced at $5/million tokens for input and $15/million for output, compared to GPT 4o's $2.50/$10.</p>
<p>It's a fun model to play with though! As of last week it appears to be very chatty and keen on <a href="https://github.com/simonw/llm/issues/752#issuecomment-2661184024">using emoji</a>. It also claims that it has a July 2024 training cut-off.</p>
<h4 id="llm-logs-s-short">llm logs -s/--short</h4>
<blockquote>
<ul>
<li>New <code>llm logs -s/--short</code> flag, which returns a greatly shortened version of the matching log entries in YAML format with a truncated prompt and without including the response. <a href="https://github.com/simonw/llm/issues/737">#737</a>
</li>
</ul>
</blockquote>
<p>The <code>llm logs</code> command lets you search through logged prompt-response pairs - I have 4,419 of them in my database, according to this command:</p>
<div class="highlight highlight-source-shell"><pre>sqlite-utils tables <span class="pl-s"><span class="pl-pds">"</span><span class="pl-s"><span class="pl-pds">$(</span>llm logs path<span class="pl-pds">)</span></span><span class="pl-pds">"</span></span> --counts  <span class="pl-k">|</span> grep responses</pre></div>
<p>By default it outputs the full prompts and responses as Markdown - and since I've started leaning more into long context models (<a href="https://simonwillison.net/2025/Feb/14/files-to-prompt/">some recent examples</a>) my logs have been getting pretty hard to navigate.</p>
<p>The new <code>-s/--short</code> flag provides a much more concise YAML format. Here are some of my recent prompts that I've run using Google's Gemini 2.0 Pro experimental model - the <code>-u</code> flag includes usage statistics, and <code>-n 4</code> limits the output to the most recent 4 entries:</p>
<div class="highlight highlight-source-shell"><pre>llm logs --short -m gemini-2.0-pro-exp-02-05 -u -n 4</pre></div>
<div class="highlight highlight-source-yaml"><pre>- <span class="pl-ent">model</span>: <span class="pl-s">gemini-2.0-pro-exp-02-05</span>
  <span class="pl-ent">datetime</span>: <span class="pl-s"><span class="pl-pds">'</span>2025-02-13T22:30:48<span class="pl-pds">'</span></span>
  <span class="pl-ent">conversation</span>: <span class="pl-s">01jm0q045fqp5xy5pn4j1bfbxs</span>
  <span class="pl-ent">prompt</span>: <span class="pl-s"><span class="pl-pds">'</span>&lt;documents&gt; &lt;document index="1"&gt; &lt;source&gt;./index.md&lt;/source&gt; &lt;document_content&gt;</span>
<span class="pl-s">    # uv An extremely fast Python package...<span class="pl-pds">'</span></span>
  <span class="pl-ent">usage</span>:
    <span class="pl-ent">input</span>: <span class="pl-c1">281812</span>
    <span class="pl-ent">output</span>: <span class="pl-c1">1521</span>
- <span class="pl-ent">model</span>: <span class="pl-s">gemini-2.0-pro-exp-02-05</span>
  <span class="pl-ent">datetime</span>: <span class="pl-s"><span class="pl-pds">'</span>2025-02-13T22:32:29<span class="pl-pds">'</span></span>
  <span class="pl-ent">conversation</span>: <span class="pl-s">01jm0q045fqp5xy5pn4j1bfbxs</span>
  <span class="pl-ent">prompt</span>: <span class="pl-s">I want to set it globally so if I run uv run python anywhere on my computer</span>
    <span class="pl-s">I always get 3.13</span>
  <span class="pl-ent">usage</span>:
    <span class="pl-ent">input</span>: <span class="pl-c1">283369</span>
    <span class="pl-ent">output</span>: <span class="pl-c1">1540</span>
- <span class="pl-ent">model</span>: <span class="pl-s">gemini-2.0-pro-exp-02-05</span>
  <span class="pl-ent">datetime</span>: <span class="pl-s"><span class="pl-pds">'</span>2025-02-14T23:23:57<span class="pl-pds">'</span></span>
  <span class="pl-ent">conversation</span>: <span class="pl-s">01jm3cek8eb4z8tkqhf4trk98b</span>
  <span class="pl-ent">prompt</span>: <span class="pl-s"><span class="pl-pds">'</span>&lt;documents&gt; &lt;document index="1"&gt; &lt;source&gt;./LORA.md&lt;/source&gt; &lt;document_content&gt;</span>
<span class="pl-s">    # Fine-Tuning with LoRA or QLoRA You c...<span class="pl-pds">'</span></span>
  <span class="pl-ent">usage</span>:
    <span class="pl-ent">input</span>: <span class="pl-c1">162885</span>
    <span class="pl-ent">output</span>: <span class="pl-c1">2558</span>
- <span class="pl-ent">model</span>: <span class="pl-s">gemini-2.0-pro-exp-02-05</span>
  <span class="pl-ent">datetime</span>: <span class="pl-s"><span class="pl-pds">'</span>2025-02-14T23:30:13<span class="pl-pds">'</span></span>
  <span class="pl-ent">conversation</span>: <span class="pl-s">01jm3csstrfygp35rk0y1w3rfc</span>
  <span class="pl-ent">prompt</span>: <span class="pl-s"><span class="pl-pds">'</span>&lt;documents&gt; &lt;document index="1"&gt; &lt;source&gt;huggingface_hub/__init__.py&lt;/source&gt;</span>
<span class="pl-s">    &lt;document_content&gt; # Copyright 2020 The...<span class="pl-pds">'</span></span>
  <span class="pl-ent">usage</span>:
    <span class="pl-ent">input</span>: <span class="pl-c1">480216</span>
    <span class="pl-ent">output</span>: <span class="pl-c1">1791</span></pre></div>
<h4 id="llm-models-q-gemini-q-exp">llm models -q gemini -q exp</h4>
<blockquote>
<ul>
<li>Both <code>llm models</code> and <code>llm embed-models</code> now take multiple <code>-q</code> search fragments. You can now search for all models matching "gemini" and "exp" using <code>llm models -q gemini -q exp</code>. <a href="https://github.com/simonw/llm/issues/748">#748</a>
</li>
</ul>
</blockquote>
<p>I have over 100 models installed in LLM now across a bunch of different plugins. I added the <code>-q</code> option to help search through them a few months ago, and now I've upgraded it so you can pass it multiple times.</p>
<p>Want to see all the Gemini experimental models?</p>
<div class="highlight highlight-source-shell"><pre>llm models -q gemini -q exp</pre></div>
<p>Outputs:</p>
<pre><code>GeminiPro: gemini-exp-1114
GeminiPro: gemini-exp-1121
GeminiPro: gemini-exp-1206
GeminiPro: gemini-2.0-flash-exp
GeminiPro: learnlm-1.5-pro-experimental
GeminiPro: gemini-2.0-flash-thinking-exp-1219
GeminiPro: gemini-2.0-flash-thinking-exp-01-21
GeminiPro: gemini-2.0-pro-exp-02-05 (aliases: g2)
</code></pre>
<p>For consistency I added the same options to the <code>llm embed-models</code> command, which lists available <a href="https://llm.datasette.io/en/stable/embeddings/cli.html">embedding models</a>.</p>
<h4 id="llm-embed-multi-prepend-x">llm embed-multi --prepend X</h4>
<blockquote>
<ul>
<li>New <code>llm embed-multi --prepend X</code> option for prepending a string to each value before it is embedded - useful for models such as <a href="https://huggingface.co/nomic-ai/nomic-embed-text-v2-moe">nomic-embed-text-v2-moe</a> that require passages to start with a string like <code>"search_document: "</code>. <a href="https://github.com/simonw/llm/issues/745">#745</a>
</li>
</ul>
</blockquote>
<p>This was inspired by my initial experiments with <a href="https://simonwillison.net/2025/Feb/12/nomic-embed-text-v2/">Nomic Embed Text V2 last week</a>.</p>
<h4 id="everything-else">Everything else</h4>
<blockquote>
<ul>
<li>The <code>response.json()</code> and <code>response.usage()</code> methods are <a href="https://llm.datasette.io/en/stable/python-api.html#python-api-underlying-json">now documented</a>.</li>
</ul>
</blockquote>
<p>Someone asked a question about these methods online, which made me realize they weren't documented. I enjoy promptly turning questions like this into documentation!</p>
<blockquote>
<ul>
<li>Fixed a bug where conversations that were loaded from the database could not be continued using <code>asyncio</code> prompts. <a href="https://github.com/simonw/llm/issues/742">#742</a>
</li>
</ul>
</blockquote>
<p>This bug was reported by Romain Gehrig. It turned out not to be possible to execute a follow-up prompt in async mode if the previous conversation had been loaded from the database.</p>
<pre><code>% llm 'hi' --async
Hello! How can I assist you today?
% llm 'now in french' --async -c
Error: 'async for' requires an object with __aiter__ method, got Response
</code></pre>
<p>I fixed the bug for the moment, but I'd like to make the whole mechanism of persisting and loading conversations from SQLite part of the documented and supported Python API - it's currently tucked away in CLI-specific internals which aren't safe for people to use in their own code.</p>
<blockquote>
<ul>
<li>New plugin for macOS users: <a href="https://github.com/simonw/llm-mlx">llm-mlx</a>, which provides <a href="https://simonwillison.net/2025/Feb/15/llm-mlx/">extremely high performance access</a> to a wide range of local models using Apple's MLX framework.</li>
</ul>
</blockquote>
<p>Technically not a part of the LLM 0.22 release, but I like using the release notes to help highlight significant new plugins and <strong>llm-mlx</strong> is fast coming my new favorite way to run models on my own machine.</p>


<blockquote>
<ul>
<li>The <code>llm-claude-3</code> plugin has been renamed to <a href="https://github.com/simonw/llm-anthropic">llm-anthropic</a>.</li>
</ul>
</blockquote>
<p>I wrote about this previously when I <a href="https://simonwillison.net/2025/Feb/2/llm-anthropic/">announced llm-anthropic</a>. The new name prepares me for a world in which Anthropic release models that aren't called Claude 3 or Claude 3.5!</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/annotated-release-notes">annotated-release-notes</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/17/llm/#atom-everything>

---

## 540. Horror in the Congo: A Conspiracy Unmasked (Part 3)

date: 2025-02-17, from: This is history podcast

<p>Exposing the dark pit of human suffering, cruelty and corruption that had long been secretly festering in King Leopold’s Congo, would reveal one of the greatest abuses of human rights in all history, and instigate a human rights campaign that would change the world. Having established it as what was essentially his own private colonial [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/540-horror-in-the-congo-a-conspiracy-unmasked-part-3/">540. Horror in the Congo: A Conspiracy Unmasked (Part 3)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/540-horror-in-the-congo-a-conspiracy-unmasked-part-3/>

---

## Martin Pilkington, RIP

date: 2025-02-16, from: Michael Tsai

Martin Pilkington (November 2024): As some of you know I&#8217;ve been being treated for Oesphageal Cancer, treatment which was going pretty well, especially after surgery in July. Unfortunately over the past weeks things seem to have gone downhill. The cancer has returned and spread to my brain and spine. My doctors have said it&#8217;s terminal [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/16/martin-pilkington-rip/>

---

**@Dave Winer's linkblog** (date: 2025-02-16, from: Dave Winer's linkblog)

The US government used to say things like this about slaves. 

<br> 

<https://bsky.app/profile/luckytran.com/post/3li6ojabcwk2b>

---

**@Robert's feed at BlueSky** (date: 2025-02-16, from: Robert's feed at BlueSky)

Excellent 👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lid3ffkubc2b>

---

**@Dave Winer's linkblog** (date: 2025-02-16, from: Dave Winer's linkblog)

Americans have always sought debt relief after the holidays. Now their struggle is year-round. 

<br> 

<https://finance.yahoo.com/news/americans-have-always-sought-debt-relief-after-the-holidays-now-their-struggle-is-year-round-150057204.html>

---

**@Dave Winer's linkblog** (date: 2025-02-16, from: Dave Winer's linkblog)

Protesters target Tesla showrooms in US over Elon Musk’s government cost-cutting. 

<br> 

<https://www.theguardian.com/technology/2025/feb/16/protesters-target-tesla-stores-in-us-over-elon-musks-cost-cutting>

---

## Elon Musk’s terrifying vision for AI

date: 2025-02-16, from: Gary Marcus blog

All your thoughts belong to him 

<br> 

<https://garymarcus.substack.com/p/elon-musks-terrifying-vision-for>

---

## The Tech Barons have a blueprint drawn in crayon. They have not thought any of this through.

date: 2025-02-16, from: Dave Karpf's blog

A review of Balaji Srinivasan's book, The Network State. 

<br> 

<https://davekarpf.substack.com/p/the-tech-barons-have-a-blueprint>

---

**@Dave Winer's linkblog** (date: 2025-02-16, from: Dave Winer's linkblog)

Timothy Snyder: Affirmative Action for Dictators. 

<br> 

<https://snyder.substack.com/p/affirmative-action-for-dictators?publication_id=310897&post_id=157240982&isFreemail=true&r=w33x&triedRedirect=true>

---

## More Than You Wanted to Know About Tariffs

date: 2025-02-16, from: Paul Krugman

Trump has it all wrong. Surprise! 

<br> 

<https://paulkrugman.substack.com/p/more-than-you-wanted-to-know-about>

---

**@Dave Winer's linkblog** (date: 2025-02-16, from: Dave Winer's linkblog)

The three most likely ways Republicans will try to cut Medicaid. 

<br> 

<https://www.msnbc.com/opinion/msnbc-opinion/medicaid-cuts-republicans-trump-budget-rcna191928>

---

## The end of End-to-End?

date: 2025-02-16, from: Status-Q blog

If you have heard about the UK goverment&#8217;s recent demand to Apple that it be given access to everyone&#8217;s encrypted data, you may have sighed a deep sigh, or you may have wondered what all the fuss was about. This article by James O&#8217;Malley is a very nice summary.. Extract: &#8220;The British constitution has many <a class="more-link excerpt-link" href="https://statusq.org/archives/2025/02/16/13063/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<br> 

<https://statusq.org/archives/2025/02/16/13063/>

---

## Does this man never stop producing wonderful stuff?

date: 2025-02-16, from: Status-Q blog

Bill Bailey, a couple of years ago, though some of his comments are rather poignant today: (Direct Link to YouTube) 

<br> 

<https://statusq.org/archives/2025/02/16/13057/>

---

## Introducing Perplexity Deep Research

date: 2025-02-16, updated: 2025-02-16, from: Simon Willison’s Weblog

<p><strong><a href="https://www.perplexity.ai/hub/blog/introducing-perplexity-deep-research">Introducing Perplexity Deep Research</a></strong></p>
Perplexity become the <em>third</em> company to release a product with "Deep Research" in the name.</p>
<ul>
<li>Google's Gemini Deep Research: <a href="https://blog.google/products/gemini/google-gemini-deep-research/">Try Deep Research and our new experimental model in Gemini, your AI assistant</a> on  December 11th 2024</li>
<li>OpenAI's ChatGPT Deep Research: <a href="https://openai.com/index/introducing-deep-research/">Introducing deep research</a> - February 2nd 2025</li>
</ul>
<p>And now <a href="https://www.perplexity.ai/hub/blog/introducing-perplexity-deep-research">Perplexity Deep Research</a>, announced on February 14th.</p>
<p>The three products all do effectively the same thing: you give them a task, they go out and accumulate information from a large number of different websites and then use long context models and prompting to turn the result into a report. All three of them take several minutes to return a result.</p>
<p>In my <a href="https://simonwillison.net/2025/Jan/10/ai-predictions/#one-year-code-research-assistants">AI/LLM predictions post on January 10th</a> I expressed skepticism at the idea of "agents", with the exception of coding and research specialists. I said:</p>
<blockquote>
<p>It makes intuitive sense to me that this kind of research assistant can be built on our current generation of LLMs. They’re competent at driving tools, they’re capable of coming up with a relatively obvious research plan (look for newspaper articles and research papers) and they can synthesize sensible answers given the right collection of context gathered through search.</p>
<p>Google are particularly well suited to solving this problem: they have the world’s largest search index and their Gemini model has a 2 million token context. I expect Deep Research to get a whole lot better, and I expect it to attract plenty of competition.</p>
</blockquote>
<p>Just over a month later I'm feeling pretty good about that prediction!


    <p>Tags: <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/perplexity">perplexity</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/16/introducing-perplexity-deep-research/#atom-everything>

