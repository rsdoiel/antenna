---
title: snapshots
updated: 2025-02-13 07:09:13
---

# snapshots

(date: 2025-02-13 07:09:13)

---

## How Do You Solve a Problem Like Sabrina?

date: 2025-02-13, updated: 2025-02-13, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/02/13/how-do-you-solve-a-problem-like-sabrina/>

---

**@Dave Winer's linkblog** (date: 2025-02-13, from: Dave Winer's linkblog)

“Largest data breach in US history.” 

<br> 

<https://arstechnica.com/tech-policy/2025/02/largest-data-breach-in-us-history-three-more-lawsuits-try-to-stop-doge/>

---

**@Dave Winer's linkblog** (date: 2025-02-13, from: Dave Winer's linkblog)

Elon Musk’s DOGE activities trigger protests, vandalism for Tesla. Vandalism is a bad idea, that&#39;s going to get the police involved. Peaceful noisy protest, hand out leaflets asking potential buyers to buy another car or get a used Tesla. It would help if $TSLA kept going down. 

<br> 

<https://www.theverge.com/news/609621/elon-musk-doge-tesla-protests-us>

---

## Elon Musk Is Faking It

date: 2025-02-13, from: Paul Krugman

The fraudster who cried &#8220;fraud&#8221; 

<br> 

<https://paulkrugman.substack.com/p/elon-musk-thinks-americans-are-stupid>

---

## Bridging the AI Learning Gap

date: 2025-02-13, from: O'Reilly Radar

When I started working on the new edition of Head First C# back in 2023, AI tools like ChatGPT and Copilot were already changing how developers write and learn code. It was clear that I needed to cover them. But that raised an interesting challenge: How do you teach new and intermediate developers to use [&#8230;] 

<br> 

<https://www.oreilly.com/radar/bridging-the-ai-learning-gap/>

---

## Dating App Cover-Up: How Tinder, Hinge, and Their Corporate Owner Keep Rape Under Wraps

date: 2025-02-13, from: The Markup blog

The company behind more than a dozen dating apps, Match Group, has known for years about the abusive users on its platforms, but chooses to leave millions of people in the dark 

<br> 

<https://themarkup.org/investigations/2025/02/13/dating-app-tinder-hinge-cover-up>

---

**@Dave Winer's linkblog** (date: 2025-02-13, from: Dave Winer's linkblog)

Heather Cox Richardson’s nightly post. 

<br> 

<https://heathercoxrichardson.substack.com/p/february-12-2025?publication_id=20533&post_id=157047512&isFreemail=true&r=w33x&triedRedirect=true>

---

## python-build-standalone now has Python 3.14.0a5

date: 2025-02-13, updated: 2025-02-13, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/astral-sh/python-build-standalone/releases/tag/20250212">python-build-standalone now has Python 3.14.0a5</a></strong></p>
Exciting news <a href="https://twitter.com/charliermarsh/status/1889837406322565305">from Charlie Marsh</a>:</p>
<blockquote>
<p>We just shipped the latest Python 3.14 alpha (3.14.0a5) to uv and python-build-standalone. This is the first release that includes the tail-calling interpreter.</p>
<p>Our initial benchmarks show a ~20-30% performance improvement across CPython.</p>
</blockquote>
<p>This is an optimization that was first discussed <a href="https://github.com/faster-cpython/ideas/issues/642">in faster-cpython</a> in January 2024, then landed earlier this month <a href="https://github.com/python/cpython/issues/128563">by Ken Jin</a> and included in the 3.14a05 release. The <a href="https://docs.python.org/dev/whatsnew/3.14.html#whatsnew314-tail-call">alpha release notes</a> say:</p>
<blockquote>
<p>A new type of interpreter based on tail calls has been added to CPython. For certain newer compilers, this interpreter provides significantly better performance. Preliminary numbers on our machines suggest anywhere from -3% to 30% faster Python code, and a geometric mean of 9-15% faster on pyperformance depending on platform and architecture. The baseline is Python 3.14 built with Clang 19 without this new interpreter.</p>
<p>This interpreter currently only works with Clang 19 and newer on x86-64 and AArch64 architectures. However, we expect that a future release of GCC will support this as well.</p>
</blockquote>
<p>Including this in <a href="https://github.com/astral-sh/python-build-standalone">python-build-standalone</a> means  it's now trivial to try out via <a href="https://github.com/astral-sh/uv">uv</a>. I upgraded to the latest <code>uv</code> like this:</p>
<div class="highlight highlight-source-shell"><pre>pip install -U uv</pre></div>
<p>Then ran <code>uv python list</code> to see the available versions:</p>
<pre><code>cpython-3.14.0a5+freethreaded-macos-aarch64-none    &lt;download available&gt;
cpython-3.14.0a5-macos-aarch64-none                 &lt;download available&gt;
cpython-3.13.2+freethreaded-macos-aarch64-none      &lt;download available&gt;
cpython-3.13.2-macos-aarch64-none                   &lt;download available&gt;
cpython-3.13.1-macos-aarch64-none                   /opt/homebrew/opt/python@3.13/bin/python3.13 -&gt; ../Frameworks/Python.framework/Versions/3.13/bin/python3.13
</code></pre>
<p>I downloaded the new alpha like this:</p>
<div class="highlight highlight-source-shell"><pre>uv python install cpython-3.14.0a5</pre></div>
<p>And tried it out like so:</p>
<div class="highlight highlight-source-shell"><pre>uv run --python 3.14.0a5 python</pre></div>
<p>The Astral team have been using Ken's <a href="https://gist.github.com/Fidget-Spinner/e7bf204bf605680b0fc1540fe3777acf">bm_pystones.py</a> benchmarks script. I grabbed a copy like this:</p>
<div class="highlight highlight-source-shell"><pre>wget <span class="pl-s"><span class="pl-pds">'</span>https://gist.githubusercontent.com/Fidget-Spinner/e7bf204bf605680b0fc1540fe3777acf/raw/fa85c0f3464021a683245f075505860db5e8ba6b/bm_pystones.py<span class="pl-pds">'</span></span></pre></div>
<p>And ran it with <code>uv</code>:</p>
<div class="highlight highlight-source-shell"><pre>uv run --python 3.14.0a5 bm_pystones.py</pre></div>
<p>Giving:</p>
<pre><code>Pystone(1.1) time for 50000 passes = 0.0511138
This machine benchmarks at 978209 pystones/second
</code></pre>
<p>Inspired by Charlie's <a href="https://twitter.com/charliermarsh/status/1889837406322565305">example</a> I decided to try the <a href="https://github.com/sharkdp/hyperfine">hyperfine</a> benchmarking tool, which can run multiple commands to statistically compare their performance. I came up with this recipe:</p>
<div class="highlight highlight-source-shell"><pre>brew install hyperfine
hyperfine <span class="pl-cce">\ </span>                           
  <span class="pl-s"><span class="pl-pds">"</span>uv run --python 3.14.0a5 bm_pystones.py<span class="pl-pds">"</span></span> \
  <span class="pl-s"><span class="pl-pds">"</span>uv run --python 3.13 bm_pystones.py<span class="pl-pds">"</span></span> \
  -n tail-calling \
  -n baseline \
  --warmup 10</pre></div>
<p><img src="https://static.simonwillison.net/static/2025/hyperfine-uv.jpg" alt="Running that command produced: Benchmark 1: tail-calling   Time (mean ± σ):      71.5 ms ±   0.9 ms    [User: 65.3 ms, System: 5.0 ms]   Range (min … max):    69.7 ms …  73.1 ms    40 runs   Benchmark 2: baseline   Time (mean ± σ):      79.7 ms ±   0.9 ms    [User: 73.9 ms, System: 4.5 ms]   Range (min … max):    78.5 ms …  82.3 ms    36 runs   Summary   tail-calling ran     1.12 ± 0.02 times faster than baseline" style="max-width: 100%;" /></p>
<p>So 3.14.0a5 scored 1.12 times faster than 3.13 on the benchmark (on my extremely overloaded M2 MacBook Pro).


    <p>Tags: <a href="https://simonwillison.net/tags/uv">uv</a>, <a href="https://simonwillison.net/tags/astral">astral</a>, <a href="https://simonwillison.net/tags/benchmarks">benchmarks</a>, <a href="https://simonwillison.net/tags/python">python</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/13/python-3140a5/#atom-everything>

---

## URL-addressable Pyodide Python environments

date: 2025-02-13, updated: 2025-02-13, from: Simon Willison’s Weblog

<p>This evening I spotted <a href="https://github.com/simonw/datasette/issues/2466">an obscure bug</a> in <a href="https://datasette.io/">Datasette</a>, using <a href="https://github.com/simonw/datasette-lite">Datasette Lite</a>. I figure it's a good opportunity to highlight how useful it is to have a URL-addressable Python environment, powered by Pyodide and WebAssembly.</p>
<p>Here's the page that helped me discover the bug:</p>
<p><code><a href="https://lite.datasette.io/?install=datasette-visible-internal-db&amp;ref=1.0a17#/_internal/catalog_columns?_facet=database_name">https://lite.datasette.io/?install=datasette-visible-internal-db&amp;ref=1.0a17#/_internal/catalog_columns?_facet=database_name</a></code></p>
<p>To explain what's going on here, let's first review the individual components.</p>

<ul>
  <li><a href="https://simonwillison.net/2025/Feb/13/url-addressable-python/#datasette-lite">Datasette Lite</a></li>
  <li><a href="https://simonwillison.net/2025/Feb/13/url-addressable-python/#the-datasette-1-0-alphas">The Datasette 1.0 alphas</a></li>
  <li><a href="https://simonwillison.net/2025/Feb/13/url-addressable-python/#this-works-for-plugins-too">This works for plugins, too</a></li>
  <li><a href="https://simonwillison.net/2025/Feb/13/url-addressable-python/#datasette-visible-internal-db">datasette-visible-internal-db</a></li>
  <li><a href="https://simonwillison.net/2025/Feb/13/url-addressable-python/#spotting-the-bug">Spotting the bug</a></li>
  <li><a href="https://simonwillison.net/2025/Feb/13/url-addressable-python/#fixing-the-bug">Fixing the bug</a></li>
  <li><a href="https://simonwillison.net/2025/Feb/13/url-addressable-python/#url-addressable-steps-to-reproduce">URL-addressable Steps To Reproduce</a></li>
</ul>


<h4 id="datasette-lite">Datasette Lite</h4>
<p><a href="https://lite.datasette.io/">Datasette Lite</a> is a version of <a href="https://datasette.io/">Datasette</a> that runs entirely in your browser. It runs on <a href="https://pyodide.org/">Pyodide</a>, which I think is still the most underappreciated project in the Python ecosystem.</p>
<p>I built Datasette Lite <a href="https://simonwillison.net/2022/May/4/datasette-lite/">almost three years ago</a> as a weekend hack project to try and see if I could get Datasette - a server-side Python web application - to run entirely in the browser.</p>
<p>I've added a bunch of features since then, <a href="https://github.com/simonw/datasette-lite/blob/main/README.md">described in the README</a> - most significantly the ability to load SQLite databases, CSV files, JSON files or Parquet files by passing a URL to a query string parameter.</p>
<p>I built Datasette Lite almost as a joke, thinking nobody would want to wait for a full Python interpreter to download to their browser each time they wanted to explore some data. It turns out internet connections are fast these days and having a version of Datasette that needs a browser, GitHub Pages and <em>nothing else</em> is actually extremely useful.</p>
<p>Just the other day <a href="https://bsky.app/profile/obtusatum.bsky.social/post/3lhyeuqmpns22">I saw Logan Williams</a> of Bellingcat using it to share a better version of <a href="https://www.commerce.senate.gov/2025/2/cruz-led-investigation-uncovers-2-billion-in-woke-dei-grants-at-nsf-releases-full-database">this Excel sheet</a>:</p>
<blockquote>
<p>The NSF grants that Ted Cruz has singled out for advancing "neo-Marxist class warfare propaganda," in Datasette-Lite: <a href="https://lite.datasette.io/?url=https://data-house-lake.nyc3.cdn.digitaloceanspaces.com/cruz_nhs.db#/cruz_nhs/grants">lite.datasette.io?url=https://...</a></p>
</blockquote>
<p>Let's look at that URL in full:</p>
<p><code>https://lite.datasette.io/?url=https://data-house-lake.nyc3.cdn.digitaloceanspaces.com/cruz_nhs.db#/cruz_nhs/grants</code></p>
<p>The <code>?url=</code> parameter there poins to a SQLite database file, hosted on DigitalOcean Spaces and served with the all-important <code>access-control-allow-origin: *</code> header which allows Datasette Lite to load it across domains.</p>
<p>The <code>#/cruz_nhs/grants</code> part of the URL tells Datasette Lite which page to load when you visit the link.</p>
<p>Anything after the <code>#</code> in Datasette Lite is a URL that gets passed on to the WebAssembly-hosted Datasette instance. Any query string items before that can be used to affect the initial state of the Datasette instance, to import data or even to install additional plugins.</p>
<h4 id="the-datasette-1-0-alphas">The Datasette 1.0 alphas</h4>

<p>I've shipped <em>a lot</em> of Datasette alphas - the most recent is <a href="https://docs.datasette.io/en/latest/changelog.html#a17-2025-02-06">Datasette 1.0a17</a>. Those alphas get published to <a href="https://pypi.org/">PyPI</a>, which means they can be installed using <code>pip install datasette==1.0a17</code>.</p>
<p>A while back <a href="https://github.com/simonw/datasette-lite/issues/75">I added the same ability</a> to Datasette Lite itself. You can now pass <code>&amp;ref=1.0a17</code> to the Datasette Lite URL to load that specific version of Datasette.</p>
<p>This works thanks to the magic of Pyodide's <a href="https://micropip.pyodide.org/">micropip</a> mechanism. Every time you load Datasette Lite in your browser it's actually using <code>micropip</code> to install the packages it needs directly from PyPI. The code looks something like this:</p>
<div class="highlight highlight-source-js"><pre><span class="pl-k">await</span> <span class="pl-s1">pyodide</span><span class="pl-kos">.</span><span class="pl-en">loadPackage</span><span class="pl-kos">(</span><span class="pl-s">'micropip'</span><span class="pl-kos">,</span> <span class="pl-kos">{</span><span class="pl-c1">messageCallback</span>: <span class="pl-s1">log</span><span class="pl-kos">}</span><span class="pl-kos">)</span><span class="pl-kos">;</span>
<span class="pl-k">let</span> <span class="pl-s1">datasetteToInstall</span> <span class="pl-c1">=</span> <span class="pl-s">'datasette'</span><span class="pl-kos">;</span>
<span class="pl-k">let</span> <span class="pl-s1">pre</span> <span class="pl-c1">=</span> <span class="pl-s">'False'</span><span class="pl-kos">;</span>
<span class="pl-k">if</span> <span class="pl-kos">(</span><span class="pl-s1">settings</span><span class="pl-kos">.</span><span class="pl-c1">ref</span><span class="pl-kos">)</span> <span class="pl-kos">{</span>
  <span class="pl-k">if</span> <span class="pl-kos">(</span><span class="pl-s1">settings</span><span class="pl-kos">.</span><span class="pl-c1">ref</span> <span class="pl-c1">==</span> <span class="pl-s">'pre'</span><span class="pl-kos">)</span> <span class="pl-kos">{</span>
    <span class="pl-s1">pre</span> <span class="pl-c1">=</span> <span class="pl-s">'True'</span><span class="pl-kos">;</span>
  <span class="pl-kos">}</span> <span class="pl-k">else</span> <span class="pl-kos">{</span>
    <span class="pl-s1">datasetteToInstall</span> <span class="pl-c1">=</span> <span class="pl-s">`datasette==<span class="pl-s1"><span class="pl-kos">${</span><span class="pl-s1">settings</span><span class="pl-kos">.</span><span class="pl-c1">ref</span><span class="pl-kos">}</span></span>`</span><span class="pl-kos">;</span>
  <span class="pl-kos">}</span>
<span class="pl-kos">}</span>
<span class="pl-k">await</span> <span class="pl-s1">self</span><span class="pl-kos">.</span><span class="pl-c1">pyodide</span><span class="pl-kos">.</span><span class="pl-en">runPythonAsync</span><span class="pl-kos">(</span><span class="pl-s">`</span>
<span class="pl-s">import micropip</span>
<span class="pl-s">await micropip.install("<span class="pl-s1"><span class="pl-kos">${</span><span class="pl-s1">datasetteToInstall</span><span class="pl-kos">}</span></span>", pre=<span class="pl-s1"><span class="pl-kos">${</span><span class="pl-s1">pre</span><span class="pl-kos">}</span></span>)</span>
<span class="pl-s">`</span><span class="pl-kos">)</span><span class="pl-kos">;</span></pre></div>
<p><a href="https://github.com/simonw/datasette-lite/blob/main/webworker.js">Full code here</a>.</p>
<p>That <code>settings</code> object has been passed to the Web Worker that loads Datasette, incorporating various query string parameters.</p>
<p>This all means I can pass <code>?ref=1.0a17</code> to Datasette Lite to load a specific version, or <code>?ref=pre</code> to get the most recently released pre-release version.</p>
<h4 id="this-works-for-plugins-too">This works for plugins, too</h4>
<p>Since loading extra packages from PyPI via <code>micropip</code> is so easy, I went a step further and added plugin support.</p>
<p>The <code>?install=</code> parameter can be passed multiple times, each time specifying a Datasette plugin from PyPI that should be installed into the browser.</p>
<p>The README includes <a href="https://github.com/simonw/datasette-lite?tab=readme-ov-file#installing-plugins">a bunch of examples</a> of this mechanism in action. Here's a fun one <a href="https://lite.datasette.io/?install=datasette-mp3-audio&amp;csv=https://gist.githubusercontent.com/simonw/0a30d52feeb3ff60f7d8636b0bde296b/raw/c078a9e5a0151331e2e46c04c1ebe7edc9f45e8c/scotrail-announcements.csv#/data/scotrail-announcements">that loads datasette-mp3-audio</a> to provide inline MP3 playing widgets, originally created for my <a href="https://simonwillison.net/2022/Aug/21/scotrail/">ScotRail audio announcements</a> project.</p>
<p>This only works for some plugins. They need to be pure Python wheels - getting plugins with compiled binary dependencies to work in Pyodide WebAssembly requires a whole set of steps that I haven't quite figured out.</p>
<p>Frustratingly, it doesn't work for plugins that run their own JavaScript yet! I may need to rearchitect significant chunks of both Datasette and Datasette Lite to make that work.</p>
<p>It's also worth noting that this is a remote code execution security hole. I don't think that's a problem here, because <code>lite.datasette.io</code> is deliberately hosted on the subdomain of a domain that I <em>never</em> intend to use cookies on. It's possible to vandalize the visual display of <code>lite.datasette.io</code> but it shouldn't be possible to steal any private data or do any lasting damage.</p>
<h4 id="datasette-visible-internal-db">datasette-visible-internal-db</h4>
<p>This evening's debugging exercise used a plugin called <a href="https://pypi.org/project/datasette-visible-internal-db/">datasette-visible-internal-db</a>.</p>
<p>Datasette's <a href="https://docs.datasette.io/en/latest/internals.html#datasette-s-internal-database">internal database</a> is an invisible SQLite database that sits at the heart of Datasette, tracking things like loaded metadata and the schemas of the currently attached tables.</p>
<p>Being invisible means we can use it for features that shouldn't be visible to users - plugins that record API secrets or permissions or track comments or data import progress, for example.</p>
<p>In Python code it's accessed like this:</p>
<pre><span class="pl-s1">internal_db</span> <span class="pl-c1">=</span> <span class="pl-s1">datasette</span>.<span class="pl-c1">get_internal_database</span>()</pre>
<p>As opposed to Datasette's other databases which are accessed like so:</p>
<pre><span class="pl-s1">db</span> <span class="pl-c1">=</span> <span class="pl-s1">datasette</span>.<span class="pl-c1">get_database</span>(<span class="pl-s">"my-database"</span>)</pre>
<p>Sometimes, when hacking on Datasette, it's useful to be able to browse the internal database using the default Datasette UI.</p>
<p>That's what <code>datasette-visible-internal-db</code> does. The plugin implementation is <a href="https://github.com/datasette/datasette-visible-internal-db/blob/759e7001f91d3076d9f42eddb03fbaf6d1c7b9bb/datasette_visible_internal_db.py">just five lines of code</a>:</p>
<pre><span class="pl-k">import</span> <span class="pl-s1">datasette</span>

<span class="pl-en">@<span class="pl-s1">datasette</span>.<span class="pl-c1">hookimpl</span></span>
<span class="pl-k">def</span> <span class="pl-en">startup</span>(<span class="pl-s1">datasette</span>):
    <span class="pl-s1">db</span> <span class="pl-c1">=</span> <span class="pl-s1">datasette</span>.<span class="pl-c1">get_internal_database</span>()
    <span class="pl-s1">datasette</span>.<span class="pl-c1">add_database</span>(<span class="pl-s1">db</span>, <span class="pl-s1">name</span><span class="pl-c1">=</span><span class="pl-s">"_internal"</span>, <span class="pl-s1">route</span><span class="pl-c1">=</span><span class="pl-s">"_internal"</span>)</pre>
<p>On startup the plugin grabs a reference to that internal database and then registers it using Datasette's <a href="https://docs.datasette.io/en/latest/internals.html#add-database-db-name-none-route-none">add_database() method</a>. That's all it takes to have it show up as a visible database on the <code>/_internal</code> path within Datasette.</p>
<h4 id="spotting-the-bug">Spotting the bug</h4>
<p>I was poking around with this today out of pure curiosity - I hadn't tried <code>?install=datasette-visible-internal-db</code> with Datasette Lite before and I wanted to see if it worked.</p>
<p>Here's <a href="https://lite.datasette.io/?install=datasette-visible-internal-db&amp;ref=1.0a17#/_internal/catalog_columns?_facet=database_name">that URL from earlier</a>, this time with commentary:</p>
<pre><code>https://lite.datasette.io/ // Datasette Lite
  ?install=datasette-visible-internal-db // Install the visible internal DB plugin
  &amp;ref=1.0a17 // Load the 1.0a17 alpha release
  #/_internal/catalog_columns // Navigate to the /_internal/catalog_columns table page
  &amp;_facet=database_name // Facet by database_name for good measure
</code></pre>
<p>And this is what I saw:</p>
<p><img src="https://static.simonwillison.net/static/2025/datasette-lite-bug.jpg" alt="Screenshot of Datasette Lite. catalog_columns table has 382 rows. database_name facet shows content 237, fixtures 97, _internal 48. A table shows columns for Link, database_name, table_name, cid and name - a red arrow points to a hyperlinked _internal in the database_name column." style="max-width: 100%;" /></p>
<p>This all looked good... until I clicked on that <code>_internal</code> link in the <code>database_name</code> column... and it took me to <a href="https://lite.datasette.io/?install=datasette-visible-internal-db&amp;ref=1.0a17#/_internal/databases/_internal">this /_internal/databases/_internal 404 page</a>.</p>
<p>Why was that a 404? Datasette introspects the SQLite table schema to identify foreign key relationships, then turns those into hyperlinks. The SQL schema for that <code>catalog_columns</code> table (displayed at the bottom of the table page) looked like this:</p>
<div class="highlight highlight-source-sql"><pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">catalog_columns</span> (
    database_name <span class="pl-k">TEXT</span>,
    table_name <span class="pl-k">TEXT</span>,
    cid <span class="pl-k">INTEGER</span>,
    name <span class="pl-k">TEXT</span>,
    type <span class="pl-k">TEXT</span>,
    <span class="pl-s"><span class="pl-pds">"</span>notnull<span class="pl-pds">"</span></span> <span class="pl-k">INTEGER</span>,
    default_value <span class="pl-k">TEXT</span>, <span class="pl-c"><span class="pl-c">--</span> renamed from dflt_value</span>
    is_pk <span class="pl-k">INTEGER</span>, <span class="pl-c"><span class="pl-c">--</span> renamed from pk</span>
    hidden <span class="pl-k">INTEGER</span>,
    <span class="pl-k">PRIMARY KEY</span> (database_name, table_name, name),
    <span class="pl-k">FOREIGN KEY</span> (database_name) <span class="pl-k">REFERENCES</span> databases(database_name),
    <span class="pl-k">FOREIGN KEY</span> (database_name, table_name) <span class="pl-k">REFERENCES</span> tables(database_name, table_name)
);</pre></div>
<p>Those foreign key references are a bug! I renamed the internal tables from <code>databases</code> and <code>tables</code> to <code>catalog_databases</code> and <code>catalog_tables</code> quite a while ago, but apparently forgot to update the references - and SQLite let me get away with it.</p>
<h4 id="fixing-the-bug">Fixing the bug</h4>
<p>I fixed the bug <a href="https://github.com/simonw/datasette/commit/e59fd0175708f2b14d4e3c08ea16631bda0aaed3">in this commit</a>. As is often the case the most interesting part of the fix is <a href="https://github.com/simonw/datasette/blob/e59fd0175708f2b14d4e3c08ea16631bda0aaed3/tests/test_internal_db.py#L65-L84">the accompanying test</a>. I decided to use the introspection helpers in <a href="https://sqlite-utils.datasette.io/">sqlite-utils</a> to guard against every making another mistake like this again in the future:</p>
<pre><span class="pl-en">@<span class="pl-s1">pytest</span>.<span class="pl-c1">mark</span>.<span class="pl-c1">asyncio</span></span>
<span class="pl-k">async</span> <span class="pl-k">def</span> <span class="pl-en">test_internal_foreign_key_references</span>(<span class="pl-s1">ds_client</span>):
    <span class="pl-s1">internal_db</span> <span class="pl-c1">=</span> <span class="pl-k">await</span> <span class="pl-en">ensure_internal</span>(<span class="pl-s1">ds_client</span>)
    <span class="pl-k">def</span> <span class="pl-en">inner</span>(<span class="pl-s1">conn</span>):
        <span class="pl-s1">db</span> <span class="pl-c1">=</span> <span class="pl-s1">sqlite_utils</span>.<span class="pl-c1">Database</span>(<span class="pl-s1">conn</span>)
        <span class="pl-s1">table_names</span> <span class="pl-c1">=</span> <span class="pl-s1">db</span>.<span class="pl-c1">table_names</span>()
        <span class="pl-k">for</span> <span class="pl-s1">table</span> <span class="pl-c1">in</span> <span class="pl-s1">db</span>.<span class="pl-c1">tables</span>:
            <span class="pl-k">for</span> <span class="pl-s1">fk</span> <span class="pl-c1">in</span> <span class="pl-s1">table</span>.<span class="pl-c1">foreign_keys</span>:
                <span class="pl-s1">other_table</span> <span class="pl-c1">=</span> <span class="pl-s1">fk</span>.<span class="pl-c1">other_table</span>
                <span class="pl-s1">other_column</span> <span class="pl-c1">=</span> <span class="pl-s1">fk</span>.<span class="pl-c1">other_column</span>
                <span class="pl-s1">message</span> <span class="pl-c1">=</span> <span class="pl-s">'Column "{}.{}" references other column "{}.{}" which does not exist'</span>.<span class="pl-c1">format</span>(
                    <span class="pl-s1">table</span>.<span class="pl-c1">name</span>, <span class="pl-s1">fk</span>.<span class="pl-c1">column</span>, <span class="pl-s1">other_table</span>, <span class="pl-s1">other_column</span>
                )
                <span class="pl-k">assert</span> <span class="pl-s1">other_table</span> <span class="pl-c1">in</span> <span class="pl-s1">table_names</span>, <span class="pl-s1">message</span> <span class="pl-c1">+</span> <span class="pl-s">" (bad table)"</span>
                <span class="pl-k">assert</span> <span class="pl-s1">other_column</span> <span class="pl-c1">in</span> <span class="pl-s1">db</span>[<span class="pl-s1">other_table</span>].<span class="pl-c1">columns_dict</span>, (
                    <span class="pl-s1">message</span> <span class="pl-c1">+</span> <span class="pl-s">" (bad column)"</span>
                )
    <span class="pl-k">await</span> <span class="pl-s1">internal_db</span>.<span class="pl-c1">execute_fn</span>(<span class="pl-s1">inner</span>)</pre>
<p>This uses Datasette's <a href="https://docs.datasette.io/en/latest/internals.html#await-db-execute-fn-fn">await db.execute_fn()</a> method, which lets you run Python code that accesses SQLite in a thread. That code can then use the blocking <code>sqlite-utils</code> <a href="https://sqlite-utils.datasette.io/en/stable/python-api.html#introspecting-tables-and-views">introspection methods</a> - here I'm looping through every table in that internal database, looping through each tables <code>.foreign_keys</code> and confirming that the <code>.other_table</code> and <code>.other_column</code> values reference a table and column that genuinely exist.</p>
<p>I ran this test, watched it fail, then applied the fix and it passed.</p>
<h4 id="url-addressable-steps-to-reproduce">URL-addressable Steps To Reproduce</h4>
<p>The idea I most wanted to highlight here is the enormous value provided by <strong>URL-addressable Steps To Reproduce</strong>.</p>
<p>Having good Steps To Reproduce is crucial for productively fixing bugs. Something you can <em>click on</em> to see the bug is the most effective form of STR there is.</p>
<p>Ideally, these URLs will continue to work long into the future.</p>
<p>The great thing about a system like Datasette Lite is that everything is statically hosted files. The application itself is hosted on GitHub Pages, and it works by loading additional files from various different CDNs. The only dynamic aspect is cached lookups against the PyPI API, which I expect to stay stable for a long time to come.</p>
<p>As a stable component of the Web platform <a href="https://caniuse.com/wasm">for almost 8 years</a> WebAssembly is clearly here to stay. I expect we'll be able to execute today's WASM code in browsers 20+ years from now.</p>
<p>I'm confident that the patterns I've been exploring in Datasette Lite over the past few years could be just as valuable for other projects. Imagine demonstrating bugs in a Django application using a static WebAssembly build, archived forever as part of an issue tracking system.</p>
<p>I think WebAssembly and Pyodide still have a great deal of untapped potential for the wider Python world.</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/urls">urls</a>, <a href="https://simonwillison.net/tags/datasette">datasette</a>, <a href="https://simonwillison.net/tags/webassembly">webassembly</a>, <a href="https://simonwillison.net/tags/pyodide">pyodide</a>, <a href="https://simonwillison.net/tags/datasette-lite">datasette-lite</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/13/url-addressable-python/#atom-everything>

---

## Breaking: OpenAI's efforts at pure scaling have hit a wall

date: 2025-02-13, from: Gary Marcus blog

&#8212; There is no wall 

<br> 

<https://garymarcus.substack.com/p/breaking-openais-efforts-at-pure>

---

## 285: Principles for the Permaweird

date: 2025-02-13, from: Fix the News

"Consensual reality is significantly flawed." Plus, good news on high school graduation rates, two breakthroughs for rice-farming, labour reform in Spain, fur production plummets, and Baltics ditch Russian energy.  

<br> 

<https://fixthenews.com/285-principle-permaweird/>

---

**@Dave Winer's linkblog** (date: 2025-02-13, from: Dave Winer's linkblog)

What would it take to create an alternative social network to Bluesky? 

<br> 

<https://www.eventbrite.com/e/dweb-meetup-bluesky-beyond-tickets-1236616175269>

---

## 539. Horror in the Congo: The Crimes of Empire (Part 2)

date: 2025-02-13, from: This is history podcast

<p>“A secret society of murderers with a king for a ringleader”. In 1885 King Leopold of Belgium; an awkward, ruthless, selfish man, was recognised as the sovereign of the Congo. Long determined to carve out his very own private colonial domain, he had alighted upon the Congo &#8211; Africa’s vast and unplundered interior. With the [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/539-horror-in-the-congo-the-crimes-of-empire-part-2/">539. Horror in the Congo: The Crimes of Empire (Part 2)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/539-horror-in-the-congo-the-crimes-of-empire-part-2/>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

The Mavericks can’t undo the Luka trade, but they could try not salting the wound. 

<br> 

<https://www.sbnation.com/nba/2025/2/12/24364502/luka-doncic-trade-dallas-mavericks-fans-protest-reaction>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Musk’s stake in Tesla comprises the lion’s share of his wealth. 

<br> 

<https://slate.com/business/2025/02/elon-musk-tesla-stock-valuation-consumer-boycott.html>

---

## Quoting Sam Altman

date: 2025-02-12, updated: 2025-02-12, from: Simon Willison’s Weblog

<blockquote cite="https://twitter.com/sama/status/1889755723078443244"><p>We want AI to “just work” for you; we realize how complicated our model and product offerings have gotten.</p>
<p>We hate the model picker as much as you do and want to return to magic unified intelligence.</p>
<p>We will next ship GPT-4.5, the model we called Orion internally, as our last non-chain-of-thought model.</p>
<p>After that, a top goal for us is to unify o-series models and GPT-series models by creating systems that can use all our tools, know when to think for a long time or not, and generally be useful for a very wide range of tasks.</p>
<p>In both ChatGPT and our API, we will release GPT-5 as a system that integrates a lot of our technology, including o3. We will no longer ship o3 as a standalone model.</p>
<p>[<em>When <a href="https://twitter.com/kimmonismus/status/1889756564145238124">asked about release dates</a> for GPT 4.5 / GPT 5:</em>] <a href="https://twitter.com/sama/status/1889757267425370415">weeks / months</a></p></blockquote>
<p class="cite">&mdash; <a href="https://twitter.com/sama/status/1889755723078443244">Sam Altman</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/o3">o3</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/sam-altman">sam-altman</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/12/sam-altman/#atom-everything>

---

## Nomic Embed Text V2: An Open Source, Multilingual, Mixture-of-Experts Embedding Model

date: 2025-02-12, updated: 2025-02-12, from: Simon Willison’s Weblog

<p><strong><a href="https://www.nomic.ai/blog/posts/nomic-embed-text-v2">Nomic Embed Text V2: An Open Source, Multilingual, Mixture-of-Experts Embedding Model</a></strong></p>
Nomic continue to release the most interesting and powerful embedding models. Their latest is Embed Text V2, an Apache 2.0 licensed multi-lingual 1.9GB model (here it is <a href="https://huggingface.co/nomic-ai/nomic-embed-text-v2-moe">on Hugging Face</a>) trained on "1.6 billion high-quality data pairs", which is the first embedding model I've seen to use a Mixture of Experts architecture:</p>
<blockquote>
<p>In our experiments, we found that alternating MoE layers with 8 experts and top-2 routing provides the optimal balance between performance and efficiency. This results in 475M total parameters in the model, but only 305M active during training and inference.</p>
</blockquote>
<p>I first tried it out using <code>uv run</code> like this:</p>
<div class="highlight highlight-source-shell"><pre>uv run \
  --with einops \
  --with sentence-transformers \
  --python 3.13 python</pre></div>
<p>Then:</p>
<pre><span class="pl-k">from</span> <span class="pl-s1">sentence_transformers</span> <span class="pl-k">import</span> <span class="pl-v">SentenceTransformer</span>
<span class="pl-s1">model</span> <span class="pl-c1">=</span> <span class="pl-en">SentenceTransformer</span>(<span class="pl-s">"nomic-ai/nomic-embed-text-v2-moe"</span>, <span class="pl-s1">trust_remote_code</span><span class="pl-c1">=</span><span class="pl-c1">True</span>)
<span class="pl-s1">sentences</span> <span class="pl-c1">=</span> [<span class="pl-s">"Hello!"</span>, <span class="pl-s">"¡Hola!"</span>]
<span class="pl-s1">embeddings</span> <span class="pl-c1">=</span> <span class="pl-s1">model</span>.<span class="pl-c1">encode</span>(<span class="pl-s1">sentences</span>, <span class="pl-s1">prompt_name</span><span class="pl-c1">=</span><span class="pl-s">"passage"</span>)
<span class="pl-en">print</span>(<span class="pl-s1">embeddings</span>)</pre>

<p>Then I got it working on my laptop using the <a href="https://github.com/simonw/llm-sentence-transformers">llm-sentence-tranformers</a> plugin like this:</p>
<pre><code>llm install llm-sentence-transformers
llm install einops # additional necessary package
llm sentence-transformers register nomic-ai/nomic-embed-text-v2-moe --trust-remote-code

llm embed -m sentence-transformers/nomic-ai/nomic-embed-text-v2-moe -c 'string to embed'
</code></pre>
<p>This outputs a 768 item JSON array of floating point numbers to the terminal. These are <a href="https://huggingface.co/blog/matryoshka">Matryoshka embeddings</a> which means you can truncate that down to just the first 256 items and get similarity calculations that still work albeit slightly less well.</p>
<p>To use this for RAG you'll need to conform to Nomic's custom prompt format. For documents to be searched:</p>
<pre><code>search_document: text of document goes here
</code></pre>
<p>And for search queries:</p>
<pre><code>search_query: term to search for
</code></pre>
<p>I <a href="https://github.com/simonw/llm/issues/745">landed a new --prepend option</a> for the <a href="https://llm.datasette.io/en/stable/embeddings/cli.html#llm-embed-multi">llm embed-multi</a> command to help with that, but it's not out in a full release just yet.</p>
<p>I also released <a href="https://github.com/simonw/llm-sentence-transformers/releases/tag/0.3">llm-sentence-transformers 0.3</a> with some minor improvements to make running this model more smooth.

    <p><small></small>Via <a href="https://twitter.com/nomic_ai/status/1889721439948820665">@nomic_ai</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/embeddings">embeddings</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/nomic">nomic</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/rag">rag</a>, <a href="https://simonwillison.net/tags/uv">uv</a>, <a href="https://simonwillison.net/tags/python">python</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/12/nomic-embed-text-v2/#atom-everything>

---

## Building a SNAP LLM eval: part 1

date: 2025-02-12, updated: 2025-02-12, from: Simon Willison’s Weblog

<p><strong><a href="https://www.propel.app/insights/building-a-snap-llm-eval-part-1/">Building a SNAP LLM eval: part 1</a></strong></p>
Dave Guarino (<a href="https://simonwillison.net/2023/Jul/26/dave-guarino/">previously</a>) has been exploring using LLM-driven systems to help people apply for <a href="https://en.wikipedia.org/wiki/Supplemental_Nutrition_Assistance_Program">SNAP</a>, the US Supplemental Nutrition Assistance Program (aka food stamps).</p>
<p>This is a domain which existing models know <em>some</em> things about, but which is full of critical details around things like eligibility criteria where accuracy really matters.</p>
<p>Domain-specific evals like this are still pretty rare. As Dave puts it:</p>
<blockquote>
<p>There is also not a lot of public, easily digestible writing out there on building evals in specific domains. So one of our hopes in sharing this is that it helps others build evals for domains they know deeply.</p>
</blockquote>
<p>Having robust evals addresses multiple challenges. The first is establishing how good the raw models are for a particular domain. A more important one is to help in developing additional systems on top of these models, where an eval is crucial for understanding if RAG or prompt engineering tricks are paying off.</p>
<p>Step 1 doesn't involve writing any code at all:</p>
<blockquote>
<p>Meaningful, real problem spaces inevitably have a lot of <em>nuance</em>. So in working on our SNAP eval, the first step has just been using lots of models — a lot. [...]</p>
<p>Just using the models and taking notes on the nuanced “good”, “meh”, “bad!” is a much faster way to get to a useful starting eval set than writing or automating evals in code.</p>
</blockquote>
<p>I've been complaining for a while that there isn't nearly enough guidance about evals out there. This piece is an excellent step towards filling that gap.


    <p>Tags: <a href="https://simonwillison.net/tags/evals">evals</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/12/building-a-snap-llm/#atom-everything>

---

**@Tomosino's Mastodon feed** (date: 2025-02-12, from: Tomosino's Mastodon feed)

<p><strong>Content warning:</strong>Good news, everyone!</p><hr><p>Cats!</p> 

<br> 

<https://tilde.zone/@tomasino/113992707978632446>

---

## Migrating Apple Account Purchases Between Accounts

date: 2025-02-12, from: Michael Tsai

Apple: If an Apple Account is only used for making purchases, those purchases can be migrated to a primary Apple Account to consolidate them.This feature isn&#8217;t available to users in the European Union, United Kingdom, or India.[&#8230;]You can choose to migrate apps, music, and other content you&#8217;ve purchased from Apple on a secondary Apple Account [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/12/migrating-apple-account-purchases-between-accounts/>

---

## App Store and Japanese Consumption Tax

date: 2025-02-12, from: Michael Tsai

Apple: As a result of last year&#8217;s change in Japan&#8217;s tax regulations, Apple (through iTunes K.K. in Japan) is now designated as a Specified Platform Operator by the Japan tax authority. All paid apps and In-App Purchases, (including game items, such as coins) sold by non-Japan-based developers on the App Store in Japan will be [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/12/app-store-and-japanese-consumption-tax/>

---

## Game Licensing in Vietnam

date: 2025-02-12, from: Michael Tsai

Apple: The Vietnamese Ministry of Information and Communications (MIC) requires games to be licensed to remain available on the App Store in Vietnam. To learn more and apply for a game license, review the regulations. James Thomson: I suspect this means Dice by PCalc and About by PCalc will be exiting the App Store in [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/12/game-licensing-in-vietnam/>

---

## App Store Advanced Commerce API

date: 2025-02-12, from: Michael Tsai

Apple: To further support developers&#8217; evolving business models &#8212; such as exceptionally large content catalogs, creator experiences, and subscriptions with optional add-ons &#8212; we&#8217;re introducing the Advanced Commerce API. Developers can apply to use the Advanced Commerce API to support eligible App Store business models and more flexibly manage their In-App Purchases within their app. [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/12/app-store-advanced-commerce-api/>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

ChatGPT’s latest feature is a transformative leap for web research. 

<br> 

<https://www.fastcompany.com/91275877/chatgpt-deep-research>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Not Hyperbole Anymore: Musk Is In Charge of the US Government. 

<br> 

<https://talkingpointsmemo.com/edblog/not-hyperbole-anymore-musk-is-in-charge-of-the-us-government>

---

## CrowPi 3 is a Raspberry Pi 5-powered education kit coming soon to Kickstarter

date: 2025-02-12, from: Liliputing

<p>The Elecrow CrowPi 3 is a kit that provides a bunch of tools and resources to help young people develop computer science skills. The kit is about the size of a small, but chunky laptop, measuring 285 x 185 x 38mm (11.2&#8243; x 7.3&#8243; x 1.5&#8243;). But instead of a large display and keyboard, it [&#8230;]</p>
<p>The post <a href="https://liliputing.com/crowpi-3-is-a-raspberry-pi-5-powered-education-kit-coming-soon-to-kickstarter/">CrowPi 3 is a Raspberry Pi 5-powered education kit coming soon to Kickstarter</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/crowpi-3-is-a-raspberry-pi-5-powered-education-kit-coming-soon-to-kickstarter/>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Trump Taunted Over ‘Most Powerless Image Of A President’ Ever. 

<br> 

<https://www.huffpost.com/entry/lawrence-odonnell-donald-trump-powerless-image_n_67ac760fe4b023227078229d>

---

## Elon Musk's Waste.gov Is Just a WordPress Theme Placeholder Page

date: 2025-02-12, from: 404 Media Group

Musk told reporters all of DOGE's actions are "maximally transparent." The website tracking waste is currently about an imaginary architecture firm. 

<br> 

<https://www.404media.co/elon-musks-waste-gov-is-just-a-wordpress-theme-placeholder-page/>

---

## Meetings & Space

date: 2025-02-12, from: Chris Coyier blog

Seventeen bits of advice from Ariel Salminen on Leading Successful Product Teams. I really like all of them. Allow me to pluck off a few about meetings: People gotta work yo. Including yourself. You gotta give lots of time to let that happen. Context switching has a cost for some people, and I&#8217;ve found a [&#8230;] 

<br> 

<https://chriscoyier.net/2025/02/12/meetings-space/>

---

## Find Support

date: 2025-02-12, from: Guy Kawasaki blog

It's essential in adopting the growth mindset. 

<br> 

<https://guykawasaki.substack.com/p/find-support>

---

## Podcast: AI Is Breaking Our Brains

date: 2025-02-12, from: 404 Media Group

This week we discuss a new Microsoft study that finds using generative AI is "atrophying" people's cognition and critical thinking skills, the right's war on Wikipedia, and, in the subscriber's section, the idea of posting against fascism. 

<br> 

<https://www.404media.co/podcast-ai-is-breaking-our-brains/>

---

## AI Slop of Musk and Trump on TikTok Racks Up 700 Million Views

date: 2025-02-12, from: 404 Media Group

Motivational videos on TikTok using AI-generated voices of Trump, Musk, and other celebrities are racking up millions of views.  

<br> 

<https://www.404media.co/ai-slop-of-musk-and-trump-on-tiktok-racks-up-700-million-views/>

---

## Formlabs’ new 3D printers are based on Compute Module 4

date: 2025-02-12, from: Raspberry Pi News (.com)

<p>The latest industrial printer from Formlabs is built on Raspberry Pi Compute Module 4, supporting dual displays and a camera.</p>
<p>The post <a href="https://www.raspberrypi.com/news/formlabs-new-3d-printers-are-based-on-compute-module-4/">Formlabs&#8217; new 3D printers are based on Compute Module 4</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/formlabs-new-3d-printers-are-based-on-compute-module-4/>

---

## I Love Free Software Day: Seid dabei und sagt Danke!

date: 2025-02-12, updated: 2025-02-12, from: Chaos Computer Club Updates

Jedes Jahr am 14. Februar feiert die Free Software Foundation Europe (FSFE) gemeinsam mit anderen Freie-Software-Organisationen und -Enthusiasten den „I Love Free Software Day“, um die Bedeutung der Mitwirkenden von Freier Software hervorzuheben. 

<br> 

<https://www.ccc.de/de/updates/2025/ilovefreesoftware>

---

## Blog questions challenge

date: 2025-02-12, from: Rachel Kwon blog

<p>Two of my favorite people on the internet, <a href="https://nazhamid.com/">Naz</a> and <a href="https://kayserifserif.place/">Katherine</a>, tagged me in this challenge, so here I am filling it in.</p>
<p>(By the way, <em>[hikes up grandpa pants]</em>, we used to call these &ldquo;blog memes,&rdquo; and because we didn&rsquo;t I didn&rsquo;t have many IRL friends who were also internet culture, at least not that I knew of, I&rsquo;d never heard the word out loud and definitely thought it was pronounced &ldquo;meh-mehs.&rdquo; And then memes evolved into something different — what we now commonly think of as internet jokes and viral trends, rather than these early “blog challenges.”)</p> 

<br> 

<https://kwon.nyc/notes/blog-questions-challenge/>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

The United States is not a Silicon Valley company. 

<br> 

<http://scripting.com/2025/02/12/140926.html?title=theUnitedStatesIsNotASiliconValleyCompany>

---

## A Foolish Man Who Built His House on the Sand

date: 2025-02-12, updated: 2025-02-12, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/02/12/a-foolish-man-who-built-his-house-on-the-sand/>

---

## Qualcomm Snapdragon 6 Gen 4 is coming to mid-range phones

date: 2025-02-12, from: Liliputing

<p>Qualcomm&#8217;s new Snapdragon 6 Gen 4 is a mid-range smartphone chip with support for features including cameras up to 200MP, 4K game upscaling, and lossless Bluetooth audio. It&#8217;s also the first Snapdragon 6 series processor to support on-device generative AI capabilities. The chip maker says the first phones powered by the chip should be available [&#8230;]</p>
<p>The post <a href="https://liliputing.com/qualcomm-snapdragon-6-gen-4-is-coming-to-mid-range-phones/">Qualcomm Snapdragon 6 Gen 4 is coming to mid-range phones</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/qualcomm-snapdragon-6-gen-4-is-coming-to-mid-range-phones/>

---

## You Don't Need A Terminal Multiplexer on Your Desktop

date: 2025-02-12, from: mrusme blog

An opinion on the trend of *content creators* promoting Tmux and Zellij for
desktop environments -- and why these setups may miss the point. 

<br> 

<https://xn--gckvb8fzb.com/you-dont-need-a-terminal-multiplexer-on-your-desktop/>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Crossing a line by Timothy Snyder. 

<br> 

<https://snyder.substack.com/p/crossing-a-line?publication_id=310897&post_id=156872999&isFreemail=true&r=w33x&triedRedirect=true>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Musk Makes Broad Claims of Fraud Without Proof (or evidence even). 

<br> 

<https://politicalwire.com/2025/02/12/musk-makes-broad-claims-of-fraud-without-proof/>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Delivering Malware Through Abandoned Amazon S3 Buckets. 

<br> 

<https://www.schneier.com/blog/archives/2025/02/delivering-malware-through-abandoned-amazon-s3-buckets.html>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

It’s <span style="letter-spacing: 0.01rem; -webkit-text-size-adjust: 100%;">time to include RSS in the list of technologies the open social web is built on. To the extent that there&#39;s interop betw the two competing uber-protocols, it&#39;s coming from feeds. And it will be more so in the future.</span> 

<br> 

<https://mastodon.social/@fediforum/113986611897746999>

---

## The Emperor’s New Tariffs: Small, Ugly and Stupid

date: 2025-02-12, from: Paul Krugman

Trump is throwing a tantrum, but the damage will be real 

<br> 

<https://paulkrugman.substack.com/p/the-emperors-new-tariffs-small-ugly>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

With Trump and Musk driving U.S. policy, Kansas farmers have been played for suckers. 

<br> 

<https://kansasreflector.com/2025/02/12/with-trump-and-musk-driving-u-s-policy-kansas-farmers-have-been-played-for-suckers/>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Paul McCartney rocks the Bowery. Inside his surprise NYC concert. 

<br> 

<https://apnews.com/article/paul-mccartney-surprise-concert-bowery-ballroom-ac510237b90d4b78ff991d3b86605560>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

President Elon Musk Suddenly Realizes He Might Not Know How to Govern. 

<br> 

<https://newrepublic.com/post/191402/president-elon-musk-not-know-cancer-research>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Heather Cox Richardson’s nightly post. 

<br> 

<https://heathercoxrichardson.substack.com/p/february-11-2025?publication_id=20533&post_id=156974650&isFreemail=true&r=w33x&triedRedirect=true>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Cancel culture was inhumane. The question of whether it succeeded or not is just more cluelessness. It was just retribution, no more righteous than Trumpian retribution. Now we reap what you all sowed. 

<br> 

<https://www.theatlantic.com/ideas/archive/2025/02/kanye-vance-republicans-vice-signaling/681641/?taid=67ac205912405e0001c92f4c>

---

## The Legacy Of SNARF

date: 2025-02-12, updated: 2025-02-12, from: Tedium site

BuzzFeed, the ultimate social media team player, decides that it needs a social media platform of its own. In the process, it gave us a crazy new buzzword. 

<br> 

<https://feed.tedium.co/link/15204/16960802/buzzfeed-snarf-snarf-snarf-snarf-snarf>

---

## This Adtech Company is Powering Surveillance of U.S. Military Personnel

date: 2025-02-12, from: 404 Media Group

In a letter to a US senator, a Florida-based data broker says it obtained sensitive data on US military members from a Lithuanian company, revealing the global nature of commercial online ad surveillance. 

<br> 

<https://www.404media.co/eskimi-2/>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

TSLA down 16% in last month. 

<br> 

<https://finance.yahoo.com/quote/TSLA/>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Retired federal judge doesn&#39;t see much that courts can do to stop Trump&#39;s actions. 

<br> 

<https://www.npr.org/2025/02/11/nx-s1-5292199/retired-federal-judge-nancy-gertner-trump-federal-funding-freeze-restraining-order>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Migrating Apple Account purchases between accounts. 

<br> 

<https://support.apple.com/en-us/117267>

---

**@Dave Winer's linkblog** (date: 2025-02-12, from: Dave Winer's linkblog)

Silicon Valley&#39;s Playbook and the AI Coup. 

<br> 

<https://www.thenerdreich.com/silicon-valleys-playbook-and-the-ai-coup/>

---

## Recursive Improvement: AI Singularity Or Just Benchmark Saturation?

date: 2025-02-12, updated: 2025-02-12, from: Tom Kellog blog

A fascinating new paper shows that LLMs can recursively self-improve. They can
be trained on older versions of themselves and continuously get better. This immediately made
me think, “this is it, it’s the AI singularity”, that moment when AI is able to autonomously
self-improve forever and become a… (well that sentence can end a lot of ways) 

<br> 

<http://timkellogg.me/blog/2025/02/12/recursive-improvement>

---

## Lilbits: Framework teases new modular hardware, Google Pixel 9a details leaked, and Kickstarter introduces new features

date: 2025-02-11, from: Liliputing

<p>There&#8217;s always a chance that crowdfunding campaigns will fail to deliver on their promises. But Kickstarter is introducing a few new features that should help potential backers make more informed decisions&#8230; as well as allowing backers to break their pledges into four equal payments, which is meant to encourage backers to spend more money on [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-framework-teases-new-modular-hardware-google-pixel-9a-details-leaked-and-kickstarter-introduces-new-features/">Lilbits: Framework teases new modular hardware, Google Pixel 9a details leaked, and Kickstarter introduces new features</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-framework-teases-new-modular-hardware-google-pixel-9a-details-leaked-and-kickstarter-introduces-new-features/>

---

## macOS 15.3.1

date: 2025-02-11, from: Michael Tsai

Juli Clover (release notes, no security, no enterprise, no developer, full installer, IPSW): According to Apple&#8217;s release notes, macOS Sequoia 15.3.1 includes important security fixes, and it is recommended for all users. Important security fixes, but no CVEs. See also: Mr. Macintosh and Howard Oakley. Ric Ford: Apple continues to enable Apple Intelligence on customers&#8217; [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/11/macos-15-3-1/>

---

## macOS 14.7.4 and macOS 13.7.4

date: 2025-02-11, from: Michael Tsai

macOS 14.7.4 (full installer, no security): This update provides important security fixes and is recommended for all users. macOS 13.7.4 (full installer, no security): This update provides important security fixes and is recommended for all users. See also: Howard Oakley. Previously: macOS 14.7.3 and macOS 13.7.3 

<br> 

<https://mjtsai.com/blog/2025/02/11/macos-14-7-4-and-macos-13-7-4/>

---

## iOS 18.3.1 and iPadOS 18.3.1

date: 2025-02-11, from: Michael Tsai

Juli Clover (iOS/iPadOS release notes, security, no enterprise, no developer): According to Apple&#8217;s release notes, iOS 18.3.1 includes bug fixes and security updates. Previously: iOS 18.3 and iPadOS 18.3 

<br> 

<https://mjtsai.com/blog/2025/02/11/ios-18-3-1-and-ipados-18-3-1/>

---

## watchOS 11.3.1

date: 2025-02-11, from: Michael Tsai

Juli Clover (release notes, no security, no developer): The watchOS 11.3.1 update includes important security updates, and it is recommended for all Apple Watch owners. Previously: watchOS 11.3 

<br> 

<https://mjtsai.com/blog/2025/02/11/watchos-11-3-1/>

---

## visionOS 2.3.1

date: 2025-02-11, from: Michael Tsai

Juli Clover (release notes, no security, no developer, no enterprise): According to Apple&#8217;s release notes, visionOS 2.3 includes security updates, and the software is recommended for all users. Previously: visionOS 2.3 

<br> 

<https://mjtsai.com/blog/2025/02/11/visionos-2-3-1/>

---

**@Dave Winer's linkblog** (date: 2025-02-11, from: Dave Winer's linkblog)

CDC and FDA have until tonight to restore webpages, court rules. 

<br> 

<https://arstechnica.com/health/2025/02/cdc-and-fda-have-until-tonight-to-restore-webpages-court-rules/>

---

## llm-sort

date: 2025-02-11, updated: 2025-02-11, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/vagos/llm-sort">llm-sort</a></strong></p>
Delightful <a href="https://llm.datasette.io/">LLM</a> plugin by Evangelos Lamprou which adds the ability to perform "semantic search" - allowing you to sort the contents of a file based on using a prompt against an LLM to determine sort order.</p>
<p>Best illustrated by these examples from the README:</p>
<pre><code>llm sort --query "Which names is more suitable for a pet monkey?" names.txt

cat titles.txt | llm sort --query "Which book should I read to cook better?"
</code></pre>
<p>It works using this pairwise prompt, which is executed multiple times using Python's <code>sorted(documents, key=functools.cmp_to_key(compare_callback))</code> mechanism:</p>
<pre><code>Given the query:
{query}

Compare the following two lines:

Line A:
{docA}

Line B:
{docB}

Which line is more relevant to the query? Please answer with "Line A" or "Line B".
</code></pre>
<p>From <a href="https://lobste.rs/s/yxlisx/llm_sort_sort_input_lines_semantically#c_enduz7">the lobste.rs comments</a>, Cole Kurashige:</p>
<blockquote>
<p>I'm not saying I'm prescient, but in The Before Times <a href="https://github.com/cole-k/turksort">I did something similar</a> with Mechanical Turk</p>
</blockquote>
<p>This made me realize that <em>so many</em> of the patterns we were using against Mechanical Turk a decade+ ago can provide hints about potential ways to apply LLMs.

    <p><small></small>Via <a href="https://lobste.rs/s/yxlisx/llm_sort_sort_input_lines_semantically">lobste.rs</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/plugins">plugins</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/mechanical-turk">mechanical-turk</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/11/llm-sort/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-02-11, from: Dave Winer's linkblog)

The United States is governed by the people of the United States. 

<br> 

<https://tea25.party/>

---

## Philosophy of Technology in Rhetoric and Writing Studies

date: 2025-02-11, from: Digital Humanities Quarterly News

The philosophy of technology is fundamentally concerned with interrogating the epistemic, ontological, and ethical underpinnings of human engagements with technological systems, artifacts, and infrastructures. It compels us to reflect not only on the instrumental logic that drives technological development—e.g., assumptions of efficiency, optimization, and progress—but also on the deeper ontological and epistemological entanglements that shape [...]
<p><a href="https://www.digitalrhetoriccollaborative.org/2025/02/11/philosophy-of-technology-in-rhetoric-and-writing-studies/" rel="nofollow">Source</a></p> 

<br> 

<https://www.digitalrhetoriccollaborative.org/2025/02/11/philosophy-of-technology-in-rhetoric-and-writing-studies/?utm_source=rss&utm_medium=rss&utm_campaign=philosophy-of-technology-in-rhetoric-and-writing-studies>

---

**@Dave Winer's linkblog** (date: 2025-02-11, from: Dave Winer's linkblog)

Something unthinkable to think about. China&#39;s social credit system. This wikipedia page appears pretty friendly to the Chinese government. 

<br> 

<https://en.wikipedia.org/wiki/Social_Credit_System>

---

## Lenovo Yoga Slim 9i now available (first laptop with an under-display camera)

date: 2025-02-11, from: Liliputing

<p>The Lenovo Yoga Slim 9i is a 14 inch laptop with an Intel Lunar Lake processor, a 4K 120 Hz OLED display, and up to 32GB of RAM. It&#8217;s also the first laptop to feature an under-display camera that&#8217;s invisible to the eye when you&#8217;re not using it. First unveiled during CES in January, the Yoga [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lenovo-yoga-slim-9i-now-available-first-laptop-with-an-under-display-camera/">Lenovo Yoga Slim 9i now available (first laptop with an under-display camera)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lenovo-yoga-slim-9i-now-available-first-laptop-with-an-under-display-camera/>

---

## Judge Orders CDC and FDA to Restore Pages Removed by Trump Admin Before Midnight

date: 2025-02-11, from: 404 Media Group

After health agencies responded to Trump's executive order deeming there to be only "two sexes" by scrubbing sites of important resources, a judge ordered they have until midnight Tuesday to bring them back online.  

<br> 

<https://www.404media.co/federal-judge-orders-cdc-fda-to-bring-back-web-pages-before-midnight/>

---

## X86-P6 Pocket NAS features Intel Twin Lake CPU, 4 x M.2 slots, and 2 x 2.5 GbE LAN port

date: 2025-02-11, from: Liliputing

<p>The X86-P6 Pocket NAS  is a tiny computer with a versatile design that lets you pack up to four SSDs and up to 32GB of DDR5-4800 memory into chassis that measures just 100 x 100 x 58.5mm (3.94&#8243; x 3.94&#8243; x 2.3&#8243;). It&#8217;s a follow-up to the X86-P5, and the new model is similar in most respects, [&#8230;]</p>
<p>The post <a href="https://liliputing.com/x86-p6-pocket-nas-features-intel-twin-lake-cpu-4-x-m-2-slots-and-2-x-2-5-gbe-lan-port/">X86-P6 Pocket NAS features Intel Twin Lake CPU, 4 x M.2 slots, and 2 x 2.5 GbE LAN port</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/x86-p6-pocket-nas-features-intel-twin-lake-cpu-4-x-m-2-slots-and-2-x-2-5-gbe-lan-port/>

---

## Senator Pushes Zuckerberg on "Perverse Abuse" of Nudify Ads After 404 Media Report

date: 2025-02-11, from: 404 Media Group

Senator Dick Durbin presses Meta to explain why it can’t stop sending traffic to nonconsensual AI image generators that violate its policy.  

<br> 

<https://www.404media.co/senator-pushes-zuckerberg-on-perverse-abuse-of-nudify-ads-after-404-media-report/>

---

**@Dave Winer's linkblog** (date: 2025-02-11, from: Dave Winer's linkblog)

They&#39;ve almost put the pieces together at the New Republic. 

<br> 

<https://newrepublic.com/article/191367/trump-treasury-default-bond-market?vgo_ee=hRftfOGJfFCAjxW3r4MbP1/G5zWHoKAAzKec5d6pgcl/fQLJ:omqZVQMfonZNRlpoLHZY91B07mvaIbR7>

---

## Everything I warned about in Taming Silicon Valley is rapidly becoming our reality

date: 2025-02-11, from: Gary Marcus blog

It brings me no joy to say that 

<br> 

<https://garymarcus.substack.com/p/everything-i-warned-about-in-taming>

---

## Wikipedia Prepares for 'Increase in Threats' to US Editors From Musk and His Allies

date: 2025-02-11, from: 404 Media Group

The Wikimedia Foundation says it will likely roll out features previously used to protect editors in authoritarian countries more widely.  

<br> 

<https://www.404media.co/wikipedia-prepares-for-increase-in-threats-to-us-editors-from-musk-and-his-allies/>

---

## The New Cro-Magnon Era, What American Oligarchs Have Lost, and Trump's Views on Opera

date: 2025-02-11, from: Tina Brown

We&#8217;re only three weeks into the Ugly American era and it&#8217;s already unbearable. 

<br> 

<https://tinabrown.substack.com/p/the-new-cro-magnon-era-what-american>

---

## An Alternate Cookie Reality

date: 2025-02-11, updated: 2025-02-11, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/02/11/an-alternate-cookie-reality/>

---

## My Head Talks With Contrarians

date: 2025-02-11, from: Paul Krugman

A podcast from the other day 

<br> 

<https://paulkrugman.substack.com/p/my-head-talks-with-contrarians>

---

## Preparing for AI

date: 2025-02-11, from: O'Reilly Radar

Submit a proposal for a talk at our new virtual conference, Coding with AI: The End of Software Development as We Know It.&#160;Proposals must be submitted by March 5; the conference will take place April 24, 2025, from 11AM to 3PM EDT. When tools like GitHub Copilot first appeared, it was received wisdom that AI [&#8230;] 

<br> 

<https://www.oreilly.com/radar/preparing-for-ai-2/>

---

## Thoughts on Reviewing CfP Submissions

date: 2025-02-11, from: Accidentally in Code

Recently, I reviewed ~150 submissions for a conference. It&#8217;s been a while since I did a CfP review, and here are some things I noticed. Noting this is my own personal experience &#8211; others may disagree! This was an anonymous review, which was interesting. There are a lot of great reasons to do an anonymous [&#8230;] 

<br> 

<https://cate.blog/2025/02/11/thoughts-on-reviewing-cfp-submissions/>

---

## Washington’s Birthday: the Federal Holiday

date: 2025-02-11, from: National Archives, Pieces of History blog

On February 17, 2025, we&#8217;ll be celebrating &#8220;Washington&#8217;s Birthday,&#8221; which is the official title of the federally recognized holiday. Visit the National Archives website to learn more about our records related to George Washington—and other U.S. Presidents. This post was originally published in 2015. George Washington led the Continental Army during the Revolutionary War, presided &#8230; <a href="https://prologue.blogs.archives.gov/2025/02/11/washingtons-birthday-the-federal-holiday/" class="more-link">Continue reading <span class="screen-reader-text">Washington&#8217;s Birthday: the Federal Holiday</span></a> 

<br> 

<https://prologue.blogs.archives.gov/2025/02/11/washingtons-birthday-the-federal-holiday/>

---

**@Dave Winer's linkblog** (date: 2025-02-11, from: Dave Winer's linkblog)

Paul Krugman explains why Trump wants to close the CFPB. 

<br> 

<https://paulkrugman.substack.com/p/springtime-for-scammers?publication_id=277517&post_id=156876364&isFreemail=true&r=w33x&triedRedirect=true>

---

## Springtime for Scammers

date: 2025-02-11, from: Paul Krugman

Financial predation now has friends in high places 

<br> 

<https://paulkrugman.substack.com/p/springtime-for-scammers>

---

**@Dave Winer's linkblog** (date: 2025-02-11, from: Dave Winer's linkblog)

Focus on preventing H5N1 outbreaks, not containing them. 

<br> 

<https://www.statnews.com/2025/02/11/h5n1-avian-bird-flu-nipah-virus-prevention-containment/>

---

**@Dave Winer's linkblog** (date: 2025-02-11, from: Dave Winer's linkblog)

Trump demands $500B in rare earths from Ukraine for continued support. 

<br> 

<https://www.politico.eu/article/trump-demands-500b-in-rare-earths-from-ukraine-for-support/>

---

## Do US states with more renewable energy have more expensive electricity?

date: 2025-02-11, from: Hannah Richie at Substack

Despite California being the poster child of high prices, the data suggests no. 

<br> 

<https://www.sustainabilitybynumbers.com/p/us-states-electricity-sources-prices>

---

## Did Elon Musk just Mu$k Sam Altman?

date: 2025-02-11, from: Gary Marcus blog

With some bonus eye candy to lighten the mood 

<br> 

<https://garymarcus.substack.com/p/did-elon-musk-just-muk-sam-altman>

---

## The Eggshell’s Outer Shell

date: 2025-02-11, updated: 2025-02-11, from: Tedium site

Just in time for the eggs to completely fall out of the affordability range of the middle class, let’s talk about egg cartons. 

<br> 

<https://feed.tedium.co/link/15204/16960044/egg-carton-history>

---

**@Dave Winer's linkblog** (date: 2025-02-11, from: Dave Winer's linkblog)

Why do kindness influencers get criticised? 

<br> 

<https://www.bbc.com/news/articles/c23v3kxknrno>

---

**@Dave Winer's linkblog** (date: 2025-02-11, from: Dave Winer's linkblog)

Trump Administration Is Still Freezing Funds Despite Court Orders. 

<br> 

<https://www.propublica.org/article/trump-administration-funding-freeze-workarounds>

---

## Go 1.24 is released!

date: 2025-02-11, updated: 2025-02-11, from: Go language blog

Go 1.24 brings generic type aliases, map performance improvements, FIPS 140 compliance and more. 

<br> 

<https://go.dev/blog/go1.24>

---

## Remarkable Paper Pro review: A purpose-built writing tablet with a better(?) display

date: 2025-02-10, from: Liliputing

<p>ReMarkable is a company that&#8217;s been making E Ink tablets since 2017. The idea is that you get a paper-like reading and writing experience while also allowing you to organize, archive, and search your notes digitally. And the reMarkable Paper Pro is the company&#8217;s biggest, fastest, most versatile model to date. Launched last fall as a [&#8230;]</p>
<p>The post <a href="https://liliputing.com/remarkable-paper-pro-review-a-purpose-built-writing-tablet-with-a-better-display/">Remarkable Paper Pro review: A purpose-built writing tablet with a better(?) display</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br><video crossorigin="anonymous" controls="controls" width="250">
<source type="video/mp4" src="https://liliputing.com/wp-content/uploads/2025/02/Drawing_colors.mp4"></source>
	<source type="video/mp4" src="https://liliputing.com/wp-content/uploads/2025/02/Unfold.mp4"></source>
	<source type="video/mp4" src="https://liliputing.com/wp-content/uploads/2025/02/Handwriting.mp4"></source>
	<source type="video/mp4" src="https://liliputing.com/wp-content/uploads/2025/02/Change_colors.mp4"></source>
	<source type="video/mp4" src="https://liliputing.com/wp-content/uploads/2025/02/Erase.mp4"></source>
	<source type="video/mp4" src="https://liliputing.com/wp-content/uploads/2025/02/Erase_and_move.mp4"></source>
</video> <a href="https://liliputing.com/wp-content/uploads/2025/02/Drawing_colors.mp4" target="_blank">download video/mp4</a> 

<https://liliputing.com/remarkable-paper-pro-review-a-purpose-built-writing-tablet-with-a-better-display/>

---

**@Tomosino's Mastodon feed** (date: 2025-02-10, from: Tomosino's Mastodon feed)

<p>typing a colon followed by certain numbers is popping up certain emoji sets on Android in Signal. Some of them do this for Chinese characters in this post window too, like :21 offering 🈚 . Anyone have knowledge on this? What did I stumble onto?</p> 

<br> 

<https://tilde.zone/@tomasino/113981701109748176>

---

## How Safari Search Engine Extensions Work

date: 2025-02-10, from: Michael Tsai

Jeff Johnson (Hacker News): Note below how Safari says &#8220;Search Google&#8221; and &#8220;Google Search&#8221;, even though I&#8217;m supposed to be using Kagi.[&#8230;]Safari connects to Kagi only after connecting to Google.[&#8230;]An unfortunate consequence is that Safari always sends your search to your default search engine, Google for example, before it sends your search to your custom [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/10/how-safari-search-engine-extensions-work/>

---

## TikTok Android Sideloading

date: 2025-02-10, from: Michael Tsai

TikTok: We&#8217;re enhancing ways for our community to continue using TikTok by making Android Package Kits available at TikTok.com/download so that our U.S. Android users can download our app and create, discover, and connect on TikTok. Via John Gruber: I suspect something is going to give on this standoff. Either (a) China relents and actually [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/10/tiktok-android-sideloading/>

---

## DeepSeek’s True Training Cost

date: 2025-02-10, from: Michael Tsai

Anton Shilov: SemiAnalysis reports that the company behind DeepSeek incurred $1.6 billion in hardware costs and has a fleet of 50,000 Nvidia Hopper GPUs, a finding that undermines the idea that DeepSeek reinvented AI training and inference with dramatically lower investments than the leaders of the AI industry. DeepSeek operates an extensive computing infrastructure with [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/10/deepseeks-true-training-cost/>

---

## Google Maps at 20

date: 2025-02-10, from: Michael Tsai

James Killick (via Adam Chandler): In 2018 Bill [Kilday] wrote a book about their travails. It is the definitive, insider story of Google Maps. The book is called &#8220;Never Lost Again&#8221; and I can&#8217;t recommend it enough. Among other places it&#8217;s available on Amazon and Apple Books.[&#8230;]I recently had the privilege of chatting with Bill [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/02/10/google-maps-at-20/>

---

## Daily Deals (2-10-2025)

date: 2025-02-10, from: Liliputing

<p>Google Pixel 9 series smartphones are on sale for up to $200 off. Amazon&#8217;s current-gen Fire tablets are on sale for up to 35 percent off. And you can pick up a Samsung Galaxy Tab S9 FE 10.9 inch Android tablet with an S-Pen and 128GB of storage for $300. Meanwhile eBay is running a [&#8230;]</p>
<p>The post <a href="https://liliputing.com/daily-deals-2-10-2025/">Daily Deals (2-10-2025)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/daily-deals-2-10-2025/>

---

**@Dave Winer's linkblog** (date: 2025-02-10, from: Dave Winer's linkblog)

Rubio Floats Dark Plan to Deport U.S. Citizens to Third Country. 

<br> 

<https://newrepublic.com/post/191101/rubio-plan-deport-us-citizens-el-salvador?vgo_ee=FD3RMoCzi1ICAdDoEPijZpb6VafHoJ05JH9OISvaPyAaWEEs:fhu6aa8q04AedkD5zaTklcW8hbxPkPMz>

---

## ROCK 5T is a RK3588 single-board PC with up to 32GB RAM, two M.2 sockets, and plenty of I/O

date: 2025-02-10, from: Liliputing

<p>Radxa continues to expand the ROCK 5 line of single-board computers powered by Rockchip RK3588 processors. The new ROCK 5T is a 110 x 82mm (4.3&#8243; x 3.2&#8243;) board that&#8217;s a little larger than the original ROCK 5, but it packs a bunch of additional features while still taking up less space than the ROCK [&#8230;]</p>
<p>The post <a href="https://liliputing.com/rock-5t-is-a-rk3588-single-board-pc-with-up-to-32gb-ram-two-m-2-sockets-and-plenty-of-i-o/">ROCK 5T is a RK3588 single-board PC with up to 32GB RAM, two M.2 sockets, and plenty of I/O</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/rock-5t-is-a-rk3588-single-board-pc-with-up-to-32gb-ram-two-m-2-sockets-and-plenty-of-i-o/>

---

**@Dave Winer's linkblog** (date: 2025-02-10, from: Dave Winer's linkblog)

Musk roots the world economy. 

<br> 

<http://scripting.com/2025/02/10/160321.html>

---

**@Dave Winer's linkblog** (date: 2025-02-10, from: Dave Winer's linkblog)

Trump suggests US may have less debt than thought because of fraud. 

<br> 

<https://www.foxbusiness.com/politics/trump-suggests-us-may-have-less-debt-than-thought-because-fraud>

---

**@Dave Winer's linkblog** (date: 2025-02-10, from: Dave Winer's linkblog)

Hawks&#39; Trae Young to replace injured Bucks&#39; Giannis Antetokounmpo in NBA all-star game next weekend. 

<br> 

<https://www.cbssports.com/nba/news/nba-all-star-game-hawks-trae-young-to-replace-injured-bucks-giannis-antetokounmpo/>

---

## Paris AI Summit Train Wreck

date: 2025-02-10, from: Gary Marcus blog

Almost nobody seems happy 

<br> 

<https://garymarcus.substack.com/p/paris-ai-summit-train-wreck>

---

**@Dave Winer's linkblog** (date: 2025-02-10, from: Dave Winer's linkblog)

The Private Equity Hatchet Man Leading the Lost Boys of DOGE. 

<br> 

<https://prospect.org/power/2025-02-06-private-equity-hatchet-man-leading-lost-boys-of-doge/>

---

## Microsoft Study Finds AI Makes Human Cognition “Atrophied and Unprepared”

date: 2025-02-10, from: 404 Media Group

Researchers find that the more people use AI at their job, the less critical thinking they use. 

<br> 

<https://www.404media.co/microsoft-study-finds-ai-makes-human-cognition-atrophied-and-unprepared-3/>

---

## Advertising Alfiasco

date: 2025-02-10, updated: 2025-02-10, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/02/10/advertising-alfiasco/>

---

**@Dave Winer's linkblog** (date: 2025-02-10, from: Dave Winer's linkblog)

Elon Musk’s rapid unscheduled disassembly of the US government. 

<br> 

<https://www.theverge.com/elon-musk/609164/auto-draft>

---

**@Dave Winer's linkblog** (date: 2025-02-10, from: Dave Winer's linkblog)

It’s past time to really wake up. 

<br> 

<https://daveverse.wordpress.com/2025/02/10/its-past-time-to-really-wake-up/>

---

## My time machine runs on technical writing

date: 2025-02-10, from: Blog by Fabrizio Ferri-Benedetti

<p>This past weekend I’ve been experimenting with AI-assisted coding to port basic docs-as-code elements to old operating systems and platforms, such as the venerable Intel 386. While this might strike you as a bizarre display of futility, I find this sort of retrocomputing exercise to be quite beneficial, if not enlightening. Something just clicks when you stop and walk backwards.</p> 

<br> 

<https://passo.uno/retrocomputing-tech-writing-lab/>

---

## Sabotaging the Pax Americana

date: 2025-02-10, from: Paul Krugman

Trump and Musk are making us distrusted, friendless and weak 

<br> 

<https://paulkrugman.substack.com/p/sabotaging-the-pax-americana>

---

## Cave mapping with Raspberry Shake

date: 2025-02-10, from: Raspberry Pi News (.com)

<p>Accurate maps of intricate cave systems help improve the safety of intrepid divers. Read about Raspberry Shake’s contribution.</p>
<p>The post <a href="https://www.raspberrypi.com/news/cave-mapping-with-raspberry-shake/">Cave mapping with Raspberry Shake</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/cave-mapping-with-raspberry-shake/>

---

## Cerebras brings instant inference to Mistral Le Chat

date: 2025-02-10, updated: 2025-02-10, from: Simon Willison’s Weblog

<p><strong><a href="https://cerebras.ai/blog/mistral-le-chat">Cerebras brings instant inference to Mistral Le Chat</a></strong></p>
Mistral <a href="https://mistral.ai/en/news/all-new-le-chat">announced a major upgrade</a> to their <a href="https://chat.mistral.ai/chat">Le Chat</a> web UI (their version of ChatGPT) a few days ago, and one of the signature features was performance.</p>
<p>It turns out that performance boost comes from hosting their model on Cerebras:</p>
<blockquote>
<p>We are excited to bring our technology to Mistral – specifically the flagship 123B parameter Mistral Large 2 model. Using our Wafer Scale Engine technology, we achieve over 1,100 tokens per second on text queries.</p>
</blockquote>
<p>Given Cerebras's so far unrivaled inference performance I'm surprised that no other AI lab has formed a partnership like this already.


    <p>Tags: <a href="https://simonwillison.net/tags/mistral">mistral</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/cerebras">cerebras</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/10/cerebras-mistral/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-02-10, from: Dave Winer's linkblog)

Teslas turn toxic as sales crash in Europe and the UK. 

<br> 

<https://arstechnica.com/cars/2025/02/tesla-sales-plummet-in-the-uk-france-and-germany/>

---

**@Dave Winer's linkblog** (date: 2025-02-10, from: Dave Winer's linkblog)

Locals protest Musk, DOGE outside of Tesla dealership. 

<br> 

<https://www.ksby.com/san-luis-obispo/we-cant-stand-idly-by-locals-gather-outside-of-tesla-dealership-to-protest-musk-doge>

---

## 538. Horror in the Congo: The Nightmare Begins  (Part 1)

date: 2025-02-10, from: This is history podcast

<p>The story of King Leopold of Belgium’s brutal regime in the Congo Free State, during the late 19th century, is one of the darkest and most important in global history. It is a story of horror &#8211; the murky depths of the human soul pushed to its primal limits, European colonialism and the first Scramble [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/538-horror-in-the-congo-the-nightmare-begins-part-1/">538. Horror in the Congo: The Nightmare Begins  (Part 1)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/538-horror-in-the-congo-the-nightmare-begins-part-1/>

---

## US-RSE Black History Month Spotlight - Charles Henry Turner

date: 2025-02-10, from: The United States Research Software Engineer Association

US-RSE’s DEI working group (DEI-WG) is proud to help US-RSE celebrate and participate in Black History Month. Each week during Black History Month, the US-RSE will spotlight Black/African Americans who have been involved in computing, science, engineering, and/or math, and have inspired our members through their accomplishments in their careers... 

<br> 

<https://us-rse.org/2025-02-10-black-history-spotlight-charles-turner/>

---

## Book review, "Man and the Computer"

date: 2025-02-10, from: Robert's Ramblings

A book review of a vintage computer publication, "Man and the Computer" by
John G. Kemeny, published 1972, ISBN: 0684130092
Read at the Open Library, <https://openlibrary.org/books/OL5282840M/Man_and_the_computer> 
 

<br> 

<https://rsdoiel.github.io/blog/2025/02/10/Man_and_the_Computer.html>

---

## Shame on Google, twice

date: 2025-02-09, from: Gary Marcus blog

A very, very brief Super Bowl special 

<br> 

<https://garymarcus.substack.com/p/shame-on-google-twice>

---

## Quoting Sam Altman

date: 2025-02-09, updated: 2025-02-09, from: Simon Willison’s Weblog

<blockquote cite="https://blog.samaltman.com/three-observations"><p><strong>The cost to use a given level of AI falls about 10x every 12 months, and lower prices lead to much more use.</strong> You can see this in the token cost from GPT-4 in early 2023 to GPT-4o in mid-2024, where the price per token dropped about 150x in that time period. Moore’s law changed the world at 2x every 18 months; this is unbelievably stronger.</p></blockquote>
<p class="cite">&mdash; <a href="https://blog.samaltman.com/three-observations">Sam Altman</a>, Three Observations</p>

    <p>Tags: <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/llm-pricing">llm-pricing</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/sam-altman">sam-altman</a></p> 

<br> 

<https://simonwillison.net/2025/Feb/9/sam-altman/#atom-everything>

---

**@Tomosino's Mastodon feed** (date: 2025-02-09, from: Tomosino's Mastodon feed)

<p>Terrible idea: a website that has all your information being pulled in a banner behind a plane... but the plane only flies by your browser window at certain times of day. You might catch part of the banner or the plane if you pull up the site at the right time. Refresh it over several minutes to see all the details. The rest of the time it's just empty air.</p> 

<br> 

<https://tilde.zone/@tomasino/113975653604789226>

---

## AI’s and Stolen Training Data

date: 2025-02-09, from: Stephen Smith's blog

Introduction Facebook parent company Meta is in big trouble as a trial is revealing that Meta trained its AI using 81.7 terabytes of data downloaded from torrent sites like PirateBay. Among everything else this contained thousands of copyrighted books that had been illegally uploaded to Meta’s corporate computers. The new Chinese AI company DeepSeek is [&#8230;] 

<br> 

<https://smist08.wordpress.com/2025/02/09/ais-and-stolen-training-data/>

---

## Sugar Cubes N97 Elite reimagines the Nokia N97 smartphone as a handheld game console

date: 2025-02-09, from: Liliputing

<p>At a time when most handheld game consoles look like souped up versions of classic Nintendo or Sony PlayStation designs, Chinese handheld designer Sugar Cubes is taking inspiration from a different source for its latest mobile gaming device. The Sugar Cubes N97 Elite is a handheld with a 4.6 inch display and a compact body that [&#8230;]</p>
<p>The post <a href="https://liliputing.com/sugar-cubes-n97-elite-reimagines-the-nokia-n97-smartphone-as-a-handheld-game-console/">Sugar Cubes N97 Elite reimagines the Nokia N97 smartphone as a handheld game console</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br><video crossorigin="anonymous" controls="controls" width="250">
<source type="video/mp4" src="https://liliputing.com/wp-content/uploads/2025/02/n97-elite.mp4"></source>
</video> <a href="https://liliputing.com/wp-content/uploads/2025/02/n97-elite.mp4" target="_blank">download video/mp4</a> 

<https://liliputing.com/sugar-cubes-n97-elite-reimagines-the-nokia-n97-smartphone-as-a-handheld-game-console/>

---

## GMK AD-GP1 is yet another eGPU with Radeon RX 7600M-XT (OCuLink and USB4)

date: 2025-02-09, from: Liliputing

<p>GMK is the latest mini PC maker to launch an external GPU dock that brings discrete graphics to compact computers. First announced in January, the GMK AD-GP1 is now available for $460. It&#8217;s a a 163.9 x 110.5 x 39.9mm (6.45&#8243; x 4.35&#8243; x 1.57&#8243;) box that you can plug into a mini PC, handheld, or [&#8230;]</p>
<p>The post <a href="https://liliputing.com/gmk-ad-gp1-is-yet-another-egpu-with-radeon-rx-7600m-xt-oculink-and-usb4/">GMK AD-GP1 is yet another eGPU with Radeon RX 7600M-XT (OCuLink and USB4)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/gmk-ad-gp1-is-yet-another-egpu-with-radeon-rx-7600m-xt-oculink-and-usb4/>

---

## WARNING: Elon Musk is crippling the future of the United States

date: 2025-02-09, from: Gary Marcus blog

And I am not sure he even understands the consequences of his own actions 

<br> 

<https://garymarcus.substack.com/p/warning-elon-musk-is-crippling-the>

---

## ZX06 is a cheap 3.4 inch Intel Twin Lake mini PC with support for up to three 4K displays

date: 2025-02-09, from: Liliputing

<p>The ZX06 mini PC is a compact desktop computer that measures 87 x 87 x 39mm (3.4&#8243; x 3.4&#8243; x 1.5&#8243;) and features an Intel N150 quad-core processor based on Intel&#8217;s low-cost, low-power &#8220;Twin Lake&#8221; architecture. Available now from several different AliExpress storefronts, the little computer has 12GB of LPDDR5-4800 onboard memory and support for up [&#8230;]</p>
<p>The post <a href="https://liliputing.com/zx06-is-a-cheap-3-4-inch-intel-twin-lake-mini-pc-with-support-for-up-to-three-4k-displays/">ZX06 is a cheap 3.4 inch Intel Twin Lake mini PC with support for up to three 4K displays</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/zx06-is-a-cheap-3-4-inch-intel-twin-lake-mini-pc-with-support-for-up-to-three-4k-displays/>

---

**@Dave Winer's linkblog** (date: 2025-02-09, from: Dave Winer's linkblog)

Trump To New York: Drop Dead. 

<br> 

<https://paulkrugman.substack.com/p/trump-to-new-york-drop-dead?publication_id=277517&post_id=156788137&isFreemail=true&r=w33x&triedRedirect=true>

---

## Quad Printing PDFs for Prison Mailing and the Immerse Reading Bible

date: 2025-02-09, updated: 2025-02-09, from: Russell Graves, Syonyk's Project Blog

 

<br> 

<https://www.sevarg.net/2025/02/09/pdf-rendering-for-prison-mail-immerse-reading-bible/>

---

## Trump To New York: Drop Dead

date: 2025-02-09, from: Paul Krugman

Why he wants to kill a hugely successful policy 

<br> 

<https://paulkrugman.substack.com/p/trump-to-new-york-drop-dead>

---

**@Dave Winer's linkblog** (date: 2025-02-09, from: Dave Winer's linkblog)

I now have turned Bluesky into a feed reader. This is new. Pretty sure it wasn&#39;t ever done on Twitter either. Here&#39;s the first one. It might be fun if this post turned up over there. It could (that part is somewhat random). 

<br> 

<https://bsky.app/profile/feediverse.bsky.social>

---

**@Dave Winer's linkblog** (date: 2025-02-09, from: Dave Winer's linkblog)

Picking the Perfect Episode of TV. 

<br> 

<https://www.theatlantic.com/newsletters/archive/2025/02/picking-the-perfect-episode-of-tv/681614/?gift=f35zZN0v_gDFE8xNwlQAHZByVT7n7xTtsSwCf37BlCY&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

**@Dave Winer's linkblog** (date: 2025-02-09, from: Dave Winer's linkblog)

I subscribed to Wired yesterday. Their coverage of the Musk coup is unparalleled, and I am a Wired alum, having written for them in the early days of the web. It was only $10 for a year. 

<br> 

<https://www.wired.com/magazine/?_sp=c466596b-7bb1-442c-804e-1398d4e884fa.1739107442565>

---

**@Dave Winer's linkblog** (date: 2025-02-09, from: Dave Winer's linkblog)

Recommend listening to the segment of this week&#39;s On The Media about what&#39;s going on at the DoJ. I know you don&#39;t need more to be depressed about, but something big is changing there, and you should know. Begins at 12:51. 

<br> 

<https://podcasts.apple.com/us/podcast/how-wired-magazine-is-scooping-the-competition-plus/id73330715?i=1000690135861>

---

**@Dave Winer's linkblog** (date: 2025-02-09, from: Dave Winer's linkblog)

Do you take me for a fool? <span style="letter-spacing: 0.01rem; -webkit-text-size-adjust: 100%;">Do you think that I don&#39;t see </span><span style="letter-spacing: 0.01rem; -webkit-text-size-adjust: 100%;">That ditch out on Gitmo that they&#39;re digging just for me?</span> 

<br> 

<https://m.youtube.com/watch?v=MiBfhFvJdvc>

---

**@Dave Winer's linkblog** (date: 2025-02-09, from: Dave Winer's linkblog)

Trump’s Effort to End Basic Medical Research in the United States. 

<br> 

<https://talkingpointsmemo.com/edblog/more-on-trumps-effort-to-end-basic-medical-research-in-the-united-states>

---

**@Dave Winer's linkblog** (date: 2025-02-09, from: Dave Winer's linkblog)

San Francisco unveils marble bust of Aaron Swartz. 

<br> 

<https://sfstandard.com/2025/02/08/aaron-swartz-marble-statue-unveiled-internet-archive/>

---

**@Dave Winer's linkblog** (date: 2025-02-09, from: Dave Winer's linkblog)

Ben Stiller Explains Why a Hudson Valley Diner is Worth the Trip. 

<br> 

<https://hudsonvalleycountry.com/ixp/705/p/ben-stiller-hudson-valley-diner/>

---

## Five ways in which the last 3 months — and especially the DeepSeek era — have vindicated “Deep learning is hitting a wall"

date: 2025-02-09, from: Gary Marcus blog

A demonized paper from three years ago that has stood the test of time 

<br> 

<https://garymarcus.substack.com/p/five-ways-in-which-the-last-3-months>

