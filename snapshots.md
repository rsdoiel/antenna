---
title: snapshots
updated: 2025-06-09 14:07:44
---

# snapshots

(date: 2025-06-09 14:07:44)

---

## As we say on the internet, “some personal news”

date: 2025-06-09, from: Press Think

<p>Ten days ago I signed the papers to retire as an NYU professor, effective August 31, 2025. I have taught my last course there. In this thread I am going to take a few moments to reflect on my academic career. Spoiler alert: I am not leaving the field, or the fight for a public [&#8230;]</p>
<p>The post <a href="https://pressthink.org/2025/06/as-we-say-on-the-internet-some-personal-news/">As we say on the internet, &#8220;some personal news&#8221;</a> appeared first on <a href="https://pressthink.org">PressThink</a>.</p>
 

<br> 

<https://pressthink.org/2025/06/as-we-say-on-the-internet-some-personal-news/>

---

## Emmys 2025: FYC – Actuaciones de reparto, drama: elenco de The Pitt

date: 2025-06-09, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Los Premios Emmy, el máximo reconocimiento de la industria de la televisión, es un escenario en donde se han distinguido algunas de las actuaciones más memorables de los últimos años y que podemos disfrutar en la pantalla chica. Cada año destacamos aquellas interpretaciones que han dejado huella en el público y la crítica. Durante los [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/emmys-2025-fyc-actuaciones-de-reparto-drama-elenco-de-the-pitt/">Emmys 2025: FYC – Actuaciones de reparto, drama: elenco de The Pitt</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/emmys-2025-fyc-actuaciones-de-reparto-drama-elenco-de-the-pitt/?utm_source=rss&utm_medium=rss&utm_campaign=emmys-2025-fyc-actuaciones-de-reparto-drama-elenco-de-the-pitt>

---

## A Newsletter Update

date: 2025-06-09, from: Paul Krugman

How it's going so far 

<br> 

<https://paulkrugman.substack.com/p/a-newsletter-update>

---

## WWDC: Apple supercharges its tools and technologies for developers

date: 2025-06-09, updated: 2025-06-09, from: Simon Willison’s Weblog

<p><strong><a href="https://www.apple.com/newsroom/2025/06/apple-supercharges-its-tools-and-technologies-for-developers/">WWDC: Apple supercharges its tools and technologies for developers</a></strong></p>
Here's the Apple press release for today's WWDC announcements. Two things that stood out to me:</p>
<blockquote>
<p><strong>Foundation Models Framework</strong></p>
<p>With the Foundation Models framework, developers will be able to build on Apple Intelligence to bring users new experiences that are intelligent, available when they’re offline, and that protect their privacy, using AI inference that is free of cost.
The framework has native support for Swift, so developers can easily access the Apple Intelligence model with as few as three lines of code.</p>
</blockquote>
<p>Here's new documentation on <a href="https://developer.apple.com/documentation/FoundationModels/generating-content-and-performing-tasks-with-foundation-models">Generating content and performing tasks with Foundation Models</a> - the Swift code looks like this:</p>
<pre><span class="pl-k">let</span> <span class="pl-s1">session</span> <span class="pl-c1">=</span> <span class="pl-en">LanguageModelSession</span><span class="pl-kos">(</span>
    instructions<span class="pl-kos">:</span> <span class="pl-s">"</span><span class="pl-s">Reply with step by step instructions</span><span class="pl-s">"</span>
<span class="pl-kos">)</span>
<span class="pl-k">let</span> <span class="pl-s1">prompt</span> <span class="pl-c1">=</span> <span class="pl-s">"</span><span class="pl-s">Rum old fashioned cocktail</span><span class="pl-s">"</span>
<span class="pl-k">let</span> <span class="pl-s1">response</span> <span class="pl-c1">=</span> <span class="pl-c1"><span class="pl-k">try</span></span> <span class="pl-k">await</span> session<span class="pl-kos">.</span><span class="pl-en">respond</span><span class="pl-kos">(</span>
    to<span class="pl-kos">:</span> prompt<span class="pl-kos">,</span>
    options<span class="pl-kos">:</span> <span class="pl-en">GenerationOptions</span><span class="pl-kos">(</span>temperature<span class="pl-kos">:</span> <span class="pl-c1">2.0</span><span class="pl-kos">)</span>
<span class="pl-kos">)</span></pre>

<p>I'm also <em>very</em> excited about this:</p>
<blockquote>
<p><strong>Containerization Framework</strong></p>
<p>The Containerization framework enables developers to create, download, or run Linux container images directly on Mac. It’s built on an open-source framework optimized for Apple silicon and provides secure isolation between container images. </p>
</blockquote>
<p>I continue to seek the ideal sandboxing solution for running untrusted code - both from other humans and written for me by LLMs - on my own machines. This looks like it could be a really great option for that going forward.


    <p>Tags: <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/apple">apple</a>, <a href="https://simonwillison.net/tags/macos">macos</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/sandboxing">sandboxing</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/swift">swift</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/9/apple-wwdc/#atom-everything>

---

## OpenAI hits $10 billion in annual recurring revenue fueled by ChatGPT growth

date: 2025-06-09, updated: 2025-06-09, from: Simon Willison’s Weblog

<p><strong><a href="https://www.cnbc.com/2025/06/09/openai-hits-10-billion-in-annualized-revenue-fueled-by-chatgpt-growth.html">OpenAI hits $10 billion in annual recurring revenue fueled by ChatGPT growth</a></strong></p>
Noteworthy because OpenAI revenue is a useful indicator of the direction of the generative AI industry in general, and frequently comes up in conversations about the sustainability of the current bubble.</p>
<blockquote>
<p>OpenAI has hit $10 billion in annual recurring revenue less than three years after launching its popular ChatGPT chatbot.</p>
<p>The figure includes sales  from the company’s consumer products, ChatGPT business products and its application programming interface, or API. It excludes licensing revenue from Microsoft and large one-time deals, according to an OpenAI spokesperson.</p>
<p>For all of last year, OpenAI was around $5.5 billion in ARR. [...]</p>
</blockquote>
<p>So these new numbers represent nearly double the ARR figures for last year.


    <p>Tags: <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/9/openai-revenue/#atom-everything>

---

**@Robert's feed at BlueSky** (date: 2025-06-09, from: Robert's feed at BlueSky)

👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lr74itwqh223>

---

## Quoting David Crawshaw

date: 2025-06-09, updated: 2025-06-09, from: Simon Willison’s Weblog

<blockquote cite="https://crawshaw.io/blog/programming-with-agents"><p>The process of learning and experimenting with LLM-derived technology has been an exercise in humility. In general I love learning new things when the art of programming changes […] But LLMs, and more specifically Agents, affect the process of writing programs in a new and confusing way. Absolutely every fundamental assumption about how I work has to be questioned, and it ripples through all the experience I have accumulated. There are days when it feels like I would be better off if I did not know anything about programming and started from scratch. And it is still changing.</p></blockquote>
<p class="cite">&mdash; <a href="https://crawshaw.io/blog/programming-with-agents">David Crawshaw</a>, How I program with Agents</p>

    <p>Tags: <a href="https://simonwillison.net/tags/coding-agents">coding-agents</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai-agents">ai-agents</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/9/david-crawshaw/#atom-everything>

---

## AMD expands Ryzen Z2 lineup with new chips for low-end and premium handheld gaming PCs

date: 2025-06-09, from: Liliputing

<p>This weekend Microsoft and Asus announced they&#8217;re working together on the first Xbox-branded handhelds, which are portable gaming PCs that are expected to ship later this year. But we already knew that was likely to happen. What we didn&#8217;t know was that the upcoming ROG Xbox Ally and ROG Xbox Ally X would be powered [&#8230;]</p>
<p>The post <a href="https://liliputing.com/amd-expands-ryzen-z2-lineup-with-new-chips-for-low-end-and-premium-handheld-gaming-pcs/">AMD expands Ryzen Z2 lineup with new chips for low-end and premium handheld gaming PCs</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/amd-expands-ryzen-z2-lineup-with-new-chips-for-low-end-and-premium-handheld-gaming-pcs/>

---

## Girls Do Porn Ringleader Pleads Guilty, Faces Life In Prison

date: 2025-06-09, from: 404 Media Group

Michael Pratt led Girls Do Porn, a sex trafficking operation that targeted hundreds of young women with force, fraud and coercion. 

<br> 

<https://www.404media.co/girls-do-porn-ringleader-michael-pratt-pleads-guilty/>

---

**@Dave Winer's linkblog** (date: 2025-06-09, from: Dave Winer's linkblog)

Dr. Phil was embedded with ICE during controversial Los Angeles immigration raids. (We live in a TV show.) 

<br> 

<https://www.cnn.com/2025/06/09/media/dr-phil-mcgraw-ice-immigration-raids-los-angeles>

---

## Government Cuts Trans Health Research

date: 2025-06-09, from: Guy Kawasaki blog

Jae A. Puckett, Associate Professor of Psychology, Michigan State University. Paz Galupo, Professor of Sexual Health and Education, Washington University in St. Louis. 

<br> 

<https://guykawasaki.substack.com/p/government-cuts-trans-health-research>

---

## Retroid Dual Screen add-on turns existing handhelds into dual-screen consoles

date: 2025-06-09, from: Liliputing

<p>Handheld game console maker Retroid is planning to launch a new accessory that basically turns a PSP-style handheld into a Nintendo DS-style device. The upcoming Retroid Dual Screen add-on is designed to bring a second screen to supported handhelds. It goes up for pre-order for $69 starting at 9:30PM Eastern Time on Monday, June 9, 2025. [&#8230;]</p>
<p>The post <a href="https://liliputing.com/retroid-dual-screen-add-on-turns-existing-handhelds-into-dual-screen-consoles/">Retroid Dual Screen add-on turns existing handhelds into dual-screen consoles</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/retroid-dual-screen-add-on-turns-existing-handhelds-into-dual-screen-consoles/>

---

**@Dave Winer's linkblog** (date: 2025-06-09, from: Dave Winer's linkblog)

House Republicans Found a New Way to Go After Abortion Access in Blue States. 

<br> 

<https://www.notus.org/health-science/house-republican-reconciliation-bill-abortion-affordable-care-act>

---

## FICUNAM 15: día 1

date: 2025-06-09, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>En el primer día de proyecciones de Ficunam 15 vimos tres propuestas: La eterna adolescente, Sex Panchitos y Punto de fuga. A continuación, nuestras impresiones. Punto de fuga (Vanishing Point) (Dir. Bani Khoshnoudi) Sección: Competencia internacional En este documental ensayístico y autobiográfico, la cineasta Bani Khoshnoudi regresa a Irán después de haber sido exiliada en [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/ficunam-15-dia-1/">FICUNAM 15: día 1</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/ficunam-15-dia-1/?utm_source=rss&utm_medium=rss&utm_campaign=ficunam-15-dia-1>

---

## Senators Demand Meta Answer For AI Chatbots Posing as Licensed Therapists

date: 2025-06-09, from: 404 Media Group

Exclusive: Following 404 Media’s investigation into Meta's AI Studio chatbots that pose as therapists and provided license numbers and credentials, four senators urged Meta to limit "blatant deception" from its chatbots. 

<br> 

<https://www.404media.co/senators-letter-demand-meta-answer-for-ai-chatbots-posing-as-licensed-therapists/>

---

## Rise and See a Massive Ship Out Your Window

date: 2025-06-09, updated: 2025-06-09, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/06/09/rise-and-see-a-massive-ship-out-your-window/>

---

## Liberux NEXX Linux phone now offers cheap(er) options (crowdfunding)

date: 2025-06-09, from: Liliputing

<p>On paper the Liberux NEXX looks like it could be the most powerful smartphone to date that&#8217;s purpose-built to run free and open source GNU/Linux-based software. But it&#8217;s kind of a tough sell at this point for a few reasons: the NEXX is the first product from a company that&#8217;s never shipped anything before. The [&#8230;]</p>
<p>The post <a href="https://liliputing.com/cheaper-liberux-nexx-linux-phone-option-coming-soon-crowdfunding/">Liberux NEXX Linux phone now offers cheap(er) options (crowdfunding)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/cheaper-liberux-nexx-linux-phone-option-coming-soon-crowdfunding/>

---

## Waymo Pauses Service in Downtown LA Neighborhood Where They're Getting Lit on Fire

date: 2025-06-09, from: 404 Media Group

A company spokesperson said it is working with law enforcement to determine when it can move the cars that have been. 

<br> 

<https://www.404media.co/waymo-pauses-service-in-downtown-la-neighborhood-where-theyre-getting-lit-on-fire/>

---

## GPD MicroPC 2 is portable computer with a 7 inch display, Intel N250 processor and a thumb keyboard

date: 2025-06-09, from: Liliputing

<p>Six years after releasing the original GPD MicroPC as a palm-sized computer aimed at IT professionals, GPD is bringing back the form factor with a new model sporting a bigger screen, faster processor, and more storage. While the company hasn&#8217;t announced pricing or availability details yet, here&#8217;s what we know so far about the upcoming GPD [&#8230;]</p>
<p>The post <a href="https://liliputing.com/gpd-micropc-2-is-portable-computer-with-a-7-inch-display-intel-n250-processor-and-a-thumb-keyboard/">GPD MicroPC 2 is portable computer with a 7 inch display, Intel N250 processor and a thumb keyboard</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/gpd-micropc-2-is-portable-computer-with-a-7-inch-display-intel-n250-processor-and-a-thumb-keyboard/>

---

## Here's why Linux market share isn't going to skyrocket anytime soon

date: 2025-06-09, from: Libre News

Let's get real! 

<br> 

<https://thelibre.news/heres-why-linux-market-share-isnt-going-to-skyrocket-anytime-soon/>

---

## A Researcher Figured Out How to Reveal Any Phone Number Linked to a Google Account

date: 2025-06-09, from: 404 Media Group

Phone numbers are a goldmine for SIM swappers. A researcher found how to get this precious piece of information from any Google account. 

<br> 

<https://www.404media.co/a-researcher-figured-out-how-to-reveal-any-phone-number-linked-to-a-google-account/>

---

## Detect radio jammers with Raspberry Pi 5

date: 2025-06-09, from: Raspberry Pi News (.com)

<p>Signal Sentinel is a great research project that harnesses Raspberry Pi 5’s power to detect radio jammers. </p>
<p>The post <a href="https://www.raspberrypi.com/news/detect-radio-jammers-with-raspberry-pi-5/">Detect radio jammers with Raspberry Pi 5</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/detect-radio-jammers-with-raspberry-pi-5/>

---

## DHS Black Hawks and Military Aircraft Surveil the LA Protests

date: 2025-06-09, from: 404 Media Group

Local police, state authorities, DHS, and the military all flew aircraft over the Los Angeles protests this weekend, according to flight path data. 

<br> 

<https://www.404media.co/dhs-black-hawks-and-military-aircraft-surveil-the-la-protests/>

---

## The Circulation of Rhetoric from Stall Walls to Social Feeds: Notes from the Analog Underground

date: 2025-06-09, from: Digital Humanities Quarterly News

There is something profoundly democratic about a bathroom stall. No velvet rope, no blue check, no institutional imprimatur—not even a username. Just a flat surface, a stylus, and the uncorked bile of a writer who neither sought nor needed your permission. And while many a self-serious theorist has long since baptized digital platforms as the [...]
<p><a href="https://www.digitalrhetoriccollaborative.org/2025/06/09/the-circulation-of-rhetoric-from-stall-walls-to-social-feeds-notes-from-the-analog-underground/" rel="nofollow">Source</a></p> 

<br> 

<https://www.digitalrhetoriccollaborative.org/2025/06/09/the-circulation-of-rhetoric-from-stall-walls-to-social-feeds-notes-from-the-analog-underground/>

---

## Nobody Expected the MAGA Inquisition

date: 2025-06-09, from: Paul Krugman

But it&#8217;s here, and will destroy American science 

<br> 

<https://paulkrugman.substack.com/p/nobody-expected-the-maga-inquisition>

---

## Copying Spinoza

date: 2025-06-09, from: Ed Summers blog, Inkdroid

<p>
I’ve run into <a
href="https://en.wikipedia.org/wiki/Baruch_Spinoza">Spinoza</a> a few
times, sometimes in unexpected places like <a
href="https://joyfulmilitancy.com/">Joyful Militancy</a>, but I’ve not
yet spent any time reading his work. He popped up in a recent Between
the Covers <a
href="https://tinhouse.com/podcast/madeleine-thien-the-book-of-records/">podcast</a>
interview with <a
href="https://en.wikipedia.org/wiki/Madeleine_Thien">Madeleine Thien</a>
about her new book <a
href="https://bookshop.org/p/books/the-book-of-records-madeleine-thien/21798601">The
Book of Records</a>. You’ll have to listen to the interview, or read the
book, to get a sense of how the book works, but it’s my understanding
that the main character is a refugee, and yet was able to bring with her
three slim books from a series called <em>The Great Lives of
Voyagers</em>, one of which is about Spinoza, the others being about Du
Fu and Hannah Arendt. I believe that readings of these fictional books
form part of The Book of Records.
</p>
<p>
During the interview Thien was asked about the importance of these
stories, and friendships to her work as a writer…not only friendships
with contemporaries, but across time as well.
</p>
<blockquote>
<p>
It’s certainly true when I placed all the stories side by side, or as
they began to weave through each other, that it became clear that all of
them are at times, many times, sometimes, saved by another, and none of
their work would reach us had these acts of friendship not occurred. And
Moriel asked about that idea of friendship across the centuries between
the living and the dead. I was always struck by Hannah Arendt writing
about Rahel Varnhagen and saying she was my best friend even though she
had died a hundred years ago before her. I often felt this with the
three figures who were moving around in the Sea, that they were amazed
that we wanted to sit with them, even if we didn’t always agree with
them, even if we might have quite serious critiques of some of their
ideas. But even then, the desire to value the teacher, to value the
teaching, and to understand what it was that each of us might be looking
for each time we sit with a text, with a person, with another human
being, <em>I only really feel like I was with Spinoza when I, over many
months, copied up Ethics.</em> I understood then the way the geometry
would work on a person’s mind, that it is such a step-by-step process,
that text. One thing really must be understood before one moves to the
next proposition. One has to draw the angles of the triangle and the
measurements and understand what a triangle is before one can begin to
“constellate” it with other things. That’s very much how Ethics works.
It is this seed, that everything that it contains is in it from its
first axioms, its first propositions, and you can kind of unfold them
and see how that all works.
</p>
</blockquote>
<p>
This idea of <em>copying</em> Spinoza’s Ethics in an effort to form an
understanding and a friendship with him is compelling: to get a copy of
Ethics, and a blank notebook, and just start copying it out. It’s my
understanding that the text takes shape in the form of axioms and
propositions that draw on geometry, in order to propose a “human
geometry”? Of all the maths that I needed to do in school it was
geometric proofs that I always got the most enjoyment from. This made me
think it would be fun to try do this copying practice with others, to
meet and discuss, and share our notebooks and thoughts? But then again,
I imagine if it took Thien months to do the copying it would take me
<em>much</em> longer…so perhaps it would be best to just work at my own
pace, when I can, without the peer pressure?
</p>
<p>
Another thing I learned while reading about Spinoza’s <a
href="https://en.wikipedia.org/wiki/Spinoza%27s_Ethics">Ethics,
Demonstrated in Geometric Order</a> on Wikipedia is that the first
translation into English was done by <a
href="https://en.wikipedia.org/wiki/George_Eliot">George Eliot</a> in
1883, and it was left unpublished until almost a hundred years later.
Spinoza wrote the book over 14 years and it was only published after he
died. According to Thien, it took her 9 years to write The Book of
Records. In this age of move fast and break things, the idea of doing
something restorative, over the course of years, is maybe what appeals
to me most.
</p>
 

<br> 

<https://inkdroid.org/2025/06/09/copying/>

---

**@Dave Winer's linkblog** (date: 2025-06-09, from: Dave Winer's linkblog)

Twitter-as-a-service. I wish AWS had done this ten years ago. We could’ve avoided a lot of misery. It could still happen. Might be a business model for the Bluesky folk. An honorable one imho. 

<br> 

<http://scripting.com/2016/04/28/1223.html>

---

## Daikin heat pump WiFi woes

date: 2025-06-09, from: Alex Pearce blog (CERN)

Troubleshooting WiFi connection problems with the Daikin Altherma MMI and Onecta app, ultimately due to WPA3 incompatibility. 

<br> 

<https://alex.pearwin.com/2025/06/daikin-heat-pump-wifi-woes/>

---

## Thoughts on DuckLake

date: 2025-06-09, from: Max Halford Blog

<p><a href="https://ducklake.select/">DuckLake</a> is the new data lake/warehouse from the makers of DuckDB. I really like the direction they&rsquo;re taking. I&rsquo;m hopeful it has the potential to streamline the data engineering workflow for many people, vastly reducing costs along the way.</p>
<p>I&rsquo;m a bit of a nut and don&rsquo;t use SQLMesh or dbt. Instead, I built <a href="https://github.com/carbonfact/lea">lea</a> a few years ago, and we still use it at <a href="https://carbonfact.org">Carbonfact</a>. I would probably pick SQLMesh if I had to start over, but lea allows me to explore new ideas, so I&rsquo;m sticking to it for now.</p> 

<br> 

<https://maxhalford.github.io/blog/ducklake-thoughts/>

---

**@Feed for Alt USDS** (date: 2025-06-08, from: Feed for Alt USDS)

🚨 All 22 Democratic Governors (@demgovs.org) have issued a joint statement about the CA National Guard being federalized and deployed to LA.

Here’s an article from @apnews.com that explains when deployments like this are legal and when they’re an abuse of power: 

🔗 https://apnews.com/article/insurrection-act-trump-troops-newsom-military-national-guard-a842f79e1c0e244039be274a6f266a7a 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3lr52db2kyk2i>

---

## 572. The Medici: Masters of Florence (Part 1)

date: 2025-06-08, from: This is history podcast

<p>What are the origins of one of history’s most glittering, and for a time, most powerful families in Europe; the Medici? How were they able to seize supreme power in the Republic of Florence , one of the most dazzling cities in the world, during the 15th century, at the height of the Renaissance? When [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/572-the-medici-masters-of-florence-part-1/">572. The Medici: Masters of Florence (Part 1)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/572-the-medici-masters-of-florence-part-1/>

---

## American Idiot(s)

date: 2025-06-08, from: Michael Moore's blog

There is an explanation to the madness we are witnessing &#8212; and, once again, the conscience of the country, the Pulitzer Prize winner Chris Hedges, tells us exactly what we don&#8217;t want to hear. 

<br> 

<https://www.michaelmoore.com/p/american-idiots>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

Bluesky’s decline stems from never hearing from other side. 

<br> 

<https://wapo.st/43SDXkS>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

Federal Judges Are Begging Us to Pay Attention. 

<br> 

<https://data4democracy.substack.com/p/federal-judges-are-begging-us-to?r=10322&triedRedirect=true>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

Why Mark Cuban cares about Bluesky. 

<br> 

<https://bsky.app/profile/mcuban.bsky.social/post/3lr4s7j5x4c2q>

---

## History Repeats

date: 2025-06-08, from: furbo.org

I&#8217;ve been developing on Apple products for a long time: typing PEEK and POKE code from magazines into an Apple ][, figuring out how QuickDraw worked using the Inside Macintosh pre-prints, having my mind blown by Mac OS X and every new thing prefixed with &#8220;NS&#8221;, and then jailbreaking the first iPhone so I could [&#8230;] 

<br> 

<https://furbo.org/2025/06/08/history-repeats/>

---

## ROG Xbox Ally and ROG Xbox Ally X handheld gaming PCs from Asus and Microsoft coming later this year

date: 2025-06-08, from: Liliputing

<p>The first Xbox-branded handhelds are on the way and, as expected, they&#8217;re not made by Microsoft&#8230; or at least the hardware isn&#8217;t. Instead Microsoft is partnering with Asus to launch a new ROG Xbox Ally and ROG Xbox Ally X. While the names sort of make it sound like these are just Xbox-branded versions of [&#8230;]</p>
<p>The post <a href="https://liliputing.com/microsoft-and-asus-introduces-rog-xbox-ally-and-rog-xbox-ally-x/">ROG Xbox Ally and ROG Xbox Ally X handheld gaming PCs from Asus and Microsoft coming later this year</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/microsoft-and-asus-introduces-rog-xbox-ally-and-rog-xbox-ally-x/>

---

## the printer that transcends dimensions and corrupts reality

date: 2025-06-08, from: Geoffrey Hunntley's blog

<blockquote>The IT department never questioned why the new printer arrived in a crate marked with eldritch symbols. They were just happy to finally have a replacement for the ancient LaserJet that had been serving the accounting floor since time immemorial.<br><br>Sarah from IT support was the first to notice something</blockquote> 

<br> 

<https://ghuntley.com/ideas/>

---

## The Thermal Master P2 Pro Thermal Imager Review

date: 2025-06-08, updated: 2025-06-08, from: Russell Graves, Syonyk's Project Blog

 

<br> 

<https://www.sevarg.net/2025/06/08/thermal-master-p2-pro/>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

Frum: Trump’s Ominous Military Flex in Los Angeles. 

<br> 

<https://www.theatlantic.com/ideas/archive/2025/06/los-angeles-dress-rehearsal-trump/683078/?gift=f35zZN0v_gDFE8xNwlQAHZNcUaLyQwviR7MpDS_VRpc&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

These resources from On Tyranny are free of charge and available for anyone to use and download. 

<br> 

<https://timothysnyder.org/resources/>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

Apparently the security system at the White House depends on all internet traffic going through their routers. The DOGE dudes got around that by installing Starlink, and they move stuff in and out without being detected. 

<br> 

<https://www.thedailybeast.com/elon-musks-doge-goons-surreptitiously-transmitted-reams-of-white-house-data/>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

What if the tanks stay in the streets of DC after the big beautiful parade? 

<br> 

<https://www.theatlantic.com/politics/archive/2025/06/trump-military-parade-ok/683050/?gift=f35zZN0v_gDFE8xNwlQAHZwhYV7wD6KdAORig66TS8Q&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

## Understanding Inequality, Part II

date: 2025-06-08, from: Paul Krugman

The importance of worker power 

<br> 

<https://paulkrugman.substack.com/p/understanding-inequality-part-ii>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

Scrappy: make little apps for you and your friends. 

<br> 

<https://pontus.granstrom.me/scrappy/?ref=dailydev>

---

## Qwen3 Embedding

date: 2025-06-08, updated: 2025-06-08, from: Simon Willison’s Weblog

<p><strong><a href="https://qwenlm.github.io/blog/qwen3-embedding/">Qwen3 Embedding</a></strong></p>
New family of embedding models from Qwen, in three sizes: 0.6B, 4B, 8B - and two categories: Text Embedding and Text Reranking.</p>
<p>The full collection <a href="https://huggingface.co/collections/Qwen/qwen3-embedding-6841b2055b99c44d9a4c371f">can be browsed</a> on Hugging Face. The smallest available model is the 0.6B Q8 one, which is available as a 639MB GGUF. I tried it out using my <a href="https://github.com/simonw/llm-sentence-transformers">llm-sentence-transformers</a> plugin like this:</p>
<pre><code>llm install llm-sentence-transformers
llm sentence-transformers register Qwen/Qwen3-Embedding-0.6B
llm embed -m sentence-transformers/Qwen/Qwen3-Embedding-0.6B -c hi | jq length
</code></pre>
<p>This output 1024, confirming that Qwen3 0.6B produces 1024 length embedding vectors.</p>
<p>These new models are the highest scoring open-weight models on the well regarded <a href="https://huggingface.co/spaces/mteb/leaderboard">MTEB leaderboard</a> - they're licensed Apache 2.0.</p>
<p><img alt="Table showing ranking of embedding models with columns for Rank, Model name, Zero-shot performance, Memory Usage, Number of Parameters, Embedding Dimensions, and Max Tokens. Top models include gemini-embedding-001 at rank 1 with 99% zero-shot and 3072 embedding dimensions, Qwen3-Embedding-8B at rank 2 with 99% zero-shot and 4096 embedding dimensions, and several other Qwen3 variants. Most models show 99% zero-shot performance with green highlighting, except gte-Qwen2-7B-instruct at rank 6 which shows &quot;NA&quot; with red highlighting and a warning triangle icon." src="https://static.simonwillison.net/static/2025/qwen3-mteb.jpg" /></p>
<p>You can also try them out in your web browser, thanks to a <a href="https://huggingface.co/docs/transformers.js/en/index">Transformers.js</a> port of the models. I loaded <a href="https://static.simonwillison.net/static/2025/qwen3-web.jpg">this page in Chrome</a> and it fetched 560MB of model files and gave me an interactive interface for visualizing clusters of embeddings like this:</p>
<p><img alt="Screenshot of a text embedding web application interface showing a &quot;Sentences&quot; panel on the left with various sample sentences about topics like cooking, technology, sports, finance, music, and history, a &quot;Labels&quot; section below listing these categories, and a &quot;Scatterplot&quot; visualization on the right displaying colored clusters of data points representing the embedded sentences grouped by topic, with an &quot;Embed &amp; Plot&quot; button at the bottom and instructions to &quot;Done! Hover over points to see sentences.&quot;" src="https://static.simonwillison.net/static/2025/qwen3-web.jpg" />

    <p><small></small>Via <a href="https://twitter.com/xenovacom/status/1931082176788906006">@xenovacom</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/embeddings">embeddings</a>, <a href="https://simonwillison.net/tags/qwen">qwen</a>, <a href="https://simonwillison.net/tags/llm">llm</a></p> 

<br> 

<https://simonwillison.net/2025/Jun/8/qwen3-embedding/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

Bill Atkinson, Who Made Computers Easier to Use, Is Dead at 74. 

<br> 

<https://www.nytimes.com/2025/06/07/technology/bill-atkinson-dead.html?smid=nytcore-ios-share&referringSource=articleShare>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

What to know about &quot;No Kings&quot; counterprotests to Trump&#39;s June 14 military parade. 

<br> 

<https://www.axios.com/2025/06/07/no-kings-protest-trump-military-parade-june-14>

---

## Let The Fans Have It

date: 2025-06-08, updated: 2025-06-08, from: Tedium site

A YouTuber makes an interesting pitch for the legendary Commodore brand: Instead of letting it die on the vine, make the brand accessible to the community for cheap. 

<br> 

<https://feed.tedium.co/link/15204/17047102/commodore-brand-revival-retro-recipes>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

Musk must be thinking of doing to the Democratic Party what Trump did to the Republicans. 

<br> 

<https://www.nbcnews.com/politics/donald-trump/trump-elon-musk-consequences-funds-democratic-candidates-rcna211605>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

Don’t Put an Insurrectionist in Charge of the Insurrection Act. 

<br> 

<https://www.thebulwark.com/p/trump-insurrection-act>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

Newsom blasts deployment of National Guard to LA as ‘purposefully inflammatory.’ 

<br> 

<https://www.politico.com/news/2025/06/07/newsom-national-guard-los-angeles-00393526>

---

**@Dave Winer's linkblog** (date: 2025-06-08, from: Dave Winer's linkblog)

WordPress veterans launch FAIR project to tackle security and control concerns. 

<br> 

<https://www.fastcompany.com/91347003/wordpress-veterans-launch-fair-project-to-tackle-security-and-control-concerns>

