---
title: columns 2024.16
updated: 2024-04-18 08:55:31
---

# columns 2024.16

(date: 2024-04-18 08:55:31)

---

##  &#8220;You still don&#8217;t see the link? It&#8217;s right there on the bottom... 

date: 2024-04-18, updated: 2024-04-18, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044421-you-still-dont-see-the>

---

##  The strange and turbulent global world of ant geopolitics. &#8220;There are roughly... 

date: 2024-04-18, updated: 2024-04-18, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044417-the-strange-and-turbulent>

---

**@Ayjay blog** (date: 2024-04-18, from: Ayjay blog)

The Internet’s New Favorite Philosopher &#124; The New Yorker: Maret is part of a growing coterie of readers who have embraced [Byung-Chul] Han as a kind of sage of the Internet era. Elizabeth Nakamura, a twentysomething art-gallery associate in San Francisco, had a similar conversion experience, during the early days of pandemic lockdown, after someone [&#8230;] 

<https://blog.ayjay.org/46073-2/>

---

##  Helsinki Bus Station Theory of Creativity 

date: 2024-04-18, updated: 2024-04-18, from: Jason Kittke's blog

 

<https://kottke.org/24/04/helsinki-bus-station-theory-of-creativity>

---

**@Dave Winer's Scripting News** (date: 2024-04-18, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2012/02/16/1984.jpg" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Suppose you're working deep inside a complex project and have an unrelated idea. How long does it take to switch to writing mode, get the idea down, and return to what you were doing. The less time it takes the more <i>fluidity. </i>Twitter totally won there. And we, the bloggers, made a tradeoff. We accepted fewer features and writing in a silo because it was practical. It worked, where less fluid software didn't. So they got all the causal writing, and over time sucked the life out of blogging. I think it's time to put the fluidity back, without compromising on features and lock-in. 

<http://scripting.com/2024/04/18.html#a134722>

---

##  Wired&#8217;s Steven Levy on how 8 Google Employees Invented Modern AI. (They... 

date: 2024-04-18, updated: 2024-04-18, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044416-wireds-steven-levy-on-how>

---

## Other Attempts to Take Over Open Source Projects

date: 2024-04-18, updated: 2024-04-18, from: Bruce Schneier blog

<p>After the XZ Utils discovery, people have been <a href="https://openjsf.org/blog/openssf-openjs-alert-social-engineering-takeovers">examining</a> other open-source projects. Surprising no one, the incident is not unique:</p>
<blockquote><p>The OpenJS Foundation Cross Project Council received a suspicious series of emails with similar messages, bearing different names and overlapping GitHub-associated emails. These emails implored OpenJS to take action to update one of its popular JavaScript projects to &#8220;address any critical vulnerabilities,&#8221; yet cited no specifics. The email author(s) wanted OpenJS to designate them as a new maintainer of the project despite having little prior involvement. This approach bears strong resemblance to the manner in which &#8220;Jia Tan&#8221; positioned themselves in the XZ/liblzma backdoor...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/04/other-attempts-to-take-over-open-source-projects.html>

---

## 2024-04-17 A map generator for solo play

date: 2024-04-18, from: Alex Schroeder's Blog

<h1 id="2024-04-17-a-map-generator-for-solo-play">2024-04-17 A map generator for solo play</h1>

<p>Inspired by <a class="account" href="https://ttrpg-hangout.social/@enfors" title="@enfors@ttrpg-hangout.social">@enfors</a> quest for a random map generator that would work for solo-gaming, where the exploration roll happens as you enter a new hex and no overall map is known beforehand, I&rsquo;ve been thinking of a <a href="https://campaignwiki.org/text-mapper/solo/random">Solo algorithm</a> for <a href="Text_Mapper">Text Mapper</a>.</p>

<p>As always, my main issue with maps is river systems. I just can’t help it! 😅 The solo-gaming constraint makes this an interesting challenge because you can’t ever go back and redo a hex that’s been discovered.</p>

<p>The first problem was that I needed a model of how the map was going to be explored to simulate the key constraint. What I use is a biased random walk of ever increasing length that keeps starting in the middle of the map, where the &ldquo;safe haven&rdquo; is imagined to be. The random walk is biased in as much as it prefers to pick an unexplored hex, if possible.</p>

<p><img loading="lazy" src="2024-04-17-solo-map-1.jpg" alt="Example explorations on the map." /></p>

<p>When debugging, the numbers on the map represent the order in which the hexes are discovered, the coordinates and the altitude from 0 to 10.</p>

<p>Of course my algorithm still runs into impossible situations like rivers meeting in a local minimum that I can&rsquo;t fix because there are no take-backs. In those situations I have decided to place a cave entrance and would run it as an entrance into the underworld. Who wouldn&rsquo;t want rivers to disappear into the underworld‽</p>

<blockquote>
<p>Examples: In the map above, when entering 1008 or 1405, river flow could turn out to be problematic since all the surrounding hexes have been explored and can no longer be changed.</p>
</blockquote>

<p>Every hex has two extra data points:</p>

<ol>
<li>altitude from 0 (the deep ocean) to 10 (the highest peaks)</li>
<li>optionally, a direction of water flow (where it goes to)</li>
</ol>

<p>The strange part about this is that you cannot tell which hex is &ldquo;up river&rdquo; without actually going there and seeing whether this is where the water came from. If the next hex has no river then you followed a small creek that got smaller and smaller and finally it disappeared. If the next hex has a river that flows elsewhere, then you crossed a ridge and now you&rsquo;re in another valley.</p>

<p>When determining a random neighbour, roll a d6: 1 is north, 2 is north-east, 3 is south-east, 4 is south, 5 is south-west, 6 is north-west.</p>

<p>Here&rsquo;s how you start the map:</p>

<ol>
<li>Roll a d6 for the <em>preferred direction</em> of water for this map.</li>
<li>Pick a hex in the middle of the map. Assign it the altitude 5.</li>
<li>Roll a d6 for the <em>direction of the local river</em>. The starting hex always has a river.</li>
<li>Roll 2d6 and <em>adjust the altitude</em> (see below).</li>
<li>Use the same 2d6 result for the check whether the new hex has <em>water flow</em> (see below).</li>
<li>Now that altitude and water flow are known, determine the terrain (see below).</li>
<li>Use the same 2d6 result for the check whether the new hex has a <em>settlement or ruin</em> (see below).
The starting hex always starts with a village.</li>
<li>When entering a new hex, go back to step 4.</li>
</ol>

<h2 id="adjust-the-altitude">Adjust the altitude</h2>

<p>The provisional altitude of the new hex starts out as the altitude of where you&rsquo;re coming from (no sudden changes).</p>

<p>The altitude of the new hex is adjusted based on the 2d6 roll made above.</p>

<ol>
<li>If all the known hexes around the current hex are at altitudes 0–1, then the max altitude is 0 (deep ocean). No other factors come into play, so you can skip the rest of the altitude adjustment.</li>
<li>If there are neighbouring hexes with water flowing from there to the current hex, then their lowest altitude is the current&rsquo;s hex max altitude (because rivers don&rsquo;t flow up).</li>
</ol>

<p>Take the 2d6 roll made above and look up the altitude change on the following table:</p>

<table>
<thead>
<tr>
<th align="center">2d6</th>
<th align="center">Change</th>
</tr>
</thead>

<tbody>
<tr>
<td align="center">2</td>
<td align="center">-2</td>
</tr>

<tr>
<td align="center">3</td>
<td align="center">-1</td>
</tr>

<tr>
<td align="center">4–9</td>
<td align="center">see below</td>
</tr>

<tr>
<td align="center">10</td>
<td align="center">+1</td>
</tr>

<tr>
<td align="center">11</td>
<td align="center">+1</td>
</tr>

<tr>
<td align="center">12</td>
<td align="center">+2</td>
</tr>
</tbody>
</table>
<p>On a result of 4–9 it depends on the slope:</p>

<p>If coming from altitude 7 or higher, then check the direction you&rsquo;re moving in.
If you&rsquo;re moving in the direction of the preferred slope or in the opposite direction, there is no change.
If you&rsquo;re moving in a different direction, the change is -1.</p>

<blockquote>
<p>Example: Assume the slope is &ldquo;north&rdquo;. If you&rsquo;re moving &ldquo;south&rdquo; (the opposite of &ldquo;north&rdquo;) from a hex with an altitude of 8, then there is no change.</p>
</blockquote>

<p>If coming from altitude 6 or lower, the check the direction you&rsquo;re moving in.
If you&rsquo;re moving in the direction of the preferred slope, the change is -1.</p>

<blockquote>
<p>Example: Assume the slope is &ldquo;north&rdquo;. If you&rsquo;re moving &ldquo;south&rdquo; from a hex with an altitude of 6, then there is no change.</p>
</blockquote>

<p>The idea is that mountain chains form along rivers and rivers have a tendency to run towards the ocean.
Whether this actually works as intended, I don&rsquo;t know.</p>

<p>Apply the change to the provisional altitude and adjust for the maximum.</p>

<blockquote>
<p>Example: You&rsquo;re entering a new hex from a hex with altitude 5. You know is that is has a neighbouring hex with altitude 4 that has a river going towards the same hex. The max altitude is therefore a 4. Roll 2d6. If you get a 2, the change is -2 and the new hex has an altitude of 5 - 2 = 3; otherwise it has an altitude of 4 because of the max and you don&rsquo;t need to bother with anything else.</p>
</blockquote>

<p><img loading="lazy" src="2024-04-17-solo-map-2.jpg" alt="A height map without the effects of water flow" /></p>

<h2 id="water-flow">Water flow</h2>

<p>If the altitude of the new hex is 0, there is no water flow (deep ocean).</p>

<p>The new hex has water flow if any of the following is true:</p>

<ol>
<li>if there is a river flowing from a neighbouring hex into the new hex;</li>
<li>if the altitude of the new hex is 1 (so that lakes can drain);</li>
<li>if the altitude is 2–8 and the 2d6 roll for altitude adjustment was a 5–8.</li>
</ol>

<p>If so, determine the direction of the water, trying one of the following:</p>

<ol>
<li>pick at random from the unknown neighbouring hexes and the known neighbouring hexes at a <em>lower</em> altitude with a river that doesn&rsquo;t end up in the new hex you&rsquo;re looking at (avoid circular rivers); if there is more than one candidate, prefer a hex in the direction of the <em>preferred slope</em> ±1 (to the left or right of the preferred slope);</li>
<li>pick a random, known, neighbouring hex at the <em>same</em> altitude with a river that doesn&rsquo;t end up in the new hex you&rsquo;re looking at (avoid circular rivers); if there is more than one candidate, prefer a hex in the direction of the <em>preferred slope</em> ±1 (to the left or right of the preferred slope);</li>
<li>or – &ldquo;it&rsquo;s magic!&rdquo; – just pick one from the neighbouring hexes (all of them at a higher altitude, of course) with a river that doesn&rsquo;t end up in the new hex you&rsquo;re looking at (avoid circular rivers); if there is more than one candidate, prefer a hex in the direction of the <em>preferred slope</em> ±1 (to the left or right of the preferred slope)</li>
<li>finally, if all else fails, then it&rsquo;s an <em>entrance into the underworld</em> and the river ends right here!</li>
</ol>

<blockquote>
<p>Example: Entering a new hex from the south, with the preferred slope being &ldquo;north&rdquo;. The altitudes and directions of the known neighbours are as follows: current hex, 5; south (where you came from), 4; north-west, 4; north, 5. Randomly pick between north-west and north-east (an unknown hex!) since north-west is to the left of the preferred slope and north-east is to the right of the preferred slope. North is at the same altitude and south is in the wrong direction.</p>
</blockquote>

<p>Sadly, this algorithm doesn&rsquo;t tell you whether a newly discovered hex at altitude 1 is a sweet water lake or salty coastal waters.
As mentioned above, this algorithm also doesn&rsquo;t tell you from which neighbouring hex a river comes from.</p>

<h2 id="terrain">Terrain</h2>

<p>Based on altitude and water flow, the terrain can be determined.</p>

<table>
<thead>
<tr>
<th align="center">Altitude</th>
<th>With river</th>
<th>No river</th>
</tr>
</thead>

<tbody>
<tr>
<td align="center">0</td>
<td colspan="2">ocean</td>
</tr>

<tr>
<td align="center">1</td>
<td colspan="2">coastal</td>
</tr>

<tr>
<td align="center">2</td>
<td>swamp</td>
<td>desert</td>
</tr>

<tr>
<td align="center">3</td>
<td>swamp</td>
<td>plain</td>
</tr>

<tr>
<td align="center">4</td>
<td>forest</td>
<td>plain</td>
</tr>

<tr>
<td align="center">5</td>
<td>forest</td>
<td>plain</td>
</tr>

<tr>
<td align="center">6</td>
<td>forested hills</td>
<td>rough</td>
</tr>

<tr>
<td align="center">7</td>
<td>green hills</td>
<td>hills</td>
</tr>

<tr>
<td align="center">8</td>
<td colspan="2">mountains</td>
</tr>

<tr>
<td align="center">9</td>
<td colspan="2">mountain or volcano</td>
</tr>

<tr>
<td align="center">10</td>
<td colspan="2">glacier</td>
</tr>
</tbody>
</table>
<p>In this context, a swamp is a forested wetland; rough are stony badlands, unfit for agriculture but possibly suited for goat nomads. Green hills are suitable for sheep farming and cattle grazing.</p>

<p>There&rsquo;s a 1-in-6 chance of a mountain being in fact a volcano. Roll 1d6 to find out.</p>

<h2 id="settlements-or-ruins">Settlements or ruins</h2>

<p>If this is the <em>starting hex</em>, the settlement is a village.</p>

<p>If the 2d6 roll for altitude adjustment was a 7, there might be a settlement or ruin in the new hex.</p>

<p>If the terrain is <em>forest</em> or <em>forested hill</em>, pick at random: village, ruin, tower, ruined tower, castle or ruined-castle.</p>

<p>If the terrain is <em>desert</em>, <em>swamp</em> or <em>green hills</em>, pick at random: ruin, ruined tower, ruined castle.</p>

<p><img loading="lazy" src="2024-04-17-solo-map-3.jpg" alt="A map with rivers, terrain, and settlements" /></p>

<p><a class="tag" href="/search/?q=%23Text_Mapper">#Text Mapper</a> <a class="tag" href="/search/?q=%23Maps">#Maps</a> <a class="tag" href="/search/?q=%23RPG">#RPG</a></p> 

<https://alexschroeder.ch/view/2024-04-17-solo-map>

---

## The Party’s Over 

date: 2024-04-18, from: Robert Reich's blog

Friends, Last Sunday, on ABC&#8217;s &#8220;This Week,&#8221; host George Stephanopoulos asked New Hampshire&#8217;s Republican governor Chris Sununu about his recent switch from supporting former South Carolina governor Nikki Haley for the Republican presidential nomination to supporting former president Trump. 

<https://robertreich.substack.com/p/the-partys-over>

---

## Rewilding for resilience

date: 2024-04-18, from: Tracy Durnell Blog

Taken together, the enclosure of infrastructure and imposition of technology monoculture forecloses our futures. As a top-down, built environment, the internet has become something that is done to us, not something we collectively remake every day. Rewilding is a work in progress. It’s not about trying to revert ecosystems to a mythical Eden. Instead, rewilders [&#8230;] 

<https://tracydurnell.com/2024/04/17/rewilding-for-resilience/>

---

## remint (for remind)

date: 2024-04-18, from: Jirka's blog

Just a short  note: the "remint"  {sup}1{/sup}  is a nice too which  makes use of the Remind calendar system ("remind")  {sup}2{/sup}. Somewhat easier. 

<http://jirka.1-2-8.net/20240418-0440_remint>

---

## ★ European Data Protection Board Goes There, Rules Against Meta’s ‘Pay or OK’ Model

date: 2024-04-18, updated: 2024-04-18, from: Daring Fireball

If Meta caves and complies with this ruling by offering a free tier with significantly lower ARPU, that opens the door for regulators and legislative bodies around the globe to demand the same. 

<https://daringfireball.net/2024/04/edpb_meta_pay_or_ok>

---

## ‘Oh the Humanity’

date: 2024-04-18, updated: 2024-04-18, from: Daring Fireball

 

<https://www.sandofsky.com/humane/>

---

## Ippei Mizuhara, Shohei Ohtani’s Interpreter and Friend, Stole $16 Million to Pay Only a Portion of His Gambling Losses

date: 2024-04-18, updated: 2024-04-18, from: Daring Fireball

 

<https://www.nytimes.com/2024/04/13/business/shohei-ohtani-interpreter-details.html>

---

## NBA Bars Jontay Porter for Betting

date: 2024-04-18, updated: 2024-04-18, from: Daring Fireball

 

<https://theathletic.com/5423208/2024/04/17/jontay-porter-banned-nba-betting/>

---

## Style vs. taste

date: 2024-04-17, from: Tracy Durnell Blog

&#8230;taste can be a practice—a result, even, of living authentically. Complement to yesterday&#8217;s quote about taste requiring vulnerability: style is following trends instead of self-knowledge, which is needed to define personal taste. Here, Kyle Chayka&#8217;s talking about the same lack of meaning in style trends today that Nahman points to: Decades ago, friction was what [&#8230;] 

<https://tracydurnell.com/2024/04/17/style-vs-taste/>

---

##  Letter from the editors of Scientific American: We Need to Make Cities... 

date: 2024-04-17, updated: 2024-04-17, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044430-letter-from-the-editors-o>

---

##  CCTV Footage Cross-Stitch 

date: 2024-04-17, updated: 2024-04-17, from: Jason Kittke's blog

 

<https://kottke.org/24/04/cctv-footage-cross-stitch>

---

## Of Course Regulation Can Work

date: 2024-04-17, updated: 2024-04-17, from: Daring Fireball

 

<https://sixcolors.com/post/2024/04/want-apple-to-change-regulation-works/>

---

##  PodcastAP allows you to follow podcasts and music feeds in the fediverse.... 

date: 2024-04-17, updated: 2024-04-17, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044422-podcastap-allows-you-to-f>

---

## Feeling duped by Amazon's "magical AI" bullshit

date: 2024-04-17, from: Matt Haughey blog

<p>Back in the Summer of 2019, I was in Seattle doing customer interviews for work, and I stopped by a friend&apos;s apartment in downtown Seattle. I spent a few hours there while using his wifi along with a spare desk. Nothing was too unusual until I went to</p> 

<https://a.wholelottanothing.org/feeling-duped-by-amazon/>

---

## Delta Game Emulator Now Available From the App Store

date: 2024-04-17, updated: 2024-04-18, from: Daring Fireball

 

<https://www.macrumors.com/2024/04/17/delta-game-emulator-iphone/>

---

##  I don&#8217;t really know how to describe this but here goes: Tavi... 

date: 2024-04-17, updated: 2024-04-17, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044424-i-dont-really-know-how>

---

## The obscenity of women’s pleasure

date: 2024-04-17, from: Tracy Durnell Blog

They come for the mail order abortion drugs first, but mark my words, they will try to use these 1800s Comstock Laws to block mail delivery of birth control too: for what could be more obscene than a woman copulating for pleasure, with no intention of breeding? 😱 Companies have already set this precedent by [&#8230;] 

<https://tracydurnell.com/2024/04/17/the-obscenity-of-womens-pleasure/>

---

##  This sounds really good: astrophysicist Katie Mack and curious person John Green... 

date: 2024-04-17, updated: 2024-04-17, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044429-this-sounds-really-good-a>

---

## AltStore PAL Launches in the EU

date: 2024-04-17, updated: 2024-04-17, from: Daring Fireball

 

<https://rileytestut.com/blog/2024/04/17/introducing-altstore-pal/>

---

##  Drawing Media, an Interview With Nick Catucci 

date: 2024-04-17, updated: 2024-04-17, from: Jason Kittke's blog

 

<https://kottke.org/24/04/drawing-media-an-interview-with-nick-catucci>

---

## Wystan and Erika

date: 2024-04-17, from: Ayjay blog

The couple above are W. H. Auden and Erika Mann. The photo was taken by a student at The Downs School, where Auden was then teaching. Erika, the daughter of the novelist Thomas Mann and an ardent opponent of Nazism, had been living in England but was in imminent danger of being repatriated to Germany. [&#8230;] 

<https://blog.ayjay.org/wystan-and-erica/>

---

##  Matthew Haughey: Embrace the Weird. &#8220;Who cares? Just make weird shit.&#8221; I... 

date: 2024-04-17, updated: 2024-04-17, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044419-matthew-haughey-embrace-t>

---

## Donald Trump Writes and Narrates Documentary Short Film on the Battle of Gettysburg

date: 2024-04-17, updated: 2024-04-17, from: Daring Fireball

 

<https://twitter.com/Randall_Stps/status/1780295504561131876>

---

##  An appreciation of Calvin and Hobbes and its creator Bill Watterson by... 

date: 2024-04-17, updated: 2024-04-17, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044420-an-appreciation-of-calvin>

---

##  Are the Kids Alright When They Grow Up? 

date: 2024-04-17, updated: 2024-04-17, from: Jason Kittke's blog

 

<https://kottke.org/24/04/are-the-kids-alright-when-they-grow-up>

---

**@Dave Winer's Scripting News** (date: 2024-04-17, from: Dave Winer's Scripting News)

I just tripped across this <a href="https://unberkeley.wordpress.com/2009/12/12/wordpress-com-implements-the-twitter-api-2/">post from 2009</a> where Matt had sent me an email saying they were supporting the Twitter API in WordPress. I had forgotten this. That's how long it's been that he's wanted to hook WP up to the social web. It doesn't look like I posted that to Scripting News. I wonder what other nuggets of forgotten history I'll find there. 

<http://scripting.com/2024/04/17.html#a143526>

---

##  The Flooding Will Come &#8220;No Matter What&#8221;, an excerpt from Abrahm Lustgarten&#8217;s... 

date: 2024-04-17, updated: 2024-04-17, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044415-the-flooding-will-come-no>

---

## AM phasor has no setting for 'stun'

date: 2024-04-17, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">AM phasor has no setting for 'stun'</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>Today on <a href="https://www.youtube.com/c/GeerlingEngineering">Geerling Engineering</a>, my Dad and I toured the tower site for WSDZ-AM, located in Belleville, IL. It's a 20kW AM radio station broadcasting with an array of <em>eight</em> individual towers:</p>

<p><img class="insert-image" width="700" height="auto" alt="WSDZ 8-tower AM transmitter site array" src="https://www.jeffgeerling.com/sites/default/files/images/wsdz-tower-site-8-towers-drone-shot.jpeg"></p>

<p>How does one get a single coherent signal out of an eight-tower array? Enter the <em>phasor</em>:</p>

<p><img class="insert-image" width="700" height="auto" alt="WSDZ Phasor - Insides" src="https://www.jeffgeerling.com/sites/default/files/images/wsdz-phasor-inside.jpg"></p>

<p><img class="insert-image" width="700" height="auto" alt="WSDZ - Phasor Knobs" src="https://www.jeffgeerling.com/sites/default/files/images/wsdz-phasor-knobs.jpeg"></p>

<p>That's <em>phasor</em> with an <em>o</em>, not <em>phaser</em> with an <em>e</em>, so Trekkies need not fret about a misspelling.</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-04-17T09:01:59-05:00" title="Wednesday, April 17, 2024 - 09:01" class="datetime">April 17, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/am-phasor-has-no-setting-stun>

---

## Peer-to-peer Git: Radicle Seed Node on OpenBSD

date: 2024-04-17, from: mrusme blog

While Git is decentralized by design, in many cases it still depends on a
classical server-client architecture. Many projects rely on GitHub, GitLab, or
another centralized platform to host their repositories and thereby make them
available to everyone. What if we could have Git, but without depending on
*any* centralized servers at all, and instead use it peer-to-peer? 

<https://xn--gckvb8fzb.com/peer-to-peer-git-radicle-seed-node-on-openbsd/>

---

**@Dave Winer's Scripting News** (date: 2024-04-17, from: Dave Winer's Scripting News)

Video: <a href="https://www.youtube.com/watch?v=6mdi8C3aDC0">Design issues in FeedLand blogrolls</a>. 

<http://scripting.com/2024/04/17.html#a134647>

---

## 
                Reviving PC DOS 7 in QEMU
            

date: 2024-04-17, updated: 2024-04-17, from: Uninformative blog

 

<https://www.uninformativ.de/blog/postings/2024-04-17/0/POSTING-en.html>

---

## Using AI-Generated Legislative Amendments as a Delaying Technique

date: 2024-04-17, updated: 2024-04-14, from: Bruce Schneier blog

<p>Canadian legislators proposed <a href="https://www.cbc.ca/news/politics/sustainable-jobs-bill-amendments-1.7171414">19,600 amendments</a>&#8212;almost certainly AI-generated&#8212;to a bill in an attempt to delay its adoption.</p>
<p>I wrote about many different legislative delaying tactics in <a href="https://www.schneier.com/books/a-hackers-mind/"><cite>A Hacker&#8217;s Mind</cite></a>, but this is a new one.</p>
 

<https://www.schneier.com/blog/archives/2024/04/using-ai-generated-legislative-amendments-as-a-delaying-technique.html>

---

## Calling all Manchester and surrounding – come to / apply for CODE100 on 22nd of May!

date: 2024-04-17, from: Chris Heilmann's blog

The next edition of CODE100 is in Manchester in the UK and I am super excited to come back to the isle! It will be my first time in Manchester and as a huge Joy Division/New Order fan, I really look forward to it. CODE100 is not your typical coding competition; it&#8217;s a coding game [&#8230;] 

<https://christianheilmann.com/2024/04/17/calling-all-manchester-and-surrounding-come-to-apply-for-code100-on-22nd-of-may/>

---

## Office Hours: Biden in Pennsylvania, Trump in court — who gets the biggest boost? 

date: 2024-04-17, from: Robert Reich's blog

Friends, Donald Trump is spending most of this week, and much of the coming month or two, in a Manhattan courtroom facing criminal charges. He claims he&#8217;s being politically persecuted and is acting the part of a martyr. He wants the public to see a courageous individual versus a corrupt deep state. 

<https://robertreich.substack.com/p/office-hours-biden-in-pennsylvania>

---

## The vulnerability of having taste

date: 2024-04-17, from: Tracy Durnell Blog

I suspect the rise of inspiration-sharing platforms might be making me, and everyone else on the collaborative internet, more focused on publicising our taste rather than feeding it. &#160; See also: The draw of the herd Algorithmic recommendations create &#8220;curiosity ruts&#8221; Performing yourself on social media Watched The 5 Secrets to Designing a Feelgood Home [&#8230;] 

<https://tracydurnell.com/2024/04/16/the-vulnerability-of-having-taste/>

---

## ‘Papyrus 2’

date: 2024-04-17, updated: 2024-04-17, from: Daring Fireball

 

<https://kottke.org/24/04/papyrus-2-a-bold-new-look-for-avatar>

---

## rewilding

date: 2024-04-17, from: Ayjay blog

The essay by Maria Farrell and Robin Berjon on “Rewilding the Internet” is absolutely essential — and you might know that I would think so if you read my essay from a few years back on “Tending the Digital Commons.” (See also my reflections on “manorial technocracy” and the tag, visible at the bottom of [&#8230;] 

<https://blog.ayjay.org/rewilding-2/>

---

## ‘MKBHDs for Everything’

date: 2024-04-17, updated: 2024-04-17, from: Daring Fireball

 

<https://stratechery.com/2024/mkbhds-for-everything/>

---

## Walt Mossberg, Still the King

date: 2024-04-17, updated: 2024-04-17, from: Daring Fireball

 

<https://www.wired.com/2004/05/mossberg/>

---

## Jackass of the Week: Daniel Vassallo

date: 2024-04-17, updated: 2024-04-17, from: Daring Fireball

 

<https://twitter.com/dvassallo/status/1779753281960722706?ref_src=twsrc%5Etfw>

---

## No Notes

date: 2024-04-16, updated: 2024-04-17, from: Daring Fireball

 

<https://www.afr.com/technology/apple-s-secret-to-success-don-t-take-notes-and-worry-about-the-numbers-20240415-p5fjuz>

---

## Wednesday 17 April, 2024

date: 2024-04-16, from: John Naughton's online diary

Manuel Castells, the first great scholar of cyberspace Quote of the Day “If you&#8217;re too open-minded; your brains will fall out.” Lawrence Ferlinghetti Musical alternative to the morning’s radio news Mark Knopfler’s Guitar Heroes &#124; Going Home (Theme From Local &#8230; <a href="https://memex.naughtons.org/wednesday-17-april-2024/39361/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/wednesday-17-april-2024/39361/>

---

## Playing Politics with People’s Lives

date: 2024-04-16, from: Dan Rather's Steady

Russia advances, Ukraine begs, Republicans dither 

<https://steady.substack.com/p/playing-politics-with-peoples-lives>

---

## Recipes as a score for improvisation

date: 2024-04-16, from: Tracy Durnell Blog

The backwards process she describes of composing a meal from what&#8217;s on hand is a valuable skill, but hard to learn. To gaze into the fridge and see soup or a frittata where there are wilting veggies and a smidge of dairy is a daily struggle. It also requires a vast mental repertoire of dishes [&#8230;] 

<https://tracydurnell.com/2024/04/16/recipes-as-a-score-for-improvisation/>

---

##  🎵 &#8220;We get &#8216;em from the earth, and they&#8217;re our friends.&#8221; Someone... 

date: 2024-04-16, updated: 2024-04-16, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044396-we-get-em-from-the>

---

## Seeing What One Wants to See

date: 2024-04-16, updated: 2024-04-16, from: Daring Fireball

 

<https://twitter.com/matthewstoller/status/1779879588715192569>

---

## The Financial Times Pretends Apple Plays the Market Share Game

date: 2024-04-16, updated: 2024-04-16, from: Daring Fireball

 

<https://www.ft.com/content/2c13254b-9995-4408-b02b-6f07ce706b8e>

---

##  The homicide rate continues to plummet in major American cities. &#8220;The nation... 

date: 2024-04-16, updated: 2024-04-16, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044414-the-homicide-rate-continu>

---

**@Dave Winer's Scripting News** (date: 2024-04-16, from: Dave Winer's Scripting News)

If Tesla went out of business, would my Model Y stop working?? 

<http://scripting.com/2024/04/16.html#a194230>

---

##  How Candles Are Made 

date: 2024-04-16, updated: 2024-04-16, from: Jason Kittke's blog

 

<https://kottke.org/24/04/how-candles-are-made>

---

## Not All Web APIs Are Good APIs

date: 2024-04-16, updated: 2024-04-16, from: Daring Fireball

 

<https://www.threads.net/@sdusteric/post/C5y2zJCytBk>

---

##  Apparently you can teach rats to drive tiny cars? Chef Gusteau: &#8220;Anyone... 

date: 2024-04-16, updated: 2024-04-16, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044407-apparently-you-can-teach->

---

##  E-bike subsidies should be more widespread, following the lead of Colorado ($450... 

date: 2024-04-16, updated: 2024-04-16, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044409-e-bike-subsidies-should-b>

---

## Embrace the weird

date: 2024-04-16, from: Matt Haughey blog

<p>The other day I was complaining to a friend how I&apos;ve been spinning my wheels lately, having trouble finding any projects or gigs I could work on.</p><p>He came back with a quick, short, smart response:</p><p><em>Who cares? Just make weird shit</em>.</p><hr><p>It hit me like a ton</p> 

<https://a.wholelottanothing.org/embrace-the-weird/>

---

##  Eric Topol interviews Jennifer Doudna on the bright future of genome editing... 

date: 2024-04-16, updated: 2024-04-16, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044397-eric-topol-interviews-jen>

---

##  The Longest Total Solar Eclipse Ever (73 Minutes!) 

date: 2024-04-16, updated: 2024-04-16, from: Jason Kittke's blog

 

<https://kottke.org/24/04/the-longest-total-solar-eclipse-ever-73-minutes>

---

##  A brief history of the LAN party. In the 90s, if you... 

date: 2024-04-16, updated: 2024-04-16, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044401-a-brief-history-of-the>

---

## Elon Musk: Threat or Menace Part 4

date: 2024-04-16, from: David Rosenthal's blog

The previous post in this series, <a href="https://blog.dshr.org/2023/10/elon-musk-threat-or-menace-part-3.html"><i>Elon Musk: Threat or Menace Part 3</i></a>, was based on the impressively detailed reporting from a team at the <i>Washington Post</i> on the crash that killed Jeremy Banner in <a href="https://www.washingtonpost.com/technology/interactive/2023/tesla-autopilot-crash-analysis/"><i>The final 11 seconds of a fatal Tesla Autopilot crash</i></a>. The team's subsequent equally detailed <a href="https://www.washingtonpost.com/technology/interactive/2024/tesla-full-self-driving-fatal-crash/"><i>Tesla worker killed in fiery crash may be first ‘Full Self-Driving’ fatality</i></a> triggered <a href="https://blog.dshr.org/2023/10/elon-musk-threat-or-menace-part-3.html?showComment=1707875945458#c5436365092676631737">this comment</a> which concluded:<br />
<blockquote>
  It seems the driver thought that it was OK to drive home with a blood alcohol level of 0.26 because he believed Musk's hype that Fake Self Driving would handle it despite having to repeatedly override it on the way out. 
</blockquote>
Now, the team's Faiz Siddiqui and Trisha Thadani are out with <a href="https://www.washingtonpost.com/technology/2024/04/07/tesla-autopilot-crash-trial/"><i>In 2018 crash, Tesla’s Autopilot just followed the lane lines</i></a>. Below the fold I look into what it reveals about Autopilot.<br />
<span><a name='more'></a></span>
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/L7DBFRGP3E5QBHA4XVV3KTURZQ.jpg&amp;w=916" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="414" data-original-width="800" height="104" src="https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/L7DBFRGP3E5QBHA4XVV3KTURZQ.jpg&amp;w=916" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/L7DBFRGP3E5QBHA4XVV3KTURZQ.jpg&amp;w=916">Source</a></td></tr></tbody></table>
The article is based upon depositions in a <a href="https://www.washingtonpost.com/technology/2024/04/07/tesla-autopilot-crash-trial/">trial about to start</a>:<br />
<blockquote>
The case involves a fatal crash in March 2018, when a Tesla in Autopilot careened into a highway barrier near Mountain View, Calif., after getting confused by what the company’s lawyers described in court documents as a “faded and nearly obliterated” lane line.<br />
<br />
The driver, Walter Huang, 38, was killed. An investigation by the National Transportation Safety Board later cited Tesla’s failure to limit the use of Autopilot in such conditions as a contributing factor: The company has acknowledged to National Transportation Safety Board that Autopilot is designed for areas with “clear lane markings.”
</blockquote>
Musk's and Tesla's marketing hype conflict with the <a href="https://www.washingtonpost.com/technology/2024/04/07/tesla-autopilot-crash-trial/">deposition</a>:<br />
<blockquote>
Under oath, however, Tesla engineer Akshay Phatak last year described the software as fairly basic in at least one respect: the way it steers on its own.<br />
<br />
“If there are clearly marked lane lines, the system will follow the lane lines,” Phatak said under questioning in July 2023. Tesla’s groundbreaking system, he said, was simply “designed” to follow painted lane lines.<br />
...<br />
In his deposition, Phatak said Autopilot will work wherever the car’s cameras detect lines on the road: “As long as there are painted lane lines, the system will follow them,” he said.
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/ZVIDOLUW3NXGECQ2MDDAKFQ4DY.jpg&amp;w=916" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="506" data-original-width="800" height="127" src="https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/ZVIDOLUW3NXGECQ2MDDAKFQ4DY.jpg&amp;w=916" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/ZVIDOLUW3NXGECQ2MDDAKFQ4DY.jpg&amp;w=916">Source</a></td></tr></tbody></table>
In this case, <a href="https://www.washingtonpost.com/technology/2024/04/07/tesla-autopilot-crash-trial/">it did</a>:<br />
<blockquote>
Huang, an engineer at Apple, bought his Tesla Model X in fall 2017 and drove it regularly to work along U.S. Highway 101, a crowded multilane freeway that connects San Francisco to the tech hubs of Silicon Valley. On the day of the crash, his car began to drift as a lane line faded. It then picked up a clearer line to the left — putting the car between lanes and on a direct trajectory for a safety barrier separating the highway from an exit onto State Route 85.<br />
<br />
Huang’s car hit the barrier at 71 mph, pulverizing its front end, twisting it into unrecognizable heap. Huang was pronounced dead hours later, according to court documents.<br />
...<br />
In the months preceding the crash, Huang’s vehicle swerved in a similar location eleven times, according to internal Tesla data discussed by Huang’s lawyers during a court hearing last month. According to the data, the car corrected itself seven times. Four other times, it required Huang’s intervention. Huang was allegedly playing a game on his phone when the crash occurred.
</blockquote>
It has been evident for a long time that just following the lines doesn't <a href="https://www.washingtonpost.com/technology/2024/04/07/tesla-autopilot-crash-trial/">live up to the hype</a>:<br />
<blockquote>
For years, Tesla and federal regulators have been aware of problems with Autopilot following lane lines, including cars being guided in the wrong direction of travel and placed in the path of cross-traffic — with sometimes fatal results. Unlike vehicles that are designed to be completely autonomous, like cars from Waymo or Cruise, Teslas do not currently use sensors such as radar or lidar to detect obstacles. Instead, Teslas rely on cameras.
</blockquote>
As usual, Tesla's response to the crash was to <a href="https://www.washingtonpost.com/technology/2024/04/07/tesla-autopilot-crash-trial/">do as little as possible</a>:<br />
<blockquote>
After the crash that killed Huang, Tesla told officials that it updated its software to better recognize “poor and faded” lane markings and to audibly alert drivers when vehicles might lose track of a fading lane. The updates stopped short of forcing the feature to disengage on its own in those situations, however. About two years after Huang died, federal investigators said they could not determine whether those updates would have been sufficient to “accurately and consistently detect unusual or worn lane markings” and therefore prevent Huang’s crash.
</blockquote>
The most important thing for Tesla is never to remind the driver of the limitations of their software because doing so would exacerbate the fall in the stock price, currently down 57% from its peak. As I wrote in <a href="https://blog.dshr.org/2024/01/autonomous-vehicles-trough-of.html"><i>Autonomous Vehicles: Trough of Disillusionment</i></a>:<br />
<blockquote>
Elon Musk famously claimed that <a href="https://www.autoevolution.com/news/elon-musk-says-tesla-is-worth-zero-without-fsd-why-he-is-completely-wrong-191416.html">Tesla is worth zero without Full Self Driving</a>. But although this is typical Musk BS, ... unlike some other utterances it contains a kernel of truth. Tesla is valued as a <i>technology</i> company not a <i>car</i> company. Thus it is critical for Telsa that its technology be viewed as better than those of other car companies; anything that suggests it is limited or inadequate is a big problem not just for the company but also for Musk's personal wealth.
</blockquote>
Liam Denning describes the problem for Musk if <a href="https://www.bloomberg.com/opinion/articles/2024-01-16/musk-s-many-billions-and-tesla-s-are-made-of-ai-dreams">doubts emerge about the AIs driving Teslas</a>:<br />
<blockquote>
Tesla is, overwhelmingly, a maker of electric vehicles, combining high growth with high margins — until recently anyway. Deliveries increased by 38% in 2023 — below the company’s long-term target of 50% per year — and the consensus for 2024 implies just 21%. Trailing 12-month net profit as of the third-quarter was actually down, year over year.<br />
<br />
Yet in the most starry-eyed Wall Street financial models, the making and selling of vehicles — generating 92% of Tesla’s current gross profit — accounts for only a fraction of Tesla’s purported valuation. The rest relates to whatever Tesla’s next big thing might turn out to be, usually something related to artificial intelligence, be it robotaxis, licensed self-driving systems, the Optimus humanoid robot or just something else that might spring from the company’s Dojo supercomputing project.<br />
<br />
Amorphous as the narrative may be, remove it and the tenuous tether between Tesla’s valuation and something approximating a potential future reality evaporates entirely.
</blockquote>
In <a href="https://aisupremacy.substack.com/p/the-biggest-ai-hype-fraud-of-all"><i>The Biggest AI Hype Fraud of All Time</i></a> Michael Spencer writes:<br />
<blockquote>
Tesla's FSD costs have tripled since 2019, costing more than $15,000 in the United States. This pumped up, fraudulently, Tesla’s margins on selling vehicles, however Elon Musk’s promises did not come to fruition after many deadlines have passed.<br />
</blockquote>
Spencer notes that "<a href="https://aisupremacy.substack.com/p/the-biggest-ai-hype-fraud-of-all">desperation at Tesla is very noticeable in 2024</a>":<br />
<blockquote>
In a push for end-of-quarter sales, Musk recently mandated that all sales and service staff install and demo FSD for customers before handing over the keys.<br />
...<br />
In a recent April 5th Tweet on X, Elon Musk says full level 5 FSD is coming in August, 2024. Tesla’s stock so far in 2024 is down 33%.<br />
</blockquote>
He focuses on Musk's <a href="https://aisupremacy.substack.com/p/the-biggest-ai-hype-fraud-of-all">pivot to x.AI</a>:<br />
<blockquote>
The myth that Tesla is a technology or AI company has been very crucial in the false promise marketing around the brand. Elon Musk’s weird response to this failure in 2024 is to poach AI talent from his Tesla to his own x.AI company.<br />
<br />
This is because x.AI plans to do a huge $3 Billion funding round that would value the AI startup at $18 Billion. This is all more or less breaking news.<br />
<br />
The problem is AI frauds have a habit of big declines. Elon Musk may have to make his SpaceX company, valued at around $180 billion as of early 2024, go public with an IPO to raise the funds needed to support his X Corp empire.
</blockquote>
Maintaining the illusion of superior technology requires <a href="https://www.washingtonpost.com/technology/2024/04/07/tesla-autopilot-crash-trial/">leaps of logic</a>:<br />
<blockquote>
Since 2017, officials with NTSB have urged Tesla to limit Autopilot use to highways without cross traffic, the areas for which the company’s user manuals specify Autopilot is intended. Asked by an attorney for Huang’s family if Tesla “has decided it’s not going to do anything” on that recommendation, Phatak argued that Tesla was already following the NTSB’s guidance by limiting Autopilot use to roads that have lane lines.
</blockquote>
Note how, in Tesla's world, any "roads that have lane lines" are "highways without cross traffic", and that Tesla is <i>not</i> limiting Autopilot's use but <i>asking their customers to limit its use</i>. A significant difference.
And Musk's <a href="https://en.wikipedia.org/wiki/Reality_distortion_field">reality distortion field</a> is in <a href="https://www.washingtonpost.com/technology/2024/04/07/tesla-autopilot-crash-trial/">full effect</a>:<br />
<blockquote>
When asked whether Autopilot would use GPS or other mapping systems to ensure a road was suitable for the technology, Phatak said it would not. “It’s not map based,” he said — an answer that diverged from Musk’s statement in a 2016 conference call with reporters that Tesla could turn to GPS as a backup “when the road markings may disappear.” In an audio recording of the call cited by Huang family attorneys, Musk said the cars could rely on satellite navigation “for a few seconds” while searching for lane lines.
</blockquote>
This casual attitude to operating in the real world is <a href="https://www.washingtonpost.com/technology/2024/04/07/tesla-autopilot-crash-trial/">typical of Tesla</a>:<br />
<blockquote>
Phatak’s testimony also shed light on other driver-assist design choices, such as Tesla’s decision to monitor driver attention through sensors that gauge pressure on the steering wheel. Asked repeatedly by the Huang family’s lawyer what tests or studies Tesla performed to ensure the effectiveness of this method, Phatak said it simply tested it with employees.
</blockquote>
Given Musk's notorious hair-trigger <a href="https://www.nytimes.com/2024/01/03/business/spacex-elon-musk-nlrb-workers.html">firings in response to disagreement</a>, testing with employees is pretty much guaranteed to discover that the system performs almost perfectly.<br />
<br />
The <i>Washington Post</i> team points out that this poor engineering of life-critical systems has <a href="https://www.washingtonpost.com/technology/2024/04/07/tesla-autopilot-crash-trial/">real-world impacts</a>:<br />
<blockquote>
Tesla’s heavy reliance on lane lines reflects the broader lack of redundancy within its systems when compared to rivals. The Post has previously reported that Tesla’s decision to omit radar from newer models, at Musk’s behest, culminated in an uptick in crashes.
</blockquote>
Whereas other companies <a href="https://www.washingtonpost.com/technology/2024/04/07/tesla-autopilot-crash-trial/">behave responsibly</a>:<br />
<blockquote>
Other Tesla design decisions have differed from competitors pursuing autonomous vehicles. For one thing, Tesla sells its systems to consumers, while other companies tend to deploy their own fleets as taxis. It also employs a unique, camera-based system and places fewer limits on where the software can be engaged. For example, a spokesperson for Waymo, the Alphabet-owned self-driving car company, said its vehicles operate only in areas that have been rigorously mapped and where the cars have been tested in conditions including fog and rain, a process known as “geo-fencing.”<br />
<br />
“We’ve designed our system knowing that lanes and their markings can change, be temporarily occluded, move, and sometimes, disappear completely,” Waymo spokeswoman Katherine Barna said.
</blockquote>
So that's all there is to Autopilot. No radar, no lidar, no GPS, no map, no geofencing, no proper driver monitoring. It just uses the camera to follow the lines. It doesn't disengage if it can't see the lines, it just keeps going. So much for Tesla's vaunted AI capabilities! I wonder how much more you get for the $15K extra you pay for Fake Self Driving?<br />
<br /> 

<https://blog.dshr.org/2024/04/elon-musk-threat-or-menace-part-4.html>

---

**@Dave Winer's Scripting News** (date: 2024-04-16, from: Dave Winer's Scripting News)

Good morning NBA fans. Today is the official beginning of the post-season, and this Knicks fan is one freaking happy camper. Just thought I'd get that outta the way before getting down to business. 

<http://scripting.com/2024/04/16.html#a142915>

---

##  So, I saw Civil War last night and while it&#8217;s well-made with... 

date: 2024-04-16, updated: 2024-04-16, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044411-so-i-saw-civil-war>

---

## Working together

date: 2024-04-16, from: Dave Winer's Scripting News

<p>Each form of online discussion has a <i>grain</i> to it. <a href="https://en.wikipedia.org/wiki/Doc_Searls">Doc</a> and I used to <a href="https://imgs.scripting.com/2024/04/16/followsthegrain.png">talk</a> about how something "follows the grain of the web." Twitter has its own grain, formed by its character limit, what information is shared (ie number of followers in both directions). </p>
<p><img class="imgRightMargin" src="https://imgs.scripting.com/2021/06/26/baseballScene.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I made a list of some of the social networks I've been on starting in the mid-70s. The list is very long. And each of them had their own limits, rules and features, and each led to a certain kinds of relationships between the participants. Mail lists that gain traction always flame out. It's hard to get people to read your blog. If you make it easier it changes into something else. Instagram, Youtube, TikTok form hierarchies of influencers. I think of those as the networks <a href="https://en.wikipedia.org/wiki/Taylor_Lorenz">Taylor Lorenz</a> covers. </p>
<p>But there isn't a structure that I'm aware of that leads to people working together. It's a puzzle I keep trying to figure out. </p>
<p>We need <a href="http://scripting.com/2024/04/16/140810.html?title=workingTogether">working together</a> to survive climate change and fascism. It would be good to crack this nut. </p>
<p>One of the nicest things about ChatGPT is that it's always up for working with you. The critics of AI don't begin to understand this. As an example, I'm going to ask ChatGPT to draw a picture of people working together. <a href="https://imgs.scripting.com/2024/04/16/peopleWorkingTogether.png">Here it is</a>. I didn't have to wait. It didn't look at my follower count, or my bank statement to decide if it was willing to work with me. I pay the $20 a month, and I've got a persistent always-on collaborator. </p>
<p>What got me thinking this way this morning is a bit of collaboration I did <a href="https://www.threads.net/@palafo/post/C5zHWbPOJun">with palafo</a> (a <a href="https://www.nytimes.com/by/patrick-laforge">human</a>) on Threads. It's remarkable. We actually did some work together. No sarcasm. It may be hard to read the <a href="https://www.threads.net/@palafo/post/C5zHWbPOJun">thread</a> but if you're curious about collaborative systems, here's a real example. Serendipitous, unplanned, but we figured something out by combining our experiences. Fantastic.</p>
<p>Later, <a href="https://werd.io/">Ben Werdmuller</a>, a person who I've gotten to know recently, is intelligent and asks good questions. He asked one <a href="https://www.threads.net/@ben.werdmuller/post/C50vyIruTCB">today</a>, how do they get the live audience on SNL to laugh when they want them to laugh. I had an idea and <a href="https://www.threads.net/@davew/post/C50wy5NsYD0">shared</a> it. (This was <a href="https://www.reddit.com/r/LiveFromNewYork/comments/1v5hy6/how_does_the_snl_audience_know_when_to_laugh/">discussed</a> on Reddit. I also <a href="https://chat.openai.com/share/463e08c0-0380-4e65-9e6c-2742ce91f0db">checked</a> with ChatGPT.) </p>
<p>If you take away one thing from this post it's that we can collaborate with the machines, and maybe that will unlock collaboration between humans. In fact, in a way they are facilitating the collaboration. If you want to be part of the collective human intelligence, you may be thinking about the machines the wrong way. Maybe they're the most human thing we have, because AI is made up of humans, somewhat like <a href="https://www.youtube.com/watch?v=4UPDUpjkHg0">Soylent Green</a>. <span class="spOldSchoolEmoji">😄</span></p>
<p>PS: I asked ChatGPT to draw a picture of <a href="https://imgs.scripting.com/2024/04/16/cleaningAMess.png">humans working together</a> to clean up a mess. </p>
<p>PPS: Yesterday I gave <a href="https://john.onolan.org/">John O'Nolan</a> what I think is a <a href="https://www.threads.net/@davew/post/C5y7iVoJP4r">good idea</a> for getting his Ghost blogs federating with Threads, Mastodon et al. I didn't expect thanks or even a response, but I wonder if he even heard it. Most of the time, trying to help other people results in not even an acknowledgment that they saw it. If I were him I'd look for a painless, quick way to get maximum interop. Something like <a href="http://ghost.social/">ghost.social</a>. I'd give the same advice to <a href="https://ma.tt/">Matt</a> at Automattic (in fact I think I did). </p>
<p>PPPS: I think acknowledgment is a key part of <a href="http://scripting.com/2024/04/16/140810.html?title=workingTogether">working together</a> on the web. Nothing more than "I wanted you to know I saw it" is often all that's needed to grease the skids of discourse. I've had a friendly disagreement with Manton at micro.blog about this. </p>
 

<http://scripting.com/2024/04/16/140810.html?title=workingTogether>

---

##  Today&#8217;s Work Music: Philip Glass Solo 

date: 2024-04-16, updated: 2024-04-16, from: Jason Kittke's blog

 

<https://kottke.org/24/04/todays-work-music-philip-glass-solo>

---

**@Dave Winer's Scripting News** (date: 2024-04-16, from: Dave Winer's Scripting News)

I've never been to TED or SXSW. 

<http://scripting.com/2024/04/16.html#a135822>

---

##  I do not think people should keep octopuses as pets, but I... 

date: 2024-04-16, updated: 2024-04-16, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044403-i-do-not-think-people>

---

## X.com Automatically Changing Link Text but Not URLs

date: 2024-04-16, updated: 2024-04-15, from: Bruce Schneier blog

<p>Brian Krebs <a href="https://krebsonsecurity.com/2024/04/twitters-clumsy-pivot-to-x-com-is-a-gift-to-phishers/">reported</a> that X (formerly known as Twitter) started automatically changing twitter.com links to x.com links. The problem is: (1) it changed <i>any</i> domain name that ended with &#8220;twitter.com,&#8221; and (2) it only changed the link&#8217;s appearance (anchortext), not the underlying URL. So if you were a clever phisher and registered fedetwitter.com, people would see the link as fedex.com, but it would send people to fedetwitter.com.</p>
<p>Thankfully, the problem has been fixed.</p>
 

<https://www.schneier.com/blog/archives/2024/04/x-com-automatically-changing-link-names-but-not-links.html>

---

## The Big Picture: Trump’s ongoing attempted coup 

date: 2024-04-16, from: Robert Reich's blog

His presidential campaign is treasonous 

<https://robertreich.substack.com/p/trumps-attempted-coup-is-ongoing>

---

## [Sponsor] Kolide: ‘Looking Past the Smoke and Mirrors of the MGM Hack’

date: 2024-04-16, updated: 2024-04-16, from: Daring Fireball

 

<https://l.kolide.co/43vcTaN>

---

## The Etak Navigator

date: 2024-04-16, updated: 2024-04-16, from: Daring Fireball

 

<https://maphappenings.com/2024/04/11/story-of-etak/>

---

## John Sterling, Radio Voice of the Yankees for 36 Years, Retires at 85

date: 2024-04-16, updated: 2024-04-16, from: Daring Fireball

 

<https://www.mlb.com/yankees/news/john-sterling-retires>

---

##  Lessons from a First Time EV Owner. This jibes with my experience.... 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044398-lessons-from-a-first-time>

---

**@Dave Winer's Scripting News** (date: 2024-04-15, from: Dave Winer's Scripting News)

Followed by <a href="http://oldschool.scripting.com/frank.mcpherson@gmail.com/">Frank McPherson</a> and <a href="http://oldschool.scripting.com/gwthompson@mac.com/">Gary Thompson</a>. 

<http://scripting.com/2024/04/15.html#a211957>

---

## Apple’s Mysterious Fisheye Projection

date: 2024-04-15, updated: 2024-04-15, from: Daring Fireball

 

<https://blog.mikeswanson.com/post/747761863530528768/apples-mysterious-fisheye-projection>

---

##  90 Women Photographers Celebrate Jane Goodall&#8217;s 90th Birthday 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/90-women-photographers-celebrate-jane-goodalls-90th-birthday>

---

## Nominee for Claim Chowder of the Year 2024: Time Magazine’s Best Inventions of 2023 Award for Humane’s AI Pin

date: 2024-04-15, updated: 2024-04-15, from: Daring Fireball

 

<https://time.com/collection/best-inventions-2023/6327143/humane-ai-pin/>

---

**@Dave Winer's Scripting News** (date: 2024-04-15, from: Dave Winer's Scripting News)

<a href="http://storian.org/">Anton Zuiker</a> is the first Drummer user with a FeedLand blogroll. 

<http://scripting.com/2024/04/15.html#a204352>

---

##  New favorite vocabulary word: wankpanzer (basically, &#8220;tank for jerks&#8221;). &#8220;A pointlessly large... 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044404-new-favorite-vocabulary-w>

---

## Shocker: ByteDance Still Receives Data From U.S. TikTok Users

date: 2024-04-15, updated: 2024-04-15, from: Daring Fireball

 

<https://fortune.com/2024/04/15/tiktok-china-data-sharing-bytedance-project-texas/?showAdminBar=true>

---

##  &#8220;May thy knife chop and shatter.&#8221; A quick update on Choppke&#8217;s (my... 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044408-may-thy-knife-chop-and>

---

## I’m AirChatting

date: 2024-04-15, from: Om Malik blog

There&#160;have been multiple attempts to create a new social network that tries to mimic Twitter as a short-text-oriented real-time&#160;platform ever since Twitter (nee X) started to fray.&#160;Mastodon is the choice of the proponents of the Indie web; BlueSky, a network promoted by Twitter co-founder Jack Dorsey, and Warpcast, which has its roots in the decentralized &#8230; 

<https://om.co/2024/04/15/im-airchatting/>

---

##  High-Diving Penguin Chicks 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/high-diving-penguin-chicks>

---

##  Love this Letterboxd movie list title: &#8220;Definitely there was love, oh but... 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044399-love-this-letterboxd-movi>

---

##  US courts & legislatures are giving women the curse of time travel... 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044402-us-courts-legislatures-ar>

---

##  End-Stage Poverty Is Killing People in Safety Net-Free America 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/end-stage-poverty-is-killing-people-in-safety-net-free-america>

---

## The “think of a number” fallacy

date: 2024-04-15, from: Paolo Valdemarin's blog

Some time a go a colleague commenting on the idea of iterative prompting, suggested to ask GPT to “think about something” and then make a decision on what to write or not to write. The problem with this approach is that a session with an LLM doesn’t really have a memory outside the actual text &#8230; <a href="https://val.demar.in/2024/04/the-think-of-a-number-fallacy/" class="more-link">Continue reading<span class="screen-reader-text"> "The “think of a number” fallacy"</span></a> 

<https://val.demar.in/2024/04/the-think-of-a-number-fallacy/>

---

##  Always a good day to read Daniel Radcliffe&#8217;s open letter to J.K.... 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044393-always-a-good-day-to>

---

##  A Pareto analysis of the best driver/kart build you can drive in... 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044394-a-pareto-analysis-of-the>

---

## A blogroll on a Drummer blog

date: 2024-04-15, from: Dave Winer's Scripting News

<p>How to add a <a href="https://blogroll.social/">FeedLand blogroll</a> to a <a href="http://docserver.scripting.com/drummer/blogging.opml">Drummer blog</a>. </p>
<ul>
<li>You must have a Drummer blog and a FeedLand account.</li>
<li>You can specify that all the feeds you're subscribed to are in your blogroll or use a category and only feeds in that category will be in the blogroll. </li>
<li>The blogroll updates automatically, when one of the feeds has a new post, it goes to the top of the list.</li>
<li>You can expand a feed to see the five most recent items. Click on the pubdate to go to the full item on the web. </li>
<li>It supports keyboard navigation. Up and down arrows move through the list, Return to expand/collapse. </li>
<li>We're working on WordPress plugin. </li>
</ul>
<p>Four head-level attributes in your blog.opml file. Only one required. </p>
<ul>
<li>blogrollUsername -- required</li>
<li>blogrollServer -- optional, if not specified it's feedland.com</li>
<li>blogrollCategory -- optional</li>
<li>blogrollTitle -- optional, but you really should provide a title, otherwise we invent a silly one for you. <span class="spOldSchoolEmoji">😄</span></li>
</ul>
<p><a href="https://imgs.scripting.com/2024/04/15/headlevelatts.png">Screen shot</a> of how the head-level attributes are set on <a href="http://oldschool.scripting.com/bullmancuso@gmail.com/">Bull Mancuso's blog</a>. </p>
<p><a href="https://imgs.scripting.com/2024/04/15/bullblogscreenshot.png">Screen shot</a> of the blog itself with the blogroll.</p>
<p>A link to Bull's blogroll <a href="https://feedland.com/?username=bullmancuso&catname=blogroll">category</a> on feedland.com.</p>
<p>A <a href="https://github.com/scripting/Scripting-News/issues/303">place</a> to ask questions offer kudos, etc. <span class="spOldSchoolEmoji">😄</span></p>
<p>PS: I'm not trying to sell you on using Drummer to run a blog. Rather I needed a place to figure out how this works, so we know how to set up and document the WordPress plugin. </p>
 

<http://scripting.com/2024/04/15/145315.html?title=aBlogrollOnADrummerBlog>

---

##  As optical illusions go, this is pretty good.... 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044380-as-optical-illusions-go-t>

---

##  So kottke[dot]org had some significant downtime this weekend but it seems to... 

date: 2024-04-15, updated: 2024-04-15, from: Jason Kittke's blog

 

<https://kottke.org/24/04/0044390-so-kottkedotorg-had-some->

---

## New Lattice Cryptanalytic Technique

date: 2024-04-15, updated: 2024-04-14, from: Bruce Schneier blog

<p>A <a href="https://eprint.iacr.org/2024/555">new paper</a> presents a polynomial-time quantum algorithm for solving certain hard lattice problems. This could be a big deal for post-quantum cryptographic algorithms, since many of them base their security on hard lattice problems.</p>
<p>A few things to note. One, this paper has not yet been peer reviewed. As <a href="https://crypto.stackexchange.com/questions/111385/polynomial-time-quantum-algorithms-for-lattice-problems">this comment</a> points out: &#8220;We had already some cases where efficient quantum algorithms for lattice problems were discovered, but they turned out <a href="https://crypto.stackexchange.com/questions/41731/new-quantum-attack-on-lattices-or-shor-strikes-again?rq=1">not being correct</a> or only worked for <a href="https://crypto.stackexchange.com/questions/95187/what-does-the-work-an-efficient-quantum-algorithm-for-lattice-problems-achievin">simple special cases</a>.&#8221;</p>
<p>Two, this is a quantum algorithm, which means that it has not been tested. There is a wide gulf between quantum algorithms in theory and in practice. And until we can actually code and test these algorithms, we should be suspicious of their speed and complexity claims...</p> 

<https://www.schneier.com/blog/archives/2024/04/new-lattice-cryptanalytic-technique.html>

---

## Happy Tax Day, and the coming fight over extending Trump’s tax cut

date: 2024-04-15, from: Robert Reich's blog

It&#8217;s behind the big money financing Trump&#8217;s 2024 campaign 

<https://robertreich.substack.com/p/happy-tax-day>

---

## Who counts?

date: 2024-04-15, from: Enlightenment Economics blog

I had been looking forward to reading The Ordinal Society by Marion Fourcade and Kieran Healy, and it hasn&#8217;t disappointed. My copy is covered in sticky notes marking interesting points. What do they mean by the term? It is the &#8230; <a href="http://www.enlightenmenteconomics.com/blog/index.php/2024/04/who-counts/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<http://www.enlightenmenteconomics.com/blog/index.php/2024/04/who-counts/>

---

**@Dave Winer's Scripting News** (date: 2024-04-15, from: Dave Winer's Scripting News)

Next up, let's connect <a href="http://docserver.scripting.com/drummer/blogging.opml">Drummer blogging</a> to FeedLand <a href="https://blogroll.social/">blogrolls</a>. <span class="spOldSchoolEmoji">😄</span> 

<http://scripting.com/2024/04/14.html#a012517>

---

**@Dave Winer's Scripting News** (date: 2024-04-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/04/14/georgeHarrison.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I want to work with the best developers, I don't care where they work. It occurred to me watching a Martin Scorcese <a href="https://en.wikipedia.org/wiki/George_Harrison:_Living_in_the_Material_World">documentary</a> about the life of George Harrison, how much people in music seek out opportunities to create with other musicians. In technology, it doesn't happen, we don't even look at each others software. After waiting a whole lifetime for a culture of collaboration, we have had it for short periods, but it's most of the time it's been people trying to deconstruct and reinvent other people's work, not build on it. I'm still open to this changing. I hope to be a catalyst for it, one more time. 

<http://scripting.com/2024/04/14.html#a011848>

---

**@Dave Winer's Scripting News** (date: 2024-04-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/10/25/mookieWilson.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I don’t like how betting has invaded sports broadcasting. I don't like that it breaks the bond among people who root for one team their whole lives, as I have with the Knicks and the Mets. I think of people who love the same teams as I do as family. I like that there are Knicks fans who also like the Yankees even though I totally despise the Yankees and everything they (don't) stand for, but we all love the freaking Knicks (and ignore the Nets, btw). Before long there won't be any of us left, everyone will see sports as a business, an obsession, or their downfall, because you can't win at gambling, we all know that. The whole tribal thing about sports is broken by integrated gambling, it suggests many of us, maybe eventually most of us, are here not for love of team, rather they're feeding an addiction. 

<http://scripting.com/2024/04/14.html#a011808>

---

## Election Countdown, 205 Days to Go: Reality Closes In. 

date: 2024-04-14, from: James Fallows, Substack

Keeping track of the people who are serious, and those who are still playing make-believe. Also, why we don't want presidential &#8216;debates.&#8217; 

<https://fallows.substack.com/p/election-countdown-205-days-to-go>

---

## Monday 15 April, 2024

date: 2024-04-14, from: John Naughton's online diary

Waiting for Hockney The queue for his 2012 Exhibition at the Royal Academy. Quote of the Day &#8220;Genius creates, and taste preserves” Alexander Pope Musical alternative to the morning’s radio news Van Morrison &#124; This Loving Light Of Mine Link &#8230; <a href="https://memex.naughtons.org/monday-15-april-2024/39356/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-15-april-2024/39356/>

---

## It’s just a blog

date: 2024-04-14, from: Tracy Durnell Blog

Star Struck: Lauren Oyler’s meditations on Goodreads, anxiety, and gossip by Ann Manov 😬 This book review is a brutal takedown* in which both author and critic come off as braggadocios about their highbrow bona fides, the first coming right out and saying it, the second name-dropping like Hansel. Despite the quotes betraying the author&#8217;s [&#8230;] 

<https://tracydurnell.com/2024/04/14/its-just-a-blog/>

---

## The Masters VisionOS App

date: 2024-04-14, updated: 2024-04-15, from: Daring Fireball

 

<https://apps.apple.com/us/app/the-masters-tournament/id309025938>

---

## Underpromise and Overdeliver

date: 2024-04-14, updated: 2024-04-14, from: Daring Fireball

 

<https://twitter.com/ericmigi/status/1778819403016265869>

---

**@Dave Winer's Scripting News** (date: 2024-04-14, from: Dave Winer's Scripting News)

<a href="https://imgs.scripting.com/2024/04/14/easternStandingsNBA.png">Final Eastern Division standings</a>. Knicks finish second. Best Knicks team in a long time. Ended the season with a five-game winning streak. 

<http://scripting.com/2024/04/14.html#a202317>

---

## More on the Problem With ‘The Problem With Jon Stewart’

date: 2024-04-14, updated: 2024-04-14, from: Daring Fireball

 

<https://www.nbcnews.com/business/business-news/jon-stewart-claims-apple-discouraged-interviewing-ftc-chair-lina-khan-rcna145999>

---

## ‘A Tour de Force of International Crisis Management for the Biden White House’

date: 2024-04-14, updated: 2024-04-15, from: Daring Fireball

 

<https://talkingpointsmemo.com/edblog/call-it-what-it-is>

---

## Upcoming Speaking Engagements

date: 2024-04-14, updated: 2024-04-14, from: Bruce Schneier blog

<p>This is a current list of where and when I am scheduled to speak:</p>
<ul>
<li>I&#8217;m speaking twice at <a href="https://www.rsaconference.com/experts/bruce-schneier">RSA Conference 2024</a> in San Francisco. I&#8217;ll be on a panel on software liability on May 6, 2024 at 8:30 AM, and I&#8217;m giving a keynote on AI and democracy on May 7, 2024 at 2:25 PM.</li>
</ul>
<p>The list is maintained on <a href="https://www.schneier.com/events/">this page</a>.</p>
 

<https://www.schneier.com/blog/archives/2024/04/upcoming-speaking-engagements-35.html>

---

## Humble and Kind

date: 2024-04-14, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/humble-and-kind>

---

## Language in the always on world

date: 2024-04-14, from: Enlightenment Economics blog

The house is full of slightly random books. I picked up one sent to Rory, Because Internet: Understanding how language is changing by Gretchen McCulloch, a few years old now. She&#8217;s a linguist and the book is about the way &#8230; <a href="http://www.enlightenmenteconomics.com/blog/index.php/2024/04/language-in-the-always-on-world/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<http://www.enlightenmenteconomics.com/blog/index.php/2024/04/language-in-the-always-on-world/>

---

## Sunday caption contest: On the road?

date: 2024-04-14, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/sunday-caption-contest-on-the-road>

