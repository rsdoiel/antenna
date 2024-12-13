---
title: columns
updated: 2024-12-13 07:06:01
---

# columns

(date: 2024-12-13 07:06:01)

---

##  Six Childhood Scourges We&#8217;ve Forgotten About, Thanks to Vaccines. &#8220;Parents in the... 

date: 2024-12-13, updated: 2024-12-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045848-six-childhood-scourges-we>

---

##  Museums should be free, but if they can&#8217;t be free, they should... 

date: 2024-12-13, updated: 2024-12-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045792-museums-should-be-free-bu>

---

## ‘Looking Forward’: A Brief Film for Our Times.

date: 2024-12-13, from: James Fallows, Substack

Optimism? Pessimism? The compelling (and beautiful) case for both at once. 

<br> 

<https://fallows.substack.com/p/looking-forward-a-brief-film-for>

---

## systemd begrudgingly drops a safety net while a challenger appears, GNU Shepherd 1.0

date: 2024-12-13, updated: 2024-12-13, from: Liam Proven's articles at the Register

<h4>Holidays come early for distro builders with two init systems to choose from</h4>
      <p>Everyone&#39;s favorite Linux component has hit a milestone, while a fresh contender comes of age – with a touch of Lisp.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/12/13/systemd_257_gnu_shepherd/>

---

## 
                A quick look at OS/2’s builtin virtualization
            

date: 2024-12-13, updated: 2024-12-13, from: Uninformative blog

 

<br> 

<https://www.uninformativ.de/blog/postings/2024-12-13/0/POSTING-en.html>

---

## 2024-12-13 Archiving homepages

date: 2024-12-13, from: Alex Schroeder's Blog

<h1 id="2024-12-13-archiving-homepages">2024-12-13 Archiving homepages</h1>

<p>I keep thinking about self-hosting and people dying, myself included.
So my first wish for the end of the year is a solar-powered machine
that takes all my websites and turns them into clay tablets to bury
and survive the coming darkness.</p>

<p>Other than that, however, I think the solution would have to involve a
kind decentralized archive sharing where I offer an archive (zip,
tarball) for download and whoever has it can share it peer-to-peer
with others. Is this how <a href="https://en.m.wikipedia.org/wiki/BitTorrent">BitTorrent</a> works? I think I don&rsquo;t understand
what words like &ldquo;tracker&rdquo; mean. Also, where does the original torrent
come from and where does it go? I know there are sites where I can
search for and download torrent files. But what happens if Alice has a
file she wants to share with others including Bob, does she create a
torrent and offers it on her website, Bob finds it, downloads it, runs
a torrent client and gets a copy. If Alice and her website disappear,
how does Charlie get a copy now? Bob isn&rsquo;t hosting Alice&rsquo;s torrent
file on his website. So are they all dependent on a torrent hosting
site?</p>

<p>I&rsquo;m only half-aware of the <a href="https://en.wikipedia.org/wiki/InterPlanetary_File_System">InterPlanetary
File-System</a>
(IPFS) and when I read the Wikipedia page, there&rsquo;s stuff about hashes
and content addressing, but how does that work from a user
perspective? Is there a directory? How does Charlie learn about
Alice&rsquo;s site that&rsquo;s no longer online and how does Charlie get a copy
from Bob? Can Bob make a list of files on offer and Charlie can get
them all, maybe from Bob and maybe from others?</p>

<p>In this case, preservation would mean: you need people interested in
keeping a copy; the copies need to survive; the copies must be listed;
the lists must be distributed widely; at least some people must make
copies of these lists.</p>

<p>So, for me and you and some other fedi randos, we could have a &ldquo;fedi
website archive&rdquo; list where our names are listed together with the
hashes pointing to the content, and some IPFS client would keep it in
sync.</p>

<p>The next question, though: how do we keep this list updated? What little
I know about the blockchains underlying these protocols is that they are immutable so is there a way
to say: &ldquo;this is the updated list&rdquo;? That would require some sort of
social control and trust, too. An association of the living members of
the &ldquo;fedi website archive&rdquo; list that manages the yearly updates,
perhaps?</p>

<p>And so how would the maintenance actually work, I wonder. I write a
web app. We chat. (I think the human element is important.) You have
an account based on an email address and upload an archive and give it
a name (the name of your website, a short description, its current
URL). Once a year, the living associates meet and discuss whether to
dump some of their members who have turned fascist or whatnot (sadly,
always a possibility). Then we use the data gathered by the website to
generate a new &ldquo;directory&rdquo; list with names, description, URL and hash
(the URL may no longer work) and all the members share or host (??)
this new directory and drop previous directories so that the old
versions of our sites can be forgotten. And the IPFS clients do the
magic of actually exchanging the archive bytes?</p>

<p>Perhaps all of this only requires BitTorrent and hosting the torrent files on our own websites.</p>

<p>Would that work? Would you want to be part of this association? We
could create <a href="https://en.wikipedia.org/wiki/Swiss_association">an association according to Swiss
law</a>. There are some
famous international orgs that use this format.</p>

<p><a class="account" href="https://social.coop/@edsu" title="@edsu@social.coop">@edsu</a> wrote back, talking about
<a href="https://inkdroid.org/2024/10/20/pincushion/">pincushion</a>. And that&rsquo;s
what it is all about:</p>

<blockquote>
<p>The basic idea is that users should be able to download and view their
data without losing the context they have added. We want a pincushion
to represent a user’s collections, pins, images, videos, audio, tags,
locations, comments … and we want users to be able to view this content
when Historypin is no longer online, or even when the user isn’t
online. Maybe the pincushion is discovered on an old thumbdrive in a
shoebox under the bed.</p>

<p>This means that the resources being served dynamically by the
Historypin application need to be serialized as files, and specifically
as files that can be viewed directly in a browser: HTML, CSS,
JavaScript, JPEG, PNG, MP3, MP4, JSON. Once a users content can be
represented as a set of static files they can easily be distributed,
copied, and opportunities for replicating them using technologies like
IPFS become much more realistic.</p>
</blockquote>

<p>This is what I&rsquo;m talking about! It&rsquo;s all about exporting user data out
of a dynamic site into a form based on static files.</p>

<p><a href="Odd%C2%B5">Oddµ</a> tries to do the same: all the pages you write, all the files
you upload, everything can be downloaded as a static website. The
dynamic wiki application on top of it is essentially optional.</p>

<p>There are two things I still haven&rsquo;t solved, though:</p>

<ol>
<li>Bots crawling the web downloading the zip file again and again.</li>
<li>A distribution procedure and organisation that keeps it alive.</li>
</ol>

<p>Perhaps BitTorrent is the better solution. There are a gazillion
tools. It&rsquo;s been around for a while. It seems like a stable platform.</p>

<p><a class="account" href="https://social.coop/@edsu" title="@edsu@social.coop">@edsu</a> also added:</p>

<blockquote>
<p>You might want to check out how Magnet Links work, which let users
share links to their torrents and retrieve the metadata and data
from peers using a Distributed Hash Table (DHT). IPFS uses a DHT as
well.</p>
</blockquote>

<p>I think this is the way forward. People host to the latest torrent
file and host a copy of the data.</p>

<p>The org gets together once a year to celebrate, to welcome new
members, to honor those who have passed, the review complaints,
produces a new torrent file and we all agree to update our link.</p>

<p>All of this while keeping in mind the two forces pulling in opposite
directions: We want the right to curate, forget, delete, revise, but
we also want to archive in a decentralized fashion.</p>

<p>It seems to me that the only way to &ldquo;solve&rdquo; this currently is via a
social process. I suspect that the problem of reconciling these two
requirements is fundamentally not solvable on a technical level.</p>

<p>And we need to start practising now, while we&rsquo;re alive.</p>

<p><a class="tag" href="/search/?q=%23Archives">#Archives</a> <a class="tag" href="/search/?q=%23Web">#Web</a></p> 

<br> 

<https://alexschroeder.ch/view/2024-12-13-archiving-homepages>

---

## America’s four stories (Part 2) 

date: 2024-12-13, from: Robert Reich's blog

The Democrats&#8217; failure to tell the truth about the Rot at the Top 

<br> 

<https://robertreich.substack.com/p/the-four-stories-of-america-part>

---

## A Christmas Gift to My Families

date: 2024-12-13, from: Doc Searls (at Harvard), New Old Blog

A few weeks ago, my sister Jan and I drove a cache of archival stuff from her garage in North Carolina to my office in Indiana. One box was filled with boxes and carousels of slides nobody had seen for many decades. I also brought along my parents&#8217; slide projector, and digitized each slide by [&#8230;] 

<br> 

<https://doc.searls.com/2024/12/12/a-christmas-gift-to-my-families/>

---

## December 12, 2024 

date: 2024-12-13, from: Heather Cox Richardson blog

Ten days ago, on December 2, President Joe Biden arrived in Angola, the first U.S. 

<br> 

<https://heathercoxrichardson.substack.com/p/december-12-2024>

---

## ‘Making “Social” Social Again’ — Ev Williams Explains Mozi

date: 2024-12-13, updated: 2024-12-13, from: Daring Fireball

 

<br> 

<https://ev.medium.com/making-social-social-again-0126fa5c6ce8>

---

## Mozi

date: 2024-12-13, updated: 2024-12-13, from: Daring Fireball

 

<br> 

<https://www.mozi.app/>

---

**@Dave Winer's Scripting News** (date: 2024-12-13, from: Dave Winer's Scripting News)

It's a big enough <a href="https://www.youtube.com/watch?v=aENX1Sf3fgQ">umbrella but</a> it's always me that ends up getting wet. 

<br> 

<http://scripting.com/2024/12/12.html#a015759>

---

## Rage Against the System

date: 2024-12-13, from: Dan Rather's Steady

Murder, money, and Americans who are mad as hell 

<br> 

<https://steady.substack.com/p/rage-against-the-system>

---

## Friday 13 December, 2024

date: 2024-12-13, from: John Naughton's online diary

Snowy and me He’s been monitoring my workload atop the screens of a succession of MacBooks for many years. Quote of the Day ”People never die wishing they’d bought more stuff.” House-clearance manager Musical alternative to the morning’s radio news &#8230; <a href="https://memex.naughtons.org/friday-13-december-2024/40197/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/friday-13-december-2024/40197/>

---

##  Wow, look at this video of wild skating — a thin layer... 

date: 2024-12-12, updated: 2024-12-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045847-wow-look-at-this-video>

---

## Meet Mozi

date: 2024-12-12, from: Matt Haughey blog

<p>I had never heard of <a href="https://www.mozi.app/?ref=a.wholelottanothing.org" rel="noreferrer">Mozi</a> until a friend mentioned it in a Slack channel earlier today. I didn&apos;t hear about their big launch, but it&apos;s helmed by Ev Williams of former Blogger, Twitter, and Medium fame and I think it&apos;s a legitimately good</p> 

<br> 

<https://a.wholelottanothing.org/meet-mozi/>

---

##  I&#8217;m sorry, but if you need to fact-check an interview with your... 

date: 2024-12-12, updated: 2024-12-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045846-im-sorry-but-if-you>

---

##  The Biggest Bomb in the World 

date: 2024-12-12, updated: 2024-12-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/the-biggest-bomb-in-the-world>

---

##  A list of medieval English dog names, including Fyndewell, Sturdy, Plodder, Harmeles,... 

date: 2024-12-12, updated: 2024-12-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045842-a-list-of-medieval-englis>

---

##  This is interesting and somewhat counterintuitive: &#8220;Fare-free transit is not an environmental... 

date: 2024-12-12, updated: 2024-12-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045838-this-is-interesting-and-s>

---

## Zach Baron Interviews David Letterman for GQ: ‘Interviewing the Interview Master’

date: 2024-12-12, updated: 2024-12-13, from: Daring Fireball

 

<br> 

<https://www.youtube.com/watch?v=qycd0SMahac>

---

## The Amazing Kreskin Dies at 89

date: 2024-12-12, updated: 2024-12-12, from: Daring Fireball

 

<br> 

<https://www.nytimes.com/2024/12/11/arts/the-amazing-kreskin-dead.html>

---

##  Aerial Foodscapes 

date: 2024-12-12, updated: 2024-12-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/aerial-foodscapes>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-12-12, from: Miguel de Icaza Mastondon feed)

<p>That Apple design award I am dreaming off is looking further and further away</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/113641123710266394>

---

##  I missed this back in August: the excellent Art of the Title... 

date: 2024-12-12, updated: 2024-12-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045841-i-missed-this-back-in-1>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-12-12, from: Miguel de Icaza Mastondon feed)

<p>One month of testing Godot on iPad, I thought I was working really hard before the preview, but the last month of fixing bugs has been twice as intense:</p><p><a href="https://blog.la-terminal.net/xogot-preview-update/" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">blog.la-terminal.net/xogot-pre</span><span class="invisible">view-update/</span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/113641037464809652>

---

## December 11, 2024

date: 2024-12-12, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/153029693/7ed6691a9eea90f1938613efe71a68e1.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/153029693/7ed6691a9eea90f1938613efe71a68e1.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/december-11-2024-43d>

---

##  Tressie McMillan Cottom: &#8220;Whether you call it crony capitalism or just an... 

date: 2024-12-12, updated: 2024-12-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045840-tressie-mcmillan-cottom-w>

---

**@Dave Winer's Scripting News** (date: 2024-12-12, from: Dave Winer's Scripting News)

<a href="http://scripting.com/images/2024/12/12/finger.png">Possibly</a> the last moment when the Dems really kicked ass. 

<br> 

<http://scripting.com/2024/12/12.html#a162252>

---

## I'll keep my Tesla, thank you

date: 2024-12-12, from: Dave Winer's Scripting News

<p>I saw a <a href="https://bsky.app/profile/zephoria.bsky.social/post/3ld275e2kpk2u">pundit</a> suggest people harass people who drive Teslas.</p>
<p>When I bought mine, it cost $70K, a large sum of money that I will not throw away just so a pundit can make a point. </p>
<p>Here's my rebuttal. I'd like to see you get on without buying Exxon products. We all agree they suck, but evil companies have a way of building dependence, that's how they stay in business while openly doing despicable things.</p>
<p>When I put down $70K for what is, btw, a <a href="http://scripting.com/2024/12/07/142329.html">fantastic car</a>, no one knew how evil Elon Musk was going to turn out to be, how little he would care what you and I think.</p>
<p>And I don't believe anyone can live a pure life and extract all evil from it, and still participate in civilization. </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/12/12/blueskyPostScreenshot.png"></center>PS: I wrote this initially as a <a href="https://bsky.app/profile/scripting.com/post/3ld4nne5fe22r">post</a> on Bluesky.</div></p>
 

<br> 

<http://scripting.com/2024/12/12/161258.html?title=illKeepMyTeslaThankYou>

---

##  Great Casey Johnston piece on how chronic pain & capitalism intersect in... 

date: 2024-12-12, updated: 2024-12-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045839-great-casey-johnston-piec>

---

**@Dave Winer's Scripting News** (date: 2024-12-12, from: Dave Winer's Scripting News)

BTW, I hear that Safari now defaults to using HTTPS. Not sure exactly <a href="https://bsky.app/profile/johnspurlock.com/post/3ld5fpnbp7s2c">what</a> that means. But if they ever actually stop showing scripting.com, which will always be plain old HTTP, I'll probably ship an Electron product that browses the web, and doesn't care if it's HTTP or whatever new fad Google is promoting. I'm going to <a href="https://www.collinsdictionary.com/dictionary/english/hold-the-fort">hold the fort</a> for the original web. I can't change scripting.com to HTTPS, it would break all the images and probably a lot of other stuff. 

<br> 

<http://scripting.com/2024/12/12.html#a155806>

---

## Wednesday 11 December, 2024

date: 2024-12-12, from: John Naughton's online diary

Summertime, when… It’s that time of year, when everything is muddy, brown and skies are grey. So it was nice while sorting through photos to stumble on a reminder of how the garden looked six months ago. Quote of the &#8230; <a href="https://memex.naughtons.org/wednesday-11-december-2024/40190/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/wednesday-11-december-2024/40190/>

---

##  &#8220;The planet Uranus and its five biggest moons may not be the... 

date: 2024-12-12, updated: 2024-12-12, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045836-the-planet-uranus-and-its>

---

## "Rules" that terminal programs follow

date: 2024-12-12, updated: 2024-12-12, from: Julia Evans blog

 

<br> 

<https://jvns.ca/blog/2024/11/26/terminal-rules/>

---

## A twenty-five years old curl bug

date: 2024-12-12, from: Daniel Stenberg Blog

I have talked about old curl bugs before, but now we have a new curl record. When we announced the security flaw CVE-2024-11053 on December 11, 2024 together with the release of curl 8.11.1 we fixed a security bug that was introduced in a curl release 9039 days ago. That is close to twenty-five years. &#8230; <a href="https://daniel.haxx.se/blog/2024/12/12/a-twenty-five-years-old-curl-bug/" class="more-link">Continue reading <span class="screen-reader-text">A twenty-five years old curl bug</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2024/12/12/a-twenty-five-years-old-curl-bug/>

---

## America’s four stories (Part 1)

date: 2024-12-12, from: Robert Reich's blog

Trump has offered extreme versions. The Democrats stopped offering them at all. 

<br> 

<https://robertreich.substack.com/p/the-four-stories-of-america>

---

## RAMA M6-C DUALSHOT™

date: 2024-12-12, from: mrusme blog

The RAMA M6-C _Dualshot_ edition. 

<br> 

<https://xn--gckvb8fzb.com/rama-m6-c-dualshot/>

---

## December 11, 2024 

date: 2024-12-12, from: Heather Cox Richardson blog

Yesterday, President Joe Biden spoke at the Brookings Institution, where he gave a major speech on the American economy. 

<br> 

<https://heathercoxrichardson.substack.com/p/december-11-2024>

---

## Gist of Go: Pipelines

date: 2024-12-12, from: Anton Zhiyanov blog

Compose concurrent pipelines from independent blocks. 

<br> 

<https://antonz.org/go-concurrency/pipelines/>

---

## Dammit, I caught covid again

date: 2024-12-12, from: Matt Haughey blog

<p>I avoided covid for quite a while, but in August of 2023 my luck caught up with me and I think it was going to three sold out movies in theaters in the same week while a friend was visiting and also I decided not to wear a mask at</p> 

<br> 

<https://a.wholelottanothing.org/dammit-i-caught-covid-again/>

---

## ★ The Information Suggests, in an Aside, That Apple Scrapped Work on a Quad-Max/Double-Ultra M-Series Chip

date: 2024-12-12, updated: 2024-12-12, from: Daring Fireball

Reporting from The Information suggests that an M-series tier above Ultra might remain years away. 

<br> 

<https://daringfireball.net/2024/12/information_aside_double_ultra_scrapped>

---

## Spamalanche

date: 2024-12-12, from: Matt Haughey blog

<p>Today, someone tried to pull a scam on me, and it had some notable approaches I haven&apos;t seen or heard about before so I figure I&apos;ll write it up in case someone else someday is searching for a strange bunch of behaviors that hit their credit</p> 

<br> 

<https://a.wholelottanothing.org/spamalanche-2/>

---

## ‘Letterman TV’ Launching on Samsung TV Plus

date: 2024-12-12, updated: 2024-12-12, from: Daring Fireball

 

<br> 

<https://www.hollywoodreporter.com/business/business-news/david-letterman-fast-channel-samsung-tv-plus-1236082779/>

---

##  I just updated the 2024 Kottke Holiday Gift Guide, including some gifts... 

date: 2024-12-11, updated: 2024-12-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045837-i-just-updated-the-2024>

---

## Strong winds

date: 2024-12-11, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/strong-winds-a83>

---

## Strong winds

date: 2024-12-11, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/strong-winds>

---

##  Now Serving: Drinkable Mayonnaise 

date: 2024-12-11, updated: 2024-12-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/now-serving-drinkable-mayonnaise>

---

## Obeying in Advance: The Christopher Wray Story.

date: 2024-12-11, from: James Fallows, Substack

Eight years ago, then-FBI director James Comey tipped the election to Donald Trump. Today, his successor ensured that he will also be remembered for the destructive end of his tenure. 

<br> 

<https://fallows.substack.com/p/obeying-in-advance-the-christopher>

---

##  Holiday Terms & Conditions (A Christmas Album). Lyrics include: &#8220;It&#8217;s beginning to... 

date: 2024-12-11, updated: 2024-12-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045833-holiday-terms-conditions->

---

##  Bryan Cranston Reads From Robert Caro&#8217;s The Power Broker 

date: 2024-12-11, updated: 2024-12-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/bryan-cranston-reads-from-robert-caros-the-power-broker>

---

## Answers for a tester

date: 2024-12-11, from: Dave Winer's Scripting News

<p>A valued tester of <a href="https://this.how/wordland/">WordLand</a> asked a series of questions, which I answered in some detail, and felt it was a good idea to post the answers here on my blog.</p>
<ul>
<li>Any kind of feedback you want to give is totally welcome. I'd prefer it be in the <a href="https://github.com/scripting/wordlandSupport/issues">GitHub issues section</a> so it might inspire other people to contribute. </li>
<li>Re image insertion, I'm not sure it could be simpler. The goal is to get an image into the user's document. If it succeeded at doing that then I'm happy with the design. ;-)</li>
<li>The target audience is writers who use WordPress. The idea is to put all the features writers need in one place, rather than scattered around the WP interface. And to use modern UI techniques you'd see in social web apps. </li>
<li>I've tried to answer the questions you raised in the only way I can. For example I need to use a term for the arrows that move you through the stories you've written. They aren't all posts, but they are all drafts. I can explain that in the docs, but I seriously doubt if anyone would read them. There is a distinction and it's important to make that distinction. I also don't think it's crucial to get that one "right" -- not that I think there is a right answer to that one other than removing the feature, which I like having there because it emphasizes that we're working with a set of documents that you can edit.</li>
<li>In all cases, you could raise any issue you have, I will think about what you say, but accept my response, and trust that I've incorporated your experience as data that might inspire a change in the design at some point. </li>
<li>But do understand that a lot of thought has already gone into this, and a quick review by a new user is no substitute for a product design.</li>
<li>I know the docs are non-existent. I am limited in the time I have and the commitments I've made. The truth is that even dedicated users won't read them. I know that by the questions they ask. But I will write the docs. </li>
<li>What I suggest is you try using the product for its intended purpose, and assume that all feedback is welcome (it is) but once it has been registered, you should move on to the next thing.</li>
<li>I've worked with testers many times going back a very long time. I've even hired testers. I don't take offense to critiques of the software.</li>
</ul>
<p>BTW, if after reading this, you think you could be this kind of tester for <a href="https://this.how/wordland/">WordLand</a>, and you have experience with WordPress, and a site on wordpress.com, and are excited about the idea of a simple way to write and manage lots of documents in a WordPress environment, please <a href="https://docs.google.com/forms/d/e/1FAIpQLSeuk4REqAIkKs9vHf4ExMN_jtANenoDl0ciUxeLSFVmtehZ_Q/viewform">fill out this form</a>, I'll read it right away, and if it seems like a fit, I'll authorize your account. </p>
 

<br> 

<http://scripting.com/2024/12/11/203305.html?title=answersForATester>

---

##  Recently found: a message in a bottle at an archaeological dig left... 

date: 2024-12-11, updated: 2024-12-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045832-recently-found-a-message->

---

## MacOS Sequoia 15.2 Includes References to Next Year’s M4 MacBook Air Models

date: 2024-12-11, updated: 2024-12-11, from: Daring Fireball

 

<br> 

<https://www.macrumors.com/2024/12/11/macos-sequoia-15-2-m4-macbook-air-leak/>

---

**@Ryan Gantz Bluesky feed** (date: 2024-12-11, from: Ryan Gantz Bluesky feed)

sick of online services and steps for all things, every day. i did this to myself 

<br> 

<https://bsky.app/profile/sixfoot6.bsky.social/post/3ld2ku4non22b>

---

##  Racing&#8217;s Deadliest Day. After the 1955 Le Mans disaster, &#8220;it would be... 

date: 2024-12-11, updated: 2024-12-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045835-racings-deadliest-day-aft>

---

## December 10, 2024

date: 2024-12-11, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/152976821/273230a871d9f6281b5f1381bc5dc9ab.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/152976821/273230a871d9f6281b5f1381bc5dc9ab.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/december-10-2024-612>

---

##  Monument Valley 3 is out today on iOS & Android and is... 

date: 2024-12-11, updated: 2024-12-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045831-monument-valley-3-is-out>

---

**@Dave Winer's Scripting News** (date: 2024-12-11, from: Dave Winer's Scripting News)

I have United Healthcare insurance. I got it as part of my Medicare package when I turned 65. I've had good experience with them. I had major surgery in 2002, cost hundreds of thousands, included a one-week hospital stay and lots of followup treatments. I know the hospital did all the work with them, I was shielded from any complications, but as far as I know there were none. Never had a treatment questioned or denied. I had another insurance provider for many years after that, but when given a chance I went back to United. Just want to say, so far -- knock wood -- I am a happy customer. 

<br> 

<http://scripting.com/2024/12/11.html#a171040>

---

## What Is To Be Done? Investing Where It Matters.

date: 2024-12-11, from: James Fallows, Substack

Something has started. Let's keep it going. 

<br> 

<https://fallows.substack.com/p/what-is-to-be-done-investing-where>

---

##  The Origin of Delay, Deny, Defend 

date: 2024-12-11, updated: 2024-12-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/the-origin-of-delay-deny-defend>

---

##  Check Out the 2025 Moon Phases 

date: 2024-12-11, updated: 2024-12-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/check-out-the-2025-moon-phases>

---

**@Dave Winer's Scripting News** (date: 2024-12-11, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/03/28/juggler.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Bingeworthy has an RSS feed (not public yet), and new ratings <a href="https://imgs.scripting.com/2024/12/11/bingeworthyInBlogroll.png">show up</a> in my blogroll, of course. 

<br> 

<http://scripting.com/2024/12/11.html#a153744>

---

**@Dave Winer's Scripting News** (date: 2024-12-11, from: Dave Winer's Scripting News)

No more elections where Hope is the main theme. Better: Kicking ass. Kicking ass is for ass-kicking Americans. I personally <i>like</i> Hope, but I'm also a sports fan and understand the value of kicking ass. 

<br> 

<http://scripting.com/2024/12/11.html#a150820>

---

##  If you haven&#8217;t had the pleasure, you should double back and read... 

date: 2024-12-11, updated: 2024-12-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045826-if-you-havent-had-the>

---

**@Dave Winer's Scripting News** (date: 2024-12-11, from: Dave Winer's Scripting News)

Just added to my todo list -- add the option to use the <a href="https://github.com/WP-API/node-wpapi">WordPress REST interface</a> in place of the <a href="https://github.com/Automattic/wpcom.js">WPCOM interface</a>, this will give <a href="https://this.how/wordland/">WordLand</a> the ability to edit WordPress sites anywhere, not just on wordpress.com. When I made the choice to go with WPCOM I didn't have ChatGPT to look at the other options, I was surprised to find that WordPress actually had a good JavaScript API. It doesn't look like the conversion will be too bad. It's obviously better to be able to work with all WordPress sites. 

<br> 

<http://scripting.com/2024/12/11.html#a143952>

---

##  The old school Oregon Trail video game is being adapted into an... 

date: 2024-12-11, updated: 2024-12-11, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045821-the-old-school-oregon-tra>

---

## Jailbreaking LLM-Controlled Robots

date: 2024-12-11, updated: 2024-12-09, from: Bruce Schneier blog

<p>Surprising no one, it&#8217;s <a href="https://spectrum.ieee.org/jailbreak-llm">easy</a> <a href="https://robopair.org/">to</a> trick an LLM-controlled robot into ignoring its safety instructions.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2024/12/jailbreaking-llm-controlled-robots.html>

---

## Linux 6.12 is the new long term supported kernel

date: 2024-12-11, updated: 2024-12-11, from: Liam Proven's articles at the Register

<h4>Mid-November release will be maintained for &#39;several years&#39;</h4>
      <p>Last month&#39;s new version of the Linux kernel, 6.12, has been confirmed as the newest LTS release… which also marks the end of the line for kernel 4.19.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/12/11/linux_612_lts/>

---

## Office Hours: Where they’re raging against the establishment

date: 2024-12-11, from: Robert Reich's blog

It&#8217;s one of the most powerful forces in America. How does it express itself? 

<br> 

<https://robertreich.substack.com/p/office-hours-where-theyre-raging>

---

## Air fryers produce less indoor air pollution

date: 2024-12-11, from: Tracy Durnell Blog

 

<br> 

<https://tracydurnell.com/2024/12/10/air-fryers-produce-less-indoor-air-pollution/>

---

## Video pairing: systems steeped in values

date: 2024-12-11, from: Tracy Durnell Blog

How thousands of school lunches are made for Japanese students (video) by Adedayo Afolabi and David Valerio (Business Insider) A completely different perspective on food in schools, considering it both part of the curriculum and an essential role of schools to make sure kids are fed. + How did planners design Soviet cities? (video) by [&#8230;] 

<br> 

<https://tracydurnell.com/2024/12/10/video-pairing-systems-steeped-in-values/>

---

## curl 8.11.1

date: 2024-12-11, from: Daniel Stenberg Blog

Welcome to another curl release. This time we do a bugfix only release, five weeks since the previous version shipped. Release Presentation Numbers the 263rd release0 changes35 days (total: 9,763)79 bugfixes (total: 11,173)115 commits (total: 33,811)0 new public libcurl function (total: 94)0 new curl_easy_setopt() option (total: 306)0 new curl command line option (total: 266)51 contributors, &#8230; <a href="https://daniel.haxx.se/blog/2024/12/11/curl-8-11-1/" class="more-link">Continue reading <span class="screen-reader-text">curl 8.11.1</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2024/12/11/curl-8-11-1/>

---

## Bankruptcy Judge Rejects The Onion’s Bid to Buy Infowars

date: 2024-12-11, updated: 2024-12-11, from: Daring Fireball

 

<br> 

<https://www.nbcnews.com/tech/internet/bankruptcy-judge-rejects-onions-bid-buy-alex-jones-infowars-rcna183453>

---

## December 10, 2024 

date: 2024-12-11, from: Heather Cox Richardson blog

Today is Human Rights Day, celebrated internationally in honor of the day seventy-six years ago, December 10, 1948, when the United Nations General Assembly announced the Universal Declaration of Human Rights (UDHR). 

<br> 

<https://heathercoxrichardson.substack.com/p/december-10-2024>

---

## Intermittent fasting

date: 2024-12-11, from: Dave Rupert blog

<aside>
<p>⚠️ Content warning: Weight loss, feel free to skip if that is not a good topic for you.</p>
</aside>
<p>A doctor told me to look into intermittent fasting. Not for weight loss, but for ADHD. There’s some <a href="https://www.addrc.org/the-role-of-brain-insulin-in-adhd-emerging-evidence/">new data that suggests a link between ADHD and insulin in the brain</a>. Based on that science, intermittent fasting or a ketogenic diet –which can help improve insulin resistance– might help my brain. I’m a week into it and am seeing some weight loss, but it’s hard to tell with the ADHD without measuring my brainflorps per second. I might be more focused, but hunger and “hangry” bring their own distractions.</p>
<p>I’m skeptical, to say the least. Intermittent fasting makes frequent appearances in my YouTube shorts with balding Joe Rogan clones dressed in all black selling workout supplements. It has a whiff of being a cure-all. To counter that skepticism, I read a book called <a href="https://amzn.to/4fRPUMt"><em>Life in the Fasting Lane</em></a> co-authored by Dr Jason Fung, who was specifically recommended to me. It’s a mix of doctorly advice and testimonials from advocates who have had success with fasting. As scientific as the book tries to be, it undoes its own credibility pitching intermittent fasting with all the hallmarks of a fad elimination diet:</p>
<ul>
<li>Lose weight in 30 days</li>
<li>Reduce cravings</li>
<li>Live longer</li>
<li>Reverse diseases</li>
<li>Helps you focus at work</li>
<li>Improves your sex life</li>
<li>Big pharma doesn’t want you to know about this one weird trick!</li>
<li>Used by ancient civilizations. Ugh. The appeal to history (ancient, therefore good!) is a major pet peeve of mine.</li>
<li>And my least favorite: It doesn’t cure cancer, but it cures obesity, which causes all different kinds of cancer… so we’re not gonna say it cures cancer because that’s a douchebag thing to say, but it <em>doesn’t not</em> cure cancer if you catch our drift (wink).</li>
</ul>
<p>I do appreciate that the book calls out “Calories-In/Calories-Out” as a myth that works 1% of the time. But it’s hard to shake the feeling that eliminating meals or days worth of food isn’t a macro-version of calories-in/calories-out, where you measure calories in weeks instead of per meal. I suppose the key difference is the duration between meals allows my body to enter ketosis (read: a starving state) which will consume my excess fat stores instead of my morning breakfast tacos adding to those fat stores.</p>
<p>To be honest, I’m a good candidate for this fad diet. I can sustain myself on a couple meals a day. I could skip lunch most days. Skipping breakfast though is hard. Not putting creamer in my morning coffee is hard. Not having a little after dinner snack with the kids is hard. Not eating is not my favorite, but I’m going to trust the process for a bit and hopefully it’ll help a weary brain like mine.</p> 

<br> 

<https://daverupert.com/2024/12/intermittent-fasting/>

---

##  In Training: A Book of Bonsai Photos 

date: 2024-12-10, updated: 2024-12-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/in-training-a-book-of-bonsai-photos>

---

##  A very simple little browser game: open the microwave door as close... 

date: 2024-12-10, updated: 2024-12-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045824-a-very-simple-little-brow>

---

##  Straight White Male, the Game of Life&#8217;s Lowest Difficulty Setting 

date: 2024-12-10, updated: 2024-12-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/straight-white-male-the-game-of-lifes-lowest-difficulty-setting-1>

---

##  The New Rules of Media. &#8220;Everything is a personality cult, and maybe... 

date: 2024-12-10, updated: 2024-12-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045823-the-new-rules-of-media>

---

##  Willem Dafoe interviewed by Matt Zoller Seitz. &#8220;If you make it about... 

date: 2024-12-10, updated: 2024-12-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045820-willem-dafoe-interviewed->

---

##  &#8220;ProPublica&#8217;s Claim File Helper lets you customize a letter requesting the notes... 

date: 2024-12-10, updated: 2024-12-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045819-propublicas-claim-file-he>

---

## December 9, 2024

date: 2024-12-10, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/152927088/562a798c5b1904b71bca7dff4fe232f9.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/152927088/562a798c5b1904b71bca7dff4fe232f9.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/december-9-2024-108>

---

##  Sally Rooney: When are we going to have the courage to stop... 

date: 2024-12-10, updated: 2024-12-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045818-sally-rooney-when-are-we>

---

##  A thread of some letters people wrote to each other on clay... 

date: 2024-12-10, updated: 2024-12-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045733-a-thread-of-some-letters>

---

## The Spectacular Typography of the Sanborn Fire Maps

date: 2024-12-10, updated: 2024-12-10, from: Daring Fireball

 

<br> 

<https://sanbornfiremaps.com/>

---

## Apple watch and Tesla

date: 2024-12-10, from: Dave Winer's Scripting News

<p>Many Tesla drivers <a href="http://scripting.com/2024/12/07/142329.html#a143215">wish</a> they'd evict Elon Musk. On the other hand can your car do this?</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/12/10/appleWatchOnTesla.png"></center>My Apple Watch can unlock my Model Y, turn the heat on, open the frunk.</div></p>
 

<br> 

<http://scripting.com/2024/12/10/165048.html?title=appleWatchAndTesla>

---

##  What&#8217;s The One Thing Only You Noticed? 

date: 2024-12-10, updated: 2024-12-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/whats-the-one-thing-only-you-noticed>

---

## Raspberry Pi 500 uses QMK Firmware for built-in keyboard

date: 2024-12-10, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Raspberry Pi 500 uses QMK Firmware for built-in keyboard</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>I mentioned in my <a href="https://www.jeffgeerling.com/blog/2024/pi-500-much-faster-lacks-m2">Pi 500 review</a> Raspberry Pi is dogfooding their own microcontroller in the new Pi 500. An RP2040 sits next to the keyboard ribbon cable connector, and interfaces it through a USB port directly into the RP1 chip:</p>

<p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/pi-500-rp2040-keyboard-qmk.jpg" alt="Raspberry Pi 500 PCB with RP2040 for keyboard input"></p>

<p>In good news for keyboarding enthusiasts, the RP2040 seems to be flashed with the open-source <a href="https://github.com/raspberrypi/QMK">QMK ('Quantum Mechanical Keyboard') Firmware</a>. Thanks to a reader, 'M', who figured that out!</p>

<p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/system76-launch-keyboard.jpg" alt="System76 Launch keyboard with RP2040 inside"></p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-12-10T09:52:00-06:00" title="Tuesday, December 10, 2024 - 09:52" class="datetime">December 10, 2024</time>
</span> 

<br> 

<https://www.jeffgeerling.com/blog/2024/raspberry-pi-500-uses-qmk-firmware-built-keyboard>

---

##  An analysis of the UX of Lego interface panels. &#8220;Armed with 52... 

date: 2024-12-10, updated: 2024-12-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045810-an-analysis-of-the-ux>

---

**@Dave Winer's Scripting News** (date: 2024-12-10, from: Dave Winer's Scripting News)

This time of year every day feels like Sunday. 

<br> 

<http://scripting.com/2024/12/10.html#a153623>

---

**@Dave Winer's Scripting News** (date: 2024-12-10, from: Dave Winer's Scripting News)

Here's a sad fact. When something open takes off, the vultures swoop in and try to own it. You wouldn't believe the greed I've seen. It's a virus, and it needs to stop, or at least be exposed as it's happening. 

<br> 

<http://scripting.com/2024/12/10.html#a150844>

---

**@Dave Winer's Scripting News** (date: 2024-12-10, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/08/29/hope.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Yesterday I did a <a href="https://shownotes.scripting.com/scripting/2024/12/09/weAllOwnAndNoOneOwnsPodcasting.html">podcast</a> about why it's important to choose humble names for groups of developers working on open formats, using podcasting as an example. Another case in point, the <a href="https://socialwebfoundation.org/">Social Web Foundation</a>, which is about ActivityPub and the Fediverse, when there are many other forms of the social web. Here's where the rubber meets the road. They're having a meeting in Brussels where people can demo their social web apps, but it's only about ActivityPub. If you have a project for Bluesky, or Threads, or non-ActivityPub Mastodon, or <a href="https://cyber.harvard.edu/rss/rss.html">RSS</a> for that matter, you should feel welcome there, regardless of what their <a href="https://socialwebfoundation.org/2024/11/01/fosdem-2025-social-web-devroom-call-for-participation/">Call For Participation</a> says. 

<br> 

<http://scripting.com/2024/12/10.html#a143706>

---

## 2024-12-09 Burned

date: 2024-12-10, from: Alex Schroeder's Blog

<h1 id="2024-12-09-burned">2024-12-09 Burned</h1>

<p>This page is about me burning myself on a Raclette table-grill.</p>

<p>I&rsquo;m no longer quite sure of the timeline. I think I got the burn on 2024-12-03 or 2024-12-04.</p>

<p><strong>2024-12-05</strong>: Two days ago I got myself a second degree burn about one inch in diameter from our Raclette oven. I hadn’t burned myself in about forty years, I think and I feel like a kid again, observing the body as it reacts. The healing powers are so weird.</p>

<p>Also I’m thankful for these self-healing capabilities we have! And thankful for this accident to be a curiosity instead of an emergency. A good reminder to be thankful for all the good days we have and I hope you’re having a good day! Live long and prosper. Or, as I usually tell me wife: healthy, happy, and in love. Be well.</p>

<p><strong>2024-12-07</strong>: The skin around the burn had reddened and had swollen a bit. I went to the pharmacy and got a disinfectant cream and wound pads. This was Saturday afternoon and no more doctors were available. Since this wasn’t an emergency, there&rsquo;s was rush.</p>

<p><strong>2024-12-09</strong>:  The minor burn resulted in some sort of low-key infection, so now it&rsquo;s antibiotic to swallow and antibiotics to apply.</p>

<p>Some things I&rsquo;m learning from this experience:</p>

<ol>
<li>I knew about cold, running water and left my arm under that cold tap for many long minutes. Maybe not long enough? I don&rsquo;t know. It felt ready to fall off. 😆</li>
<li>The burn might look like a typical abrasion but you have to keep it super clean. Best cover it with those special wound covers that don&rsquo;t stick to the wound (nothing we would have had at home so off to the pharmacy you go, immediately, unlike me).</li>
<li>It might look dry and clean like blisters you got from a long hike but the bedsheets or long sleeves or whatever will pass on germs and since there is a piece of your exterior protection missing, you&rsquo;ll get an infection. The skin around the wound is a bit red, the area a bit swollen, a bit warmer. And that already concerns the doctors.</li>
</ol>

<p><a class="tag" href="/search/?q=%23Life">#Life</a></p> 

<br> 

<https://alexschroeder.ch/view/2024-12-09-burn>

---

**@Ryan Gantz Bluesky feed** (date: 2024-12-10, from: Ryan Gantz Bluesky feed)

“This is a man who had options. He could have been almost anything he wanted to be. And the thing he ultimately chose to do with his life, after suffering a debilitating injury, was to shoot the CEO of United Healthcare.

Luigi Mangione was radicalized by pain.”
https://open.substack.com/pub/shatterzone/p/alleged-ceo-shooter-luigi-mangione?utm_campaign=post&utm_medium=web 

<br> 

<https://bsky.app/profile/sixfoot6.bsky.social/post/3lcxgdqok722q>

---

## Full-Face Masks to Frustrate Identification

date: 2024-12-10, updated: 2024-12-09, from: Bruce Schneier blog

<p><a href="https://www.linkedin.com/feed/update/urn:li:activity:7270576541816745985/">This</a> is going to be interesting.</p>
<p>It&#8217;s a video of someone trying on a variety of printed full-face masks. They won&#8217;t fool anyone for long, but will survive casual scrutiny. And they&#8217;re cheap and easy to swap.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2024/12/full-face-masks-to-frustrate-identification.html>

---

## Checking in

date: 2024-12-10, from: Robert Reich's blog

Six weeks to go before Trump. How are you doing? 

<br> 

<https://robertreich.substack.com/p/checking-in>

---

## December 9, 2024 

date: 2024-12-10, from: Heather Cox Richardson blog

The sudden collapse of the Assad regime in Syria yesterday took oxygen away from the airing of President-elect Trump&#8217;s interview with Kristen Welker of NBC&#8217;S Meet the Press. The interview told us little that we didn&#8217;t already know, but it did reinforce what we can expect in the new administration. 

<br> 

<https://heathercoxrichardson.substack.com/p/december-9-2024>

---

## 2024-12-09 ed is the standard

date: 2024-12-10, from: Alex Schroeder's Blog

<h1 id="2024-12-09-ed-is-the-standard">2024-12-09 ed is the standard</h1>

<p><code>ed</code> is <a href="true-path">the standard editor</a>, they say.
I have strange fascination with it.</p>

<p><code>ed</code> is a window in the past.
This is a line-based editor, not a screen-based editor.
It can be used with a line-printer instead of a screen.
This also means that working with it is very different.
I&rsquo;ll try to collect some interesting command sequences
on this page.</p>

<p>I use <code>ed</code> to send mail from the command line. One way
I do this is by using <code>mail</code> on the server. It&rsquo;s a
line-oriented mail client. You can use any editor with
it, but the default feels very close to <code>ed</code>.</p>

<p>When I started reading newsgroups again, I used <code>tin</code>
and made it use <code>ed</code> as the editor.</p>

<p>As you can see, it&rsquo;s growing on me. 😅</p>

<p>And I&rsquo;m not alone! On fedi, I&rsquo;m following
<a class="account" href="https://merveilles.town/@aartaka" title="@aartaka@merveilles.town">@aartaka</a> who occasionally posts things
about <code>ed</code>.</p>

<p>And so, in order to get better with it, I decided
to write this page. I expect to be adding to it.</p>

<p>Also check out <a href="https://blog.sanctum.geek.nz/actually-using-ed/">Actually using ed</a>
by <a class="account" href="https://mastodon.sdf.org/@tejr" title="@tejr@mastodon.sdf.org">@tejr</a>.</p>

<h2 id="documentation">Documentation</h2>

<p>Try <code>man ed</code> or <code>info ed</code> to learn more about the commands
available to you within <code>ed</code>.</p>

<p><a class="account" href="https://io.mwl.io/@mwl" title="@mwl@io.mwl.io">@mwl</a>. wrote <a href="https://mwl.io/nonfiction/tools#ed">Ed Mastery</a>
which motivated me to get into <code>ed</code>.</p>

<h2 id="create-a-new-file">Create a new file</h2>

<p>Start <code>ed</code> without a file name. You&rsquo;ll be editing &ldquo;lines&rdquo; in a &ldquo;buffer&rdquo;.</p>

<p>The commands to use:</p>

<ul>
<li><code>i</code> to insert a few lines</li>
<li><code>.</code> on a line by itself ends the insertion of lines</li>
<li><code>w filename</code> writes the buffer to a file (and prints the number of bytes written)</li>
<li><code>q</code> quits the editor</li>
</ul>

<pre><code>alex@melanobombus ~&gt; ed
i
Hello World!

This is a letter from me to you.
.
w hello.txt
47
q
</code></pre>

<h2 id="edit-an-existing-file">Edit an existing file</h2>

<p>When we provide ed with a filename, it is read into the buffer (and the number of bytes read are printed).
The current line is the last line of the buffer.</p>

<ul>
<li><code>a</code> appends new lines after the current line</li>
<li><code>.</code> on a line by itself ends the appending of lines</li>
</ul>

<pre><code>alex@melanobombus ~&gt; ed hello.txt 
47
.
This is a letter from me to you.
a

And that was it!
.
w
65
</code></pre>

<p>Now, <code>ed</code> is line-oriented and so we can provide line numbers and line ranges to our commands.
If you omit a line number or the range, these commands apply to the current line only.
A range is two comma-separated line numbers.
If you omit numbers, defaults are &ldquo;from the first line&rdquo; and &ldquo;to the last line&rdquo;.
Thus, a single comma means &ldquo;all the lines&rdquo;.
<code>$</code> is always the last line.
Relative addressing with negative offsets like <code>-1</code> and positive offsets like <code>+1</code> works as well.</p>

<ul>
<li><code>p</code> prints the lines</li>
<li><code>n</code> numbers the lines</li>
</ul>

<p>These are all equivalent:</p>

<ul>
<li><code>1,5p</code></li>
<li><code>1,$p</code></li>
<li><code>,p</code></li>
</ul>

<p>So now let&rsquo;s number the lines and then append to the first paragraph.
Use <code>n</code> to find the right line number to append to, and use <code>p</code> at the end to proofread.</p>

<pre><code>,n
1	Hello World!
2	
3	This is a letter from me to you.
4	
5	And that was it!
3a
It's pretty short, I know. I didn't have enough time to make it longer.
.
w
137
,p
Hello World!

This is a letter from me to you.
It's pretty short, I know. I didn't have enough time to make it longer.

And that was it!
</code></pre>

<p>Notice how we could only append new lines after the third line. We couldn&rsquo;t append new words to the third line itself.
What we can do is join two lines, though.
Unfortunately, that doesn&rsquo;t add a space!</p>

<p>One option is to add a single line containing a space.
The other option is to use a substitution to add a space. That&rsquo;s what we will use.</p>

<ul>
<li><code>s/from/to/</code> replaces regular expression <code>from</code> with string <code>to</code>.</li>
<li><code>j</code> joins lines in the range</li>
</ul>

<p>Knowing that this concerns lines 3 and 4 there is no need to use <code>n</code>.</p>

<pre><code>3s/$/ /
3,4j
p
This is a letter from me to you. It's pretty short, I know. I didn't have enough time to make it longer.
</code></pre>

<h2 id="processing-with-other-tools">Processing with other tools</h2>

<p>There is no way to process the buffer with external tools, but there is a way to do it with the current file.</p>

<ul>
<li><code>w</code> writes the file</li>
<li><code>e</code> edits a filename, replacing the current buffer; or if the argument starts with an exclamation mark, executes the command and replaces the buffer with the output</li>
</ul>

<pre><code>w
137
e !fold -s %
fold -s hello.txt
138
,p
Hello World!

This is a letter from me to you. It's pretty short, I know. I didn't have 
enough time to make it longer.

And that was it!
</code></pre>

<h2 id="to-insert-some-command-output">To insert some command output</h2>

<p>I like to start my blog posts with a level one heading, a date, and some text.
Here&rsquo;s how I would insert a date. Note the invisible space after the <code>#</code>.</p>

<ul>
<li><code>r</code> reads lines from a filename, inserting them into the current buffer; or if the argument starts with an exclamation mark, executes the command and inserts the lines from the output into the buffer</li>
</ul>

<pre>
ed
i
#<mark> </mark>
.
r !date --iso
11
a
 ed is the standard
.
,j
p
# 2024-12-09 ed is the standard
</pre>

<h2 id="using-the-buffer-as-a-workspace">Using the buffer as a workspace</h2>

<p>OK, I know this is weird. But in theory we can think of the buffer
as a huge one-dimensional workspace. We can insert lines from files
and process output here and there, and we can write line ranges
to files.</p>

<p>Here we are writing a haiku, don&rsquo;t like the last line, insert a new
third line and then write just the first three lines to the file.
The fourth line not saved but it is still available in the buffer.</p>

<pre><code>alex@melanobombus ~&gt; ed
i
The words grow from lines
a growing snake on the screen
trying to escape
.
w haiku.txt
73
i
running off the page
.
1,3w
77
</code></pre>

<p>In this sense it&rsquo;s unclear what the default filename of the buffer is.
It&rsquo;s the one-dimensional desktop!</p>

<ul>
<li><code>f</code> prints the default filename, or sets it if a filename is provided</li>
</ul>

<pre><code>f
haiku.txt
</code></pre>

<h2 id="using-marks-and-line-arithmetic">Using marks and line arithmetic</h2>

<p>Perhaps working with the buffer as a long, one-dimensional workspace
makes more sense if you drop markers as you work with files. Use <code>k</code>
followed by a lower case letter.</p>

<p>Here we insert a first haiku, mark the first line, insert a new haiku,
mark its beginning, and then we print the two, using the marks and
some line arithmetic.</p>

<pre><code>r haiku.txt
77
1ka
a
Lines grow from the left
voices talking in my head
overhead, a lamp
.
-2kb
'a,'a+2p
The words grow from lines
a growing snake on the screen
running off the page
'b,'b+2p
Lines grow from the left
voices talking in my head
overhead, a lamp
'b,$w haiku2.txt
68
</code></pre>

<h2 id="hit-enter-too-soon">Hit Enter too soon</h2>

<p>Something I do often enough: I hit the Enter key when I didn&rsquo;t mean to.
Fix it by beginning the new line with a space. Finish the line, and join the previous line with the current line:</p>

<pre><code>i
Hello
 World!
.
-1,.j
p
Hello World!
</code></pre>

<p><a class="tag" href="/search/?q=%23ed">#ed</a> <a class="tag" href="/search/?q=%23Editor">#Editor</a></p> 

<br> 

<https://alexschroeder.ch/view/2024-12-09-ed>

---

## Daring Fireball T-Shirts and Hoodies Are Back

date: 2024-12-10, updated: 2024-12-10, from: Daring Fireball

 

<br> 

<https://store.daringfireball.net/>

---

## Playing Chicken with the Economy

date: 2024-12-10, from: Dan Rather's Steady

We&#8217;re watching Trump like a raven on roadkill 

<br> 

<https://steady.substack.com/p/playing-chicken-with-the-economy>

---

## [Sponsor] CoverSutra

date: 2024-12-09, updated: 2024-12-09, from: Daring Fireball

 

<br> 

<https://sophiestication.com/CoverSutra/?utm_source=df&utm_medium=rss&utm_campaign=df-sponsorship-dec2024>

---

## The Trump-Muskrat plot to kill Social Security

date: 2024-12-09, from: Robert Reich's blog

They and Republicans in Congress think they&#8217;ve finally come up with a way to eliminate one of the most popular and necessary programs in the federal government 

<br> 

<https://robertreich.substack.com/p/the-trump-muskrat-plot-to-kill-social>

---

##  For The Love of God, Make Your Own Website. &#8220;It will only... 

date: 2024-12-09, updated: 2024-12-09, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045795-for-the-love-of-god-1>

---

## December 8, 2024

date: 2024-12-09, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/152862077/51e3629625112dfc5ac2ac0c1672a4df.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/152862077/51e3629625112dfc5ac2ac0c1672a4df.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/december-8-2024-31d>

---

##  The Arresting Typography of the Sanborn Fire Insurance Maps 

date: 2024-12-09, updated: 2024-12-09, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/the-arresting-typography-of-the-sanborn-fire-insurance-maps>

---

**@Dave Winer's Scripting News** (date: 2024-12-09, from: Dave Winer's Scripting News)

How I know Twitter was great. When something was going on anywhere, any kind of thing, I'd go to Twitter and it happened there 14 minutes ago. It was the pulse of the news. And somehow they couldn't figure out how to make a business of that! Amazing. 

<br> 

<http://scripting.com/2024/12/09.html#a200815>

---

##  The oldest known wild bird, Wisdom, a 74 year old Laysan albatross,... 

date: 2024-12-09, updated: 2024-12-09, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045797-the-oldest-known-wild-bir>

---

##  No One Has to Settle for Bad Pizza Anymore. &#8220;Violinists have the... 

date: 2024-12-09, updated: 2024-12-09, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045809-no-one-has-to-settle>

---

## Useful to the Point of Being Revolutionary: Introducing Wolfram Notebook Assistant

date: 2024-12-09, from: Stephen Wolfram blog

<span class="thumbnail"><img width="128" height="108" src="https://content.wolfram.com/sites/43/2024/12/nba-icon-1.png" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" /></span>Note: As of today, copies of Wolfram Version 14.1 are being auto-updated to allow subscription access to the capabilities described here. [For additional installation information see here.] Just Say What You Want! Turning Words into Computation Nearly a year and a half ago—just a few months after ChatGPT burst on the scene—we introduced the first [&#8230;] 

<br><video crossorigin="anonymous" controls="controls" width="250">
<source type="video/mp4" src="https://content.wolfram.com/sites/43/2024/12/magic1input.mp4"></source>
	<source type="video/mp4" src="https://content.wolfram.com/sites/43/2024/12/magic2codetext.mp4"></source>
</video> <a href="https://content.wolfram.com/sites/43/2024/12/magic1input.mp4" target="_blank">download video/mp4</a> 

<https://writings.stephenwolfram.com/2024/12/useful-to-the-point-of-being-revolutionary-introducing-wolfram-notebook-assistant/>

---

##  Grand Theft Hamlet 

date: 2024-12-09, updated: 2024-12-09, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/grand-theft-hamlet>

---

##  Vaccines have saved 150 million children over the last 50 years. &#8220;Every... 

date: 2024-12-09, updated: 2024-12-09, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045808-vaccines-have-saved-150-m>

---

**@Dave Winer's Scripting News** (date: 2024-12-09, from: Dave Winer's Scripting News)

If you want to get excited about the future, I highly recommend this week's <a href="https://www.youtube.com/watch?v=B4vtiiIo_Bc">Jon Stewart podcast interview with Bernie Sanders</a>. I recognize these ideas, it sounds like what we're waiting for in the social web and in journalism. And working for and with each other. 

<br> 

<http://scripting.com/2024/12/09.html#a170755>

---

**@Dave Winer's Scripting News** (date: 2024-12-09, from: Dave Winer's Scripting News)

I bet a lot of people who voted for Trump hoped they were voting for <a href="https://en.wikipedia.org/wiki/James_Stewart">Jimmy Stewart</a> in <a href="https://en.wikipedia.org/wiki/Mr._Smith_Goes_to_Washington">Mr Smith goes to Washington</a>, or <a href="https://en.wikipedia.org/wiki/It%27s_a_Wonderful_Life">It's a Wonderful Life</a>. I think they may be surprised to find that they actually voted for <a href="https://en.wikipedia.org/wiki/Mr._Potter">Mr Potter</a> or <a href="https://en.wikipedia.org/wiki/Ebenezer_Scrooge">Ebeneezer Scrooge</a>. Look for a <a href="https://christmas.com/what-does-it-mean-to-get-a-lump-of-coal-in-your-christmas-stocking/">lump of coal</a> in the stocking. 

<br> 

<http://scripting.com/2024/12/09.html#a165448>

---

##  No surprise: conservatives are embracing media villains like Tony Soprano & Judge... 

date: 2024-12-09, updated: 2024-12-09, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045807-no-surprise-conservatives>

---

**@Dave Winer's Scripting News** (date: 2024-12-09, from: Dave Winer's Scripting News)

Podcast: <a href="https://shownotes.scripting.com/scripting/2024/12/09/weAllOwnAndNoOneOwnsPodcasting.html">We all own and no one owns podcasting</a>. <i>11 minutes.</i> 

<br> 

<http://scripting.com/2024/12/09.html#a160836>

---

##  Your 2024 Therapy Wrapped. &#8220;2024 was a BUMPY ride&#8230;and your therapist was... 

date: 2024-12-09, updated: 2024-12-09, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045811-your-2024-therapy-wrapped>

---

**@Dave Winer's Scripting News** (date: 2024-12-09, from: Dave Winer's Scripting News)

I've got the <a href="https://imgs.scripting.com/2024/12/09/bingeworthyScreenShot.png">new version of Bingeworthy</a> running here. When I saw how the database code worked, I had to redo it from scratch. It was probably my first SQL project, and I barely knew what I was doing. It's too bad, because looking at it from that point of view I could see how SQL could have been much simpler by making some of the optional features automatic. A higher layer on top of SQL is possible, it seems to me. Having ChatGPT review my ideas has been invaluable in this project. I'm going to use it myself for a while, and see how I want to reorganize the user interface. There were opportunities for factoring I didn't take back then because I was in a rush to do something else. 

<br> 

<http://scripting.com/2024/12/09.html#a152513>

---

##  This Beautiful Day: Daily Wisdom from Mister Rogers 

date: 2024-12-09, updated: 2024-12-09, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/this-beautiful-day-daily-wisdom-from-mister-rogers>

---

**@Dave Winer's Scripting News** (date: 2024-12-09, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/03/20/mrSmith.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Anyone can build on an open format. That's part of what it means for it to be open. Developers and users are free to use anyone's ideas, or not use them, even if they claim to be the Holy Church of Some Open Format. No one can form an organization that owns the future of the open format because then it wouldn't be open. 

<br> 

<http://scripting.com/2024/12/09.html#a144947>

---

##  &#8220;Food deserts are not an inevitable consequence of poverty or low population... 

date: 2024-12-09, updated: 2024-12-09, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045812-food-deserts-are-not-an>

---

## Trust Issues in AI

date: 2024-12-09, updated: 2024-12-13, from: Bruce Schneier blog

<p><em>This essay was written with Nathan E. Sanders. It originally appeared as a response to Evgeny Morozov in <cite>Boston Review</cite>&#8216;s forum, &#8220;<a href="https://www.bostonreview.net/forum/the-ai-we-deserve/">The AI We Deserve</a>.&#8221;</em></p>
<p>For a technology that seems startling in its modernity, AI sure has a long history. Google Translate, OpenAI chatbots, and Meta AI image generators are built on decades of advancements in linguistics, signal processing, statistics, and other fields going back to the early days of computing&#8212;and, often, on seed funding from the U.S. Department of Defense. But today&#8217;s tools are hardly the intentional product of the diverse generations of innovators that came before. We agree with Morozov that the &#8220;refuseniks,&#8221; as he ...</p> 

<br> 

<https://www.schneier.com/blog/archives/2024/12/trust-issues-in-ai.html>

---

## What Liz Cheney deserves from Joe Biden

date: 2024-12-09, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/what-liz-cheney-deserves-from-biden>

---

## The Pi 500 is much faster, but lacks M.2

date: 2024-12-09, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">The Pi 500 is much faster, but lacks M.2</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>Raspberry Pi this morning launched the <a href="https://www.raspberrypi.com/products/raspberry-pi-500/">Pi 500</a> and a new <a href="https://www.raspberrypi.com/products/raspberry-pi-monitor/">15.6" Pi Monitor</a>, for $90 and $100, respectively.</p>

<p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/pi-500-monitor-hero.jpeg" alt="Pi 500 setup with monitor on desk"></p>

<p>They're also selling a Pi 500 Kit, complete with a Power Supply, Mouse, and micro HDMI to HDMI cable, for $120. This is the first time Raspberry Pi is selling a complete package, where every part of a desktop computer could be Pi-branded—and makes me wonder if uniting all these parts into one could result in an eventual Pi Laptop...</p>

<p>Before we get too deep, <em>no</em>, the Pi 500 does not include a built-in M.2 slot. <em>Sort-of</em>.</p>

<p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/pi-500-pcb-top.jpeg" alt="Pi 500 PCB top side"></p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-12-09T02:00:02-06:00" title="Monday, December 9, 2024 - 02:00" class="datetime">December 9, 2024</time>
</span> 

<br> 

<https://www.jeffgeerling.com/blog/2024/pi-500-much-faster-lacks-m2>

---

## We’ve done it before

date: 2024-12-09, from: Tracy Durnell Blog

During WWII, the United States government incarcerated over one hundred thousand Americans because they were of Japanese descent, two-thirds of them American citizens. Their bank accounts were locked and they were forced to leave behind their homes, pets, businesses and possessions to live in remote, barren camps guarded by armed soldiers. They had to grow [&#8230;] 

<br> 

<https://tracydurnell.com/2024/12/08/weve-done-it-before/>

---

## December 8, 2024 

date: 2024-12-09, from: Heather Cox Richardson blog

Late last night, the White House said in a statement that &#8220;President Biden and his team are closely monitoring the extraordinary events in Syria and staying in constant touch with regional partners.&#8221; 

<br> 

<https://heathercoxrichardson.substack.com/p/december-8-2024>

---

## Monday 9 December, 2024

date: 2024-12-09, from: John Naughton's online diary

Dictionary Sam The stained-glass portrait of Samuel Johnson in his house in Gough Square, just off Fleet Street, in London. (Which is well worth a visit, btw.) Quote of the Day ”Whenever AI ‘generates’ something impressive, the first question we &#8230; <a href="https://memex.naughtons.org/monday-9-december-2024/40177/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-9-december-2024/40177/>

---

## Gurman: Apple and Sony Are Working to Bring PlayStation VR Hand Controller Support to Vision Pro

date: 2024-12-08, updated: 2024-12-10, from: Daring Fireball

 

<br> 

<https://www.bloomberg.com/news/newsletters/2024-12-08/apple-sony-talk-playstation-vr-ps-vr2-hand-controller-support-for-vision-pro>

---

## Why under no circumstances should Pete Hegseth be entrusted with the U.S. military 

date: 2024-12-08, from: Robert Reich's blog

But will Senate Republicans do their duty? 

<br> 

<https://robertreich.substack.com/p/why-under-no-circumstances-should>

---

## December 7, 2024

date: 2024-12-08, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/152813462/eb9f3f7b53251578899e1b35da444d02.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/152813462/eb9f3f7b53251578899e1b35da444d02.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/december-7-2024-705>

---

##  Just updated the 2024 Kottke Holiday Gift Guide with suggestions from Kottke... 

date: 2024-12-08, updated: 2024-12-08, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045815-just-updated-the-2024-kot>

---

##  It appears that the brutal reign of the Assad regime is over... 

date: 2024-12-08, updated: 2024-12-08, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045814-it-appears-that-the-bruta>

---

##  Catherine Russell has starred in the same off-Broadway play for 37 years,... 

date: 2024-12-08, updated: 2024-12-08, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045813-catherine-russell-has-sta>

---

## Why AI will eat the browser

date: 2024-12-08, from: Om Malik blog

In this week&#8217;s edition of my newsletter, CrazyStupidTech, I posted a reported essay on the future of browsers in the age of AI, with reflections on their past, and their role in our multi-device, machine-first, information-dense extended reality. My thinking was prompted by immersing myself in new devices (such as Vision Pro) and new technologies &#8230; 

<br> 

<https://om.co/2024/12/08/why-ai-will-eat-the-browser/>

---

**@Dave Winer's Scripting News** (date: 2024-12-08, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/11/15/fatladysinging.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="https://blog.mozilla.org/en/mozilla/mozilla-brand-next-era-of-tech/">Mozilla</a> has repositioned itself as "a global crew of activists, technologists and builders, all working to keep the internet free, open and accessible." These are all worthy goals, but in my experience Mozilla has been an <i>obstacle</i> to these things. I wrote in a <a href="https://mastodon.social/@dave@social.masto.land/113617569413777710">comment</a> on Mastodon, "A long time ago they invited me to present my ideas, and like an idiot I thought that's what they wanted, instead it was an ambush, people mostly wanting to ridicule me because they thought anything that a person does can't be any good, it has to come from a big company like Mozilla or Google. I thought then and still do now, how do they justify wasting their time on such a ridiculous thing. I kept on doing what I was doing, but switched off their browser first chance I got." If they really want to get behind projects that make the open web stronger, I'd be happy to help guide them, but only if they've sobered up and take that mission statement seriously, instead of just as a justification for holding on to their jobs a little bit longer. 

<br> 

<http://scripting.com/2024/12/08.html#a152308>

---

## 'Blue Velvet'

date: 2024-12-08, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/blue-velvet>

---

## Sunday caption contest: Maze

date: 2024-12-08, from: Robert Reich's blog

And last week's winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-maze>

---

## December 7, 2024 

date: 2024-12-08, from: Heather Cox Richardson blog

On Thursday, December 5, in Chicago, Illinois, former president Barack Obama gave the third in an annual series of lectures he has delivered since 2022 at his foundation&#8217;s Democracy Forum, which gathers experts, leaders, and young people to explore ways to safeguard democracy through community action. 

<br> 

<https://heathercoxrichardson.substack.com/p/december-7-2024>

---

## December 6, 2024

date: 2024-12-08, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/152779733/4c1ea3cb40c4b6fe9a4dc03572ca2e87.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/152779733/4c1ea3cb40c4b6fe9a4dc03572ca2e87.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/december-6-2024-f63>

---

##  Jia Tolentino on the sometimes celebratory reaction to the death of UnitedHealthcare... 

date: 2024-12-08, updated: 2024-12-08, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045805-jia-tolentino-on-the-some>

