---
title: columns
updated: 2025-01-15 07:05:25
---

# columns

(date: 2025-01-15 07:05:25)

---

## New version of Daytona

date: 2025-01-15, from: Dave Winer's Scripting News

<p>Daytona is the search engine for Scripting News.  </p>
<p>I've wanted to do a rewrite for quite some time, there were a lot of decisions I wanted to redo, and I've learned a lot about databases in the <a href="http://scripting.com/2021/12/">three years</a> since the first release.</p>
<p>You can <a href="https://daytona.scripting.com/">try it out</a>. There are <a href="https://this.how/daytona/">docs</a>, and a <a href="https://github.com/scripting/Scripting-News/issues/317">place</a> for questions and comments. The usual caveats apply, esp since it's newly deployed, quickly.</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/01/15/newDaytonaScreenshot.png"></center>Screen shot of the new Daytona.</div></p>
 

<br> 

<http://scripting.com/2025/01/15/143544.html?title=newVersionOfDaytona>

---

**@Dave Winer's Scripting News** (date: 2025-01-15, from: Dave Winer's Scripting News)

The <a href="https://feediverse.org/">feediverse</a> is not a joke. It's deployed, scaled, widely supported, far beyond AT Proto or ActivityPub. It's the HTML of the social web. And where the others are complicated, feeds are, wait for it, really simple. 😀 

<br> 

<http://scripting.com/2025/01/15.html#a142124>

---

## Wednesday 15 January, 2025

date: 2025-01-15, from: John Naughton's online diary

Bath time in the West End Amazing what you see when you wander round London with a camera. Quote of the Day &#8220;One should, for example, be able to see that things are hopeless and yet be determined to make &#8230; <a href="https://memex.naughtons.org/wednesday-15-january-2025/40335/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/wednesday-15-january-2025/40335/>

---

## Phishing False Alarm

date: 2025-01-15, updated: 2025-01-14, from: Bruce Schneier blog

<p>A very security-conscious company was hit with a (presumed) massive state-actor phishing attack with gift cards, and everyone rallied to combat it&#8212;until it <a href="https://notalwaysright.com/?p=359144">turned out</a> it was company management sending the gift cards.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/01/phishing-false-alarm.html>

---

## Office Hours: The biggest long-term effect of LA's dystopian nightmare?

date: 2025-01-15, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/office-hours-the-biggest-long-term>

---

## A big western loop: day 1 & 2

date: 2025-01-15, from: Matt Haughey blog

<p>I spent the last few months cramming to finish off <a href="https://unofficialnwsl.stadium.guide/the-book-is-out/?ref=a.wholelottanothing.org" rel="noreferrer">the soccer stadium book</a>, and I purposely stacked my first week of January with every annoying obligation I had (oil changes, teeth cleanings, etc) so the rest of my month was free. I planned the second week in January for</p> 

<br> 

<https://a.wholelottanothing.org/a-big-western-loop-day-1-2/>

---

## January 14, 2025 

date: 2025-01-15, from: Heather Cox Richardson blog

Shortly after midnight last night, the Justice Department released special counsel Jack Smith&#8217;s final report on former president Donald Trump&#8217;s attempt to overturn the results of the 2020 presidential election. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-14-2025>

---

## Making "this" less annoying

date: 2025-01-15, from: Dave Rupert blog

<p>Now that I have a job where I’m writing web components full time, I see the <code>this</code> keyword more than I ever have in my whole life. It’s not a problem, per se, but you can see how it’s a little repetitive. I started wondering what my options were to fix this minor annoyance and the ShopTalk Discord helped me find a simple way and an over-the-top way to fix my issue.</p>
<h2>Simple way: Overriding VS Code theme color tokens</h2>
<p>By default my Github Light theme makes <code>this</code> a bold dark blue color. I didn’t want to roll my own theme though to scratch this niche itch, so I dug in and found out you can override single tokens in VS Code. Handy. The documentation is a bit opaque but here’s what you need to do:</p>
<div class="language-jsx highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="jsx"><span class="c1">// settings.json</span>
<span class="dl">"</span><span class="s2">editor.tokenColorCustomizations</span><span class="dl">"</span><span class="p">:</span> <span class="p">{</span>
  <span class="dl">"</span><span class="s2">textMateRules</span><span class="dl">"</span><span class="p">:</span> <span class="p">[</span>
    <span class="p">{</span>
      <span class="dl">"</span><span class="s2">scope</span><span class="dl">"</span><span class="p">:</span> <span class="dl">"</span><span class="s2">variable.language.this</span><span class="dl">"</span><span class="p">,</span>
      <span class="dl">"</span><span class="s2">settings</span><span class="dl">"</span><span class="p">:</span> <span class="p">{</span>
        <span class="dl">"</span><span class="s2">foreground</span><span class="dl">"</span><span class="p">:</span> <span class="dl">"</span><span class="s2">#b0b0b0</span><span class="dl">"</span>
      <span class="p">}</span>
    <span class="p">}</span>
  <span class="p">]</span>
<span class="p">},</span>
</code></pre></div></div>
<p>Now my <code>this</code> looks like this…</p>
<p><img src="https://cdn.daverupert.com/posts/2025/dimmed.jpg" alt="the keyword this in code set in a light gray, almost illegible font color" /></p>
<p>It’s a calming sensation for me to have repetitive noise dimmed. I liked it so much I dimmed comments to match as well. I may even dim TypeScript because sometimes I wish I could hide the syntax, but keep the squiggles.</p>
<h2>Over the top way: Replace <code>this</code> with a custom glyph</h2>
<p>Changing colors is cool… but what if you could go one step further and replace <code>this</code> with an icon? What would an icon for <code>this</code> even look like?</p>
<p>I asked the ShopTalk Discord and got some interesting ideas like the “☝️” emoji, which I think is funny in an “I’m with stupid” t-shirt sort of way. <a href="https://andrewwalpole.com/">Andrew Walpole</a> took it to the next level and <a href="https://www.redbubble.com/i/sticker/This-Logo-Yellow-by-walpolea/162159874.EJUG5">designed a custom glyph</a>:</p>
<img src="https://cdn.daverupert.com/posts/2025/this.png" alt="the letter of the word this arranged in a diamond pattern" width="150" height="152">
<p><a href="https://www.alanwsmith.com/">Alan Smith</a> then figured out <a href="https://youtu.be/x1heJdtQapI">how to use Glyphs Mini to add a custom ligature to an open source coding font</a>. Andrew riffed on Alan’s work and exported a custom version of Fira Code with his custom glyph as a ligature. The last step was to install the font update my VS Code settings:</p>
<div class="language-jsx highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="jsx">  <span class="dl">"</span><span class="s2">editor.fontFamily</span><span class="dl">"</span><span class="p">:</span> <span class="dl">"</span><span class="s2">'Fira Code Ligged', monospace</span><span class="dl">"</span><span class="p">,</span>
  <span class="dl">"</span><span class="s2">editor.fontLigatures</span><span class="dl">"</span><span class="p">:</span> <span class="kc">true</span>
</code></pre></div></div>
<p>Now my code looks incredibly futuristic…</p>
<p><img src="https://cdn.daverupert.com/posts/2025/glyph.jpg" alt="the this glyph replacing instances of the glyph keyword in code" /></p>
<p>Abusing typefaces to remove the repetitiveness of programming languages is fun. After seeing the icon <em>in situ</em>, the idea might be a smidge too wild for me due to reduced legibility. While I don’t use the custom glyph on the daily, this experiment does spark a deep desire in me to create a bunch of custom glyphs for common keywords so I can make JavaScript an entirely rune-based programming language.</p>
<h2>Custom ligatures with CSS?</h2>
<p>A wild idea, but it would be neat if you could create your own custom ligatures in CSS to avoid the need to re-bake custom fonts each time you have a niche typographic need. Here’s a pseudo-syntax of how that might work:</p>
<div class="language-css highlighter-rouge"><div class="highlight"><pre class="highlight"><code data-lang="css"><span class="k">@font-face</span> <span class="s1">"Dave Hijinks"</span> <span class="p">{</span>
  <span class="py">match</span><span class="p">:</span> <span class="s1">"this."</span><span class="p">;</span>
  <span class="py">replace</span><span class="p">:</span> <span class="s1">"☝️."</span><span class="p">;</span>
<span class="p">}</span>

<span class="k">@font-face</span> <span class="s1">"Cloud2Butts"</span> <span class="p">{</span>
  <span class="py">match</span><span class="p">:</span> <span class="s1">"cloud"</span><span class="p">,</span> <span class="s1">"AI"</span><span class="p">;</span>
  <span class="py">replace</span><span class="p">:</span> <span class="s1">"butt"</span><span class="p">,</span> <span class="sx">url(fart.svg)</span><span class="p">;</span>
<span class="p">}</span>

<span class="nt">body</span> <span class="p">{</span>
  <span class="py">font-face</span><span class="p">:</span> <span class="s1">"Dave Hijinks"</span><span class="p">,</span> <span class="s1">"Cloud2Butt"</span><span class="p">,</span> <span class="nb">sans-serif</span><span class="p">;</span>
<span class="p">}</span>
</code></pre></div></div>
<p>Anyways, it’s a thought. Not a serious proposal. This was a fun rabbit hole to travel down with some friends.</p> 

<br> 

<https://daverupert.com/2025/01/like-this-and-like-that-and-like-this-and-uh/>

---

## Breakfast With Pete Hegseth

date: 2025-01-15, updated: 2025-01-15, from: Daring Fireball

 

<br> 

<https://www.newyorker.com/news/the-lede/the-pressure-campaign-to-get-pete-hegseth-confirmed-as-defense-secretary>

---

## While CTO at Pandora, Tom Conrad Had Them Building Their iPhone App Before the iPhone SDK Was Released

date: 2025-01-15, updated: 2025-01-15, from: Daring Fireball

 

<br> 

<https://www.vice.com/en/article/how-pandora-won-its-royalty-battle-but-lost-the-war-to-spotify/>

---

## Sonos’s Reboot Continues: Chief Product Officer Maxime Bouvat-Merlin Is Out Too

date: 2025-01-15, updated: 2025-01-15, from: Daring Fireball

 

<br> 

<https://www.theverge.com/2025/1/14/24343873/sonos-product-officer-maxime-bouvat-merlin-leaving>

---

## January 13, 2024

date: 2025-01-14, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/154852035/55041a54fa0e2236b21aa5bf386ea76a.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/154852035/55041a54fa0e2236b21aa5bf386ea76a.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/january-13-2024-407>

---

## Nick Wingfield on Sonos as an Acquisition Target (and a Juicy Tidbit Regarding a Former Apple Exec Who Wanted to Acquire Them)

date: 2025-01-14, updated: 2025-01-14, from: Daring Fireball

 

<br> 

<https://www.theinformation.com/articles/where-does-sonos-go-from-here>

---

## How to prepare for a Senate confirmation hearing

date: 2025-01-14, from: Robert Reich's blog

What I learned 33 years ago. 

<br> 

<https://robertreich.substack.com/p/how-to-prepare-for-a-senate-confirmation>

---

**@Dave Winer's Scripting News** (date: 2025-01-14, from: Dave Winer's Scripting News)

Why are all the people who hate AI so pissy about it. 

<br> 

<http://scripting.com/2025/01/14.html#a202434>

---

**@Dave Winer's Scripting News** (date: 2025-01-14, from: Dave Winer's Scripting News)

In the future I will be able to type a post into my blog and people who are following me will see it in their timeline. 

<br> 

<http://scripting.com/2025/01/14.html#a201522>

---

**@Dave Winer's Scripting News** (date: 2025-01-14, from: Dave Winer's Scripting News)

Peeve: TV shows or movies that show text messages that are impossible to read even if you stop the video and zoom in. 

<br> 

<http://scripting.com/2025/01/14.html#a201012>

---

## The Configuration Crisis

date: 2025-01-14, from: Jonudell blog

Perhaps, even though they are not themselves explainable, AIs can help us engineer explainable systems. But I’m not optimistic. It feels like we’re on a path to keep making systems harder for humans to configure, and we keep expanding our reliance on superhuman intelligence to do that for us. The Configuration Crisis and Developer Dependency &#8230; <a href="https://blog.jonudell.net/2025/01/14/the-configuration-crisis/" class="more-link">Continue reading <span class="screen-reader-text">The Configuration Crisis</span></a> 

<br> 

<https://blog.jonudell.net/2025/01/14/the-configuration-crisis/>

---

## Listened to Green Eyes by Ludes

date: 2025-01-14, from: Tracy Durnell Blog

An oldie (2006) that I rediscovered as I&#8217;ve been cleaning out my music collection &#8212; this is the mellowest song on the album, Never Had a Chance is fun, I also liked the song Free. 

<br> 

<https://tracydurnell.com/2025/01/14/listened-to-green-eyes-by-ludes/>

---

## ‘47 Years Later, the Palisades Disappeared Overnight’

date: 2025-01-14, updated: 2025-01-14, from: Daring Fireball

 

<br> 

<https://mikeindustries.com/blog/archive/2025/01/47-years-later-the-palisades-disappeared-overnight>

---

## Volume 1 of Jack Smith’s Special Counsel Report Flatly States Trump Would Have Been Convicted in Election Case

date: 2025-01-14, updated: 2025-01-14, from: Daring Fireball

 

<br> 

<https://www.nytimes.com/2025/01/14/us/politics/trump-special-counsel-report-election-jan-6.html?rsrc=flt&unlocked_article_code=1.pE4.cFWv.PNC5gonIKomh&smid=url-share>

---

**@Ryan Gantz Bluesky feed** (date: 2025-01-14, from: Ryan Gantz Bluesky feed)

how about y'all shut the fuck up https://heathercoxrichardson.substack.com/p/january-13-2025 

<br> 

<https://bsky.app/profile/sixfoot6.bsky.social/post/3lfpsev44r22p>

---

## How Facts Matter

date: 2025-01-14, from: Doc Searls (at Harvard), New Old Blog

Nineteenth in the News Commons series. Facts don’t matter, or they matter much less than people think—Daniel Kahnemann Facts don’t matter. What matters is how much we hate the person talking—Scott Adams But facts do matter when life and death are on the line. Or when one is recovering from a life-changing situation. To help [&#8230;] 

<br> 

<https://doc.searls.com/2025/01/14/how-facts-matter/>

---

## Upcoming Speaking Engagements

date: 2025-01-14, updated: 2025-01-14, from: Bruce Schneier blog

<p>This is a current list of where and when I am scheduled to speak:</p>
<ul>
<li>I’m speaking on “AI: Trust &#38; Power” at <a href="https://capricon.org/">Capricon 45</a> in Chicago, Illinois, USA, at 11:30 AM on February 7, 2025. I’m also signing books there on Saturday, February 8, starting at 1:45 PM.</li>
<li>I’m speaking at <a href="https://boskone.org/">Boskone 62</a> in Boston, Massachusetts, USA, which runs from February 14-16, 2025.</li>
<li>I’m speaking at the <a href="https://www.cl.cam.ac.uk/events/rossfest/">Rossfest Symposium</a> in Cambridge, UK, on March 25, 2025.</li>
</ul>
<p>The list is maintained on <a href="https://www.schneier.com/events/">this page</a>.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/01/upcoming-speaking-engagements-42.html>

---

## Can AI reinvent biology?

date: 2025-01-14, from: Om Malik blog

A new season of&#160;CrazyStupidTech has&#160;begun,&#160;with my&#160;co-writer&#160;Fred Vogelstein&#160;turning his attention&#160;to&#160;a new company from one of the fathers of modern artificial intelligence.&#160; Generative AI has dominated recent discourse, but the impact of artificial intelligence extends far beyond consumer applications. Take Inceptive, for example. The startup, co-founded by Jakob Uszkoreit (co-author of the seminal Transformer paper) and Stanford biochemist Rhiju Das, marries AI and biology to create “biological software.” It is &#8230; 

<br> 

<https://om.co/2025/01/14/can-ai-reinvent-biology/>

---

## An internet of ideas

date: 2025-01-14, from: Dave Winer's Scripting News

<p>I used to use Twitter for middle of the night ideas. These days I use one of Twitter's successors.   </p>
<p><a href="https://bsky.app/profile/scripting.com/post/3lfowjw3z6k2d">Here's one</a>. "We should be able to tweet from within any application that has the ability to create and edit text, and not just in tiny little text boxes." <a href="https://bsky.app/profile/scripting.com/post/3lfowjw4jrs2d">And another</a>. "The limits imposed by twitter initially in 2006 resulted in there being room for only very simple ideas. </p>
<p>Self-contained isolated silos make progress impossible. We need an internet of ideas. Why should we depend on one small vulnerable company to handle all our internet publishing? It’s an old outdated idea. Look where our investment in Twitter left us, nomads searching for a new home, and what did we do, we went for basically the same deal as before. Oy. </p>
<p>Re silos, are you watching the Apple TV+ series <a href="https://en.wikipedia.org/wiki/Silo_(TV_series)">Silo</a>? I don't want to spoil it, but their idea of a silo is more less exactly what we're talking about with the silos or semi-silos of the twitter-like era. They know being a silo is not popular so they do little things to give you reason to believe they might not be a silo. But being a partial silo is like being partially pregnant. No such thing. If you're federated that means you peer with your competitors. Facebook, or whatever you call Mark Xuckerberg's company these days, just <a href="https://www.404media.co/meta-is-blocking-links-to-decentralized-instagram-competitor-pixelfed/">cut off</a> an Instagram competitor and completely gave away that federation is a very conditional thing for them, even if a user of Instagram might also want to hook into flow from <a href="https://pixelfed.org/">Pixelfed</a>. I never believed in their support of the fediverse. Now let's get some reality into these discussions. </p>
<p><a href="https://bsky.app/profile/scripting.com/post/3lfoxxs7gy22x">On Unix</a>. "Learning Unix was when I learned that computer networks could be simple yet infinitely powerful. Before that for me it was just an inkling, a hunch. Reading the source code I wanted to make software that works like that. I hope I have, to some extent."</p>
<p>On <a href="https://en.wikipedia.org/wiki/Matt_Mullenweg">Matt Mullenweg</a>, who surprisingly has become a polarizing figure in the tech world. Who could've seen that coming? Not me. "<a href="https://bsky.app/profile/scripting.com/post/3lfoxsh7nd22x">Radical idea</a>. Matt Mullenweg doesn’t like how things are going. He has every right to try to change it, to make it right. As do you, and I." I don't like that people have called him things like the Mad King. People used to say stuff like that about me. It's a substitute for trying to understand where someone is coming from. One of the things I learned about creating open technology is you attract people who don't contribute anything but expect you to work for them, for you to take orders from them. That is really what it comes down to, and it's crazy. If you feel strongly about something, either learn how to program, or make your freaking case with some humility, or offer a bounty, or just trust the universe. But giving people orders, there's no place for that. Matt could be right or wrong, or he could be right for himself. But he has the right to control his own destiny, as you and I do, to the extent that we can. </p>
<p>I have my own vision for WordPress, as I've started to talk about here and Murphy-willing you should see more of that in the coming weeks. If you want a clue, listen to my <a href="https://shownotes.scripting.com/scripting/2025/01/08/howIViewWordpress.html">podcast</a> from January 8, and then if you have questions, <a href="https://github.com/scripting/Scripting-News/issues/316">ask them here</a>. I think it's a better bet that WordPress will be the backbone of the social web than any of the other candidates. I wouldn't mind being wrong, as long as we can peer with the eventual winner. I can't endorse a silo, even on the hope that it will be de-silo'd. I also don't believe in the <a href="https://en.wikipedia.org/wiki/Tooth_fairy">Tooth Fairy</a> and <a href="https://en.wikipedia.org/wiki/Matt_Mullenweg">Glinda</a> the good witch of the south. </p>
<p><img class="imgRightMargin" src="https://imgs.scripting.com/2020/11/15/fatladysinging.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">One more thing. In the middle of the night the Department of Justice released <a href="https://www.documentcloud.org/documents/25486139-report-of-special-counsel-smith-volume-1-january-2025/">half of the report</a> on their case against president-elect Trump, a much anticipated bit of news. I didn't know it had been released, but when I woke up, and made the usual rounds, I checked in on Bluesky, Threads, Mastodon, Facebook and then finally Twitter, in that order. Guess where I discovered this news. Twitter. So when you think people move when they don't like what Musk does, or they find that Twitter is as polluted as some of the celebs do, understand this -- most people aren't affected by the noise. I don't see it unless I go look for it. Perhaps this is because I've been very liberal with blocking abusers, or more likely I don't have <a href="https://x.com/davewiner">enough followers</a> to be an attractive target for the abusers, who behave like spammers. They post where the flow is, and my account isn't as attractive as (for example) Paul Krugman, Mark Cuban or Jay Rosen. It takes a lot to get people to move, and I suspect most people never will. If you operate a gasoline powered car, I bet you buy a lot of Exxon gas, even if you don't see their logo when you fill up. It's very hard to get away from companies who hurt our species, by design, unfortunately. </p>
 

<br> 

<http://scripting.com/2025/01/14/131116.html?title=anInternetOfIdeas>

---

## The First Password on the Internet

date: 2025-01-14, updated: 2025-01-13, from: Bruce Schneier blog

<p>It was <a href="https://theconversation.com/how-britain-got-its-first-internet-connection-by-the-late-pioneer-who-created-the-first-password-on-the-internet-45404">created</a> in 1973 by Peter Kirstein:</p>
<blockquote><p>So from the beginning I put password protection on my gateway. This had been done in such a way that even if UK users telephoned directly into the communications computer provided by Darpa in UCL, they would require a password.</p>
<p>In fact this was the first password on Arpanet. It proved invaluable in satisfying authorities on both sides of the Atlantic for the 15 years I ran the service ­ during which no security breach occurred over my link. I also put in place a system of governance that any UK users had to be approved by a committee which I chaired but which also had UK government and British Post Office representation...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/01/the-first-password-on-the-internet.html>

---

## Absolute Linux has reached the end – where to next?

date: 2025-01-14, updated: 2025-01-14, from: Liam Proven's articles at the Register

<h4><span class="label">Analysis</span> Linux distros that don&#39;t exist, but we wish did</h4>
      <p>In an overcrowded field full of distributions, there are still many empty gaps. The Register would like to point in the direction of a few.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/01/14/the_end_of_absolute_linux/>

---

## The tech coup

date: 2025-01-14, from: Enlightenment Economics blog

It&#8217;s some months since I read Marietje Schaake&#8217;s The Tech Coup, as she delivered the ST Lee Poicy Lecture here in Cambridge last November 11th, right after the US presidential election. Just a short time later, her warning looks even &#8230; <a href="http://www.enlightenmenteconomics.com/blog/index.php/2025/01/the-tech-coup/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<http://www.enlightenmenteconomics.com/blog/index.php/2025/01/the-tech-coup/>

---

## The shame of Hegseth

date: 2025-01-14, from: Robert Reich's blog

Today begins the hearing on his bonkers nomination 

<br> 

<https://robertreich.substack.com/p/the-shame-of-hegseth>

---

## Secure Transport support in curl is on its way out

date: 2025-01-14, from: Daniel Stenberg Blog

In May 2024 we finally decided that maybe the time has come for curl to drop support of older TLS libraries. Libraries that because they don&#8217;t support the modern TLS version (1.3) for many users are maybe not suitable to build upon for the future. We gave the world 12 months to adapt or to &#8230; <a href="https://daniel.haxx.se/blog/2025/01/14/secure-transport-support-in-curl-is-on-its-way-out/" class="more-link">Continue reading <span class="screen-reader-text">Secure Transport support in curl is on its way out</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/01/14/secure-transport-support-in-curl-is-on-its-way-out/>

---

## January 13, 2025 

date: 2025-01-14, from: Heather Cox Richardson blog

The incoming Trump administration is working to put its agenda into place. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-13-2025>

---

## Bananas Bloomberg Report: ‘China Weighs Sale of TikTok’s US Operations to Elon Musk’

date: 2025-01-14, updated: 2025-01-14, from: Daring Fireball

 

<br> 

<https://www.bloomberg.com/news/articles/2025-01-14/china-discusses-sale-of-tiktok-us-to-musk-as-one-possible-option>

---

## Just F***in' Do Your Bucket List, Joe

date: 2025-01-14, from: Michael Moore's blog

You Literally Have Nothing to Lose. 

<br> 

<https://www.michaelmoore.com/p/just-fin-do-your-bucket-list-joe>

---

## [Sponsor] Protect Your App With WorkOS Radar

date: 2025-01-14, updated: 2025-01-14, from: Daring Fireball

 

<br> 

<https://workos.com/radar?utm_source=daringfireball&utm_medium=RSS&utm_campaign=q12025>

---

## Conspiracy theorists

date: 2025-01-14, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/conspiracy-theorists>

---

## Sonos Canned CEO Patrick Spence, Who Spearheaded Disastrous App Launch

date: 2025-01-13, updated: 2025-01-13, from: Daring Fireball

 

<br> 

<https://www.theverge.com/2025/1/13/24342179/sonos-ceo-patrick-spence-resignation-reason-app>

---

## Mastodon Is Transferring Its Ownership to a New Non-Profit

date: 2025-01-13, updated: 2025-01-13, from: Daring Fireball

 

<br> 

<https://blog.joinmastodon.org/2025/01/the-people-should-own-the-town-square/>

---

## ‘Free Our Feeds’

date: 2025-01-13, updated: 2025-01-13, from: Daring Fireball

 

<br> 

<https://freeourfeeds.com/>

---

## ★ One Bit of Anecdata That the Web Is Languishing Vis-à-Vis Native Mobile Apps

date: 2025-01-13, updated: 2025-01-13, from: Daring Fireball

The notion that mobile web apps are closing the gap with native apps is laughable. The gulf between them is widening, not narrowing. 

<br> 

<https://daringfireball.net/2025/01/one_bit_of_anecdata_that_the_web_is_languishing>

---

## “I Do Solemnly Swear ... ”

date: 2025-01-13, from: Dan Rather's Steady

A historic oath that suddenly means nothing 

<br> 

<https://steady.substack.com/p/i-do-solemnly-swear>

---

## January 12, 2025

date: 2025-01-13, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/154782867/38aab2451cda4758127a58ce94076030.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/154782867/38aab2451cda4758127a58ce94076030.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/january-12-2025-4b3>

---

## Meta Is Blocking Links to Decentralized Instagram Competitor Pixelfed

date: 2025-01-13, updated: 2025-01-13, from: Daring Fireball

 

<br> 

<https://www.404media.co/meta-is-blocking-links-to-decentralized-instagram-competitor-pixelfed/>

---

## It couldn't hurt to have a better lifeboat

date: 2025-01-13, from: Dave Winer's Scripting News

<p>I posted this to both <a href="https://bsky.app/profile/scripting.com/post/3lfncckr2sc2h">Bluesky</a> and <a href="https://mastodon.social/@davew/113822309652127443">Mastodon</a> just now.</p>
<p>I see people betting on the idea of federation in Bluesky.</p>
<p>At the same time, we should bet on simplifying Mastodon at scale.</p>
<p>Approach the problem from both directions.</p>
<p>We may need and not have federation in Bluesky at some point.</p>
<p>It couldn't hurt to have a better lifeboat.</p>
<p>This <a href="https://shownotes.scripting.com/scripting/2025/01/13/itCouldntHurtToHaveABetterLifeboat.html">podcast</a> goes into more depth of this idea. </p>
 

<br> 

<http://scripting.com/2025/01/13/175042.html?title=itCouldntHurtToHaveABetterLifeboat>

---

## Los Angeles Fires: How to Help

date: 2025-01-13, updated: 2025-01-13, from: Daring Fireball

 

<br> 

<https://www.calfund.org/funds/wildfire-recovery-fund/>

---

## Rory Sykes, Killed in LA Wildfires, RIP

date: 2025-01-13, updated: 2025-01-13, from: Daring Fireball

 

<br> 

<https://ktla.com/news/local-news/mother-of-former-child-star-killed-in-palisades-fire-speaks-on-devastating-loss/>

---

## An "oh fuck" moment in time

date: 2025-01-13, from: Geoffrey Hunntley's blog

<p>Over the Christmas break I&#x2019;ve been critically looking at my own software development loop,  learning a new programming language and re-learning a language I haven&#x2019;t professionally used in over seven years.</p><p>It&apos;s now 2025. Software assistants are now a core staple of my day-to-day</p> 

<br> 

<https://ghuntley.com/oh-fuck/>

---

## What I want and am not getting from AI technology

date: 2025-01-13, from: Dave Winer's Scripting News

<p>There’s a funny contradiction in the AI world.</p>
<ol>
<li>News orgs, published authors, great artists, universities, want to retain ownership of their intellectual property and don’t trust the utility of AI chatbots. They think the only application of AI technology is to steal from them, to cheat at school and in work. They see AI technology as destructive, immoral and dishonest.</li>
<li>As a writer, of prose and software, I want to use the new tools to analyze and develop my work. I want ChatGpt to help port my biggest piece of software from Mac to Linux where it will work far better, far into the future. I want it to reassemble my 30+ years of every day writing into something that can be read by anyone in a few days. I want it to organize new writing projects in ways I can’t. I want it to help me learn about myself. I would gladly give it access to all my creative work, if only there were a relatively easy way to do it. Rather than demanding money, I would gladly pay thousands of dollars to have it all absorbed into its models so I can study and learn.</li>
</ol>
<p>Two very different approaches to the same technology.</p>
 

<br> 

<http://scripting.com/2025/01/13/150902.html?title=whatIWantAndAmNotGettingFromAiTechnology>

---

##  OOO: I&#8217;ll See You Next Week 

date: 2025-01-13, updated: 2025-01-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/ooo-ill-see-you-next-week>

---

## Microsoft Takes Legal Action Against AI “Hacking as a Service” Scheme

date: 2025-01-13, updated: 2025-01-13, from: Bruce Schneier blog

<p>Not sure this will matter in the end, but it&#8217;s a <a href="https://arstechnica.com/security/2025/01/microsoft-sues-service-for-creating-illicit-content-with-its-ai-platform/">positive move</a>:</p>
<blockquote><p>Microsoft is accusing three individuals of running a &#8220;hacking-as-a-service&#8221; scheme that was designed to allow the creation of harmful and illicit content using the company&#8217;s platform for AI-generated content.</p>
<p>The foreign-based defendants developed tools specifically designed to bypass safety guardrails Microsoft has erected to prevent the creation of harmful content through its generative AI services, <a href="https://blogs.microsoft.com/on-the-issues/2025/01/10/taking-legal-action-to-protect-the-public-from-abusive-ai-generated-content/">said</a> Steven Masada, the assistant general counsel for Microsoft&#8217;s Digital Crimes Unit. They then compromised the legitimate accounts of paying customers. They combined those two things to create a fee-based platform people could use...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/01/microsoft-takes-legal-action-against-ai-hacking-as-a-service-scheme.html>

---

## 2025-01-11 ffmpeg and fish, yt-dlp

date: 2025-01-13, from: Alex Schroeder's Blog

<h1 id="2025-01-11-ffmpeg-and-fish-yt-dlp">2025-01-11 ffmpeg and fish, yt-dlp</h1>

<p>If you know, you know.
The <code>ffmpeg</code> command line options.
🤨</p>

<p>Let me collect some function definitions on this page.
I&rsquo;ll be adding more over the years to come, for sure.</p>

<pre><code>function video-resolution
    ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of default=nw=1 $argv
end

# remember to download lower resolutions for smaller laptops
yt-dlp --list-formats URL
yt-dlp --format N URL

# download audio only
yt-dlp --extract-audio --audio-format mp3 URL

# extract audio without converting
ffmpeg -i input.mp4 -vn -acodec copy output.aac

# convert to mp3
ffmpeg -i input.mp4 output.mp3
</code></pre>

<p><a class="tag" href="/search/?q=%23ffmpeg">#ffmpeg</a> <a class="tag" href="/search/?q=%23fish">#fish</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-01-11-ffmpeg>

---

## Go 1.24 interactive tour

date: 2025-01-13, from: Anton Zhiyanov blog

Weak pointers, faster maps, directory-scoped access, and more. 

<br> 

<https://antonz.org/go-1-24/>

---

## Will Trump get credit for Biden’s successes? 

date: 2025-01-13, from: Robert Reich's blog

Preparing for the Trump Regime Part 2. 

<br> 

<https://robertreich.substack.com/p/will-trump-claim-credit-for-bidens>

---

## January 12, 2025 

date: 2025-01-13, from: Heather Cox Richardson blog

Almost ten weeks after the 2024 election, North Carolina remains in turmoil from it. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-12-2025>

---

## Hollywood Reporter Declares FROM GROUND ZERO: "Nothing Short of a Miracle"

date: 2025-01-13, from: Michael Moore's blog

&#8216;From Ground Zero&#8217; Review: In Palestine&#8217;s Striking Shortlisted Oscar Entry, Gazans Find Hope Amid Wreckage 

<br> 

<https://www.michaelmoore.com/p/hollywood-reporter-declares-from>

---

## Monday 13 January, 2025

date: 2025-01-13, from: John Naughton's online diary

Webbed! Yeah, well it’s been cold round here. Quote of the Day ”Mark Zuckerberg&#8217;s commitment to free speech is as deep as Exxon&#8217;s commitment to clean energy.” Dave Karpf Musical alternative to the morning’s radio news Norah Jones &#124; Don&#8217;t &#8230; <a href="https://memex.naughtons.org/monday-13-january-2025/40330/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-13-january-2025/40330/>

---

## Those who are fighting the blaze

date: 2025-01-12, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/those-who-are-fighting-the-blaze>

---

## I am (not) a Failure: Lessons Learned From Six (and a half) Failed Startup Attempts

date: 2025-01-12, updated: 2025-01-12, from: Ron Garret

A while back I wrote:I've had many, many failures in my life.&nbsp; (Hm, maybe I should write a blog post about that.)This is that post.&nbsp; I'm writing it not as a lament, but rather because I've ended up in a good place in life despite my extraordinary track record of failing at just about everything I've ever tried.&nbsp; If my younger self had heard these stories he might 
have had a less 

<br> 

<https://blog.rongarret.info/2025/01/i-am-not-failure-lessons-learned-from.html>

---

## 2025-01-12 Disk space

date: 2025-01-12, from: Alex Schroeder's Blog

<h1 id="2025-01-12-disk-space">2025-01-12 Disk space</h1>

<p>It&rsquo;s that time of the year again. How to get back disk space?</p>

<p>Open the Files application and empty the trash. (How to do this from the command line?)</p>

<p>Delete the cache for Debian packages:</p>

<pre><code>sudo apt-get clean
</code></pre>

<p>Check out local caches:</p>

<pre><code>ncdu .cache/
</code></pre>

<p>Python stuff:</p>

<pre><code>pip cache purge
</code></pre>

<p>Also, feel free to delete other stuff in there. I just deleted a &ldquo;whisper&rdquo; directory containing a language model I didn&rsquo;t need and a &ldquo;tracker3&rdquo; directory containing data for the Gnome miner, I think. Also &ldquo;chromium&rdquo; because it&rsquo;s not my main browser. I don&rsquo;t care about its cache.</p>

<p>Perlbrew stuff. Find out what Perls you have installed.</p>

<pre><code>perlbrew list
</code></pre>

<p>You aren&rsquo;t going to need them:</p>

<pre><code>perlbrew uninstall perl-5.30.0
perlbrew uninstall perl-5.32.0
</code></pre>

<p>Go build cache:</p>

<pre><code>go clean -cache
</code></pre>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-01-12-space>

---

## My Year in Coffee (2024)

date: 2025-01-12, from: mrusme blog

In 2024 I was lucky to enjoy a wide variety of great coffees from roasteries
in Honolulu, Seoul, Vietnam, Berlin, Madrid, Barcelona, Valencia, and other
cities. This is a compilation of many of the coffees I got to taste. 

<br> 

<https://xn--gckvb8fzb.com/my-year-in-coffee-2024/>

---

## Is Bluesky federated like Masto?

date: 2025-01-12, from: Dave Winer's Scripting News

<p>This is one of the dialogs you encounter when getting started with Bluesky. It's easy to see how new users might be led believe that Bluesky is federated, as Mastodon is. I'm a developer and I was confused by what it was saying.</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/01/12/isBlueskyFederated.png"></center>Is Bluesky is federated?</div></p>
 

<br> 

<http://scripting.com/2025/01/12/135321.html?title=isBlueskyFederatedLikeMasto>

---

## The Answer, My Friend … 

date: 2025-01-12, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/the-answer-my-friend>

---

## Sunday caption contest: Genuflecting 

date: 2025-01-12, from: Robert Reich's blog

In honor of Washington Post editorial cartoonist Ann Telnaes 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-in-honor-of>

---

## Giving up the pretense

date: 2025-01-12, from: Tracy Durnell Blog

Ryan Broderick at Garbage Day says content moderation died on January 6, 2021: [T]he Insurrection was the first time Americans could truly see the radicalizing effects of algorithmic platforms like Facebook and YouTube that other parts of the world, particularly the Global South, had dealt with for years. A moment of political violence Silicon Valley [&#8230;] 

<br> 

<https://tracydurnell.com/2025/01/11/giving-up-the-pretense/>

---

**@Jessica Smith's blog** (date: 2025-01-12, from: Jessica Smith's blog)

<p>Finished &ldquo;Chained Echoes&rdquo; yesterday, after 45 hours, off and on since August! It took some time to grow on me, but I loved the game in the end – what a fun twists-and-turnsy storyline 😄 I wrote up some further thoughts <a href="https://backloggd.com/u/jayeless/review/2304811/" title="jayeless&#39;s review of Chained Echoes">on Backloggd<span style="white-space: nowrap;">&thinsp;<svg style="height: 0.7em; width: 0.7em;" focusable="false" data-prefix="fas" data-icon="external-link-alt" class="svg-inline--fa fa-external-link-alt fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><title>(external link)</title><path fill="currentColor" d="M432,320H400a16,16,0,0,0-16,16V448H64V128H208a16,16,0,0,0,16-16V80a16,16,0,0,0-16-16H48A48,48,0,0,0,0,112V464a48,48,0,0,0,48,48H400a48,48,0,0,0,48-48V336A16,16,0,0,0,432,320ZM488,0h-128c-21.37,0-32.05,25.91-17,41l35.73,35.73L135,320.37a24,24,0,0,0,0,34L157.67,377a24,24,0,0,0,34,0L435.28,133.32,471,169c15,15,41,4.5,41-17V24A24,24,0,0,0,488,0Z"></path></svg></span></a> if you&rsquo;re interested.</p> 

<br> 

<https://www.jayeless.net/2025/01/chained-echoes.html>

---

## It’s the End of California As We Know It

date: 2025-01-12, from: Michael Moore's blog

Which Means, It&#8217;s the End of Us. We Just Don&#8217;t Know It Yet. And as Trump Dances on LA&#8217;s Grave, We All Must Be 1st Responders. 

<br> 

<https://www.michaelmoore.com/p/its-the-end-of-california-as-we-know>

---

## January 11, 2025 

date: 2025-01-12, from: Heather Cox Richardson blog

We&#8217;re home tonight after a week on the road, coming back to a light snowfall that made everything look like it was tucked into bed for the winter. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-11-2025>

---

## Trump's Oligarchy | The Coffee Klatch for January 11, 2025 

date: 2025-01-12, from: Robert Reich's blog

With Heather Lofthouse, Michael Lahanas-Calder&#243;n, and yours truly, Robert Reich 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/154644457/96075a4ac9153bf58c1ccfd07cd46563.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/154644457/96075a4ac9153bf58c1ccfd07cd46563.mp3" target="_blank">download audio/mpeg</a><br> 

<https://robertreich.substack.com/p/trumps-oligarchy-the-coffee-klatch-432>

---

**@Jessica Smith's blog** (date: 2025-01-12, from: Jessica Smith's blog)

<p>Re: <a href="https://kolektiva.social/@MikeDunnAuthor/113811096533923320">this Mastodon post<span style="white-space: nowrap;">&thinsp;<svg style="height: 0.7em; width: 0.7em;" focusable="false" data-prefix="fas" data-icon="external-link-alt" class="svg-inline--fa fa-external-link-alt fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><title>(external link)</title><path fill="currentColor" d="M432,320H400a16,16,0,0,0-16,16V448H64V128H208a16,16,0,0,0,16-16V80a16,16,0,0,0-16-16H48A48,48,0,0,0,0,112V464a48,48,0,0,0,48,48H400a48,48,0,0,0,48-48V336A16,16,0,0,0,432,320ZM488,0h-128c-21.37,0-32.05,25.91-17,41l35.73,35.73L135,320.37a24,24,0,0,0,0,34L157.67,377a24,24,0,0,0,34,0L435.28,133.32,471,169c15,15,41,4.5,41-17V24A24,24,0,0,0,488,0Z"></path></svg></span></a>—</p>
<p>The basic definition of terrorism is &ldquo;violence designed to create terror in a civilian population to achieve a political aim&rdquo;. Clearly, not only are states <em>capable</em> of carrying out terrorism, they are by far the primary perpetrators of terrorism in the world. But the UN, being made up of nation-states, has always resisted having a definition of terrorism that acknowledged that, instead including clauses like &ldquo;…by non-nation-state actors&rdquo;. In this way, for example, Israel is &ldquo;not a terrorist state&rdquo;, while the Palestinians defending themselves <em>are</em> terrorists…</p>
<p>And then we reach the modern era, where acts not designed to instill terror in a civilian population at all, like the United Healthcare shooting, get branded as &ldquo;terrorism&rdquo;. Like, according to the ruling class, it&rsquo;s now just terrorism if the ruling class is afraid. No naked self-interest in that at all 🙄</p> 

<br> 

<https://www.jayeless.net/2025/01/terrorism.html>

