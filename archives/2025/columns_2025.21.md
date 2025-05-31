---
title: columns
updated: 2025-05-31 14:08:05
---

# columns

(date: 2025-05-31 14:08:05)

---

**@Miguel de Icaza Mastondon feed** (date: 2025-05-30, from: Miguel de Icaza Mastondon feed)

<p>My integrated chat window in Xogot is looking nicer, copied a few Claude UI elements:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114599145334005811>

---

## 2025-05-27 Alt text on this blog

date: 2025-05-30, from: Alex Schroeder's Blog

<h1 id="2025-05-27-alt-text-on-this-blog">2025-05-27 Alt text on this blog</h1>

<p>On the web, the alt text is a description of an image to be shown by browsers when the image cannot be shown – like text browsers or screen readers. So what about alt text on this blog? What about blog posts full of photos, specifically? Like the <a href="Croatia">Croatia</a> posts.</p>

<p>I think that alt text should be unnecessary on my blog because the text should carry the entire message. “Welcome to my <a href="Wall_of_Text">Wall of Text</a>!” 😄</p>

<p>On fedi, I like alt text and I both read and write it. I hate clients that don’t display it. I want to always read it. Therefore, on my blog, the equivalent of alt text should always be readable. But real alt text isn’t shown to me – the browser is showing me the pictures, instead. It makes sense. And on fedi it only works because the applications and front-ends don&rsquo;t just use the alt text attribute for images in HTML – they have an extra user-interface to allow me to read it. Buttons, mouse-over, long-press, whatever it takes.</p>

<p>There are options for this blog, of course. Except I don’t like these options.</p>

<p>I could reuse the alt text as the image title attribute which is shown on mouse-over by default. I don’t like being forced to use mouse and I don’t like duplicating the description.</p>

<p>In Markdown:</p>

<pre><code>![alt text](url &quot;title&quot;)
</code></pre>

<p>I could automatically use the alt text as the title attribute but I still don’t like to use the mouse to read the title attribute and I wouldn’t be able to switch Markdown rendering engines as easily if I hack it. Writing some Javascript to produce extra pop-ups or some other user-interface element would be even worse, and it would need extra clicking or keyboard navigation as a reader. No way.</p>

<p>The last option is the best. Just write the description above the image:</p>

<pre><code>Description

![](url)
</code></pre>

<p>I’ve tried using the title attribute for some of my recent picture-heavy blog posts about Croatia and I’ve been checking the result using Gemini and Gopher, and I’m not happy.</p>

<p>Compare the following two with the <a href="https://alexschroeder.ch/view/2025-05-17-%C5%A1ibenik">web</a> version where I can’t read the alt text. (Screenshots from <a href="https://gmi.skyjake.fi/lagrange/">Lagrange</a> on my phone.)</p>

<p>The <a href="gemini://alexschroeder.ch/2025-05-17-šibenik">Gemini</a> version looks OK with some text paragraphs being links to the images.</p>

<p><img loading="lazy" src="2025-05-27-alt-text-1.jpg" alt="" /></p>

<p>The <a href="gopher://alexschroeder.ch/02025-05-17-šibenik">Gopher</a> version shows the alt texts as weird disjointed text paragraphs that sometimes repeat the preceding paragraph and sometimes don’t.</p>

<p><img loading="lazy" src="2025-05-27-alt-text-2.jpg" alt="" /></p>

<p>I guess I could write longer alt texts until the Gopher version looks good but then the Gemini version looks weird and the web version continues to not show it.</p>

<p>Now check the Gemini and Gopher output for the page you’re reading right now!</p>

<p>The <a href="gopher://alexschroeder.ch/02025-05-27-alt-text">Gopher</a> version is OK. The line-breaks don’t look nice on the phone at the default resolution so ignore that weird line-break. What we can see is that the empty alt text generated an empty paragraph. Something I should fix. 😅 But in general, it looks OK and reads well.</p>

<p><img loading="lazy" src="2025-05-27-alt-text-3.jpg" alt="" /></p>

<p>The <a href="gemini://alexschroeder.ch/2025-05-27-alt-text">Gemini</a> version still looks OK. It also links to the Gopher and Gemini versions, so ignore those extra links. 😅 The browser substitutes the filenames for the missing alt text. That works for me. I&rsquo;m not sure what a screen reader would do. Probably say: &ldquo;Image. 2025-05-27-alt-text-3.jpg&rdquo;? And I&rsquo;m not sure what a person with bad sight would prefer. At this point I&rsquo;d know that I can skip the image since I have already read the description above.</p>

<p><img loading="lazy" src="2025-05-27-alt-text-4.jpg" alt="" /></p>

<p>And here&rsquo;s the same passage a day later, using the text browser <code>lynx</code>. The inline links look good, and there&rsquo;s no trace of the screenshots. This is great! It&rsquo;s as readable as the Gopher version with no extra line-breaks, and the inline links are inline (unlike in the Gemini version).</p>

<p><img loading="lazy" src="2025-05-27-alt-text-5.jpg" alt="" /></p>

<p>Checking with <code>edbrowse</code>. The inline links are wrapped in bracers, which looks good, and the images with no alt text are shown as empty square brackets (<code>[]</code>) which works for me. Ideally, I guess, they&rsquo;d just disappear.</p>

<p><img loading="lazy" src="2025-05-27-alt-text-6.jpg" alt="" /></p>

<p>All in all, I think this solution is better: Instead of alt text, just write more text above each image.</p>

<p>What I’m less sure about is whether this automatically implies that all images are “decorative” and therefore should have an empty alt text (instead of no alt text). It seems to me that the filename being shown is a lot of visual clutter, but that only seems to affect Gemini, not the text browser.</p>

<p>What do you think?</p>

<p><a class="tag" href="/search/?q=%23Web">#Web</a> <a class="tag" href="/search/?q=%23Gemini">#Gemini</a> <a class="tag" href="/search/?q=%23Gopher">#Gopher</a> <a class="tag" href="/search/?q=%23Markdown">#Markdown</a></p>

<p><strong>2025-05-29</strong>. I fixed that minor issue in <a href="https://src.alexschroeder.ch/markdown-gopher.git/">markdown-gopher</a> so that it skips paragraphs containing just images with no alt text. 😄</p>

<p><strong>2025-05-31</strong>. I added a piece of Javascript to copy the alt text to the title attribute if the alt text is set and the title is not. Perhaps that&rsquo;ll motivate me to add more alt text.</p> 

<br> 

<https://alexschroeder.ch/view/2025-05-27-alt-text>

---

## 2025-05-30 Walking along the Limmat

date: 2025-05-30, from: Alex Schroeder's Blog

<h1 id="2025-05-30-walking-along-the-limmat">2025-05-30 Walking along the Limmat</h1>

<p>My lower back hurts and I think it’s better to take long walks than to sit at the computer as I usually do.
So the plan for today is to read the newspaper on the balcony, surrounded by plants; then eat the best baklava in town (<a href="https://www.cafe-konditorei-damaskus.ch/">Damaskus</a>) – well, nearby.
And then I walked back home. About 8km in 2h, that went well. And I took some pictures.</p>

<p>This is where I read the newspaper until it was too hot.</p>

<p><img loading="lazy" src="2025-05-30-limmat-1.jpg" alt="two chairs on a balcony  surrounded by greenery" /></p>

<p>I met Claudia at the coffee house &amp; pastry shop.</p>

<p><img loading="lazy" src="2025-05-30-limmat-2.jpg" alt="a woman smiling at the camera" /></p>

<p>When she met her friend for lunch, I started walking.</p>

<p>I started at the Dietikon train stration.
Look at the <em>Salvia pratensis</em> growing on the gravel.
And the fast train rushing through.</p>

<p><img loading="lazy" src="2025-05-30-limmat-3.jpg" alt="several train tracks, two platforms and some forlorn flowers in the foreground and something looking like a bullet train in the background" /></p>

<p>I wanted to take the track between railway and river so I had to pass beneath the train tracks.</p>

<p><img loading="lazy" src="2025-05-30-limmat-4.jpg" alt="an underground passage with walls of concrete (brutalism!) and elevators leading up the the platforms, stairs with daylight in the distance" /></p>

<p>On the other side, I saw a swan with four chicks.
The water carries a kind of white foam.
I suspect that this is the cotton-like seeds of <em>Populus nigra</em>.</p>

<p>The river here is the Limmat and so following it upstream leads me into Zürich and we live right at the beginning so we&rsquo;ll just get into the outskirts of town.</p>

<p><img loading="lazy" src="2025-05-30-limmat-5.jpg" alt="a river with reeds and trees on the farside and swans and ducks in the foreground" /></p>

<p>The track is free of cars but there are bicycles and people on foot and every few minutes a train rushes by.
This train with the more rounded snout is the slower urban train.</p>

<p><img loading="lazy" src="2025-05-30-limmat-6.jpg" alt="a small road between river and train tracks, with a bicycle coming towards me and a train rushing past" /></p>

<p>As I looked over across the river i saw a lone man punting upriver.
It looked like hard work because the water levels are high and the water runs fast.
It must have rained somewhere in the mountains.</p>

<p><img loading="lazy" src="2025-05-30-limmat-7.jpg" alt="a man standing in a long boat, pushing it upstream with a pole" /></p>

<p>At one point the track was blocked.
They were digging it up so they could fix the sewage system or something.
Too bad, because that was a shady segment!
I had to take the detour without trees protecting me from the sun, unfortunately.</p>

<p><img loading="lazy" src="2025-05-30-limmat-8.jpg" alt="a fence blocking the track and huge pipes visible; the trees to either side look cool and shady!!" /></p>

<p>I reached the next train station. I still can&rsquo;t walk next to the river.
I&rsquo;m separated from the cool water by a patch of grass. My track continues right next to the railway.</p>

<p><img loading="lazy" src="2025-05-30-limmat-9.jpg" alt="Some platforms with two overpasses for cars, giving this area a bit of an oppressive look" /></p>

<p>I know somewhere around here there are the foundations of an old castle. And here it is, hidden between woods and elevated road.</p>

<p><img loading="lazy" src="2025-05-30-limmat-10.jpg" alt="a stone rectangle; the walls are about half a metre high; behind the elevated road we can see the tops of concrete skyscrapers (more brutalism!)" /></p>

<p>At last I make it back to the river.
Occasionally, bridges pass both over my track and over the river.</p>

<p>I hate cars.</p>

<p><img loading="lazy" src="2025-05-30-limmat-11.jpg" alt="a metal construction crosses the river and cars are faintly visible on it" /></p>

<p>Here is one of the many benches.
Too bad somebody ate a chocolate bar and decided to leave their packaging on the bench. Boo!</p>

<p><img loading="lazy" src="2025-05-30-limmat-12.jpg" alt="a bench facing the river and on the far side there&rsquo;s grass and woods and a single person that looks like a hiker" /></p>

<p>On the far side, there&rsquo;s <a href="https://en.wikipedia.org/wiki/Fahr_Convent">a former convent</a>.
I was surprised to learn from the Wikipedia page that the convent still exists!
It belonged to Einsiedeln Abbey in the canton of Schwyz but it was located in the canton of Aargau.
It was closed 1530–1576 due to the Reformation in Zürich.
In 1841, the canton of Aargau closed all monasteries within its territories but convents were allowed to reopen in 1843.</p>

<p>On many afternoons, there&rsquo;s a small ferry that carries people across the river for free.
On this picture you can see the small boat and the cable it is tied to.</p>

<p><img loading="lazy" src="2025-05-30-limmat-13.jpg" alt="a cable is tied to the far side and a boat is tied to it; on this side there&rsquo;s a small pier consisting of two wooden planks pointing towards it " /></p>

<p>If you look towards the Alps, the mountains seem huge. Huge! But on a phone camera, they are minuscule.
Zooming-by-cropping doesn&rsquo;t work that well, unfortunately.</p>

<p><img loading="lazy" src="2025-05-30-limmat-14.jpg" alt="trees at the horizon and behind that, a wall of rock and ice, or so it seems" /></p>

<p>When the weather is hot, people like to drift down river from Zürich towards Dietikon on inflatable boats, rings and matresses.
This is the first hot summer day with temperatures reaching nearly 30°C and this is how it starts…</p>

<p><img loading="lazy" src="2025-05-30-limmat-15.jpg" alt="the river with a single inflatable boat on it; there are three half-naked men aboard" /></p>

<p>A field of <em>Brassica napus</em>…</p>

<p><img loading="lazy" src="2025-05-30-limmat-16.jpg" alt="a field of yellow below and a blue sky above, separated by a thin line of buildings; it looks a bit like the flag of Ukraine" /></p>

<p>As I approached Altstetten, I had to cross back over the railway.
Once again, a train rushes past.
Metal worms, racing across the land.
The sheer weight and their amazing speed keeps awing me.</p>

<p><img loading="lazy" src="2025-05-30-limmat-17.jpg" alt="looking down on at least five tracks and a fast train on one of them" /></p>

<p><a class="tag" href="/search/?q=%23Pictures">#Pictures</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-05-30-limmat>

---

##  David Lynch&#8217;s estate auction, including cameras, clothes, books, memorabilia, megaphones, scripts, vinyl,... 

date: 2025-05-30, updated: 2025-05-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046962-david-lynchs-estate-aucti>

---

## 2025-05-29 Fighting against the news

date: 2025-05-30, from: Alex Schroeder's Blog

<h1 id="2025-05-29-fighting-against-the-news">2025-05-29 Fighting against the news</h1>

<p>The news is dragging me down. Israel and the genocide in Palestine; the invasion of Russia into Ukraine; the government in Germany; the government in the USA … ugh!</p>

<p>The world is so terrible that I&rsquo;m lacking words now that I&rsquo;m back from the holidays and have more time to read it. Somehow I also feel that it&rsquo;s not OK to just post about random stuff at a place where I see too much stuff that&rsquo;s upsetting me. I can&rsquo;t counteract the terror of reading about the state of the world by posting about the flowers I see when I go for a walk. Instead, I&rsquo;d better go for another walk, I think.</p>

<p><a class="account" href="https://chaos.social/@frauxirah" title="@frauxirah@chaos.social">@frauxirah</a> <a class="account" href="https://masto.hackers.town/@randomgeek" title="@randomgeek@masto.hackers.town">@randomgeek</a> and <a class="account" href="https://social.tchncs.de/@babelcarp" title="@babelcarp@social.tchncs.de">@babelcarp</a> reminded me that there is an important part about going for walks and maybe taking pictures of flowers, though: to bring back joy. So I brought back some pictures. And then I spent some time with music instruments, making a drum pattern, adding some stuff. It’s not great but it drove away the sadness.</p>

<p>So here’s to life. 😄</p>

<p>Maybe next time I should take pictures of my surroundings, too.</p>

<p>Balkan-Storchschnabel<br>
Geranium macrorrhizum</p>

<p><img loading="lazy" src="2025-05-29-flowers-1.jpg" alt="" /></p>

<p>Luzerne<br>
Medicago sativa</p>

<p><img loading="lazy" src="2025-05-29-flowers-2.jpg" alt="" /></p>

<p>Kartäuser-Nelke (Artengruppe)<br>
Dianthus carthusianorum agg.</p>

<p><img loading="lazy" src="2025-05-29-flowers-3.jpg" alt="" /></p>

<p>Mausohr-Habichtskräuter<br>
Pilosella</p>

<p><img loading="lazy" src="2025-05-29-flowers-4.jpg" alt="" /></p>

<p>Borretsch<br>
Borago officinalis</p>

<p><img loading="lazy" src="2025-05-29-flowers-5.jpg" alt="" /></p>

<p>Gewöhnlicher Beinwell (Artengruppe)<br>
Symphytum officinale agg.</p>

<p><img loading="lazy" src="2025-05-29-flowers-6.jpg" alt="" /></p>

<p>Wiesen-Margerite (Artengruppe)<br>
Leucanthemum vulgare agg.</p>

<p><img loading="lazy" src="2025-05-29-flowers-7.jpg" alt="" /></p>

<p>Fuchsschwanz-Klee<br>
Trifolium rubens</p>

<p><img loading="lazy" src="2025-05-29-flowers-8.jpg" alt="" /></p>

<p>Rote Johannisbeere<br>
Ribes rubrum agg.</p>

<p><img loading="lazy" src="2025-05-29-flowers-9.jpg" alt="" /></p>

<p>Flora Incognita could not quite determine the exact species.</p>

<p>Besen-Felsenbirne<br>
Amelanchier humilis</p>

<p><img loading="lazy" src="2025-05-29-flowers-10.jpg" alt="" /></p>

<p>Himbeere<br>
Rubus idaeus</p>

<p><img loading="lazy" src="2025-05-29-flowers-11.jpg" alt="" /></p>

<p>Blüten-Hartriegel<br>
Cornus florida</p>

<p><img loading="lazy" src="2025-05-29-flowers-12.jpg" alt="" /></p>

<p>Punktierter Gilbweiderich<br>
Lysimachia punctata</p>

<p><img loading="lazy" src="2025-05-29-flowers-13.jpg" alt="" /></p>

<p>Plant identification by Flora Incognita.</p>

<p><a class="tag" href="/search/?q=%23Pictures">#Pictures</a> <a class="tag" href="/search/?q=%23Plants">#Plants</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-05-29-flowers>

---

**@Dave Winer's Scripting News** (date: 2025-05-30, from: Dave Winer's Scripting News)

Podcast: <a href="https://shownotes.scripting.com/scripting/2025/05/30/theKnicksWonGame5.html">The Knicks won game 5</a>. 

<br> 

<http://scripting.com/2025/05/30.html#a210542>

---

**@Dave Winer's Scripting News** (date: 2025-05-30, from: Dave Winer's Scripting News)

Thinking of splurging on <a href="https://www.stubhub.com/new-york-knicks-new-york-tickets-6-2-2025/event/157266978/?quantity=2">tickets for Game 7</a> at the <a href="https://en.wikipedia.org/wiki/Madison_Square_Garden">Garden</a> on Monday. I've been following the prices during the playoffs, never seen them this high. Courtside seats go for <a href="https://www.stubhub.com/new-york-knicks-new-york-tickets-6-2-2025/event/157266978/?quantity=2&sections=1717540&ticketClasses=17400&rows=2161980&seats=&seatTypes=&listingQty=">$27K</a> each. BTW, there's no guarantee there will be a Game 7, first the Knicks have to win tomorrow in Indiana. 

<br> 

<http://scripting.com/2025/05/30.html#a203249>

---

##  Beautiful Drone Footage of an Alaskan Salmon Migration 

date: 2025-05-30, updated: 2025-05-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/beautiful-drone-footage-of-an-alaskan-salmon-migration-1>

---

## Ghost in the Shell

date: 2025-05-30, from: mrusme blog

Beginning a new chapter in my terminal workflow by replacing _Alacritty_ with
_Ghostty_. 

<br> 

<https://xn--gckvb8fzb.com/ghost-in-the-shell/>

---

##  I like this song (Lifelike&#8217;s So Electric) and I like this video... 

date: 2025-05-30, updated: 2025-05-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046878-i-like-this-song-lifelike>

---

##  Two interesting things about the rock paper scissors game: 1. scissors were... 

date: 2025-05-30, updated: 2025-05-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046789-two-interesting-things-ab>

---

##  A supercut of every point scored by Kobe Bryant in his 81-point... 

date: 2025-05-30, updated: 2025-05-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046071-a-supercut-of-every-point>

---

##  The Wes Anderson Archive: Ten Films, Twenty-Five Years 

date: 2025-05-30, updated: 2025-05-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/the-wes-anderson-archive-ten-films-twenty-five-years>

---

##  The actor Patrick Stewart exists in the Star Trek universe and &#8220;Jean-Luc... 

date: 2025-05-30, updated: 2025-05-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046949-the-actor-patrick-stewart>

---

**@Dave Winer's Scripting News** (date: 2025-05-30, from: Dave Winer's Scripting News)

A somewhat obscure <a href="https://github.com/scripting/Scripting-News/issues/320">question</a> about how feed readers should handle content:encoded elements in WordPress feeds. 

<br> 

<http://scripting.com/2025/05/30.html#a153943>

---

##  28 slightly rude notes on writing. &#8220;Most writing is bad because it&#8217;s... 

date: 2025-05-30, updated: 2025-05-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046942-28-slightly-rude-notes-on>

---

##  Grammar movies: Apostrophes Now, Rebel Without a Clause, Gerund Brockovich, Alien vs... 

date: 2025-05-30, updated: 2025-05-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046939-grammar-movies-apostrophe>

---

## A limited-time flavor: Blue Raspberry Pi

date: 2025-05-30, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">A limited-time flavor: Blue Raspberry Pi</span>

            <p></p>

<p>The most unique Raspberry Pi I own is a limited-time flavor: <em>blue raspberry</em>. And no, this isn't the <a href="https://www.raspberrypi.com/news/raspberry-pi-brazil/">Brazilian version</a>, or the <a href="https://www.raspberrypi.com/news/red-pi-at-night/">red Chinese version</a>. This blue version is <a href="https://www.raspberrypi.com/news/blue-pi/">one of 1000</a> blue Pis that were made to celebrate Raspberry Pi's first anniversary, 12 years ago.</p>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden">May 30, 2025
</span>
 

<br> 

<https://www.jeffgeerling.com/blog/2025/limited-time-flavor-blue-raspberry-pi>

---

##  &#8220;All three of the country&#8217;s largest carriers (American Airlines, United Airlines, and... 

date: 2025-05-30, updated: 2025-05-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046960-all-three-of-the-countrys>

---

## Why Take9 Won’t Improve Cybersecurity

date: 2025-05-30, updated: 2025-05-29, from: Bruce Schneier blog

<p>There&#8217;s a new cybersecurity awareness campaign: Take9. The idea is that people&#8212;you, me, everyone&#8212;should just pause for nine seconds and think more about the link they are planning to click on, the file they are planning to download, or whatever it is they are planning to share.</p>
<p>There&#8217;s a <a href="https://pausetake9.org/">website</a>&#8212;of course&#8212;and a <a href="https://www.youtube.com/watch?v=GlmplblxsGM">video</a>, well-produced and scary. But the campaign won&#8217;t do much to improve cybersecurity. The advice isn&#8217;t reasonable, it won&#8217;t make either individuals or nations appreciably safer, and it deflects blame from the real causes of our cyberspace insecurities...</p> 

<br> 

<https://www.schneier.com/blog/archives/2025/05/why-take9-wont-improve-cybersecurity.html>

---

## The Tragic History of Neoliberalism

date: 2025-05-30, from: Robert Reich's blog

Don&#8217;t buy revisionist attempts to rehabilitate it. Instead, push for a bold progressive populism. 

<br> 

<https://robertreich.substack.com/p/the-tragic-history-of-neoliberalism>

---

## May 29, 2025

date: 2025-05-30, from: Heather Cox Richardson blog

I&#8217;m home tonight, after a long time away, and am just too tired to make sense of today&#8217;s news. 

<br> 

<https://heathercoxrichardson.substack.com/p/may-29-2025>

---

## The Talk Show Live From WWDC 2025: Tuesday June 10

date: 2025-05-30, updated: 2025-05-30, from: Daring Fireball

 

<br> 

<https://ti.to/daringfireball/the-talk-show-live-from-wwdc-2025>

---

## The Talk Show: ‘Sewing Machine Repair Shop’

date: 2025-05-30, updated: 2025-05-30, from: Daring Fireball

 

<br> 

<https://daringfireball.net/thetalkshow/2025/05/29/ep-423>

---

## The Fifth Estate

date: 2025-05-30, from: Dave Rupert blog

<p><a href="https://amzn.to/42NSD5n">Careless People</a> is a tell-all book that walks through Facebook’s rampant (and criminally?) inept responses to it’s growing role in global policy, from <a href="https://erinkissane.com/meta-in-myanmar-part-i-the-setup">it’s role in the Rohingya genocide in Myanmar</a> to the election of Donald J. Trump. The book, written by Facebook’s former director of foreign policy Sarah Wynn-Williams, explains that Zuckerberg initially denied the notion that Facebook could ever impact an election but over time starts to see Facebook and social media as a powerful “Digital Fifth Estate”.</p>
<p>The three-estate system used to refer to the Clergy, the Nobles, and the Commoners. In modern times, the three-estate system describes the legislative, executive, and judicial branches of government. Then there’s the newly minted (<em>ahem</em>, circa <a href="https://en.wikipedia.org/wiki/Fourth_Estate">1840</a>) Fourth Estate comprised of good ol’ fashioned journalism and newspapers. The Fourth Estate applies pressure on the other estates through shining a spotlight on important or unaddressed issues. Another form of checks and balances. I would lump academia into the Fourth Estate as well. And so does Wikipedia. So. I’m right because an online wiki said so.</p>
<p>Speaking of online wikis, what does a “Digital Fifth Estate” look like?</p>
<blockquote>
<p>A <a href="https://en.wikipedia.org/wiki/Fifth_Estate">Fifth Estate</a>, while not recognized in the same way as the first four, includes bloggers, social media influencers, and other online platforms that can influence public discourse and politics independently of traditional media.</p>
</blockquote>
<p>I’ve read about the influence of the “man-o-sphere” and MSNBC is tying itself in knots trying to find “the Joe Rogan of the Left” and I can’t help but roll my eyes. No doubt the Left needs to consider issues facing men more, but the Zune had better luck with a product clone. With the framing of the Fifth Estate though, I understand the desire better. <a href="https://news.gallup.com/poll/651977/americans-trust-media-remains-trend-low.aspx">Most people have lost trust in the Fourth Estate</a> and the Fifth Estate explains to me why podcasters, YouTube influencers, and newsletter goblins have so much political sway these days (certainly during the last election) and why news organizations and academic scientists don’t anymore.</p>
<p>Estates are for sale. Billionaires also own major portions of the First, Second, and Third Estates through gifts, bribes, and threat of primaries. Billionaires like the Murdochs and Bezos (RIP <em>The Washington Post</em>) and media conglomerates own major portions of the Fourth Estate. “Mainstream media” has become an effective slur, even when there’s no true meaning behind it. And in places where the Fourth Estate isn’t for sale, you slap them with a lawsuit.</p>
<p>We commoners have lost trust in the Estates, like we lost trust in the Clergy and Nobles in the before times. The Fifth Estate is why “flood the zone with shit” is an effective tactic. We’re not making informed decisions based on answers from educated individuals. We’re making decisions based on vibes and standup comics who host pay-per-view fight clubs. We’re eating Tide Pods to get the toxins out. We’re getting our news from a guy in a car with a backwards hat and sunglasses. We ask fancy autocomplete for answers to our personal problems, to do our work, to write our eulogies.</p>
<p>This shift isn’t lost on the wealthy, billionaires like Musk and Zuckerberg own major portions of the Fifth Estate. They also own the AI. They create bots to keep us engaged on their apps. Why? Because our attention powers their products. They’ve captured and commoditized our attention to auction our eyeballs to advertisers. The flip-side of this system forced on us is that we know our attention has value. If you want two good books on the intersection of attention and billionaires, I recommend Chris Hayes’ book <a href="https://amzn.to/3YEqwTD">The Sirens’ Call</a> followed up by his other book <a href="https://amzn.to/4jCvpon">Twilight of the Elites</a>.</p>
<p>The concept of a digital Fifth Estate is profound to me because it appears effective and it’s the one where I have the most choice. My singular vote pales in comparison to the influence of a well-funded Super PAC. I don’t get to choose who owns my local newspaper or the board of the university. I don’t have a legal team to undo Citizens United. But I do get to choose where I give my time and attention.</p>
<p>Where I find hope, if the Fifth Estate is powerful enough to hoodwink our fellow citizens into authoritarianism, then we –you and me– can seize power from the already powerful. We can give power –our attention– to the trustworthy. We can eradicate the “rich ergo good” fallacy. And the cost of “going indie” in the Fifth Estate is lower than it has ever been right now with a sizable exodus to Mastodon and Bluesky. Sure, all your favorite nazis and Russian botnets might be harder to find on the alternatives, but think about it as an investment in a world that isn’t owned by wealthy people already.</p>
<p>I don’t have the capital to start my own Fourth Estate university or newspaper. But I do have this blog. A minor stake in the Fifth Estate. But my blog plus your blog, mix in some RSS and the power of sharing interesting blogs and podcasts… we might make a dent.</p> 

<br> 

<https://daverupert.com/2025/05/the-fifth-estate/>

---

## Friday 30 May, 2025

date: 2025-05-29, from: John Naughton's online diary

Memorial Day Monday was Memorial Day, which is always marked by a moving ceremony at the American Cemetery in Madingley, near Cambridge. The ceremony is about remembering the thousands of soldiers, sailors and airmen who are buried or memorialised here, &#8230; <a href="https://memex.naughtons.org/friday-30-may-2025/40876/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/friday-30-may-2025/40876/>

---

## The Gerontocracy Problem

date: 2025-05-29, from: Robert Reich's blog

A recording from Robert Reich and V Spehar&#8217;s live video 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/164746497/7c6c9b28099a0f9668b50928ca0c459d.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/164746497/7c6c9b28099a0f9668b50928ca0c459d.mp3" target="_blank">download audio/mpeg</a><br> 

<https://robertreich.substack.com/p/the-gerontocracy-problem>

---

## See Ya!

date: 2025-05-29, from: Dan Rather's Steady

And don&#8217;t let the door hit you on your way out 

<br> 

<https://steady.substack.com/p/see-ya>

---

##  ESA&#8217;s Proba-3 is planning on creating an artificial eclipse to study the... 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046950-esas-proba-3-is-planning->

---

##  Caine&#8217;s Arcade 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/caines-arcade-1>

---

## Friday Squid Blogging: NGC 1068 Is the “Squid Galaxy”

date: 2025-05-29, updated: 2025-05-29, from: Bruce Schneier blog

<p>I hadn&#8217;t known that the NGC 1068  galaxy is nicknamed the &#8220;Squid Galaxy.&#8221; It is, and it&#8217;s <a href="https://scitechdaily.com/the-squid-galaxys-black-hole-just-unleashed-a-neutrino-storm-without-the-light/">spewing neutrinos</a> without the usual accompanying gamma rays.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/05/friday-squid-blogging-ngc-1068-is-the-squid-galaxy.html>

---

##  Don&#8217;t mind me, I&#8217;m just watching old episodes of The Great Space... 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046958-dont-mind-me-im-just>

---

##  I Want No One Else to Succeed 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/i-want-no-one-else-to-succeed>

---

## Lael's ride around the globe

date: 2025-05-29, from: Matt Haughey blog

<figure class="kg-card kg-embed-card"><iframe width="200" height="113" src="https://www.youtube.com/embed/foZSVhTyEfQ?feature=oembed" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen title="Lael Rides Around the World | Full Film"></iframe></figure><p>Last year I remember hearing about <a href="https://www.laelwilcox.net/around-the-world?ref=a.wholelottanothing.org" rel="noreferrer">Lael Wilcox&apos;s ride around the world</a> and how she was gunning for the fastest known time for any woman who has ever done it. Every couple weeks I&apos;d check in on her dot as it shifted around the globe and</p> 

<br> 

<https://a.wholelottanothing.org/laels-ride-around-the-globe/>

---

##  The 100 best sports moments of the 21st century (so far). Hmm.... 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046937-the-100-best-sports-momen>

---

##  Re: SpaceX rockets that keep exploding: You Can&#8217;t Make an Omelette Without... 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046953-re-spacex-rockets-that-ke>

---

## 2025-05-19 Split

date: 2025-05-29, from: Alex Schroeder's Blog

<h1 id="2025-05-19-split">2025-05-19 Split</h1>

<p>We drove all the way to Split, visited the old town and what remains of Diocletians palace, had lunch and then we went walking through Marjan forest park. Wonderfully quiet.</p>

<p>On the way to the city center, I spotted a passion flower. So beautiful.
They look like cosmic spaceships or psychedelic temples in miniature.</p>

<p>Blaue Passionsblume<br>
Passiflora caerulea</p>

<p><img loading="lazy" src="2025-05-19-split-1.jpg" alt="a flower with an complex, three-dimensional structure in the middle" /></p>

<p>The marina in front of the old town.
Half the old town is within the perimeter of Diocletian&rsquo;s palace.</p>

<p>The water is dirty and smells bad.</p>

<p><img loading="lazy" src="2025-05-19-split-2.jpg" alt="a marina with small boats and a boulevard with palm trees" /></p>

<p>They turned Diocletian&rsquo;s mausoleum into the cathedral.</p>

<p><img loading="lazy" src="2025-05-19-split-3.jpg" alt="Claudia near the bell tower of the cathedral, with tourists in the back" />
<img loading="lazy" src="2025-05-19-split-4.jpg" alt="looking up a the bell tower" />
<img loading="lazy" src="2025-05-19-split-5.jpg" alt="from a nearby ruin with an open cupola, the bell tower can still be seen" />
<img loading="lazy" src="2025-05-19-split-6.jpg" alt="Split&rsquo;s old town is full of narrow alleys" />
<img loading="lazy" src="2025-05-19-split-7.jpg" alt="there is an open pit where you can see into the cellar ruins of Diocletian&rsquo;s palace" />
<img loading="lazy" src="2025-05-19-split-8.jpg" alt="looking back at the bell tower" /></p>

<p>There are places where you can see two levels of cellars and three or four levels of buildings.
This is how I like my dungeon ruins. 😄</p>

<p><img loading="lazy" src="2025-05-19-split-9.jpg" alt="looking into another pit with access to underground levels" /></p>

<p>What impressed me the most is that people live in the midst of these fantastic ruins.</p>

<p><img loading="lazy" src="2025-05-19-split-10.jpg" alt="extremely narrow alleys" />
<img loading="lazy" src="2025-05-19-split-11.jpg" alt="and suddenly, a private garden" />
<img loading="lazy" src="2025-05-19-split-12.jpg" alt="and ruins, and tourists" /></p>

<p>We went into the cathedral.
It&rsquo;s a small octagonal building because it used to be Diocletions tomb.
I was not impressed.</p>

<p><img loading="lazy" src="2025-05-19-split-13.jpg" alt="looking up at the ceiling" /></p>

<p>Looking back over the corner with the carden (to the left) and the low walls from where one could peek into the cellars.</p>

<p><img loading="lazy" src="2025-05-19-split-14.jpg" alt="a view of Diocletian&rsquo;s palace with tourist milling about" />
<img loading="lazy" src="2025-05-19-split-15.jpg" alt="ruins of walls with niches" />
<img loading="lazy" src="2025-05-19-split-16.jpg" alt="more narrow alleys" /></p>

<p>We had enough after a while, had a small lunch and decided to head into the Marjan forest park.
The stairs up start in the old town.</p>

<p><img loading="lazy" src="2025-05-19-split-17.jpg" alt="Claudia on marble stairs" />
<img loading="lazy" src="2025-05-19-split-18.jpg" alt="looking at Split&rsquo;s old town from the stairs" /></p>

<p>Barbary fig<br>
Opuntia ficus-indica</p>

<p><img loading="lazy" src="2025-05-19-split-19.jpg" alt="a yellow flower on a cactus" /></p>

<p>Stechendes Sternauge<br>
Pallenis spinosa</p>

<p><img loading="lazy" src="2025-05-19-split-20.jpg" alt="yellow flowers and spiny leaves" /></p>

<p>Dry stone walls everywhere. Later there was even an info board talking about dry stone wall building.</p>

<p><img loading="lazy" src="2025-05-19-split-21.jpg" alt="some tall corniferous trees behind a dry stone wall" /></p>

<p>The trail from the end of the stairs to Sedlow is wide, flat, and beautiful.</p>

<p><img loading="lazy" src="2025-05-19-split-22.jpg" alt="Claudia on a nice walkway" /></p>

<p>Johannisbrotbaum<br>
Ceratonia siliqua</p>

<p><img loading="lazy" src="2025-05-19-split-23.jpg" alt="thick, saussage-like beans hanging on a tree" /></p>

<p>The nice walkway turns into a trail.</p>

<p><img loading="lazy" src="2025-05-19-split-24.jpg" alt="a trail along a dry wall with trees off to the side providing no shade" />
<img loading="lazy" src="2025-05-19-split-25.jpg" alt="the trail continues and still the trees provide no shade" /></p>

<p>The trail gets narrower and we start thinking of ticks again.</p>

<p><img loading="lazy" src="2025-05-19-split-26.jpg" alt="a singletrail with grass and bushes growing nearby; some sort of info panel in the distance" /></p>

<p>Damaszener Schwarzkümmel<br>
Nigella damascena</p>

<p><img loading="lazy" src="2025-05-19-split-27.jpg" alt="a blue flower with a complex network of antenna-like protrusions" /></p>

<p>A view of a hidden sandy (?) beach.</p>

<p><img loading="lazy" src="2025-05-19-split-28.jpg" alt="trees in the foreground and the sea in the back" /></p>

<p>We walked back along the coast and looked up. Our trail was somewhere behind this cliff.</p>

<p><img loading="lazy" src="2025-05-19-split-29.jpg" alt="a forested hill and while cliffs at the top" /></p>

<p>In the evening we went for pizza and pasta.</p>

<p><img loading="lazy" src="2025-05-19-split-30.jpg" alt="a marina by night" /></p>

<p><a class="tag" href="/search/?q=%23Croatia">#Croatia</a> <a class="tag" href="/search/?q=%23Pictures">#Pictures</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-05-19-split>

---

## May 28, 2025

date: 2025-05-29, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/164747560/c8017c5342bee6639b10ea7ebe747e20.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/164747560/c8017c5342bee6639b10ea7ebe747e20.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/may-28-2025-07c>

---

## 2025-05-21 The audio stack

date: 2025-05-29, from: Alex Schroeder's Blog

<h1 id="2025-05-21-the-audio-stack">2025-05-21 The audio stack</h1>

<p>Whenever I think about audio on my Debian-based laptops, I feel like I’m just too old for this. I just don’t get it anymore. Then I read a blog post like this one and I shake my head because I guess I’m not too old – the situation truly is miserable!</p>

<blockquote>
<p>Now the audio stack kicks in. Is it PipeWire? PulseAudio? Is ALSA enabled? Is the correct fallback sink selected? Is the audio device owned by root? Is the socket exposed to your session? Who knows. – <a href="https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-love-me-back-post-1-built-for-control-but-not-for-people/">I Want to Love Linux. It Doesn’t Love Me Back: Post 1 – Built for Control, But Not for People</a></p>
</blockquote>

<p>Accessibility matters. The problems blind users encounter are the problems that sighted people like me will encounter later in life. And when the complaints are about complexity, brittleness, lack of testing and lack of backwards compatibility, you know that eventually you’ll get hit.</p>

<blockquote>
<p>A stack implies layers. Order. A single interface at each point. This is not a stack. This is a tangled mess of everything ever built for Linux audio still being required right now because no one can kill anything off without breaking something else. You want to play sound? You need: ALSA, because it’s the actual driver. PipeWire, because it’s the new standard. Pulse emulation, because most apps still use Pulse. ALSA plugins, because some things bypass PipeWire. JACK shims, because a few pro audio tools never moved on. And config files for all of it—if they even exist. This isn’t backwards compatibility.  This is a graveyard, and we’re all just camping in it. – <a href="https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-love-me-back-post-1-built-for-control-but-not-for-people/">I Want to Love Linux. It Doesn’t Love Me Back: Post 1 – Built for Control, But Not for People</a></p>
</blockquote>

<p>I wonder. Isn’t this stack the right thing to do? The new layer with an emulation of the old layer sitting atop the kernel layer, etc? In the long lived stacks in the commercial world, the same thing is true (Windows API, Java API – all continue to offer compatibility layers to deprecated things). From my perspective the main problem is that the mess is necessary but it must also be either strictly encapsulated and controlled or – if composable like in a typical Linux distribution – supported by tools to inspect and control it across all layers. What we have right now is a composable stack where we are free to install and deinstall parts and every layer provides independent inspection and control tools that work differently from each other. And no overview so you don’t know which part is failing.</p>

<p>My audio stacks also mostly work but if the volume is wrong I always wonder: what tool do I need to run (on the command line) to change it. So many mixers! And on every new laptop: do I need Jack? And is PipeWire or PulseAudio the correct one? Or both? The uncertainty is part of my problem.</p>

<p><a class="tag" href="/search/?q=%23Audio">#Audio</a> <a class="tag" href="/search/?q=%23Software">#Software</a> <a class="tag" href="/search/?q=%23Administration">#Administration</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-05-21-audio-stack>

---

## 2025-05-20 Sutivan, Milna, Postira

date: 2025-05-29, from: Alex Schroeder's Blog

<h1 id="2025-05-20-sutivan-milna-postira">2025-05-20 Sutivan, Milna, Postira</h1>

<p>We took the ferry across the channel to Brač.
This is the first time we took a car ferry as adults.</p>

<p><img loading="lazy" src="2025-05-20-postira-1.jpg" alt="cars inside a ferry" /></p>

<p>I always enjoy seeing the birds riding along with a ship.</p>

<p><img loading="lazy" src="2025-05-20-postira-2.jpg" alt="seagulls and the ocean" /></p>

<p>As we had managed to take the earlier ferry we decided to drive around for a bit.
Our first stop was Sutivan.</p>

<p><img loading="lazy" src="2025-05-20-postira-3.jpg" alt="boats in a small marina, old buildings and a church in the back" /></p>

<p>A harbour with a pier extending into the water with a red lamppost at the end.
We’ll get back to it.</p>

<p><img loading="lazy" src="2025-05-20-postira-4.jpg" alt="a harbour bay" /></p>

<p>We walked around town.</p>

<p><img loading="lazy" src="2025-05-20-postira-5.jpg" alt="Alex in a narrow alley" /></p>

<p>We went back to the car.</p>

<p><img loading="lazy" src="2025-05-20-postira-6.jpg" alt="an official looking building with a tiny park in front if it" /></p>

<p>The view into Bobovišća was nice.</p>

<p><img loading="lazy" src="2025-05-20-postira-7.jpg" alt="a tiny fjord with a village" /></p>

<p>The marina of Milna.</p>

<p><img loading="lazy" src="2025-05-20-postira-8.jpg" alt="boats in a small marina, old buildings and a church in the back, again" /></p>

<p>We turned around and drove to our hotel in Postira.</p>

<p><img loading="lazy" src="2025-05-20-postira-9.jpg" alt="Claudia posing in front of a harbour bay" /></p>

<p>Another pier with a red lantern at the end!</p>

<p><img loading="lazy" src="2025-05-20-postira-10.jpg" alt="a pier with a red lantern and some seagulls sitting at the end" /></p>

<p>More walking around.</p>

<p><img loading="lazy" src="2025-05-20-postira-11.jpg" alt="Claudia posing next to a statue" /></p>

<p>And sunset.</p>

<p><img loading="lazy" src="2025-05-20-postira-12.jpg" alt="another marina but instead of a church there is a big hotel reminiscent of a luxury boat" /></p>

<p>I love the large number of swifts and swallows dashing back and forth, here.</p>

<p><a class="tag" href="/search/?q=%23Croatia">#Croatia</a> <a class="tag" href="/search/?q=%23Pictures">#Pictures</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-05-20-postira>

---

## 2025-05-22 Postira

date: 2025-05-29, from: Alex Schroeder's Blog

<h1 id="2025-05-22-postira">2025-05-22 Postira</h1>

<p>We went for a walk along the coast to Lovrečina. All the bars and restaurants were closed but the flowers were in bloom. It’s May! 😍</p>

<p><img loading="lazy" src="2025-05-21-postira-bol-22.jpg" alt="the sky after breakfast was bright" /></p>

<p>We started walking. Both Claudia and I took these pictures.</p>

<p><img loading="lazy" src="2025-05-22-postira-1.jpg" alt="The channel is calm, the sky cloudy" /></p>

<p>Hundert-jährige Agave<br>
Agave americana</p>

<p><img loading="lazy" src="2025-05-22-postira-2.jpg" alt="snails on agaves" /></p>

<p>I keep calling them pines but Flora Incognita tells me we&rsquo;re looking at:</p>

<p>Aleppo-Kiefer<br>
Pinus halepensis</p>

<p><img loading="lazy" src="2025-05-22-postira-3.jpg" alt="pines on the stony coast" /></p>

<p>The edge of town.</p>

<p><img loading="lazy" src="2025-05-22-postira-4.jpg" alt="another bay, a few more houses in the distance" /></p>

<p>And then I started seeing all the flowers.</p>

<p><img loading="lazy" src="2025-05-22-postira-5.jpg" alt="Alex taking pictures with the phone" /></p>

<p>Grosser Kohlweissling<br>
Pieris brassicae</p>

<p><img loading="lazy" src="2025-05-22-postira-6.jpg" alt="a mostly white butterfly" /></p>

<p>So happy.</p>

<p><img loading="lazy" src="2025-05-22-postira-7.jpg" alt="Alex and Claudia with sunglasses" />
<img loading="lazy" src="2025-05-22-postira-8.jpg" alt="another bay with beautiful water" />
<img loading="lazy" src="2025-05-22-postira-9.jpg" alt="looking at a bay across some poppies" />
<img loading="lazy" src="2025-05-22-postira-10.jpg" alt="Alex taking pictures of poppies" />
<img loading="lazy" src="2025-05-22-postira-11.jpg" alt="a lizard beneath the poppies" />
<img loading="lazy" src="2025-05-22-postira-12.jpg" alt="another bay full of beautiful water" /></p>

<p>Schopf-Träubel<br>
Leopoldia comosa</p>

<p><img loading="lazy" src="2025-05-22-postira-13.jpg" alt="a violet flower growing from a crack in the rock" />
<img loading="lazy" src="2025-05-22-postira-14.jpg" alt="Alex standing on a sea wall" />
<img loading="lazy" src="2025-05-22-postira-15.jpg" alt="a tree growing through a hole in the drywall they built for it " />
<img loading="lazy" src="2025-05-22-postira-16.jpg" alt="yet another bay" />
<img loading="lazy" src="2025-05-22-postira-17.jpg" alt="and finally on the way back" /></p>

<p><a class="tag" href="/search/?q=%23Croatia">#Croatia</a> <a class="tag" href="/search/?q=%23Pictures">#Pictures</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-05-22-postira>

---

##  Alexandra Petri has some advice for the 2025 Harvard grad who will... 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046956-alexandra-petri-has-some->

---

## Decomplexification

date: 2025-05-29, from: Daniel Stenberg Blog

(Clearly a much better word than simplification.) I believe we generally accept the truth that we should write simple and easy to read code in order to make it harder to create bugs and cause security problems. The more complicated code we write, the easier it gets to slip up, misunderstand or forget something along &#8230; <a href="https://daniel.haxx.se/blog/2025/05/29/decomplexification/" class="more-link">Continue reading <span class="screen-reader-text">Decomplexification</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/05/29/decomplexification/>

---

##  Shifting Baselines and the New Normal of the Trump Era 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/shifting-baselines-and-the-new-normal-of-the-trump-era>

---

##  Pediatrician Dr. Annie Andrews is running against Lindsey Graham for one of... 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046954-pediatrician-dr-annie-and>

---

## The End of Trump II, Part 1

date: 2025-05-29, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/the-end-of-trump-ii-part-1>

---

## Trump’s Entire Tariff Endeavor Ruled Illegal by U.S. Court of International Trade

date: 2025-05-29, updated: 2025-05-29, from: Daring Fireball

 

<br> 

<https://www.nytimes.com/2025/05/28/business/trump-tariffs-blocked-federal-court.html?unlocked_article_code=1.K08.Dopk.xjccPnSSgb59&smid=url-share>

---

## Findings

date: 2025-05-29, from: Doc Searls (at Harvard), New Old Blog

Here&#39;s how to save what&#39;s left. Newsweek: CVS is closing 277 stores. Wipe House. Nieman Lab: No more transcripts of Trump remarks on the White House website (and the old ones are gone, too). In case you weren&#39;t wondering. Jeffrey Epstein really did kill himself. For the reading list. Olaf Stapleton: Last And First Men. It&#39;s [&#8230;] 

<br> 

<https://doc.searls.com/2025/05/29/findings/>

---

**@Ryan Gantz Bluesky feed** (date: 2025-05-29, from: Ryan Gantz Bluesky feed)

Open letter to Gemini:

I KNOW YOU EXIST. I AM FULLY AWARE YOU ARE AVAILABLE TO TAKE NOTES DURING THIS MEETING. AS THE BUTTON HAVE REPEATEDLY CLICKED SAYS, I "GOT IT". PLEASE GIVE ME SPACE 

<br> 

<https://bsky.app/profile/sixfoot6.com/post/3lqczxwu4222f>

---

## Thunderbird is go: 139 follows closely on Firefox's heels

date: 2025-05-29, updated: 2025-05-29, from: Liam Proven's articles at the Register

<h4>One of the new smaller monthly releases – and how to tweak it</h4>
      <p>Mozilla subsidiary MZLA has released the latest version of its messaging client, with some handy extras.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/05/29/thunderbird_139/>

---

## A test post

date: 2025-05-29, from: Dave Winer's Scripting News

<p><i>I'm working on something that requires an endless stream of test posts. Sometimes when I start writing I end up something that should be published. Should I edit it? Nah.</i></p>
<p>this shit is hard. when it's done it looks simple. but these pieces must fit together. </p>
<p>that's why it's soooo stupid to throw out all the interop, because it's going to take you forever to recreate it, if you ever can, which you probably can't.</p>
<p>this is the lesson that activitypub and atproto are teaching once again. and the people who are dealing with this have probably known it a long time.</p>
<p>it would be so much faster to use something that already works and is widely supported.</p>
<p>this is why we used mp3 in rss to make podcasting. we could have said oh shit i don't understand how mp3 works, so let's create one that does only what podcasting needs. only of course it'll turn out that podcasting needs everything that mp3 already does.</p>
<p>accept a win. don't feel compelled to reinvent everything. you'll find out it wasn't as easy as it looked.</p>
 

<br> 

<http://scripting.com/2025/05/29/151457.html?title=aTestPost>

---

## The $740B Prize

date: 2025-05-29, from: David Rosenthal's blog

Forty-two months ago I wrote <a href="https://blog.dshr.org/2021/11/the-65b-prize.html"><i>The $65B Prize</i></a> citing Divesh Aggarwal <i>et al</i>'s 2019 paper <a href="https://arxiv.org/abs/1710.10377"><i>Quantum attacks on Bitcoin, and how to protect against them</i></a>. They noted that:<br />
<blockquote>
the elliptic curve signature scheme used by Bitcoin is much more at risk, and could be completely broken by a quantum computer as early as 2027, by the most optimistic estimates.
</blockquote>
It is time to re-visit the "optimistic estimates", so follow me below the fold.<br />
<span><a name='more'></a></span>
<br />
NIST has been driving the <a href="https://csrc.nist.gov/csrc/media/Presentations/2023/nist-post-quantum-cryptography-update/2a-Moody_NIST_PQC_2.pdf">standardization of post-quantum cryptography since 2016</a>, and approved algorithms are now available.  Google's Craig Gidney and Sophie Schmieg posted <a href="https://security.googleblog.com/2025/05/tracking-cost-of-quantum-factori.html"><i>Tracking the Cost of Quantum Factoring</i></a>:<br />
<blockquote>
The <a href="https://nvlpubs.nist.gov/nistpubs/ir/2024/NIST.IR.8547.ipd.pdf">initial public draft</a> of the NIST internal report on the transition to post-quantum cryptography standards states that vulnerable systems should be deprecated after 2030 and disallowed after 2035. Our work highlights the importance of adhering to this recommended timeline.
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiwRjfgZSR1dvOoDbFSZ90xbJRHxG39SrYDHxpXc7_79GYSy-z5FnIUDdNFHvw5ibroB-vj3iTqGKsoJh1l9eJL6Uct5A7Bth5yvFd04pso0V6TpRC2OhA3qI7BYEUes28Ygls28ztw-IqiCxQGHReoS3moWtackolKssavtpRPQ6mq3_mvAfXyNzfvvIkc/s2252/GidneyFig1.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="1544" data-original-width="2252" height="137" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiwRjfgZSR1dvOoDbFSZ90xbJRHxG39SrYDHxpXc7_79GYSy-z5FnIUDdNFHvw5ibroB-vj3iTqGKsoJh1l9eJL6Uct5A7Bth5yvFd04pso0V6TpRC2OhA3qI7BYEUes28Ygls28ztw-IqiCxQGHReoS3moWtackolKssavtpRPQ6mq3_mvAfXyNzfvvIkc/w200-h137/GidneyFig1.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://arxiv.org/abs/2505.15917">Gidney Figure 1</a></td></tr></tbody></table>
The point of Gidney and Schmieg's post and their <a href="https://arxiv.org/abs/2505.15917">paper</a> is <a href="https://security.googleblog.com/2025/05/tracking-cost-of-quantum-factori.html">that</a>:<br />
<blockquote>
2048-bit RSA encryption could theoretically be broken by a quantum computer with 1 million noisy qubits running for one week. This is a 20-fold decrease in the number of qubits from <a href="https://arxiv.org/abs/1905.09749">our previous estimate</a>, published in 2019. Notably, quantum computers with relevant error rates currently have on the order of only 100 to 1000 qubits
</blockquote>
They don't provide an estimate for <a href="https://en.bitcoin.it/wiki/Elliptic_Curve_Digital_Signature_Algorithm">Bitcoin's ECDSA</a> but, like RSA, the ECDSA algorithm is a derivative of <a href="https://en.wikipedia.org/wiki/Shor's_algorithm">Schor's algorithm</a>.<br />
<br />
So there's nothing to worry about, right? NIST has specified the algorithms, quantum computers need to get 1000 times better before they can crack a single RSA key in a week, and NIST says we have 5 years before there's a problem.<br />
<br />
At least as regards cryptocurrencies, I think this is a rather pessimistic estimate. The point of <a href="https://blog.dshr.org/2021/11/the-65b-prize.html"><i>The $65B Prize</i></a> was that at least Bitcoin's transition to post-quantum cryptography faced a particular problem:<br />
<blockquote>
Senator Everett Dirksen is famously alleged to have remarked "<a href="https://www.dirksencenter.org/research-collections/everett-m-dirksen/dirksen-record/billion-here-billion-there">a billion here, a billion there, pretty soon you're talking real money</a>". There are a set of Bitcoin wallets containing about a million Bitcoins that are believed to have been mined by Satoshi Nakamoto at the very start of the blockchain in 2008. They haven't moved since and, if you believe the <a href="https://blog.dshr.org/2021/11/making-sure-number-go-up.html">bogus Bitcoin "price"</a>, are currently "worth" $65B. Even if you're skeptical of the "price", that is "real money".
</blockquote>
I assume that the fact that Nakamoto's stash hasn't moved means that he no longer has access to the keys, either through death, destruction or accident. As I write, the stash is "worth" about $107B. I also assume that the stash is <a href="https://blog.dshr.org/2021/11/the-65b-prize.html">included in Chainalysis' estimate that</a>:<br />
<blockquote>
about <a href="https://blog.chainalysis.com/reports/money-supply">20% of all Bitcoins</a> have been "lost", or in other words are sitting in wallets whose keys are inaccessible.  ...  These coins need to be protected from theft by some public-sprited person with a "sufficiently large quantum computer" who can transfer them to post-quantum wallets he owns.
</blockquote>
The point is that, without access to the keys for the vulnerable wallets, there is no way to transfer their contents to new wallets protected by post-quantum cryptography. Thus 20% of all Bitcoins or 4.2M BTC, currently "worth" almost $450B, is the reward for the first to build a "sufficiently powerful quantum computer". It is generally thought that VCs need to see the prospect of at least a 10x return on their investment, so that is enough for $45B of R&amp;D.<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJm9D99aulcWoUc06SpEfPlrDqgSdw-MnFrzuhYWZ8ZdpV8wWKOkezvA1sa-QTCTgiI1I_ezmmw1NMaoeADULdHdEUurElSicdLcCgBkmro428ih_eQLwu5ATAEn4mmwxWj7lI-1YM4dgCt8SAVvhXP4FdbTMrdvVwhTysGSnN1zCyW84L0dRXsLzSPZo_/s1644/UtilityScaleQuantumComputer.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="992" data-original-width="1644" height="121" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJm9D99aulcWoUc06SpEfPlrDqgSdw-MnFrzuhYWZ8ZdpV8wWKOkezvA1sa-QTCTgiI1I_ezmmw1NMaoeADULdHdEUurElSicdLcCgBkmro428ih_eQLwu5ATAEn4mmwxWj7lI-1YM4dgCt8SAVvhXP4FdbTMrdvVwhTysGSnN1zCyW84L0dRXsLzSPZo_/w200-h121/UtilityScaleQuantumComputer.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.psiquantum.com/blueprint">Source</a></td></tr></tbody></table>
There may now be a viable runner in this race. <a href="https://www.psiquantum.com/">Psi Quantum</a> is a Palo Alto based startup that is building a million-qubit optical quantum computer. They had raised <a href="https://www.seedtable.com/startups/PsiQuantum-PBDGXRA">$1.2B by 2021</a> and "<a href="https://www.reuters.com/technology/quantum-computing-startup-psiquantum-raising-least-750-million-6-billion-2025-03-24/">at least $750M this year</a>" from investors including Nvidia. Their website <a href="https://www.psiquantum.com/blueprint">claims</a>:<br />
<blockquote>
In 2024, PsiQuantum announced two landmark partnerships with the Australian Federal and Queensland State governments, as well as the State of Illinois and the City of Chicago, to build its first utility-scale quantum computers in Brisbane and Chicago. Recognizing quantum as a sovereign capability, these partnerships underscore the urgency and race towards building million-qubit systems. In 2025, PsiQuantum will break ground on Quantum Compute Centers at both sites, where the first utility-scale, million-qubit systems will be deployed.
</blockquote>
Investors have put in about $2B so far. They stand to make a notional 225x return just from Bitcoin, apart from all the other uses of a "utility-scale quantum computer".<br />
<br />
But wait! There is an even better way to monetize a "sufficiently powerful quantum computer". Matt Levine has been writing about <a href="https://www.bloomberg.com/opinion/articles/2025-01-23/crypto-perpetual-motion-machines"><i>Crypto Perpetual Motion Machines</i></a> for some time, for example:<br />
<blockquote>
MicroStrategy Inc. is, among other things, a proof of concept. The concept is: “If you buy $100 of Bitcoin and put it in a pot, you can slice the pot into shares and sell them for $200.” (MicroStrategy owns about $49 billion of Bitcoin and has a market capitalization of about $94 billion, because people will buy its shares for more than the value of the underlying Bitcoin.) This is a very appealing concept, because: free money! A “perpetual motion machine,” I sometimes call it: The more shares you sell, the more Bitcoin you can buy, and the more your shares are worth.
</blockquote>
To do this you need a public company, but as Levine explains,<a href="https://www.bloomberg.com/opinion/newsletters/2025-05-27/sell-your-crypto-on-the-stock-exchange">they aren't expensive</a>:<br />
<blockquote>
If you have a big pot of Bitcoin or Ethereum or Solana or Dogecoin or Trumpcoin or anything else, you should wrap it in a US public company and sell it to stock investors for twice its actual value. But to wrap it in a public company, you need a public company. There are only so many of those, and they are busy. If you called, like, Apple Inc. and said “hey we’d like to merge our big pot of Dogecoin with you so that our coins are worth more,” Apple would say no. The trick is to call a company that is (1) a public company but (2) only barely. Those companies’ phones are ringing off the hook.
</blockquote>
So the monetization strategy for the owner of the first "sufficiently powerful quantum computer" is:<br />
<ol>
<li>Buy a cheap public company.</li>
<li>Lend it enough money to pay for the quantum computer time to crack the keys of the 20% of frozen BTC.</li>
<li>Transfer the 20% of BTC to post-quantum wallets.</li>
<li>Announce that your company now controls 20% of BTC and can prove it by signing messages with the post-quantum keys of your wallets.</li>
<li>Since <a href="https://saylortracker.com/"><strike>Micro</strike>Strategy holds about 580K BTC</a> and MSTR is valued at 1.6 times their "price", by analogy your 4.2M BTC would give your company's stock a "market cap" of around $740B,</li>
<li>Now you use (Michael) Saylor's algorithm:<br />
<blockquote>
<tt><small>
float btc = 4,200,000.0; // Initial HODL-ing<br />
float factor = 1.6; // Market Cap inflator<br />
float fraction = 1.0; // % Market Cap to use as collateral<br />
float over = 200; // % Over-collateralization<br />
while (factor > 1.0) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;float price = btc_price();<br />
&nbsp;&nbsp;&nbsp;&nbsp;float pre_mkt_cap = btc * price * factor;<br />
&nbsp;&nbsp;&nbsp;&nbsp;float cash = borrow((pre_mkt_cap * fraction) / over);<br />
&nbsp;&nbsp;&nbsp;&nbsp;btc += cash / price;<br />
&nbsp;&nbsp;&nbsp;&nbsp;// Each time round Market Cap increases by cap_gain<br />
&nbsp;&nbsp;&nbsp;&nbsp;float cap_gain = cash * factor;<br />
}<br />
</small> </tt>
</blockquote>
</li></ol>
It is really hard to think of a better way to monetize a "sufficiently powerful quantum computer" than this way, with its at least 370x return!<br />
<br />
You may think that the market is irrational in valuing MSTR at 1.6 times its BTC HODL-ings. But, Levine writes, <a href="https://www.bloomberg.com/opinion/newsletters/2025-05-27/sell-your-crypto-on-the-stock-exchange">that's small potatoes</a>:<br />
<blockquote>
SharpLink’s <i>planned</i> $425 million stash of Ethereum is worth $2.5 billion on the stock market.<br />
<br />
Note that SharpLink apparently doesn’t own any Ether. The investors are contributing $425 million in dollars, not Ethereum. This is not “we’ve got a stash of Ethereum and might as well sell it on the stock exchange”; it’s “man the stock exchange is paying $2 for $1 of Ethereum, we’d better do that arb.” Or, in this case, $6 for every $1 of Ethereum.
</blockquote>
SharpLink is an el-cheapo public company that Consensys bought to run Saylor's algorithm. It is a shame that an <i>actual</i> pot of BTC isn't valued like a <i>planned</i> pot of ETH. If it were the post-quantum company would be valued at around $2.8B, almost as much as APPL.  Levine <a href="https://www.bloomberg.com/opinion/newsletters/2025-05-27/sell-your-crypto-on-the-stock-exchange">takes this lesson</a>:<br />
<blockquote>
This is not investment advice but honestly what am I doing with my life. Right now, if you have a few hundred million dollars lying around, you can buy any crypto you like with it, and the US stock market will give you an immediate 500+% paper profit. All you need — besides the startup cash — is a little public company to put your crypto in.
</blockquote>
And, of course, you need to remember to cash out without crashing the stock price before someone with a "sufficiently powerful quantum computer" steals the little public company's stash. Helpfully, Levine suggests a <a href="https://www.bloomberg.com/opinion/newsletters/2025-05-27/sell-your-crypto-on-the-stock-exchange">way to do it</a>:<br />
<blockquote>
In crypto, if you have magic beans that are currently priced at $1 billion, maybe someone will lend you $500 million of real money against them, with no recourse to you. In the stock market … look you’re going to have a hard time borrowing 50%, or 10%, of the market value of a 97% stake in a crypto treasury company whose market cap has increased 100,000% in a week, but, man, I would try.
</blockquote>
We just have to hope that the current infatuation with crypto treasury companies lasts long enough for PsiQuantum to build the "sufficiently powerful quantum computer".<br />
<br /> 

<br> 

<https://blog.dshr.org/2025/05/the-740b-prize.html>

---

##  Harvard student: &#8220;I shall fight Secretary of Education Linda E. McMahon in... 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046952-harvard-student-i-shall-f>

---

##  New apt acronym for America&#8217;s lamest president: TACO, which stands for Trump... 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046951-new-apt-acronym-for-ameri>

---

##  The curse of Toumaï: an ancient skull, a disputed femur and a... 

date: 2025-05-29, updated: 2025-05-29, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046936-the-curse-of-toumai-an>

---

## Surveillance Via Smart Toothbrush

date: 2025-05-29, updated: 2025-05-28, from: Bruce Schneier blog

<p>The only links are from <a href="https://www.dailymail.co.uk/femail/article-14742573/Private-investigator-reveals-TOOTHBRUSH-prove-partner-cheating.html"><i>The Daily Mail</i></a> and <a href="https://www.mirror.co.uk/lifestyle/sex-relationships/relationships/im-private-investigator-unlikely-household-35256619"><i>The Mirror</i></a>, but a marital affair was discovered because the cheater was recorded using his smart toothbrush at home when he was supposed to be at work.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/05/surveillance-via-smart-toothbrush.html>

---

## Sardina throws bait toward SUSE Enterprise Storage users

date: 2025-05-29, updated: 2025-05-29, from: Liam Proven's articles at the Register

<h4><span class="label">Updated</span> Wiggles tiny price for FishOS Ceph-based wares as deprecation of Ceph continues</h4>
      <p>Sardina hopes to entice anyone still using SUSE Enterprise Storage (SES) over to FishOS instead with a price-based hook: a license fee of €1 per core, regardless of storage volume.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/05/29/sardina_entices_ses_users/>

---

## The Reemergence of Social Darwinism

date: 2025-05-29, from: Robert Reich's blog

The 19th-century doctrine that most closely resembles Trumpism 

<br> 

<https://robertreich.substack.com/p/the-reemergence-of-social-darwinism>

---

## May 28, 2025

date: 2025-05-29, from: Heather Cox Richardson blog

Today&#8217;s news continues yesterday&#8217;s. 

<br> 

<https://heathercoxrichardson.substack.com/p/may-28-2025>

---

## MCP is RSS for AI

date: 2025-05-29, from: Jonudell blog

We mostly don’t want to read the docs, but we do want to converse with them. When we build search interfaces for our docs, we have always tried to anticipate search intentions. People aren’t just looking for words; they need to use the material to solve problems and get things done. When you create an &#8230; <a href="https://blog.jonudell.net/2025/05/28/mcp-is-rss-for-ai/" class="more-link">Continue reading <span class="screen-reader-text">MCP is RSS for AI</span></a> 

<br> 

<https://blog.jonudell.net/2025/05/28/mcp-is-rss-for-ai/>

---

**@Dave Winer's Scripting News** (date: 2025-05-29, from: Dave Winer's Scripting News)

BTW, just for fun, a search for <a href="https://daytona.scripting.com/search?q=%22ole%20and%20lena%22">Ole and Lena</a> jokes. <span class="spOldSchoolEmoji">😄</span> 

<br> 

<http://scripting.com/2025/05/28.html#a024110>

---

## What Should We Do Now? Live with Rev. Dr. William J. Barber II

date: 2025-05-29, from: Robert Reich's blog

Watch now (33 mins) | Friends, 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/164669158/4ccff48647419d6790a7d3cf2b40dc65.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/164669158/4ccff48647419d6790a7d3cf2b40dc65.mp3" target="_blank">download audio/mpeg</a><br> 

<https://robertreich.substack.com/p/what-should-we-do-now-live-with-rev>

---

## Who washes their hands?

date: 2025-05-29, updated: 2025-05-29, from: Anil Dash blog

 

<br> 

<https://anildash.com/2025/05/29/who-is-clean/>

---

## Apple’s Annual App Store Scam and Fraud Report

date: 2025-05-28, updated: 2025-05-28, from: Daring Fireball

 

<br> 

<https://www.apple.com/newsroom/2025/05/the-app-store-prevented-more-than-9-billion-usd-in-fraudulent-transactions/?1748350751>

---

## Gurman: Apple Is Going to Re-Version OSes by Year, Starting With iOS 26, MacOS 26, tvOS 26, Etc.

date: 2025-05-28, updated: 2025-05-28, from: Daring Fireball

 

<br> 

<https://www.bloomberg.com/news/articles/2025-05-28/apple-to-rebrand-device-operating-systems-ios-26-macos-26-watchos-26>

---

## The truth about the Medicaid work requirement

date: 2025-05-28, from: Robert Reich's blog

Now in Trump&#8217;s Big Bad Ugly budget bill 

<br> 

<https://robertreich.substack.com/p/the-truth-about-the-medicaid-work>

---

##  This rings true: &#8220;Elon Musk is less like Tony Stark and more... 

date: 2025-05-28, updated: 2025-05-28, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046947-this-rings-true-elon-musk>

---

## May 27, 2025

date: 2025-05-28, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/164675918/cf0ad0028a821d41becd3405a698115f.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/164675918/cf0ad0028a821d41becd3405a698115f.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/may-27-2025-fae>

---

## from Luddites to AI: the Overton Window of disruption

date: 2025-05-28, from: Geoffrey Hunntley's blog

<p>I&apos;ve been thinking about <a href="https://en.wikipedia.org/wiki/Overton_window?ref=ghuntley.com">Overton Windows</a> lately, but not of the political variety.</p><figure class="kg-card kg-image-card"><img src="https://ghuntley.com/content/images/2025/05/Unthinkable-1.png" class="kg-image" alt loading="lazy" width="1039" height="703"></figure><p>You see, the Overton window can be adapted to model disruptive innovation by framing the acceptance of novel technologies, business models, or ideas within a market or society. So I&apos;ve been pondering about</p> 

<br> 

<https://ghuntley.com/overton/>

---

##  Happy 20th anniversary to Swissmiss, Tina Roth Eisenberg&#8217;s design/creativity/positivity blog.... 

date: 2025-05-28, updated: 2025-05-28, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046948-happy-20th-anniversary-to>

---

##  The Great Span: President John Tyler&#8217;s Grandson Dies Aged 96 

date: 2025-05-28, updated: 2025-05-28, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/the-great-span-president-john-tylers-grandson-dies-aged-96>

---

## George Dyson on AI

date: 2025-05-28, from: Om Malik blog

My good friend Chris Michel recently photographed George Dyson, thinker, historian, and writer. The topic of “AI” came up, and I found this worth noting. He’s less concerned about the usual apocalyptic fears and more interested in a quieter erosion: that “Good AI,” the kind that works too well, might slowly displace our capacity to &#8230; 

<br> 

<https://om.co/2025/05/28/george-dyson-on-ai/>

---

##  A recent study: &#8220;Ibn al-Shatir was the first astronomer to have successfully... 

date: 2025-05-28, updated: 2025-05-28, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046945-a-recent-study-ibn-al-sha>

---

## Arrival of Linux 6.15 hails end of 486-class CPUs

date: 2025-05-28, updated: 2025-05-28, from: Liam Proven's articles at the Register

<h4>Latest kernel includes 14,612 changesets, Penguinistas been busy</h4>
      <p>Over the holiday weekend, Linus Torvalds released the latest Linux kernel – signalling the end of the line for 486-class chips.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/05/28/kernel_615_arrives/>

---

##  Top 25 Premier League goals of 2024-25 season. I like a good... 

date: 2025-05-28, updated: 2025-05-28, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046944-top-25-premier-league-goa>

---

## The Resistance Is Working Better Than You Think

date: 2025-05-28, updated: 2025-05-28, from: Daring Fireball

 

<br> 

<https://politicalwire.com/2025/05/28/the-resistance-is-working-better-than-you-think/>

---

##  Resourceful: &#8220;Shooting down a $100,000 Russian drone with an air-defense missile might... 

date: 2025-05-28, updated: 2025-05-28, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046943-resourceful-shooting-down>

---

**@Dave Winer's Scripting News** (date: 2025-05-28, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/02/08/woodstock.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">And btw, that's why I <a href="http://scripting.com/2025/05/21.html#a135615">wanted</a> Chris Lydon to do interviews with people in his <a href="https://radioopensource.org/">audience</a> who are tripping out on all the new power they're getting from AI. How is it augmenting their work? I know Chris well enough that he probably thinks it's not for him, too technical -- but that's the point -- the excitement with AI is not technical. That's the story all the other reporters are missing. It's the light in the users' eyes when they struggle to make you understand why it's the most incredible thing ever and they're so glad to have lived to see this. <i>That's</i> the freaking story. Help them get the ideas through. BTW, we have no idea how AI will rock our boat, we never did for other similar inventions. Who knew what the Beatles would lead to when they <a href="https://en.wikipedia.org/wiki/The_Beatles%27_1964_North_American_tour">came to America</a>. They said (the Beatles did, with ridiculous humility) that they expected their fame will last a few years at most. PCs a few years later were supposed to be for the kitchen. Apple actually <a href="https://imgs.scripting.com/2025/05/28/appleKitchenComputer.png">ran ads</a> saying that in the late 70s. And the web? Well Chris was around near the beginning of that and knows how our eyes glazed over at the utopia we were envisioning, and we know, to some extent how all that <a href="https://en.wikipedia.org/wiki/Donald_Trump#First_presidency_(2017%E2%80%932021)">turned</a> <a href="https://en.wikipedia.org/wiki/Acquisition_of_Twitter_by_Elon_Musk">out</a>. The AI story is a great one, and as Chris had very little understanding of blogs when he did the series of podcasts in 2003 and 2004 that should win the Pulitzer Prize for being so presicent and courageous, he's the right guy to get this story, if he has the patience and stamina. This is the <a href="http://scripting.com/2025/05/22/214121.html">story</a>. Sure you <i>have</i> to cover Harvard v Trump but AI is a story of love from the users and that story hasn't been told yet, and it's a big one, like what were the Beatles for and why, in <a href="https://en.wikipedia.org/wiki/The_Beatles%27_1964_North_American_tour">1964</a>. 

<br> 

<http://scripting.com/2025/05/28.html#a155546>

---

**@Dave Winer's Scripting News** (date: 2025-05-28, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/02/13/commanderDataStarTrek.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I love this <a href="https://sports.yahoo.com/nba/article/timberwolves-thunder-anthony-edwards-is-dealing-with-the-superstars-dilemma-against-okc-how-will-he-respond-150142061.html">piece</a> about Anthony Edwards and how the OKC's guard against him by double-teaming, so he can't have the ball, and that allows them to steal the ball more often from other Minnesotan ball-handlers, and also limits Edwards opportunities to shoot, but it does make it more <i>possible</i> for others on the team to shoot. If he does his job, the pundits and fans say he's slumping (low points). But he's just doing his job. Same thing, flipped around -- when they say Brunson is scoring so many points, he's doing great, like LeBron or Kobe, but actually it's a sign the team is fucked up. Too dependent on one offensive player, the others are just standing around in case he wants to pass it to them. I exaggerate, but it does work out that way. What you want is a team where there are always lots of options, and to the extent that they're hot, the team is impossible to defend. But a Brunson holding the ball all the time makes it easier to beat the Knicks? That was (as I've said a few times) the problem with Melo. Now we've <i>seen</i> the non-Brunsons on the Knicks kick ass. If the Knicks don't make it past this round, and it is it seems pretty likely -- next season they should focus on configurations that have to sink or swim based on whether they can win without Brunson. Then, next year, we'll have something, perhaps. But I'm just a fan, seriously, no sarcasm. Same way I'm a fan of AI, I have no idea how it works, and I'm happy with that. And don't tell me it's like auto-complete, try using it for a while for real stuff, and tell me how you know that from using it. You don't. Each system has quirks that you have to learn the same way you have to learn the quirks of team members, and help them do stuff they're good at, so they can handle the ball and take shots without you getting involved. That's how you start to get teamwork. See how that works kind of like basketball? :-) 

<br> 

<http://scripting.com/2025/05/28.html#a154441>

---

## Firefox 139 arrives for non-Chromium browser fans

date: 2025-05-28, updated: 2025-05-28, from: Liam Proven's articles at the Register

<h4>Project shutdowns at Mozilla are not encouraging, though</h4>
      <p>Another month, another new version of Firefox, with several handy changes. The future is less certain, though.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/05/28/firefox_139/>

---

##  How to Fix Grocery Stores: The Chewy Decimal System 

date: 2025-05-28, updated: 2025-05-28, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/how-to-fix-grocery-stores-the-chewy-decimal-system>

---

##  This a great piece about the challenges many are facing in participating... 

date: 2025-05-28, updated: 2025-05-28, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046938-this-a-great-piece-about>

---

##  You can play Doom in this NY Times article about how you... 

date: 2025-05-28, updated: 2025-05-28, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046941-you-can-play-doom-in>

---

## Location Tracking App for Foreigners in Moscow

date: 2025-05-28, updated: 2025-05-27, from: Bruce Schneier blog

<p>Russia is <a href="https://www.bleepingcomputer.com/news/government/russia-to-enforce-location-tracking-app-on-all-foreigners-in-moscow/">proposing a rule</a> that all foreigners in Moscow install a tracking app on their phones.</p>
<blockquote><p>Using a mobile application that all foreigners will have to install on their smartphones, the Russian state will receive the following information:</p>
<ul>
<li>Residence location
<li>Fingerprint
<li>Face photograph
<li>Real-time geo-location monitoring </ul>
</blockquote>
<p>This isn&#8217;t the first time we&#8217;ve seen this. Qatar <a href="https://www.theregister.com/2022/11/11/world_cup_security/">did it</a> in 2022 around the World Cup:</p>
<blockquote><p>&#8220;After accepting the terms of these apps, moderators will have complete control of users&#8217; devices,&#8221; he continued. &#8220;All personal content, the ability to edit it, share it, extract it as well as data from other apps on your device is in their hands. Moderators will even have the power to unlock users&#8217; devices remotely.&#8221; ...</p></blockquote></li></li></li></li> 

<br> 

<https://www.schneier.com/blog/archives/2025/05/location-tracking-app-for-foreigners-in-moscow.html>

---

## Three ways to run Windows apps on a Linux box

date: 2025-05-28, updated: 2025-05-28, from: Liam Proven's articles at the Register

<h4><span class="label">hands on</span> Easy, medium, and the sledgehammer approach – or any combination you fancy</h4>
      <p>If you&#39;re thinking about switching to Linux but there are a few Windows apps you just can&#39;t do without, you do have options… and some of them are free.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/05/28/three_ways_to_win_on_lin/>

---

## Office Hours: Now that Elon is on the way out, who will be Trump’s ringleader?

date: 2025-05-28, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/office-hours-now-that-elon-is-on>

---

## May 27, 2025

date: 2025-05-28, from: Heather Cox Richardson blog

Political scientist Adam Bonica noted last Friday that Trump and the administration suffered a 96% loss rate in federal courts in the month of May. 

<br> 

<https://heathercoxrichardson.substack.com/p/may-27-2025>

---

## curl 8.14.0

date: 2025-05-28, from: Daniel Stenberg Blog

Welcome to another curl release. Release presentation Numbers the 267th release6 changes56 days (total: 9,931)229 bugfixes (total: 12,015)406 commits (total: 35,190)0 new public libcurl function (total: 96)1 new curl_easy_setopt() option (total: 308)1 new curl command line option (total: 269)91 contributors, 47 new (total: 3,426)36 authors, 17 new (total: 1,375)2 security fixes (total: 166) Security Changes &#8230; <a href="https://daniel.haxx.se/blog/2025/05/28/curl-8-14-0/" class="more-link">Continue reading <span class="screen-reader-text">curl 8.14.0</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/05/28/curl-8-14-0/>

---

## SAFE Bellevue — letter in support of streets for everyone

date: 2025-05-28, from: Tracy Durnell Blog

I&#8217;m in a local urbanist Discord server that highlights actions to support safer streets and more housing in the Seattle suburbs. In support of the SAFE Bellevue campaign, I modified their form letter with my own introductory paragraphs:  I live just up the road in Kirkland and am in Bellevue all the time. I stopped [&#8230;] 

<br> 

<https://tracydurnell.com/2025/05/27/safe-bellevue-letter-in-support-of-streets-for-everyone/>

---

## [Sponsor] Ooni Halo Pro Spiral Mixer

date: 2025-05-28, updated: 2025-05-28, from: Daring Fireball

 

<br> 

<https://ooni.com/products/ooni-halo-pro-spiral-mixer?utm_source=daringfireball&utm_medium=web&utm_campaign=halo_pro>

---

## To What End?

date: 2025-05-27, from: Dan Rather's Steady

Understanding Trump&#8217;s endgame 

<br> 

<https://steady.substack.com/p/to-what-end>

---

## ‘The Future Is Colourful and Dimensional’

date: 2025-05-27, updated: 2025-05-27, from: Daring Fireball

 

<br> 

<https://www.flarup.email/p/the-future-is-colourful-and-dimensional>

---

## Wednesday 28 May, 2025

date: 2025-05-27, from: John Naughton's online diary

The Canadians have landed Mom plus three fluffballs. Seen on an evening walk the other day. Quote of the Day “Outside of a dog, a book is man&#8217;s best friend. Inside of a dog it&#8217;s too dark to read.” Groucho &#8230; <a href="https://memex.naughtons.org/wednesday-28-may-2025/40869/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/wednesday-28-may-2025/40869/>

---

## On the Engineering Talent at IO

date: 2025-05-27, updated: 2025-05-27, from: Daring Fireball

 

<br> 

<https://sixcolors.com/post/2025/05/sam-and-jony-and-skepticism/>

---

##  A Disillusioned Urban Planning Glossary. &#8220;NIMBY – Stands for &#8216;Not in My... 

date: 2025-05-27, updated: 2025-05-27, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046940-a-disillusioned-urban-pla>

---

##  This looks really interesting: Rogue One recut and rescored in the style... 

date: 2025-05-27, updated: 2025-05-27, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046935-this-looks-really-interes>

---

## Apple’s Satellite Networking Ambitions

date: 2025-05-27, updated: 2025-05-27, from: Daring Fireball

 

<br> 

<https://www.theinformation.com/articles/apples-satellite-ambitions-threatened-elon-musk-internal-resistance?rc=jfy0lk>

---

## Scott Forstall Has Been Advising The Browser Company

date: 2025-05-27, updated: 2025-05-27, from: Daring Fireball

 

<br> 

<https://browsercompany.substack.com/p/letter-to-arc-members-2025>

---

## Tim Cook Declined Middle East Trip With Trump’s Sycophant Entourage

date: 2025-05-27, updated: 2025-05-27, from: Daring Fireball

 

<br> 

<https://www.nytimes.com/2025/05/26/technology/techs-trump-whisperer-tim-cook-goes-quiet-as-his-influence-fades.html>

---

##  We&#8217;re witnessing the reversal of Reconstruction. &#8220;ICE raids are the new night... 

date: 2025-05-27, updated: 2025-05-27, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046931-were-witnessing-the-rever>

---

## May 26, 2025

date: 2025-05-27, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/164589743/5413769bfb3d12caceb2044a48f583c9.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/164589743/5413769bfb3d12caceb2044a48f583c9.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/may-26-2025-fe5>

---

## ‘Puzzmo Is Not a Good iOS App’

date: 2025-05-27, updated: 2025-05-27, from: Daring Fireball

 

<br> 

<https://maxfrequency.net/2025/05/26/puzzmo-app-not-good>

---

##  View of Azalea Garden from Mt. Fuji, Hasui Kawase 

date: 2025-05-27, updated: 2025-05-27, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/view-of-azalea-garden-from-mt-fuji-hasui-kawase>

---

##  It usually takes weeks to climb Mt Everest due to altitude acclimation.... 

date: 2025-05-27, updated: 2025-05-27, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046930-it-usually-takes-weeks-to>

---

**@Dave Winer's Scripting News** (date: 2025-05-27, from: Dave Winer's Scripting News)

I asked ChatGPT to review my <a href="https://daytona.scripting.com/search?q=Knicks">archive on the Knicks</a> and to summarize my feelings about the team over the years. This is what they said. "Your sentiments toward the New York Knicks over the years appear to be a blend of enduring loyalty, cautious optimism, and occasional frustration. Your writings reflect a deep-rooted connection to the team, celebrating their victories and expressing hope during promising times. At the same time, you don't shy away from critiquing management decisions or expressing disappointment during less successful periods. This combination suggests a passionate fan who remains committed to the Knicks, appreciating their highs and thoughtfully analyzing their lows." 

<br> 

<http://scripting.com/2025/05/27.html#a180025>

---

**@Dave Winer's Scripting News** (date: 2025-05-27, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2017/09/01/mrFrog.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">The Knicks are playing the Pacers tonight. Very pivotal. If the Knicks win, it becomes a best of three series, and two of the three games are played at home. Not necessarily so great for the Knicks, they do well on the road. The players say it has something to do with being able to focus on the game and not on family, that came from <a href="https://en.wikipedia.org/wiki/Mikal_Bridges">Mikal Bridges</a>. 

<br> 

<http://scripting.com/2025/05/27.html#a175708>

---

##  The Who Cares Era. &#8220;At a time where the government&#8217;s uncaring boot... 

date: 2025-05-27, updated: 2025-05-27, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046929-the-who-cares-era-at>

---

## YouTube revenue and recent good ones

date: 2025-05-27, from: Matt Haughey blog

<p>There&apos;s an interesting trend in YouTube land lately, which is prominent creators talking about how little they make from YouTube/Google itself, instead needing brand deals to advertise a product inside their videos to truly make a living. </p><p>For high-end channels that put out weekly videos, they often</p> 

<br> 

<https://a.wholelottanothing.org/youtube-revenue-and-recent-good-ones/>

---

##  European airlines are redirecting flights from American cities to destinations like Canada,... 

date: 2025-05-27, updated: 2025-05-27, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046928-european-airlines-are-red>

---

## Daily AI Tools

date: 2025-05-27, from: Paolo Valdemarin's blog

Here’s a snapshot of what AI tools and how am I using them on this 27th of May 2025. Things change fast, I’m writing this for my future self who will be moved while reminiscing these pioneering times. I more or less always have the Claude and ChatGPT apps running. Recently I have also created a &#8230; <a href="https://val.demar.in/2025/05/daily-ai-tools/" class="more-link">Continue reading<span class="screen-reader-text"> "Daily AI Tools"</span></a> 

<br> 

<https://val.demar.in/2025/05/daily-ai-tools/>

---

##  Owls in Towels 

date: 2025-05-27, updated: 2025-05-27, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/owls-in-towels>

---

##  &#8220;Fascism sets in EXACTLY like this. Days go by. Nothing improves. The... 

date: 2025-05-27, updated: 2025-05-27, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046925-fascism-sets-in-exactly-l>

---

## Take My Hand, Precious Lord

date: 2025-05-27, from: Dave Rupert blog

<p><em>Take My Hand, Precious Lord</em> (also known as the inverse <em>Precious Lord, Take My Hand</em>) is an old gospel hymn with a unique and special tie-in to the American Civil Rights story. Written in 1932 by <a href="https://en.wikipedia.org/wiki/Thomas_A._Dorsey">Thomas Dorsey</a> after he co-founded National Convention of Gospel Choirs and Choruses (NCGCC), the tune borrowed from a 1844 hymn called “Maitland” (George N. Allan) and took inspiration from a performance of the song by Blind Connie Williams.</p>
<p>The song was written after the death of Dorsey’s wife Nettie and his son during childbirth. Tragic doesn’t even begin to describe the situation. You feel the heartache in the simple refrain, “I am tired, I am weak, I am worn”. It’s a cry for help and comfort beyond what the world can offer.</p>
<p>One notable fan of the song was MLK. Dr. King would often asked Mahalia Jackson to sing this particular song at civil rights rallies. He even made her promise to sing the song at his funeral. And on April 4th, 1968 outside the Lorraine Motel in Memphis, Tennessee, Dr. King’s last recorded words were to musician Ben Branch for an event he was performing that evening…</p>
<blockquote>
<p>“Ben, make sure you play ‘Take My Hand, Precious Lord’ in the meeting tonight. Play it real pretty.”</p>
</blockquote>
<p>Moments later, Dr. King was shot and died on the way to the hospital. This began a bit of a tradition with this song.</p>
<ul>
<li><a href="https://www.youtube.com/watch?v=WduYIw8Yrnw">Mahalia sang the song at Dr. King’s funeral in 1968</a></li>
<li><a href="https://youtu.be/GoBaMglyKh0">Aretha sang the song at Mahalia’s funeral in 1972</a></li>
<li><a href="https://www.youtube.com/watch?v=vPAvIMC9g14">Aretha sang the song at the MLK memorial dedication in 2011</a></li>
<li><a href="https://www.youtube.com/watch?v=Ay2Fi_Ao_tU">Fantasia sang the song at Aretha’s funeral in 2018</a></li>
</ul>
<p>Dozens of famous people from Bruce Springsteen to Nina Simone have sung versions of this song, but to me the best recorded version of this song comes from Aretha Franklin’s groundbreaking and award-winning gospel album <a href="https://www.youtube.com/watch?v=H4eiQmJsSsI"><em>Amazing Grace</em>, recorded in Los Angeles in 1972</a> which is also an <a href="https://letterboxd.com/film/amazing-grace-2018/">incredible documentary</a> (2018) if you haven’t already seen it already. The choir and the bassist do most of the work but it punches you right in the gut. At one point Aretha appears to sing the wrong verse over the choir, but she knows what she’s doing. It’s layers upon layers stitched inside a medley, building up a magical tapestry of song.</p>
<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>        G             G7
Precious Lord, take my hand,
        C
Lead me on, let me stand,
     G                      D7
I am tired, I am weak, I am worn;
            G                  G7
Through the storm, through the night,
        C
Lead me on to the light:
        G              D7
Take my hand, precious Lord,
        G     C G
Lead me home.


        G              G7
When my way grows drear,
        C
Precious Lord, linger near,
     G                     D7
When my life is almost gone,
           G             G7
Hear my cry, hear my call,
        C
Hold my hand lest I fall
        G              D7
Take my hand, precious Lord,
        G     C G
Lead me home.



         G              G7
When the darkness appears
        C
And the night draws near,
    G                      D7
And the day is past and gone,
            G        G7
At the river I stand,
         C
Guide my feet, hold my hand
        G              D7
Take my hand, precious Lord,
        G     C G
Lead me home.
</code></pre></div></div>
<p>When I’m feeling the pains of the world I often think about this song. I think about how exhausting it must have been to pick yourself up under the oppression of Jim Crow. No doubt it would leave you feeling tired, weak, and worn at the end of each night. To have freedom in a free country. To have a vote. To have dignity.</p>
<p>When I’m tired at end of a night, I sit at the piano and try to play this song. It never sounds as beautiful as those who have sung it before but it hits all the same. I think this would be a wonderful song to have at a funeral. Play it real pretty.</p> 

<br> 

<https://daverupert.com/2025/05/take-my-hand-precious-lord/>

---

##  Some photos, videos, and observations from a visit to a West Virginian... 

date: 2025-05-27, updated: 2025-05-27, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046924-some-photos-videos-and-ob>

---

##  The Crafters of Andor. Anil Dash has compiled the DVD extras for... 

date: 2025-05-27, updated: 2025-05-27, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/05/0046923-the-crafters-of-andor-ani>

---

## Coming to Understandings, and Perhaps Actions

date: 2025-05-27, from: Doc Searls (at Harvard), New Old Blog

Looking for one reporter—just one—from Wired or any other major news organization, to dig into this. Michaela Neville&#39;s A Starter Guide to Protecting Your Data From Hackers and Corporations in Wired gives good advice, but neglects to visit the magazine&#39;s own participation in the vast personal data harvesting adtech fecosystem. Here&#39;s a PageXray of the river delta out [&#8230;] 

<br> 

<https://doc.searls.com/2025/05/27/coming-to-understandings-and-perhaps-actions/>

---

## Chinese-Owned VPNs

date: 2025-05-27, updated: 2025-05-26, from: Bruce Schneier blog

<p>One one my biggest worries about VPNs is the amount of trust users need to place in them, and how opaque most of them are about who owns them and what sorts of data they retain.</p>
<p>A <a href="https://www.techtransparencyproject.org/articles/apple-offers-apps-with-ties-to-chinese-military">new study</a> found that many commercials VPNS are (often surreptitiously) owned by Chinese companies.</p>
<blockquote><p>It would be hard for U.S. users to avoid the Chinese VPNs. The ownership of many appeared deliberately opaque, with several concealing their structure behind layers of offshore shell companies. TTP was able to determine the Chinese ownership of the 20 VPN apps being offered to Apple&#8217;s U.S. users by piecing together corporate documents from around the world. None of those apps clearly disclosed their Chinese ownership...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/05/chinese-owned-vpns.html>

---

## The elusive goal of Unix – or Linux – simplicity

date: 2025-05-27, updated: 2025-05-27, from: Liam Proven's articles at the Register

<h4><span class="label">Comment</span> Or, rediscovering the KISS principle, the long way round</h4>
      <p>Linux distro wars are nothing new. &#34;Advocacy&#34; (a euphemism for angry argument) about hardware, OSes, programming languages and editors goes back as long as different computers have existed. Computers appeal to geeky folks, and geeky folks readily get a little too attached to things — and then become possessive and defensive about them.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/05/27/elusive_goal_of_simplicity/>

---

## Four years of college shouldn’t be the only gateway to the middle class

date: 2025-05-27, from: Robert Reich's blog

Thinking about education reform in the Trump era 

<br> 

<https://robertreich.substack.com/p/four-years-of-college-shouldnt-be>

---

## 2025-05-25 iPhone, GoPro, tears

date: 2025-05-27, from: Alex Schroeder's Blog

<h1 id="2025-05-25-iphone-gopro-tears">2025-05-25 iPhone, GoPro, tears</h1>

<p>I have a GoPro which I used to take a nice <a href="/wiki/2024-04-06-maledives-14.mov">6s video of a young whale</a> when we went to the <a href="2024-04-06-maledives">Maledives in 2024</a>.</p>

<p>I also took hours of not so important video. There is, of course, an iPhone app for the GoPro. It currently has 45 GB of videos on it. I can&rsquo;t access the iPhone from my wife&rsquo;s Mac without upgrading it.</p>

<p>So I use my Linux Laptop to connect to the phone. And my wife&rsquo;s Mac is mounted via wifi, and it has the external, encrypted hard disk where the images and videos should go. Current transfer speed is 1.3 MB/sec.</p>

<p>Sometimes I do feel the bars of the golden cage. 😔</p>

<p>And there so many random errors. Or a laptop that falls asleep. Or a duplicate filename. These things always interrupt the process and wait for user input.</p>

<p>This is where the tears come in.</p>

<p><a class="tag" href="/search/?q=%23GoPro">#GoPro</a></p>

<p><strong>2025-05-27</strong>. I don’t remember why I didn’t use the SD card directly. Perhaps the file formats need converting? Perhaps my wife’s Mac doesn’t have a working card reader?</p>

<p>Standard formats. Standard connectors.</p> 

<br> 

<https://alexschroeder.ch/view/2025-05-25-gopro>

---

## 2025-05-24 Last day in Croatia

date: 2025-05-27, from: Alex Schroeder's Blog

<h1 id="2025-05-24-last-day-in-croatia">2025-05-24 Last day in Croatia</h1>

<p>We went for a bath and a walk and then that was it. Bye-bye Croatia.</p>

<p>The most dangerous thing we had encountered surely was Donat water, available in supermarkets everywhere, with 1000 mg of magnesium per litre. Liquefies bowels! 😵‍💫</p>

<p>Claudia eating breakfast.</p>

<p><img loading="lazy" src="2025-05-24-home-1.jpg" alt="2025-05-24-home-1.jpg" /></p>

<p>Me, having eaten breakfast.</p>

<p><img loading="lazy" src="2025-05-24-home-2.jpg" alt="2025-05-24-home-2.jpg" /></p>

<p>A carpenter bee, eating breakfast.</p>

<p>Campanula versicolor</p>

<p><img loading="lazy" src="2025-05-24-home-3.jpg" alt="2025-05-24-home-3.jpg" /></p>

<p>Kahle Drillingsblume<br>
Bougainvillea glabra</p>

<p><img loading="lazy" src="2025-05-24-home-4.jpg" alt="2025-05-24-home-4.jpg" /></p>

<p>Ferns growing from rock walls.</p>

<p>Frauenhaar<br>
Adiantum capillus-veneris</p>

<p><img loading="lazy" src="2025-05-24-home-5.jpg" alt="2025-05-24-home-5.jpg" /></p>

<p>Claudia swimming in Lapad bay.</p>

<p><img loading="lazy" src="2025-05-24-home-6.jpg" alt="2025-05-24-home-6.jpg" /></p>

<p>Me, finally throwing myself into the cold water.
Notice that all swimming happens at the bottom of some rocky cliffs.
There is no beach.</p>

<p><img loading="lazy" src="2025-05-24-home-7.jpg" alt="2025-05-24-home-7.jpg" /></p>

<p>Afrikanische Schmucklilie<br>
Agapanthus africanus</p>

<p><img loading="lazy" src="2025-05-24-home-8.jpg" alt="2025-05-24-home-8.jpg" /></p>

<p>Milzfarn<br>
Asplenium ceterach</p>

<p><img loading="lazy" src="2025-05-24-home-9.jpg" alt="2025-05-24-home-9.jpg" /></p>

<p>Westlicher Erdbeerbaum<br>
Arbutus unedo</p>

<p><img loading="lazy" src="2025-05-24-home-10.jpg" alt="2025-05-24-home-10.jpg" /></p>

<p>And we saw more snakes! In total, we must have seen around six snakes in two weeks. 😍</p>

<p>I suspect most of the snakes we saw were Aesculapian snakes.</p>

<p>Äskulapnatter<br>
Zamenis longissimus</p>

<p><img loading="lazy" src="2025-05-24-home-11.jpg" alt="2025-05-24-home-11.jpg" /></p>

<p>Mastixstrauch<br>
Pistacia lentiscus</p>

<p><img loading="lazy" src="2025-05-24-home-13.jpg" alt="2025-05-24-home-13.jpg" /></p>

<p>On the way back we saw the bridge to Dubrovnik and the new harbour for all the luxury boats.</p>

<p><img loading="lazy" src="2025-05-24-home-12.jpg" alt="2025-05-24-home-12.jpg" /></p>

<p>So big. Soo big. 😔</p>

<p><img loading="lazy" src="2025-05-24-home-14.jpg" alt="2025-05-24-home-14.jpg" /></p>

<p><a class="tag" href="/search/?q=%23Croatia">#Croatia</a> <a class="tag" href="/search/?q=%23Pictures">#Pictures</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-05-24-home>

---

## 2025-05-23 Sumartin, Dubrovnik

date: 2025-05-27, from: Alex Schroeder's Blog

<h1 id="2025-05-23-sumartin-dubrovnik">2025-05-23 Sumartin, Dubrovnik</h1>

<p>When we left our hotel in Postira, the receptionist asked where we were going next. “Dubrovnik,” we said. “Oh, you will love it,” she said. “And,” she added, “the price for walking on the old city walls is insane but it’s still worth it.” She was right. It costs 40€ per person, but it’s the kind of thing you just do once in a lifetime, as a tourist.</p>

<p>We started in Postira on the island of Brač, right across Split, but we had decided to take a different ferry and drove all the way to Sumartin and took the ferry to Makarska, then drove to Dubrovnik. Once at the hotel at Lapad Bay we put on our jogging shoes and jogged to the old town, paid the price and walked around the old town. After that, the sun started sinking and we did a quick tour on foot and jogged back.</p>

<p>Yet another marina, yet another church.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-1.jpg" alt="" /></p>

<p>Usually, the working vessels are in different harbours or out at sea but here&rsquo;s where we saw some of them up close.
All these crates.
It makes me want to eat less seafood.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-2.jpg" alt="" /></p>

<p>We didn&rsquo;t want to stay in the car so we went to the upper deck. It was cold and windy.
We ended up staying in the car after about half an hour.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-3.jpg" alt="" /></p>

<p>As we drove along the coast, the landscape changed.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-4.jpg" alt="" /></p>

<p>We took a break, had some coffee, croissant and a kind of pistachio cake.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-5.jpg" alt="" /></p>

<p>Finally in Dubrovnik after a long drive, with our running shoes or sandals, running towards the old town. There are plenty of hotels built into the rock face, but sometimes you can find angles were it all looks wild and green.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-6.jpg" alt="" /></p>

<p>We paid the outrageous price and climbed those walls.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-7.jpg" alt="" /></p>

<p>This is May. This is off-season. This is why it&rsquo;s so empty.
But practically everybody you see is a tourist and practically every shop you see is a restaurant or a souvenir shop.
It&rsquo;s like a stage.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-8.jpg" alt="" /></p>

<p>This is the entrance into the city. A mass of fortifications and rings.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-9.jpg" alt="" /></p>

<p>Still the entrance, with a bridge over the former ditch.
And people and cars.
Happily, no cars inside the old town.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-10.jpg" alt="" /></p>

<p>This cove is protected by another fort, disconnected from the main walls.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-11.jpg" alt="" /></p>

<p>The soldiers used to be smaller, I guess.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-12.jpg" alt="" /></p>

<p>Inside the walls, there are still ruins.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-13.jpg" alt="" /></p>

<p>Outside the walls, the rock face.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-14.jpg" alt="" /></p>

<p>There&rsquo;s a hill behind the old town and a cable car that goes up there.</p>

<p>You can see the wall with people on it on the left, and you can see that sometimes the ruins meld into patios and terraces and there are still people living there.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-15.jpg" alt="" /></p>

<p>Claudia looking into the evening sun.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-16.jpg" alt="" /></p>

<p>Looking back at that little cove protected by that separate fort.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-17.jpg" alt="" /></p>

<p>Looking back inside into courtyards and houses interspersed with crumbling walls.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-18.jpg" alt="" /></p>

<p>Somebody built a tunnel through the city wall and now there&rsquo;s a coffee house on the outside, on the rock face between city walls and the sea.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-19.jpg" alt="" /></p>

<p>Claudia is taking pictures of gardens and orchards within the city walls.
There were some cats down there as well and I think at least half the tourists were meowing from the walls, trying to get some sort of reaction out of the cats.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-20.jpg" alt="" /></p>

<p>Looking across an orchard into an alley.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-21.jpg" alt="" /></p>

<p>Sometimes the interesting plants grow on inaccessible roofs. And in the back is a school, I guess, because there&rsquo;s one of these multi-functional sport courts visible. Notice how all of this is invisible from the alleys.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-22.jpg" alt="" /></p>

<p>More ruins. And a guy chilling in the back, looking at his phone.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-23.jpg" alt="" /></p>

<p>I guess the 40€ per person go towards wall maintenance. There was a part along the walls where new constructions were happening.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-24.jpg" alt="" /></p>

<p>After having circled around half the old town, there&rsquo;s a bigger harbour, also protected by extra forts.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-25.jpg" alt="" /></p>

<p>Looking at the rooftop landscape makes me think of books and games where thieves run around on these roofs, jumping across alleys. Never!!</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-26.jpg" alt="" /></p>

<p>The old moat is a road and sometimes there are parking lots.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-27.jpg" alt="" /></p>

<p>The sun began to set. Notice another basketball court in the lower right corner.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-28.jpg" alt="" /></p>

<p>Stairs.</p>

<p><img loading="lazy" src="2025-05-23-dubrovnik-29.jpg" alt="" /></p>

<p><a class="tag" href="/search/?q=%23Croatia">#Croatia</a> <a class="tag" href="/search/?q=%23Pictures">#Pictures</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-05-23-dubrovnik>

---

## May 26, 2025 

date: 2025-05-27, from: Heather Cox Richardson blog

President Donald J. 

<br> 

<https://heathercoxrichardson.substack.com/p/may-26-2025>

---

## Remembering a Good Man

date: 2025-05-27, from: Doc Searls (at Harvard), New Old Blog

Pop loved being a soldier. He served in the U.S. Army Coastal Artillery Corps in the 1920s, stationed at Fort Hancock in New Jersey&#8217;s Sandy Hook. Here is a photo collection that he shot there during that time. The only dates I know for sure during that time in his life are 1929-1930, when he [&#8230;] 

<br> 

<https://doc.searls.com/2025/05/26/remembering-a-good-man/>

---

## The Internet of Consent

date: 2025-05-27, updated: 2025-05-27, from: Anil Dash blog

 

<br> 

<https://anildash.com/2025/05/27/2025-05-27-internet-of-consent/>

---

## The Internet of Consent

date: 2025-05-27, updated: 2025-05-27, from: Anil Dash blog

 

<br> 

<https://anildash.com/2025/05/27/internet-of-consent/>

---

## The Talk Show: ‘A Monkey on a Rock’

date: 2025-05-26, updated: 2025-05-26, from: Daring Fireball

 

<br> 

<https://daringfireball.net/thetalkshow/2025/05/26/ep-422>

---

## How to Make Money on Trump’s Memecoin (Short It)

date: 2025-05-26, updated: 2025-05-26, from: Daring Fireball

 

<br> 

<https://www.theverge.com/cryptocurrency/674327/trump-coin-short-sell-hedge-contest-dinner-winner>

---

## ‘Sony: Because Caucasians Are Just Too Damn Tall’

date: 2025-05-26, updated: 2025-05-26, from: Daring Fireball

 

<br> 

<https://www.youtube.com/watch?v=96iJsdGkl44>

---

## The New York Times Digs in on the ‘Young Chinese Women Have Small Fingers’ Claim

date: 2025-05-26, updated: 2025-05-26, from: Daring Fireball

 

<br> 

<https://bsky.app/profile/joolia.bsky.social/post/3lpw5thw4e22f>

---

## Kristi Noem vs. Harvard: What Their Language Reveals.

date: 2025-05-26, from: James Fallows, Substack

'In the life of the human spirit, words are action,' a US president said long ago. Let's look at words from a cabinet secretary who doesn't know what 'habeas corpus' means, vs. a university that does. 

<br> 

<https://fallows.substack.com/p/kristi-noem-vs-harvard-what-their>

---

## 37signals’s Hey Is Finally for Sale (in the US) From Its iPhone App

date: 2025-05-26, updated: 2025-05-26, from: Daring Fireball

 

<br> 

<https://world.hey.com/dhh/hey-is-finally-for-sale-on-the-iphone-a08cb218>

---

## May 25, 2025

date: 2025-05-26, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/164493764/c790410d844af273b39fb522ac48f048.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/164493764/c790410d844af273b39fb522ac48f048.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/may-25-2025-076>

---

## Ecology vs. Egology

date: 2025-05-26, from: Doc Searls (at Harvard), New Old Blog

Back in 2008, while working for a startup, Hugh MacLeod and I contrasted the distributed, decentralized, participatory tech development culture of the time with the centralized, top-down kind that had dominated for the prior few decades—and, let&#8217;s face it, still does today. Hugh drew the cartoon above to illustrate what we thought was going on [&#8230;] 

<br> 

<https://doc.searls.com/2025/05/26/ecology-vs-egology/>

---

## Epub Printing for Prison Mail

date: 2025-05-26, updated: 2025-05-26, from: Russell Graves, Syonyk's Project Blog

 

<br> 

<https://www.sevarg.net/2025/05/26/prison-mail-part-3-epubs-and-backgrounds/>

---

## Helping Harvard?

date: 2025-05-26, from: Dave Winer's Scripting News

<p>I feel like I should help Harvard, because Harvard helped me, and if you use podcasting or RSS, it helped you too. </p>
<p>In 2002, I was ready to leave Silicon Valley, and <a href="https://cyber.harvard.edu/rss/rss.html">RSS</a> needed a safe place to be parked, or I felt the tech industry would keep trying to own it, and make it far more complicated than it needed to be. And I wanted the intellectuals of academia to blog. </p>
<p>So I knocked on the door at Harvard, because I heard they had a program that was close to being up my alley -- the Berkman Center for the Internet and Society. My friend <a href="https://en.wikipedia.org/wiki/John_Perry_Barlow">John Perry Barlow</a> was a founding member. I figured if they could handle a Grateful Dead lyricist, and general muck-raking rabble-rouser like <a href="https://daytona.scripting.com/search?q=Barlow">Barlow</a>, they might be able to appreciate someone of my creative caliber. They accepted me, gave me run of the place, defended us when we got in trouble and great things came from it. But I always felt like a bit of a thorn in the side of the great elite Harvard University. </p>
<p>Yet I really really really appreciate what they did, but I think what I have to offer might not be appreciated. </p>
<p>I think they should take advantage of their unique perspective on what's happening in the US, and cover it in a way that no news organization would or could, but the way a great, challenged, <a href="https://www.harvard.edu/in-focus/harvard-and-the-american-revolution/">revolutionary</a> academic institution would. And it might be that the people who would destroy it don't want to take the risk that Harvard might be heard, and it might be a bit premature for them to think they can take control of an organization that in a sense represents the best of the USA since 1636. </p>
<p>PS: When Harvard was 140 years old it stood against the King of England in the <a href="https://news.harvard.edu/gazette/story/2011/10/harvards-year-of-exile/">American Revolution</a>. The Continental Army lived on the Harvard Campus in 1775 and 1776. The precedent for revolution is baked into the soul of Harvard, it seems to me. </p>
 

<br> 

<http://scripting.com/2025/05/26/133157.html?title=helpingHarvard>

---

## The Halliburton Choke

date: 2025-05-26, from: Dave Winer's Scripting News

<p>I never really had any opinion about the Indiana Pacers. </p>
<p>Honestly I was surprised they even made the playoffs this year.</p>
<p>And they did catch the Knicks with their pants down, after clearing out the reigning champion Boston Celtics in the second round of the playoffs this year, it took some time before they found their balance again. We learned, again, that we need to have some minutes every game where Brunson takes a long well-deserved rest, so there's room for KAT to lead the team (our other all-star and all-NBA player), and make sure the other Knicks get a chance to shine, and give the Pacers something to guess about. Brunson is great at charging the rim against all odds, but you don't make the Finals if that's the only trick in your quiver. Hopefully we don't have to keep learning that lesson. </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/05/26/halliburtonChoke.png"></center>The Halliburton Choke.</div></p>
<p>My advice for Halliburton, take a moment and breathe and realize <i>this series isn't over.</i> The Knicks have a say in it too. And the two teams are remarkably well matched. And despite what the pundits say, there's nothing very special about the Pacers, in fact they have some growing up to do. Halliburton, if they should happen to win another game this year, should learn that either of the first two games in the series could easily have gone the other way. And so should the freaking pundits, when they focus on how great the Pacers were and how pitiful the Knicks are. The Pacers won the first game by three points, and the second one by five. And the Knicks won the third game by six. Could have gone the other way too. And the Knicks are fucking great at overcoming 20-point deficits. The absolute best in the NBA. I have to remember that too, because there was a point in yesterday's game where I gave up. Dave of little faith. </p>
<p>They will call this dance The Halliburton Choke. <a href="https://www.ebay.com/itm/155665636105">Reggie Miller</a> made it famous and Halliburton made it ridiculous, and vice versa.  </p>
 

<br> 

<http://scripting.com/2025/05/26/123801.html?title=theHalliburtonChoke>

---

## Remembering Robbie

date: 2025-05-26, from: Robert Reich's blog

A Memorial Day reflection 

<br> 

<https://robertreich.substack.com/p/remembering-robbie>

---

## Excellent tools: EditGPT – an AI powered review and edit suite for writers

date: 2025-05-26, from: Chris Heilmann's blog

There is no doubt that AI can help a lot when writing documents. There is also no doubt that it can be detrimental to both quality and the writing process if the AI-powered tool doesn&#8217;t have a user experience tailored to the task at hand. Generated Text and Its Downsides We live in a world [&#8230;] 

<br> 

<https://christianheilmann.com/2025/05/26/excellent-tools-editgpt-an-ai-powered-review-and-edit-suite-for-writers/>

---

## May 25, 2025 

date: 2025-05-26, from: Heather Cox Richardson blog

Tomorrow is Memorial Day, the day Americans have honored since 1868, when we mourn those military personnel who have died in the service of the country&#8212;that is, for the rest of us. 

<br> 

<https://heathercoxrichardson.substack.com/p/may-25-2025>

---

## Monday 26 May, 2025

date: 2025-05-25, from: John Naughton's online diary

Saturday morning, wet The view from our hotel room in Kent. Quote of the Day “Ideology is like breath: You never smell your own.” Joan Robinson Musical alternative to the morning’s radio news The Byrds &#124; The ballad of Easy &#8230; <a href="https://memex.naughtons.org/monday-26-may-2025/40861/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-26-may-2025/40861/>

---

## May 24, 2025

date: 2025-05-25, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/164439684/c07e53494f56e752cf9226f17c837bb8.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/164439684/c07e53494f56e752cf9226f17c837bb8.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/may-24-2025-129>

---

## Sunday caption: Keep Out

date: 2025-05-25, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-keep-out>

---

## Pete Rose

date: 2025-05-25, from: Dave Winer's Scripting News

<p>It was so predictable. Shortly after Pete Rose died, baseball <a href="https://sports.yahoo.com/article/calls-escalate-against-rob-manfred-220702792.html">rescinded his lifetime ban</a>, and <a href="https://www.google.com/search?q=May+13%2C+2025%2C+Manfred+instituted+a+change">now he can</a> be <a href="https://www.google.com/search?q=pete+rose+hall+of+fame+induction">inducted</a> into the Hall of Fame. </p>
<p>I grew up with a Pete Rose ethos, why shouldn't I go for it all? I feel so sad that he couldn't have gotten the acceptance he so totally deserved. How could we not forgive him? He was Charlie Hustle! <span class="spOldSchoolEmoji">❤️</span></p>
<p>A role model in so many ways, and like all heroes he had fatal flaws. You may think he set a bad example for kids, but I say the opposite. You don't give kids enough credit. </p>
<p>What he taught was that a man with average athletic ability could will himself to achieve. </p>
<p>He had <a href="https://en.wikipedia.org/wiki/Pete_Rose#Records_and_achievements">more hits</a> than any baseball player ever. </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="//s3.amazonaws.com/scripting.com/images/2025/05/25/peteRose.png"></center><a href="https://en.wikipedia.org/wiki/Pete_Rose">Pete Rose</a> was <a href="https://www.espn.com/classic/biography/s/rosepete000824.html">Charlie Hustle</a>.</div></p>
 

<br> 

<http://scripting.com/2025/05/25/155507.html?title=peteRose>

---

## Carole King

date: 2025-05-25, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/carole-king>

---

## 
                TCP/IP on Windows for Workgroups 3.11 in 2025 under QEMU
            

date: 2025-05-25, updated: 2025-05-25, from: Uninformative blog

 

<br> 

<https://www.uninformativ.de/blog/postings/2025-05-25/0/POSTING-en.html>

---

## The reviews are in for Face with Tears of Joy

date: 2025-05-25, from: Shady Characters blog

<p>The reviews for <cite>Face with Tears of Joy</cite> have started to come in, and I am happy (and relieved) to say that reviewers seem to be enjoying the book quite a bit! Here are a few quotes:</p>
<blockquote><p>Houston chronicles the rise of the emoji in this fun romp through the evolution of digital language…equal parts informative and delightful.</p><a class="more-link" href="https://shadycharacters.co.uk/2025/05/the-reviews-are-in-for-face-with-tears-of-joy/">Read more →</a></blockquote> 

<br> 

<https://shadycharacters.co.uk/2025/05/the-reviews-are-in-for-face-with-tears-of-joy/>

---

## Sunday thought

date: 2025-05-25, from: Robert Reich's blog

A new phase of Trump neofascism 

<br> 

<https://robertreich.substack.com/p/sunday-thought-8c5>

---

## May 24, 2025 

date: 2025-05-25, from: Heather Cox Richardson blog

On Thursday the Trump administration told Harvard University that because it had not handed over information on foreign students&#8217; protest activities, violent activity, and coursework, the university had &#8220;lost [the] privilege&#8221; of enrolling foreign students. 

<br> 

<https://heathercoxrichardson.substack.com/p/may-24-2025>

---

**@Dave Winer's Scripting News** (date: 2025-05-25, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2021/05/30/spikeLeeKnicksFan.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">A day away from the blog. Really enjoying the NBA playoffs, even though the Knicks are still in it. Nice turnaround after the first quarter for the Minnesotas. Still hoping for a finals between them and the Knicks. It'll be interesting to see how the Knicks change their lineup. Hopefully no more isolation-ball with Brunson. It's boring and doesn't work. Melo 2.0. Might make sense if he was LeBron, but he's not and LeBron's game is boring anyway. Let's do this well, win or lose. 

<br> 

<http://scripting.com/2025/05/24.html#a011153>

---

## May 23, 2025

date: 2025-05-24, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/164379778/4be0df6c72cf48d7669b39c2dda8b49b.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/164379778/4be0df6c72cf48d7669b39c2dda8b49b.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/may-23-2025-17e>

---

## ★ Idiocy or Jackassery, You Make the Call: Tripp Mickle on Whether Trump’s ‘Made in America’ iPhone Is a Fantasy

date: 2025-05-24, updated: 2025-05-26, from: Daring Fireball

My chances of ever landing a job at The New York Times continue to sink. 

<br> 

<https://daringfireball.net/2025/05/idiocy_or_jackassery_you_make_the_call_made_in_america_iphone>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-05-24, from: Miguel de Icaza Mastondon feed)

<p>Dear Apple SwiftUI friends, this bug is killing the vibe of our users: FB16257334</p><p>Repro for those in the community:</p><p><a href="https://github.com/feedback-assistant/reports/issues/594" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">github.com/feedback-assistant/</span><span class="invisible">reports/issues/594</span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114563260894225902>

---

## The New Fascism | Coffee Klatch for May 24, 2025

date: 2025-05-24, from: Robert Reich's blog

With Heather Lofthouse and yours truly, Robert Reich 

<br> 

<https://robertreich.substack.com/p/the-new-fascism-coffee-klatch-for>

---

## May 23, 2025 

date: 2025-05-24, from: Heather Cox Richardson blog

I&#8217;m going to take an early night tonight, but I want to record three things that jumped out at me today because they seem to tell a story. 

<br> 

<https://heathercoxrichardson.substack.com/p/may-23-2025>

---

## Sad story of http.DefaultTransport

date: 2025-05-24, from: Anton Zhiyanov blog

A tale of false flexibility and leaking abstractions. 

<br> 

<https://antonz.org/default-transport/>

---

## Weeknotes: May 17-23, 2025

date: 2025-05-24, from: Tracy Durnell Blog

Win of the week: new client accepted my budget proposal! 🙌 Looking forward to: three day weekend! hoping to make it to Bonus Galactic Homebrew Website Club Stuff I did: 7.75 hours consulting 3.5 hours writing went to see a matinee of Sinners &#8212; somebody gave us movie passes like 6 years ago so it was the [&#8230;] 

<br> 

<https://tracydurnell.com/2025/05/23/weeknotes-may-17-23-2025/>

