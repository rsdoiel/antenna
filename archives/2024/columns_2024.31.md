---
title: columns 2024.31
updated: 2024-07-29 07:29:25
---

# columns 2024.31

(date: 2024-07-29 07:29:25)

---

##  &#8220;None of us knows if we can do this. And we are... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045023-none-of-us-knows-if>

---

**@Dave Winer's Scripting News** (date: 2024-07-29, from: Dave Winer's Scripting News)

Here's a <a href="https://imgs.scripting.com/2024/07/29/twowaysofsupport.png">perfect illustration</a> how ChatGPT can improve customer relations. I bought an iPhone that I now don't need, and it's arriving today via FedEx. I wanted to know whether I should just refuse delivery, or accept it and then return it. Obviously it's easier for me to refuse. I asked ChatGPT and it gave me a detailed reply. Apple's chatbot saw it as a "technical" question and wasn't prepared to help. Sales support is one of those applications where cost is totally justified. A human helper would cost a lot more I imagine than a LLM chat system. I tried calling 1-800-CALL-APPLE and talked to a human who was very nice, but couldn't find anything in her manual about refusing delivery. 

<http://scripting.com/2024/07/29.html#a140845>

---

**@Dave Winer's Scripting News** (date: 2024-07-29, from: Dave Winer's Scripting News)

Is there anyone here <a href="https://x.com/davewiner/status/1817913179789218236">within earshot</a> who is involved in doing the web stuff for the Harris campaign? 

<http://scripting.com/2024/07/29.html#a135108>

---

##  Behind the scenes shots of iconic album covers, including those from Björk,... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045002-behind-the-scenes-shots-o>

---

## New Research in Detecting AI-Generated Videos

date: 2024-07-29, updated: 2024-07-29, from: Bruce Schneier blog

<p>The <a href="https://www.livescience.com/technology/artificial-intelligence/new-ai-algorithm-flags-deepfakes-with-98-accuracy-better-than-any-other-tool-out-there-right-now">latest</a> in what will be a continuing arms race between creating and detecting videos:</p>
<blockquote><p>The new tool the research project is unleashing on deepfakes, called &#8220;MISLnet&#8221;, evolved from years of data derived from detecting fake images and video with tools that spot changes made to digital video or images. These may include the addition or movement of pixels between frames, manipulation of the speed of the clip, or the removal of frames.</p>
<p>Such tools work because a digital camera&#8217;s algorithmic processing creates relationships between pixel color values. Those relationships between values are very different in user-generated or images edited with apps like Photoshop...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/07/new-research-in-detecting-ai-generated-videos.html>

---

## 2024-07-27 Tired of programming

date: 2024-07-29, from: Alex Schroeder's Blog

<h1 id="2024-07-27-tired-of-programming">2024-07-27 Tired of programming</h1>

<p>My summer break has begun, and I am tired.</p>

<p>I wanted to work on some sort of editor.
I contributed some lines to Anvil, an Acme-inspired editor, and then I figured I should go back to text editing because writing acceptable GUI editing is just sooo much effort. So now I’m trying to use ed again…
I&rsquo;m experimenting with using <code>rlwrap</code> around <code>ed</code> and it&rsquo;s not so bad if you&rsquo;re just writing, like writing an email.
But really writing, organizing, moving things around… it really doesn&rsquo;t work all that well.
I had imagined a sort of conversational UI – which I guess ed has? – if ed is your grumpiest of companions! – and I guess I was looking at my Oddmu site generator and Markdown file server and thinking: what sort of editor would I need to maintain this?
What sort of minimal SVG editing capabilities would be nice to have? That was my starting point.
Then I dropped the graphics because writing that seemed like a pain.
Then I started thinking about the GUI components: using fonts with Harfbuzz, Unicode support, hyphenation (per language), spell-checking (per language), and on and on.
It&rsquo;s too much.</p>

<p>But where does that leave me? Adding a few features to ed?
Am I in fact reinventing vi, badly?</p>

<p><a href="2024-06-01-editor">2024-06-01 Fonts are important</a>,
<a href="2024-06-13-anvil">2024-06-13 Anvil Editor and multiple cursors</a>,
<a href="2024-07-24-ed">2024-07-24 My ed, wondering</a></p>

<p>I wanted to work on a local Gridmapper variant, written in Common Lisp.
I already have a working prototype in Common Lisp and I already have a Javascript web application in production.
This is a single file, a stand-alone SVG+Javascript web application. It works online and offline.
Thus, my entire tinkering with CL right now has as its goal to produce a native application that would work without a browser.</p>

<p>Whenever I start working on native GUI stuff, like working with SDL2 or Cairo or similar libraries, my eyes start bleeding.
Vanilla JS and the browser really is a pretty nice virtual machine available to many of us.
Having spent a day trying to get SDL2, SDL2 gfx and Cairo sorted out for this Common Lisp app I&rsquo;m looking at really makes me want to drop it all for another two years and focus on JavaScript instead.
It can&rsquo;t be that bad! Javascript gives me the DOM and SVG and all that, practically for free…</p>

<p>And three different bindings Common Lisp bindings for SDL2 in various states of neglect is draining.
Switching from one to the other is tricky since the first one had many idiomatic helpers functions that the other is lacking.
But the first one is lacking a gfx port.
Then again, I guess I can add circle drawing using lines.</p>

<p>Everything takes so long. So damn long.</p>

<p><a href="2022-07-20_Gridmapper_CL">2022-07-20 Gridmapper CL 5</a>, <a href="2024-07-24-gridmapper-local">2024-07-24 Gridmapper Local</a></p>

<p>A while ago I started collecting links with quotes instead of relying on browser bookmarks or third parties. I remember at one point my bookmarks were just HTML files generated by the browser. Good times! And there was Delicious, a service now defunct, I guess. So now I keep <a href="Bookmarks">bookmarks on this site</a>. It&rsquo;s great.</p>

<p>I wondered whether I should write a tool that monitors those pages, and when new items get added, a feed is updated.
Just a little program… it doesn&rsquo;t seem hard. So I gave it try.  I like documentation first, these days so I began with a man page for it. Good, good. Then I though that perhaps I should use the same Markdown parser as Oddmu uses.
So I needed to write this tool in Go. How hard can it be?
It&rsquo;s a bit harder than writing it in Perl.
Oh, and I needed to parse the RSS file, too.
Or use SQLite to store data.
It keeps getting harder.</p>

<p>Well, I spent some time on it and now I&rsquo;m tired again.
This too, takes too long!</p>

<p>I feel defeated. Am I too impatient?</p>

<p>I should read a book.</p>

<p><a class="tag" href="/search/?q=%23Programming">#Programming</a></p>

<p><strong>2024-07-27</strong>. In an attempt to overcome my sadness, I decided to spice up my shell life…</p>

<pre><code># hipster shell
alias ls='echo Using exa instead;exa'
alias du='echo Using dust instead;dust'
alias top='echo Using htop instead;htop'
alias find='echo Using fd instead;fd'
alias grep='echo Using rg instead;rg'
alias files='echo Using yazi instead;yazi'
alias cal='echo Using khal instead;khal'
alias screenshot='grimshot'
alias copy='wl-copy'
alias paste='wl-paste'
</code></pre>

<p>I set up <code>khal</code> and <code>khard</code> which required me to set up <code>vdirsyncer</code> to sync the remote calendars (and contacts) to local copies. This is also good for backup, I guess.</p>

<p>Let me know if you know of other such tools.</p>

<p><strong>2024-07-29</strong>. I overcame my block and wrote the bookmarks-to-feed program in Perl: <a href="https://src.alexschroeder.ch/bookmark-feed.git">bookmark-feed</a>. 🔖 🤝 <img loading="lazy" src="/pics/rss.svg" alt="RSS" /></p>

<p>I installed a daily cron job:</p>

<pre><code>47  23  *  *   *     /usr/bin/nice /home/alex/perl5/perlbrew/perls/perl-5.40.0/bin/bookmark-feed /home/alex/alexschroeder.ch/wiki/*_Bookmarks.md /home/alex/alexschroeder.ch/wiki/*-bookmarks.md /home/alex/alexschroeder.ch/wiki/bookmarks.rss
</code></pre>

<p>The readable variant is this: <code>bookmark-feed markdown-files… feed-file</code>.
The files it looks at once a day are my <a href="Bookmarks">Bookmarks</a>.
The feed it generates is <a href="/wiki/bookmarks.rss">bookmarks.rss</a>.
The database it uses is <a href="/wiki/bookmarks.db">bookmarks.db</a>.</p>

<p>It doesn&rsquo;t do expiration from the database but uses only the last 40 items for the feed.</p>

<p>When populating the database, all I had was the timestamp of the Markdown pages, so the existing bookmarks are all relatively unsorted – they are sorted by the timestamp of the most recent addition to the whole category, which pretty weird.</p> 

<https://alexschroeder.ch/view/2024-07-27-tired>

---

## The torch is passed: from MAGA throwbacks to America’s future

date: 2024-07-29, from: Robert Reich's blog

Friends, 

<https://robertreich.substack.com/p/the-torch-is-passed>

---

## July 28, 2024 

date: 2024-07-29, from: Heather Cox Richardson blog

Just a week ago, it seems, a new America began. 

<https://heathercoxrichardson.substack.com/p/july-28-2024>

---

## MNT Pocket Reform progress

date: 2024-07-29, from: Jirka's blog

There have  been some  changes both  on the  hardware and  the software side. The hardware part was quite important yet simple: the current CPU module has  a WiFi chip without  any cooling. As the  CPU is relatively hod (at least for the ARM) the WiFi  part is hot, too - and it seems to work bad  when hot.  So the  quick fix is  to add  a small  thermal pad (about 2 mm thick) so the chip will be connected to the heatsink. The long-term solution would be to use a cooler CPU. 

<http://jirka.1-2-8.net/20240729-0442_MNT_Pocket_Reform_progress>

---

## Monday 29 July, 2024

date: 2024-07-28, from: John Naughton's online diary

Safely grazing A photograph taken on a rural cycle ride yesterday morning. Made me think of Bach — see today’s Musical Alternative. Quote of the Day “Get out and vote. Just this time. You won’t have to do it anymore. &#8230; <a href="https://memex.naughtons.org/monday-29-july-2024/39687/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-29-july-2024/39687/>

---

## When technology moves backwards

date: 2024-07-28, from: Dave Winer's Scripting News

<p>I don't when technology moves backwards.</p>
<p>I'm always trying to push it the other way.</p>
<p>It's like being a ball player wanting to win a game.</p>
<p>Or a musician wanting to record a hit.</p>
<p>A VC wanting a 10x return.</p>
<p>A diplomat achieving growth and peace.</p>
 

<http://scripting.com/2024/07/28/223826.html?title=whenTechnologyMovesBackwards>

---

## How and why to write letters to voters

date: 2024-07-28, from: Jonudell blog

If you don&#8217;t live in a swing state, but would like to do more than just send money to help encourage voter turnout in those places, what are your options? For me the best one is Vote Forward, which orchestrates letter-writing to registered voters. I sent hundreds of such letters in 2020 and am aiming &#8230; <a href="https://blog.jonudell.net/2024/07/28/how-and-why-to-write-letters-to-voters/" class="more-link">Continue reading <span class="screen-reader-text">How and why to write letters to voters</span></a> 

<https://blog.jonudell.net/2024/07/28/how-and-why-to-write-letters-to-voters/>

---

## Apple Maps on the Web

date: 2024-07-28, updated: 2024-07-28, from: Daring Fireball

 

<https://www.apple.com/newsroom/2024/07/apple-maps-on-the-web-launches-in-beta/>

---

**@Dave Winer's Scripting News** (date: 2024-07-28, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/07/26/oldTwitterLogo.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Before Twitter broke the API, it was a quick way for me to channel items from my blog to almost all the people who follow me on the social web. Now it isn't even one of the services I use that I can post to with my writing tool (those are Bluesky, Mastodon, WordPress). None of them are anything like the aggregator of people that Twitter was, and I can't even reach it from my writing tool. I really want to solve this problem, but I absolutely can't do this on my own. No time, patience, and it's not my job to do all that coding. As observed the other day, my time should be spent on writing tools for the web and directly related products. This is the kind of project that should be handled as an open source thing. 

<http://scripting.com/2024/07/28.html#a153347>

---

## Billy Joel’s New York

date: 2024-07-28, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/billy-joels-new-york>

---

## Sunday caption contest: The choice

date: 2024-07-28, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/sunday-caption-contest-the-choice-e8b>

---

## July 27, 2024 

date: 2024-07-28, from: Heather Cox Richardson blog

It&#8217;s been a long week. 

<https://heathercoxrichardson.substack.com/p/july-27-2024>

