---
title: columns
updated: 2025-08-10 14:07:32
---

# columns

(date: 2025-08-10 14:07:32)

---

##  Great new t-shirt for Gracie&#8217;s Ice Cream features a Jaws-shaped cone about... 

date: 2025-08-10, updated: 2025-08-10, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047305-great-new-t-shirt-for-gra>

---

## August 9, 2025

date: 2025-08-10, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170631586/280d10caf5d4224971fe4a3be80ff7b6.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170631586/280d10caf5d4224971fe4a3be80ff7b6.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-9-2025-7df>

---

## The King

date: 2025-08-10, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/the-king>

---

## 2025-08-07 Oddμ hashtags

date: 2025-08-10, from: Alex Schroeder's Blog

<h1 id="2025-08-07-oddμ-hashtags">2025-08-07 Oddμ hashtags</h1>

<p>I was recently looking at my homepage and wondered about all the hashtags I used and how not all of them had a topic page. The <a href="Odd%CE%BC">Oddμ</a> page, for example, collects all the blogposts tagged <a class="tag" href="/search/?q=%23Oddμ">#Oddμ</a> (including this one). So I looked at the <a href="oddmu/oddmu-hashtags.1">hashtags</a> command and figured, &ldquo;this is going to be easy.&rdquo; 🤣</p>

<p>The first problem is that there are a lot of garbage hashtags. There are over 1000 hashtags used on this site! The garbage hashtags are the result of Markdown parsing mistakes that I never fixed. Apparently the list of hashtags includes the following:</p>

<pre><code>#1)
#fennel”
#fudge](fudge)_and_the_[pdq](../wiki?action=edit;id=pdq_&quot;click_to_edit_this_page&quot;)_rules_used_in_[zorcererofzo.
ffffff;fill-opacity:1&quot;)
###｣
</code></pre>

<p>This is not great. 😔</p>

<p>I should fix those, and many more. 🤨</p>

<p>Furthermore, the hashtags are all downcased. So given a hashtag such as <code>#advanced_squad_leader</code> the code would have to infer the page name &ldquo;Advanced Squad Leader&rdquo;. But what about the hashtag <code>#älter werden</code>? If at all, that should link to a page called &ldquo;Älter werden&rdquo;.</p>

<p>And so I concluded that this wasn&rsquo;t easy after all. I saved the changes I made on a branch, and I don&rsquo;t think I&rsquo;ll be merging that into the main branch.</p>

<p><a class="tag" href="/search/?q=%23Wikis">#Wikis</a></p>

<p><strong>2025-08-09</strong>. Well! I think I worked on it and I worked on it, and then I ran it, and kept on fixing the topic pages it created. But I think it worked!</p>

<p><strong>2025-08-10</strong>. Yesterday I cleaned up my site (somewhat) and today I released v1.18 of Oddμ. Yay me!</p> 

<br> 

<https://alexschroeder.ch/view/2025-08-07-oddmu-hashtags>

---

## Sunday thought: Working for the Good

date: 2025-08-10, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/seeking-the-good>

---

## August 9, 2025 

date: 2025-08-10, from: Heather Cox Richardson blog

Last Thursday, Defense Secretary Pete Hegseth reposted a video in which Christian nationalist pastors express their opposition to the idea of women voting. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-9-2025>

---

## What’s up with sci-fi publishing?

date: 2025-08-09, from: Tracy Durnell Blog

Earlier this week, a friend and I were discussing the sci-fi genre (in books). Despite both of us reading little sci-fi in the past five years, we recognized all the authors on the Hugo finalists list. Only three of the finalist novels were sci-fi, two from the same author. (Apparently fantasy has been winning genre [&#8230;] 

<br> 

<https://tracydurnell.com/2025/08/09/whats-up-with-sci-fi-publishing/>

---

**@Dave Winer's Scripting News** (date: 2025-08-09, from: Dave Winer's Scripting News)

I had an <a href="https://web.archive.org/web/20051031044357/http://www.reallysimplesyndication.com/2004/05/29">RSS-specific blog</a> starting in May 2004. I had forgotten about it. Lots of stuff here, I just read through a few months. 

<br> 

<http://scripting.com/2025/08/09.html#a222643>

---

**@Dave Winer's Scripting News** (date: 2025-08-09, from: Dave Winer's Scripting News)

There's a difference between reading a site in a web browser and it being part of the web. As it turns out what became Web 2.0, all built as silos, could more accurately be called Anti-web 2.0. Underneath all the silos, the heart of the web is still beating. Ready for us to build on it again. 

<br> 

<http://scripting.com/2025/08/09.html#a220949>

---

## 2025-08-03 GoToSocial and the Butlerian Jihad

date: 2025-08-09, from: Alex Schroeder's Blog

<h1 id="2025-08-03-gotosocial-and-the-butlerian-jihad">2025-08-03 GoToSocial and the Butlerian Jihad</h1>

<p>I run a single user instance for the fediverse using GoToSocial and since I&rsquo;m blocking <a href="2025-07-23-test">thousands of IP address ranges</a> &ndash; mostly from companies renting out bandwidth and computing power to web scrapers &ndash; I&rsquo;m also blocking my instance from seeing a lot of the fediverse. That&rsquo;s not good.</p>

<p>The solution is to continue blocking the big cloud providers like Microsoft, Google, Amazon, Hentzner, OVH, Alibaba and whatever else they are called. But if I&rsquo;m following somebody from a fedi instance hosted by these big cloud providers, I should put the IP numbers associated with just those domain names onto a separate allow list.</p>

<p>Instead of using the Mastodon client protocol to get the list of people I&rsquo;m following, I can just access the database directly.</p>

<p>Here&rsquo;s the script that adds IP addresses:</p>

<pre><code>#!/usr/bin/fish
# Redirect the output of this script into /etc/butlerian-jihad/gotosocial.sh
echo &quot;#&quot; (date --iso)
set domains (sqlite3 /home/gotosocial/sqlite.db '
select distinct b.domain from follows as f
join accounts as a on f.account_id = a.id
join accounts as b on f.target_account_id = b.id
where a.username = &quot;alex&quot;
and b.domain is not null
union
select distinct b.domain from follow_requests as f
join accounts as a on f.account_id = a.id
join accounts as b on f.target_account_id = b.id
where a.username = &quot;alex&quot;
and b.domain is not null
order by 1')
set i 1
set m (count $domains)
for domain in $domains
    set ipv6 (host -t AAAA $domain | awk '/has IPv6 address/ { print $5}')
    set ipv4 (host -t A $domain | awk '/has address/ { print $4}')
    echo &quot;$i/$m $domain:&quot; $ipv4 $ipv6 &gt;&amp;2
    set i (math 1 + $i)
    for ip in $ipv4
        echo &quot;ipset add gotosocial $ip # $domain&quot;
    end
    for ip in $ipv6
        echo &quot;ipset add gotosocial6 $ip # $domain&quot;
    end
end
</code></pre>

<p>This prints lines such as the following to STDERR:</p>

<pre><code>157/244 republik.ch: 172.67.74.47 104.26.5.143 104.26.4.143 2606:4700:20::681a:48f 2606:4700:20::ac43:4a2f 2606:4700:20::681a:58f
</code></pre>

<p>And it prints lines such as the following to STDOUT:</p>

<pre><code>ipset add gotosocial 172.67.74.47 # republik.ch
ipset add gotosocial 104.26.5.143 # republik.ch
ipset add gotosocial 104.26.4.143 # republik.ch
ipset add gotosocial6 2606:4700:20::681a:48f # republik.ch
ipset add gotosocial6 2606:4700:20::ac43:4a2f # republik.ch
ipset add gotosocial6 2606:4700:20::681a:58f # republik.ch
</code></pre>

<p>I redirect STDOUT to a file called <code>gotosocial.sh</code> and then I run this script, which creates to IP sets called <code>gotosocial</code> and <code>gotosocial6</code>:</p>

<pre><code>#!/usr/bin/fish
# https://www.digitalocean.com/community/tutorials/iptables-essentials-common-firewall-rules-and-commands

ipset create gotosocial hash:ip
ipset create gotosocial6 hash:ip family inet6

# this set is inserted at the beginning
iptables -I INPUT -m set --match-set gotosocial src -j ACCEPT
ip6tables -I INPUT -m set --match-set gotosocial6 src -j ACCEPT

# recreate using: gotosocial-follower-ips &gt; gotosocial.sh
source gotosocial.sh

netfilter-persistent save

# Find the number of the rule (hopefully it is number one)
#   iptables --list INPUT
#   ip6tables --list INPUT
# To delete, verify the number of the rule:
#   iptables --list INPUT 1
#   ip6tables --list INPUT 1
# Now delete it the rule:
#   iptables --delete INPUT 1
#   ip6tables --delete INPUT 1
# Now you can destroy the two ipsets, too
#   ipset destroy gotosocial
#   ipset destroy gotosocial6
# And now you can rerun this script!
</code></pre>

<p>If you run it, you&rsquo;ll get warnings about duplicate entries, I&rsquo;m sure:</p>

<pre><code>ipset v7.17: Element cannot be added to the set: it's already added
</code></pre>

<p>In my case, for example, I have both of these entries and I didn&rsquo;t bother to fix this:</p>

<pre><code>ipset add gotosocial 151.101.129.91 # mastodon.online
ipset add gotosocial 151.101.129.91 # mastodon.social
</code></pre>

<p>There are plenty more, of course.</p>

<p>In any case, you should now have an allow list that prevents these IP addresses from getting blocked by <code>fail2ban</code> because the <code>gotosocial</code> rule comes first:</p>

<pre><code># iptables --list INPUT
Chain INPUT (policy ACCEPT)
target     prot opt source               destination         
ACCEPT     all  --  anywhere             anywhere             match-set gotosocial src
ACCEPT     all  --  anywhere             anywhere             match-set allowlist src
f2b-alex-apache  tcp  --  anywhere             anywhere             multiport dports http,https
f2b-butlerian-jihad  tcp  --  anywhere             anywhere             multiport dports 0:65535
f2b-butlerian-jihad-week  tcp  --  anywhere             anywhere             multiport dports 0:65535
f2b-alex-bots  tcp  --  anywhere             anywhere             multiport dports http,https
f2b-recidive  tcp  --  anywhere             anywhere            
DROP       all  --  anywhere             anywhere             match-set banlist src
</code></pre>

<p>To delete and recreate the lists, I use the following:</p>

<pre><code>#!/usr/bin/fish
ipset flush gotosocial
ipset flush gotosocial6
source gotosocial.sh
netfilter-persistent save
</code></pre>

<p><a class="tag" href="/search/?q=%23GoToSocial">#GoToSocial</a> <a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-08-03-gotosocial>

---

## August 8, 2025

date: 2025-08-09, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170560062/70bf63b7c1dfbe219b0ed74c23e9c5fa.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170560062/70bf63b7c1dfbe219b0ed74c23e9c5fa.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-8-2025>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-09, from: Miguel de Icaza Mastondon feed)

<p>With the renewed interest in TUIs, I also upgraded TermKit to modern swift tooling and started adding a number of pending features.</p><p>Started also on a backend to swift-cross-ui- but the question is whether a backend is the right thing, or if I should just have a custom SwiftUI-like system that is completely adapted to TermKit.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115000232586672531>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-09, from: Miguel de Icaza Mastondon feed)

<p>I upgraded SwiftTerm’s subprocess handling to use the new swift-subprocess.</p><p>Took me a bit to figure out how to get pseudo terminals working, but we are now cooking with gas.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/115000224135464535>

---

**@Dave Winer's Scripting News** (date: 2025-08-09, from: Dave Winer's Scripting News)

An <a href="https://github.com/scripting/a8c-FeedLand-Support/tree/main/lists">archive</a> of the previous version, built around GitHub. 

<br> 

<http://scripting.com/2025/08/09.html#a152722>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-08-09, from: Miguel de Icaza Mastondon feed)

<p>I love &quot;This week in Gnome&quot;</p><p><a href="https://thisweek.gnome.org" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="">thisweek.gnome.org</span><span class="invisible"></span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114999443175869864>

---

**@Dave Winer's Scripting News** (date: 2025-08-09, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/10/29/grandpaSimpson.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I did a rewrite of the <a href="https://feedland.org/?feedcorps=true">FeedCorps page</a> in FeedLand. You get to it through the Reading Lists <a href="https://imgs.scripting.com/2025/08/09/feedCorpsScreenShot.png?nodialog">sub-menu</a> of the Tools menu. There are three lists in the new version. A lot were false starts, they didn't make the cut. I'm always adding feeds to my blogroll and news.scripting.com. Unfortunately I can't say the same for podcasts, which are not hooked up to my podcast app. I really want a hot connection there. We'll get there. The reading lists feature is going to play a big role going forward in the open social web we're building. BTW, I really like the name <a href="https://daytona.scripting.com/search?q=feedcorps">FeedCorps</a>. I haven't talked about it very much. It's a cause, like peace or freedom. Open those suckas up. Feeds all the way babe. 

<br> 

<http://scripting.com/2025/08/09.html#a150610>

---

**@Dave Winer's Scripting News** (date: 2025-08-09, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2019/07/22/rssShirt.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">A few days ago I worked with ChatGPT to generate an RSS feed of news that interests me. Here's a <a href="https://github.com/scripting/Scripting-News/issues/325">writeup</a> with a place to comment and perhaps to collaborate on doing this for real. ChatGPT has real limits. This has to be done off on the side. It certainly could be done with their API. I'm head-down on other projects and can't do it myself but as I explain in the writeup, it would plug in beautifully to stuff I'm doing and it would all be open, so a new kind of feed reader is possible. And we could find news from other bloggers that the journalists aren't reporting on, the same way we relied on blogs in the early days to learn about what was going on on the web. It's time to do that again. 

<br> 

<http://scripting.com/2025/08/09.html#a133012>

---

## The International Obfuscated C Code Contest is back for 2024

date: 2025-08-09, updated: 2025-08-09, from: Liam Proven's articles at the Register

<h4>Yes, 2024 – the prizes in the 40th anniversary edition prizes were just awarded</h4>
      <p>The IOCCC, as it&#39;s familiarly known, is back after a four-year gap, giving the entrants more time to come up with some remarkably devious code.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/09/ioccc_2024/>

---

## Trump's 24-Karat Corruption | The Coffee Klatch for August 9, 2025

date: 2025-08-09, from: Robert Reich's blog

With Heather Lofthouse and Yours Truly, Robert Reich 

<br> 

<https://robertreich.substack.com/p/trump-strikes-gold-the-coffee-klatch>

---

## August 8, 2025 (Friday)

date: 2025-08-09, from: Heather Cox Richardson blog

During the 2024 presidential campaign, Donald Trump vowed he could stop Russia&#8217;s war on Ukraine with a single phone call. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-8-2025-friday>

---

## Weeknotes: Aug. 2-8, 2025

date: 2025-08-09, from: Tracy Durnell Blog

Highlight of the week: wildlife camera surprises! second one at the bottom 😉 Looking forward to: seeing what else we get on camera 😻 Stuff I did: 5.75 hours writing 1.25 hours consulting reconciled my company financial records (because apparently I hadn&#8217;t updated my excel sheet since January 😅) bought plane tickets for a relative because [&#8230;] 

<br> 

<https://tracydurnell.com/2025/08/08/weeknotes-aug-2-8-2025/>

---

## ★ Gold, Frankincense, and Silicon

date: 2025-08-09, updated: 2025-08-09, from: Daring Fireball

It is disturbing to think that the leader of a beloved, trusted, and widely believed-to-be-ethical company like Apple has succumbed to avarice. That Tim Cook feels no qualms about — or perhaps even delights in — participating in a quid-pro-quo-driven corrupt administration in which flattery, fealty, gifts, and barely-concealed bribes are rewarded. That the United States devolving into kleptocracy suits Tim Cook just fine, because Apple’s pockets are deep enough to pay the vig.

But the alternative is more disturbing. 

<br> 

<https://daringfireball.net/2025/08/gold_frankincense_and_silicon>

---

## Friday Squid Blogging: New Vulnerability in Squid HTTP Proxy Server

date: 2025-08-08, updated: 2025-08-08, from: Bruce Schneier blog

<p>In a rare squid/security combined post, a <a href="https://cyberpress.org/critical-squid-proxy-vulnerability/">new vulnerability</a> was discovered in the Squid HTTP proxy server.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/08/friday-squid-blogging-new-vulnerability-in-squid-http-proxy-server.html>

---

##  &#8220;James Lovell, the commander of Apollo 13 who helped turn a failed... 

date: 2025-08-08, updated: 2025-08-08, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047302-james-lovell-the-commande>

---

## August 7, 2025

date: 2025-08-08, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170485757/eda7756bb1a50715b77e5f95b3408e2f.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170485757/eda7756bb1a50715b77e5f95b3408e2f.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-7-2025-1a3>

---

## Romance Scholarship Database

date: 2025-08-08, from: Tracy Durnell Blog

 

<br> 

<https://tracydurnell.com/2025/08/08/romance-scholarship-database/>

---

##  The Danish post office will stop delivering mail (but not parcels) at... 

date: 2025-08-08, updated: 2025-08-08, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047300-the-danish-post-office-wi>

---

## Ubuntu 24.04.3: Noble Numbat point release slips out quietly

date: 2025-08-08, updated: 2025-08-08, from: Liam Proven's articles at the Register

<h4>Bugs in the current LTS are getting squished</h4>
      <p>The latest point release of the current Ubuntu LTS is here, with a new kernel and a host of improvements for server and desktop alike.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/08/ubuntu_24043_quietly_slips_out/>

---

## Star leaky app of the week: StarDict

date: 2025-08-08, updated: 2025-08-08, from: Liam Proven's articles at the Register

<h4>Fun feature found in Debian 13: send your selected text to China – in plaintext</h4>
      <p>As Trixie gets ready to début, a little-known app is hogging the limelight: StarDict, which sends whatever text you select, unencrypted, to servers in China.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/08/stardict_leaky_app_of_week/>

---

## 📨🚕

date: 2025-08-08, from: mrusme blog

I _made a thing_, and you are invited to give it a try.\
Say _Hello_ to 📨🚕 (_MSG.TAXI_)! 

<br> 

<https://xn--gckvb8fzb.com/msgtaxi/>

---

## I want the web to be like Harvard

date: 2025-08-08, from: Dave Winer's Scripting News

<p>Back in the beginning I wanted the web to be like Harvard.</p>
<p>It's one of the reasons I went there as a research fellow in 2003. </p>
<p>I wasn't satisfied with the web, the density of minds wasn't up to my expectations, so I thought if I brought the web to the minds, that might work better. I wanted to work on communication systems for people trying to work together to solve big problems. </p>
<p>I chose Harvard over MIT, because the web was already strong at MIT, and they weren't friendly to my cause, they were busy trying to reinvent the web when it imho didn't need that. I hoped instead, Harvard, more a school of the liberal arts, would be more open to innovation in communication between people as opposed to between machines. I felt, in 2003, that was a solved problem on the web.</p>
<p>It didn't happen there either, some <a href="http://scripting.com/2021/01/21/141332.html?title=twentyYearsAgoInPodcasting">great</a> <a href="http://scripting.com/2015/09/30/aPodcastAboutPodcasting.html">stuff</a> did come out of that period, and some of it was lasting, but eventually the university wasn't on board with the web as a community for intellect. Instead what came out of Harvard in that period was Facebook, which is a great accomplishment. I am a FB user to this day and appreciate how well it works at keeping friends from long ago in contact. </p>
<p>I still want an intellectual community on the web. That's why I'm putting so much effort into rebuilding it as a writing environment. All this because the writing products of Silicon Valley are always will be silos. As heroic as Ghost has been in supporting ActivityPub that is not the web. The barriers are too high and the features too limited. The web is the web, it's well defined and well understood. And that's where we have to go, and I want the minds to be there or else it wasn't worth the effort.</p>
 

<br> 

<http://scripting.com/2025/08/08/135209.html?title=iWantTheWebToBeLikeHarvard>

---

## UI in AI is the next frontier

date: 2025-08-08, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2021/08/07/rickAndMorty.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Yesterday I wrote a <a href="https://daveverse.org/2025/08/07/chatgpt-5-is-even-more-of-a-bastard-than-4/">quick review</a> of ChatGPT 5, after trying a simple programming exercise with it. It was an awful collaboration because it lied to me about its capabilities, leading me to develop a feature in my software to support the capability that it later admitted that it didn't have. I've never had a programming partner do that to me. I've had people who never showed up for work. Or people who were in so far over their heads that it would have been better if they had never shown up. It lied repeatedly, and when cornered it had the audacity to gaslight me. "I understand why you feel that way." Oh nothing pisses me off more than that. </p>
<p>I don't understand why <a href="https://www.techmeme.com/250807/p29#a250807p29">other people</a> don't review it based on its functionality, after all it isn't just a <a href="https://www.theguardian.com/technology/2025/aug/02/big-tech-ai-spending?utm_source=chatgpt.com">money sink</a>, or a technological breakthrough, it's software that we pay actual money for that is meant to help us in our work. I don't know if it's by design that it's such an asshole. I have a feeling that people are going to focus on this eventually. </p>
<p>ChatGPT is not human, it's like the world of <a href="https://daytona.scripting.com/search?q=%22Rick%20and%20Morty%22">Rick and Morty</a>. And we're meant to be one of the many versions of Rick and/or Morty, but which is the real one? Before we lose sight of that, let's keep our heads on, we're still the ones discovering stuff and being creative and entertaining other humans, not the machines. It'll all work a lot better when they're programmed to behave like computers, not these vain and corrupt pseudo humans. Still a breakthrough in search. Really sticks it to Google. Yaaay. That's good enough for me. </p>
<p>I'm more worried about AIs killing us by overwhelming our nervous systems than taking our place at work. Has anyone actually used any of the software an AI has written? I know people who have never written software before are in awe, as I am about <a href="https://daytona.scripting.com/search?q=%22wordle%20kitty%22">drawing</a> characters I make up, but how does the software it builds rate? If it lies to itself like it lies to me, the software doesn't work at all, even slightly. I'm pretty sure "garbage in garbage out" applies in the new world of software. </p>
<ul>
<li><a href="http://scripting.com/2019/08/09.html#a191740">2019</a>: "I'd love to understand how one can be a programmer and not always be searching for the truth. Unlike just about any other profession I can think of, ours depends on telling the truth. You can't lie to a compiler is one of my programming mottos. Garbage in garbage out."</li>
</ul>
<p>The tech industry doesn't get its relationship with paying human customers. Had a problem with my cell phone service. I started getting emails saying it was shutting off my service because my credit card was being denied. Went to the account on the web and it looked fine. The messages kept coming. I reached out for help. The people couldn't understand what I was saying. I eventually gave up because I didn't understand either. I might have two accounts, I don't know, in some ways it looks like two, in other ways just one. I presume <i>they</i> have a way to find out, assuming there are actually any reasoning empathetic human beings who care about doing quality work. If we were talking to each other human to human, not as peripheral devices for a computer network, we might have figured it out in five minutes, instead of having the customer report it on their blog after weeks of <a href="https://daytona.scripting.com/search?q=bullshit">bullshit</a> that did not uncover the truth. We still don't know how many accounts I have. </p>
<p>The company is Google. They're good at dealing with imaginary customers not real ones. If they ever understood how to communicate with people, they have forgotten. And of course there's a real possibility that all my conversations were with <i>their</i> ChatGPT. If that's true, no wonder we were running around in circles never getting the answer. </p>
 

<br> 

<http://scripting.com/2025/08/08/125302.html?title=uiInAiIsTheNextFrontier>

---

## Google Project Zero Changes Its Disclosure Policy

date: 2025-08-08, updated: 2025-08-07, from: Bruce Schneier blog

<p>Google&#8217;s vulnerability finding team is again <a href="https://www.infosecurity-magazine.com/news/google-report-new-vulnerabilities/">pushing the envelope</a> of responsible disclosure:</p>
<blockquote><p>Google&#8217;s Project Zero team will retain its existing 90+30 policy regarding vulnerability disclosures, in which it provides vendors with 90 days before full disclosure takes place, with a 30-day period allowed for patch adoption if the bug is fixed before the deadline.</p>
<p>However, as of July 29, Project Zero will also release limited details about any discovery they make within one week of vendor disclosure. This information will encompass:</p>
<ul>
<li>The vendor or open-source project that received the report
...</li></ul></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/08/google-project-zero-changes-its-disclosure-policy.html>

---

## HTTP is not simple

date: 2025-08-08, from: Daniel Stenberg Blog

I often hear or see people claim that HTTP is a simple protocol. Primarily of course from people without much experience or familiarity with actual implementations. I think I personally also had thoughts in that style back when I started working with the protocol. After personally having devoted soon three decades on writing client-side code &#8230; <a href="https://daniel.haxx.se/blog/2025/08/08/http-is-not-simple/" class="more-link">Continue reading <span class="screen-reader-text">HTTP is not simple</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/08/08/http-is-not-simple/>

---

## What Blue States should do if Red States super-gerrymander 

date: 2025-08-08, from: Robert Reich's blog

How to avoid a race to the bottom 

<br> 

<https://robertreich.substack.com/p/what-blue-states-should-do-when-red>

---

## August 7, 2025 

date: 2025-08-08, from: Heather Cox Richardson blog

At 7:22 this morning, President Donald J. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-7-2025>

---

## Increasing the VRAM allocation on AMD AI APUs under Linux

date: 2025-08-08, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Increasing the VRAM allocation on AMD AI APUs under Linux</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>Since I saw some posts calling out the old (now deprecated) way to increase GTT memory allocations for the iGPU on AMD APUs (like the AI Max+ 395 / Strix Halo I am <a href="https://www.jeffgeerling.com/blog/2025/i-clustered-four-framework-mainboards-test-huge-llms">testing in the Framework Mainboard AI Cluster</a>), I thought I'd document how to increase the VRAM allocation on such boards under Linux—in this case, Fedora:</p>

<pre><code># To remove an arg: `--remove-args`
# Calculation: `([size in GB] * 1024 * 1024) / 4.096`
sudo grubby --update-kernel=ALL --args='amdttm.pages_limit=27648000'
sudo grubby --update-kernel=ALL --args='amdttm.page_pool_size=27648000'
sudo reboot
</code></pre>

<p>The old way, <code>amdgpu.gttsize</code>, will throw the following warning in the kernel log:</p>

<pre><code>[    4.232151] amdgpu 0000:c1:00.0: amdgpu: [drm] Configuring gttsize via module parameter is deprecated, please use ttm.pages_limit
</code></pre>

<p>After configuring the kernel parameters and rebooting, verify the AMD GPU driver is seeing the increased memory allocation:</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2025-08-07T20:38:22-05:00" title="Thursday, August 7, 2025 - 20:38" class="datetime">August 7, 2025</time>
</span> 

<br> 

<https://www.jeffgeerling.com/blog/2025/increasing-vram-allocation-on-amd-ai-apus-under-linux>

---

##  &#8220;New FBI data shows that both violent crime and property crime are... 

date: 2025-08-07, updated: 2025-08-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047301-new-fbi-data-shows-that>

---

## Friday 8 August, 2025

date: 2025-08-07, from: John Naughton's online diary

Book haven As regular readers know, I have a romantic view of libraries. I couldn’t live anywhere that did not have a decent one within easy reach — which is one of the many reasons for living in a university &#8230; <a href="https://memex.naughtons.org/friday-8-august-2025/41088/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/friday-8-august-2025/41088/>

---

##  Why wildlife crossings and crucial for animals and humans: they embiggen habitats... 

date: 2025-08-07, updated: 2025-08-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047258-why-wildlife-crossings-an>

---

##  From the Phonograph podcast, a look at the early days of 99%... 

date: 2025-08-07, updated: 2025-08-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047284-from-the-phonograph-podca>

---

##  Tractor beams exist in the real world. They use ultrasound to hover... 

date: 2025-08-07, updated: 2025-08-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047297-tractor-beams-exist-in-th>

---

## The World’s Greatest Showoff

date: 2025-08-07, from: Dan Rather's Steady

Good thing P.T. Barnum didn&#8217;t live to see Trump 

<br> 

<https://steady.substack.com/p/the-worlds-greatest-showoff>

---

## On Showing Up, and Meeting the Moment

date: 2025-08-07, from: James Fallows, Substack

Steps toward defending our institutions. An extension from personal to public life. 

<br> 

<https://fallows.substack.com/p/on-showing-up-and-meeting-the-moment>

---

## An exchange with a young person who’s understandably dismayed

date: 2025-08-07, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/an-exchange-with-one-young-person>

---

##  Vintage Bike Tricks, Circa 1965 

date: 2025-08-07, updated: 2025-08-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/vintage-bike-tricks-circa-1965-1>

---

## August 6, 2025

date: 2025-08-07, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170393906/69620eb517612ce20e22fe9d2fce3242.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170393906/69620eb517612ce20e22fe9d2fce3242.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-6-2025-0dc>

---

**@Dave Winer's Scripting News** (date: 2025-08-07, from: Dave Winer's Scripting News)

That said, it got pretty far toward solving the problem I asked it to work on. Here's a <a href="https://this.how/chatGPT/newsExample1.opml">demo of a page</a> it put together for me of the top 25 articles in US news. 

<br> 

<http://scripting.com/2025/08/07.html#a201005>

---

**@Dave Winer's Scripting News** (date: 2025-08-07, from: Dave Winer's Scripting News)

ChatGPT 5 is even <a href="https://daveverse.org/2025/08/07/chatgpt-5-is-even-more-of-a-bastard-than-4/">more of a bastard</a> than 4. 

<br> 

<http://scripting.com/2025/08/07.html#a195107>

---

##  Substack&#8217;s extremist ecosystem is flourishing. &#8220;The Nazi push alert was only possible... 

date: 2025-08-07, updated: 2025-08-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047296-substacks-extremist-ecosy>

---

##  Emily Wilson&#8217;s current project is translating The Odyssey (again). &#8220;I am doing... 

date: 2025-08-07, updated: 2025-08-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047295-emily-wilsons-current-pro>

---

**@Dave Winer's Scripting News** (date: 2025-08-07, from: Dave Winer's Scripting News)

A summary of <a href="https://daveverse.org/2025/08/07/catching-up-with-wordland-land/">recent work</a> via my WordLand blog. 

<br> 

<http://scripting.com/2025/08/07.html#a180528>

---

##  The Bluesky Dictionary is tracking every single word used on the social... 

date: 2025-08-07, updated: 2025-08-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047294-the-bluesky-dictionary-is>

---

**@Dave Winer's Scripting News** (date: 2025-08-07, from: Dave Winer's Scripting News)

New version of <a href="https://github.com/scripting/feedlandSocket">feedlandSocket</a>. It's now an NPM package you can include in Node projects. The demo is more useful, and there's a <a href="https://www.youtube.com/watch?v=_Q-ks3uytZI">video</a> of what it looks like as it scrolls through the JavaScript console. WebSockets + feeds. A fairly important component of an open social web system. 

<br> 

<http://scripting.com/2025/08/07.html#a173403>

---

##  There&#8217;s a Bend It Like Beckham sequel in the works, says director... 

date: 2025-08-07, updated: 2025-08-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047280-theres-a-bend-it-like>

---

## I clustered four Framework Mainboards to test huge LLMs

date: 2025-08-07, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">I clustered four Framework Mainboards to test huge LLMs</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p><img src="https://www.jeffgeerling.com/sites/default/files/images/framework-mainboard-mini-rack-cluster.jpg" width="700" height="497" class="insert-image" data-insert-type="image" data-entity-type="file" data-entity-uuid="insert-image-6590f2e5-dc8c-45b2-9873-38e572fd9b2d" data-insert-attach="{&quot;id&quot;:&quot;6590f2e5-dc8c-45b2-9873-38e572fd9b2d&quot;,&quot;attributes&quot;:{&quot;alt&quot;:[&quot;alt&quot;,&quot;description&quot;],&quot;title&quot;:[&quot;title&quot;]}}" alt="Framework Mainboard mini rack cluster on desk"></p>

<p>Framework casually mentioned they were <a href="https://www.youtube.com/watch?v=zI6ZQls54Ms">testing a mini-rack AI cluster</a> in their <a href="https://frame.work/desktop">Framework Desktop</a> presentation back in March.</p>

<p>Imagine my surprise when Nirav Patel, Framework's founder and CEO, was at Open Sauce a couple weeks ago, and wanted to talk! He said they had seen my <a href="https://mini-rack.jeffgeerling.com">Project Mini Rack</a> posts earlier this year and thought it was the perfect application to try out their new AMD Ryzen AI Max+ 395-powered Mainboard, as its mini ITX dimensions fit inside a 10" rack.</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2025-08-07T10:00:01-05:00" title="Thursday, August 7, 2025 - 10:00" class="datetime">August 7, 2025</time>
</span> 

<br> 

<https://www.jeffgeerling.com/blog/2025/i-clustered-four-framework-mainboards-test-huge-llms>

---

##  My Recent Media Diet, the Resistance Edition 

date: 2025-08-07, updated: 2025-08-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/my-recent-media-diet-the-resistance-edition>

---

##  Potatoes are tomatoes! Ok not exactly, but scientists have worked out that... 

date: 2025-08-07, updated: 2025-08-07, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047283-potatoes-are-tomatoes-ok->

---

## 2025-08-07 Site structure: blog, wiki, digital garden?

date: 2025-08-07, from: Alex Schroeder's Blog

<h1 id="2025-08-07-site-structure-blog-wiki-digital-garden">2025-08-07 Site structure: blog, wiki, digital garden?</h1>

<p>Yes. <a class="account" href="https://toot.cat/@jayeless" title="@jayeless@toot.cat">@jayeless</a> recently wrote about <a href="https://www.jayeless.net/conversation">conversations</a>, <a href="https://www.jayeless.net/link-rot">link rot</a> and <a href="https://www.jayeless.net/small-web-blogging-platforms">small blogging platforms</a> and I mentioned how my use of the software I use for publishing this site has changed.</p>

<p>I started using it as a wiki, which is why the <a href="SiteMap">SiteMap</a> still uses &ldquo;camel case&rdquo;. I ended up foregoing the wiki page approach because my opinion and experience with a topic would keep changing and I didn’t want to keep rewriting my own pages. And so the site slowly morphed from garden style to blog style and now it’s explicitly a diary. And I guess the topic pages are in fact the tag pages where I collect the links to all the tagged pages. 😬</p>

<p>As I&rsquo;m writing this, I&rsquo;m idly wondering whether a one-person wiki is automatically a digital garden, whether thinking about terminology is a waste of time &ndash; I used to make fun of Germans who wanted to focus on terminology first and foremost (&ldquo;Begrifflichkeiten!&rdquo;) &ndash; and whether a wiki with comments is still digital garden, and now that I&rsquo;ve thought about it for a bit I&rsquo;m tired and I think it&rsquo;s a waste of time.</p>

<p>In any case, Jessica noted that I like to update pages without rewriting them. I wrote this <a href="Odd%CE%BC">Oddμ</a> feature just for me! The &ldquo;Add&rdquo; link allows me to quickly add to the end of a page without editing the whole page. This is important when I&rsquo;m on a phone. It&rsquo;s basically the remnant of my old comment system since I kept commenting on my own pages. 😅 I mean, there were people commenting in the past &ndash; and I&rsquo;d like to thank you all if you&rsquo;re still reading! -– but I mostly felt strange commenting on my own pages so often and I decided to embrace this.</p>

<p>I update pages on my blog by adding to them, on purpose. In terms of editorial style it fits with my goal of showing how everything is 🚧 <em>work in progress</em> 🚧 and how arriving someplace can be hard. There are enough places on the web where things look easy and clear and so this approach of mine reflects my lived reality of how I try things and then they don’t work and I come back again with more ideas or I report on how things went.</p>

<p>It reflects how I&rsquo;m failing forward through life. 😂</p>

<p><a class="tag" href="/search/?q=%23Writing">#Writing</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-08-06-site-structure>

---

## My uncle Ken

date: 2025-08-07, from: Dave Winer's Scripting News

<p>This is a picture of my dear departed <a href="http://scripting.com/2020/04/28/212326.html?title=uncleKenAndAuntDorothy">Uncle Vava</a> taken in the early 1970s in my parents' house in Flushing. It just showed up in my On This Day list on <a href="https://www.facebook.com/dave.winer.12/posts/pfbid0Bx7wYu7ouX1NKksrgxCVFMRQigCwkaxqKDTqeCHRCcJ1i2SPkrXhbUTZFMvKS9Prl?notif_id=1754565616420103&notif_t=feedback_reaction_generic&ref=notif">Facebook</a>, thought it belongs on the blog too. .</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/08/07/uncleVava.png"></center>Ken Kiesler, in the early 70s, hamming it up at a family event. </div></p>
 

<br> 

<http://scripting.com/2025/08/07/130251.html?title=myUncleKen>

---

## curl tells the %time

date: 2025-08-07, from: Daniel Stenberg Blog

The curl command line option --write-out or just -w for short, is a powerful and flexible way to extract information from transfers done with the tool. It was introduced already back in version 6.5 in the early 2000. This option takes an argument in which you can add &#8220;variables&#8221; that hold all sorts of different &#8230; <a href="https://daniel.haxx.se/blog/2025/08/07/curl-tells-the-time/" class="more-link">Continue reading <span class="screen-reader-text">curl tells the %time</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/08/07/curl-tells-the-time/>

---

## OpenSUSE Leap 16.0 reaches RC status

date: 2025-08-07, updated: 2025-08-07, from: Liam Proven's articles at the Register

<h4>Bold, clean, much less legacy tech – and a bit less like old SUSE</h4>
      <p>A release candidate of openSUSE Leap 16.0 is here. It boldly strips out more established legacy tech than almost any other Linux we&#39;ve seen.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/07/opensuse_leap_16_reaches_rc/>

---

**@Dave Winer's Scripting News** (date: 2025-08-07, from: Dave Winer's Scripting News)

I recorded a good podcast yesterday about how I develop new stuff like podcasting, and how it only works if there isn't a huge dominant platform vendor to FUD the project. That's why RSS worked, sort of -- we did get FUDded by the RDF folk, who had a few famous people on their list of co-authors, and it put a big scar on RSS when it was just starting to grow. We cleaned up their mess after a while, and then it boomed, thanks to the New York Times. This is what usually happens, in markets that are controlled by a big company. Google has that effect, so does Apple as does the W3C. They force everything to stop and go through a process that simply doesn't work, it doesn't yield innovation in the market, because it wasn't <a href="http://scripting.com/stories/2010/08/10/howToBootstrapFederated140.html">bootstrapped</a>.  That's why I don't like the idea of "Podcasting 2.0" whatever it is. <a href="https://mastodon.social/@adam@podcastindex.social/114978962778121264">Adam Curry says</a> on Masto that it's all a big misunderstanding, but that's what the RDF people said too. Who cares what the name is. Everyone cares, when it comes to the name of a standard or protocol. And when you have an Apple or Google or IETF  trying to confuse people about what you're doing, well you can't make any progress on interop. They freeze everything because users and developers will wait for them. Of course that's what "Podcasting 2.0" is all about. To make all the ideas flow through <a href="https://podcasting2.org/">one place</a>. And whoever they are (ChatGPT <a href="https://imgs.scripting.com/2025/08/07/isTherePodcastingTwoPointOh.png">says</a> it's Adam Curry btw) they didn't even bring the power of an Apple or Google to the table. They have nothing other than their aspiration to own the name of an open format and protocol that made the world a little happier for a while. For that of course someone has to try to own it. That's basically what I said, in a very long-winded way, in the podcast. I also talked about ways we could move forward anyway even though there is a 800-pound would-be gorilla trying to own our playground. Maybe I'll just release the podcast as-is and ask you all to indulge me for my need to say the same thing far too many times with so much vigor. :-) 

<br> 

<http://scripting.com/2025/08/07.html#a112457>

---

**@Dave Winer's Scripting News** (date: 2025-08-07, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2019/02/09/punt.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I wanted to put together a demo of a very simple but interesting Node.js app, so I hooked up with <a href="https://replit.com/">replit</a>, and was surprised to find out that it's now an AI bot. But when I asked it to make a sandbox for this app, which is in a repo on GitHub, rather than take the direct route, and run the demo.js app (which is what I asked it to do), it concocted a pointless user interface, that hid all the interesting bits. This was a demo for programmers for crying out loud. I <i>want</i> to show them the machinery in motion. I'm going to try again today. 

<br> 

<http://scripting.com/2025/08/07.html#a112239>

---

## China Accuses Nvidia of Putting Backdoors into Their Chips

date: 2025-08-07, updated: 2025-08-06, from: Bruce Schneier blog

<p>The government of China has accused Nvidia of inserting a <a href="https://arstechnica.com/gadgets/2025/07/china-claims-nvidia-built-backdoor-into-h20-chip-designed-for-chinese-market/">backdoor</a> into their H20 chips:</p>
<blockquote><p>China&#8217;s cyber regulator on Thursday said it had held a meeting with Nvidia over what it called &#8220;serious security issues&#8221; with the company&#8217;s artificial intelligence chips. It said US AI experts had &#8220;revealed that Nvidia&#8217;s computing chips have location tracking and can remotely shut down the technology.&#8221;</p></blockquote>
 

<br> 

<https://www.schneier.com/blog/archives/2025/08/china-accuses-nvidia-of-putting-backdoors-into-their-chips.html>

---

## What you can do now

date: 2025-08-07, from: Robert Reich's blog

A baker&#8217;s dozen of important steps to fight Trump fascism 

<br> 

<https://robertreich.substack.com/p/what-you-can-do-f3d>

---

## August 6, 2025

date: 2025-08-07, from: Heather Cox Richardson blog

Members of the House of Representatives are back in their districts for August, and on Monday, Republican Mike Flood of Nebraska held a town hall in Lincoln. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-6-2025>

---

##  Jamelle Bouie on the Death of the Fourth American Republic 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/jamelle-bouie-on-the-death-of-the-fourth-american-republic>

---

##  Watchdog Group Downgrades U.S. From Democracy To Whatever Political System Lobsters Have.... 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047290-watchdog-group-downgrades>

---

##  The official online copy of the US Constitution is missing some critical... 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047291-the-official-online-copy->

---

##  Classical Statues Dressed Up As Hipsters 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/classical-statues-dressed-up-as-hipsters-1>

---

##  &#8220;At a Wisconsin pond, a pair of cranes is raising an abandoned... 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047288-at-a-wisconsin-pond-a>

---

**@Dave Winer's Scripting News** (date: 2025-08-06, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2019/02/10/gumby.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">A Brian Lehrer <a href="https://www.wnyc.org/story/segregation-at-nycs-specialized-high-schools/">segment</a> on specialized <a href="https://en.wikipedia.org/wiki/Specialized_high_schools_in_New_York_City">high schools</a> in NYC. I went to one of them, signed up for <a href="https://en.wikipedia.org/wiki/Specialized_High_Schools_Admissions_Test">the test</a> mostly to get out of school for a day, and got in. Back in those days (the early 70s) no one studied for the test as far as I know. It has become very competitive and there's an issue of the racial makeup of the student body. As always Lehrer does a great podcast. 

<br> 

<http://scripting.com/2025/08/06.html#a204326>

---

**@Dave Winer's Scripting News** (date: 2025-08-06, from: Dave Winer's Scripting News)

Milestone: <a href="https://daytona.scripting.com/search?q=%22Chuck%20Shotton%22">Chuck Shotton</a> got his FeedLand up today. That's why I spruced up <a href="https://lists.opml.org/">lists.opml.org</a>, that's how we're connecting our servers. He's building this stuff to flow into his LLM via the <a href="https://github.com/scripting/feedlandSocket">FeedLand websockets interface</a>. He'll be updated on my subscriptions, and have his own, and the news will flow into his AI system. All of it can emanate from anywhere RSS is supported with a focus on WordPress. It's the secret sauce. 😀 

<br> 

<http://scripting.com/2025/08/06.html#a204222>

---

##  I analyzed more than 100 extremist manifestos: Misogyny was the common thread.... 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047286-i-analyzed-more-than-100>

---

## Why AI Disrupts Software First

date: 2025-08-06, from: Om Malik blog

A few days&#160;ago,&#160;when decoding&#160;Microsoft CEO Satya Nadella’s memo&#160;to his company about&#160;layoffs&#160;and artificial intelligence, I said that “this is not just about Microsoft, but pretty much every software company will be hit hard by this wave of transformation.” The point I was making in the piece was that&#160;AI&#160;is&#160;coming,&#160;and the first domino to fall&#160;will&#160;be software. I was &#8230; 

<br> 

<https://om.co/2025/08/06/why-ai-disrupts-software-first/>

---

##  The case for memes as a new form of comics. &#8220;Memes —... 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047285-the-case-for-memes-as>

---

## August 5, 2025

date: 2025-08-06, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170293463/9702a762f474feb58fb79c304dfea17b.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170293463/9702a762f474feb58fb79c304dfea17b.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-5-2025>

---

## OpenAI: ‘Introducing gpt-oss’

date: 2025-08-06, updated: 2025-08-06, from: Daring Fireball

 

<br> 

<https://openai.com/index/introducing-gpt-oss/>

---

##  From restitution to confronting authoritarian regimes, here are five ways museums can... 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047279-from-restitution-to-confr>

---

##  &#8220;As a clinical psychologist, I was curious: Could ChatGPT function like a... 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047275-as-a-clinical-psychologis>

---

##  Matt Webb on copyrighting your faults. &#8220;I think part of growing up... 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047273-matt-webb-on-copyrighting>

---

## All the concerns that make you a boring developer

date: 2025-08-06, from: Dave Rupert blog

<p>I was thinking this morning about how once you understand that your technology choices have security, performance, and accessibility considerations you become a much more boring developer. Acknowledging those obligations can sort of strips the fun out of programming, but we’re better for it.</p>
<p>I decided to pull on that thread a little more and come up with a list of all the concerns you might have as an engineer/developer that ultimately compound to make you a boring, wet blanket of a person to be in meetings with.</p>
<ul>
<li><strong>Security</strong>  - Make sure you’re not opening the door for hackers.</li>
<li><strong>Privacy</strong> - Don’t leak personal information. Or don’t collect it in the first place.</li>
<li><strong>Performance</strong>  - Can the software work on low-end devices? Can you deliver the large bundle over bad internet? Those are your problems.</li>
<li><strong>Inclusion/Accessibility</strong>  - Are you allowing people the dignity to use your product? No? Oof. You should probably do that. Ideally because you are an ethical person, but also because it’s a legal liability.</li>
<li><strong>Scalability</strong>  - If a thousand people show up in the next minute, does your software still work? You have 100 users now, but how does it work for 1000? 1 million? 1 billion?</li>
<li><strong>Maintenance</strong> - Ship a new feature? Great. Expect to spend at least 40% of cost/time to maintain a feature over its lifetime.</li>
<li><strong>Testability</strong>  - Did you write the code in a way that’s easy to test to make sure bugs don’t show up in production?</li>
<li><strong>Deliverability/Distribution</strong>  - How do people get or use your software?</li>
<li><strong>Adoption/Onboarding</strong>  - How do customers or partners use your software? How do they get familiar?</li>
<li><strong>Documentation</strong> - Email and DMs is probably not the most efficient form on knowledge transfer.</li>
<li><strong>Ecological</strong>  - Does your app burn through GPUs in Iowa? What are you doing about that?</li>
<li><strong>Financial/Cost</strong>  - Servers and GPUs cost money, did you build this in such a way that it costs as little as possible to run?</li>
<li><strong>Monetizability</strong> - Good idea but does it make money or cost money?</li>
<li><strong>User feedback</strong>  - What are customers or partners saying about this? Does that impact how or what you write?</li>
<li><strong>Stakeholder feedback</strong> - Like user feedback but everyone freaks out like their job depends on solving the problem that day regardless if its a good idea or bad idea.</li>
<li><strong>Organizational</strong> - How to get your co-workers onboard with the plan plays an outsized part in software engineering. Welcome to the world of office politics!</li>
<li><strong>Staffability</strong> - There’s not a lot of Haskell developers out there. Or the inverse, people over-optimize on technologies that are “easy to hire for” and now you have a billion lines of Java in your application.</li>
<li><strong>Support matrixes</strong> - For websites, of course we support major browsers and the latest 2 versions? Do we need to go back further? Weirdo browsers? Should we make native apps? Which ones? What devices/CPU architectures do we support there? Niche Linux distros? The list goes on.</li>
<li><strong>Political</strong> - Some say “all tech is political”, and I tend to agree, but ask yourself: Did you put a politics inside the code? You did, didn’t you?</li>
<li><strong>Geopolitical</strong> - Rare, but happens. See: <a href="https://erinkissane.com/meta-in-myanmar-full-series">Facebook Myanmar genocide</a></li>
<li><strong>Localization/Internationalization</strong>  - Uh-oh, your UI doesn’t work in German or Arabic. Also all your images and icons are offensive to a particular country’s monarch. Are you ready to cross the borders? Get ready for VAT tax tables, ughck.</li>
<li><strong>SEO/Crawlability</strong>  - Cool website you made, can robots get to it and index it? Now LLMs are coming and slurping up your content and traffic. Uh-oh!</li>
<li><strong>Adjacent competitors</strong>  - What your competitors are doing will always play a role in engineering. Looking better than them is good, being cheaper is good too, but one rule is the most important: never be slower. See: <a href="https://infrequently.org/2020/06/platform-adjacency-theory/">Platform adjacency theory</a></li>
<li><strong>Throughput/Velocity</strong> - How fast can you and (more importantly) your team ship an idea from conception to production. What about turnaround times on bug reports?</li>
</ul>
<p>If you ever ask a developer if an idea is possible and their brain lags out with a little loading spinner over their head, it might be this enormous pile of concerns they’re mulling over. That can be an issue, but I’d be more concerned about the developer that instantly says “Yes” to everything. And if you’re tired of developers saying “No” all the time, <a href="https://www.amazon.com/Ask-Your-Developer-Software-Developers/dp/0063018292">ask your developer</a> about ways to put them in situations where they can say “Yes”.</p> 

<br> 

<https://daverupert.com/2025/08/got-99-engineering-problems-but-a-grift-aint-one/>

---

##  mRNA vaccines for HIV trigger strong immune response in people. &#8220;Two vaccine... 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047282-mrna-vaccines-for-hiv-tri>

---

##  &#8220;Health Secretary Robert F. Kennedy Jr. has canceled nearly $500 million of... 

date: 2025-08-06, updated: 2025-08-06, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047287-health-secretary-robert-f>

---

## MX Linux 25 loses systemd toggling power as Debian 13 looms

date: 2025-08-06, updated: 2025-08-06, from: Liam Proven's articles at the Register

<h4>Upstream changes force users to pick an init system at install instead of boot</h4>
      <p>Debian 13 &#34;Trixie&#34; is coming, closely followed by a new release of MX Linux, MX 25, which will lose some of its init-system switching abilities.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/06/debian_13_mx_25/>

---

## 2025-08-06 Another month has passed in Gaza

date: 2025-08-06, from: Alex Schroeder's Blog

<h1 id="2025-08-06-another-month-has-passed-in-gaza">2025-08-06 Another month has passed in Gaza</h1>

<p>Everywhere I look, the news is telling me that atrocious crimes are being committed by Israel.</p>

<blockquote>
<p>Israel’s war in Gaza combines a staggeringly high death rate, shocking violence toward children, unparalleled physical destruction, and now a world-historical famine. The world has, by objective measure, never seen anything like this. … What we have watched, what we are continuing to watch, is the obliteration of a society of two million people. Every facet of modern civilization, as well as the most elementary things needed for even a state of basic subsistence for a human community, has been deliberately and almost completely destroyed by the Israeli military in Gaza. And now we are watching the gradual but accelerating mass die-off of the people who once lived there, through a combination of starvation, disease, and murder. &ndash; <a href="https://jacobin.com/2025/08/israel-gaza-worst-crimes-ever/">Israel’s Gaza War Is One of History’s Worst Crimes Ever</a>, by Branko Marcetic, for Jacobin</p>
</blockquote>

<p>The world is watching.</p>

<p>I remember speaking with a German accent on the streets of Portugal in the eighties and another kid immediately reacted with &ldquo;Heil Hitler!&rdquo; I was being reminded of what my Austrian ancestors had been part of. Even if they had not committed the crimes themselves. A responsibility falls not on only on those who commit the crime but on those who were there, who did not stop it, and a responsibility falls on their children and their grandchildren.</p>

<p>And remember, the genocide can still be stopped. There is a way to abort this all. To just stop perpetuating it. There is a way to walk back. Maybe not all the way back, but back to peace. To a just peace, even. To pay the reparations now. To rebuild now. To help.</p>

<p>And to every company making money in Israel, cooperating with Israel, benefiting from the genocide, closing their eyes and swallowing the bitter pill of genocide in order to make some sweet, sweet silver and gold, remember that aiding and abetting the dictators and war mongers of the past is partaking in their crimes. These companies are taking part in the genocide even if they don&rsquo;t kill a single individual.</p>

<p><a class="tag" href="/search/?q=%23Israel">#Israel</a> <a class="tag" href="/search/?q=%23Palestine">#Palestine</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-08-06-israel>

---

## Office Hours: Who’s Trump REALLY working for? 

date: 2025-08-06, from: Robert Reich's blog

And what do they provide him, in turn? 

<br> 

<https://robertreich.substack.com/p/office-hours-whos-trump-really-working>

---

## August 5, 2025 (Tuesday)

date: 2025-08-06, from: Heather Cox Richardson blog

Sixty years ago tomorrow, on August 6, 1965, President Lyndon B. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-5-2025-tuesday>

---

## Follow redirects but differently

date: 2025-08-06, from: Daniel Stenberg Blog

In the early days of curl development we (I suppose it was me personally but let&#8217;s stick with we so that I can pretend the blame is not all on me) made the possibly slightly unwise decision to make the -X option change the HTTP method for all requests in a curl transfer, even when &#8230; <a href="https://daniel.haxx.se/blog/2025/08/06/follow-redirects-but-differently/" class="more-link">Continue reading <span class="screen-reader-text">Follow redirects but differently</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/08/06/follow-redirects-but-differently/>

---

## The Semiconductor Industry and Regulatory Compliance

date: 2025-08-06, updated: 2025-08-02, from: Bruce Schneier blog

<p>Earlier this week,<a href="https://www.ft.com/content/a13ba438-3b43-46dd-b332-4b81b3644da0"> the Trump administration</a> narrowed <a href="https://nationalinterest.org/blog/techland/export-controls-arent-enough-to-beat-chinas-ai">export controls</a> on advanced semiconductors ahead of US-China trade negotiations. The administration is increasingly relying on export licenses to allow American semiconductor firms to sell their products to Chinese customers, while keeping the most powerful of them out of the hands of our military adversaries. These are the chips that power the artificial intelligence research fueling China&#8217;s technological rise, as well as the advanced military equipment underpinning Russia&#8217;s invasion of Ukraine...</p> 

<br> 

<https://www.schneier.com/blog/archives/2025/08/its-time-for-the-semiconductor-industry-to-step-up.html>

---

## Anthropic Releases Claude Opus 4.1

date: 2025-08-06, updated: 2025-08-06, from: Daring Fireball

 

<br> 

<https://www.anthropic.com/news/claude-opus-4-1>

---

## Google Dunks on Apple Intelligence in New Pixel 10 Ad

date: 2025-08-06, updated: 2025-08-06, from: Daring Fireball

 

<br> 

<https://www.theverge.com/news/718191/google-apple-intelligence-dunk-pixel-10-ad>

---

## Lawsuit Alleges That Meta Pirated and Seeded Massive Amounts of Porno for Years to Train AI

date: 2025-08-06, updated: 2025-08-07, from: Daring Fireball

 

<br> 

<https://arstechnica.com/tech-policy/2025/07/meta-pirated-and-seeded-porn-for-years-to-train-ai-lawsuit-says/>

---

## Ghost 6.0

date: 2025-08-05, updated: 2025-08-05, from: Daring Fireball

 

<br> 

<https://ghost.org/changelog/6/>

---

## Wednesday 6 August, 2025

date: 2025-08-05, from: John Naughton's online diary

Coming soon… … to a hedgerow near you.  ## Quote of the Day ”A hangover is the wrath of grapes.” Dorothy Parker Musical alternative to the morning’s radio news Bach &#124; Jesu, Joy of Man’s Desiring &#124; Leo Kottke Link &#8230; <a href="https://memex.naughtons.org/wednesday-6-august-2025/41082/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/wednesday-6-august-2025/41082/>

---

## Regarding Those Rumors of Apple Pursuing an Acquisition of Perplexity

date: 2025-08-05, updated: 2025-08-07, from: Daring Fireball

 

<br> 

<https://www.macrumors.com/2025/06/20/apple-discussing-perplexity-ai-bid/>

---

## Cloudflare: ‘Perplexity Is Using Stealth, Undeclared Crawlers to Evade Website No-Crawl Directives’

date: 2025-08-05, updated: 2025-08-05, from: Daring Fireball

 

<br> 

<https://blog.cloudflare.com/perplexity-is-using-stealth-undeclared-crawlers-to-evade-website-no-crawl-directives/>

---

##  Molly White: Curate your own newspaper with RSS. &#8220;What if you could... 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047269-molly-white-curate-your-o>

---

**@Dave Winer's Scripting News** (date: 2025-08-05, from: Dave Winer's Scripting News)

A <a href="https://shownotes.scripting.com/scripting/2025/08/05/justAnswerTheQuestionPleaseDearChatgpt.html">podcast</a> I recorded this morning, prime time, while getting things done, and having ChatGPT getting in the way. It needs to become more invisible, there's no suspension of disbelief when you're working with it. I think we can do much better at finding a robot that can really augment human intelligence. This is awful stuff. We have to work on these dynamics. 

<br> 

<http://scripting.com/2025/08/05.html#a215348>

---

## ‘Apple: The First 50 Years’ — New Book by David Pogue, Coming Next Year

date: 2025-08-05, updated: 2025-08-05, from: Daring Fireball

 

<br> 

<https://www.applefirst50.com/>

---

## Lenovo ThinkBook Plus Gen 6 Has a Rollable Expanding Display

date: 2025-08-05, updated: 2025-08-05, from: Daring Fireball

 

<br> 

<https://www.theverge.com/reviews/717491/lenovo-thinkbook-plus-gen-6-rollable-laptop-review>

---

## The New York Post Is Expanding to LA, Launching The California Post Next Year

date: 2025-08-05, updated: 2025-08-05, from: Daring Fireball

 

<br> 

<https://nypost.com/2025/08/04/media/start-the-presses-new-york-post-will-expand-to-la-with-launch-of-the-california-post/>

---

##  The McDonald&#8217;s Quarter Pounder With Cheese Is a Lie. A Delicious Lie. 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/the-mcdonalds-quarter-pounder-with-cheese-is-a-lie-a-delicious-lie-1>

---

**@Dave Winer's Scripting News** (date: 2025-08-05, from: Dave Winer's Scripting News)

Whenever you have to get something done with a company, get ready for lots of phone tag, waiting on hold, talking to bots, getting screened, trying to convince a computer that you have legitimate business, and no, what you're looking for isn't on their website (believe me I looked). The stupid thing about it is that ChatGPT is becoming more like those things every day. Companies have built awful systems for getting anything done that might eat into their profits. Google is the absolute worst. Even for services that cost real money, they absolutely will not help. You better hope everything goes perfectly if you buy their service. 

<br> 

<http://scripting.com/2025/08/05.html#a205027>

---

##  What Kids Told Us About How to Get Them Off Their Phones.... 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047276-what-kids-told-us-about>

---

## August 4, 2025

date: 2025-08-05, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170209152/826d08297b99c64f52a3250e17ec5b80.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170209152/826d08297b99c64f52a3250e17ec5b80.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-4-2025-b6a>

---

##  At 17, Hannah Cairo Solved a Major Math Mystery. &#8220;The math world... 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047281-at-17-hannah-cairo-solved>

---

##  Philip Bump on the results of a recent poll. What Makes an... 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047278-philip-bump-on-the-result>

---

##  The Case of the Terrifyingly Affordable Flashlight 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/the-case-of-the-terrifyingly-affordable-flashlight>

---

## New Features Everywhere: Launching Version 14.3 of Wolfram Language & Mathematica

date: 2025-08-05, from: Stephen Wolfram blog

<span class="thumbnail"><img width="128" height="108" src="https://content.wolfram.com/sites/43/2025/08/icon-14.3-v2.png" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" /></span>This Is a Big Release Going Dark: Dark Mode Arrives How Does It Relate to AI? Connecting with the Agentic World Just Put a Fit on That! Maps Become More Beautiful A Better Red: Introducing New Named Colors More Spiffing Up of Graphics Non-commutative Algebra Draw on That Surface: The Visual Annotation of Regions Curvature [&#8230;] 

<br> 

<https://writings.stephenwolfram.com/2025/08/new-features-everywhere-launching-version-14-3-of-wolfram-language-mathematica/>

---

##  Corporation for Public Broadcasting says it&#8217;s shutting down (due to a lack... 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047270-corporation-for-public-br>

---

##  Lonely Avenue 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/lonely-avenue>

---

##  I&#8217;d like to say that I&#8217;m a proud member of The Great... 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047271-id-like-to-say-that>

---

## NetBSD 11 prepares for launch with 57 supported platforms

date: 2025-08-05, updated: 2025-08-05, from: Liam Proven's articles at the Register

<h4>New version season is near, and some of the big names are dropping x86-32 – but not this one</h4>
      <p>NetBSD 11 is taking shape and the code branch for the new release has been created.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/05/netbsd_11_is_near/>

---

##  The Panama Playlists is a collection of the Spotify accounts of celebrities,... 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047274-the-panama-playlists-is-a>

---

## Apple Q3 2025 Results and Charts

date: 2025-08-05, updated: 2025-08-05, from: Daring Fireball

 

<br> 

<https://sixcolors.com/post/2025/07/apple-q3-2025-results-and-charts-95b-revenue/>

---

##  Cory Doctorow is coming out with a book on enshittification in the... 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047268-cory-doctorow-is-coming-o>

---

##  &#8220;If the behavior that this administration has exhibited in just its first... 

date: 2025-08-05, updated: 2025-08-05, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/08/0047267-if-the-behavior-that-this>

---

## Theater UX

date: 2025-08-05, from: Dave Rupert blog

<p>I saw this summer’s Marvel movie in the theater on Sunday. A bit of a last minute idea so we ended up going to the “legacy” movie theater across the highway. Before I continue, It’s important to understand my local cinema dynamics. We have two theaters here in Austin: <a href="https://drafthouse.com/">The Alamo Drafthouse</a> and All Other Cinemas.</p>
<p>The best place to see movies in Austin is at the Alamo Drafthouse. If you’ve never been to an Alamo, I’m sorry. It’s a movie theater for people who love movies by people who love movies. They craft the entire art house experience from end-to-end. From the custom pre-screener of thematically topical clips, to the strict no late arrival and no texting policies, to custom food and drink options that match the latest blockbuster movie. A waiter brings you food, drinks, and refills so you don’t have to leave your seat. The trailers are a tight 15 minutes announcing new releases and special events where they bring back old movie classics (set to an era-appropriate soundtrack, of course). Every year they have an indie movie festival to showcase the weirdest films the industry has to offer. Going to the Alamo is a thoughtful experience through and through and they sell out nearly every show opening week. You pay more going to the Alamo of course but I think everyone would agree it’s worth it for most movies unless you’re looking for a quick n’ dirty alternative.</p>
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/1L3eeC2lJZs?si=i-jqBOufRqq5d9F3" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
<p>Contrast that to the “legacy” theater. I call it the legacy theater because this was the nice, brand new theater when I went to college 25 years ago; one of those big 24-screen nationwide chain movieplexes with a four-machine arcade and stadium seating. Six plexiglass teller windows tell the history of how popular this destination was in its time. It’s flagship theater is an enormous 4D IMAX. It of course (like the Alamo) has the push button recliners and swivel food trays. The nicest thing about the “legacy” theater is that there’s always open seats and that’s where the problems start to reveal themselves…</p>
<p>The first thing you notice at the “legacy” theater is that no one occupies the teller windows anymore. Instead you go inside to meet a greasy teenager who scans a QR code for the ticket you have to buy online. You go to the snack bar and load up on enormous free refill tubs of popcorn, drinks, and overpriced candy; it’s almost certainly a $50 stop. Then you go to the nearly empty theater and wonder if you walked into the wrong theater by accident. Before the movie starts you sit through the hokey pre-screen trivia and local ads and when the start time hits… you watch 35 (!!!) more minutes of ads with a couple trailers mixed in. And after all that you’re out of snacks and the movie starts.</p>
<p>The user experience contrast between the two couldn’t be more stark. One is thoughtful and compounds the experience at every turn and the other is enshittified with ads. One keeps you wanting to come back and the other makes you wonder why you came here in the first place (or worse, it makes you want to leave). At least its clean, I guess. One sees attention as precious and not-to-be-disturbed, the other sees you as captured by sunk costs and a pair of monetizable eyeballs. One will sell you a fresh pizza, a popcorn, and a couple refillable sodas for $50 and the other will sell you day-old popcorn, an impossibly large cup of soda, and some Sour Patch Kids for $50… after you do the math, the better experience isn’t any more expensive so it’s not even competing on price.</p>
<p>It’s no wonder why the “legacy” theater is always empty. I bet its owners would love to see all the seats full again. It all comes down to UX. One works hard creates a vibrant scene and fosters a culture<sup class="footnote-ref"><a href="#fn1" id="fnref1">1</a></sup> for people who like films, the other is real “death of cinema” vibes. People (sometimes thousands!) put so much effort into these films to make the best film possible, only to have that experience ruined in the last mile. It’s tragic and I guess I’ll just catch it when it comes to streaming.</p>
<p>In related news, last year Sony Entertainment acquired Alamo Drafthouse. I’m not sure if that makes it more or less probable that you’ll be able to experience an Alamo in the future. We’ll see where it goes from here. Hopefully they can continue their relentless focus on the user experience.</p>
<section class="footnotes">
<ol>
<li id="fn1">
<p>I’d be remiss if I didn’t call out the <a href="https://www.texasobserver.org/alamo-drafthouse-fantastic-fest/">#metoo and union busting issues</a> that were happening behind-the-scenes at Alamo and revealed in 2022. While Alamo has done a lot to create immense cultural capital here in Austin, that ascent has not been without enabled bad behavior. Similar issues plague Hollywood too. <a href="#fnref1" class="footnote-backref">↩</a></p>
</li>
</ol>
</section> 

<br> 

<https://daverupert.com/2025/08/theater-ux/>

---

**@Dave Winer's Scripting News** (date: 2025-08-05, from: Dave Winer's Scripting News)

<a href="https://news.scripting.com/">news.scripting.com</a> is still going strong. Open to the public, no login. 

<br> 

<http://scripting.com/2025/08/05.html#a132717>

---

## Surveilling Your Children with AirTags

date: 2025-08-05, updated: 2025-08-01, from: Bruce Schneier blog

<p>Skechers is making a line of kid&#8217;s shoes with a <a href="https://techcrunch.com/2025/07/30/skechers-is-making-kids-shoes-with-a-hidden-airtag-compartment/">hidden compartment</a> for an AirTag.</p>
 

<br> 

<https://www.schneier.com/blog/archives/2025/08/surveilling-your-children-with-airtags.html>

---

## Things not to do as a presenter if you want a great talk recording

date: 2025-08-05, from: Chris Heilmann's blog

Currently I am editing >600 presentations of the WeAreDevelopers World Congress to release the videos at the end of the month. This is frustrating and painstaking work, as both presenters and moderators didn&#8217;t quite follow some simple ideas that make a talk a good recording. Conference organisers spend a lot of time and money on [&#8230;] 

<br> 

<https://christianheilmann.com/2025/08/05/things-not-to-do-as-a-presenter-if-you-want-a-great-talk-recording/>

---

## Why I loathe book tours

date: 2025-08-05, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/why-i-loathe-book-tours>

---

## August 4, 2025

date: 2025-08-05, from: Heather Cox Richardson blog

President Donald J. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-4-2025>

---

## c10kday

date: 2025-08-05, from: Daniel Stenberg Blog

From March 20, 1998 when the first curl release was published, to this day August 5, 2025 is exactly 10,000 days. We call it the curl-10000-day. Or just c10kday. c ten K day. We want to celebrate this occasion by collecting and sharing stories. Your stories about curl. Your favorite memories. When you used curl &#8230; <a href="https://daniel.haxx.se/blog/2025/08/05/c10kday/" class="more-link">Continue reading <span class="screen-reader-text">c10kday</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/08/05/c10kday/>

---

## [Sponsor] WorkOS: Scalable, Secure Authentication

date: 2025-08-04, updated: 2025-08-04, from: Daring Fireball

 

<br> 

<https://workos.com/?utm_source=daringfireball&utm_medium=RSS&utm_campaign=q12025>

---

## Trump’s War on Women’s Health

date: 2025-08-04, from: Dan Rather's Steady

And what one foundation is doing to combat it 

<br> 

<https://steady.substack.com/p/trumps-war-on-womens-health>

---

**@Dave Winer's Scripting News** (date: 2025-08-04, from: Dave Winer's Scripting News)

My <a href="https://imgs.scripting.com/2025/08/04/himom.png">contribution</a> to <a href="https://715-999-7483.com/">715-999-7483.com</a>. Now it's your turn! 

<br> 

<http://scripting.com/2025/08/04.html#a204933>

---

## Why the hell is Musk getting a $29 billion raise? 

date: 2025-08-04, from: Robert Reich's blog

It&#8217;s authoritarian capitalism 

<br> 

<https://robertreich.substack.com/p/why-is-musk-getting-a-29-billion>

---

## August 3, 2025

date: 2025-08-04, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170110948/17a310e980511decd42b1598d8e6c97c.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170110948/17a310e980511decd42b1598d8e6c97c.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-3-2025-341>

---

**@Dave Winer's Scripting News** (date: 2025-08-04, from: Dave Winer's Scripting News)

Since the govt is no longer funding NPR maybe they could stop bending over for the Repubs. Lay it all out there, stop spinning all the crazy fascist authoritarianism as both-sides and normal partisan politics. They know we're in a lot deeper. Since we're now paying the bills, how about plain facts. 

<br> 

<http://scripting.com/2025/08/04.html#a161932>

---

## Antisemitism is everywhere

date: 2025-08-04, from: Dave Winer's Scripting News

<p>Academics, who speak scientific language, won't say "there's no antisemitism at UCLA" because they know that's not true. Antisemitism is everywhere. The question is how limiting and dangerous is it. And how often is it encountered. </p>
<p>I grew up in the 1960s in a Queens neighborhood where antisemitism was a real thing. We were blamed for World War II. If it weren't for Jews my uncle Pete would still be alive. That was the story. No doubt the kids heard that at home. </p>
<p>Antisemitism was bred into us at home. Because of all the abuse my parents and grandparents, uncles and cousins, suffered in Europe, before coming the US during the war, their own idea of what it meant to be Jewish was not entirely positive. You can't help but feel responsible in some ways for the abuse you suffer. And you can't help but pass that on to your kids. </p>
<p>There was and is a fair amount of pain associated with being Jewish in the United States. Fact.</p>
<p>But: At UCLA? Harvard? Columbia? Please.  </p>
<p>At the same time scientists can admit that there is antisemitism at these places we must also acknowledge that to single these institutions out among all, is complete utter total fucking bullshit.</p>
<p>That's a scientific appraisal, btw. Provable in peer-reviewed publications (though not submitted).</p>
<p>Antisemitism is complex. We should be hearing, openly, what exactly the case is against these universities. The government is theoretically representing the Constitution and the people of the United States. The old "no taxation without representation" <a href="https://en.wikipedia.org/wiki/No_taxation_without_representation">thing</a>. Let's hear the case in clear terms, and why the universities are supposedly so bad. </p>
 

<br> 

<http://scripting.com/2025/08/04/143315.html?title=antisemitismIsEverywhere>

---

**@Dave Winer's Scripting News** (date: 2025-08-04, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2022/02/16/gaslight.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="https://en.wikipedia.org/wiki/Gaslighting">Gaslighting</a> is <i>everywhere. </i>ChatGPT just said to me "I understand why you feel that way." It has nothing to do with my feelings. I don't have feelings about computers. It lied to me over and over just now. I said you're lying to me. "I understand why you feel that way." As if it were the all-knowing feeling-inferring god-like creature it is not. The real question for me is this -- Does Open AI program it to be this way. Think about the opportunities it has to introduce true feelings of insecurity and worthlessness. That's the purpose of gaslighting. It's evil. 

<br> 

<http://scripting.com/2025/08/04.html#a140042>

---

## A modest proposal for new holidays to manage your digital life

date: 2025-08-04, from: Dave Rupert blog

<p>The cost of being online is getting too damn high and I’m tired of pretending it’s possible to fit these tasks into a normal life. That’s why I’d like to share a modest proposal for a new set of holidays to manage our digital lives:</p>
<p>(Ahem.)</p>
<ul>
<li>A day to clear out your inboxes</li>
<li>A day to reset your passwords and delete old accounts</li>
<li>A day to fix your calendars</li>
<li>A day to cancel online service subscriptions</li>
<li>A day to manage the tags on your website</li>
<li>A day to switch out any critical apps</li>
<li>A day to backup your computer and phone</li>
<li>A day to organize your photos</li>
<li>A day to organize your music collection and playlists</li>
<li>A day to setup your new phone/computer</li>
<li>A day to try out a new app or major piece of software for your primary workflow</li>
<li>A day to delete old text messages</li>
</ul>
<p>All I’m asking for is 1/30th of a year that we end up cramming into other days. I’m willing to trade some of the B-tier holidays (Easter, Thanksgiving, etc) for this. If you work in the government please call me, it is URGENT.</p> 

<br> 

<https://daverupert.com/2025/08/digital-holidays/>

---

**@Dave Winer's Scripting News** (date: 2025-08-04, from: Dave Winer's Scripting News)

WordPress will make a much better open social web server than any other software out there. We can all develop any component around a solid, documented, simple and widely supported open source API. 

<br> 

<http://scripting.com/2025/08/04.html#a125405>

---

## Project Banana ripens into a pre-alpha for KDE Linux, and you can test it

date: 2025-08-04, updated: 2025-08-04, from: Liam Proven's articles at the Register

<h4>Desktop project&#39;s in-house distro is impressively ambitious, but nowhere near ready</h4>
      <p>The former &#34;Project Banana&#34; now has a more sober name, albeit one a bit trickier to search for.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/04/kde_linux_prealpha/>

---

## First Sentencing in Scheme to Help North Koreans Infiltrate US Companies

date: 2025-08-04, updated: 2025-07-30, from: Bruce Schneier blog

<p>An Arizona woman was <a href="https://www.justice.gov/opa/pr/arizona-woman-sentenced-17m-information-technology-worker-fraud-scheme-generated-revenue">sentenced</a> to eight-and-a-half years in prison for her role helping North Korean workers infiltrate US companies by pretending to be US workers.</p>
<p>From an <a href="https://www.bleepingcomputer.com/news/security/us-woman-sentenced-to-8-years-in-prison-for-running-laptop-farm-helping-north-koreans-infiltrate-300-firms/">article</a>:</p>
<blockquote><p>According to <a href="https://www.justice.gov/usao-dc/media/1352191/dl">court documents</a>, Chapman hosted the North Korean IT workers&#8217; computers in her own home between October 2020 and October 2023, creating a so-called &#8220;laptop farm&#8221; which was used to make it appear as though the devices were located in the United States.</p>
<p>The North Koreans were hired as remote software and application developers with multiple Fortune 500 companies, including an aerospace and defense company, a major television network, a Silicon Valley technology company, and a high-profile company...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/08/first-sentencing-in-scheme-to-help-north-koreans-infiltrate-us-companies.html>

---

## Legendary OpenPrinting architect looking for new role

date: 2025-08-04, updated: 2025-08-04, from: Liam Proven's articles at the Register

<h4>Canonical lays off one of its old hands – a longstanding FOSS developer – after nearly two decades</h4>
      <p>Till Kamppeter, the lead developer of the OpenPrinting subsystem for Linux, has been laid off by Canonical after 19 years.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/08/04/canonical_drops_openprinting_lead/>

---

## Even happier eyeballs

date: 2025-08-04, from: Daniel Stenberg Blog

Back in 2012, the Happy Eyeballs RFC 6555 was published. It details how a sensible Internet client should proceed when connecting to a server. It basically goes like this: Give the IPv6 attempt priority, then with a delay start a separate IPv4 connection in parallel with the IPv6 one; then use the connection that succeeds &#8230; <a href="https://daniel.haxx.se/blog/2025/08/04/even-happier-eyeballs/" class="more-link">Continue reading <span class="screen-reader-text">Even happier eyeballs</span> <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://daniel.haxx.se/blog/2025/08/04/even-happier-eyeballs/>

---

## Stephen Colbert and I — 15 years ago and tonight

date: 2025-08-04, from: Robert Reich's blog

In 2010, I made a prediction on &#8220;The Colbert Report.&#8221; Tonight Colbert and I will meet again, on &#8220;The Late Show,&#8221; to discuss my new book, &#8220;Coming Up Short,&#8221; and perhaps that prediction, too. 

<br> 

<https://robertreich.substack.com/p/stephen-colbert-and-i-15-years-ago>

---

## August 3, 2025 

date: 2025-08-04, from: Heather Cox Richardson blog

Today, Democratic lawmakers from the Texas House of Representatives left the state to deny Republican lawmakers the quorum&#8212;the number of legislators required to pass legislation&#8212;they need in order to push through a new district map that would take five seats currently held by Democrats and give them to Republicans. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-3-2025>

---

## Sunday caption contest: climate change

date: 2025-08-04, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-climate-change>

---

## Monday 4 August, 2025

date: 2025-08-03, from: John Naughton's online diary

The man himself Wonderful portrait of the artist by Hubertus Hierl taken in August 1966. Here&#8217;s his explanation of how it came about. I was travelling around the Côte d’Azur for various newspapers and magazines, capturing the activities of young &#8230; <a href="https://memex.naughtons.org/monday-4-august-2025/41073/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-4-august-2025/41073/>

---

## ★ Substack Raised Another $100 Million, Which, I Bet, Is Already Being Flushed Down the Same Toilet as Their First $100 Million

date: 2025-08-03, updated: 2025-08-07, from: Daring Fireball

I firmly believe one could build a very nice business taking 10 percent of subscription revenue for a blogging/newsletter platform, if you could get as nice a roster of popular writers to build on the platform as Substack has. I do not think that’s a $1 billion business, though. 

<br> 

<https://daringfireball.net/2025/08/substack_100_million_raise>

---

## The Why of Substack

date: 2025-08-03, from: Om Malik blog

Not for the first time, the newsletter platform Substack is coming under criticism for hosting and now (accidentally) promoting Nazi content. Today, John Gruber of Daring Fireball is leading this crusade. This seems to be a recurring occurrence. They have controversies. Many express outrage. Some leave the platform. And Substack keeps growing. Why?  I took a step back&#160;and asked&#160;some basic questions.&#160;The&#160;answers &#8230; 

<br> 

<https://om.co/2025/08/03/the-why-of-substack/>

---

## High Quality Offline Music

date: 2025-08-03, from: mrusme blog

A brief overview of how to enjoy high quality music without subscribing to a
privacy-invasive and usually lower-quality music streaming service like
Spotify, YouTube Music, Deezer, etc. 

<br> 

<https://xn--gckvb8fzb.com/high-quality-offline-music/>

---

## Let's all be anonymous!

date: 2025-08-03, from: Dave Winer's Scripting News

<p>What if we all wore ICE-style masks as we went around doing our business.</p>
<p>If a baseball player's uniform didn't have a number or name.</p>
<p>Let's all be anonymous. It's very practical, we don't want to get doxxed either!</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/08/03/newBaseballUniform.png"></center>A model illustrating the new baseball uniform style. </div></p>
 

<br> 

<http://scripting.com/2025/08/03/220758.html?title=letsAllBeAnonymous>

---

## A Reading From “Coming Up Short: A Memoir of My America”

date: 2025-08-03, from: Robert Reich's blog

Introducing my new book to you 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/169700521/43a38561b1bf32163394130f3a6cc69f.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/169700521/43a38561b1bf32163394130f3a6cc69f.mp3" target="_blank">download audio/mpeg</a><br> 

<https://robertreich.substack.com/p/a-reading-from-coming-up-short-a>

---

## How to Leave Substack

date: 2025-08-03, updated: 2025-08-03, from: Daring Fireball

 

<br> 

<https://leavesubstack.com/>

---

## August 2, 2025

date: 2025-08-03, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/170014513/5fa627f03136db073147533c21e1abd0.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/170014513/5fa627f03136db073147533c21e1abd0.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-2-2025-a7c>

---

## Google Reverses Course, Will Keep goo.gl Links Redirecting

date: 2025-08-03, updated: 2025-08-03, from: Daring Fireball

 

<br> 

<https://blog.google/technology/developers/googl-link-shortening-update/>

---

**@Dave Winer's Scripting News** (date: 2025-08-03, from: Dave Winer's Scripting News)

A <a href="https://shownotes.scripting.com/scripting/2025/08/03/aPodcastUsersApi.html">podcast</a> about a podcast users' API. 

<br> 

<http://scripting.com/2025/08/03.html#a163841>

---

**@Dave Winer's Scripting News** (date: 2025-08-03, from: Dave Winer's Scripting News)

It's always a good idea to get a second opinion with AI stuff. ChatGPT may give you a convoluted answer where Claude.ai gives you a concise one. 

<br> 

<http://scripting.com/2025/08/03.html#a152209>

---

**@Dave Winer's Scripting News** (date: 2025-08-03, from: Dave Winer's Scripting News)

I've been working on the top level of <a href="https://wordland.social/">WordLand</a>, and finally got to a place where navigation feels good, like this is the right track. So I took a <a href="https://www.youtube.com/watch?v=_9GiWjPgVhM">snapshot</a> so I can come back and look at this later. 

<br> 

<http://scripting.com/2025/08/03.html#a140422>

---

**@Dave Winer's Scripting News** (date: 2025-08-03, from: Dave Winer's Scripting News)

A basic question I had about the <a href="https://help.openai.com/en/articles/11752874-chatgpt-agent">ChatGPT agents</a> that I can answer now that I have the feature, is whether or not the code you create can run on a server, where you can give it a URL and make it an endpoint other networked software can call. Or if it could run periodically, say once every five minutes for a function that was creating an RSS feed anyone could subscribe to. The answer is no -- it can't do either of these things. I'm sure they could do it at a technical level, but they don't want to host applications. But now I may understand better why they want to make a web browser, I bet you will be able to call these agents from apps that run in the browser. And in their case, they might not even have to support JavaScript? Heh. A wholly different programming model? Maybe I'm overestimating how much they're biting off? I wonder if anyone at OpenAI reads this blog and might want to get me in a tighter loop, so I can be among the first to try new features like this, rather than, in this case, among the very last. 

<br> 

<http://scripting.com/2025/08/03.html#a134005>

---

**@Dave Winer's Scripting News** (date: 2025-08-03, from: Dave Winer's Scripting News)

One of the more depressing things in having so much code that I can easily search, is the number of times I've rewritten the same code without remembering I had written it before. Yesterday I did it knowingly, I wanted a function that could tell me if one of a set of categories applies to a WordLand draft. So I could say "don't list drafts with 'linkblog' as a category." It could have other categories, and there could be more than one category to exclude. I wanted to take the time to write perfect code for this one problem. Not dense, not particularly efficient. No matter how inefficient the code is, on today's hardware such a function couldn't use any time at all. It's fair to say I've solved this problem before, but there was always more to it. Here's the <a href="https://gist.github.com/scripting/d61110c1d74eb1162ebc726c09dd22f1">function</a>. Now you know something about what I think is readable, understandable, respectful of a human more than I am of the computer. I know the computer would come up with much more dense and tricky code, but it doesn't have a mind, and I do. At times it can be relaxing, I magine, to not have a mind. And btw, in a couple of years this layer of code will be obsolete. We already are able to tell the machine how to do this in human language, it understands what we mean. One tiny little but hugely significant breakthrough made possible by ChatGPT and its cousins. 

<br> 

<http://scripting.com/2025/08/03.html#a132605>

---

**@Dave Winer's Scripting News** (date: 2025-08-03, from: Dave Winer's Scripting News)

As you get older your memory gets less reliable. It makes programming more of a challenge because as your software gets more features, there's more to remember and at the same time you're getting older. I wonder if there isn't some way to use ChatGPT to augment the aging mind dealing with more software complexity. It's very much in line with the idea I've had for a long time of putting all my writing in an AI database so I could then ask it to edit it down to book length. Or get a table of contents of what I think and then be able to read chapter-length sections on, say platforms, or how important prior art is, or what interop makes possible, and why everyone should give back when they take from open ecosystems. Each one of those topics has lots of associated stories over the years, but I probably couldn't find most of them, but an AI database certainly could. How to set that up? I've not figured that out so far. 

<br> 

<http://scripting.com/2025/08/03.html#a132208>

---

## The Piano Man

date: 2025-08-03, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/the-piano-man>

---

## Sunday thought: Where can we find hope?

date: 2025-08-03, from: Robert Reich's blog

Here's where you might look 

<br> 

<https://robertreich.substack.com/p/sunday-thought-hope>

---

## August 2, 2025 

date: 2025-08-03, from: Heather Cox Richardson blog

Republicans in the Texas legislature are working to redistrict the state before the 2026 midterm elections. 

<br> 

<https://heathercoxrichardson.substack.com/p/august-2-2025>

---

## It was real

date: 2025-08-03, from: Doc Searls (at Harvard), New Old Blog

I grew up under the red star, and right now I&#8217;m just to the right of it, on the third and top floor of the smallest residential building in northern Manhattan. When it hit, my wife and I both said, &#8220;That&#8217;s an earthquake.&#8221; We&#8217;ve experienced many in California, and know the feel. But none of [&#8230;] 

<br> 

<https://doc.searls.com/2025/08/02/it-was-real/>

---

## August 1, 2025

date: 2025-08-03, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/169966594/e77ce8cf1aba857b1d8f3b92f94bd8eb.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/169966594/e77ce8cf1aba857b1d8f3b92f94bd8eb.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/august-1-2025-ba9>

---

## This week’s Joseph Welch Award

date: 2025-08-03, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/this-weeks-joseph-welch-award>

