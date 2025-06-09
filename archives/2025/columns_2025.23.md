---
title: columns
updated: 2025-06-09 14:07:37
---

# columns

(date: 2025-06-09 14:07:37)

---

## 2025-05-27 Alt text on this blog

date: 2025-06-09, from: Alex Schroeder's Blog

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

<p>This is what I added to my <code>view.html</code> template for <a href="Odd%CE%BC">Oddμ</a>:</p>

<pre><code>&lt;script type=&quot;text/javascript&quot;&gt;
function addTitle() {
  const images = document.getElementsByTagName(&quot;img&quot;);
  for (let img of images) {
    const alt = img.getAttribute(&quot;alt&quot;);
    const title = img.getAttribute(&quot;title&quot;);
    if (alt != null &amp;&amp; title == null) {
      img.setAttribute(&quot;title&quot;, alt);
    }
  }
}
window.addEventListener('load', addTitle);
&lt;/script&gt;
</code></pre>

<p><strong>2025-06-09</strong>. Tweaked the JavaScript. I&rsquo;m now replacing the <code>img</code> element with a <code>figure</code> element, moving the <code>img</code> element into the <code>figure</code> and adding a <code>figcaption</code> element. The caption is rendered smaller and italic via CSS.</p>

<p><img loading="lazy" src="2025-05-27-alt-text-7.jpg" alt="Example" /></p>

<p>Code:</p>

<pre><code>function addTitle() {
  const images = document.getElementsByTagName(&quot;img&quot;);
  for (let img of images) {
    const parent = img.parentNode;
    const figure = document.createElement(&quot;figure&quot;);
    const figCaption = document.createElement(&quot;figcaption&quot;);
    parent.replaceChild(figure, img);
    figure.append(img);
    figure.append(figCaption);
    const alt = img.getAttribute(&quot;alt&quot;);
    const title = img.getAttribute(&quot;title&quot;);
    figCaption.textContent = alt;
    if (alt != null &amp;&amp; title == null) {
      img.setAttribute(&quot;title&quot;, alt);
    }
  }
}
window.addEventListener('load', addTitle);
</code></pre> 

<br> 

<https://alexschroeder.ch/view/2025-05-27-alt-text>

---

## 2025-05-24 Last day in Croatia

date: 2025-06-09, from: Alex Schroeder's Blog

<h1 id="2025-05-24-last-day-in-croatia">2025-05-24 Last day in Croatia</h1>

<p>We went for a bath and a walk and then that was it. Bye-bye Croatia.</p>

<p>The most dangerous thing we had encountered surely was Donat water, available in supermarkets everywhere, with 1000 mg of magnesium per litre. Liquefies bowels! 😵‍💫</p>

<p>Claudia eating breakfast.</p>

<p><img loading="lazy" src="2025-05-24-home-1.jpg" alt="Claudia" /></p>

<p>Me, having eaten breakfast.</p>

<p><img loading="lazy" src="2025-05-24-home-2.jpg" alt="Alex" /></p>

<p>A carpenter bee, eating breakfast.</p>

<p>Campanula versicolor</p>

<p><img loading="lazy" src="2025-05-24-home-3.jpg" alt="A black bee in a flower" /></p>

<p>Kahle Drillingsblume<br>
Bougainvillea glabra</p>

<p><img loading="lazy" src="2025-05-24-home-4.jpg" alt="lots of pink flowers" /></p>

<p>Ferns growing from rock walls.</p>

<p>Frauenhaar<br>
Adiantum capillus-veneris</p>

<p><img loading="lazy" src="2025-05-24-home-5.jpg" alt="a leafy plant growing from a stone wall" /></p>

<p>Claudia swimming in Lapad bay.</p>

<p><img loading="lazy" src="2025-05-24-home-6.jpg" alt="Claudia in the water, raising her hands" /></p>

<p>Me, finally throwing myself into the cold water.
Notice that all swimming happens at the bottom of some rocky cliffs.
There is no beach.</p>

<p><img loading="lazy" src="2025-05-24-home-7.jpg" alt="me, diving head-first into the water" /></p>

<p>Afrikanische Schmucklilie<br>
Agapanthus africanus</p>

<p><img loading="lazy" src="2025-05-24-home-8.jpg" alt="a flower with the ocean in the background" /></p>

<p>Milzfarn<br>
Asplenium ceterach</p>

<p><img loading="lazy" src="2025-05-24-home-9.jpg" alt="fern growing from a stone wall" /></p>

<p>Westlicher Erdbeerbaum<br>
Arbutus unedo</p>

<p><img loading="lazy" src="2025-05-24-home-10.jpg" alt="small, round fruit-like things growing on a tree" /></p>

<p>And we saw more snakes! In total, we must have seen around six snakes in two weeks. 😍</p>

<p>I suspect most of the snakes we saw were Aesculapian snakes.</p>

<p>Äskulapnatter<br>
Zamenis longissimus</p>

<p><img loading="lazy" src="2025-05-24-home-11.jpg" alt="a snake on the path" /></p>

<p>Mastixstrauch<br>
Pistacia lentiscus</p>

<p><img loading="lazy" src="2025-05-24-home-13.jpg" alt="big white flowers" /></p>

<p>On the way back we saw the bridge to Dubrovnik and the new harbour for all the luxury boats.</p>

<p><img loading="lazy" src="2025-05-24-home-12.jpg" alt="a huge bridge and below it, a huge luxury boat" /></p>

<p>So big. Soo big. 😔</p>

<p><img loading="lazy" src="2025-05-24-home-14.jpg" alt="an even bigger boat" /></p>

<p><a class="tag" href="/search/?q=%23Croatia">#Croatia</a> <a class="tag" href="/search/?q=%23Pictures">#Pictures</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-05-24-home>

---

**@Dave Winer's Scripting News** (date: 2025-06-09, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/08/01/picklesAplenty.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I use ChatGPT for all kinds of work problems, and for a lot of other stuff too. It can collaborate, and it has much more broad and deep knowledge than I do, than any human. No one knows whether it thinks or is self-aware, any more than we know whether humans think or are self-aware. For that reason, I think, ironically, there's no point discussing it, we'll never get an answer, because we have no idea what intelligence or thinking is. But it is every bit as thoughtful as any human I have ever worked with. And the whole business about pattern-recognition is imho bs. People who say that are just repeating what they heard from someone else. From a user standpoint, it's absolutely nothing like pattern recognition. 

<br> 

<http://scripting.com/2025/06/09.html#a182445>

---

## June 8, 2025

date: 2025-06-09, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/165562331/a34b26fed02155c2a1c59143b1facc0e.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/165562331/a34b26fed02155c2a1c59143b1facc0e.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/june-8-2025-c7c>

---

## [Sponsor] DetailsPro

date: 2025-06-09, updated: 2025-06-09, from: Daring Fireball

 

<br> 

<https://detailspro.app?utm_campaign=dfwwdc25>

---

**@Dave Winer's Scripting News** (date: 2025-06-09, from: Dave Winer's Scripting News)

I went to the <a href="https://daytona.scripting.com/search?q=dnc">DNC</a> in 2004 and 2008. Both times I heard from friends later that TV had been focused on riots, which confused the hell out of me, because I didn't see anything. There was some obnoxious stuff at the 2008 convention in Denver, we had to walk a gauntlet of ugly pictures of dead fetuses going in and out of the convention center. But in neither case were there <i>any</i> disturbances. I see the same sort of thing happening in LA now. 

<br> 

<http://scripting.com/2025/06/09.html#a141836>

---

## The game of being rich

date: 2025-06-09, from: Dave Winer's Scripting News

<p>Some random thoughts about wealth.</p>
<p>Suppose you're an average middle-class person who works for a tech company when the company is bought out for a huge amount of money and your stock is now worth $10 million. It's liquid today. You just received a check for $10 million. What do you do? </p>
<p>Answer: You buy things to see if there was a reason to make the money, and it turns out there really wasn't. You would have been just as happy in the big house in the rich neighborhood or the smaller house in a more modest place. </p>
<p>Then what if you reach another level, now you have a check in your hand for $100 million, then $1 billion, then $25 billion and keep going. It doesn't stop there. At each level you are compelled to find something fantastic that you can use that money for. Some power that the new level of wealth gets you. </p>
<p>We saw in <a href="https://daytona.scripting.com/search?q=succession">Succession</a>, they played out the lunacy, the people use a lot of space, but they're still just people. If they loved someone or someone loved them, they'd be much happier than all the happiness all that money ever gave them. </p>
<p>Having such large useless amounts of money is a not only a problem for the rich folk, we've found out, it's a problem for everyone else too, because eventually they get around to buying political power and they start using the money to change other people lives, always for the worse, it seems. </p>
<p>We need a new game that only super rich people can play that doesn't hurt the rest of us. I'm not advising anyone to do anything. But I think this is what I've been writing about on my blog since the beginning. </p>
<p>I didn't understand why, for example, Evan Williams didn't just make technology and give it away, after having made billions from Twitter. </p>
<p>Why did Bill Gates have to accumulate so much money and threaten the independence of the open web, a miracle, to get it? Why not use your power to make miracles <i>before</i> you retire, start doing the good you were promising to do later, right now? What good, in hindsight, did the extra billions do for anyone, including Gates? When his power was at his peak, in the 90s, he could have done a much bigger thing for the world, give us a free new level of communication that would be available equally to everyone. </p>
<p>Elon Musk, having done some incredible things in computers, finance, cars and space, had to invent new challenges that only his wealth can buy, and eventually came up with things that only the US Treasury could buy, and some things like relocating the human species on Mars, that no amount of money can buy (or so scientists say). He needs to receive an award of love and gratitude for not using his wealth to make everyone else totally miserable (including himself, it seems).</p>
<p>PS: I haven't yet read <a href="https://daytona.scripting.com/search?q=%22evan%20osnos%22">Evan Osnos'</a> new <a href="https://www.amazon.com/Haves-Have-Yachts-Dispatches-Ultrarich/dp/1668204487">book</a> about billionaires. </p>
<p>PPS: See also: <a href="http://scripting.com/davenet/2000/10/19/transcendentalMoney.html">Transcendental Money</a>, or money that replenishes itself, ie money that transcends time. </p>
<p>PPPS: Another one: <a href="http://scripting.com/2016/05/31/1296.html">Your human-size life</a>. </p>
 

<br> 

<http://scripting.com/2025/06/09/131523.html?title=theGameOfBeingRich>

---

## Monday

date: 2025-06-09, from: Doc Searls (at Harvard), New Old Blog

A winner for me anyway. Online Sports Betting is for Losers now has more than 3000 reads. Not quite universal. After my wife noticed that the Apple USB-C wired earbuds she got for her new iPhone 16 wouldn&#39;t play when plugged into either of the USB-C ports in her MacBook Air, I went looking for USB-C [&#8230;] 

<br> 

<https://doc.searls.com/2025/06/09/monday/>

---

## New Way to Track Covertly Android Users

date: 2025-06-09, updated: 2025-06-08, from: Bruce Schneier blog

<p>Researchers have <a href="https://localmess.github.io/">discovered</a> a new way to covertly track Android users. Both Meta and Yandex were using it, but have suddenly stopped now that they have been caught.</p>
<p>The <a href="https://arstechnica.com/security/2025/06/meta-and-yandex-are-de-anonymizing-android-users-web-browsing-identifiers/">details</a> are interesting, and worth reading in detail:</p>
<blockquote><p>&#62;Tracking code that Meta and Russia-based Yandex embed into millions of websites is de-anonymizing visitors by abusing legitimate Internet protocols, causing Chrome and other browsers to surreptitiously send unique identifiers to native apps installed on a device, <a href="https://localmess.github.io/">researchers have discovered</a>. Google says it&#8217;s investigating the abuse, which allows Meta and Yandex to convert ephemeral web identifiers into persistent mobile app user identities...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/06/new-way-to-track-covertly-android-users.html>

---

## Trump’s Police State

date: 2025-06-09, from: Robert Reich's blog

It endangers all of us 

<br> 

<https://robertreich.substack.com/p/trumps-police-state>

---

## June 8, 2025

date: 2025-06-09, from: Heather Cox Richardson blog

Flatbed train cars carrying tanks rolled into Washington, D.C., yesterday in preparation for the military parade planned for June 14. 

<br> 

<https://heathercoxrichardson.substack.com/p/june-8-2025>

---

## Monday 9 June, 2025

date: 2025-06-09, from: John Naughton's online diary

Closed for business Quote of the Day “I find television very educating. Every time somebody turns on the set, I go into the other room and read a book.” Groucho Marx Musical alternative to the morning’s radio news František Xaver &#8230; <a href="https://memex.naughtons.org/monday-9-june-2025/40904/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-9-june-2025/40904/>

---

## A Happy Hundredth to Gail Jesswein

date: 2025-06-09, from: Doc Searls (at Harvard), New Old Blog

Today is the 100th birthday of Gail Jesswein, my father-in-law. Gail was the father of eight, the first of whom is my wife Joyce. Gail was a merchant mariner during World War II, when the casualty rate was one in twenty-six, higher than any U.S. military branch. On shore after the end of the war, [&#8230;] 

<br> 

<https://doc.searls.com/2025/06/08/a-happy-hundredth/>

---

## An Eve of WWDC Spitball Theory on the Rumored New ‘Games’ App

date: 2025-06-09, updated: 2025-06-09, from: Daring Fireball

 

<br> 

<https://9to5mac.com/2024/10/22/apple-new-app-store-like-app-games/>

---

## Breaking Down Why Apple TVs Are Privacy Advocates’ Go-To Streaming Device

date: 2025-06-09, updated: 2025-06-09, from: Daring Fireball

 

<br> 

<https://arstechnica.com/gadgets/2025/06/all-the-ways-apple-tv-boxes-do-and-mostly-dont-track-you/>

---

## Apple Researchers Publish Paper on the Limits of Reasoning Models (Showing That They’re Not Really ‘Reasoning’ at All)

date: 2025-06-09, updated: 2025-06-09, from: Daring Fireball

 

<br> 

<https://machinelearning.apple.com/research/illusion-of-thinking>

---

## Daikin heat pump WiFi woes

date: 2025-06-09, from: Alex Pearce blog (CERN)

Troubleshooting WiFi connection problems with the Daikin Altherma MMI and Onecta app, ultimately due to WPA3 incompatibility. 

<br> 

<https://alex.pearwin.com/2025/06/daikin-heat-pump-wifi-woes/>

---

## Hating Trump More Won't Make Things Better

date: 2025-06-08, updated: 2025-06-08, from: Ron Garret

It has been nearly five months now since I published my open letter to Democratic candidates and organizations.&nbsp; Since then I have, unsurprisingly, received dozens of texts and emails asking me to "Donate $5 now!"&nbsp; For a while I responded to every one pointing them to my Open Letter and asking them to read it.&nbsp; I was expecting (hoping for?) one of three responses.&nbsp; 1) "You are 

<br> 

<https://blog.rongarret.info/2025/06/hating-trump-more-wont-make-things.html>

---

## American Idiot(s)

date: 2025-06-08, from: Michael Moore's blog

There is an explanation to the madness we are witnessing &#8212; and, once again, the conscience of the country, the Pulitzer Prize winner Chris Hedges, tells us exactly what we don&#8217;t want to hear. 

<br> 

<https://www.michaelmoore.com/p/american-idiots>

---

## Sunday caption: Resolve

date: 2025-06-08, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-resolve>

---

## What to Learn From China.

date: 2025-06-08, from: James Fallows, Substack

Chinese leaders have tried to sandblast away awkward chapters from their modern history. Here some parts Americans need to learn about&#8212;especially now. 

<br> 

<https://fallows.substack.com/p/what-to-learn-from-china>

---

## Gist of Go: Data races

date: 2025-06-08, from: Anton Zhiyanov blog

Two goroutines racing for the same data is a recipe for disaster. 

<br> 

<https://antonz.org/go-concurrency/data-races/>

---

## June 7, 2025

date: 2025-06-08, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/165478842/73870964a84499fcca47a638d65ebd6d.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/165478842/73870964a84499fcca47a638d65ebd6d.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/june-7-2025-781>

---

## the printer that transcends dimensions and corrupts reality

date: 2025-06-08, from: Geoffrey Hunntley's blog

<blockquote>The IT department never questioned why the new printer arrived in a crate marked with eldritch symbols. They were just happy to finally have a replacement for the ancient LaserJet that had been serving the accounting floor since time immemorial.<br><br>Sarah from IT support was the first to notice something</blockquote> 

<br> 

<https://ghuntley.com/ideas/>

---

## ★ Gurman Says New UI Is Named ‘Liquid Glass’ (and Makes a Terrible Analogy Regarding Apple’s Risk With Falling Behind on AI)

date: 2025-06-08, updated: 2025-06-08, from: Daring Fireball

If it takes Apple as long to have its own competitive LLMs as it did to have its own competitive web browser, I suspect they’ll soon be paying to use the LLMs that are owned and controlled by others, not charging the others for the privilege of reaching Apple’s platform users. 

<br> 

<https://daringfireball.net/2025/06/gurman_liquid_glass_terrible_analogy>

---

**@Dave Winer's Scripting News** (date: 2025-06-08, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/10/29/grandpaSimpson.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">With ChatGPT there's no excuse for a congressperson not validating every word in every bill. They could ask the bot to read the bill and call out any provisions that contradict your previous positions. It knows where you stand even if you've never written it down. I've found it can do that for my work. I'm sure it could do it for a legislator. Even better, news orgs could do that for them. Or validate a bill against their campaign platforms. "I promise never to touch Social Security" could be validated against pending legislation. The time delay part of this isn't an excuse any longer. 

<br> 

<http://scripting.com/2025/06/08.html#a160219>

---

## The Thermal Master P2 Pro Thermal Imager Review

date: 2025-06-08, updated: 2025-06-08, from: Russell Graves, Syonyk's Project Blog

 

<br> 

<https://www.sevarg.net/2025/06/08/thermal-master-p2-pro/>

---

**@Dave Winer's Scripting News** (date: 2025-06-08, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/04/01/appleRunner.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">A <a href="https://bsky.app/profile/scripting.com/post/3lr42xhuyxk2w">thread</a> on Bluesky this morning about what we need to hear incumbent Dems say before they step aside as part of the future of the party. We can't be lead by Democrats who didn't do everything in their power the four years of the Biden presidency to shut the door on autocracy. They argued the niceties of filibusters, and letting the DoJ procrastinate on cleaning up the mess, as if everything had snapped back to normal. There was huge unfinished business. We never shut down the insurrection that started on January 6. Otherwise we will wait until the whole system falls down for the Democratic Party to reform probably around someone who comes from MuskLand. 

<br> 

<http://scripting.com/2025/06/08.html#a155008>

---

**@Dave Winer's Scripting News** (date: 2025-06-08, from: Dave Winer's Scripting News)

Experience managing developers makes me a better ChatGPT user. 

<br> 

<http://scripting.com/2025/06/08.html#a154907>

---

## Sunday

date: 2025-06-08, from: Doc Searls (at Harvard), New Old Blog

Chrome question. One of my windows, with dozens of open tabs, vanished. How does one re-materialze it? ChatGPT says, Press Cmd + Y (Mac) or Ctrl + H (Windows) to open History. Look for a group entry like: “[Number] tabs – [Time]” under “Recently closed” or “Tabs from other devices.” Click it — the entire [&#8230;] 

<br> 

<https://doc.searls.com/2025/06/08/sunday/>

---

## ‘Somewhere’

date: 2025-06-08, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/somewhere>

---

## Sunday thought

date: 2025-06-08, from: Robert Reich's blog

Time for nonviolent civil disobedience 

<br> 

<https://robertreich.substack.com/p/a-time-for-non-violent-civil-disobedience>

---

## Juanita Garden Tour

date: 2025-06-08, from: Tracy Durnell Blog

I had a blast visiting five gardens around the Juanita neighborhood 😃 There were 12 gardens on the tour but I think you&#8217;d be hard-pressed to see them all! I started at 11 and was wiped by 2:30 so I didn&#8217;t push myself to squeeze in one more. Enjoyed talking with several of the homeowners [&#8230;] 

<br> 

<https://tracydurnell.com/2025/06/07/juanita-garden-tour/>

---

## June 7, 2025 

date: 2025-06-08, from: Heather Cox Richardson blog

In April, John Phelan, the U.S. 

<br> 

<https://heathercoxrichardson.substack.com/p/june-7-2025>

