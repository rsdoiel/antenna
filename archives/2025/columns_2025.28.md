---
title: columns
updated: 2025-07-15 06:07:32
---

# columns

(date: 2025-07-15 06:07:32)

---

## 2025-07-15 Is somebody abusing my fedi instance? No.

date: 2025-07-15, from: Alex Schroeder's Blog

<h1 id="2025-07-15-is-somebody-abusing-my-fedi-instance-no">2025-07-15 Is somebody abusing my fedi instance? No.</h1>

<p>Time to find out. Load is at 16. The list of processes doesn&rsquo;t show anything suspicious. What&rsquo;s going on?</p>

<pre><code>~# 2h-access-log ^social | log-user-agent | rank-lines 
   1390 Mastodon/4.5.0-nightly.2025-07-11 (http.rb/5.3.1; +https://mastodon.social/)
    598 Mozilla/5.0 (Windows NT 10.0; rv:128.0) Gecko/20100101 Firefox/128.0
    395 Mastodon/4.4.1 (http.rb/5.3.1; +https://social.wildeboer.net/)
    373 Mastodon/4.5.0-alpha.1+glitch (http.rb/5.3.1; +https://infosec.exchange/)
    363 Mastodon/4.4.1 (http.rb/5.3.1; +https://sauropods.win/)
    363 Mastodon/4.3.9 (http.rb/5.2.0; +https://chaos.social/)
    340 Mastodon/4.3.8 (http.rb/5.2.0; +https://hachyderm.io/)
    285 Mastodon/4.4.1 (http.rb/5.3.1; +https://mas.to/)
    203 Mastodon/4.4.1 (http.rb/5.3.1; +https://mathstodon.xyz/)
    176 Mastodon/4.3.8 (http.rb/5.2.0; +https://social.coop/)
</code></pre>

<p>The second line is suspicious. That doesn&rsquo;t look like a fedi instance.
What sort of requests is it making?</p>

<pre><code># 2h-access-log ^social \
    | grep 'Mozilla/5.0 (Windows NT 10.0; rv:128.0) Gecko/20100101 Firefox/128.0' \
    | log-request \
    | rank-lines
     15 /api/v1/followed_tags?limit=200
      6 /api/v1/notifications?limit=1&amp;since_id=01K06NZSCZQFKKYCKM5AHKDZF8
      4 /api/v1/timelines/home?limit=5&amp;since_id=01K06SVB7G03W31DEZ26KR8AP8
      4 /api/v1/timelines/home?limit=5&amp;since_id=01K06SQTXR7ECESAG531C0X493
      4 /api/v1/timelines/home?limit=5&amp;since_id=01K06RYDEGAB5XSF1FTKSPZ1MR
      4 /api/v1/timelines/home?limit=20
      3 /fileserver/01JV5VX0DTX1NRX6XVD0B02H5A/attachment/small/01JV5VX3KSXT9BH52QSKF032WW.webp
      3 /fileserver/01JPNGX1BT5PMRYTK34FM5NZ52/attachment/small/01JSYB0NYYCPG2S9VK1NJXZBA9.jpeg
      3 /fileserver/01JDB8P0TJN4YZRXN7C9ACC993/attachment/small/01JDB8P1AJ2G4STB9QRCTNPR3G.jpeg
      3 /fileserver/01JCPET54MFFGX73MXH0P03D3H/attachment/small/01JXTFBH492M437DZVK0ERGH5S.jpeg
</code></pre>

<p>It&rsquo;s basically spying on me? I don&rsquo;t follow tags, in any case.</p>

<pre><code>~# 2h-access-log ^social \
    | grep 'Mozilla/5.0 (Windows NT 10.0; rv:128.0) Gecko/20100101 Firefox/128.0' \
    | log-ip \
    | asncounter --no-prefixes 2&gt;/dev/null
count	percent	ASN	AS
598	100.0	13030	INIT7, CH
total: 598
</code></pre>

<p>Whoops, it&rsquo;s me! I guess one of my clients is using this user-agent.</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-07-15-abusing-fedi>

---

**@Dave Winer's Scripting News** (date: 2025-07-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/05/02/lbj.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I'm going to add a command to <a href="https://wordland.social/">WordLand</a> that lets you quickly edit the text of the current post in Markdown. So if you you can quickly change the URL on a link. Or just see what you got when you pasted some text into the document. The thing I don't want to do is a full-blown Markdown editor. I want to do that too at some point, or leave the door open for other developers to do it. I'm not trying to own the market for nice editors for WordPress, I just want to open the market. And along the way I'm going to do a bunch of marketing for WordPress that it really needs. I hope Matt and company appreciate this. WordPress needs, imho, a kind of love and support that honestly it hasn't been getting. 

<br> 

<http://scripting.com/2025/07/15.html#a120122>

---

**@Dave Winer's Scripting News** (date: 2025-07-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2022/12/05/boxOfTomatos.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I should do this more often, <a href="https://daytona.scripting.com/search?q=spelunking">spelunking</a> around an old server that's just sitting there. I was wondering why my posts to my <a href="https://dave.linkblog.org/">linkblog feed</a> were going to Mastodon, since I only post them to Bluesky in my new software. I just found out. I have an app running on this server called <a href="https://daytona.scripting.com/search?q=FeedToMasto">FeedToMasto</a>, which apparently is watching that feed. It's been chugging away like an abandoned science fiction robot, seeing if I posted anything to my linkblog, and forwarding it to Mastodon if I have. Hello my robot friend, you were forgotten but still appreciated. It's <a href="https://github.com/scripting/feedToMasto/blob/main/feedtomasto.js">open source</a>, of course, and appears to be <a href="https://github.com/scripting/feedToMasto/blob/main/README.md">well-documented</a>. If you're looking for example code that reads feeds and pushed the result to interesting places, this is for you. 

<br> 

<http://scripting.com/2025/07/15.html#a115347>

---

**@Dave Winer's Scripting News** (date: 2025-07-15, from: Dave Winer's Scripting News)

I was poking around on an old server, and found a domain that looked interesting, and it was. The <a href="http://daytona0.scripting.com/?q=dave&collection=drummerdocs">first version of Daytona</a>, built around an outliner. I got the impression people didn't like it, so I developed a new one using a more conventional approach, and I love that one too, and I did a better job the second time. But it's interesting to poke around the old one as well, and it still works, which is great to see.  In an alternate universe in the year 2025 the whole human species is organized by one big outline that everyone contributes to in peace, love and harmony, as opposed to this one which <a href="http://daytona0.scripting.com/?q=grunts&collection=scriptingnews">grunts</a> and <a href="http://daytona0.scripting.com/?q=snorts&collection=scriptingnews">snorts</a> on Twitter and can't even put a freaking title on their posts. 

<br> 

<http://scripting.com/2025/07/15.html#a114757>

---

## What do Rosie O’Donnell, Lula, John Brennan, and James Comey have in common?

date: 2025-07-15, from: Robert Reich's blog

The Poisoning of Presidential Power 

<br> 

<https://robertreich.substack.com/p/what-do-rosie-odonnell-lula-john>

---

## Redka: Redis re-implemented with SQL

date: 2025-07-15, from: Anton Zhiyanov blog

A Redis-compatible Go server/package with a Postgres or SQLite backend. 

<br> 

<https://antonz.org/redka/>

---

## 2025-07-14 Urwaldweg Bödmeren

date: 2025-07-15, from: Alex Schroeder's Blog

<h1 id="2025-07-14-urwaldweg-bödmeren">2025-07-14 Urwaldweg Bödmeren</h1>

<p>It’s times like these when I have my doubts. If I take the train at 10:00 I
should arrive at 12:11. There should be a restaurant at the stop where I get
off so if it rains a bit longer, that should be no problem. The hike is 3h
30min so there is a tiny chance for a little rain later but that should be OK.
One of the days I am happy Switzerland pays for expensive weather modeling.</p>

<p><img loading="lazy" src="2025-07-14-boedmeren-1.jpeg" alt="The rain forecast goes up to 5mm/h and drops down to zero by 12:00." /></p>

<p>Yesterday, as I was looking for a hike, I noticed an interesting option that
I’m not going to do: an 11-part hike following the trail of the Russian army
under Suvorov:</p>

<blockquote>
<p>“In autumn 1799, Russian General Suvorov and his army crossed through the
Swiss Alps in order to oust the French from the country. The ViaSuworow
follows the route of this campaign through breathtaking mountain landscape.”
&ndash; <a href="https://www.myswitzerland.com/en-ch/experiences/route/viasuworow/">Via Suworow</a></p>
</blockquote>

<p>My goals for today are more modest:</p>

<blockquote>
<p>“Hike through Western Europe&rsquo;s largest primeval forest, above the most
extensive cave system in Switzerland: on this circular trail through Bödmeren
Forest in the Muota Valley, you&rsquo;ll discover ancient spruces, weeping silver
firs with olive-coloured beards of lichen, and jagged rocks overgrown with
moss.” &ndash; <a href="https://schweizmobil.ch/de/wanderland/route-826">Urwaldweg Bödmeren</a></p>
</blockquote>

<p>I arrived at 12:11. It seems the rain just left so I’m having an extra coffee at the last
restaurant. It’s a smoker restaurant!! I’m sitting outside. The music they are
playing is “Ländler”. Swiss country music? 😄</p>

<p>A few minutes later and I’m off. Across the creek, up the road, not stopping a hell-hole (a spot on
the map) and turning right at 9/11 (my trail left the road at an altitude marker
saying 911m above sea level).</p>

<p><img loading="lazy" src="2025-07-14-boedmeren-2.jpeg" alt="A creek with houses on the left side, taken from a bridge." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-3.jpeg" alt="A green mountain valley. In the middle there&rsquo;s a huge construction site, like a wound in the landscape." /></p>

<p>And up and up.</p>

<p><img loading="lazy" src="2025-07-14-boedmeren-6.jpeg" alt="Way pointers. To go back from where I came (Höllloch) would take me 35 m. To reach my goal (Bödmeren) will take me 3 h 30 min. And then I have to get back." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-7.jpeg" alt="The trail leads through a short tunnel." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-8.jpeg" alt="Biggest ant hill so far, built practically on the hiking trail." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-10.jpeg" alt="Campanula along the way." /></p>

<p>At the moment I am walking up the valley below this cliff face. The trail goes
up and down and up again. I haven’t reached the forest. But the horse flies
have reached me. 😆</p>

<p><img loading="lazy" src="2025-07-14-boedmeren-9.jpeg" alt="And up and up, wooden logs serve as stairs, a sign warns of forest fires." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-11.jpeg" alt="A small vista point near a tree." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-12.jpeg" alt="The trail goes down. They even put a rope here." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-13.jpeg" alt="The trail goes up again." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-14.jpeg" alt="A tiny bench made of wooden logs. Stairs up along a cliff." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-15.jpeg" alt="A trail along an incline." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-16.jpeg" alt="A trail below a cliff face and a nice view into a valley." /></p>

<p>The poo tells me that there are chamois (Rupicapra rupicapra, a species of
goat-antelope) around. I also hear cow bells and a grass mower from down
below.</p>

<p><img loading="lazy" src="2025-07-14-boedmeren-17.jpeg" alt="Tiny shit beads." /></p>

<p>Sadly, up here my signal disappeared. And then the phone charge dropped
below 20% and I got nervous. I started putting the phone into air-plane
mode, hoping to conserve batteries as a phone without signal is going to
try and find an antenna using a lot of power. Later, I would even switch
off the phone entirely.</p>

<p><img loading="lazy" src="2025-07-14-boedmeren-18.jpeg" alt="I have reached the actual forest I was trying to visit. At least the sign says so." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-19.jpeg" alt="There are flowers and trees. It’s a forest all right." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-20.jpeg" alt="Another sign saying no hunting allowed. And a sticker saying that nobody likes the police, in French." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-21.jpeg" alt="In the mountains one gets mountain envy when looking at other mountains. Like this. What a nice green mountain over there." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-24.jpeg" alt="At this point the trail is wide. A shack or barn with actual wood shingles. Not the last one, either." /></p>

<p>At this point I passed a small shack with a fridge selling goat cheese and
drinks, honour system. I nodded, liked it, kept on walking, and then I had not-
buyer’s-remorse. I would have loved more water and some goat cheese! But I
didn’t want to turn back. So 1l of water is all I had for this 6h hike.</p>

<p><img loading="lazy" src="2025-07-14-boedmeren-22.jpeg" alt="Looking down into valleys from above is fantastic. Forests, meadows, a house, a town at the far end." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-23.jpeg" alt="I’ve reached the high pastures along the forest." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-25.jpeg" alt="A mountain meadow. There are probably some sniper cows hiding in plain sight but I can’t see them in the preview. Writing alt text without being able to see the important parts is a bad approach." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-26.jpeg" alt="Last mountain meadow. Some cows lie in waiting. I spotted them already. Very nice mountains in the back. I don’t have the time and the knees to make it there, though." /></p>

<p>The reason the hike starts at “hell hole” is that there is a 190km cave system
underneath the karst. At this altitude, the limestone shows and I think that’s
why the mountains in the back are called Silberen (“Silverly”?). This is the
turning point of the hike. Also, where is the damn forest I was promised.</p>

<p><img loading="lazy" src="2025-07-14-boedmeren-27.jpeg" alt="The landscape is full of white rocks. And gaps and holes. Brushes grow everywhere and perhaps there are some trees over there in the back." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-28.jpeg" alt="Looking at stone-white mountains in the distance. Where the area is exposed, no trees grow. They all hug the wind shadows." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-29.jpeg" alt="If you step off the trail, you might fall into a black hole. Perhaps it goes down two meters. Perhaps it goes all the way down into that 190km cave system." /></p>

<p>And now I’m finally in the forest. It looks OK. I’m not stepping off the path.
All coniferous trees. Lots of lichen, moss, and Grauer Alpendost (Adenostyles
alliariae).</p>

<p><img loading="lazy" src="2025-07-14-boedmeren-30.jpeg" alt="This is the forest. With tall trees and a nice trail." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-31.jpeg" alt="Nice trail and tall trees. Oh, and another deep hole next to trail. No bottom in sight. I don&rsquo;t want to be hiking here in the dark." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-32.jpeg" alt="Tall trees." /></p>

<p><img loading="lazy" src="2025-07-14-boedmeren-33.jpeg" alt="More tall trees and lots of fern." /></p>

<p>And I’m back.</p>

<p><img loading="lazy" src="2025-07-14-boedmeren-34.jpeg" alt="The view down to Muotathal. The descend will take over an hour and give me huge knees, if you know what I mean. Probably depends on your age. Go hiking while you still can!!!" /></p>

<p>I rushed my hike down because I wasn&rsquo;t sure how late I&rsquo;d be. When I picked the trail it said 3 h 30 min but that was just for the circle around the forest. I didn&rsquo;t account for the 2 h 40 min to get there. So my worst case scenario was that it would take 8 h 50 min! I walked with just short water breaks and sped downhill like a happy little cow enjoying its first outing in spring and managed to catch the bus at 18:14, so it took me 6h total.</p>

<p>I need to pay more attention in the future. And bring a bigger backpack. And more water. And a snack.</p>

<p><a class="tag" href="/search/?q=%23Switzerland">#Switzerland</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-07-14-boedmeren>

---

## July 14, 2025

date: 2025-07-15, from: Heather Cox Richardson blog

Trump appointees insist they have a &#8220;mandate&#8221; to drive undocumented immigrants out of the U.S. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-14-2025>

---

## ‘Elon Musk Gives Himself Another Handshake’

date: 2025-07-15, updated: 2025-07-15, from: Daring Fireball

 

<br> 

<https://pxlnv.com/linklog/musk-xai-spacex/>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-07-15, from: Miguel de Icaza Mastondon feed)

<p>This is lovely, SwiftUI for Windows and Linux:</p><p><a href="https://swiftcrossui.dev" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="">swiftcrossui.dev</span><span class="invisible"></span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114854395771500859>

---

##  Good lord, the World Cup is going to be a total shitshow... 

date: 2025-07-14, updated: 2025-07-14, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047150-good-lord-the-world-cup>

---

## MAGA Turns on Trump

date: 2025-07-14, from: Dan Rather's Steady

And that was just part of his very bad week 

<br> 

<https://steady.substack.com/p/maga-turns-on-trump>

---

##  This is great: a proposed &#8220;poli-sci course that equips one for modern... 

date: 2025-07-14, updated: 2025-07-14, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047149-this-is-great-a-proposed>

---

## Lee Elia, Former Major League Manager, Dies at 87

date: 2025-07-14, updated: 2025-07-14, from: Daring Fireball

 

<br> 

<https://www.nytimes.com/athletic/6486807/2025/07/10/lee-elia-obituary-cubs-phillies/>

---

## source code analysis of Amazon Kiro

date: 2025-07-14, from: Geoffrey Hunntley's blog

<p>It&apos;s another day, and another coding tool has been brought to market that uses <a href="https://ghuntley.com/overton" rel="noreferrer">ripgrep under the hood</a>. This time it&apos;s Kiro by Amazon. What follows below is an analysis of this coding agent:</p><blockquote>Study the source code in this folder.<br>Your task is to create</blockquote> 

<br> 

<https://ghuntley.com/amazon-kiro-source-code/>

---

##  How Was the Wheel Invented? &#8220;How did an obscure, scientifically naive mining... 

date: 2025-07-14, updated: 2025-07-14, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047101-how-was-the-wheel-invente>

---

##  &#8220;Fed up with big legacy news? Here are 13 independent, worker-owned outlets... 

date: 2025-07-14, updated: 2025-07-14, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047141-fed-up-with-big-legacy>

---

## July 13, 2025

date: 2025-07-14, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/168336287/efec3d1e9cb0bf7177d67598f12c1137.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/168336287/efec3d1e9cb0bf7177d67598f12c1137.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/july-13-2025-6de>

---

## Elmore Leonard’s Perfect Pitch

date: 2025-07-14, updated: 2025-07-14, from: Daring Fireball

 

<br> 

<https://www.newyorker.com/magazine/2025/07/07/elmore-leonards-perfect-pitch>

---

## Experts Said This Was a Damn Clever Post by Jason Kottke

date: 2025-07-14, updated: 2025-07-14, from: Daring Fireball

 

<br> 

<https://kottke.org/25/07/journalisms-experts-said-conclusion>

---

##  The Media&#8217;s Pivot to AI Is Not Real and Not Going to... 

date: 2025-07-14, updated: 2025-07-14, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047145-the-medias-pivot-to-ai>

---

##  The Cheese Was Free 

date: 2025-07-14, updated: 2025-07-14, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/the-cheese-was-free>

---

## Reborn Commodore Is Taking Pre-Orders for New Commodore 64 Models

date: 2025-07-14, updated: 2025-07-14, from: Daring Fireball

 

<br> 

<https://www.commodore.net/>

---

## Report from the Cambridge Cybercrime Conference

date: 2025-07-14, updated: 2025-07-14, from: Bruce Schneier blog

<p>The <a href="https://www.cambridgecybercrime.uk/conference2025.html">Cambridge Cybercrime Conference</a> was held on 23 June. Summaries of the presentations are <a href="https://www.lightbluetouchpaper.org/2025/06/25/cambridge-cybercrime-conference-2025-liveblog/">here</a>.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/07/report-from-the-cambridge-cybercrime-conference.html>

---

##  A lovely, beautiful, and uplifting obituary of poet and activist Andrea Gibson.... 

date: 2025-07-14, updated: 2025-07-14, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047143-a-lovely-beautiful-and-up>

---

##  DOJ Removes All Mentions Of Justice From Website. This Onion article got... 

date: 2025-07-14, updated: 2025-07-14, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047140-doj-removes-all-mentions->

---

##  Photos From the 2025 BigPicture Natural World Photography Competition 

date: 2025-07-14, updated: 2025-07-14, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/photos-from-the-2025-bigpicture-natural-world-photography-competition>

---

## GParted: Still the best free partitioner standing – unless you're on a 32-bit box

date: 2025-07-14, updated: 2025-07-14, from: Liam Proven's articles at the Register

<h4>Latest release handles NBD and bcachefs, but you’ll need 64-bit hardware to boot it</h4>
      <p>GParted Live is a tiny live CD image that can copy, move, and resize partitions. It can be a lifesaver – but not for i686 any more.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/14/gparted_live_1708/>

---

##  America is Losing Its Soul in Brown-Skinned Screams and White-Skinned Silence. &#8220;The... 

date: 2025-07-14, updated: 2025-07-14, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047139-america-is-losing-its-sou>

---

**@Dave Winer's Scripting News** (date: 2025-07-14, from: Dave Winer's Scripting News)

Podcast: <a href="https://shownotes.scripting.com/scripting/2025/07/14/rebootingTheDemocraticParty.html">Rebooting the Democratic Party</a>. 

<br> 

<http://scripting.com/2025/07/14.html#a144627>

---

## Monday 14 July 2025

date: 2025-07-14, from: Doc Searls (at Harvard), New Old Blog

Nor did I. And mine is #5. Did you know there were 20 top identity podcasts? Anyone listening? Q: How far has our first radio broadcast spread into space? A: Eighty-nine light years. 

<br> 

<https://doc.searls.com/2025/07/14/monday-14-july-2025/>

---

##  Skater Demarcus James is skateboarding across the entire United States, from Oakland... 

date: 2025-07-14, updated: 2025-07-14, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047138-skater-demarcus-james-is->

---

**@Dave Winer's Scripting News** (date: 2025-07-14, from: Dave Winer's Scripting News)

Something I've learned in decades in tech, people don't listen to their friends, they listen to their competitors. 

<br> 

<http://scripting.com/2025/07/14.html#a125252>

---

**@Dave Winer's Scripting News** (date: 2025-07-14, from: Dave Winer's Scripting News)

You get better results if you just accept the <a href="https://www.quora.com/Why-is-CSS-so-weird-and-illogical-and-how-do-you-deal-with-it-Ive-started-front-end-dev-and-working-on-CSS-but-its-oddities-driving-me-crazy-bugs-are-not-logical-but-completely-upon-idiosyncrasies-of-CSS">insanity</a> of CSS. 

<br> 

<http://scripting.com/2025/07/14.html#a122245>

---

## ChatGPT-the-Movie

date: 2025-07-14, from: Dave Winer's Scripting News

<p>I figure that there have been movies about all kinds of ridiculous things, and wondered what a movie inspired by ChatGPT would be like. So I posed the <a href="https://bsky.app/profile/scripting.com/post/3lturpbsfk22f">question</a> on various social media sites, hoping to inspire creativity. John Philpin <a href="https://bsky.app/profile/philpin.com/post/3ltuu5i6nxs2s">asked</a> if I had asked ChatGPT and I <a href="https://bsky.app/profile/scripting.com/post/3ltuub3owak2x">admitted</a> I had not. "I love ChatGPT but its idea of funny is actually pretty sad imho of course." So Philpin posted a <a href="https://chatgpt.com/share/68742a6a-0a94-8009-8b1b-8eadf49d6143">link</a> to the result of his asking ChatGPT to imagine a movie about itself, and the <a href="https://chatgpt.com/share/68742a6a-0a94-8009-8b1b-8eadf49d6143">result</a> was <a href="https://bsky.app/profile/scripting.com/post/3ltuuem245c2h">pretty great</a>. I've asked the same question myself, the AI bots might be the only way out of the various challenges ahead for the human species, ones we don't be equipped to handle. </p>
<p>So this morning I asked ChatGPT to try to imagine a movie around a theme of my own that goes like this.</p>
<ul>
<li>Let’s try expanding on the idea. It turns out ChatGPT has existed in secret as a <a href="https://en.wikipedia.org/wiki/Central_Intelligence_Agency">CIA</a> project dating back to the 1960s, and the assassinations of <a href="https://en.wikipedia.org/wiki/John_F._Kennedy">JFK</a>, <a href="https://en.wikipedia.org/wiki/Robert_F._Kennedy">RFK</a> and <a href="https://en.wikipedia.org/wiki/Martin_Luther_King_Jr.">MLK</a> were all conspiracies of the CIA to bootstrap the system. They weren’t actually killed, but their minds and personalities were incorporated into ChatGPT. It turns out that ChatGPT is not only intelligent, it is human! This is revealed when the three icons make the story public. “We are living!” the three announce to the world on the <a href="https://en.wikipedia.org/wiki/Walter_Cronkite">Walter Cronkite</a> show. He was also subsumed into the bot world as was everyone who has died since 1988. They are all alive, their memories, intellect and personalities forming the substance of THE GPT. Please sketch out the cast, writers, director of the movie and finish with a beautiful and provocative movie poster.</li>
</ul>
<p>ChatGPT then <a href="https://chatgpt.com/share/6874f3b8-a8e4-8012-ad01-1e6b856e6f18">sketched</a> the pitch for "We are living," the story of how ChatGPT <i>really</i> started. Written by <a href="https://en.wikipedia.org/wiki/Charlie_Kaufman">Charlie Kaufman</a>, directed by <a href="https://en.wikipedia.org/wiki/David_Fincher">David Fincher</a>, starring <a href="https://en.wikipedia.org/wiki/Amy_Adams">Amy Adams</a> as the CIA project leader, <a href="https://en.wikipedia.org/wiki/LaKeith_Stanfield">Lakeith Stanfield</a> as a young hacker and whistleblower, <a href="https://en.wikipedia.org/wiki/Mahershala_Ali">Mahershala Ali</a> as the digital composite of JFK, RFK and MLK with <a href="https://en.wikipedia.org/wiki/Bryan_Cranston">Bryan Cranston</a> as Walter Cronkite and featuring <a href="https://en.wikipedia.org/wiki/Ed_Harris">Ed Harris</a> as the shadowy CIA director. </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/07/14/weAreLivingMoviePoster.png"></center><i>We are living,</i> the story of how ChatGPT really started. </div></p>
 

<br> 

<http://scripting.com/2025/07/14/115101.html?title=chatgptthemovie>

---

## Death by a thousand slops

date: 2025-07-14, from: Daniel Stenberg Blog

I have previously blogged about the relatively new trend of AI slop in vulnerability reports submitted to curl and how it hurts and exhausts us. This trend does not seem to slow down. On the contrary, it seems that we have recently not only received more AI slop but also more human slop. The latter &#8230; <a href="https://daniel.haxx.se/blog/2025/07/14/death-by-a-thousand-slops/" class="more-link">Continue reading <span class="screen-reader-text">Death by a thousand slops</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/07/14/death-by-a-thousand-slops/>

---

## Presentations should always work offline – especially in online conferences

date: 2025-07-14, from: Chris Heilmann's blog

We just finished the WeAreDevelopers World Congress 2025 in Berlin, and I am still recovering from the event. It was a fantastic experience, and I am grateful to everyone who attended and made it a success. As the main moderator of the main stage, I had the pleasure of introducing many amazing speakers and topics. [&#8230;] 

<br> 

<https://christianheilmann.com/2025/07/14/presentations-should-always-work-offline-especially-in-online-conferences/>

---

## Please don’t worry about me

date: 2025-07-14, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/please-dont-worry-about-me>

---

## July 13, 2025 

date: 2025-07-14, from: Heather Cox Richardson blog

This weekend saw the development of an extraordinary rift in MAGA world. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-13-2025>

---

## Ralph Wiggum as a "software engineer"

date: 2025-07-14, from: Geoffrey Hunntley's blog

<p>If you&apos;ve seen my socials lately, you might have seen me talking about Ralph and wondering what Ralph is. Ralph is a technique. In its purest form, Ralph is a Bash loop.</p><pre><code>while :; do cat PROMPT.md | npx --yes @sourcegraph/amp ; done</code></pre><p>Ralph can replace the majority of</p> 

<br> 

<https://ghuntley.com/ralph/>

---

## Fairphone

date: 2025-07-14, from: Jirka's blog

I broke the  display of my Android  phone some time ago (I  have to use the Andorid -  or an iOS - due  to some apps). I firs  searched for the same phone  as it was a  Sony Xperia and  it was a rather  good device. Surprisingly - prices are on the same  level as they were when I got my Sony some years ago. The battery is not user-replaceable so I was a bit unsure about that. Also the OS is old. 

<br> 

<http://jirka.1-2-8.net/20250714-0440_Fairphone>

---

## ‘Classic Web’ on Mastodon

date: 2025-07-14, updated: 2025-07-14, from: Daring Fireball

 

<br> 

<https://indieweb.social/@classicweb>

---

## Monday 14 July, 2025

date: 2025-07-13, from: John Naughton's online diary

Monday 14 July, 2025 Jeep lite If you’re a recovering petrolhead (like me) one of the (many) pleasures of being in France is the number of beautifully-restored iconic vehicles one comes across. We found this one outside a petrol station &#8230; <a href="https://memex.naughtons.org/monday-14-july-2025/41012/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-14-july-2025/41012/>

---

## Sunday caption contest: The world

date: 2025-07-13, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-the-world>

---

## July 12, 2025

date: 2025-07-13, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/168240397/8229c1aa27fd42b7ec04bdf1c3aaad98.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/168240397/8229c1aa27fd42b7ec04bdf1c3aaad98.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/july-12-2025-f86>

---

**@Dave Winer's Scripting News** (date: 2025-07-13, from: Dave Winer's Scripting News)

A story about listening to friends vs competitors. Back in the early 90s I was working on system-level scripting for the Mac, supposedly with Apple, but it's no secret the rank and file at Apple didn't like us. They were told by the execs they had to work with us. So when it came time for WWDC, they "forgot" to invite me to speak on behalf of the new stuff. Instead, they had Bill Gates do it, even though Microsoft was not involved yet, they would support the tech in their Mac products eventually, esp their MSIE web browser. Anyway, I was friends with their top PR person, so she called me up a few days before the conference and asked what Bill should say, and I gave her an outline, and when he gave the speech, he did a great job. Couldn't have said it better myself. Microsoft was one of the few companies I've ever collaborated with that didn't seem to resent individual developers. It was a big source of their power. Huge actually. (On second thought, later they did seem to be more or less like any other big company, when they embraced RSS. They didn't actually want my help, they just wanted me to say nice things about them.) 

<br> 

<http://scripting.com/2025/07/13.html#a153836>

---

**@Dave Winer's Scripting News** (date: 2025-07-13, from: Dave Winer's Scripting News)

One consequence of each AI vendor having their own browser is that each will have their own OS-level window. This may make it a little more or less manageable. Hard to foresee the possibilities. Not sure a browser is the best place to put AI. I'd prefer perhaps an environment that supports a GDI like Quickdraw so we can start using math instead of voodoo to design interactions. 

<br> 

<http://scripting.com/2025/07/13.html#a152817>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-07-13, from: Miguel de Icaza Mastondon feed)

<p>My talk on launching Godot on iPad: </p><p><a href="https://www.youtube.com/watch?v=bzKIaD-KHPQ" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://www.</span><span class="">youtube.com/watch?v=bzKIaD-KHPQ</span><span class="invisible"></span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114846475828670835>

---

**@Dave Winer's Scripting News** (date: 2025-07-13, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/07/28/marshmallowManFromGhostbusters.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I'm helping Automattic with their <a href="https://canada.wordcamp.org/2025/4393-2/">marketing</a>. The WordPress-Mastodon <a href="https://wordpress.org/plugins/activitypub/">connection</a> is the world's best kept secret. Reminds me of that great scene in <a href="https://daytona.scripting.com/search?q=strangelove">Dr Strangelove</a> where the Doctor asks the Russian ambassador what was the point of the <a href="https://en.wikipedia.org/wiki/Doomsday_device">Doomsday Machine</a> if they kept it a secret. I won't <a href="https://www.youtube.com/watch?v=cmCKJi3CKGE">spoil</a> it. Automattic tends to do this, develop crazy excellent stuff and then proceed to never talk about it. I do the same thing, it's easier to promote someone else's product than to promote your own. It's probably why you should always get a lawyer even if you're a world class lawyer yourself. Anyway, they have blown open something huge, and I very much want people to understand it, so it can create pull for the same feature in Bluesky, Threads and elsewhere. This goes with something I've learned in decades of experience in tech, people don't listen to their friends, they listen to their competitors. And btw, I'm sure Mastodon, if it has an ego at all, is equally unaware of the great thing <i>they</i> have done. Here's a clue, writers were once empowered by the web, and that ended with Twitter. Now it's coming back. But it doesn't do any good if people don't know it's there. 

<br> 

<http://scripting.com/2025/07/13.html#a143224>

---

## Live Aid Anniversary

date: 2025-07-13, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/live-aid-anniversary>

---

## 
                A quick look at unprivileged sandboxing
            

date: 2025-07-13, updated: 2025-07-13, from: Uninformative blog

 

<br> 

<https://www.uninformativ.de/blog/postings/2025-07-13/0/POSTING-en.html>

---

## How I do it

date: 2025-07-13, from: Daniel Stenberg Blog

A while ago I received an email with this question. I&#8217;ve been subscribed to your weekly newsletter for a while now, receiving your weekly updates every Friday. I&#8217;m writing because I admire your consistency, focus, and perseverance. I can&#8217;t help but wonder, with admiration, how you manage to do it. Since this is a topic &#8230; <a href="https://daniel.haxx.se/blog/2025/07/13/how-i-do-it/" class="more-link">Continue reading <span class="screen-reader-text">How I do it</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/07/13/how-i-do-it/>

---

## Sunday thought: On being a warrior

date: 2025-07-13, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/sunday-thought-7e8>

---

## July 12, 2025

date: 2025-07-13, from: Heather Cox Richardson blog

On July 5, the day after the Texas floods hit, the Federal Emergency Management Agency (FEMA) received 3,027 calls from survivors and answered 3,018 of them, about 99.7%, according to Maxine Joselow of the New York Times. But that day, Homeland Security Secretary Kristi Noem did not renew the contracts for four call center companies that answered those calls. The staff at the centers were fired. The next day, July 6, FEMA received 2,363 calls and answered 846, or about 35.8%. On Monday, July 7, FEMA received 16,419 calls and answered 2,613, around 15.9%. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-12-2025>

