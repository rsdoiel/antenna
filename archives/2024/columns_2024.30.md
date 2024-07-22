---
title: columns 2024.30
updated: 2024-07-22 08:22:22
---

# columns 2024.30

(date: 2024-07-22 08:22:22)

---

**@Dave Winer's Scripting News** (date: 2024-07-22, from: Dave Winer's Scripting News)

For the DNC in 2004, we had a site called <a href="https://web.archive.org/web/20040805042053/https://www.conventionbloggers.com/">Convention Bloggers</a>. It was a river of news feed reader, clearly done with Frontier, of blogs run by people who were at the convention. 

<http://scripting.com/2024/07/22.html#a141250>

---

**@Dave Winer's Scripting News** (date: 2024-07-22, from: Dave Winer's Scripting News)

Looking forward to the NYT deeply analyzing Trump‘s 78 year old mind and body and his Hannibal Lecter stories. 

<http://scripting.com/2024/07/22.html#a125843>

---

## 2024-07-20 Bots again

date: 2024-07-22, from: Alex Schroeder's Blog

<h1 id="2024-07-20-bots-again">2024-07-20 Bots again</h1>

<p>Today I couldn&rsquo;t log into the server. <code>ssh</code> just sat there, waiting for the server. Some web page loaded a few bytes and stopped. I knew it: some idiot had once again written a bot that was hitting my web apps (also known as &ldquo;expensive endpoints&rdquo;) because they ignored all the rules. They also didn&rsquo;t get caught by fail2ban because of they were using cloud services, of course. And the only thing that helps against these fuckers is banning the whole network. Time to get working.</p>

<p>First, I had to reboot the server via the website of my service provider.</p>

<p>Then I had to figure out which app it was. It&rsquo;s impossible for me to find out. All my expensive apps are from a directory called <code>/home/alex/farm</code>.</p>

<p>When I look at the system log file I, find entries like these:</p>

<pre><code>grep &quot;Out of memory&quot; /var/log/syslog | tail | cut -b 72-
Out of memory: Killed process 1525 (/home/alex/farm) total-vm:95736kB, anon-rss:7700kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 521 (node) total-vm:1268068kB, anon-rss:63440kB, file-rss:0kB, shmem-rss:0kB, UID:118 pgtables:2112kB oom_score_adj:0
Out of memory: Killed process 12302 (/home/alex/farm) total-vm:92464kB, anon-rss:54820kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 12622 (/home/alex/farm) total-vm:92420kB, anon-rss:53040kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 12628 (/home/alex/farm) total-vm:92712kB, anon-rss:51460kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:212kB oom_score_adj:0
Out of memory: Killed process 12632 (/home/alex/farm) total-vm:92556kB, anon-rss:51916kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 12206 (/home/alex/farm) total-vm:92320kB, anon-rss:57256kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 12016 (/home/alex/farm) total-vm:92292kB, anon-rss:57740kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 12689 (/home/alex/farm) total-vm:92728kB, anon-rss:57444kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:212kB oom_score_adj:0
Out of memory: Killed process 12041 (/home/alex/farm) total-vm:92484kB, anon-rss:58288kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
</code></pre>

<p>This is not helping. Who is 12041? There are large lists of the process identifiers and some numbers in the log, but the name is always shortened:</p>

<pre><code>grep &quot;12041&quot; /var/log/syslog | tail -n 3
2024-07-20T19:51:03.968678+02:00 sibirocobombus kernel: [ 3275.028117] [  12041]  1000 12041    23121    14572   212992     4117             0 /home/alex/farm
2024-07-20T19:51:03.968882+02:00 sibirocobombus kernel: [ 3275.028363] oom-kill:constraint=CONSTRAINT_NONE,nodemask=(null),cpuset=/,mems_allowed=0,global_oom,task_memcg=/system.slice/monit.service,task=/home/alex/farm,pid=12041,uid=1000
2024-07-20T19:51:03.968883+02:00 sibirocobombus kernel: [ 3275.028378] Out of memory: Killed process 12041 (/home/alex/farm) total-vm:92484kB, anon-rss:58288kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
</code></pre>

<p>Useless.</p>

<p>By that time, however, the system was slowing down again.
I fired up <code>htop</code> and saw a gazillion instances of the Community Wiki script.
Looking at the <code>/etc/log/apache2/access.log</code> file shows that bots were requesting the edit pages (!) of all the thousands of Community Wiki pages.</p>

<p>Thanks, idiots.</p>

<p>I needed to find where these requests where coming from.
My <a href="https://alexschroeder.ch/admin/leech-detector">leech-detector</a> script was as limited to single IP numbers as fail2ban.
So the first order of business was to add some functionality:
If given the option <code>--networks</code>, it now looks up the network range the requests come from and reports those:</p>

<pre><code>tail -n 50 /var/log/apache2/access.log | grep communitywiki | bin/admin/leech-detector --networks
</code></pre>

<p>This is expensive, of course, so I try to cache the <a href="https://www.routeviews.org/routeviews/index.php/collectors/">Route View ASN lookups</a> but the cache doesn&rsquo;t persist between calls. Using a small number of rows is the correct approach, here.</p>

<p>The result is a table like the one below. When I ran it, I used 400 rows or so.</p>

<table>
<thead>
<tr>
<th align="right">IP</th>
<th align="right">Hits</th>
<th align="right">Bandw.</th>
<th align="right">Rel.</th>
<th align="right">Interv.</th>
<th>Status</th>
</tr>
</thead>

<tbody>
<tr>
<td align="right">117.22.0.0/15</td>
<td align="right">1</td>
<td align="right">6K</td>
<td align="right">25%</td>
<td align="right"></td>
<td>200 (100%)</td>
</tr>

<tr>
<td align="right">59.172.0.0/14</td>
<td align="right">1</td>
<td align="right">6K</td>
<td align="right">25%</td>
<td align="right"></td>
<td>200 (100%)</td>
</tr>

<tr>
<td align="right">114.104.0.0/14</td>
<td align="right">1</td>
<td align="right">6K</td>
<td align="right">25%</td>
<td align="right"></td>
<td>200 (100%)</td>
</tr>

<tr>
<td align="right">220.184.0.0/13</td>
<td align="right">1</td>
<td align="right">6K</td>
<td align="right">25%</td>
<td align="right"></td>
<td>200 (100%)</td>
</tr>
</tbody>
</table>
<p>If you then start using <code>whois</code> on the numbers, you&rsquo;ll see:</p>

<ul>
<li>117.22.0.0 → China Telecom</li>
<li>59.172.0.0 → China Telecom</li>
<li>114.104.0.0 → China Telecom</li>
<li>220.184.0.0 → Zhejiang Telecom</li>
</ul>

<p>I think you know where this is going.</p>

<p>And so I copying the network IP, calling <code>whois</code>, verifying that it was Chinese Telecom or related, and added it to my <a href="https://alexschroeder.ch/admin/ban-cidr">ban-cidr</a> script.
(Note how I&rsquo;m using <code>netfilter-persistent</code> these days so that I don&rsquo;t have to run <code>ban-cidr</code> after every server restart.)</p>

<p>And now I&rsquo;m going to add the ranges above to the script.</p>

<p>Some days I feel like I&rsquo;m slowly starting to ban the whole commercial cloud service internet because nothing good ever seems to come of it. Do you feel the same?</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23Bots">#Bots</a> <a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p>

<p><strong>2024-07-22</strong>. Here&rsquo;s another slight annoyance, for <code>ngircd</code>. There are a lot of log lines for a day:</p>

<pre><code>journalctl --unit ngircd.service|grep &quot;Jul 21&quot;|wc -l
7436
</code></pre>

<p>More than half of them come from a single IP hosted by Octopuce:</p>

<pre><code>journalctl --unit ngircd.service|grep &quot;Jul 21.*2001:67c:288:2::231&quot;|wc -l
4347
</code></pre>

<p>They all have this format:</p>

<pre><code>Jul 21 11:39:51 sibirocobombus ngircd[594]: Accepted connection 16 from &quot;[2001:67c:288:2::231]:41240&quot; on socket 8.
Jul 21 11:39:51 sibirocobombus ngircd[594]: Using X509 credentials from slot 0
Jul 21 11:39:51 sibirocobombus ngircd[594]: Shutting down connection 16 (SSL accept error, closing socket) with &quot;[2001:67c:288:2::231]:41240&quot; ...
Jul 21 11:39:51 sibirocobombus ngircd[594]: Client unregistered (connection 16): SSL accept error, closing socket.
Jul 21 11:39:51 sibirocobombus ngircd[594]: Connection 16 with &quot;[2001:67c:288:2::231]:41240&quot; closed (in: 0.0k, out: 0.0k).
</code></pre>

<p>I&rsquo;m going to try and use <code>fail2ban</code> for this.</p>

<p>Looks like this is happening every 10 seconds:</p>

<pre><code>journalctl --unit ngircd.service|grep &quot;Jul 21.*Shutting down&quot;|tail|cut -d ' ' -f 3
23:58:23
23:58:33
23:58:43
23:58:53
23:59:03
23:59:13
23:59:23
23:59:33
23:59:43
23:59:53
</code></pre>

<p>So here&rsquo;s my attempt at a filter, <code>/etc/fail2ban/filter.d/ngircd.conf</code>:</p>

<pre><code># Fail2Ban filter for failed ssl connections to the ngIRC daemon

[INCLUDES]
# Read common prefixes. If any customizations available -- read them from
# common.local
before = common.conf

[Definition]
# Example:
# Shutting down connection 16 (SSL accept error, closing socket) with &quot;[2001:67c:288:2::231]:44846&quot;
_daemon = ngircd
failregex = ^%(__prefix_line)sShutting down connection [0-9]+ \(SSL accept error, closing socket\) with &quot;&lt;HOST&gt;:[0-9]+&quot; \.\.\.$
ignoreregex = 

[Init]
journalmatch = _SYSTEMD_UNIT=ngircd.service + _COMM=ngircd

# Author: Alex Schroeder
</code></pre>

<p>And this is the jail, <code>/etc/fail2ban/jail.d/ngircd.conf</code> – and here I want to ban them after four failed connects in a minute.
Remember the default ban lasts 10 minutes. Since this attack is moving so slowly, I want to increase this ban time to an hour.</p>

<pre><code>[ngircd]
enabled = true
findtime = 60
maxretry = 4
bantime = 60m
</code></pre>

<p>Let&rsquo;s give it a try!</p>

<pre><code>systemctl reload fail2ban
</code></pre>

<p>Then again: fail2ban is only for future attacks. The current level of persistency also deserves its own treatment:</p>

<pre><code>ipset create banlist6 hash:net family inet6
ip6tables -I INPUT -m set --match-set banlist6 src -j DROP
ip6tables -I FORWARD -m set --match-set banlist6 src -j DROP
ipset add banlist6 2001:67c:288:2::231
</code></pre>

<p>There we go.</p>

<p>Oh, and as soon as I did that, it switched to 91.194.61.231, but only once every two or three minutes.
Still Octopuce, though.</p>

<pre><code>ipset add banlist 91.194.60.0/23
</code></pre>

<p><strong>2024-07-22</strong>. Back to Community Wiki and its enemies, however.</p>

<p><img loading="lazy" src="2024-07-20-bots-again-1.jpg" alt="" /></p>

<p>1.92GiB for the bots?</p> 

<https://alexschroeder.ch/view/2024-07-20-bots-again>

---

**@Dave Winer's Scripting News** (date: 2024-07-22, from: Dave Winer's Scripting News)

<a href="https://shownotes.scripting.com/podcast0/2024/07/22/1amPredncPodcastRamble.html">Show notes</a> for 2004 pre-DNC podcast, part of the <a href="https://this.how/podcast0/">Podcast0</a> series. 

<http://scripting.com/2024/07/22.html#a124622>

---

**@Dave Winer's Scripting News** (date: 2024-07-22, from: Dave Winer's Scripting News)

I'm doing something new. Trying to initiate topics on the social web. We almost totally respond to external stuff, I wonder how different it would be if we engaged on a more individual level. I've been doing this for a while, but only now am able to explain it. 

<http://scripting.com/2024/07/22.html#a122821>

---

## Snake Mimics a Spider

date: 2024-07-22, updated: 2024-07-22, from: Bruce Schneier blog

<p>This is a fantastic video. It&#8217;s an Iranian spider-tailed horned viper (<i>Pseudocerastes urarachnoides</i>). Its tail looks like a spider, which the snake uses <a href="https://www.youtube.com/watch?v=XFjoqyVRmOU">to</a> <a href="https://www.msn.com/en-us/news/technology/this-might-look-like-a-spider-but-you-re-in-for-a-shock/ar-AA1mBOJi">fool</a> passing birds looking for a meal.</p>
 

<https://www.schneier.com/blog/archives/2024/07/snake-mimics-a-spider.html>

---

## What we must do now

date: 2024-07-22, from: Robert Reich's blog

Friends, Trump swiftly reacted to President Joe Biden&#8217;s withdrawal from the 2024 presidential campaign with typically nasty vitriol. Biden was &#8220;not fit to run,&#8221; &#8220;he wasn&#8217;t capable of being President,&#8221; &#8220;the Worst President, by far, in the History of our Nation,&#8221; who &#8220;just quit the race in COMPLETE DISGRACE!&#8221; 

<https://robertreich.substack.com/p/what-dems-must-do-now>

---

## July 21, 2024 

date: 2024-07-22, from: Heather Cox Richardson blog

&#8220;My Fellow Americans, &#8220;Over the past three and a half years, we have made great progress as a Nation. &#8220;Today, America has the strongest economy in the world. We&#8217;ve made historic investments in rebuilding our Nation, in lowering prescription drug costs for seniors, and in expanding affordable health care to a record number of Americans. We&#8217;ve provided critically needed care to a million veterans exposed to toxic substances. Passed the first gun safety law in 30 years. 

<https://heathercoxrichardson.substack.com/p/july-21-2024>

---

## Straight No Chaser – Gerry Mulligan and Thelonius Monk

date: 2024-07-22, from: Tracy Durnell Blog

This whole album is good. I also had a collection called Gerry Mulligan Meets the Saxophonists that drew from his combos with Ben Webster, Zoot Sims, and Johnny Hodges.* I&#8217;m partial to the Ben Webster myself. *(Then, being somewhat obsessive about jazz in HS and college, I got all the original albums, which included ordering [&#8230;] 

<https://tracydurnell.com/2024/07/21/straight-no-chaser-gerry-mulligan-and-thelonius-monk/>

---

## Thank you, Joe. 

date: 2024-07-22, from: Robert Reich's blog

Friends, Let me add my words of gratitude to Joe Biden for doing something Donald Trump is incapable of doing: putting his country over ego, ambition, and pride. Biden bowed out with grace and dignity. It would have been better had he done so three weeks ago, after the debate revealed him to be much frailer and weaker than most of America had assumed. Or better yet, had he not sought a second term to begin with. 

<https://robertreich.substack.com/p/thank-you-joe>

---

## Monday 22 July, 2024

date: 2024-07-21, from: John Naughton's online diary

Evolution Of one thing at least we can be sure: ‘soapy Sam’ would not have approved of the graphic. Quote of the Day With the birth of the artist came the inevitable afterbirth&#8230; the critic.” Mel Brooks Musical alternative to &#8230; <a href="https://memex.naughtons.org/monday-22-july-2024/39655/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-22-july-2024/39655/>

---

## Biden Bows Out

date: 2024-07-21, from: Dan Rather's Steady

Americans, every one of us, are about to be tested as never before. We have always been known for our ability to rise above challenges. This will be one for the ages. I have hope and faith that we are up to it. We had better be. Democracy as we have known it depends on us. 

<https://steady.substack.com/p/biden-bows-out>

---

## Election Countdown, 107 Days to Go: Joe Biden Passes the Torch

date: 2024-07-21, from: James Fallows, Substack

A sitting president changes everything about the race. We'll remember where we were, when we heard this news. 

<https://fallows.substack.com/p/election-countdown-107-days-to-go>

---

## Today's other stuff

date: 2024-07-21, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/11/nakedJenToday.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">BTW, there is a <a href="https://en.wikipedia.org/wiki/Twenty-fifth_Amendment_to_the_United_States_Constitution">totally legit and legal way</a> to deal with the issue people are grappling with, w/o any fancy new extra-legal ways of nominating a president that resolves it in a minute, if the Cabinet goes along with the idea that the current president isn't able to do the job, and if being re-elected is a legitimate part of doing the job. </p>
<p>Pretty sure most people don't get that being president is a job, not a role someone plays in a TV sitcom. </p>
<p>Great wealth is poison, that's what's playing out in the NYT-orchestrated overthrow of the American government. They're driving us into the arms of the Nazis. Who knows why, or even if there is a reason, other than their drive to find meaning in their great wealth. Their problem, and ours, is that it has no meaning, no human can use the money they've accumulated. These are not human-size fortunes, playing a game of make-believe, what if we really were as smart as we think our money says we are. Well you ain't that smart.</p>
 

<http://scripting.com/2024/07/21/212648.html?title=todaysOtherStuff>

---

**@Dave Winer's Scripting News** (date: 2024-07-21, from: Dave Winer's Scripting News)

<a href="https://talkingpointsmemo.com/news/bidens-exit-puts-the-spotlight-on-the-dnc-delegates">The earth shook today</a>. I'm watching the news like everyone else after President Biden withdrew. There really is a lot happening very quickly, and the Dems all sound like they got their story straight, for once the Dems sound like a party. How did that happen. NakedJen says we need a miracle. I said that's her department. <span class="spOldSchoolEmoji">❤️</span> 

<http://scripting.com/2024/07/21.html#a212256>

---

## Biden Drops Out of Reelection Bid, Fully Endorses Kamala Harris

date: 2024-07-21, updated: 2024-07-21, from: Daring Fireball

 

<https://x.com/JoeBiden/status/1815080881981190320>

---

## 2024-07-21 What was hard about the Oddµ architecture?

date: 2024-07-21, from: Alex Schroeder's Blog

<h1 id="2024-07-21-what-was-hard-about-the-oddµ-architecture">2024-07-21 What was hard about the Oddµ architecture?</h1>

<p>If you know Go, I think you&rsquo;ll find the architecture of Oddmu to be very traditional: There is a list of actions it knows how to handle when it serves a site on the web and a list of commands it understands when called from the shell. Everything involving HTML or the RSS feed uses a Go template.</p>

<p>There were two things that were tricky, in hindsight. I didn&rsquo;t know enough Go to know how best to do it and so it took me a long time to figure them out.</p>

<p>The first was what data to keep in memory. I didn&rsquo;t want search to involve a database so I experimented a lot with different ways of indexing the content. Trigrams? Full-text? And what about scoring? In the end, I dropped all of that. The only thing I keep in memory is a map of page names and page titles as well as a map of hashtags and pages. I find that searching titles and hashtags is what I do most often. For everything else, I search the files. This, of course, is much slower but for a site of ten thousand pages it&rsquo;s still fast enough. So figuring out how to do search was hard. Once I had this figured out, I discovered that keeping maps in memory when there are multiple Go routines being used by the web server means that I need locks. Both of my maps are in fact data structures that each contain a map and a lock. This was new to me and it took me a long time to realize that having the lock was important. For a while, I didn&rsquo;t have those locks. 😅</p>

<p>The second thing that took me a long time to get right is that I wanted pages to be served from Oddµ when it runs as a web server and I wanted to be able to edit files locally and upload them (using rsync, for example) while it was still running on the server. I didn&rsquo;t know about watching the filesystem for changes and had to learn how to do this: a watcher per directory, spawning new watchers when directories are created, and updating those maps I keep in memory as files are added, deleted or edited.</p>

<p>Watching the files introduced another complication, however: What if a user edited a page via the web? I already had code in place that would update my maps. Now the file system watcher would report the same file being written to, resulting in two updates. And what about a change to a file that results in multiple events: create a file, write something to the file, write some more to the file. Three events resulting in three updates? The code is therefore complicated.</p>

<p>If if Oddµ knows that a file is going to change ahead of time, like when a user on the web saves an edit, the file is added to a map of ignored files for a second. When the file system watcher sees those changes, no updates are done because it knows that the edit handler already does it.</p>

<p>If Oddµ sees a file change because of somebody editing files directly, a one second timer is started. If another event for the same file arrives, the timer is reset to one second. Only when a second has elapsed without changes does the watcher do the updates to the internal data structures. That is to say, changes made to the file system regarding page title changes or hash tag changes take an effect on the web with a one second delay.</p>

<p>So now, with all that in place, think of all the go routines running in parallel. Every one second timer is a go routine. Every go routine accessing a map like the map if files to ignore means that this map needs to be a data structure containing a map and a lock.</p>

<p>When I look at that part of the code, I still get dizzy. 😵‍💫</p>

<p><a class="tag" href="/search/?q=%23Oddµ">#Oddµ</a> <a class="tag" href="/search/?q=%23Programming">#Programming</a></p>

<p><strong>2024-07-21</strong>. <a class="account" href="https://merveilles.town/@bouncepaw" title="@bouncepaw@merveilles.town">@bouncepaw</a> asked about usability issues, specially in the context of using Oddµ for picture galleries. In my case, I think the hardest part is finding particular pictures. Consider <a href="2020-blumen/index">the page of flowers in 2020</a>. I know that there&rsquo;s a sanseveria in bloom on that page, for example. But how can I find it? I can find the page if I search for &ldquo;bogenhanf #pictures&rdquo;, and then I can search for the same word on the page, and then I have to wait for a bit as the browser lazy-loads pictures.</p>

<p>Perhaps, if I could get into the habit of putting the image description into the Markdown alt text, I could index all the images and their alt text, providing direct access to the images. I guess I would also have to add special code to the Markdown renderer that made the alt text visible for regular visitors (as title attribute or as regular paragraphs).
That&rsquo;d be interesting.</p>

<p><strong>Later</strong>. I have implemented something useful, I hope. If one of the search terms (excluding hashtags and predicates) matches an alt-text of an image, that image is included in the result.</p>

<p>Of course, almost none of my galleries use the alt-text, so right now there aren&rsquo;t many pages that will show results for a query like &ldquo;bogenhanf #pictures&rdquo;.</p>

<p>My expectations regarding alt texts and title attributes for images have changed significantly as I&rsquo;ve spent time on fedi, so I&rsquo;m really not sure what to do about Markdown in this respect. Right now I&rsquo;m in the habit of adding neither alt-text nor title attribute, trying to provide enough text in the paragraphs above or below. With this new search option, that might have to change, too. As a sighted person, I sort of expect the title attribute to be the same as the alt text.</p> 

<https://alexschroeder.ch/view/2024-07-21-what-is-hard-about-oddmu>

---

## NYT just stop podcast

date: 2024-07-21, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2024/07/04/butHerEmails.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">A two-minute <a href="http://scripting.com/2024/07/21/nytSayYourSorryAndGetBackToNews.m4a">podcast</a> where I dictate an op-ed the NYT should run in its own name, apologizing for trying to take over the US government, and promising to return to being a news organization. </p>
<p>I am so fed up with it. Today they ran an op-ed written by <a href="https://en.wikipedia.org/wiki/Aaron_Sorkin">Aaron Sorkin</a> giving advice to Democrats based on his experience writing scripts for a <a href="https://en.wikipedia.org/wiki/The_West_Wing">fictional White House</a> <i>television show</i> in the late 90s and early 00s. </p>
<p>Yeah the NYT has lost its way. I hope some people down there think they're way out on a limb and it's time to get back to what they do. They are not qualified or entitled to do what they are doing.</p>
 

<http://scripting.com/2024/07/21/125022.html?title=nytJustStopPodcast>

---

## Alison Krauss

date: 2024-07-21, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/alison-krauss>

---

## Sunday caption contest: The Republican Convention

date: 2024-07-21, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/sunday-caption-contest-the-republican-029>

---

## July 20, 2024

date: 2024-07-21, from: Heather Cox Richardson blog

Spent the evening with family, and my photographer nephew showed me today&#8217;s capture: a seagull trying to move in on an osprey&#8217;s catch. It&#8217;s a nice break to see drama from something other than the human news this past week&#8212; it seemed relentless. Taking the night off. I&#8217;ll be back at it tomorrow. 

<https://heathercoxrichardson.substack.com/p/july-20-2024>

---

## What CrowdStrike teaches us about risks & resilience

date: 2024-07-21, from: Om Malik blog

I had to bite my tongue and not comment on this tweet from FTC Chair Lina Khan, who tried to make the current CrowdStrike situation a crisis because of “big tech” and “consolidation.” “How is it that you don’t understand systems, or their inherent complexity?”, I wanted to scream. Well, if you give someone a &#8230; 

<https://om.co/2024/07/20/what-crowdstrike-crisis-teaches-us-about-risks-resilience/>

---

## Why ChatGPT is simply better

date: 2024-07-21, from: Dave Winer's Scripting News

<p>One great use for ChatGPT, simple recipes.</p>
<p>If you try looking for a recipe on Google they take forever to get to the point, and pop up all kinds of offers when all you wanted was a checklist of ingredients and steps. </p>
<p>For example, <a href="https://chatgpt.com/share/c9b39a6b-ad4b-4931-9f7e-93c6c7685c03">how to make hard-boiled eggs</a>.</p>
<p>Try doing the <a href="https://www.google.com/search?q=how+to+make+hard+boiled+eggs">same thing</a> on Google to see what I mean.</p>
 

<http://scripting.com/2024/07/20/021006.html?title=whyChatgptIsSimplyBetter>

---

**@Dave Winer's Scripting News** (date: 2024-07-21, from: Dave Winer's Scripting News)

I trust that President Biden will do what's best for the country. 

<http://scripting.com/2024/07/20.html#a020610>

---

**@Dave Winer's Scripting News** (date: 2024-07-21, from: Dave Winer's Scripting News)

<a href="https://www.salon.com/2024/07/20/its-not-that-complicated-pete-buttigieg-on-why-a-gay-billionaire-is-backing-jd-vance/">Pete Buttigieg</a> should be the Democrats' official blogger. Every day a new insight into what makes people do what they do and why the Dems have all the right ideas. He's a perfect spokesperson in that role. A daily Pete. He should do it. 

<http://scripting.com/2024/07/20.html#a020551>

