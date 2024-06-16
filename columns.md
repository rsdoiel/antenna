---
title: columns 2024.24
updated: 2024-06-16 13:04:23
---

# columns 2024.24

(date: 2024-06-16 13:04:23)

---

## 2024-06-15 Old tech: UUCP

date: 2024-06-16, from: Alex Schroeder's Blog

<h1 id="2024-06-15-old-tech-uucp">2024-06-15 Old tech: UUCP</h1>

<p><a class="account" href="https://social.sdfeu.org/@lkh" title="@lkh@social.sdfeu.org">@lkh</a>, <a class="account" href="https://dice.camp/@kyonshi" title="@kyonshi@dice.camp">@kyonshi</a> and I have been trying to connect our servers using old tech for quite a while.</p>

<h2 id="uucp">UUCP</h2>

<p>The latest effort has been in connecting them using <em>Unix to Unix copy</em> (UUCP).
The benefit is that once you have that, you can also have <em>remote command execution over UUCP</em> using <code>uux</code> and it is as terrifying as it sounds.</p>

<p>Let&rsquo;s see whether I can reconstruct my setup.</p>

<p>I use Debian.</p>

<p>lkh has a &ldquo;travelling laptop&rdquo; that is mostly offline, but sometimes it&rsquo;s online. That&rsquo;s when he wants to exchange stuff with us.
The laptop is called Dwalin.</p>

<p>My server is Campaign Wiki.</p>

<p>The documentation for peering between news servers via UUCP is available via <code>man 8 send-uucp</code>.</p>

<h3 id="var-spool-uucp-ssh-authorized-keys">/var/spool/uucp/.ssh/authorized_keys</h3>

<p>This allows Dwalin to connect via ssh.</p>

<p>lkh sent me this.</p>

<pre><code># dwalins public key, ssh executes the remote
# uucico and hands over my login:
restrict,command=&quot;/usr/sbin/uucico -u Udwalin -l&quot; ssh-rsa another-long-string-of-stuff uucp@dwalin
</code></pre>

<h3 id="etc-uucp-passwd">/etc/uucp/passwd</h3>

<p>This is where Dwalin&rsquo;s password is stored. This is important because there&rsquo;s no actual Dwalin user on my system.</p>

<p>lkh sent me this.</p>

<pre><code># dwalins login on campaignwiki
Udwalin	some-long-string-of-stuff
</code></pre>

<h3 id="etc-sys">/etc/sys</h3>

<p>I kept the defaults and added Dwalin.</p>

<pre><code># dwalins system entry, no Port or
# credentials are given, since dwalin
# is expected to always call in.
system dwalin
called-login Udwalin
local-send /
local-receive /var/spool/uucppublic
remote-send /
remote-receive /var/spool/uucppublic
time any
forward ANY
protocol i
</code></pre>

<h3 id="etc-uucp-config">/etc/uucp/config</h3>

<p>This is where I set my own node name.</p>

<p>lkh sent me some spool related entries. I&rsquo;m not sure whether I needed them.</p>

<pre><code>nodename campaignwiki

spool     /var/spool/uucp
pubdir    /var/spool/uucppublic
lockdir   /var/spool/uucp/Lock
logfile   /var/spool/uucp/Log     # The UUCP log file
statfile  /var/spool/uucp/Stats   # The UUCP statistics file
debugfile /var/spool/uucp/Debug   # The UUCP debugging file
</code></pre>

<h3 id="testing-it">Testing it</h3>

<p>In our case, lkh&rsquo;s Dwalin is connected to kyonshi&rsquo;s Erebor system and here&rsquo;s me sending a file to Erebor via Dwalin (since I&rsquo;m not connected to Erebor directly):</p>

<pre><code>uucp some-local-file 'dwalin!ereborbbs.duckdns.org!~/'
</code></pre>

<h2 id="news">News</h2>

<p>Yes, we want to exchange news. That means we need to install INN.</p>

<p>Look at the requisites:</p>

<pre><code>perldoc /usr/lib/news/bin/send-uucp.pl
</code></pre>

<h3 id="etc-news-send-uucp-cf">/etc/news/send-uucp.cf</h3>

<p>This define the sites to send news to, how to compress them and how big the batches should be.</p>

<p>Add the following:</p>

<pre><code>dwalin      gzip        1048576
</code></pre>

<h3 id="etc-news-newsfeeds">/etc/news/newsfeeds</h3>

<p>Determine the newsgroups to send to Dwalin:</p>

<pre><code># newsfeed entry for dwalin
dwalin\
    :casa.*,campaignwiki.*,erebor.*\
    :Tf,Wnb,B4096/1024:
</code></pre>

<h3 id="var-lib-news-active">/var/lib/news/active</h3>

<p>Add the new newsgroups. We don&rsquo;t do control messages.</p>

<p>Use the <code>ctlinnd</code> to control the INN daemon.</p>

<pre><code>ctlinnd newgroup erebor.talk y
ctlinnd newgroup erebor.test y
</code></pre>

<h3 id="var-lib-news-newsgroups">/var/lib/news/newsgroups</h3>

<p>Give the new newsgroups a tag line.</p>

<p>Add the following:</p>

<pre><code>erebor.talk             General talk for EreborBBS
erebor.test             Testing connectivity with EreborBBS
</code></pre>

<h3 id="etc-news-readers-conf">/etc/news/readers.conf</h3>

<p>Make sure the users connecting via NNTP can read the new groups, too.
This is not necessary if you read news via the local spool, I think.</p>

<p>Add <code>erebor.*</code> to the &ldquo;readonly&rdquo; section.</p>

<pre><code>auth &quot;foreignokay&quot; {
    auth: &quot;ckpasswd -f /var/lib/news/newsusers&quot;
    default: &quot;&lt;unauthenticated&gt;&quot;
}

access &quot;authenticatedpeople&quot; {
    users: &quot;*&quot;
    newsgroups: &quot;*,!junk,!control,!control.*&quot;
}

access &quot;readonly&quot; {
    users: &quot;&lt;unauthenticated&gt;&quot;
    read: &quot;local.*,campaignwiki.*,casa.*,cosmic.*,erebor.*,rec.*,de.*,alt.*&quot;
}
</code></pre>

<h3 id="testing-it-1">Testing it</h3>

<p>Check <code>uulog</code>. Here&rsquo;s where a news article is put into the queue and a few minutes later, Dwalin calls and the enqueued article is sent:</p>

<pre><code>uux dwalin news (2024-06-15 10:22:01.34 3832004) Queuing rnews (D.000R)
uucico - - (2024-06-15 11:05:07.00 3842142) Incoming call (login Udwalin port stdin)
uucico dwalin - (2024-06-15 11:05:07.05 3842142) Handshake successful (protocol 'i' sending packet/window 1024/16 receiving 1024/16)
uucico dwalin news (2024-06-15 11:05:07.05 3842142) Sending rnews (D.000R) (1548 bytes)
uucico dwalin - (2024-06-15 11:05:07.10 3842142) Protocol 'i' packets: sent 8, resent 0, received 6
uucico dwalin - (2024-06-15 11:05:07.10 3842142) Call complete (0 seconds 1548 bytes 0 bps)
</code></pre>

<h2 id="e-mail">E-Mail</h2>

<p>Oh yes, we do.</p>

<p>Debian comes with Exim. Exim uses Perl&rsquo;s &ldquo;taint&rdquo; mechanism wherein user-supplied values cannot be used for commands. They must be untainted by a lookup. For example, a user supplied sender name like &ldquo;alex&rdquo; is tainted, but if you look it up in <code>/etc/passwd</code> it becomes untainted. Perl keeps track of this for you, if you want to. Once you run into the error, however, you need to figure out where you could be looking up the values you have. Is the local part a user on the system, is the domain a local domain? I spent way too much time on this.</p>

<h3 id="etc-exim4-update-exim4-conf-conf">/etc/exim4/update-exim4.conf.conf</h3>

<p>This is the file generated by <code>update-exim4.conf</code>.</p>

<p>The result of me answering the questions:</p>

<pre><code>dc_eximconfig_configtype='internet'
dc_other_hostnames='alexschroeder.ch;campaignwiki.org;communitywiki.org;transjovian.org'
dc_local_interfaces='127.0.0.1 ; ::1'
dc_readhost=''
dc_relay_domains=''
dc_minimaldns='false'
dc_relay_nets=''
dc_smarthost=''
CFILEMODE='644'
dc_use_split_config='true'
dc_hide_mailname=''
dc_mailname_in_oh='true'
dc_localdelivery='mail_spool'
</code></pre>

<p>Note that the MX records for my domains point to Migadu because that&rsquo;s where SMTP mail should go.</p>

<p>UUCP is what lkh, kyonshi and I use.</p>

<h3 id="etc-exim4-conf-d-router-110-exim4-config-uucp">/etc/exim4/conf.d/router/110_exim4-config_uucp</h3>

<p>A new router for UUCP mail that has to come before <code>200_exim4-config_primary</code>.
If it comes after the primary, then it won&rsquo;t work because the primary router ends with <code>no_more</code>
and as the comment at the end of the file says:</p>

<blockquote>
<p>The <code>no_more</code> above means that all later routers are for domains in the local_domains list</p>
</blockquote>

<p>This router only accepts mail destined for domains listed in the new file <code>/etc/exim4/uucp</code>.</p>

<pre><code>### uucp      
### based on /usr/share/doc/exim4-base/README.Debian.gz

uucp_router:
    debug_print = &quot;R: uucp_router for $local_part@$domain&quot;
    driver=accept
    require_files = +/usr/bin/uux
    domains = wildlsearch;/etc/exim4/uucp
    transport = rsmtp
</code></pre>

<h3 id="etc-exim4-uucp">/etc/exim4/uucp</h3>

<p>This is a file that translates the domain names I use for recipients to UUCP names.</p>

<p>It only works for Dwalin:</p>

<pre><code>dwalin	dwalin
</code></pre>

<p>This means that a mail for <code>lkh@dwalin</code> gets recognised as such (because of the first column) and it will be sent to the UUCP system <code>dwalin</code> (because of the second column).</p>

<p>The UUCP system <code>dwalin</code> is correct because <code>/etc/uucp/sys</code> has a section for <code>system dwalin</code> (see above).</p>

<h3 id="etc-exim-conf-d-transport-40-exim4-config-uucp">/etc/exim/conf.d/transport/40_exim4-config_uucp</h3>

<p>The route above says that the transport to use is <code>rsmtp</code>.</p>

<p>Define this using a new transport config file:</p>

<pre><code>### uucp
### based on /usr/share/doc/exim4-base/README.Debian.gz

rsmtp:
    debug_print = &quot;T: rsmtp for $pipe_addresses&quot;
    driver=pipe
    command = /usr/bin/uux - -r -a${lookup{$sender_address_local_part}lsearch,ret=key{/etc/passwd}} -gC $domain_data!rsmtp
    use_bsmtp
    return_fail_output
    user=uucp
    batch_max = 100
</code></pre>

<p>This was the biggest problem for me. The examples I saw for the <code>-a</code> argument to <code>uux</code> used <code>$sender_address</code>, resulting in an error about the third argument to <code>uux</code> being tainted. You can see these error messages in the exim main log (followed by a log entry showing that exim sends me a en error message):</p>

<pre><code>2024-06-15 00:37:11 1sIFXj-00CzBd-26 &lt;= alex@alexschroeder.ch U=alex P=local S=461
2024-06-15 00:37:11 1sIFXj-00CzBd-26 ** lkh@dwalin R=uucp_router T=rsmtp: Tainted arg 3 for rsmtp transport command: '-aalex@alexschroeder.ch'
2024-06-15 00:37:11 1sIFXj-00CzBh-2Q &lt;= &lt;&gt; R=1sIFXj-00CzBd-26 U=Debian-exim P=local S=1695
2024-06-15 00:37:11 1sIFXj-00CzBd-26 Completed
2024-06-15 00:37:11 1sIFXj-00CzBh-2Q =&gt; alex &lt;alex@alexschroeder.ch&gt; R=local_user T=mail_spool
2024-06-15 00:37:11 1sIFXj-00CzBh-2Q Completed
</code></pre>

<p>I guess the examples I had seen would only work for older Exim versions that didn&rsquo;t do taint checking.</p>

<p>The code I&rsquo;m using means that I&rsquo;m looking up the sender local part (&ldquo;alex&rdquo; or &ldquo;root&rdquo;) in <code>/etc/passwd</code> and if a match is found, the untainted key is returned (instead of the value from the password list).</p>

<p>You can test these expressions on the command-line:</p>

<pre><code>exim -d+all -be '${lookup{$sender_address_local_part}lsearch,ret=key{/etc/passwd}}'
</code></pre>

<h3 id="testing-it-2">Testing it</h3>

<p>As an ordinary user, use <code>mail</code> on the command line to send mail to <code>lkh@dwalin</code>.</p>

<p>Poor <code>lkh</code>. So many test mails.</p>

<p>As <code>root</code>, check the exim log:</p>

<pre><code>root@sibirocobombus:~# tail /var/log/exim4/mainlog
</code></pre>

<p>Here&rsquo;s a mail being enqueued successfully:</p>

<pre><code>2024-06-15 14:08:42 1sISD4-00GIbQ-1a &lt;= alex@alexschroeder.ch U=alex P=local S=513
2024-06-15 14:08:42 1sISD4-00GIbQ-1a =&gt; lkh &lt;lkh@dwalin&gt; R=uucp_router T=rsmtp
2024-06-15 14:08:42 1sISD4-00GIbQ-1a Completed
</code></pre>

<p>Note the <code>uucp_router</code> and the <code>rsmtp</code> transport being used.</p>

<p>Check <code>uulog</code>. Here&rsquo;s where four mails are put into the queue and a few minutes later, Dwalin calls the enqueued messages are sent:</p>

<pre><code>uux dwalin uucp (2024-06-15 09:50:47.05 3824697) Queuing rsmtp (D.000N)
uux dwalin uucp (2024-06-15 09:53:57.11 3824786) Queuing rsmtp (D.000O)
uux dwalin uucp (2024-06-15 09:53:57.14 3824790) Queuing rsmtp (D.000P)
uux dwalin uucp (2024-06-15 09:53:57.16 3824794) Queuing rsmtp (D.000Q)
uucico - - (2024-06-15 10:05:09.11 3828242) Incoming call (login Udwalin port stdin)
uucico dwalin - (2024-06-15 10:05:09.16 3828242) Handshake successful (protocol 'i' sending packet/window 1024/16 receiving 1024/16)
uucico dwalin uucp (2024-06-15 10:05:09.16 3828242) Sending rsmtp (D.000N) (552 bytes)
uucico dwalin uucp (2024-06-15 10:05:09.16 3828242) Sending rsmtp (D.000O) (538 bytes)
uucico dwalin uucp (2024-06-15 10:05:09.16 3828242) Sending rsmtp (D.000P) (530 bytes)
uucico dwalin uucp (2024-06-15 10:05:09.16 3828242) Sending rsmtp (D.000Q) (545 bytes)
uucico dwalin - (2024-06-15 10:05:09.21 3828242) Protocol 'i' packets: sent 14, resent 0, received 10
uucico dwalin - (2024-06-15 10:05:09.23 3828242) Call complete (0 seconds 2165 bytes 0 bps)
</code></pre>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a></p> 

<https://alexschroeder.ch/view/2024-06-15-uucp>

---

## June 15, 2024

date: 2024-06-16, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/june-15-2024-5f1>

---

**@Dave Winer's Scripting News** (date: 2024-06-16, from: Dave Winer's Scripting News)

<a href="https://www.youtube.com/watch?v=7wzEBuC_NtQ">Buffalo Springfield</a>: "You make the rules, you say what's fair." 

<http://scripting.com/2024/06/16.html#a130536>

---

**@Dave Winer's Scripting News** (date: 2024-06-16, from: Dave Winer's Scripting News)

<a href="https://www.youtube.com/watch?v=P6zaCV4niKk">Cat Stevens</a>: "Look at me, I am old, but I'm happy." 

<http://scripting.com/2024/06/16.html#a130150>

---

## The Incomparable Ella Fitzgerald

date: 2024-06-16, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/the-incomparable-ella-fitzgerald>

---

## Imagine RSS as a cover story

date: 2024-06-16, from: Dave Winer's Scripting News

<p><a href="https://cyber.harvard.edu/rss/rss.html">RSS</a> has never been on the cover of a magazine, so you can't say ChatGPT is stealing this from anyone. In fact I'm offended on behalf of ChatGPT that the press has chosen to focus on the bullshit idea that it's plagiarizing journalists. Such narcissists. Everything is about them. It's sick because the ideas journalists write about do not belong to them. If they're doing their jobs, they're reporting facts that exist whether or not they wrote a story about it. A simple example. I may have read in a local paper that the Mets swept the Dodgers in the <a href="https://en.wikipedia.org/wiki/National_League_Championship_Series">NLCS</a>. I don't owe a news org anything because I read the news on their site. The news doesn't belong to them. </p>
<p>The idea that RSS could be on the cover of a magazine isn't so far-fetched, but no one ran a press release and there were no billionaires involved, so they didn't consider it newsworthy I guess. Someday we're going to have to accept that we have to make our own news, in the sense of Scoop Nisker's famous line -- "If you don't like the news go out and make some of your own." So here we go. I asked ChatGPT to imagine a magazine with RSS as the cover story. </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/06/16/imagineTheyPutRSSOnACover.png"></center>Imagine RSS as the cover story.</div></p>
<p>PS: Does the concept of a cover story even exist now that we rarely read printed magazines?</p>
 

<http://scripting.com/2024/06/16/112755.html?title=imagineRssAsACoverStory>

---

**@Dave Winer's Scripting News** (date: 2024-06-16, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/16/rssCover.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I've written a crawler for the network of blogrolls via <a href="https://opml.org/blogroll.opml">connective links</a> in HTML and/or RSS feeds. When I started the project, I had no idea what I'd find. How many blogrolls of what quality. I still don't know the extent of it, but there's a non-trivial number of blogrolls out there. I'm thinking about ways to get a handle on all the feeds in all the blogrolls, and see what we get from that. And I'm beginning to see the utility of FeedLand as a feed operating system, which is what I wanted it to be. It's not just a feed reader. It's able to do things most feed readers don't do, maybe none do. We don't have a good grasp of the depth of the feed products either. I will of course share the results when they are shareable. 

<http://scripting.com/2024/06/16.html#a112207>

---

**@Dave Winer's Scripting News** (date: 2024-06-16, from: Dave Winer's Scripting News)

Three movies I've watched in the last few days: 1. Fight Club. 2. The Matrix. 3. The Devil's Advocate. I had seen all of them before. But they go together. And they're all about the same thing, about choosing to live in a dream, or to live the life you're actually living. All three are excellent movies that I watched straight through from beginning to end, which is really unusual for me these days. 

<http://scripting.com/2024/06/16.html#a112014>

---

**@Dave Winer's Scripting News** (date: 2024-06-16, from: Dave Winer's Scripting News)

<a href="https://www.youtube.com/watch?v=zicGxU5MfwE">This would make a great campaign ad</a>. Remember how lost we were. Understand what you're voting for when you go MAGA and what you could get if you sit this one out or cast a protest vote of some kind. 

<http://scripting.com/2024/06/16.html#a110232>

---

## Sunday caption contest: Taking bump stock

date: 2024-06-16, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/sunday-caption-contest-taking-stock>

---

## June 15, 2024

date: 2024-06-16, from: Heather Cox Richardson blog

I spent so much time in my friend Mike&#8217;s house growing up that I knew his parents as Mama and Papa. His father, Kenneth Edward Nyboe, was born in 1924 in New York City but spent his summers in Maine, where he knew my mother and my aunt and where he met, and secretly married, my aunt&#8217;s friend Helen Bryant just before he shipped overseas to be in the tank corps with Patton&#8217;s Third Army in World War II. 

<https://heathercoxrichardson.substack.com/p/june-15-2024>

---

## Pixar’s ‘Inside Out 2’ Heads for Historic $140–$150M Box Office Opening

date: 2024-06-16, updated: 2024-06-16, from: Daring Fireball

 

<https://www.hollywoodreporter.com/movies/movie-news/inside-out-2-box-office-historic-pixar-opening-1235923598/>

---

## Japan Enacts Law to Mandate Third-Party App Stores, and You’ll Never Guess Which Class of Devices Aren’t Included

date: 2024-06-16, updated: 2024-06-16, from: Daring Fireball

 

<https://english.kyodonews.net/news/2024/06/bc2d7f45d456-japan-enacts-law-to-curb-apple-googles-app-dominance.html>

