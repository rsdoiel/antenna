---
title: columns
updated: 2025-03-09 07:07:00
---

# columns

(date: 2025-03-09 07:07:00)

---

## 2025-03-09 The looming Discord IPO

date: 2025-03-09, from: Alex Schroeder's Blog

<h1 id="2025-03-09-the-looming-discord-ipo">2025-03-09 The looming Discord IPO</h1>

<p>So&hellip; Discord might be going there. I like their offering. I even pay them about $10/month.
What they offer works well.
People get their own little communities to administer, with the tools to administer them well, with the self-written automations and bots to handle communities from a handful of people to many thousands.
Read <a class="account" href="https://infosec.exchange/@isotopp" title="@isotopp@infosec.exchange">@isotopp</a>’s <a href="https://infosec.exchange/@isotopp/114116202418228034">perspective on Discord</a>.</p>

<p>But the monetization drive is strong.
And once the shareholders are in place, pressure for monetization will ramp up even more, I&rsquo;m sure. How long until it all goes down? Five years?</p>

<p>What are your backup plans?</p>

<p><a href="https://campaignwiki.org/wiki/Chat">My backup plan</a> is an IRC backend (<a href="https://ngircd.barton.de/">ngircd</a> uses about 5M of memory) and two instances of a web front-end called <a href="https://thelounge.chat/">The Lounge</a>. One of them is free for all and connects to my chat server; the other needs registration and offers file uploads and always-on connectivity (it acts as a &ldquo;bouncer&rdquo;). The two of them take about 150M of memory. Each registered account gets a little SQLite file with the logs. No other resources required.</p>

<p>You can connect to the IRC backend directly using your favourite IRC client, of course. Emacs comes with two of them. Just saying. 😄</p>

<p>For iOS, there&rsquo;s <a href="https://colloquy.app/">Colloquy</a>.</p>

<p>For Android, <a class="account" href="https://tabletop.social/@wandererbill" title="@wandererbill@tabletop.social">@wandererbill</a> suggests <a href="https://f-droid.org/packages/io.mrarm.irc/">Revolution IRC</a>.</p>

<p><a class="account" href="https://tabletop.social/@phf" title="@phf@tabletop.social">@phf</a> suggested <a href="https://snikket.org/service/quickstart/">Snikket</a> instead. Installation requires a Docker image.</p>

<p>I dislike Docker, not because of what it is but because of what it implies. A virtual machine inside your virtual machine means that it doesn&rsquo;t auto-update. Upgrading will be tricky. It also means that deployment is tricky and requires multiple services such that it ended up being easier to supply a Docker image instead of good instructions. It&rsquo;s too brittle, is my guess.</p>

<p>Generally speaking I dislike Docker images for my virtual server server (6G memory, 75g storage, 2 cores). Frugal computing means that I am loath to upgrade.</p>

<p><a class="account" href="https://tabletop.social/@phf" title="@phf@tabletop.social">@phf</a> also suggested <a href="https://app.revolt.chat/">Revolt</a>.
<a class="account" href="https://tabletop.social/@wandererbill" title="@wandererbill@tabletop.social">@wandererbill</a> created a <a href="https://rvlt.gg/wkBDhJPb">Grenzland Server on Revolt</a>.
<a class="account" href="https://social.city-of-glass.net/users/cidney" title="@cidney@social.city-of-glass.net">@cidney</a> noted that it had Discord-like roles and role management for the server owner to hand out, so perhaps it&rsquo;s quite a suitable replacement.
Revolt can be self-hosted via Docker or self-building. At least there is a lot of info out there.
<a class="account" href="https://social.city-of-glass.net/users/cidney" title="@cidney@social.city-of-glass.net">@cidney</a> also found a wiki pages listing only four known instances including the default one, the largest being Andrew Tate&rsquo;s. 🤮</p>

<p><a class="account" href="https://tabletop.social/@wandererbill" title="@wandererbill@tabletop.social">@wandererbill</a> wanted to give Matrix another spin.
There are two server implementations, Synapse and Dendrite.</p>

<blockquote>
<p>At an absolute minimum, Dendrite will expect 1GB RAM. For a comfortable day-to-day deployment which can participate in federated rooms for a number of local users, be prepared to assign 2-4 CPU cores and 8GB RAM — more if your user count increases. &ndash; <a href="https://element-hq.github.io/dendrite/installation/planning">Planning your installation</a></p>
</blockquote>

<p><a class="account" href="https://tabletop.social/users/kyonshi" title="@kyonshi@tabletop.social">@kyonshi</a> suggested <a href="https://jitsi.org/">Jitsi</a>.
I tried to self-host it a few years ago.
It worked well! But it also took a lot of resource. During the video call, the virtual machine&rsquo;s <a href="2020-03-26_Jitsi_and_the_CPU">load went up to 8</a>.
We sometimes use the installation at the <a href="https://ffmuc.net/">Freifunk München</a> for gaming.
Thanks, ffmuc! 😍</p>

<p>So, where does that leave is? I don&rsquo;t know. People don&rsquo;t seem to like The Lounge with IRC backend and I seem to be unwilling to upgrade my hosting commitments.</p>

<p><a class="account" href="https://hackers.town/@mc" title="@mc@hackers.town">@mc</a> recently recommended a different IRC server called <a href="https://ergo.chat/about">Ergo</a> and a different web front-end called <a href="https://codeberg.org/emersion/gamja">Gamja</a> but it&rsquo;s unclear to me what significant advantages either would offer.</p>

<p>Previously:</p>

<blockquote>
<p>So… the situation is bad, but I still use Discord. &ndash; <a href="2022-08-16_Discord">Discord</a> (2022)</p>
</blockquote>

<p><a class="tag" href="/search/?q=%23Snikket">#Snikket</a> <a class="tag" href="/search/?q=%23Discord">#Discord</a> <a class="tag" href="/search/?q=%23Revolt">#Revolt</a> <a class="tag" href="/search/?q=%23Matrix">#Matrix</a> <a class="tag" href="/search/?q=%23Jitsi">#Jitsi</a> <a class="tag" href="/search/?q=%23IRC">#IRC</a> <a class="tag" href="/search/?q=%23Chat">#Chat</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-03-09-discord-ipo>

---

## ‘Oh Freedom’

date: 2025-03-09, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/oh-freedom>

---

## Taking heart

date: 2025-03-09, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/taking-heart>

---

## March 8, 2025

date: 2025-03-09, from: Heather Cox Richardson blog

Yesterday, Treasury Secretary Scott Bessent made it clear that the Trump administration&#8217;s goal is to slash the federal government and to privatize its current services. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-8-2025>

---

## The Talk Show: ‘Putting a Stink on the Letter X’

date: 2025-03-09, updated: 2025-03-09, from: Daring Fireball

 

<br> 

<https://daringfireball.net/thetalkshow/2025/03/08/ep-418>

---

## Broccoli, the Man — and Vegetable — Behind the Bond Franchise

date: 2025-03-09, updated: 2025-03-09, from: Daring Fireball

 

<br> 

<https://www.latimes.com/archives/la-xpm-1989-07-09-ca-5205-story.html>

---

## Yours Truly on The Vergecast, on the Cinematic Future of James Bond Under Amazon’s Stewardship

date: 2025-03-09, updated: 2025-03-09, from: Daring Fireball

 

<br> 

<https://www.theverge.com/the-vergecast/623633/james-bond-amazon-framework-laptop-desktop-vergecast>

---

## Skype got shouted down by Teams. But it gave us free telephony

date: 2025-03-09, from: John Naughton's online diary

Today’s Observer column The design of Arpanet’s successor, the internet we use today, started in the early 1970s and it was first switched on in January 1983. The designers of the network were, from the outset, determined to avoid the &#8230; <a href="https://memex.naughtons.org/skype-got-shouted-down-by-teams-but-it-gave-us-free-telephony/40517/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/skype-got-shouted-down-by-teams-but-it-gave-us-free-telephony/40517/>

---

## Simon Willison on the Privacy/Security Risks of Personalized Siri, vis-à-vis Prompt Injection

date: 2025-03-08, updated: 2025-03-08, from: Daring Fireball

 

<br> 

<https://simonwillison.net/2025/Mar/8/delaying-personalized-siri/>

---

## Apple Pulls Bella Ramsey Ad That Promoted Vaporware Personalized Siri Feature

date: 2025-03-08, updated: 2025-03-09, from: Daring Fireball

 

<br> 

<https://9to5mac.com/2025/03/07/apple-pulls-ad-that-showed-siri-being-useful-after-delaying-feature-that-could-make-siri-useful/>

---

## March 7, 2025

date: 2025-03-08, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/158663199/e5b767c482af3fe50cbb191d49846440.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/158663199/e5b767c482af3fe50cbb191d49846440.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/march-7-2025-06b>

---

## Loose Links

date: 2025-03-08, from: Doc Searls (at Harvard), New Old Blog

The big and scary news about the deaths of Gene Hackman and his wife, Betsy Arakawa, is that she died first, and suddenly, of hantavirus, which kills up to half the people it infects—often quickly.  It&#8217;s bad shit—or from bad shit: from rodents. Hackman, who had advanced Alzheimer&#8217;s, died later of his wife&#8217;s absent care. Their poor dog died [&#8230;] 

<br> 

<https://doc.searls.com/2025/03/08/loose-links-4/>

---

## Kopi: Track Your Coffee Brewing & Consumption

date: 2025-03-08, from: mrusme blog

Kopi is a command-line (CLI) coffee journal (or _habit tracker_) designed for
coffee enthusiasts. It lets you track coffee beans, equipment usage, brewing
methods, and individual cups. 

<br> 

<https://xn--gckvb8fzb.com/kopi-track-your-coffee-brewing-consumption/>

---

## Talking Right

date: 2025-03-08, from: Doc Searls (at Harvard), New Old Blog

Great speech by David Brooks at a recent ARC conference in London. I read here that he was booed and heckled, but in the video one only sees smiles, warmth, and occasional laughs (e.g. to &#8220;At Chicago I had a double major in history and celibacy&#8221;). It&#8217;s a short, deep, and caring talk that comes from [&#8230;] 

<br> 

<https://doc.searls.com/2025/03/08/talking-right/>

---

## Bookings

date: 2025-03-08, from: Doc Searls (at Harvard), New Old Blog

Even in a small city such as Bloomington, one can make fun discoveries all the time. Yesterday, for example, I discovered Redbud Books, which had a table set up to sell books from Cory Doctorow&#39;s increasingly vast oeuvre while the man himself spoke to a packed classroom in the Media School here at Indiana University. He&#39;ll [&#8230;] 

<br> 

<https://doc.searls.com/2025/03/08/bookings/>

---

**@Dave Winer's Scripting News** (date: 2025-03-08, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://s3.amazonaws.com/scripting.com/images/2018/10/04/gumby.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Praise from David, author of <a href="https://www.amazon.com/Small-Pieces-Loosely-Joined-Unified/dp/0738205435">Small Pieces Loosely Joined</a> and co-author of <a href="https://www.amazon.com/Cluetrain-Manifesto-End-Business-Usual/dp/0738204315">Cluetrain Manifesto</a>, is the best. He picked up <a href="https://wordland.social/">WordLand</a> overnight, and he loves it, for the right reasons. WordLand is an editor for "small pieces," maybe the first. Most of the really easy editors have been stuck in silos and thus are dead-ends. I'm sure the people who designed them wished they weren't locked up, but they had to work for billionaires-to-be, I don't. I called the locked-up editors <a href="http://scripting.com/2024/01/14/031201.html">tiny little text boxes</a>. I created an editor that starts out slightly larger than the TLTBs, and grows as your idea grows. So David opened up <a href="https://wordland.social/">WordLand</a> and started typing. And it turned into a <a href="https://www.hyperorg.com/blogger/2025/03/08/trying-out-wordland-for-blogging/">normal sized blog post</a>. It flowed right into it. And unlike the TLTB's in twitter-like worlds, those bits live on the open web, and can use all the features of the web, and are fed out to software networks via <a href="https://cyber.harvard.edu/rss/rss.html">RSS</a>, which is a lot simpler than other protocols. It can grow faster because there already is a huge installed base of software and knowledge for RSS. Imho developers should <a href="https://this.how/standards/">build on existing standards</a>, not try to replace them. They might be more <a href="https://isrssdead.com/">alive</a> than you think (or more accurately, wish). 

<br> 

<http://scripting.com/2025/03/08.html#a151455>

---

## Ural Notes Part 5: Winter Improvements

date: 2025-03-08, updated: 2025-03-08, from: Russell Graves, Syonyk's Project Blog

 

<br> 

<https://www.sevarg.net/2025/03/08/ural-notes-part-5-winter-improvements/>

---

**@Dave Winer's Scripting News** (date: 2025-03-08, from: Dave Winer's Scripting News)

<a href="https://www.hyperorg.com/blogger/2025/03/08/trying-out-wordland-for-blogging/">David Weinberger on WordLand</a>. "It's a web page that clears out all of WordPress's cruft and gives you an interface  that's so simple that it's actually enjoyable." 

<br> 

<http://scripting.com/2025/03/08.html#a145743>

---

**@Dave Winer's Scripting News** (date: 2025-03-08, from: Dave Winer's Scripting News)

I updated the <a href="https://this.how/wordland/#1734985792000">screen shot</a> on the WordLand <a href="https://this.how/wordland/">docs page</a>. It was really out of date. <a href="https://wordland.social/">WordLand</a> is the best editor for people to write in WordPress. I've been developing it over the last couple of years. I wanted to get a really nice editor into this slot. I felt WordPress deserved one. It's designed to feel like the editor in twitter-like services, but without the limits. I've been writing about this <a href="https://daytona.scripting.com/search?q=textcasting">on my blog</a>, while I was doing that, I was developing WordLand in the background. We have ignored the needs of writers for too long. It's time to remove the limits. People believed the formula Twitter arrived at was the right one. It is far too limited for writers. WordLand is the answer, in software. 

<br> 

<http://scripting.com/2025/03/08.html#a144727>

---

## Pancake Day

date: 2025-03-08, from: Jessica Smith's blog

<p>Earlier this week, I took Indie on her first trip into the Melbourne <abbr title="Central Business District">CBD</abbr>. Viv&rsquo;s office was celebrating Pancake Day, and Viv thought it was the perfect excuse to bring Indie in an introduce her to everybody! So I did, and <a href="https://www.jayeless.net/2025/03/04.html" title="link to my statuses from 4 March 2025">it went fine</a>.</p>
<p>Pancake Day, though. When Viv first told me his office was doing this, my reaction was, &ldquo;Oh… is that a French thing?&rdquo; Because my high school used to do an annual Pancake Day too (or, well, for us it was &ldquo;Crêpe Day&rdquo;), and I thought that used to be in March too, and for us it was <em>definitely</em> a French thing. They used to get a Real-Life French Guy™ in to make the crêpes, and if you were unfortunate enough to be in the French class like I was, you were under strict instructions to order <em>in French</em>, and the French teacher would hover around the crêpe table like a hawk to make sure his students actually did it. At least we got tasty crêpes out of it to eat, I guess. It did seem a <em>bit</em> unfair that the Chinese students <em>also</em> got to eat crêpes <em>without</em> the hassle of ordering in French, but such is life.</p>
<p>So anyway, I explained this to Viv, but his answer? He didn&rsquo;t know if it was a French thing. OK, very helpful.</p>
<p>But then! On the day, I posted on Mastodon, and <a href="https://miraz.me/">Miraz<span style="white-space: nowrap;">&thinsp;<svg style="height: 0.7em; width: 0.7em;" focusable="false" data-prefix="fas" data-icon="external-link-alt" class="svg-inline--fa fa-external-link-alt fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><title>(external link)</title><path fill="currentColor" d="M432,320H400a16,16,0,0,0-16,16V448H64V128H208a16,16,0,0,0,16-16V80a16,16,0,0,0-16-16H48A48,48,0,0,0,0,112V464a48,48,0,0,0,48,48H400a48,48,0,0,0,48-48V336A16,16,0,0,0,432,320ZM488,0h-128c-21.37,0-32.05,25.91-17,41l35.73,35.73L135,320.37a24,24,0,0,0,0,34L157.67,377a24,24,0,0,0,34,0L435.28,133.32,471,169c15,15,41,4.5,41-17V24A24,24,0,0,0,488,0Z"></path></svg></span></a> kindly enlightened me as to the origins of &ldquo;Pancake Day&rdquo;, or as it&rsquo;s also known, &ldquo;Shrove Tuesday&rdquo;… the day exactly 47 days before Easter Sunday, or the last day before Lent. This gave me enough information to look it up, and as such I found out that it is <em>also</em> a French thing, and in that language it is called… Mardi Gras! Of course, in Australia we had our Mardi Gras last Saturday, but uhhh, ours is very different (and seems to never actually have been held on a Tuesday; Wikipedia claims queer activists named it that because &ldquo;the term <i>Mardi Gras</i> had become synonymous with street festivals&rdquo;, so there you go). Nonetheless, I suppose this explains why the Sydney Gay &amp; Lesbian Mardi Gras is always (excluding the first three) held at around that time of year – proximity to the pancake version! All the puzzle pieces fall into place.</p> 

<br> 

<https://www.jayeless.net/2025/03/pancake-day.html>

---

## Stuff a Pi-hole in your router because your browser is about to betray you

date: 2025-03-08, updated: 2025-03-08, from: Liam Proven's articles at the Register

<h4>Mozilla sells ads, Google limits blocking them – it&#39;s time for stricter measures</h4>
      <p>A new, lightweight version of Pi-Hole is here. Just how easy is it to block advertising on your home network?</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/03/08/pi_hole_6_flyby/>

---

## The End of the Trump Honeymoon | Coffee Klatch for March 8, 2025

date: 2025-03-08, from: Robert Reich's blog

With Michael Lahanas-Calder&#243;n and yours truly, Robert Reich 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/158607538/4281f2efbc2ecf16a0134489c8818ee6.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/158607538/4281f2efbc2ecf16a0134489c8818ee6.mp3" target="_blank">download audio/mpeg</a><br> 

<https://robertreich.substack.com/p/the-end-the-trump-honeymoon-coffee>

---

## March 7, 2025 

date: 2025-03-08, from: Heather Cox Richardson blog

Black Americans outnumbered white Americans among the 29,500 people who lived in Selma, Alabama, in the 1960s, but the city&#8217;s voting rolls were 99% white. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-7-2025>

---

## Weeknotes: March 1-7, 2025

date: 2025-03-08, from: Tracy Durnell Blog

The coup and the ravaging destruction of our government and the world order is getting to me&#8230; I&#8217;m antsy, so concentrating on reading a book is hard, and I&#8217;m noticing all these little signs of stress popping up in my body, like a canker sore and eczema flare-ups. What an annoyance on top of all [&#8230;] 

<br> 

<https://tracydurnell.com/2025/03/07/weeknotes-march-1-7-2025/>

---

## POWER9 OS update and other news

date: 2025-03-08, from: Jirka's blog

I finally have upgraded my POWER9 workstation. I was running the Fedora  {sup}1{/sup} 38 for  years and it was  already unsupported. So some  weeks ago I upgraded to 39. Today  I have upgraded to 40. The current  one is 41 so it isn't that bad as it was two months ago. 

<br> 

<http://jirka.1-2-8.net/20250308-0452_POWER9_OS_update_and_other_news>

---

## Fedora 41

date: 2025-03-08, from: Jirka's blog

Just a  short note:  the Fedora  41 for  ppc64le is  now running  on my Blackbird (my  POWER9 machine)! I'm  still using  X.org here so  no big changes actually happened so far. 

<br> 

<http://jirka.1-2-8.net/20250308-0452_Fedora_41>

---

##  A game called &#8220;It is as if you were on your phone&#8221;... 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046409-a-game-called-it-is>

---

##  A collection of movie clips containing inaccurate binocular shots, &#8220;(i.e., two overlapping... 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046403-a-collection-of-movie-cli>

---

## Friday Squid Blogging: Squid Loyalty Cards

date: 2025-03-07, updated: 2025-03-05, from: Bruce Schneier blog

<p>Squid is a <a href="https://www.siliconrepublic.com/start-ups/loyalty-card-platform-squid-crowdfunding-campaign">loyalty card platform</a> in Ireland.</p>
<p><a href="https://www.schneier.com/blog/archives/2024/06/new-blog-moderation-policy.html">Blog moderation policy.</a></p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/03/friday-squid-blogging-squid-loyalty-cards.html>

---

## Reuters on Apple’s Personalized Siri Apple Intelligence Delay

date: 2025-03-07, updated: 2025-03-08, from: Daring Fireball

 

<br> 

<https://www.reuters.com/technology/apple-says-some-ai-improvements-siri-delayed-2026-2025-03-07/>

---

##  From Ben Fry, a visualization of the 5,000+ covers of the New... 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046408-from-ben-fry-a-visualizat>

---

**@Dave Winer's Scripting News** (date: 2025-03-07, from: Dave Winer's Scripting News)

The United States is Russia's 51st state, sad to say. Let's get it back for the people of the United States. We don't like Putin. Sorry. 

<br> 

<http://scripting.com/2025/03/07.html#a211034>

---

##  Star Trek: TNG Opening Credits, But the Theme Music Is Coming From the Enterprise 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/star-trek-credits-theme-music-coming-from-enterprise>

---

## It’s about time. And space.

date: 2025-03-07, from: Doc Searls (at Harvard), New Old Blog

This informative video by @lainaminute (L.A. in a Minute) on Instagram expands on something I anticipated when I shot this photo album of the KSPN/710 transmitter site at 12775 Burbank Boulevard almost four years ago: that the land under the transmitter—19 acres of fenced-in grass surrounded by suburbs—would be put up for sale by Disney, [&#8230;] 

<br> 

<https://doc.searls.com/2025/03/07/its-about-time-and-space/>

---

##  This is fantastic and very much worth your time: Marcin Wichary&#8217;s deep... 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046400-this-is-fantastic-and-ver>

---

## March 6, 2025

date: 2025-03-07, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/158609898/cb9b0412f33010abd1efa971e5e057bd.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/158609898/cb9b0412f33010abd1efa971e5e057bd.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/march-6-2025-4dc>

---

##  I Took My Work Outside Every Day for a Month This Winter.... 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046404-i-took-my-work-outside>

---

##  The 100 Greatest TV Performances of the 21st Century (one per show... 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046407-the-100-greatest-tv-perfo>

---

## Making the Fediverse More Accessible With Claude 3.7 Sonnet

date: 2025-03-07, from: Jonudell blog

A few years ago I abandoned Twitter in favor of Mastodon. Recent events validate that choice and underscore the strategic importance of a decentralized fediverse that can’t be owned by a single corporate or state actor. But while Mastodon meets my needs, much of the Twitter diaspora has gone to Bluesky. That’s fine for now &#8230; <a href="https://blog.jonudell.net/2025/03/07/making-the-fediverse-more-accessible-with-claude-3-7-sonnet/" class="more-link">Continue reading <span class="screen-reader-text">Making the Fediverse More Accessible With Claude 3.7 Sonnet</span></a> 

<br> 

<https://blog.jonudell.net/2025/03/07/making-the-fediverse-more-accessible-with-claude-3-7-sonnet/>

---

## Essential FOSS tools to make macOS suck less

date: 2025-03-07, updated: 2025-03-07, from: Liam Proven's articles at the Register

<h4><span class="label">Friday FOSS fest</span> Moved from Windows or Linux? Smooth some of the rough edges</h4>
      <p>There are some idiosyncrasies about macOS that long term Mac users may never notice, but cause frustration in people more used to how Windows does things – or the much more customizable Linux desktop experience. Here are a few of The Reg FOSS desk&#39;s favorite tools we routinely install on new machines to make life a little more comfortable or convenient.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/03/07/fosss_to_tame_macos/>

---

**@Dave Winer's Scripting News** (date: 2025-03-07, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2025/03/07/peloton600Riding.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I've been getting my exercise outdoors mostly, but then when the weather got bad for a bit, too bad to walk outdoors, I took up the Peloton again. I was really out of shape for that. So I started riding every third day or so. And then without any warning I just passed my 600th ride. Not too bad! :-) 

<br> 

<http://scripting.com/2025/03/07.html#a173201>

---

## ★ Apple Is Delaying the ‘More Personalized Siri’ Apple Intelligence Features

date: 2025-03-07, updated: 2025-03-08, from: Daring Fireball

This announcement is disappointing, but unsurprising. If it’s Apple’s general policy not to ship a product before it’s ready, that applies tenfold for a product involving LLM access to deeply private on-device information. 

<br> 

<https://daringfireball.net/2025/03/apple_is_delaying_the_more_personalized_siri_apple_intelligence_features>

---

##  Watch Eagle Chicks Hatching on the Eagle Cam 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/watch-eagle-chicks-hatching-on-the-eagle-cam>

---

## Rayhunter: Device to Detect Cellular Surveillance

date: 2025-03-07, updated: 2025-03-07, from: Bruce Schneier blog

<p>The EFF has <a href="https://www.eff.org/deeplinks/2025/03/meet-rayhunter-new-open-source-tool-eff-detect-cellular-spying">created</a> an open-source hardware tool to detect IMSI catchers: fake cell phone towers that are used for mass surveillance of an area.</p>
<p>It runs on a $20 mobile hotspot.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/03/rayhunter-device-to-detect-cellular-surveillance.html>

---

##  Some graphs showing how people&#8217;s Letterboxd ratings of the Star Wars films... 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046399-some-graphs-showing-how-p>

---

**@Dave Winer's Scripting News** (date: 2025-03-07, from: Dave Winer's Scripting News)

Before our media was gradually taken over by Russia, they did it to Ukraine, but they managed to dig their way out, had a democratic election, resulting in their current government. So it's not impossible to dig your way out. But you have to stop insisting that <a href="https://imgs.scripting.com/2025/03/07/letHitlerSpeak.png">Hitler be allowed</a> to speak. 

<br> 

<http://scripting.com/2025/03/07.html#a161635>

---

## First Drafting

date: 2025-03-07, from: Doc Searls (at Harvard), New Old Blog

Writing with Wordland is like Tweeting, but on my personal press (this blog) instead of Elon&#39;s. Or any other giant&#39;s. As a difference in kind, it&#39;s absolute. 

<br> 

<https://doc.searls.com/2025/03/07/first-drafting/>

---

**@Dave Winer's Scripting News** (date: 2025-03-07, from: Dave Winer's Scripting News)

The Fediverse is impossible to use even for people who understand what it's trying to do, and most people have no idea. The answer: <b>Stop trying to reinvent Twitter</b>. It wasn't a great idea! And figure out what really works in a decentralized system. It requires some serious brain work. 

<br> 

<http://scripting.com/2025/03/07.html#a160716>

---

##  Watch Blue Ghost Land On The Moon in HD 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/blue-ghost-land-on-moon>

---

##  Dolly Parton has released a new song called If You Hadn&#8217;t Been... 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046402-dolly-parton-has-released>

---

## YouTube scares me; I need RAID 1 for my video content

date: 2025-03-07, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">YouTube scares me; I need RAID 1 for my video content</span>

            <p></p>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden">March 7, 2025
</span>
 

<br> 

<https://www.jeffgeerling.com/blog/2025/youtube-scares-me-i-need-raid-1-my-video-content>

---

##  After 54 years, the organizers of the Bulwer-Lytton Fiction Contest (which celebrates... 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046291-after-54-years-the-organi>

---

##  The Museum of All Things. &#8220;Every exhibit in the museum corresponds to... 

date: 2025-03-07, updated: 2025-03-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046321-the-museum-of-all-things>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-07, from: Miguel de Icaza Mastondon feed)

<p>Rebmasel is an actual national treasure:</p><p><a href="https://www.tiktok.com/t/ZT2CMyJ6s/" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://www.</span><span class="">tiktok.com/t/ZT2CMyJ6s/</span><span class="invisible"></span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114121389277425680>

---

## 2025-03-05 How do you process the news?

date: 2025-03-07, from: Alex Schroeder's Blog

<h1 id="2025-03-05-how-do-you-process-the-news">2025-03-05 How do you process the news?</h1>

<blockquote>
<p>I&rsquo;m looking at the blog and noticing that I haven&rsquo;t posted much. It&rsquo;s hard.</p>
</blockquote>

<p>A long time ago I discontinued all my daily newspapers and just kept the weekly left-leaning cooperatively-owned <a href="https://www.woz.ch/">Wochenzeitung</a>. Once a month it comes with the German edition of <a href="https://monde-diplomatique.de/">Le Monde Diplomatique</a>.</p>

<p>I used to read a lot of newspaper articles online, when I saw links in social media. But more and more of them erected a paywall. more and more of them have become pretty useless unless I go through the uBlock Origin settings to unblock random domains with more scripts and things. And so I have stopped reading them, too. And when politics look bad, I hesitate even more.</p>

<p>Sometimes I feel like perhaps this means the end of the attention economy for me. Back to books?</p>

<p>Some news sources I follow online:</p>

<ul>
<li><a class="account" href="https://troet.cafe/@woz" title="@woz@troet.cafe">@woz</a> is the feed for the weekly paper in German that I am subscribed to</li>
<li><a class="account" href="https://masto.ai/@meduza_en" title="@meduza_en@masto.ai">@meduza_en</a> for stuff about Russia, Ukraine and the USA</li>
<li><a class="account" href="https://chaos.social/@netzpolitik_feed" title="@netzpolitik_feed@chaos.social">@netzpolitik_feed</a> for civil rights online</li>
<li><a class="account" href="https://mstdn.social/@Bellingcat" title="@Bellingcat@mstdn.social">@Bellingcat</a> for various strange things</li>
<li><a class="account" href="https://mastodon.social/@theindex" title="@theindex@mastodon.social">@theindex</a> by <a class="account" href="https://mastodon.social/@Daojoan" title="@Daojoan@mastodon.social">@Daojoan</a> for independent news</li>
</ul>

<p>As always, the problem is that I feel the news should be a bit like taxes: Pay something and then read what you want. The payment models sort of imply that you&rsquo;d pay for all the subscriptions, which won&rsquo;t work. Or they imply that you&rsquo;d pay per article, which doesn&rsquo;t work because of the credit card fees. No micropayment means that one or two articles is already the equivalent of the whole subscription. And even then, I&rsquo;m not sure whether micropayments would sit well with me. My current status is that I only pay for the newspaper but <a href="https://www.woz.ch/abo/prowoz">at a pro level</a> for CHF 590 per year and I feel that CHF 50 per month ought to pay for all of my news.</p>

<p>Some days I think I should subscribe to a Swiss digital newspaper, <a class="account" href="https://republik.social/@republik_magazin" title="@republik_magazin@republik.ch">@republik_magazin</a>. Just to support more diversity in a shrinking ecosystem. But I don&rsquo;t know whether I can process the news, to be honest.</p>

<p>That seems to be my main problem.</p>

<p>How do I process the news? 😥</p>

<p><a class="tag" href="/search/?q=%23Media">#Media</a> <a class="tag" href="/search/?q=%23Politics">#Politics</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-03-05-processing>

---

## More reasons for modest optimism

date: 2025-03-07, from: Robert Reich's blog

This week&#8217;s 10 

<br> 

<https://robertreich.substack.com/p/this-weeks-ten-reasons-for-modest>

---

## March 6, 2025

date: 2025-03-07, from: Heather Cox Richardson blog

This morning, Ted Hesson and Kristina Cooke of Reuters reported that the Trump administration is preparing to deport the 240,000 Ukrainians who fled Russia&#8217;s attacks on Ukraine and have temporary legal status in the United States. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-6-2025>

---

## Three Alarming ‘Tells’ from Trump's Latest Speech.

date: 2025-03-07, from: James Fallows, Substack

What he said was disturbing. The way he said it was worse. What I learned from these 100 long minutes. 

<br> 

<https://fallows.substack.com/p/three-alarming-tells-from-trumps>

---

**@Dave Winer's Scripting News** (date: 2025-03-07, from: Dave Winer's Scripting News)

Doc Searls wrote this <a href="https://doc.searls.com/2025/03/06/radios-death-knells/">beautiful blog post</a> with <a href="https://wordland.social/">WordLand</a>. If I have my way blogging is going to come all the way back and then zooooom out from there. Still diggin! 

<br> 

<http://scripting.com/2025/03/06.html#a012906>

---

## Radio’s Death Knells

date: 2025-03-07, from: Doc Searls (at Harvard), New Old Blog

The radio station known since 1935 as KSFO, &#8220;The Sound of the City,&#8221; was a landmark at 560 on the Bay Area radio dial for most of the last century.  Other landmarks were KGO/810, KCBS/740, KFRC/610, and KNBR/680. KFRC went away in 2005, as religious programming moved to AM from 106.9 FM, and KCBS added [&#8230;] 

<br> 

<https://doc.searls.com/2025/03/06/radios-death-knells/>

---

## Chaos Compounded

date: 2025-03-07, from: Dan Rather's Steady

So much damage, so little time 

<br> 

<https://steady.substack.com/p/chaos-compounded>

---

## Friday 7 March, 2025

date: 2025-03-07, from: John Naughton's online diary

Faces Teenagers outside the National Portrait Gallery. Quote of the Day ”They tried to bury me, but they didn’t know I was a seed.” Sinéad O’Connor Musical alternative to the morning’s radio news Willie Nelson &#38; Sinéad O&#8217;Connor &#124; Don&#8217;t &#8230; <a href="https://memex.naughtons.org/friday-7-march-2025/40510/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/friday-7-march-2025/40510/>

---

## Standards for ANSI escape codes

date: 2025-03-07, updated: 2025-03-07, from: Julia Evans blog

 

<br> 

<https://jvns.ca/blog/2025/03/07/escape-code-standards/>

---

## March 5, 2025

date: 2025-03-06, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/158546011/97dbb1db8b4fdaf5326c6029b2f6cd4d.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/158546011/97dbb1db8b4fdaf5326c6029b2f6cd4d.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/march-5-2025-64a>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-06, from: Miguel de Icaza Mastondon feed)

<p>Some wines sole reason to exist is to be reduced into a sauce.  I was just not expecting my stash to have so many of those.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114116745636906426>

---

## Nate Silver on the Demise of FiveThirtyEight

date: 2025-03-06, updated: 2025-03-06, from: Daring Fireball

 

<br> 

<https://www.natesilver.net/p/a-few-words-about-fivethirtyeight>

---

## ★ ABC Shuts Down FiveThirtyEight, and Pulls the Plug on Its Website

date: 2025-03-06, updated: 2025-03-07, from: Daring Fireball

From the perspective of a company the size of Disney, it would cost veritable pennies to keep FiveThirtyEight’s website around forever. What a disgrace. 

<br> 

<https://daringfireball.net/2025/03/abc_shuts_down_fivethirtyeight>

---

##  How Are You? 

date: 2025-03-06, updated: 2025-03-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/how-are-you>

---

##  Report: You Live In An Embarrassing Country. &#8220;According to a new report... 

date: 2025-03-06, updated: 2025-03-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046396-report-you-live-in-an>

---

**@Dave Winer's Scripting News** (date: 2025-03-06, from: Dave Winer's Scripting News)

Web isn't just a brand, it's also a noun and a verb. "I web you." 

<br> 

<http://scripting.com/2025/03/06.html#a161548>

---

## The Oligopoly Publishers

date: 2025-03-06, from: David Rosenthal's blog

<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhIY3aQW6JcgqmmYebprhsoan_efq-rBFVEJM1up6dITAMtbmgGdqZ0FLHiA_rV5blQF90FYOjQZ-3z3afaoeb-yX66ak3QCn0kqtS7A1IOzPCYj9hjCkIq00EL82SzY534MCSt_j2_bPnGzSMc5Uu73AgdxuC4RvreJSRDlE7hTGWaQ-rk_B6FpWaZh8jH/s773/PublisherStocks.jpg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="407" data-original-width="773" height="105" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhIY3aQW6JcgqmmYebprhsoan_efq-rBFVEJM1up6dITAMtbmgGdqZ0FLHiA_rV5blQF90FYOjQZ-3z3afaoeb-yX66ak3QCn0kqtS7A1IOzPCYj9hjCkIq00EL82SzY534MCSt_j2_bPnGzSMc5Uu73AgdxuC4RvreJSRDlE7hTGWaQ-rk_B6FpWaZh8jH/w200-h105/PublisherStocks.jpg" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://rupakghose.substack.com/p/the-100-billion-bloomberg-for-academics">Source</a></td></tr></tbody></table>
Rupak Ghose's <a href="https://rupakghose.substack.com/p/the-100-billion-bloomberg-for-academics"><i>The $100 billion Bloomberg for academics and lawyers?</i></a> is essential reading for anyone interested in academic publishing. He starts by charting the stock price of RELX, Thomson Reuters, and Wolters Kluwer, pointing out that in the past decade they have increased about ten-fold. He compares these publishers to <a href="https://bloombeg.com">Bloomberg</a>, the financial news service. They are less profitable, but that's because their customers are less profitable. Follow me below the fold for more on this.<br />
<span><a name='more'></a></span>
<br />
The leader in the market is RELX, which used to be <a href="https://rupakghose.substack.com/p/the-100-billion-bloomberg-for-academics">Elsevier</a>:<br />
<blockquote>
In the earlier share price chart RELX was the lower of the three lines but given its higher dividend payouts its overall shareholder returns have paced with its peers, and it is one of the best-performing large-cap stocks in the UK. The following chart shows that it is now in the top five largest in the UK by stock market value and bigger than BP. Its price-to-earnings multiple of around 30x is more like a tech giant.
</blockquote>
Well, it is only 3/4 of Nvidia's or Apple's PE but around the same as Microsoft.<br />
The rest of the <a href="https://rupakghose.substack.com/p/the-100-billion-bloomberg-for-academics">oligopoly is</a>:<br />
<blockquote>
The second largest listed player is Thomson Reuters worth around $80 billion (and this trades on a much higher price-to-earnings multiple than RELX). Add in Wolters Kluwer, and the much smaller Springer Nature which was listed late last year, and the combined stock market value of the four firms is more than $215 billion.
</blockquote>
Thomson Reuters' PE is around 36, a bit less than Apple's. The $215B market cap is pricing in massive growth, which given the uncertain economic conditions and the finances of their customers seems optimistic.<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmejewb8u4XwNXNqbZ0pr7YZM8XEeAA9aa-iIx2W4x3vXSH8CdmlSa6N2RibBL3agbgh76EX6GSDnRjjfecgJNzluPRvVPyvt7_slbwzMVsbVgXyJVJ8xM1hkf2pIlqmxOrzhTIzsIaq74KDio9LCfi-qWOrwwk0jLPMbTXu9AfiIDbfu7Re2EZaOgUHbn/s1653/Publisher2024Financials.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="993" data-original-width="1653" height="120" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmejewb8u4XwNXNqbZ0pr7YZM8XEeAA9aa-iIx2W4x3vXSH8CdmlSa6N2RibBL3agbgh76EX6GSDnRjjfecgJNzluPRvVPyvt7_slbwzMVsbVgXyJVJ8xM1hkf2pIlqmxOrzhTIzsIaq74KDio9LCfi-qWOrwwk0jLPMbTXu9AfiIDbfu7Re2EZaOgUHbn/w200-h120/Publisher2024Financials.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://rupakghose.substack.com/p/the-100-billion-bloomberg-for-academics">Source</a></td></tr></tbody></table>
The four companies made about $8B in profit on about $25B in revenue, or a <a href="https://rupakghose.substack.com/p/the-100-billion-bloomberg-for-academics">gross margin of around 32%</a>:<br />
<blockquote>
The following chart illustrates the revenues and operating profits of the four firms in 2024. RELX generated as much operating profits as its two largest peers combined.
</blockquote>
Ghose explains how the oligopoly publishers can extract so much rent by quoting Dan Davies' book <a href="https://www.amazon.co.uk/Unaccountability-Machine-Systems-Terrible-Decisions-ebook/dp/B0CGFWBFD6"><i>The Unaccountability Machine</i></a>:<br />
<blockquote>
Firstly, the customer base is captive and highly vulnerable to price gouging. A university library has to have access to the best journals, without which the members of the university can’t keep up with their field or do their own research. Secondly, although the publishers who bought the titles took over the responsibility for their administration and distribution, this is a small part of the effort involved in producing an academic journal, compared to the actual work of writing the articles and peer-reviewing them. This service is provided to the publishers by academics, for free or for a nominal payment (often paid in books or subscriptions to journals). So not only does the industry have both a captive customer base and a captive source of free labour, these two commercial assets are for the most part the same group of people.
</blockquote>
Ghose then <a href="https://rupakghose.substack.com/p/the-100-billion-bloomberg-for-academics">comments</a>:<br />
<blockquote>
In essence, the academics fight to help the publishers extract monopoly profits. The whole process depends on the value of having your articles appear or receive citations in the best journals. This becomes an unaccountability sink to which universities outsource their whole system of promotion and hiring. Davies compares this to the PageRank algorithm used by Google.
</blockquote>
The big four publishers' $25B in revenue doesn't come exclusively from publishing content they get for free from academics, but about <a href="https://rupakghose.substack.com/p/the-100-billion-bloomberg-for-academics">half of it does</a>:<br />
<blockquote>
This market for academic publishing generates around $20 billion of revenue per year with half of the market controlled by the five largest firms: Elsevier (part of RELX), John Wiley &amp; Sons, Taylor &amp; Francis, Springer Nature, and SAGE.
</blockquote>
The distinctive feature of the market over the last decade or more has been the publishers failing to exercise their gate-keeping role, and the resulting flood of low-quality papers.<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhIDlo4CUeDQ0FaudDFWDmfraa6qj3XW8PdykjmBX965stdgdHmeY1mi4uYSJtIXM1bwsnHOfgrXnM-laepME2Vw5jLzumxCyOEhADmpjZ1LExoueGHIlOj8H5sH6LxV6jyV9TP-0vZ7djn8tL0S3PaNNqEVBZdgwuaAf8x0xx7WyFQZK4t20Hsk_VBH_fg/s468/ArticleInflation.jpg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="285" data-original-width="468" height="122" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhIDlo4CUeDQ0FaudDFWDmfraa6qj3XW8PdykjmBX965stdgdHmeY1mi4uYSJtIXM1bwsnHOfgrXnM-laepME2Vw5jLzumxCyOEhADmpjZ1LExoueGHIlOj8H5sH6LxV6jyV9TP-0vZ7djn8tL0S3PaNNqEVBZdgwuaAf8x0xx7WyFQZK4t20Hsk_VBH_fg/w200-h122/ArticleInflation.jpg" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.ouvrirlascience.fr/excessive-growth-in-the-number-of-scientific">Source</a></td></tr></tbody></table>
Elsevier has been frantically acquiring and spawning <a href="https://rupakghose.substack.com/p/the-100-billion-bloomberg-for-academics">journals</a>:<br />
<blockquote>
the chart below illustrates that RELX-owned Elsevier is not only the clear market leader, but it has also grown significantly in volume.
</blockquote>
Does anyone think there is 70% more high-quality research than there was a decade ago? The graph comes from <a href="https://www.ouvrirlascience.fr/excessive-growth-in-the-number-of-scientific"><i>Excessive growth in the number of scientific publications</i></a> by Benoît Pier and Laurent Romary:<br />
<blockquote>
The first result concerns the total number of articles published, which follows very closely an exponential growth (+5.6% per year). Even taking into account the increase in the number of researchers over this period, we can deduce that the time spent on obtaining the results, validating and peer reviewing them has decreased significantly.
</blockquote>
This growth has been powered by the rise of Article Processing Charges (APCs). A journal that lives on APCs rather than subscriptions has a strong <a href="https://www.ouvrirlascience.fr/excessive-growth-in-the-number-of-scientific">disincentive to reject papers</a><br />
<blockquote>
By computing the average annual number of articles published per journal, the authors observe that the growth (significant, but not overwhelming) of the traditional publishers is mainly due to the expansion of the number of journals in their  catalogues, whereas the very strong growth of Frontiers and MDPI is the result of an explosive increase in the number of articles per journal. It should be noted that these two publishers, which appeared more recently, are thriving through publication fees paid by authors.
</blockquote>
Pier and Romary <a href="https://www.ouvrirlascience.fr/excessive-growth-in-the-number-of-scientific">conclude</a>:<br />
<blockquote>
The triad (MDPI, Frontiers, Hindawi) increasingly use special issues to publish more and more articles, and this phenomenon is accompanied by a significant shortening of the time allotted to the peer-review process.
</blockquote>
Pier and Romary base their article upon <a href="https://doi.org/10.48550/arXiv.2309.15884"><i>The strain on scientific publishing</i></a> by Mark A. Hanson <i>et al</i> whose abstract reads:<br />
<blockquote>
Scientists are increasingly overwhelmed by the volume of articles being published. Total articles indexed in Scopus and Web of Science have grown exponentially in recent years; in 2022 the article total was approximately ~47% higher than in 2016, which has outpaced the limited growth - if any - in the number of practising scientists. Thus, publication workload per scientist (writing, reviewing, editing) has increased dramatically. We define this problem as the strain on scientific publishing. To analyse this strain, we present five data-driven metrics showing publisher growth, processing times, and citation behaviours. We draw these data from web scrapes, requests for data from publishers, and material that is freely available through publisher websites. Our findings are based on millions of papers produced by leading academic publishers. We find specific groups have disproportionately grown in their articles published per year, contributing to this strain. Some publishers enabled this growth by adopting a strategy of hosting special issues, which publish articles with reduced turnaround times. Given pressures on researchers to publish or perish to be competitive for funding applications, this strain was likely amplified by these offers to publish more articles. We also observed widespread year-over-year inflation of journal impact factors coinciding with this strain, which risks confusing quality signals. Such exponential growth cannot be sustained. The metrics we define here should enable this evolving conversation to reach actionable solutions to address the strain on scientific publishing.
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgHK-V8GM380TvHaxlSD6sY6hdHEzl9pJIys4vzQRzjyg1gcwT2AZWGDlaKMuVABPsE1Pl9CPjpFURWHX2jHwvpKv131DdXUxcqzIqwxzAFHTnHfCyeHpZqEf5ioZR3JaRcSKZJ_vgDCXLRsfspIh__oAY0e2R9IfcCkFFOmc_XzaMY9rl7saaB9uilvh9u/s1544/ReviewTimes.png" imageanchor="1" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="1544" data-original-width="1234" height="200" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgHK-V8GM380TvHaxlSD6sY6hdHEzl9pJIys4vzQRzjyg1gcwT2AZWGDlaKMuVABPsE1Pl9CPjpFURWHX2jHwvpKv131DdXUxcqzIqwxzAFHTnHfCyeHpZqEf5ioZR3JaRcSKZJ_vgDCXLRsfspIh__oAY0e2R9IfcCkFFOmc_XzaMY9rl7saaB9uilvh9u/w160-h200/ReviewTimes.png" width="160" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://doi.org/10.48550/arXiv.2309.15884">Source</a></td></tr></tbody></table>
Hanson <i>et al</i> present a very revealing figure, showing (A) the evolution through time of the mean time taken to review papers, and (B) the distribution of those times for 2016, 2019 and 2022. The figure shows two clear groups of publishers, more and less predatory:<br />
<ul>
<li>The triad of predatory publishers do far less reviewing, and the amount they do decreases over time.</li>
<li>The less predatory publishers do far more reviewing and the amount they do increases over time.</li>
<li>The predatory publishers' distribution of review times increasingly skews to the short end, where the other publishers' distribution is stable and skews slightly to the long end.</li>
</ul>
So Elsevier is the biggest player in academic publishing. How <a href="https://rupakghose.substack.com/p/the-100-billion-bloomberg-for-academics">big is it?</a>:<br />
<blockquote>
RELX Elsevier has over 3,000 journals including leading brands like the Lancet. These journals published more than 720,000 articles in 2024. This is almost one-fifth of all scientific articles. Elsevier’s online platform ScienceDirect has tens of millions of pieces of peer-reviewed content from tens of millions of researchers. Its citation database has content from tens of thousands of journals.<br />
<br />
The scientific, technical, and medical information division is RELX’s second largest with revenues of around $4 billion of revenues, roughly equally split between articles/research content vs databases, tools, and electronic reference solutions. The business is largely subscription fee driven and 90% of its revenues are from electronic products rather than print publishing and face-to-face events.
</blockquote>
But is it growing fast enough to justify a <a href="https://rupakghose.substack.com/p/the-100-billion-bloomberg-for-academics">P/E of 30?</a>:<br />
<blockquote>
Despite the growth in the number of articles, this is RELX’s slowest-growing division with 3-4% revenue growth and 4-5% profit growth in recent years. They are expanding in line with our faster than the industry. But it is a very healthy cash cow with $1.5 billion of operating profits in 2024. This circa 40% operating margin is the best in the RELX group and far superior to other professional and business information businesses. The number two player Springer Nature has lower operating margins of around 30% in their academic publishing business, but this is much higher than their other products.
</blockquote>
30-40% operating margins demonstrate the oligopoly's rent extraction. Four of every ten dollars Elsevier extracts from the world's education and research budgets goes straight to their shareholders. And more goes to their executives' salaries and bonuses.<br />
<br /> 

<br> 

<https://blog.dshr.org/2025/03/the-oligopoly-publishers.html>

---

##  Yesterday&#8217;s letter from Heather Cox Richardson is a good one, drawing a... 

date: 2025-03-06, updated: 2025-03-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046395-yesterdays-letter-from-he>

---

##  Glass Onion 

date: 2025-03-06, updated: 2025-03-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/glass-onion>

---

## Tech and democracy

date: 2025-03-06, from: Dave Winer's Scripting News

<p>I found the <a href="https://www.techdirt.com/2025/03/04/why-techdirt-is-now-a-democracy-blog-whether-we-like-it-or-not/">TechDirt piece</a> by Mike Masnick about being a democracy blog disturbing because imho it should have been about democracy at least since 2017, when it was clear that Twitter had just elected a president of the United States. That was a clear strong signal that tech and democracy were tightly connected. </p>
<p>At the time I tried to <a href="http://scripting.com/2017/01/14/whatIfTwtrIsBoughtByARepub.html">raise the alarm</a>, in tech and in finance, that a Republican could buy Twitter for $12B, and that was a cheap price considering the value of the presidency in a tech entrepreneur's hands.</p>
<p>My experience in Silicon Valley goes back to the late 70s, so I have a pretty good understanding of the personality of tech entrepreneurs.</p>
<p>My blog, <a href="http://scripting.com/">Scripting News</a>, has been about democracy since <a href="http://scripting.com/davenet/">inception</a>, in 1994, though it has primarily been about technology. I got the same complaints that I should stick to tech, but I didn't see a line of separation. The stakes were large then, but now they're much larger and as Masnick notes, impossible to ignore. </p>
<p>In the mid-90s there was not much of a debate whether the First Amendment applied to the web, the consensus was that it did not! The NYT didn't defend the 1st A on the web, and <a href="https://en.wikipedia.org/wiki/Communications_Decency_Act">Congress passed a law</a> saying the 1st A didn't apply and a Democratic president, Clinton, signed the law. That was a pretty clear signal. (We were saved by a Federal appeals court, otherwise who knows what we'd be doing now.)</p>
<p>In tech, every generation thinks they're seeing a problem for the first time. This is almost never true. It's like anything else, we're iterative, going over the same issues again and again, and we have a chance to wake up at any point and learn from our mistakes and not repeat the previous cycle, but it seems we never do.</p>
<p>Most important is that we <b>work together</b> and share what we learned. But first you have to be aware that there is history. You know the <a href="https://www.goodreads.com/quotes/634544-those-who-cannot-remember-the-past-are-condemned-to-repeat">famous line</a> about people who "cannot remember the past are condemned to repeat it."</p>
<p>We have great historians working here, and TechDirt is more famous than Scripting News is now. It would be a shame if the historians overlooked the historic connection between tech and democracy because they weren't aware it was documented much earlier than 2025. And btw -- don't miss that <a href="https://this.how/googleAndHttp/">Google et al</a> would like to deprecate the archive of the early web. No one is paying attention to that problem, and it's another way history is lost. The wisdom of the Google people forcing this on the rest of us is very much like the DOGE bros in DC today. </p>
 

<br> 

<http://scripting.com/2025/03/06/142446.html?title=techAndDemocracy>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-06, from: Miguel de Icaza Mastondon feed)

<p>In a world of Targets, Columbias and Harvards, be a Michelle Wu.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114115555025805958>

---

## The Combined Cipher Machine

date: 2025-03-06, updated: 2025-03-05, from: Bruce Schneier blog

<p>Interesting <a href="https://chris-intel-corner.blogspot.com/2025/03/the-combined-cipher-machine-1942-1962.html">article</a>&#8212;with photos!&#8212;of the US/UK &#8220;Combined Cipher Machine&#8221; from WWII.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/03/the-combined-cipher-machine.html>

---

## 101 fun things to do with a locked Kindle e-reader

date: 2025-03-06, updated: 2025-03-06, from: Liam Proven's articles at the Register

<h4><span class="label">FOSDEM 2025</span> Jailbreak it, or even gut it and turn its screen into a low-power portable display with a Modos e-ink controller</h4>
      <p>Amazon&#39;s Kindle e-readers just got a bit less useful, but help is at hand, from jailbreaking to making one of the devices into a monitor.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/03/06/kindle_and_modos/>

---

## The biggest Ponzi scheme in history

date: 2025-03-06, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/the-biggest-ponzi-scheme-of-all>

---

## March 5, 2025

date: 2025-03-06, from: Heather Cox Richardson blog

In the gym of Westminster College in Fulton, Missouri, on March 5, 1946, former and future prime minister of the United Kingdom Winston Churchill rose to deliver a speech. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-5-2025>

---

## Apple Announces, With Much Surprise, Mac Studios With M4 Max and M3 Ultra (!) Chips

date: 2025-03-06, updated: 2025-03-06, from: Daring Fireball

 

<br> 

<https://sixcolors.com/post/2025/03/new-mac-studio-spans-the-generations-with-m4-max-m3-ultra-chips/>

---

## Apple Announces, With Little Surprise, M4 MacBook Airs

date: 2025-03-06, updated: 2025-03-06, from: Daring Fireball

 

<br> 

<https://sixcolors.com/post/2025/03/sky-blues-the-limit-m4-macbook-air-offers-lower-price-improved-camera-and-new-color/>

---

## Who Cares About Getting News That’s True When You’re Getting It Fast With a $32,000/Year Bloomberg Terminal Subscription?

date: 2025-03-06, updated: 2025-03-06, from: Daring Fireball

 

<br> 

<https://www.macrumors.com/2024/12/06/apples-second-5g-modem-said-to-support-mmwave/>

---

**@Jessica Smith's blog** (date: 2025-03-06, from: Jessica Smith's blog)

<p>Indie managed her first-ever roll all the way from her back onto her front!! 🥳</p>
<p>…and her second, because after rolling onto her front she was like, &ldquo;um wtf, I appear to be doing tummy time, I didn&rsquo;t ask for this, I want a nap,&rdquo; so I put her back on her back, and then she immediately rolled over again.</p>
<p>She <em>appears</em> to be settling down for a nap <em>now</em>, though.</p> 

<br> 

<https://www.jayeless.net/2025/03/indies-first-roll.html>

---

## Mark Gurman, Ace Reporter, on the New Regular iPads

date: 2025-03-06, updated: 2025-03-06, from: Daring Fireball

 

<br> 

<https://www.bloomberg.com/news/newsletters/2025-01-12/apple-2025-plans-iphone-17-smart-home-hub-ios-19-ai-apple-watch-ipads-m5>

---

## Tapbots Releases Ivory 2.3 — and Announces That Phoenix, a Bluesky Client, Is Coming

date: 2025-03-06, updated: 2025-03-06, from: Daring Fireball

 

<br> 

<https://tapbots.social/@ivory/114110436182458268>

---

**@Dave Winer's Scripting News** (date: 2025-03-05, from: Dave Winer's Scripting News)

When I ask a personal question on one of the AI bots, all of a sudden on Facebook I'm getting ads about what I asked about. It could be a coincidence, but it's happened a few times, on more than one system. And I'm a paying customer on all of them. 

<br> 

<http://scripting.com/2025/03/05.html#a221451>

---

##  How Congress Can Delete DOGE. &#8220;DOGE&#8217;s parent agency, the US Digital Service... 

date: 2025-03-05, updated: 2025-03-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046394-how-congress-can-delete-d>

---

##  Buttondown makes it super-easy to migrate your newsletter from Substack. Plus: &#8220;Need... 

date: 2025-03-05, updated: 2025-03-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046393-buttondown-makes-it-super>

---

##  One Day, Everyone Will Have Always Been Against This 

date: 2025-03-05, updated: 2025-03-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/one-day-everyone-will-have-always-been-against-this>

---

##  Josh Marshall on corruption and legitimacy regarding the US govt&#8217;s judicial &... 

date: 2025-03-05, updated: 2025-03-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046392-josh-marshall-on-fraudule>

---

##  From poet Joseph Fasano: For a Student Who Used AI to Write... 

date: 2025-03-05, updated: 2025-03-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046390-from-poet-joseph-fasano-f>

---

##  &#8220;Every time Social Security makes its way into the news is an... 

date: 2025-03-05, updated: 2025-03-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046388-every-time-social-securit>

---

##  Paris Marx writes that the US is &#8220;a rogue state that cannot... 

date: 2025-03-05, updated: 2025-03-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046389-paris-marx-writes-that-th>

---

## Your Source for Scoops Half a Day Before They’re Announced Publicly

date: 2025-03-05, updated: 2025-03-06, from: Daring Fireball

 

<br> 

<https://x.com/markgurman/status/1896972159731556579>

---

##  Trump&#8217;s Tour of Revenge Against the American People 

date: 2025-03-05, updated: 2025-03-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/trumps-tour-of-revenge-against-the-american-people>

---

**@Dave Winer's Scripting News** (date: 2025-03-05, from: Dave Winer's Scripting News)

People who criticize Dems for weak opposition at the SOTU are not hypocrites only if they said before the event what they would do. I was glad not to have to choose. I think in the end they did what made sense to each one individually. The range of response by the Dems was much broader than the Repubs. We should be thankful they haven't capitulated, as so many have, esp in what we used to think of as journalism. 

<br> 

<http://scripting.com/2025/03/05.html#a151936>

---

##  Doechii Officially Releases Anxiety (the Song, Lol) 

date: 2025-03-05, updated: 2025-03-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/doechii-officially-releases-anxiety-the-song-lol>

---

**@Dave Winer's Scripting News** (date: 2025-03-05, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://s3.amazonaws.com/scripting.com/images/2022/02/16/gaslight.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">We need a new kind of social network designed to run an effective response to fascism. So far all we have are profit centers for billionaires and would-be billionaires. 

<br> 

<http://scripting.com/2025/03/05.html#a151913>

---

##  Remember Digg? It&#8217;s back, in Pog fo— er, AI form. &#8220;How can... 

date: 2025-03-05, updated: 2025-03-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046385-remember-digg-its-back-in>

---

**@Dave Winer's Scripting News** (date: 2025-03-05, from: Dave Winer's Scripting News)

Watch out for people who celebrate your freedom while profiting from your enslavement. 

<br> 

<http://scripting.com/2025/03/05.html#a143149>

---

**@Dave Winer's Scripting News** (date: 2025-03-05, from: Dave Winer's Scripting News)

One thing to be grateful for, Trump didn’t invite any of the Jan 6 rioters back to the Capitol for his speech. 

<br> 

<http://scripting.com/2025/03/05.html#a143102>

---

## CISA Identifies Five New Vulnerabilities Currently Being Exploited

date: 2025-03-05, updated: 2025-03-04, from: Bruce Schneier blog

<p>Of the <a href="https://www.cisa.gov/news-events/alerts/2025/03/03/cisa-adds-five-known-exploited-vulnerabilities-catalog">five</a>, one is a Windows vulnerability, another is a Cisco vulnerability. We don&#8217;t have any details about who is exploiting them, or how.</p>
<p>News <a href="https://www.bleepingcomputer.com/news/security/cisa-tags-windows-and-cisco-vulnerabilities-as-actively-exploited/">article</a>. Slashdot <a href="https://it.slashdot.org/story/25/03/04/0315205/cisa-tags-windows-cisco-vulnerabilities-as-actively-exploited">thread</a>.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/03/cisa-identifies-five-new-vulnerabilities-currently-being-exploited.html>

---

## Office Hours: The Trump Slump

date: 2025-03-05, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/office-hours-the-trump-slump>

---

## March 4, 2025

date: 2025-03-05, from: Heather Cox Richardson blog

We&#8217;ve been traveling and between that and the fact that the news has come faster and faster, the letters have crept later and later. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-4-2025>

---

## Trump 2.0 Is More Idiocracy Than Kakistocracy

date: 2025-03-05, updated: 2025-03-05, from: Daring Fireball

 

<br> 

<https://bsky.app/profile/ronfilipkowski.bsky.social/post/3ljj4sijyrk24>

---

**@Ryan Gantz Bluesky feed** (date: 2025-03-05, from: Ryan Gantz Bluesky feed)

this shit is dark as hell 

<br> 

<https://bsky.app/profile/sixfoot6.bsky.social/post/3ljlx2jl7nk26>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-05, from: Miguel de Icaza Mastondon feed)

<p>My low carb diet is delicious.</p><p>I put a spoon of fig jam on the bottom, then arugula, mixed with olive oil and sweet vinegar and some parm cheese:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114107350118798106>

---

## Taska Is Now Part of Leitmotif (Developers of Kaleidoscope)

date: 2025-03-05, updated: 2025-03-05, from: Daring Fireball

 

<br> 

<https://9to5mac.com/2025/03/04/makers-of-kaleidoscope-just-acquired-another-native-mac-app-for-developers-and-everything-is-50-off/>

---

## ‘When Your Last Name Is Null, Nothing Works’

date: 2025-03-05, updated: 2025-03-07, from: Daring Fireball

 

<br> 

<https://www.wsj.com/lifestyle/null-last-name-computer-scientists-forms-f0a43b08?st=2u7onu>

---

## ‘Money Job’

date: 2025-03-05, updated: 2025-03-05, from: Daring Fireball

 

<br> 

<https://www.nytimes.com/2025/02/28/opinion/ben-stiller-gene-hackman.html?unlocked_article_code=1.1k4.SQm-.jbz9WEyoATEH&smid=url-share>

---

## Wednesday 5 March, 2025

date: 2025-03-05, from: John Naughton's online diary

Spring is sprung In a college garden on Monday evening. Quote of the Day “Faced with the bewilderment of my countrymen, by the disintegration of a government in thrall to the enemy, by the fact that the institutions of my &#8230; <a href="https://memex.naughtons.org/wednesday-5-march-2025/40502/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/wednesday-5-march-2025/40502/>

---

##  Blogging for Democracy 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/blogging-for-democracy>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-04, from: Miguel de Icaza Mastondon feed)

<p>Cute!  The new live camera feature from Godot 4.4 works on the iPad without any changes:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114106583254255681>

---

##  &#8220;De-extinction startup Colossal Biosciences has gene-edited mice to have mammoth-like features, creating... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046383-de-extinction-startup-col>

---

**@Dave Winer's Scripting News** (date: 2025-03-04, from: Dave Winer's Scripting News)

The news should always report whether a bit of news is a financial plus or minus for Trump as in does this thing make him richer or poorer. That way you can zero in on the "why" of everything. 

<br> 

<http://scripting.com/2025/03/04.html#a213055>

---

**@Dave Winer's Scripting News** (date: 2025-03-04, from: Dave Winer's Scripting News)

I'm thrilled the <a href="https://sports.yahoo.com/article/warriors-vs-knicks-odds-predictions-165116069.html">Knicks</a> are playing tonight. That's what I'll be watching. Let me know if anything happens in DC. 

<br> 

<http://scripting.com/2025/03/04.html#a211442>

---

## Apple Updates iPad Air (M2→M3) and Regular iPad (A14→A16), and Revamps Magic Keyboard for iPad Air

date: 2025-03-04, updated: 2025-03-04, from: Daring Fireball

 

<br> 

<https://sixcolors.com/post/2025/03/apple-updates-ipad-air-and-ipad-revamps-magic-keyboard-for-ipad-air/>

---

##  From Just Security: &#8220;A timeline of actions that highlight the alarming level... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046382-from-just-security-a-time>

---

## March 3, 2025

date: 2025-03-04, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/158394796/07b318e653cad4eb0150d9e7723e1910.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/158394796/07b318e653cad4eb0150d9e7723e1910.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/march-3-2025-56d>

---

## Apple Hasn’t Updated Its US Government Transparency Report Since June 2023, 20 Months Ago

date: 2025-03-04, updated: 2025-03-04, from: Daring Fireball

 

<br> 

<https://www.apple.com/legal/transparency/us.html>

---

##  Josh Marshall looks closely at Trump&#8217;s Feb 11th &#8220;workforce optimization&#8221; EO for... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046381-josh-marshall-looks-close>

---

##  Formerly anti-vax parents on how they changed their minds. A former anti-vax... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046380-formerly-anti-vax-parents>

---

##  Bellingcat&#8217;s Eliot Higgins on disordered discourse (which is not mere misinformation). &#8220;When... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046373-bellingcats-eliot-higgins>

---

## iFixit’s iPhone 16e Teardown

date: 2025-03-04, updated: 2025-03-04, from: Daring Fireball

 

<br> 

<https://www.ifixit.com/News/108430/iphone-16e-teardown-never-before-has-skipping-the-upgrade-made-more-sense>

---

## The Free Speech Will Continue Until Trump’s Morale Improves

date: 2025-03-04, updated: 2025-03-04, from: Daring Fireball

 

<br> 

<https://truthsocial.com/@realDonaldTrump/posts/114104167452161158>

---

##  On Public Service 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/on-public-service>

---

## Firefox 136 finally brings the features that fans wanted

date: 2025-03-04, updated: 2025-03-04, from: Liam Proven's articles at the Register

<h4>Vertical tabs, native Arm64 Linux version, and AMD GPU-accelerated video playback</h4>
      <p>Mozilla&#39;s Firefox 136 is out today. Despite recent Mozilla moves, it&#39;s still a better choice for the privacy-conscious than Chrome.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/03/04/firefox_136/>

---

##  &#8220;The &#8216;war on woke&#8217; did not suddenly appear. It is an idea... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046374-the-war-on-woke-did>

---

**@Dave Winer's Scripting News** (date: 2025-03-04, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://s3.amazonaws.com/scripting.com/images/2024/05/03/shootThisDog.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I'm trying to get ChatGPT to not assume I have the same abilities as it has. You can't dump a huge amount of code at me and expect me to quickly see what changed, that's not how human intellect works, but this is something computers are <i>extremely</i> good at. I told my bot that it would work a lot better if they just told me what to change. I said this: "I have a lot of experience being a human being and working with other humans, and all your clients as far as I know are human." In other words, be concise and direct. This is what it said in response. "That’s a sharp observation, and I appreciate the insight. I'll keep focusing on clarity, directness, and being actually helpful rather than just dumping information. If I ever seem to be leading you down a non-optimal path, feel free to call it out!" Note how concise the response was. More advice for the bot. Help your human understand. I think maybe eventually we may be their pets. Try scratching behind the ears. On the other hand, to my human friends, do not depend on the strategies they choose. They will never on their own question the path they took. It may not be the optimal one, but they'll keep going down it. It's up to you to say nah this isn't the way I want to go, and they will always respect that. It's not like <a href="https://www.youtube.com/watch?v=Wy4EfdnMZ5g&t=18s">HAL in 2001</a>. I've sometimes wasted  whole programming session going in the wrong direction assuming my bot was good at this. None of them are, as far as I can tell. 

<br> 

<http://scripting.com/2025/03/04.html#a160242>

---

## Claim Chowder: October 2022 Rumors Regarding the iPhone 16e (a.k.a. ‘SE 4’)

date: 2025-03-04, updated: 2025-03-04, from: Daring Fireball

 

<br> 

<https://www.macrumors.com/2022/10/09/iphone-se-4-to-feature-6-1-inch-display-with-notch/>

---

##  He Never Made the Same Choice Twice: 10 of Our Favorite Gene... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046375-he-never-made-the-same>

---

##  Criminal defense attorney Ken White: &#8220;What happens if federal, state, or local... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046362-criminal-defense-attorney>

---

**@Dave Winer's Scripting News** (date: 2025-03-04, from: Dave Winer's Scripting News)

Another question about tonight. Where will Elon be? In the seat usually occupied by the VP or the Speaker? Will he make faces at the camera or interrupt Trump? 

<br> 

<http://scripting.com/2025/03/04.html#a141255>

---

##  Is GoFundMe the New Insurance? &#8220;As the internet says, &#8216;This is not... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046378-is-gofundme-the-new-insur>

---

**@Dave Winer's Scripting News** (date: 2025-03-04, from: Dave Winer's Scripting News)

The single most important thing about what Musk is doing is that it is Musk that is doing it. Not elected, not accountable to anyone, and the only way we know what he's doing is from the aftermath. We play no role in his choices. Plus, he would be our last choice if we were in the market for a crazy despot to ruin our country. He wasn't born or educated here, and thus has very little idea of who we are and thus what the people he's firing do. 

<br> 

<http://scripting.com/2025/03/04.html#a140559>

---

**@Dave Winer's Scripting News** (date: 2025-03-04, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://s3.amazonaws.com/scripting.com/images/2024/11/13/mobIncited.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Remember when watching the speech tonight, if you are watching, what <a href="https://www.youtube.com/watch?v=UXR_bqyAy4E&t=170s">our Capitol was like</a> on that infamous day. The guy speaking, the guy up there on the podium, he did that. That's who he is. And where is right now, that's where it happened. Takes a lot of nerve to return to the scene of his greatest crime, so far. 

<br> 

<http://scripting.com/2025/03/04.html#a135157>

---

##  Total Context Collapse: New Polls Show That 100% Of Americans Have Forgotten... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046377-total-context-collapse-ne>

---

## Trojaned AI Tool Leads to Disney Hack

date: 2025-03-04, updated: 2025-03-04, from: Bruce Schneier blog

<p>This is a <a href="https://www.wsj.com/tech/cybersecurity/disney-employee-ai-tool-hacker-cyberattack-3700c931?st=wdhzKF&#038;reflink=desktopwebshare_permalink">sad story</a> of someone who downloaded a Trojaned AI tool that resulted in hackers taking over his computer and, ultimately, costing him his job.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/03/trojaned-ai-tool-leads-to-disney-hack.html>

---

## Cloudflare's bot bouncer blocks weirdo browsers

date: 2025-03-04, updated: 2025-03-04, from: Liam Proven's articles at the Register

<h4>Not on Firefox or a Chrome derivative? You shall not pass</h4>
      <p>Users of some of the less well-known web browsers are getting blocked from accessing multiple sites by Cloudflare&#39;s flaky browser-detection routines.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/03/04/cloudflare_blocking_niche_browsers/>

---

## Democrats! Wake the hell up!

date: 2025-03-04, from: Robert Reich's blog

Boycott Trump&#8217;s address to Congress tonight. If you must go, make good trouble. 

<br> 

<https://robertreich.substack.com/p/democrats-wake-the-hell-up>

---

## March 3, 2025 

date: 2025-03-04, from: Heather Cox Richardson blog

As seemed evident even at the time, the ambush of Ukraine president Volodymyr Zelensky in the Oval Office on Friday was a setup to provide justification for cutting off congressionally approved aid to Ukraine as it tries to fight off Russia&#8217;s invasion. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-3-2025>

---

## Framous 1.0

date: 2025-03-04, updated: 2025-03-04, from: Daring Fireball

 

<br> 

<https://9to5mac.com/2025/02/25/framous-mac-app-device-screenshots/>

---

##  On Saturday, Steph Curry dunked in a regular-season NBA game for the... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046376-on-saturday-steph-curry-d>

---

## Another Tim Cook Product Announcement Teaser on X: ‘There’s Something in the Air’

date: 2025-03-04, updated: 2025-03-04, from: Daring Fireball

 

<br> 

<https://x.com/BasicAppleGuy/status/1896602928984818121>

---

## A New Arm of the Kremlin

date: 2025-03-04, from: Dan Rather's Steady

As Trump&#8217;s gaslighting goes global 

<br> 

<https://steady.substack.com/p/a-new-arm-of-the-kremlin>

---

##  A good, long profile of author Robert Caro, in which he reveals... 

date: 2025-03-04, updated: 2025-03-04, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046346-a-good-long-profile-of>

---

## Apple Details Upcoming Changes and Improvements to Child Accounts, App Store Age Restrictions, and More

date: 2025-03-03, updated: 2025-03-04, from: Daring Fireball

 

<br> 

<https://developer.apple.com/support/downloads/Helping-Protect-Kids-Online-2025.pdf>

---

##  Rick Steves announces that he is cancer-free. &#8220;PSA 55 to PSA 0.09... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046359-rick-steves-announces-tha>

---

##  &#8220;No constitutional text is well written enough to save the rule of... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046372-no-constitutional-text-is>

---

## Killing People Through Corruption: More Examples from Aviation.

date: 2025-03-03, from: James Fallows, Substack

Some of the assault on governing institutions comes from ignorance and zeal. Some is just corrupt. Together this will lead to deaths. Here's why. 

<br> 

<https://fallows.substack.com/p/killing-people-through-corruption>

---

##  Menswear writer Derek Guy on Zelenskyy&#8217;s lack of suit in the WH:... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046371-menswear-writer-derek-guy>

---

## Jeremy Keith on the Web on Mobile

date: 2025-03-03, updated: 2025-03-03, from: Daring Fireball

 

<br> 

<https://adactio.com/journal/21728>

---

## The Size of the US Federal Workforce Has Not Grown in the Last 50 Years

date: 2025-03-03, updated: 2025-03-03, from: Daring Fireball

 

<br> 

<https://www.newyorker.com/news/the-financial-page/the-musk-trump-war-on-federal-employees-doesnt-add-up>

---

##  America Alone 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/america-alone>

---

## Decolonizing my garden

date: 2025-03-03, from: Tracy Durnell Blog

Gardens are colonized spaces: think of the quintessential American garden with its close-hewn evenly-green lawn of invasive grass, some matching cherubic flowers along the front of the house, maybe one tree or a couple flowering shrubs, lined by a manicured hedge or wall of arborvitae. This is a landscape in service to human desires &#8212; [&#8230;] 

<br> 

<https://tracydurnell.com/2025/03/03/decolonizing-my-garden/>

---

## March 2, 2025

date: 2025-03-03, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/158315978/b71c8efb57b2d89fb2333e8fd541ff62.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/158315978/b71c8efb57b2d89fb2333e8fd541ff62.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/march-2-2025-457>

---

##  Putin Is Ready to Carve Up the World. Trump Just Handed Him... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046370-putin-is-ready-to-carve>

---

## Monday Monday

date: 2025-03-03, from: Doc Searls (at Harvard), New Old Blog

Naming today&#39;s tab dump after one of The Mamas and The Papas best songs. Here is a lipsync&#39;d video on YouTube. Dig the old-skool stereo. Where I explained customer-to-company AI agent-to-AI agent interaction (you know, markets as conversations) in May of last year. 

<br> 

<https://doc.searls.com/2025/03/03/monday-monday/>

---

## VisionOS 2.4, Now in Beta, Will Add New ‘Spatial Gallery’ App and Support for Apple Intelligence, Along With a ‘Vision Pro’ App for iPhones

date: 2025-03-03, updated: 2025-03-03, from: Daring Fireball

 

<br> 

<https://sixcolors.com/post/2025/02/new-visionos-beta-adds-apple-intelligence-spatial-gallery-ios-apps/>

---

##  Good grief, the last two paragraphs of Heather Cox Richardson&#8217;s piece on... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046368-good-grief-the-last-two>

---

##  &#8220;The Conscience of the Nation Must be Roused&#8221; 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/the-conscience-of-the-nation-must-be-roused>

---

##  Russian activist Garry Kasparov on The Putinization of America. &#8220;Unleashing Elon Musk... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046366-russian-activist-garry-ka>

---

##  How the US press would cover the 2025 Coup if it were... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046365-how-the-us-press-would>

---

**@Dave Winer's Scripting News** (date: 2025-03-03, from: Dave Winer's Scripting News)

Idea for SNL. A special episode of Law and Order where the cops arrest someone for being disrespectful to Trump,. The prosecutors debate among themselves if they have to do this, no one quits, they don't feel good about it but they prosecute, being assured by the District Attorney it's the right thing to do. When there are objections judge rules in favor of the government most of the time, but wants to show balance so once or twice rules in favor of the defense, but it doesn't matter, when the judge gives instructions to the jury he says basically the only option is to convict, or so it seems that's what he's saying and dutifully, the jury convicts. There are sentencing standards, provided by the DOJ so the judge sentences the accused to life at hard labor. Back in the studio at 30 Rock the audience isn’t sure if they should laugh, slowly realizing it’s not meant to be funny, the skit fades out to a commercial break. 

<br> 

<http://scripting.com/2025/03/03.html#a162441>

---

## Mike Myers’s Skewering Portrayal of Elon Musk on SNL

date: 2025-03-03, updated: 2025-03-04, from: Daring Fireball

 

<br> 

<https://www.youtube.com/watch?v=CUpOMSJ1MdU>

---

##  Skilled technologists are being forced out of government; 18F and USDS are... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046364-skilled-technologists-are>

---

##  Great Timothy Snyder analysis of the Trump/Vance/Zelenskyy meeting. &#8220;There was a logic... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046363-great-timothy-snyder-anal>

---

## Is an Intel N100 a better value than a Raspberry Pi?

date: 2025-03-03, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Is an Intel N100 a better value than a Raspberry Pi?</span>

            <p><strong>tl;dr</strong>: <em>it depends</em>.</p>

<p></p>

<p>About one year ago, I bought an Intel N100 mini PC (specifically the <a href="https://amzn.to/41EtTMk">GMKtec N100 NucBox G3</a>) and <a href="https://www.jeffgeerling.com/blog/2024/when-did-raspberry-pi-get-so-expensive">compared it to the Raspberry Pi 5 8GB</a>.</p>

<p>A year later, and we have <a href="https://amzn.to/41gFu2O">a newer $159 16GB version of that mini PC</a> with a slightly-faster Intel N150, and a new <a href="https://www.jeffgeerling.com/blog/2025/who-would-buy-raspberry-pi-120">16GB Raspberry Pi 5</a>.</p>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden">March 3, 2025
</span>
 

<br> 

<https://www.jeffgeerling.com/blog/2025/intel-n100-better-value-raspberry-pi>

---

##  Teens Seeking Abortions Face Huge Challenges. INeedAnA Is Here to Help. The... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046345-teens-seeking-abortions-f>

---

##  An interesting summary of a call with Dem Reps Raskin & Stansbury:... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046361-an-interesting-summary-of>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-03, from: Miguel de Icaza Mastondon feed)

<p>Miroslav is tuning the performance of the new TileSet manager in Godot for iPad:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114098965228698313>

---

##  Jamelle Bouie: Democrats should skip Trump&#8217;s State of the Union address and... 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046358-jamelle-bouie-democrats-s>

---

## Basic MS-DOS memory management for beginners

date: 2025-03-03, from: Liam on Linux

From a <a href="https://old.reddit.com/r/DOS/comments/1j1efb0/wheres_my_upper_memory/">Reddit post</a>.&nbsp;<br /><br /><p>&nbsp; &nbsp; &nbsp;A very brief rundown:</p><ol>       <li><p>If you are using Microsoft tools, you need to load the 386 memory manager, <code>emm386.exe</code>, in your <code>CONFIG.SYS</code> file.</p></li><li><p>But, to do that, you need to load the XMS manager, <code>HIMEM.SYS</code>, <em>first</em>.</p></li><li><p>So your <code>CONFIG.SYS</code> should begin with the lines:</p></li>     </ol><pre>
DEVICE=C:\WINDOWS\HIMEM.SYS
DEVICE=C:\WINDOWS\EMM386.EXE
DOS=HIGH,UMB</pre><p>4. That's the easy bit. Now you have to find free Upper Memory Blocks to tell EMM386 to use.</p><p>5. Do a clean boot with F5 or F8 -- telling it not to process <code>CONFIG.SYS</code> or run <code>AUTOEXEC.BAT</code>. Alternatively boot from a DOS floppy that doesn't have them.</p><p>6. Run the Microsoft Diagnostics, <code>MSD.EXE</code>, or a similar  tool such as Quartdeck Manifest. Look at the memory usage between 640kB  and 1MB. Note, the numbers are in hexadecimal.</p><p>7. Look for unused blocks that are not ROM or I/O. Write down the address ranges.</p><p>8. An example: if you do not use monochrome VGA you can use the mono VGA memory area: 0xB000-0xB7FF.</p><p>9. One by one, tell EMM386 to use these. First choose if you want EMS (<strong>E</strong>xpanded Memory Services) or not. It is useful for DOS apps, but not for Windows apps.</p><p>10. If you do, you need to tell it:</p><pre>
DEVICE=C:\WINDOWS\EMM386.EXE RAM</pre><p><strong>And</strong> set aside 64kB for a page frame, for example by putting this on the end of the line:</p><pre>
FRAME=E0000</pre><p>Or, tell it not to use one:</p><pre>
FRAME=none</pre><p>11. Or disable EMS:</p><pre>
DEVICE=C:\WINDOWS\EMM386.EXE NOEMS</pre><p>12. <strong>Important</strong> Add these parameters one at a time, and reboot and test, every single time, without exception.</p><p>13. Once you told it which you want now you need to tell it the RAM blocks to use, e.g.</p><pre>
DEVICE=C:\WINDOWS\EMM386.EXE RAM FRAME=none I=B000-B7FF</pre><p>Again, reboot every time to check. Any single letter wrong can stop the PC booting. <em>Lots</em> of testing is vital. Every time, run MSD and look at what is in use or is not in use. Make lots of notes, on paper.</p><p>14. If you find EMM386 is trying to use a block that it mustn't you can eXclude it:</p><pre>
DEVICE=C:\WINDOWS\EMM386.EXE RAM X=B000-B7FF
</pre><p>The more blocks you can add, the better.</p><p>15. After this -- a few hours' work -- now you can try to populate your new UMBs.</p><p>16. Device drivers: do this by prefixing lines in <code>CONFIG.SYS</code> with <code>DEVICEHIGH</code> instead of <code>DEVICE</code>.</p><p>Change:</p><pre>
DEVICE=C:\DOS\ANSI.SYS</pre><p>To:</p><pre>
DEVICEHIGH=C:\DOS\ANSI.SYS</pre><p>17. Try every driver, one by one, rebooting every time.</p><p>18. Now move on to loadable Terminate and Stay Resident (TSR) programs. Prefix lines that run a program in <code>AUTOEXEC.BAT</code> with <code>LH</code>, which is short for <code>LOADHIGH</code>.</p><p>Replace:</p><pre>
MOUSE</pre><p>With:</p><pre>
LH MOUSE</pre><p>Use MSD and the <code>MEM</code> command -- <code>MEM /c /p</code> -- to identify all your TSRs, note their sizes, and load them all high.</p><p>This is a day or two's work for a novice. I could do it in only an  hour or two and typically get 625kB or more base memory free, and I made  good money from this hard-won skill.&nbsp; &nbsp;</p><br /><br /><br /><img src="https://www.dreamwidth.org/tools/commentcount?user=liam_on_linux&ditemid=93997" width="30" height="12" alt="comment count unavailable" style="vertical-align: middle;"/> comments 

<br> 

<https://liam-on-linux.dreamwidth.org/93997.html>

---

## From Design doc to code: the Groundhog AI coding assistant (and new Cursor meta)

date: 2025-03-03, from: Geoffrey Hunntley's blog

<p>Ello everyone, in the &quot;<a href="https://ghuntley.com/tradecraft" rel="noreferrer">Yes, Claude Code can decompile itself. Here&apos;s the source code</a>&quot; blog post, I teased about a new meta when using Cursor. This post is a follow-up to the post below.</p><figure class="kg-card kg-bookmark-card"><a class="kg-bookmark-container" href="https://ghuntley.com/stdlib/"><div class="kg-bookmark-content"><div class="kg-bookmark-title">You are using Cursor AI incorrectly...</div><div class="kg-bookmark-description">I&#x2019;m hesitant to give</div></div></a></figure> 

<br> 

<https://ghuntley.com/specs/>

---

## The Trump-Vance-Musk-Putin manosphere

date: 2025-03-03, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/the-trump-vance-musk-putin-manosphere>

---

## March 2, 2025 

date: 2025-03-03, from: Heather Cox Richardson blog

On February 28, the same day that President Donald Trump and Vice President J.D. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-2-2025>

---

##  Hero Snow Reporter Who Took on Vance Still Employed 

date: 2025-03-03, updated: 2025-03-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/hero-snow-reporter-who-took-on-vance-still-employed>

---

## Monday 3 March, 2025

date: 2025-03-03, from: John Naughton's online diary

The Island Thanks to Max Whitby (Whom God Preserve), we had a lovely day on Lindisfarne (aka Holy Island) off the Northumberland coast. The upturned boat in the picture belongs to a friend of his who is (he says) a &#8230; <a href="https://memex.naughtons.org/monday-3-march-2025/40494/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-3-march-2025/40494/>

---

## Sunday caption contest: Dance

date: 2025-03-02, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-dance>

---

##  JD Vance cut his Vermont vacation short, perhaps because of the cold... 

date: 2025-03-02, updated: 2025-03-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046356-jd-vance-cut-his-vermont>

---

## Claim Chowder: Ming-Chi Kuo on Demand for the iPhone 16 Lineup

date: 2025-03-02, updated: 2025-03-03, from: Daring Fireball

 

<br> 

<https://medium.com/@mingchikuo/iphone-16-first-weekend-pre-order-analysis-estimated-total-sales-of-about-37-million-units-pro-0a04869b147c>

---

## Elon Musk, Weirdo Extraordinaire

date: 2025-03-02, updated: 2025-03-02, from: Daring Fireball

 

<br> 

<https://www.tmz.com/2025/03/01/elon-musk-new-baby-14th-child-shivon-zilis/>

---

## Giving Away Tabs

date: 2025-03-02, from: Doc Searls (at Harvard), New Old Blog

If I share the link to one of my open tabs and close it, the reader gets a new tab when they click on the link, no? So, in that case I&#39;m giving away tabs, seems to me on a Sunday afternoon. I don&#39;t have Hulu, and I don&#39;t have cable, but I do have [&#8230;] 

<br> 

<https://doc.searls.com/2025/03/02/giving-away-tabs/>

---

## March 1, 2025

date: 2025-03-02, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/158247614/644cb51077ee811c7f4a348b53c7f417.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/158247614/644cb51077ee811c7f4a348b53c7f417.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/march-1-2025-e15>

---

## The best revenge is none

date: 2025-03-02, from: Dave Winer's Scripting News

<p><a href="https://www.goodreads.com/author/quotes/14997571.Pamela_Short">Pamela Short</a>: The best revenge is none. Heal yourself, forgive, move on and don't become like those who hurt you.</p>
<p>There's a pragmatic reason for this. I found, when I was young and didn't know better, that getting revenge didn't just hurt the target, it also left me with a deep pain. When I did something to another person I was also doing it to myself. I found that the dark cloud of my harmful behavior would stay with me for a long time, maybe never going away. I would find it hard to forgive myself for what I did. So it's better to not try to get revenge, and let the pain of being hurt dissipate on its own.</p>
<p>I have a story to go with that. In the beginning of RSS, I had a partner and customer ask me at lunch if there were any circumstances when I would take the server we ran for them off the air. I said that's a weird question, but of course not. The very next day, his team announced they were taking over RSS, completely changing it, and the first I heard of it was in the public announcement. Later that same day, my brain boiling over in anger at being treated so poorly, I did eventually land on the idea of just taking his server offline. And then I laughed that he knew I'd get to that, and wanted to plant a little marker there for whatever reason, I don't know. But no I didn't take his server off the air. He may be a bastard, but he did pay for the service so his server stays up. And two years later, his project a failure, I came out with RSS 2.0 and that was the end of that. It wasn't revenge, it was just picking up the ball in the playground and restarting the game that they had caused to stop. We went on and RSS did a lot of good work.</p>
 

<br> 

<http://scripting.com/2025/03/02/194416.html?title=theBestRevengeIsNone>

---

## Mike Myers as Elon Musk

date: 2025-03-02, from: Dave Winer's Scripting News

<p><a href="https://www.youtube.com/watch?v=CUpOMSJ1MdU&t=260s">Video</a> of Mike Myers doing Elon Musk in last night's SNL cold open. </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/03/02/myersAsMuskSNL.png"></center><a href="https://www.youtube.com/watch?v=CUpOMSJ1MdU&t=260s">Myers does Musk</a> almost as well as Musk does Musk.</div></p>
 

<br> 

<http://scripting.com/2025/03/02/153227.html?title=mikeMyersAsElonMusk>

---

##  I&#8217;ve been updating this post about JD Vance&#8217;s ski vacation to Vermont... 

date: 2025-03-02, updated: 2025-03-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046355-ive-been-updating-this-po>

---

## Unnecessary

date: 2025-03-02, from: Dave Rupert blog

<p><tt>It’s a secret to everyone! This post is for RSS subscribers only.
<a href="https://daverupert.com/rss-club/">Read more about RSS Club</a>.
</tt></p>
<p>Yesterday, my daughter was in Dallas for the NCA Cheer Competition. My wife sent me a text letting me know her team won! Yay! My daughter is a national champion at age 9. Ten minutes later, the next text I get is that there’s an active shooter and they’re in lockdown. Panic consumed the 30,000 people in the convention center. Kids trampled in the stampede to get out. Families and teams separated. Youth running across a 10 lane freeway to escape, traffic screeching to a halt. Horrifying.</p>
<p>The actual cause of the incident was some cheer parents getting into a fight which knocked down some metal poles. The whole situation is sad. Unnecessary trauma because some dumb parents lost their ability to be civil. Unnecessary trauma created through our lax gun laws and inability to stop this uniquely American horror. An unnecessary situation. Thankfully no one was critically injured and the shooter wasn’t real… this time. We’re living inside a lit powder keg at all times and its exhausting.</p> 

<br> 

<https://daverupert.com/2025/03/unnecessary/>

---

**@Dave Winer's Scripting News** (date: 2025-03-02, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2017/09/12/pitcher.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">If I understand correctly, this <a href="https://techcrunch.com/2025/02/28/bluesky-based-instagram-alternative-flashes-launches-publicly/">TechCrunch article</a> is misleading the same way the Bluesky company misleads. There is no  benefit to users of either app that they use the same complicated and new structure to communicate, where simpler and established standards would work just as well. There is a way they could make this work. Come up with a plugin architecture and something like an app store, so developers could define new data types, and then we'd really have something. I would probably do an <a href="https://opml.org/">outliner</a> plugin first, then a <a href="http://scripting.com/2022/08/25/210902.html">Markdown</a> plugin. 

<br> 

<http://scripting.com/2025/03/02.html#a142420>

---

## Sara Bareilles at the Kennedy Center

date: 2025-03-02, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/sara-bareilles-at-the-kennedy-center>

---

## Can a LLM convert C, to ASM to specs and then to a working Z/80 Speccy tape? Yes.

date: 2025-03-02, from: Geoffrey Hunntley's blog

<p><a href="https://bsky.app/profile/damieng.bsky.social/post/3ljdkwup7sc2d?ref=ghuntley.com">Damien Guard</a> nerd sniped me and other folks wanted more proof that it is now cheap, easy and possible to <a href="https://ghuntley.com/tradecraft/" rel="noreferrer">cheaply rewrite software or clone existing &quot;source available&quot; businesses</a> (see bottom of the post).</p><p>So, let&apos;s get cracking by creating a toy application by sending this</p> 

<br> 

<https://ghuntley.com/z80/>

---

## The shame of it

date: 2025-03-02, from: Robert Reich's blog

But it&#8217;s not our shame. 

<br> 

<https://robertreich.substack.com/p/sunday-sermon>

---

## March 1, 2025

date: 2025-03-02, from: Heather Cox Richardson blog

John Simpson of the BBC noted recently that &#8220;there are years when the world goes through some fundamental, convulsive change.&#8221; Seven weeks in, he suggested, 2025 is on track to be one of them: &#8220;a time when the basic assumptions about the way our world works are fed into the shredder.&#8221; 

<br> 

<https://heathercoxrichardson.substack.com/p/march-1-2025>

---

## Listened to Beneath the Brine

date: 2025-03-02, from: Tracy Durnell Blog

 

<br> 

<https://tracydurnell.com/2025/03/01/listened-to-beneath-the-brine/>

---

## Mozilla flamed by Firefox fans after promises to not sell their data go up in smoke

date: 2025-03-02, updated: 2025-03-02, from: Liam Proven's articles at the Register

<h4>Open source browser maker ties itself up in legalese and explanations</h4>
      <p>Mozilla this week asked Firefox users to abide by new Terms of Use, and updated its Privacy Notice as well as an FAQ – only to quickly issue a clarification that it isn’t actually claiming ownership of user data.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/03/02/mozilla_introduces_terms_of_use/>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-02, from: Miguel de Icaza Mastondon feed)

<p>Update.</p><p>God that recipe is so good.</p><p> <a href="https://www.seriouseats.com/barbara-lynchs-tagliatelle-bolognese-recipe-boston-chef-no-9-park" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://www.</span><span class="ellipsis">seriouseats.com/barbara-lynchs</span><span class="invisible">-tagliatelle-bolognese-recipe-boston-chef-no-9-park</span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114090352589313618>

---

**@Dave Winer's Scripting News** (date: 2025-03-02, from: Dave Winer's Scripting News)

What <a href="https://www.theatlantic.com/ideas/archive/2025/02/ukraine-us-relations-trump/681880/?gift=f35zZN0v_gDFE8xNwlQAHeTYjwxXW5BWaruPT1MU64A&utm_source=copy-link&utm_medium=social&utm_campaign=share">happened</a> in the Oval Office yesterday was as horror-inspiring as the riot in the Capitol on 1/6/2021. 

<br> 

<http://scripting.com/2025/03/01.html#a014145>

---

## February 28, 2025

date: 2025-03-02, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/158204180/d6e18f15093f9494466c885a6c3eba35.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/158204180/d6e18f15093f9494466c885a6c3eba35.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/february-28-2025-76d>

---

**@Dave Winer's Scripting News** (date: 2025-03-02, from: Dave Winer's Scripting News)

My America is still a democracy and still part of the western world. A pretty great country, far from perfect, but my home. It's rich in all kinds of things, including money. We made a mistake in electing the person we did. Can we admit that and start fixing the mistake now? If not now, when? 

<br> 

<http://scripting.com/2025/03/01.html#a013031>

---

## It might be a small consolation, but Elon Musk is getting poorer by the day

date: 2025-03-02, from: John Naughton's online diary

Today&#8217;s Observer column: Extreme wealth has always played a role in democracies. Money has always talked, especially in the US. Years ago, Lawrence Lessig, the great legal scholar, calculated that most of the campaign funding for members of Congress and &#8230; <a href="https://memex.naughtons.org/it-might-be-a-small-consolation-but-elon-musk-is-getting-poorer-by-the-day/40492/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/it-might-be-a-small-consolation-but-elon-musk-is-getting-poorer-by-the-day/40492/>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-02, from: Miguel de Icaza Mastondon feed)

<p>Massachusetts is home of the best potato chips you can get.  Cape Cod chips.</p><p>It is only when you travel to other states that you realize just how good we have it.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114090000054189992>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-02, from: Miguel de Icaza Mastondon feed)

<p>The guy at local store recommended it “I am glad it is going to a good home” he said to me.</p><p>At my age, I should only drink one glass at night, but I still have a 90 minute wait for my bolognese.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114089967601025619>

