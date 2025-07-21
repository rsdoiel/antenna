---
title: snapshots
updated: 2025-07-21 14:08:20
---

# snapshots

(date: 2025-07-21 14:08:20)

---

## Using a MacBook Trackpad As a Scale

date: 2025-07-21, from: Michael Tsai

Krish Shah (via Hacker News): TrackWeight is a macOS application that transforms your MacBook&#8217;s trackpad into an accurate weighing scale by leveraging the Force Touch pressure sensors built into modern MacBook trackpads.[&#8230;]TrackWeight utilizes the Open Multi-Touch Support library by Takuto Nakamura to gain private access to all mouse and trackpad events on macOS. This library [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/21/using-a-macbook-trackpad-as-a-scale/>

---

## UK Backing Down on Apple Encryption Backdoor

date: 2025-07-21, from: Michael Tsai

Anna Gross, Tim Bradshaw, and Lauren Fedor (Hacker News, MacRumors): The officials both said the Home Office, which ordered the tech giant in January to grant access to its most secure cloud storage system, would probably have to retreat in the face of pressure from senior leaders in Washington, including Vice President JD Vance. [&#8230;] [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/21/uk-backing-down-on-apple-encryption-backdoor/>

---

## Spotlight Indexing Running Wild

date: 2025-07-21, from: Michael Tsai

Jenny Zeng (via John Gordon): Several users have reported a bug on macOS Sequoia regarding Spotlight indexing writing a huge amount of data. Consequently, they are experiencing a large System Data on Mac and rapid SSD wear. She recommends deleting /.Spotlight-V100 and ~/Library/Metadata/CoreSpotlight. I&#8217;ve always use mdutil to reset Spotlight, but I&#8217;ve now seen several [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/21/spotlight-indexing-running-wild/>

---

## USB-C Hubs and My Slow Descent Into Madness

date: 2025-07-21, from: Michael Tsai

Dennis Schubert (2021, via Hacker News): I have one of those laptops lacking a lot of accessory ports. In fact, I&#8217;m writing this on an Apple MacBook Pro, and all I got was four lousy USB-C ports. If I want to connect pretty much anything, I need some sort of adapter or some sort of [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/21/usb-c-hubs-and-my-slow-descent-into-madness/>

---

## Advanced version of Gemini with Deep Think officially achieves gold-medal standard at the International Mathematical Olympiad

date: 2025-07-21, updated: 2025-07-21, from: Simon Willison’s Weblog

<p><strong><a href="https://deepmind.google/discover/blog/advanced-version-of-gemini-with-deep-think-officially-achieves-gold-medal-standard-at-the-international-mathematical-olympiad/">Advanced version of Gemini with Deep Think officially achieves gold-medal standard at the International Mathematical Olympiad</a></strong></p>
OpenAI beat them to the punch in terms of publicity by <a href="https://simonwillison.net/2025/Jul/19/openai-gold-medal-math-olympiad/">publishing their results on Saturday</a>, but a team from Google Gemini achieved an equally impressive result on this year's International Mathematics Olympiad scoring a gold medal performance with their custom research model.</p>
<p>(I saw an unconfirmed rumor that the Gemini team had to wait until Monday for approval from Google PR.)</p>
<p>It's interesting that Gemini achieved the <em>exact same score</em> as OpenAI, 35/42, and were able to solve the same set of questions - 1 through 5, failing only to answer 6, which is designed to be the hardest question.</p>
<p>Each question is worth seven points, so 35/42 cents corresponds to full marks on five out of the six problems.</p>
<p>Only 6 of <a href="https://www.imo-official.org/year_individual_r.aspx?year=2025">the 630 human contestants</a> this year scored all 7 points for question 6 this year, and just 55 more had greater than 0 points for that question.</p>
<p>OpenAI claimed their model had not been optimized for IMO questions. Gemini's model was different - emphasis mine:</p>
<blockquote>
<p>We achieved this year’s result using an advanced version of Gemini Deep Think – an enhanced reasoning mode for complex problems that incorporates some of our latest research techniques, including parallel thinking. This setup enables the model to simultaneously explore and combine multiple possible solutions before giving a final answer, rather than pursuing a single, linear chain of thought.</p>
<p>To make the most of the reasoning capabilities of Deep Think, we additionally trained this version of Gemini on novel reinforcement learning techniques that can leverage more multi-step reasoning, problem-solving and theorem-proving data. <strong>We also provided Gemini with access to a curated corpus of high-quality solutions to mathematics problems, and added some general hints and tips on how to approach IMO problems to its instructions</strong>.</p>
</blockquote>
<p>The Gemini team, like the OpenAI team, achieved this result with <a href="https://x.com/fredzhang0/status/1947364744412758305">no tool use or internet access</a> for the model.</p>
<p>Gemini's solutions are listed <a href="https://storage.googleapis.com/deepmind-media/gemini/IMO_2025.pdf">in this PDF</a>. If you are mathematically inclined you can compare them with OpenAI's solutions <a href="https://github.com/aw31/openai-imo-2025-proofs/">on GitHub</a>.</p>
<p>Last year Google DeepMind <a href="https://deepmind.google/discover/blog/ai-solves-imo-problems-at-silver-medal-level/">achieved a silver medal in IMO</a>, solving four of the six problems using custom models called AlphaProof and AlphaGeometry 2:</p>
<blockquote>
<p>First, the problems were manually translated into formal mathematical language for our systems to understand. In the official competition, students submit answers in two sessions of 4.5 hours each. Our systems solved one problem within minutes and took up to three days to solve the others.</p>
</blockquote>
<p>This year's result, scoring gold with a single model, within the allotted time and with no manual step to translate the problems first, is much more impressive.

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=44637191">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/mathematics">mathematics</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/llm-reasoning">llm-reasoning</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/21/gemini-imo/#atom-everything>

---

## Argon ONE UP is modular laptop powered by a Raspberry Pi CM5

date: 2025-07-21, from: Liliputing

<p>The makers of the Argon ONE line of accessories for Raspberry Pi computers have built a business around designing cases that add or change some key functions of the little computers by, for example, moving all of the ports to one side. But the upcoming Argon ONE UP takes things to the next level. It&#8217;s a laptop computer [&#8230;]</p>
<p>The post <a href="https://liliputing.com/argon-one-up-is-modular-laptop-powered-by-a-raspberry-pi-cm5/">Argon ONE UP is modular laptop powered by a Raspberry Pi CM5</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/argon-one-up-is-modular-laptop-powered-by-a-raspberry-pi-cm5/>

---

## Spotify Publishes AI-Generated Songs From Dead Artists Without Permission

date: 2025-07-21, from: 404 Media Group

"They could fix this problem. One of their talented software engineers could stop this fraudulent practice in its tracks, if they had the will to do so." 

<br> 

<https://www.404media.co/spotify-publishes-ai-generated-songs-from-dead-artists-without-permission/>

---

## MINISFORUM M1 Pro mini PC comes with Intel Meteor Lake and Arrow Lake options

date: 2025-07-21, from: Liliputing

<p>Mini PC makers often offer several different processor options so that customers can decide whether to prioritize price, performance, or some mix of the two. But usually those processor options are all part of the same family. The MINISFORUM M1 Pro bucks that trend. Customers interested in picking up an entry-level model can pay $383 for [&#8230;]</p>
<p>The post <a href="https://liliputing.com/minisforum-m1-pro-mini-pc-comes-with-intel-meteor-lake-and-arrow-lake-options/">MINISFORUM M1 Pro mini PC comes with Intel Meteor Lake and Arrow Lake options</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/minisforum-m1-pro-mini-pc-comes-with-intel-meteor-lake-and-arrow-lake-options/>

---

## Why Murdoch Doesn’t Give a Toss About Trump

date: 2025-07-21, from: Tina Brown

What rich irony that the defense against the latest assault by Trump on press freedom is now in the hands of old crocodile Rupert Murdoch, the very media owner whose Fox News gave us Trump in the first place. 

<br> 

<https://tinabrown.substack.com/p/why-murdoch-doesnt-give-a-toss-about>

---

## The Game Genie Generation

date: 2025-07-21, updated: 2025-07-21, from: Tedium site

For an unlicensed game accessory, the Game Genie sure casts a long shadow. It reshaped the games we already owned—and had a profound effect on copyright law. 

<br> 

<https://feed.tedium.co/link/15204/17101139/the-game-genie-generation>

---

## The NIH Is Capping Research Proposals Because It's Overwhelmed by AI Submissions

date: 2025-07-21, from: 404 Media Group

The NIH wrote that it has recently “observed instances of Principal Investigators submitting large numbers of applications, some of which may have been generated with AI tools."  

<br> 

<https://www.404media.co/nih-capping-research-applications-ai/>

---

## ONEXSUGAR Sugar 1 handheld game console hits Indiegogo for $599 (Dual-screen Android handheld game console with a convertible design)

date: 2025-07-21, from: Liliputing

<p>The ONEXSUGAR Sugar 1 is an unusual handheld game console thanks to a convertible design that lets you use it as either a single-screen device with a 6.01 inch FHD+ OLED display or as a dual-screen handheld with a second 3.92 OLED display below the primary screen. In other words, this Android-powered handheld is sort of [&#8230;]</p>
<p>The post <a href="https://liliputing.com/onexsugar-sugar-1-handheld-game-console-hits-indiegogo-for-599-dual-screen-android-handheld-game-console-with-a-convertible-design/">ONEXSUGAR Sugar 1 handheld game console hits Indiegogo for $599 (Dual-screen Android handheld game console with a convertible design)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/onexsugar-sugar-1-handheld-game-console-hits-indiegogo-for-599-dual-screen-android-handheld-game-console-with-a-convertible-design/>

---

## Black Mirror: clasificación oficial de sus capítulos

date: 2025-07-21, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Desde su estreno en la cadena de televisión británica Channel 4 por allá en 2011 hasta su eventual adquisición por Netflix en 2015, Black Mirror se ha convertido en una de las series más populares bajo un formato de capítulos que funcionan de manera independiente y que plantean fantasías distópicas en las que la tecnología [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/black-mirror-clasificacion-oficial-de-sus-capitulos/">Black Mirror: clasificación oficial de sus capítulos</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/black-mirror-clasificacion-oficial-de-sus-capitulos/?utm_source=rss&utm_medium=rss&utm_campaign=black-mirror-clasificacion-oficial-de-sus-capitulos>

---

## Fast Fashion Price Surge for Americans

date: 2025-07-21, from: Guy Kawasaki blog

Vivek Astvansh, Associate Professor of Quantitative Marketing and Analytics, McGill University. 

<br> 

<https://guykawasaki.substack.com/p/fast-fashion-price-surge-for-americans>

---

**@Robert's feed at BlueSky** (date: 2025-07-21, from: Robert's feed at BlueSky)

Intrigued.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3luica2xrw227>

---

**@Robert's feed at BlueSky** (date: 2025-07-21, from: Robert's feed at BlueSky)

Queue the suspense theme music.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3luic7ghd3c27>

---

## Quoting Daniel Litt

date: 2025-07-21, updated: 2025-07-21, from: Simon Willison’s Weblog

<blockquote cite="https://x.com/littmath/status/1946987909439017108"><p>An AI tool that <a href="https://simonwillison.net/2025/Jul/19/openai-gold-medal-math-olympiad/">gets gold on the IMO</a> is obviously immensely impressive. Does it mean math is “solved”? Is an AI-generated proof of the Riemann hypothesis clearly on the horizon? Obviously not.</p>
<p>Worth keeping timescales in mind here: IMO competitors spend an average of 1.5 hrs on each problem. High-quality math research, by contrast, takes month or years.</p>
<p>What are the obstructions to AI performing high-quality autonomous math research? I don’t claim to know for sure, but I think they include many of the same obstructions that prevent it from doing many jobs: Long context, long-term planning, consistency, unclear rewards, lack of training data, etc.</p>
<p>It’s possible that some or all of these will be solved soon (or have been solved) but I think it’s worth being cautious about over-indexing on recent (amazing) progress.</p></blockquote>
<p class="cite">&mdash; <a href="https://x.com/littmath/status/1946987909439017108">Daniel Litt</a>, Assistant Professor of mathematics, University of Toronto</p>

    <p>Tags: <a href="https://simonwillison.net/tags/mathematics">mathematics</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/daniel-litt">daniel-litt</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/21/daniel-litt/#atom-everything>

---

## Maker Monday featuring your excellent Raspberry Pi builds

date: 2025-07-21, from: Raspberry Pi News (.com)

<p>Follow along with #MakerMonday each week over on our social media platforms to see tons of creative Raspberry Pi builds.</p>
<p>The post <a href="https://www.raspberrypi.com/news/maker-monday-featuring-your-excellent-raspberry-pi-builds/">Maker Monday featuring your excellent Raspberry Pi builds</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/maker-monday-featuring-your-excellent-raspberry-pi-builds/>

---

## Gemini Is 'Strict and Punitive' While ChatGPT Is 'Catastrophically' Cooperative, Researchers Say

date: 2025-07-21, from: 404 Media Group

In tests involving the Prisoner's Dilemma, researchers found that Google’s Gemini is “strategically ruthless,” while OpenAI is collaborative to a “catastrophic” degree.  

<br> 

<https://www.404media.co/gemini-is-strict-and-punitive-while-chatgpt-is-catastrophically-cooperative-researchers-say/>

---

## Rümeysa Öztürk in Her Own Words

date: 2025-07-21, updated: 2025-07-21, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/07/21/rumeysa-ozturk-in-her-own-words/>

---

## A Startup is Selling Data Hacked from Peoples’ Computers to Debt Collectors

date: 2025-07-21, from: 404 Media Group

Infostealer data can include passwords, email and billing addresses, and the embarrassing websites you use. Farnsworth Intelligence is selling to divorce lawyers and other industries. 

<br> 

<https://www.404media.co/a-startup-is-selling-data-hacked-from-peoples-computers-to-debt-collectors/>

---

## How I write docs quickly

date: 2025-07-21, from: Blog by Fabrizio Ferri-Benedetti

<p>I’ve been writing documentation and technical articles for more than a decade now. One piece of feedback I consistently got from managers and peers during all these years is how <em>fast</em> I am when producing and releasing docs. For example, I was once asked to document a new feature from a team I wasn’t serving two weeks ahead of launch. Everything was new to me, but I had most of the docs drafted after four days. By launch, the docs had been deemed ready to go live.</p> 

<br> 

<https://passo.uno/how-write-tech-docs-quickly/>

---

## REMEMBER THE DAYS WHEN WAITERS DIDN'T LEAVE YOUR FOOD TO GO COLD ON THE BAR?

date: 2025-07-21, from: Howard Jacobson blog

Yes, it was a hot day. 

<br> 

<https://jacobsonh.substack.com/p/remember-the-days-when-waiters-didnt>

---

## Enshittification and the Bitterness of Billionaire Bros

date: 2025-07-21, from: Paul Krugman

Hell hath no fury like a tech god scorned 

<br> 

<https://paulkrugman.substack.com/p/enshittification-and-the-bitterness>

---

## Coding with LLMs in the summer of 2025 (an update)

date: 2025-07-21, updated: 2025-07-21, from: Simon Willison’s Weblog

<p><strong><a href="https://antirez.com/news/154">Coding with LLMs in the summer of 2025 (an update)</a></strong></p>
Salvatore Sanfilippo describes his current AI-assisted development workflow. He's all-in on LLMs for code review, exploratory prototyping, pair-design and writing "part of the code under your clear specifications", but warns against leaning too hard on pure vibe coding:</p>
<blockquote>
<p>But while LLMs can write part of a code base with success (under your strict supervision, see later), and produce a very sensible speedup in development (or, the ability to develop more/better in the same time used in the past — which is what I do), when left alone with nontrivial goals they tend to produce fragile code bases that are larger than needed, complex, full of local minima choices, suboptimal in many ways. Moreover they just fail completely when the task at hand is more complex than a given level.</p>
</blockquote>
<p>There are plenty of useful tips in there, especially around carefully managing your context:</p>
<blockquote>
<p>When your goal is to reason with an LLM about implementing or fixing some code, you need to provide extensive information to the LLM: papers, big parts of the target code base (all the code base if possible, unless this is going to make the context window so large than the LLM performances will be impaired). And a brain dump of all your understanding of what should be done.</p>
</blockquote>
<p>Salvatore warns against relying too hard on tools which hide the context for you, like editors with integrated coding agents. He prefers pasting exactly what's needed into the LLM web interface - I share his preference there.</p>
<p>His conclusions here match <a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/">my experience</a>:</p>
<blockquote>
<p>You will be able to do things that are otherwise at the borders of your knowledge / expertise while learning much in the process (yes, you can learn from LLMs, as you can learn from books or colleagues: it is one of the forms of education possible, a new one). Yet, everything produced will follow your idea of code and product, and will be of high quality and will not random fail because of errors and shortcomings introduced by the LLM. You will also retain a strong understanding of all the code written and its design.</p>
</blockquote>

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=44623953">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/salvatore-sanfilippo">salvatore-sanfilippo</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/21/coding-with-llms/#atom-everything>

---

**@Robert's feed at BlueSky** (date: 2025-07-20, from: Robert's feed at BlueSky)

Interesting article about bentwood boxes. https://www.cbc.ca/news/canada/north/tlingit-artist-bentwood-box-1.7587939?cmp=rss 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lugk7ato722l>

---

**@Robert's feed at BlueSky** (date: 2025-07-20, from: Robert's feed at BlueSky)

👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lufx45yi6k25>

---

**@Robert's feed at BlueSky** (date: 2025-07-20, from: Robert's feed at BlueSky)

No measurements, no problem?

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lufwzozhwc25>

---

## MeLE Overclock X2 is an almost pocket-sized PC with Intel N150 and upgradeable RAM & storage

date: 2025-07-20, from: Liliputing

<p>The MeLE Overclock X2 is a compact desktop computer that&#8217;s barely larger than a smartphone, measuring 178 x 94 x 21mm (about 7&#8243; x 3.7&#8243; x 0.8&#8243;). But it&#8217;s a full-fledged PC with an Intel processor, a decent set of I/O options, and something you won&#8217;t find in any phone: support for user-replaceable memory and [&#8230;]</p>
<p>The post <a href="https://liliputing.com/mele-overclock-x2-is-an-almost-pocket-sized-pc-with-intel-n150-and-upgradeable-ram-storage/">MeLE Overclock X2 is an almost pocket-sized PC with Intel N150 and upgradeable RAM &#038; storage</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/mele-overclock-x2-is-an-almost-pocket-sized-pc-with-intel-n150-and-upgradeable-ram-storage/>

---

## Quoting Armin Ronacher

date: 2025-07-20, updated: 2025-07-20, from: Simon Willison’s Weblog

<blockquote cite="https://lucumr.pocoo.org/2025/7/20/the-next-generation/"><p>Every day someone becomes a programmer because they figured out how to make ChatGPT build something. Lucky for us: in many of those cases the AI picks Python. We should treat this as an opportunity and anticipate an expansion in the kinds of people who might want to attend a Python conference. Yet many of these new programmers are not even aware that programming communities and conferences exist. It’s in the Python community’s interest to find ways to pull them in.</p></blockquote>
<p class="cite">&mdash; <a href="https://lucumr.pocoo.org/2025/7/20/the-next-generation/">Armin Ronacher</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/pycon">pycon</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/armin-ronacher">armin-ronacher</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/20/armin-ronacher/#atom-everything>

---

## The Economics of Immigration and Deportation

date: 2025-07-20, from: Paul Krugman

Immigration has been good for America. Mass deportation will be a disaster. 

<br> 

<https://paulkrugman.substack.com/p/the-economics-of-immigration-and>

---

## Quoting Tim Sweeney

date: 2025-07-20, updated: 2025-07-20, from: Simon Willison’s Weblog

<blockquote cite="https://x.com/timsweeneyepic/status/1946721961746608267"><p>There’s a bigger opportunity in computer science and programming (academically conveyed or self-taught) now than ever before, by far, in my opinion. The move to AI is like replacing shovels with bulldozers. Every business will benefit from this and they’ll need people to do it.</p></blockquote>
<p class="cite">&mdash; <a href="https://x.com/timsweeneyepic/status/1946721961746608267">Tim Sweeney</a>, Epic Games</p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/careers">careers</a>, <a href="https://simonwillison.net/tags/ai">ai</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/20/tim-sweeney/#atom-everything>

