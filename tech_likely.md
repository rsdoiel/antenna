---
title: tech likely 2024.26
updated: 2024-06-30 11:36:54
---

# tech likely 2024.26

(date: 2024-06-30 11:36:54)

---

## Connecting the laptop to the server using UUCP

date: 2024-06-30, from: Alex Schroeder's Blog

<h1 id="connecting-the-laptop-to-the-server-using-uucp">Connecting the laptop to the server using UUCP</h1>

<p>I recently <a href="2024-06-15-uucp">connected my server to another server via UUCP</a>.
Now I&rsquo;m thinking that perhaps I&rsquo;d like to connect my laptop as another node to it.
I probably don&rsquo;t need it, because I <a href="2024-06-28-nncp">connected the laptop to the server via NNCP</a>.
But still. Perhaps <a class="account" href="https://social.sdfeu.org/@lkh" title="@lkh@social.sdfeu.org">@lkh</a> still wants to do stuff via UUCP.
Perhaps it is the completionist in me.</p>

<p>For reference, see <a href="https://www.bortzmeyer.org/uucp-over-ssh.pdf">UUCP over SSH</a> by <a class="account" href="https://mastodon.gougere.fr/@bortzmeyer" title="@bortzmeyer@mastodon.gougere.fr">@bortzmeyer</a>.
Since we&rsquo;re using SSH, there will be a key pair, and since we&rsquo;re using UUCP, we&rsquo;ll still a username and password.
I know, why aren&rsquo;t we using NNCP.</p>

<p>Generate the key pair.</p>

<pre><code>cd /var/spool/uucp
sudo mkdir .ssh
sudo chown uucp:uucp .ssh
cd .ssh
sudo -u uucp ssh-keygen -C &quot;uucp@melanobombus&quot; -f id_rsa
</code></pre>

<p>The file <code>uucp-key.pub</code> now has the public key.</p>

<p>On the server (!), add a line to <code>/var/spool/uucp/.ssh/authorized_keys</code>, replacing the public key:</p>

<pre><code>restrict,command=&quot;/usr/sbin/uucico -u Umelanobombus -l&quot; ssh-rsa KEY_FROM_ID_RSA_PUB uucp@dwalin
</code></pre>

<p>We will be using the username <code>Umelanobombus</code> to connect to the server.
This is not a real user!</p>

<p>On the server, save username and password in <code>/etc/uucp/passwd</code>.</p>

<pre><code>Umelanobombus *secret*
</code></pre>

<p>On the laptop, save system name, username and the same password in <code>/etc/uucp/call</code>.</p>

<pre><code>sibirocobombus Umelanobombus *secret*
</code></pre>

<p>Now we have both levels: the public and private keys that allow the <code>uucp</code> user to connect via <code>ssh</code> – and the username and password that is used by <code>uucp</code>.</p>

<p>Define our own name in <code>/etc/uucp/config</code> on the laptop.</p>

<pre><code>nodename	melanobombus
</code></pre>

<p>Let&rsquo;s add the system to <code>/etc/uucp/sys</code>.
That is, on the laptop, define the server we&rsquo;re going to call.
Since I already know that sibirocobombus will report itself as <code>campaignwiki</code>, I&rsquo;m setting up an <code>alias</code>.
The <code>chat</code> script waits for the &ldquo;Password:&rdquo; prompt and then sends it.
Note that this chat script is much shorter than the one used in &ldquo;UUCP over SSH&rdquo;, linked above.
Apparently there&rsquo;s no &ldquo;Login:&rdquo; prompt on my server so I had to change it.</p>

<pre><code>system sibirocobombus
alias campaignwiki
call-login *
call-password *
time any
chat Password: \P
chat-timeout 30
protocol i
port ssh_campaignwiki
</code></pre>

<p>Add the new port to <code>etc/uucp/port</code>.
Note that I&rsquo;m listening to incoming <code>ssh</code> connections on a non-standard port so I have to provide.
Also note that here we&rsquo;re defining the <code>uucp</code> &ldquo;port&rdquo; with a non-standard <code>ssh</code> &ldquo;port&rdquo;.
Just in case you&rsquo;re not already confused.</p>

<pre><code>port ssh_campaignwiki
type pipe
command /usr/bin/ssh -a -x -q -p 882 uucp@campaignwiki.org
reliable true
protocol etyig
</code></pre>

<p>Before doing our first test, make sure that the server is a &ldquo;known host&rdquo; on the laptop, for the <code>uucp</code> user.
Note how I am not using <code>-q</code> because I want to see the prompt!</p>

<p>The password to give on the prompt is the one in <code>/etc/uucp/call</code>.</p>

<pre><code>sudo -u uucp ssh -p 882 uucp@campaignwiki.org
The authenticity of host '[campaignwiki.org]:882 ([2a02:418:6a04:178:209:50:237:1]:882)' can't be established.
ED25519 key fingerprint is SHA256:ups6Q5G8Ab5QT/cTnrv5FpdmdvVtK09ZG8j1ToEBV9c.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '[campaignwiki.org]:882' (ED25519) to the list of known hosts.
PTY allocation request failed on channel 0
Password: *secret*
Shere=campaignwiki
^C
</code></pre>

<p>Let&rsquo;s add the laptop to <code>/etc/uucp/sys</code> on the server.
Since the server is never going to call the laptop, no credentials and no port is required.</p>

<pre><code>system melanobombus
called-login Umelanobombus
local-send /
local-receive /var/spool/uucppublic
remote-send /
remote-receive /var/spool/uucppublic
time any
forward ANY
protocol i
</code></pre>

<p>Let&rsquo;s test it!</p>

<p>On the client:</p>

<pre><code>echo hallo &gt; hallo.txt
uucp hallo.txt 'sibirocobombus!~/'
</code></pre>

<p>Let&rsquo;s check the log.</p>

<p>This is what it looks like when things don&rsquo;t work:</p>

<pre><code>uulog|tail
uucp sibirocobombus alex (2024-06-30 18:02:27.50 9274) Queuing send of /home/alex/hallo.txt to ~/
uucico sibirocobombus - (2024-06-30 18:02:27.50 9275) Calling system sibirocobombus (port ssh_campaignwiki)
uucico sibirocobombus - (2024-06-30 18:02:31.51 9275) ERROR: Line disconnected
</code></pre>

<p>You can try to replace <code>-q</code> with <code>-v</code> in <code>/etc/uucp/port</code> in order to see what <code>ssh</code> has to say.</p>

<p>If you try again, the log says that the system is not ready to try again:</p>

<pre><code>uucp sibirocobombus alex (2024-06-30 18:04:47.94 9454) Queuing send of /home/alex/hallo.txt to ~/
uucico sibirocobombus - (2024-06-30 18:04:47.94 9455) Retry time not reached
</code></pre>

<p>Force a call and check the log again.</p>

<pre><code>sudo -u uucp uucico -S sibirocobombus
</code></pre>

<p>You might be specifying the wrong login, or using the wrong chat script.
On the server, the log might look as follows:</p>

<pre><code>uulog|tail
uucico - - (2024-06-30 17:56:42.92 1245805) Incoming call (login Umelanobombus port stdin)
uucico - - (2024-06-30 17:56:49.12 1245805) ERROR: Line disconnected
uucico - - (2024-06-30 18:02:30.70 1247584) ERROR: Bad login
uucico - - (2024-06-30 18:07:25.26 1248690) ERROR: Bad login
</code></pre>

<p>Check the passwords:</p>

<ol>
<li><code>/etc/uucp/call</code> on the laptop says what username and password to use</li>
<li><code>/etc/uucp/passwd</code> on the server says what username and password to accept, separated by a TAB (!)</li>
</ol>

<p>Check the system:</p>

<ol>
<li><code>/etc/uucp/config</code> on the laptop says what the client is called</li>
<li><code>/etc/uucp/sys</code> on the laptop says what the server is called and how to connect to it, using what port</li>
<li><code>/etc/uucp/port</code> on the laptop describes that port</li>
<li><code>/etc/uucp/sys</code> on the server says what the client is called, what username to expect</li>
</ol>

<p>Check the login again, by going through it by hand.
Check whether the chat script would have worked.</p>

<pre><code>sudo -u uucp ssh -p 882 uucp@campaignwiki.org
PTY allocation request failed on channel 0
Password: *secret*
Shere=campaignwiki
^C
</code></pre>

<p>When calling the server, specify a high debugging level:</p>

<pre><code>sudo -u uucp uucico -x 11 -S sibirocobombus
</code></pre>

<p>To look at the debug output.
Here&rsquo;s an example where I mistyped the nodename in <code>/etc/uucp/config</code> on the laptop:</p>

<pre><code>sudo uulog -D
uucico - - (2024-06-30 19:06:09.74 14487) DEBUG: usysdep_detach: Forked; old PID 14486, new pid 14487
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: fsysdep_get_work_init: Found C.NPBZaHpAACZk
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: fsysdep_get_work_init: Found C.NPDpxIuAACce
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: fconn_open: Opening port ssh_campaignwiki (default speed)
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) Calling system sibirocobombus (port ssh_campaignwiki)
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: Forking /usr/bin/ssh -a -x -v -p 882 uucp@campaignwiki.org
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: icexpect: Looking for 5 &quot;word:&quot;
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: icexpect: Got &quot;Password:&quot; (found it)
uucico sibirocobombus - (2024-06-30 19:06:10.32 14487) DEBUG: fcsend: Writing password &quot;*secret*\r&quot;
uucico sibirocobombus - (2024-06-30 19:06:10.32 14487) DEBUG: zget_uucp_cmd: Got &quot;\020Shere=campaignwiki\000&quot;
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) Login successful
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) DEBUG: fsend_uucp_cmd: Sending &quot;Smelanobobus -R -N047&quot;
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) DEBUG: fconn_write: Writing 23 &quot;\020Smelanobobus -R -N047\000&quot;
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) DEBUG: zget_uucp_cmd: Got &quot;\020RYou are unknown to me\000&quot;
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) ERROR: Handshake failed (You are unknown to me)
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) DEBUG: fconn_close: Closing connection
uucico sibirocobombus - (2024-06-30 19:06:10.43 14487) DEBUG: Call failed: 4 (Handshake failed)
</code></pre>

<p>If everything worked, however, the log on the client says:</p>

<pre><code>uulog
uucico sibirocobombus - (2024-06-30 19:18:07.77 15159) Calling system sibirocobombus (port ssh_campaignwiki)
uucico sibirocobombus - (2024-06-30 19:18:08.40 15159) Login successful
uucico sibirocobombus - (2024-06-30 19:18:08.41 15159) Handshake successful (protocol 'i' sending packet/window 1024/16 receiving 1024/16)
uucico sibirocobombus alex (2024-06-30 19:18:08.42 15159) Sending /home/alex/hallo.txt (6 bytes)
uucico sibirocobombus alex (2024-06-30 19:18:08.42 15159) Sending /home/alex/hallo.txt (6 bytes)
uucico sibirocobombus - (2024-06-30 19:18:08.42 15159) Protocol 'i' packets: sent 9, resent 0, received 7
uucico sibirocobombus - (2024-06-30 19:18:08.42 15159) Call complete (0 seconds 12 bytes 0 bps)
</code></pre>

<p>The log on the server says:</p>

<pre><code>uucico - - (2024-06-30 19:18:08.89 1265032) Incoming call (login Umelanobombus port stdin)
uucico melanobombus - (2024-06-30 19:18:08.90 1265032) Handshake successful (protocol 'i' sending packet/window 1024/16 receiving 1024/16)
uucico melanobombus alex (2024-06-30 19:18:08.90 1265032) Receiving /var/spool/uucppublic/hallo.txt (6 bytes)
uucico melanobombus alex (2024-06-30 19:18:08.90 1265032) Receiving /var/spool/uucppublic/hallo.txt (6 bytes)
uucico melanobombus - (2024-06-30 19:18:08.91 1265032) Protocol 'i' packets: sent 6, resent 0, received 8
uucico melanobombus - (2024-06-30 19:18:08.91 1265032) Call complete (0 seconds 12 bytes 0 bps)
</code></pre>

<p>And the file is in the public area:</p>

<pre><code>ls /var/spool/uucppublic/
hallo.txt
</code></pre>

<p>And in the other direction, send a similar file to <code>alex@melanobombus</code>.</p>

<pre><code>uuto hallo.txt 'melanobombus!alex'
</code></pre>

<p>On the laptop:</p>

<pre><code>sudo -u uucp uucico -S sibirocobombus
uupick
from campaignwiki: file hallo.txt ?
m .
</code></pre>

<p>And I have it!</p>

<p>Don&rsquo;t fogert the warning in the <code>uuto</code> documentation:</p>

<blockquote>
<p>Note that `uuto&rsquo; does not provide any security – any user on the remote system can examine the files.</p>
</blockquote>

<p>We really should have used NNCP! 😄</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23UUCP">#UUCP</a></p> 

<https://alexschroeder.ch/view/2024-06-30-nncp>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-30, from: Miguel de Icaza Mastondon feed)

<p>Always has been.gif</p> 

<https://mastodon.social/@Migueldeicaza/112706746060599896>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-30, from: Miguel de Icaza Mastondon feed)

<p>I am irrationally excited about having an API for building user-level file systems.<br /><a href="https://mastodon.tz.is/@khaost/112692784808334666" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">mastodon.tz.is/@khaost/1126927</span><span class="invisible">84808334666</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112706552567892364>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

<a href="https://imgs.scripting.com/2024/06/30/threadsActivity.png">This is how much</a> of the activity on <a href="https://www.threads.net/@davew/post/C80thldsb0m">Threads</a>, for me at least, comes from the fediverse. 

<http://scripting.com/2024/06/30.html#a160219>

---

## I Bought 5 Broken GAMEBOY Games on eBay | How Many Can I FIX?

date: 2024-06-30, from: Tilde.news

<p><a href="https://tilde.news/s/5jhr9t/i_bought_5_broken_gameboy_games_on_ebay_how">Comments</a></p> 

<https://www.youtube.com/watch?v=Hg21VeFM-_Y>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

There's a new <a href="https://github.com/scripting/opml.org/issues/22#issuecomment-2198599127">version</a> of the <a href="https://browser.blogroll.social/">Blogroll Browser</a> this morning. 

<http://scripting.com/2024/06/30.html#a153245>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-30, from: Miguel de Icaza Mastondon feed)

<p>That and the safe pointer APIs.<br /><a href="https://mastodon.social/@marcoarment/112706163165431458" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">mastodon.social/@marcoarment/1</span><span class="invisible">12706163165431458</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112706204489790458>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/30/podcastLogo.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Today's <a href="http://scripting.com/2024/06/30/myOpenVoicemailToALongtimeFriendAboutTheNYTimes.m4a">podcast</a>, what we need from Biden, and how we need journalism to get out of the way. Biden has a base. He should communicate directly with us. Joe, tell us you saw what we saw. A snake oil salesman. A con man. A loser. A criminal. We heard the tape of him blackmailing the Secretary of State of Georgia. He wanted the military to shoot Black Lives Matter protestors. Did he sell our secrets to Putin and others? He did all kinds of horrible stuff that the press has forgotten to talk about. The biggest problem here isn't Biden's age, though it is a problem, it's the controlling nature of our journalism, and the lack of any oversight. They can't be criticized because all we have are our individual voices, with no organization. We keep paying the price. This podcast is in the form of a voicemail to an old friend, <a href="https://en.wikipedia.org/wiki/Jeff_Jarvis">Jeff Jarvis</a>, who I introduce at the beginning of the podcast. We share the same frustrations, I can see it in his posts on various social media networks. I'd like to elevate our discourse. And in the meantime, imho, it's a pretty good story. <i>10 minutes.</i>  <span class="spOldSchoolEmoji">😄</span> 

<http://scripting.com/2024/06/30.html#a140456>

---

## The Mimo Diaries: Feedback and Directory

date: 2024-06-30, from: Manu - I write blog


                <p>Another quick update for those who are interested on the <a href="http://minimalissimo.com">Minimalissimo</a> side of my digital life. For those who don’t know, at the beginning of 2024 I took charge of Minimalissimo and I’m now curating it, updating it, designing and coding for it, and steering it towards its future. It’s a fun project to work on and I have a ton of ideas but also very little time. It’s a one man show and there’s a lot to do.</p>
<p>Today I pushed live a <a href="https://minimalissimo.com/feedback">feedback page</a> because I have a couple of decisions to take and I don’t want to do it blindly. So if you are a reader of the site I’d really appreciate if you can take a moment and share your thoughts on a few subjects. It shouldn’t take too long, maybe 5 minutes at most.</p>
<p>The other thing I’ve been working on is a new directory that collects in one place links to people and brands that are aligned with the Minimalissimo vision. It’s something that’s incredibly useful for me to have online because it will make the curation of the site easier and that’s huge because curation can be very time consuming.</p>
<figure class="m-o" data-template="with"><div class="m-m"><img class="img" loading="lazy" src="https://manuelmoreale.com/media/pages/thoughts/the-mimo-diaries-feedback-and-directory/1ce9c04ce7-1719754147/directory-1.jpg" style="aspect-ratio:1000 / 667"></div></figure>
<p>The directory is ready form a technical point of view but now I need to add content to it and that will take me some time. I have more than a thousand links to go through and my hope is to have it live before the end of the summer. We’ll see how it goes.</p>
<figure class="m-o" data-template="with"><div class="m-m"><img class="img" loading="lazy" src="https://manuelmoreale.com/media/pages/thoughts/the-mimo-diaries-feedback-and-directory/17532a993a-1719754155/directory-2.jpg" style="aspect-ratio:1000 / 667"></div></figure>                <hr>
                <p>Thank you for keeping RSS alive. You're awesome.</p>
                <p><a href="mailto:hello@manuelmoreale.com">Email me</a> ::
                <a href="https://manuelmoreale.com/guestbook">Sign my guestbook</a> :: 
                <a href="https://ko-fi.com/manuelmoreale">Support for 1$/month</a> :: 
                <a href="https://manuelmoreale.com/supporters">See my awesome supporters</a> :: 
                <a href="https://buttondown.email/peopleandblogs">Subscribe to People and Blogs</a></p>
             

<https://manuelmoreale.com/@/page/THC8UIlT8t78ALNN>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

Challenging questions: Why don't journalists cover the Biden base? Do they even consider the possibility that there is one? Or do they think they are the base? I thought they weren't supposed to care who the nominees are? Why do they feel entitled to say one candidate should withdraw but not the other? Have any of them even thought this through? 

<http://scripting.com/2024/06/29.html#a024446>

---

## Marcus goes gaga over Gates clip

date: 2024-06-30, from: Gary Marcus blog

It&#8217;s been a long while since I have felt really positive about most of what I have been reading and seeing in AI. Not because I inherently dislike AI, but because I feel like so many folks have been brainwashed by the &#8220;scale is all you need&#8221; notion and &#8220;AGI in 2025&#8221; (or 2027 or 2029) nonsense, none of which seems remotely plausible to me as a cognitive scientist. 

<https://garymarcus.substack.com/p/marcus-goes-gaga-over-gates-clip>

---

## Full Circle Weekly News 372

date: 2024-06-30, from: Full Circle Magazine

<ul>
<li>
<p><a href="https://www.suse.com/c/announcing-suse-linux-enterprise-15-sp6-the-linux-choice-for-security-and-compliance-in-a-reliable-it/">SUSE Linux Enterprise 15 SP6:</a></p>
</li>
<li>
<p><a href="https://kde.org/announcements/plasma/6/6.1.0/">Release of the KDE Plasma 6.1:</a></p>
</li>
<li>
<p><a href="https://forum.palemoon.org/viewtopic.php?t%3D31260%26p%3D252591%23p252591">Pale Moon Browser 33.2.0:</a></p>
</li>
<li>
<p><a href="https://github.com/tinygo-org/tinygo/releases/tag/v0.32.0">Tinygo 0.32:</a></p>
</li>
<li>
<p><a href="https://bkhome.org/news/202406/easyos-scarthgap-series-version-60-released.html">Release of EasyOS 6.0:</a></p>
</li>
<li>
<p><a href="https://lists.gnupg.org/pipermail/gnupg-devel/2024-June/035585.html">A new release of Libgcrypt 1.11.0:</a></p>
</li>
<li>
<p><a href="https://syslinuxos.com/syslinuxos-12-4-released/">Release of SysLinuxOS 12.4:</a></p>
</li>
<li>
<p><a href="https://www.talisman.org/x-debut.shtml">The X Window System is 40 years old:</a></p>
</li>
<li>
<p><a href="https://vivaldi.com/blog/desktop/desktop-releases/vivaldi-on-desktop-6-8/">Release of Vivaldi 6.8:</a></p>
</li>
<li>
<p><a href="https://exectos.eu.org/">The ExectOS open OS:</a></p>
</li>
<li>
<p><a href="https://www.darktable.org/2024/06/darktable-4.8.0-released/">Release of Darktable 4.8.0:</a></p>
</li>
<li>
<p><a href="https://www.reddit.com/r/archlinux/comments/1dm6y7s/amelia_installer_updated/">Amelia 5.8:</a></p>
</li>
</ul>
<p><strong>Credits</strong></p>
<ul>
<li>Host: <a href="https://twitter.com/bardictriad">@bardictriad</a>, <a href="mailto:zaivala@hostux.social">@zaivala</a></li>
<li>Bumper: <a href="https://canonical.com/">Canonical</a></li>
<li>Theme Music: From The Dust - Stardust</li>
<li><a href="https://soundcloud.com/ftdmusic">https://soundcloud.com/ftdmusic</a></li>
<li><a href="https://creativecommons.org/licenses/by/4.0/">CC BY 4.0</a></li>
</ul> 

<https://fullcirclemagazine.org/podcasts/podcast-372/>

