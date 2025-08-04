---
title: snapshots
updated: 2025-08-04 06:07:55
---

# snapshots

(date: 2025-08-04 06:07:55)

---

## Should Lyft and Uber charge more if your battery is low? California may soon ban that

date: 2025-08-04, from: The Markup blog

California lawmakers want to ban companies from using data about consumers’ devices like battery life, model and geolocation to set fluctuating prices. Proponents say such “surveillance pricing” is discriminatory. 

<br> 

<https://themarkup.org/artificial-intelligence/2025/08/04/california-surveillance-pricing-ban>

---

## AI, Open Science, and the Future of Research Integrity: An Interview with Alison Mudditt of PLOS

date: 2025-08-04, from: Authors Union blogs

Below is an interview with Alison Mudditt, CEO of PLOS (Public Library of Science) discussing the impact of AI on publishing [&#8230;] 

<br> 

<https://www.authorsalliance.org/2025/08/04/ai-open-science-and-the-future-of-research-integrity-an-interview-with-alison-mudditt-of-plos/>

---

## Trump is Getting Desperate

date: 2025-08-04, from: Paul Krugman

We're in an extremely dangerous moment 

<br> 

<https://paulkrugman.substack.com/p/trump-is-getting-desperate-and-dangerous>

---

## New wave of projects to create digital commons

date: 2025-08-04, updated: 2025-08-04, from: nlnet feed

 

<br> 

<https://nlnet.nl/news/2025/20250804-announcement-grants-CommonsFund.html>

---

## Making my GitHub heatmap widget

date: 2025-08-04, from: Lean Rada's blog


<p><em>For RSS readers: This article contains interactive content available on the <a href="https://leanrada.com/notes/github-heatmap-widget/?ref=rss">original post on leanrada.com</a>.</em></p>

<p>This post is about how I made the GitHub heatmap widget on my site.</p>

<p>Here’s the raw, live WebComponent <code>&lt;gh-contribs&gt;</code> by the way:</p>
<card-box>
  <pre>Interactive content: <a href="https://leanrada.com/notes/github-heatmap-widget/?ref=rss">Visit the post to interact with this content.</a>
Alternative name: Gh Contribs</pre>
</card-box>
<h2>Scraping the data</h2>

<p>First, I had to scrape the heatmap data. I don’t know if there’s a proper API, but I found an endpoint that renders an HTML partial of what I wanted.</p>

<p>As far as I know, the GitHub website today works using partial HTMLs to update its UI without reloading the whole page. I think this endpoint populates the contribution graph section of the profile page.</p>

<p>The endpoint that returns a user’s contribution graph is <a href="https://github.com/users/Kalabasa/contributions" target="_blank"><code>https://github.com/users/{username}/contributions</code></a>. I presume the user has to have contribution stats public. This undocumented API could also break at any time. 😬</p>

<figure>
  <img src="https://leanrada.com/notes/github-heatmap-widget/contributions-html.png?ref=rss" loading="lazy" width="932" height="741">
  <figcaption>The response HTML for my github.com/users/Kalabasa/contributions</figcaption>
</figure>

<p>Loading this endpoint gives you an unstyled piece of HTML containing an HTML table of contribution data and other UI. The table cells are invisible because of the lack of styles! When embedded in the profile page, it inherits the appropriate styling in context.</p>

<img alt="styled contribution table" src="https://leanrada.com/notes/github-heatmap-widget/contributions-styled.png?ref=rss" loading="lazy" width="741" height="204">

<p>The first column is the weekday label, and the rest of the cells seem to represent a single day each. The data is encoded in the HTML that presents the data! This reminds me of <a href="https://htmx.org/essays/hateoas/" target="_blank">Hypermedia as the Engine of Application State</a>. html = data.</p>

<pre><code>&lt;tbody&gt;
&lt;tr style="height: 10px"&gt;
  &lt;td class="ContributionCalendar-label" style="position: relative"&gt;
    &lt;span class="sr-only"&gt;Monday&lt;/span&gt;
    &lt;span aria-hidden="true" style="clip-path: None; position: absolute; bottom: -3px"&gt;
      Mon
    &lt;/span&gt;
  &lt;/td&gt;
  &lt;td
    tabindex="0"
    data-ix="0"
    aria-selected="false"
    aria-describedby="contribution-graph-legend-level-2"
    style="width: 10px"
    data-date="2024-08-05"
    id="contribution-day-component-1-0"
    data-level="2"
    role="gridcell"
    data-view-component="true"
    class="ContributionCalendar-day"&gt;
  &lt;/td&gt;
  &lt;td
    tabindex="0"
    data-ix="1"
    aria-selected="false"
    aria-describedby="contribution-graph-legend-level-1"
    style="width: 10px"
    data-date="2024-08-12"
    id="contribution-day-component-1-1"
    data-level="1"
    role="gridcell"
    data-view-component="true"
    class="ContributionCalendar-day"&gt;
  &lt;/td&gt;
  &lt;td
    tabindex="0"
    data-ix="2"
    aria-selected="false"
    aria-describedby="contribution-graph-legend-level-2"
    style="width: 10px"
    data-date="2024-08-19"
    id="contribution-day-component-1-2"
    data-level="2"
    role="gridcell"
    data-view-component="true"
    class="ContributionCalendar-day"&gt;
  &lt;/td&gt;
  <!--...--></code></pre>

<p>What I was looking for here was the <code>data-level</code> attribute on each cell. It contains a coarse integer value that indicates the activity level for the day.</p>

<p>Coupled with the <code>data-date</code> attribute, it became rather easy to scrape this data! Instead of keeping track of columns and rows, I just go through each <code>data-date</code> and <code>data-level</code> as a (date,level) data point.</p>

<p>Here’s my parse function using <a href="https://cheerio.js.org/" target="_blank">cheerio</a>, a jQuery clone for Node.js.</p>

<pre><code>const res = await fetch(
  "https://github.com/users/Kalabasa/contributions");
let data = parseContribs(await res.text());

/**
 * Parses a GitHub contribution calendar HTML string and extracts contribution data.
 *
 * @param {string} html - The HTML string containing the GitHub contribution calendar.
 * @returns {{ date: Date, level: number }[]} Array of contribution objects with date and activity level.
 * @throws {Error} If the contribution calendar table cannot be found in the HTML.
 */
function parseContribs(html) {
  const ch = cheerio.load(html);
  const chTable = ch("table.ContributionCalendar-grid");
  if (!chTable.length) throw new Error("Can't find table.");
  const chDays = chTable.find("[data-date]");
  const data = chDays
    .map((_, el) =&gt; {
      const chDay = ch(el);
      const date = new Date(chDay.attr("data-date"));
      const level = parseInt(chDay.attr("data-level"), 10);
      return { date, level };
    })
    .get();
  return data;
}</code></pre>


This data is scraped at regular intervals, reformatted into a grid, and saved into a compact JSON format for later consumption and rendering by the WebComponent on the client.


<pre><code>// gh-contribs.json
[
  [1,2,1,2,2,1,1],
  [0,1,0,2,0,1,0],
  [1,1,1,1,1,1,0],
  [0,1,0,0,1,1,0],
  [0,0,1,0,0,0]
]</code></pre>

<h2>Rendering the data</h2>

<p>The reason why the data is reformatted into a grid like that is to make the rendering logic straightforward. The data is structured so that it can be directly converted into HTML without thinking in dates and weeks that are in the original data.</p>

<p>Here are the current JSON and WebComponent side by side. Each row in the data gets directly rendered as a column in the component.</p>
<auto-grid>
  <code-block language="js">
    <pre><code>
      <pre>Interactive content: <a href="https://leanrada.com/notes/github-heatmap-widget/?ref=rss">Visit the post to interact with this content.</a>
Alternative name: Inline script</pre>
    </code></pre>
  </code-block>
  <pre>Interactive content: <a href="https://leanrada.com/notes/github-heatmap-widget/?ref=rss">Visit the post to interact with this content.</a>
Alternative name: Gh Contribs</pre>
</auto-grid>
<p>As such, <code>&lt;gh-contribs&gt;</code>’s initialisation logic is really simple:</p>

<pre><code>const contribs = await fetch(
  "path/to/gh-contribs.json"
).then((res) =&gt; res.json());

let htmlString = "";
for (const col of contribs) {
  for (const level of col) {
    htmlString += html`&lt;div data-level="${level}"&gt;${level}&lt;/div&gt;`;
  }
}
this.innerHTML = htmlString;</code></pre>


Add some CSS and it’s done:


<pre><code>gh-contribs {
  display: grid;
  grid-auto-flow: column;
  grid-template-rows: repeat(7, auto);
  gap: 12px;
  div {
    position: relative;
    width: 18px;
    height: 18px;
    background: #222c2c;
    color: transparent;
    &amp;::after {
      content: "";
      position: absolute;
      inset: 0;
      background: #54f8c1;
    }
    &amp;[data-level="0"]::after {
      opacity: 0;
    }
    &amp;[data-level="1"]::after {
      opacity: 0.3;
    }
    &amp;[data-level="2"]::after {
      opacity: 0.6;
    }
    &amp;[data-level="3"]::after {
      opacity: 1;
    }
  }
}</code></pre>

<h2>Why not use the original HTML?</h2>

<p>Why not just embed the contributions HTML from GitHub? Slice the relevant <code>&lt;tr&gt;</code>s and <code>&lt;td&gt;</code>s…? Why parse the original HTML table, convert it to JSON, then render it as HTML again?</p>

<p>The main reason to do [HTML → JSON → HTML] is to remain flexible. As you know, that endpoint is undocumented. Also, depending on the HTML structure of the original is risky. Risk of breakage, risk of unwanted content, etc.</p>

<p>This way, I can change how I get the data without refactoring the WebComponent. I could go [<strong>GitHub API</strong> → JSON → HTML] or [<strong>local git script</strong> → JSON → HTML] or whatever.</p>

<p>It also works the other end. I actually rewrote this widget recently (from statically-generated HTML into a WebComponent) without having to change the scraper script or the JSON data structure.</p>

<h2>Final touches</h2>

<p>The WebComponent renders just the grid itself for flexibility. This let me use it in different ways, like with an icon and heading as in the home page.</p>
<card-box>
  <h4>
    <img src="https://leanrada.com/icons/github.png?ref=rss" alt="" loading="lazy" width="16" height="16">
    my github<br>heatmap
  </h4>
  <pre>Interactive content: <a href="https://leanrada.com/notes/github-heatmap-widget/?ref=rss">Visit the post to interact with this content.</a>
Alternative name: Gh Contribs</pre>
</card-box>
<p>Here’s the <a href="https://leanrada.com/components/gh-contribs/gh-contribs.js?ref=rss" target="_blank">source code for this WebComponent</a> if you’re interested.</p>
 

<br> 

<https://leanrada.com/notes/github-heatmap-widget/?ref=rss>

---

## The ChatGPT sharing dialog demonstrates how difficult it is to design privacy preferences

date: 2025-08-03, updated: 2025-08-03, from: Simon Willison’s Weblog

<p>ChatGPT just removed their "make this chat discoverable" sharing feature, after it turned out a material volume of users had inadvertantly made their private chats available via Google search.</p>
<p>Dane Stuckey, CISO for OpenAI, <a href="https://x.com/cryps1s/status/1951041845938499669">on Twitter</a>:</p>
<blockquote>
<p>We just removed a feature from @ChatGPTapp that allowed users to make their conversations discoverable by search engines, such as Google. This was a short-lived experiment to help people discover useful conversations. [...]</p>
<p>Ultimately we think this feature introduced too many opportunities for folks to accidentally share things they didn't intend to, so we're removing the option.</p>
</blockquote>
<p>There's been some media coverage of this issue - here are examples from <a href="https://techcrunch.com/2025/07/31/your-public-chatgpt-queries-are-getting-indexed-by-google-and-other-search-engines/">TechCrunch</a>, <a href="https://www.techradar.com/ai-platforms-assistants/chatgpt/openai-pulls-chat-sharing-tool-after-google-search-privacy-scare">TechRadar</a>, and <a href="https://www.pcmag.com/news/be-careful-what-you-tell-chatgpt-your-chats-could-show-up-on-google-search">PCMag</a>.</p>
<p>It turned out users had shared extremely private conversations and made them discoverable by search engines, which meant that various <code>site:chatgpt.com ...</code> searches were turning up all sorts of potentially embarrassing details.</p>
<p>Here's what that UI looked like before they removed the option:</p>
<p><img src="https://static.simonwillison.net/static/2025/chatgpt-share.jpg" alt="Screenshot of a chat sharing dialog with title &quot;Public link created&quot; and X close button. Text reads &quot;A public link to your chat has been created. Manage previously shared chats at any time via Settings.&quot; Below is an unchecked checkbox labeled &quot;Make this chat discoverable&quot; with subtitle &quot;Allows it to be shown in web searches&quot;. The sharing URL shown is &quot;https://chatgpt.com/share/688b95ef-f986&quot; with a black &quot;Copy link&quot; button. At bottom are three social sharing icons for LinkedIn, Reddit, and X." style="max-width: 100%;" /></p>
<p>I've seen a bunch of commentary, both on Twitter and <a href="https://news.ycombinator.com/item?id=44778764">this Hacker News thread</a>, from people who are baffled that anyone could be confused by such a clear option in the UI.</p>
<p>I think that confusion is warranted. Let's break it down.</p>
<p>Here's the microcopy in question:</p>
<blockquote>
<p><strong>Make this chat discoverable</strong><br />
Allows it to be shown in web searches.</p>
</blockquote>
<p>The first problem here is the choice of terminology. "Discoverable" is not a widely understood term - it's insider jargon. "Allows it to be shown in web searches" is better, but still requires a surprisng depth of understanding from users before they can make an informed decision.</p>
<p>Here's everything a user would need to understand for this to make sense to them:</p>
<ul>
<li>What a URL is, and how it's posssible to create a URL that is semi-public in that it's unguessable by others but can still be read by anyone you share it with. That concept is a pretty tall order just on its own!</li>
<li>What a web search engine is - that in this case it's intended as a generic term for Google, Bing, DuckDuckGo etc.</li>
<li>That "web search" here means "those public search engines other people can use" and not something like "the private search feature you use on this website".</li>
<li>A loose understanding of how search engines work: that they have indexes, and those indexes can selectively include or exclude content.</li>
<li>That sites like ChatGPT get to control whether or not their content is included in those indexes.</li>
<li>That the nature of a "secret URL" is that, once shared and made discoverable, anyone with that link (or who finds it through search) can now view the full content of that page.</li>
</ul>
<p>ChatGPT has over a billion users now. That means there is a giant range of levels of technical expertise among those users. We can't assume that everyone understands the above concepts necessary to understand the implications of checking that box.</p>
<p>And even if they have the pre-requisite knowledge required to understand this, <strong>users don't read</strong>.</p>
<p>When people are using an application they are always looking for the absolute shortest path to achieving their goal. Any dialog box or question that appears is something to be skipped over as quickly as possible.</p>
<p>Sadly, a lot of users may have learned to just say "yes" to any question. This option about making something "discoverable"? Sure, whatever, click the box and keep on going.</p>
<p>I think there's another factor at play here too: the option itself makes almost no sense.</p>
<p>How many people looking for a way to share their chats are going to think "and you know what? Stick this in Google too"?</p>
<p>It's such a tiny fraction of the audience that a logical conclusion, when faced with the above option, could well be that obviously it wouldn't put my chats in Google because who on Earth would ever want that to happen?</p>
<p>I think OpenAI made the right call disabling this feature. The value it can provide for the tiny set of people who decide to use it is massively outweighed by the potential for less discerning users to cause themselves harm by inadvertently sharing their private conversations with the world.</p>
<h4 id="meta-ai-does-this-even-worse">Meta AI does this even worse</h4>
<p>A much worse example of this anti-pattern is Meta AI's decision to provide a "Post to feed" button in their own Meta AI chat app:</p>
<p><img src="https://static.simonwillison.net/static/2025/meta-ai-share.jpg" alt="Sharing dialog has two options: Post to feed - share this conversation to the public feed so anyone can see it and engage. and Share a link: Create a link to share this conversation with specific people." style="max-width: 100%;" /></p>
<p>I think their microcopy here is <em>top notch</em> - the text here uses clear language and should be easy for anyone to understand.</p>
<p>(I took this screenshot today though, so it's possible the text has been recently updated.)</p>
<p>And yet... Futurism, June 14th: <a href="https://futurism.com/meta-ai-embarassing">People Don't Realize Meta's AI App Is Publicly Blasting Their Humiliating Secrets to the World</a>.</p>
<p>Once again, when your users number in the millions some of them are going to randomly click things without understanding the consequences.</p>
<p>The Meta AI iPhone app (fun fact: it can talk to you in the voice of Dame Judi Dench or John Cena) shows that public feed on the homepage when you first open the app, presumably to try and help people get over the blank slate "what is this thing even for" problem. They do not appear keen on losing this feature!</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/design">design</a>, <a href="https://simonwillison.net/tags/privacy">privacy</a>, <a href="https://simonwillison.net/tags/usability">usability</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/meta">meta</a></p> 

<br> 

<https://simonwillison.net/2025/Aug/3/privacy-design/#atom-everything>

---

## High Quality Offline Music

date: 2025-08-03, from: mrusme blog

A brief overview of how to enjoy high quality music without subscribing to a
privacy-invasive and usually lower-quality music streaming service like
Spotify, YouTube Music, Deezer, etc. 

<br> 

<https://xn--gckvb8fzb.com/high-quality-offline-music/>

---

## XBai o4

date: 2025-08-03, updated: 2025-08-03, from: Simon Willison’s Weblog

<p><strong><a href="https://huggingface.co/MetaStoneTec/XBai-o4">XBai o4</a></strong></p>
Yet <em>another</em> open source (Apache 2.0) LLM from a Chinese AI lab. This model card claims:</p>
<blockquote>
<p><strong>XBai o4</strong> excels in complex reasoning capabilities and has now completely surpassed OpenAI-o3-mini in Medium mode.</p>
</blockquote>
<p>This a 32.8 billion parameter model released by MetaStone AI, a new-to-me lab who released their first model in March - <a href="https://huggingface.co/MetaStoneTec/MetaStone-L1-7B">MetaStone-L1-7B</a>, then followed that with MetaStone-S1 <a href="https://huggingface.co/MetaStoneTec/MetaStone-S1-1.5B">1.5B</a>, <a href="https://huggingface.co/MetaStoneTec/MetaStone-S1-7B">7B</a> and <a href="https://huggingface.co/MetaStoneTec/MetaStone-S1-32B">32B</a> in July and now XBai o4 in August.</p>
<p>The MetaStone-S1 models were accompanied with a with a paper, <a href="https://arxiv.org/abs/2507.01951">Test-Time Scaling with Reflective Generative Model</a>.</p>
<p>There is <em>very</em> little information available on the English-language web about MetaStone AI. Their paper shows a relationship with USTC, <a href="https://en.wikipedia.org/wiki/University_of_Science_and_Technology_of_China">University of Science and Technology of China</a> in Hefei. One of their researchers <a href="https://x.com/WangMagic_/status/1951690465222217872">confirmed on Twitter</a> that their CEO is from <a href="https://en.wikipedia.org/wiki/Kuaishou">KWAI</a> which lead me to <a href="https://www.qbitai.com/2024/07/168071.html">this Chinese language article</a> from July last year about Li Yan, formerly of KWAI and now the founder of Wen Xiaobai and <a href="https://x.com/simonw/status/1951694450369208361">evidently</a> <a href="https://x.com/WangMagic_/status/1951694611191324929">now</a> the CEO of MetaStone. <a href="https://www.wenxiaobai.com">www.wenxiaobai.com</a> is listed as the "official website" linked to from <a href="https://github.com/MetaStone-AI/XBai-o4">the XBai-o4 README</a> on GitHub.</p>
<p>Ivan Fioravanti <a href="https://huggingface.co/mlx-community/models?search=xbai-o4">got it working under MLX</a> in 4bit, 5bit, 6bit, 8bit and 4bit-DWQ sizes. I tried his <a href="https://huggingface.co/mlx-community/XBai-o4-6bit">6bit one</a> (a 24.81GB download) in LM Studio and had it "Generate an SVG of a pelican riding a bicycle". It thought for 39.49 seconds (<a href="https://gist.github.com/simonw/78182fc3409e36f8d22217992967b9d6#response">thinking trace here</a>) and gave me this:</p>
<p><img alt="The pelican is blue and looks a little like a sad elephant. The bicycle looks more like a flat motorbike. The pelican has a blue tail and orange legs." src="https://static.simonwillison.net/static/2025/xbai-o4-pelican.png" /></p>
<p>I also had it "Write an HTML and JavaScript page implementing space invaders", which you can <a href="https://tools.simonwillison.net/space-invaders-xbai-o4-6bit-mlx">try out here</a>. It's not great - the invaders don't fire bullets (it listed that as a "potential improvement") and I don't think it's winnable due to timing issues, but it's an interesting addition to <a href="https://simonwillison.net/tags/space-invaders/">my collection</a>.</p>
<p>LM Studio reported a constant memory usage of 25.54GB and according to Activity Monitor used 87.5% of my GPU and around 39% of a CPU core.</p>
<p>It did a <em>lot</em> of work in the thinking trace - which took 10m35s! - including writing the first draft of much of the code that ended up in the finished result. Here's an extract:</p>
<blockquote>
<p>Let me think of variables:</p>
<p><code>let enemyDirection = 1; // 1 for right, -1 for left</code></p>
<p>In the game loop:
<code>enemies.forEach(enemy =&gt; {&gt;
    enemy.x += enemyDirection * enemy.dx;&gt;
});</code>
Then check if any enemy is out of bounds. If so, reverse direction and move all enemies down.</p>
<p>But how to check if any enemy is at the edge?</p>
<p>Maybe find the max x of all enemies and see if it exceeds <code>canvas.width - enemy.width</code>.</p>
<p>Alternatively, track the leftmost and rightmost positions of enemies. Maybe a bit complex.</p>
<p>For simplicity, perhaps check if any enemy's <code>x + width &gt; canvas.width or x &lt; 0</code>.</p>
</blockquote>
<p>Here's <a href="https://gist.github.com/simonw/457d55a5c426e0bbea9d47aee225c391">the full transcript</a>.</p>
<p>My initial impressions are that I'm not as impressed with this model for running on my own laptop as I was with <a href="https://simonwillison.net/2025/Jul/31/qwen3-coder-flash/">Qwen3-Coder-30B-A3B-Instruct</a> or <a href="https://simonwillison.net/2025/Jul/29/space-invaders/">GLM-4.5 Air</a>.</p>
<p>But... how extraordinary is it that <em>another</em> Chinese AI lab has been able to produce a competitive model, this time with far less fanfare than we've seen from Qwen and Moonshot AI and Z.ai.

    <p><small></small>Via <a href="https://x.com/ivanfioravanti/status/1951643205985816807">@ivanfioravanti</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/mlx">mlx</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a>, <a href="https://simonwillison.net/tags/llm-reasoning">llm-reasoning</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/lm-studio">lm-studio</a>, <a href="https://simonwillison.net/tags/ai-in-china">ai-in-china</a>, <a href="https://simonwillison.net/tags/space-invaders">space-invaders</a></p> 

<br> 

<https://simonwillison.net/2025/Aug/3/xbai-o4/#atom-everything>

---

## AI Agents have, so far, mostly been a dud

date: 2025-08-03, from: Gary Marcus blog

Last year, big tech couldn&#8217;t stop talking about how AI &#8220;agents&#8221; would be the next big thing in 2025. It hasn&#8217;t quite turned out that way. 

<br> 

<https://garymarcus.substack.com/p/ai-agents-have-so-far-mostly-been>

---

## From Async/Await to Virtual Threads

date: 2025-08-03, updated: 2025-08-03, from: Simon Willison’s Weblog

<p><strong><a href="https://lucumr.pocoo.org/2025/7/26/virtual-threads/">From Async/Await to Virtual Threads</a></strong></p>
Armin Ronacher has long been critical of async/await in Python, both for necessitating <a href="https://journal.stuffwithstuff.com/2015/02/01/what-color-is-your-function/">colored functions</a> and because of the more subtle challenges they introduce like <a href="https://lucumr.pocoo.org/2020/1/1/async-pressure/">managing back pressure</a>.</p>
<p>Armin <a href="https://lucumr.pocoo.org/2024/11/18/threads-beat-async-await/">argued convincingly</a> for the threaded programming model back in December. Now he's expanded upon that with a description of how virtual threads might make sense in Python.</p>
<p>Virtual threads behave like real system threads but can vastly outnumber them, since they can be paused and scheduled to run on a real thread when needed. Go uses this trick to implement goroutines which can then support millions of virtual threads on a single system.</p>
<p>Python core developer Mark Shannon <a href="https://discuss.python.org/t/add-virtual-threads-to-python/91403">started a conversation</a> about the potential for seeing virtual threads to Python back in May.</p>
<p>Assuming this proposal turns into something concrete I don't expect we will see it in a production Python release for a few more years. In the meantime there are some exciting improvements to the Python concurrency story - most notably <a href="https://docs.python.org/3.14/whatsnew/3.14.html#whatsnew314-pep734">around sub-interpreters</a> - coming up this year in Python 3.14.


    <p>Tags: <a href="https://simonwillison.net/tags/armin-ronacher">armin-ronacher</a>, <a href="https://simonwillison.net/tags/concurrency">concurrency</a>, <a href="https://simonwillison.net/tags/gil">gil</a>, <a href="https://simonwillison.net/tags/go">go</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/threads">threads</a></p> 

<br> 

<https://simonwillison.net/2025/Aug/3/virtual-threads/#atom-everything>

---

## GMK NucBox K12 mini PC with AMD Ryzen 7 H 255 is like a cheaper EVO-T1 (with AMD instead of Intel)

date: 2025-08-03, from: Liliputing

<p>The GMK NucBox K12 is a small desktop computer with an OCuLink port for a high-speed connection to an external graphics dock or other accessories, support for up to 128GB of DDR5-5600 memory, up to three SSDs, and dual 2.5 Gb Ethernet ports. If all of that sounds familiar, that&#8217;s because it could also describe the GMK [&#8230;]</p>
<p>The post <a href="https://liliputing.com/gmk-nucbox-k12-mini-pc-with-amd-ryzen-7-h-255-is-like-a-cheaper-evo-t1-with-amd-instead-of-intel/">GMK NucBox K12 mini PC with AMD Ryzen 7 H 255 is like a cheaper EVO-T1 (with AMD instead of Intel)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/gmk-nucbox-k12-mini-pc-with-amd-ryzen-7-h-255-is-like-a-cheaper-evo-t1-with-amd-instead-of-intel/>

---

**@Robert's feed at BlueSky** (date: 2025-08-03, from: Robert's feed at BlueSky)

I am happy this is happening.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lvj2lbommk2b>

---

## GPD Win 5 handheld gaming PC specs & performance preview: Strix Halo processor, 7 inch display, and no keyboard

date: 2025-08-03, from: Liliputing

<p>This week GPD revealed that its next handheld gaming PC would be powered by an AMD Strix Halo processor, bringing discrete-class graphics to a handheld PC for the first time. But at the time the company didn&#8217;t share many other details about the upcoming GPD Win 5, which left questions about battery life and overall [&#8230;]</p>
<p>The post <a href="https://liliputing.com/gpd-win-5-handheld-gaming-pc-specs-revealed-strix-halo-processor-7-inch-display-and-no-keyboard/">GPD Win 5 handheld gaming PC specs &#038; performance preview: Strix Halo processor, 7 inch display, and no keyboard</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/gpd-win-5-handheld-gaming-pc-specs-revealed-strix-halo-processor-7-inch-display-and-no-keyboard/>

---

## The Economics of Smoot-Hawley 2.0, Part I

date: 2025-08-03, from: Paul Krugman

Tariffs will be very high as far as the eye can see. What does that mean? 

<br> 

<https://paulkrugman.substack.com/p/the-economics-of-smoot-hawley-20>

---

## Creating a Toy Programming Language with Actor-Based Parallelism

date: 2025-08-03, from: Pointers gone wild blog

 

<br> 

<https://pointersgonewild.com/2025-08-03-creating-a-toy-language-with-actor-based-parallelism/>

