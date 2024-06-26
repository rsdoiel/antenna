---
title: columns 2024.26
updated: 2024-06-26 08:05:28
---

# columns 2024.26

(date: 2024-06-26 08:05:28)

---

## Wordle Kitty prevails!

date: 2024-06-26, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/26/wordleGrid.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Wordle Kitty hunkers down in an epic battle with Wordle Monkey on stage at Carnegie Hall in NYC for the honor of kittens everywhere. She ultimately prevails, but not without a brush with disaster! The NY Times judges her performance as merely “great!”</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/06/26/kittenAbides.png"></center>The Kitten Abides!</div></p>
 

<http://scripting.com/2024/06/26/144307.html?title=wordleKittyPrevails>

---

##  Former Tennessee Abortion Clinic Workers & Volunteers Speak Out Against the State&#8217;s Abortion Ban 

date: 2024-06-26, updated: 2024-06-26, from: Jason Kittke's blog

 

<https://kottke.org/24/06/former-tennessee-abortion-clinic-workers-volunteers-speak-out-against-the-states-abortion-ban>

---

##  Unhoused participants in the Denver Basic Income Project used their $1000/mo to... 

date: 2024-06-26, updated: 2024-06-26, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044873-unhoused-participants-in->

---

**@Dave Winer's Scripting News** (date: 2024-06-26, from: Dave Winer's Scripting News)

Summary of yesterday's news: You should now be able to subscribe to my podcasts. Use the search function in your favorite podcast client and look for <i>Scripting News.</i> This is what it <a href="https://imgs.scripting.com/2024/06/26/applePodcastClientForScriptingNews.png">looks like</a> in Apple Podcasts, for example. 

<http://scripting.com/2024/06/26.html#a130215>

---

## The US Is Banning Kaspersky

date: 2024-06-26, updated: 2024-06-25, from: Bruce Schneier blog

<p><a href="https://www.wired.com/story/us-bans-kaspersky-software/?redirectURL=https%3A%2F%2Fwww.wired.com%2Fstory%2Fus-bans-kaspersky-software%2F">This move</a> has been coming for a long time.</p>
<blockquote><p>The Biden administration on Thursday said it’s <a>banning the company</a> from selling its products to new US-based customers starting on July 20, with the company only allowed to provide software updates to existing customers through September 29. The ban&#8212;­the first such action under authorities given to the Commerce Department in 2019­&#8212;follows <a href="https://www.wired.com/story/wired-awake-140917/">years of warnings</a> from the US intelligence community about Kaspersky being a national security threat because Moscow could allegedly commandeer its all-seeing antivirus software to spy on its customers...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/06/the-us-is-banning-kaspersky.html>

---

## Office Hours: Who will win tomorrow’s debate?

date: 2024-06-26, from: Robert Reich's blog

And why? 

<https://robertreich.substack.com/p/office-hours-tomorrows-debate>

---

## 2024-06-22 Lieu for niche search

date: 2024-06-26, from: Alex Schroeder's Blog

<h1 id="2024-06-22-lieu-for-niche-search">2024-06-22 Lieu for niche search</h1>

<p>“Let me google it for you” was a bad reply back in the days; these days telling somebody “to google something” is insulting because we all know how aggravating it is to spend time and energy against privacy invasions and sifting through the AI slop and the grifters. Life is short and there’s no time for this.</p>

<p>I try to err on the side of caution and always add links to stuff if I can. I’m preparing for the total breakdown of search as we know it.</p>

<p>Some days Internet search feels like we’re at the capitalist optimum where everything is as painful as possible but not prohibitive. Can’t live without it (to find those link farms, advice sites, public archives) but also can’t find the private websites and blogs.</p>

<p>Is it true that Reddit managed to replace all the blogs or is it true that we just can’t find them any more.
The real problem is the loss of trust all around.</p>

<p><a class="account" href="https://merveilles.town/@vesto" title="@vesto@merveilles.town">@vesto</a> reminded me that there was a solution in &ldquo;the realm of curating human-scale websites&rdquo;: <a href="https://lieu.cblgh.org/">Lieu</a>.</p>

<p>And indeed, it looks like a great starting place!</p>

<p>I&rsquo;m thinking that perhaps I can somehow use blog planets as sources for topic-specific search engines.
I could use the blogs on <a href="https://planet.emacslife.com/">Planet Emacslife</a> to build an Emacs search engine and the blogs of <a href="https://campaignwiki.org/rpg/">RPG Planet</a> to build an RPG search engine.</p>

<p>It seems quite doable!</p>

<p>The ethics remain complicated, of course. Would I want search engine developers to scrape my site? Usually I just notice them when their bots misbehave so I&rsquo;m pretty averse to the entire situation. The search engine makers also being ad sellers and ads being a poison for our society doesn&rsquo;t help. The search engine makers being AI fans and AI energy and water requirements being cited as the reasons to keep fossil power plants running and to build nuclear power plants doesn&rsquo;t help. AI also resulting in me having to read texts that other people didn&rsquo;t bother to write adds injury to insult.</p>

<p>In any case… perhaps there is a way to have ethical search and not drown in the AI slob: Hand curated websites (taken from the planets), no ads, no income (and therefore necessarily small in scope).</p>

<p>I started experimenting. Using <code>webringSelector = &quot;#sidebar li a:nth-child(2) [href]&quot;</code> in the <code>lieu.toml</code> file seemes to get the links of RPG blogs, for example.</p>

<p>One thing I find disturbing is that lieu uses Colly to scrape the web and <a href="https://github.com/gocolly/colly/issues/614">Colly ignores robots.txt by default</a>. I managed to lock the crawler out of my site in less than a second. Yikes!</p>

<p>And the sad part is that if I add <code>c.IgnoreRobotsTxt = false</code> to the code, it seems to have no effect. Does anybody know more about how to control this?</p>

<p><a class="tag" href="/search/?q=%23Search">#Search</a></p>

<p>The following branches are probably temporary:</p>

<p><a href="https://github.com/kensanata/lieu/tree/unix-domain-socket">unix-domain-socket</a>:
This can be used by systemd to start the server connected to a Unix
domain socket. Using a server like nginx or Apache as a front-end
allows them to communicate with the server via the Unix domain socket.
In that case, no port is required.</p>

<p><a href="https://github.com/kensanata/lieu/tree/robots-txt">robots-txt</a>:
This is where I try to enable <code>robots.txt</code> handling again – but I&rsquo;m failing at it.</p>

<p>Then again, perhaps the ethics of it all make it untenable for me – is this really something I need? If it isn’t, perhaps I’d be better off doing something else.</p>

<p><strong>2024-06-26</strong>. Perhaps it&rsquo;d be easier to search feeds. People already publish feeds. The feeds already contain the content they are willing to share. The feed is already limited to web pages and doesn&rsquo;t include web applications.</p> 

<https://alexschroeder.ch/view/2024-06-22-lieu>

---

## Notes on Tajikistan

date: 2024-06-26, from: Tracy Durnell Blog

I&#8217;ve recognized in recent years the gaps in my understanding of some parts of the world &#8212; &#8220;the stans,&#8221; as the author puts it, are one such region. I watched a documentary of a guy walking through the Caucasus Mountains a few years ago, Soviet Seasons taught me some things, and Trevor the Food Ranger [&#8230;] 

<https://tracydurnell.com/2024/06/25/notes-on-tajikistan/>

---

## June 25, 2024 

date: 2024-06-26, from: Heather Cox Richardson blog

These days, reality is undermining the political power of the mythological image of the American cowboy. In the years after World War II, that image helped to sell the idea that a government that regulated business, provided a basic safety net, promoted infrastructure, and protected civil rights for Black and Brown Americans and for women was cruising perilously close to communism. The cowboy image suggested that a true American was an individualist man who worked hard to provide for and to protect his homebound wife and children, with a gun if necessary, and wanted only for the government to leave him and his business alone. 

<https://heathercoxrichardson.substack.com/p/june-25-2024>

---

## Process reveals personality

date: 2024-06-26, from: Tracy Durnell Blog

I enjoy reading blogging about blogging for many reasons: learning how other people think seeing how other people work discussing a craft / format I enjoy sharing an interest/ hobby with others refining our understanding of blogging and its place in the modern and future Internet being reminded to do maintenance on my own site [&#8230;] 

<https://tracydurnell.com/2024/06/25/process-reveals-personality/>

---

## A very local storm

date: 2024-06-26, from: Doc Searls (at Harvard), New Old Blog

It was a derecho, or something like one. The gust front you see in the third image here looks a lot like the storm front in the image above (via Weatherbug, storm tracker view). I&#8217;d experienced one twelve years ago, in Arlington, Mass. It felt like a two minute hurricane, and when it was over, [&#8230;] 

<https://doc.searls.com/2024/06/25/a-very-local-storm/>

---

## Open Repositories 2024 Trip Report: Göteborg

date: 2024-06-26, updated: 2024-06-26, from: Peter Sefton's Blog

 

<https://ptsefton.com/2024/06/26/open-repositories-2024-trip/>

---

## I love seeing car YouTubers drop their networks

date: 2024-06-25, from: Matt Haughey blog

<p>There&apos;s been a trend lately in car-youtuber-land, one where you hear a host on camera say they&apos;re going to start a new channel of their own, and later they post a detailed video on how they quit their former employer, which was usually a car-related YouTube</p> 

<https://a.wholelottanothing.org/i-love-seeing-car-youtubers-drop-their-networks/>

---

## Wednesday 26 June, 2024

date: 2024-06-25, from: John Naughton's online diary

Brief encounter Quote of the Day “We look at the present through a rear view mirror. We march backwards into the future.” Marshall McLuhan Musical alternative to the morning’s radio news Bach &#124; Wachet auf from Cantata No 140 &#124; &#8230; <a href="https://memex.naughtons.org/wednesday-26-june-2024/39578/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/wednesday-26-june-2024/39578/>

---

## If You See Crazy, Report Crazy

date: 2024-06-25, from: Dan Rather's Steady

Coverage of the presidential candidates is disparate and dangerous 

<https://steady.substack.com/p/if-you-see-crazy-report-crazy>

---

##  Flying With My Dad 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kittke's blog

 

<https://kottke.org/24/06/flying-with-my-dad-1>

---

##  End Legal Slavery in the United States (i.e. forced prison labor). &#8220;It&#8217;s... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044872-end-legal-slavery-in-the>

---

##  We Can and Should Address Racial Disparities. &#8220;Most of the programs that... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044869-we-can-and-should-address>

---

##  Riding With the Street Demon 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kittke's blog

 

<https://kottke.org/24/06/riding-with-the-street-demon>

---

##  AC Lamberty writes about how his tastes (and experience of masculinity) changed... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044871-ac-lamberty-writes-about->

---

##  Super Mario Bros, the Typewriter Edition 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kittke's blog

 

<https://kottke.org/24/06/super-mario-bros-the-typewriter-edition>

---

## Remote shell to a Raspberry Pi at 39,000 ft

date: 2024-06-25, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Remote shell to a Raspberry Pi at 39,000 ft</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>For a few weeks I've been beta testing remote shell, the latest addition to Raspberry Pi Connect. Just a couple hours ago I was on a flight home from the new Micro Center in Charlotte.</p>

<p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/remote-shell-laptop-airplane.jpeg" alt="Pi Connect Remote Shell in airplane on laptop"></p>

<p>One huge problem with VNC or remote desktop is how flaky it is if you have limited bandwidth or an unstable connection, like on an airplane.</p>

<p>It takes forever to start a screen sharing session, and the airplane's flaky WiFi usually causes the session to lock up, meaning you can't do much at all.</p>

<p>Remote <em>terminal</em> access, just relaying text commands, is the best solution for that problem. And sure, I have a VPN I could use with SSH to get to my Pi, but <a href="https://www.raspberrypi.com/news/raspberry-pi-connect-remote-shell-access-and-support-for-older-devices/">Raspberry Pi Connect just added support for remote shell access</a>.</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-06-25T12:24:51-05:00" title="Tuesday, June 25, 2024 - 12:24" class="datetime">June 25, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/remote-shell-raspberry-pi-39000-ft>

---

##  The record industry is suing a pair of AI music-making companies over... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044868-the-record-industry-is-su>

---

**@Dave Winer's Scripting News** (date: 2024-06-25, from: Dave Winer's Scripting News)

The page on <a href="https://feedland.com/?feedurl=http%3A%2F%2Fscripting.com%2Fpodcast.xml">feedland.com</a> and <a href="https://feedland.org/?feedurl=http%3A%2F%2Fscripting.com%2Fpodcast.xml">feedland.org</a>. 

<http://scripting.com/2024/06/25.html#a160522>

---

**@Dave Winer's Scripting News** (date: 2024-06-25, from: Dave Winer's Scripting News)

The <a href="https://podcasts.apple.com/us/podcast/scripting-news/id1753971770">Apple Podcasts</a> page for the podcast feed. 

<http://scripting.com/2024/06/25.html#a160418>

---

## Microsoft Edge Has an ‘Enhanced Security’ Mode That Disables the JIT

date: 2024-06-25, updated: 2024-06-25, from: Daring Fireball

 

<https://www.bleepingcomputer.com/news/microsoft/microsoft-edge-just-got-a-super-duper-secure-mode-upgrade/>

---

**@Dave Winer's Scripting News** (date: 2024-06-25, from: Dave Winer's Scripting News)

And the <a href="https://this.how/scriptingNewsPodcast/">FAQ</a> for the feed, linked to in the feed. 

<http://scripting.com/2024/06/25.html#a154605>

---

## June 24, 2024

date: 2024-06-25, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/june-24-2024-263>

---

**@Dave Winer's Scripting News** (date: 2024-06-25, from: Dave Winer's Scripting News)

Here's the new Scripting News <a href="http://scripting.com/podcast.xml">podcast-only feed</a>. 

<http://scripting.com/2024/06/25.html#a153612>

---

## Why I love Underdogs

date: 2024-06-25, from: Om Malik blog

That was quite a night. Not surprisingly, I woke up late this morning. I simply couldn’t sleep because I was buzzing from what I had just witnessed—and I still am. On paper, it was a wild game of the fast-paced T20 version of cricket. But it was more than that. It was ambition and desire &#8230; 

<https://om.co/2024/06/25/why-i-love-underdogs/>

---

##  Oreo Kintsugi 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kittke's blog

 

<https://kottke.org/24/06/oreo-kintsugi>

---

## Reuters: Amazon Is Considering $5 Monthly Charge for Improved Alexa

date: 2024-06-25, updated: 2024-06-25, from: Daring Fireball

 

<https://www.reuters.com/technology/amazon-mulls-5-10-monthly-price-tag-unprofitable-alexa-service-ai-revamp-2024-06-21/>

---

## Gurman Just Pantsed the WSJ on Their Report About Apple and Meta Working on an AI Deal

date: 2024-06-25, updated: 2024-06-25, from: Daring Fireball

 

<https://www.bloomberg.com/news/articles/2024-06-24/apple-spurned-idea-of-iphone-ai-partnership-with-meta-months-ago>

---

##  US Surgeon General Vivek Murthy declares gun violence a public health crisis.... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044866-us-surgeon-general-vivek->

---

##  &#8220;Since Texas&#8217; ban on abortion went into effect, infant deaths in the... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044865-since-texas-ban-on-aborti>

---

## The podcast-only feed, part 1

date: 2024-06-25, from: Dave Winer's Scripting News

<p>I'm getting my podcast-only feed for Scripting News ready. </p>
<p>It's going to be an Apple-compliant podcast feed. </p>
<p>Of course when it came time to do the logo I went to my reasonably-priced graphics consultant, ChatGPT. It came breathtakingly close on the first attempt, but it repeated part of the story. Every time I asked it to fix a problem, it created another problem, and the image brightness was reduced, not just in terms of pixels but also the creativity of the image. Of course it isn't really creative. I know. Yadda yadda. </p>
<p>Finally I got something that I could live with that I liked but was imperfect. I decided that since the motto of my blog is "It's even worse than it appears" that an obvious imperfection is totally consistent with the philosophy, and we move onward. As they say, still diggin!</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/06/25/scriptingNewsInlineImageVersion.png"></center>It's even worse than *@#) appears.</div></p>
<p>The prompt for the image: "I'm sure you're aware of my blog, Scripting News, scripting.com. I am doing a new podcast feed for the blog. This feed is designed to get through Apple's submission process so it can be listed in their podcast database. One of the requirements is a 3000 by 3000 image that serves as a logo for the podcast. I need something simple and bold that says 'Scripting News podcast' and then 'With Dave Winer and friends' and 'It's even worse than it appears.' On a background of corn fields in Iowa viewed from the air."</p>
 

<http://scripting.com/2024/06/25/134922.html?title=thePodcastonlyFeedPart1>

---

## The podcast-only logo

date: 2024-06-25, from: Dave Winer's Scripting News

<p>How the logo for the podcast-only feed was designed.</p>
<p>I turned to ChatGPT of course. It came breathtakingly close on the first attempt, but it repeated part of the story. Every time I asked it to fix a problem, it created another problem, and the image brightness was reduced, not just in terms of pixels but also the creativity of the image. Of course it isn't really creative. I know. Yadda yadda. </p>
<p>Finally I got something that I could live with that I liked but was imperfect. I decided that since the motto of my blog is "It's even worse than it appears" that an obvious imperfection is totally consistent with the philosophy, and we move onward. As they say, still diggin!</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/06/25/scriptingNewsInlineImageVersion.png"></center>It's even worse th*@#it appears.</div></p>
<p>The prompt for the image: "I'm sure you're aware of my blog, Scripting News, scripting.com. I am doing a new podcast feed for the blog. This feed is designed to get through Apple's submission process so it can be listed in their podcast database. One of the requirements is a 3000 by 3000 image that serves as a logo for the podcast. I need something simple and bold that says 'Scripting News podcast' and then 'With Dave Winer and friends' and 'It's even worse than it appears.' On a background of corn fields in Iowa viewed from the air."</p>
 

<http://scripting.com/2024/06/25/134922.html?title=thePodcastonlyLogo>

---

## Breaking the M-209

date: 2024-06-25, updated: 2024-06-25, from: Bruce Schneier blog

<p>Interesting <a href="https://dspace.ut.ee/server/api/core/bitstreams/f707e86c-a7d6-421b-b904-267439ee1cee/content">paper</a> about a German cryptanalysis machine that helped break the US <a href="https://www.cryptomuseum.com/crypto/hagelin/m209/">M-209</a> mechanical ciphering machine.</p>
<p>The paper contains a good description of how the M-209 works.</p>
 

<https://www.schneier.com/blog/archives/2024/06/breaking-the-m-209.html>

---

## Valuing the future

date: 2024-06-25, from: Enlightenment Economics blog

Discounting the Future: The Ascendancy of a Political Technology by Liliana Doganova is an interesting read. I don&#8217;t entirely agree with its perspective, which is that the concept of discounted cash flow or net present value is inherently damaging to &#8230; <a href="http://www.enlightenmenteconomics.com/blog/index.php/2024/06/valuing-the-future/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<http://www.enlightenmenteconomics.com/blog/index.php/2024/06/valuing-the-future/>

---

## The taxing difference

date: 2024-06-25, from: Robert Reich's blog

Trump&#8217;s and Biden&#8217;s tax policies need more coverage because they&#8217;re opposites. Biden&#8217;s is progressive. Trump&#8217;s is regressive. 

<https://robertreich.substack.com/p/the-taxing-difference>

---

## June 24, 2024 

date: 2024-06-25, from: Heather Cox Richardson blog

Two years ago today, on June 24, 2022, the U.S. Supreme Court handed down the Dobbs v. Jackson Women&#8217;s Health Organization decision, overturning the 1973 Roe v. Wade decision that recognized a woman&#8217;s right to terminate a pregnancy. The vote was 6&#8211;3. 

<https://heathercoxrichardson.substack.com/p/june-24-2024>

---

## Briefly on Julian Assange

date: 2024-06-25, from: Jessica Smith's blog

<p>So, Viv and I were in the car this morning when we heard about the Assange plea deal.</p>
<p>Viv: omg, finally! I only hope he&rsquo;ll now give up hacking 😔<br>
Me: Hmm, or maybe he should give up non-consensual sex. That&rsquo;s where he went wrong, isn&rsquo;t it?<br>
Viv: &hellip;true</p>
<p>I mean, fuck. I know this prosecution has been politically motivated, purely to punish him for his role exposing Western war crimes. The charges he&rsquo;s accepted a plea deal over are the US &ldquo;espionage&rdquo; ones, after all, not the Swedish sexual assault ones, which were dropped long ago. And I don&rsquo;t support politically-motivated prosecutions of people who expose war crimes. But I&rsquo;ve also never been comfortable with any kind of personalised &ldquo;I support Assange&rdquo; sentiment, as if he were a righteous martyr, rather than &ldquo;I support exposing those who commit war crimes&rdquo;.</p>
<p>Back in my student activist days, I once got stuck doing a stall where we were trying to get signatures on a petition calling for Assange&rsquo;s charges to be dropped (and this was back when they were the sexual assault charges, not the espionage ones). The organiser of the stall knew full well the attitude I was going to take to this, so he gave me a stack of leaflets and told me to hand them out around Campus Centre. I took the stack, went upstairs, dropped them all straight in the bin, then chilled out in the cafeteria for an hour before reporting back. I think he knew that&rsquo;s what I was going to do, too, lol. I didn&rsquo;t get scolded for skipping out on nearly the whole stall, which I usually would&rsquo;ve been.</p>
<p>Anyway, Assange is married now, so maybe he has straightened himself out. I don&rsquo;t know. I think it&rsquo;s good there&rsquo;s a resolution at last to the political prosecution (although I would note, cynically, that so many years have passed that the &ldquo;deterrence&rdquo; objective has already been achieved, and the, uh, short-term memory of the political establishment means no one cares what happened during the War on Terror any more, anyway). But Assange himself is still an asshole.</p> 

<https://www.jayeless.net/2024/06/assange-plea-deal.html>

---

## Wordle Kitty on top of the world

date: 2024-06-25, from: Dave Winer's Scripting News

<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/06/24/wordleKittyImpressive.png"></center>Another impressive day for Wordle Kitty! </div></p>
 

<http://scripting.com/2024/06/24/025057.html?title=wordleKittyOnTopOfTheWorld>

---

## [Sponsor] WorkOS

date: 2024-06-25, updated: 2024-06-25, from: Daring Fireball

 

<https://workos.com/?utm_source=daringfireball&utm_medium=display&utm_campaign=q12024>

---

## European Commission Dings Apple Over Anti-Steering Provisions in App Store, and Opens New Investigations Into Core Technology Fee, Sideloading Protections, and the Eligibility Requirements to Offer an Alternative Marketplace

date: 2024-06-24, updated: 2024-06-25, from: Daring Fireball

 

<https://ec.europa.eu/commission/presscorner/detail/en/IP_24_3433>

---

##  A Genealogy of Technology and Power Since 1500 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kittke's blog

 

<https://kottke.org/24/06/a-genealogy-of-technology-and-power-since-1500>

---

## ★ Apple Disables WebKit’s JIT in Lockdown Mode, Offering a Hint Why BrowserEngineKit Is Complex and Restricted

date: 2024-06-24, updated: 2024-06-25, from: Daring Fireball

To put it in Steven Sinofsky’s terms, gatekeeping is a fundamental aspect of Apple’s brand promise with iOS. 

<https://daringfireball.net/2024/06/apple_disables_webkits_jit_in_lockdown_mode>

---

##  I knew the western US had become drier, but I hadn&#8217;t realized... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044862-i-knew-the-western-us>

---

##  The Art Book for Children 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kittke's blog

 

<https://kottke.org/24/06/the-art-book-for-children>

---

##  I am enjoying the empathetic trajectory of the Charli XCX and Lorde... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044863-i-am-enjoying-the-empathe>

---

##  Observers have reported a large red spot on Jupiter since the 1660s.... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044861-observers-have-reported-a>

---

##  How to Give Away a Fortune 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kittke's blog

 

<https://kottke.org/24/06/how-to-give-away-a-fortune>

---

##  How do actors memorize their lines? &#8220;Actors engage in elaborative rehearsal, focusing... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044732-how-do-actors-memorize-th>

---

##  Anxiety in Inside Out 2 Is Too Real 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kittke's blog

 

<https://kottke.org/24/06/anxiety-in-inside-out-2-is-too-real>

---

## June 23, 2024

date: 2024-06-24, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/june-23-2024-5fd>

---

## Quick productivity tip: Renaming lots of files in MacOS Finder

date: 2024-06-24, from: Chris Heilmann's blog

When you select several files in Finder and choose &#8220;rename&#8221; from the context menu, you can batch rename them. You can search and replace text, add to beginning or end or even generate numbered file names. Sadly, there&#8217;s no Regular Expressions support. Check the screencast to see it in action: 

<https://christianheilmann.com/2024/06/24/quick-productivity-tip-renaming-lots-of-files-in-macos-finder/>

---

**@Dave Winer's Scripting News** (date: 2024-06-24, from: Dave Winer's Scripting News)

<a href="https://mastodon.social/@davew/112671576365142333">Heard</a> an interview show on NPR where they went to laundromats and asked people about the upcoming election. Big surprise they say pretty much exactly what they say on the news about the candidates, all of it <a href="https://en.wikipedia.org/wiki/False_balance#:~:text=False%20balance%2C%20known%20colloquially%20as,viewpoints%20than%20the%20evidence%20supports.">bothsidesisms</a> and no mention of the fascism coming our way if we go one direction. It's all everyone's fault, so why bother voting, is mostly what they say. SMH in disbelief. 

<http://scripting.com/2024/06/24.html#a152539>

---

##  Explore present and future climate zones for dozens of global cities. &#8220;With... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044857-explore-present-and-futur>

---

##  Great news about HIV protection: &#8220;Results from a large clinical trial in... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kittke's blog

 

<https://kottke.org/24/06/0044860-great-news-about-hiv-prev>

---

**@Dave Winer's Scripting News** (date: 2024-06-24, from: Dave Winer's Scripting News)

Today's song: <a href="https://www.youtube.com/watch?v=tQjxIvcGGdE">Bell Bottom Blues</a>. "It's all wrong but it's all right." 

<http://scripting.com/2024/06/24.html#a124427>

---

**@Dave Winer's Scripting News** (date: 2024-06-24, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/03/12/macpaint.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">If you think you understand the significance of RSS, I bet you don't. Please listen to the <a href="http://scripting.com/2024/06/23/howRssStartedTheRealStory.m4a">14-minute podcast</a> I <a href="http://scripting.com/2024/06/23.html#a201841">posted</a> yesterday for the real story. We should learn from this and not repeat the same mistake, and of course until the real story is out, we can't learn from it. Let's get it right on the Wikipedia page. It isn't about Guha or Libby, me, or whoever. It's really about the power of Netscape and the early web news publishing companies that supported RSS, and the blogging systems that jumped on board (including my own products) and then two years later, the NYT coming on board, followed by the entire news industry. A bunch of nerds arguing on a mail list is <i>not</i> the story. With the benefit of well over twenty years hindsight this should, by now, be kind of obvious. 

<http://scripting.com/2024/06/24.html#a123814>

---

**@Dave Winer's Scripting News** (date: 2024-06-24, from: Dave Winer's Scripting News)

<a href="https://www.threads.net/@davew/post/C8mUXGiMODB">Threads could</a> make it a lot easier for us to cross-post to their system, esp since they say they will support ActivityPub. As it is there are too many hoops to jump through imho. I think basically they all want you to use their UI's which amounts to writing in <a href="http://scripting.com/2024/01/14/031201.html">tiny little textboxes</a> of course. 

<http://scripting.com/2024/06/24.html#a123121>

---

**@Dave Winer's Scripting News** (date: 2024-06-24, from: Dave Winer's Scripting News)

I <a href="https://mastodon.social/@davew/112671088952473981">want</a> to be able to run Frontier on the new Macs, but was disappointed that VMware doesn’t work and had given up on the idea. But I just learned that UTM might work. Here’s the <a href="https://chatgpt.com/share/38d87439-9a34-402d-9c46-7a047e7e2866">transcript</a> of my inquiry. Wondering if <a href="https://mastodon.social/@davew/112671088952473981">anyone has had good experience</a> using UTM to run older Mac software on Apple CPUs. 

<http://scripting.com/2024/06/24.html#a123002>

---

## Paul Nakasone Joins OpenAI’s Board of Directors

date: 2024-06-24, updated: 2024-06-22, from: Bruce Schneier blog

<p>Former NSA Director Paul Nakasone has <a href="https://www.washingtonpost.com/technology/2024/06/13/openai-board-paul-nakasone-nsa/">joined</a> the board of OpenAI.</p>
 

<https://www.schneier.com/blog/archives/2024/06/paul-nakasone-joins-openais-board-of-directors.html>

---

## Why I’m scared sh*tless about Thursday

date: 2024-06-24, from: Robert Reich's blog

On being 78. 

<https://robertreich.substack.com/p/why-im-scared-shtless-about-thursday>

---

## 2024-06-23 Adjudicating the difficulty

date: 2024-06-24, from: Alex Schroeder's Blog

<h1 id="2024-06-23-adjudicating-the-difficulty">2024-06-23 Adjudicating the difficulty</h1>

<p>I was listening in on an exchange between <a class="account" href="https://tabletop.social/@phf" title="@phf@tabletop.social">@phf</a> and <a class="account" href="https://dice.camp/@kyonshi" title="@kyonshi@dice.camp">@kyonshi</a>. They were talking about <a href="Traveller">Traveller</a> and Peter noted that he didn&rsquo;t like the &ldquo;somewhat mysterious difficulty classes of some tests&rdquo;. I don&rsquo;t like this, either! It&rsquo;s exhausting. I feel drained when I do it.</p>

<p>I started thinking about this for a while and maybe the following provides for an interesting way to talk about rules in role-playing games.</p>

<p>Note that the problem shows up in many places. For example, I don&rsquo;t like &ldquo;the ladder&rdquo; in <a href="Fudge">Fudge</a> and <a href="Fate">Fate</a> games where I as the referee need decide whether opponents are &ldquo;good&rdquo; or &ldquo;very good&rdquo; at fighting the player characters. For me, this is the same problem, except it happens behind the screen. Player&rsquo;s don&rsquo;t know about this.</p>

<p>Using classic D&amp;D or similar rules and running a megadungeon is comparatively easy, because the monster hit dice are tied to dungeon levels. Once I know the dungeon level, I can pick appropriate monsters and their stats automatically determine &ldquo;the difficulty classes of some tests.&rdquo; This might be one of the reasons that makes it easier to run D&amp;D with self-made dungeons.</p>

<p>So this is the first solution to the problem of having to assign difficulties to rolls: The game can have a small number of actions that require a dice roll. Each roll has clear conditions of success. The referee doesn&rsquo;t have to assess the difficulty as soon as the situation is established. D&amp;D would be an example of this kind of game. You roll to hit, to do damage, to save, and all the target numbers are known once the monster is on the table. In classic D&amp;D, traps have only one difficulty setting so thieves only need to know a single number. Hidden doors are either concealed or secret. Those are the two difficult settings for finding the hidden door and thus the referee only needs to know two numbers (1-in-6 or 2-in-6). Of course it breaks down sometimes when a module tells you that a particular door is harder to find (&ldquo;1-in-8&rdquo;) or that a lock is harder to pick (&ldquo;add 20% to the check&rdquo;). But generally speaking, as a referee, very little thought is required. The trade-of is that characters don&rsquo;t have many &ldquo;skills&rdquo;. They have their attack rolls, their saves, the thieves skills, some other d6 abilities like opening doors and listening, but that&rsquo;s it.</p>

<p>As soon as skills are introduced, the situations in which dice can be rolled explodes. One way to solve the problem of having to decide the difficulty of every single roll is to a provide a long list of examples from which to extrapolate. I haven&rsquo;t played any game that does that well. Zweihänder provides seven example uses of the skill, one for each difficulty rating. That is amazing.</p>

<p>A game that has a single roll for every skill (great idea) but then provides a lot of help adjudicating the rolls in general isn&rsquo;t helping. I found this to be the case for the few Basic Role-Playing, Warhammer Fantasy Roleplay, Rolemaster and HARP games I tried. I didn&rsquo;t try many of them. I just checked HARP again and there are examples for some of the skills and not for others, so I&rsquo;d have to play it again to remember whether this was even a problem.</p>

<p>Perhaps one possible solution is to just ignore difficulties and to assume all skill rolls at the default difficulty to be appropriate for adventures. As far as I can remember, this is how we often played these games.</p>

<p>Mongoose Traveller isn&rsquo;t helping, either. There, the target number is always an eight. Almost all the modifiers appear to obvious and well explained, but with the Task Difficulty Dice Modifiers the &ldquo;somewhat mysterious difficulty classes of some tests&rdquo; is back.</p>

<p>Classic Traveller is worse it leans into the referee making up the roll. Sometimes an examples of a skill is provided (&ldquo;navigation expertise can be used as a DM of +1 per level on a throw to determine the needed information&rdquo;) but most of the time it&rsquo;s simply a description of where the skill might be applicable and it&rsquo;s up to the referee to call for an appropriate throw, if at all. At the very beginning, skills are explained as follows: &ldquo;The acquired skills table provides four basic types of results: characteristic alterations (such as +1 strength), weapons expertise (such as blade combat), transport skills (such as ATV), and basic skills (such as navigation).&rdquo; That is to say, sometimes the skill simply means that something can be done. The example that comes to mind is how to recover from serious wounds: &ldquo;Recovery is dependent on medical attention (a medical facility and an individual with medical-3 skill; recuperation to full strength without medical attention is not possible).&rdquo; The medic doesn&rsquo;t have to roll at all. Having the skill is all that counts.</p>

<p>This brings me to the last category: negotiation. This what I learned from Burning Wheel: Before a roll is made, players declare what they want and the referee determines the difficulty of the roll and explains the consequences of failure. Then players decide whether they want to make the roll. Implicitly, they can change their mind, declare a different goal and see whether they like the odds and consequences better. I like this a lot.</p>

<p>Of course, turning every skill roll into a negotiation can be tiresome. If people remember what the previous result of similar negotiations was, the system takes on aspects of case law. As soon as the people of the table realize that a similar situation was resolved using this or that, and there are no circumstances that warrant a change, then the negotiation is skipped.</p>

<p>Then again, a long lists of conditions and modifiers can also take on aspects of case law.</p>

<p>So perhaps this is what I think all these rules texts evolve into: Any rule system where referees set the difficulty imply a system where players can enter a short negotiation. In order to avoid future negotiations, the table remembers the outcomes and uses them as shortcuts for future situations.</p>

<p>Once you know this, the approach by some games to simply do a fixed difficulty roll such as 50% rate of success makes sense if you assume that there is some sort of negotiation and case law powering it all. Sometimes the penalty of failure is scorn and insults, sometimes it&rsquo;s death. It depends on the situation but there&rsquo;s always a way to negotiate for the two outcomes that seem acceptable to the table.</p>

<p>I haven&rsquo;t found a perfect solution, for me. I like it both ways. A game like <a href="Halberds_and_Helmets">Halberts &amp; Helmets</a> is much like D&amp;D where as a game like <a href="Halberts">Halberts</a> is one where all effects outside of combat have to be negotiated but it&rsquo;s not as wild and free as Classic Traveller.</p>

<p><a class="tag" href="/search/?q=%23RPG">#RPG</a></p> 

<https://alexschroeder.ch/view/2024-06-23-difficulty>

---

## June 23, 2024

date: 2024-06-24, from: Heather Cox Richardson blog

On Thursday, Moody&#8217;s Analytics, which evaluates risk, performance, and financial modeling, compared the economic promises of President Joe Biden and presumptive Republican nominee Donald Trump. Authors Mark Zandi, Brendan LaCerda, and Justin Begley concluded that while a second Biden presidency would see cooling inflation and continued economic growth of 2.1%, a Trump presidency would be an economic disaster. 

<https://heathercoxrichardson.substack.com/p/june-23-2024>

---

## The Name ‘Siddhartha’

date: 2024-06-24, from: Jessica Smith's blog

<p>Since Vivian was a teenager, apparently, it&rsquo;s been his long-held dream to name a son Siddhartha and call him Sid for short, so as to honour both his Hindu heritage <em>and</em> Syd Barrett, his rock &rsquo;n&rsquo; roll idol. Pretty much as soon as Viv told me this dream, I poured cold water on it. Honestly, I did not believe that &ldquo;Siddhartha&rdquo; was a name that actual, real-life human beings are given. Vivian insisted it was, so after a few years of back-and-forth, I finally deigned to search the internet to see if I could find any actual, real-life human beings with this name. The result was that every single &ldquo;Siddhartha&rdquo; I found was a French speaker (of Indian heritage) – professionals living in cities like Lyon, Geneva, Montreal&hellip; so of course I took this back to Vivian and said all accusatorily, &ldquo;You want to give our child a French name!&rdquo;</p>
<p>This turns out to be a really good way to wind him up – I can say this, because he&rsquo;s compelled me to make the same argument repeatedly since – because he starts whining, &ldquo;Nooooo, it&rsquo;s an Indian name!&rdquo; and I tell him that random LinkedIn profiles on the internet don&rsquo;t lie, and our child is not getting a French name.<sup id="fnref:1"><a href="#fn:1" class="footnote-ref" role="doc-noteref">1</a></sup> It&rsquo;s really funny how worked up he gets about it. Anyway.</p>
<p>Now that we&rsquo;re actually <em>having</em> a child, of course, we&rsquo;re having all these discussions again, even though we don&rsquo;t know Baby&rsquo;s sex yet. &ldquo;Sid&rdquo; has been Viv&rsquo;s pet name for the growing creature in my belly, and I do often go along with it, although I also point out regularly that that&rsquo;s <em>never</em> going to be their actual name.</p>
<p>&ldquo;That&rsquo;s okay,&rdquo; he jokes, &ldquo;when you die in childbirth, there&rsquo;ll be no one to stop me putting whatever I want on the birth certificate.&rdquo;</p>
<p>&ldquo;Ha-ha,&rdquo; I retort, &ldquo;I hope you&rsquo;re not gambling on those odds.&rdquo;</p>
<p>For what it&rsquo;s worth, we <em>have</em> started putting together an <em>actual</em> shortlist, consisting of names that are Indian in origin, but are either <em>also</em> English/Irish names <em>or</em>, at least, don&rsquo;t sound markedly foreign in English. This is what Viv said he really liked about the whole &ldquo;Siddhartha&rdquo;/&ldquo;Sid&rdquo; thing, and I think <em>that&rsquo;s</em> a fair enough goal&hellip; just not the actual name &ldquo;Siddhartha&rdquo;. Un­for­tun­ately, Viv&rsquo;s next favourite name isn&rsquo;t so much &ldquo;an Irish name&rdquo; as &ldquo;the Irish word for &lsquo;bread&rsquo;&rdquo;, but we&rsquo;ll get there.</p>
<div class="footnotes" role="doc-endnotes">
<hr>
<ol>
<li id="fn:1">
<p>Actually, as far as <em>girls&rsquo;</em> names go there are a number of French-origin names I like – I&rsquo;m talking ones well-assimilated into English though – but regardless, I think I have to stand on my principles now.&#160;<a href="#fnref:1" class="footnote-backref" role="doc-backlink">&#x21a9;&#xfe0e;</a></p>
</li>
</ol>
</div> 

<https://www.jayeless.net/2024/06/the-name-siddhartha.html>

---

## Twenty year celebration: Site update number three

date: 2024-06-24, updated: 2024-06-24, from: Peter Sefton's Blog

 

<https://ptsefton.com/2024/06/24/update/>

---

## ★ WWDC 2024: Apple Intelligence

date: 2024-06-23, updated: 2024-06-25, from: Daring Fireball

Apple is focusing on what it can do that no one else can on Apple devices, and not really even trying to compete against ChatGPT *et al.* for world-knowledge context. They’re focusing on unique differentiation, and eschewing commoditization. 

<https://daringfireball.net/2024/06/wwdc24_apple_intelligence>

---

## Monday 24 June, 2024

date: 2024-06-23, from: John Naughton's online diary

Unplanned obsolescence A lovingly cared-for Harley seen in a French village the other day. En passant, isn’t it amazing how humans tamed the internal combustion engine so that we could ride around comfortably while being propelled by a controlled series &#8230; <a href="https://memex.naughtons.org/monday-24-june-2024/39567/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-24-june-2024/39567/>

---

**@Dave Winer's Scripting News** (date: 2024-06-23, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/23/scriptingNewsAd.gif" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I'm going to start a new podcast-only feed, and <a href="http://scripting.com/2024/06/23/howRssStartedTheRealStory.m4a">this will be first episode</a>. 14 minutes. It tells the story of RSS as a remarkable coming-together of tech, news, publishing and blogging. The first burst came from Netscape and four leading web pubs, Salon, Red Herring Wired and Motley Fool. As a leading blogger and developer of blogging tools, I jumped on board as soon as I heard of it, as did the people at Blogger. RSS was an instant standard with a great installed base, and retained its simplicity. You have no idea how remarkable that is. It grew like a weed. An installed base developed. There was confusion for a couple of years, between 2000 and 2002, about what RSS was, but the market stayed with the format specified by Netscape in 1999. Then in 2002, at UserLand we did a deal with the NY Times to get their news flowing through RSS, and in the next year, the <i>entire news world supported RSS.</i> That's the story. You can write all about who did what in a background story, but the big story, the miracle, mostly remains untold. What matters is an open format took root and retained its simplicity. And it pays to understand why it was not a strong enough foundation to be successful, first because the vendors didn't work with each other, and then because Twitter made subscription one click, where it was ridiculous how hard it was to subscribe to a feed in RSS. We should learn from this, and not repeat the same mistakes, and of course until the real story is out there, we can't learn from it. This is a 14-minute podcast. I cut off the last five minutes because I got lost in the weeds. All of this is documented in the archive of this blog and the sites it points to. And if there's interest I'll happily talk about it in a future podcast. 

<http://scripting.com/2024/06/23.html#a201841>

---

**@Dave Winer's Scripting News** (date: 2024-06-23, from: Dave Winer's Scripting News)

I saw a <a href="https://www.caranddriver.com/tesla/cybertruck">Tesla truck</a> parked in Woodstock yesterday. I wasn't prepared for how big it was. It's an impressive looking machine. 

<http://scripting.com/2024/06/23.html#a194645>

---

## (Weekend Edition) Field Notes: June 23, 2024

date: 2024-06-23, from: Om Malik blog

On My Mind This past week, I devoted time to “personal maintenance,” undergoing the usual array of medical tests necessary to preempt potential health issues. Additionally, I faced a dreaded dental surgery — which, despite the use of lasers and sedatives, did not necessarily mean less pain or discomfort. As a result, my writing, reading, &#8230; 

<https://om.co/2024/06/23/weekend-edition-field-notes-june-23-2024/>

---

## Gibraltar, United Kingdom

date: 2024-06-23, from: mrusme blog

"Gibraltar is a British Overseas Territory and city located at the southern
tip of the Iberian Peninsula. It has an area of 6.7 km2 (2.6 sq mi) and is
bordered to the north by Spain (Campo de Gibraltar)." 

<https://xn--gckvb8fzb.com/travel/uk/gibraltar/>

---

## Property Progress: Septic Tank Removal

date: 2024-06-23, updated: 2024-06-23, from: Russell Graves, Syonyk's Project Blog

 

<https://www.sevarg.net/2024/06/23/septic-tank-removal/>

---

**@Dave Winer's Scripting News** (date: 2024-06-23, from: Dave Winer's Scripting News)

<div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/06/23/wordleKitty.png"></center>The splendor of Wordle Kitty.</div> 

<http://scripting.com/2024/06/23.html#a141922>

---

**@Dave Winer's Scripting News** (date: 2024-06-23, from: Dave Winer's Scripting News)

There's a new star in the kittyverse, <a href="https://imgs.scripting.com/2024/06/23/wordleKitty.png">Wordle Kitty</a>. I let her do my Wordle-play. Today, she was <a href="https://www.facebook.com/photo.php?fbid=2272846162922776&set=a.113966572144090&type=3&notif_id=1719149825702718&notif_t=feedback_reaction_generic&ref=notif">feeling</a> a little under the weather so Wordle Kitty checked into the town urgent care center where they gave her some medicine which gave her the strength for a “splendid” performance at the days Wordle puzzle. So while she’s feeling a bit ill under it all is a feeling of splendor and the usual over the top cuteness! :-) 

<http://scripting.com/2024/06/23.html#a141451>

---

## Does personal AI require Big Compute?

date: 2024-06-23, from: Doc Searls (at Harvard), New Old Blog

I don&#8217;t think it does. Not for everything. We already have personal AI for autocomplete. Do we need Big Compute for a personal AI to tell us which pieces within our Amazon orders are in which line items in our Visa statements? (Different items in a shipment often appear inside different charges on a card.) [&#8230;] 

<https://doc.searls.com/2024/06/23/does-personal-ai-require-big-compute/>

---

## ‘Ring of Fire’

date: 2024-06-23, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/ring-of-fire>

---

## 
                bevelbar + infofeld2 get a long overdue revamp
            

date: 2024-06-23, updated: 2024-06-23, from: Uninformative blog

 

<https://www.uninformativ.de/blog/postings/2024-06-23/0/POSTING-en.html>

---

## Sunday caption contest: End of Round 1

date: 2024-06-23, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/sunday-caption-contest-end-of-round>

---

## June 22, 2024 

date: 2024-06-23, from: Heather Cox Richardson blog

This year my brother&#8217;s aluminum skiff had a stowaway. A mouse had clung tight to its perch in the bow eye during the trip from the boat&#8217;s winter berth in the front yard to the town landing, bouncing on a trailer. It continued to hold on as my brother and nephew launched the skiff and crossed the choppy harbor to a mooring. 

<https://heathercoxrichardson.substack.com/p/june-22-2024>

