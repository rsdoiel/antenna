---
title: tech likely 2024.22
updated: 2024-05-28 08:42:28
---

# tech likely 2024.22

(date: 2024-05-28 08:42:28)

---

**@Dave Winer's Scripting News** (date: 2024-05-28, from: Dave Winer's Scripting News)

Cross-posting to various social web sites has out of hand, not just for the person posting, but for readers. 

<http://scripting.com/2024/05/28.html#a151221>

---

## Sols 4195-4198: Feels Like Summer

date: 2024-05-28, from: NASA breaking news

Earth planning date: Friday, May 24, 2024 The first sol of this weekend includes an extremely long, 6-hour DAN activity to measure the amount of hydrogen near the surface, in parallel with a standard midday remote science block including: ChemCam LIBS on a smooth, dark rock named “Shadow Lake,” an RMI 7-frame mosaic of the […] 

<https://science.nasa.gov/blogs/sols-4195-4198-feels-like-summer/>

---

## The People’s AI

date: 2024-05-28, from: Doc Searls (at Harvard), New Old Blog

People need their own AIs. Personally and collectively. We won&#8217;t get them from Anthropic, Apple, Google, Meta, or Microsoft. Not even from Apple. All of those companies will want to provide AIaaS: AI as a Service, rather than AI that&#8217;s yours alone. Or ours, collectively. The People&#8217;s AI can only come from people. Since it [&#8230;] 

<https://doc.searls.com/2024/05/28/the-peoples-ai/>

---

## 15 Years Ago: First Time all Partners Represented aboard the International Space Station

date: 2024-05-28, from: NASA breaking news

From May 29 to July 17, 2009, for the first time in its history, each of the five partner agencies participating in the International Space Station Program had a crew member living and working aboard the orbiting facility at the same time. The period also marked the beginning of six-person crew habitation, greatly increasing the [&#8230;] 

<https://www.nasa.gov/history/15-years-ago-first-time-all-partners-represented-aboard-the-international-space-station/>

---

## A common web component learning blunder

date: 2024-05-28, from: Dave Rupert blog

<p>Through stalking the <a href="https://mastodon.social/tags/webcomponents">#WebComponents</a> hashtag and <a href="https://frontendmasters.com/courses/web-components/">my Frontend Masters course</a>, I’m privy to a lot of developers’ first experiences with web components. There’s a wide range of people digging in, but the most common first-time experience I come across is a developer coming from a classical component framework like React with JSX going straight to writing vanilla Web Components, becoming frustrated, and then deeming web components “not ready for primetime.”</p>
<p>Ignoring for a moment that web components <em>do</em> exist in the primetime and power some big and complex primetime web applications like Adobe’s Photoshop for Web, I half-understand this perspective. I understand the desire to not have a major dependency. I hate this bloated <code>node_modules</code> hellhole we’ve built over the last decade and while I’m not a <code>npm install</code> my problems away guy… I think this puritanical approach to dependencies is a misstep when diving into web components for the first time.</p>
<p>The analogy I’ve been using is that this is like jumping from a tall 130 kilobyte-story building (ReactDOM) right into the zero kilobyte sewers of web components. If you take anything from this post, please understand this: <em>web components (most likely) weren’t designed for you</em>. Not to dissuade you from using them, but they were <a href="https://blog.domenic.me/the-extensible-web/">purposefully designed</a> to be <a href="https://extensiblewebmanifesto.org/">a low-level bare metal primitive</a> for library authors to build on; they were designed to be used with a library, a thin layer of abstraction butter on top.</p>
<p>To understand this disparity further, let’s look at an example of what writing a component in a “modern” framework <em>feels</em> like…</p>
<div class="language-js highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="js"><span class="c1">// React</span>
<span class="k">export</span> <span class="k">default</span> <span class="kd">function</span> <span class="nf">MyApp</span><span class="p">()</span> <span class="p">{</span>
	<span class="nf">handleClick</span><span class="p">()</span> <span class="p">{</span>
		<span class="nf">alert</span><span class="p">(</span><span class="dl">'</span><span class="s1">hi</span><span class="dl">'</span><span class="p">)</span>
	<span class="p">}</span>
	
  <span class="k">return </span><span class="p">(</span>
    <span class="o">&lt;</span><span class="nx">div</span><span class="o">&gt;</span>
      <span class="o">&lt;</span><span class="nx">h1</span><span class="o">&gt;</span><span class="nx">Welcome</span> <span class="nx">to</span> <span class="nx">my</span> <span class="nx">app</span><span class="o">&lt;</span><span class="sr">/h1</span><span class="err">&gt;
</span>      <span class="o">&lt;</span><span class="nx">button</span> <span class="nx">onClick</span><span class="o">=</span><span class="p">{</span><span class="nx">handleClick</span><span class="p">}</span><span class="o">&gt;</span><span class="nx">I</span><span class="err">’</span><span class="nx">m</span> <span class="nx">a</span> <span class="nx">button</span><span class="o">&lt;</span><span class="sr">/button</span><span class="err">&gt;
</span>    <span class="o">&lt;</span><span class="sr">/div</span><span class="err">&gt;
</span>  <span class="p">);</span>
<span class="p">}</span>
</code></pre></div></div>
<p>Can you do this in vanilla web components? Sure. But it looks like this…</p>
<div class="language-js highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="js"><span class="c1">// Vanilla web component</span>
<span class="kd">const</span> <span class="nx">myAppTmpl</span> <span class="o">=</span> <span class="nb">document</span><span class="p">.</span><span class="nf">createElement</span><span class="p">(</span><span class="dl">'</span><span class="s1">template</span><span class="dl">'</span><span class="p">)</span>
<span class="nx">myAppTmpl</span><span class="p">.</span><span class="nx">innerHTML</span> <span class="o">=</span> <span class="s2">`
  &lt;h1&gt;Welcome to my app&lt;/h1&gt;
  &lt;button&gt;I’m a button&lt;/button&gt;
`</span><span class="p">;</span>

<span class="kd">class</span> <span class="nc">MyApp</span> <span class="kd">extends</span> <span class="nc">HTMLElement</span> <span class="p">{</span>
	<span class="nf">constructor</span><span class="p">()</span> <span class="p">{</span>
		<span class="k">super</span><span class="p">();</span>
		<span class="k">this</span><span class="p">.</span><span class="nx">_shadowRoot</span> <span class="o">=</span> <span class="k">this</span><span class="p">.</span><span class="nf">attachShadow</span><span class="p">({</span> <span class="na">mode</span><span class="p">:</span> <span class="dl">'</span><span class="s1">open</span><span class="dl">'</span> <span class="p">})</span>
		<span class="k">this</span><span class="p">.</span><span class="nx">_shadowRoot</span><span class="p">.</span><span class="nf">appendChild</span><span class="p">(</span><span class="nx">myAppTmpl</span><span class="p">.</span><span class="nx">content</span><span class="p">.</span><span class="nf">cloneNode</span><span class="p">(</span><span class="kc">true</span><span class="p">))</span>
		<span class="k">this</span><span class="p">.</span><span class="nx">_shadowRoot</span>
      <span class="p">.</span><span class="nf">querySelector</span><span class="p">(</span><span class="dl">'</span><span class="s1">button</span><span class="dl">'</span><span class="p">)</span>
      <span class="p">.</span><span class="nf">addEventListener</span><span class="p">(</span><span class="dl">'</span><span class="s1">click</span><span class="dl">'</span><span class="p">,</span> <span class="k">this</span><span class="p">.</span><span class="nx">handleClick</span><span class="p">);</span>	
	<span class="p">}</span>
	
	<span class="nf">handleClick</span><span class="p">()</span> <span class="p">{</span>
		<span class="nf">alert</span><span class="p">(</span><span class="dl">'</span><span class="s1">hi</span><span class="dl">'</span><span class="p">)</span>
	<span class="p">}</span>
<span class="p">}</span>

<span class="nx">customElements</span><span class="p">.</span><span class="nf">define</span><span class="p">(</span><span class="dl">'</span><span class="s1">my-app</span><span class="dl">'</span><span class="p">,</span> <span class="nx">MyApp</span><span class="p">)</span>
</code></pre></div></div>
<p>This is a boring, imperative set of instructions for building the component with a little bit of <code>dangerouslySetInnerHTML</code><sup class="footnote-ref"><a href="#fn1" id="fnref1">1</a></sup> mixed in there… and ugchk… it sucks. It’s even more verbose with more interactive elements or a slew of reactive props and attributes.</p>
<p>Let’s see what 7 kilobytes of Lit gets us….</p>
<div class="language-js highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="js"><span class="k">import</span> <span class="p">{</span> <span class="nx">LitElement</span><span class="p">,</span> <span class="nx">html</span> <span class="p">}</span> <span class="k">from</span> <span class="dl">'</span><span class="s1">lit</span><span class="dl">'</span>

<span class="kd">class</span> <span class="nc">MyApp</span> <span class="kd">extends</span> <span class="nc">LitElement</span> <span class="p">{</span>
	<span class="nf">handleClick</span><span class="p">()</span> <span class="p">{</span>
		<span class="nf">alert</span><span class="p">(</span><span class="dl">'</span><span class="s1">hi</span><span class="dl">'</span><span class="p">)</span>
	<span class="p">}</span>
	
  <span class="nf">render</span><span class="p">()</span> <span class="p">{</span>
		<span class="k">return</span> <span class="nx">html</span><span class="s2">`
      &lt;h1&gt;Welcome to my app&lt;/h1&gt;
      &lt;button @click=</span><span class="p">${</span><span class="k">this</span><span class="p">.</span><span class="nx">handleClick</span><span class="p">}</span><span class="s2">&gt;I’m a button&lt;/button&gt;
    `</span><span class="p">;</span>
  <span class="p">}</span>
<span class="p">}</span>

<span class="nx">customElements</span><span class="p">.</span><span class="nf">define</span><span class="p">(</span><span class="dl">'</span><span class="s1">my-app</span><span class="dl">'</span><span class="p">,</span> <span class="nx">MyApp</span><span class="p">)</span>
</code></pre></div></div>
<p>Now we have a component that’s almost identical to the familiar world of JSX but <em>without any Babel transforms or build steps</em>. For 7 kilobytes you get a lot more than some syntactic sugar, you get…</p>
<ul>
<li>A thin, tree-shakeable layer of abstraction for a modern developer experience</li>
<li>Reactive updates without VDOM</li>
<li>A more granular component lifecycle with a <code>render()</code> function</li>
<li>A cleaner way of registering and using reactive attributes and properties without overloading the <code>attributeChangedCallback</code></li>
<li>Template directives like <code>@click</code> for event handling and directives for JavaScript values (arrays, objects, etc).</li>
<li>And an <code>html</code> tagged template literal with an under-appreciated superpower ✨ that gives your components atomic updates under-the-hood.</li>
</ul>
<p>There’s value in learning how bare metal vanilla web components work in the same way there’s value in knowing how <code>Intl.RelativeTimeFormat()</code> works, but you probably want to use <a href="https://day.js.org/">Day.js</a> for your day-to-day work. You can totally <a href="https://hawkticehurst.com/writing/bring-your-own-base-class/">write your own base class abstraction</a> – and I want you to have the <code>JeffElement</code> base class of your dreams, I do – but you may find out (<a href="https://www.abeautifulsite.net/posts/building-custom-elements-with-a-library/">like Cory LaViska from Shoelace found out</a>) that after you write all your little helper functions and utilities that you’ll end up with something almost the exact same size and feature set as Lit, but not as well supported nor as battle-tested.</p>
<p>This makes me sound anti-vanilla web components and I’m not that by any means. Vanilla web components are a perfect fit for <a href="https://github.com/davatron5000/awesome-standalones">standalone components</a> and the Light DOM-forward flavor of “<a href="https://adactio.com/journal/20618">HTML web components</a>”, but I think the people having the most fun in this space are JavaScript minimalists who already prefer writing vanilla JavaScript. People like myself.</p>
<p>“If I have to use a library how is this any different than any other framework lock-in?” This is a valid question and one worthy of its own post, but I think you’ll find the lock-in costs of a web component library pretty minimal. Because all web components libraries extend a common base class, there’s a linear pathway out of vendor lock-in if necessary.</p>
<p>What I’m saying is this; next time you’re thinking about jumping from 130 kilobytes of developer convenience, maybe consider giving yourself a 7 kilobyte landing pad to cushion the fall.</p>
<section class="footnotes">
<ol>
<li id="fn1">
<p>There’s ways around the <code>innerHTML</code> call like by writing the template in your HTML instead. <a href="#fnref1" class="footnote-backref">↩</a></p>
</li>
</ol>
</section> 

<https://daverupert.com/2024/05/cold-turkey-wont-fix-your-javascript-addiction/>

---

##  Listening to Sand: The Sound Design of Dune 

date: 2024-05-28, updated: 2024-05-28, from: Jason Kottke blog

 

<https://kottke.org/24/05/listening-to-sand-the-sound-design-of-dune>

---

## Simple Equation Predicts the Shapes of Carbon-Capturing Wetlands

date: 2024-05-28, from: Quanta Magazine

To calculate the amount of carbon stored inside peatlands, researchers developed a unified theory of “bog physics” applicable around the world.            <p>The post <a href="https://www.quantamagazine.org/simple-equation-predicts-the-shapes-of-carbon-capturing-wetlands-20240528/" target="_blank">Simple Equation Predicts the Shapes of Carbon-Capturing Wetlands</a> first appeared on <a href="https://api.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<https://www.quantamagazine.org/simple-equation-predicts-the-shapes-of-carbon-capturing-wetlands-20240528/>

---

## XL Raspberry Pi 5 Game Boy

date: 2024-05-28, from: Raspberry Pi News (.com)

<p>Gameboy XL is powerful enough to run NES and PS2 emulators and, yes, you can play Doom on it.</p>
<p>The post <a href="https://www.raspberrypi.com/news/xl-raspberry-pi-5-game-boy/">XL Raspberry Pi 5 Game Boy</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/xl-raspberry-pi-5-game-boy/>

---

## Evolution of the ELF object file format

date: 2024-05-28, from: OS News

The ELF object file format is adopted by many UNIX-like operating systems. While I&#8217;ve previously delved into the control structures of ELF and its predecessors, tracing the historical evolution of ELF and its relationship with the System V ABI can be interesting in itself. ↫ MaskRay The article wasn&#8217;t lying. I had no reason to know this &#8211; and I&#8217;m pretty sure most of you didn&#8217;t either &#8211; but it turns out the standards that define ELF got caught up in the legal murkiness and nastiness of UNIX. After the dissolution of the committee governing ELF in 1995, stewardship went from one familiar name to the next, first Novell, then The Santa Cruz Operation, then Caldera which renamed itself to The SCO Group, and eventually ending up at UnXis (now Xinuos) in 2011. In 2015, the last maintainer of ELF left Xinuos, and since then, it&#8217;s been effectively unmaintained. Which is kind of wild, considering ELF is a crucial building block of virtually all UNIX and UNIX-like operating systems today. The article mentions there&#8217;s a neutral Google Group that discusses, among other things, ELF, but that, too, has seen dwindling activity. Still, that group has reached consensus on some changes; changes that are now not reflected in any of the official texts. It&#8217;s a bit of a mess. If you ever wanted to know the status of ELF as a standard, this article&#8217;s for you. 

<https://www.osnews.com/story/139809/evolution-of-the-elf-object-file-format/>

---

## A Mental Health Awareness Month Message from Your MAF EAP office: “Suicide and Crises Lifeline”

date: 2024-05-28, from: NASA breaking news

While NASA promotes the availability of EAP counselors at each Center, there may be reasons when, during a mental health crisis, employees do not think about EAP or cannot remember how to access. Now, the Suicide and Crises Lifeline (https://988lifeline.org/) is available to anyone, anytime nationwide by calling or texting three numbers from your cell [&#8230;] 

<https://www.nasa.gov/general/a-mental-health-awareness-month-message-from-your-maf-eap-office-suicide-and-crises-lifeline/>

---

**@Dave Winer's Scripting News** (date: 2024-05-28, from: Dave Winer's Scripting News)

Here's a problem I have with the ChatGPT app. I can't find the conversations I had with it a month ago. And I need to. They desperately need a Bookmarks menu. I'm sure their corporate customers are screaming about this, because they need groupware too. Are they partnering with Slack, or is Slack doing their own, for example? 

<http://scripting.com/2024/05/28.html#a123950>

---

**@Dave Winer's Scripting News** (date: 2024-05-28, from: Dave Winer's Scripting News)

Wouldn't it be incredible to have ChatGPT as part of a conversation on GitHub? 

<http://scripting.com/2024/05/28.html#a123322>

---

**@Dave Winer's Scripting News** (date: 2024-05-28, from: Dave Winer's Scripting News)

Apple, Microsoft, Google, Facebook, Amazon, etc should collaborate on new ways to do software docs and user interaction using AI. It's an incredible application, it will revolutionize how useful computers are to people, and the only people whose writing is ingested are employees of the companies. Not only will it increase utility, it will demonstrate in a very observable way how transformational the technology is. Probably will do nice things for the value of the stock too. 

<http://scripting.com/2024/05/28.html#a120523>

---

## Introduction: DBus and systemd

date: 2024-05-28, from: OS News

systemd uses DBus as the mechanism to interact with it. This article introduces just enough DBus concepts and the usage of busctl to communicate with systemd. These concepts should be useful when using DBus libraries. ↫ Beartama Exactly what it says on the tin. 

<https://www.osnews.com/story/139807/introduction-dbus-and-systemd/>

---

## What would an IPO mean for the Raspberry Pi Foundation?

date: 2024-05-28, from: Raspberry Pi (.org)

<p>On 22 May 2024, we announced that we are intending to list the Foundation&#8217;s commercial subsidiary, Raspberry Pi Ltd, on the Main Market of the London Stock Exchange. This is called an Initial Public Offering (IPO).&#160; The IPO process is — quite rightly — highly regulated, and information about the company and the potential listing&#8230;</p>
<p>The post <a href="https://www.raspberrypi.org/blog/what-would-an-ipo-mean-for-the-raspberry-pi-foundation/">What would an IPO mean for the Raspberry Pi Foundation?</a> appeared first on <a href="https://www.raspberrypi.org">Raspberry Pi Foundation</a>.</p>
 

<https://www.raspberrypi.org/blog/what-would-an-ipo-mean-for-the-raspberry-pi-foundation/>

---

## 2024-05-23 Death and dying

date: 2024-05-28, from: Alex Schroeder's Blog

<h1 id="2024-05-23-death-and-dying">2024-05-23 Death and dying</h1>

<p>This is the first time somebody is dying in my close family where I am old enough to be an adult about it.</p>

<p>One of my sisters died when I was about twenty. I was living in Switzerland with my dad, and it was terrible to hear my mom crying at the phone, practically unable to tell me what had happened, to then see my father confused, shocked. I booked a flight for him but didn&rsquo;t go myself. My mom was living in Portugal with my two sisters. I wasn&rsquo;t there for my sister&rsquo;s burial. People had to be buried within 48 hours, back then. I don&rsquo;t know how things are now. There was school and stuff and I had not lived with my sisters for a few years. I didn&rsquo;t feel very close. It just felt weird. I didn&rsquo;t know what it was supposed to mean.</p>

<p>Now, thirty years later, my stepfather is dying. His kidneys are failing, his liver is failing, his lungs are filling up with water, his heart is failing; they can&rsquo;t give him his heart medication because the kidneys are at their limits, can&rsquo;t have him move around because he&rsquo;s weak, and so he&rsquo;s breaking down. I mean, he&rsquo;s calm, he knows what&rsquo;s happening, and he&rsquo;s very, very tired. He&rsquo;s ready to go.</p>

<p>I think that in my heart, I know that this is how it works. We have to go one day. I don&rsquo;t want to spend the last hours hooked up to machines. I&rsquo;ll be very, very tired. I&rsquo;ll just want to go home. I also won&rsquo;t want anybody around me to be sad. Hopefully, I&rsquo;ll feel that I lived a good life, that I had a good time, that the people I spend my time with were decent people, worthy of the short time I was given. I hope that I will be able to let go and be at peace. It&rsquo;s what I hear about my stepfather.</p>

<p>But when I sit in that family video call, with siblings in Portugal and Germany and my, and my mother, and one after another people start crying, choking up, it&rsquo;s hard. It&rsquo;s a that invisible choker, grabbing us, one after another.</p>

<p>I need to remember the good times, the conversations we had, the laughter we shared. I need to book a flight and see the rest of our family. All that independence and all that living abroad is coming back to haunt us, now.</p>

<p>To go and support each other.</p>

<p>Go and hug your loved ones.</p>

<p><a class="tag" href="/search/?q=%23Family">#Family</a></p>

<p><strong>2024-05-27</strong>. I arrived today. He didn’t look good at all. In fact, he seemed to be barely holding on to life. Sleeping, mostly. Occasionally, gasping for air, staring, maybe recognizing us, saying a word or two. It was heartbreaking. He died the same day. The doctor and the nurse came, two very friendly people. Removed the tubes, stopped the Morphium machine, made his death official.</p>

<p>There were so many tears. A step brother, a half-brother, a half-sister, my sister, my half-brother’s wife, their kid, my mom… the kid was the only one that seemed unperturbed. “Don’t be sad, grandma!”</p>

<p>Later the funerary services came to pick up the body. Again, both of them super nice. We’ll see how things go, tomorrow. My mother is not feeling well. I seem to be doing OK. I can be strong when it’s not my partner that has died.</p>

<p>I’m happy we were all there for him, singing songs, bringing him his birthday cake (he died on his 78th birthday). I’m happy we were all there for each other.</p>

<p><strong>2024-05-28</strong>. Cremation today. The sun is out. People on the radio.</p> 

<https://alexschroeder.ch/view/2024-05-23-death>

---

## Do electric cars use more water than petrol cars?

date: 2024-05-28, from: Hannah Richie at Substack

With current electricity mixes, yes. In a low-carbon world, no. 

<https://www.sustainabilitybynumbers.com/p/electric-vehicles-water>

---

## Johnson Celebrates AA and NHPI Heritage Month: Britney Tang

date: 2024-05-28, from: NASA breaking news

When you think about personal property, your home, clothes, and electronic devices probably come to mind. For NASA, personal property comprises government-owned government-held assets ranging from laptops to spacecraft and space station components. Managing the financial records for these assets is the responsibility of the Property Accounting Team, which includes Personal Property Accountant Britney Tang. [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/johnson/johnson-celebrates-aa-and-nhpi-heritage-month-britney-tang/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-05-27, from: Miguel de Icaza Mastondon feed)

<p>Part 7 of bringing Godot to the iPad, where I discuss the Project Settings reorganization:</p><p><a href="https://blog.la-terminal.net/project-settings-2/" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">blog.la-terminal.net/project-s</span><span class="invisible">ettings-2/</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112515760261455322>

---

## Ongoing Venus Volcanic Activity Discovered With NASA’s Magellan Data

date: 2024-05-27, from: NASA breaking news

An analysis of data from Magellan’s radar finds two volcanoes erupted in the early 1990s. This adds to the 2023 discovery of a different active volcano in Magellan data. Direct geological evidence of recent volcanic activity on Venus has been observed for a second time. Scientists in Italy analyzed archival data from NASA’s Magellan mission [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/jpl/ongoing-venus-volcanic-activity-discovered-with-nasas-magellan-data/>

---

**@Dave Winer's Scripting News** (date: 2024-05-27, from: Dave Winer's Scripting News)

A <a href="http://scripting.com/2023/10/21/143159.html">reading list</a> is a "list of feeds you can subscribe to." 

<http://scripting.com/2024/05/27.html#a142955>

---

**@Dave Winer's Scripting News** (date: 2024-05-27, from: Dave Winer's Scripting News)

Robert Alexander has supplied a <a href="https://github.com/scripting/Scripting-News/issues/308#issuecomment-2132294095">bunch of feeds</a> with links to blogrolls. And that has got me rolling on reading feeds and blogrolls, which I am narrating in the <a href="https://github.com/scripting/Scripting-News/issues/308">thread</a>, as I go. 

<http://scripting.com/2024/05/27.html#a142733>

---

## MSI shows off motherboard with CAMM2 memory

date: 2024-05-27, from: OS News

Earlier this month, we talked about the arrival of the new CAMM2 memory module standard, specifically designed to make replaceable memory modules as fast and capable as soldered memory. There&#8217;s technically no reason for CAMM2 to not also be beneficial to desktop use, and it turns out MSI is experimenting with this. MSI on Thursday published the first image of a new desktop motherboard that supports the innovative DDR5 compression attached memory module (CAMM2). DDR5 CAMM2 modules are designed to improve upon the SO-DIMM form factor used for laptops, alleviating some of the high-speed signaling and capacity limitations of SO-DIMMs while also shaving down on the volume of space required. And while we&#8217;re eagerly awaiting to see CAMM2 show up in more laptops, its introduction in a PC motherboard comes as a bit of a surprise, since PCs aren&#8217;t nearly as space-constrained. ↫ Anton Shilov at AnandTech This MSI motherboard is a bit of an experiment, as it also contains other more experimental choices like back-mounted power connectors. While CAMM2&#8217;s space savings won&#8217;t mean much for most desktop builds, it does leave more room for CPU coolers, and it looks a bit cleaner, too. 

<https://www.osnews.com/story/139804/msi-shows-off-motherboard-with-camm2-memory/>

---

## High-Tech Stamps

date: 2024-05-27, updated: 2024-05-27, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/05/27/high-tech-stamps/>

---

## Journeys

date: 2024-05-27, from: Ayjay blog

Early in Terrence Malick’s masterpiece A Hidden Life (2019), Franz Jägerstätter and his wife Franziska (Fani) sit at the kitchen table in their Austrian farmhouse and reminisce about their first meeting. Fani thinks back to Franz’s arrival in the village, and as she does we cut to a shot, seen from behind and slightly above, [&#8230;] 

<https://blog.ayjay.org/journeys/>

---

## IceWM 3.5.0 released

date: 2024-05-27, from: OS News

IceWM, the venerable window manager we&#8217;ve all used at some point in our lives, has released a new version, 3.5.0. It&#8217;s a relatively minor release, so you&#8217;ve got things like a new install option which will install an extra theme, a fix for porting to NetBSD 10, translation updates, and more such small improvements. The AddressBar, a command line in the taskbar that can be summoned with ctrl+alt+space, also got some love, with file argument completion and support for the cd and pwd commands. You can compile IceWM yourself, of course, but it&#8217;ll most likely find its way into your distribution&#8217;s repository quickly enough. 

<https://www.osnews.com/story/139801/icewm-3-5-0-released/>

---

## Episode 132 - The PDP-1

date: 2024-05-26, from: Advent of Computing

<p data-pm-slice="0 0 []">In 1959 the world bore witness to a new type of computer: the PDP-1. It was the first interactive computer to really make a dent in the market. Some say it was the first minicomputer: a totally new class of machine. But where did this computer come from, and what made it so different from the rest of the digital pack?</p> <p>Selected sources:</p> <p><a href="https://americanhistory.si.edu/comphist/olsen.html" rel="noopener noreferrer nofollow">https://americanhistory.si.edu/comphist/olsen.html</a> - Smithsonian interview with Ken Olsen</p> <p><a href= "https://archive.computerhistory.org/resources/access/text/2019/03/102785079-05-01-acc.pdf" rel="noopener noreferrer nofollow" data-link-auto= "">https://archive.computerhistory.org/resources/access/text/2019/03/102785079-05-01-acc.pdf</a> - Computing in the Middle Ages</p> <p><a href= "https://archive.org/details/bitsavers_decBooksBeng_37322315" rel= "noopener noreferrer nofollow" data-link-auto= "">https://archive.org/details/bitsavers_decBooksBeng_37322315</a> - Computer Egnineerling, Bell et al.</p> 

<https://adventofcomputing.libsyn.com/episode-132-the-pdp-1>

---

**@Dave Winer's Scripting News** (date: 2024-05-26, from: Dave Winer's Scripting News)

The best <a href="https://www.youtube.com/watch?v=2nwRiuh1Cug">campaign commercial</a> ever. So simple. A nostalgic <a href="https://en.wikipedia.org/wiki/America_(Simon_%26_Garfunkel_song)">song</a>, beautifully performed. Stock footage of American workers and families, interspersed with video from campaign events. These things aren't complicated. I bet Bernie and <a href="https://en.wikipedia.org/wiki/Simon_%26_Garfunkel">S&G</a> would let Biden use the same format. 

<http://scripting.com/2024/05/26.html#a231938>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-05-26, from: Miguel de Icaza Mastondon feed)

<p>Another update, using &quot;swift -c release&quot; rather than Xcode &quot;Release&quot; also improves Vapor memory usage from 24MB to 14MB.</p> 

<https://mastodon.social/@Migueldeicaza/112509607867357286>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-05-26, from: Miguel de Icaza Mastondon feed)

<p>Update, I must have done something wrong with Hummingbird and Xcode.</p><p>Using &quot;swift run -c release&quot; rather than running in Release mode from Xcode brings Hummingbird to 52,305 req/sec and memory usage down to 16MB.</p> 

<https://mastodon.social/@Migueldeicaza/112509563396295844>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-05-26, from: Miguel de Icaza Mastondon feed)

<p>Fresh massacre in Palestine, in the place the ICJ explicitly said to stop.</p><p>When you paid off every politician in the US, they just let you do it.  You can do anything.</p><p><a href="https://x.com/timesofgaza/status/1794819866186371567?s=46" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">x.com/timesofgaza/status/17948</span><span class="invisible">19866186371567?s=46</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112509171712254155>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-05-26, from: Miguel de Icaza Mastondon feed)

<p>Exports in SwiftGodot got a few new updates:</p><p><a href="https://migueldeicaza.github.io/SwiftGodotDocs/documentation/swiftgodot/exports" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">migueldeicaza.github.io/SwiftG</span><span class="invisible">odotDocs/documentation/swiftgodot/exports</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112509151272766046>

---

## Against Landlords

date: 2024-05-26, updated: 2024-05-26, from: Robin Rendle Essays

 

<https://robinrendle.com/notes/against-landlords/>

---

## What should we learn from OpenAI’s mistakes and broken promises?

date: 2024-05-26, from: Gary Marcus blog

It&#8217;s increasingly clear that OpenAI has not been consistently candid. What follows from that? 

<https://garymarcus.substack.com/p/what-should-we-learn-from-openais>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-05-26, from: Miguel de Icaza Mastondon feed)

<p>Regarding the German credit card I previously tweeted about: <a href="https://mastodon.social/@hamato/112508398568111709" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">mastodon.social/@hamato/112508</span><span class="invisible">398568111709</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112508435193356951>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-05-26, from: Miguel de Icaza Mastondon feed)

<p>And a recommendation for the UK folks:<br /><a href="https://hachyderm.io/@ben_lings/112507922775704181" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">hachyderm.io/@ben_lings/112507</span><span class="invisible">922775704181</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112508030356600819>

---

**@Dave Winer's Scripting News** (date: 2024-05-26, from: Dave Winer's Scripting News)

<a href="https://github.com/scripting/Scripting-News/issues/308">Call for feeds</a>. I'm working on a bit of demo software and need a few blogroll-supporting feeds that have &lt;source:blogroll> elements. 

<http://scripting.com/2024/05/26.html#a142703>

---

## Call to Action: Fediverse Media Server

date: 2024-05-26, from: Tilde.news

<p><a href="https://tilde.news/s/nb4fhs/call_action_fediverse_media_server">Comments</a></p> 

<https://shlee.fedipress.au/2024/call-to-action-fediverse-media-server/>

---

## Full Circle Weekly News 367

date: 2024-05-26, from: Full Circle Magazine

<ul>
<li>
<p><a href="https://lkml.org/lkml/2024/5/12/224">Linux kernel 6.9 release:</a></p>
</li>
<li>
<p><a href="https://lists.altlinux.org/pipermail/altlinux-announce-ru/2024/000045.html">Viola Workstation K 10.3:</a></p>
</li>
<li>
<p><a href="https://fosstodon.org/@keepassxc/112417353193348720">Debian switches to a stripped-down version of the KeePassXC:</a></p>
</li>
<li>
<p><a href="https://github.com/rescuezilla/rescuezilla/releases/tag/2.5">Rescuezilla 2.5:</a></p>
</li>
<li>
<p><a href="https://forums.developer.nvidia.com/t/clarifying-560-series-drivers-open-sourcedness-vs-kernel-module-type-proprietary-CFD0C5CECEC5D4/292698/2">An NVIDIA representative answered questions related to the transfer of drivers to open kernel modules:</a></p>
</li>
<li>
<p><a href="https://forum.manjaro.org/t/manjaro-24-0-wynsdey-released/161527">Release of Manjaro Linux 24.0:</a></p>
</li>
<li>
<p><a href="https://www.reddit.com/r/linux/comments/1cs8xr7/aldos_fedora_without_systemd/">ALDOS a variant of Fedora without systemd:</a></p>
</li>
<li>
<p><a href="https://www.endlessos.org/post/getting-started-with-endless-os-6">Release of Endless OS 6.0:</a></p>
</li>
<li>
<p><a href="https://blogs.oracle.com/linux/post/oracle-linux-9-update-4-is-generally-available">Release of Oracle Linux 9.4:</a></p>
</li>
<li>
<p><a href="https://www.codethink.co.uk/articles/2024/GNOME-OS-systemd-sysupdate/">GNOME OS switches to atomic updates using systemd-sysupdate:</a></p>
</li>
<li>
<p><a href="https://www.welivesecurity.com/en/eset-research/ebury-alive-unseen-400k-linux-servers-compromised-cryptotheft-financial-gain/">An SSH backdoor installed during the kernel.org hack remained undetected for two years:</a></p>
</li>
<li>
<p><a href="https://about.winamp.com/press/article/winamp-open-source-code">Opening of Winamp code announced:</a></p>
</li>
<li>
<p><a href="https://gpanders.com/blog/whats-new-in-neovim-0.10/">Release of Neovim 0.10:</a></p>
</li>
<li>
<p><a href="https://sourceforge.net/p/sevenzip/discussion/45797/thread/b92679e642/">Release 7-Zip 24.05:</a></p>
</li>
<li>
<p><a href="https://pointieststick.com/2024/05/17/this-week-in-kde-all-about-those-apps">Changes to improve the display of KDE applications in GNOME and Xfce:</a></p>
</li>
<li>
<p><a href="https://yast.opensuse.org/blog/2024-05-17/agama-8">The openSUSE project has published the Agama 8 installer, freed from binding to Cockpit:</a></p>
</li>
</ul>
<p><strong>Credits</strong></p>
<ul>
<li>Host: <a href="https://twitter.com/bardictriad">@bardictriad</a>, <a href="mailto:zaivala@hostux.social">@zaivala</a></li>
<li>Bumper: <a href="https://canonical.com/">Canonical</a></li>
<li>Theme Music: From The Dust - Stardust</li>
<li><a href="https://soundcloud.com/ftdmusic">https://soundcloud.com/ftdmusic</a></li>
<li><a href="https://creativecommons.org/licenses/by/4.0/">CC BY 4.0</a></li>
</ul> 

<https://fullcirclemagazine.org/podcasts/podcast-367/>

---

## "No way to prevent this" say users of only language where this regularly happens

date: 2024-05-26, from: Ze Iaso's blog

 

<https://xeiaso.net/shitposts/no-way-to-prevent-this/CVE-2023-52656/>

---

## Feynman's Garden

date: 2024-05-26, from: Marginallia log

The best description of my problem solving process is the Feynman algorithm, which is sometimes presented as a joke where the hidden subtext is &ldquo;be smart&rdquo;, but I disagree. The &ldquo;algorithm&rdquo; is a surprisingly lucid description of how thinking works in the context of hard problems where the answer can&rsquo;t simply be looked up or trivially broken down, iterated upon in a bottom-up fashion, or approached with similar methods.
Feynman&rsquo;s thinking algorithm is described like this: 

<https://www.marginalia.nu/log/a_108_feynman_revisited/>

