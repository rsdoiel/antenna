---
title: retro computing
updated: 2025-04-04 14:09:47
---

# retro computing

(date: 2025-04-04 14:09:47)

---

## The End of Sierra as We Knew It, Part 1: The Acquisition

date: 2025-04-04, from: Digital Antiquarian

I feel very comfortable working in a company where you can&#8217;t touch anything. &#8212; Walter Forbes At the beginning of 1996, Sierra On-Line was still basking in the success of the previous summer&#8217;s Phantasmagoria, the best-selling game it had ever published. With revenues of $158.1 million and profits of $16 million in 1995, the company [&#8230;] 

<br> 

<https://www.filfre.net/2025/04/the-end-of-sierra-as-we-knew-it-part-1-the-acquisition/>

---

## b.log 2025/04/03 - Politics.

date: 2025-04-03, from: Richard Murray's blog

Politics. 

<br> 

<https://heyrick.eu/blog/index.php?diary=20250403>

---

## b.log 2025/04/02 - Sun!, Cherry blossom, Stew!, McDonald's Nether Flame Sauce, April Fool.

date: 2025-04-02, from: Richard Murray's blog

Sun!, Cherry blossom, Stew!, McDonald's Nether Flame Sauce, April Fool. 

<br> 

<https://heyrick.eu/blog/index.php?diary=20250402>

---

## The April Fools joke that might have got me fired

date: 2025-04-01, from: Old Ventage Computing Research

Everyone should pull one great practical joke in their lifetimes. This one was mine, and I think it's past the statute of limitations. The story is true. Only the names are redacted to protect the guilty.
<p>
My first job out of college was a database programmer, even though my undergraduate degree had nothing to do with computers and my current profession still mostly doesn't. The reason was that the University I worked for couldn't afford competitive wages, but they did offer various fringe benefits, and they were willing to train someone who at least had decent working knowledge. I, as a newly minted graduate of the august University of California system, had decent working knowledge at least of BSD/386 and SunOS, but more importantly also had the glowing recommendation of my predecessor who was being promoted into a new position. I was hired, which was their first mistake.
<p>
<a name='more'></a>
The system I was hired to work on was an HP 9000 K250, one of Hewlett-Packard's big PA-RISC servers. I wish I had a photograph of it, but all I have are a couple bad scans of some bad Polaroids of my office and none of the server room. The server room was downstairs from my office back in the days when server rooms were on-premises, complete with a swipe card lock and a halon system that would give you a few seconds of grace before it flooded everything. The K250 hulked in there where it had recently replaced what I think was an Encore mini of some sort (probably a Multimax, since it was a few years old and the 88K Encores would have been too new for the University), along with the AIX RS/6000s that provided student and faculty shell accounts and E-mail, the bonded <a href="/2022/05/so-long-home-t1-line-hello-hacking-t1.html">T1 lines</a>, some of the terminal servers, the massive Cabletron routers and a lot of the telco stuff. One of the tape reels from the Encore hangs on my wall today as a memento.
<p>
The K250 and the Encore it replaced (as well as the L-Class that later replaced the K250 when I was a consultant) ran an all-singing, all-dancing student information system called CARS. CARS is still around, renamed <a href="https://jenzabar.com/">Jenzabar</a>, though I suspect that many of its underpinnings remain if you look under the table. In those days CARS was a massive overlay that was loaded atop the operating system and database, which when I started were, respectively, HP/UX 10.20 and Informix. (I'm old.) It used Informix tables, screens and stored procedures plus its own text UI libraries to run code written variously as Perform screens, SQL, C-shell scripts and plain old C or ESQL/C. Everything was tracked in RCS using overgrown <tt>Makefile</tt>s. I had the admin side (resource management, financials, attendance trackers, etc.) and my office partner had the academic side (mostly grades and faculty tracking). My job was to write and maintain this code and shortly after to help the University create custom applications in CARS' brand-spanking new web module, which chose the new hotness in scripting languages, i.e., Perl. Fortuitously I had learned Perl in, appropriately enough, a computational linguistics course.
<p>
CARS also managed most of the printers on campus except for the few that the RS/6000s controlled directly. Most of the campus admin printers were HP LaserJet 4 units of some derivation equipped with JetDirect cards for networking. These are great warhorse printers, some of the best laser printers HP ever made. I suspect there were line printers other places, but those printers were largely what existed in the University's offices.
<p>
It turns out that the <tt>READY</tt> message these printers show on their VFD panels is changeable. I don't remember where I read this, probably idly paging through the manual over a lunch break, but initially the only fun things I could think of to do was to have the printer say hi to my boss when she sent jobs to it, stuff like that (whereupon she would tell me to get back to work). Then it dawned on me: because I had access to the printer spools on the K250, and the spool directories were conveniently named the same as their hostnames, I knew where each and every networked LaserJet on campus was. I was young, rash and motivated. This was a hack I just couldn't resist. It would be even better than what had been my favourite joke at my alma mater, where campus services, notable for posting various service suspension notices, posted one April Fools' Day that gravity itself would be suspended to various buildings. I felt sure this hack would eclipse that too.
<p>
The plan on April Fools' Day was to get into work at OMG early o'clock and iterate over every entry in the spool, sending it a sequence that would change the <tt>READY</tt> message to <tt>INSERT 5 CENTS</tt>. This would cause every networked LaserJet on campus to appear to ask for a nickel before you printed anything. The script was very simple (this is the actual script, I saved it):
<p>
<div class="tx"><pre>
#!/bin/csh -f

cd /opt/carsi/spool
foreach i (*)
        echo '^[%-12345X@PJL RDYMSG DISPLAY="INSERT 5 CENTS"' | netto $i 9100
end
</pre></div>
<p>
The <tt>^[</tt> was a literal ASCII 27 ESCape character, and <tt>netto</tt> was a simple <tt>netcat</tt>-like script I had written in these days before <tt>netcat</tt> was widely used. That's it.

Now, let me be clear: the printer was <em>still</em> ready! The effect was merely cosmetic! It would still print if you sent jobs to it! Nevertheless, to complete the effect, this message was sent out on the campus-wide administration mailing list (which I also saved):
<p>
<div class="tx"><pre>
To: xxx@xxx.xxx
Date: xxx, 1 Apr xxxx 05:41:34 -0800 (PST)
Subject: IMPORTANT NOTE ON PRINTER POLICY

Due to the increasing costs of service commitments for campus printers,
all printers on campus will be reprogrammed for pay-per-page service
to defray these mounting expenses, effective immediately.

Most printers will now require a 5 cent deposit per page for printing. This
may be paid on account or through special coin acceptors to be installed
on the unit by technicians through the end of this week. If your office has
not yet established an account, your printer will automatically request you to 
insert 5 cents into the slot per page to be printed. Please check your
printer's LCD [sic] display to see if your printer requires the 5 cents per
page before using your printer.

Additional printers will be retrofitted as soon as possible. Technicians
will be contacting departments with specific details.

All accounts will be maintained on CARS. Do not call the Helpdesk. To
establish or verify your department's printer account, please call me at
xxxx.

Please also direct all questions regarding this new policy to me as well.

We apologise for the inconvenience and hope that the new cost requirement
will not adversely affect your department's productivity.
</pre></div>
<p>
At the end of the day I would reset everything back to <tt>READY</tt>, smile smugly, and continue with my menial existence. That was the plan.
<p>
Having sent this out, I fielded a few anxious calls, who laughed uproariously when they realized, and I reset their printers manually afterwards. The people who knew me, knew I was a practical joker, took note of the date, and sent approving replies. One of the best was sent to me later in the day by intercampus mail, printed on their laser printer, with a nickel taped to it.
<p>
Unfortunately, not everybody on campus knew me, and those who did not not only did <em>not</em> call me, but instead called university administration directly. By 8:30am it was chaos in the main office and this filtered up to the head of HR, who most definitely <em>did</em> know me, and told me I'd better send a retraction before the CFO got in or I was in big trouble. That went wrong also, because my retraction said that campus administration was not considering charging per-page fees when in fact they actually were, so I had to retract it and send a <em>new</em> retraction that didn't call attention to that fact. I also ran the script to reset everything early. Eventually the hubbub finally settled down around noon. Everybody in the office thought it was very funny. Even my boss, who officially disapproved, thought it was somewhat funny.
<p>
The other thing that went wrong, as if all that weren't enough, was that the director of IT &mdash; which is to say, my boss's boss &mdash; was away on vacation when all this took place. (Read E-mail remotely? Who does <em>that</em>?) I compounded this situation with the tactical error of going skiing over the coming weekend and part of the next week, most of which I spent snowplowing down the bunny slopes face first, so that he discovered all the angry E-mail in his box without me around to explain myself. (My office partner remembers him coming in wide-eyed asking, "what did he <em>do</em>??") When I returned, it was icier in the office than it had been on the mountain. The assistant director, who thought it was funny, was in trouble for not putting a lid on it, and I was in really big trouble for doing it in the first place. I was appropriately contrite and made various apologies and was an uncharacteristically model employee for an unnaturally long period of time.
<p>
The Ice Age eventually thawed and the incident was officially dropped except for a "poor judgment" on my next performance review and the satisfaction of what was then considered the best practical joke ever pulled on campus. Indeed, everyone agreed it was much more technically accomplished than the previous award winner, where someone had supposedly gotten it around the grounds that the security guards at the entrance would be charging a nominal admission fee per head. Years later they still said it was legendary.
<p>
I like to think they still do. 

<br> 

<https://oldvcr.blogspot.com/2025/04/the-april-fools-joke-that-might-have.html>

---

## Akamai Will Host kernel.org

date: 2025-03-31, from: Linux Magazine

<p>The organization dedicated to cloud-based solutions has agreed to host kernel.org to deliver long-term stability for the development team.</p> 

<br> 

<http://www.linux-magazine.com/Online/News/Akamai-Will-Host-kernel.org>

---

## EMUF M50734

date: 2025-03-31, from: Hans Otten's Retro blog

Thanks to F.J.Kamerewerd, DL6OE, I have a photo of a EMUF 65XX with a very special CPU, the Mitsubishi M50734. This CPU is from a family of 65C02 cores with enhancements. Around this M50734 the EMUF M50734 is published in MC Magazine 11 1911. See here for the information available. See also:Focal-65 V3D for TIM [&#8230;] 

<br> 

<http://retro.hansotten.nl/emuf-m50734/>

---

## WROCC April 2025 talk on wednesday - Pot Porri

date: 2025-03-31, from: Icon Bar, RISC OS News

The April 2025 WROCC talk is on wednesday and kicks off at 7.45pm on Zoom 

<br> 

<http://www.iconbar.com/comments/rss/news2188.html>

---

## March 2025 News Summary

date: 2025-03-31, from: Icon Bar, RISC OS News

Some things we noticed this month. What did you see? 

<br> 

<http://www.iconbar.com/comments/rss/news2174.html>

