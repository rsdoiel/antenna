---
title: snapshots
updated: 2025-03-08 07:07:33
---

# snapshots

(date: 2025-03-08 07:07:33)

---

## State-of-the-art text embedding via the Gemini API

date: 2025-03-07, updated: 2025-03-07, from: Simon Willison’s Weblog

<p><strong><a href="https://developers.googleblog.com/en/gemini-embedding-text-model-now-available-gemini-api/">State-of-the-art text embedding via the Gemini API</a></strong></p>
Gemini just released their new text embedding model, with the snappy name <code>gemini-embedding-exp-03-07</code>. It supports 8,000 input tokens - up from 3,000 - and outputs vectors that are a lot larger than their previous <code>text-embedding-004</code> model - that one output size 768 vectors, the new model outputs 3072.</p>
<p>Storing that many floating point numbers for each embedded record can use a lot of space. thankfully, the new model supports Matryoshka Representation Learning - this means you can simply truncate the vectors to trade accuracy for storage.</p>
<p>I added support for the new model in <a href="https://github.com/simonw/llm-gemini/releases/tag/0.14">llm-gemini 0.14</a>. LLM doesn't yet have direct support for Matryoshka truncation so I instead registered different truncated sizes of the model under different IDs: <code>gemini-embedding-exp-03-07-2048</code>, <code>gemini-embedding-exp-03-07-1024</code>, <code>gemini-embedding-exp-03-07-512</code>, <code>gemini-embedding-exp-03-07-256</code>, <code>gemini-embedding-exp-03-07-128</code>.</p>
<p>The model is currently free while it is in preview, but comes with <a href="https://ai.google.dev/gemini-api/docs/rate-limits#current-rate-limits">a strict rate limit</a> - 5 requests per minute and just 100 requests a day. I quickly tripped those limits while testing out the new model - I hope they can bump those up soon.

    <p><small></small>Via <a href="https://twitter.com/officiallogank/status/1898081742767919384">@officiallogank</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/embeddings">embeddings</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/llm">llm</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/7/gemini-embeddings/#atom-everything>

---

## Boycotting US Products and Services

date: 2025-03-07, from: Stephen Smith's blog

Introduction With Donald Trump’s threatened and implemented tariffs against most of the world, a lot of people are up in arms and looking for ways to fight back. Can boycotts of US products and services have a real effect? With the global supply chain being so integrated, is it possible to narrowly target the US [&#8230;] 

<br> 

<https://smist08.wordpress.com/2025/03/07/boycotting-us-products-and-services/>

---

**@Feed for Alt USDS** (date: 2025-03-07, from: Feed for Alt USDS)

FYI.... Unconfirmed but good to know this is going around.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljsw4t6b7s2w>

---

## This 3D printed case turns an old phone into a slider with a QWERTY keyboard and touchpad

date: 2025-03-07, from: Liliputing

<p>Smartphones with physical keyboards are a dying breed (mostly dead, if I&#8217;m being honest). But there are some die-hard enthusiasts who continue to believe that nothing beats a physical keyboard. A startup called Clicks has generated a lot of buzz by offering keyboard cases that clip onto iPhones and (some) Android phones. But hardware hacker [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-3d-printed-case-turns-an-old-phone-into-a-slider-with-a-qwerty-keyboard-and-touchpad/">This 3D printed case turns an old phone into a slider with a QWERTY keyboard and touchpad</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-3d-printed-case-turns-an-old-phone-into-a-slider-with-a-qwerty-keyboard-and-touchpad/>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

Musk&#39;s DOGE team reportedly includes a 24-year-old former Canadian university student. 

<br> 

<https://ca.news.yahoo.com/musks-doge-team-reportedly-includes-193433275.html>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

Cuban -- Mavericks should have got &#39;a better deal&#39; for Luka Doncic. 

<br> 

<https://www.espn.com/nba/story/_/id/44152127/cuban-mavericks-got-better-deal-luka-doncic>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

Reading this story about the deportation of Ukrainian refugees from the US, I hear in clear terms we are no longer a democratic country, no longer have a representative government. We&#39;re not just supporting Russia we are Russia, its 51st state. Very weird and unacceptable. 

<br> 

<https://www.lawfaremedia.org/article/the-situation--a-ukrainian-hostage-situation>

---

## Behind the Blog: Merch Drops, Riso Prints and Big Cars

date: 2025-03-07, from: 404 Media Group

This week, we discuss a Supreme drop, a visit to a local Risograph printer, and what is up with Big Car.  

<br> 

<https://www.404media.co/behind-the-blog-merch-drops-riso-prints-and-big-cars/>

---

## Banana Pi BPI-AIM7 is an RK3588 compute module compatible with NVIDIA Jetson Nano hardware

date: 2025-03-07, from: Liliputing

<p>The Banana Pi BPI-AIM7 is a computer-on-a-module that looks like a stick of RAM. But this little stick features a Rockchip RK3588 processor and supports up to 32GB of RAM and 128GB of eMMC flash storage. Connect it to a carrier board and you&#8217;ve got a tiny desktop computer. Banana Pi is positioning the BPI-AIM7 as a [&#8230;]</p>
<p>The post <a href="https://liliputing.com/banana-pi-bpi-aim7-is-an-rk3588-compute-module-compatible-with-nvidia-jetson-nano-hardware/">Banana Pi BPI-AIM7 is an RK3588 compute module compatible with NVIDIA Jetson Nano hardware</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/banana-pi-bpi-aim7-is-an-rk3588-compute-module-compatible-with-nvidia-jetson-nano-hardware/>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

ActivityPub is not going to rock the world. Emulating Twitter is not how to do decentralization. Every decision made in the design of Twitter was based on being centralized. It&#39;s going to require more brain work to crack this. WTF Markoff. 

<br> 

<https://www.nytimes.com/2025/03/06/technology/mike-mccue-surf-browser-decentralized-internet.html?unlocked_article_code=1.104.zNAV.80hvxPr4gphF&smid=nytcore-ios-share&referringSource=articleShare>

---

## Project 2028: Housing

date: 2025-03-07, from: Prof. Scott Galloway, No Mercy/No Malace blog

<p>Democrats need to be the party of ideas, not indignation. Our “Project 2028” series will address critical issues facing American society through a No Mercy / No Malice lens. We begin with housing. The Rent Is Too Damn High  The U.S. doesn’t have a housing crisis, but an affordability crisis. Roughly one-third of Americans rent, [&#8230;]</p>
<p>The post <a href="https://www.profgalloway.com/project-2028-housing/">Project 2028: Housing</a> appeared first on <a href="https://www.profgalloway.com">No Mercy / No Malice</a>.</p>
 

<br> 

<https://www.profgalloway.com/project-2028-housing/>

---

## Dynabook Portégé Z40L-N is a 2.2 pound Lunar Lake laptop with a replaceable battery

date: 2025-03-07, from: Liliputing

<p>The Dynabook Portégé Z40L-N is a business-class laptop featuring a 14 inch, 1920 x 1200 pixel display, support for up to an Intel Core Ultra 7 268V processor with 32GB of RAM, and up to a 2TB PCIe NVMe SSD. But what really makes this laptop unusual by 2025 standards is that it&#8217;s a thin [&#8230;]</p>
<p>The post <a href="https://liliputing.com/dynabook-portege-z40l-n-is-a-2-2-pound-lunar-lake-laptop-with-a-replaceable-battery/">Dynabook Portégé Z40L-N is a 2.2 pound Lunar Lake laptop with a replaceable battery</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/dynabook-portege-z40l-n-is-a-2-2-pound-lunar-lake-laptop-with-a-replaceable-battery/>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

US citizen detained by ICE voted for Trump. 

<br> 

<https://www.nbcwashington.com/news/local/northern-virginia/just-following-hispanic-people-citizen-detained-by-ice-questions-vote-for-trump/3861172/>

---

## Trump's Royal Approach to Presidential Power

date: 2025-03-07, from: Guy Kawasaki blog

David Lopez, University Professor of Law, Rutgers University - Newark. 

<br> 

<https://guykawasaki.substack.com/p/trumps-royal-approach-to-presidential>

---

## Brother Denies Blocking Third-Party Toner

date: 2025-03-07, from: Michael Tsai

Mark Tyson: Louis Rossmann has shared a new video encapsulating his surprise, and disappointment, that Brother has morphed into an &#8220;anti-consumer printer company.&#8221; More information about Brother&#8217;s embrace of the dark side are shared on Rossmann&#8217;s wiki, with the major two issues being new firmware disabling third party toner, and preventing (on color devices) color [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/07/brother-denies-blocking-third-party-toner/>

---

## Brazilian Court Mandates iOS Sideloading

date: 2025-03-07, from: Michael Tsai

Filipe Esp&#243;sito (via Dare Obasanjo): As reported by Brazilian newspaper Valor Econ&#244;mico (via O Globo), a federal judge in Brazil ruled on Wednesday that Apple will have to open up the iOS ecosystem to third-party apps in Brazil just like the company did in the EU. The judge considers that the &#8220;limitations&#8221; imposed by the [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/07/brazilian-court-mandates-ios-sideloading/>

---

## Digg Returns

date: 2025-03-07, from: Michael Tsai

Reuters (YouTube): Digg founder Kevin Rose has teamed up with former rival Alexis Ohanian to buy the once-popular content aggregator as they bet on an artificial intelligence-powered revival of the platform that once drew around 40 million monthly visitors.Launched in 2004 by a then 27-year-old Rose, Digg was once called the &#8220;homepage of the internet&#8221; [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/07/digg-returns/>

---

## Private GitHub Data Lingers in Copilot Training

date: 2025-03-07, from: Michael Tsai

Carly Page: Security researchers are warning that data exposed to the internet, even for a moment, can linger in online generative AI chatbots like Microsoft Copilot long after the data is made private. [&#8230;] Lasso co-founder Ophir Dror told TechCrunch that the company found content from its own GitHub repository appearing in Copilot because it [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/07/private-github-data-lingers-in-copilot-training/>

---

**@Feed for Alt USDS** (date: 2025-03-07, from: Feed for Alt USDS)

In the words of a wise friend: 

When isolation, trauma & despair are weaponized; building community, helping people heal, & bringing hope are acts of resistance. 

Connect people. Resist bullies. Protect the vulnerable. Shine light on the fighters. Give yourself & others grace. 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljsdsg3lvs2n>

---

## We’re Living in a Society

date: 2025-03-07, updated: 2025-03-07, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/07/were-living-in-a-society/>

---

## toranoana.deno #20 登録受付中(2025年3月14日)

date: 2025-03-07, updated: 2025-03-07, from: Deno blog

Deno は東京で行われるミートアップ toranoana.deno #20 に開催協力します。以下、主な詳細とスケジュールの概要です。
 

<br> 

<https://deno.com/blog/toranoana-tokyo-event>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

Antisemitism in the Oval Office. 

<br> 

<https://snyder.substack.com/p/antisemitism-in-the-oval-office?publication_id=310897&post_id=158562583&isFreemail=true&r=w33x&triedRedirect=true>

---

## Stats and Fury, Signifying (Almost) Nothing

date: 2025-03-07, from: Paul Krugman

This was not the jobs report you&#8217;re looking for 

<br> 

<https://paulkrugman.substack.com/p/stats-and-fury-signifying-almost>

---

## Updates on AI Copyright Law and Policy: Section 1202 of the DMCA,  Doe v. Github, and the UK Copyright and AI Consultation

date: 2025-03-07, from: Authors Union blogs

Authors Alliance has been closely monitoring the impact of Digital Millennium Copyright Act (DMCA) Section 1202, and we have been watching the development in UK copyright law closely. Here are some updates. 

<br> 

<https://www.authorsalliance.org/2025/03/07/updates-on-ai-copyright-law-and-policy-section-1202-of-the-dmca-doe-v-github-and-the-uk-copyright-and-ai-consultation/>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

How Trump&#39;s first days compares with Orban&#39;s in Hungary. Must-read. 

<br> 

<https://paulkrugman.substack.com/p/from-orban-to-trump-part-ii?publication_id=277517&post_id=158545490&isFreemail=true&r=w33x&triedRedirect=true>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

New concept opening in May in Woodstock&#39;s Early Terrible and Mud Club. 

<br> 

<https://www.timesunion.com/hudsonvalley/food/article/early-terrible-mud-club-transform-new-concept-may-20199583.php>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

But the Fediverse is impossible to use even for people who understand what it&#39;s trying to do, and most people have no idea. The answer: stop trying to reinvent Twitter, it wasn&#39;t a great idea! And figure out what really works in a decentralized system. It requires some serious brain work. 

<br> 

<https://www.joanwestenberg.com/the-fediverse-isnt-the-future-its-the-present-weve-been-denied/>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

Please let Mr Hitler speak. 

<br> 

<https://www.theguardian.com/lifeandstyle/picture/2025/mar/07/please-let-mr-hitler-speak-the-trouble-with-hearing-from-both-sides-the-stephen-collins-cartoon?CMP=share_btn_url>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

Did anyone see an explanation of what the strategic crypto reserve is for? 

<br> 

<https://www.axios.com/2025/03/07/trump-crypto-reserve-bitcoin>

---

## From Orban to Trump, Part II

date: 2025-03-07, from: Paul Krugman

Finishing my conversation with Kim Lane Scheppele 

<br> 

<https://paulkrugman.substack.com/p/from-orban-to-trump-part-ii>

---

## International Women’s Day 2025

date: 2025-03-07, from: O'Reilly Radar

We’re at a crossroads in the US with diversity, equity, and inclusion initiatives. Opponents have neutralized the concept by reducing it to a series of letters that can be easily vilified and rooted out by a new generation of government censors. But those who do that are missing the point. Diversity, equity, and inclusion isn’t [&#8230;] 

<br> 

<https://www.oreilly.com/radar/international-womens-day-2025/>

---

**@Dave Winer's linkblog** (date: 2025-03-07, from: Dave Winer's linkblog)

Charles Barkley takes direct shot at future ESPN coworkers over Lakers, Warriors coverage: &#39;Y&#39;all are idiots.&#39; 

<br> 

<https://sports.yahoo.com/nba/article/charles-barkley-takes-direct-shot-at-future-espn-coworkers-over-lakers-warriors-coverage-yall-are-idiots-011237962.html>

---

## Mistral OCR

date: 2025-03-07, updated: 2025-03-07, from: Simon Willison’s Weblog

<p><strong><a href="https://mistral.ai/fr/news/mistral-ocr">Mistral OCR</a></strong></p>
New closed-source specialist OCR model by Mistral - you can feed it images or a PDF and it produces Markdown with optional embedded images.</p>
<p>It's available <a href="https://docs.mistral.ai/api/#tag/ocr">via their API</a>, or it's "available to self-host on a selective basis" for people with stringent privacy requirements who are willing to talk to their sales team.</p>
<p>I decided to try out their API, so I copied and pasted example code <a href="https://colab.research.google.com/drive/11NdqWVwC_TtJyKT6cmuap4l9SryAeeVt?usp=sharing">from their notebook</a> into my <a href="https://simonwillison.net/2024/Dec/19/one-shot-python-tools/">custom Claude project</a> and <a href="https://claude.ai/share/153d8eb8-82dd-4f8c-a3d0-6c23b4dc21a2">told it</a>:</p>
<blockquote>
<p><code>Turn this into a CLI app, depends on mistralai - it should take a file path and an optional API key defauling to env vironment called MISTRAL_API_KEY</code></p>
</blockquote>
<p>After <a href="https://claude.ai/share/b746cab4-293b-4e04-b662-858bb164ab78">some further</a> iteration / vibe coding I got to something that worked, which I then tidied up and shared as <a href="https://github.com/simonw/tools/blob/main/python/mistral_ocr.py">mistral_ocr.py</a>.</p>
<p>You can try it out like this:</p>
<pre><code>export MISTRAL_API_KEY='...'
uv run http://tools.simonwillison.net/python/mistral_ocr.py \
  mixtral.pdf --html --inline-images &gt; mixtral.html
</code></pre>
<p>I fed in <a href="https://arxiv.org/abs/2401.04088">the Mixtral paper</a> as a PDF. The API returns Markdown, but my <code>--html</code> option renders that Markdown as HTML and the <code>--inline-images</code> option takes any images and inlines them as base64 URIs (inspired <a href="https://simonwillison.net/2025/Mar/6/monolith/">by monolith</a>). The result is <a href="https://static.simonwillison.net/static/2025/mixtral.html">mixtral.html</a>, a 972KB HTML file with images and text bundled together.</p>
<p>This did a pretty great job!</p>
<p><img alt="Screenshot of part of the document, it has a heading, some text, an image and the start of a table. The table contains some unrendered MathML syntax." src="https://static.simonwillison.net/static/2025/mixtral-as-html.jpg" /></p>
<p>My script renders Markdown tables but I haven't figured out how to render inline Markdown MathML yet. I ran the command a second time and requested Markdown output (the default) like this:</p>
<pre><code>uv run http://tools.simonwillison.net/python/mistral_ocr.py \
  mixtral.pdf &gt; mixtral.md
</code></pre>
<p>Here's <a href="https://gist.github.com/simonw/023d1cf403c1cd9f41801c85510aef21">that Markdown rendered as a Gist</a> - there are a few MathML glitches so clearly the Mistral OCR MathML dialect and the GitHub Formatted Markdown dialect don't quite line up.</p>
<p>My tool can also output raw JSON as an alternative to Markdown or HTML - full details <a href="https://tools.simonwillison.net/python/#mistral_ocrpy">in the documentation</a>.</p>
<p>The Mistral API is priced at roughly 1000 pages per dollar, with a 50% discount for batch usage.</p>
<p>The big question with LLM-based OCR is always how well it copes with accidental instructions in the text (can you safely OCR a document full of prompting examples?) and how well it handles text it can't write.</p>
<p>Mistral's Sophia Yang says it <a href="https://x.com/sophiamyang/status/1897719199595720722">"should be robust"</a> against following instructions in the text, and invited people to try and find counter-examples.</p>
<p>Alexander Doria noted that <a href="https://twitter.com/Dorialexander/status/1897702264543875535">Mistral OCR can hallucinate text</a> when faced with handwriting that it cannot understand.

    <p><small></small>Via <a href="https://twitter.com/sophiamyang/status/1897713370029068381">@sophiamyang</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/mistral">mistral</a>, <a href="https://simonwillison.net/tags/pdf">pdf</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ocr">ocr</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/uv">uv</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/7/mistral-ocr/#atom-everything>

---

## Lilbits: A weird new AI phone, Apple refreshes the MacBook Air, Intel Arrow Lake goes business-class, and postmarketOS is looking for a new name

date: 2025-03-07, from: Liliputing

<p>Would you be willing to grant a smartphone with access to huge amounts of personal date in order to develop a personalized AI assistant that an help you get things done? Arguably that&#8217;s something you may already be doing if you&#8217;re using an Android phone, but a startup called Newnal is taking things to a [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-a-weird-new-ai-phone-apple-refreshes-the-macbook-air-intel-arrow-lake-goes-business-class-and-postmarketos-is-looking-for-a-new-name/">Lilbits: A weird new AI phone, Apple refreshes the MacBook Air, Intel Arrow Lake goes business-class, and postmarketOS is looking for a new name</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-a-weird-new-ai-phone-apple-refreshes-the-macbook-air-intel-arrow-lake-goes-business-class-and-postmarketos-is-looking-for-a-new-name/>

---

## Inline rendering with document​.currentScript

date: 2025-03-07, from: Lean Rada's blog


<p>For quick and dirty rendering of simple dynamic content, you may not need the complexity of a templating language like Handlebars or a PHP backend.</p>

<p>Let’s use the example phrase, <i>“Come on, it’s <code>&lt;currentYear&gt;</code>”</i>. It should result in <i>“Come on, it’s <u><noscript>2025</noscript><script>$(new Date().getFullYear())</script></u>”</i> when rendered today.</p>

<p>You can write this directly in HTML—<em>without IDs, classes, or querySelectors in your JS!</em> Thanks to the <a href="https://developer.mozilla.org/en-US/docs/Web/API/Document/currentScript" target="_blank"><code>document.currentScript</code></a> property, we can refer to the <em>currently running <code>&lt;script&gt;</code> element</em> directly and go from there.</p>

<p>So the dynamic phrase <strong>“Come on, it’s <noscript>2025</noscript><script>$(new Date().getFullYear())</script>”</strong> would now be written as:</p>

<pre><code>Come on, it’s
&lt;script&gt;
  document.currentScript.replaceWith(new Date().getFullYear())
&lt;/script&gt;</code></pre>

<p>The script simply replaces itself with its computed value on the spot.</p>

<p>The code’s a bit wordy though, but we can <em>alias</em> it to a constant like <code>$</code> via <code>$=(...n)=&gt;document.currentScript.replaceWith(...n)</code>. Then we’d have something reminiscent of <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals" target="_blank">template literals</a> in JS.</p>

<pre><code>Come on, it’s &lt;script&gt;$(new Date().getFullYear())&lt;/script&gt;</code></pre>

<p>The code is pretty readable at a glance without context (after you get past the bit of indirection that is the <code>$</code> alias).</p>
<box-note role="complementary">
  <details>
    <summary>Click to see the WebComponent version! <small>Disclaimer: This is a joke.</small></summary>

    <code-block language="js">
      <code><pre>&lt;script&gt;$(RenderJS.toString())&lt;/script&gt;</pre></code>
    </code-block>

    <p>This is the <code>RenderJS</code> custom element. All it does is replace itself with the result of its contents treated as JavaScript code.</p>

    <p>To use it, we must first name the tag. The beloved dollar sign <code>$</code> is not allowed, so we use the next best thing—the emoji 💲. Sadly, that’s not enough: Tag names must start with a letter of the alphabet and include a hyphen. As such, we are forced to name it: <code>j-💲</code> representing JavaScript.</p>

    <code-block language="js">
      <code><pre>&lt;script&gt;customElements.define('j-💲', RenderJS);&lt;/script&gt;</pre></code>
    </code-block>

    <h3>Example usage</h3>

    <fixed-grid>
      <code-block>
        <code><pre>I overslept by about &lt;j-💲&gt;Math.PI&lt;/j-💲&gt; hours this morning.</pre></code>
      </code-block>
      <card-box>
        I overslept by about <j-💲>Math.PI</j-💲> hours this morning.
      </card-box>
    </fixed-grid>
  </details>
</box-note>
<p>A <a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/noscript" target="_blank"><code>noscript</code></a> fallback would be nice for those that don’t run JS.</p>

<pre><code>Come on, it’s
&lt;noscript&gt;current year&lt;/noscript&gt;
&lt;script&gt;$(new Date().getFullYear())&lt;/script&gt;</code></pre>

<p>The resulting script-noscript juxtaposition in the markup looks almost like Angular/Vue’s if-else markup, neat.</p>
<box-note>IIRC, I learned about this technique from the <a href="https://github.com/gnat/surreal" target="_blank">Surreal</a> library or something similar. But I’m sure this is not a new discovery. These APIs have been standardised for a long time.</box-note>
<h2>Real world examples</h2>

<p>If you thought this technique is only useful for rendering the current year, you’re mostly right! As an example, I’ve used inline scripts to refer to relative dates in my living pages. Because <strong>“<noscript>8</noscript><script>$(new Date().getFullYear()-2017)</script> years ago”</strong> sounds more natural than <strong>“2017”</strong>.</p>

<pre><code>It was planted
&lt;noscript&gt;in 2017&lt;/noscript&gt;
&lt;script&gt;$(new Date().getFullYear()-2017, ' years ago')&lt;/script&gt;
but now it has grown tall and strong.</code></pre>
<card-box>
  It was planted
  <noscript>in 2017</noscript>
  <script>$(new Date().getFullYear()-2017, ' years ago')</script>
  but now it has grown tall and strong.
</card-box>
<h3>Random greeting</h3>

<p>Another example is in my front page, which says a randomly selected greeting on each visit.</p>

<img src="https://leanrada.com/notes/inline-rendering-currentscript/greeting.png?ref=rss" alt="screenshot of my homepage intro section">

<pre><code>&lt;span class="intro-line"&gt;
  &lt;noscript&gt;Hello!&lt;/noscript&gt;
  &lt;script&gt;
    $([
      "Hello!",
      "Hey~~~",
      "What’s up ↑",
      "Hi there →",
      "Hey there →",
    ][Date.now() % 5])
  &lt;/script&gt;
&lt;/span&gt;</code></pre>
<box-note>The randomiser is just a <code>Date.now()</code> with modulo because it was more concise than <code>Math.floor(Math.random() * 5)</code>.</box-note>
<h3>Splitting text for animation</h3>

<p>Split text into characters using inline scripts to generate markup per character which can then be controlled or animated! In my case, I used it to render circular text, but a more common use case is text animation like the following.</p>
<card-box>
  It has been a
  <script>document.currentScript.outerHTML=
    "supercalifragilisticexpialidocious".replace(/./g, c => `<strong>${c}</strong>`)
  </script>
  week.
  
</card-box>
<pre><code>It has been a
&lt;script&gt;document.currentScript.outerHTML=
  "supercalifragilisticexpialidocious"
    .replace(/./g, c =&gt; `&lt;strong&gt;${c}&lt;/strong&gt;`)
&lt;/script&gt;
week.

&lt;style&gt;
  strong {
    display: inline-block;
    animation: wave 0.3s infinite alternate ease-in-out;
    &amp;:nth-child(4n + 1) { animation-delay: -0.6s; }
    &amp;:nth-child(4n + 2) { animation-delay: -0.45s; }
    &amp;:nth-child(4n + 3) { animation-delay: -0.3s; }
    &amp;:nth-child(4n + 4) { animation-delay: -0.15s; }
  }
  @keyframes wave {
    to { transform: translateY(-2px); }
  }
&lt;/style&gt;</code></pre>

<h3>Rendering metadata to reduce duplication</h3>

<p>This post’s heading is dynamically derived from the page title metadata. I only have to define this post’s title once, in the <code>&lt;title&gt;</code> tag.</p>
<code><pre>&lt;blog-header&gt;
  &lt;h1&gt;&lt;script&gt;$(document.title)&lt;/script&gt;&lt;/h1&gt;
  &lt;img src="hero.jpg" alt="" loading="lazy"&gt;&lt;/img&gt;
&lt;/blog-header&gt;</pre></code>
<h3>Auto-updating footer</h3>

<p>How about an auto-updating copyright notice in the footer which may or may not have legal implications? <small>(IANAL)</small></p>

<pre><code>&lt;footer&gt;
  © &lt;script&gt;$(new Date().getFullYear())&lt;/script&gt; Mycorp, Ltd.
&lt;/footer&gt;</code></pre>

<p>For comparison, here’s the StackOverflow/ChatGPT answer:</p>
<fixed-grid>
<code-block language="js">
<pre><code>document
  .getElementById("copyright-year")
  .textContent = new Date().getFullYear();</code></pre>
</code-block>
<code-block language="html">
<pre><code>&lt;footer&gt;
  © &lt;span id="copyright-year"&gt;&lt;/span&gt; Mycorp, Ltd.
&lt;/footer&gt;</code></pre>
</code-block>
</fixed-grid>
<p>Why pollute the global ID namespace and separate coupled code if we can avoid it?</p>
<box-note><code>Date().split` `[3]</code> is also a short (but very hacky) way to get the year.</box-note>
<p>At this point you may be asking, is this technique only really useful for rendering the current year? Maybe, but we can do more than just <em>rendering</em> text.</p>

<p>Come on, it’s <noscript>2025</noscript><script>$(new Date().toLocaleDateString())</script>, the web is rich and interactive!</p>

<h3>The ubiquitous counter app example</h3>

<p>This is not a simple templating example anymore, but shows the power of <code>currentScript</code> in <a href="https://en.wikipedia.org/wiki/Hydration_(web_development)" target="_blank">hydrating</a> self-contained bits of interactive HTML.</p>
<card-box>
  Count: <span>0</span>
  <button theme="button">Increment</button>
  <button theme="button">Decrement</button>
  <script>
    const [span, increment, decrement] = document.currentScript.parentElement.children;
    let count = 0;
    increment.onclick = () => span.replaceChildren(++count);
    decrement.onclick = () => span.replaceChildren(--count);
  </script>
</card-box>
<pre><code>&lt;div&gt;
  Count: &lt;span&gt;0&lt;/span&gt;
  &lt;button&gt;Increment&lt;/button&gt;
  &lt;button&gt;Decrement&lt;/button&gt;
  &lt;script&gt;
    const [span, increment, decrement] =
      document.currentScript.parentElement.children;
    let count = 0;
    increment.onclick = () =&gt; span.replaceChildren(++count);
    decrement.onclick = () =&gt; span.replaceChildren(--count);
  &lt;/script&gt;
&lt;/div&gt;</code></pre>

<p>I used this ‘local script’ pattern all the time in a previous version of this blog. It’s useful when making interactive illustrations in the middle of a long post. You wouldn’t want to put that logic at the very end or start of the file, away from the relevant section! Same goes for styles, now made even better with the <a href="https://developer.chrome.com/docs/css-ui/at-scope#prelude-less_scope" target="_blank"><code>@scope</code> rule</a>.</p>

<p>It’s a good way to manage islands of interactivity.</p>

<h2>The catch</h2>

<p>There are reasons people gravitate to libraries and frameworks. They’re just too convenient.</p>

<p>If you want to use the alias definition above—the <code>$</code> shorthand—then you'd first have to define it at the top of the HTML, <strong>synchronously</strong>. Say you want to use this in multiple pages, so you put this in a common script file and load it via <code>&lt;script src="$.js"&lt;/script&gt;</code>. This could result in a parser- and render-blocking fetch: potentially very bad for performance!</p>

<p>For my own cases, I don’t use the alias. I straight up just use <code>document.currentScript​.replaceWith</code>. Wish it was  <a href="https://developer.mozilla.org/en-US/docs/Web/API/Document/write" target="_blank">shorter…</a></p>

<p>Also, you cannot do <strong>data-driven templating</strong> this way, in the sense that you have <strong>templates</strong> to apply <strong>data</strong> onto. Metadata such as date published, post title, and tags that are stored in some posts table or in frontmatter somewhere, cannot be used for inline scripting purposes. You can’t fetch data from inline scripts. Therefore, unless data is somehow pre-injected in the global scope, no luck in pure vanilla JS templating. This is where templating languages like <a href="https://shopify.github.io/liquid/" target="_blank">Liquid</a> really shine.</p>

<p>For my site, I don’t need a templating system—I use direct patching to data-drive my HTML (in which the source and the output files are the same).</p>

<p>Even if you use a templating framework or a static site generator, inline scripts remain useful!</p>

<h2>Further reading</h2>

<ul>
  <li><a href="https://github.com/gnat/surreal" target="_blank">Surreal</a> - a library that offers this technique, plus other jQuery-style helpers. Note the synchronous script tag loading issue though!</li>
  <li><a href="https://github.com/sveltejs/kit/issues/2221" target="_blank">currentScript discussion in SvelteKit</a> - this as an alternative to global IDs for self-hydrating things. In the end they went with generated IDs. :|</li>
</ul>

<h2>Appendix</h2>

<p><a href="https://developer.mozilla.org/en-US/docs/Web/API/Document/write" target="_blank"><code>document.write()</code></a> used to (?) work like this for inline rendering, but it’s now deprecated because it had inconsistent behaviour.</p>
<code><pre>Come on, it’s
&lt;script&gt;document.write(new Date().getFullYear())&lt;/script&gt;,
stop using &lt;code&gt;document.write&lt;/code&gt;!</pre></code><iframe srcdoc="Come on, it’s <noscript>2025</noscript><script>document.write(new Date().getFullYear())</script>, stop using <code>document.write</code>!"></iframe> 

<br> 

<https://leanrada.com/notes/inline-rendering-currentscript/?ref=rss>

---

## Live with Mehdi Hasan

date: 2025-03-06, from: Paul Krugman

A recording from Paul Krugman and Mehdi Hasan's live video 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/158552072/183b1b2d03cee3abd1904f5ac48a382e.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/158552072/183b1b2d03cee3abd1904f5ac48a382e.mp3" target="_blank">download audio/mpeg</a><br> 

<https://paulkrugman.substack.com/p/live-with-mehdi-hasan>

---

**@Dave Winer's linkblog** (date: 2025-03-06, from: Dave Winer's linkblog)

Today’s Olbermann podcast was especially good. 

<br> 

<https://www.iheart.com/podcast/1119-countdown-with-keith-olbe-99705496/episode/the-attempt-to-make-it-illegal-269590587/>

---

**@Dave Winer's linkblog** (date: 2025-03-06, from: Dave Winer's linkblog)

Jeffries should resign. 

<br> 

<https://www.axios.com/2025/03/06/trump-speech-congress-democrats-disrupt>

---

## Nubia Focus 2 Ultra has a rotating ring around the camera

date: 2025-03-06, from: Liliputing

<p>The Nubia Focus 2 Ultra is a smartphone with a 6.8 inch, 120 Hz AMOLED display, a Unisoc T760 processor, 8GB of RAM, Android 15 software, and a 5,000 mAh battery. But what makes this phone noteworthy is its camera system. There&#8217;s a ring around the rear camera that you can rotate to adjust the zoom [&#8230;]</p>
<p>The post <a href="https://liliputing.com/nubia-focus-2-ultra-has-a-rotating-ring-around-the-camera/">Nubia Focus 2 Ultra has a rotating ring around the camera</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/nubia-focus-2-ultra-has-a-rotating-ring-around-the-camera/>

---

**@Feed for Alt USDS** (date: 2025-03-06, from: Feed for Alt USDS)

For clarity: about 10% of public school funding comes from federal sources. AND those few funds are targeted to help low-income communities including rural students. 

Said differently: "deleting" the Dept. of Education will disproportionately affect Trump voters and their families.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljqkbrj2kc2g>

---

**@Dave Winer's linkblog** (date: 2025-03-06, from: Dave Winer's linkblog)

Federal Judge Tells Trump He ‘Is Not a King.’ 

<br> 

<https://politicalwire.com/2025/03/06/federal-judge-tells-trump-he-is-not-a-king/>

---

**@Dave Winer's linkblog** (date: 2025-03-06, from: Dave Winer's linkblog)

Worst Hudson Valley, New York Roads for Potholes. It’s been a rough winter here. 

<br> 

<https://hudsonvalleycountry.com/worst-hudson-valley-new-york-roads-for-potholes/>

---

**@Dave Winer's linkblog** (date: 2025-03-06, from: Dave Winer's linkblog)

Andrew Cuomo Gets Endorsement From City Government Workers’ Union. 

<br> 

<https://www.thecity.nyc/2025/03/06/andrew-cuomo-teamsters-nycha-endorsement/>

---

## Alexa Plus

date: 2025-03-06, from: Michael Tsai

Ina Fried: Amazon on Wednesday showed off Alexa+, a generative AI version of its digital voice assistant that draws on a variety of models and works with many of the company&#8217;s older Echo devices.[&#8230;]Alexa+ will be available in late March and cost $19.99 per month on its own &#8212; but it&#8217;s free for Amazon Prime [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/06/alexa-plus/>

---

## Lightroom Classic 14.2

date: 2025-03-06, from: Michael Tsai

Adobe: The Adaptive profiles help with image-adaptive adjustments in color, tone, and contrast of raw images.[&#8230;]The Lightroom Classic 14.2 update introduces substantial performance improvements for interactive editing tasks, delivering a smoother, faster, and more responsive experience.[&#8230;]Better manage your catalog backups with a new backup panel in Catalog Settings &#62; Backup. You can now easily open [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/06/lightroom-classic-14-2/>

---

## Chrome Warning About Manifest V2 Extensions

date: 2025-03-06, from: Michael Tsai

Thomas Claburn: This story starts in 2019 when Google detailed its plans to improve extensions&#8217; security and privacy features with a project it called Manifest V3 (MV3) that changes the way extensions use various APIs. MV3 is currently being rolled out, and Google looks set to stop supporting extensions that use its predecessor MV2 this [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/06/chrome-warning-about-manifest-v2-extensions/>

---

## Ladybird Browser

date: 2025-03-06, from: Michael Tsai

Joe Brockmeier (via Hacker News): Ladybird is an open-source project aimed at building an independent web browser, rather than yet another browser based on Chrome. It is written in C++ and licensed under a two-clause BSD license. The effort began as part of the SerenityOS project, but developer Andreas Kling announced on June 3 that [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/06/ladybird-browser/>

---

**@Tomosino's Mastodon feed** (date: 2025-03-06, from: Tomosino's Mastodon feed)

<p>My multisteno <a href="https://tilde.zone/tags/keyboard" class="mention hashtag" rel="tag">#<span>keyboard</span></a> arrived. I love the camera mount on it. I can layer it over my keychron and feel super cool. </p><p>I've got months and months ahead of me learning to use it, but I'm hopeful that further reducing my key travel distance will help the difficulties my hands have been having lately. <a href="https://tilde.zone/tags/Dvorak" class="mention hashtag" rel="tag">#<span>Dvorak</span></a> was a big help for the last 15 years but I need more help now.</p><p><a href="https://tilde.zone/tags/steno" class="mention hashtag" rel="tag">#<span>steno</span></a> <a href="https://tilde.zone/tags/plover" class="mention hashtag" rel="tag">#<span>plover</span></a></p> 

<br> 

<https://tilde.zone/@tomasino/114117596770817123>

---

## Lenovo ThinkPad X13 Gen 6 is a 2.05 pound laptop with Intel 200H or AMD Ryzen AI PRO 300

date: 2025-03-06, from: Liliputing

<p>Lenovo&#8217;s new Thinkpad X13 Gen 6 is a 13.3 inch laptop with a thin and light design, a choice of Intel Arrow Lake or AMD Ryzen AI PRO processor options, and an $1139 starting price. Unveiled this week at Mobile World Congress in Barcelona, the laptop should be available in the US in June, 2025. Compared [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lenovo-thinkpad-x13-gen-6-is-a-2-05-pound-laptop-with-intel-200h-or-amd-ryzen-pro-300/">Lenovo ThinkPad X13 Gen 6 is a 2.05 pound laptop with Intel 200H or AMD Ryzen AI PRO 300</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lenovo-thinkpad-x13-gen-6-is-a-2-05-pound-laptop-with-intel-200h-or-amd-ryzen-pro-300/>

---

## Debugging Disposable ML Frameworks

date: 2025-03-06, from: Peter Warden

Guest post by Nat Jeffries, Founding Engineer at Useful Sensors. At Useful Sensors we love using disposable frameworks to deploy on-device transformers. Having built several such frameworks, I realized that, while there are great resources for understanding and training transformer models, there are few guides for deploying them on-device. The following are some lessons I [&#8230;] 

<br> 

<https://petewarden.com/2025/03/06/debugging-disposable-ml-frameworks/>

---

## Daily Deals (3-06-2025)

date: 2025-03-06, from: Liliputing

<p>Amazon is giving away a bunch of PC games for free to Prime members. The Epic Games Store is giving away another free game to anyone with an account. And you can pick up a refurbished Steam Deck from Valve for $349. Meanwhile if you&#8217;re looking for a dirt cheap PC that you&#8217;re probably not [&#8230;]</p>
<p>The post <a href="https://liliputing.com/daily-deals-3-06-2025/">Daily Deals (3-06-2025)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/daily-deals-3-06-2025/>

---

## MINISFORUM A1 X1 Pro Strix Point mini PC now available for pre-order

date: 2025-03-06, from: Liliputing

<p>The MINISFORUM A1 X1 Pro is a small desktop computer that combines an AMD Ryzen AI 9 HX 370 &#8220;Strix Point&#8221; processor with up to 96GB of RAM and PCIe 4.0 storage. First announced in January, the A1 X1 Pro is now available for pre-order with prices starting at $899 for a model with 32GB of [&#8230;]</p>
<p>The post <a href="https://liliputing.com/minisforum-a1-x1-pro-strix-point-mini-pc-now-available-for-pre-order/">MINISFORUM A1 X1 Pro Strix Point mini PC now available for pre-order</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/minisforum-a1-x1-pro-strix-point-mini-pc-now-available-for-pre-order/>

---

## Google and Amazon AI Say Hitler’s Mein Kampf Is ‘a True Work of Art’

date: 2025-03-06, from: 404 Media Group

An example of AI attempting to summarizing nuanced reviewed of Hitler's Nazi manifesto turned into an example of algorithms eating themselves. 

<br> 

<https://www.404media.co/google-amazon-ai-search-mein-kampf-reviews/>

---

## AOOSTAR WTR Max coming soon for $699 and up: NAS with AMD Hawk Point supports 11 drives and

date: 2025-03-06, from: Liliputing

<p>The AOOSTAR WTR MAX is a network attached storage (NAS) device that packs a lot of features into a relatively small computer. It has an AMD Ryzen PRO 8845HS processor. It supports up to 11 storage devices (6 hard drives and 5 SSDs). It has two 10 Gigabit LAN ports and two 2.5 Gigabit Ethernet ports. And there&#8217;s even [&#8230;]</p>
<p>The post <a href="https://liliputing.com/aoostar-wtr-max-coming-soon-for-699-and-up-nas-with-amd-hawk-point-supports-11-drives-and/">AOOSTAR WTR Max coming soon for $699 and up: NAS with AMD Hawk Point supports 11 drives and</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/aoostar-wtr-max-coming-soon-for-699-and-up-nas-with-amd-hawk-point-supports-11-drives-and/>

---

## America's Mobility Crisis

date: 2025-03-06, from: Guy Kawasaki blog

Why We're Stuck with Yoni Appelbaum. 

<br> 

<https://guykawasaki.substack.com/p/americas-mobility-crisis>

---

## Node just added TypeScript support. What does that mean for Deno?

date: 2025-03-06, updated: 2025-03-06, from: Deno blog

Node's experimental TypeScript support will be stabilized in 23.6. Here's what Node's TypeScript integration looks like and how it compares to Deno. 

<br> 

<https://deno.com/blog/typescript-in-node-vs-deno>

---

**@Feed for Alt USDS** (date: 2025-03-06, from: Feed for Alt USDS)

U.S. African Development Foundation denied DOGE employees access to its office yesterday. 🫡 Here's the WaPo article headline. 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljptmmnvvk2t>

---

## monolith

date: 2025-03-06, updated: 2025-03-06, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/Y2Z/monolith">monolith</a></strong></p>
Neat CLI tool built in Rust that can create a single packaged HTML file of a web page plus all of its dependencies.</p>
<pre><code>cargo install monolith # or brew install
monolith https://simonwillison.net/ &gt; simonwillison.html
</code></pre>
<p>That command produced <a href="https://static.simonwillison.net/static/2025/simonwillison.html">this 1.5MB single file result</a>. All of the linked images, CSS and JavaScript assets have had their contents inlined into base64 URIs in their <code>src=</code> and <code>href=</code> attributes.</p>
<p>I was intrigued as to how it works, so I dumped the whole repository into Gemini 2.0 Pro and asked for an architectural summary:</p>
<pre><code>cd /tmp
git clone https://github.com/Y2Z/monolith
cd monolith
files-to-prompt . -c | llm -m gemini-2.0-pro-exp-02-05 \
  -s 'architectural overview as markdown'
</code></pre>
<p>Here's <a href="https://gist.github.com/simonw/2c80749935ae3339d6f7175dc7cf325b">what I got</a>. Short version: it uses the <code>reqwest</code>, <code>html5ever</code>, <code>markup5ever_rcdom</code> and <code>cssparser</code> crates to fetch and parse HTML and CSS and extract, combine and rewrite the assets. It doesn't currently attempt to run any JavaScript.

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=42933383#42935115">Comment on Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/scraping">scraping</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/rust">rust</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/6/monolith/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-06, from: Dave Winer's linkblog)

On Writing Severance: A Conversation with Dan Erickson. 

<br> 

<https://www.pbs.org/video/on-writing-severance-a-conversation-with-dan-erickson-wo5ofu/>

---

**@Dave Winer's linkblog** (date: 2025-03-06, from: Dave Winer's linkblog)

&quot;Trump isn&#39;t Hitler, he&#39;s Marshal Petain.&quot; 

<br> 

<https://bsky.app/profile/airbagmoments.bsky.social/post/3ljpqts4ka225>

---

**@Dave Winer's linkblog** (date: 2025-03-06, from: Dave Winer's linkblog)

2017: What if TWTR is bought by a Repub? The problems were foreseeable in 2017, after Trump won the election by tweeting. At that time TWTR&#39;s value was about $12B. I tried to imagine a tech entrepreneur who had just bought the United States. We&#39;re now living that nightmare. 

<br> 

<http://scripting.com/2017/01/14/whatIfTwtrIsBoughtByARepub.html>

---

## Chinese AI Video Generators Unleash a Flood of New Nonconsensual Porn

date: 2025-03-06, from: 404 Media Group

A new crop of AI video generators is producing an endless stream of nonconsensual AI generated porn.  

<br> 

<https://www.404media.co/chinese-ai-video-generators-unleash-a-flood-of-new-nonconsensual-porn-3/>

---

## R.I.P, James Harrison

date: 2025-03-06, updated: 2025-03-06, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/06/r-i-p-james-harrison/>

---

## Trump Is Planning the Biggest Heist in History

date: 2025-03-06, from: Paul Krugman

The &#8220;strategic crypto reserve&#8221; will be a giant rug pull scam 

<br> 

<https://paulkrugman.substack.com/p/trump-is-planning-the-biggest-heist>

---

**@Tomosino's Mastodon feed** (date: 2025-03-06, from: Tomosino's Mastodon feed)

<p>1.21 gigawatts‽</p> 

<br> 

<https://tilde.zone/@tomasino/114115419081026261>

---

**@Dave Winer's linkblog** (date: 2025-03-06, from: Dave Winer's linkblog)

Trump plans to revoke legal status of Ukrainians who fled to US. 

<br> 

<https://www.straitstimes.com/asia/trump-plans-to-revoke-legal-status-of-ukrainians-who-fled-to-us-sources-say>

---

## Some key insights from the UK Climate Change Committee’s Seventh Carbon Budget

date: 2025-03-06, from: Hannah Richie at Substack

What would it take for the UK to get to net-zero by 2050? 

<br> 

<https://www.sustainabilitybynumbers.com/p/uk-ccc-seventh-budget>

---

## CCC fordert digitale Brandmauer

date: 2025-03-06, updated: 2025-03-06, from: Chaos Computer Club Updates

Wir brauchen eine digitale Brandmauer gegen den Faschismus. An die Union und die SPD richten wir zwölf Forderungen, die sie zügig umsetzen müssen, um den absehbaren Folgen des Rechtsrucks und den Bestrebungen von Trump und Co. Einhalt zu gebieten. 
Ein Ende der Überwachungsära muss her. 

<br> 

<https://www.ccc.de/de/updates/2025/ccc-fordert-digitale-brandmauer>

---

## Tiny Type On Yellow Pages

date: 2025-03-06, updated: 2025-03-06, from: Tedium site

Why AT&T had to redesign its primary phone-book font in the late 1970s to keep with the times, and the clever typographical trick it used. 

<br> 

<https://feed.tedium.co/link/15204/16977395/phone-book-typography-bell-centennial-ink-trap>

---

## Will the future of software development run on vibes?

date: 2025-03-06, updated: 2025-03-06, from: Simon Willison’s Weblog

<p><strong><a href="https://arstechnica.com/ai/2025/03/is-vibe-coding-with-ai-gnarly-or-reckless-maybe-some-of-both/">Will the future of software development run on vibes?</a></strong></p>
I got a few quotes in this piece by Benj Edwards about <strong>vibe coding</strong>, the term Andrej Karpathy <a href="https://simonwillison.net/2025/Feb/6/andrej-karpathy/">coined</a> for when you prompt an LLM to write code, accept all changes and keep feeding it prompts and error messages and see what you can get it to build.</p>
<p>Here's what I originally sent to Benj:</p>
<blockquote>
<p>I really enjoy vibe coding - it's a fun way to play with the limits of these models. It's also useful for prototyping, where the aim of the exercise is to try out an idea and prove if it can work.</p>
<p>Where vibe coding fails is in producing maintainable code for production settings. I firmly believe that as a developer you have to take accountability for the code you produce - if you're going to put your name to it you need to be confident that you understand how and why it works - ideally to the point that you can explain it to somebody else.</p>
<p>Vibe coding your way to a production codebase is clearly a terrible idea. Most of the work we do as software engineers is about evolving existing systems, and for those the quality and understandability of the underlying code is crucial.</p>
<p>For experiments and low-stake projects where you want to explore what's possible and build fun prototypes? Go wild! But stay aware of the very real risk that a good enough prototype often faces pressure to get pushed to production.</p>
<p>If an LLM wrote every line of your code but you've reviewed, tested and understood it all, that's not vibe coding in my book - that's using an LLM as a typing assistant.</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/andrej-karpathy">andrej-karpathy</a>, <a href="https://simonwillison.net/tags/benj-edwards">benj-edwards</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/6/vibe-coding/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-06, from: Dave Winer's linkblog)

That was a Trumpian eagle. 

<br> 

<https://www.theguardian.com/environment/2025/mar/05/canada-goose-bald-eagle-political-symbolism>

---

## Aider: Using uv as an installer

date: 2025-03-06, updated: 2025-03-06, from: Simon Willison’s Weblog

<p><strong><a href="https://aider.chat/2025/01/15/uv.html">Aider: Using uv as an installer</a></strong></p>
Paul Gauthier has an innovative solution for the challenge of helping end users get a copy of his Aider CLI Python utility installed in an isolated virtual environment without first needing to teach them what an "isolated virtual environment" is.</p>
<p>Provided you already have a Python install of version 3.8 or higher you can run this:</p>
<pre><code>pip install aider-install &amp;&amp; aider-install
</code></pre>
<p>The <a href="https://pypi.org/project/aider-install/">aider-install</a> package itself depends on <a href="https://github.com/astral-sh/uv">uv</a>. When you run <code>aider-install</code> it executes the following <a href="https://github.com/Aider-AI/aider-install/blob/main/aider_install/main.py">Python code</a>:</p>
<pre><span class="pl-k">def</span> <span class="pl-en">install_aider</span>():
    <span class="pl-k">try</span>:
        <span class="pl-s1">uv_bin</span> <span class="pl-c1">=</span> <span class="pl-s1">uv</span>.<span class="pl-c1">find_uv_bin</span>()
        <span class="pl-s1">subprocess</span>.<span class="pl-c1">check_call</span>([
            <span class="pl-s1">uv_bin</span>, <span class="pl-s">"tool"</span>, <span class="pl-s">"install"</span>, <span class="pl-s">"--force"</span>, <span class="pl-s">"--python"</span>, <span class="pl-s">"python3.12"</span>, <span class="pl-s">"aider-chat@latest"</span>
        ])
        <span class="pl-s1">subprocess</span>.<span class="pl-c1">check_call</span>([<span class="pl-s1">uv_bin</span>, <span class="pl-s">"tool"</span>, <span class="pl-s">"update-shell"</span>])
    <span class="pl-k">except</span> <span class="pl-s1">subprocess</span>.<span class="pl-c1">CalledProcessError</span> <span class="pl-k">as</span> <span class="pl-s1">e</span>:
        <span class="pl-en">print</span>(<span class="pl-s">f"Failed to install aider: <span class="pl-s1"><span class="pl-kos">{</span><span class="pl-s1">e</span><span class="pl-kos">}</span></span>"</span>)
        <span class="pl-s1">sys</span>.<span class="pl-c1">exit</span>(<span class="pl-c1">1</span>)</pre>

<p>This first figures out the location of the <code>uv</code> Rust binary, then uses it to install his <a href="https://pypi.org/project/aider-chat/">aider-chat</a> package by running the equivalent of this command:</p>
<pre><code>uv tool install --force --python python3.12 aider-chat@latest
</code></pre>
<p>This will in turn install a brand new standalone copy of Python 3.12 and tuck it away in uv's own managed directory structure where it shouldn't hurt anything else.</p>
<p>The <code>aider-chat</code> script defaults to being dropped in the XDG standard directory, which is probably <code>~/.local/bin</code> - see <a href="https://docs.astral.sh/uv/concepts/tools/#the-bin-directory">uv's documentation</a>. The <a href="https://docs.astral.sh/uv/concepts/tools/#overwriting-executables">--force flag</a> ensures that <code>uv</code> will overwrite any previous attempts at installing <code>aider-chat</code> in that location with the new one.</p>
<p>Finally, running <code>uv tool update-shell</code> ensures that bin directory is <a href="https://docs.astral.sh/uv/concepts/tools/#the-path">on the user's PATH</a>.</p>
<p>I <em>think</em> I like this. There is a LOT of stuff going on here, and experienced users may well opt for an <a href="https://aider.chat/docs/install.html">alternative installation mechanism</a>.</p>
<p>But for non-expert Python users who just want to start using Aider, I think this pattern represents quite a tasteful way of getting everything working with minimal risk of breaking the user's system.</p>
<p><strong>Update</strong>: Paul <a href="https://twitter.com/paulgauthier/status/1897486573857595877">adds</a>:</p>
<blockquote>
<p>Offering this install method dramatically reduced the number of GitHub issues from users with conflicted/broken python environments.</p>
<p>I also really like the "curl | sh" aider installer based on uv. Even users who don't have python installed can use it.</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/uv">uv</a>, <a href="https://simonwillison.net/tags/paul-gauthier">paul-gauthier</a>, <a href="https://simonwillison.net/tags/aider">aider</a>, <a href="https://simonwillison.net/tags/python">python</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/6/aider-using-uv-as-an-installer/#atom-everything>

---

**@Tomosino's Mastodon feed** (date: 2025-03-06, from: Tomosino's Mastodon feed)

<p>I got a vaccine booster for MMR today. I got my initial vaccine in the early 80s before the US moved to 2 shots. I'm about to travel into an outbreak so this seemed prudent. </p><p>I called the health center to find out what I needed to do. They gave me an address and said go there and ask. So I did, and they offered me boosters for all the childhood vaccinations. The whole lot cost me about $40.</p><p>For some of you this probably sounds normal. But I grew up on the con game that is US healthcare. This is cool.</p> 

<br> 

<https://tilde.zone/@tomasino/114112587237727991>

---

## 545. The French Revolution: The First Feminist (Part 2)

date: 2025-03-06, from: This is history podcast

<p>In the summer and Autumn of 1792 &#8211; with the Prussians bearing down on Paris, the streets thronged with the stirring swell of the Marseillaise, but also the rotting bodies of those brutally killed during the September Massacres &#8211; the French Revolution bore a new symbol of optimism and hope: Liberty. Embodied by a female [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/545-the-french-revolution-the-first-feminist-part-2/">545. The French Revolution: The First Feminist (Part 2)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/545-the-french-revolution-the-first-feminist-part-2/>

---

**@Tomosino's Mastodon feed** (date: 2025-03-06, from: Tomosino's Mastodon feed)

<p>Terrible idea: A website only 1 person can view at a time. If the tab loses focus it transfers to the next person in line. It should probably have an inactivity timeout too. For everyone else you just get your queue number. Oh! And if you're in the queue and your tab loses focus you lose <em>your</em> spot. Back of the line with ya!</p> 

<br> 

<https://tilde.zone/@tomasino/114112574650433708>

---

## Multi-Agents Are Out, PID Controllers Are In

date: 2025-03-06, updated: 2025-03-06, from: Tom Kellog blog

My hottest take is that multi-agents are a broken concept and should be avoided at all cost. My only caveat is PID controllers; A multi agent system that does a 3-step process that looks something like **Plan, Act, Verify** in a loop. That can work. Everything else is a devious plan to sell dev tools. 

<br> 

<http://timkellogg.me/blog/2025/03/06/pid-controllers>

---

## MCP Demystified

date: 2025-03-06, updated: 2025-03-06, from: Tom Kellog blog

MCP is all over my socials today, to the extent that every 4th post is about it. What’s MCP and why
should you care? Here I’ll rattle off a bunch of analogies, you can choose what works for 
you and disregard the rest. 

<br> 

<http://timkellogg.me/blog/2025/03/06/mcp>

---

## From unique to cleanups and weak: new low-level tools for efficiency

date: 2025-03-06, updated: 2025-03-06, from: Go language blog

Weak pointers and better finalization in Go 1.24. 

<br> 

<https://go.dev/blog/cleanups-and-weak>

---

## My Low-Tech Attempt to Automate Spellchecking

date: 2025-03-06, from: Pointers gone wild blog

 

<br> 

<https://pointersgonewild.com/2025-03-06-my-low-tech-attempt-to-automate-spellchecking/>

---

## It’s almost like they are saying one thing and doing another.

date: 2025-03-05, from: Chris Coyier blog

Imagine announcing to the world you&#8217;re going to do the difficult job of making big changes and cuts in the government in order to make it more efficient. Then taking an organization that is demonstrably doing that job well already and destroying the whole thing. What if I told you there was a group of [&#8230;] 

<br> 

<https://chriscoyier.net/2025/03/05/its-almost-like-they-are-saying-one-thing-and-doing-another/>

---

## The Graphing Calculator Story

date: 2025-03-05, updated: 2025-03-05, from: Simon Willison’s Weblog

<p><strong><a href="https://www.pacifict.com/story/">The Graphing Calculator Story</a></strong></p>
Utterly delightful story from Ron Avitzur in 2004 about the origins of the Graphing Calculator app that shipped with many versions of macOS. Ron's contract with Apple had ended but his badge kept working so he kept on letting himself in to work on the project. He even grew a small team:</p>
<blockquote>
<p>I asked my friend Greg Robbins to help me. His contract in another division at Apple had just ended, so he told his manager that he would start reporting to me. She didn't ask who I was and let him keep his office and badge. In turn, I told people that I was reporting to him. Since that left no managers in the loop, we had no meetings and could be extremely productive</p>
</blockquote>

    <p><small></small>Via <a href="https://laughingmeme.org/links/">Kellan</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/apple">apple</a>, <a href="https://simonwillison.net/tags/computer-history">computer-history</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/5/the-graphing-calculator-story/#atom-everything>

---

**@Feed for Alt USDS** (date: 2025-03-05, from: Feed for Alt USDS)

Quite the contradiction here... U.S. Digital Services teammates were paid on the GS scale, but these DOGE operatives were supposedly volunteers. *were, keyword.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljo45yndac23>

---

## Demo of ChatGPT Code Interpreter running in o3-mini-high

date: 2025-03-05, updated: 2025-03-05, from: Simon Willison’s Weblog

<p><strong><a href="https://chatgpt.com/share/67c8c374-8c08-8006-8ce3-042308063792">Demo of ChatGPT Code Interpreter running in o3-mini-high</a></strong></p>
OpenAI made GPT-4.5 available to Plus ($20/month) users today. I was <a href="https://simonwillison.net/2025/Feb/27/introducing-gpt-45/">a little disappointed</a> with GPT-4.5 when I tried it through the API, but having access in the ChatGPT interface meant I could use it with existing tools such as Code Interpreter which made its strengths <a href="https://chatgpt.com/share/67c8a7b6-655c-8006-a100-bc04080e5aa1">a whole lot more evident</a> - that’s a transcript where I had it design and test its own version of the JSON Schema succinct DSL I published <a href="https://simonwillison.net/2025/Feb/28/llm-schemas/#designing-this-feature-for-llm">last week</a>.</p>
<p>Riley Goodside <a href="https://x.com/goodside/status/1897412604894789692">then spotted</a> that Code Interpreter has been quietly enabled for other models too, including the excellent o3-mini reasoning model. This means you can have o3-mini reason about code, write that code, test it, iterate on it and keep going until it gets something that works.</p>
<p><img alt="Screenshot showing ChatGPT 03-mini-high - my prompt: Use your Python tool to show me the versions of Python and SQLite. Reasoned about Python and SQLite versions for a couple of seconds Below is the Python code used to print both the Python and SQLite versions: Python Code import sys import sqlite3 print(&quot;Python version:&quot; print (&quot;SQLite version:&quot; Result Python version: 3.11.8 main, Mar 12 2024, 11:41:52) GCC 12.2.01° SQLite version: 3.40.1" src="https://static.simonwillison.net/static/2025/o3-mini-code-interpreter.jpg" /></p>
<p>Code Interpreter remains my favorite implementation of the "coding agent" pattern, despite recieving very few upgrades in the two years after its initial release. Plugging much stronger models into it than the previous GPT-4o default makes it even more useful.</p>
<p>Nothing about this in the <a href="https://help.openai.com/en/articles/6825453-chatgpt-release-notes">ChatGPT release notes</a> yet, but I've tested it in the ChatGPT iOS app and mobile web app and it definitely works there.


    <p>Tags: <a href="https://simonwillison.net/tags/riley-goodside">riley-goodside</a>, <a href="https://simonwillison.net/tags/code-interpreter">code-interpreter</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/5/code-interpreter/#atom-everything>

---

**@Tomosino's Mastodon feed** (date: 2025-03-05, from: Tomosino's Mastodon feed)

<p><a href="https://tilde.zone/tags/gemini" class="mention hashtag" rel="tag">#<span>gemini</span></a> protocol uses TLS, but has a history of preferring self-signed certificates. This led to the  decision for clients to use TOFU (Trust on First Use) as the go-to method. We have TLSA/DANE available if your domain supports DNSSEC. With that, you can give your self-signed certificate trust, even on first use.</p><p>I've long promoted the idea that clients should implement this. The more clients there are that look for it, the more value there is in adding DANE records.</p><p>I made a proof-of-concept client in <a href="https://tilde.zone/tags/rust" class="mention hashtag" rel="tag">#<span>rust</span></a> that does just that. <a href="https://github.com/jamestomasino/gemini-rust-tlsa" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">github.com/jamestomasino/gemin</span><span class="invisible">i-rust-tlsa</span></a></p> 

<br> 

<https://tilde.zone/@tomasino/114112271359011768>

---

## Career Update: Google DeepMind -> Anthropic

date: 2025-03-05, updated: 2025-03-05, from: Simon Willison’s Weblog

<p><strong><a href="https://nicholas.carlini.com/writing/2025/career-update.html">Career Update: Google DeepMind -&gt; Anthropic</a></strong></p>
Nicholas Carlini (<a href="https://simonwillison.net/tags/nicholas-carlini/">previously</a>) on joining Anthropic, driven partly by his frustration at friction he encountered publishing his research at Google DeepMind after their merge with Google Brain. His area of expertise is adversarial machine learning.</p>
<blockquote>
<p>The recent advances in machine learning and language modeling are going to be transformative <span style="font-size: 0.75em; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;">[<a href="https://nicholas.carlini.com/writing/2025/career-update.html#footnote4">d</a>]</span> But in order to realize this potential future in a way that doesn't put everyone's safety and security at risk, we're going to need to make a <em>lot</em> of progress---and soon. We need to make so much progress that no one organization will be able to figure everything out by themselves; we need to work together, we need to talk about what we're doing, and we need to start doing this now.</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/machine-learning">machine-learning</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/nicholas-carlini">nicholas-carlini</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/5/google-deepmind-anthropic/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-05, from: Dave Winer's linkblog)

National Parks Contributed $55.6 Billion to U.S. economy, supported 415,000 Jobs in 2023. 

<br> 

<https://www.nps.gov/orgs/1207/national-parks-contributed-record-high-$55-6-billion-to-u-s-economy-supported-415-000-jobs-in-2023.htm>

---

## Join me and The Ankler founder Janice Min for a live video chat tomorrow at 5:45pET/2:45PT

date: 2025-03-05, from: Tina Brown

We'll be talking about Meghan Markle's new Netflix show, plus all things royal and entertainment. 

<br> 

<https://tinabrown.substack.com/p/join-me-and-the-ankler-founder-janice>

---

## QwQ-32B: Embracing the Power of Reinforcement Learning

date: 2025-03-05, updated: 2025-03-05, from: Simon Willison’s Weblog

<p><strong><a href="https://qwenlm.github.io/blog/qwq-32b/">QwQ-32B: Embracing the Power of Reinforcement Learning</a></strong></p>
New Apache 2 licensed reasoning model from Qwen:</p>
<blockquote>
<p>We are excited to introduce QwQ-32B, a model with 32 billion parameters that achieves performance comparable to DeepSeek-R1, which boasts 671 billion parameters (with 37 billion activated). This remarkable outcome underscores the effectiveness of RL when applied to robust foundation models pretrained on extensive world knowledge.</p>
</blockquote>
<p>I've not run this myself yet but I had a lot of fun <a href="https://simonwillison.net/2024/Nov/27/qwq/">trying out</a> their previous QwQ reasoning model last November.</p>
<p>LM Studo just <a href="https://huggingface.co/lmstudio-community/QwQ-32B-GGUF/tree/main">released GGUFs</a> ranging in size from 17.2 to 34.8 GB. MLX have compatible weights published in <a href="https://huggingface.co/mlx-community/QwQ-32B-3bit">3bit</a>, <a href="https://huggingface.co/mlx-community/QwQ-32B-4bit">4bit</a>, <a href="https://huggingface.co/mlx-community/QwQ-32B-6bit">6bit</a> and <a href="https://huggingface.co/mlx-community/QwQ-32B-8bit">8bit</a>. Ollama <a href="https://ollama.com/library/qwq">has the new qwq</a> too - it looks like they've renamed the previous November release <a href="https://ollama.com/library/qwq:32b-preview-q8_0">qwq:32b-preview</a>.

    <p><small></small>Via <a href="https://twitter.com/alibaba_qwen/status/1897361654763151544">@alibaba_qwen</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/inference-scaling">inference-scaling</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/qwen">qwen</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/open-source">open-source</a>, <a href="https://simonwillison.net/tags/mlx">mlx</a>, <a href="https://simonwillison.net/tags/ollama">ollama</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/5/qwq-32b/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-05, from: Dave Winer's linkblog)

FiveThirtyEight is shutting down as part of broader cuts at ABC and Disney. 

<br> 

<https://www.niemanlab.org/2025/03/fivethirtyeight-is-shutting-down-as-part-of-broader-cuts-at-abc-and-disney/>

---

**@Dave Winer's linkblog** (date: 2025-03-05, from: Dave Winer's linkblog)

You may think the Dems looked weak with their signs last night, but I think at least they were representing their voters’ interests, unlike the Repubs. If I were there I would have held a sign too. Too much Monday Morning Quarterbacking. They did something — that’s a start. 

<br> 

<https://www.reuters.com/world/us/democrats-protest-trumps-speech-congress-with-disruption-exits-solemn-signs-2025-03-05/>

---

## Xiaomi’s concept phone has a camera with modular, detachable lenses

date: 2025-03-05, from: Liliputing

<p>You can use smartphone cameras to shoot some stellar photos or videos &#8211; there are entire feature-length films that have been shot on smartphones. But there&#8217;s one thing you can&#8217;t typically do with a smartphone camera: change lenses. That&#8217;s why most modern flagship phones (and some mid-range and budget models) have multiple cameras, each with its [&#8230;]</p>
<p>The post <a href="https://liliputing.com/xiaomis-concept-phone-has-a-camera-with-modular-detachable-lenses/">Xiaomi&#8217;s concept phone has a camera with modular, detachable lenses</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/xiaomis-concept-phone-has-a-camera-with-modular-detachable-lenses/>

---

**@Dave Winer's linkblog** (date: 2025-03-05, from: Dave Winer's linkblog)

The Canada and Mexico tariffs would have devastated any manufacturers making cars in North America. 

<br> 

<https://www.politico.com/news/2025/03/05/trump-auto-tariffs-pause-canada-mexico-00213949>

---

**@Feed for Alt USDS** (date: 2025-03-05, from: Feed for Alt USDS)

Read about 18F's @alt18f.bsky.social work 👇👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljnoadtdx22s>

---

**@Dave Winer's linkblog** (date: 2025-03-05, from: Dave Winer's linkblog)

The Supreme Court Is Just One Vote Shy of Making Trump and Musk Kings. 

<br> 

<https://www.motherjones.com/politics/2025/03/usaid-supreme-court-doge/>

---

**@Feed for Alt USDS** (date: 2025-03-05, from: Feed for Alt USDS)

Unfortunately, we've heard 83,000 VA employees are going to be fired.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljnn4c2ebc2s>

---

## Ezra Klein’s new take on AGI – and why I think it’s probably wrong

date: 2025-03-05, from: Gary Marcus blog

In a new episode of his podcast with Ben Buchanan former special adviser for artificial intelligence under Biden, entitled, The Government knows A.G.I. 

<br> 

<https://garymarcus.substack.com/p/ezra-kleins-new-take-on-agi-and-why>

---

## French University to Fund American Scientists Who Fear Trump Censorship

date: 2025-03-05, from: 404 Media Group

The program, called ‘safe place for science,’ offers American scientists funding to continue their research in France.  

<br> 

<https://www.404media.co/french-university-to-fund-american-scientists-who-fear-trump-censorship/>

---

## AYANEO Pocket MICRO Classic is a tiny Android handheld without analog sticks for $179 and up

date: 2025-03-05, from: Liliputing

<p>The AYANEO Pocket MICRO Classic is a new handheld game console designed for portability. With a 3.5 inch, 960 x 640 pixel, 400 nit IPS LCD display centered between a simple set of game controllers, the console measures just 156 x 63 x 18mm (6.14&#8243; x 2.48&#8243; x 0.71&#8243;) and weighs just 227 grams (8 ounces). [&#8230;]</p>
<p>The post <a href="https://liliputing.com/ayaneo-pocket-micro-classic-is-a-tiny-android-handheld-without-analog-sticks-for-179-and-up/">AYANEO Pocket MICRO Classic is a tiny Android handheld without analog sticks for $179 and up</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/ayaneo-pocket-micro-classic-is-a-tiny-android-handheld-without-analog-sticks-for-179-and-up/>

---

## This Game Created by AI 'Vibe Coding' Makes $50,000 a Month. Yours Probably Won’t

date: 2025-03-05, from: 404 Media Group

fly.pieter.com was initially made in just 30 minutes with AI tools and is now generating thousands of dollars a month. The future of AI-assisted game development will not be that simple. 

<br> 

<https://www.404media.co/this-game-created-by-ai-vibe-coding-makes-50-000-a-month-yours-probably-wont/>

---

**@Dave Winer's linkblog** (date: 2025-03-05, from: Dave Winer's linkblog)

“We will take in trillions and trillions of dollars and create jobs like we have never seen before,” Trump told Congress. 

<br> 

<https://www.nbcnews.com/business/economy/tariffs-limbo-mixed-messages-meet-wary-markets-rcna194856>

---

## Mac Studio 2025

date: 2025-03-05, from: Michael Tsai

Apple (Hacker News): Mac Studio with M4 Max is up to 3.5x faster than Mac Studio with M1 Max, and is up to 6.1x faster than the most powerful Intel-based 27-inch iMac.[&#8230;]Mac Studio with M3 Ultra pushes demanding workflows to a whole new level. It delivers nearly 2x faster performance than M4 Max in workloads [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/05/mac-studio-2025/>

---

## Apple M3 Ultra

date: 2025-03-05, from: Michael Tsai

Apple (Hacker News, MacRumors): M3 Ultra is built using Apple&#8217;s innovative UltraFusion packaging architecture, which links two M3 Max dies over 10,000 high-speed connections that offer low latency and high bandwidth. This allows the system to treat the combined dies as a single, unified chip for massive performance while maintaining Apple&#8217;s industry-leading power efficiency. UltraFusion [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/05/apple-m3-ultra/>

---

## MacBook Air 2025

date: 2025-03-05, from: Michael Tsai

Apple (Hacker News, MacRumors, ArsTechnica): Apple today announced the new MacBook Air, featuring the blazing-fast performance of the M4 chip, up to 18 hours of battery life, a new 12MP Center Stage camera, and a lower starting price. It also offers support for up to two external displays in addition to the built-in display, 16GB [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/05/macbook-air-2025/>

---

## Leitmotif Acquires Taska

date: 2025-03-05, from: Michael Tsai

Florian Albrecht: Taska is a beautiful and versatile Mac native app for issue tracking. Since working on issues typically is a team effort, it&#8217;s not an isolated or proprietary app. Instead, it acts as a frontend to the popular services GitHub and GitLab, maintaining full compatibility with other users of those services, whether they are [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/05/leitmotif-acquires-taska/>

---

## Apple M3 Ultra debuts in the new Mac Studio,

date: 2025-03-05, from: Liliputing

<p>The new Apple M3 Ultra is a new processor made by cramming together two chips that have been around since late 2023. That&#8217;s not necessarily a bad thing though: Apple says that fusing together two Apple M3 Max chips results in &#8220;the highest-performing chip&#8221; Apple has ever made when it comes to CPU, graphics, and AI [&#8230;]</p>
<p>The post <a href="https://liliputing.com/apple-m3-ultra-debuts-in-the-new-mac-studio/">Apple M3 Ultra debuts in the new Mac Studio,</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/apple-m3-ultra-debuts-in-the-new-mac-studio/>

---

## The Power of Being a Misfit

date: 2025-03-05, from: Guy Kawasaki blog

In the end, it&#8217;s the misfits who make the world remarkable. 

<br> 

<https://guykawasaki.substack.com/p/the-power-of-being-a-misfit>

---

## Archivists Recreate Pre-Trump CDC Website, Are Hosting It in Europe

date: 2025-03-05, from: 404 Media Group

The team used a Reddit-made archive of the CDC website to create a new live mirror of the site before it was purged. 

<br> 

<https://www.404media.co/archivists-recreate-pre-trump-cdc-website-are-hosting-it-in-europe/>

---

## How we added interlaced video to Raspberry Pi 5 DPI

date: 2025-03-05, from: Raspberry Pi News (.com)

<p>Raspberry Pi 5's DPI output didn't support interlaced video at launch. This is how we added it.</p>
<p>The post <a href="https://www.raspberrypi.com/news/how-we-added-interlaced-video-to-raspberry-pi-5/">How we added interlaced video to Raspberry Pi 5 DPI</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/how-we-added-interlaced-video-to-raspberry-pi-5/>

---

## Podcast: The Tesla Protests Come for Cybertruck Owners

date: 2025-03-05, from: 404 Media Group

We talk Cybertruck protests; IDs from Palau; and the big Instagram bug. 

<br> 

<https://www.404media.co/podcast-the-tesla-protests-come-for-cybertruck-owners/>

---

## Cellebrite Is Using AI to Summarize Chat Logs and Audio from Seized Mobile Phones

date: 2025-03-05, from: 404 Media Group

The proliferation of AI through law enforcement tools already has civil liberties experts concerned. “When you have results from an AI, they are not transparent. Often you cannot trace back where a conclusion came from, or what information it is based on. AIs hallucinate," one said. 

<br> 

<https://www.404media.co/cellebrite-is-using-ai-to-summarize-chat-logs-and-audio-from-seized-mobile-phones/>

---

## Everyone’s a Suspect

date: 2025-03-05, updated: 2025-03-05, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/05/everyones-a-suspect/>

---

**@Dave Winer's linkblog** (date: 2025-03-05, from: Dave Winer's linkblog)

America is Trapped in a Burning Tesla. 

<br> 

<https://paulkrugman.substack.com/p/america-is-trapped-in-a-burning-tesla?publication_id=277517&post_id=158432522&isFreemail=true&r=w33x&triedRedirect=true>

---

## America is Trapped in a Burning Tesla

date: 2025-03-05, from: Paul Krugman

Surprise! The madman stuff wasn&#8217;t an act 

<br> 

<https://paulkrugman.substack.com/p/america-is-trapped-in-a-burning-tesla>

---

## Celebrating American Women During the Bicentennial

date: 2025-03-05, from: National Archives, Pieces of History blog

As we look ahead to the nation’s 250th birthday, we’re looking back on the events celebrating our 200th. Today’s post, for Women’s History Month, looks back on a major exhibit at the National Archives during the bicentennial era.  To coincide with International Women’s Year and the Bicentennial of the Declaration of Independence, the National Archives &#8230; <a href="https://prologue.blogs.archives.gov/2025/03/05/celebrating-american-women-during-the-bicentennial/" class="more-link">Continue reading <span class="screen-reader-text">Celebrating American Women During the Bicentennial</span></a> 

<br> 

<https://prologue.blogs.archives.gov/2025/03/05/celebrating-american-women-during-the-bicentennial/>

---

**@Dave Winer's linkblog** (date: 2025-03-05, from: Dave Winer's linkblog)

Volvo ES90 revealed: 800V beauty is midway between SUV, sedan and fastback. 

<br> 

<https://electrek.co/2025/03/05/volvo-es90-revealed-800v-beauty-is-midway-between-suv-sedan-and-fastback/>

---

**@Dave Winer's linkblog** (date: 2025-03-05, from: Dave Winer's linkblog)

My blog, scripting.com, has been a democracy blog since inception in 1994. All blogs have democracy as their foundation, imho. The idea of the “unedited voice of a person,” is revolutionary, esp for the times we live in. 

<br> 

<https://www.techdirt.com/2025/03/04/why-techdirt-is-now-a-democracy-blog-whether-we-like-it-or-not/>

---

**@Feed for Alt USDS** (date: 2025-03-05, from: Feed for Alt USDS)

An expert Builder from US Geological Survey and Navy Veteran believes there's "no method to it at all" to the madness we're witnessing. Read about the reckless actions observed by this federal employee on our site:  https://www.wethebuilders.org/posts/no-method-to-it-at-all

#altgov #altusds #USGS @altusgs1.bsky.social 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljlv275ibj2a>

---

## March 2025

date: 2025-03-05, from: Maggie Appleton blog

 

<br> 

<https://maggieappleton.com/now-2025-03/>

---

## Introducing Public Collections in Browsertrix

date: 2025-03-05, from: Web Recorder

Now you can curate, personalize, and share all your your crawls in one place. 

<br> 

<https://webrecorder.net/blog/2025-03-05-public-collections/>

---

## AOOSTAR WTR MAX is a 6-bay NAS with AMD Ryzen 8040HS

date: 2025-03-04, from: Liliputing

<p>The AOOSTAR WTR MAX  is an upcoming network attached storage device with support for up to 6 hard drives and 6 5 SSDs, an AMD Ryzen 8040HS &#8220;Hawk Point&#8221; processor, support for up to 32GB of DDR5-5600 dual-channel memory, and four high-speed networking ports. In other words, it&#8217;s like the big sibling of the AOOSTAR WTR [&#8230;]</p>
<p>The post <a href="https://liliputing.com/aoostar-wtr-max-is-a-7-bay-nas-with-amd-ryzen-8040hs/">AOOSTAR WTR MAX is a 6-bay NAS with AMD Ryzen 8040HS</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/aoostar-wtr-max-is-a-7-bay-nas-with-amd-ryzen-8040hs/>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Norway’s natural gas windfall should go to Ukraine. 

<br> 

<https://www.ft.com/content/a414ef58-c753-4720-8b7b-c2ef7582a77c?accessToken=zwAGL4wWz_AIkdOkFO9Yx1NHINOLe8LvdYKnfA.MEQCIHygScjKaeprCOFPuaa6j21EmYWpWNrkBceC1gbCpQjZAiB64FiEAtcoCL7cd3Cn6FStebvBC8E8g2mQ8YhC9eZ_ww&sharetype=gift&token=afe1d74d-4506-4d2d-bcc8-0f8dda7d9209>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Trudeau says Trump&#39;s &#39;dumb&#39; trade war is designed to collapse the Canadian economy. 

<br> 

<https://www.cbc.ca/news/politics/trudeau-canada-response-tariffs-1.7473965>

---

**@Feed for Alt USDS** (date: 2025-03-04, from: Feed for Alt USDS)

Congressional staffers—don’t think you’re safe. Attacks on federal workers aren’t stopping at the Executive Branch. Cuts to pensions & benefits are coming for you too. Now’s the time to stand with your colleagues—or risk standing alone. Read more & take action:
https://www.wethebuilders.org/posts/a-letter-to-congressional-staffers 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljlhmmimw42k>

---

## Lenovo’s Yoga Solar PC Concept Laptop is… an idea, I guess

date: 2025-03-04, from: Liliputing

<p>Lenovo has a habit of designing weird laptop concepts as a way to push the boundaries of what you can do with a mobile computer. Sometimes the company even brings its weird laptops to market. And the new Lenovo Yoga Solar PC Concept is probably less weird than some. That said, I can&#8217;t help but [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lenovos-yoga-solar-pc-concept-laptop-is-an-idea-i-guess/">Lenovo&#8217;s Yoga Solar PC Concept Laptop is&#8230; an idea, I guess</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lenovos-yoga-solar-pc-concept-laptop-is-an-idea-i-guess/>

---

## iPad Air (M3, 7th Generation)

date: 2025-03-04, from: Michael Tsai

Apple (Hacker News): iPad Air with M3 empowers users to be productive and creative wherever they are, from aspiring creatives using demanding apps and working with large files, to travelers editing content on the go. The powerful M3 chip offers a number of improvements over M1 and previous-generation models. Featuring a more powerful 8-core CPU, [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/04/ipad-air-m3-7th-generation/>

---

## iPad (11th Generation)

date: 2025-03-04, from: Michael Tsai

Apple: Apple today also updated iPad with double the starting storage and the A16 chip, bringing even more value to customers. The A16 chip provides a jump in performance for everyday tasks and experiences in iPadOS, while still providing all-day battery life. Compared to the previous generation, the updated iPad with A16 is nearly 30 [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/04/ipad-11th-generation/>

---

## Premium Hardware, Subpar Software

date: 2025-03-04, from: Michael Tsai

Eliseo Martelli (via Hacker News, Reddit): As a long-time Apple user, I&#8217;ve always appreciated the integration of hardware and software, signature of the Apple ecosystem. However, recent experiences with my iPad Air 11" M2 has left me questioning whether Apple has lost sight of what once made their products great.[&#8230;]The performance issues don&#8217;t stop at [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/04/premium-hardware-subpar-software/>

---

## Linus Sebastian Switches to iPhone for 30 Days

date: 2025-03-04, from: Michael Tsai

Linus Tech Tips: Linus takes a long-overdue trip back into the iOS ecosystem. Will daily-driving a shiny new iPhone 16 Plus for an entire month convert him into Apple&#8217;s newest fan?[&#8230;]&#8220;I started to look a little differently at the Apple users in my life. They describe Apple products with market slogans like, &#8216;It just works,&#8217; [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/04/linus-sebastian-switches-to-iphone-for-30-days/>

---

## Nothing Phone (3a) and (3a) Pro feature Snapdragon 7s Gen 3 and triple cameras for $379 and up

date: 2025-03-04, from: Liliputing

<p>Many of today&#8217;s mid-range smartphones offer the kind of performance you would have expected from a flagship a few years ago. But it&#8217;s not just performance that&#8217;s gone up &#8211; many phone makers have also increased starting prices. Case in point: Apple recently replaced the iPhone SE ($429 starting price) with a new iPhone 16e [&#8230;]</p>
<p>The post <a href="https://liliputing.com/nothing-phone-3a-and-3a-pro-feature-snapdragon-7s-gen-3-and-triple-cameras-for-379-and-up/">Nothing Phone (3a) and (3a) Pro feature Snapdragon 7s Gen 3 and triple cameras for $379 and up</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/nothing-phone-3a-and-3a-pro-feature-snapdragon-7s-gen-3-and-triple-cameras-for-379-and-up/>

---

## Apple brings M3 chip to the iPad Air, and updates the entry-level iPad to an A16 chip

date: 2025-03-04, from: Liliputing

<p>Apple is refreshing its iPad lineup with two new models. One is a new iPad Air with M3 that sells for $599 and up, and it comes less than a year after the iPad Air with an M2 chip. While it&#8217;s treated as something of an afterthought in Apple&#8217;s press release, the company is also [&#8230;]</p>
<p>The post <a href="https://liliputing.com/apple-brings-m3-chip-to-the-ipad-air-and-updates-the-entry-level-ipad-to-an-a16-chip/">Apple brings M3 chip to the iPad Air, and updates the entry-level iPad to an A16 chip</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/apple-brings-m3-chip-to-the-ipad-air-and-updates-the-entry-level-ipad-to-an-a16-chip/>

---

## Is Elon Musk “dumb”?

date: 2025-03-04, from: Gary Marcus blog

Maybe not, but there&#8217;s something systematically wrong 

<br> 

<https://garymarcus.substack.com/p/is-elon-musk-dumb>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Now Trump’s pissing off the crypto bros. 

<br> 

<https://www.dailykos.com/stories/2025/3/3/2307640/-Now-Trump-s-pissing-off-the-crypto-bros>

---

**@Feed for Alt USDS** (date: 2025-03-04, from: Feed for Alt USDS)

Actions for the general public—call your reps! Here's a script.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljkzcval6c2d>

---

## Dial-An-Advertiser

date: 2025-03-04, updated: 2025-03-04, from: Tedium site

Considering the long history of phone books, particularly the Yellow Pages, where local businesses learned all the marketing tricks they eventually brought to the internet. 

<br> 

<https://feed.tedium.co/link/15204/16976353/phone-book-yellow-pages-history>

---

## A Practical Guide to Implementing DeepSearch / DeepResearch

date: 2025-03-04, updated: 2025-03-04, from: Simon Willison’s Weblog

<p><strong><a href="https://jina.ai/news/a-practical-guide-to-implementing-deepsearch-deepresearch/">A Practical Guide to Implementing DeepSearch / DeepResearch</a></strong></p>
I really like the definitions Han Xiao from Jina AI proposes for the terms DeepSearch and DeepResearch in this piece:</p>
<blockquote>
<p><strong>DeepSearch</strong> runs through an iterative loop of searching, reading, and reasoning until it finds the optimal answer.  [...]</p>
<p><strong>DeepResearch</strong> builds upon DeepSearch by adding a structured framework for generating long research reports.</p>
</blockquote>
<p>I've recently found myself cooling a little on the classic RAG pattern of finding relevant documents and dumping them into the context for a single call to an LLM.</p>
<p>I think this definition of DeepSearch helps explain why. RAG is about answering questions that fall outside of the knowledge baked into a model. The DeepSearch pattern offers a tools-based alternative to classic RAG: we give the model extra tools for running multiple searches (which could be vector-based, or FTS, or even systems like ripgrep) and run it for several steps in a loop to try to find an answer.</p>
<p>I think DeepSearch is a lot more interesting than DeepResearch, which feels to me more like a presentation layer thing. Pulling together the results from multiple searches into a "report" looks more impressive, but I <a href="https://simonwillison.net/2025/Feb/25/deep-research-system-card/">still worry</a> that the report format provides a misleading impression of the quality of the "research" that took place.


    <p>Tags: <a href="https://simonwillison.net/tags/jina">jina</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a>, <a href="https://simonwillison.net/tags/search">search</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/rag">rag</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/4/deepsearch-deepresearch/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Fired US government workers with top security clearances were not given exit briefings, sources say. 

<br> 

<https://www.reuters.com/world/us/fired-us-government-workers-with-top-security-clearances-were-not-given-exit-2025-03-04/>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

The single most important thing about what Musk is doing is that it is Musk that is doing it. 

<br> 

<http://scripting.com/2025/03/04.html>

---

## Book: Backlash

date: 2025-03-04, from: Accidentally in Code

Backlash (Susan Faludi) is a long and not particularly easy read. Written in response to the Reagan administration’s assault on women’s rights (originally published in 1991), it was reissued in 2020 as history repeated itself. Two recurring themes in the book. First, the way that the data did not at all align with what was [&#8230;] 

<br> 

<https://cate.blog/2025/03/04/book-backlash/>

---

## Meet Artist Pablita Velarde/Tse Tsan (Santa Clara Pueblo)

date: 2025-03-04, from: National Archives, Text Message blog

March marks Women’s History Month, set aside to honor women’s contributions in American history. Today I would like to highlight the life and career of Pablita Velarde/Tse Tsan (Santa Clara Pueblo), a prominent 20th-century Native artist. Using records from a host of collections across National Archives facilities, we are able to glimpse into this accomplished &#8230; <a href="https://text-message.blogs.archives.gov/2025/03/04/meet-artist-pablita-velarde-tse-tsan-santa-clara-pueblo/" class="more-link">Continue reading <span class="screen-reader-text">Meet Artist Pablita Velarde/Tse Tsan (Santa Clara Pueblo)</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/03/04/meet-artist-pablita-velarde-tse-tsan-santa-clara-pueblo/>

---

**@Feed for Alt USDS** (date: 2025-03-04, from: Feed for Alt USDS)

Lawmakers invited federal employees who were illegally fired to the House chamber tonight for Trump's first major speech since the inauguration. 

USAID, VA, U.S. Forest Service, and DHS are among the agencies represented. 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljkwbim6nk2d>

---

## The Woman Who Revealed Climate Science in the 1800s

date: 2025-03-04, from: Guy Kawasaki blog

Sylvia G. Dee, Rice University. 

<br> 

<https://guykawasaki.substack.com/p/the-woman-who-revealed-climate-science>

---

**@Feed for Alt USDS** (date: 2025-03-04, from: Feed for Alt USDS)

Incredible work 👏

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljkuk4zmyk2d>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

One way is better than two, no matter how much better the new way is, you&#39;ll still have to support the old way. 

<br> 

<https://this.how/standards/>

---

## Facebook Cybertruck Owners Group Copes With Relentless Mockery

date: 2025-03-04, from: 404 Media Group

A Facebook group for Cybertruck owners is full of videos of people flicking off Cybertrucks. 

<br> 

<https://www.404media.co/facebook-cybertruck-owners-group-copes-with-relentless-mockery/>

---

**@Feed for Alt USDS** (date: 2025-03-04, from: Feed for Alt USDS)

Let's start today with some good news: the National Science Foundation is reinstating illegally fired employees. 

https://fedscoop.com/nsf-says-its-reinstating-fired-probationary-employees 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljkqkepx4k2k>

---

**@Robert's feed at BlueSky** (date: 2025-03-04, from: Robert's feed at BlueSky)

Very cool.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3ljkpogqbsk2u>

---

## Package Delayed Due To Tides

date: 2025-03-04, updated: 2025-03-05, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/04/package-delayed-due-to-tides/>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Looks like the Washington Post is covering TrumpLand, not RealityLand. 

<br> 

<https://archive.is/xZX4g>

---

## AI Chatbots Can Cushion the High School Counselor Shortage — But Are They Bad for Students?

date: 2025-03-04, from: The Markup blog

The more students turn to chatbots, the fewer chances they have to develop real-life relationships that can lead to jobs and later success 

<br> 

<https://themarkup.org/machine-learning/2025/03/04/ai-chatbots-can-cushion-the-high-school-counselor-shortage-but-are-they-bad-for-students>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Trump Hates Canada for its Decency. 

<br> 

<https://paulkrugman.substack.com/p/trump-hates-canada-for-its-decency?publication_id=277517&post_id=158363866&isFreemail=true&r=w33x&triedRedirect=true>

---

## Trump Hates Canada for its Decency

date: 2025-03-04, from: Paul Krugman

The president lacks basic decency, and loathes people who do 

<br> 

<https://paulkrugman.substack.com/p/trump-hates-canada-for-its-decency>

---

## Radar Trends to Watch: March 2025

date: 2025-03-04, from: O'Reilly Radar

Anthropic’s announcement of Claude 3.7 Sonnet notwithstanding, the breakneck pace of major AI announcements seemed to slow down through February. That gave us some time to look at some other topics. Two important posts about programming appeared: Salvatore Sanfilippo’s “We Are Destroying Software” and Rob Pike’s slide deck “On Bloat.” They’re unsurprisingly similar. Neither mentions [&#8230;] 

<br> 

<https://www.oreilly.com/radar/radar-trends-to-watch-march-2025/>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Trump Orders Permanent Govt Shutdown. 

<br> 

<https://talkingpointsmemo.com/edblog/trump-orders-permanent-govt-shutdown-no-really>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Ontario will cut U.S. power &#39;with a smile on my face,&#39; Ford says. 

<br> 

<https://torontosun.com/news/provincial/ontario-will-cut-off-u-s-electricity-exports-with-a-smile-on-my-face-ford-says>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Warren Buffett: Tariffs are ‘an act of war.’ 

<br> 

<https://www.cnn.com/2025/03/03/business/warren-buffett-tariffs-trump>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Trump&#39;s tariffs on Canada, Mexico and China could push up car prices by as much as $12,200. 

<br> 

<https://www.cbsnews.com/news/trump-tariffs-canada-mexico-will-car-prices-increase-12000/>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Here&#39;s the latest from Hays, Kansas: Elon Musk fired my wife. 

<br> 

<https://kansasreflector.com/2025/03/04/heres-the-latest-from-hays-kansas-elon-musk-fired-my-wife/>

---

## Time warp

date: 2025-03-04, from: Status-Q blog

I realise that I should be slightly more cautious about my use of phrases like &#8216;today&#8217; and &#8216;this morning&#8217; in my posts, since quite a few of my readers receive them by email the following day. In the days of the Trump regime, phrases like &#8216;The news looks a bit better this morning&#8217; have a <a class="more-link excerpt-link" href="https://statusq.org/archives/2025/03/04/13085/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<br> 

<https://statusq.org/archives/2025/03/04/13085/>

---

## llm-ollama 0.9.0

date: 2025-03-04, updated: 2025-03-04, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/taketwo/llm-ollama/releases/tag/0.9.0">llm-ollama 0.9.0</a></strong></p>
This release of the <code>llm-ollama</code> plugin adds support for <a href="https://simonwillison.net/2025/Feb/28/llm-schemas/">schemas</a>, thanks to a <a href="https://github.com/taketwo/llm-ollama/pull/36">PR by Adam Compton</a>.</p>
<p>Ollama provides very robust support for this pattern thanks to their <a href="https://ollama.com/blog/structured-outputs">structured outputs</a> feature, which works across all of the models that they support by intercepting the logic that outputs the next token and restricting it to only tokens that would be valid in the context of the provided schema.</p>
<p>With Ollama and <code>llm-ollama</code> installed you can run even run structured schemas against vision prompts for local models. Here's one against Ollama's <a href="https://ollama.com/library/llama3.2-vision">llama3.2-vision</a>:</p>
<pre><code>llm -m llama3.2-vision:latest \
  'describe images' \
  --schema 'species,description,count int' \
  -a https://static.simonwillison.net/static/2025/two-pelicans.jpg
</code></pre>
<p>I got back this:</p>
<pre><code>{
    "species": "Pelicans",
    "description": "The image features a striking brown pelican with its distinctive orange beak, characterized by its large size and impressive wingspan.",
    "count": 1
}
</code></pre>
<p>(Actually a bit disappointing, as there are <a href="https://static.simonwillison.net/static/2025/two-pelicans.jpg">two pelicans</a> and their beaks are brown.)


    <p>Tags: <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/ollama">ollama</a>, <a href="https://simonwillison.net/tags/plugins">plugins</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/llama">llama</a>, <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/4/llm-ollama-090/#atom-everything>

---

## llm-mistral 0.11

date: 2025-03-04, updated: 2025-03-04, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/simonw/llm-mistral/releases/tag/0.11">llm-mistral 0.11</a></strong></p>
I added <a href="https://simonwillison.net/2025/Feb/28/llm-schemas/">schema support</a> to this plugin which adds support for the <a href="https://docs.mistral.ai/api/">Mistral API</a> to LLM. Release notes:</p>
<blockquote>
<ul>
<li>Support for LLM <a href="https://llm.datasette.io/en/stable/schemas.html">schemas</a>. <a href="https://github.com/simonw/llm-mistral/issues/19">#19</a></li>
<li><code>-o prefix '{'</code> option for forcing a response prefix. <a href="https://github.com/simonw/llm-mistral/issues/18">#18</a></li>
</ul>
</blockquote>
<p>Schemas now work with OpenAI, Anthropic, Gemini and Mistral hosted models, plus self-hosted models via <a href="https://www.ollama.com/">Ollama</a> and <a href="https://github.com/taketwo/llm-ollama">llm-ollama</a>.


    <p>Tags: <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/mistral">mistral</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/plugins">plugins</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/4/llm-mistral-011/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-04, from: Dave Winer's linkblog)

Dow tumbles more than 600 points, S&amp;P 500 posts biggest loss since December as Trump says tariffs will proceed. 

<br> 

<https://www.cnbc.com/2025/03/02/stock-futures-rise-slightly-in-overnight-trading-as-investors-await-tariff-news-live-updates.html>

---

## I built an automaton called Squadron

date: 2025-03-04, updated: 2025-03-04, from: Simon Willison’s Weblog

<p>I believe that the price you have to pay for taking on a project is <a href="https://simonwillison.net/2022/Nov/6/what-to-blog-about/#projects">writing about it afterwards</a>. On that basis, I feel compelled to write up my decidedly non-software project from this weekend: Squadron, an automaton.</p>
<p>I've been obsessed with <a href="https://en.wikipedia.org/wiki/Automaton">automata</a> for decades, ever since I first encountered the <a href="https://en.wikipedia.org/wiki/Cabaret_Mechanical_Theatre">Cabaret Mechanical Theater</a> in Covent Garden in London (there from 1984-2003 - today it's a roaming collection). If you're not familiar with them, they are animated mechanical sculptures. I consider them to be the highest form of art.</p>
<p>For my birthday this year Natalie signed me up for a two day, 16 hour hour weekend class to make one at <a href="https://www.thecrucible.org/">The Crucible</a> in Oakland. If you live in the SF Bay Area and are not yet aware of the Crucible I'm delighted to introduce you - it's a phenomenal non-profit art school with an enormous warehouse that teaches blacksmithing, glass blowing, welding, ceramics, woodwork and dozens of other crafts. Here's <a href="https://www.thecrucible.org/course-search/">their course catalog</a>. Go enrich your soul!</p>
<p>I took their class in "Mechanical Sculpture", which turned out to be <em>exactly</em> a class in how to make automata. I guess the term "automota" isn't widely enough known to use in the course description!</p>
<p>The class was small - two students and one instructor - which meant that we got an extremely personalized experience.</p>
<h4 id="what-i-built">What I built</h4>
<p>On day one we worked together on a class project. I suggested a pelican, and we built exactly that - a single glorious pelican that flapped its wings and swooped from side to side.</p>
<p>Day two was when we got to build our own things. We'd already built a pelican, but I wanted one of my own... so I figured the only thing better than a pelican is a full squadron of them!</p>
<p>Hence, Squadron. Here's a video of my finished piece in action:</p>

<div style="max-width: 100%; margin-bottom: 0.4em">
    <video 
        controls="controls"
        preload="none"
        aria-label="Three wooden pelicans gently and jerkly flap their wings, suspended on brass wires above a wooden contraption containing a motor, a drive shaft and two cams driving rods that move the bodies up and down."
        poster="https://static.simonwillison.net/static/2025/squadron.jpg" loop="loop"
        style="width: 100%; height: auto;">
        <source src="https://static.simonwillison.net/static/2025/squadron-demo.mp4" type="video/mp4" />
    </video>
</div>

<p>I think it captures their pelican charisma pretty well!</p>
<h4 id="how-i-built-it">How I built it</h4>
<p>I was delighted to learn from the class that the tools needed to build simple automata are actually quite accessible:</p>
<ul>
<li>A power drill</li>
<li>A saw - we used a Japanese pull saw</li>
<li>Wood glue</li>
<li>Screws</li>
<li>Wood - we mainly worked with basswood, plus I used some poplar wood for the wings</li>
<li>Brass wires and rods</li>
<li>Pliers for working with the wire</li>
</ul>
<p>The most sophisticated tool we used was a reciprocating <a href="https://en.wikipedia.org/wiki/Scroll_saw">scroll saw</a>, for cutting shapes out of the wood. We also had access to a bench sander and a drill press, but those really just sped up processes that can be achieved using sand paper and a regular hand drill.</p>
<p>I've taken a lot of photos of pelicans over the years. I found this side-on photograph that I liked of two pelicans in flight:</p>
<p><img src="https://static.simonwillison.net/static/2025/two-pelicans.jpg" alt="Two glorious pelicans in flight, viewed sideways on" style="max-width: 100%;" /></p>
<p>Then I used the iOS Photos app feature where you can extract an object from a photo as a "sticker" and pasted the result into iOS Notes.</p>
<p><img src="https://static.simonwillison.net/static/2025/notes-pelican.jpg" alt="Screenshot of iOS notes - just the first pelican is in the note, with a white background instead of the sky" style="max-width: 100%;" /></p>
<p>I printed the image from there, which gave me a pelican shape on paper. I cut out just the body and used it to trace the shape onto the wood, then ran the wood through the scroll saw. I made three of these, not paying too much attention to accuracy as it's better for them to have slight differences to each other.</p>
<p>For the wings I started with rectangles of poplar wood, cut using the Japanese saw and attached to the pelican's body using bent brass wire through small drilled holes. I later sketched out a more interesting wing shape on some foam board as a prototype (loosely inspired by photos I had taken), then traced that shape onto the wood and shaped them with the scroll saw and sander.</p>
<p>Most automata are driven using <a href="https://en.wikipedia.org/wiki/Cam_(mechanism)">cams</a>, and that was the pattern we stuck to in our class as well. Cams are incredibly simple: you have a rotating rod (here driven by a 12V 10RPM motor) and you attach an offset disc to it. That disc can then drive all manner of useful mechanisms.</p>
<p>For my pelicans the cams lift rods up and down via a "foot" that sits on the cam. The feet turned out to be essential - we made one from copper and another from wood. Without feet the mechanism was liable to jam.</p>
<p>I made both cams by tracing out shapes with a pencil and then cutting the wood with the scroll saw, then using the drill press to add the hole for the rod.</p>
<p>The front pelican's body sits on a brass rod that lifts up and down, with the wings fixed to wires.</p>
<p>The back two share a single wooden dowel, sitting on brass wires attached to two small holes drilled into the end.</p>
<p>To attach the cams to the drive shaft I drilled a small hole through the cam and the brass drive shaft, then hammered in a brass pin to hold the cam in place. Without that there's a risk of the cam slipping around the driving rod rather than rotating firmly in place.</p>
<p>After adding the pelicans with their fixed wings I ran into a problem: the tension from the wing wiring caused friction between the rod and the base, resulting in the up-and-down motion getting stuck. We were running low on time so our instructor stepped in to help rescue my project with the additional brass tubes shown in the final piece.</p>
<h4 id="what-i-learned">What I learned</h4>
<p>The main thing I learned from the weekend is that automata building is a much more accessible craft than I had initially expected. The tools and techniques are surprisingly inexpensive, and a weekend (really a single day for my solo project) was enough time to build something that I'm really happy with.</p>

<p>The hardest part turns out to be the fiddling at the very end to get all of the motions just right. I'm still iterating on this now (hence the elastic hair tie and visible pieces of tape) - it's difficult to find the right balance between position, motion and composition. I guess I need to get comfortable with the idea that art is <a href="https://quoteinvestigator.com/2019/03/01/abandon/">never finished, merely abandoned</a>.</p>

<p>I've been looking out for a good analog hobby for a while now. Maybe this is the one!</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/art">art</a>, <a href="https://simonwillison.net/tags/projects">projects</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/4/squadron/#atom-everything>

---

## Beelink plans to enter the NAS space with the Beelink ME line of “private cloud storage” devices

date: 2025-03-03, from: Liliputing

<p>Network Attached Storage (NAS) devices are basically small desktop PCs that are designed specifically to let you connect large amounts of storage to a home or business network. So it&#8217;s unsurprising that in recent years we&#8217;ve seen a number of Chinese companies best known for making mini PCs enter the NAS space by launching models [&#8230;]</p>
<p>The post <a href="https://liliputing.com/beelink-plans-to-enter-the-nas-space-with-the-beelink-me-line-of-private-cloud-storage-devices/">Beelink plans to enter the NAS space with the Beelink ME line of &#8220;private cloud storage&#8221; devices</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/beelink-plans-to-enter-the-nas-space-with-the-beelink-me-line-of-private-cloud-storage-devices/>

---

**@Feed for Alt USDS** (date: 2025-03-03, from: Feed for Alt USDS)

"We need more government technologists, not fewer." 

Former U.S. Digital Services engineering leader Anne Marshall tells @politico.com Tech about DOGE's destructive tactics observed in the weeks before her resignation. 

🎙️: https://open.spotify.com/episode/4yVcK1KaXCcLHnxBMz8nwt

#SaveOurServices #altgov #DefendDemocracy 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljj4m3xsb22r>

---

**@Dave Winer's linkblog** (date: 2025-03-03, from: Dave Winer's linkblog)

Analog Gov&#39;t vs. Digital World. 

<br> 

<https://www.youtube.com/watch?v=iMBmFRLupag>

---

## Samsung brings a whole bunch of foldable displays to MWC

date: 2025-03-03, from: Liliputing

<p>Samsung has been selling smartphones with foldable displays since 2019, but the company has been working on foldable display technology for far longer than that, and Samsung has made a habit of showing off concept devices featuring the latest foldable display innovations. This week Samsung is displaying multiple new screens at Mobile World Congress in [&#8230;]</p>
<p>The post <a href="https://liliputing.com/samsung-brings-a-whole-bunch-of-foldable-displays-to-mwc/">Samsung brings a whole bunch of foldable displays to MWC</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/samsung-brings-a-whole-bunch-of-foldable-displays-to-mwc/>

---

**@Dave Winer's linkblog** (date: 2025-03-03, from: Dave Winer's linkblog)

𝗬𝗮𝘆 𝘁𝗲𝘅𝘁 𝗶𝘀 𝗵𝗼𝘄 you can get bold or italic text in your social media posts even though the software doesn&#39;t theoretically support styles in text. 

<br> 

<https://yaytext.com/bold-italic/>

---

## Citibank’s $81 Trillion Error

date: 2025-03-03, from: Michael Tsai

Doloresz Katanich: An error almost led to a Citigroup account being credited with $81tn (&#8364;77.8tn) - an amount that is about 5 times the total wealth of the UK, which was estimated at &#8364;14.7tn in 2023 by ONS. [&#8230;] The erroneous internal transfer, which occurred last April, was initially missed by two employees, one of [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/03/citibanks-81-trillion-error/>

---

## Swift 6.1

date: 2025-03-03, from: Michael Tsai

Mishal Shah: This post describes the release process, and estimated schedule for Swift 6.1. Donny Wals: The Xcode 16.3 beta is out, which includes a new version of Swift. Swift 6.1 is a relatively small release that comes with bug fixes, quality of life improvements, and some features.[&#8230;]Starting in Swift 6.1, Apple has made it [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/03/swift-6-1/>

---

## StopTheMadness for Safari Web Apps?

date: 2025-03-03, from: Michael Tsai

Jeff Johnson: There&#8217;s now a Safari web extension version of Noir specifically for Safari web apps, in addition to the Safari app extension version of Noir for Safari. Of course, this solution is non-ideal, because it&#8217;s confusing to users, and you&#8217;ll notice in the above screenshot that Noir for Web Apps has to warn users&#8212;with [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/03/stopthemadness-for-safari-web-apps/>

---

## 2024 Apple Vision Accessibility Report Card

date: 2025-03-03, from: Michael Tsai

AppleVis: Overall, survey participants expressed satisfaction with the VoiceOver features available on iOS. Several participants expressed a desire for deeper AI integration for functionality like image description, photo labeling, voices, and screen recognition. Multiple participants expressed dissatisfaction with the VoiceOver features available on macOS, particularly when compared to iOS. People who use devices in languages [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/03/2024-apple-vision-accessibility-report-card/>

---

## Low Blows in the Oval

date: 2025-03-03, from: Tina Brown

One of the lowest moments was JD Vance&#8217;s Goodfellas groin-kick of &#8220;Just say thank you&#8230;Have you said thank you once?&#8221; 

<br> 

<https://tinabrown.substack.com/p/low-blows-in-the-oval>

---

## Available today: DeepSeek R1 7B & 14B distilled models for Copilot+ PCs via Azure AI Foundry – further expanding AI on the edge

date: 2025-03-03, from: Windows Developer Blog

<p>At Microsoft, we believe the future of AI is happening now — spanning from the cloud to the edge. Our vision is bold: to build Windows as the ultimate platform for AI innovation, where intelligence isn’t just in the cloud but seamlessly woven t</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2025/03/03/available-today-deepseek-r1-7b-14b-distilled-models-for-copilot-pcs-via-azure-ai-foundry-further-expanding-ai-on-the-edge/">Available today: DeepSeek R1 7B &#038; 14B distilled models for Copilot+ PCs via Azure AI Foundry – further expanding AI on the edge</a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<br> 

<https://blogs.windows.com/windowsdeveloper/2025/03/03/available-today-deepseek-r1-7b-14b-distilled-models-for-copilot-pcs-via-azure-ai-foundry-further-expanding-ai-on-the-edge/>

---

## Lenovo’s Magic Bay lets you snap extra screens or other gear to the ThinkBook 16P Gen 6

date: 2025-03-03, from: Liliputing

<p>The Lenovo ThinkBook 16p Gen 6 is a notebook with support for up to an Intel Core Ultra 9 75HX Arrow Lake processor, NVIDIA GeForce RTX 5070 graphics, 64GB of RAM, an 85 Wh battery, and a 240 Hz IPS LCD display. But what really sets this laptop apart from other premium notebooks is its Magic [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lenovos-magic-bay-lets-you-snap-extra-screens-or-other-gear-to-the-thinkbook-16p-gen-6/">Lenovo&#8217;s Magic Bay lets you snap extra screens or other gear to the ThinkBook 16P Gen 6</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lenovos-magic-bay-lets-you-snap-extra-screens-or-other-gear-to-the-thinkbook-16p-gen-6/>

---

## The features of Python's help() function

date: 2025-03-03, updated: 2025-03-03, from: Simon Willison’s Weblog

<p><strong><a href="https://www.pythonmorsels.com/help-features/">The features of Python&#x27;s help() function</a></strong></p>
I've only ever used Python's <code>help()</code> feature by passing references to modules, classes functions and objects to it. Trey Hunner just taught me that it accepts strings too - <code>help("**")</code> tells you about the <code>**</code> operator, <code>help("if")</code> describes the <code>if</code> statement and <code>help("topics")</code> reveals even more options, including things like <code>help("SPECIALATTRIBUTES")</code> to learn about specific advanced topics.

    <p><small></small>Via <a href="https://bsky.app/profile/trey.io/post/3ljimzwglik2n">@trey.io</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/trey-hunner">trey-hunner</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/3/pythons-help-function/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-03, from: Dave Winer's linkblog)

Fired DOGE victims get to stare down Trump during big speech to Congress. 

<br> 

<https://www.dailykos.com/stories/2025/3/3/2307555/-Fired-DOGE-victims-get-to-stare-down-Trump-during-big-speech-to-Congress>

---

**@IIIF Mastodon feed** (date: 2025-03-03, from: IIIF Mastodon feed)

<p>Please save the date for our next Community Call, &quot;Universal Viewer 4.1.0.&quot;</p><p>On 12 March at 12pm ET / 16:00 UTC, <span class="h-card" translate="no"><a href="https://glammr.us/@universalviewer" class="u-url mention">@<span>universalviewer</span></a></span> team members will demo the latest release.</p><p>Please join us using the Zoom on the <a href="https://glammr.us/tags/IIIF" class="mention hashtag" rel="tag">#<span>IIIF</span></a> Community Calendar: iiif.io/community.</p> 

<br> 

<https://glammr.us/@IIIF/114099992600696514>

---

## Realme’s Interchangable Lens concept phone has a 1 inch image sensor, supports Leica M mount lenses

date: 2025-03-03, from: Liliputing

<p>The best camera is the one that you have with you, which is why many folks have ditched point and shoot cameras in favor of smartphones in recent years. And smartphones have become incredibly capable digital photography devices thanks to improvements in lens, sensor, and software features. But there&#8217;s still only so much you can [&#8230;]</p>
<p>The post <a href="https://liliputing.com/realmes-interchangable-lens-concept-phone-has-a-1-inch-image-sensor-supports-leica-m-mount-lenses/">Realme&#8217;s Interchangable Lens concept phone has a 1 inch image sensor, supports Leica M mount lenses</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/realmes-interchangable-lens-concept-phone-has-a-1-inch-image-sensor-supports-leica-m-mount-lenses/>

---

**@Tomosino's Mastodon feed** (date: 2025-03-03, from: Tomosino's Mastodon feed)

<p>Looking into crimes.. anyone found a reliable way to rip audio from Libby?</p> 

<br> 

<https://tilde.zone/@tomasino/114099904822339136>

---

## Picking a Very Dumb Fight

date: 2025-03-03, updated: 2025-03-03, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/03/picking-a-very-dumb-fight/>

---

**@Dave Winer's linkblog** (date: 2025-03-03, from: Dave Winer's linkblog)

Ukrainian drones strike deep into Russia, hitting Ufa refinery. Interesting, now that the deal with the US is off they can go as far into Russia as they want. Ironically, Biden was protecting Putin better than The One With the Gaudy Hooker Makeup can. 

<br> 

<https://www.msn.com/en-ie/news/world/ukrainian-drones-strike-deep-into-russia-hitting-ufa-refinery/ar-AA1A9JUA>

---

## Judges Are Fed up With Lawyers Using AI That Hallucinate Court Cases

date: 2025-03-03, from: 404 Media Group

Another lawyer was caught using AI and not checking the output for accuracy, while a previously-reported case just got hit with sanctions. 

<br> 

<https://www.404media.co/ai-lawyer-hallucination-sanctions/>

---

## Astronomy's Forgotten Woman

date: 2025-03-03, from: Guy Kawasaki blog

Kris Pardo, University of Southern California 

<br> 

<https://guykawasaki.substack.com/p/astronomys-forgotten-woman>

---

## Lenovo’s ThinkBook “codename Flip” concept laptop has an 18.1 inch OLED display that becomes 13 inches when folded

date: 2025-03-03, from: Liliputing

<p>This summer Lenovo will release a laptop with a rollable OLED display that extends from 14 inches to 16.7 inches, giving you 50% more screen space when you need it. Now the company is introducing a 13 inch laptop with a screen that extends to 18.1 inches, effectively doubling the amount of screen real estate. [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lenovos-thinkbook-codename-flip-concept-laptop-has-an-18-1-inch-oled-display-that-becomes-13-inches-when-folded/">Lenovo&#8217;s ThinkBook &#8220;codename Flip&#8221; concept laptop has an 18.1 inch OLED display that becomes 13 inches when folded</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lenovos-thinkbook-codename-flip-concept-laptop-has-an-18-1-inch-oled-display-that-becomes-13-inches-when-folded/>

---

## Hinton vs Musk

date: 2025-03-03, from: Gary Marcus blog

Standing with my long-term nemesis, standing with science 

<br> 

<https://garymarcus.substack.com/p/hinton-vs-musk>

---

## Buying a $250 Residency Card From a Tropical Island Let Me Bypass U.S. Crypto Laws

date: 2025-03-03, from: 404 Media Group

U.S. traders are buying 'digital residency' in Palau to skirt restrictions on the amount of cryptocurrency they can withdraw and the exchanges they can use. Major exchanges have already banned the ID, fearing abuse. 

<br> 

<https://www.404media.co/buying-a-250-residency-card-from-a-tropical-island-let-me-bypass-u-s-crypto-laws/>

---

**@Dave Winer's linkblog** (date: 2025-03-03, from: Dave Winer's linkblog)

Wisconsin Supreme Court race puts Trump and Musk at center stage. 

<br> 

<https://www.washingtonpost.com/politics/2025/03/03/wisconsin-supreme-court-trump-musk/>

---

**@Dave Winer's linkblog** (date: 2025-03-03, from: Dave Winer's linkblog)

Washington now ‘largely aligns’ with Moscow’s vision, Kremlin says. 

<br> 

<https://wapo.st/3QGplPj>

---

**@Dave Winer's linkblog** (date: 2025-03-03, from: Dave Winer's linkblog)

Tesla store gets taken over by Musk protesters, 9 people arrested. 

<br> 

<https://electrek.co/2025/03/01/tesla-store-gets-taken-over-by-musk-protesters-9-people-arrested/>

---

**@Tomosino's Mastodon feed** (date: 2025-03-03, from: Tomosino's Mastodon feed)

<p>Today is Bolludagur, or Bun Day, in <a href="https://tilde.zone/tags/Iceland" class="mention hashtag" rel="tag">#<span>Iceland</span></a> and I grabbed one if each of the 5 varieties for sale at my favorite shop. This is a great holiday and one of three in a row leading into <a href="https://tilde.zone/tags/lent" class="mention hashtag" rel="tag">#<span>lent</span></a> .</p><p>Want to know more? <a href="https://blog.tomasino.org/bolludagur" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="">blog.tomasino.org/bolludagur</span><span class="invisible"></span></a></p> 

<br> 

<https://tilde.zone/@tomasino/114098538353842758>

---

**@Dave Winer's linkblog** (date: 2025-03-03, from: Dave Winer's linkblog)

France has ‘trouble understanding’ US halt on cyber operations against Russia. 

<br> 

<https://www.politico.eu/article/france-has-trouble-understanding-us-halt-on-cyber-operations-against-russia/>

---

## New extended temperature range for Compute Module 4

date: 2025-03-03, from: Raspberry Pi News (.com)

<p>Several Compute Module 4 variants are now available with an extended operating temperature range of -40°C to +85°C.</p>
<p>The post <a href="https://www.raspberrypi.com/news/new-extended-temperature-range-for-compute-module-4/">New extended temperature range for Compute Module 4</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/new-extended-temperature-range-for-compute-module-4/>

---

**@Dave Winer's linkblog** (date: 2025-03-03, from: Dave Winer's linkblog)

Chris Hardie: How far I&#39;ll go to make an RSS feed of your website. 

<br> 

<https://tech.chrishardie.com/2025/rss-feed-of-your-website/>

---

## It’s Up to Europe Now

date: 2025-03-03, from: Paul Krugman

Can Europe rise to the occasion? 

<br> 

<https://paulkrugman.substack.com/p/its-up-to-europe-now>

---

## From Design doc to code: the Groundhog AI coding assistant (and new Cursor meta)

date: 2025-03-03, from: Geoffrey Hunntley's blog

<p>Ello everyone, in the &quot;<a href="https://ghuntley.com/tradecraft" rel="noreferrer">Yes, Claude Code can decompile itself. Here&apos;s the source code</a>&quot; blog post, I teased about a new meta when using Cursor. This post is a follow-up to the post below.</p><figure class="kg-card kg-bookmark-card"><a class="kg-bookmark-container" href="https://ghuntley.com/stdlib/"><div class="kg-bookmark-content"><div class="kg-bookmark-title">You are using Cursor AI incorrectly...</div><div class="kg-bookmark-description">I&#x2019;m hesitant to give</div></div></a></figure> 

<br> 

<https://ghuntley.com/specs/>

---

## Peace for our time?

date: 2025-03-03, from: Status-Q blog

How very strange to wake this morning thinking about Starmer and Trump &#8211; as Churchill and&#8230; Neville Chamberlain. I&#8217;m sorry Neville, you really didn&#8217;t deserve that! I didn&#8217;t think about either of them for long, though, because I&#8217;m in my campervan looking at Lindisfarne (just visible in the background), where I&#8217;ll be heading after breakfast, <a class="more-link excerpt-link" href="https://statusq.org/archives/2025/03/03/13080/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<br> 

<https://statusq.org/archives/2025/03/03/13080/>

---

## TCL launches NXTPAPER 11 Plus tablet for €249 and up

date: 2025-03-03, from: Liliputing

<p>TCL&#8217;s NXTPAPER technology offers a glare-free, somewhat paper-like viewing experience for smartphones and tablets. But unlike E Ink displays, NXTPAPER screens are LCD displays with support for a full range of colors and refresh rates that are high enough for video, gaming, and other activities. The TCL NXTPAPER 11 Plus is the first device to [&#8230;]</p>
<p>The post <a href="https://liliputing.com/tcl-launches-nxtpaper-11-plus-tablet-for-e249-and-up/">TCL launches NXTPAPER 11 Plus tablet for €249 and up</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/tcl-launches-nxtpaper-11-plus-tablet-for-e249-and-up/>

---

**@Feed for Alt USDS** (date: 2025-03-03, from: Feed for Alt USDS)

USAID workers put their lives on the line to help the world & protect America. 🌍💙 Now, they’re being abandoned. What does that say about our values? 

https://www.wethebuilders.org/posts/dismantling-usaid-uncertainty

#SaveOurServices #altgov #DefendDemocracy #StayInformed #Congress #CivilServants #ProtectGovernment #USAID 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljhbjftsi22b>

---

## How big were wildfires in 2024?

date: 2025-03-03, from: Hannah Richie at Substack

Global burned area was about average, but it was a big year for South America. 

<br> 

<https://www.sustainabilitybynumbers.com/p/wildfires-2024>

---

**@Dave Winer's linkblog** (date: 2025-03-03, from: Dave Winer's linkblog)

“Democrats have been playing dead for too many years,” Sanders said. 

<br> 

<https://www.politico.com/news/2025/03/02/democrats-sanders-playing-dead-00206894>

---

**@Feed for Alt USDS** (date: 2025-03-03, from: Feed for Alt USDS)

If you're a federal employee and you received the "5 things you did this week" OPM email, we just discovered something amazing...

www.opmreply.com

☝️ We know you're busy doing your actual job, so here's an efficiency shortcut. (Or ya know, just ignore it.)
https://www.opmreply.com/ 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljgp3bey2c2k>

---

## 544. The French Revolution: The September Massacres (Part 1)

date: 2025-03-03, from: This is history podcast

<p>‘Still more traitors, still more treason…&#8221; It is 1792 and France has been at war since April; it is not going well. In Paris, the Tuileries Palace has been stormed, and the royal family imprisoned. Meanwhile, tensions are rising between the main political factions of the Revolution, the Girondins and the Montagnard, led by the [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/544-the-french-revolution-the-september-massacres-part-1/">544. The French Revolution: The September Massacres (Part 1)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/544-the-french-revolution-the-september-massacres-part-1/>

---

## Marginalia Search: 4 Years

date: 2025-03-03, from: Marginallia log

This update is a few days late, the canonical birth date of the project is Feb 26.
It has been another year of Marginalia Search. The project is still ongoing, still my full time job, although the project is entering a somewhat more mature phase of development, most of the big pieces are in place and do a decent job at what they do.
The roadmap for the project is available on GitHub. 

<br> 

<https://www.marginalia.nu/log/a_114_4_years/>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

Rubio Bypasses Congress to Send Israel $4 Billion in Arms. 

<br> 

<https://www.nytimes.com/2025/03/02/us/politics/rubio-arms-israel.html>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

DOGE’s savings page fixed old mistakes — and added new ones. 

<br> 

<https://www.npr.org/2025/03/01/nx-s1-5313853/doge-savings-receipts-musk-trump>

---

**@Feed for Alt USDS** (date: 2025-03-02, from: Feed for Alt USDS)

Mass layoffs & restructuring cause real trauma: hypervigilance, grief, & loss of identity. OMB officials intended for civil servants to be traumatically affected. This isn't just job loss—it's systemic harm ⬇️
https://www.wethebuilders.org/posts/the-intentional-weaponization-of-trauma 

#altgov #altUSDS #DefendDemocracy #WorkplaceTrauma 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljgeygaoyk2b>

---

## Decoding (and debunking) Hard Fork’s Kevin Roose

date: 2025-03-02, from: Gary Marcus blog

His latest New York Times piece tells us a lot about what he doesn&#8217;t really understand 

<br> 

<https://garymarcus.substack.com/p/decoding-and-debunking-hard-forks>

---

## AMD Strix Halo is coming to more mini PCs (eventually)

date: 2025-03-02, from: Liliputing

<p>AMD&#8217;s Ryzen AI Max &#8220;Strix Halo&#8221; processors are high-performance mobile chips with integrated graphics that can rival recent mid-range discrete GPUs, support for up to 16 Zen 5 CPU cores, and an NPU that offers up to 50 TOPS of hardware-accelerated AI performance. So far only a couple of companies have announced PCs that will actually [&#8230;]</p>
<p>The post <a href="https://liliputing.com/amd-strix-halo-is-coming-to-more-mini-pcs-eventually/">AMD Strix Halo is coming to more mini PCs (eventually)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/amd-strix-halo-is-coming-to-more-mini-pcs-eventually/>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

Chris Lydon interview with Senator Angus King (I-Maine): &quot;The most direct assault on the Constitution in our history.&quot; 

<br> 

<https://radioopensource.substack.com/p/the-most-direct-assault-on-the-constitution?publication_id=1680262&post_id=158203876&isFreemail=true&r=w33x&triedRedirect=true>

---

## Infinix introduces a tri-fold flip phone concept

date: 2025-03-02, from: Liliputing

<p>Most smartphones with foldable OLED displays have a single fold point that either lets you fold a small tablet-sized device in half for use as a phone or fold a phone-sized device in half like a flip phone. But last year Huawei introduced the first tri-fold phone that folds up like a map, giving you [&#8230;]</p>
<p>The post <a href="https://liliputing.com/infinix-introduces-a-tri-fold-flip-phone-concept/">Infinix introduces a tri-fold flip phone concept</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/infinix-introduces-a-tri-fold-flip-phone-concept/>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

“The White House has become an arm of the Kremlin. Every single day you hear from the National Security Advisor, from the President of the United States, from his entire national security team, Kremlin talking points.” 

<br> 

<https://politicalwire.com/2025/03/02/quote-of-the-day-4101/>

---

## Quoting Ethan Mollick

date: 2025-03-02, updated: 2025-03-02, from: Simon Willison’s Weblog

<blockquote cite="https://www.oneusefulthing.org/p/a-new-generation-of-ais-claude-37"><p>After publishing this piece, I was contacted by Anthropic who told me that Sonnet 3.7 would not be considered a 10^26 FLOP model and cost a few tens of millions of dollars to train, though future models will be much bigger.</p></blockquote>
<p class="cite">&mdash; <a href="https://www.oneusefulthing.org/p/a-new-generation-of-ais-claude-37">Ethan Mollick</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/ethan-mollick">ethan-mollick</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/2/ethan-mollick/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

18F: We are dedicated to the American public and we&#39;re not done yet. Quite a message. Our kind of American. Let&#39;s fix this. Good idea. 

<br> 

<https://18f.org/>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

<p>An idea for our answer to MAGA: &quot;One America Together.&quot;</p>
<p><span style="letter-spacing: 0.01rem;">Purple baseball caps. Ideally worn by everyone at the SOTU address, and chanted for every applause line. </span></p>
<p><span style="letter-spacing: 0.01rem;">Kind of the way Knicks fans say Doooooce when Deuce McBride gets a score. </span></p> 

<br> 

<http://scripting.com/2025/03/01/185654.html?title=oneAmericaTogether>

---

## Notes from my Accessibility and Gen AI podcast appearance

date: 2025-03-02, updated: 2025-03-02, from: Simon Willison’s Weblog

<p>I was a guest on <a href="https://accessibility-and-gen-ai.simplecast.com/episodes/ep-6-simon-willison-datasette">the most recent episode</a> of the <a href="https://linktr.ee/a11ygenai">Accessibility + Gen AI Podcast</a>, hosted by Eamon McErlean and Joe Devon. We had a really fun, wide-ranging conversation about a host of different topics. I've extracted a few choice quotes from the transcript.</p>

<p><lite-youtube videoid="zoxpEM6TLEU" js-api="js-api"
  title="Ep 6 - Simon Willison - Creator, Datasette"
  playlabel="Play: Ep 6 - Simon Willison - Creator, Datasette"
> </lite-youtube></p>

<h4 id="alt-text">LLMs for drafting alt text</h4>

<p>I use LLMs for the first draft of my alt text (<a href="https://www.youtube.com/watch?v=zoxpEM6TLEU&amp;t=22m10s">22:10</a>):</p>
<blockquote>
<p>I actually use Large Language Models for most of my alt text these days. Whenever I tweet an image or whatever, I've got a Claude project called Alt text writer. It's got a prompt and an example. I dump an image in and it gives me the alt text.</p>
<p>I very rarely just use it because that's rude, right? You should never dump text onto people that you haven't reviewed yourself. But it's always a good starting point.</p>
<p>Normally I'll edit a tiny little bit. I'll delete an unimportant detail or I'll bulk something up. And then I've got alt text that works.</p>
<p>Often it's actually got really good taste. A great example is if you've got a screenshot of an interface, there's a lot of words in that screenshot and most of them don't matter.</p>
<p>The message you're trying to give in the alt text is that it's two panels on the left, there's a conversation on the right, there's a preview of the SVG file or something. My alt text writer normally gets that right.</p>
<p>It's even good at summarizing tables of data where it will notice that actually what really matters is that Gemini got a score of 57 and Nova got a score of 53 - so it will pull those details out and ignore [irrelevant columns] like the release dates and so forth.</p>
</blockquote>
<p>Here's the current custom instructions prompt I'm using for that Claude Project:</p>
<blockquote><p><code>You write alt text for any image pasted in by the user. Alt text is always presented in a fenced code block to make it easy to copy and paste out. It is always presented on a single line so it can be used easily in Markdown images. All text on the image (for screenshots etc) must be exactly included. A short note describing the nature of the image itself should go first.</code></p></blockquote>

<h4 id="ethics">Is it ethical to build unreliable accessibility tools?</h4>

<p>On the ethics of building accessibility tools on top of inherently unreliable technology (<a href="https://www.youtube.com/watch?v=zoxpEM6TLEU&amp;t=5m35s">5:33</a>):</p>
<blockquote>
<p>Some people I've talked to have been skeptical about the accessibility benefits because their argument is that if you give somebody unreliable technology that might hallucinate and make things up, surely that's harming them.</p>
<p>I don't think that's true. I feel like people who use screen readers are used to unreliable technology.</p>
<p>You know, if you use a guide dog - it's a wonderful thing and a <em>very</em> unreliable piece of technology.</p>
<p>When you consider that people with accessibility needs have agency, they can understand the limitations of the technology they're using. I feel like giving them a tool where they can point their phone at something and it can describe it to them is a world away from accessibility technology just three or four years ago.</p>
</blockquote>
<h4 id="not-a-threat">Why I don't feel threatened as a software engineer</h4>
<p>This is probably my most coherent explanation yet of why I don't see generative AI as a threat to my career as a software engineer (<a href="https://www.youtube.com/watch?v=zoxpEM6TLEU&amp;t=33m51s">33:49</a>):</p>
<blockquote>
<p>My perspective on this as a developer who's been using these systems on a daily basis for a couple of years now is that I find that they enhance my value. I am so much more competent and capable as a developer because I've got these tools assisting me. I can write code in dozens of new programming languages that I never learned before.</p>
<p>But I still get to benefit from my 20 years of experience.</p>
<p>Take somebody off the street who's never written any code before and ask them to build an iPhone app with ChatGPT. They are going to run into so many pitfalls, because programming isn't just about can you write code - it's about thinking through the problems, understanding what's possible and what's not, understanding how to QA, what good code is, having good taste.</p>
<p>There's so much depth to what we do as software engineers.</p>
<p>I've said before that generative AI probably gives me like two to five times productivity boost on the part of my job that involves typing code into a laptop. But that's only 10 percent of what I do. As a software engineer, most of my time isn't actually spent with the typing of the code. It's all of those other activities.</p>
<p>The AI systems help with those other activities, too. They can help me think through architectural decisions and research library options and so on. But I still have to have that agency to understand what I'm doing.</p>
<p>So as a software engineer, I don't feel threatened. My most optimistic view of this is that the cost of developing software goes down because an engineer like myself can be more ambitious, can take on more things. As a result, demand for software goes up - because if you're a company that previously would never have dreamed of building a custom CRM for your industry because it would have taken 20 engineers a year before you got any results... If it now takes four engineers three months to get results, maybe you're in the market for software engineers now that you weren't before.</p>
</blockquote>
    
        <p>Tags: <a href="https://simonwillison.net/tags/accessibility">accessibility</a>, <a href="https://simonwillison.net/tags/alt-attribute">alt-attribute</a>, <a href="https://simonwillison.net/tags/podcasts">podcasts</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/podcast-appearances">podcast-appearances</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/2/accessibility-and-gen-ai/#atom-everything>

---

## Quoting Kellan Elliott-McCrea

date: 2025-03-02, updated: 2025-03-02, from: Simon Willison’s Weblog

<blockquote cite="https://fiasco.social/@kellan/114092761910766291"><p>Regarding <a href="https://simonwillison.net/2025/Mar/2/hallucinations-in-code/">the recent blog post</a>, I think a simpler explanation is that hallucinating a non-existent library is a such an inhuman error it throws people. A human making such an error would be almost unforgivably careless.</p></blockquote>
<p class="cite">&mdash; <a href="https://fiasco.social/@kellan/114092761910766291">Kellan Elliott-McCrea</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/kellan-elliott-mccrea">kellan-elliott-mccrea</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/2/kellan-elliott-mccrea/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

If I understand correctly, this TechCrunch article is misleading the same way the Bluesky company misleads. There is no  benefit to users of either app that they use the same complicated and new structure to communicate, where simpler and more established standards would work just as well. 

<br> 

<https://techcrunch.com/2025/02/28/bluesky-based-instagram-alternative-flashes-launches-publicly/>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

Elon Musk’s quest for power has a new target: Wisconsin’s Supreme Court. 

<br> 

<https://www.theguardian.com/us-news/2025/mar/02/elon-musk-wisconsin>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

Anti-DEI push ends effort to plant trees in places that need them. 

<br> 

<https://apnews.com/article/trees-arbor-day-grants-cut-trump-heat-shade-environmental-justice-5909d4f102ac0de9cc5be313b4fbd399>

---

## Episode 152 - LIVE at VCF - Reviving Retro Panel

date: 2025-03-02, from: Advent of Computing

<p>A special treat from VCF SoCal. While visiting I had the chance to host a panel on restoration and preservation. I was joined by:</p> <p>David from Usagi Electric (<a href= "https://www.youtube.com/@UsagiElectric)">https://www.youtube.com/@UsagiElectric)</a></p> <p>Rob from Souther Amis (<a href= "https://www.southernamis.com/)">https://www.southernamis.com/)</a></p> <p>Jim, Former Executive Director Computer Museum of America (<a href= "https://computerhalloffame.org/home/about/)">https://computerhalloffame.org/home/about/)</a></p> 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://traffic.libsyn.com/secure/adventofcomputing/ep152_revive_retro_panel.mp3?dest-id=1206722"></source>
</audio> <a href="https://traffic.libsyn.com/secure/adventofcomputing/ep152_revive_retro_panel.mp3?dest-id=1206722" target="_blank">download audio/mpeg</a><br> 

<https://adventofcomputing.libsyn.com/episode-152-live-at-vcf-reviving-retro-panel>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

All or Nothing review: Michael Wolff details Trump’s bilious re-election campaign. 

<br> 

<https://www.theguardian.com/us-news/2025/mar/02/michael-wolff-all-or-nothing-book-review>

---

## ¿Quieres ser organizadora?

date: 2025-03-02, from: Our Future.org

Nos ponemos de pie, levantamos nuestras voces, y tomamos la palabra. Tengo tanto orgullo de cada uno de ustedes, los miembros de People’s Action y People’s Action Institute, que vinieron de todo el país esta semana a Washington, DC, con tanta fuerza y belleza. Frente al Capitolio, tomamos la palabra para decir a los legisladores [&#8230;]
<p><a href="https://ourfuture.org/20250302/quieres-ser-organizadora" rel="nofollow">Source</a></p> 

<br> 

<https://ourfuture.org/20250302/quieres-ser-organizadora>

---

## Do You Want to Be an Organizer?

date: 2025-03-02, from: Our Future.org

People's Action shows up, stands up, and speaks out. I am so proud of you, every member of People’s Action and People’s Action Institute, for showing up together so powerfully this week in Washington, DC. Together, we stood on the steps of the Capitol and told lawmakers and the big corporations who think they own [&#8230;]
<p><a href="https://ourfuture.org/20250302/do-you-want-to-be-an-organizer" rel="nofollow">Source</a></p> 

<br> 

<https://ourfuture.org/20250302/do-you-want-to-be-an-organizer>

---

## The Economics of Left-Behind Regions

date: 2025-03-02, from: Paul Krugman

There are doom loops everywhere you look 

<br> 

<https://paulkrugman.substack.com/p/the-economics-of-left-behind-regions>

---

## Can a LLM convert C, to ASM to specs and then to a working Z/80 Speccy tape? Yes.

date: 2025-03-02, from: Geoffrey Hunntley's blog

<p><a href="https://bsky.app/profile/damieng.bsky.social/post/3ljdkwup7sc2d?ref=ghuntley.com">Damien Guard</a> nerd sniped me and other folks wanted more proof that it is now cheap, easy and possible to <a href="https://ghuntley.com/tradecraft/" rel="noreferrer">cheaply rewrite software or clone existing &quot;source available&quot; businesses</a> (see bottom of the post).</p><p>So, let&apos;s get cracking by creating a toy application by sending this</p> 

<br> 

<https://ghuntley.com/z80/>

---

## 'I LOVE THE UNEDUCATED'

date: 2025-03-02, from: Howard Jacobson blog

Donald Trump has signed an executive order designating English as the official language of the US. 

<br> 

<https://jacobsonh.substack.com/p/i-love-the-uneducated>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

Loss to 76ers provides graphic proof why Warriors paid Butler. 

<br> 

<https://sports.yahoo.com/article/loss-76ers-provides-graphic-proof-230448799.html>

---

## 18f.org

date: 2025-03-02, updated: 2025-03-02, from: Simon Willison’s Weblog

<p><strong><a href="https://18f.org/">18f.org</a></strong></p>
New site by members of 18F, the team within the US government that were doing some of the most effective work at improving government efficiency.</p>
<blockquote>
<p>For over 11 years, 18F has been proudly serving you to make government technology work better. We are non-partisan civil servants. 18F has worked on hundreds of projects, all designed to make government technology not just efficient but effective, and to save money for American taxpayers.</p>
<p>However, all employees at 18F – a group that the Trump Administration GSA Technology Transformation Services Director called "the gold standard" of civic tech – were terminated today at midnight ET.</p>
<p><strong>18F was doing exactly the type of work that DOGE claims to want – yet we were eliminated.</strong></p>
</blockquote>
<p>The entire team is now on "administrative leave" and locked out of their computers.</p>
<p>But these are not the kind of civil servants to abandon their mission without a fight:</p>
<blockquote>
<p><strong>We’re not done yet.</strong></p>
<p>We’re still absorbing what has happened. We’re wrestling with what it will mean for ourselves and our families, as well as the impact on our partners and the American people.</p>
<p>But we came to the government to fix things. And we’re not done with this work yet.</p>
<p>More to come.</p>
</blockquote>
<p>You can <a href="https://bsky.app/profile/team18f.bsky.social">follow @team18f.bsky.social</a> on Bluesky.


    <p>Tags: <a href="https://simonwillison.net/tags/government">government</a>, <a href="https://simonwillison.net/tags/political-hacking">political-hacking</a>, <a href="https://simonwillison.net/tags/politics">politics</a>, <a href="https://simonwillison.net/tags/bluesky">bluesky</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/2/18forg/#atom-everything>

---

## Plus Post: Centram TOPS Network

date: 2025-03-02, from: Computer ads from the Past

Can we talk? 

<br> 

<https://computeradsfromthepast.substack.com/p/plus-post-centram-tops-network>

---

## Hallucinations in code are the least dangerous form of LLM mistakes

date: 2025-03-02, updated: 2025-03-02, from: Simon Willison’s Weblog

<p>A surprisingly common complaint I see from developers who have tried using LLMs for code is that they encountered a hallucination - usually the LLM inventing a method or even a full software library that doesn't exist - and it crashed their confidence in LLMs as a tool for writing code. How could anyone productively use these things if they invent methods that don't exist?</p>
<p>Hallucinations in code <strong>are the least harmful hallucinations you can encounter from a model</strong>.</p>

<p>(When I talk about <em>hallucinations</em> here I mean instances where an LLM invents a completely untrue fact, or in this case outputs code references which don't exist at all. I see these as a separate issue from bugs and other mistakes, which are the topic of the rest of this post.)</p>

<p>The real risk from using LLMs for code is that they'll make mistakes that <em>aren't</em> instantly caught by the language compiler or interpreter. And these happen <em>all the time</em>!</p>

<p>The moment you run LLM generated code, any hallucinated methods will be instantly obvious: you'll get an error. You can fix that yourself or you can feed the error back into the LLM and watch it correct itself.</p>
<p>Compare this to hallucinations in regular prose, where you need a critical eye, strong intuitions and well developed fact checking skills to avoid sharing information that's incorrect and directly harmful to your reputation.</p>
<p>With code you get a powerful form of fact checking for free. Run the code, see if it works.</p>
<p>In some setups - <a href="https://simonwillison.net/tags/code-interpreter/">ChatGPT Code Interpreter</a>, <a href="https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview">Claude Code</a>, any of the growing number of "agentic" code systems that write and then execute code in a loop - the LLM system itself will spot the error and automatically correct itself.</p>
<p>If you're using an LLM to write code without even running it yourself, <em>what are you doing?</em></p>
<p>Hallucinated methods are such a tiny roadblock that when people complain about them I assume they've spent minimal time learning how to effectively use these systems - they dropped them at the first hurdle.</p>
<p>My cynical side suspects they may have been looking for a reason to dismiss the technology and jumped at the first one they found.</p>
<p>My less cynical side assumes that nobody ever warned them that you have to put a lot of work in to learn how to get good results out of these systems. I've been exploring <a href="https://simonwillison.net/tags/ai-assisted-programming/">their applications for writing code</a> for over two years now and I'm still learning new tricks (and new strengths and weaknesses) almost every day.</p>

<h4 id="qa">Manually testing code is essential</h4>

<p>Just because code looks good and runs without errors doesn't mean it's actually doing the right thing. No amount of meticulous code review - or even comprehensive automated tests - will demonstrably prove that code actually does the right thing. You have to run it yourself!</p>
<p>Proving to yourself that the code works is your job. This is one of the many reasons I don't think LLMs are going to put software professionals out of work.</p>
<p>LLM code will usually look fantastic: good variable names, convincing comments, clear type annotations and a logical structure. This can lull you into a false sense of security, in the same way that a gramatically correct and confident answer from ChatGPT might tempt you to skip fact checking or applying a skeptical eye.</p>
<p>The way to avoid <em>those</em> problems is the same as how you avoid problems in code by other humans that you are reviewing, or code that you've written yourself: you need to actively exercise that code. You need to have great manual QA skills.</p>
<p>A general rule for programming is that you should <em>never</em> trust any piece of code until you've seen it work with your own eye - or, even better, seen it fail and then fixed it.</p>
<p>Across my entire career, almost every time I've assumed some code works without actively executing it - some branch condition that rarely gets hit, or an error message that I don't expect to occur - I've later come to regret that assumption.</p>

<h4 id="tips">Tips for reducing hallucinations</h4>
<p>If you really are seeing a deluge of hallucinated details in the code LLMs are producing for you, there are a bunch of things you can do about it.</p>
<ul>
<li>Try different models. It might be that another model has better training data for your chosen platform. As a Python and JavaScript programmer my favorite models right now are Claude 3.7 Sonnet with thinking turned on, OpenAI's o3-mini-high and GPT-4o with Code Interpreter (for Python).</li>
<li>Learn how to use the context. If an LLM doesn't know a particular library you can often fix this by dumping in a few dozen lines of example code. LLMs are incredibly good at imitating things, and at rapidly picking up patterns from very limited examples. Modern model's have increasingly large context windows - I've recently started using Claude's new <a href="https://support.anthropic.com/en/articles/10167454-using-the-github-integration">GitHub integration</a> to dump entire repositories into the context and it's been working extremely well for me.</li>
<li>Chose <a href="https://boringtechnology.club/">boring technology</a>. I genuinely find myself picking libraries that have been around for a while partly because that way it's much more likely that LLMs will be able to use them.</li>
</ul>
<p>I'll finish this rant with a related observation: I keep seeing people say "if I have to review every line of code an LLM writes, it would have been faster to write it myself!"</p>
<p>Those people are loudly declaring that they have under-invested in the crucial skills of reading, understanding and reviewing code written by other people. I suggest getting some more practice in. Reviewing code written for you by LLMs is a great way to do that.</p>

<hr />

<p><em>Bonus section</em>: I asked Claude 3.7 Sonnet "extended thinking mode" to review an earlier draft of this post - "<code>Review my rant of a blog entry. I want to know if the argument is convincing, small changes I can make to improve it, if there are things I've missed.</code>". It was quite helpful, especially in providing tips to make that first draft a little less confrontational! Since you can share Claude chats now <a href="https://claude.ai/share/685cd6d9-f18a-47ef-ae42-e9815df821f1">here's that transcript</a>.</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/boring-technology">boring-technology</a>, <a href="https://simonwillison.net/tags/code-interpreter">code-interpreter</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/2/hallucinations-in-code/#atom-everything>

---

**@Feed for Alt USDS** (date: 2025-03-02, from: Feed for Alt USDS)

💔💔💔

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljercbhqy22v>

---

**@Robert's feed at BlueSky** (date: 2025-03-02, from: Robert's feed at BlueSky)

20 years went by quickly.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3ljeopvwiyc2z>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

One of the Grimmest Days in American Diplomacy. 

<br> 

<https://www.theatlantic.com/ideas/archive/2025/02/ukraine-us-relations-trump/681880/?gift=f35zZN0v_gDFE8xNwlQAHeTYjwxXW5BWaruPT1MU64A&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

**@Dave Winer's linkblog** (date: 2025-03-02, from: Dave Winer's linkblog)

Protestors Ambush Vance During Vermont Ski Weekend: ‘Go Ski in Russia.’ 

<br> 

<https://www.thedailybeast.com/protestors-ambush-vance-during-vermont-ski-weekend-go-ski-in-russia/?via=twitter_page>

---

## My name is

date: 2025-03-01, from: Rachel Kwon blog

What&rsquo;s in a name? Lots of things.
Primary name Most people call me Rachel. A certain subset of friends from a certain time in my life call me Kwon. I&rsquo;ll respond to either.
Professional name My coworkers call me Rachel. From 2010-2016, a lot of people called me Dr. Kwon. Infrequently these days, some people in certain contexts still try to call me Dr. Kwon, or ask me if I want to be called Dr. 

<br> 

<https://kwon.nyc/notes/my-name-is/>

---

**@Dave Winer's linkblog** (date: 2025-03-01, from: Dave Winer's linkblog)

Former Gov. Cuomo announces run for New York City mayor, aiming for a political comeback. 

<br> 

<https://www.pbs.org/newshour/politics/former-gov-cuomo-announces-run-for-new-york-city-mayor-aiming-for-a-political-comeback>

---

**@Dave Winer's linkblog** (date: 2025-03-01, from: Dave Winer's linkblog)

How Knicks&#39; Mitchell Robinson and Karl-Anthony Towns will look playing together. 

<br> 

<https://sports.yahoo.com/article/knicks-mitchell-robinson-karl-anthony-160017703.html>

---

**@Feed for Alt USDS** (date: 2025-03-01, from: Feed for Alt USDS)

Sad to share the news that our colleagues at 18F were illegally fired overnight (emails coming in around 1am Sat.). About 90 people. 

18Fers are technologists, like USDSers, and often would be co-deployed or work across different parts of the same agency.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljdmyz35ss2c>

---

**@Feed for Alt USDS** (date: 2025-03-01, from: Feed for Alt USDS)

We're joining in, get into some good trouble this weekend folks!

In honor of Elon’s new 5 bullet points e-mail, drop a bullet point of an act of resistance or where you found joy this week 👇👇 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljdjfuek622g>

---

**@Feed for Alt USDS** (date: 2025-03-01, from: Feed for Alt USDS)

🚨 Reminder!! You do not report to OPM!

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljdj4ngdpc2g>

---

## Technical English is nobody's mother tongue

date: 2025-03-01, from: Blog by Fabrizio Ferri-Benedetti

<p>The part of my brain that rages against injustice stirs like a slumbering dragon when I read the words “Native English”. As a speaker of English as a second language, I find <em>native</em> to be a rather inadequate, if lazy, choice as an attribute meant to describe linguistic proficiency. You&rsquo;re born with eyes, but that doesn&rsquo;t automatically make you a competent watcher; you acquire a language, but that doesn&rsquo;t automatically turn you into a competent writer.</p> 

<br> 

<https://passo.uno/native-english-tech-writing/>

---

**@Dave Winer's linkblog** (date: 2025-03-01, from: Dave Winer's linkblog)

VP Vance is on vacation in Vermont with his family this weekend and will be skiing at Sugarbush Resort in Warren, VT. 

<br> 

<https://kottke.org/25/03/jd-vance-chastised-by-vermont-snow-reporter>

---

## Mission Drift

date: 2025-03-01, updated: 2025-03-01, from: Tedium site

If a company or service you rely on changes owners, you can’t be guaranteed that its mission will match what you’ve come to expect—even if, at least initially, it seems like everything’s on track. Hence why I returned a new messenger bag. 

<br> 

<https://feed.tedium.co/link/15204/16973645/chrome-messenger-bag-corporate-mission-drift>

---

## The Dude Whose Brain Turned to Glass

date: 2025-03-01, from: 404 Media Group

He was hanging out in an ancient Roman port town 2,000 years ago, when something struck him (a deadly volcanic eruption).  

<br> 

<https://www.404media.co/the-dude-whose-brain-turned-to-glass/>

---

**@Dave Winer's linkblog** (date: 2025-03-01, from: Dave Winer's linkblog)

Heather Cox Richardson: “Today, President Donald Trump ambushed Ukraine president Volodymyr Zelensky in an attack that seemed designed to give the White House an excuse for siding with Russia in its war on Ukraine.” 

<br> 

<https://heathercoxrichardson.substack.com/p/february-28-2025?publication_id=20533&post_id=158160559&isFreemail=true&r=w33x&triedRedirect=true>

---

## Musk In Your Computers: An Interview With Nathan Tankus

date: 2025-03-01, from: Paul Krugman

On risks to democracy nobody even thought about 

<br> 

<https://paulkrugman.substack.com/p/musk-in-your-computers-an-interview>

---

## Yes, Claude Code can decompile itself. Here's the source code.

date: 2025-03-01, from: Geoffrey Hunntley's blog

<p>These LLMs are shockingly good at deobfuscation, transpilation and structure to structure conversions. I discovered this back around Christmas where I asked an LLM to make me an Haskell audio library by transpiling a rust implementation.</p><figure class="kg-card kg-bookmark-card"><a class="kg-bookmark-container" href="https://ghuntley.com/oh-fuck/"><div class="kg-bookmark-content"><div class="kg-bookmark-title">An &#x201C;oh fuck&#x201D; moment in time</div><div class="kg-bookmark-description">Over the Christmas break I&#x2019;</div></div></a></figure> 

<br> 

<https://ghuntley.com/tradecraft/>

---

**@Tomosino's Mastodon feed** (date: 2025-03-01, from: Tomosino's Mastodon feed)

<p>Found it!!</p> 

<br> 

<https://tilde.zone/@tomasino/114086217064264591>

---

**@Tomosino's Mastodon feed** (date: 2025-03-01, from: Tomosino's Mastodon feed)

<p>glitch apparently has a setting somewhere. i just can't find it</p> 

<br> 

<https://tilde.zone/@tomasino/114086194929738622>

---

**@Tomosino's Mastodon feed** (date: 2025-03-01, from: Tomosino's Mastodon feed)

<p>I'm testing if my current settings let me post a pic without alt text. If this doesn't work, the picture is of a lovely dog sitting on a bench. He had friendly tail wags for me.</p> 

<br> 

<https://tilde.zone/@tomasino/114086127475598085>

---

**@Tomosino's Mastodon feed** (date: 2025-03-01, from: Tomosino's Mastodon feed)

<p>Over on bluesky I just learned they have a feature to not allow yourself to post images without alt text. That's pretty handy. Before I start scouring my settings panel here, anyone know if we have something similar? I'm running glitch here, so maybe an extra?</p> 

<br> 

<https://tilde.zone/@tomasino/114086045853029398>

---

## Summary of changes for February 2025

date: 2025-03-01, from: Hundred Rabbits blog

<p>Hey everyone!</p><p>This is the list of all the changes we've done to our projects during the month of February.</p>

<img src="../media/content/videos/february_2025.jpg" alt="little ninj, a plus ninja, is riding a wave made up of rabbits while shouting: 9 years!" loading="lazy">

<h2>Summary Of Changes</h2>

<ul>
  <li><b>100r.co</b>, added <a href="https://100r.co/site/teapot_gelcoat.html">Dinghy gelcoat</a>, <a href='https://100r.co/site/victoria_to_sitka_logbook.html#week10'>Week 10</a>, <a href='https://100r.co/site/victoria_to_sitka_logbook.html#week11'>Week 11</a>, and <a href='https://100r.co/site/victoria_to_sitka_logbook.html#week12'>Week 12</a> of the <a href="https://100r.co/site/victoria_to_sitka.html">Victoria to Sitka logbook</a>. Updated <a href="https://100r.co/site/solar.html">solar</a> with new pictures and corrected information (this page used to be called solar tips).</li>
  <li><b><a href="https://wiki.xxiivv.com/site/nebu" target="_blank">Nebu</a></b>, released a spreadsheet editor.</li>
  <li><b><a href="https://100r.co/site/grimgrains.html">Grimgrains</a></b>, added a new recipe: <a href="https://grimgrains.com/site/stovetop_zaatar_pizza.html" target="_blank">Stovetop zaatar pizza</a>.</li>
  <li><b><a href="https://100r.co/site/store.html">Store</a></b>, added maritime <a href="https://100r.co/site/flag_stickers.html">flag stickers</a> for sale.</li>
  <li><b><a href="https://100r.co/site/rabbit_waves.html">Rabbit Waves</a></b>, added a new page: <a href="https://rabbitwaves.ca/site/emergency_bag.html">Emergency Bag</a>. Updated <a href="https://rabbitwaves.ca/site/morse_flags.html" target="_blank">Morse Code with Flags</a> page with animations, released a printable <a href="https://rabbitwaves.ca/media/zines/communication.png" target="_blank">zine</a>(see <a href="https://kokorobot.ca/site/folding_zine.html" target="_blank">how to fold</a> a zine).</li>
</ul>

<p>On February 14th, we celebrated our 9th year living aboard our beloved <a href="https://100r.co/site/pino.html">Pino</a>. Read a <a href="https://wiki.xxiivv.com/site/fitness" target="_blank">short text</a> by Devine, which expands on what it means to truly be a generalist.</p>

<p>Despite the weather being less-than-ideal, we were able to <a href="https://rabbits.srht.site/days/2025/02/20.html" target="_blank">install</a> our replacement solar panels, and revisit our notes on <a href="https://100r.co/site/solar.html">solar installations</a>.</p>

<p>Devine completed <a href="https://wiki.xxiivv.com/site/nebu" target="_blank">Nebu</a>, a spritesheet editor as well as a <a href="https://wiki.xxiivv.com/media/generic/calendar.png" target="_blank">desktop calendar</a>, alongside many other little <a href="https://wiki.xxiivv.com/site/utilities.html" target="_blank">desktop utilities</a>. Nebu is just over 8.3 kB, a bit less than a blank excel file.</p>

<p>In times of increasing climate and political instability, it is a good time to get together with your community and make plans for emergencies. Consider reading <a href="https://archive.org/details/disaster-preparedness-tokyo" target="_blank">Tokyo Bosai</a> about disaster preparedness, this elaborate document deals with disasters that occur specifically in Japan, but many of the recommendations are useful regardless. We released a new page on {rabbit waves} with suggestions on what to pack in an <a href="https://rabbitwaves.ca/site/emergency_bag.html">Emergency Bag</a>. Remember, every emergency bag is different, and what is essential varies per person.</p>

<p>We also put together a print-it-yourself zine, which combines useful information about <a href="https://rabbitwaves.ca/site/morse.html" target="_blank">Morse Code and <a href="https://rabbitwaves.ca/site/flags_maritime.html" target="_blank">Signal Flags</a>. If you have printed the zine and don't know how to fold it, see Rek's <a href="https://kokorobot.ca/site/folding_zine.html" target="_blank">illustrated instructions</a>. Speaking of signal flags, we printed <a href="https://100r.co/site/flag_stickers.html" target="_blank">stickers</a> of Rek's ICS flag drawings.</p>

<p>The nice weather finally arrived this week and we were able to redo Teapot's <a href="https://100r.co/site/teapot_gelcoat.html">gelcoat</a>. This was our first time working with gelcoat, our friends Rik & Kay, who lent us their workspace, were very patient and generous teachers. We will continue the project later when the gelcoat has cured.</p>

<p><b>Book Club:</b> This month we are reading <i>The Goldfinch</i> by Donna Tartt.</p>

<p><a href='https://100r.co/site/log.html#feb2025' target='_blank'>Continue Reading</a></p> 

<br> 

<https://100r.co/site/log.html#feb2025>

---

**@Tomosino's Mastodon feed** (date: 2025-03-01, from: Tomosino's Mastodon feed)

<p>When I was a kid there were concepts that seemed pretty big and scary: the Bermuda Triangle, spontaneous human combustion, quicksand, subliminal messaging, killer bees, and cryptids.</p><p>Simpler times</p> 

<br> 

<https://tilde.zone/@tomasino/114085655497122124>

---

## OpenAI, in deep trouble

date: 2025-03-01, from: Gary Marcus blog

Maybe burning money isn&#8217;t the answer 

<br> 

<https://garymarcus.substack.com/p/openai-in-deep-trouble>

---

## llm-anthropic #24: Use new URL parameter to send attachments

date: 2025-03-01, updated: 2025-03-01, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/simonw/llm-anthropic/issues/24">llm-anthropic #24: Use new URL parameter to send attachments</a></strong></p>
Anthropic released a neat quality of life improvement today. <a href="https://twitter.com/alexalbert__/status/1895504248206709246">Alex Albert</a>:</p>
<blockquote>
<p>We've added the ability to specify a public facing URL as the source for an image / document block in the Anthropic API</p>
</blockquote>
<p>Prior to this, any time you wanted to send an image to the Claude API you needed to base64-encode it and then include that data in the JSON. This got pretty bulky, especially in conversation scenarios where the same image data needs to get passed in every follow-up prompt.</p>
<p>I implemented this for <a href="https://github.com/simonw/llm-anthropic">llm-anthropic</a> and shipped it just now in version 0.15.1 (here's <a href="https://github.com/simonw/llm-anthropic/commit/ac4fe809aff9842b05118e83c256690b92b49c4c">the commit</a>) - I went with a patch release version number bump because this is effectively a performance optimization which doesn't provide any new features, previously LLM would accept URLs just fine and would download and then base64 them behind the scenes.</p>
<p>In testing this out I had a <em>really</em> impressive result from Claude 3.7 Sonnet. I found <a href="https://chroniclingamerica.loc.gov/lccn/sn86086481/1900-01-29/ed-1/seq-2/#date1=1756&amp;index=10&amp;rows=20&amp;words=PELICAN+Pelican+Pelicans+PELICANS&amp;searchType=basic&amp;sequence=0&amp;state=&amp;date2=1922&amp;proxtext=pelicans&amp;y=0&amp;x=0&amp;dateFilterType=yearRange&amp;page=1">a newspaper page</a> from 1900 on the Library of Congress (the "Worcester spy.") and fed a URL to the PDF into Sonnet like this:</p>
<pre><code>llm -m claude-3.7-sonnet \
  -a 'https://tile.loc.gov/storage-services/service/ndnp/mb/batch_mb_gaia_ver02/data/sn86086481/0051717161A/1900012901/0296.pdf' \
'transcribe all text from this image, formatted as markdown'
</code></pre>
<p><img alt="Screenshot of the PDF - it has many dense columns" src="https://static.simonwillison.net/static/2025/newspaper-page.jpg" /></p>
<p>I haven't checked every sentence but it appears to have done <a href="https://gist.github.com/simonw/df1a0473e122830d55a0a3abb51384c9">an excellent job</a>, at a cost of 16 cents.</p>
<p>As another experiment, I tried running that against my example <code>people</code> template from the schemas feature I released <a href="https://simonwillison.net/2025/Feb/28/llm-schemas/">this morning</a>:</p>
<pre><code>llm -m claude-3.7-sonnet \
  -a 'https://tile.loc.gov/storage-services/service/ndnp/mb/batch_mb_gaia_ver02/data/sn86086481/0051717161A/1900012901/0296.pdf' \
  -t people
</code></pre>
<p>That only gave me <a href="https://github.com/simonw/llm-anthropic/issues/24#issuecomment-2691773883">two results</a> - so I tried an alternative approach where I looped the OCR text back through the same template, using <code>llm logs --cid</code> with the logged conversation ID and <code>-r</code> to extract just the raw response from the logs:</p>
<pre><code>llm logs --cid 01jn7h45x2dafa34zk30z7ayfy -r | \
  llm -t people -m claude-3.7-sonnet
</code></pre>
<p>... and that worked fantastically well! The result started like this:</p>
<div class="highlight highlight-source-json"><pre>{
  <span class="pl-ent">"items"</span>: [
    {
      <span class="pl-ent">"name"</span>: <span class="pl-s"><span class="pl-pds">"</span>Capt. W. R. Abercrombie<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"organization"</span>: <span class="pl-s"><span class="pl-pds">"</span>United States Army<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"role"</span>: <span class="pl-s"><span class="pl-pds">"</span>Commander of Copper River exploring expedition<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"learned"</span>: <span class="pl-s"><span class="pl-pds">"</span>Reported on the horrors along the Copper River in Alaska, including starvation, scurvy, and mental illness affecting 70% of people. He was tasked with laying out a trans-Alaskan military route and assessing resources.<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"article_headline"</span>: <span class="pl-s"><span class="pl-pds">"</span>MUCH SUFFERING<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"article_date"</span>: <span class="pl-s"><span class="pl-pds">"</span>1900-01-28<span class="pl-pds">"</span></span>
    },
    {
      <span class="pl-ent">"name"</span>: <span class="pl-s"><span class="pl-pds">"</span>Edward Gillette<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"organization"</span>: <span class="pl-s"><span class="pl-pds">"</span>Copper River expedition<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"role"</span>: <span class="pl-s"><span class="pl-pds">"</span>Member of the expedition<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"learned"</span>: <span class="pl-s"><span class="pl-pds">"</span>Contributed a chapter to Abercrombie's report on the feasibility of establishing a railroad route up the Copper River valley, comparing it favorably to the Seattle to Skaguay route.<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"article_headline"</span>: <span class="pl-s"><span class="pl-pds">"</span>MUCH SUFFERING<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"article_date"</span>: <span class="pl-s"><span class="pl-pds">"</span>1900-01-28<span class="pl-pds">"</span></span>
    }</pre></div>

<p><a href="https://github.com/simonw/llm-anthropic/issues/24#issuecomment-2691773883">Full response here</a>.


    <p>Tags: <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/1/llm-anthropic/#atom-everything>

---

**@Feed for Alt USDS** (date: 2025-03-01, from: Feed for Alt USDS)

"I fought for this country. Then I fought for public health. Now, I’ve been terminated without cause—with others who helped fight COVID-19." 

Fewer experts tracking outbreaks = more risk for everyone. 

🔗 https://www.wethebuilders.org/posts/i-monitored-infectious-diseases-at-the-cdc

#TechForGood #SaveOurServices #altgov #publichealth 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ljbnisc2es2w>

---

## Rewriting my site in vanilla web

date: 2025-03-01, from: Lean Rada's blog


<p>I rewrote this website in vanilla HTML/CSS/JS. Here’s the story.</p>

<h2>But why?</h2>

<p>Over the years, I’ve used a bunch of libraries &amp; frameworks to build <a href="https://leanrada.com/wares/personal-website?ref=rss">this website</a>, before finally making my own static site generator that I called <a href="https://github.com/Kalabasa/compose-html" target="_blank"><code>compose-html</code></a>. As the name suggests, it composes HTML files together, very much like <a href="https://astro.build/" target="_blank">Astro</a>.</p>

<figure>
  <img src="https://leanrada.com/notes/vanilla-web-rewrite/compose-html.png?ref=rss" alt="screenshot of compose-html README">
  <figcaption>compose-html’s README</figcaption>
</figure>

<p>I like systems that have a small set of tight abstractions that are easy to understand. I’m not a fan of rigid, non-atomic concepts like “pages” and “layouts”, “themes”, “frontmatters” — I mean, these are just ‘components’ and ‘data’! I dislike those that dictate your project directory structure and coding style.</p>

<figure>
  <img src="https://leanrada.com/notes/vanilla-web-rewrite/project-structure-docs.png?ref=rss" alt="screenshot of a framework’s documentation">
  <figcaption>If your documentation has a ‘Project structure’ section, I’m out!</figcaption>
</figure>

<p>So I built my own simple site builder and that was nice BUT it didn’t end up making life easier. The real world is messy, and HTML more so. Simply composing pieces of HTML together isn’t that straightforward and the abstraction leaked. My <code>compose-html</code> framework eventually turned into a 2k LoC that was more liability than freedom. Though it served me very well, it was a dead end.</p>

<h2>Maybe nothing can solve my problem…</h2>

<p>As in, literally nothing. No framework. No build steps.</p>

<p>What if HTML wasn’t a render target, but was both the authoring and publishing medium?</p>

<p>What if I rewrote my site in vanilla HTML/CSS/JS? A crazy idea infiltrated my conciousness.</p>

<h2>Is it feasible?</h2>

<p>A common reason for adding complexity is to avoid repetitive work like copying headers &amp; footers to every page. So we have PHP, Handlebars, Next.JS.</p>

<p>Modern HTML/JS now has <a href="https://developer.mozilla.org/en-US/docs/Web/API/Web_components" target="_blank"><strong>Web Components</strong></a>, custom elements which could be used to encapsulate repetitive sections! <small>This was already possible without Web Components, but it makes it nicer.</small></p>

<p>One could go write HTML like this:</p>

<pre><code>&lt;!doctype html&gt;
&lt;site-header&gt;&lt;/site-header&gt;
&lt;main&gt;
  My page's content
&lt;/main&gt;
&lt;site-footer&gt;&lt;/site-footer&gt;</code></pre>
<box-note><strong>What about the repetitive &lt;html&gt;, &lt;head&gt;, and &lt;body&gt; tags?</strong> Fortunately, web browsers and the HTML spec itself are lenient. These tags are <a href="https://html.spec.whatwg.org/#optional-tags" target="_blank">actually optional</a>!</box-note>
<p>One would still need to manually copy and paste some common tags like the <code>&lt;script&gt;</code> to load the custom elements, and maybe a <code>common.css</code> file and a few meta tags. But I’d say it’s a similar level of boilerplate as some other frameworks, if not a bit un-DRY.</p>
<box-note><strong>What about people who disable JS?</strong> No problem. They would still see the main content itself, just not the navigational headers &amp; footers. I presume these people would be savvy enough to navigate by URL.</box-note>
<p>Another reason to use a generator is to generate data-driven content, especially for blog sites which usually have a blog index page with autogenerated collections of posts.</p>

<figure>
  <img src="https://leanrada.com/notes/vanilla-web-rewrite/blog-list.png?ref=rss" alt="screenshot of a blog post list">
  <figcaption>A chronological list of posts.</figcaption>
</figure>

<p>I don’t want to hand-code lists of posts. Especially since a slice of the latest posts is mirrored in the homepage. As I said, the real world is messy, and there is not one absolute dogma that can solve it all. A bit of automation is perfectly fine whenever needed! Just there’s no need to build-systemify the entire site.</p>

<p>With these concerns out of the way, the rewrite was looking more feasible.</p>

<h2>My approach</h2>

<p>To make sense of the rewrite and keep the site maintainable going forward, I decided to follow these principles:</p>

<ol>
  <li>Semantic HTML</li>
  <li>TAC CSS methodology</li>
  <li>
    Web Components with Light DOM
  </li>
</ol>

<h3>1. Semantic HTML</h3>

<p>Basically means using semantic tags instead of generic <code>div</code>s and <code>span</code>s</p>

<p>One example is the <a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/time" target="_blank"><code>time</code></a> tag that I used to indicate post date.</p>

<pre><code>&lt;time datetime="2025-02-26"&gt;26 Feb 2025&lt;/time&gt;</code></pre>

<p>Along the usual benefits of semantic HTML, the variety of tags will come in handy in this very rewrite, which will become obvious in the next point.</p>

<h3>2. TAC methodology</h3>

<p><a href="https://jordanbrennan.hashnode.dev/tac-a-new-css-methodology" target="_blank">TAC methodology</a> is a modern CSS approach takes advantage of the modern web.</p>

<p>The main takeaway is that we should make up <strong>new tags</strong> instead of divs-with-classes to represent conceptual components. For example:</p>

<pre><code>&lt;blog-post-info hidden&gt;
  &lt;time datetime="2025-02-26"&gt;26 Feb 2025&lt;/time&gt;
  · 1 min read
&lt;/blog-post-info&gt;</code></pre>


Contrast that with, let’s say, <a href="https://getbem.com/" target="_blank">BEM methodology</a>:


<pre><code>&lt;div class="blog-post-info blog-post-info_hidden"&gt;
  &lt;time class="blog-post-info__date" datetime="2025-02-26"&gt;
    26 Feb 2025
  &lt;/time&gt;
  · 1 min read
&lt;/div&gt;</code></pre>


By making up a new tag called <code>blog-post-info</code>, the styling of these elements could easily use <strong>tag</strong> and <strong>attribute</strong> selectors (the T and A of TAC!) without the need for classes! The markup is leaner, and the CSS even looks modular when taking advantage of modern CSS nesting:


<pre><code>blog-post-info {
  display: block; /* note: made-up tags default to `inline` */
  color: #fff;

  &amp;[hidden] {
    display: none;
  }

  /* semantic HTML helps narrow the element to select */
  &gt; time {
    color: #ccc;
    font-weight: bold
  }
}</code></pre>

<p>While TAC was called a CSS methodology by the authors, it influences Web Component philosophy as well, into the next point.</p>

<h3>3. Web Components with light DOM</h3>

<p>I’ve always found the <a href="https://developer.mozilla.org/en-US/docs/Web/API/Web_components" target="_blank">Web Component</a> abstraction to be a bit heavy. You have the Shadow DOM, encapsulation modes (?), slots, templates, and many more related concepts. Now, some of those are pretty useful like slots and templates (which aren’t exclusive to Web Components). But overall, Web Components feel a bit clunky.</p>

<p>The <a href="https://meyerweb.com/eric/thoughts/2023/11/01/blinded-by-the-light-dom/" target="_blank">‘light DOM’</a> approach does away with all of that. Like the example above:</p>

<pre><code>&lt;blog-post-info hidden&gt;
  &lt;time datetime="2025-02-26"&gt;26 Feb 2025&lt;/time&gt;
  · 1 min read
&lt;/blog-post-info&gt;</code></pre>

<p>If implemented with shadow DOM, it could’ve look like this:</p>

<pre><code>&lt;blog-post-info datetime="2025-02-26" minread="1"&gt;&lt;/blog-post-info&gt;
&lt;!-- or maybe --&gt;
&lt;blog-post-info datetime="2025-02-26"&gt;
  1 min read
&lt;/blog-post-info&gt;</code></pre>

<p>The light DOM aligns with the TAC methodology, so it’s a good match.</p>

<p>I admit scoped styles and slots are neat, but there aren’t essential (see TAC) and there are workarounds to slots. <strong>I’m not making a modular design system after all.</strong></p>

<p>Using the light DOM also provides a smoother transition from plain JS style to Web Components. Relevant, as I was converting some old JS code. Imagine the following common pattern:</p>

<pre><code>for (const blogPostInfo of document.querySelectorAll(".blog-post-info")) {
  const time = blogPostInfo.querySelector("time");
  // ... initialisation code
}</code></pre>


This pattern maps neatly to Web Component style:


<pre><code>customElements.define(
  "blog-post-info",
  class BlogPostInfo extends HTMLElement {
    connectedCallback() {
      const time = this.querySelector("time");
      // ... initialisation code
    }
  }
);</code></pre>

<p>The mapping was straightforward enough that I was able to partially automate the conversion via <a href="https://en.wikipedia.org/wiki/GitHub_Copilot" target="_blank">LLM</a>.</p>

<p>While I’m not really making the most out of Web Components technology, I don’t actually need the extra features. I have a confession — I set <code>this.innerHTML</code> directly within a Web Component, and it’s so much simpler than setting up <code>template</code>s. I do try to sanitize.</p>

<p>Details aside, these principles made the whole rewrite easier because it reduced the amount of actual refactoring. I wasn’t able to particularly follow them to the letter, especially for nasty old code. But for future code, I hope to keep using these techniques.</p>

<h2>A brief premature retrospective</h2>

<p><strong>Pros:</strong></p>

<ul>
  <li>Instant feedback loop. Zero build time.</li>
  <li>No bugs out of my control. <small>It’s what turned me off <a href="https://www.11ty.dev/" target="_blank">Eleventy</a>.</small></li>
  <li>No limitations imposed by framework or paradigm.</li>
</ul>

<p><strong>Cons:</strong></p>

<ul>
  <li>Big common files, <code>common.js</code> and <code>common.css</code>, ‘cause no bundler.</li>
  <li>Verbose. No shortcuts, e.g. anchor tag — compare markdown links.</li>
  <li>Frequent copy pasting.</li>
  <li>Harder to redesign the site now.</li>
</ul>

<p>I’m fine with a little bit of verbosity. For contrast, I wrote the <a href="https://leanrada.com/htmz/" target="_blank">htmz page</a> manually in plain HTML, <em>including the syntax-highlighted code snippets!</em></p>

<figure>
  <img src="https://leanrada.com/notes/vanilla-web-rewrite/htmz-page-code.png?ref=rss" alt="source code of htmz page">
  <figcaption>Have you ever tried manual syntax highlighting?</figcaption>
</figure>

<p>But not this time, I added the <a href="https://prismjs.com/" target="_blank">Prism.js</a> library to automate syntax highlighting.</p>

<h2>Tips &amp; tricks</h2>

<p><strong>AI —</strong> I used LLMs to help me convert a bunch of pages into the new style. What I did was give it an example of an old page and the converted version (manually converted by me), and then it gave me a converter script that I tweaked and ran through most of the pages. I did the same to convert components and it was a breeze. The converted script was iteratively improved upon and made more robust by me and the LLM via examples of incorrect conversions and corrected versions. I guess the trick was to give it more examples instead of more elaborate instructions.</p>

<pre><code>// this snippet from the AI-assisted converter script
// converts &lt;blog-post-info&gt; elements
input("blog-post-info").each((i, el) =&gt; {
  const tag = input(el);
  const hidden = tag.attr("hidden") != null;
  const date = tag.attr("date");
  const readMins = tag.attr("read-mins");

  let out = `&lt;blog-post-info${hidden ? " hidden" : ""}&gt;\n`;
  const dateDate = new Date(date);
  const yyyy = dateDate.getFullYear();
  const mm = (dateDate.getMonth() + 1).toString().padStart(2, "0");
  const dd = dateDate.getDate().toString().padStart(2, "0");
  out += `  &lt;time datetime="${yyyy}-${mm}-${dd}"&gt;${date}&lt;/time&gt;\n`;
  out += `  · ${readMins} min read\n`;
  out += `&lt;/blog-post-info&gt;`;
  tag.remove();
  main.before(out + "\n\n");
});</code></pre>

<p><strong>Autoload —</strong> I added client-side JS that searched for custom tags and loaded the appropriate script files when those tags enter the viewport. In short, <em>lazy loading components</em>. I did have to impose a rigid file structure, because whenever it encounters a tag it would try to <code>import(`/components/${tagName}.js`)</code> — all my autoloaded components had to be in that flat directory. Am I a hypocrite? No, I can change that rule anytime.</p>

<pre><code>// autoloads components in the viewport
new IntersectionObserver((entries) =&gt; {
  for (const entry of entries) {
    if (entry.isIntersecting) {
      if (components.has(entry.target.tagName)) {
        import(`/components/${entry.target.tagName}.js`);
        components.delete(entry.target.tagName);
      }
      intersectionObserver.unobserve(entry.target);
    }
  }
});</code></pre>

<p><strong>This is not an exercise in purity —</strong> This is a real website, a personal one at that. This is not a pure HTML proof-of-concept. Not a TAC role model. Not a Web Component masterpiece. I would add inline JS whenever it’s more convenient, break encapsulation if necessary, use classes instead of pure tag selectors. Don’t let the ideal pure plain static TAC+WebComponent vanilla HTML+CSS get in the way of finishing the project. In other words, pragmatism over principles.</p>

<h2>Homepage redesign</h2>

<p>I couldn’t resist the temptation to not just port, but redesign the site (at least, the homepage).</p>
<prose-bleed>
  <img src="https://leanrada.com/notes/vanilla-web-rewrite/homepage-sections.png?ref=rss" alt="screenshot of sections">
</prose-bleed>
<p>The homepage sections are now more dense, more desktop-equal (not mobile-first), and the bento section has been revamped!</p>

<figure>
  <prose-bleed>
    <img src="https://leanrada.com/notes/vanilla-web-rewrite/homepage-bento.png?ref=rss" alt="screenshot of bento section">
  </prose-bleed>
  <figcaption>See also, autoupdating note count, project count, GitHub stats, and hit counter. Sprinkles of automation, no build system required!</figcaption>
</figure>

<p>I’ll probably add a live Spotify card in there somewhere.</p>
<hr><prose-bleed>
  <img src="https://leanrada.com/notes/vanilla-web-rewrite/diff.png?ref=rss" alt="1536 changed files, 25511 additions, 19076 deletions.">
</prose-bleed>
<p>That’s about it! The whole site rewrite went smoother and quicker than expected! And I’m quite liking the raw authoring experience. Now, how long will this new paradigm hold up? 😏</p>

<img src="https://leanrada.com/notes/vanilla-web-rewrite/notebook.jpg?ref=rss" alt="notebook">
 

<br> 

<https://leanrada.com/notes/vanilla-web-rewrite/?ref=rss>

