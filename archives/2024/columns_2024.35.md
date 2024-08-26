---
title: columns 2024.35
updated: 2024-08-26 07:42:02
---

# columns 2024.35

(date: 2024-08-26 07:42:02)

---

**@Dave Winer's Scripting News** (date: 2024-08-26, from: Dave Winer's Scripting News)

The NYT et al aren't even doing a fair job of covering the election as a horserace, because they're making sure it's a virtual tie, so even if our team has overwhelming power, speed and depth, and gets on base in every at bat and plays by the rules, our odds are no better than the other team. 

<http://scripting.com/2024/08/26.html#a135108>

---

## The status of Twitter's API

date: 2024-08-26, from: Dave Winer's Scripting News

<p>The Twitter API still works, with some serious limits. Not easily incorporated into products, but useful for individuals with developer accounts. Not an insurmountable hurdle, it seems, though I was a developer from before. A few bullet points.</p>
<ul>
<li>My linkblog now reliably works on <a href="https://x.com/davewiner">Twitter</a> and <a href="https://www.threads.net/@davew">Threads</a>, in addition to <a href="https://social.masto.land/@dave">Mastodon</a>, <a href="https://bsky.app/">Bluesky</a>, <a href="http://data.feedland.org/feeds/davewiner.xml">RSS</a> and <a href="https://linkblog3.wordpress.com/">WordPress</a>.   </li>
<li>I was confused about the status of the Twitter API, but it turns out it's still there, and there is a <a href="https://www.npmjs.com/package/twitter-api-v2">package</a> that connects to it for Node apps. </li>
<li>It took me a few hours to add <a href="https://github.com/scripting/textcasting/blob/main/textcasting.js#L543">support for Twitter</a> in my <a href="https://github.com/scripting/textcasting/tree/main">textcasting</a> server app which is how my software connects to all the various services. </li>
<li>I should probably add a plugin abilitiy for textcasting so that other services could easily be added, without modifying the core app. Totally doable. It's already factored that way internally.</li>
<li>I should probably write <a href="https://github.com/scripting/textcasting/blob/main/README.md">some docs</a> for it too. <span class="spOldSchoolEmoji">😄</span></li>
<li>Anyway, the <a href="https://developer.x.com/en/docs/x-api/getting-started/about-x-api">deal with Twitter</a> is that it's free for up to 1500 posts per month, as I read it, which seems manageable for one person (me), but no way is it enough for a community of users. </li>
<li>Why connect to Twitter? People are there. Until they aren't we're going to need a way to push stuff to Twitter.</li>
</ul>
 

<http://scripting.com/2024/08/26/133249.html?title=theStatusOfTwittersApi>

---

## A tunnel in time

date: 2024-08-26, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2023/02/28/presidentCarter.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Doing the investigation into <a href="https://github.com/scripting/Scripting-News/issues/310">getting UserTalk running</a> in 2024 has been a trip. The last time I did any work on this code, or even in this area of computer science, was approx 1990. It comes right back, like riding a bike. I saw a tremendous amount of potential fun here, but I had to move on to runtime, object database, verbs, user interface -- for Frontier. In the 34 years between then and now -- a lot of software has been written, and I'm only looking at a fraction of it, limited to stuff that runs in Node, the browser and Electron. And I have to say I'm totally enjoying reading about what they've done. I'm learning about evolution of technology, a facet of development I am extremely drawn to, in a whole new way, as if viewed through a tunnel in time. </p>
 

<http://scripting.com/2024/08/26/131440.html?title=aTunnelInTime>

---

## US Federal Court Rules Against Geofence Warrants

date: 2024-08-26, updated: 2024-08-26, from: Bruce Schneier blog

<p>This is a big deal. A US Appeals Court <a href="https://techcrunch.com/2024/08/13/us-appeals-court-rules-geofence-warrants-are-unconstitutional/">ruled</a> that geofence warrants&#8212;these are general warrants demanding information about all people within a geographical boundary&#8212;are unconstitutional.</p>
<p>The decision seems obvious to me, but you can&#8217;t take anything for granted.</p>
 

<https://www.schneier.com/blog/archives/2024/08/us-federal-court-rules-against-geofence-warrants.html>

---

## 2024-08-25 GoToSocial problems

date: 2024-08-26, from: Alex Schroeder's Blog

<h1 id="2024-08-25-gotosocial-problems">2024-08-25 GoToSocial problems</h1>

<p>So you&rsquo;re considering self-hosting? You heard good things about <a href="https://github.com/superseriousbusiness/gotosocial">GoToSocial</a>? I like it. I use it. This post is about the problems you should be expecting at the moment.</p>

<p>It&rsquo;s not surprising, after all. This is a very prominent sentence in their README:</p>

<blockquote>
<p>GoToSocial is still ALPHA SOFTWARE.</p>
</blockquote>

<p>But what are the exact problems? Sometimes alpha software is good enough, right?</p>

<p><a class="tag" href="/search/?q=%23Social_Media">#Social Media</a> <a class="tag" href="/search/?q=%23GoToSocial">#GoToSocial</a></p>

<h2 id="major-annoyances">Major annoyances</h2>

<p><strong>No post editing</strong>. I hope you can handle your own typos. All you have is &ldquo;Delete and Redraft&rdquo;. But that orphans all replies, undoes all boosts, forgets all likes and removes posts from bookmarks. &ldquo;Delete and Redraft&rdquo; is a sledge hammer. &ldquo;Edit post&rdquo; is a delicate quill. And you don&rsquo;t get to have it. YOLO! (You only live once.)</p>

<p><strong>No filtering</strong>. You can mute and block and all that, but when everybody is posting about Monsterdon, the European Song Contest, the US elections, Caturday or Wordle, you can&rsquo;t filter those hashtags. You must endure the enthusiasm of the people you are following. (I think the developers are implementing things, but it does not seem to have an effect in the front-ends I use, so who knows.)</p>

<p><strong>Limited federation</strong>. This one is hard to spot. You want to follow this account and that account and it all seems to work until you go back and find that for one account, your follow request seems to hang in limbo, waiting. You cancel, and follow again. It seems to work. Come back later, back in limbo again, waiting. If you check the log, you&rsquo;ll find errors about signatures failing and what not. I have no idea. There are currently <a href="https://github.com/superseriousbusiness/gotosocial/issues?q=is%3Aissue+is%3Aopen+signature">8 open issues containing the word &lsquo;signature&rsquo;</a>. Something is not working and you&rsquo;ll have to have an alt (a separate account) on a different server that doesn&rsquo;t have this issue. That makes me sad. 😥</p>

<h2 id="minor-annoyances">Minor annoyances</h2>

<p><strong>No automatic post expiry</strong>. You&rsquo;ll have to use something like <a href="https://src.alexschroeder.ch/mastodon-archive.git/">Mastodon Archive</a>.</p>

<h2 id="no-problem">No problem</h2>

<p><strong>No front-end</strong>. There is no front-end. I use apps like <a href="https://mastodon.social/@tootapp">Toot!</a> on my phone and <a href="https://semaphore.social/">Semaphore</a> on the web. I don&rsquo;t need anything fancy. And for the non-fancy options, I have <a href="https://codeberg.org/martianh/mastodon.el">mastodon.el</a> for Emacs, <a href="https://github.com/ihabunek/toot">toot</a> for the command-line, <a href="https://tuba.geopjr.dev/">tuba</a> for Gnome, <a href="https://src.alexschroeder.ch/bitlbee-mastodon.git/">bitlbee-mastodon</a> for IRC, and so on. There are plenty of options.</p>

<h2 id="the-good-stuff">The good stuff</h2>

<p><strong>Markdown</strong> in your posts. I like my code blocks.</p>

<p><strong>SQLite</strong> on the server. It&rsquo;s currently 8.4G. The media stuff is 11G.</p>

<p><strong>Memory footprint</strong>. I use Monit to monitor processes and this process uses 185.6 MB.</p>

<p><strong>No admin</strong>. I haven&rsquo;t had to run any administration task. Not once. ❤️</p> 

<https://alexschroeder.ch/view/2024-08-25-gotosocial>

---

## The real fight, now

date: 2024-08-26, from: Robert Reich's blog

What I did at the bus stop when I was 10 years old 

<https://robertreich.substack.com/p/the-real-fight-now>

---

## Mo’ Money Day

date: 2024-08-26, from: Tracy Durnell Blog

Make it an event! I have fun with the spreadsheet part of money tracking but the more involved money tasks, especially that involve calling a financial company, can get bumped way down my list. So, designating a day to deal with it is a good idea. A couple years ago, when I had to manually [&#8230;] 

<https://tracydurnell.com/2024/08/25/mo-money-day/>

---

## August 25, 2024 

date: 2024-08-26, from: Heather Cox Richardson blog

The Democratic National Convention buoyed the Democrats. 

<https://heathercoxrichardson.substack.com/p/august-25-2024>

---

## Pavel Durov, CEO of Telegram, Arrested in France

date: 2024-08-26, updated: 2024-08-26, from: Daring Fireball

 

<https://www.reuters.com/world/europe/telegram-messaging-app-ceo-pavel-durov-arrested-france-tf1-tv-says-2024-08-24/>

---

## Roundup: why we don’t have enough housing

date: 2024-08-25, from: Tracy Durnell Blog

U.S. Accuses Software Maker RealPage of Enabling Collusion on Rents by Danielle Kaye, Lauren Hirsch and David McCabe (NYTimes) + It’s the Land, Stupid: How the Homebuilder Cartel Drives High Housing Prices by Matt Stoller Consolidation &#8211;&#62; developers outsource the building and become more of a financing and land speculation business, and smaller projects become [&#8230;] 

<https://tracydurnell.com/2024/08/25/roundup-why-we-dont-have-enough-housing/>

---

## The Not Doing List

date: 2024-08-25, from: Tracy Durnell Blog

 

<https://tracydurnell.com/2024/08/25/the-not-doing-list/>

---

**@Dave Winer's Scripting News** (date: 2024-08-25, from: Dave Winer's Scripting News)

The problem with the state-by-state abortion laws that <a href="https://www.cnn.com/2024/04/08/politics/donald-trump-abortion-2024/index.html">Trump says</a> he favors: 1. The women in states that ban abortion who will die as a result of the bans, and many more who will be severely injured, and all will have their freedoms severely restricted. 2. He's lying. When Congress passes a national abortion ban he'll sign it and boast about it, <a href="https://www.brainyquote.com/quotes/maya_angelou_383371">of course</a>. 

<http://scripting.com/2024/08/25.html#a230732>

---

**@Dave Winer's Scripting News** (date: 2024-08-25, from: Dave Winer's Scripting News)

If you're interested in languages and compiler compilers and how to bootstrap a scripting environment, then you'll <a href="https://github.com/scripting/Scripting-News/issues/310#issuecomment-2309019704">enjoy the progress</a> I've made in the <a href="https://github.com/scripting/Scripting-News/issues/310">project</a> to get <a href="http://scripting.com/frontier/manual/chapter04.html">UserTalk</a> running in today's environments. I welcome comments from experienced or curious language devs. 

<http://scripting.com/2024/08/25.html#a223121>

---

## Vance's Trumped-Up Economics

date: 2024-08-25, from: Robert Reich's blog

Friends, 

<https://robertreich.substack.com/p/vances-trumped-up-economics>

---

## Climate roundup: August 2024

date: 2024-08-25, from: Tracy Durnell Blog

So many people have worked on curbing climate change. What have we got to show for it? For starters: The projected warning has decreased by 0.9C. That&#8217;s considering only actually implemented policies. Pledged emissions cuts go even deeper. Is it enough? No. But we&#8217;ve gone from &#8220;It&#8217;s all going to hell&#8221; to &#8220;We made good [&#8230;] 

<https://tracydurnell.com/2024/08/25/climate-roundup-august-2024/>

---

**@Dave Winer's Scripting News** (date: 2024-08-25, from: Dave Winer's Scripting News)

<a href="https://www.threads.net/@davew/post/C_GmCiXJVBa">My response</a>: "We have no visibility into the inner workings of the NYT. We can't vote them out of office. We can't even rebut them. They rarely carry opposing opinions."
 

<http://scripting.com/2024/08/25.html#a183349>

---

## August 24, 2024

date: 2024-08-25, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/august-24-2024-131>

---

**@Dave Winer's Scripting News** (date: 2024-08-25, from: Dave Winer's Scripting News)

<a href="https://www.threads.net/@davew/post/C_GcSKWJ1bc">Walt Mossberg</a>: "Journalists have one core job: to tell the truth, especially when it’s clear. The staff of the NY Times has done it in the past, even at great risk. Why don’t they do it now?" 

<http://scripting.com/2024/08/25.html#a174735>

---

## The Organ Builder

date: 2024-08-25, from: Doc Searls (at Harvard), New Old Blog

On the right is the high school yearbook picture of Allan John Ontko, one of my best friends during the three years we were classmates at what I half-jokingly call a Lutheran academic correctional institution. Because that&#8217;s what it was for me. For most of the boys there, however, it was a seminary. Allan, then [&#8230;] 

<https://doc.searls.com/2024/08/25/the-organ-builder/>

---

## Peace, Love, and Music

date: 2024-08-25, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/peace-love-and-music>

---

## Caption contest: Next!

date: 2024-08-25, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/caption-contest-next-attraction>

---

## August 24, 2024

date: 2024-08-25, from: Heather Cox Richardson blog

The raucous roll call of states at the 2024 Democratic National Convention on Tuesday, as everybody danced to DJ Cassidy&#8217;s state-themed music, Lil Jon strode down the aisle to cheers for Georgia, and different delegations boasted about their states and good-naturedly teased other delegations, brought home the real-life meaning of E Pluribus Unum, &#8220;out of many, one.&#8221; From then until Thursday, as a sea of American flags waved and attendees joyfully chanted &#8220;USA, USA, USA,&#8221; the convention welcomed a new vision for the Democratic Party, deeply rooted in the best of traditional America. 

<https://heathercoxrichardson.substack.com/p/august-24-2024>

---

## Kamala's acceptance speech

date: 2024-08-25, from: Dave Winer's Scripting News

<p>Full audio for Kamala Harris's acceptance speech at the DNC. </p>
<p>Thanks to <a href="https://www.threads.net/@ianlandsman">Ian Landsman</a> for converting the video to MP3.  </p>
<p>My <a href="http://scripting.com/2024/08/23/123805.html">blog post</a> about the speech. </p>
<p>Podcast: <a href="https://s3.amazonaws.com/scripting.com/2024/08/24/kamalaHarrisAcceptanceSpeech2024.m4a">37 minutes</a>.</p>
 

<http://scripting.com/2024/08/24/014006.html?title=kamalasAcceptanceSpeech>

