---
title: columns
updated: 2025-01-21 07:06:54
---

# columns

(date: 2025-01-21 07:06:54)

---

##  The 25 Best Films of 2024: A Video Countdown 

date: 2025-01-21, updated: 2025-01-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/the-25-best-films-of-2024-a-video-countdown>

---

## 2025-01-21 Sabotage

date: 2025-01-21, from: Alex Schroeder's Blog

<h1 id="2025-01-21-sabotage">2025-01-21 Sabotage</h1>

<p>The <a href="/pdfs/OSS%20Simple%20Sabotage%20Field%20Manual.pdf">OSS Simple Sabotage Field Manual</a> a short 20 page read.
There&rsquo;s a cleaned up version <a href="https://en.wikisource.org/wiki/Simple_Sabotage_Field_Manual">on Wikisource</a>.</p>

<p>It might help you make the right decision if you&rsquo;re put in a tight spot. 😬</p>

<p>It might help you see your co-workers in a new light. 😄</p>

<p>Good luck.</p>

<blockquote>
<p>Sabotage varies from highly technical coup de main acts that require detailed planning and the use of specially trained operatives, to innumerable simple acts which the ordinary individual citizen-saboteur can perform. This paper is primarily concerned with the latter type. Simple sabotage does not require specially prepared tools or equipment; it is executed by an ordinary citizen who may or may not act individually and without the necessity for active connection with an organized group; and it is carried out in such a way as to involve a minimum danger of injury, detection, and reprisal. &ndash; <a href="https://en.wikisource.org/wiki/Simple_Sabotage_Field_Manual/Introduction">OSS Simple Sabotage Manuual, Introduction</a></p>
</blockquote>

<p>The <a href="https://en.wikipedia.org/wiki/Office_of_Strategic_Services">Office of Strategic Services</a> (OSS) was a precursor to the Central Intelligence Agency (CIA) during the second world war for propaganda and subversion.</p>

<p><a class="tag" href="/search/?q=%23Politics">#Politics</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-01-21-sabotage>

---

##  I loved the pop-up cubicle at Grand Central that Apple did for... 

date: 2025-01-21, updated: 2025-01-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0046006-i-loved-the-pop-up-cubicl>

---

## Bingeworthy + WordLand

date: 2025-01-21, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2017/12/10/thisIsNextYear.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I spent a few days designing and implementing the protocol that allows WordLand to be the writing tool for Bingeworthy, thus giving it a real writing and publishing function, instead of the usual ridiculous tiny little textbox. Today I'm going to make it work for writing and reading actual reviews for shows I have opinions about. I've always wanted to do this in a way that it's not just scattered into the wind, to rely on Google to find it again. Now I'll be able to scatter it, and also have it maintained in context, where it can help me remember what I liked about a show, and why perhaps I gave it an excellent rating when some parts really sucked. This was something that was missing in Bingeworthy, I knew it -- just didn't know how to make it work. Now I think I have it working.</p>
<p>Here's the flow:</p>
<ul>
<li>In Bingeworthy, I rate a program. Then I realize I want to say more, I want to write a review that explains the rating.</li>
<li>I click on the <i>Write in WordLand</i> button. The bingeworthy client asks for a token from the bingeworthy server. The token is is part of the database record for the user's rating of the program being displayed.  </li>
<li>The button switches me over to WordLand using window.open, along with a <a href="https://gist.github.com/scripting/3b3c17e974882409ebf0f715a6f4f1b3">package of data</a> that gives the editor all the info it needs to update the post when published. It's worth clicking the <a href="https://gist.github.com/scripting/3b3c17e974882409ebf0f715a6f4f1b3">link</a> to see the data involved. </li>
<li>In WordLand, I see a <a href="https://imgs.scripting.com/2025/01/18/useWordland.png">dialog</a> confirming that I want to write a review for Bingeworthy. If I approve, it creates a new WordLand draft. </li>
<li>I write the first draft of the review and when I'm ready I publish it. The protocol supports revisions, btw.</li>
<li>WordLand builds a URL with tv.bingeworthy.org as the destination. The post body has a JSON object with title and content properties, both of which can contain markdown. The URL params contain the id of the program, screenname of the user, the token that authorizes updating the comment for the rating of this program by this user. </li>
<li>On tv.bingeworthy.org, if the token agrees with the one in the database, it updates the comment field of the rating, </li>
<li>Then tv.bingeworthy.org sends a websocket message to the author, in Bingeworthy, so they can update the display of the rating for the user, if they still have the program displayed on their screen.</li>
</ul>
<p>I've done these kinds of protocols before, for example, menu sharing on the Mac in the 90s and rssCloud on the web. These are increasingly complicated things, because they require secure coordination between a circle of programs, and allow choice in each of the nodes. </p>
<p>There's nothing hard-coded about the protocol only working for this pair of programs. </p>
<p>It also supports updating. And the post is also available in WordPress and RSS, so even though it's editable in a great editor, and displayed in a collection of similar writing, it is also fully scattered into the wind. And there's no need for federation, it's just a protocol. We don't even rely on the apps using the same identity system.</p>
<p>A <a href="https://github.com/scripting/wordlandSupport/issues/41">thread</a> I started on the WordLand support repo.</p>
 

<br> 

<http://scripting.com/2025/01/21/140340.html?title=bingeworthyWordland>

---

## Heading off spam on Bluesky

date: 2025-01-21, from: Dave Winer's Scripting News

<p>Please -- to the people in charge at Bluesky, add a setting that allows me to restrict who can reply to posts. Choices:</p>
<ol>
<li>Anyone can reply.</li>
<li>People who follow me can reply.</li>
<li>People I follow can reply.</li>
<li>No one can reply.</li>
</ol>
<p>For <i>all</i> posts, not on a post-by-post basis. </p>
<p>Defaults to #3.</p>
 

<br> 

<http://scripting.com/2025/01/21/135822.html?title=headingOffSpamOnBluesky>

---

##  Provocative from Tim Carmody: David Lynch was America’s greatest conservative filmmaker. &#8220;There... 

date: 2025-01-21, updated: 2025-01-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0046005-provocative-from-tim-carm>

---

## AI Mistakes Are Very Different from Human Mistakes

date: 2025-01-21, updated: 2025-01-20, from: Bruce Schneier blog

<p>Humans make mistakes all the time. All of us do, every day, in tasks both new and routine. Some of our mistakes are minor and some are catastrophic. Mistakes can break trust with our friends, lose the confidence of our bosses, and sometimes be the difference between life and death.</p>
<p>Over the millennia, we have created security systems to deal with the sorts of mistakes humans commonly make. These days, casinos rotate their dealers regularly, because they make mistakes if they do the same task for too long. Hospital personnel write on limbs before surgery so that doctors operate on the correct body part, and they count surgical instruments to make sure none were left inside the body. From copyediting to double-entry bookkeeping to appellate courts, we humans have gotten really good at correcting human mistakes...</p> 

<br> 

<https://www.schneier.com/blog/archives/2025/01/ai-mistakes-are-very-different-from-human-mistakes.html>

---

## The jig is up

date: 2025-01-21, from: Robert Reich's blog

Global corporations are now ending the pretense that they&#8217;re socially responsible. That&#8217;s progress, in a way. 

<br> 

<https://robertreich.substack.com/p/the-jig-is-up>

---

## January 20, 2025

date: 2025-01-21, from: Heather Cox Richardson blog

The tone for the inauguration of Donald J. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-20-2025>

---

## A big western loop: day 4 & 5

date: 2025-01-21, from: Matt Haughey blog

<p>I woke up early in Moab, Utah, ready to hit a bunch of trails I&apos;ve had my eye on, but never did in the past. Mostly, they were picked for looking scenic, and not necessarily being too difficult. Wipeout Hill was a bit crazy, but otherwise I didn&</p> 

<br> 

<https://a.wholelottanothing.org/a-big-western-loop-day-4-5/>

---

## Remember Clips?

date: 2025-01-21, updated: 2025-01-21, from: Daring Fireball

 

<br> 

<https://appleinsider.com/articles/25/01/20/metas-edits-is-an-alternative-to-capcut-as-apple-forgets-about-clips>

---

## Meta Teases ‘Edits’, an Upcoming Video Editing App to Rival CapCut

date: 2025-01-21, updated: 2025-01-21, from: Daring Fireball

 

<br> 

<https://www.theverge.com/2025/1/19/24347358/instagram-edits-capcut-video-app-tiktok-ban>

---

## We Got Who They Voted For

date: 2025-01-21, from: Dan Rather's Steady

The president chose not to take the high road 

<br> 

<https://steady.substack.com/p/we-got-who-they-voted-for>

---

## The Worst Part of a Terrible Speech.

date: 2025-01-21, from: James Fallows, Substack

Let me get this out of the way. 

<br> 

<https://fallows.substack.com/p/the-worst-part-of-a-terrible-speech>

---

## Dave Chappelle’s SNL Monologue

date: 2025-01-20, updated: 2025-01-20, from: Daring Fireball

 

<br> 

<https://www.youtube.com/watch?v=57pGarTBJrU>

---

## Linux Mint 22.1 Xia arrives fashionably late

date: 2025-01-20, updated: 2025-01-20, from: Liam Proven's articles at the Register

<h4>Both the Ubuntu and Debian-based editions get Cinnamon 6.4 and other goodies</h4>
      <p>It&#39;s a bit later than we were expecting, but the latest Mint is here and should start to be offered as an upgrade soon.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/01/20/linux_mint_221_xia/>

---

## Preemptive pardons and Trump’s retribution

date: 2025-01-20, from: Robert Reich's blog

Day 1 

<br> 

<https://robertreich.substack.com/p/preemptive-pardons-and-tyranny>

---

## American Hearts

date: 2025-01-20, from: Dave Rupert blog

<iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/3EWJg0d2CMtst83tU5nZiq?utm_source=generator&theme=0" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
<p>Today I want to share with you a song that has stuck with me for a couple decades and has been a source of catharsis for shaking off that existential dread. I’m talking about Piebald’s 2002 single <em>American Hearts</em>. (<a href="https://www.youtube.com/watch?v=RlTEaWB3eeg">video</a>)</p>
<div class="language-markdown highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="markdown">[Hook]
HEY! You're part of it
YEAH! You're part of it
HEY! You're part of it
YEAH! You're part of it

[Verse 1]
I walk the streets of a Carolina
Watching people pushing shopping carts
And there's a guy above me
And he's washing windows
Making ten bucks a pop
And he says to me...

[Hook]
HEY! You're part of it
YEAH! You're part of it
HEY! You're part of it
YEAH! You're part of it

[Verse 2]
And I say, "Sir, well have you heard that this country is unequal still?"
History continues itself
Continues itself
History continues itself
And I did not create the rules

From all I've heard
And all I've seen
This place has broken
My American heart
From all I've heard
And all I've seen
This place has broken
My American heart

[Hook]
HEY! You're part of it
YEAH! You're part of it
HEY! You're part of it
YEAH! You're part of it
</code></pre></div></div>
<p>From the first snap of the snare to the final piano chord the song grips you for the whole ride. The staccato bass line powers the song and surrounds itself in an envelope of noise from the dual guitars and a cacophony of drum hits. The lyrics and chord progressions are simple but together they produce something bigger. The song only has two major parts, but the way they drop instruments in and out it feels like four. And best of all, it makes you want to punch a hole in the sky.</p>
<p>Every so often – out of nowhere in the middle of my day when I’m feeling frustrated by a situation beyond my control – I’ll shout to myself “HEY! You’re part of it” as a little mantra to remind myself that, yes, I’m a participant in the democratic capitalist American experiment. I’m a participant in the prosperous parts as well as the unjust parts. I’m part of it. And due to America’s broad empire-like influence, you’re probably part of it or impacted by it too. And it breaks your heart at times.</p> 

<br> 

<https://daverupert.com/2025/01/american-hearts/>

---

**@Dave Winer's Scripting News** (date: 2025-01-20, from: Dave Winer's Scripting News)

In the last days of Trump's first term, I had a <a href="http://scripting.com/misc/howlongfortrump/">nice little web app</a> that told you how much time remained in his term. It was a one-line change to make it work again, which, sigh, is necessary now. 

<br> 

<http://scripting.com/2025/01/20.html#a191451>

---

## January 19, 2025

date: 2025-01-20, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/155270303/0617fd317f7c7827cd7a2d5a0c645646.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/155270303/0617fd317f7c7827cd7a2d5a0c645646.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/january-19-2025-6f7>

---

**@Dave Winer's Scripting News** (date: 2025-01-20, from: Dave Winer's Scripting News)

BTW, actually the term <a href="https://oursocialweb.org/">social web</a> is probably too big a compromise. The "web" part is the only part that's imho useful. The sad part is that "social" means "we removed most of the features of the web." Why? Some vague sense that people would write too much if given the space. Or link too much. Or edit too much. Or be too emphatic. It's worse than Disneyfied -- at least at Disneyland you get actors, and color and rides, and bland food with tons of sugar and fat. But there is some fun and nutrition. In the social web, it's just memes and slogans. Not even much room for a metaphor. There's so much more to say about being human. 

<br> 

<http://scripting.com/2025/01/20.html#a174623>

---

**@Dave Winer's Scripting News** (date: 2025-01-20, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2017/12/23/sarahLynn.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I just wrote a review for <a href="https://en.wikipedia.org/wiki/Industry_(TV_series)">Industry</a> in <a href="https://tv.bingeworthy.org/">BingeWorthy</a>, but it doesn't have a text editor. It farms the job off to <a href="https://this.how/wordland/">WordLand</a>, which shoots the text back to Bingeworthy as the user publishes to WordPress and <a href="https://cyber.harvard.edu/rss/rss.html">RSS</a>, in Markdown. So the text is on both BW and WP and the <a href="https://feediverse.org/">feediverse</a>. And through WordPress it has a <a href="https://daveverse.wordpress.com/2025/01/20/industry-was-great-until-the-end/">presence on the web</a>. This is the goal, writing exists on its own, but can be shared in all the contexts it makes sense in, but it lives primarily in your blog, your home base. That's why WordPress is so important in the scheme of things. It's a consensus, this is where a lot of people are blogging in 2025. And there's a lot of mostly unexplored interop. And they don't break developers. This may not make total sense at this time, but soon, I hope to be able to point back at this post, and say it was the first time something important worked. 

<br> 

<http://scripting.com/2025/01/20.html#a174042>

---

**@Ryan Gantz Bluesky feed** (date: 2025-01-20, from: Ryan Gantz Bluesky feed)

Autocracy Dines In Darkness 

<br> 

<https://bsky.app/profile/sixfoot6.bsky.social/post/3lg6t4da46k2p>

---

## Twitter, in hindsight

date: 2025-01-20, from: Dave Winer's Scripting News

<p>There's a <a href="https://www.youtube.com/watch?v=dRQtjVzj1bo">great scene</a> in <a href="https://en.wikipedia.org/wiki/No_Country_for_Old_Men">No Country For Old Men</a>, where a character is facing imminent death, but he's arguing with the character who will kill him, who asks if all your great ideas led to this (his death) how good were the ideas (paraphrasing).</p>
<p>Along those lines.. If Twitter was such a great idea but it led to the death of democracy (for now at least) maybe it wasn't such a great idea. Maybe when we try to reboot we should try something <i>realllly</i> different.</p>
<p><a href="https://www.goodreads.com/quotes/5543-insanity-is-doing-the-same-thing-over-and-over-again">As they say</a> -- Insanity is doing the same thing over and over again and expecting different results.</p>
<p>PS: This started as a thread on Bluesky.</p>
 

<br> 

<http://scripting.com/2025/01/20/170129.html?title=twitterInHindsight>

---

## Apple Dedicates Homepage to the Leader the U.S. Is Celebrating Today

date: 2025-01-20, updated: 2025-01-20, from: Daring Fireball

 

<br> 

<https://www.apple.com/>

---

## Tim Cook Pep-Talks Himself

date: 2025-01-20, updated: 2025-01-20, from: Daring Fireball

 

<br> 

<https://x.com/tim_cook/status/1881310716226916777>

---

## My website has been gaslighting you

date: 2025-01-20, from: Dave Rupert blog

<p>I have a confession to make. You probably sensed it, but weren’t able to articulate what was happening. Your loved ones think you’re losing your grasp on reality. For the last six months I’ve been incrementally changing the color scheme on my website every single day. I boiled you like a frog! Mu-wa-ha-ha. Don’t believe me? Try for yourself…</p>
<aside>
<div>
  <label for="postHue">Update hue</label><br/>
  <input id="postHue" type="range" min="0" max="360" step="1" style="width: 100%; accent-color: var(--accent);" />
  <div style="position: relative; overflow: hidden;">
    <img src="https://cdn.daverupert.com/posts/2025/colorwheel.jpg" loading="lazy" alt="color wheel" width="800" height="800" style="width: 100%; max-width: 100%; height: auto; display: block; background: white; border-radius: 50%;"/>
<svg 
  xmlns="http://www.w3.org/2000/svg" 
  title="color indicator" 
  viewBox="0 0 100 100" 
  width="800" height="800"
  style="--magic-deg-for-chart: 150deg; position: absolute; inset: 0; rotate: calc(var(--hue-rotate-deg) + var(--magic-deg-for-chart)); max-width: 100%; height: auto;"
  >
  <g id="accent" transform="rotate(240 0 0)" transform-origin="center" style="stroke: #555">
    <path d="M 50,50 50, 16.5" stroke-linecap="round"/>
    <circle r="5" cx="50" cy="11.5" fill="transparent"/>
  </g>
  <g id="bg" style="stroke: #555;">
    <path d="M 50,50 50, 11.5" stroke-linecap="round"/>
    <circle r="5" cx="50" cy="6.5" fill="transparent"/>
  </g>
</svg>
  </div>
</div>
</aside>
<p>At the center of this CSS-trick is setting a <code>--hue</code> variable and rotating the hue about <code>1deg</code> each day to make it 360º around the color wheel over the year. Because I like blue, I set the default <code>--hue</code> to <code>196</code> and add the current day’s <code>--hue-rotate</code> value to calculate my final <code>--rotated-hue</code> value.</p>
<div class="language-css highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="css"><span class="nt">--hue</span><span class="o">:</span> <span class="err">196</span><span class="o">;</span>
<span class="nt">--hue-rotate</span><span class="o">:</span> <span class="o">&lt;</span><span class="nt">Floor</span> <span class="o">(</span> <span class="nt">CurrentDayOfYear</span> <span class="o">*</span> <span class="err">365</span> <span class="o">/</span> <span class="err">360</span> <span class="o">)&gt;;</span> <span class="c">/* Math goes here */</span>
<span class="nt">--rotated-hue</span><span class="o">:</span> <span class="nt">calc</span><span class="o">(</span><span class="nt">var</span><span class="o">(</span><span class="nt">--hue</span><span class="o">)</span> <span class="o">+</span> <span class="nt">var</span><span class="o">(</span><span class="nt">--hue-rotate</span><span class="o">,</span> <span class="err">0</span><span class="o">));</span> <span class="c">/* Rotate it */</span>
</code></pre></div></div>
<p>The math for the <code>--hue-rotate</code> isn’t that complex, but since CSS doesn’t have a <code>Date()</code> function, I set the initial <code>--hue-rotate</code> value inside my Liquid template when I generate the site with Jekyll.</p>
<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="html">{% assign yearProgress = 'now' | date: '%j' %}
<span class="nt">&lt;style&gt;</span>
  <span class="nd">:root</span> <span class="p">{</span>
    <span class="py">--hue-rotate</span><span class="p">:</span> <span class="err">{{</span> <span class="n">yearProgress</span> <span class="err">|</span> <span class="n">times</span><span class="p">:</span> <span class="m">360</span> <span class="err">|</span> <span class="n">divided_by</span><span class="p">:</span> <span class="m">365</span> <span class="p">}</span><span class="err">}</span><span class="o">;</span>
  <span class="err">}</span>
<span class="nt">&lt;/style&gt;</span>
</code></pre></div></div>
<p>But I don’t post here every day, so I also update it with some JavaScript in the footer…</p>
<div class="language-js highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="js"><span class="kd">const</span> <span class="nx">dayOfYear</span> <span class="o">=</span> <span class="nx">date</span> <span class="o">=&gt;</span> <span class="nb">Math</span><span class="p">.</span><span class="nf">floor</span><span class="p">(</span>
  <span class="p">(</span><span class="nx">date</span> <span class="o">-</span> <span class="k">new</span> <span class="nc">Date</span><span class="p">(</span><span class="nx">date</span><span class="p">.</span><span class="nf">getFullYear</span><span class="p">(),</span> <span class="mi">0</span><span class="p">,</span> <span class="mi">0</span><span class="p">))</span> <span class="o">/</span> <span class="p">(</span><span class="mi">1000</span> <span class="o">*</span> <span class="mi">60</span> <span class="o">*</span> <span class="mi">60</span> <span class="o">*</span> <span class="mi">24</span><span class="p">)</span>
<span class="p">);</span>

<span class="kd">const</span> <span class="nx">yearProgress</span> <span class="o">=</span> <span class="nf">dayOfYear</span><span class="p">(</span><span class="k">new</span> <span class="nc">Date</span><span class="p">())</span> <span class="o">/</span> <span class="mi">365</span><span class="p">;</span>

<span class="nb">document</span><span class="p">.</span><span class="nx">documentElement</span><span class="p">.</span><span class="nx">style</span><span class="p">.</span><span class="nf">setProperty</span><span class="p">(</span>
  <span class="dl">'</span><span class="s1">--hue-rotate</span><span class="dl">'</span><span class="p">,</span> 
  <span class="nb">Math</span><span class="p">.</span><span class="nf">floor</span><span class="p">(</span><span class="nx">yearProgress</span> <span class="o">*</span> <span class="mi">360</span><span class="p">)</span>
<span class="p">);</span>
</code></pre></div></div>
<p>Now my <code>--rotated-hue</code> value nudges itself every day starting from the base hue.</p>
<figure>
<p><img src="https://cdn.daverupert.com/posts/2025/bg-hue.svg" alt="X-axis labelled “days of the year” and a y-axis labelled “hue”. The hue value starts in the middle of the y-axis and goes all the way up to the limit of 360 at half way through the year. Then it drops down vertically to zero and continues up at the same prior to the drop." /></p>
<figcaption>Background hue over time</figcaption>
</figure>
<p>I put <code>--rotated-hue</code> inside an <code>hsl()</code> and it worked okay, but was decidedly boring. I needed a way to make it more dynamic.</p>
<p>The next bit of magic was to use a slightly more complicated <code>calc()</code> function for the saturation value. Using some of the new CSS math functions, I take the <code>cos()</code> of the <code>--rotated-hue</code> to get a value between <code>1</code> and <code>-1</code>, then multiply that by <code>45%</code> which is my “base saturation” for my light mode theme. That gives me a value between <code>-45%</code> and <code>+45%</code>, so I double it and add another <code>45%</code> to avoid the gray zone of negative saturation.</p>
<div class="language-css highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="css"><span class="nd">:root</span> <span class="p">{</span>
  <span class="py">color-scheme</span><span class="p">:</span> <span class="n">light</span> <span class="n">dark</span><span class="p">;</span>
  <span class="py">--hue</span><span class="p">:</span> <span class="m">196</span><span class="p">;</span>
  <span class="py">--rotated-hue</span><span class="p">:</span> <span class="n">calc</span><span class="p">(</span><span class="n">var</span><span class="p">(</span><span class="n">--starting-hue</span><span class="p">)</span> <span class="err">+</span> <span class="n">var</span><span class="p">(</span><span class="n">--hue-rotate</span><span class="p">,</span> <span class="m">0</span><span class="p">));</span>
  <span class="py">--hue-rotate-deg</span><span class="p">:</span> <span class="n">calc</span><span class="p">(</span><span class="n">var</span><span class="p">(</span><span class="n">--hue-rotate</span> <span class="err">*</span> <span class="m">1deg</span><span class="p">));</span> <span class="c">/* Convert to degrees */</span>
  <span class="py">--hue-rotate-cos</span><span class="p">:</span> <span class="n">cos</span><span class="p">(</span><span class="n">var</span><span class="p">(</span><span class="n">--hue-rotate-deg</span><span class="p">))</span> <span class="c">/* Magic */</span>
  
  <span class="n">--bg</span><span class="p">:</span> <span class="n">hsl</span><span class="p">(</span> 
      <span class="n">var</span><span class="p">(</span><span class="n">--rotated-hue</span><span class="p">)</span>
      <span class="n">calc</span><span class="p">(</span><span class="m">45%</span> <span class="err">*</span> <span class="n">var</span><span class="p">(</span><span class="n">--hue-rotate-cos</span><span class="p">)</span> <span class="err">+</span> <span class="m">45%</span><span class="p">)</span> 
      <span class="m">96.5%</span>
  <span class="p">);</span>
<span class="p">}</span>
</code></pre></div></div>
<p>That creates the following effect over time…</p>
<figure>
<p><img src="https://cdn.daverupert.com/posts/2025/bg-sat.svg" alt="X-axis labelled days of the year and y-axis labelled saturation. An inverted parabola starts at 0.9 and dips down to zero in the middle of the year and then gently curves back up to 0.9" /></p>
<figcaption>Background saturation over time</figcaption>
</figure>
<p>For my dark mode I wanted a darker website, so I lowered the base saturation to <code>25%</code> …</p>
<div class="language-css highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="css"><span class="k">@media</span> <span class="p">(</span><span class="n">prefers-color-scheme</span><span class="p">:</span> <span class="n">dark</span><span class="p">)</span> <span class="p">{</span>
  <span class="nd">:root</span> <span class="p">{</span>
    <span class="py">--bg</span><span class="p">:</span> <span class="n">hsl</span><span class="p">(</span> 
      <span class="n">var</span><span class="p">(</span><span class="n">--rotated-hue</span><span class="p">)</span>
      <span class="n">calc</span><span class="p">(</span><span class="m">25%</span> <span class="err">*</span> <span class="n">var</span><span class="p">(</span><span class="n">--hue-rotate-cos</span><span class="p">)</span> <span class="err">+</span> <span class="m">12.5%</span><span class="p">)</span> 
      <span class="m">18.5%</span>
    <span class="p">);</span>
  <span class="p">}</span>
<span class="p">}</span>
</code></pre></div></div>
<p>Astute readers will notice I don’t add the full base saturation back to the value. This was intentional because as I slid the <code>--hue</code> value around I came across an ugly “background radiation” zone when <code>--rotated-hue</code> enters the green color space (h=75-115). For a month or two my site looked like dogshit. I minimized the undesired effect by letting it dip down into the gray in dark mode.</p>
<figure>
<p><img src="https://cdn.daverupert.com/posts/2025/dark-sat.svg" alt="A shallower inverted parabola starts at 0.375 and dips down to -0.125 in the middle of the year and slopes back up." /></p>
<figcaption>Dark mode background saturation over time</figcaption>
</figure>
<p>As you can see in the chart above, lowering the base saturation creates a less dramatic wave function dipping below the <code>0%</code> saturation. The resulting effect is that my light and dark mode now share the same <code>--rotated-hue</code> but have pretty different vibes. When I plot the two background saturations next to each other, you can see the relationship.</p>
<figure>
<p><img src="https://cdn.daverupert.com/posts/2025/light-dark-sat.svg" alt="The previous two inverted parabolas layered on top of each other. The dark mode saturation curve sits below the light mode." /></p>
<figcaption>Light and dark mode background saturation over time</figcaption>
</figure>
<p>If someone asked me today “What color is your website?”, I sort of love the fact that I don’t know. In fact, I’d almost have to consult a chart on any given day…</p>
<figure>
<p><img src="https://cdn.daverupert.com/posts/2025/bg-color.svg" alt="The hue graph and hte background saturation curves overlayed on the same graph." /></p>
<figcaption>Hue, saturation, and lightness for light and dark mode over time.</figcaption>
</figure>
<p>Ah yeah. It makes perfect sense. It’s <a href="https://www.youtube.com/watch?v=r0I80hWOFS8">materialized color operating on the 49th vibration</a>, you would make that conclusion walking down the street or going to the store.</p>
<h2>Updating my accent color</h2>
<p>The final step was improving my accent color. Finding a static color that had proper color contrast and worked well with every background color was difficult. I was hoping to find a shortcut but all roads led to making my accent color dynamic as well. How do I pick a color that works with every color? After <a href="https://codepen.io/davatron5000/pen/BaXpKOb?editors=0010">some experiments</a>, I leaned heavily on some <a href="https://razposlanse7dblearning.z21.web.core.windows.net/color-wheel-color-theory-calculator.html">third-grade art class color theory</a>.</p>
<p>I found that rotating the <code>--rotated-hue</code> another 240º to get a triadic tone on the color wheel gave the accent color the best chance at standing out in both light and dark mode. You can see the relation to the background and accent hue when I plot them next to each other.</p>
<figure>
<p><img src="https://cdn.daverupert.com/posts/2025/bg-accent-hue.svg" alt="The previous background hue chart overlayed with the accent color hue that has the same curve but starts 120 points lower on the y-axis and follows the same zig zag diagonal pattern, but offset about 33%" /></p>
<figcaption>Background and accent hue over time.</figcaption>
</figure>
<p>I decided to use <code>oklch()</code> instead of <code>hsl()</code> for my accent color because I wanted the vibrancy that can only come from the <code>p3</code> color space.</p>
<div class="language-jsx highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="jsx"><span class="o">--</span><span class="nx">accent</span><span class="p">:</span> <span class="nf">oklch</span><span class="p">(</span>
    <span class="mi">75</span><span class="o">%</span> 
    <span class="mf">0.18</span>
    <span class="nf">calc</span><span class="p">(</span><span class="nf">var</span><span class="p">(</span><span class="o">--</span><span class="nx">rotated</span><span class="o">-</span><span class="nx">hue</span><span class="p">)</span> <span class="o">+</span> <span class="mi">240</span><span class="p">)</span> <span class="o">/</span> <span class="mi">1</span>
<span class="p">);</span>
</code></pre></div></div>
<p>I tinkered with picking the color by hand so that I could try and maximize the number of days my accent color punches up into the <code>p3</code> space.</p>
<figure>
<p><img src="https://cdn.daverupert.com/posts/2025/oklch.png" alt="Two color space representations next to each other. The first is the chroma value of 0.18 depicted by a rainbow gradient with red on left and violet on right but with a curving jagged peaks. A faint white line shows the boundary between rgb and p3 color space. Next is the hue of 196 representation but the slider has missing values where p3 is unable to render the color." /></p>
<figcaption>
<p>The <code>oklch</code> color graph from <a href="https://oklch.com/#75,0.18,196,100">oklch.com</a> for the accent color hue and chroma values</p>
</figcaption>
</figure>
<p>It’s more art than science here but I feel good about the results.</p>
<figure>
<p><img src="https://cdn.daverupert.com/posts/2025/accent-color.svg" alt="The accent color hue zig-zag graph with static chroma and lightness values forming horizontal lines near the bottom and top (respectively)" /></p>
<figcaption>Accent Color (OKLCH)</figcaption>
</figure>
<h2>Rotating colors is fun but not without its challenges</h2>
<p>As far as challenges go, accessibility and proper color contrast is a concern. Contrast checkers don’t work the best with <code>p3</code>, but I’m sure that’s solvable. One challenge was my button text which I set in <code>#FFFFFF</code> in attempt to maximize contrast. It’s not perfect but it’s right more than its wrong. This is one place where Safari’s CSS <a href="https://css-tricks.com/exploring-color-contrast-for-the-first-time/"><code>color-contrast()</code></a> would be welcome to have in all browsers.</p>
<p>I’ve also scoped my theme to two dynamic colors; adding more is difficult. I re-did my syntax highlighting theme and it’s doing okay (I used the other triadic tone), but more colors is more problems and the complexity balloons quick. Having some shades of gray in the style of <a href="https://open-props.style/">Open Props</a> would be helpful, so I may pursue that.</p>
<p>I’m happy with how it turned out but there’s plenty of room for improvement. I doubt I will ever stop obsessively tweaking the color formulas to get it juuuust right. One thing that bothers me now are the puke yellows in my accent color (like today’s) and the greens in the background color aren’t my favorite. I’m embracing the randomness, but I’d love <a href="https://piccalil.li/blog/redesigning-piccalilli-the-first-part-of-the-design-process/">a yellow like Piccalilli’s website</a>. It might be possible to bump up the <code>oklch()</code> brightness in certain parts of the color journey, but requires more math.</p>
<p>It would also be awesome to figure out how to change colors over a custom gradient as opposed to the hue wheel. Could I use a step-frame animation but grab a point on a conic gradient? Hm…</p>
<p>Was it worth it? Did anyone notice? Yes, one person noticed. <a href="https://john.kreitlow.rocks/">My coworker John</a> is the only person who said anything. Good eye, John.</p>
<p>All said and done, I like my little rotating color scheme. It’s fun waking up and wondering what color my website is today. If you’re having fun with color on your website I’d love to see it. I want all the <code>p3</code> inspiration I can get.</p> 

<br> 

<https://daverupert.com/2025/01/color-hue-rotating-gaslight/>

---

## 2025-01-20 Dr. Martin Luther King, Jr.

date: 2025-01-20, from: Alex Schroeder's Blog

<h1 id="2025-01-20-dr-martin-luther-king-jr">2025-01-20 Dr. Martin Luther King, Jr.</h1>

<p>When I was a teenager and met the first US citizens talking about <a href="https://en.wikipedia.org/wiki/Martin_Luther_King_Jr._Day">Martin Luther King Jr. Day</a>, I was confused. I knew nothing about this guy. My step mother is from Angola, grew up in Portugal, and we never spoke about the fight for civil rights.</p>

<p>I knew there were racists out there, but back in Switzerland I only saw the kind of punching down that is unfortunately very common: the children of Italian <a href="https://en.wikipedia.org/wiki/Gastarbeiter">gastarbeiters</a>, asylum seekers from Sri Lanka, refugees from the civil war in Yugoslavia &ndash; it was always against the newest arrivals, the lowest station on the social ladder.</p>

<p>I guess that&rsquo;s why it took me so long to finally read the <em>Letter from Birmingham Jail</em>.</p>

<p>Don&rsquo;t just read the summary on Wikipedia. <a href="https://letterfromjail.com/">Read the actual letter</a>.</p>

<p>On fedi, <a class="account" href="https://hachyderm.io/@llimllib" title="@llimllib@hachyderm.io">@llimllib</a> said that they read it every year on Martin Luther King Jr. Day. What a great idea.</p>

<p>And in other news, <a class="account" href="https://wandering.shop/@adapalmer" title="@adapalmer@wandering.shop">@adapalmer</a> writes about the surprising recovery of sea turtles:</p>

<blockquote>
<p>How&rsquo;s this for some good news? Recent studies show that sea turtle populations are booming worldwide. Loggerhead nests off the northwest African coast have jumped to 35,000 in 2020 from 500 in 2008. Kemp’s ridley nests have grown to 17,000 in 2022 from 702 in 1985, and a 2023 survey discovered 150,000 green turtle nests in New Caledonia. The surprising reason: reduced consumption by humans. &ndash; Ada Palmer, summarizing a <a href="https://buff.ly/40AUae1">Sea Turtles Aren’t Vanishing. In Fact They’re Thriving</a>, by David Fickling, for Bloomberg</p>
</blockquote>

<p>Maybe I should sign up to this site:</p>

<blockquote>
<p><a href="https://fixthenews.com/">Fix The News</a> is an independent, subscriber-supported publication, read by 60,000 people from 195 countries. Each week, we find 30-40 stories of progress from around the world, and summarise and share them in our email newsletter.</p>
</blockquote>

<p><a class="tag" href="/search/?q=%23Politics">#Politics</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-01-20-mlk>

---

## Pam McQuesten, dear friend

date: 2025-01-20, from: Dave Winer's Scripting News

<p>Sad news: Longtime friend <a href="https://www.google.com/search?q=Pam+McQuesten">Pam McQuesten</a> passed away on January 1 after a brief illness. </p>
<p>I <a href="https://www.facebook.com/groups/1681058035952686/posts/1681610715897418/">knew Pam</a> in Silicon Valley, as we were starting up Living Videotext in 1983. Our office was on <a href="https://www.google.com/maps/place/Elwell+Ct,+Palo+Alto,+CA+94303/@37.4320011,-122.1062105,1048m/data=!3m2!1e3!4b1!4m6!3m5!1s0x808fba3f1e2d0db3:0x2fd030af404448b3!8m2!3d37.4320011!4d-122.1036356!16s%2Fg%2F1tgb__w0?entry=ttu&g_ep=EgoyMDI1MDExNS4wIKXMDSoASAFQAw%3D%3D">Elwell Court</a> in Palo Alto, just off 101, near the golf course and airport. Pam was managing editor of <a href="https://en.wikipedia.org/wiki/Byte_(magazine)">BYTE</a>, the class act of tech pubs in the early personal computer business, then editor of <a href="https://en.wikipedia.org/wiki/Popular_Computing">Popular Computing</a>, the magazine for the people (ie users of computers). When she was at BYTE, her office was on the same floor as ours. </p>
<p>The tech industry was rough even then, all the young egos, people who were sure they could do everything, not much collaboration, lots of betrayal. She was one of the few people I could talk with on a personal level, with trust and intelligence. We talked about the future of the technology we were creating, and what we wanted from all this. She was a mentor, like a big sister, best friend, someone I trusted and loved. A very rare friendship. </p>
<p>BTW, her name in the 80s, before her marriage to Paul McQuesten, was Pam Clark.</p>
<p>Our paths crossed again a few years ago on Facebook. I invited her to join a private group I have with friends I love and trust, to share the life I had at my "pond house" in the Catskills. </p>
<p>I wanted to post a brief remembrance here in case any of Pam's friends are tuned in, so they can be part of the <a href="https://www.facebook.com/groups/1681058035952686">celebration of her life</a>.  </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/01/20/pamMcquesten2010.png"></center>Pam McQuesten in 2010 via <a href="https://www.flickr.com/photos/nitle/4523727367">Flickr</a>. </div></p>
 

<br> 

<http://scripting.com/2025/01/20/150120.html?title=pamMcquestenDearFriend>

---

## It was their job

date: 2025-01-20, from: Dave Winer's Scripting News

<p>Random observations posted on Bluesky in the early morning hours.</p>
<p><a href="https://bsky.app/profile/scripting.com/post/3lg63uypc7x2e">5:09AM</a>: "Biden had one job to do, and he didn’t do it."</p>
<p><a href="https://bsky.app/profile/scripting.com/post/3lg64cq35fd2k">5:17AM</a>: "The NYT had one job to do, and they didn’t do it."</p>
<p><a href="https://bsky.app/profile/scripting.com/post/3lg64klda3c2v">5:21AM</a>: "The NYT is the saddest excuse for the leading news org of the most significant democracy in human history. They flushed it down the fucking toilet. They, like the Washington Post, deserve to die in darkness."</p>
<p><a href="https://bsky.app/profile/scripting.com/post/3lg6ea3hnms22">7:39AM</a>: "Being impartial about last year’s election was not an option for the NYT. It was democracy’s Pearl Harbor. We will never forget or forgive what they did."</p>
<p>Editor's note: Soon, I will do all my writing in one place, and these kinds of snapshots will be easier to assemble.</p>
 

<br> 

<http://scripting.com/2025/01/20/143108.html?title=itWasTheirJob>

---

##  On Leadership and Doing Time 

date: 2025-01-20, updated: 2025-01-20, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/on-leadership-and-doing-time>

---

## Biden Signs New Cybersecurity Order

date: 2025-01-20, updated: 2025-01-20, from: Bruce Schneier blog

<p>President Biden has signed a <a href="https://www.whitehouse.gov/briefing-room/presidential-actions/2025/01/16/executive-order-on-strengthening-and-promoting-innovation-in-the-nations-cybersecurity/">new cybersecurity order</a>. It has a bunch of provisions, most notably using the US governments procurement power to improve cybersecurity practices industry-wide.</p>
<p>Some <a href="https://www.wired.com/story/biden-executive-order-cybersecurity-ai-and-more/">details</a>:</p>
<blockquote><p>The core of the executive order is an array of mandates for protecting government networks based on lessons learned from recent major incidents­&#8212;namely, the security failures of federal contractors.</p>
<p>The order requires software vendors to submit proof that they follow secure development practices, building on <a href="https://www.whitehouse.gov/wp-content/uploads/2022/09/M-22-18.pdf">a mandate that debuted</a> in 2022 in response to ...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/01/biden-signs-new-cybersecurity-order.html>

---

## Why I remain hopeful about America

date: 2025-01-20, from: Robert Reich's blog

Even as darkness falls 

<br> 

<https://robertreich.substack.com/p/why-im-optimistic>

---

## January 19, 2025 

date: 2025-01-20, from: Heather Cox Richardson blog

You hear sometimes, now that we know the sordid details of the lives of some of our leading figures, that America has no heroes left. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-19-2025>

---

## American origin stories

date: 2025-01-20, from: Tracy Durnell Blog

&#8220;Origin stories tell us who we think a people are&#8211;who we think we are, and why. The American origin story is written in Native genocide, transatlantic slavery, and imperial subjugation overseas. That is its originating fact, and so to write the next chapter of that story means contending with this prologue, which most Americans find [&#8230;] 

<br> 

<https://tracydurnell.com/2025/01/19/american-origin-stories/>

---

## Monday 20 January, 2025

date: 2025-01-20, from: John Naughton's online diary

> 1000 words Barry Blitt’s masterly New Yorker cover says everything you need to know about the tryst between Trump and his favourite Techlord. It also cleverly suggests the strategy that will in the end do for Musk — continually &#8230; <a href="https://memex.naughtons.org/monday-20-january-2025/40344/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-20-january-2025/40344/>

---

## Sunday caption contest: January 20

date: 2025-01-20, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-january-20>

---

## An Open Letter to Democratic Candidates and Organizations

date: 2025-01-19, updated: 2025-01-20, from: Ron Garret

The ink is barely dry on the (drama-free) certification of the election results and I'm already getting calls from organizations and candidates seeking donations.&nbsp; (Apparently my name is on a lot of lists.)&nbsp; In order to save everyone a lot of time, I thought I'd write up my current thinking so I don't have to have the same conversation dozens of times.First and foremost: I really do 

<br> 

<https://blog.rongarret.info/2025/01/an-open-letter-to-democratic-candidates.html>

---

## ★ BrikTok

date: 2025-01-19, updated: 2025-01-20, from: Daring Fireball

Apple and Google, seemingly, are following the law, not Trump’s good-as-gold word and pinkie-swear promise that they won’t be held liable for violating it. But Oracle and Akamai seemingly are going with Trump’s word. 

<br> 

<https://daringfireball.net/2025/01/briktok>

---

##  The Kindle version of Ken Liu&#8217;s new translation of Laozi&#8217;s Dao De... 

date: 2025-01-19, updated: 2025-01-19, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/0046003-the-kindle-version-of-ken>

---

## January 18, 2025

date: 2025-01-19, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/155184183/7cb6cdf96923cff13af41a3060029fce.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/155184183/7cb6cdf96923cff13af41a3060029fce.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/january-18-2025-ef7>

---

**@Dave Winer's Scripting News** (date: 2025-01-19, from: Dave Winer's Scripting News)

<a href="https://www.goodreads.com/quotes/445621-when-you-re-a-carpenter-making-a-beautiful-chest-of-drawers">Steve Jobs</a>: “When you’re a carpenter making a beautiful chest of drawers, you’re not going to use a piece of plywood on the back, even though it faces the wall and nobody will ever see it. You’ll know it’s there, so you’re going to use a beautiful piece of wood on the back. For you to sleep well at night, the aesthetic, the quality, has to be carried all the way through.” 

<br> 

<http://scripting.com/2025/01/19.html#a180143>

---

## The Blame Game

date: 2025-01-19, from: Doc Searls (at Harvard), New Old Blog

Twenty-third in the News Commons series Disaster coverage tends to go through four stages: Live reporting. TV stations stop all advertising and go into round-the-clock coverage. Radio stations drop the feeds from elsewhere and go wall-to-wall with live reports. Newspapers drop their paywalls. Coverage by the best of them ranges from good to heroic. As [&#8230;] 

<br> 

<https://doc.searls.com/2025/01/19/the-blame-game/>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-01-19, from: Miguel de Icaza Mastondon feed)

<p>The EU should demand that American Big Tech sell their assets to European companies.   They can’t be trusted to not manipulate the data for propaganda reasons.</p><p>Not doing so is a national security risk.</p><p>Am I doing this right?</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/113856024485003178>

---

**@Dave Winer's Scripting News** (date: 2025-01-19, from: Dave Winer's Scripting News)

When I put an image in the margin of a post I often pause and think about what I want to convey with the image as it relates to the writing that it's next to. In the previous piece the idea was interop. I tried to think of what images I've used in the past, then I thought why don't I just look. I switched into Daytona, entered <a href="https://daytona.scripting.com/search?q=interop">interop</a>, and found <a href="https://imgs.scripting.com/2023/03/12/hamstercage.png">one</a> I loved, but then kept scanning, and found <a href="https://imgs.scripting.com/2024/02/01/runner.png">another</a> that I liked even more. Tools are important. Web writers haven't gotten any new tools in a long time. All the tool development has been for other stuff. Let's make tools for users again, as we did in the olden times. Craftwork in software. Playin in the band! 

<br> 

<http://scripting.com/2025/01/19.html#a142805>

---

**@Dave Winer's Scripting News** (date: 2025-01-19, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/11/27/duck.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">How easy would it be to create a twitter-like app using RSS, and in what ways would it differ from other twitter-like apps. Here's the deal. You need a place to write a posts and a way to read a timeline of posts. That's the basic functionality. To do that with RSS you would start with a blogging app like WordPress, and a feed reader like <a href="https://feedland.com/">FeedLand</a> or <a href="https://netnewswire.com/">NetNewsWire</a>. Manton has integrated the two into a single user interface at <a href="https://micro.blog/">micro.blog</a>. I'm going to approach it in a somewhat differently, not sure yet how it will work, but I'm getting there. And I will offer a way for people to hook in any feed reader they want, thus opening up innovation to tech-curious users. The take-away is that you need to handle inbound and outbound feeds. That's the basics of being twitter-like. 

<br> 

<http://scripting.com/2025/01/19.html#a141521>

---

## “Don’t Stop”

date: 2025-01-19, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/dont-stop>

---

## Tomorrow will be a shameful day

date: 2025-01-19, from: Robert Reich's blog

But some reasons for reassurance 

<br> 

<https://robertreich.substack.com/p/tomorrow-will-be-a-terrible-day>

---

## A big western loop: day 3

date: 2025-01-19, from: Matt Haughey blog

<p>I started the morning in Barstow, California, at one of the last hotels I could find a room in the night before, aiming this day to shoot for a jeep trail north of Las Vegas by noon. After I completed the trail, I&apos;d decide where to go next.</p> 

<br> 

<https://a.wholelottanothing.org/a-big-western-loop-day-3/>

---

## January 18, 2025 

date: 2025-01-19, from: Heather Cox Richardson blog

Shortly before midnight last night, the Federal Trade Commission (FTC) published its initial findings from a study it undertook last July when it asked eight large companies to turn over information about the data they collect about consumers, product sales, and how the surveillance the companies used affected consumer prices. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-18-2025>

---

## The history and future of corn

date: 2025-01-19, from: Tracy Durnell Blog

Corn tastes better on the honor system by Robin Wall Kimmerer &#8212; with cool paper illustrations by Suus Hessling The writings of some early colonists reveal that they thought corn a primitive crop, because it did not require machines or draft animals to cultivate and process, as did their familiar wheat. They mistook the apparent [&#8230;] 

<br> 

<https://tracydurnell.com/2025/01/18/the-history-and-future-of-corn/>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-01-19, from: Miguel de Icaza Mastondon feed)

<p>The TikTok ban that is going to financially ruin a bunch of Americans was part of the “95 billions in weapons for Israel, Ukraine and Taiwan bill”</p><p>When the USA gives you the finger, it uses both hands.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/113852513023525108>

