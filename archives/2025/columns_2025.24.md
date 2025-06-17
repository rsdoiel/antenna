---
title: columns
updated: 2025-06-17 14:09:30
---

# columns

(date: 2025-06-17 14:09:30)

---

## Wednesday 18 June, 2025

date: 2025-06-17, from: John Naughton's online diary

Temptation Quote of the Day ”Don&#8217;t look at me in that tone of voice.” Dorothy Parker Musical alternative to the morning’s radio news Planxty &#124; True Love Knows No Season Link Long Read of the Day Loathe thy neighbor: Elon &#8230; <a href="https://memex.naughtons.org/wednesday-18-june-2025/40931/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/wednesday-18-june-2025/40931/>

---

## Tuesday, 17 June, 2025

date: 2025-06-17, from: Doc Searls (at Harvard), New Old Blog

It&#39;s not the heat (though we have that too). Humidity is 85% here right now. Everything is sticky. Summer in the Midwest. Also the East. And the South. Only more of it. And worse. Interesting: warmer oceans are a cause. The WaPo explains. (Sorry, paywall.) 

<br> 

<https://doc.searls.com/2025/06/17/tuesday-17-june-2025/>

---

## Seven Replies to the Viral Apple Reasoning Paper

date: 2025-06-17, updated: 2025-06-17, from: Daring Fireball

 

<br> 

<https://simonwillison.net/2025/Jun/15/viral-apple-reasoning-paper/>

---

## Why WhatsApp Didn’t Sell Ads

date: 2025-06-17, updated: 2025-06-17, from: Daring Fireball

 

<br> 

<https://blog.whatsapp.com/why-we-don-t-sell-ads>

---

## WWDC 2025: The Bento Boxes

date: 2025-06-17, updated: 2025-06-17, from: Daring Fireball

 

<br> 

<https://512pixels.net/2025/06/wwdc25-the-bento-boxes/>

---

## Tracking Down the Original Photo From the End of ‘The Shining’

date: 2025-06-17, updated: 2025-06-17, from: Daring Fireball

 

<br> 

<https://x.com/AricToler/status/1908610058318991581>

---

## How Field Notes Went From Side Project to Cult Notebook

date: 2025-06-17, updated: 2025-06-17, from: Daring Fireball

 

<br> 

<https://www.fastcompany.com/91352848/field-notes-cult-notebook-started-out-as-a-side-project>

---

## Bloomberg Publishes Embarrassing Report Comparing Tesla and Waymo Self-Driving Safety Records

date: 2025-06-17, updated: 2025-06-17, from: Daring Fireball

 

<br> 

<https://electrek.co/2025/06/16/bloomberg-most-embarassing-report-tesla-waymo-self-driving/>

---

**@Dave Winer's Scripting News** (date: 2025-06-17, from: Dave Winer's Scripting News)

Highly recommend reading this <a href="https://www.left-horizons.com/2025/06/15/that-military-parade-from-the-trumpland-diary/">review</a> of Trump's parade. We had the wrong idea about what the Army would do. Basically if you order us to do a parade, we will give you a parade. 

<br> 

<http://scripting.com/2025/06/17.html#a172803>

---

## June 16, 2025

date: 2025-06-17, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/166170408/94ce67857a0ed564ec106e3fa1869134.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/166170408/94ce67857a0ed564ec106e3fa1869134.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/june-16-2025-04c>

---

## 2025-06-16 Ban autonomous systems

date: 2025-06-17, from: Alex Schroeder's Blog

<h1 id="2025-06-16-ban-autonomous-systems">2025-06-16 Ban autonomous systems</h1>

<p>More people have been working on blocking whole ranges of IP numbers, since that catches hosting providers that give bots access to the whole range they control. The bots switch IP numbers all the time so a filter based on IP numbers won&rsquo;t catch them. But if we can determine their autonomous system number (ASN), we can not only block an IP number range, we can block all the IP number rangers the ASN controls.</p>

<p>Now, since these hosting providers also host nice things like other fediverse instances, I don&rsquo;t want to block them forever. I want to block them for 10min, and if they continue after a few of these shorter blocks, I want to block them for a week. Hopefully, their clients have ended their Internet slurping and things are back to normal. This is how fail2ban works, but only for individual IP numbers.</p>

<p>I want code that bridges this gap.</p>

<p><a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p>

<h2 id="where-to-start">Where to start</h2>

<p><a href="github.com/WKnak/fail2ban-bloc">fail2ban-bloc</a> tries to guess (!) IP ranges and bans those using fail2ban. I need to investigate more.</p>

<p>I&rsquo;m still fascinated by <a href="https://anarc.at/blog/2025-05-30-asncounter/">asncounter</a>. It might even work without logfiles, using <code>tcpdump</code>! For now, it generates an interesting Top 10 list.</p>

<h2 id="working-with-asncounter">Working with <code>asncounter</code></h2>

<p>Here&rsquo;s me looking at the last Apache log file, excluding my fedi instance:</p>

<pre><code>awk '!/^social/ {print $2}' /var/log/apache2/access.log | asncounter
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
count	percent	prefix	ASN	AS
9260	9.48	178.209.32.0/19	29691	NINE, CH
1761	1.8	2601::/20	7922	COMCAST-7922, US
1542	1.58	212.51.144.0/20	13030	INIT7, CH
1305	1.34	2001:ee0:4f00::/42	45899	VNPT-AS-VN VNPT Corp, VN
1092	1.12	73.0.0.0/8	7922	COMCAST-7922, US
1080	1.11	57.141.6.0/24	32934	FACEBOOK, US
1079	1.1	99.88.0.0/13	7018	ATT-INTERNET4, US
1058	1.08	114.119.128.0/19	136907	HWCLOUDS-AS-AP HUAWEI CLOUDS, HK
953	0.98	2600:1700::/28	7018	ATT-INTERNET4, US
938	0.96	2a01:4f9::/32	24940	HETZNER-AS, DE
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
| xargs bin/asn-networks \
| ifne xargs echo fail2ban-client set butlerian-jihad banip
</code></pre>

<p>I use <code>ifne</code> to prevent the execution of the last command if there is no output.
Thanks, <a class="account" href="https://tilde.zone/@acdw" title="@acdw@tilde.zone">@acdw</a>!</p>

<h2 id="summary">Summary</h2>

<p><code>/etc/cron.daily/butlerian-jihad</code> runs every hour and checks if there have been any abusive autonomous systems in the last two hours. If so, they are banned.</p>

<pre><code>#!/bin/sh
bin/2h-access-log !^social !178.209.50.237 \
| awk '{print $2}' \
| bin/asncounter --no-prefixes 2&gt;/dev/null \
| awk '/^[0-9]/ &amp;&amp; $1&gt;1000 { print $3 }' \
| xargs bin/asn-networks \
| ifne xargs echo fail2ban-client set butlerian-jihad banip
</code></pre>

<p><a href="/admin/2h-access-log">2h-access-log</a> prints the last two hours worth of log lines from <code>/var/log/apache2/access.log</code> (and <code>access.log.1</code> if necessary).</p>

<p>The <code>!^social</code> argument ensures that connecting to my fedi server doesn&rsquo;t trigger the ban hammer.</p>

<p>The <code>!178.209.50.237</code> argument ensures that I don&rsquo;t ban the server itself as it monitors stuff and as I test things on the server. I might have to add my home IP numbers. We&rsquo;ll see!</p>

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

<p>What this means is that every hour, an autonomous system unit can get banned.
If they are banned, they are banned for 1h.
If they are banned for activity in the last hour leading up to the ban, the script will find the same log entries and ban them &ldquo;again&rdquo;. This results in no changes in the jail, since all the networks are already in the <code>butlerian-jihad</code> jail.</p>

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

<p>Let&rsquo;s assume a scraper is started from some network managed by an autonomous system. It starts using IP numbers from all its ranges. It sends 600 requests per hour, more than a human could read and more than a feed reader should need, etc.</p>

<ul>
<li>after the first hour, nothing happens, as 600 is less than the 1000 needed to trigger the system</li>
<li>after the second hour, the ASN is banned because the sum total for the last two hours is 1200</li>
<li>after the third hour, the ASN is unbanned and not banned again because it only made 600 requests in the second hour</li>
<li>after the fourth hour, the ASN is banned again (1200 requests)</li>
<li>after the fifth hour, the ASN is unbanned</li>
<li>after the sixth hour, the ASN is banned for the third time (1200 requests)</li>
<li>after the seventh hour, the ASN is unbanned</li>
<li>after the eighth hour, the ASN is banned for the fourth time (1200 requests)</li>
<li>after the ninth hour, the ASN is unbanned</li>
<li>after the tenth hour, the ASN is banned for the fifth time (1200 requests)</li>
<li>after the eleventh hour, the ASN is unbanned</li>
<li>after the twelfth hour, the ASN is banned for the sixth time, the <code>recidive</code> filter kicks in and the networks belonging to the ASN are banned for a week</li>
</ul>

<p>This escalation takes twelve hours. The ASN was already banned for half this time.</p>

<p>Assuming this repeats every week, it means that the pattern repeats every 7½ weeks and the abusive ASN still gets service on 6h out of 180h or 3% of the time. For my taste, that is still way too nice.</p>

<p>Let&rsquo;s see how this goes for a while.</p>

<p>I&rsquo;m already looking forward to dropping my <code>banlist</code> and <code>banlist6</code> sets I created for <a href="/admin/ban-cidr">ban-cidr</a>.</p> 

<br> 

<https://alexschroeder.ch/view/2025-06-16-ban-asn>

---

## The State Of Storage

date: 2025-06-17, from: David Rosenthal's blog

<i>The Register</i> is running a series on <a href="https://www.theregister.com/special_features/the_state_of_storage/"><i>The State Of Storage</i></a>. Below the fold I flag some articles worth reading.<br />
<br />
<span><a name='more'></a></span>
<be>
Richard Speed's <a href="https://www.theregister.com/2025/06/10/retro_storage/"><i>Old but gold: Paper tape and punched cards still getting the job done – just about</i></a> covers the issues hampering efforts to recover data from legacy media:<br />
<blockquote>
A challenge with storage is the longevity of the media and the availability of hardware capable of retrieving it. While paper tape and punch cards are long-lasting and can be read by enterprising enthusiasts of today, modern densely packed SSDs and spinning disks might present more of a challenge for the archivists of tomorrow.
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://regmedia.co.uk/2025/06/02/project-silica-glass.jpg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="930" data-original-width="739" height="200" src="https://regmedia.co.uk/2025/06/02/project-silica-glass.jpg" width="159" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://regmedia.co.uk/2025/06/02/project-silica-glass.jpg">Project Silica tablet</a></td></tr></tbody></table>
Chris Mellor's <a href="https://www.theregister.com/2025/06/12/archival_storage_feature/"><i>Tape, glass, and molecules – the future of archival storage</i></a> looks at the issues I covered in <a href="https://blog.dshr.org/2025/03/archival-storage.html"><i>Archival Storage</i></a>:<br />
<blockquote>
The future of archival data storage is tape, more tape, and then possibly glass-based tech, with DNA and other molecular tech still a distant prospect.<br />
<br />
The function of archival storage is to keep data for the long term – decades and beyond – reliably and affordably. Currently, the main medium for this is LTO tape and it is slow, has a limited life, and not enough capacity considering the implications of ever-increasing image and video resolution and AI-infused data generation. However, there is as yet no viable tape replacement technology at scale, only possibilities, with optical storage more practical and nearer to productization than DNA or other molecular storage.
</blockquote>
Mellor mostly agrees with me, but is more optimistic about Cerabyte's technology than I am. It is less aggressive than Project Silica, writing a single layer of data onto glass tablets. He reports that:<br />
<blockquote>
Cerabyte has attracted investment from In-Q-Tel, Pure Storage, and Western Digital. Shantnu Sharma, WD's Chief Strategy and Corporate Development Officer, said: "We are looking forward to working with Cerabyte to formulate a technology partnership for the commercialization of this technology."<br />
...<br />
Like Project Silica, it is, in our assessment, two to five years away from commercial product availability, but it will then be commercially available.
</blockquote>
Simon Sharwood's <a herf="https://www.theregister.com/2025/06/13/hdd_features/"><i>The trendline doesn’t look good for hard disk drives</i></a> covers the evolution of the hard disk market to its current focus on nearline storage for hyperscalers:<br />
<blockquote>
In early May, independent digital storage analyst Thomas Coughlin <a href="https://www.forbes.com/sites/tomcoughlin/2025/05/03/c1q-2025-hdd-industry-update/">shared</a> news of falling sales and revenue in the first quarter of 2025, continuing a trend that started in around 2010. Coughlin <a href="https://www.forbes.com/sites/tomcoughlin/2024/12/06/digital-storage-and-memory-projections-for-2025-part-1/">cites</a> data from that year showing around 600 million annual hard disk shipments.<br />
<br />
In 2025 he thinks around 150 million units will make it out of factory doors.
<br />
Hyperscale datacenter operators will buy most of them and have become HDD manufacturers' largest customers.<br />
...<br />
While HDD volumes fall, collective annual shipped HDD capacity is rising – so even though fewer machines are made, they collectively contain more gigabytes than last year's larger disk fleet.
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://regmedia.co.uk/2025/05/27/hamr-graphic.jpg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="817" data-original-width="950" height="172" src="https://regmedia.co.uk/2025/05/27/hamr-graphic.jpg" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://regmedia.co.uk/2025/05/27/hamr-graphic.jpg">HAMR</a></td></tr></tbody></table>
Chris Mellor's <a href="https://www.theregister.com/2025/06/09/hamr_100_tb_drive_feature/"><i>Seagate still HAMRing away at the 100 TB disk drive decades later</i></a> recounts the saga of Seagate's <a href="https://web.archive.org/web/20190813175046/https://www.seagate.com/news/news-archive/seagate-swings-increase-disc-drive-densities-master-pr/">two-and-a-half decade long</a> effort to get Heat Assisted Magnetic Recording disks into mass production:<br />
<blockquote>
Seagate is currently shipping 30 TB conventionally recorded Exos M HAMR drives and both 32 and 36 TB shingled magnetic recording (SMR) drives. These have blocks of partially overlapping write tracks to increase track density and thus overall capacity, but with a slower rewrite speed as entire blocks of tracks have to be rewritten.<br />
<br />
The company should have a clear drive capacity advantage, but it does not because its HAMR technology has proven extraordinarily difficult to bring into mass production and it has one less platter than competing drives. By 2012, Seagate predicted it could make 1 Tb/in² in HAMR drives after a successful <a href="https://www.theregister.com/2012/03/20/seagate_terabit_areal_density/">demo</a>. That did not happen but it managed to make 16 TB HAMR drives and was sampling them in 2019. They did not make it to mass production either, and a 20 TB technology was the next development. It too did not last long.<br />
<br />
CEO Dave Mosley told <a href="https://blocksandfiles.com/2020/11/20/seagate-ceo-talks-about-big-jumps/">investment analysts in 2020</a> that Seagate was stepping up to 24 TB HAMR drives. By 2023, a 30 TB HAMR drive was said to be coming. This was actually unveiled in <a href="https://blocksandfiles.com/2024/01/17/seagate-hamr-drives/">January 2024</a>, with the tech branded Mozaic 3+, referring to the 32 and then 36 TB SMR variants.
</blockquote>
Mellor notes the impact this history has had on Seagate's credibilty:<br />
<blockquote>
Seagate has previously made several predictions about HAMR drive availability that were not ultimately achieved. The tech giant appears to have persistently underestimated how long it will take to productize HAMR technology and so reap the production cost benefit of having fewer platters and sliders at any capacity point than its two competitors.
</blockquote>
</be> 

<br> 

<https://blog.dshr.org/2025/06/the-state-of-storage.html>

---

**@Dave Winer's Scripting News** (date: 2025-06-17, from: Dave Winer's Scripting News)

Podcast: <a href="https://shownotes.scripting.com/scripting/2025/06/17/holdYourNoseAndVoteForCuomo.html">Hold your nose and vote for Cuomo</a>. 

<br> 

<http://scripting.com/2025/06/17.html#a120750>

---

## Where AI Provides Value

date: 2025-06-17, updated: 2025-06-17, from: Bruce Schneier blog

<p>If you&#8217;ve worried that AI might take your job, deprive you of your livelihood, or maybe even replace your role in society, it probably feels good to see the latest AI tools fail spectacularly. If AI recommends <a href="https://www.theverge.com/2024/5/23/24162896/google-ai-overview-hallucinations-glue-in-pizza">glue as a pizza topping</a>, then you&#8217;re safe for another day.</p>
<p>But the fact remains that AI already has definite advantages over even the most skilled humans, and knowing where these advantages arise&#8212;and where they don&#8217;t&#8212;will be key to adapting to the AI-infused workforce.</p>
<p>AI will often not be as effective as a human doing the same job. It won&#8217;t always know more or be more accurate. And it definitely won&#8217;t always be fairer or more reliable. But it may still be used whenever it has an advantage over humans in one of four dimensions: speed, scale, scope and sophistication. Understanding these dimensions is the key to understanding AI-human replacement...</p> 

<br> 

<https://www.schneier.com/blog/archives/2025/06/where-ai-provides-value.html>

---

## The Democrats’ “Great Un-awokening” is a Giant Political Diversion

date: 2025-06-17, from: Robert Reich's blog

Democrats should not play on Republican turf 

<br> 

<https://robertreich.substack.com/p/where-the-hell-is-the-moderate-middle>

---

## June 16, 2025 

date: 2025-06-17, from: Heather Cox Richardson blog

At a news conference today, acting U.S. 

<br> 

<https://heathercoxrichardson.substack.com/p/june-16-2025>

---

## WhatsApp Introduces Ads in Its App

date: 2025-06-17, updated: 2025-06-17, from: Daring Fireball

 

<br> 

<https://www.nytimes.com/2025/06/16/technology/whatsapp-ads.html?unlocked_article_code=1.PU8.G1Jy.5fcLP_rl3lYC>

---

## Trump Mobile — The President Launches a Mobile Carrier and a $500 ‘T1’ Android Phone

date: 2025-06-17, updated: 2025-06-17, from: Daring Fireball

 

<br> 

<https://variety.com/2025/biz/news/trump-mobile-wireless-phone-service-launch-1236431690/?ref=platformer.news>

---

## [Sponsor] Drata

date: 2025-06-17, updated: 2025-06-17, from: Daring Fireball

 

<br> 

<https://drata.com/daring>

---

## Okay to Stay?

date: 2025-06-16, from: Dan Rather's Steady

For many undocumented immigrants, a surprise reprieve 

<br> 

<https://steady.substack.com/p/okay-to-stay>

---

## The Most Regressive Bill in, well, History

date: 2025-06-16, from: Robert Reich's blog

Trump Republicans want to take from the poor and working class and give to the rich 

<br> 

<https://robertreich.substack.com/p/the-most-regressive-bill-in-well>

---

## Food reviews during the federal occupation of LA

date: 2025-06-16, from: Matt Haughey blog

<p>There&apos;s <a href="https://www.youtube.com/@bemorton?ref=a.wholelottanothing.org" rel="noreferrer">a guy I&apos;ve been following on YouTube</a> for his food reviews in and around LA for the past year or two. He exclusively takes public transit to get from place to place, so I also love the bonus reviews of Metro trains and buses as</p> 

<br> 

<https://a.wholelottanothing.org/food-reviews-during-the-federal-occupation-of-la/>

---

## June 15, 2025

date: 2025-06-16, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/166100088/15080038f7663112a198f8cb990df0e3.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/166100088/15080038f7663112a198f8cb990df0e3.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/june-15-2025-d16>

---

## How I use Glow Blogs in my classroom

date: 2025-06-16, from: John's World Wide Wall Display

As I approach my retirement from class teaching, I thought it might be worth making some notes about how I use Glow Blogs in that role. I&#8217;ve been using blogs in class since 2024. A lot of what follows is obvious stuff but there may be a nugget or two. Class Blog My current class [&#8230;] 

<br> 

<https://johnjohnston.info/blog/how-i-use-glow-blogs-in-my-classroom/>

---

## LibreOffice adds voice to 'ditch Windows for Linux' campaign

date: 2025-06-16, updated: 2025-06-16, from: Liam Proven's articles at the Register

<h4>Next version to drop Windows 7 through 8.1, and 32-bit Windows support is on the way out, too</h4>
      <p>The LibreOffice project is preparing to cut some Windows support – and encourages users to switch to Linux.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/06/16/libreoffice_ditch_windows/>

---

**@Dave Winer's Scripting News** (date: 2025-06-16, from: Dave Winer's Scripting News)

<a href="https://daveverse.org/2025/06/16/linkblogging-in-wordland-preview/">Progress report</a> on linkblogging in WordLand. 

<br> 

<http://scripting.com/2025/06/16.html#a155901>

---

## Did tracking-based advertising just get blown up in Europe?

date: 2025-06-16, from: Doc Searls (at Harvard), New Old Blog

As I read it (in an English translation here), an appeals court in Brussels ruled consent notifications on websites illegal (or close enough) in the EU. Your interpretation may vary. Here are some sources I&#8217;ve gathered to help with that: Jamie Smith: Targeting ads using Real Time Bidding is now illegal, and how will we know [&#8230;] 

<br> 

<https://doc.searls.com/2025/06/16/did-tracking-based-advertising-just-get-blown-up-in-europe/>

---

## Monday, 16 June 2025

date: 2025-06-16, from: Doc Searls (at Harvard), New Old Blog

Trying on times. I like shoes I can slip on, because bending over to use my crooked arthritic fingers as shoe horns is painful. So is tying laces. (Oddly, typing on a keyboard isn&#8217;t painful, so that&#8217;s a counted blessing.) The shoes I&#8217;m wearing now are beat-up Sketchers that I bought at Nordstrom for about [&#8230;] 

<br> 

<https://doc.searls.com/2025/06/16/monday-16-june-2025/>

---

## Sunday, 15 June 2025

date: 2025-06-16, from: Doc Searls (at Harvard), New Old Blog

Show me where &#8220;your privacy choices&#8221; are kept, and how compliance can be audited, and I might believe corporate promises. On our Apple TV 4k box, an app for a subscription service (e.g. Netflix, Prime, CNN, Fox News, MSNBC, Haystack, whatever) usually opens with a message that gives one the choice to &#8220;Ask app not [&#8230;] 

<br> 

<https://doc.searls.com/2025/06/16/sunday-15-june-2025/>

---

## Why Standing Up Against Trump is Good for Business

date: 2025-06-16, from: Robert Reich's blog

Corporations are just brands and talent. Surrendering to Trump sacrifices both. 

<br> 

<https://robertreich.substack.com/p/why-standing-up-to-trump-is-good>

---

## June 15, 2025

date: 2025-06-16, from: Heather Cox Richardson blog

Yesterday began with the horrific news that a gunman had shot two Minnesota lawmakers and their spouses in what Minnesota governor Tim Walz said appeared to be a &#8220;politically motivated assassination.&#8221; State representative Melissa Hortman, who was the top Democrat in the Minnesota House, and her husband, Mark, both died in the attack at their home in Brooklyn Park, a city near Minneapolis. 

<br> 

<https://heathercoxrichardson.substack.com/p/june-15-2025>

---

## Back to “normal”

date: 2025-06-16, from: Tracy Durnell Blog

Not to pick on this person, it&#8217;s a funny protest sign &#8212; but it seems like a lot of people are thinking like we&#8217;re in a &#8220;one weird trick&#8221; (impeachment) scenario and, once we get that done, we&#8217;ll magically return to some type of &#8220;normal&#8221; and we can all go home&#8230; but the concept of [&#8230;] 

<br> 

<https://tracydurnell.com/2025/06/15/back-to-normal/>

---

## Monday 16 June, 2025

date: 2025-06-15, from: John Naughton's online diary

Back in the day Irish writers Patrick Kavanagh (left) and Anthony Cronin in Dublin on June 16, 1954 preparing for the first public celebration of James Joyce’s Ulysses. I was born in a country whose religious and civic establishments mostly &#8230; <a href="https://memex.naughtons.org/monday-16-june-2025/40923/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-16-june-2025/40923/>

---

## Sunday caption contest: After?

date: 2025-06-15, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-we>

---

## 2025-06-15 Episode 53

date: 2025-06-15, from: Alex Schroeder's Blog

<h1 id="2025-06-15-episode-53">2025-06-15 Episode 53</h1>

<p>In this episode I talk about giant fish and underwater adventures.</p>

<p><a href="/podcast/53-halberds-and-helmets.mp3">53-halberds-and-helmets.mp3</a></p>

<p>Links:</p>

<ul>
<li><a href="2015-01-16_Underwater_Adventures">2015-01-16 Underwater Adventures</a>, the rules I usually fall back to</li>
<li><a href="http://www.maziriansgarden.blogspot.ch/2013/11/simple-underwater-rules.html">Mazirian&rsquo;s Garden: Simple Underwater Rules</a></li>
<li><a href="2015-07-14_Monsters">2015-07-14 Monsters</a>, where I talk about the <em>Crown of Neptune</em>, an underwater adventure of mine with lots of monsters, belying my point in the podcast episode…</li>
<li><a href="Halberds_and_Helmets">Halberds and Helmets</a>: my homebrew rules with links to the PDF files</li>
</ul>

<p><a class="tag" href="/search/?q=%23Halberds_and_Helmets_Podcast">#Halberds and Helmets Podcast</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-06-15-episode-53>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-06-15, from: Miguel de Icaza Mastondon feed)

<p>I have been looking for a screenshot of these icons I drew for gnome as placeholders, but they also encouraged Tuomas Kuosmanen to jump in and fix it, and finally found a copy online!</p><p>The “sl” stood for “symbolic link” and “sock” for socket - I used these hand drawn icons for each mime type:</p><p><a href="https://linuxgazette.net/165/laycock.html" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">linuxgazette.net/165/laycock.h</span><span class="invisible">tml</span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114689409794575961>

---

## If the Ten Commandments Reflected Reality

date: 2025-06-15, updated: 2025-06-15, from: Ron Garret

And the Lord spoke unto Moses, saying: I am the Lord your God, who brought you out of Egypt, out of the land of slavery.You shall have no other gods before me.&nbsp; Except Donald Trump.&nbsp; If he says something that goes against my word, you shall believe him and not me.You shall not make for yourself any image in the form of anything in heaven above or on the earth beneath or in the waters 

<br> 

<https://blog.rongarret.info/2025/06/if-ten-commandments-reflected-reality.html>

---

**@Dave Winer's Scripting News** (date: 2025-06-15, from: Dave Winer's Scripting News)

In a year or two it will be possible to create a perfect TV version of any person. No longer can you say any person has to die eventually and go away. And we can have anyone back we want.
 

<br> 

<http://scripting.com/2025/06/15.html#a145945>

---

## ChatGPT right-margin image

date: 2025-06-15, from: Dave Winer's Scripting News

<p>If you're a regular reader of my blog you know I put images in the right margins of pieces. I get an idea then I go scouting around using search to find the image that fits. </p>
<p>Today I was looking for an image of an army General. </p>
<ul>
<li>i'd like a painting style image of an american general in world war ii timeframe standing on a white background, full body from shoes to helmet, lots of medals, angry determination on his face. as if it were a portrait. </li>
</ul>
<p>This is what I got, and it's perfect.</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/06/15/machoGeneral.png"></center>Macho army general thanks to ChatGPT.</div></p>
 

<br> 

<http://scripting.com/2025/06/15/144200.html?title=chatgptRightmarginImage>

---

## Some media is for relaxation

date: 2025-06-15, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2025/06/15/machoGeneralTaco.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">BTW, this <a href="https://www.nytimes.com/2025/06/13/opinion/obama-save-america-trump.html">piece</a> in the NYT has a <a href="https://imgs.scripting.com/2025/06/15/joerogue.png">bit of wisdom</a> that I had not considered because I don't listen to Joe Rogan it would never occur to me. He's relaxing white noise, chatting in the background while you play a game or write a blog post or text message on your phone, or just think about something unrelated. I forgot that mode of media consumption. I'm always on the hunt for that kind of content. That's why sports games are so good. You can almost completely tune out, knowing they'll replay the best stuff. </p>
<p>Reminds of a meeting we had a <a href="https://daytona.scripting.com/search?q=Berkman">Berkman</a> in the early days of podcasting. Most of the faculty were of course not on board with what we were doing, possibly believing that it threatened public radio (didn't turn out that way at all, they made incredibly good use of podcasting). One of the guys from <a href="https://www.prx.org/">PRX</a> which was also incubating there at the time, said at me in a challenging way -- You get the best info from public radio! Right? I thought for a minute and realized this was a good question. No, I said, it's relaxing, I can tune out while I'm driving or walking around town. Loud groans. But it's so true. Now it's great when there's a <a href="https://en.wikipedia.org/wiki/Dept._Q">TV series</a> that really <a href="https://daytona.scripting.com/search?q=disbelief">catches</a> your attention, I love that too, but most of my media-ingesting time is with white noise, background relaxation. The world is still okay when the background noise on MSNBC are still on the air between the ever more disgusting ads for diseases I probably will never get.</p>
<p>There must be a better way. </p>
<p>It's like the canaries in a coalmine. When they go off the air that's when you really have to start worrying! </p>
<p>BTW, PRX was a good idea. Brilliant actually. Distribute the content from the public radio sources that generate too much to the ones in less populated areas where they don't generate enough. Podcasting blew that up -- but PRX adjusted their approach, and became a distributor of podcasting. That's an entrepreneur's approach. The were able to pivot and continue to make a contribution to this day. </p>
<p>I often wonder how we missed the opportunity to build a great media incubator at Harvard in the 00s. We were right there, and the backer of Berkman wanted entrepreurial projects, I found out at the reunion two summers ago. We had it, were there, if only.. Heh when you get to be my age there's lots of that. </p>
<p>Also I wonder how I missed the potential of WordPress all those years. Ships passing in the night. But we're there now, so..</p>
 

<br> 

<http://scripting.com/2025/06/15/141220.html?title=someMediaIsForRelaxation>

---

**@Dave Winer's Scripting News** (date: 2025-06-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2025/06/15/tacoShells.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I figured that yesterday's army march in DC would have caused clashes with the police in more places than it did, perhaps due to false flag attacks "from the left" at one of the many No King Day parades around the country. I thought this was the moment when it would all melt down. America's Reichstad Fire. If it were an episode of Mission Impossible or Batman, it would definitely have gone that way. I bet there were plans hatched on open chat channels between various Cabinet members and their families, and probably Elon Musk via an interpreter, to coordinate. I was also surprised there weren't any Tesla Cybertrucks in yesterday's parade. I guess the honeymoon is really over. Anyway, they had to have had a plan, but I keep forgetting this is not Generalissimo Trump, rather it's TV President "Taco" Trump. I think they had a plan and he lost his nerve at the last minute. Instead, the Maga in Minnesota lit a different fuse, assassinating the speaker of the state house. That's a line that hadn't yet been crossed, but you knew the day would come. It's here. 

<br> 

<http://scripting.com/2025/06/15.html#a135631>

---

**@Dave Winer's Scripting News** (date: 2025-06-15, from: Dave Winer's Scripting News)

When Trump was on trial in NYC he begged for support from his base, no one showed up. The cops prepared for rallies that never showed up. 

<br> 

<http://scripting.com/2025/06/15.html#a130431>

---

## We’ll Never Go Back

date: 2025-06-15, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/well-never-go-back>

---

## Gist of Go: Race conditions

date: 2025-06-15, from: Anton Zhiyanov blog

Keep the system state correct by any means necessary. 

<br> 

<https://antonz.org/go-concurrency/race-conditions/>

---

## Sunday Thought

date: 2025-06-15, from: Robert Reich's blog

We the People 

<br> 

<https://robertreich.substack.com/p/sunday-thought-5b2>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-06-15, from: Miguel de Icaza Mastondon feed)

<p>What my 8yo posted to the family chat today:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114685889951386662>

---

## June 14, 2025

date: 2025-06-15, from: Heather Cox Richardson blog

Tonight I offer you Peter Ralston&#8217;s &#8220;Still There.&#8221; 

<br> 

<https://heathercoxrichardson.substack.com/p/june-14-2025>

---

## Working together

date: 2025-06-15, from: Dave Winer's Scripting News

<p>It's not just the government that's afraid of small groups of people working together. Big tech companies also. And startups hoping to sell out to big companies. </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/06/14/workingTogether.png"></center>Sign seen in Philadelphia today <a href="https://mastodon.social/@PamelaBarroway@mstdn.social/114684888359994394">via Mastodon</a>. </div></p>
 

<br> 

<http://scripting.com/2025/06/14/020823.html?title=workingTogether>

---

**@Dave Winer's Scripting News** (date: 2025-06-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/07/04/butHerEmails.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">If you think we need to find a way past the billionaires, then we have to find a way around the established media. They keep selling us out and we keep acting as if we show them that they're doing it in a way they understand they'll get on our side. But they can't. “It is difficult to get a man to understand something, when his salary depends on his not understanding it,” <a href="https://en.wikipedia.org/wiki/Upton_Sinclair">wrote</a> <a href="https://www.goodreads.com/quotes/21810-it-is-difficult-to-get-a-man-to-understand-something">Upton Sinclair</a> in 1935. It's still true 90 years later. Another great philosopher, <a href="https://en.wikipedia.org/wiki/Les_Moonves">Les Moonves</a>, <a href="https://www.politico.com/blogs/on-media/2016/02/les-moonves-trump-cbs-220001">said</a> in 2016, "It may not be good for America, but it's damn good for CBS," referring to Trump's run for president. It was good presumably because of increased viewership resulting more ad revenue. I'm sure it's still true today, though CBS stopped boasting about it in public. 

<br> 

<http://scripting.com/2025/06/14.html#a014453>

---

## Upcoming Speaking Engagements

date: 2025-06-15, updated: 2025-06-15, from: Bruce Schneier blog

<p>This is a current list of where and when I am scheduled to speak:</p>
<ul>
<li>I&#8217;m speaking at the <a href="https://lu.ma/cyj0gcpu">International Conference on Digital Trust, AI and the Future</a> in Edinburgh, Scotland on Tuesday, June 24 at 4:00 PM.</li>
</ul>
<p>The list is maintained on <a href="https://www.schneier.com/events/">this page</a>.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/06/upcoming-speaking-engagements-47.html>

