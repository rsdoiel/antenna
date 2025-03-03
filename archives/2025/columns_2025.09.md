---
title: columns
updated: 2025-03-03 07:07:48
---

# columns

(date: 2025-03-03 07:07:48)

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

From a Reddit post.&nbsp;<br /><br /><p>&nbsp; &nbsp; &nbsp;A very brief rundown:</p><ol>       <li><p>If you are using Microsoft tools, you need to load the 386 memory manager, <code>emm386.exe</code>, in your <code>CONFIG.SYS</code> file.</p></li><li><p>But, to do that, you need to load the XMS manager, <code>HIMEM.SYS</code>, <em>first</em>.</p></li><li><p>So your <code>CONFIG.SYS</code> should begin with the lines:</p></li>     </ol><pre>
DEVICE=C:\WINDOWS\HIMEM.SYS
DEVICE=C:\WINDOWS\EMM386.EXE
DOS=HIGH,UMB</pre><p>4. That's the easy bit. Now you have to find free Upper Memory Blocks to tell EMM386 to use.</p><p>5. Do a clean boot with F5 or F8 -- telling it not to process <code>CONFIG.SYS</code> or run <code>AUTOEXEC.BAT</code>. Alternatively boot from a DOS floppy that doesn't have them.</p><p>6. Run the Microsoft Diagnostics, <code>MSD.EXE</code>, or a similar  tool such as Quartdeck Manifest. Look at the memory usage between 640kB  and 1MB. Note, the numbers are in hexadecimal.</p><p>7. Look for unused blocks that are not ROM or I/O. Write down the address ranges.</p><p>8. An example: if you do not use monochrome VGA you can use the mono VGA memory area: 0xB000-0xB7FF.</p><p>9. One by one, tell EMM386 to use these. First choose if you want EMS (<strong>E</strong>panded Memory Services) or not. It is useful for DOS apps, but not for Windows apps.</p><p>10. If you do, you need to tell it:</p><pre>
DEVICE=C:\WINDOWS\EMM386.EXE RAM</pre><p><strong>And</strong> set aside 64kB for a page frame, for example by putting this on the end of the line:</p><pre>
FRAME=E0000</pre><p>Or, tell it not to use one:</p><pre>
FRAME=none</pre><p>11. Or disable EMS:</p><pre>
DEVICE=C:\WINDOWS\EMM386.EXE NOEMS</pre><p>12. <strong>Important</strong> Add these parameters one at a time, and reboot and test, every single time, without exception.</p><p>13. One you told it which you want now you need to tell it the RAM blocks to use, e.g.</p><pre>
DEVICE=C:\WINDOWS\EMM386.EXE RAM FRAME=none I=B000-B7FF</pre><p>Again, reboot every time to check. Any single letter wrong can stop the PC booting. <em>Lots</em> of testing is vital. Every time, run MSD and look at what is in use or is not in use. Make lots of notes, on paper.</p><p>14. If you find EMM386 is trying to use a block that it mustn't you can eXclude it:</p><pre>
DEVICE=C:\WINDOWS\EMM386.EXE RAM X=B000-B7FF
</pre><p>The more blocks you can add, the better.</p><p>15. After this -- a few hours' work -- now you can try to populate your new UMBs.</p><p>16. Device drivers: do this by prefixing lines in <code>CONFIG.SYS</code> with <code>DEVICEHIGH</code> instead of <code>DEVICE</code>.</p><p>Change:</p><pre>
DEVICE=C:\DOS\ANSI.SYS</pre><p>To:</p><pre>
DEVICEHIGH=C:\DOS\ANSI.SYS</pre><p>17. Try every driver, one by one, rebooting every time.</p><p>18. Now move on to loadable Terminate and Stay Resident (TSR) programs. Prefix lines that run a program in <code>AUTOEXEC.BAT</code> with <code>LH</code>, which is short for <code>LOADHIGH</code>.</p><p>Replace:</p><pre>
MOUSE</pre><p>With:</p><pre>
LH MOUSE</pre><p>Use MSD and the <code>MEM</code> command -- <code>MEM /c /p</code> -- to identify all your TSRs, note their sizes, and load them all high.</p><p>This is a day or two's work for a novice. I could do it in only an  hour or two and typically get 625kB or more base memory free, and I made  good money from this hard-won skill.&nbsp; &nbsp;</p><br /><br /><img src="https://www.dreamwidth.org/tools/commentcount?user=liam_on_linux&ditemid=93997" width="30" height="12" alt="comment count unavailable" style="vertical-align: middle;"/> comments 

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

## Elon Musk, Weirdo Extraordinaire

date: 2025-03-02, updated: 2025-03-02, from: Daring Fireball

 

<br> 

<https://www.tmz.com/2025/03/01/elon-musk-new-baby-14th-child-shivon-zilis/>

---

## Claim Chowder: Ming-Chi Kuo on Demand for the iPhone 16 Lineup

date: 2025-03-02, updated: 2025-03-02, from: Daring Fireball

 

<br> 

<https://medium.com/@mingchikuo/iphone-16-first-weekend-pre-order-analysis-estimated-total-sales-of-about-37-million-units-pro-0a04869b147c>

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

<p><a href="https://bsky.app/profile/damieng.bsky.social/post/3ljdkwup7sc2d?ref=ghuntley.com">Damien Guard</a> nerd sniped me and and other folks wanted more proof that it is now cheap, easy and possible to <a href="https://ghuntley.com/tradecraft/" rel="noreferrer">cheaply rewrite software or clone existing &quot;source available&quot; businesses</a> (see bottom of the post).</p><p>So, let&apos;s get cracking by creating a toy application by sending</p> 

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

