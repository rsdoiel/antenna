---
title: columns
updated: 2025-07-06 14:07:46
---

# columns

(date: 2025-07-06 14:07:46)

---

## July 5, 2025

date: 2025-07-06, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/167672945/3ee9ef5c735e3460a139be41d0909d76.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/167672945/3ee9ef5c735e3460a139be41d0909d76.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/july-5-2025-8c7>

---

## Manually Flashing Firmware on the Star Labs StarBook

date: 2025-07-06, from: mrusme blog

A short write-up on how to manually update the firmware on your Star Labs
StarBook. 

<br> 

<https://xn--gckvb8fzb.com/manually-flashing-firmware-on-the-star-labs-starbook/>

---

**@Dave Winer's Scripting News** (date: 2025-07-06, from: Dave Winer's Scripting News)

<a href="https://www.dailykos.com/story/2025/7/6/2331527/-Daily-Kos-is-moving-to-WordPress">Kos is moving to WordPress</a>. This is very cool. It means people who write for Kos probably will be able to use my writing tools. I am sold on the idea of WordPress being the OS for the social web. That's the point of having a platform, we used to call it "users and developers party together." 

<br> 

<http://scripting.com/2025/07/06.html#a154211>

---

**@Dave Winer's Scripting News** (date: 2025-07-06, from: Dave Winer's Scripting News)

I asked ChatGPT for two sentences on the <a href="https://en.wikipedia.org/wiki/The_Innovator%27s_Dilemma">Innovator's Dilemma</a> -- "[It] describes how successful companies can fail by focusing too heavily on sustaining innovations—improvements to existing products for current customers—while ignoring disruptive innovations that initially serve smaller markets but eventually overtake the mainstream. These disruptions often seem inferior at first, so established companies dismiss them, leaving space for new entrants to rise and dominate." 

<br> 

<http://scripting.com/2025/07/06.html#a142617>

---

**@Dave Winer's Scripting News** (date: 2025-07-06, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/05/17/innovatorsDilemma.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I saw that <a href="https://techcrunch.com/2025/07/01/automattic-puts-tumblr-migration-to-wordpress-on-hold/">Matt backed off</a> from porting <a href="https://daytona.scripting.com/search?q=tumblr">Tumblr</a> to run on top of WordPress, basically turning WP into an OS. I thought it was a brilliant idea, but probably overwhelming in complexity. But it was the right idea. We need fewer runtimes. If you can merge two runtimes, go for it. Anyway, this is all related to the "open social web" -- in fact it's central to it. We've got all these philosophically compatible platforms that are technologically unable to work with each other. But what if they all were really on the web? What could we build then? Everything. We would go back to the potential the web had before Twitter and Google Reader split the blogging world in two. I swear the answer is make it so that all these networks can do <a href="http://scripting.com/2025/04/14/121946.html">inbound</a> and outbound RSS and build on the reality of the open social web, not just the hype. 

<br> 

<http://scripting.com/2025/07/06.html#a130724>

---

## 2025-07-03 fail2ban some more

date: 2025-07-06, from: Alex Schroeder's Blog

<h1 id="2025-07-03-fail2ban-some-more">2025-07-03 fail2ban some more</h1>

<p>This is a continuation of <a href="2025-06-16-ban-asn">2025-06-16 Ban autonomous systems</a>.</p>

<p>I kept wondering why the &ldquo;recidive&rdquo; jail never found any repeated offenders from the &ldquo;butlerian-jihad&rdquo; jail. I think I know why, now. The &ldquo;recidive&rdquo; jail uses the following:</p>

<pre><code>failregex = ^%(__prefix_line)s(?:\s*fail2ban\.actions\s*%(__pid_re)s?:\s+)?NOTICE\s+\[(?!%(_jailname)s\])(?:.*)\]\s+Ban\s+&lt;HOST&gt;\s*$
</code></pre>

<p>Far to the right, it uses <code>HOST</code> and that only matches a single IP number. If you examine the regular expression generated and scroll over far enough to the right, you&rsquo;ll see the named groups <code>&lt;ip4&gt;</code> and <code>&lt;ip6&gt;</code>.</p>

<pre><code># fail2ban-client get recidive failregex
The following regular expression are defined:
`- [0]: ^(?:\[\])?\s*(?:&lt;[^.]+\.[^.]+&gt;\s+)?(?:\S+\s+)?(?:kernel:\s?\[ *\d+\.\d+\]:?\s+)?(?:@vserver_\S+\s+)?(?:(?:(?:\[\d+\])?:\s+[\[\(]?(?:fail2ban(?:-server|\.actions)\s*)(?:\(\S+\))?[\]\)]?:?|[\[\(]?(?:fail2ban(?:-server|\.actions)\s*)(?:\(\S+\))?[\]\)]?:?(?:\[\d+\])?:?)\s+)?(?:\[ID \d+ \S+\]\s+)?(?:\s*fail2ban\.actions\s*(?:\[\d+\])?:\s+)?NOTICE\s+\[(?!recidive\])(?:.*)\]\s+Ban\s+(?:\[?(?:(?:::f{4,6}:)?(?P&lt;ip4&gt;(?:\d{1,3}\.){3}\d{1,3})|(?P&lt;ip6&gt;(?:[0-9a-fA-F]{1,4}::?|::){1,7}(?:[0-9a-fA-F]{1,4}|(?&lt;=:):)))\]?|(?P&lt;dns&gt;[\w\-.^_]*\w))\s*$
</code></pre>

<p>I decided to create an additional jail.</p>

<p>In my own <code>/etc/fail2ban/jail.d/alex.conf</code> I added a second jail:</p>

<pre><code>[butlerian-jihad]
enabled = true
bantime = 1h

[butlerian-jihad-week]
logpath = /var/log/fail2ban.log
enabled = true
findtime = 1d
bantime = 1w
maxretry = 5
</code></pre>

<p>The first one uses the filter <code>/etc/fail2ban/filter.d/butlerian-jihad.conf</code> which remains empty. Remember, entries are added to this jail via a cron job discussed in an <a href="2025-06-16-ban-asn">earlier post</a>.</p>

<pre><code>[Definition]
</code></pre>

<p>The second one uses a new filter <code>/etc/fail2ban/filter.d/butlerian-jihad-week.conf</code> defining the date pattern and the regular expression to detect &ldquo;failures&rdquo; (i.e. a hit).</p>

<pre><code>[Init]
# 2025-06-29 01:17:08,887 fail2ban.actions [543]: NOTICE  [butlerian-jihad] Ban 1.12.0.0/14
datepattern = ^%%Y-%%m-%%d %%H:%%M:%%S

[Definition]
failregex = NOTICE\s+\[butlerian-jihad\] Ban &lt;SUBNET&gt;
</code></pre>

<p>The important part is that this uses <code>&lt;SUBNET&gt;</code> instead of <code>&lt;HOST&gt;</code>. If you scroll over to the right, you&rsquo;ll find a new <code>&lt;cidr&gt;</code> group:</p>

<pre><code># fail2ban-client get butlerian-jihad-week failregex
The following regular expression are defined:
`- [0]: NOTICE\s+\[butlerian-jihad\] Ban \[?(?:(?:::f{4,6}:)?(?P&lt;ip4&gt;(?:\d{1,3}\.){3}\d{1,3})|(?P&lt;ip6&gt;(?:[0-9a-fA-F]{1,4}::?|::){1,7}(?:[0-9a-fA-F]{1,4}|(?&lt;=:):)))(?:/(?P&lt;cidr&gt;\d+))?\]?
</code></pre>

<p>And it seems to be working.</p>

<p><img loading="lazy" src="2025-07-03-fail2ban-some-more-1.jpg" alt="The Munin graph shows how the butlerian-jihad-week jail immediately jumps to 3000 members" /></p>

<p>I had to restart this particular jail a few times. Using <code>--unban</code> makes sense because those deserving of a new ban will be discovered immediately as the <code>findtime</code> was set to one day up above.</p>

<pre><code>fail2ban-client restart --unban butlerian-jihad-week
</code></pre>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a> <a class="tag" href="/search/?q=%23fail2ban">#fail2ban</a></p>

<p><strong>2025-07-05</strong>. Two days later.</p>

<p><img loading="lazy" src="2025-07-03-fail2ban-some-more-2.jpg" alt="" /></p>

<p><strong>2025-07-06</strong>. Hm. I made a change to Emacs Wiki search, hoping to get rid of the DuckDuckGo dependency:</p>

<ul>
<li>I made the page title match much more prominent</li>
<li>I switched the search from GET to POST</li>
<li>I count the search via GET as a bot (since it&rsquo;s no longer doable via the user interface)</li>
<li>I reinstated the old full-text search (essentially a grep within Perl)</li>
</ul>

<p>I was hoping that it would have very little effect.
At about the same time, however, load started creeping up.
The question is whether this is caused by so many search requests or not.
There aren&rsquo;t many search requests in the logs, and the process monitors don&rsquo;t show unusually activity for the Emacs Wiki processes. Therefore, I think the answer is that the problem lies elsewhere.
But where?</p>

<p><img loading="lazy" src="2025-07-03-fail2ban-some-more-3.jpg" alt="Somewhere around the 3rd of July load minimum seems to raise up from 0.5 to 1.0" /></p>

<p>This virtual server has two cores so load should remain below 2.0, ideally.</p>

<p><img loading="lazy" src="2025-07-03-fail2ban-some-more-4.jpg" alt="Somewhere around the 3rd of July the number of hosts banned for a week goes up from 2000 to more than 7000" /></p>

<p>Is it the processing of all the bans? I don&rsquo;t think so, since the firewall had many thousands of banned networks before.</p>

<p>Is it the extra cron jobs monitoring the logs? I don&rsquo;t think so because there&rsquo;s no 15min or 20min periodicity to see.</p>

<p>And note how load does come back down to 0.5 for a very short moment around midnight from the 4th to the 5th and in the early morning hours of the 6th.</p>

<p>How strange.</p> 

<br> 

<https://alexschroeder.ch/view/2025-07-03-fail2ban-some-more>

---

## ‘Mockingbird’

date: 2025-07-06, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/mockingbird>

---

## Sunday thought: A national reckoning

date: 2025-07-06, from: Robert Reich's blog

As we slide further into a dysfunctional police state 

<br> 

<https://robertreich.substack.com/p/sunday-thought-a-national-reckoning>

---

## July 5, 2025 

date: 2025-07-06, from: Heather Cox Richardson blog

Yesterday afternoon, President Donald J. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-5-2025>

---

## Saturday, 5 July 2025

date: 2025-07-05, from: Doc Searls (at Harvard), New Old Blog

Examples abound. I like Nicolas Gruen&#39;s conversation with a silicon friend. A pull quote, and part of Nicolas&#39; argument (as reflected by silicon): &#34;institutions blend power and purpose.&#34; Think of how new power today is trashing old purposes. As if a panel full of unwanted designs in PowerPoint wasn&#39;t annoying enough. Ted Gioia shares my [&#8230;] 

<br> 

<https://doc.searls.com/2025/07/05/saturday-5-july-2025/>

---

**@Dave Winer's Scripting News** (date: 2025-07-05, from: Dave Winer's Scripting News)

<a href="https://github.com/scripting/tinyFeedReader">tinyFeedReader</a> is a hit. But the docs aren't clear enough. It has no user interface, it's a package you can include in a Node app that calls back to you when a new item comes in from one of the feeds you've told it to watch. It's a totally teeny little framework for a feed reader, you get all the standard stuff tucked away out of site, you write the functionality you want to implement. It would be a good thing to turn over to your AI programming partner. It's for people who want to add a feed reader to something else. 

<br> 

<http://scripting.com/2025/07/05.html#a214224>

---

**@Dave Winer's Scripting News** (date: 2025-07-05, from: Dave Winer's Scripting News)

An improvement in WordLand on <a href="https://github.com/scripting/wpIdentity/blob/main/worknotes.md#7525-101112-am-by-dw">the server</a>, we now post metadata to WordPress, along with the HTML rendering so that code that runs on the server can now access and possibly in the future even talk back to WordLand. You never know where this stuff can go if the developers take advantage of opportunities to interop. 

<br> 

<http://scripting.com/2025/07/05.html#a174731>

---

**@Dave Winer's Scripting News** (date: 2025-07-05, from: Dave Winer's Scripting News)

<a href="https://this.how/wordland/versions.opml#1751664824000">WordLand v0.5.19</a> -- Lots of little fixes. 

<br> 

<http://scripting.com/2025/07/05.html#a174648>

---

## Nostalgic revisionism

date: 2025-07-05, from: Tracy Durnell Blog

The futility of constructing a better past &#38; the necessity of imagining a better future by Paul Watson [I]n our collective despair at failing to build one of the myriad of better futures, we’ve resorted to futilely constructing ourselves a better past&#8230; + AI slopaganda by Ryan Broderick And I’ve written before about how AI [&#8230;] 

<br> 

<https://tracydurnell.com/2025/07/05/nostalgic-revisionism/>

---

## The Decade of Linux on the Desktop. You're in it.

date: 2025-07-05, from: Liam on Linux

<div>Apple macOS is a UNIX&trade;. It's the best-selling commercial Unix of all time. I wonder if how many old-school Unix folks consider all Mac users in the 21st century to be their brothers-in-arms? Not many, I'd guess. <br /><br />When it happened, many Unix folks don't consider it a _real_ Unix. Even thought just a few years later, and AIUI after spending a _lot_ on the exercise, Apple got the UNIX&trade; branding.</div><div>&nbsp;</div><div>Now, by contrast:</div><div>&nbsp;</div><div>I've spent proper time trying to get some rough estimates on Linux distro usage. Ubuntu is cagey but claims ITRO low double-digit millions of machines fetching updates. Let's say circa 20M users.</div><div>&nbsp;</div><div>Apparently, over 95% on LTS and the vast majority on the default GNOME edition. (Poor sods.)</div><div>&nbsp;</div><div>The others are cagier still, but Statistica and others have vaguely replicable numbers.</div><div>&nbsp;</div><div>My estimates are:</div><div>&nbsp;</div><div>~2x as many Ubuntu as Debian users</div><div>&nbsp;</div><div>Between them they are about 2/3 of Linux users</div><div>&nbsp;</div><div>All Red Hat/CentOS/Fedora derivatives are about 10% of the market.</div><div>&nbsp;</div><div>Comparing them to Steam client numbers, Arch is much of the rest: the gap between ~75% Debian family and ~10% RH family.</div><div>&nbsp;</div><div>In China, the government has been pushing Linux *hard* for 8-9 years. Uniontech (Deepin) is one of the biggest and last November boasted 3M paid users.&nbsp;</div><div>&nbsp;</div><div>Is that all?&nbsp;</div><div>&nbsp;</div><div>Kylin is also big but let's guess it's #2.&nbsp;&nbsp;</div><div>&nbsp;</div><div>So, if, optimistically, 10% pay, then that's only 20-30M, comparable to Ubuntu in ROTW.</div><div>&nbsp;</div><div>Maybe Kylin (also a Debian BTW, they both are) brings it to 50M.&nbsp;</div><div>&nbsp;</div><div>ChromeOS is a Linux. It's Gentoo underneath. Google sells hundreds of millions. Estimated user base is 200-300M and probably a lot more.</div><div>&nbsp;</div><div>Chromebooks outsold Macs (by $ not units, so 10x over) in the US by 2017 and worldwide by 2020.</div><div>&nbsp;</div><div>Which means there are, ballpark, order of magnitude scale, 10x as many ChromeOS users as all other Linuxes put together.</div><div>&nbsp;</div><div>The year of Linux came 5-6 years ago.</div><div>&nbsp;</div><div>But it's the _wrong kind_ of Linux so the Penguinisti didn't even notice.&nbsp;</div><br /><br /><img src="https://www.dreamwidth.org/tools/commentcount?user=liam_on_linux&ditemid=96112" width="30" height="12" alt="comment count unavailable" style="vertical-align: middle;"/> comments 

<br> 

<https://liam-on-linux.dreamwidth.org/96112.html>

---

## iFixit gives new Fairphone 6 top marks for repairability: 10/10

date: 2025-07-05, updated: 2025-07-05, from: Liam Proven's articles at the Register

<h4>It&#39;s not cheap or high end, but it should last you for years to come</h4>
      <p>The sixth generation of the Fairphone repairable mobile was launched at the end of June. Now spunger-flingers iFixit have got their hands on it, and liked the result.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/05/ifixit_gives_fairphone_10/>

---

## Why are some people happy with fakery, or even delight in it?

date: 2025-07-05, from: Liam Proven blog

This is the outline of a sketch of something deep, maybe, possibly. Don't expect greatness from it.<br /><br />DON'T&nbsp;start in with &quot;just let people like what they like&quot;. Not interested. I have a point, a question, here. I am not interested in your grumbling.<br /><br />A 1990s Britpop band called Oasis are touring the UK&nbsp;right now. Apparently it's the most massively sold-out tour&nbsp;_ever_ or something. My preferred radio station, BBC&nbsp;6music, is absolutely full of Oasis. I had to turn it off for most of yesterday.<br /><br />Today there was a report from a radio music journalist I like, Matt Everitt, from the first gig in Cardiff last night. Apparently it was a big success. The crowd was &quot;mad for it&quot;, throwing (very expensive) beer at each other from the first song, and so on. This is exactly the sort of thing I hate about that kind of gig, and Oasis fans...<br /><br />But as an experienced music journo -- I loved his Glastonbury report -- he noted things I'd not&nbsp; thought of.&nbsp;<br /><br />No original material.<br />Set list published in advance.<br />Same set list for the whole tour.<br /><br />No new material:&nbsp;well, it's a cash-in tour, that's blatant. The band only reunited for the tour.&nbsp;<br /><br />Set list:&nbsp;I hadn't thought of that. Everitt, Radcliffe and Maconie debated this. The unique experience of a gig where, given the costs, given the price, every fan present knew every word of every song? Live music isn't always like this.&nbsp;&nbsp;<br /><br />And whether fans would _enjoy_ them getting more familiar and looser and experimental as it went on, or, would they resent it and want a faithful rendition?<br /><br />I _detest_ Oasis and its music. The singer can't sing. I lack the musical vocab The melodies are trite and simple, like a playground &quot;na-na-nee-na-na&quot; chant. The words are mostly meaningless: they _sound_ like they're expressive, but from my minimal exposure, they're not. The musicians are competent enough: the riffs are boring and stale and derivative, but they're played well.<br /><br />We are in the 2nd quarter of the 21st century now. Since the middle of this week, we are closer to 2050 than 2000.<br /><br />This band, this tour, reminds me of some other things I've hated in the first quarter of C21.<br /><br />The all-female _Ghostbusters_ reboot. I am a big fan of groups of women and girls reclaiming stuff. I like women in art, in music, in comedy, whatever. But that film was _awful_. It failed to get any of the whipcrack tight repart&eacute;e of the first film, but it was full of incomprehending imitation of it.<br /><br />The script of Ghostbusters was a work of art. It's immensely quotable. It is full of gags. GB2 was all right, it has moments. GB3 -- nothing. Zip. Zero.&nbsp;<br /><br />It's a copy without comprehension. It's not a cover version -- I like a good cover. A near unique thing about Oasis is that almost any cover version of any Oasis song will be _sung better than Liam Gallagher can sing_ so it will be better in some aspects. (Also true of Bob&nbsp;Dylan, for my money, but he can write, at least. Can't sing, can't play, but can write.)&nbsp;<br /><br />Then Ghostbusters 4 _Afterlife_ came out and I liked it a lot. It isn't great but it's fun, it's entertaning, it has some good dialogue. It skips over the flat empty GB3 and hearkens back to the original funny two. GB&nbsp;5 _Frozen Empire_ is... diverting. Weak, the seam is nearly mined out now, but it had moments. Still better than 3.<br /><br />GB3 reminded me of a performer I'm conflicted about:&nbsp;Ricky Gervais. I find his comedy awful:&nbsp;he's an actor, trying to role-play a comedian. He wanders the stage behaving like a stand-up comedian but he isn't one, he's just pretending. It's abhorrent to me. But some people seem to love it.&nbsp;<br /><br />I hated the original _Office_&nbsp;TV&nbsp;show. Can't watch more than 2 minutes, partly because of Gervais's gurning. But, like a Dylan cover, the American remake is doable, because it lacks the irritant of the original. I don't like it, never watched a whole episode, but the clips are tolerable to amusing. (I think it's a &quot;comedy of manners&quot; which is not a genre I care for at all. Maybe these are modern versions of Laurence Sterne?)<br /><br />However -- however -- Gervais's jokes about and comments about atheism are _good_. Religious folks many not know but there is a thriving meme subculture of atheists making jokes about religions -- all of them -- and the meaner, the nastier, the funnier.&nbsp;<br /><br />Gervais is often mean-spirited, I suspect, but when he directs it at religion, I find him funny and quotable. I do not want to see the act but it makes for good memes, good quotes.<br /><br />(Maybe it's all about who is the target? Of course all the religious folks squeal about persecution, but always remember, when they were in charge, they tortured heretics to death. Now they are not but they are still destroying lives and their churches are still billionaire-level rich. Don't forget, don't forgive.)<br /><br />It suddenly reminds me of &quot;AI&quot;. LLM-bot generated averaged staleness.<br /><br />I now keep seeing people using bot-slop cartoons to illustrate original blog posts, soc.net comments, articles, etc. I see people in 1980s home-computer fora using bot-slop photos of children waving home computers at one another in the playground.&nbsp;<br /><br />I am aware of the subgenre of short video-clips of disaster scenes. River floods, tidal waves (post Banda Aceh, the first tsunami on video and at its time the most-filmed natural disaster ever, I believe), ships sinking, animal attacks, etc.<br /><br />But now I am seeing bot-slop versions. This morning I saw a bot-slop video that starts with a real rogue wave hit shore, then it's followed by a blatantly fake one. If it were real, hundreds would have died. That's a nasty form of &quot;entertainment&quot;.&nbsp;<br /><br />I have been bot-slop tiktok length videos of impossibly huge whales, boats in impossibly still seas. There are plenty of Chinese ones of impossibly thin girls with impossibly long legs.&nbsp;<br /><br />If people are making them, then audiences must be consuming this. Liking and sharing and bloody subscribing or whatever.<br /><br />Oasis does a roleplay of a comeback tour, with a fixed setlist. I am sure Liam G still can't sing the meaningless lyrics, the riffs will still be poor Beatles ripoffs, but the fans won't care it's all totally choreographed. It's more of the same and that's what they wanted.<br /><br />Gervais filled theatres for his curious roleplay of comedy. Maybe he is as mean-spirited &quot;punching down&quot; at other subgroups and the audiences *like* that, and it only so happens that when it aligns with the religious-mockery I find funny, I get on with that bit and that bit alone.<br /><br />GB3 filled cinemas. People lapped it up. Friends of mine defended it to me. They could not name a single joke, quote a single punchline, but they liked it.<br /><br />Now, this stale derivative incomprehending-cover-version work, which Oasis and Gervais and the GB3 team hand-created, now this can be automated.<br /><br />And audiences lap it up.<br /><br />In my business, it applies to code. Bots can generate awful code on industrial scale, and many programmers are embracing it. Presumably they wrote awful code anyway.<br /><br />Entire companies are leaning in to it.<br /><br />Some programmers are despairing.&nbsp;<br /><br />I thought this essay made some good points:<br /><br />&laquo;<br />The rise of Whatever <br />&raquo;<br /><br /><a href="https://eev.ee/blog/2025/07/03/the-rise-of-whatever/">https://eev.ee/blog/2025/07/03/the-rise-of-whatever/</a><br /><br />It's illustrated with that weird furry stuff that's so prevalent now, which squicks me a bit, but try to ignore it.<br /><br />Why is it that some people are happy with poor quality second or third generation fakery, while it repels others?<br /><br />And what is it going to do with us now that many simply cannot tell, they don't care enough to notice?<br /><br /><img src="https://www.dreamwidth.org/tools/commentcount?user=lproven&ditemid=310263" width="30" height="12" alt="comment count unavailable" style="vertical-align: middle;"/> comments 

<br> 

<https://lproven.dreamwidth.org/310263.html>

---

## Fascism On The Fourth | The Coffee Klatch for July 5, 2025

date: 2025-07-05, from: Robert Reich's blog

With Heather Lofthouse and yours truly, Robert Reich 

<br> 

<https://robertreich.substack.com/p/fascism-on-the-fourth-the-coffee>

---

## July 4, 2025

date: 2025-07-05, from: Heather Cox Richardson blog

An American flag in the rigging of &#8220;Old Ironsides,&#8221; the U.S.S. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-4-2025>

---

## Weeknotes: June 28-July 4, 2025

date: 2025-07-05, from: Tracy Durnell Blog

Win of the week: got a print framed that I&#8217;ve had since 2017 or so 🖼️ Looking forward to: long weekend 🙌 bought 2# of blueberries, I&#8217;m thinking I&#8217;ll bake a coffee cake one day Stuff I did: 2.75 hours consulting 2.25 hours business development &#8212; updated my roster profile and website 4.25 hours writing [&#8230;] 

<br> 

<https://tracydurnell.com/2025/07/04/weeknotes-june-28-july-4-2025/>

---

## A way to triumph over cynicism

date: 2025-07-04, from: Robert Reich's blog

Nationwide showings of The Last Class film 

<br> 

<https://robertreich.substack.com/p/a-way-to-triumph-over-cynicism>

---

## July 3, 2025

date: 2025-07-04, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/167552553/7b550313f5b1fbb560f2bab55b3af738.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/167552553/7b550313f5b1fbb560f2bab55b3af738.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/july-3-2025-2f5>

---

## Friday Squid Blogging: How Squid Skin Distorts Light

date: 2025-07-04, updated: 2025-07-02, from: Bruce Schneier blog

<p>New <a href="https://www.earth.com/news/scientists-unlock-the-light-bending-secrets-of-squid-skin/">research</a>.</p>
<p>As usual, you can also use this squid post to talk about the security stories in the news that I haven&#8217;t covered.</p>
<p><a href="https://www.schneier.com/blog/archives/2024/06/new-blog-moderation-policy.html">Blog moderation policy.</a></p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/07/friday-squid-blogging-how-squid-skin-distorts-light.html>

---

## Friday, July 4th, 2025

date: 2025-07-04, from: Doc Searls (at Harvard), New Old Blog

A big value-substract for higher ed. Among the crowning distinctions of Indiana University are its international scope and many supported disciplines. (An example.) Now, reports Inside Higher Ed, &#34;Indiana’s public higher education institutions plan to eliminate or consolidate over 400 programs, equaling roughly one-fifth of their degree offerings statewide, the Indiana Commission for Higher Education [&#8230;] 

<br> 

<https://doc.searls.com/2025/07/04/friday-july-4th-2025/>

---

## RSS ==> ActivityPub

date: 2025-07-04, from: Dave Winer's Scripting News

<p>I'd love to see a bridge from <a href="http://scripting.com/2025/04/14/121946.html">RSS</a> to ActivityPub. I've asked people at various companies if they'd do this. I'm happy to help with the software but operating the service is something for a trusted company to do.</p>
<p>I think this would go all the way to putting the "open" in open social web, because people who already know how to build RSS feeds would be able to quickly write apps that hook into AP networks. And of course it wouldn't have to be limited to RSS, it could build on Atom and RDF equally well.  </p>
<p>It think it's tragic that it's taking Ghost, for example, so long to get their service up fully, and it suggests that smaller devs don't stand a chance. I can't wake up one day and have an idea of something that would work well with Mastodon, for example, and have a prototype running the next day. </p>
<p>If you think this is a good idea, post a link to this post somewhere developers live, and let's see if we can get a cooperative project up and running. </p>
<p>And if you don't like RSS, Atom or RDF, invent an orthogonal format and we can work with that too. I know people have strong feelings about this stuff, not a problem. </p>
<p>PS: I asked <a href="https://mastodon.social/@davew/114796352889094954">Tim Bray</a> to comment, and  he <a href="https://mastodon.social/@timbray@cosocial.ca/114796687727557412">responded</a>. Sounds good. We've known each other for decades, going back to the early days of XML. </p>
 

<br> 

<http://scripting.com/2025/07/04/181125.html?title=rssActivitypub>

---

## Mini NASes marry NVMe to Intel's efficient chip

date: 2025-07-04, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Mini NASes marry NVMe to Intel's efficient chip</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p><img src="https://www.jeffgeerling.com/sites/default/files/images/mini-nas-lineup-with-coffee-mug.jpg" width="700" height="394" class="insert-image" data-insert-type="image" data-entity-type="file" data-entity-uuid="insert-image-52822dcf-5b98-45a2-94d2-73959391c90b" data-insert-attach="{&quot;id&quot;:&quot;52822dcf-5b98-45a2-94d2-73959391c90b&quot;,&quot;attributes&quot;:{&quot;alt&quot;:[&quot;alt&quot;,&quot;description&quot;],&quot;title&quot;:[&quot;title&quot;]}}" alt="Mini NAS lineup with Coffee Mug"></p>

<p>I'm in the process of rebuilding my homelab from the ground up, moving from a 24U full-size 4-post rack to a <a href="https://mini-rack.jeffgeerling.com">mini rack</a>.</p>

<p>One of the most difficult devices to downsize (especially <em>economically</em>) is a NAS. But as my needs have changed, I'm bucking the trend of all <a href="https://www.reddit.com/r/DataHoarder/">datahoarders</a> and I need <em>less</em> storage than the 120 TB (80 TB usable) I currently have.</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2025-07-04T09:00:57-05:00" title="Friday, July 4, 2025 - 09:00" class="datetime">July 4, 2025</time>
</span> 

<br> 

<https://www.jeffgeerling.com/blog/2025/mini-nases-marry-nvme-intels-efficient-chip>

---

**@Dave Winer's Scripting News** (date: 2025-07-04, from: Dave Winer's Scripting News)

How odd on Independence Day a law goes into effect that funds a secret police for the US. The goal is to flow people from inside the United States into concentration camps, and ostensibly deport them to other countries. It may turn out to be easier and less expensive to just gas them and burn the bodies right here in the USA. I listened to this morning's <a href="https://podcasts.apple.com/us/podcast/how-the-megabill-will-change-america/id1200361736?i=1000715713632">Daily podcast</a> to hear how they summed up the bill. They focused on taxes and health care as most of the other news orgs have been doing. They were puzzled why the Repubs didn't seem to care if it hurt their electorate, but they didn't state the obvious answer. They <i>don't</i> care. Remember <a href="http://scripting.com/2020/09/22/123759.html?title=weNeedOccamsNews">Occam's News</a>. I guess they didn't want to say it out loud so they just telegraphed the question. It worked, <a href="https://bsky.app/profile/scripting.com/post/3lt2zupgbm22n">message</a> received. 

<br> 

<http://scripting.com/2025/07/04.html#a133226>

---

**@Dave Winer's Scripting News** (date: 2025-07-04, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/11/26/uncleSam.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Today is Independence Day in the US, so how about an Independence Day for the web. One <a href="http://scripting.com/2025/07/04/181125.html">simple way</a> would be to hook RSS up to ActivityPub, turning Mastodon and Threads into a big feed reader. It could easily be done in software, it would just take money to keep it running. Not something I could attempt personally. But I would totally help with the software and design. It would open the door for lots of new apps that could communicate with users through a single <i>simple</i> API. I want to talk with people about this at <a href="http://scripting.com/2025/06/22/132405.html">WordCamp Canada</a> in October. 

<br> 

<http://scripting.com/2025/07/04.html#a133135>

---

## Make Some Noise

date: 2025-07-04, from: Dan Rather's Steady

Among the most patriotic things you can do is speak out 

<br> 

<https://steady.substack.com/p/make-some-noise>

---

## Wikidata: Attempting to bridge FOSS ideals and direct democracy

date: 2025-07-04, updated: 2025-07-04, from: Liam Proven's articles at the Register

<h4><span class="label">Comment</span> There&#39;s more to the Wikimedia organization than the famous encyclopedia</h4>
      <p>Multiple other projects also use the vast linked data store that underpins ubiquitous internet encyclopaedia Wikipedia, and some of them are helping the fight for democracy.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/04/wikidata_foss_democracy/>

---

## What Patriotism Requires

date: 2025-07-04, from: Robert Reich's blog

An ode to a disappearing America 

<br> 

<https://robertreich.substack.com/p/what-patriotism-requires>

---

## July 3, 2025

date: 2025-07-04, from: Heather Cox Richardson blog

And on July 4, 1776, the Second Continental Congress adopted the Declaration of Independence, declaring: &#8220;We hold these truths to be self-evident, that all men are created equal, that they are endowed by their Creator with certain unalienable rights, that among these are Life, Liberty and the Pursuit of Happiness.&#8221; 

<br> 

<https://heathercoxrichardson.substack.com/p/july-3-2025>

---

## Friday 4 July, 2025

date: 2025-07-03, from: John Naughton's online diary

Horsepower Interesting artwork outside a gallery in the Var. I liked the detail of the animal’s &#8216;head&#8217;. Quote of the Day “So long as men worship Caesars and Napoleons, Caesars and Napoleons will duly arise and make them miserable” Aldous &#8230; <a href="https://memex.naughtons.org/friday-4-july-2025/40986/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/friday-4-july-2025/40986/>

---

##  NPR Tiny Desk Concert by the cast of Buena Vista Social Club,... 

date: 2025-07-03, updated: 2025-07-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047081-npr-tiny-desk-concert-by>

---

## This is Fascism 

date: 2025-07-03, from: Robert Reich's blog

Trump&#8217;s Big Ugly Bill is fascist &#8212; not only in what it does and authorizes, but in how it got enacted 

<br> 

<https://robertreich.substack.com/p/this-is-fascism>

---

##  An original technicolor print of Star Wars (before all of Lucas&#8217;s tinkering)... 

date: 2025-07-03, updated: 2025-07-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047062-an-original-technicolor-p>

---

## A Reading List for America's Birthday.

date: 2025-07-03, from: James Fallows, Substack

Books, films, speeches, interviews on how we got here, and where else we can go. 

<br> 

<https://fallows.substack.com/p/a-reading-list-for-americas-birthday>

---

##  Hued is a daily game in the vein of Wordle/Spelling Bee where... 

date: 2025-07-03, updated: 2025-07-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047080-hued-is-a-daily-game>

---

## July 2, 2025

date: 2025-07-03, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/167461541/7d65f6335fd925f2b5d40493ffe9f314.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/167461541/7d65f6335fd925f2b5d40493ffe9f314.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/july-2-2025-2c5>

---

##  French artist Mantra paints photo-realistic murals that look like massive butterfly specimen... 

date: 2025-07-03, updated: 2025-07-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047072-french-artist-mantra-pain>

---

##  There&#8217;s No Undo Button For Our Fallen Democracy 

date: 2025-07-03, updated: 2025-07-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/theres-no-undo-button-for-our-fallen-democracy>

---

## CBS News: ‘Paramount, President Trump Reach $16 Million Settlement Over “60 Minutes” Lawsuit’

date: 2025-07-03, updated: 2025-07-03, from: Daring Fireball

 

<br> 

<https://www.cbsnews.com/news/paramount-trump-60-minutes-lawsuit-settlement/>

---

##  I Will Do Anything to End Homelessness Except Build More Homes. &#8220;Look,... 

date: 2025-07-03, updated: 2025-07-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047075-i-will-do-anything-to>

---

**@Dave Winer's Scripting News** (date: 2025-07-03, from: Dave Winer's Scripting News)

<a href="https://this.how/wordland/versions.opml#1751548301000">WordLand v0.5.17</a> -- Two changes with linkblog support. 

<br> 

<http://scripting.com/2025/07/03.html#a132234>

---

## curl user survey 2025 analysis

date: 2025-07-03, from: Daniel Stenberg Blog

I&#8217;m pleased to announce that once again I have collected the results, generated the graphs and pondered over conclusions to make after the annual curl user survey. Get the curl user survey 2025 analysis here Take-aways I don&#8217;t think I spoil it too much if I say that there aren&#8217;t too many drastic news in &#8230; <a href="https://daniel.haxx.se/blog/2025/07/03/curl-user-survey-2025-analysis/" class="more-link">Continue reading <span class="screen-reader-text">curl user survey 2025 analysis</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/07/03/curl-user-survey-2025-analysis/>

---

## Thursday, 3 July 2025

date: 2025-07-03, from: Doc Searls (at Harvard), New Old Blog

How about borrowing Subweb? I was about to share a Medium post, but just saw it&#39;s &#34;Members only.&#34; So I won&#39;t share it. I&#39;m doing more of that now. Even though I subscribe to Medium, the NYTimes, the LATimes, and the WSJ, I&#39;m avoiding linking to them, unless there&#39;s an easy way to pull the piece [&#8230;] 

<br> 

<https://doc.searls.com/2025/07/03/thursday-3-july-2025/>

---

## 2025-06-16 Ban autonomous systems

date: 2025-07-03, from: Alex Schroeder's Blog

<h1 id="2025-06-16-ban-autonomous-systems">2025-06-16 Ban autonomous systems</h1>

<p>More people have been working on blocking whole ranges of IP numbers, since that catches hosting providers that give bots access to the whole range they control. The bots switch IP numbers all the time so a filter based on IP numbers won&rsquo;t catch them. But if we can determine their autonomous system number (ASN), we can not only block an IP number range, we can block all the IP number rangers the ASN controls.</p>

<p>Now, since these hosting providers also host nice things like other fediverse instances, I don&rsquo;t want to block them forever. I want to block them for 10min, and if they continue after a few of these shorter blocks, I want to block them for a week. Hopefully, their clients have ended their Internet slurping and things are back to normal. This is how fail2ban works, but only for individual IP numbers.</p>

<p>I want code that bridges this gap.</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a> <a class="tag" href="/search/?q=%23fail2ban">#fail2ban</a></p>

<h2 id="where-to-start">Where to start</h2>

<p><a href="github.com/WKnak/fail2ban-bloc">fail2ban-bloc</a> tries to guess (!) IP ranges and bans those using fail2ban. I need to investigate more.</p>

<p>I&rsquo;m still fascinated by <a href="https://anarc.at/blog/2025-05-30-asncounter/">asncounter</a>. It might even work without logfiles, using <code>tcpdump</code>! For now, it generates an interesting Top 10 list. What&rsquo;s interesting about it is that it doesn&rsquo;t require me to query an external service and leak IP numbers.</p>

<p>I used to have the following fish function, for example:</p>

<pre><code>function asn
    for ip in $argv
        dig +short (string split '.' $ip|tac -|string join '.').origin.asn.cymru.com. TXT
    end
end
</code></pre>

<p>What I don&rsquo;t want to do is write another tool like <a href="/admin/network-lookup-lean">network-lookup-lean</a> which uses <code>asn.routeviews.org</code> for the same purposes, caches results, and so on. I want to get rid of this live lookup.</p>

<h2 id="working-with-asncounter">Working with <code>asncounter</code></h2>

<p>Here&rsquo;s me looking at the last Apache log file, excluding my fedi instance:</p>

<pre><code>awk '!/^social/ {print $2}' /var/log/apache2/access.log | asncounter --no-prefixes
INFO: using datfile ipasn_20250616.1200.dat.gz
INFO: collecting addresses from &lt;stdin&gt;
INFO: loading datfile /root/.cache/pyasn/ipasn_20250616.1200.dat.gz...
INFO: finished reading data
INFO: loading /root/.cache/pyasn/asnames.json
count	percent	ASN	AS
9264	9.49	29691	NINE, CH
6776	6.94	45899	VNPT-AS-VN VNPT Corp, VN
4207	4.31	7922	COMCAST-7922, US
3728	3.82	7018	ATT-INTERNET4, US
2193	2.25	24940	HETZNER-AS, DE
2015	2.06	13030	INIT7, CH
1802	1.85	396982	GOOGLE-CLOUD-PLATFORM, US
1470	1.51	701	UUNET, US
1364	1.4	136907	HWCLOUDS-AS-AP HUAWEI CLOUDS, HK
1257	1.29	32934	FACEBOOK, US
total: 97657
</code></pre>

<p>INIT7 is my Internet service provider at home and NINE is my hosting provider for the server. Better not ban those! 😅</p>

<p>So what is VNPT-AS-VN VNPT Corp doing? This could use better tool support!</p>

<pre><code>grep '2001:ee0:4f' /var/log/apache2/access.log | awk '{print $8}' | sort | uniq -c | head
      2 /c2-search?url=http%3A%2F%2Fwiki.c2.com%2F%3Fsearch%3D%22OpenSourceSecondLife%22
      1 /cgi-bin/wiki.pl?ErcReplace
      1 /cw-fr/BarneySock
      1 /edit/2011-06-16_Session_Reports_Are_Read_Just_Once,_If_At_All
      1 /edit/2019-03-15_Dungeon_Master%E2%80%99s_Handbook
      1 /emacs/AcrobatReader
      1 /emacs?action=admin;id=AssociationList
      1 /emacs?action=admin&amp;id=Comments_on_AdamShand
      1 /emacs?action=admin&amp;id=Comments_on_Categor%C3%ADaRegi%C3%B3n
      1 /emacs?action=admin&amp;id=Comments_on_nickat
</code></pre>

<p>OK, this is bots. Useless random URLs.</p>

<h2 id="ban-all-the-networks-managed-by-an-asn">Ban all the networks managed by an ASN</h2>

<p>I&rsquo;m going to use <code>ipset</code> to use two lists, <code>banlist</code> and <code>banlist6</code>.
I use these two for <a href="/admin/ban-cidr">ban-cidr</a>, too.</p>

<pre><code># Use hash:net because of the CIDR stuff
ipset create banlist hash:net
iptables -I INPUT -m set --match-set banlist src -j DROP
iptables -I FORWARD -m set --match-set banlist src -j DROP

ipset create banlist6 hash:net family inet6
ip6tables -I INPUT -m set --match-set banlist6 src -j DROP
ip6tables -I FORWARD -m set --match-set banlist6 src -j DROP
</code></pre>

<p>To ban all the IP ranges an ASN manages, I created the following little fish function using <code>ip.guide</code>:</p>

<pre><code>function asn-ban
    for asn in $argv
        for cidr in (curl -sL &quot;https://ip.guide/as$asn&quot; | jq --raw-output '.routes.v4[]')
            echo ipset add banlist $cidr
        end
        for cidr in (curl -sL &quot;https://ip.guide/as$asn&quot; | jq --raw-output '.routes.v6[]')
            echo ipset add banlist6 $cidr
        end
    end
end
</code></pre>

<p>Let&rsquo;s try it with the ASN 45899!</p>

<pre><code>asn-ban 45899 | sh
netfilter-persistent save
</code></pre>

<p>For more about <code>netfilter-persistent save</code> see the comments on <a href="2025-01-23-bots-devouring-the-web">2025-01-23 The bots are at it again</a>.</p>

<p>When I ran the <code>asn-ban</code> command above, I noticed that I got a single &ldquo;it&rsquo;s already added&rdquo; response.
Before adding the same numbers to my shell script, therefore:</p>

<pre><code>for cidr in (asn-ban 45899|awk '{print $4}'); if grep -q $cidr bin/admin/ban-cidr; echo $cidr; end; end
</code></pre>

<p>That told me I had to remove <code>14.187.96.0/20</code> from my script. Once this is done:</p>

<pre><code>echo (echo &quot;#&quot;; date --iso)  &gt;&gt; bin/admin/ban-cidr
asn-ban 45899 &gt;&gt; bin/admin/ban-cidr 
</code></pre>

<p>I really need to figure out how to manage this smartly. And I need to figure out a way to unban the whole list!</p>

<h2 id="integration-with-fail2ban">Integration with <code>fail2ban</code></h2>

<p>Let&rsquo;s start with <code>fail2ban</code>. I need a jail! Every jail needs a filter!</p>

<p>In <code>/etc/fail2ban/jail.d/alex.conf</code> (this is where I maintain all my jails) I added:</p>

<pre><code>[butlerian-jihad]
enabled = true
bantime = 1d
</code></pre>

<p>Note that this jail doesn&rsquo;t define log paths. I hope that works as intended.</p>

<p>I created a matching filter with no definition in <code>/etc/fail2ban/filter.d/butlerian-jihad.conf</code>:</p>

<pre><code># Author: Alex Schroeder &lt;alex@gnu.org&gt;
[Definition]
</code></pre>

<p>Reload it all, and check:</p>

<pre><code>fail2ban-client reload
OK
fail2ban-client status
Status
|- Number of jail:	6
`- Jail list:	alex-apache, alex-bots, butlerian-jihad, ngircd, recidive, sshd
</code></pre>

<p>Nice! So now I have a new jail.</p>

<h2 id="undo-the-banlist">Undo the banlist</h2>

<pre><code>asn-ban 45899 | sed 's/ipset add/ipset del/' | sh
</code></pre>

<p>I also manually edited my <a href="/admin/ban-cidr">ban-cidr</a> file to remove the lines I added above. Let&rsquo;s have fail2ban handle this!</p>

<h2 id="switch-from-ipset-to-fail2ban-client">Switch from <code>ipset</code> to <code>fail2ban-client</code></h2>

<pre><code>function asn-ban
    for asn in $argv
        set --local cidr (curl -sL &quot;https://ip.guide/as$asn&quot; | jq --raw-output '.routes.v4[],.routes.v6[]')
        echo fail2ban-client set butlerian-jihad banip $cidr
    end
end
</code></pre>

<p>Examine it:</p>

<pre><code>asn-ban 45899 | less
</code></pre>

<p>Run it:</p>

<pre><code>asn-ban 45899 | sh
3640
</code></pre>

<p>If you messed up, clear the jail:</p>

<pre><code>fail2ban-client reload --unban butlerian-jihad
</code></pre>

<p>Check the jail:</p>

<pre><code>fail2ban-client get butlerian-jihad banned
</code></pre>

<p>Count the entries in the jail:</p>

<pre><code>fail2ban-client get butlerian-jihad banned | sed 's/\'/&quot;/g' | jq length
3640
</code></pre>

<h2 id="what-do-we-have">What do we have?</h2>

<p>With <code>asncounter</code> we have a tool to quickly discover if an ASN is providing services to a bot.</p>

<p>With <code>asn-ban</code> we have a tool to quickly add all the IP networks the ASN is managing to a jail for <code>fail2ban</code>.</p>

<p>The jail which we called <code>butlerian-jihad</code> bans the IP networks for a day.</p>

<h2 id="what-s-left-to-do">What&rsquo;s left to do?</h2>

<p>I should check whether this actually works! Let&rsquo;s see whether the ban gets lifted after 24h. That&rsquo;s the main point of this exercise!</p>

<p><code>asn-ban</code> uses the <code>ip.guide</code> site for the data. This should be rewritten such that it uses the same data as <code>asncounter</code>.
I guess that would be <a href="https://github.com/hadiasghari/pyasn">pyasn</a>.
See below!</p>

<p>I need a cron job that runs every 10 minutes, takes the last ten minutes worth of Apache access log files, ignores the fedi subdomain, identifies all the ASNs, ignores my own ASNs and bans the rest.</p>

<h2 id="some-bans">Some bans</h2>

<p>Wow, some of the autonomous systems are big.
These are the ones I banned yesterday and today:</p>

<pre><code># AMAZON-02, US (18772!)
asn-ban 16509|sh
# VNPT-AS-VN VNPT Corp, VN (3640!)
asn-ban 45899 | sh
# TENCENT-NET-AP Shenzhen Tencent Computer Systems Company Limited, CN (2278!)
asn-ban 45090|sh
# ALIBABA-CN-NET Alibaba US Technology Co., Ltd., CN (852!)
asn-ban 45102 | sh
# FACEBOOK, US (541!)
asn-ban 32934|sh
# SEMRUSH-AS, CY (5!)
asn-ban 209366|sh
</code></pre>

<h2 id="using-pyasn-data-files-from-the-command-line">Using <code>pyasn</code> data files from the command-line</h2>

<p>How to determine the name of an autonomous system number:</p>

<pre><code>jq --raw-output '.[&quot;32934&quot;]' .cache/pyasn/asnames.json
FACEBOOK, US
</code></pre>

<p>How to determine the networks for an ASN:</p>

<pre><code>zgrep '209366$' .cache/pyasn/ipasn_20250616.1200.dat.gz | awk '{print $1}'
85.208.96.0/24
85.208.97.0/24
85.208.99.0/24
185.170.167.0/24
185.191.171.0/24
</code></pre>

<p>How to determine the ASN of a CIDR:</p>

<pre><code>zgrep '^85\.208\.96\.0/24' .cache/pyasn/ipasn_20250616.1200.dat.gz | awk '{print $2}'
209366
</code></pre>

<h2 id="asn-networks-without-an-external-service">ASN networks without an external service</h2>

<p><a href="/admin/asn-networks">asn-networks</a> is a tiny script with a bunch of lines taken from <code>asncounter</code> to print the IP ranges managed by one or more autonomous systems.</p>

<pre><code>python3 asn-ban 209366
185.170.167.0/24
185.191.171.0/24
85.208.96.0/24
85.208.97.0/24
85.208.99.0/24
</code></pre>

<p>It uses the <code>pyasn</code> datafiles that a regular run of <code>asncounter</code> has downloaded.
That is to say, <code>asn-networks</code> does not download or refresh these files.
I&rsquo;m assuming that you have run <code>asncounter</code> just moments earlier.</p>

<p>Given this script, we can now call <code>fail2ban-client</code> as follows (I use fish) to ban all the networks:</p>

<pre><code>fail2ban-client set butlerian-jihad banip (asn-networks 209366)
5
</code></pre>

<p>Unbanning works the same way:</p>

<pre><code>fail2ban-client set butlerian-jihad unbanip (asn-networks 209366)
5
</code></pre>

<p>Remember that <code>fail2ban-client</code> prints the number of IP numbers or ranges added or removed.</p>

<h2 id="identifying-suspicious-asn">Identifying suspicious ASN</h2>

<p>What is suspicious activity? How about this: In a 2h window, no ASN should send more than 1000 requests? So we need a script that filters the log files and prints a 2h window, skipping the lines we want to ignore: <a href="/admin/2h-access-log">2h-access-log</a>. Then pass the IP numbers to <code>asncounter</code>, throw away all the things we don&rsquo;t care about and just print the appropriate lines:</p>

<pre><code>bin/2h-access-log !^social \
| awk '{print $2}' \
| bin/asncounter --no-prefixes 2&gt;/dev/null \
| awk '/^[0-9]/ &amp;&amp; $1&gt;1000  { print }'
3062	31.93	24940	HETZNER-AS, DE
1642	17.12	16276	OVH, FR
</code></pre>

<p>So do I dare ban those numbers?? I&rsquo;m not sure!
I should figure out a way to find those 3062 requests made by services hosted on Hetzner.</p>

<p><a href="/admin/asn-access-log">asn-access-log</a> does just that. You pass it an ASN, it determines all the networks it manages and then it filters standard input, assuming that it consists of Apache access log lines (what counts is that the second field is an IP number).</p>

<pre><code>bin/2h-access-log !^social | bin/asn-access-log 24940
</code></pre>

<p>I see a lot of RSS services (NewsBlur, fiperbot, MyNewspaper Agent, FreshRSS), git, some bot (from the 159.69.0.0/16 range, for example), and on and on. Ugh. It&rsquo;s not easy to know what to do!</p>

<p>I think the best answer would be to lower the stakes but also ban for shorter amounts of time and let <code>fail2ban</code> handle the rest. The only thing I need to consider is whether I find the current amount of resources spent OK. Do I? Let&rsquo;s look at the latest numbers.</p>

<p>This here shows that fedi traffic is 60% Hetzner and OVH. This makes it hard for me to block these autonomous systems.</p>

<pre><code>bin/2h-access-log ^social !178.209.50.237 \
| awk '{print $2}' \
| bin/asncounter --no-prefixes
INFO: using datfile ipasn_20250616.1200.dat.gz
INFO: collecting addresses from &lt;stdin&gt;
INFO: loading datfile /root/.cache/pyasn/ipasn_20250616.1200.dat.gz...
INFO: finished reading data
INFO: loading /root/.cache/pyasn/asnames.json
count	percent	ASN	AS
2148	45.36	24940	HETZNER-AS, DE
738	15.59	16276	OVH, FR
273	5.77	14061	DIGITALOCEAN-ASN, US
202	4.27	14361	HOPONE-GLOBAL, US
195	4.12	15796	SALT-, CH
105	2.22	214640	HOSTUP HOSTUP, SE
102	2.15	63949	AKAMAI-LINODE-AP Akamai Connected Cloud, SG
62	1.31	47692	NESSUS, AT
59	1.25	197540	NETCUP-AS netcup GmbH, DE
50	1.06	44684	MYTHIC Mythic Beasts Ltd, GB
total: 4735
</code></pre>

<p>What&rsquo;s the situation without fedi traffic, keeping in mind that I will most likely not be able to block fedi hosters?</p>

<pre><code>bin/2h-access-log !^social !178.209.50.237 \
| awk '{print $2}' \
| bin/asncounter --no-prefixes
INFO: using datfile ipasn_20250616.1200.dat.gz
INFO: collecting addresses from &lt;stdin&gt;
INFO: loading datfile /root/.cache/pyasn/ipasn_20250616.1200.dat.gz...
INFO: finished reading data
INFO: loading /root/.cache/pyasn/asnames.json
count	percent	ASN	AS
249	5.47	7922	COMCAST-7922, US
189	4.16	9808	CHINAMOBILE-CN China Mobile Communications Group Co., Ltd., CN
129	2.84	7018	ATT-INTERNET4, US
122	2.68	396982	GOOGLE-CLOUD-PLATFORM, US
118	2.59	24940	HETZNER-AS, DE
96	2.11	55836	RELIANCEJIO-IN Reliance Jio Infocomm Limited, IN
96	2.11	56046	CMNET-JIANGSU-AP China Mobile communications corporation, CN
75	1.65	140061	CHINANET-QINGHAI-AS-AP Qinghai Telecom, CN
73	1.61	4837	CHINA169-BACKBONE CHINA UNICOM China169 Backbone, CN
70	1.54	701	UUNET, US
total: 4548
</code></pre>

<p>The autonomous systems that show up in the second list but not in the first list are my prime candidates, like COMCAST and CHINAMOBILE-CN.</p>

<p>So how about going after the autonomous systems on the second list that produce more than 1000 hits in a 2h period.</p>

<p>Something like this? I&rsquo;m going to but this into <code>/etc/cron.daily/butlerian-jihad</code></p>

<pre><code>#!/bin/sh
bin/2h-access-log !^social !178.209.50.237 \
| awk '{print $2}' \
| bin/asncounter --no-prefixes 2&gt;/dev/null \
| awk '/^[0-9]/ &amp;&amp; $1&gt;1000 { print $3 }' \
| ifne xargs bin/asn-networks \
| ifne xargs echo fail2ban-client set butlerian-jihad banip
</code></pre>

<p>I use <code>ifne</code> to prevent the execution of the command if there is no input.
Thanks, <a class="account" href="https://tilde.zone/@acdw" title="@acdw@tilde.zone">@acdw</a>!</p>

<h2 id="summary">Summary</h2>

<p><code>/etc/cron.daily/butlerian-jihad</code> runs every hour and checks if there have been any abusive autonomous systems in the last two hours. If so, they are banned. Note how I&rsquo;ve added my home IPv4 and IPv6 because I use my site a lot. 😅</p>

<pre><code>#!/bin/sh
bin/2h-access-log !^social !178.209.50.237 !MY-HOME-IPV4 !MY-HOME-IPV6 \
| awk '{print $2}' \
| bin/asncounter --no-prefixes 2&gt;/dev/null \
| awk '/^[0-9]/ &amp;&amp; $1&gt;1000 { print $3 }' \
| ifne xargs bin/asn-networks \
| ifne xargs fail2ban-client set butlerian-jihad banip \
&gt; /dev/null
</code></pre>

<p>This drops the output (the number of new bans) because otherwise the cron job mails that number to me.</p>

<p><a href="/admin/2h-access-log">2h-access-log</a> prints the last two hours worth of log lines from <code>/var/log/apache2/access.log</code> (and <code>access.log.1</code> if necessary).</p>

<p>The <code>!^social</code> argument ensures that connecting to my fedi server doesn&rsquo;t trigger the ban hammer.</p>

<p>The <code>!178.209.50.237</code> argument ensures that I don&rsquo;t ban the server itself as it monitors stuff and as I test things on the server. I also had to add my home IP numbers!</p>

<p><a href="https://gitlab.com/anarcat/asncounter/">asncounter</a> finds the autonomous system numbers for all the IP numbers in the web server log file and prints a report.</p>

<p><a href="/admin/asn-networks">asn-networks</a> then turns the selected autonomous system numbers and returns the IP ranges they manage.</p>

<p>These are then banned by <code>fail2ban-client</code> using the <code>butlerian-jihad</code> jail.</p>

<p>The <code>butlerian-jihad</code> jail is mentioned in enabled via a config file in <code>/etc/fail2ban/jail.d/</code>. In my case, the file is called <code>alex.conf</code> and for this jail, it says:</p>

<pre><code>[butlerian-jihad]
enabled = true
bantime = 1h
</code></pre>

<p>The jail also needs a filter definition even though no filtering happens as no logfile is checked.
My <code>/etc/fail2ban/filter.d/butlerian-jihad.conf</code> contains just this:</p>

<pre><code># Author: Alex Schroeder &lt;alex@gnu.org&gt;
[Definition]
</code></pre>

<p>What this means is that every hour, an autonomous system unit can get banned for generating more than 500 hits in 2h.
If they are banned, they are banned for 1h.
If they are banned for activity in the last hour leading up to the ban (more than 500 hits in 1h), the script will find the same log entries and ban them &ldquo;again&rdquo;. This results in no changes in the jail, since all the networks are already in the <code>butlerian-jihad</code> jail.</p>

<p>The bans themselves are reported in <code>/etc/log/fail2ban.log</code>.</p>

<p>I&rsquo;ve also enabled the <code>recidive</code> jail. That is, in the same file where I defined my <code>butlerian-jihad</code> jail, I have:</p>

<pre><code>[recidive]
enabled = true
</code></pre>

<p>The defaults are in <code>/etc/fail2ban/jail.conf</code>:</p>

<pre><code>[recidive]

logpath  = /var/log/fail2ban.log
banaction = %(banaction_allports)s
bantime  = 1w
findtime = 1d
</code></pre>

<p>So if some network is banned for more than five times in a day, it is banned for a week.
I say five times because <code>maxretry</code> is set to 5 in <code>/etc/fail2ban/jail.conf</code>.</p>

<p>Let&rsquo;s assume a scraper is started from some network managed by an autonomous system. It starts using IP numbers from all its ranges. It sends 400 requests per hour, more than a human could read and more than a feed reader should need, etc.</p>

<ul>
<li>after the first hour, nothing happens, as 400 is less than the 500 needed to trigger the system</li>
<li>after the second hour, the ASN is banned because the sum total for the last two hours is 800</li>
<li>after the third hour, the ASN is unbanned and not banned again because it only made 400 requests in the second hour</li>
<li>after the fourth hour, the ASN is banned again</li>
<li>after the fifth hour, the ASN is unbanned</li>
<li>after the sixth hour, the ASN is banned for the third time</li>
<li>after the seventh hour, the ASN is unbanned</li>
<li>after the eighth hour, the ASN is banned for the fourth time</li>
<li>after the ninth hour, the ASN is unbanned</li>
<li>after the tenth hour, the ASN is banned for the fifth time</li>
<li>after the eleventh hour, the ASN is unbanned</li>
<li>after the twelfth hour, the ASN is banned for the sixth time, the <code>recidive</code> filter kicks in and the networks belonging to the ASN are banned for a week</li>
</ul>

<p>This escalation takes twelve hours. The ASN was already banned for half this time.</p>

<p>Assuming this repeats every week, it means that the pattern repeats every 7½ weeks and the abusive ASN still gets service on 6h out of 180h or 3% of the time. For my taste, that is still way too nice.</p>

<p>Let&rsquo;s see how this goes for a while.</p>

<p><strong>Note</strong>: This doesn&rsquo;t actually work, as I discovered later. See <a href="2025-07-03-fail2ban-some-more">a follow-up post</a> for how to ban repeated offenders.</p>

<p>I&rsquo;m already looking forward to dropping my <code>banlist</code> and <code>banlist6</code> sets I created for <a href="/admin/ban-cidr">ban-cidr</a>.</p>

<h2 id="aftermath-cleaning-up-ban-cidr">Aftermath: cleaning up <code>ban-cidr</code></h2>

<blockquote>
<p>&ldquo;If you want to partake in unsupervised banning with no feedback, no due process, just automatic ban-hammers, take a look at this script full of firewall commands.&rdquo; &ndash; <a href="2025-01-23-bots-devouring-the-web">2025-01-23 The bots are at it again</a></p>
</blockquote>

<p>Back when I first encountered the distributed AI bot attacks, I wrote <a href="2024-09-15-emacs-china">2024-09-18 Emacs Wiki and China</a> and began working on <code>ban-cidr</code>. In later posts, I just automated the work of getting from an IP number to a network range and adding that to the script. Now that I hopefully have an automatic solution where I only need to fine-tune the time-windows and the limits, it&rsquo;s time to expire all those bans. There are currently over 40,000 of these banned networks.</p>

<pre><code>ipset list banlist | tail -n +9 | wc -l
46920
ipset list banlist6 | tail -n +9 | wc -l
9
</code></pre>

<p>So slowly, over time, I&rsquo;m planning to remove these.</p>

<pre><code>for ip in (ipset list banlist | tail -n +9 | head -n 1000); ipset del banlist $ip; end
netfilter-persistent save
</code></pre>

<p>Let&rsquo;s see how it goes! 😂</p>

<p>(Done: all of these blocks are now removed.)</p>

<h2 id="petty-banning">Petty banning</h2>

<p>Let&rsquo;s look at the output again:</p>

<pre><code>bin/2h-access-log !^social !178.209.50.237 | awk '{print $2}' | bin/asncounter --no-prefixes
INFO: using datfile ipasn_20250616.1200.dat.gz
INFO: collecting addresses from &lt;stdin&gt;
INFO: loading datfile /root/.cache/pyasn/ipasn_20250616.1200.dat.gz...
INFO: finished reading data
INFO: loading /root/.cache/pyasn/asnames.json
count	percent	ASN	AS
1041	8.44	45899	VNPT-AS-VN VNPT Corp, VN
929	7.54	13030	INIT7, CH
513	4.16	7922	COMCAST-7922, US
485	3.93	24940	HETZNER-AS, DE
351	2.85	14061	DIGITALOCEAN-ASN, US
304	2.47	7018	ATT-INTERNET4, US
296	2.4	16276	OVH, FR
293	2.38	45102	ALIBABA-CN-NET Alibaba US Technology Co., Ltd., CN
237	1.92	55836	RELIANCEJIO-IN Reliance Jio Infocomm Limited, IN
218	1.77	16509	AMAZON-02, US
total: 12327
</code></pre>

<p>What is RELIANCEJIO-IN doing?</p>

<pre><code>bin/2h-access-log !^social | bin/asn-access-log 55836 | head | log-request 
/nobots
/emacs?action=rc&amp;from=1725473811&amp;rcidonly=acidtoyman&amp;showedit=1&amp;upto=1726683411
/favicon.ico
/nobots
/emacs?action=rc&amp;all=1&amp;from=1728680271&amp;rcidonly=Comments_on_hideif.el&amp;showedit=1
/emacs?action=rss&amp;all=1&amp;days=14&amp;full=1&amp;rcidonly=mistilteinn.el&amp;showedit=0
/nobots
/emacs?action=rc&amp;all=1&amp;from=1728946699&amp;rcidonly=ArneBab&amp;showedit=1&amp;upto=1729033099
/nobots
/emacs?action=rc&amp;all=0&amp;from=1727470564&amp;rcidonly=Comments_on_anything&amp;showedit=1
</code></pre>

<p>Ugh. They need to go.</p>

<p>First, create the two lists. At this level we need two different lists for IPv4 and IPv6.</p>

<pre><code>ipset create banlist hash:net
iptables -I INPUT -m set --match-set banlist src -j DROP
iptables -I FORWARD -m set --match-set banlist src -j DROP

ipset create banlist6 hash:net family inet6
ip6tables -I INPUT -m set --match-set banlist6 src -j DROP
ip6tables -I FORWARD -m set --match-set banlist6 src -j DROP
</code></pre>

<p>Then define a new version of <code>asn-ban</code>:</p>

<pre><code>function asn-ban
    set --local data (asn-networks --json $argv)
    for asn in $argv
        for ip in (echo $data | jq --raw-output &quot;.[\&quot;$asn\&quot;].v4[]&quot;)
            echo ipset add banlist $ip
        end
        for ip in (echo $data | jq --raw-output &quot;.[\&quot;$asn\&quot;].v6[]&quot;)
            echo ipset add banlist6 $ip
        end
    end
end
</code></pre>

<p>This uses the <code>--json</code> option for <a href="/admin/asn-networks">asn-networks</a> so that we only need to call it once and yet we get two lists: one for <code>banlist</code> and one for <code>banlist6</code>.</p>

<p>To ban the offending ASN:</p>

<pre><code>asn-ban 55836|sh
</code></pre>

<p>Before I do that, however, I want to finish clearing the existing lists.</p>

<p>The reason I call this petty banning is because I&rsquo;m starting to ban autonomous systems even though their bots are &ldquo;well behaved&rdquo; in as much as they don&rsquo;t exceed the thresholds I defined. And yet they seem to be part of that great parade to honour the CO₂ god, the computation of useless shit.</p>

<p><strong>2025-06-20</strong>. I&rsquo;m thinking about alternatives but I think that&rsquo;s not worth it.
For example: Perhaps it&rsquo;s important to look at relative distribution?</p>

<pre><code>site-log transjovian | log-ip | asncounter --no-prefixes --top 3 2&gt;/dev/null
count	percent	ASN	AS
7	36.84	132203	TENCENT-NET-AP-CN Tencent Building, Kejizhongyi Avenue, CN
3	15.79	216071	VDSINA, AE
3	15.79	396982	GOOGLE-CLOUD-PLATFORM, US
total: 19
</code></pre>

<p>At first I thought, more than a third of all requests for Tencent? I must block them.
But then I saw that it was just 7 requests in 2h. Not worth it.</p>

<p>Here I saw that there were more requests, and an 80% share!</p>

<pre><code>site-log orientalisch | log-ip | asncounter --no-prefixes --top 3 2&gt;/dev/null
count	percent	ASN	AS
172	81.52	45102	ALIBABA-CN-NET Alibaba US Technology Co., Ltd., CN
20	9.48	396982	GOOGLE-CLOUD-PLATFORM, US
10	4.74	132203	TENCENT-NET-AP-CN Tencent Building, Kejizhongyi Avenue, CN
total: 211
</code></pre>

<p>But when you look at it, Alibaba is just fetching <code>robots.txt</code> all the time.
I don&rsquo;t know who runs this bot. It&rsquo;s clearly a waste of CO₂. And yet… not worth it.</p>

<pre><code>site-log orientalisch | asn-access-log 45102 | log-request | rank-lines
    172 /robots.txt
</code></pre>

<p>So, I don&rsquo;t know. And if I don&rsquo;t care about the relative share of requests, then I also don&rsquo;t have to count them per site.</p>

<p>I already wrote a little thing to give me a regular expression for every site I host!
But now I&rsquo;m not going to use it. I leave it here for you, dear reader. 😄</p>

<pre><code>awk '/^MDomain/ {split($0, sites)
  result = sites[2]
  for (i = 3; i &lt;= length(sites); i++)
    result = result &quot;|&quot; sites[i]
  print result
}' /etc/apache2/sites-enabled/*.conf
</code></pre>

<p>On the positive side, the current system seems to be working:</p>

<pre><code>awk '/butlerian-jihad/ { print $7, $8 }' /var/log/fail2ban.log | rank-lines
     10 Ban 45.254.32.0/22
     10 Ban 45.124.92.0/22
     10 Ban 43.239.220.0/23
     10 Ban 23.48.56.0/22
     10 Ban 23.48.52.0/22
     10 Ban 23.32.249.0/24
     10 Ban 221.132.32.0/21
     10 Ban 203.210.128.0/17
     10 Ban 203.162.0.0/16
     10 Ban 203.160.132.0/22
</code></pre>

<p>A bunch of networks were banned 10 times! Who do the Top 100 networks belong to?
It&rsquo;s a Vietnamese autonomous system.</p>

<pre><code>awk '/butlerian-jihad/ { print $7, $8 }' /var/log/fail2ban.log \
 | rank-lines -n 100 \
 | awk '{split($3,parts,&quot;/&quot;); print parts[1]}' \
 | xargs asn-find \
 | awk '{print $2,$3}' \
 | rank-lines
     98 45899 VNPT-AS-VN
      2 7643 VNPT-AS-VN
</code></pre>

<p>OK!</p>

<p>(You can find all the fish functions I use in the <a href="/admin/">admin</a> directory.)</p>

<p><strong>2025-07-02</strong>. I was looking at the <a href="https://campaignwiki.org/traveller">Traveller Subsector Generator</a> and trying to figure out why memory wasn&rsquo;t being freed. I wondered whether somebody else was hitting this expensive end-point.</p>

<pre><code>grep &quot;^campaignwiki.org.* /traveller&quot; /var/log/apache2/access.log \
| grep -v &quot;Monit&quot; \
| leech-detector \
| head -n 4
Total hits: 125
IP                                       |       Hits | Bandw. | Rel. | Interv. | Status
----------------------------------------:|-----------:|-------:|-----:|--------:|-------
                           50.32.203.123 |         32 |     7K |  25% |  552.4s | 200 (40%), 404 (31%), 302 (28%)
</code></pre>

<p>And who is that?</p>

<pre><code>asn 50.32.203.123
&quot;5650 | 50.32.128.0/17 | US | arin | 2010-09-24&quot;
</code></pre>

<p>What else are they requesting?</p>

<pre><code>2h-access-log !^social | asn-access-log 5650 | log-request | rank-lines
      4 /nobots
      1 /emacs?action=rss&amp;all=1&amp;days=14&amp;rcidonly=EmacsListen&amp;showedit=1
      1 /emacs?action=rss&amp;all=1&amp;days=14&amp;full=1&amp;rcidonly=imapua&amp;showedit=0
      1 /emacs?action=rc&amp;all=1&amp;from=1728194306&amp;rcidonly=Comments_on_emacsniftytricks&amp;upto=1728799106
      1 /emacs?action=rc&amp;all=1&amp;from=1728063015&amp;rcidonly=d-insert-import.el&amp;showedit=1
      1 /emacs?action=rc&amp;all=1&amp;from=1726452954&amp;rcidonly=%E3%82%AA%E3%83%AB%E3%82%B0%E3%83%A2%E3%83%BC%E3%83%89&amp;upto=1727662554
      1 /emacs?action=rc&amp;all=1&amp;from=1725759396&amp;rcidonly=Comments_on_Registers&amp;showedit=1&amp;upto=1726968996
      1 /cgi-bin/alex?action=rss&amp;full=1
      1 /c2-search?url=http%3A%2F%2Fwiki.c2.com%2F%3Fsearch%3D%22TheIdeal%22
</code></pre>

<p>Clearly, bots. The Apache configuration detects some suspicious requests and redirects these to <code>/nobots</code>. My thinking is: I could use this information to extrapolate!</p>

<p>Who is getting the <code>/nobots</code> results?</p>

<pre><code>/root/bin/2h-access-log !^social \
| grep &quot;GET /nobots&quot; \
| awk '{print $2}' \
| /root/bin/asncounter --no-prefixes 2&gt;/dev/null
count	percent	ASN	AS
67	4.23	7922	COMCAST-7922, US
66	4.17	45899	VNPT-AS-VN VNPT Corp, VN
53	3.35	7018	ATT-INTERNET4, US
50	3.16	55836	RELIANCEJIO-IN Reliance Jio Infocomm Limited, IN
37	2.34	28573	Claro NXT Telecomunicacoes Ltda, BR
24	1.52	21928	T-MOBILE-AS21928, US
23	1.45	24560	AIRTELBROADBAND-AS-AP Bharti Airtel Ltd., Telemedia Services, IN
20	1.26	20115	CHARTER-20115, US
17	1.07	5089	NTL, GB
17	1.07	701	UUNET, US
total: 1584
</code></pre>

<p>So maybe that&rsquo;s the answer: More than 50 requests resulting in a <code>/nobots</code> response qualify the ASN for the <code>butlerian-jihad</code> jail!</p>

<p>I have migrated <code>/etc/cron.hourly/butlerian-jihad</code> to <code>/etc/cron.d/butlerian-jigad</code> and it now has two jobs to run.</p>

<pre><code>SHELL=/usr/bin/fish
# Don't forget to replace the !IP argument with your own server or home IPs or you'll end up banning yourself.

# ban very active autonomous systems
1,16,31,46 *  * * *   root  /root/bin/2h-access-log !^social !178.209.50.237 | awk '{print $2}' | /root/bin/asncounter --no-prefixes 2&gt;/dev/null | awk '/^[0-9]/ &amp;&amp; $1&gt;500 { print $3 }' | ifne xargs /root/bin/asn-networks | ifne xargs fail2ban-client set butlerian-jihad banip &gt; /dev/null

# ban autonomous systems with a lot of bots based on Apache rules
5,20,35,50 *  * * *   root  /root/bin/2h-access-log !^social !178.209.50.237 | grep &quot;GET /nobots&quot; | awk '{print $2}' | /root/bin/asncounter --no-prefixes 2&gt;/dev/null | awk '/^[0-9]/ &amp;&amp; $1&gt;50 { print $3 }' | ifne xargs /root/bin/asn-networks | ifne xargs fail2ban-client set butlerian-jihad banip &gt; /dev/null
</code></pre>

<p>Too bad these cron jobs have to fit on a single line!</p> 

<br> 

<https://alexschroeder.ch/view/2025-06-16-ban-asn>

---

##  Diogo Jota, Liverpool and Portugal footballer, dies aged 28 in car crash.... 

date: 2025-07-03, updated: 2025-07-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047078-diogo-jota-liverpool-and->

---

**@Dave Winer's Scripting News** (date: 2025-07-03, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2025/07/03/houseOfCards.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">BTW, this is where we're going with WordLand. We can have a nice social web that builds on simple open formats. I will make an instance of this to show it can be done, both sides, reading and writing. They will work wonderfully with each other. You can write a nice reader and/or writer and it will work with this simple network. A technological <a href="http://scripting.com/stories/2007/04/28/twitterAsCoralReef.html">coral reef</a>. Think of the MacWrite and MacPaint of the open social web. Enough to get the ball rolling. 

<br> 

<http://scripting.com/2025/07/03.html#a113600>

---

**@Dave Winer's Scripting News** (date: 2025-07-03, from: Dave Winer's Scripting News)

Looking forward to putting linkblogs in WordLand to bed, I don't think too many people other than myself will use the feature, but I wanted to get it right and then move on. 

<br> 

<http://scripting.com/2025/07/03.html#a113429>

---

## Surveillance Used by a Drug Cartel

date: 2025-07-03, updated: 2025-07-02, from: Bruce Schneier blog

<p>Once you build a surveillance system, you <a href="https://www.theguardian.com/world/2025/jun/27/sinaloa-cartel-fbi-hackers">can&#8217;t control</a> who will use it:</p>
<blockquote><p>A hacker working for the Sinaloa drug cartel was able to obtain an FBI official’s phone records and use Mexico City’s surveillance cameras to help track and kill the agency’s informants in 2018, according to a new US justice department report.</p>
<p>The incident was disclosed in a justice department inspector general’s audit of the FBI’s efforts to mitigate the effects of &#8220;ubiquitous technical surveillance,&#8221; a term used to describe the global proliferation of cameras and the thriving trade in vast stores of communications, travel, and location data...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/07/surveillance-used-by-a-drug-cartel.html>

---

## Canonical adds extra shots to Ubuntu Java

date: 2025-07-03, updated: 2025-07-03, from: Liam Proven's articles at the Register

<h4>Juices the tooling and support for developers and enterprise customers</h4>
      <p>Canonical has some extra toppings, flavorings, and offers coming for its bigger Java fans – because the suits swallow a lot of the stuff.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/03/canonical_java_extra_shot/>

---

## 2025-07-03 Israeli crimes against humanity continue

date: 2025-07-03, from: Alex Schroeder's Blog

<h1 id="2025-07-03-israeli-crimes-against-humanity-continue">2025-07-03 Israeli crimes against humanity continue</h1>

<p>I don&rsquo;t want to blog about this shit show more than once a month. Here we go. Let nobody claim they didn&rsquo;t know. Let nobody who supported Israel get away with it.</p>

<blockquote>
<p>The power of Doctors Under Attack comes in the unhurried way it chooses to unfurl its thesis. There is no clear manipulation, no central villain. What there is, however, is an unceasing timeline of horrors. We are shown doctors doing their best in overwhelmed hospitals with no water or electricity, racing to treat wounds that have already begun to rot. We are shown them coming under what seem like targeted attacks, being detained in black sites where they will be tortured and interrogated. There is footage of a gang rape by soldiers. We are shown children, injured and dead, in vast numbers. &ndash; <a href="https://www.theguardian.com/tv-and-radio/2025/jul/03/gaza-doctors-under-attack-review-channel-4-crucial-film-stuff-of-nightmares">Gaza: Doctors Under Attack review – this crucial film is the stuff of nightmares. But the world needs to see it</a>, by Stuart Heritage, for The Guardian, reviewing the film Doctors Under Attack</p>
</blockquote>

<p>I am waiting for a reckoning. Others are, too.</p>

<blockquote>
<p>This report investigates the corporate machinery sustaining Israel’s settler-colonial project of displacement and replacement of the Palestinians in the occupied territory. While political leaders and governments shirk their obligations, far too many corporate entities have profited from Israel’s economy of illegal occupation, apartheid and now, genocide. The complicity exposed by this report is just the tip of the iceberg; ending it will not happen without holding the private sector accountable, including its executives. International law recognizes varying degrees of responsibility – each requiring scrutiny and accountability, particularly in this case, where a people’s self-determination and very existence are at stake. This is a necessary step to end the genocide and dismantle the global system that has allowed it. &ndash; <a href="https://www.ohchr.org/en/documents/country-reports/ahrc5923-economy-occupation-economy-genocide-report-special-rapporteur">A/HRC/59/23: From economy of occupation to economy of genocide - Report of the Special Rapporteur on the situation of human rights in the Palestinian territories occupied since 1967 (Advance edited version)</a>, by Francesca Albanese, Special Rapporteur on the situation of human rights in the Palestinian territories occupied since 1967, for the Human Rights Council Fifty-ninth session, United Nations</p>
</blockquote>

<p><a class="tag" href="/search/?q=%23Israel">#Israel</a> <a class="tag" href="/search/?q=%23Palestine">#Palestine</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-07-03-israel>

---

## Wayback gives X11 desktops a fighting chance in a Wayland world

date: 2025-07-03, updated: 2025-07-03, from: Liam Proven's articles at the Register

<h4>Minimalist glue code offers surprising lifeline for stubborn display setups</h4>
      <p>A new project addresses one of the biggest differences between how X11 and Wayland work, and that could be a winning combination.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/03/wayback_wayland_display_server/>

---

## Why They Hate Education

date: 2025-07-03, from: Robert Reich's blog

What Trump, Vance, Stefanik, and Viktor Orban have in common 

<br> 

<https://robertreich.substack.com/p/why-they-hate-higher-education>

---

## July 2, 2025

date: 2025-07-03, from: Heather Cox Richardson blog

The Senate&#8217;s passage of its version of the budget reconciliation bill yesterday sent House members rushing back to Washington today to debate passing what the Senate had sent them. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-2-2025>

---

##  Kilmar Ábrego García says he was tortured in El Salvadorian prison. Hundreds... 

date: 2025-07-03, updated: 2025-07-03, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047076-kilmar-abrego-garcia-says>

---

##  Wanna Sit Down? You Gotta Solve The Rubik&#8217;s Cube Chair. 

date: 2025-07-02, updated: 2025-07-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/wanna-sit-down-you-gotta-solve-the-rubiks-cube-chair>

---

##  American science to soon face its largest brain drain in history. &#8220;Over... 

date: 2025-07-02, updated: 2025-07-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047073-american-science-to-soon->

---

**@Dave Winer's Scripting News** (date: 2025-07-02, from: Dave Winer's Scripting News)

<a href="https://this.how/wordland/versions.opml#1751488476000">WordLand 0.5.16</a> -- Rounding out the linkblogging features. 

<br> 

<http://scripting.com/2025/07/02.html#a211347>

---

## July 1, 2025

date: 2025-07-02, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/167388486/cadb1d81511824bb98a06e0b30bd6f4c.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/167388486/cadb1d81511824bb98a06e0b30bd6f4c.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/july-1-2025-264>

---

##  Architect David Romero has built several digital models of Frank Lloyd Wright&#8217;s... 

date: 2025-07-02, updated: 2025-07-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047055-architect-david-romero-ha>

---

##  8 Forgotten Figures From the American Revolution, including Margaret Corbin, Joseph Brant,... 

date: 2025-07-02, updated: 2025-07-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047060-8-forgotten-figures-from->

---

##  On global homogenetic culture. &#8220;GHC is Trader Joe&#8217;s bags outside of the... 

date: 2025-07-02, updated: 2025-07-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047058-on-global-homogenetic-cul>

---

## Claude Sonnet is a small-brained mechanical squirrel of <T>

date: 2025-07-02, from: Geoffrey Hunntley's blog

    

<br> 

<https://ghuntley.com/cars/>

---

##  The Kindly Brontosaurus 

date: 2025-07-02, updated: 2025-07-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/the-kindly-brontosaurus-1>

---

## You will own nothing and be happy (Stop Killing Games)

date: 2025-07-02, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">You will own nothing and be happy (Stop Killing Games)</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><blockquote>
  <p><strong>tl;dr</strong>: If you're an EU citizen, <a href="https://eci.ec.europa.eu/045/public/#/screen/home">sign the Stop Killing Games initiative here</a>. Or, if you're in the UK, <a href="https://petition.parliament.uk/petitions/702074/">sign this petition</a>.</p>
</blockquote>

<p>A month ago, I had a <em>second</em> video on self-hosting <a href="https://www.jeffgeerling.com/blog/2025/self-hosting-your-own-media-considered-harmful-updated">taken down</a>. YouTube said it was 'harmful or dangerous content'. I appealed that, but my appeal was rejected.</p>

<p><em>Luckily</em>, I have enough reach I was able to get a <a href="https://x.com/TeamYouTube/status/1931119648675701161">second chance</a>. Most content creators aren't so lucky, and content about tools like Jellyfin and LibreELEC get buried over time.</p>

<p>But it's not just self-hosting.</p>

<blockquote>
  <p><strong>Note</strong>: This blog post is a lightly edited transcript of my most recent YouTube video, <a href="https://www.youtube.com/watch?v=rAsgjKBkKMA">You will own NOTHING and be HAPPY (SKG)</a>.</p></blockquote></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2025-07-02T11:25:10-05:00" title="Wednesday, July 2, 2025 - 11:25" class="datetime">July 2, 2025</time>
</span> 

<br> 

<https://www.jeffgeerling.com/blog/2025/you-will-own-nothing-and-be-happy-stop-killing-games-0>

---

## Jason Snell: ‘About That A18 Pro MacBook Rumor’

date: 2025-07-02, updated: 2025-07-02, from: Daring Fireball

 

<br> 

<https://sixcolors.com/post/2025/07/about-that-a16-macbook-rumor/>

---

##  Before he died, David Lynch talked to Natasha Lyonne about AI. &#8220;Natasha,... 

date: 2025-07-02, updated: 2025-07-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047057-before-he-died-david-lync>

---

**@Dave Winer's Scripting News** (date: 2025-07-02, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/03/12/hamstercage.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Software internally is mostly pipes connected to other pipes, each adding a specific quality to whatever passes through it. If you have nice standards for what you send through the pipes, you can do more of what you imagine. This is called <a href="https://en.wikipedia.org/wiki/Orthogonality_(programming)">orthogonality</a>. <a href="https://en.wikipedia.org/wiki/Code_refactoring">Factoring</a> is when you notice a repeating pattern, give it a name, and a set of things you can do to it, those would be names of pipes. I have to ask ChatGPT what it thinks about this, but I am also asking my human friends. BTW I expect this seems so natural because our minds probably work that way too, internally, below our conscious awareness. 

<br> 

<http://scripting.com/2025/07/02.html#a152605>

---

## 2025-07-02 Cloudflare? No.

date: 2025-07-02, from: Alex Schroeder's Blog

<h1 id="2025-07-02-cloudflare-no">2025-07-02 Cloudflare? No.</h1>

<p><a class="account" href="https://social.tchncs.de/@babelcarp" title="@babelcarp@social.tchncs.de">@babelcarp</a> asked me about Cloudflare. I think their efforts to block bots and other forms of distributed denial of service (DDOS) attacks are commendable and interesting. But at the same time, I don&rsquo;t want to use them.</p>

<p>Whatever tech they are using to identify bots is proprietary. Is it the list of user agents? The behaviour of certain IP numbers or networks? I mean, I try to do the same thing, right? But using their solution costs money and puts me at their mercy. This is problematic even if they give me their protection for free. If I can no longer defend myself, I&rsquo;ll be happy to accept their help. But until then, I&rsquo;m going to look for other ways.</p>

<p>As a society, handing over control over vast swaths of the web to a single US company is problematic, too. Sure, this gives them great power to find bots and analyse their behaviour across a gazillion websites. But when Cloudflare is down, a large part of the public Internet is down, too. If they censor a country, a company, or an individual, everybody using their service automatically partakes in the action.</p>

<p>Those problems remain even if Cloudflare decided to share their blocklists. Everybody would have an auto-update on short notice, like every 15min at least. And therefore, we&rsquo;d all accept their decisions. If the US president decides that Canada or Greenland or Ukraine or Iran or Palestine needs to be blocked, Cloudflare will have to comply. And without human oversight, everybody using their services will be an accomplice.</p>

<p>What I think would be best is more people experimenting and documenting approaches to the problem. We need to find solutions, collectively. <a href="https://anubis.techaro.lol/">Anubis</a> relies on proof-of-work and JavaScript. This is not ideal for the environment and it&rsquo;s not ideal for browsers without JavaScript. <a href="https://iocaine.madhouse-project.org/">Iocaine</a> uses various ways of identifying bots and feeds them auto-generated drivel in order to poison their data sources. <a href="https://zadzmo.org/code/nepenthes/">Nephentes</a> is a similar tarpit. These solutions are also not ideal for the environment. But process is exactly what we need: More people researching ways to keep the web free.</p>

<p>I wish Cloudflare would share their techniques of keeping the web free. But that, of course, is a bad idea under capitalism.</p>

<p>People using Cloudflare need to weigh the costs and benefits. The ease of use and the ubiquity is a boon. You will never walk alone. It might cost money and a little bit of independence, but it keeps the websites up, so the primary goal is achieved.</p>

<p>Luckily, I&rsquo;m not there, yet. I&rsquo;ve had a few days of downtime but my websites are also not very important. So I can keep on experimenting and documenting approaches to keeping the web free.</p>

<p><a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-07-02-cloudflare>

---

##  That Dropped Call With Customer Service? It Was on Purpose. &#8220;Not hiring... 

date: 2025-07-02, updated: 2025-07-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047064-that-dropped-call-with-cu>

---

## Wednesday, July 2, 2025

date: 2025-07-02, from: Doc Searls (at Harvard), New Old Blog

And if insurers aren&#39;t buying, hospitals close. Time has a good piece making clear that the socialized part of the U.S. health care system—Medicare and Medicaid—are socialist gravy on a vast B2B insurance business operating inside a captured regulatorium. Patient problems are products bought and sold. Also that it has more than four million views. [&#8230;] 

<br> 

<https://doc.searls.com/2025/07/02/wednesday-july-2-2025/>

---

##  Editorial Template for Every Time the United States Goes to War. &#8220;President... 

date: 2025-07-02, updated: 2025-07-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047068-editorial-template-for-ev>

---

## Ubuntu Disables Spectre/Meltdown Protections

date: 2025-07-02, updated: 2025-07-01, from: Bruce Schneier blog

<p>A whole class of speculative execution attacks against CPUs <a href="https://www.schneier.com/blog/archives/2018/01/spectre_and_mel_1.html">were published</a> in 2018. They seemed pretty catastrophic at the time. But the fixes were as well. Speculative execution was a way to speed up CPUs, and removing those enhancements resulted in significant performance drops.</p>
<p>Now, people are rethinking the trade-off. Ubuntu <a href="https://bugs.launchpad.net/ubuntu/+source/intel-compute-runtime/+bug/2110131">has disabled</a> some protections, resulting in  20% performance boost.</p>
<blockquote><p>After discussion between Intel and Canonical&#8217;s security teams, we are in agreement that Spectre no longer needs to be mitigated for the GPU at the Compute Runtime level. At this point, Spectre has been mitigated in the kernel, and a clear warning from the Compute Runtime build serves as a notification for those running modified kernels without those patches. For these reasons, we feel that Spectre mitigations in Compute Runtime no longer offer enough security impact to justify the current performance tradeoff...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/07/ubuntu-disables-spectre-meltdown-protections.html>

---

## Office Hours: What would Democrats be doing now if they got up off their asses?

date: 2025-07-02, from: Robert Reich's blog

If we had a strong, bold opposition party that rose to what the time demands 

<br> 

<https://robertreich.substack.com/p/office-hours-what-would-democrats>

---

## July 1, 2025

date: 2025-07-02, from: Heather Cox Richardson blog

Just after noon today, the Senate passed its version of the budget reconciliation bill. 

<br> 

<https://heathercoxrichardson.substack.com/p/july-1-2025>

---

##  &#8220;The plot of this movie aged extremely well.&#8221; A remake of The... 

date: 2025-07-02, updated: 2025-07-02, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047071-the-plot-of-this-movie>

---

**@Dave Winer's Scripting News** (date: 2025-07-02, from: Dave Winer's Scripting News)

More <a href="https://github.com/scripting/Scripting-News/issues/322#issuecomment-3025886330">feedback</a> on the design of Bluesky's API. 

<br> 

<http://scripting.com/2025/07/01.html#a000624>

---

##  Living Colour&#8217;s Tiny Desk Concert 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/living-colours-tiny-desk-concert>

---

## Wednesday 2 July, 2025

date: 2025-07-01, from: John Naughton's online diary

All the news that’s fit to wear Quote of the Day ”Power corrupts, and PowerPoint corrupts absolutely.” Vint Cerf Musical alternative to the morning’s radio news Bach &#124; Goldberg Variations, BWV 988: Aria &#124; Lang Lang Link Long Read of &#8230; <a href="https://memex.naughtons.org/wednesday-2-july-2025/40981/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/wednesday-2-july-2025/40981/>

---

##  Slice of Life 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/slice-of-life>

---

## Cruel Summer

date: 2025-07-01, from: Dan Rather's Steady

The American president salivating over suffering 

<br> 

<https://steady.substack.com/p/cruel-summer>

---

##  John Nichols remembers his colleague & friend, the legendary journalist Bill Moyers.... 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047063-john-nichols-remembers-hi>

---

##  &#8220;[Showing] people they are not alone in caring about an issue&#8221; is... 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047066-showing-people-they-are-n>

---

##  &#8220;When I was in high school, my friends and I had a... 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047049-when-i-was-in-high>

---

##  ImillaSkate: The Cholita Skaters of Bolivia 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/imillaskate-the-cholita-skaters-of-bolivia>

---

**@Dave Winer's Scripting News** (date: 2025-07-01, from: Dave Winer's Scripting News)

<a href="https://www.politico.com/live-updates/2025/07/01/congress/lisa-murkowski-repulican-megabill-alaska-00435150">Bullshit</a>. Lisa Murkowski goes on a <a href="https://podcasts.apple.com/us/podcast/murkowski-could-lead-gop-revolt-against-trump-4-21-25/id1633301179?i=1000704258553&l=ru">press tour</a> and sounds like she could be the one that breaks away from Trump in the Republican Senate. As with all of them, always, it was an act. She has a role to play, she's The Agonizer. They are amazing in terms of how organized and orchestrated their campaign is. 

<br> 

<http://scripting.com/2025/07/01.html#a184018>

---

##  Busting the Top 5 Myths About the Big Bang. &#8220;Even asking this... 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047056-busting-the-top-5-myths>

---

## June 30, 2025

date: 2025-07-01, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/167283636/73a600893bcf1723551c47dbdf79f1d7.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/167283636/73a600893bcf1723551c47dbdf79f1d7.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/june-30-2025-ebe>

---

##  The Internet Archive estimates the Wayback Machine will hit a lifetime total... 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047067-the-internet-archive-esti>

---

## [Sponsor] Phoenix.new

date: 2025-07-01, updated: 2025-07-01, from: Daring Fireball

 

<br> 

<https://phoenix.new/?utm_source=df>

---

##  Now that summer is in full swing, you might need this Comprehensive... 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047061-now-that-summer-is-in>

---

##  &#8220;He Painted Bugs Like Jewels&#8221; 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/he-painted-bugs-like-jewels>

---

## Gist of Go: Semaphores

date: 2025-07-01, from: Anton Zhiyanov blog

Limiting the concurrency and waiting for the peers. 

<br> 

<https://antonz.org/go-concurrency/semaphores/>

---

## Fedora 43 won't drop 32-bit app support – or adopt Xlibre

date: 2025-07-01, updated: 2025-07-01, from: Liam Proven's articles at the Register

<h4>Community vetoes plans to axe i686 compatibility and switch X11 forks</h4>
      <p>The Fedora community has quickly dropped a couple of recent proposed changes – one highly controversial, the other rather less so.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/01/fedora_43_i686_32bit/>

---

## Tesla's Robotaxi Revolution!

date: 2025-07-01, from: David Rosenthal's blog

<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh0pvL_uFGu7LBhQPQLJY3_H47YRdvy0pqFHFElDI1QEdL4znjxWKrAY0NG64Q2zzG8MG7L2x3_63QYM1xRCJUPhcJH87F_IGSXskZyDT8ccx6KYQjLp4t5J8T41pISJmCmF9HFXYPFSMOJjJ6xTYSxv4FDL6gq4ZpCnqKcn4CVt53OOQ4E66AitntkGHSD/s1308/Screenshot%202025-06-27%20at%2014.41.48.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="666" data-original-width="1308" height="102" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh0pvL_uFGu7LBhQPQLJY3_H47YRdvy0pqFHFElDI1QEdL4znjxWKrAY0NG64Q2zzG8MG7L2x3_63QYM1xRCJUPhcJH87F_IGSXskZyDT8ccx6KYQjLp4t5J8T41pISJmCmF9HFXYPFSMOJjJ6xTYSxv4FDL6gq4ZpCnqKcn4CVt53OOQ4E66AitntkGHSD/w200-h102/Screenshot%202025-06-27%20at%2014.41.48.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://techcentral.co.za/meet-tesla-cybercab-autonomous-robo-taxi/253198/">The mythical CyberCab</a></td></tr></tbody></table>
<a href="https://x.com/ChrisO_wiki/status/1928011420177670418">@ChrisO_wiki</a> tweeted:<br />
<blockquote>
How to tell if someone's bullshitting: watch for them to give a deadline that they repeatedly push back.
</blockquote>
This was apropos of Donald Trump's approach to tariffs and Ukraine, but below the fold I apply the criterion to Elon Musk basing Tesla's future on its robotaxi service.<br />
<span><a name='more'></a></span>
<br />
Jonathan V. Last's <a href="https://www.thebulwark.com/p/elon-musk-self-driving-fsd-tesla-tony-stark-michael-scott"><i>A Song of “Full Self-Driving”: Elon Isn’t Tony Stark. He’s Michael Scott.</i></a> shows that Musk's bullshitting started almost a decade ago:<br />
<blockquote>
  For years, Elon Musk has been promising that Teslas will operate completely autonomously in “Full Self Driving” (FSD) mode. And when I say years, I mean <a href="https://motherfrunker.ca/fsd/">years</a>:<br />
<ul>
<li><a href="https://fortune.com/2015/12/21/elon-musk-interview/">December 2015</a>: “We’re going to end up with complete autonomy, and I think we will have complete autonomy in approximately two years.”</li>
<li><a href="https://x.com/elonmusk/status/686279251293777920">January 2016</a>: “In ~2 years, summon should work anywhere connected by land &amp; not blocked by borders, eg you’re in LA and the car is in NY.”</li>
<li><a href="https://youtu.be/wsixsRI-Sz4?si=Mylq3wbbVuENBWxL&amp;t=4710">June 2016</a>: “I really would consider autonomous driving to be basically a solved problem. . . . I think we’re basically less than two years away from complete autonomy, complete—safer than a human. However regulators will take at least another year.”</li>
<li><a href="https://www.nbcnews.com/business/autos/driverless-tesla-will-travel-l-nyc-2017-says-musk-n670206">October 2016</a>: By the end of 2017 Tesla will demonstrate a fully autonomous drive from “a home in L.A., to Times Square . . . without the need for a single touch, including the charging.”</li>
<li><a href="https://electrek.co/2018/03/11/tesla-ceo-elon-musk-self-driving-next-year/">March 2018</a>: “I think probably by end of next year [end of 2019] self-driving will encompass essentially all modes of driving”</li>
<li><a href="https://www.youtube.com/watch?v=MOy3MTZ9Dyg">February 2019</a>: “I think we will be feature complete—full self-driving—this year. Meaning the car will be able to find you in a parking lot, pick you up, take you all the way to your destination without an intervention, this year."</li>
</ul>
</blockquote>
<a href="https://motherfrunker.ca/fsd/">@motherfrunker"</a> tracks this BS, and the most recent entry is:<br />
<ul>
<li><a href="https://www.youtube.com/watch?v=Vwq_PhtvLwo">January 2022</a>: I will be shocked if we don't achieve FSD safer than a human this year</li>
</ul>
But finally, on June 22<sup>nd</sup>, Tesla's robotaxi revolution arrived. Never one to miss an opportunity to <a href="https://gizmodo.com/elon-musks-trillion-dollar-robotaxi-gamble-is-here-2000618771">pump the stock with bullshit</a>, Musk:<br />
<blockquote>
envisions a future fleet, including a new “Cybercab” and “Robovan” with no steering wheels or pedals, that could boost Tesla’s market value by an astonishing $5 trillion to $10 trillion. On June 20, Tesla was worth $1.04 trillion
</blockquote>
As usual, there are plenty of cult members <a href="https://gizmodo.com/elon-musks-trillion-dollar-robotaxi-gamble-is-here-2000618771">lapping up the BS</a>:<br />
<blockquote>
“My view is the golden age of autonomous vehicles starting on Sunday in Austin for Tesla,” said Wedbush analyst Dan Ives. “I believe it’s a trillion dollar valuation opportunity for Tesla.”
</blockquote>
Dan Ives obviously only sipped 10-20% of Musk's CoolAid. Others <a href="https://gizmodo.com/elon-musks-trillion-dollar-robotaxi-gamble-is-here-2000618771">drank deeper</a>:<br />
<blockquote>
Investor Cathie Wood’s ARK Invest predicts robotaxis could account for 90% of Tesla’s profits by 2029. If they are right, this weekend’s launch was existential.
</blockquote>
Tesla's net income from the trailing 12 months is <a href="https://finance.yahoo.com/quote/TSLA/financials/">around $6.1B</a> and falling. Assuming, optimistically, that  they can continue to sell cars at the current rate, Cathie Woods is assuming that robotaxi <i>profits</i> would be around $60B. Tesla's net margin is around 6%, so this implies revenue of almost $1T in 2029. Tesla charges $4.20/ride (ha! ha!), so this implies that they are delivering 231B rides/year, or around 23,000 times the rate of the entire robotaxi industry currently. Woods is projecting that in four year's time Tesla's robotaxi business will have almost as much revenue as Amazon ($638B), Microsoft ($245B) and Nvidia ($130B) <i>combined</i>.<br />
<br />
Liam Denning's analysis in <a href="https://www.bloomberg.com/opinion/articles/2025-06-27/tesla-s-800-billion-robotaxi-dream-is-finally-facing-reality"><i>Tesla’s $800 Billion Robotaxi Dream Is Finally Facing Reality</i></a> is only somewhat less optimistic:<br />
<blockquote>
"On generous assumptions, Tesla’s core EV business, generating 75% of gross profit but with falling sales, might be worth roughly $50 per share, only 15% of the current price. Much of the remainder relates to expectations around self driving. RBC Capital, for example, ascribes 59% of its price target, or $181 per share, to robotaxis and a further $53 to monetizing Full Self Driving technology. Combined, that is a cool $815 billion based on double-digit multiples ascribed to modeled revenue — not earnings — 10 to 15 years from now because, after all, it relates to businesses that barely make money today."
</blockquote>
This all seems a tad optimistic, given the current state of Tesla's and the competition's robotaxi offerings.  Brad Templeton says "<a href="https://www.forbes.com/sites/bradtempleton/2025/06/22/tesla-misses-robotaxi-launch-date-goes-with-safety-drivers/">pay no attention to the person in the passenger seat</a>":<br />
<blockquote>
Tesla’s much-anticipated June 22 “no one in the vehicle” “unsupervised” Robotaxi launch in Austin is not ready. Instead, Tesla is operating a limited service with Tesla employees on board the vehicle to maintain safety.<br />
...<br />
Having an employee who can intervene on board, commonly called a safety driver, is the approach that every robocar company has used for testing, including testing of passenger operations. Most companies spend many years (Waymo spent a decade) testing with safety drivers, and once they are ready to take passengers, there are typically some number of years testing in that mode, though the path to removing the safety driver depends primarily on evaluation of the safety case for the vehicle, and less on the presence of passengers.<br />
<br />
In addition to Musk’s statements about the vehicle being unsupervised, with nobody inside, in general the removal of the safety driver is the biggest milestone in development of a true robotaxi, not an incremental step that can be ignored. As such, Tesla has yet to meet its goals.<br />
</blockquote>
Seven-and-a-half years after Musk's deadline for "complete autonomy" the best Tesla can do is a small robotaxi service for invited guests in a geofenced area of Austin with a safety driver in daylight. Waymo has <a href="tesla_robotaxi_austin">100 robotaxis in service in Austin</a>. Three months ago <a href="https://www.forbes.com/sites/bradtempleton/2025/03/07/robotaxis-mostly-waymo-are-giving-13-million-ridesmonth--why/">Brad Templeton reported that</a>:<br />
<blockquote>
Waymo, the self-driving unit of Alphabet, announced recently that they are now providing 200,000 self-driving taxi rides every week with no safety driver in the car, only passengers.<br />
...<br />
In China, though, several companies are giving rides with no safety driver. The dominant player is Baidu Apollo, which reports they did 1.1 million rides last quarter, which is 84,000 per week, and they now are all no-safety-driver. Pony.AI claims 26,000 per week, but it is not clear if all are with no safety driver. AutoX does not report numbers, but says it has 1,000 cars in operation. WeRide also does not report numbers.
</blockquote>
It turns out that the safety driver is necessary. Craig Trudell and Kara Carlson's <a href="https://www.bloomberg.com/news/articles/2025-06-23/tesla-robotaxi-videos-show-speeding-driving-into-wrong-lane"><i>Tesla Robotaxi Incidents Draw Scrutiny From US Safety Agency</i></a> reports on the first day of the robotaxi revolution:<br />
<blockquote>
US auto safety regulators are looking into incidents where Tesla Inc.’s self-driving robotaxis appeared to violate traffic laws during the company’s first day offering paid rides in Austin.<br />
...<br />
In one video taken by investor Rob Maurer, who used to host a Tesla podcast, a Model Y he’s riding in enters an Austin intersection in a left-turn-only lane. The Tesla hesitates to make the turn, swerves right and proceeds into an unoccupied lane meant for traffic moving in the opposite direction.<br />
<br />
A honking horn can be heard as the Tesla re-enters the correct lane over a double-yellow line, which drivers aren’t supposed to cross.<br />
<br />
In two other posts on X, initial riders in driverless Model Ys shared footage of Teslas speeding. A vehicle carrying Sawyer Merritt, a Tesla investor, reached 35 miles per hour shortly after passing a 30 miles per hour speed limit sign, a video he posted shows.
</blockquote>
Tesla's level of incompetence is not a surprise. Tesla added "(Supervised)" to FSD in the US. They aren't allowed to call the technology <a href="https://electrek.co/2025/03/25/tesla-drops-fsd-from-name-of-its-driver-assist-tech-in-china/">"Full Self-Driving" in China</a>. They recently rolled out <a href="https://electrek.co/2025/03/25/tesla-drops-fsd-from-name-of-its-driver-assist-tech-in-china/">"Intelligent Assisted Driving" in China</a>:<br />
<blockquote>
But immediately after that rollout, Tesla drivers started <a href="https://electrek.co/2025/02/27/tesla-drivers-are-racking-up-fines-using-fsd-in-china/">racking up fines</a> for violating the law. Many roads in China are watched by CCTV cameras, and fines are automatically handed out to drivers to break the law.<br />
<br />
It’s clear that the system still needs more knowledge about Chinese roads in general, because it kept mistaking bike lanes for right turn lanes, etc. One driver racked up 7 tickets within the span of a single drive after driving through bike lanes and crossing over solid lines. If a driver gets enough points on their license, they could even have their license suspended. 
</blockquote>
Why did Tesla roll out their $8K "Intelligent Assisted Driving" in China? It might have something to do with <a href="https://electrek.co/2025/03/25/tesla-drops-fsd-from-name-of-its-driver-assist-tech-in-china/">this</a>:<br />
<blockquote>
BYD recently pushed a software update giving <a href="https://electrek.co/2025/02/10/byds-most-affordable-evs-smart-driving-upgrade-free/">smart driving features to all of its vehicles – for free</a>.
</blockquote>
There are already many competing robotaxi services in China. <a href="https://www.channelnewsasia.com/east-asia/china-robotaxis-baidu-tesla-driverless-vehicles-4670506">For example</a>:<br />
<blockquote>
Baidu is already operating robotaxi services in multiple cities in China. It provided close to 900,000 rides in the second quarter of the year, up 26 per cent year-on-year, according to its latest earnings call. More than 7 million robotaxi rides in total had been operated as of late July.
</blockquote>
That was a year ago. It isn't just Waymo that is in a whole different robotaxi league than Tesla. And lets not talk about the fact that BYD, <a href="https://blog.dshr.org/2025/04/elon-musk-threat-or-menace-part-6.html">Xiaomi</a> and others outsell Tesla in China because their products are better and cheaper. Tesla's response? Getting the White House to put a <a href="https://www.bloomberg.com/news/articles/2025-03-26/trump-prepares-auto-tariff-announcement-as-soon-as-wednesday">25% tariff on imported cars</a>.<br />
<br />
<h3>Update: 4<sup>th</sup> July 2025</h3>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhcKzEidzLWCYAxT9i5aAGSu3pKVDlB5pA-H8rn-3vmzkjpgGDXWxK7wPL2q6zClE-1e7_X9InITLK66lbgVGjW3_3nqyFyuUgpZmzlOosXn3IWgvNFGnW1XmH0uU57aIcTexE5uth9-XiFEV6kSNkWb0bRjBAbgOmLV2e7OxZm0z5GWHATQ9x1Y1RRHc5t/s2352/Zeekr.png" imageanchor="1" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="1348" data-original-width="2352" height="114" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhcKzEidzLWCYAxT9i5aAGSu3pKVDlB5pA-H8rn-3vmzkjpgGDXWxK7wPL2q6zClE-1e7_X9InITLK66lbgVGjW3_3nqyFyuUgpZmzlOosXn3IWgvNFGnW1XmH0uU57aIcTexE5uth9-XiFEV6kSNkWb0bRjBAbgOmLV2e7OxZm0z5GWHATQ9x1Y1RRHc5t/w200-h114/Zeekr.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://techcrunch.com/2025/01/07/zeekr-rt-the-robotaxi-built-for-waymo-has-the-tiniest-wipers/">Source</a></td></tr></tbody></table>
I should have done more research for this post, then I would have found out that, unlike Tesla's CyberCab, Waymo's custom robotaxi is real. This morning I drove alongside a test vehicle in Palo Alto. Wikipedia has <a href="https://en.wikipedia.org/wiki/Waymo#Waymo">the details</a>:<br />
<blockquote>
In July 2024, Waymo began testing its sixth-generation robotaxis which are based on electric vehicles by Chinese automobile company Zeekr, developed in a partnership first announced in 2021.
</blockquote>
Zeekr is a brand of the Chinese company <a href="https://en.wikipedia.org/wiki/Geely">Geely</a>. Waymo plans to <a href="https://www.cnbc.com/2025/05/05/waymo-to-double-robotaxi-production-at-arizona-plant-by-end-of-2026.html">buiid their robotaxi at</a>:<br />
<blockquote>
The "Waymo Driver Integration Plant," a 239,000 square foot facility outside of Phoenix, will assemble more than 2,000 Jaguar I-PACE robotaxis, the Alphabet company said in a statement. Waymo will add those self-driving vehicles to its existing fleet that already includes around 1,500 robotaxis.<br />
<br />
The plant will be "capable of building tens of thousands of fully autonomous Waymo vehicles per year," when it is fully built out, Waymo said. The company also said it plans to build its more advanced Geely Zeekr RT robotaxis that feature its "6th-generation Waymo Driver" technology later this year at the plant.
</blockquote>
It seems likely that Waymo will be offering unsupervised rides in a custom robotaxi before Tesla can do it in a Model Y.<br /> 

<br> 

<https://blog.dshr.org/2025/07/teslas-robotaxi-revolution.html>

---

##  Trying to cut back on social media? The methaphone is a phone-shaped... 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047059-trying-to-cut-back-on>

---

## Tuesday, 1 July, 2025

date: 2025-07-01, from: Doc Searls (at Harvard), New Old Blog

I was overheard to have said&#8230; Doc Searls on Reloading the Intention Economy: Your Data, Your AI, Your Terms, by Nico Fara, of The Immergence podcast. Just some perspective. I just removed this from a post I&#8217;ve been writing: Walt Whitman put the profundity of human life in a kind of perspective when he said, &#8220;and I [&#8230;] 

<br> 

<https://doc.searls.com/2025/07/01/tuesday-1-july-2025/>

---

##  Against AI: An Open Letter From Writers to Publishers. &#8220;We want our... 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047054-against-ai-an-open-letter>

---

##  &#8220;The Big, Beautiful Bill assigns each American a billionaire who will live... 

date: 2025-07-01, updated: 2025-07-01, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/07/0047053-the-big-beautiful-bill-as>

---

## My new linkblog feed

date: 2025-07-01, from: Dave Winer's Scripting News

<p>This is the address of my linkblog feed: <a href="https://dave.linkblog.org/">dave.linkblog.org</a>. </p>
<p>I think it's kind of interesting to have the top page of a site be a feed. I don't hide the XML-ness of it. I never supported the obfuscation, it's confusing, makes people not trust RSS, imho. </p>
<p>I think the feed is pretty stable now, so if you want to subscribe, go ahead. I haven't redirected from the old feed yet, probably should do that soon, since it more or less has stopped updating. </p>
<p>This is all managed in <a href="https://wordland.social/">WordLand</a> and therefore is part of the WordPress ecosystem. </p>
<p>I felt it was time to do a definitive linkblog, since as far as I could tell no one has tried to explain what it is: basically, a feed where the &lt;link> element of each &lt;item> points to some other site. That's the basic difference.  </p>
<p>Also a linkblog feed should specify the channel-level &lt;image> element, which is used as the avatar for the feed when it appears in a twitter-like timeline.</p>
<p>I think the only other product that is open to feeds being part of the open social web is <a href="https://about.flipboard.com/press/announcing-surf-the-first-browser-for-the-open-social-web/?utm_source=chatgpt.com">Surf</a> from Mike McCue's company, Flipboard. I asked ChatGPT to <a href="https://chatgpt.com/share/6863cadb-46ec-8012-9ec8-c5e67595f954">brief me</a> on how it works with feeds, and saw that we're more or less doing the same thing, except I'm not trying to work with the output from Twitter, Bluesky, etc. Even when they have outbound RSS feeds they aren't good enough to be part of the social web defined by feeds.</p>
<p>I only want really good feeds. It's time to stop being so careless about what we transmit to the world. If we want an open web we're all going to have to be good gardeners. It's like a food system where all the food is grown by family farmers and I'm running a restaurant, and only want the good stuff, and we want it to look good too! :-)</p>
<p>PS: Another thing, the feed items must have working <a href="https://cyber.harvard.edu/rss/rss.html#ltguidgtSubelementOfLtitemgt">guids</a>. All software that runs on feeds should be able to depend on this. </p>
<p>PPS: Linkblogs aren't the only kinds of feeds that will be used in this RSS-based feediverse. Scripting News will work with it. You would be able to read this post in this new medium (not yet delivered, btw).</p>
<p>PPPS: More <a href="https://this.how/davewiner/myLinkblog.opml">here</a> and <a href="https://github.com/scripting/wordlandDev/issues/1">here</a>.</p>
 

<br> 

<http://scripting.com/2025/07/01/114429.html?title=myNewLinkblogFeed>

---

## It’s US publication day for Face with Tears of Joy!

date: 2025-07-01, from: Shady Characters blog

<p>It’s publication day! <cite>Face with Tears of Joy: A Natural History of Emoji</cite> is published today in the <abbr class="initialism">USA</abbr>.  You can order a copy from <a href="https://wwnorton.com/books/9781324075158">Norton</a>, <a href="https://www.amazon.com/Face-Tears-Joy-Natural-History/dp/1324075147/">Amazon.com</a>, <a href="https://www.barnesandnoble.com/w/face-with-tears-of-joy-keith-houston/1146267808">Barnes &#38; Noble</a>, <a href="https://www.booksamillion.com/p/Face-Tears-Joy/Keith-Houston/9781324075141">Books A Million</a>, <a href="https://bookshop.org/p/books/face-with-tears-of-joy-a-natural-history-of-emoji/b7e482367ef72daf">Bookshop.org</a>, <a href="https://www.hudsonbooksellers.com/book/9781324075141">Hudson</a>, <a href="https://www.powells.com/book/face-with-tears-of-joy-9781324075141">Powell’s</a>,  or <a href="https://www.walmart.com/ip/Face-with-Tears-of-Joy-A-Natural-History-of-Emoji-Paperback-9781324075141/11400706311">Walmart</a>.</p><a class="more-link" href="https://shadycharacters.co.uk/2025/07/us-publication-face-with-tears-of-joy/">Read more →</a> 

<br> 

<https://shadycharacters.co.uk/2025/07/us-publication-face-with-tears-of-joy/>

---

**@Dave Winer's Scripting News** (date: 2025-07-01, from: Dave Winer's Scripting News)

The <a href="https://github.com/scripting/Scripting-News/blob/master/blog/opml/2025/06.opml">archived source</a> for June 2025. 

<br> 

<http://scripting.com/2025/07/01.html#a112531>

---

## Linus Torvalds hints Bcachefs may get dropped from the Linux kernel

date: 2025-07-01, updated: 2025-07-01, from: Liam Proven's articles at the Register

<h4>Kernel 6.16 may be the last with the new disk format</h4>
      <p>The geek titans are clashing once again, and Linux supremo Linus Torvalds has warned: &#34;I think we&#39;ll be parting ways&#34; as of kernel 6.17.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/07/01/bcachefs_may_get_dropped/>

---

## Iranian Blackout Affected Misinformation Campaigns

date: 2025-07-01, updated: 2025-06-30, from: Bruce Schneier blog

<p>Dozens of accounts on X that promoted Scottish independence <a href="https://www.scottishdailyexpress.co.uk/news/politics/iranian-pro-scottish-independence-accounts-35450209">went dark</a> during an internet blackout in Iran.</p>
<p>Well, that&#8217;s one way to identify fake accounts and misinformation campaigns.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/07/iranian-blackout-affected-misinformation-campaigns.html>

---

## Trump, Musk, Republicans, and the Empathy Bug

date: 2025-07-01, from: Robert Reich's blog

The real crisis we are living through 

<br> 

<https://robertreich.substack.com/p/trump-musk-and-the-empathy-bug>

---

## June 30, 2025

date: 2025-07-01, from: Heather Cox Richardson blog

"This is the most deeply immoral piece of legislation I have ever voted on in my entire time in Congress,&#8221; said Senator Chris Murphy (D-CT). 

<br> 

<https://heathercoxrichardson.substack.com/p/june-30-2025>

---

## What Founders Can Learn From Topaz Labs

date: 2025-06-30, from: Om Malik blog

I recently interviewed Eric Yang,&#160;the&#160;chief executive officer of Dallas, Texas-based visual AI&#160;company&#160;Topaz&#160;Labs,&#160;for my newsletter, CrazyStupidTech. His father,&#160;Albert,&#160;started the business. The company stands in sharp contrast to our&#160;valuation-obsessed&#160;startup culture known for blitzscaling, infinite venture&#160;funding,&#160;and hypergrowth. Topaz is bootstrapped and has quietly built a $48 million business by breaking nearly every Silicon Valley rule. Here are some &#8230; 

<br> 

<https://om.co/2025/06/30/what-founder-can-learn-from-topaz-labs/>

---

## The Talk Show: ‘The Cutting Edge Latest Supermodel’

date: 2025-06-30, updated: 2025-06-30, from: Daring Fireball

 

<br> 

<https://daringfireball.net/thetalkshow/2025/06/30/ep-426>

---

##  Great Art Explained: Jackson Pollock 

date: 2025-06-30, updated: 2025-06-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/06/great-art-explained-jackson-pollock>

---

##  A decade-plus in the making and now on Kickstarter: a book of... 

date: 2025-06-30, updated: 2025-06-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/06/0047047-a-decade-plus-in-the-maki>

---

##  Large Hadron Couture Collider 

date: 2025-06-30, updated: 2025-06-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/06/large-hadron-couture-collider>

---

##  I Randomly Decided To Pay Off A School&#8217;s Lunch Debt. Then Something... 

date: 2025-06-30, updated: 2025-06-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/06/0047045-i-randomly-decided-to-pay>

---

## June 29, 2025

date: 2025-06-30, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/167203141/9e31fa0c4b0c3a4b1db5188550302114.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/167203141/9e31fa0c4b0c3a4b1db5188550302114.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/june-29-2025-d85>

---

##  The Music of Pixar&#8217;s Elio, Created by a Choir of Wooden Dolls 

date: 2025-06-30, updated: 2025-06-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/06/the-music-of-pixars-elio-created-by-a-choir-of-wooden-dolls>

---

**@Dave Winer's Scripting News** (date: 2025-06-30, from: Dave Winer's Scripting News)

If the Dems were competitive they would run ads now with <a href="https://www.youtube.com/watch?v=hjbTZXOyfzA">Senator Tillis talking</a> about the damage the new Repub bill will do to Americans, emphasizing this is a <i>Republican</i> speaking, taking one for the country. 

<br> 

<http://scripting.com/2025/06/30.html#a175949>

---

##  Could Should Might Don&#8217;t. &#8220;This isn&#8217;t a book filled with predictions and... 

date: 2025-06-30, updated: 2025-06-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/06/0047044-could-should-might-dont-t>

---

##  Retraction Watch: a blog that tracks corrected and retracted scientific papers.... 

date: 2025-06-30, updated: 2025-06-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/06/0047043-retraction-watch-a-blog-t>

---

## Mitch Kapor finally completes MIT master's degree after 45-year detour

date: 2025-06-30, updated: 2025-06-30, from: Liam Proven's articles at the Register

<h4>During which he coded Lotus 1-2-3 and co-founded Mozilla and the EFF</h4>
      <p>The man behind Lotus 1-2-3 and the Electronic Frontier Foundation (EFF) has wrapped up a master&#39;s degree at MIT Sloan, decades after dropping out to help kickstart the PC software boom.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/06/30/mitch_kapor_mba/>

---

##  Project Hail Mary, Official Trailer 

date: 2025-06-30, updated: 2025-06-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/06/project-hail-mary-official-trailer>

---

##  Ted Chiang writes about the earliest works of fiction about superintelligence. &#8220;The... 

date: 2025-06-30, updated: 2025-06-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/06/0047034-ted-chiang-writes-about-t>

---

## Do a backup now

date: 2025-06-30, from: Dave Winer's Scripting News

<p>Advice from a longtime developer. </p>
<ul>
<li>If you think "I should do a backup," do it. Now, don't wait. </li>
<li>Make it really easy to do a backup. Choose a menu item that's always available when you're working.</li>
</ul>
<p>The reason is karma. God hears all your thoughts. When that thought pops into your head and you don't do a backup, or don't do it soon enough, He crashes your data, and you think "I should have done a backup when I thought of doing it." Even this doesn't please Him. At that moment it's even more urgent that you do a backup. </p>
<p>My hippie uncle taught me this. God has a terrible sense of humor, and thinks it's really funny when you have a good thought and ignore it. When something didn't work he would say that's God goofing on me. </p>
<p>In this case, we're talking about is the Programmer God. There are all kinds of gods, a <a href="http://scripting.com/davenet/1995/04/24/thebaseballgod.html">baseball god</a>, a basketball god, and very specifically a Knicks god. That god has the absolutely worst sense of humor of them all and by worst I mean best. </p>
 

<br> 

<http://scripting.com/2025/06/30/144019.html?title=doABackupNow>

---

## Updates 2025/Q2

date: 2025-06-30, from: mrusme blog

Life and project updates from the current consecutive three-month period. You
might find this interesting in case you're using any of my open source tools
or you just want to read random things. :-) 

<br> 

<https://xn--gckvb8fzb.com/updates-2025-q2/>

---

##  The History of Electronic Music in 476 Tracks (1937–2001). &#8220;Spanning the years... 

date: 2025-06-30, updated: 2025-06-30, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/06/0047033-the-history-of-electronic>

---

## Monday, June 30, 2025

date: 2025-06-30, from: Doc Searls (at Harvard), New Old Blog

Toward future downtowns. Two tabs I just opened on a conference call that I need to read later: Re:Permissioning the City, and Permissioning the City 2025 Update. Has stuff that&#39;s too important for news stories. Even if you disagree with it. Heather Cox Richardson interviews Barack Obama. Are we in one now? On a call [&#8230;] 

<br> 

<https://doc.searls.com/2025/06/30/monday-june-30-2025/>

---

**@Dave Winer's Scripting News** (date: 2025-06-30, from: Dave Winer's Scripting News)

I needed a <a href="https://github.com/scripting/tinyFeedReader">tiny feed reader</a> for an app I was working on. 

<br> 

<http://scripting.com/2025/06/30.html#a120540>

---

**@Dave Winer's Scripting News** (date: 2025-06-30, from: Dave Winer's Scripting News)

Another <a href="https://github.com/scripting/Scripting-News/issues/322#issuecomment-3018828658">criticism</a> of the Bluesky API. They make each developer do the support for Open Graph metadata, when it would be much more efficient for them to support it on their end. I would be happy to give them the code. It's not that complicated. But translating the OG format, which for crying out loud is a huge standard, into their arcane format which is only supported by Bluesky, is going in the wrong direction, and frankly is ridiculously arrogant. Show a little humility. Facebook is huge, and the format isn't just used by Facebook, everyone uses it. 

<br> 

<http://scripting.com/2025/06/30.html#a113152>

---

**@Dave Winer's Scripting News** (date: 2025-06-30, from: Dave Winer's Scripting News)

When I was having trouble getting into my AWS account last week, I ordered a Yubikey, which everyone says is the best way to go. I thought I'd set it up first thing Monday morning (ie now) but it <a href="https://www.yubico.com/setup/">turns out</a> it's a major undertaking? Why does this have to be so hard? I guess I'll find out, but not today. I want to make some progress on my development project first. Maybe later. 

<br> 

<http://scripting.com/2025/06/30.html#a112812>

---

## How Cybersecurity Fears Affect Confidence in Voting Systems

date: 2025-06-30, updated: 2025-06-29, from: Bruce Schneier blog

<p>American democracy runs on trust, and that trust is cracking.</p>
<p>Nearly half of Americans, both Democrats and Republicans, question whether elections are <a href="https://news.gallup.com/poll/651185/partisan-split-election-integrity-gets-even-wider.aspx">conducted fairly</a>. Some voters accept election results only <a href="https://worldjusticeproject.org/our-work/research-and-data/rule-law-united-states">when their side wins</a>. The problem isn&#8217;t just political polarization&#8212;it&#8217;s a creeping <a href="https://www.pewresearch.org/politics/2018/10/29/elections-in-america-concerns-over-security-divisions-over-expanding-access-to-voting/">erosion of trust</a> in the machinery of democracy itself.</p>
<p>Commentators blame ideological tribalism, <a href="https://www.nytimes.com/2024/01/09/business/media/election-disinformation-2024.html">misinformation campaigns</a> and <a href="https://www.nytimes.com/2022/06/15/opinion/social-media-polarization-democracy.html">partisan echo chambers</a> for this crisis of trust. But these explanations miss a critical piece of the puzzle: a growing unease with the digital infrastructure that now underpins nearly every aspect of how Americans vote...</p> 

<br> 

<https://www.schneier.com/blog/archives/2025/06/cyberattacks-shake-voters-trust-in-elections.html>

---

## The Worst Bill in History 

date: 2025-06-30, from: Robert Reich's blog

Trump&#8217;s giant budget-busting, Medicaid-shattering, shafting-the-poor-and-working-class, making-the-rich-even richer bill is a travesty. 

<br> 

<https://robertreich.substack.com/p/the-three-myths-of-trickle-down-economics>

---

## June 29, 2025

date: 2025-06-30, from: Heather Cox Richardson blog

There are four political stories people should know about tonight. 

<br> 

<https://heathercoxrichardson.substack.com/p/june-29-2025>

---

## Self-webmention versus self-pingback

date: 2025-06-30, from: Tracy Durnell Blog

(Heads up: this post is only of interest to IndieWeb folks / WordPress users!) For the past few years, I&#8217;ve used self-webmentions as an &#8220;off-label&#8221; way to use my WordPress.org website as a digital garden, rather than using special software like Obsidian. Since I&#8217;m using my site as a digital garden, I extensively backlink everything I [&#8230;] 

<br> 

<https://tracydurnell.com/2025/06/29/self-webmention-versus-self-pingback/>

---

## Monday 30 June, 2025

date: 2025-06-29, from: John Naughton's online diary

Window box Quote of the Day ”A writer is a guy in the hospital wearing one of those gowns that’s open in the back. An editor is walking behind, making sure that nobody can see his ass.” John Bennett (who &#8230; <a href="https://memex.naughtons.org/monday-30-june-2025/40975/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-30-june-2025/40975/>

---

## A tough place to govern

date: 2025-06-29, from: Dave Winer's Scripting News

<p><a href="https://bsky.app/profile/benjaminwittes.lawfaremedia.org/post/3lsrm5apzpk27">Benjamin Wittes</a>: "It’s remarkable how many non-New Yorkers seem to care who the mayor of New York City is." </p>
<p>They do and they're right to, the same way we were concerned how the Governor of California and Mayor of Los Angeles would react to the invasion of the Marines and hijacking of the National Guard. </p>
<p>Right now the NYC mayor is a hostage of the US govt. Not in a position to help. An inexperienced first term NY mayor, have we seen that before? How does the <a href="https://www.youtube.com/watch?v=io7hOfnMldY">NYPD respond</a> to that? </p>
<p>Then there was the <a href="https://www.newyorkalmanack.com/2019/01/lindsays-snowstorm-a-rising-star-falls-to-earth-in-queens/">snowstorm</a> that derailed John V Lindsay, a heroic and transformative mayor. NY is a tough place to govern even when the US government isn't aiming to regime change the place.</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/06/29/mayorBeame.png"></center>NY is a tough place to govern even when the US government isn't aiming to <a href="https://en.wikipedia.org/wiki/Regime_change">regime change</a> the place.</div></p>
<p>Local government is our last line of defense. </p>
<p>"Think of voting as a chess move, not a valentine."</p>
<p>You all <a href="https://www.thenation.com/article/archive/the-2000-election-unleashed-disaster-on-the-world-we-cant-let-that-happen-again-in-2016/">fell in love</a> with a candidate, I do it too. </p>
<p>But think about the context the next mayor will govern in.</p>
<p>The thing about NY that people might not understand is that the politics are dirty and fucked up. Dems tend to elect handsome young heros who when they have to deal with NYPD and the sanitation workers, the teachers union, and the federal government, also the ancient infrastructure, melt.</p>
 

<br> 

<http://scripting.com/2025/06/29/230757.html?title=aToughPlaceToGovern>

---

## Sunday caption: Where to find the truth?

date: 2025-06-29, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-where-to-find-the>

---

## Sunday, June 29, 2025

date: 2025-06-29, from: Doc Searls (at Harvard), New Old Blog

EmanciPay. When subscription fatigue becomes unbearable, the answer is one ProjectVRM has had since the aughts. A Solid move. The Solid Project is now at The ODI. Explanation. A question for readers in Vijayawada. Why are statues of Avatar characters gone from Avatar Park? 

<br> 

<https://doc.searls.com/2025/06/29/sunday-june-29-2025/>

---

## June 28, 2025

date: 2025-06-29, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/167110870/890e494c62b29820a79c391df077e4af.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/167110870/890e494c62b29820a79c391df077e4af.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/june-28-2025-440>

---

**@Dave Winer's Scripting News** (date: 2025-06-29, from: Dave Winer's Scripting News)

<a href="https://github.com/scripting/Scripting-News/issues/322">A case study in APIs</a>. Creating a new post via Bluesky's API. 

<br> 

<http://scripting.com/2025/06/29.html#a142739>

---

## The best job in the world

date: 2025-06-29, from: Dave Winer's Scripting News

<p>Now that we know the outcome of the 2024 election, not just in numbers but in what it's doing to our beloved country and the rest of the world, it's interesting to revisit the campaign that journalism ran last year to force President Biden to step aside. That's one of the functions of Facebook, they play back your posts from years ago, so you can see how things changed, or didn't. </p>
<p>Anyway, last year on this day I <a href="https://www.facebook.com/dave.winer.12/posts/pfbid0254HASiWbtuPTJvn29xiHUgPDUuS4yqHfQwtLHMn9xPADiTbqkyY6KauyCGn58o69l">wrote this</a> on Facebook: "Why don't journalists cover the Biden base? Do they even consider the possibility that there is one? Or do they think they are the base? I thought they weren't supposed to care who the nominees are? Why do they feel entitled to say one candidate should withdraw but not the other? Have any of them even thought this through?"</p>
<p><a href="https://www.amazon.com/stores/author/B06VVR3DX6/about?ccs_id=add77910-b4f6-4323-80d0-494d4da9650f">Nick Arnett</a>, a former tech journalist, said in a <a href="https://www.facebook.com/dave.winer.12/posts/pfbid0254HASiWbtuPTJvn29xiHUgPDUuS4yqHfQwtLHMn9xPADiTbqkyY6KauyCGn58o69l?comment_id=399566229765683">comment</a>: "Until I read this, the madness of the Times calling on Biden, but not Trump, to withdraw didn't dawn on me." </p>
<p>I had followed his metamorphosis over years from a journalist to a worker who goes where there are fires or other natural disasters, for the government, to support the effort to save people's homes and lives. I watched him via Facebook, in awe, as he went around the country, <s>not being paid very much I imagine, but</s> doing good. </p>
<p>I learned something important when my father was in the hospital many years ago, in a coma, after losing a lot of blood and being unconscious for hours before he was found. He was in a ward in <a href="https://en.wikipedia.org/wiki/Flushing_Hospital_Medical_Center">Flushing Hospital</a>, along with a lot of other comatose people. All were unconscious, unable to feed themselves. Hard to know if they had any awareness. From an outside perspective they, and my father included, were lost. Some had been there for years, probably weren't ever going to come out of it. We were lucky, my father survived, after a month, and had seven more years to live.  </p>
<p>I visited him every day, and got to know the flow of the hospital. Workers came in and out of the room to attend to these comatose people. Imagine the kind of support they needed just to keep their bodies functioning and not wasting away for lack of movement. I thought these people must have the worst jobs imaginable, imagining myself in their shoes.</p>
<p>I got to know them, asked about what else they do, how they got here, where they live, etc. Somehow I got up the courage to ask one of them if they liked their job, imagining I'd get a New Yorker comment like "You know, it's a living." But what I heard was a complete surprise. "It's the best job in the world," he said, because I can see so clearly how my work helps real people. He was looking right at me. It hit me, this man is doing what I can't do, what my father's parents, who were long gone, couldn't do. <i>Caring.</i> Caring for my dad. Then I got it.  </p>
<p>Back to Nick, who was and still is, and probably always will be doing things to help other people, no matter what he does. </p>
<p>He was canned in one of the DOGE purges this spring. </p>
<p>Now you tell me whether the "Trump base" deserved a chance you wouldn't let us have with Biden? Why journalism felt entitled to make this decision for all of us? When are you going to get the idea that you're supposed to help us. Do the right thing. I get so angry at journalism for getting in the way. Once informed of the facts, it was their job to get out of the way and let us, the voters, make the decision. </p>
<p>PS: In the very next post on FB, I <a href="https://www.facebook.com/dave.winer.12/posts/pfbid02nENpETJNZ48ZKVGmL8ZRpjrFWPjejG3jQAiJkqL4ofqhYNHvdQBPVaEaNQj2Anuyl">wrote</a> an <a href="https://imgs.scripting.com/2025/06/29/nytPleaseStayInYourFuckingLane.png">HTML hack</a> that makes the same point, more concisely. </p>
 

<br> 

<http://scripting.com/2025/06/29/123144.html?title=theBestJobInTheWorld>

---

## ‘God Only Knows’

date: 2025-06-29, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/god-only-knows>

---

## June 27, 2025

date: 2025-06-29, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/167094512/303af20fde8ebe101c5a8dac496c067a.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/167094512/303af20fde8ebe101c5a8dac496c067a.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/june-27-2025-331>

---

## Sunday Thought: The One Branch of Government that Trump Wants to Keep Alive

date: 2025-06-29, from: Robert Reich's blog

While eviscerating the two others 

<br> 

<https://robertreich.substack.com/p/sunday-thought-trump-wants-only-one>

---

## June 28, 2025

date: 2025-06-29, from: Heather Cox Richardson blog

Last night just before midnight, Republicans released their new version of the omnibus budget reconciliation bill. 

<br> 

<https://heathercoxrichardson.substack.com/p/june-28-2025>

