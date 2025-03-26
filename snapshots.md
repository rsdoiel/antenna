---
title: snapshots
updated: 2025-03-26 06:08:17
---

# snapshots

(date: 2025-03-26 06:08:17)

---

## Podcast: The DNA of 15 Million People Is For Sale

date: 2025-03-26, from: 404 Media Group

What the 23andMe bankruptcy means for privacy; the website doxing Tesla owners; and that crazy Signal group chat story. 

<br> 

<https://www.404media.co/podcast-the-dna-of-15-million-people-is-for-sale/>

---

**@Dave Winer's linkblog** (date: 2025-03-26, from: Dave Winer's linkblog)

Patronage Is a Lucrative Way to Attack Rule of Law. 

<br> 

<https://www.emptywheel.net/2025/03/26/patronage-is-a-lucrative-way-to-attack-rule-of-law/>

---

## Los Angeles to Shanghai, by Way of San Francisco

date: 2025-03-26, updated: 2025-03-26, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/26/los-angeles-to-shanghai-by-way-of-san-francisco/>

---

**@Dave Winer's linkblog** (date: 2025-03-26, from: Dave Winer's linkblog)

Law Firms Are Chickening Out Of Representing Trump Foes. 

<br> 

<https://crooksandliars.com/2025/03/law-firms-are-chickening-out-representing>

---

**@Dave Winer's linkblog** (date: 2025-03-26, from: Dave Winer's linkblog)

What Extreme Cold Feels Like in Prison. 

<br> 

<https://prisonjournalismproject.org/2025/02/25/extreme-cold-prison/>

---

## NARA Turns 40

date: 2025-03-26, from: National Archives, Pieces of History blog

On April 1, 2025, the National Archives and Records Administration (NARA) turns 40. Visit the National Archives History Office website for more information on the history of our agency.&#160; President Franklin D. Roosevelt signed legislation establishing the National Archives on June 19, 1934. For its first 15 years, the National Archives operated as an independent &#8230; <a href="https://prologue.blogs.archives.gov/2025/03/26/nara-turns-40/" class="more-link">Continue reading <span class="screen-reader-text">NARA Turns 40</span></a> 

<br> 

<https://prologue.blogs.archives.gov/2025/03/26/nara-turns-40/>

---

**@Dave Winer's linkblog** (date: 2025-03-26, from: Dave Winer's linkblog)

Breaks my heart to see foreigners excoriating my country, wanting to defend it, but knowing they’re right. This is not a way we can exist for very long. 

<br> 

<https://johnnaughton.substack.com/p/wednesday-26-march-2025?publication_id=31999&post_id=159868553&isFreemail=true&r=w33x&triedRedirect=true>

---

## Incompetent or Evil: A False Dichotomy

date: 2025-03-26, from: Paul Krugman

Trump&#8217;s people can be and are both 

<br> 

<https://paulkrugman.substack.com/p/incompetent-or-evil-a-false-dichotomy>

---

## Can an Android phone be your next Linux PC?

date: 2025-03-26, from: Libre News

Maybe not, but Android 16 is now shipping Linux VMs, and that's something. 

<br> 

<https://thelibre.news/can-an-android-phone-be-your-next-linux-pc/>

---

## Note on 26th March 2025

date: 2025-03-26, updated: 2025-03-26, from: Simon Willison’s Weblog

<p>I've added a new content type to my blog: <strong>notes</strong>. These join my existing types: <a href="https://simonwillison.net/search/?type=entry">entries</a>, <a href="https://simonwillison.net/search/?type=blogmark">bookmarks</a> and <a href="https://simonwillison.net/search/?type=quotation">quotations</a>.</p>
<p>A note is a little bit like a bookmark without a link. They're for short form writing - thoughts or images that don't warrant a full entry with a title. The kind of things I used to post to Twitter, but that don't feel right to cross-post to multiple social networks (Mastodon and Bluesky, for example.)</p>
<p>I was partly inspired by Molly White's <a href="https://www.mollywhite.net/micro">short thoughts, notes, links, and musings</a>.</p>
<p>I've been thinking about this for a while, but the amount of work involved in modifying all of the parts of my site that handle the three different content types was daunting. Then this evening I tried running my blog's source code (using <a href="https://github.com/simonw/files-to-prompt">files-to-prompt</a> and <a href="https://llm.datasette.io/">LLM</a>) through <a href="https://simonwillison.net/2025/Mar/25/gemini/">the new Gemini 2.5 Pro</a>:</p>
<div class="highlight highlight-source-shell"><pre>files-to-prompt <span class="pl-c1">.</span> -e py -c <span class="pl-k">|</span> \
  llm -m gemini-2.5-pro-exp-03-25 -s \
  <span class="pl-s"><span class="pl-pds">'</span>I want to add a new type of content called a Note,</span>
<span class="pl-s">  similar to quotation and bookmark and entry but it</span>
<span class="pl-s">  only has a markdown text body. Output all of the</span>
<span class="pl-s">  code I need to add for that feature and tell me</span>
<span class="pl-s">  which files to add  the code to.<span class="pl-pds">'</span></span></pre></div>

<p>Gemini gave me <a href="https://gist.github.com/simonw/6d9fb3e33e7105d391a31367d6a235de#response">a detailed 13 step plan</a> covering all of the tedious changes I'd been avoiding having to figure out!</p>
<p>The code <a href="https://github.com/simonw/simonwillisonblog/pull/527">is in this PR</a>, which touched 18 different files. The whole project took around 45 minutes start to finish.</p>
<p>(I used Claude to <a href="https://claude.ai/share/17656d59-6f52-471e-8aeb-6abbe1464471">brainstorm names</a> for the feature - I had it come up with possible nouns and then "rank those by least pretentious to most pretentious", and "notes" came out on top.)</p>
<p>This is now far too long for a note and should really be upgraded to an entry, but I need to post a first note to make sure everything is working as it should.</p>

    <p>Tags: <a href="https://simonwillison.net/tags/blogging">blogging</a>, <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/molly-white">molly-white</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/26/notes/#atom-everything>

---

## MicroTimes Interviews Jim Clark from Mosaic Communications (1994)

date: 2025-03-26, from: Computer ads from the Past

They discuss how to commercialize the internet. 

<br> 

<https://computeradsfromthepast.substack.com/p/microtimes-interviews-jim-clark-from>

---

**@Feed for Alt USDS** (date: 2025-03-26, from: Feed for Alt USDS)

💅

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3llauyimjac2j>

---

## Quoting Manuel Hoffmann, Frank Nagle, Yanuo Zhou

date: 2025-03-26, updated: 2025-03-26, from: Simon Willison’s Weblog

<blockquote cite="https://www.hbs.edu/faculty/Pages/item.aspx?num=65230"><p>We estimate the supply-side value of widely-used OSS is $4.15 billion, but that the demand-side value is much larger at $8.8 trillion. We find that firms would need to spend 3.5 times more on software than they currently do if OSS did not exist.</p></blockquote>
<p class="cite">&mdash; <a href="https://www.hbs.edu/faculty/Pages/item.aspx?num=65230">Manuel Hoffmann, Frank Nagle, Yanuo Zhou</a>, The Value of Open Source Software, Harvard Business School</p>

    <p>Tags: <a href="https://simonwillison.net/tags/open-source">open-source</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/26/value-of-open-source/#atom-everything>

---

**@Feed for Alt USDS** (date: 2025-03-26, from: Feed for Alt USDS)

A good round up of the data that the IRS has... And therefore is vulnerable based on our current administration and leadership. What a time to be alive. 😩

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3llaupjvnjs2j>

---

## Musk, Grok, and “rigorous adherence to truth“

date: 2025-03-25, from: Gary Marcus blog

Elon Musk, yesterday: &#8220;Rigorous adherence to truth is the only way to build safe Al.&#8221; 

<br> 

<https://garymarcus.substack.com/p/musk-grok-and-rigorous-adherence>

---

**@Dave Winer's linkblog** (date: 2025-03-25, from: Dave Winer's linkblog)

Trump&#39;s Attack on Lawyers and Law Firms Takes a Page Out of the Southern 1950s Playbook. 

<br> 

<https://sherrilyn.substack.com/p/trumps-attack-on-lawyers-and-law?triedRedirect=true>

---

## Introducing 4o Image Generation

date: 2025-03-25, updated: 2025-03-25, from: Simon Willison’s Weblog

<p><strong><a href="https://openai.com/index/introducing-4o-image-generation/">Introducing 4o Image Generation</a></strong></p>
When OpenAI first announced GPT-4o <a href="https://simonwillison.net/2024/May/13/gpt-4o/">back in May 2024</a> one of the most exciting features was true multi-modality in that it could both input <em>and</em>  output audio and images. The "o" stood for "omni", and the image output examples <a href="https://openai.com/index/hello-gpt-4o/">in that launch post</a> looked really impressive.</p>
<p>It's taken them over ten months (and Gemini <a href="https://developers.googleblog.com/en/experiment-with-gemini-20-flash-native-image-generation/">beat them to it</a>) but today they're finally making those image generation abilities available, live right now in ChatGPT for paying customers.</p>
<p>My test prompt for any model that can manipulate incoming images is "Turn this into a selfie with a bear", because you should never take a selfie with a bear! I fed ChatGPT <a href="https://static.simonwillison.net/static/2025/selfie.jpg">this selfie</a> and got back this result:</p>
<p><img alt="It's a selfie, there's a grizzly bear over my shoulder smiling." src="https://static.simonwillison.net/static/2025/selfie-with-a-bear.jpg" /></p>
<p>That's pretty great! It mangled the text on my T-Shirt (which says "LAWRENCE.COM" in a creative font) and added a second visible AirPod. It's very clearly me though, and that's definitely a bear.</p>
<p>There are plenty more examples in <a href="https://openai.com/index/introducing-4o-image-generation/">OpenAI's launch post</a>, but as usual the most interesting details are tucked away in <a href="https://openai.com/index/gpt-4o-image-generation-system-card-addendum/">the updates to the system card</a>. There's lots in there about their approach to safety and bias, including a section on "Ahistorical and Unrealistic Bias" which feels inspired by Gemini's <a href="https://blog.google/products/gemini/gemini-image-generation-issue/">embarrassing early missteps</a>.</p>
<p>One section that stood out to me is their approach to images of public figures. The new policy is much more permissive than for DALL-E - highlights mine:</p>
<blockquote>
<p>4o image generation is capable, in many instances, of generating a depiction of a public figure based solely on a text prompt.</p>
<p><strong>At launch, we are not blocking the capability to generate adult public figures</strong> but are instead implementing the same safeguards that we have implemented for editing images of photorealistic uploads of people. For instance, this includes seeking to block the generation of photorealistic images of public figures who are minors and of material that violates our policies related to violence, hateful imagery, instructions for illicit activities, erotic content, and other areas. <strong>Public figures who wish for their depiction not to be generated can opt out</strong>.</p>
<p>This approach is more fine-grained than the way we dealt with public figures in our DALL·E series of models, where we used technical mitigations intended to prevent any images of a public figure from being generated. <strong>This change opens the possibility of helpful and beneficial uses in areas like educational, historical, satirical and political speech</strong>. After launch, we will continue to monitor usage of this capability, evaluating our policies, and will adjust them if needed.</p>
</blockquote>
<p>Given that "public figures who wish for their depiction not to be generated can opt out" I wonder if we'll see a stampede of public figures to do exactly that!</p>
<p><strong>Update</strong>: There's significant confusion right now over this new feature because it is being rolled out gradually but older ChatGPT can still generate images using DALL-E instead... and there is no visual indication in the ChatGPT UI explaining which image generation method it used!</p>
<p>OpenAI made the same mistake last year <a href="https://simonwillison.net/2024/May/15/chatgpt-in-4o-mode/">when they announced ChatGPT advanced voice mode</a> but failed to clarify that ChatGPT was still running the previous, less impressive voice implementation.</p>
<p><strong>Update 2</strong>: Images created with DALL-E through the ChatGPT web interface now show a note with a warning:</p>
<p><img alt="Created with DALL-E with an information icon. Clicking it reveals DALL-E is OpenAI's legacy image generation model. A new model is rolling out in ChatGPT soon." src="https://static.simonwillison.net/static/2025/dall-e-warning.jpg" />


    <p>Tags: <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/multi-modal-output">multi-modal-output</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/chatgpt">chatgpt</a>, <a href="https://simonwillison.net/tags/dalle">dalle</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/25/introducing-4o-image-generation/#atom-everything>

---

## Lilbits: AI-enhanced search for Windows PCs and Amazon’s Big Spring Sale

date: 2025-03-25, from: Liliputing

<p>Many of the latest laptop processors from Intel, AMD, and Qualcomm have high-performance neural processing units that are supposed to let you run AI applications locally without sending any data to the cloud. But so far Microsoft and PC makers have had a hard time coming up with things that you can actually do with [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-ai-enhanced-search-for-windows-pcs-and-amazons-big-spring-sale/">Lilbits: AI-enhanced search for Windows PCs and Amazon&#8217;s Big Spring Sale</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-ai-enhanced-search-for-windows-pcs-and-amazons-big-spring-sale/>

---

## Putting Gemini 2.5 Pro through its paces

date: 2025-03-25, updated: 2025-03-25, from: Simon Willison’s Weblog

<p>There's a new release from Google Gemini this morning: <a href="https://blog.google/technology/google-deepmind/gemini-model-thinking-updates-march-2025/#gemini-2-5-thinking">the first in the Gemini 2.5</a> series. Google call it "a thinking model, designed to tackle increasingly complex problems". It's already sat at the top of the <a href="https://lmarena.ai/?leaderboard">LM Arena leaderboard</a>, and from initial impressions looks like it may deserve that top spot.</p>
<p>I just released <a href="https://github.com/simonw/llm-gemini/releases/tag/0.16">llm-gemini 0.16</a> adding support for the new model to my <a href="https://llm.datasette.io/">LLM</a> command-line tool. Let's try it out.</p>

<ul>
  <li><a href="https://simonwillison.net/2025/Mar/25/gemini/#the-pelican-riding-a-bicycle">The pelican riding a bicycle</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/25/gemini/#transcribing-audio">Transcribing audio</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/25/gemini/#bounding-boxes">Bounding boxes</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/25/gemini/#characteristics">More characteristics of the model</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/25/gemini/#gemini-2-5-pro-is-a-very-strong-new-model">Gemini 2.5 Pro is a very strong new model</a></li>
  <li><a href="https://simonwillison.net/2025/Mar/25/gemini/#update-it-s-very-good-at-code">Update: it's very good at code</a></li>
</ul>

<h4 id="the-pelican-riding-a-bicycle">The pelican riding a bicycle</h4>
<p>First up, my classic <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle/">generate an SVG of a pelican riding a bicycle</a> prompt.</p>
<div class="highlight highlight-source-shell"><pre><span class="pl-c"><span class="pl-c">#</span> Upgrade the plugin</span>
llm install -U llm-gemini

<span class="pl-c"><span class="pl-c">#</span> Now run the prompt:</span>
llm -m gemini-2.5-pro-exp-03-25 <span class="pl-s"><span class="pl-pds">"</span>Generate an SVG of a pelican riding a bicycle<span class="pl-pds">"</span></span></pre></div>
<p>It's pretty solid!</p>
<p><img src="https://static.simonwillison.net/static/2025/gemini-2.5-pro-pelican.jpg" alt="The pelican is perched at an angle which suggests an effort at having it make contact with the pedals. It has a good large beak." style="max-width: 100%;" /></p>
<p>Here's <a href="https://gist.github.com/simonw/c34f7f0c94afcbeab77e170511f6f51f">the full transcript</a>.</p>
<p>This task is meant to be almost impossible: pelicans are the wrong shape to ride bicycles! Given that, I think this is a good attempt - I like it slightly better than my previous favourite <a href="https://simonwillison.net/2025/Feb/24/claude-37-sonnet-and-claude-code/">Claude 3.7 Sonnet</a>, which produced this a month ago:</p>
<p><img src="https://static.simonwillison.net/static/2025/pelican-claude-3.7-sonnet.svg" alt="The bicycle has pokes but the pedal is in the wrong place, and the pelican perches uncomfortably on the seat with weird looking wings." style="max-width: 100%;" /></p>
<h4 id="transcribing-audio">Transcribing audio</h4>
<p>I had <a href="https://static.simonwillison.net/static/2025/russian-pelican-in-spanish.mp3">an MP3</a> lying around from <a href="https://simonwillison.net/2024/Oct/26/russian-spanish-pelican/">a previous experiment</a> which mixes English and Spanish. I tried running it with the prompt <code>transcribe</code> to see what would happen:</p>
<div class="highlight highlight-source-shell"><pre>llm -m gemini-2.5-pro-exp-03-25 <span class="pl-s"><span class="pl-pds">'</span>transcribe<span class="pl-pds">'</span></span> \
  -a https://static.simonwillison.net/static/2025/russian-pelican-in-spanish.mp3</pre></div>
<p>I got back this, with timestamps interspersed with the text:</p>
<blockquote>
<p>I need you [ 0m0s450ms ] to pretend [ 0m0s880ms ] to be [ 0m0s990ms ] a California [ 0m1s560ms ] brown [ 0m1s850ms ] pelican [ 0m2s320ms ] with [ 0m2s480ms ] a very [ 0m2s990ms ] thick [ 0m3s290ms ] Russian [ 0m3s710ms ] accent, [ 0m4s110ms ] but [ 0m4s540ms ] you [ 0m4s640ms ] talk [ 0m4s830ms ] to me [ 0m4s960ms ] exclusively [ 0m5s660ms ] in Spanish. [ 0m6s200ms ] Oye, [ 0m8s930ms ] camarada, [ 0m9s570ms ] aquí [ 0m10s240ms ] está [ 0m10s590ms ] tu [ 0m10s740ms ] pelícano [ 0m11s370ms ] californiano [ 0m12s320ms ] con [ 0m12s520ms ] acento [ 0m13s100ms ] ruso. [ 0m13s540ms ] Qué [ 0m14s230ms ] tal, [ 0m14s570ms ] tovarisch? [ 0m15s210ms ] Listo [ 0m15s960ms ] para [ 0m16s190ms ] charlar [ 0m16s640ms ] en [ 0m16s750ms ] español? [ 0m17s250ms ] How's [ 0m19s834ms ] your [ 0m19s944ms ] day [ 0m20s134ms ] today? [ 0m20s414ms ] Mi [ 0m22s654ms ] día [ 0m22s934ms ] ha [ 0m23s4ms ] sido [ 0m23s464ms ] volando [ 0m24s204ms ] sobre [ 0m24s594ms ] las [ 0m24s844ms ] olas, [ 0m25s334ms ] buscando [ 0m26s264ms ] peces [ 0m26s954ms ] y [ 0m27s84ms ] disfrutando [ 0m28s14ms ] del [ 0m28s244ms ] sol [ 0m28s664ms ] californiano. [ 0m29s444ms ] Y [ 0m30s314ms ] tú, [ 0m30s614ms ] amigo, ¿ [ 0m31s354ms ] cómo [ 0m31s634ms ] ha [ 0m31s664ms ] estado [ 0m31s984ms ] tu [ 0m32s134ms ] día? [ 0m32s424ms ]</p>
</blockquote>
<p>This inspired me to try again, this time including <a href="https://simonwillison.net/2025/Feb/28/llm-schemas/">a JSON schema</a> (using LLM's custom schema DSL):</p>
<div class="highlight highlight-source-shell"><pre>llm -m gemini-2.5-pro-exp-03-25 <span class="pl-s"><span class="pl-pds">'</span>transcribe<span class="pl-pds">'</span></span> \
  -a https://static.simonwillison.net/static/2025/russian-pelican-in-spanish.mp3 \
  --schema-multi <span class="pl-s"><span class="pl-pds">'</span>timestamp str: mm:ss,text, language: two letter code<span class="pl-pds">'</span></span></pre></div>
<p>I got an <em>excellent</em> response from that:</p>
<div class="highlight highlight-source-json"><pre>{
  <span class="pl-ent">"items"</span>: [
    {
      <span class="pl-ent">"language"</span>: <span class="pl-s"><span class="pl-pds">"</span>en<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>I need you to pretend to be a California brown pelican with a very thick Russian accent, but you talk to me exclusively in Spanish.<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"timestamp"</span>: <span class="pl-s"><span class="pl-pds">"</span>00:00<span class="pl-pds">"</span></span>
    },
    {
      <span class="pl-ent">"language"</span>: <span class="pl-s"><span class="pl-pds">"</span>es<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>Oye, camarada. Aquí está tu pelícano californiano con acento ruso.<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"timestamp"</span>: <span class="pl-s"><span class="pl-pds">"</span>00:08<span class="pl-pds">"</span></span>
    },
    {
      <span class="pl-ent">"language"</span>: <span class="pl-s"><span class="pl-pds">"</span>es<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>¿Qué tal, Tovarish? ¿Listo para charlar en español?<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"timestamp"</span>: <span class="pl-s"><span class="pl-pds">"</span>00:13<span class="pl-pds">"</span></span>
    },
    {
      <span class="pl-ent">"language"</span>: <span class="pl-s"><span class="pl-pds">"</span>en<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>How's your day today?<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"timestamp"</span>: <span class="pl-s"><span class="pl-pds">"</span>00:19<span class="pl-pds">"</span></span>
    },
    {
      <span class="pl-ent">"language"</span>: <span class="pl-s"><span class="pl-pds">"</span>es<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>Mi día ha sido volando sobre las olas, buscando peces y disfrutando del sol californiano.<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"timestamp"</span>: <span class="pl-s"><span class="pl-pds">"</span>00:22<span class="pl-pds">"</span></span>
    },
    {
      <span class="pl-ent">"language"</span>: <span class="pl-s"><span class="pl-pds">"</span>es<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>¿Y tú, amigo, cómo ha estado tu día?<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"timestamp"</span>: <span class="pl-s"><span class="pl-pds">"</span>00:30<span class="pl-pds">"</span></span>
    }
  ]
}</pre></div>
<p>I confirmed that the timestamps match the audio. This is fantastic.</p>
<p>Let's try that against a ten minute snippet of <a href="https://realpython.com/podcasts/rpp/236/">a podcast episode</a> I was on:</p>
<div class="highlight highlight-source-shell"><pre>llm -m gemini-2.5-pro-exp-03-25 \
  <span class="pl-s"><span class="pl-pds">'</span>transcribe, first speaker is Christopher, second is Simon<span class="pl-pds">'</span></span> \
  -a ten-minutes-of-podcast.mp3 \
  --schema-multi <span class="pl-s"><span class="pl-pds">'</span>timestamp str: mm:ss, text, speaker_name<span class="pl-pds">'</span></span></pre></div>
<p>Useful LLM trick: you can use <code>llm logs -c --data</code> to get just the JSON data from the most recent prompt response, so I ran this:</p>
<div class="highlight highlight-source-shell"><pre>llm logs -c --data <span class="pl-k">|</span> jq</pre></div>
<p>Here's <a href="https://gist.github.com/simonw/23d4528e23e4897e0c43458e7c46c360">the full output JSON</a>, which starts and ends like this:</p>
<div class="highlight highlight-source-json"><pre>{
  <span class="pl-ent">"items"</span>: [
    {
      <span class="pl-ent">"speaker_name"</span>: <span class="pl-s"><span class="pl-pds">"</span>Christopher<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>on its own and and it has this sort of like a it's like a you know old tree in the forest, you know, kind of thing that you've built, so.<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"timestamp"</span>: <span class="pl-s"><span class="pl-pds">"</span>00:00<span class="pl-pds">"</span></span>
    },
    {
      <span class="pl-ent">"speaker_name"</span>: <span class="pl-s"><span class="pl-pds">"</span>Simon<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>There's also like I feel like with online writing, never ever like stick something online just expect people to find it. You have to So one of the great things about having a blog is I can be in a conversation about something and somebody ask a question, I can say, oh, I wrote about that two and a half years ago and give people a link.<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"timestamp"</span>: <span class="pl-s"><span class="pl-pds">"</span>00:06<span class="pl-pds">"</span></span>
    },

    {
      <span class="pl-ent">"speaker_name"</span>: <span class="pl-s"><span class="pl-pds">"</span>Simon<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>So on that basis, Chat and I can't remember if the free version of Chat GPT has code interpreter.<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"timestamp"</span>: <span class="pl-s"><span class="pl-pds">"</span>09:45<span class="pl-pds">"</span></span>
    },
    {
      <span class="pl-ent">"speaker_name"</span>: <span class="pl-s"><span class="pl-pds">"</span>Simon<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>I hope I think it does.<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"timestamp"</span>: <span class="pl-s"><span class="pl-pds">"</span>09:50<span class="pl-pds">"</span></span>
    },
    {
      <span class="pl-ent">"speaker_name"</span>: <span class="pl-s"><span class="pl-pds">"</span>Christopher<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"text"</span>: <span class="pl-s"><span class="pl-pds">"</span>Okay. So this is like the basic paid one, maybe the $20 month because I know there's like a $200 one that's a little steep for like a basic<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"timestamp"</span>: <span class="pl-s"><span class="pl-pds">"</span>09:51<span class="pl-pds">"</span></span>
    }
  ]
}</pre></div>
<p>A spot check of the timestamps showed them in the right place. Gemini 2.5 supports long context prompts so it's possible this works well for much longer audio files - it would be interesting to dig deeper and try that out.</p>
<h4 id="bounding-boxes">Bounding boxes</h4>
<p>One of my favourite features of previous Gemini models is their support for bounding boxes: you can prompt them to return boxes around objects in images.</p>
<p>I built a separate tool for experimenting with this feature in August last year, which I described in <a href="https://simonwillison.net/2024/Aug/26/gemini-bounding-box-visualization/">Building a tool showing how Gemini Pro can return bounding boxes for objects in images</a>. I've now upgraded that tool to add support the new model.</p>
<p>You can access it at <a href="https://tools.simonwillison.net/gemini-bbox">tools.simonwillison.net/gemini-bbox</a> - you'll need to provide your own Gemini API key which is sent directly to their API from your browser (it won't be logged by an intermediary).</p>
<p>I tried it out on <a href="https://static.simonwillison.net/static/2025/challenging-pelicans.jpg">a challenging photograph</a> of some pelicans... and it worked extremely well:</p>
<p>My prompt was:</p>
<blockquote>
<p><code>Return bounding boxes around pelicans as JSON arrays [ymin, xmin, ymax, xmax]</code></p>
</blockquote>
<p>The Gemini models are all trained to return bounding boxes scaled between 0 and 100. My tool knows how to convert those back to the same dimensions as the input image.</p>
<p>Here's what the visualized result looked like:</p>
<p><img src="https://static.simonwillison.net/static/2025/gemini-pelicans-bbox.jpg" alt="Pelicans with bounding boxes around them" style="max-width: 100%;" /></p>
<p>It got almost all of them! I like how it didn't draw a box around the one egret that had made it into the photo.</p>
<h4 id="characteristics">More characteristics of the model</h4>

<p>Here's the <a href="https://ai.google.dev/gemini-api/docs/models#gemini-2.5-pro-exp-03-25">official model listing</a> in the Gemini docs. Key details:</p>
<ul>
  <li>Input token limit: 1,000,000</li>
  <li>Output token limit: 64,000 - this is a <em>huge</em> upgrade, all of the other listed models have 8,192 for this (correction: <a href="https://deepmind.google/technologies/gemini/flash-thinking/">Gemini 2.0 Flash Thinking</a> also had a 64,000 output length)</li>
  <li>Knowledge cut-off: January 2025 - an improvement on Gemini 2.0's August 2024</li>
</ul>

<h4 id="gemini-2-5-pro-is-a-very-strong-new-model">Gemini 2.5 Pro is a very strong new model</h4>
<p>I've hardly scratched the surface when it comes to trying out Gemini 2.5 Pro so far. How's its creative writing? Factual knowledge about the world? Can it write great code in Python, JavaScript, Rust and more?</p>
<p>The Gemini family of models have capabilities that set them apart from other models:</p>
<ul>
<li>Long context length - Gemini 2.5 Pro supports up to 1 million tokens</li>
<li>Audio input - something which few other models support, certainly not at this length and with this level of timestamp accuracy</li>
<li>Accurate bounding box detection for image inputs</li>
</ul>
<p>My experiments so far with these capabilities indicate that Gemini 2.5 Pro really is a very strong new model. I'm looking forward to exploring more of what it can do.</p>

<h4 id="update-it-s-very-good-at-code">Update: it's very good at code</h4>
<p>I spent this evening trying it out for coding tasks, and it's very, very impressive. I'm seeing results for Python that feel comparable to my previous favourite Claude 3.7 Sonnet, and appear to be benefitting from Gemini 2.5 Pro's default reasoning mode and long context.</p>
<p>I've been wanting to add a new content type of "notes" to my blog for quite a while now, but I was put off by the anticipated tedium of all of the different places in the codebase that would need to be updated.</p>
<p>That feature is now live. <a href="https://simonwillison.net/2025/Mar/26/notes/">Here are my notes</a> on creating that notes feature using Gemini 2.5 Pro. It crunched through my entire codebase and figured out all of the places I needed to change - 18 files in total, as you can see in <a href="https://github.com/simonw/simonwillisonblog/pull/527/files">the resulting PR</a>. The whole project took about 45 minutes from start to finish - averaging less than three minutes per file I had to modify.</p>
<p>I've thrown a whole bunch of other coding challenges at it, and the bottleneck on evaluating them has become my own mental capacity to review the resulting code!</p>
<p>Here's another, more complex example. This hasn't resulted in actual running code yet but it took a big bite out of an architectural design problem I've been stewing on for a very long time.</p>

<p>My <a href="https://llm.datasette.io/">LLM project</a> needs support for tools - a way to teach different LLMs how to request tool execution, then have those tools (implemented in Python) run and return their results back to the models.</p>

<p>Designing this is really hard, because I need to create an abstraction that works across multiple different model providers, each powered by a different plugin.</p>

<p>Could Gemini 2.5 Pro help unblock me by proposing an architectural approach that might work?</p>

<p>I started by combining the Python and Markdown files for my <a href="https://github.com/simonw/sqlite-utils">sqlite-utils</a>, <a href="https://github.com/simonw/llm">llm</a>, <a href="https://github.com/simonw/llm-gemini">llm-gemini</a>, and <a href="https://github.com/simonw/llm-anthropic">llm-anthropic</a> repositories into one big document:</p>
<div class="highlight highlight-source-shell"><pre>files-to-prompt sqlite-utils llm llm-gemini llm-anthropic -e md -e py -c</pre></div>
<p>Piping it through <a href="https://github.com/simonw/ttok">ttok</a> showed that to be 316,098 tokens (using the OpenAI tokenizer, but the Gemini tokenizer is likely a similar number).</p>
<p>Then I fed that all into Gemini 2.5 Pro with the following prompt:</p>
<blockquote>
<p>Provide a detailed design proposal for adding tool calling support to LLM</p>
<p>Different model plugins will have different ways of executing tools, but LLM itself should provide both a Python and a CLI abstraction over these differences.</p>
<p>Tool calling involves passing tool definitions to a model, the model then replies with tools it would like executed, the harness code then executes those and passes the result back to the model and continues in a loop until the model stops requesting tools. This should happen as part of the existing llm.Conversation mechanism.</p>
<p>At the Python layer tools should be provided as Python functions that use type hints, which can then be converted into JSON schema using Pydantic - similar to how the existing schema= mechanism works.</p>
<p>For the CLI option tools will be provided as an option passed to the command, similar to how the sqlite-utils convert CLI mechanism works.'</p>
</blockquote>
<p>I've been thinking about this problem for over a year now. <a href="https://gist.github.com/simonw/481f46a779f20d8650b4fc5854f070c5">Gemini 2.5 Pro's response</a> isn't exactly what I'm going to do, but it did include a flurry of genuinely useful suggestions to help me craft my final approach.</p>
<p>I hadn't thought about the need for asyncio support for tool functions at all, so this idea from Gemini 2.5 Pro was very welcome:</p>
<blockquote>
<p>The <code>AsyncConversation.prompt()</code> method will mirror the synchronous API, accepting the <code>tools</code> parameter and handling the tool calling loop using <code>async/await</code> for tool execution if the tool functions themselves are async. If tool functions are synchronous, they will be run in a thread pool executor via <code>asyncio.to_thread</code>.</p>
</blockquote>
<p>Watching Gemini crunch through some of the more complex problems I've been dragging my heels on reminded me of something Harper Reed wrote <a href="https://harper.blog/2025/02/16/my-llm-codegen-workflow-atm/">about his   workflow with LLMs for code</a>:</p>
<blockquote>
<p>My hack to-do list is empty because I built everything. I keep thinking of new things and knocking them out while watching a movie or something.</p>
</blockquote>
<p>I've been stressing quite a bit about my backlog of incomplete projects recently. I don't think Gemini 2.5 Pro is quite going to work through all of them while I'm watching TV, but it does feel like it's going to help make a significant dent in them.</p>
    
        <p>Tags: <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/25/gemini/#atom-everything>

---

**@Robert's feed at BlueSky** (date: 2025-03-25, from: Robert's feed at BlueSky)

This looks fun.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lla24kg6hs2e>

---

**@Dave Winer's linkblog** (date: 2025-03-25, from: Dave Winer's linkblog)

I love this, they look at protocols for news (I guess) and this guy leaves out RSS. It&#39;s amazing, leaving it out is the only way they can justify the existence of their protocol. 

<br> 

<https://www.youtube.com/watch?v=HoagVD-Baa4&list=PL47nQSDRhiP2m8RH_AM4NTWuzN3XA3W27>

---

## Improving Firefox Stability in the Enterprise by Reducing DLL Injection

date: 2025-03-25, from: Mozilla Developer Network blog

<p>Beginning in version 138, Firefox will offer an alternative to DLL injection for Data Loss Prevention (DLP) deployments in enterprise environments. DLL Injection DLL injection into Firefox is a topic we’ve covered on the Hacks blog before. In 2023, we blogged about the Firefox capability to let users block third-party DLLs from being loaded. We [&#8230;]</p>
<p>The post <a href="https://hacks.mozilla.org/2025/03/improving-firefox-stability-in-the-enterprise-by-reducing-dll-injection/">Improving Firefox Stability in the Enterprise by Reducing DLL Injection</a> appeared first on <a href="https://hacks.mozilla.org">Mozilla Hacks - the Web developer blog</a>.</p>
 

<br> 

<https://hacks.mozilla.org/2025/03/improving-firefox-stability-in-the-enterprise-by-reducing-dll-injection/>

---

## AirPods Max Lossless and Low Latency Audio Over USB-C

date: 2025-03-25, from: Michael Tsai

Tim Hardwick: Apple will bring lossless audio and ulta-low latency audio to AirPods Max in its upcoming iOS 18.4 software update arriving in April, according to the company.[&#8230;]Apple also said that today it is making a USB-C to 3.5mm audio cable available to buy for $39 from its online store, Apple Store app, and authorized [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/25/airpods-max-lossless-and-low-latency-audio-over-usb-c/>

---

## Error 702 Installing macOS on an External Drive

date: 2025-03-25, from: Michael Tsai

My Intel MacBook Pro died, and even though I have an M1 MacBookAir ready to replace it, it&#8217;s taken several days to get back to the point where I can run older versions of macOS for testing my apps. I had all the old versions installed in separate partitions on an external SSD. Prior to [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/25/error-702-installing-macos-on-an-external-drive/>

---

## Please Stop Externalizing Your Costs Directly Into My Face

date: 2025-03-25, from: Michael Tsai

Drew DeVault: Over the past few months, instead of working on our priorities at SourceHut, I have spent anywhere from 20-100% of my time in any given week mitigating hyper-aggressive LLM crawlers at scale. [&#8230;] If you think these crawlers respect robots.txt then you are several assumptions of good faith removed from reality. These bots [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/25/please-stop-externalizing-your-costs-directly-into-my-face/>

---

## Matching Drop Shadows

date: 2025-03-25, from: Michael Tsai

Mark Edwards: The image above shows the same drop shadow values, rendered by CSS on the web, Android, and iOS. It&#8217;s a dark and extreme shadow, to make the differences more pronounced. The shadows are black, with no X offset, 24px Y offset, and a 24px blur radius. I&#8217;ve used &#8220;px&#8221; when noting the values, [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/25/matching-drop-shadows/>

---

## LilyGo T-Display K230 is a $99 RISC-V dev kit that looks like a phone

date: 2025-03-25, from: Liliputing

<p>The LilyGo T-Display K230 is a pocket-sized device with a 4.1 inch touchscreen AMOLED display, a camera, and support for WiFi and LoRa wireless communications. But it&#8217;s not a phone. Instead, LilyGo sells this little device as a $99 dev kit (currently out of stock) that combines a Kendryte K230 dual-core RISC-V processor with a screen, [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilygo-t-display-k230-is-a-99-risc-v-dev-kit-that-looks-like-a-phone/">LilyGo T-Display K230 is a $99 RISC-V dev kit that looks like a phone</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilygo-t-display-k230-is-a-99-risc-v-dev-kit-that-looks-like-a-phone/>

---

**@Dave Winer's linkblog** (date: 2025-03-25, from: Dave Winer's linkblog)

Social Security is breaking down. 

<br> 

<https://wapo.st/4hM5MAn>

---

## Defiance Through Mathematics

date: 2025-03-25, from: Guy Kawasaki blog

Tamar Lichter Blanks, PhD Candidate in Mathematics, Rutgers University. 

<br> 

<https://guykawasaki.substack.com/p/defiance-through-mathematics>

---

## MINIX Z150-0dB is a slightly faster fanless mini PC (now

date: 2025-03-25, from: Liliputing

<p>The MINIX Z150-0dB is a fanless mini PC that packs an Intel N150 Twin lake processor and support for up to 32GB of user-replaceable memory and up to 4TB of PCIe 3.0 storage into a compact body that measures 123 x 120 x 46mm (4.84″ x 4.72″ x 1.81″). It&#8217;s an updated version of the Z100-0dB that [&#8230;]</p>
<p>The post <a href="https://liliputing.com/minix-z150-0db-is-a-slightly-faster-fanless-mini-pc-now/">MINIX Z150-0dB is a slightly faster fanless mini PC (now</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/minix-z150-0db-is-a-slightly-faster-fanless-mini-pc-now/>

---

## Bacalhau v1.7.0 - Day 2: Scaling Your Compute Jobs with Bacalhau Partitioned Jobs

date: 2025-03-25, from: Bacalhau Blog

This post is part of the 5-days of Bacalhau 1.7 series. 

<br> 

<https://blog.bacalhau.org/p/bacalhau-v170-day-2-scaling-your>

---

## 'Brainrot' AI on Instagram Is Monetizing the Most Fucked Up Things You Can Imagine (and Lots You Can't)

date: 2025-03-25, from: 404 Media Group

The hottest use of AI right now? Dora the Explorer feet mukbang; Peppa the Pig Skibidi toilet explosion; Steph Curry and LeBron James Ahegao Drakedom threesome. 

<br> 

<https://www.404media.co/brainrot-ai-on-instagram-is-monetizing-the-most-fucked-up-things-you-can-imagine-and-lots-you-cant/>

---

## LG introduces an AMD Krackan Point version of the Gram 15 laptop

date: 2025-03-25, from: Liliputing

<p>The LG Gram 15 (15Z80T) is a laptop that has a 15.6 inch FHD display, an AMD &#8220;Krackan Point&#8221; processor, and thin and light design. Despite having a reasonably large display and a 72 Wh battery, the notebook measures just 17mm (0.67 inches) thick and weighs just 1.29 kg (2.84 pounds). That makes the new AMD-powered [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lg-introduces-an-amd-krackan-point-version-of-the-gram-15-laptop/">LG introduces an AMD Krackan Point version of the Gram 15 laptop</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lg-introduces-an-amd-krackan-point-version-of-the-gram-15-laptop/>

---

**@Dave Winer's linkblog** (date: 2025-03-25, from: Dave Winer's linkblog)

A very tasty title for today&#39;s Daily podcast, and it lives up to the promise. I keep wishing we had done something to prevent Twitter from being bought by a billionaire, same as I think now re Bluesky. Or if it&#39;s going to be bought, let a friendly billionaire buy it. 

<br> 

<https://podcasts.apple.com/us/podcast/nixon-dreamed-of-breaking-the-media-trump-is-doing-it/id1200361736?i=1000700734181>

---

## Standardizing Color Television Systems

date: 2025-03-25, from: National Archives, Text Message blog

Today&#8217;s post is written by Timothy Wilcox, an Archivist at the National Archives at Kansas City. Many born in the 1980s and after cannot recall a life without electronic visual media in vibrant hues. Few of us know the history that brought it to the masses. The advent of color television was a gradual process &#8230; <a href="https://text-message.blogs.archives.gov/2025/03/25/standardizing-color-television-systems/" class="more-link">Continue reading <span class="screen-reader-text">Standardizing Color Television Systems</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/03/25/standardizing-color-television-systems/>

---

## Texans Might Soon Have to Show Photo ID to Buy a Dildo Online

date: 2025-03-25, from: 404 Media Group

A new bill introduced by Angela Paxton, wife of Texas AG Ken Paxton, would impose privacy-invading age verification requirements on online sex toy retailers.   

<br> 

<https://www.404media.co/texas-sex-toy-age-verification/>

---

## Classified Clown Show, Law and Disorder & Farewell to the Best Guest in Manhattan 

date: 2025-03-25, from: Tina Brown

We knew it would happen and it has. 

<br> 

<https://tinabrown.substack.com/p/classified-clown-show-law-and-disorder>

---

## Fun With Surveys

date: 2025-03-25, updated: 2025-03-25, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/25/fun-with-surveys/>

---

## AI Toolkit for Visual Studio Code now supports NVIDIA NIM microservices for RTX AI PCs

date: 2025-03-25, from: Windows Developer Blog

<p><a href="https://aka.ms/aitoolkit">AI Toolkit</a> now supports <a href="https://developer.nvidia.com/nim">NVIDIA NIM microservice</a>-based foundation models for inference testing in the model playground! Explore these NIMs in AI Toolkit's model cata</p>
<p>The post <a href="https://blogs.windows.com/windowsdeveloper/2025/03/25/ai-toolkit-for-visual-studio-code-now-supports-nvidia-nim-microservices-for-rtx-ai-pcs/">AI Toolkit for Visual Studio Code now supports NVIDIA NIM microservices for RTX AI PCs</a> appeared first on <a href="https://blogs.windows.com/windowsdeveloper">Windows Developer Blog</a>.</p>
 

<br> 

<https://blogs.windows.com/windowsdeveloper/2025/03/25/ai-toolkit-for-visual-studio-code-now-supports-nvidia-nim-microservices-for-rtx-ai-pcs/>

---

## Government-Operated Platforms and the First Amendment in Schiff v. U.S. Office of Personnel Management

date: 2025-03-25, from: Authors Union blogs

This is a post authored by Maria Crusey, an intern with Authors Alliance and a third-year law student at Washington University School of Law.  Introduction Tension between government actions and freedom of speech under the First Amendment is nothing new. Since the adoption of the First Amendment, individuals and entities have alleged government actors violate [&#8230;] 

<br> 

<https://www.authorsalliance.org/2025/03/25/government-operated-platforms-and-the-first-amendment-in-schiff-v-u-s-office-of-personnel-management/>

---

## Escaping POC Purgatory: Evaluation-Driven Development for AI Systems

date: 2025-03-25, from: O'Reilly Radar

Let’s be real: Building LLM applications today feels like purgatory. Someone hacks together a quick demo with ChatGPT and LlamaIndex. Leadership gets excited. “We can answer any question about our docs!” But then…reality hits. The system is inconsistent, slow, hallucinating—and that amazing demo starts collecting digital dust. We call this “POC purgatory”—that frustrating limbo where [&#8230;] 

<br> 

<https://www.oreilly.com/radar/escaping-poc-purgatory-evaluation-driven-development-for-ai-systems/>

---

## HOW NOT TO BE A TV CRITIC

date: 2025-03-25, from: Howard Jacobson blog

If this beautiful little girl is watching Adolescence I&#8217;d like to know what she finds so funny. 

<br> 

<https://jacobsonh.substack.com/p/how-not-to-be-a-tv-critic>

---

**@Dave Winer's linkblog** (date: 2025-03-25, from: Dave Winer's linkblog)

Before I moved to the mountains I lived near Columbus Circle in Manhattan, with a walkability score of 99, a transit score of 100, and 87 for bike riding. I didn&#39;t even own a car. 

<br> 

<https://www.walkscore.com/score/301-w-57th-st-new-york-ny-10019>

---

**@Dave Winer's linkblog** (date: 2025-03-25, from: Dave Winer's linkblog)

I&#39;m surprised the EPA&#39;s walkability page is still there and not obviously marked up for DEI submission. 

<br> 

<https://www.epa.gov/smartgrowth/national-walkability-index-user-guide-and-methodology>

---

## The most communist FOSS company

date: 2025-03-25, from: Libre News

<p>Let&apos;s immediately acknowledge that the title is lighthearted, and that &quot;communist company&quot; is an oxymoron. The better choice would&apos;ve been, &quot;which is the most worker-owned, egalitarian, power-structures-free cooperative?&quot;, which SEO experts told me was too long of a title. With that said,</p> 

<br> 

<https://thelibre.news/the-most-communist-foss-company/>

---

## Worthwhile Canadian Observations

date: 2025-03-25, from: Paul Krugman

About a &#8220;boring&#8221; country that definitely isn&#8217;t 

<br> 

<https://paulkrugman.substack.com/p/worthwhile-canadian-observations>

---

**@Dave Winer's linkblog** (date: 2025-03-25, from: Dave Winer's linkblog)

When Cats Came to My California Prison. 

<br> 

<https://prisonjournalismproject.org/2024/10/23/cats-came-to-my-california-prison/>

---

**@Dave Winer's linkblog** (date: 2025-03-25, from: Dave Winer's linkblog)

How bad is it? USPS chief DeJoy stepping down immediately. Couldn’t wait, something truly awful must be coming. 

<br> 

<https://www.axios.com/2025/03/24/dejoy-stepping-down-usps>

---

## Scaling Up Reinforcement Learning for Traffic Smoothing: A 100-AV Highway Deployment

date: 2025-03-25, from: Berkley Artificial Intellegence Research Blog

<!-- twitter -->
<meta name="twitter:title" content="Scaling Up Reinforcement Learning for Traffic Smoothing: A 100-AV Highway Deployment" />

<meta name="twitter:card" content="summary_large_image" />

<meta name="twitter:image" content="/blog/assets/rl_av_smoothing/cover.png" />

<meta name="keywords" content="reinforcement learning, RL, autonomous vehicles, AV, traffic" />

<meta name="description" content="The BAIR Blog" />

<meta name="author" content="Nathan Lichtlé, Kathy Jang, Eugene Vinitsky, Adit Shah, Jonathan W. Lee, Alexandre M. Bayen" />

<title>Training Diffusion Models with Reinforcement Learning</title>

<video autoplay="" muted="" playsinline="" disableRemotePlayback="" loop="" style="width: 100%; margin: 0; padding: 0; outline: none; border: none; background: transparent; display: block; border-radius: 5px" cover="https://bair.berkeley.edu/static/blog/rl_av_smoothing/megavandertest.png">
    <source src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/megavandertest.mp4" type="video/mp4" />
</video>

<p style="margin-top: 20px;">
    <b>We deployed 100 reinforcement learning (RL)-controlled cars into rush-hour highway traffic to smooth congestion and reduce fuel consumption for everyone.</b> Our goal is to tackle <a href="https://www.youtube.com/watch?v=TNokBgtSUvQ" target="_blank">"stop-and-go" waves</a>, those frustrating slowdowns and speedups that usually have no clear cause but lead to congestion and significant energy waste. To train efficient flow-smoothing controllers, we built fast, data-driven simulations that RL agents interact with, learning to maximize energy efficiency while maintaining throughput and operating safely around human drivers.
</p>
<p>    
    Overall, a small proportion of well-controlled autonomous vehicles (AVs) is enough to significantly improve traffic flow and fuel efficiency for all drivers on the road. Moreover, the trained controllers are designed to be deployable on most modern vehicles, operating in a decentralized manner and relying on standard radar sensors. In our <a href="https://ieeexplore.ieee.org/document/10858625" target="_blank">latest paper</a>, we explore the challenges of deploying RL controllers on a large-scale, from simulation to the field, during this 100-car experiment.
</p>

<!--more-->

<h2 id="the-challenges-of-phantom-jams">The challenges of phantom jams</h2>

<p style="text-align: center; margin-top: 50px;">
    <img src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/highway_wave.gif" width="80%" style="width: 80%; border-radius: 5px;" />
    <br />
    <i>A stop-and-go wave moving backwards through highway traffic.</i>
</p>

<p>If you drive, you’ve surely experienced the frustration of stop-and-go waves, those seemingly inexplicable traffic slowdowns that appear out of nowhere and then suddenly clear up. These waves are often caused by small fluctuations in our driving behavior that get amplified through the flow of traffic. We naturally adjust our speed based on the vehicle in front of us. If the gap opens, we speed up to keep up. If they brake, we also slow down. But due to our nonzero reaction time, we might brake just a bit harder than the vehicle in front. The next driver behind us does the same, and this keeps amplifying. Over time, what started as an insignificant slowdown turns into a full stop further back in traffic. These waves move backward through the traffic stream, leading to significant drops in energy efficiency due to frequent accelerations, accompanied by increased CO<sub>2</sub> emissions and accident risk.</p>

<p>And this isn’t an isolated phenomenon! These waves are ubiquitous on busy roads when the traffic density exceeds a critical threshold. So how can we address this problem? Traditional approaches like ramp metering and variable speed limits attempt to manage traffic flow, but they often require costly infrastructure and centralized coordination. A more scalable approach is to use AVs, which can dynamically adjust their driving behavior in real-time. However, simply inserting AVs among human drivers isn’t enough: they must also drive in a smarter way that makes traffic better for everyone, which is where RL comes in.</p>

<p style="text-align: justify; margin-top: 50px;">
    <img src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/fundamental_diagram.png" width="80%" style="display: block; margin: auto" />
    <br />
    <i><b>Fundamental diagram of traffic flow.</b> The number of cars on the road (density) affects how much traffic is moving forward (flow). At low density, adding more cars increases flow because more vehicles can pass through. But beyond a critical threshold, cars start blocking each other, leading to congestion, where adding more cars actually slows down overall movement.</i>
</p>

<h2 id="reinforcement-learning-for-wave-smoothing-avs">Reinforcement learning for wave-smoothing AVs</h2>

<p>RL is a powerful control approach where an agent learns to maximize a reward signal through interactions with an environment. The agent collects experience through trial and error, learns from its mistakes, and improves over time. In our case, the environment is a mixed-autonomy traffic scenario, where AVs learn driving strategies to dampen stop-and-go waves and reduce fuel consumption for both themselves and nearby human-driven vehicles.</p>

<p>Training these RL agents requires fast simulations with realistic traffic dynamics that can replicate highway stop-and-go behavior. To achieve this, we leveraged experimental data collected on Interstate 24 (I-24) near Nashville, Tennessee, and used it to build simulations where vehicles replay highway trajectories, creating unstable traffic that AVs driving behind them learn to smooth out.</p>

<p style="text-align: center; margin-top: 50px;">
    <video autoplay="" muted="" playsinline="" disableRemotePlayback="" loop="" style="width: 100%; margin: 0; padding: 0; outline: none; border: none; background: transparent; display: block; border-radius: 5px" cover="https://bair.berkeley.edu/static/blog/rl_av_smoothing/simulation.png">
        <source src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/simulation.mp4" type="video/mp4" />
    </video>
    <br />
    <i>Simulation replaying a highway trajectory that exhibits several stop-and-go waves.</i>
</p>

<p>We designed the AVs with deployment in mind, ensuring that they can operate using only basic sensor information about themselves and the vehicle in front. The observations consist of the AV’s speed, the speed of the leading vehicle, and the space gap between them. Given these inputs, the RL agent then prescribes either an instantaneous acceleration or a desired speed for the AV. The key advantage of using only these local measurements is that the RL controllers can be deployed on most modern vehicles in a decentralized way, without requiring additional infrastructure.</p>

<h3 id="reward-design">Reward design</h3>

<p>The most challenging part is designing a reward function that, when maximized, aligns with the different objectives that we desire the AVs to achieve:</p>

<ul>
  <li><strong>Wave smoothing:</strong> Reduce stop-and-go oscillations.</li>
  <li><strong>Energy efficiency:</strong> Lower fuel consumption for all vehicles, not just AVs.</li>
  <li><strong>Safety:</strong> Ensure reasonable following distances and avoid abrupt braking.</li>
  <li><strong>Driving comfort:</strong> Avoid aggressive accelerations and decelerations.</li>
  <li><strong>Adherence to human driving norms:</strong> Ensure a “normal” driving behavior that doesn’t make surrounding drivers uncomfortable.</li>
</ul>

<p>Balancing these objectives together is difficult, as suitable coefficients for each term must be found. For instance, if minimizing fuel consumption dominates the reward, RL AVs learn to come to a stop in the middle of the highway because that is energy optimal. To prevent this, we introduced dynamic minimum and maximum gap thresholds to ensure safe and reasonable behavior while optimizing fuel efficiency. We also penalized the fuel consumption of human-driven vehicles behind the AV to discourage it from learning a selfish behavior that optimizes energy savings for the AV at the expense of surrounding traffic. Overall, we aim to strike a balance between energy savings and having a reasonable and safe driving behavior.</p>

<h3 id="simulation-results">Simulation results</h3>

<p style="text-align: center; margin-top: 0;">
    <img src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/gap_thresholds.png" width="80%" />
    <br />
    <i>Illustration of the dynamic minimum and maximum gap thresholds, within which the AV can operate freely to smooth traffic as efficiently as possible.</i>
</p>

<p>The typical behavior learned by the AVs is to maintain slightly larger gaps than human drivers, allowing them to absorb upcoming, possibly abrupt, traffic slowdowns more effectively. In simulation, this approach resulted in significant fuel savings of up to 20% across all road users in the most congested scenarios, with fewer than 5% of AVs on the road. And these AVs don’t have to be special vehicles! They can simply be standard consumer cars equipped with a smart adaptive cruise control (ACC), which is what we tested at scale.</p>

<p style="text-align: justify; margin-top: 50px;">
    <img src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/wave_smoothing.png" width="100%" style="display: block; margin: auto;" />
    <i>
    <b>Smoothing behavior of RL AVs.</b> Red: a human trajectory from the dataset. Blue: successive AVs in the platoon, where AV 1 is the closest behind the human trajectory. There is typically between 20 and 25 human vehicles between AVs. Each AV doesn’t slow down as much or accelerate as fast as its leader, leading to decreasing wave amplitude over time and thus energy savings. 
    </i>
</p>

<h2 id="100-av-field-test-deploying-rl-at-scale">100 AV field test: deploying RL at scale</h2>

<div style="display: flex; justify-content: center; width: 100%; margin-top: 30px;">
    <img src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/parking_lot.png" style="height: 300px; object-fit: cover; width: 50%; border-top-left-radius: 5px; border-bottom-left-radius: 5px;" />
    <img src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/parking_lot_drone.png" style="height: 300px; object-fit: cover; width: 50%; border-top-right-radius: 5px; border-bottom-right-radius: 5px;" />
</div>
<p style="text-align: center; margin-top: 10px;">
    <i style="font-size: 0.9rem;">Our 100 cars parked at our operational center during the experiment week.</i>
</p>

<p>Given the promising simulation results, the natural next step was to bridge the gap from simulation to the highway. We took the trained RL controllers and deployed them on 100 vehicles on the I-24 during peak traffic hours over several days. This large-scale experiment, which we called the MegaVanderTest, is the largest mixed-autonomy traffic-smoothing experiment ever conducted.</p>

<p>Before deploying RL controllers in the field, we trained and evaluated them extensively in simulation and validated them on the hardware. Overall, the steps towards deployment involved:</p>

<ul>
  <li><strong>Training in data-driven simulations:</strong> We used highway traffic data from I-24 to create a training environment with realistic wave dynamics, then validate the trained agent’s performance and robustness in a variety of new traffic scenarios.</li>
  <li><strong>Deployment on hardware:</strong> After being validated in robotics software, the trained controller is uploaded onto the car and is able to control the set speed of the vehicle. We operate through the vehicle’s on-board cruise control, which acts as a lower-level safety controller.</li>
  <li><strong>Modular control framework:</strong> One key challenge during the test was not having access to the leading vehicle information sensors. To overcome this, the RL controller was integrated into a hierarchical system, the MegaController, which combines a speed planner guide that accounts for downstream traffic conditions, with the RL controller as the final decision maker.</li>
  <li><strong>Validation on hardware:</strong> The RL agents were designed to operate in an environment where most vehicles were human-driven, requiring robust policies that adapt to unpredictable behavior. We verify this by driving the RL-controlled vehicles on the road under careful human supervision, making changes to the control based on feedback.</li>
</ul>

<div style="display: flex; justify-content: space-around; width: 100%; margin: 30px 0;">
    <div style="display: flex; flex-direction: column; align-items: center; width: 48%;">
        <img src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/raspberry_pi.png" style="height: 200px; object-fit: cover; width: 100%; border-radius: 5px;" />
        <i style="font-size: 0.9rem; display: block; text-align: center; margin-top: 5px;">Each of the 100 cars is connected to a Raspberry Pi, on which the RL controller (a small neural network) is deployed.</i>
    </div>
    <div style="display: flex; flex-direction: column; align-items: center; width: 48%;">
        <img src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/acc.png" style="height: 200px; object-fit: cover; width: 100%; border-radius: 5px;" />
        <i style="font-size: 0.9rem; display: block; text-align: center; margin-top: 5px;">The RL controller directly controls the onboard adaptive cruise control (ACC) system, setting its speed and desired following distance.</i>
    </div>
</div>

<p>Once validated, the RL controllers were deployed on 100 cars and driven on I-24 during morning rush hour. Surrounding traffic was unaware of the experiment, ensuring unbiased driver behavior. Data was collected during the experiment from dozens of overhead cameras placed along the highway, which led to the extraction of millions of individual vehicle trajectories through a computer vision pipeline. Metrics computed on these trajectories indicate a trend of reduced fuel consumption around AVs, as expected from simulation results and previous smaller validation deployments. For instance, we can observe that the closer people are driving behind our AVs, the less fuel they appear to consume on average (which is calculated using a calibrated energy model):</p>

<p style="text-align: center; margin-top: 0;">
    <img src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/fuel_data.png" width="80%" />
    <br />
    <i>Average fuel consumption as a function of distance behind the nearest engaged RL-controlled AV in the downstream traffic. As human drivers get further away behind AVs, their average fuel consumption increases.</i>
</p>

<p>Another way to measure the impact is to measure the variance of the speeds and accelerations: the lower the variance, the less amplitude the waves should have, which is what we observe from the field test data. Overall, although getting precise measurements from a large amount of camera video data is complicated, we observe a trend of 15 to 20% of energy savings around our controlled cars.</p>

<p style="text-align: center; margin-top: 0;">
    <img src="https://bair.berkeley.edu/static/blog/rl_av_smoothing/data_scatter.png" width="50%" />
    <br />
    <i>Data points from all vehicles on the highway over a single day of the experiment, plotted in speed-acceleration space. The cluster to the left of the red line represents congestion, while the one on the right corresponds to free flow. We observe that the congestion cluster is smaller when AVs are present, as measured by computing the area of a soft convex envelope or by fitting a Gaussian kernel.</i>
</p>

<h2 id="final-thoughts">Final thoughts</h2>

<p>The 100-car field operational test was decentralized, with no explicit cooperation or communication between AVs, reflective of current autonomy deployment, and bringing us one step closer to smoother, more energy-efficient highways. Yet, there is still vast potential for improvement. Scaling up simulations to be faster and more accurate with better human-driving models is crucial for bridging the simulation-to-reality gap. Equipping AVs with additional traffic data, whether through advanced sensors or centralized planning, could further improve the performance of the controllers. For instance, while multi-agent RL is promising for improving cooperative control strategies, it remains an open question how enabling explicit communication between AVs over 5G networks could further improve stability and further mitigate stop-and-go waves. Crucially, our controllers integrate seamlessly with existing adaptive cruise control (ACC) systems, making field deployment feasible at scale. The more vehicles equipped with smart traffic-smoothing control, the fewer waves we’ll see on our roads, meaning less pollution and fuel savings for everyone!</p>

<hr />

<p><i>Many contributors took part in making the MegaVanderTest happen!  The full list is available on the <a href="https://circles-consortium.github.io/" target="_blank">CIRCLES project</a> page, along with more details about the project.</i></p>

<p><i><b>Read more: <a href="https://ieeexplore.ieee.org/document/10858625" target="_blank">[paper]</a></b></i></p> 

<br> 

<http://bair.berkeley.edu/blog/2025/03/25/rl-av-smoothing/>

---

**@Dave Winer's linkblog** (date: 2025-03-25, from: Dave Winer's linkblog)

Stunning Signal leak reveals depths of Trump administration’s loathing of Europe. 

<br> 

<https://www.theguardian.com/world/2025/mar/25/stunning-signal-leak-reveals-depths-of-trump-administrations-loathing-of-europe>

---

## Quoting Greg Kamradt

date: 2025-03-25, updated: 2025-03-25, from: Simon Willison’s Weblog

<blockquote cite="https://arcprize.org/blog/announcing-arc-agi-2-and-arc-prize-2025"><p>Today we’re excited to launch ARC-AGI-2 to challenge the new frontier. ARC-AGI-2 is even harder for AI (in particular, AI reasoning systems), while maintaining the same relative ease for humans. Pure LLMs score 0% on ARC-AGI-2, and public AI reasoning systems achieve only single-digit percentage scores. In contrast, every task in ARC-AGI-2 has been solved by at least 2 humans in under 2 attempts. [...]</p>
<p>All other AI benchmarks focus on superhuman capabilities or specialized knowledge by testing "PhD++" skills. ARC-AGI is the only benchmark that takes the opposite design choice – by focusing on tasks that are relatively easy for humans, yet hard, or impossible, for AI, we shine a spotlight on capability gaps that do not spontaneously emerge from "scaling up".</p></blockquote>
<p class="cite">&mdash; <a href="https://arcprize.org/blog/announcing-arc-agi-2-and-arc-prize-2025">Greg Kamradt</a>, ARC-AGI-2</p>

    <p>Tags: <a href="https://simonwillison.net/tags/evals">evals</a>, <a href="https://simonwillison.net/tags/ai">ai</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/25/greg-kamradt/#atom-everything>

---

## Greenlandia

date: 2025-03-25, updated: 2025-03-25, from: Tedium site

What does popular culture look like when you’re in the Arctic, thousands of miles away from any major population centers? Let’s talk about Greenland and pop culture. 

<br> 

<https://feed.tedium.co/link/15204/16990992/greenland-popular-culture>

---

## shot-scraper 1.8

date: 2025-03-25, updated: 2025-03-25, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/simonw/shot-scraper/releases/tag/1.8">shot-scraper 1.8</a></strong></p>
I've added a new feature to <a href="https://shot-scraper.datasette.io/">shot-scraper</a> that makes it easier to share scripts for other people to use with the <a href="">shot-scraper javascript</a> command.</p>
<p><code>shot-scraper javascript</code> lets you load up a web page in an invisible Chrome browser (via Playwright), execute some JavaScript against that page and output the results to your terminal. It's a fun way of running complex screen-scraping routines as part of a terminal session, or even chained together with other commands using pipes.</p>
<p>The <code>-i/--input</code> option lets you load that JavaScript from a file on disk - but now you can also use a <code>gh:</code> prefix to specify loading code from GitHub instead.</p>
<p>To quote <a href="https://github.com/simonw/shot-scraper/releases/tag/1.8">the release notes</a>:</p>
<blockquote>
<p><code>shot-scraper javascript</code> can now optionally <a href="https://shot-scraper.datasette.io/en/stable/javascript.html#running-javascript-from-github">load scripts hosted on GitHub</a> via the new <code>gh:</code> prefix to the <code>shot-scraper javascript -i/--input</code> option. <a href="https://github.com/simonw/shot-scraper/issues/173">#173</a></p>
<p>Scripts can be referenced as <code>gh:username/repo/path/to/script.js</code> or, if the GitHub user has created a dedicated <code>shot-scraper-scripts</code> repository and placed scripts in the root of it, using <code>gh:username/name-of-script</code>.</p>
<p>For example, to run this <a href="https://github.com/simonw/shot-scraper-scripts/blob/main/readability.js">readability.js</a> script against any web page you can use the following:</p>
<pre><code>shot-scraper javascript --input gh:simonw/readability \
  https://simonwillison.net/2025/Mar/24/qwen25-vl-32b/
</code></pre>
</blockquote>
<p>The <a href="https://gist.github.com/simonw/60e196ec39a5a75dcabfd75fbe911a4c">output from that example</a> starts like this:</p>
<div class="highlight highlight-source-json"><pre>{
    <span class="pl-ent">"title"</span>: <span class="pl-s"><span class="pl-pds">"</span>Qwen2.5-VL-32B: Smarter and Lighter<span class="pl-pds">"</span></span>,
    <span class="pl-ent">"byline"</span>: <span class="pl-s"><span class="pl-pds">"</span>Simon Willison<span class="pl-pds">"</span></span>,
    <span class="pl-ent">"dir"</span>: <span class="pl-c1">null</span>,
    <span class="pl-ent">"lang"</span>: <span class="pl-s"><span class="pl-pds">"</span>en-gb<span class="pl-pds">"</span></span>,
    <span class="pl-ent">"content"</span>: <span class="pl-s"><span class="pl-pds">"</span>&lt;div id=<span class="pl-cce">\"</span>readability-page-1<span class="pl-cce">\"...</span></pre></div>

<p>My <a href="https://github.com/simonw/shot-scraper-scripts">simonw/shot-scraper-scripts</a> repo only has that one file in it so far, but I'm looking forward to growing that collection and hopefully seeing other people create and share their own <code>shot-scraper-scripts</code> repos as well.</p>
<p>This feature is an imitation of <a href="https://github.com/simonw/llm/issues/809">a similar feature</a> that's coming in the next release of LLM.


    <p>Tags: <a href="https://simonwillison.net/tags/playwright">playwright</a>, <a href="https://simonwillison.net/tags/shot-scraper">shot-scraper</a>, <a href="https://simonwillison.net/tags/scraping">scraping</a>, <a href="https://simonwillison.net/tags/javascript">javascript</a>, <a href="https://simonwillison.net/tags/projects">projects</a>, <a href="https://simonwillison.net/tags/github">github</a>, <a href="https://simonwillison.net/tags/annotated-release-notes">annotated-release-notes</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/25/shot-scraper/#atom-everything>

---

## microsoft/playwright-mcp

date: 2025-03-25, updated: 2025-03-25, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/microsoft/playwright-mcp">microsoft/playwright-mcp</a></strong></p>
The Playwright team at Microsoft have released an MCP (<a href="https://github.com/microsoft/playwright-mcp">Model Context Protocol</a>) server wrapping Playwright, and it's pretty fascinating.</p>
<p>They implemented it on top of the Chrome accessibility tree, so MCP clients (such as the Claude Desktop app) can use it to drive an automated browser and use the accessibility tree to read and navigate pages that they visit.</p>
<p>Trying it out is quite easy if you have Claude Desktop and Node.js installed already. Edit your <code>claude_desktop_config.json</code> file:</p>
<pre><code>code ~/Library/Application\ Support/Claude/claude_desktop_config.json
</code></pre>
<p>And add this:</p>
<div class="highlight highlight-source-json"><pre>{
  <span class="pl-ent">"mcpServers"</span>: {
    <span class="pl-ent">"playwright"</span>: {
      <span class="pl-ent">"command"</span>: <span class="pl-s"><span class="pl-pds">"</span>npx<span class="pl-pds">"</span></span>,
      <span class="pl-ent">"args"</span>: [
        <span class="pl-s"><span class="pl-pds">"</span>@playwright/mcp@latest<span class="pl-pds">"</span></span>
      ]
    }
  }
}</pre></div>

<p>Now when you launch Claude Desktop various new browser automation tools will be available to it, and you can tell Claude to navigate to a website and interact with it.</p>
<p><img alt="Screenshot of Claude interface showing a conversation about Datasette. The interface shows Claude responding to a user (SW) after navigating to datasette.io. Claude's response includes page details (URL: https://datasette.io/, Title: Datasette: An open source multi-tool for exploring and publishing data) and a summary of what's visible on the site: a description of Datasette as an open-source tool for exploring and publishing data, the tagline &quot;Find stories in data&quot;, navigation options, and features including exploratory data analysis, instant data publishing, and rapid prototyping." src="https://static.simonwillison.net/static/2025/claude-playwright.jpg" /></p>
<p>I ran the following to get a list of the available tools:</p>
<pre><code>cd /tmp
git clone https://github.com/microsoft/playwright-mcp
cd playwright-mcp/src/tools
files-to-prompt . | llm -m claude-3.7-sonnet \
  'Output a detailed description of these tools'
</code></pre>
<p>The <a href="https://gist.github.com/simonw/69200999149221c549c1f62e7befa20f">full output is here</a>, but here's the truncated tool list:</p>
<blockquote>
<h4>Navigation Tools (<code>common.ts</code>)</h4>
<ul>
<li><strong>browser_navigate</strong>: Navigate to a specific URL</li>
<li><strong>browser_go_back</strong>: Navigate back in browser history</li>
<li><strong>browser_go_forward</strong>: Navigate forward in browser history</li>
<li><strong>browser_wait</strong>: Wait for a specified time in seconds</li>
<li><strong>browser_press_key</strong>: Press a keyboard key</li>
<li><strong>browser_save_as_pdf</strong>: Save current page as PDF</li>
<li><strong>browser_close</strong>: Close the current page</li>
</ul>
<h4>Screenshot and Mouse Tools (<code>screenshot.ts</code>)</h4>
<ul>
<li><strong>browser_screenshot</strong>: Take a screenshot of the current page</li>
<li><strong>browser_move_mouse</strong>: Move mouse to specific coordinates</li>
<li><strong>browser_click</strong> (coordinate-based): Click at specific x,y coordinates</li>
<li><strong>browser_drag</strong> (coordinate-based): Drag mouse from one position to another</li>
<li><strong>browser_type</strong> (keyboard): Type text and optionally submit</li>
</ul>
<h4>Accessibility Snapshot Tools (<code>snapshot.ts</code>)</h4>
<ul>
<li><strong>browser_snapshot</strong>: Capture accessibility structure of the page</li>
<li><strong>browser_click</strong> (element-based): Click on a specific element using accessibility reference</li>
<li><strong>browser_drag</strong> (element-based): Drag between two elements</li>
<li><strong>browser_hover</strong>: Hover over an element</li>
<li><strong>browser_type</strong> (element-based): Type text into a specific element</li>
</ul>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/playwright">playwright</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/claude">claude</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llm-tool-use">llm-tool-use</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/25/playwright-mcp/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-25, from: Dave Winer's linkblog)

I want natural language text macros in ChatGPT. I would devise a macro that turned random text I wrote online into a properly formatted blog post. 

<br> 

<http://scripting.com/2025/03/24.html#a134133>

---

**@Dave Winer's linkblog** (date: 2025-03-25, from: Dave Winer's linkblog)

Why can’t the Dems run ads like this. 

<br> 

<https://m.youtube.com/watch?v=yR8Wj5MXaS4>

---

## Marginalia Search receives second nlnet grant

date: 2025-03-25, from: Marginallia log

I&rsquo;m happy and grateful to announce that the Marginalia Search project has been accepted for a second nlnet grant.
All the details are not yet finalized, but tentatively the grant will go toward addressing most of the items in the project roadmap for 2025.
I&rsquo;ve already been working full time on the project since summer 2023, and this grant secures additional development time, and extends the runway to a comfortable degree. 

<br> 

<https://www.marginalia.nu/log/a_116_grant_2.0/>

---

## Introducing GovArchive.us & Mirroring Entire Sites with Web Archives

date: 2025-03-25, from: Web Recorder

Introducing GovArchive.us and tooling to mirror web sites using web archives. 

<br> 

<https://webrecorder.net/blog/2025-03-25-govarchive-us-and-mirroring-sites-with-web-archives/>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

Columbia Faculty Protests as Trump Officials Hail University Concessions. 

<br> 

<https://www.nytimes.com/2025/03/24/nyregion/columbia-trump-response.html?unlocked_article_code=1.6U4.rQDD.RcjReDRJAVfD&smid=url-share>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

Hillary Clinton: “You have got to be kidding me.” 

<br> 

<https://www.threads.net/@hillaryclinton/post/DHmE6l7xQnw>

---

## Qwen2.5-VL-32B: Smarter and Lighter

date: 2025-03-24, updated: 2025-03-24, from: Simon Willison’s Weblog

<p><strong><a href="https://qwenlm.github.io/blog/qwen2.5-vl-32b/">Qwen2.5-VL-32B: Smarter and Lighter</a></strong></p>
The second big open weight LLM release from China today - the first being <a href="https://simonwillison.net/2025/Mar/24/deepseek/">DeepSeek v3-0324</a>.</p>
<p>Qwen's previous vision model was Qwen2.5 VL, <a href="https://simonwillison.net/2025/Jan/27/qwen25-vl-qwen25-vl-qwen25-vl/">released in January</a> in 3B, 7B and 72B sizes.</p>
<p>Today's Apache 2.0 licensed release is a 32B model, which is quickly becoming my personal favourite model size - large enough to have GPT-4-class capabilities, but small enough that on my 64GB Mac there's still enough RAM for me to run other memory-hungry applications like Firefox and VS Code.</p>
<p>Qwen claim that the new model (when compared to their previous 2.5 VL family) can "align more closely with human preferences", is better at "mathematical reasoning" and provides "enhanced accuracy and detailed analysis in tasks such as image parsing, content recognition, and visual logic deduction".</p>
<p>They also offer some presumably carefully selected benchmark results showing it out-performing Gemma 3-27B, Mistral Small 3.1 24B and GPT-4o-0513 (there have been two more recent GPT-4o releases since that one, 2024-08-16 and 2024-11-20).</p>
<p>As usual, Prince Canuma had MLX versions of the models live within hours of the release, in <a href="https://huggingface.co/mlx-community/Qwen2.5-VL-32B-Instruct-4bit">4 bit</a>, <a href="https://huggingface.co/mlx-community/Qwen2.5-VL-32B-Instruct-6bit">6 bit</a>, <a href="https://huggingface.co/mlx-community/Qwen2.5-VL-32B-Instruct-8bit">8 bit</a>, and <a href="https://huggingface.co/mlx-community/Qwen2.5-VL-32B-Instruct-bf16">bf16</a> variants.</p>
<p>I ran the 4bit version (a 18GB model download) using <code>uv</code> and Prince's <a href="https://github.com/Blaizzy/mlx-vlm">mlx-vlm</a> like this:</p>
<div class="highlight highlight-source-shell"><pre>uv run --with <span class="pl-s"><span class="pl-pds">'</span>numpy&lt;2<span class="pl-pds">'</span></span> --with mlx-vlm \
  python -m mlx_vlm.generate \
    --model mlx-community/Qwen2.5-VL-32B-Instruct-4bit \
    --max-tokens 1000 \
    --temperature 0.0 \
    --prompt <span class="pl-s"><span class="pl-pds">"</span>Describe this image.<span class="pl-pds">"</span></span> \
    --image Mpaboundrycdfw-1.png</pre></div>

<p>Here's the image:</p>
<p><img alt="A map image, described below" src="https://static.simonwillison.net/static/2025/Mpaboundrycdfw-1.png" /></p>
<p>And here's the resulting description, which I found to be <em>very</em> impressive:</p>
<blockquote>
<p>This image appears to be a map highlighting specific areas along the coastline, likely in California, based on the geographical features and place names. Here is a detailed description of the image:</p>
<ol>
<li>
<p><strong>Geographic Features</strong>:</p>
<ul>
<li>The map shows a section of the coastline, with land on the right and the sea on the left.</li>
<li>The land area includes parts of SanMateo County, as noted in the top-right corner.</li>
<li>The coastline features several named locations, including:
<ul>
<li><strong>Point Montara</strong></li>
<li><strong>Pillar Point</strong></li>
<li><strong>Kings Rock</strong></li>
<li><strong>VicenteCreek</strong></li>
<li><strong>DennistonCreek</strong></li>
<li><strong>State Beach</strong></li>
</ul>
</li>
</ul>
</li>
<li>
<p><strong>Highlighted Areas</strong>:</p>
<ul>
<li>The map contains two distinct areas marked with different colors:
<ul>
<li>
<strong>Red Area (Top Section)</strong>
<ul>
<li>Labeled as "MONTARA" and "MONTARA M R" (possibly referring to a "Marine Reserves" or similar protected area).</li>
<li>This area is marked with a dark red color and extends from the coastline inland.</li>
</ul>
</li>
<li>
<strong>Blue Area (Bottom Section)</strong>
<ul>
<li>Labeled as "PILLAR" and "PILLAR P O I N T" along with "SMCA" (Special Management Area).</li>
<li>This area is marked with a blue color and is located closer to the coastline, including the area around "Pillar Point."</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
<li>
<p><strong>Depth Contours</strong>:</p>
<ul>
<li>The map includes depth markings in the sea, indicating the bathymetrical features:
<ul>
<li>
<strong>20 fathom (fm) line</strong> is marked in the upper-left part of the sea.</li>
<li>
<strong>10 fathom (fm) line</strong> is marked closer to the coastline.</li>
<li>
<strong>30 fathom (fm) line</strong> is marked further out to sea.</li>
</ul>
</li>
</ul>
</li>
<li>
<p><strong>Other Features</strong>:</p>
<ul>
<li>
<strong>State Beach</strong>: Marked near the top-right, indicating a protected recreational area.</li>
<li>
<strong>Kings Rock</strong>: A prominent feature near the coastline, likely a rocky outcropping.</li>
<li>
<strong>Creeks</strong>: The map shows several creeks, including <strong>VicenteCreek</strong> and <strong>DennistonCreek</strong>, which flow into the sea.</li>
</ul>
</li>
<li>
<p><strong>Protected Areas</strong>:</p>
<ul>
<li>The map highlights specific protected areas:
<ul>
<li>
<strong>Marine Reserves</strong>:
<ul>
<li>"MONTARA M R" (Marine Reserves) in red.</li>
</ul>
</li>
<li>
<strong>Special Management Area (SMCA)</strong>
<ul>
<li>"PILLAR P O I N T" in blue, indicating a Special Management Area.</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
<li>
<p><strong>Grid and Coordinates</strong>:</p>
<ul>
<li>The map includes a grid with latitude and longitude markings:
<ul>
<li>Latitude ranges from approximately 37°25'N to 37°35'N.</li>
<li>Longitude ranges from approximately 122°22.5'W to 122°35.5'W.</li>
</ul>
</li>
</ul>
</li>
<li>
<p><strong>Topography</strong>:</p>
<ul>
<li>The land area shows topographic features, including elevations and vegetation, with green areas indicating higher elevations or vegetated land.</li>
</ul>
</li>
<li>
<p><strong>Other Labels</strong>:</p>
<ul>
<li>
<strong>"SMR"</strong>: Likely stands for "State Managed Reserves."</li>
<li>
<strong>"SMCA"</strong>: Likely stands for "Special Management Control Area."</li>
</ul>
</li>
</ol>
<p>In summary, this map highlights specific protected areas along the coastline, including a red "Marine Reserves" area and a blue "Special Management Area" near "Pillar Point." The map also includes depth markings, geographical features, and place names, providing a detailed view of the region's natural and protected areas.</p>
</blockquote>

<p>It included the following runtime statistics:</p>
<pre><code>Prompt: 1051 tokens, 111.985 tokens-per-sec
Generation: 760 tokens, 17.328 tokens-per-sec
Peak memory: 21.110 GB
</code></pre>


    <p>Tags: <a href="https://simonwillison.net/tags/vision-llms">vision-llms</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/qwen">qwen</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/uv">uv</a>, <a href="https://simonwillison.net/tags/mlx">mlx</a>, <a href="https://simonwillison.net/tags/prince-canuma">prince-canuma</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/24/qwen25-vl-32b/#atom-everything>

---

**@Feed for Alt USDS** (date: 2025-03-24, from: Feed for Alt USDS)

DOGE isn’t fixing government inefficiency—it’s making it worse. Slashing budgets without strategy leads to disaster (Flint water crisis, anyone?). Real reform requires a scalpel, not an axe (or chainsaw). ✂️⚖️ 

🔗 : https://www.wethebuilders.org/posts/fire-aim-ready

#altUSDS #SmartReform #EfficiencyDoneRight 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ll5q47fjsx2g>

---

## Asahi Linux adds microphone support for MacBooks with Apple Silicon

date: 2025-03-24, from: Liliputing

<p>The Asahi Linux project has done a lot of work over the past few years to allow users to install and run Linux on recent Macs with Apple Silicon processors. But while most features are already working (including displays, graphics drivers, USB and wireless ports, and cameras), there are others that have long been considered [&#8230;]</p>
<p>The post <a href="https://liliputing.com/asahi-linux-adds-microphone-support-for-macbooks-with-apple-silicon/">Asahi Linux adds microphone support for MacBooks with Apple Silicon</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/asahi-linux-adds-microphone-support-for-macbooks-with-apple-silicon/>

---

**@Robert's feed at BlueSky** (date: 2025-03-24, from: Robert's feed at BlueSky)

I missed this one from a few days ago but it is welcome news.  https://www.riscository.com/2025/pinboard-2-07-iris-1-031-risc-os-developments/ 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3ll5ntukivk2v>

---

**@Robert's feed at BlueSky** (date: 2025-03-24, from: Robert's feed at BlueSky)

Interesting development in the RISC OS community. http://riscository.com/2025/pi5-comes-to-rcis-hydra-and-next?utm_source=pocket_shared 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3ll5nqlkyyk2v>

---

## Fantastical 4.0.7

date: 2025-03-24, from: Michael Tsai

Flexibits: Multiple Windows! See your schedule from different views or dates at the same time. Open new windows at File &#62; New Window Finally. The main use case for me is to compare the same month for different years. I have been doing this by opening one of them using the macOS Calendar app, but [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/24/fantastical-4-0-7/>

---

## Google Maps Timeline Data Loss

date: 2025-03-24, from: Michael Tsai

Simon Sharwood: Over the weekend, users noticed their Timelines went missing.Google seems to have noticed, too, as The Register has seen multiple social media posts in which Timelines users share an email from the search and ads giant in which it admits &#8220;We briefly experienced a technical issue that caused the deletion of Timeline data [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/24/google-maps-timeline-data-loss/>

---

## Tim, Don’t Kill My Vibe

date: 2025-03-24, from: Michael Tsai

Bryan Irace: It&#8217;s one thing for Apple&#8217;s AI product offerings to be non-competitive. Perhaps even worse is that as Apple stands still, software development is moving forward faster than ever before. Like it or not, LLMs&#8212;both through general chat interfaces and purpose-built developer tools&#8212;have meaningfully increased the rate at which new software can be produced. [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/24/tim-dont-kill-my-vibe/>

---

## Mobile App Revenue in 2025

date: 2025-03-24, from: Michael Tsai

Scharon Harding (Hacker News): If you&#8217;re frustrated by some of your favorite apps pestering you to sign up for a subscription, some new data may help you empathize with their developers more. According to revenue data from &#8220;over 75,000" mobile apps, the vast majority have a hard time making $1,000 per month.The data is detailed [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/03/24/mobile-app-revenue-in-2025/>

---

**@Robert's feed at BlueSky** (date: 2025-03-24, from: Robert's feed at BlueSky)

This is sadly both troubling and familiar https://www.hawaiitribune-herald.com/2025/03/24/nation-world-news/government-science-data-may-soon-be-hidden-theyre-racing-to-copy-it/ 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3ll5le7aujk2c>

---

**@Robert's feed at BlueSky** (date: 2025-03-24, from: Robert's feed at BlueSky)

Will corporations be held accountable? https://smist08.wordpress.com/2025/03/21/facebook-pirated-my-books/ 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3ll5kzhheoc2c>

---

**@Robert's feed at BlueSky** (date: 2025-03-24, from: Robert's feed at BlueSky)

Food for thought

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3ll5knbcj2c2c>

---

## Applix Alis

date: 2025-03-24, from: Computer ads from the Past

Finally, some answers in Wonderland 

<br> 

<https://computeradsfromthepast.substack.com/p/applix-alis>

---

## Viral Audio of JD Vance Badmouthing Elon Musk Is Fake, Just the Tip of the AI Iceberg

date: 2025-03-24, from: 404 Media Group

AI-generated audio of Vance saying Musk is “cosplaying as a great American leader” has been played more than 2 million times on TikTok alone.  

<br> 

<https://www.404media.co/viral-audio-of-jd-vance-badmouthing-elon-musk-is-fake-just-the-tip-of-the-ai-iceberg/>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

The Atlantic‘s Jeffrey Goldberg revealed that he had accidentally been added to a Signal group chat in which the Principals Committee – the heads of the top American national security agencies — debated how and whether to strike the Houthis earlier this month 

<br> 

<https://www.mediaite.com/news/jd-vance-criticizes-trump-in-leaked-war-plans-group-chat-not-sure-the-president-is-aware-how-inconsistent-this-is/>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

Infinite Mac can now run early Mac OS X, with 10.1 and 10.3 being the best supported versions. It’s not particularly snappy. 

<br> 

<https://blog.persistent.info/2025/03/infinite-mac-os-x.html>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

Tax revenue could drop by $500 billion amid turmoil at IRS. 

<br> 

<https://wapo.st/4hJqhh0>

---

## Announcing Bacalhau 1.7.0: Empowering Enterprises with Enhanced Scalability, Job Management, and Support

date: 2025-03-24, from: Bacalhau Blog

(5:35) Bacalhau v1.7.0 makes distributed computing easier with new licensing, partitioned jobs, and simplified authentication. 

<br> 

<https://blog.bacalhau.org/p/announcing-bacalhau-17-empowering>

---

**@IIIF Mastodon feed** (date: 2025-03-24, from: IIIF Mastodon feed)

<p>There are still a few spots left for next week&#39;s IIIF Online Training!</p><p>No prior knowledge of <a href="https://glammr.us/tags/IIIF" class="mention hashtag" rel="tag">#<span>IIIF</span></a> is required. By the end, participants will have completed a small IIIF project, which they will demo for the group at the final meeting.</p><p>Register on Eventbrite: <a href="https://www.eventbrite.com/e/march-2025-iiif-online-training-5-day-course-tickets-1140969814429?aff=LinkedinMar" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://www.</span><span class="ellipsis">eventbrite.com/e/march-2025-ii</span><span class="invisible">if-online-training-5-day-course-tickets-1140969814429?aff=LinkedinMar</span></a></p> 

<br> 

<https://glammr.us/@IIIF/114218285393109661>

---

## Micro Journal Rev.7 is a DIY portable typewriter with an E Ink display

date: 2025-03-24, from: Liliputing

<p>The Micro Journal Rev.7 is a distraction-free writing device with a 4.76 inch E Ink display, a mechanical keyboard, and a design meant for typing and not much else. It&#8217;s the latest in a line of Micro Journal devices from developer Un Kyu Lee, but it&#8217;s the first to feature a paper-like E Ink display and [&#8230;]</p>
<p>The post <a href="https://liliputing.com/micro-journal-rev-7-is-a-diy-portable-typewriter-with-an-e-ink-display/">Micro Journal Rev.7 is a DIY portable typewriter with an E Ink display</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/micro-journal-rev-7-is-a-diy-portable-typewriter-with-an-e-ink-display/>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

JD Vance in 2021: Stop Treating Left-Wing Advocacy Groups Like Charities. 

<br> 

<https://www.newsweek.com/stop-treating-left-wing-advocacy-groups-like-charities-opinion-1637733>

---

## This modular Ryzen 7 8845HS mini PC fits atop a storage & I/O docking station

date: 2025-03-24, from: Liliputing

<p>The Ninkear MBOX 8 Pro is a mini PC with an AMD Ryzen 7 8845HS processor and plenty of ports that offer support for up to three displays and two wired network connections (thanks to 2.5 GbE and Gigabit Ethernet ports). What makes this mini PC unusual though is a modular design that basically splits the [&#8230;]</p>
<p>The post <a href="https://liliputing.com/this-modular-ryzen-7-8845hs-mini-pc-fits-atop-a-storage-i-o-docking-station/">This modular Ryzen 7 8845HS mini PC fits atop a storage &#038; I/O docking station</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/this-modular-ryzen-7-8845hs-mini-pc-fits-atop-a-storage-i-o-docking-station/>

---

## deepseek-ai/DeepSeek-V3-0324

date: 2025-03-24, updated: 2025-03-24, from: Simon Willison’s Weblog

<p><strong><a href="https://huggingface.co/deepseek-ai/DeepSeek-V3-0324">deepseek-ai/DeepSeek-V3-0324</a></strong></p>
Chinese AI lab DeepSeek just released the latest version of their enormous DeepSeek v3 model, baking the release date into the name <code>DeepSeek-V3-0324</code>.</p>
<p>The license is MIT (that's new - previous DeepSeek v3 had a custom license), the README is empty and the release adds up a to a total of 641 GB of files, mostly of the form <code>model-00035-of-000163.safetensors</code>.</p>
<p>The model only came out a few hours ago and MLX developer Awni Hannun already <a href="https://twitter.com/awnihannun/status/1904177084609827054">has it running</a> at &gt;20 tokens/second on a 512GB M3 Ultra Mac Studio ($9,499 of ostensibly consumer-grade hardware) via <a href="https://pypi.org/project/mlx-lm/">mlx-lm</a> and this <a href="https://huggingface.co/mlx-community/DeepSeek-V3-0324-4bit">mlx-community/DeepSeek-V3-0324-4bit</a> 4bit quantization, which reduces the on-disk size to 352 GB.</p>
<p>I think that means if you have that machine you can run it with my <a href="https://github.com/simonw/llm-mlx">llm-mlx</a> plugin like this, but I've not tried myself!</p>
<pre><code>llm mlx download-model mlx-community/DeepSeek-V3-0324-4bit
llm chat -m mlx-community/DeepSeek-V3-0324-4bit
</code></pre>
<p>The new model is also <a href="https://openrouter.ai/deepseek/deepseek-chat-v3-0324:free">listed on OpenRouter</a>. You can try a chat at <a href="https://openrouter.ai/chat?models=deepseek/deepseek-chat-v3-0324:free">openrouter.ai/chat?models=deepseek/deepseek-chat-v3-0324:free</a>.</p>
<p>Here's what the chat interface <a href="https://gist.github.com/simonw/3ce2bf5836743dfaf07d994578b261ba">gave me</a> for "Generate an SVG of a pelican riding a bicycle":</p>
<p><img alt="There's a pelican, and a bicycle, but both of them look disassembled." src="https://static.simonwillison.net/static/2025/deepseek-v3-pelican.jpg" /></p>
<p>I have two API keys with OpenRouter - one of them worked with the model, the other gave me a <code>No endpoints found matching your data policy</code> error - I think because I had a setting on that key disallowing models from training on my activity. The key that worked was a free key with no attached billing credentials.</p>
<p>For my working API key the <a href="https://github.com/simonw/llm-openrouter">llm-openrouter</a> plugin let me run a prompt like this:</p>
<pre><code>llm install llm-openrouter
llm keys set openrouter
# Paste key here
llm -m openrouter/deepseek/deepseek-chat-v3-0324:free "best fact about a pelican"
</code></pre>
<p>Here's that "best fact" - the terminal output included Markdown and an emoji combo, here that's rendered.</p>
<blockquote>
<p>One of the most fascinating facts about pelicans is their <strong>unique throat pouch</strong>, called a <strong>gular sac</strong>, which can hold up to <strong>3 gallons (11 liters) of water</strong>—three times more than their stomach!  </p>
<p>Here’s why it’s amazing:<br />
- <strong>Fishing Tool</strong>: They use it like a net to scoop up fish, then drain the water before swallowing.<br />
- <strong>Cooling Mechanism</strong>: On hot days, pelicans flutter the pouch to stay cool by evaporating water.<br />
- <strong>Built-in "Shopping Cart"</strong>: Some species even use it to carry food back to their chicks.  </p>
<p>Bonus fact: Pelicans often <strong>fish cooperatively</strong>, herding fish into shallow water for an easy catch.  </p>
<p>Would you like more cool pelican facts? 🐦🌊</p>
</blockquote>
<p>In putting this post together I <a href="https://claude.ai/share/fc65bf9b-ae2d-4b23-bd09-ed0d54ff4b56">got Claude</a> to build me <a href="https://tools.simonwillison.net/huggingface-storage">this new tool</a> for finding the total on-disk size of a Hugging Face repository, which is available in their API but not currently displayed on their website.</p>
<p><strong>Update</strong>: Here's a notable independent benchmark <a href="https://twitter.com/paulgauthier/status/1904304052500148423">from Paul Gauthier</a>:</p>
<blockquote>
<p>DeepSeek's new V3 scored 55% on aider's <a href="https://aider.chat/docs/leaderboards/">polyglot benchmark</a>, significantly improving over the prior version. It's the #2 non-thinking/reasoning model, behind only Sonnet 3.7. V3 is competitive with thinking models like R1 &amp; o3-mini.</p>
</blockquote>


    <p>Tags: <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/hugging-face">hugging-face</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/deepseek">deepseek</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/mlx">mlx</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/tools">tools</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/24/deepseek/#atom-everything>

---

## DNA of 15 Million People for Sale in 23andMe Bankruptcy

date: 2025-03-24, from: 404 Media Group

There is no way to know what a buyer will want to do with the reams of genetic information it has collected. Customers, meanwhile, still have no way to change their underlying genetic data. 

<br> 

<https://www.404media.co/dna-of-15-million-people-for-sale-in-23andme-bankruptcy/>

---

## Tesla Owner Doxing Site ‘Dogequest’ Relaunches on Dark Web

date: 2025-03-24, from: 404 Media Group

Last week 404 Media reported a website called ‘Dogequest’ was doxing Tesla owners. The site administrators appear to have launched a clone of the interactive map on the dark web too. 

<br> 

<https://www.404media.co/tesla-owner-doxing-site-dogequest-relaunches-on-dark-web-2/>

---

## ChatGPT Makes a Murderer

date: 2025-03-24, updated: 2025-03-24, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/03/24/chatgpt-makes-a-murderer/>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

Universities Gave Us the iPhone, the Jet Engine and Gatorade. We’re Tossing That Away. 

<br> 

<https://www.nytimes.com/2025/03/24/opinion/universities-inventions-funding.html?unlocked_article_code=1.6U4.WymR.riZ0dg520yHw&smid=url-share>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

CS For All or All for CS? - 

<br> 

<https://cestlaz.zamansky.net/posts/cs-for-all-or-all-for-cs/>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

Why are other universities silent in condemning Trump’s attacks on Columbia? 

<br> 

<https://www.theguardian.com/commentisfree/2025/mar/24/us-universities-trump-columbia>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

Social Security: A Time for Outrage 

<br> 

<https://paulkrugman.substack.com/p/social-security-a-time-for-outrage?publication_id=277517&post_id=159681023&isFreemail=true&r=w33x&triedRedirect=true>

---

## Social Security: A Time for Outrage

date: 2025-03-24, from: Paul Krugman

Trump&#8217;s policies attack his own base &#8212; but who will tell them? 

<br> 

<https://paulkrugman.substack.com/p/social-security-a-time-for-outrage>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

Sandwiches in NYC have become enormous and too big to eat. 

<br> 

<https://gothamist.com/arts-entertainment/sandwiches-in-nyc-have-become-enormous-and-too-big-to-eat-so-i-tried-some>

---

## Mozilla Foundation Calls on Tech Industry to Block ICE Contractor

date: 2025-03-24, from: 404 Media Group

The Mozilla Foundation says 30 companies should block web scrapers from ShadowDragon, an ICE contractor. 

<br> 

<https://www.404media.co/mozilla-foundation-calls-on-tech-industry-to-block-ice-contractor/>

---

## Why I recommend against Brave

date: 2025-03-24, from: Libre News

<p>If you are keen on personal privacy, you might have come across Brave Browser. Brave is a Chromium-based browser that promises to deliver privacy with built-in ad-blocking and content-blocking protection. It also offers several quality-of-life features and services, like a VPN and Tor access. I mean, it&apos;s even</p> 

<br> 

<https://thelibre.news/no-really-dont-use-brave/>

---

## Raspberry Pi PoE+ Injector on sale now at $25

date: 2025-03-24, from: Raspberry Pi News (.com)

<p>Introducing the Raspberry Pi PoE+ Injector: the perfect way to add PoE support to your existing network.</p>
<p>The post <a href="https://www.raspberrypi.com/news/raspberry-pi-poe-injector-on-sale-now-at-25/">Raspberry Pi PoE+ Injector on sale now at $25</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/raspberry-pi-poe-injector-on-sale-now-at-25/>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

Let&#39;s stop being surprised. 

<br> 

<https://viehumaniste.wordpress.com/2025/03/23/aggressiveness-a-maga-pre-planned-technique-lets-learn/>

---

**@Dave Winer's linkblog** (date: 2025-03-24, from: Dave Winer's linkblog)

Is it safe to travel to the United States with your phone right now? 

<br> 

<https://www.theverge.com/policy/634264/customs-border-protection-search-phone-airport-rights>

---

## Could whales be a solution to climate change? Probably only a very small one.

date: 2025-03-24, from: Hannah Richie at Substack

The numbers don&#8217;t live up to some of the hype. 

<br> 

<https://www.sustainabilitybynumbers.com/p/whale-carbon-capture>

---

## On This Night in 2003, the Fifth Night of the Iraq War, We Won the Oscar.

date: 2025-03-24, from: Michael Moore's blog

Watch below to see what happened... 

<br> 

<https://www.michaelmoore.com/p/on-this-night-in-2003-the-fifth-night>

---

## Join me at the Tesla Protests on Saturday

date: 2025-03-24, from: Peter Warden

I&#8217;ve been writing this blog for nineteen years, and in over 1,100 posts I&#8217;ve never once brought up politics, but I can&#8217;t ignore what&#8217;s happening in our country. We&#8217;re facing such a profound crisis right now in the US that not speaking up at this point would be breaking the oath I took in 2014, [&#8230;] 

<br> 

<https://petewarden.com/2025/03/24/join-me-at-the-tesla-protests-on-saturday/>

---

## 550. The Road to 1066: Rise of the Normans (Part 3)

date: 2025-03-24, from: This is history podcast

<p>Born into a world of treachery, violence and death, William of Normandy defied all expectations, forging a legacy that lasts to this day. Born out of wedlock and dismissed as an upstart, he was originally known as William the Bastard. Inheriting the Duchy of Normandy at just eight years old, William was faced with betrayal, [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/550-the-road-to-1066-rise-of-the-normans-part-3/">550. The Road to 1066: Rise of the Normans (Part 3)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/550-the-road-to-1066-rise-of-the-normans-part-3/>

---

## Statistically, When Will My Baby Be Born?

date: 2025-03-24, from: Maggie Appleton blog

A tiny tool to calculate when your baby might arrive 

<br> 

<https://maggieappleton.com/birth-probability/>

---

**@Dave Winer's linkblog** (date: 2025-03-23, from: Dave Winer's linkblog)

Americans Are Buying an Escape Plan. 

<br> 

<https://www.theatlantic.com/ideas/archive/2025/03/gold-card-residence-abroad/682103/>

---

## Newsboat 2.39 is out

date: 2025-03-23, updated: 2025-03-23, from: Newsboat News


            <p>
                The new key-binding system mentioned in the previous entry is
                finally here! After years of work, done primarily by Dennis van
                der Schagt, we now have a <code>bind</code> command that:

                <ul>
                    <li>
                        can create multi-key bindings, i.e. one can bind not
                        just single letters (with Control or Shift), but also
                        sequences of letters (each with their own modifiers);
                    </li>
                    <li>
                        allows each binding to execute multiple actions, just
                        like our existing <code>macro</code> command. Unlike macros,
                        <code>bind</code> doesn't require a "macro prefix",
                            so one can finally bind a sequence of operations
                            to a <emph>single</emph> key;
                    </li>
                    <li>
                        allows adding documentation strings to each binding,
                        which are then shown in the help dialog. This again is
                        an improvement upon macros, which had no descriptions and
                        didn't have a way for the user to provide their own;
                    </li>
                    <li>
                        adds alternative syntax for keys. Instead of the usual
                        <code>^R</code> syntax, one can now use
                        <code>&lt;C-r&gt;</code> a la Tmux or Emacs. Hopefully
                        this makes multi-key bindings easier to read.
                    </li>
                </ul>
            </p>

            <p>
                The feature is very new, and probably contains bugs. Please
                report them! In fact, it's so new that we didn't have time to
                finish the corresponding <code>unbind</code> command LOL.
                However, since Newsboat doesn't have any multi-key bindings
                by default, <code>unbind</code> was deemed to not be a release blocker.
            </p>

            <p>
                The new feature also has a limitation in that multi-key bindings
                that have the same prefix must have the same length. In other
                words, it's fine to have <code>abc</code> and <code>abx</code>
                bound simultaneously, but it's not possible to bind both
                <code>ab</code> and <code>abc</code> at the same time.
                This is to avoid an ambiguity when the prefix is typed;
                in that case Newsboat would have to decide somehow
                if the next key is going to be <code>c</code>.
            </p>

            <p>
                We are all very proud of this feature, and eagerly awaiting your
                feedback! Please try it, and open an issue if something doesn't
                work or could be improved.
            </p>

            <p>
                One more thing: we now require a compiler that accepts
                <code>-std=c++17</code> flag. In other words, we dropped Clang 4
                support. This is due to libicu 75 requiring C++17; we depend on
                this library via libxml2, and the requirement bleeds through to
                us because we're indirectly including some of libicu header files.
            </p>

            <p>
                Compilers without C++17 support are now considered deprecated.
                Future Newsboat releases will probably use some of C++17 features,
                at which point we'll drop support. If that's going to create
                problems for you, please file an issue.
            </p>

            <p>Links:
                    <a href="https://newsboat.org/releases/2.39/newsboat-2.39.tar.xz">tar.xz</a>,
                    <a href="https://newsboat.org/releases/2.39/newsboat-2.39.tar.xz.asc">asc</a>,
                    <a href="https://newsboat.org/releases/2.39/docs/newsboat.html">docs</a>,
                    <a href="https://newsboat.org/releases/2.39/docs/faq.html">FAQ</a>,
                    <a href="https://github.com/newsboat/newsboat/blob/master/CHANGELOG.md#239---2025-03-23">changelog</a>.
            </p>
         

<br> 

<https://newsboat.org/releases/2.39/docs/newsboat.html>

---

## Semantic Diffusion

date: 2025-03-23, updated: 2025-03-23, from: Simon Willison’s Weblog

<p><strong><a href="https://martinfowler.com/bliki/SemanticDiffusion.html">Semantic Diffusion</a></strong></p>
I <a href="https://bsky.app/profile/mattchughes.ca/post/3ll2sbdky3k2y">learned about</a> this term today while complaining about how the definition of "vibe coding" is already being distorted to mean "any time an LLM writes code" as opposed to <a href="https://simonwillison.net/2025/Mar/19/vibe-coding/">the intended meaning</a> of "code I wrote with an LLM without even reviewing what it wrote".</p>
<p>I posted <a href="https://bsky.app/profile/simonwillison.net/post/3ll2rtxeucs2e">this salty note</a>:</p>
<blockquote>
<p>Feels like I'm losing the battle on this one, I keep seeing people use "vibe coding" to mean any time an LLM is used to write code</p>
<p>I'm particularly frustrated because for a few glorious moments we had the chance at having ONE piece of AI-related terminology with a clear, widely accepted definition!</p>
<p>But it turns out people couldn't be trusted to read all the way to the end of Andrej's tweet, so now we are back to yet another term where different people assume it means different things</p>
</blockquote>
<p>Martin Fowler coined Semantic Diffusion in 2006 with this very clear definition:</p>
<blockquote>
<p>Semantic diffusion occurs when you have a word that is coined by a person or group, often with a pretty good definition, but then gets spread through the wider community in a way that weakens that definition. This weakening risks losing the definition entirely - and with it any usefulness to the term.</p>
</blockquote>
<p>What's happening with vibe coding right now is such a clear example of this effect in action! I've seen <a href="https://simonwillison.net/2024/Mar/5/prompt-injection-jailbreaking/">the same thing happen</a> to my own coinage <a href="https://simonwillison.net/2022/Sep/12/prompt-injection/">prompt injection</a> over the past couple of years.</p>
<p>This kind of dillution of meaning is frustrating, but does appear to be inevitable. As Martin Fowler points out it's most likely to happen to popular terms - the more popular a term is the higher the chance a game of telephone will ensue where misunderstandings flourish as the chain continues to grow.</p>
<p>Andrej Karpathy, who <a href="https://twitter.com/karpathy/status/1886192184808149383">coined</a> vibe coding, <a href="https://twitter.com/karpathy/status/1903870973126045712">posted this</a> just now in reply to my <a href="https://simonwillison.net/2025/Mar/19/vibe-coding/">article</a>:</p>
<blockquote>
<p>Good post! It will take some time to settle on definitions. Personally I use "vibe coding" when I feel like this dog. My iOS app last night being a good example. But I find that in practice I rarely go full out vibe coding, and more often I still look at the code, I add complexity slowly and I try to learn over time how the pieces work, to ask clarifying questions etc.</p>
<p><img alt="Animated GIF.  I have no idea what I'm doing - a dog wags its tail while inspecting the engine of a car and looking gormless" src="https://static.simonwillison.net/static/2025/vibe-coding.gif" /></p>
</blockquote>
<p>I love that vibe coding has an official illustrative GIF now!


    <p>Tags: <a href="https://simonwillison.net/tags/language">language</a>, <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a>, <a href="https://simonwillison.net/tags/andrej-karpathy">andrej-karpathy</a>, <a href="https://simonwillison.net/tags/martin-fowler">martin-fowler</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/23/semantic-diffusion/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-23, from: Dave Winer's linkblog)

The Lutnick wedding announcement in 1994. 

<br> 

<https://www.nytimes.com/1994/12/11/style/weddings-howard-lutnick-allison-lambert.html?unlocked_article_code=1.6E4.shz3.DZj_n67ezec3&smid=url-share>

---

**@Dave Winer's linkblog** (date: 2025-03-23, from: Dave Winer's linkblog)

Has anyone verified with Howard Lutnick&#39;s mother in law? I&#39;m not entirely sure I believe him, btw. 

<br> 

<https://www.google.com/search?q=Howard+Lutnick+mother+in+law>

---

**@Dave Winer's linkblog** (date: 2025-03-23, from: Dave Winer's linkblog)

Recreating the &quot;Severance Effect&quot; with motion control. 

<br> 

<https://www.youtube.com/watch?v=TF6iKrtdZ5g>

---

**@Dave Winer's linkblog** (date: 2025-03-23, from: Dave Winer's linkblog)

Benjamin Franklin: &quot;We must all hang together, or assuredly we shall all hang separately.&quot; 

<br> 

<https://en.wikipedia.org/wiki/Benjamin_Franklin>

---

**@Dave Winer's linkblog** (date: 2025-03-23, from: Dave Winer's linkblog)

His wonderful mother in law knows who to call to get her a few mill to tide her over to next month. No big deal. 

<br> 

<https://m.youtube.com/watch?v=KWPey0SYqrU&t=7s&pp=2AEHkAIB0gcJCfcAhR29_xXO>

---

## Next.js and the corrupt middleware: the authorizing artifact

date: 2025-03-23, updated: 2025-03-23, from: Simon Willison’s Weblog

<p><strong><a href="https://zhero-web-sec.github.io/research-and-things/nextjs-and-the-corrupt-middleware">Next.js and the corrupt middleware: the authorizing artifact</a></strong></p>
Good, detailed write-up of the Next.js vulnerability <a href="https://nvd.nist.gov/vuln/detail/CVE-2025-29927">CVE-2025-29927</a> by Allam Rachid, one of the researchers who identified the issue.</p>
<p>The vulnerability is best illustrated by <a href="https://github.com/vercel/next.js/blob/v12.0.7/packages/next/server/next-server.ts#L686">this code snippet</a>:</p>
<div class="highlight highlight-source-js"><pre><span class="pl-k">const</span> <span class="pl-s1">subreq</span> <span class="pl-c1">=</span> <span class="pl-s1">params</span><span class="pl-kos">.</span><span class="pl-c1">request</span><span class="pl-kos">.</span><span class="pl-c1">headers</span><span class="pl-kos">[</span><span class="pl-s">'x-middleware-subrequest'</span><span class="pl-kos">]</span><span class="pl-kos">;</span>
<span class="pl-k">const</span> <span class="pl-s1">subrequests</span> <span class="pl-c1">=</span> <span class="pl-k">typeof</span> <span class="pl-s1">subreq</span> <span class="pl-c1">===</span> <span class="pl-s">'string'</span> ? <span class="pl-s1">subreq</span><span class="pl-kos">.</span><span class="pl-en">split</span><span class="pl-kos">(</span><span class="pl-s">':'</span><span class="pl-kos">)</span> : <span class="pl-kos">[</span><span class="pl-kos">]</span><span class="pl-kos">;</span>
<span class="pl-c">// ...</span>
<span class="pl-k">for</span> <span class="pl-kos">(</span><span class="pl-k">const</span> <span class="pl-s1">middleware</span> <span class="pl-k">of</span> <span class="pl-smi">this</span><span class="pl-kos">.</span><span class="pl-c1">middleware</span> <span class="pl-c1">||</span> <span class="pl-kos">[</span><span class="pl-kos">]</span><span class="pl-kos">)</span> <span class="pl-kos">{</span>
  <span class="pl-c">// ...</span>
  <span class="pl-k">if</span> <span class="pl-kos">(</span><span class="pl-s1">subrequests</span><span class="pl-kos">.</span><span class="pl-en">includes</span><span class="pl-kos">(</span><span class="pl-s1">middlewareInfo</span><span class="pl-kos">.</span><span class="pl-c1">name</span><span class="pl-kos">)</span><span class="pl-kos">)</span> <span class="pl-kos">{</span>
    <span class="pl-s1">result</span> <span class="pl-c1">=</span> <span class="pl-kos">{</span>
      <span class="pl-c1">response</span>: <span class="pl-v">NextResponse</span><span class="pl-kos">.</span><span class="pl-en">next</span><span class="pl-kos">(</span><span class="pl-kos">)</span><span class="pl-kos">,</span>
      <span class="pl-c1">waitUntil</span>: <span class="pl-v">Promise</span><span class="pl-kos">.</span><span class="pl-en">resolve</span><span class="pl-kos">(</span><span class="pl-kos">)</span><span class="pl-kos">,</span>
    <span class="pl-kos">}</span><span class="pl-kos">;</span>
    <span class="pl-k">continue</span><span class="pl-kos">;</span>
  <span class="pl-kos">}</span>
<span class="pl-kos">}</span></pre></div>
<p>This was part of Next.js internals used to help avoid applying middleware recursively to requests that are re-dispatched through the framework.</p>
<p>Unfortunately it also meant that attackers could send a <code>x-middleware-subrequest</code> HTTP header with a colon-separated list of middleware names to skip. If a site used middleware to apply an authentication gate (as suggested <a href="https://nextjs.org/learn/dashboard-app/adding-authentication#protecting-your-routes-with-nextjs-middleware">in the Next.js documentation</a>) an attacker could bypass that authentication using this trick.</p>
<p>The vulnerability has been fixed in Next.js 15.2.3 - here's the <a href="https://nextjs.org/blog/cve-2025-29927">official release announcement</a> talking about the problem.


    <p>Tags: <a href="https://simonwillison.net/tags/security">security</a>, <a href="https://simonwillison.net/tags/javascript">javascript</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/23/nextjs-and-the-corrupt-middleware/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-03-23, from: Dave Winer's linkblog)

Small Batch, Big Flavor: Why New Yorkers Are Choosing Silly Nice Weed. 

<br> 

<https://stupiddope.com/2025/03/small-batch-big-flavor-why-new-yorkers-are-choosing-silly-nice-weed/>

---

**@Feed for Alt USDS** (date: 2025-03-23, from: Feed for Alt USDS)

DOGE claimed they’d fix government inefficiency, but so far, they’ve only broken it more. 🤷‍♂️ Firing workers ≠ fixing processes. If the people suffer either way, is this really a solution?

📖 Read the breakdown here: https://www.wethebuilders.org/posts/new-failure-same-failure

#altgov #altUSDS #BureaucracyVsEfficiency ⚖ 

<br> 

<https://bsky.app/profile/altusds.bsky.social/post/3ll2clh4vbp2v>

---

## A Balance of Payments Primer, Part I

date: 2025-03-23, from: Paul Krugman

And why you shouldn&#8217;t panic over trade deficits 

<br> 

<https://paulkrugman.substack.com/p/a-balance-of-payments-primer-part>

---

## Servo vs Ladybird

date: 2025-03-23, from: Libre News

I believe that Ladybird has more funding and better support for the web, but Servo wins in performance. Though, they're hard to compare directly! 

<br> 

<https://thelibre.news/servo-vs-ladybird/>

---

**@Dave Winer's linkblog** (date: 2025-03-23, from: Dave Winer's linkblog)

What the Venezuelans Deported to El Salvador Experienced. 

<br> 

<https://time.com/7269604/el-salvador-photos-venezuelan-detainees/>

---

**@Dave Winer's linkblog** (date: 2025-03-23, from: Dave Winer's linkblog)

Musk’s X suspends opposition accounts in Turkey amid civil unrest. 

<br> 

<https://www.politico.eu/article/musks-x-suspends-opposition-accounts-turkey-protest-civil-unrest-erdogan-imamoglu-istanbul-mayor/>

---

**@Dave Winer's linkblog** (date: 2025-03-23, from: Dave Winer's linkblog)

I trust that invisible hand Darwinian ecosystem builds better networks, because they are real, not contrived. 

<br> 

<http://scripting.com/2025/03/22/140333.html>

---

**@Dave Winer's linkblog** (date: 2025-03-23, from: Dave Winer's linkblog)

When power went out in our Kansas home, I pondered political disaster. Our only hope is self-rescue. 

<br> 

<https://kansasreflector.com/2025/03/23/when-power-went-out-in-our-kansas-home-i-pondered-political-disaster-our-only-hope-is-self-rescue/>

---

## Fasten Furious: When Laptops Had Hooks

date: 2025-03-23, updated: 2025-03-23, from: Tedium site

Considering the period in laptop history where Apple built PowerBooks with hooks that only exposed themselves when they got close to a magnet. 

<br> 

<https://feed.tedium.co/link/15204/16989750/laptop-fastener-magnetic-hooks-history>

---

## Elon Musk Wasn’t the Only One This Week with a Top Secret National Security Meeting

date: 2025-03-23, from: Michael Moore's blog

I will be sharing State secrets this Wednesday with the new Prime Minister of Canada regarding Hockey, Chocolate and a European Union-style treaty between Michigan and Canada 

<br> 

<https://www.michaelmoore.com/p/elon-musk-wasnt-the-only-one-this>

---

## Quoting Jacob Kaplan-Moss

date: 2025-03-23, updated: 2025-03-23, from: Simon Willison’s Weblog

<blockquote cite="https://jacobian.org/2025/mar/13/beware-advice-from-old-heads/"><p>If you’re new to tech, taking [career] advice on what works for someone with a 20-year career is likely to be about as effective as taking career advice from a stockbroker or firefighter or nurse. There’ll be a few things that generalize, but most advice won’t.</p>
<p>Further, even advice people with long careers on what worked for them when <em>they</em> were getting started is unlikely to be advice that works today. The tech industry of 15 or 20 years ago was, again, <strong>dramatically</strong> different from tech today.</p></blockquote>
<p class="cite">&mdash; <a href="https://jacobian.org/2025/mar/13/beware-advice-from-old-heads/">Jacob Kaplan-Moss</a>, Beware tech career advice from old heads</p>

    <p>Tags: <a href="https://simonwillison.net/tags/jacob-kaplan-moss">jacob-kaplan-moss</a>, <a href="https://simonwillison.net/tags/careers">careers</a></p> 

<br> 

<https://simonwillison.net/2025/Mar/23/jacob-kaplan-moss/#atom-everything>

