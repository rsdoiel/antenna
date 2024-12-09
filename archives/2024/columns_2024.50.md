---
title: columns
updated: 2024-12-09 07:04:41
---

# columns

(date: 2024-12-09 07:04:41)

---

**@Dave Winer's Scripting News** (date: 2024-12-09, from: Dave Winer's Scripting News)

Anyone can build on an open format. That's part of what it means for it to be open. Developers and users are free to use anyone's ideas, or not use them, even if they claim to be the Holy Church of Some Open Format. No one can form an organization that owns the future of the open format because then it wouldn't be open. 

<br> 

<http://scripting.com/2024/12/09.html#a144947>

---

##  &#8220;Food deserts are not an inevitable consequence of poverty or low population... 

date: 2024-12-09, updated: 2024-12-09, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/12/0045812-food-deserts-are-not-an>

---

## 2024-12-09 ed is the standard

date: 2024-12-09, from: Alex Schroeder's Blog

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
<code>$</code> is always the last line.</p>

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

<p><a class="tag" href="/search/?q=%23ed">#ed</a> <a class="tag" href="/search/?q=%23Editor">#Editor</a></p> 

<br> 

<https://alexschroeder.ch/view/2024-12-09-ed>

---

## Trust Issues in AI

date: 2024-12-09, updated: 2024-12-07, from: Bruce Schneier blog

<p>For a technology that seems startling in its modernity, AI sure has a long history. Google Translate, OpenAI chatbots, and Meta AI image generators are built on decades of advancements in linguistics, signal processing, statistics, and other fields going back to the early days of computing&#8212;and, often, on seed funding from the U.S. Department of Defense. But today&#8217;s tools are hardly the intentional product of the diverse generations of innovators that came before. We agree with Morozov that the &#8220;refuseniks,&#8221; as he <a href="https://www.bostonreview.net/forum/the-ai-we-deserve/">calls</a> them, are wrong to see AI as &#8220;irreparably tainted&#8221; by its origins. AI is better understood as a creative, global field of human endeavor that has been largely captured by U.S. venture capitalists, private equity, and Big Tech. But that was never the inevitable outcome, and it doesn&#8217;t need to stay that way...</p> 

<br> 

<https://www.schneier.com/blog/archives/2024/12/trust-issues-in-ai.html>

---

## 2024-12-09 Burned

date: 2024-12-09, from: Alex Schroeder's Blog

<h1 id="2024-12-09-burned">2024-12-09 Burned</h1>

<p>This page is about me burning myself on a Raclette table-grill.</p>

<p>I&rsquo;m no longer quite sure of the timeline. I think I got the burn on 2024-12-03 or 2024-12-04.</p>

<p><strong>2024-12-05</strong>: Two days ago I got myself a second degree burn about one inch in diameter from our Raclette oven. I hadn’t burned myself in about forty years, I think and I feel like a kid again, observing the body as it reacts. The healing powers are so weird.</p>

<p>Also I’m thankful for these self-healing capabilities we have! And thankful for this accident to be a curiosity instead of an emergency. A good reminder to be thankful for all the good days we have and I hope you’re having a good day! Live long and prosper. Or, as I usually tell me wife: healthy, happy, and in love. Be well.</p>

<p><strong>2024-12-07</strong>: I went to the pharmacy and got a disinfectant cream and wound pads. This was Saturday afternoon and no more doctors were available. Since this isn&rsquo;t an emergency, there&rsquo;s no rush.</p>

<p><strong>2024-12-09</strong>:  The minor burn resulted in some sort of low-key infection, so now it&rsquo;s antibiotic to swallow and antibiotics to apply.</p>

<p>Some things I&rsquo;m learning from this experience: The burn might look like a typical abrasion but you have to keep it super clean. Best cover it with those special wound covers that don&rsquo;t stick to the wound (nothing we would have had at home so off to the pharmacy you go, immediately, unlike me). It might look dry and clean like blisters you got from a long hike but the bedsheets or long sleeves or whatever will pass on germs and since there is a piece of your exterior protection missing, you&rsquo;ll get an infection. The skin around the wound is a bit red, the area a bit swollen, a bit warmer. And that already concerns the doctors.</p>

<p><a class="tag" href="/search/?q=%23Life">#Life</a></p> 

<br> 

<https://alexschroeder.ch/view/2024-12-09-burn>

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

## Why under no circumstances should Pete Hegseth be entrusted with the U.S. military 

date: 2024-12-08, from: Robert Reich's blog

But will Senate Republicans do their duty? 

<br> 

<https://robertreich.substack.com/p/why-under-no-circumstances-should>

---

## Gurman: Apple and Sony Are Working to Bring PlayStation VR Hand Controller Support to Vision Pro

date: 2024-12-08, updated: 2024-12-08, from: Daring Fireball

 

<br> 

<https://www.bloomberg.com/news/newsletters/2024-12-08/apple-sony-talk-playstation-vr-ps-vr2-hand-controller-support-for-vision-pro>

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

