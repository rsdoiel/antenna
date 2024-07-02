---
title: columns 2024.27
updated: 2024-07-01 18:17:07
---

# columns 2024.27

(date: 2024-07-01 18:17:07)

---

## A Supreme Gift to Donald Trump

date: 2024-07-01, from: Dan Rather's Steady

Effectively, the American president is now a monarch 

<https://steady.substack.com/p/a-supreme-gift-to-donald-trump>

---

## June 30, 2024

date: 2024-07-01, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/june-30-2024-e24>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

Our challenge is to make sure the really interesting stuff happens on the open web, outside the silos. If that happens we can go on. Otherwise we go right back to where we were when Twitter and Facebook dominated. Not a good place. 17 years of stagnation 

<http://scripting.com/2024/07/01.html#a200300>

---

## Jeff Jarvis and Dave in conversation

date: 2024-07-01, from: Dave Winer's Scripting News

<p>I just did an approx 40 minute <a href="http://scripting.com/2024/07/01/jeffJarvisDiscusses.m4a">podcast</a> interview and discussion with <a href="https://en.wikipedia.org/wiki/Jeff_Jarvis">Jeff Jarvis</a>. I know Jeff from the early days of blogging. He was one of the best discussion leaders at BloggerCon. And he's an accomplished author and educator. </p>
<p>We talk about how to organize news for people who are information starved by whatever it is that our news sources are doing, which is really hard to figure out, but in the end (I argue) who cares why, we have a problem to solve, so let's get on with it.</p>
<p>I talk about the blogging at the Dean campaign in 2004, that's how they got around journalism. I'm sure that's where we have to go, put together what we think would be the Biden blog if the campaign was being run by Joe and Nicco, and I'd be on board, so would Jeff, and we'd help Heather Cox Richardson, and amplify anyone who is making sense and supports democracy. </p>
<p>It could be funded by the <a href="http://scripting.com/2016/07/01/1342.html">People's PAC</a>, or something like it. It wouldn't take very much money, it's just a blog. But it would have powerful ideas that cut through the bullshit, and great videos, and we'd organize marches where people show up to help people.</p>
<p>And the campaign would never stop, we'd always be organizing.</p>
<p>This is the discussion I wanted to start. </p>
<p>Hope you enjoy! :-)</p>
<p>PS: Jeff's mike is much better than mine. Gotta work on that. </p>
 

<http://scripting.com/2024/07/01/195344.html?title=jeffJarvisAndDaveInConversation>

---

## Every day

date: 2024-07-01, from: Dave Winer's Scripting News

<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/07/01/everyDay.png"></center>Thanks to NakedJen for this beautiful illustration.</div></p>
 

<http://scripting.com/2024/07/01/194533.html?title=everyDay>

---

## Individual vs AI: Why Personal Matters

date: 2024-07-01, from: Om Malik blog

As generative AI fills our feeds with regurgitated mush, our innate trust in individuals over brands will determine the winners of both attention and revenue. Everyone in media should be racing to become a trusted individual right now. The personal website and the personal newsletter have always been more interesting to me. They’re also more &#8230; 

<https://om.co/2024/07/01/individual-vs-ai-why-personal-matters/>

---

## FCC (Finally) Has a Good Idea

date: 2024-07-01, from: Om Malik blog

FCC Chairwoman Jessica Rosenworcel proposed that the agency require mobile providers to unlock customers’ mobile phones within 60 days of activation. New unlocking rules would allow consumers the freedom to take their existing phones and switch from one mobile wireless service provider to another more easily, as long as the consumer’s phone is compatible with &#8230; 

<https://om.co/2024/07/01/fcc-finally-has-a-good-idea/>

---

## Steered towards wanting

date: 2024-07-01, from: Tracy Durnell Blog

I used to think I was making my taste by reading lots of magazines and watching lots of movies and obsessing over music videos. I was absorbing in many ways an anti–mainstream taste that was nonetheless commodified and codified for me, no less a stooge for a corporate algorithm than young people now&#8230; Which is [&#8230;] 

<https://tracydurnell.com/2024/07/01/steered-towards-wanting/>

---

## The Supreme Court decides, in effect, there will be no Trump trial before the election

date: 2024-07-01, from: Robert Reich's blog

And immunizes a president from wildly illegal actions 

<https://robertreich.substack.com/p/the-supreme-court-decides-in-effect>

---

##  Supreme Court Rules That Presidents Have Absolute Immunity for &#8220;Core Constitutional Powers&#8221; 

date: 2024-07-01, updated: 2024-07-01, from: Jason Kittke's blog

 

<https://kottke.org/24/07/supreme-court-rules-that-presidents-have-absolute-immunity-for-core-constitutional-powers>

---

## 2024-06-30 Connecting the laptop to the server using UUCP

date: 2024-07-01, from: Alex Schroeder's Blog

<h1 id="2024-06-30-connecting-the-laptop-to-the-server-using-uucp">2024-06-30 Connecting the laptop to the server using UUCP</h1>

<p>I recently <a href="2024-06-15-uucp">connected my server to another server via UUCP</a>.
Now I&rsquo;m thinking that perhaps I&rsquo;d like to connect my laptop as another node to it.
I probably don&rsquo;t need it, because I <a href="2024-06-28-nncp">connected the laptop to the server via NNCP</a>.
But still. Perhaps <a class="account" href="https://social.sdfeu.org/@lkh" title="@lkh@social.sdfeu.org">@lkh</a> still wants to do stuff via UUCP.
Perhaps it is the completionist in me.</p>

<p>For reference, see <a href="https://www.bortzmeyer.org/uucp-over-ssh.pdf">UUCP over SSH</a> by <a class="account" href="https://mastodon.gougere.fr/@bortzmeyer" title="@bortzmeyer@mastodon.gougere.fr">@bortzmeyer</a>.
Since we&rsquo;re using SSH, there will be a key pair, and since we&rsquo;re using UUCP, we&rsquo;ll still a username and password.
It&rsquo;s going to be both.</p>

<p>I know, why aren&rsquo;t we using NNCP.</p>

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
The <code>commands</code> line is important because by default only <code>rmail</code> and <code>rnews</code> are allowed but I want to allow <code>rsmtp</code>, too.
The <code>chat</code> script waits for the &ldquo;Password:&rdquo; prompt and then sends it.
Note that this chat script is much shorter than the one used in &ldquo;UUCP over SSH&rdquo;, linked above.
Apparently there&rsquo;s no &ldquo;Login:&rdquo; prompt on my server so I had to change it.</p>

<pre><code>system sibirocobombus
alias campaignwiki
commands rmail rnews rsmtp
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
commands rmail rnews rsmtp
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

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

Every day now feels like another January 6. 

<http://scripting.com/2024/07/01.html#a150053>

---

## Updates 2024/Q2

date: 2024-07-01, from: mrusme blog

Project updates from the current consecutive three-month period, with info on
the current status of my projects and next steps. You might find this
interesting in case you're using any of my open source tools. 

<https://xn--gckvb8fzb.com/updates-2024-q2/>

---

##  Tantalizing speculation: the &#8220;Untitled WB/Legendary/Denis Villeneuve Event Film in IMAX&#8221; now scheduled... 

date: 2024-07-01, updated: 2024-07-01, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044892-tantalizing-speculation-t>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

When talking to ChatGPT think of it as <a href="https://en.wikipedia.org/wiki/Data_(Star_Trek)">Commander Data</a> on Star Trek, who, in an interesting turnabout is a robot played by a human. Oh the humanity. 

<http://scripting.com/2024/07/01.html#a144308>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

The buggy images of ChatGPT perfectly fit the blogger <i>come as you are</i> ethos. We called this <a href="https://www.google.com/search?q=dogma+2000+site%3Ascripting.com">Dogma 2000</a>, the site is gone now, and it's even gone in archive.org. Sad to realize some of the simplest most worthwhile ideas are gone now. 

<http://scripting.com/2024/07/01.html#a143649>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

<a href="https://github.com/scripting/opml.org/issues/22#issuecomment-2200240920">More Blogroll Browser features</a>. Beginnings of a social graph. 

<http://scripting.com/2024/07/01.html#a143217>

---

##  An Excerpt of Sally Rooney&#8217;s Intermezzo 

date: 2024-07-01, updated: 2024-07-01, from: Jason Kittke's blog

 

<https://kottke.org/24/07/an-excerpt-of-sally-rooneys-intermezzo>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/03/13/corectblogroil.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">A new version of <a href="https://browse.blogroll.social/">Blogroll Browser</a>. You can now go directly to the OPML version of a blogroll, and to the HTML page we discovered it in. I know all this must seem strange, hard to figure out what's going on. That's how I feel about it too. But I know there's interesting data here, how people are connected to people. I'm still trying to figure out how to make a browser that engages the mind in that. It can take a long time to figure these things out. I had the basic idea for a blog in 1994, but it wasn't until 1999 that we really had it figured out and implemented for non-techies. This may be like that, or the browser might be just around the corner. 

<http://scripting.com/2024/07/01.html#a125504>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

Another month <a href="https://github.com/scripting/Scripting-News/blob/master/blog/opml/2024/06.opml">in the archive</a>. Time flies when you're having fun! 

<http://scripting.com/2024/07/01.html#a125021>

---

## Model Extraction from Neural Networks

date: 2024-07-01, updated: 2024-06-28, from: Bruce Schneier blog

<p>A <a href="https://eprint.iacr.org/2023/1526">new paper</a>, &#8220;Polynomial Time Cryptanalytic Extraction of Neural Network Models,&#8221; by Adi Shamir and others, uses ideas from differential cryptanalysis to extract the weights inside a neural network using specific queries and their results. This is much more theoretical than practical, but it&#8217;s a really interesting result.</p>
<blockquote><p><b>Abstract:</b></p>
<p>Billions of dollars and countless GPU hours are currently spent on training Deep Neural Networks (DNNs) for a variety of tasks. Thus, it is essential to determine the difficulty of extracting all the parameters of such neural networks when given access to their black-box implementations. Many versions of this problem have been studied over the last 30 years, and the best current attack on ReLU-based deep neural networks was presented at Crypto’20 by Carlini, Jagielski, and Mironov. It resembles a differential chosen plaintext attack on a cryptosystem, which has a secret key embedded in its black-box implementation and requires a polynomial number of queries but an exponential amount of time (as a function of the number of neurons). In this paper, we improve this attack by developing several new techniques that enable us to extract with arbitrarily high precision all the real-valued parameters of a ReLU-based DNN using a polynomial number of queries and a polynomial amount of time. We demonstrate its practical efficiency by applying it to a full-sized neural network for classifying the CIFAR10 dataset, which has 3072 inputs, 8 hidden layers with 256 neurons each, and about 1.2 million neuronal parameters. An attack following the approach by Carlini et al. requires an exhaustive search over 2^256 possibilities. Our attack replaces this with our new techniques, which require only 30 minutes on a 256-core computer...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/07/model-extraction-from-neural-networks.html>

---

## The Corporate Legal Movement

date: 2024-07-01, from: Robert Reich's blog

Who&#8217;s really behind the Supreme Court&#8217;s attack on the so-called &#8220;administrative state.&#8221; 

<https://robertreich.substack.com/p/the-truth-about-the-administrative>

---

## June 30, 2024 

date: 2024-07-01, from: Heather Cox Richardson blog

In addition to his comments about Russia in Ukraine, Trump said something else in Thursday&#8217;s CNN presentation that should be called out for its embrace of one of the darkest moments in U.S. history. In response to a question about what the presidential candidates would say to a Black voter disappointed with racial progress in the United States, President Joe Biden pointed out that, while there was still far to go, more Black-owned businesses were started under his administration than at any other time in U.S. history, that Black unemployment is at a historic low, and that the administration has relieved student debt, invested in historically Black colleges and universities, and is working to provide for childcare costs, all issues that affect Black Americans. 

<https://heathercoxrichardson.substack.com/p/june-30-2024>

---

## Recognizing fascism

date: 2024-07-01, from: Tracy Durnell Blog

(Archive link.) &#8220;Nevertheless, historical priority does not seem to me a sufficient reason to explain why the word fascism became a synecdoche, that is, a word that could be used for different totalitarian movements. This is not because fascism contained in itself, so to speak in their quintessential state, all the elements of any later [&#8230;] 

<https://tracydurnell.com/2024/06/30/recognizing-fascism/>

---

## The Talk Show: ‘Curiously Short Episodes’

date: 2024-07-01, updated: 2024-07-01, from: Daring Fireball

 

<https://daringfireball.net/thetalkshow/2024/06/30/ep-404>

---

## Monday 1 July, 2024

date: 2024-06-30, from: John Naughton's online diary

Patience A phlegmatic mutt, after a visit to the vet. Quote of the Day “The English way is a committee — we are born with a belief in green cloth, clean pens, and twelve men with grey hair.” Walter Bagehot &#8230; <a href="https://memex.naughtons.org/monday-1-july-2024/39589/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-1-july-2024/39589/>

---

## The Future, Present, and Past of News

date: 2024-06-30, from: Doc Searls (at Harvard), New Old Blog

Eleventh in the News Commons series. all experience is an arch wherethro&#8217; Gleams that untravell&#8217;d world whose margin fades For ever and forever when I move. —Alfred, Lord Tennyson, in Ulysses News flows. It starts with what&#8217;s coming up, goes through what&#8217;s happening, and ends up as what&#8217;s kept—if it&#8217;s lucky. Facts take the same route. [&#8230;] 

<https://doc.searls.com/2024/06/30/the-future-present-and-past-of-news/>

---

## Mini 4WD

date: 2024-06-30, from: Dave Rupert blog

<p>The algorithm sucked me into another model craft hobby: Mini 4WD racing (ミニ四駆). A Mini 4WD is a 1:32 scale model that is a mix between slot cars and RC cars. You don’t control these cars with a remote control nor do they drive in an electrified slot, rather you place your racecar in a plastic track with high walls and send them speeding down the track at ~40km/h.</p>
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/2ZZL5i8vOXM?si=ED2YFsLdI9z7BMbG" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
<p>The twist is you don’t know <a href="https://tamiya.com/japan/mini4wd/feature/2019/1206.html">what the track looks like</a> until race day, so you have to be ready to adapt. There might a big jump, moguls, or a tall mountain to climb. Once racers have seen the course, they have some time to make adjustments by balancing engineering choices about weight, power, braking, handling, batteries, downforce, and more. Are you going to make your car lighter and full send it over the tabletops? Or is slow and steady going to win the race? The races are a brief cacophony of slapping plastic and whirring motors but I can feel the electricity of the room through the screen.</p>
<p><img src="https://cdn.daverupert.com/posts/2024/jcjc.jpg" alt="Untitled" /></p>
<p>Where YouTube hooked me was watching custom 4WD Mini builders like <a href="https://www.youtube.com/@azpaca0">アズパカ</a>, <a href="https://www.youtube.com/@Niwakara">にわから</a>, and <a href="https://www.youtube.com/@techyuuta">ユウタ</a>. They are hellbent on making their cars as fast as possible. In Japanese they call it “タイムアタック” (“Time Attack”). For their time attacks, they use the <a href="https://d7z22c0gz59ng.cloudfront.net/cms/japan/mini4wd/topics/feature/2019_12/circuit_1911_2c1_002.jpg">Japan Cup Junior Circuit</a> (JCJC) course; a three lane track with a wave feature and a wicked lane change from the inner lane to the outer lane that will send light or fast cars flying off the course. The standardized course (and video format<sup class="footnote-ref"><a href="#fn1" id="fnref1">1</a></sup>) is where the similarities stop because their cars are anything but conventional.</p>
<p>The videos are all about iteration and experimentation. Testing all kinds of parts and gimmicks like 3D printed chassis, side rollers, battery types, motors, wheels, and downforce options. Sometimes the tweaks are small, sometimes they are radical innovations:</p>
<ul>
<li><a href="https://www.youtube.com/watch?v=P8mXdQ9oW2c">An entirely “blade” flat chassis</a></li>
<li><a href="https://www.youtube.com/watch?v=2rgALusRMAs&amp;t=396s">A chassis with all the weight to one side</a></li>
<li><a href="https://www.youtube.com/watch?v=-o--_xP1xBA">A bendy chassis to bend around corners.</a></li>
<li><a href="https://www.youtube.com/watch?v=HKWx_TMOzvo">A chassis with a motor on each wheel</a></li>
<li><a href="https://www.youtube.com/watch?v=P8mXdQ9oW2c">A chassis with a computer fan in the middle</a></li>
<li><a href="https://www.youtube.com/watch?v=FlLuqw_Bf08">A car with knives</a></li>
<li><a href="https://www.youtube.com/watch?v=S1J8fqEXrv0">A dual-fan chassis that looks like a GPU</a>.</li>
<li>A car with model rocket engines!? <a href="https://www.youtube.com/watch?v=cRpmNh-kOkE">Why not</a>.</li>
</ul>
<p>That sort of raw, no-rules experimentation is refreshing to watch. It looks like dumb fun. A reason to own a 3D printer. They experiments don’t always work and will fail spectacularly, but lessons get learned. And if you watch enough videos, you see them getting faster.</p>
<ul>
<li>A stock car will complete all three laps in about 5 seconds.</li>
<li>Cars they made a year ago will go around in 3 seconds.</li>
<li>Cars they made six months ago, 2 seconds.</li>
<li><a href="https://www.youtube.com/watch?v=Lyoc3my8suY&amp;t=3s">A car from one month ago, 1.63 seconds.</a></li>
</ul>
<p>I’m not sure why Mini 4WD strikes such a chord with me. It could be nostalgia for my RC car days as a ten year old. It could be my penchant for Japanese model making. But I probably know what hooks me the most: this is the flavor of engineering optimization work I like to do. Make it lighter, faster, and able to handle bumps in the road. Websites are of course vastly different than mechanical engineering… but the correlation between weight and speed are enough to <a href="https://web.archive.org/web/20240227130052/https://www.youtube.com/watch?v=alZvGsOVh3o">activate my brain</a>.</p>
<p><img src="https://cdn.daverupert.com/posts/2024/mini4wd.jpg" alt="Untitled" /></p>
<p>So I bought a <a href="https://amzn.to/3W5aHoc">Mini 4WD Starter Pack</a> (and one for my son) to close the loop on my curiosity. They’re only ~$20, so why not. The hitch in the plan is that a beginner track costs $120. It would nice to have an opportunity to run around a complex track without an upfront cost. My hobby shop used to host races and have a track in-store before COVID, but not anymore. Maybe I can provide this as a service to my kids’ friends… yeah… that’s a good justification.</p>
<section class="footnotes">
<ol>
<li id="fn1">
<p>I secretly love the unified video format: a robotic female voice over narrating an engineering process. Don’t mess with success, boys, the formula is working just fine. <a href="#fnref1" class="footnote-backref">↩</a></p>
</li>
</ol>
</section> 

<https://daverupert.com/2024/06/mini-4wd/>

---

## The Personal Internet

date: 2024-06-30, from: Doc Searls (at Harvard), New Old Blog

—is not this: By now we take it for granted. To live your digital life on the Internet, you need accounts. Lots of them. You need one for every website that provides a service, plus your Mac or Windows computers, your Apple or Google-based phones, your home and mobile ISPs. Sure, you can use a [&#8230;] 

<https://doc.searls.com/2024/06/30/the-personal-internet/>

---

## The things we carry

date: 2024-06-30, from: Jonudell blog

For a long time there were only two essential things that I carried everywhere: keys and wallet. Two was a manageable number of objects that I had to remember to put into pockets, and two was a manageable number of pockets to put them in. Then my first phone bumped that number to three. When &#8230; <a href="https://blog.jonudell.net/2024/06/30/the-things-we-carry/" class="more-link">Continue reading <span class="screen-reader-text">The things we carry</span></a> 

<https://blog.jonudell.net/2024/06/30/the-things-we-carry/>

---

## May I have a word with you?

date: 2024-06-30, from: Robert Reich's blog

Friends, I want to try to reassure you about this country. I know that you&#8217;re worried and upset. You have every reason to be. Donald Trump is a vile human being, and he got away with a tsunami of lies Thursday night. Joe Biden didn&#8217;t come across with the vitality he needed to show. 

<https://robertreich.substack.com/p/may-i-have-a-word-with-you>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

<a href="https://imgs.scripting.com/2024/06/30/threadsActivity.png">This is how much</a> of the activity on <a href="https://www.threads.net/@davew/post/C80thldsb0m">Threads</a>, for me at least, comes from the fediverse. 

<http://scripting.com/2024/06/30.html#a160219>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

There's a new <a href="https://github.com/scripting/opml.org/issues/22#issuecomment-2198599127">version</a> of the <a href="https://browser.blogroll.social/">Blogroll Browser</a> this morning. 

<http://scripting.com/2024/06/30.html#a153245>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/30/podcastLogo.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Today's <a href="http://scripting.com/2024/06/30/myOpenVoicemailToALongtimeFriendAboutTheNYTimes.m4a">podcast</a>, what we need from Biden, and how we need journalism to get out of the way. Biden has a base. He should communicate directly with us. Joe, tell us you saw what we saw. A snake oil salesman. A con man. A loser. A criminal. We heard the tape of him blackmailing the Secretary of State of Georgia. He wanted the military to shoot Black Lives Matter protestors. Did he sell our secrets to Putin and others? He did all kinds of horrible stuff that the press has forgotten to talk about. The biggest problem here isn't Biden's age, though it is a problem, it's the controlling nature of our journalism, and the lack of any oversight. They can't be criticized because all we have are our individual voices, with no organization. We keep paying the price. This podcast is in the form of a voicemail to an old friend, <a href="https://en.wikipedia.org/wiki/Jeff_Jarvis">Jeff Jarvis</a>, who I introduce at the beginning of the podcast. We share the same frustrations, I can see it in his posts on various social media networks. I'd like to elevate our discourse. And in the meantime, imho, it's a pretty good story. <i>10 minutes.</i>  <span class="spOldSchoolEmoji">😄</span> 

<http://scripting.com/2024/06/30.html#a140456>

---

## ‘Born in the U.S.A.’

date: 2024-06-30, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/born-in-the-usa>

---

## Sunday caption contest: What?

date: 2024-06-30, from: Robert Reich's blog

And last week's winner 

<https://robertreich.substack.com/p/sunday-caption-contest-what>

---

## June 29, 2024 

date: 2024-06-30, from: Heather Cox Richardson blog

There are many things I would like to write, but I am home, finally, after many months on the road, and it has been a long week. I am going to bed. Tomorrow, I will be out in my kayak in the place where I took this photograph, no matter what the skies decide to throw at me. 

<https://heathercoxrichardson.substack.com/p/june-29-2024>

---

## When the future doesn’t work anymore

date: 2024-06-30, from: Tracy Durnell Blog

 

<https://tracydurnell.com/2024/06/29/when-the-future-doesnt-work-anymore/>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

Challenging questions: Why don't journalists cover the Biden base? Do they even consider the possibility that there is one? Or do they think they are the base? I thought they weren't supposed to care who the nominees are? Why do they feel entitled to say one candidate should withdraw but not the other? Have any of them even thought this through? 

<http://scripting.com/2024/06/29.html#a024446>

