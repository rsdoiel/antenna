---
title: columns 2024.29
updated: 2024-07-19 07:54:33
---

# columns 2024.29

(date: 2024-07-19 07:54:33)

---

## Google Is Mind-Bogglingly Bad

date: 2024-07-19, from: Om Malik blog

A few days ago I&#160;wondered&#160;aloud, “What&#160;would happen if&#160;Google CEO&#160;Sundar Pichai decided to sign up for Google Cloud using a secret identity, without getting help from any of his&#160;staff?”&#160;I added, “Every single CEO should try&#160;to&#160;use their service as if they were a new customer that the company is going to try and win over. That alone &#8230; 

<https://om.co/2024/07/19/google-is-mind-bogglingly-bad/>

---

##  Deadpan comic icon Bob Newhart has died at age 94. I was... 

date: 2024-07-19, updated: 2024-07-19, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044973-deadpan-comic-icon-bob-ne>

---

## Where is Qualcomm's Snapdragon X Elite Dev Kit?

date: 2024-07-19, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Where is Qualcomm's Snapdragon X Elite Dev Kit?</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>I signed up to buy a Qualcomm Snapdragon X Dev Kit the second I found out about it. It's <em>supposed to be</em> the <a href="https://www.xda-developers.com/3-reasons-snapdragon-dev-kit-mac-mini-killer/">Mac mini killer for Windows</a>.</p>

<p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/snapdragon-dev-kit-transparent.jpg" alt="Snapdragon X Elite Dev Kit Transparent"></p>

<p>They even promoted it with <a href="https://www.theverge.com/2024/5/21/24158603/qualcomm-windows-snapdragon-dev-kit-x-elite">this amazing-looking transparent shell</a>, and I and hundreds of other devs were ready to pony up the $899 Qualcomm was asking.</p>

<p>Their pre-order form said it would be out June 18. Almost exactly one month later, I got an email saying it was available. Great!</p>

<p>So I went to <a href="https://www.arrow.com/en/products/c8380-12c-mp-32g/thundercomm">the purchase page on Arrow</a>... and it showed as out of stock. That was about 15 minutes after receiving the email.</p>

<p>There were three possibilities:</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-07-19T09:04:14-05:00" title="Friday, July 19, 2024 - 09:04" class="datetime">July 19, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/where-qualcomms-snapdragon-x-elite-dev-kit>

---

**@Dave Winer's Scripting News** (date: 2024-07-19, from: Dave Winer's Scripting News)

Now that <a href="https://slate.com/business/2024/07/elon-musk-donald-trump-donation-republican-twitter-troll-meme-posts.html">Elon Musk</a> is giving so generously, dollars and flow, to the fascists, he's encouraging more of us to use Zuckerberg's twitter-like system, aka Threads. But Zuck isn't making it go down easy. There's a piece in Bloomberg (paywall) that says Trump is <a href="https://www.theguardian.com/us-news/live/2024/jul/19/trump-biden-rnc-democrats-election-updates">badass</a> but isn't supporting either candidate. What could possibly go wrong? 

<http://scripting.com/2024/07/19.html#a132857>

---

**@Dave Winer's Scripting News** (date: 2024-07-19, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/09/20/bounce.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="https://ma.tt/2024/07/6-6/">Matt says</a> some interesting new stuff is coming from Automattic now that <a href="https://wordpress.org/news/2024/07/dorsey/">WordPress 6.6</a> is out. Something for writers? Perhaps something that moves WordPress into a space adjacent to twitter-like systems? They just added support for Threads to WordPress, so now you can <a href="https://jetpack.com/social/">crosspost</a> from a blog to a thread. Haven't tried it yet. They also have a new <a href="https://blog.gravatar.com/2024/06/03/profiles-as-a-service/">identity system</a> built around Gravatar, announced in early June. It'll be interesting to see what they come out with. I wonder if there is a developer ecosystem building on this, and if they have an evangelism program. I have my own vision of how these things should work. 

<http://scripting.com/2024/07/19.html#a130945>

---

## 2024-07-19 Trusting a self-signed certificate

date: 2024-07-19, from: Alex Schroeder's Blog

<h1 id="2024-07-19-trusting-a-self-signed-certificate">2024-07-19 Trusting a self-signed certificate</h1>

<p><a class="account" href="https://mastodon.social/@sarahjamielewis" title="@sarahjamielewis@mastodon.social">@sarahjamielewis</a> recently announced an IRC server with a self-signed certificate. What if you have an IRC client that keeps complaining about this?</p>

<p>On a system like Debian, you can download the certificate and install it such that all applications trust it.</p>

<pre><code># Get certificate from the correct port
openssl s_client -showcerts -connect resistant.tech:6697 \
  &lt; /dev/null \
  2&gt; /dev/null \
  | openssl x509 -outform PEM \
  &gt; resistant-tech.pem

# Compare fingerprint with
# 63:B1:2E:A7:8A:BD:8A:33:B5:62:21:7C:42:71:75:66:43:BA:D2:78:21:09:8E:80:17:7E:28:D2:58:65:E6:48
openssl x509 -in resistant-tech.pem -noout -sha256 -fingerprint

# Install on Debian (the new extension is important)
sudo mv --interactive resistant-tech.pem /usr/local/share/ca-certificates/resistant-tech.crt
sudo dpkg-reconfigure ca-certificates

# The output above should say &quot;1 added, 0 removed; done&quot; somewhere

# Test it
gnutls-cli resistant.tech:6697
</code></pre>

<p>If the output says &ldquo;PKI verification of server certificate failed&hellip;&rdquo; then the installation didn&rsquo;t work.</p>

<p>If the output says &ldquo;Handshake was completed&rdquo; and seems to hang, that&rsquo;s because you can now type raw IRC commands.</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a></p>

<p>(I saw comments by myself on related Stack Exchange questions from 2014. 😑)</p> 

<https://alexschroeder.ch/view/2024-07-19-self-signed>

---

## Debunking Myth #8: “Corporate tax cuts create jobs”

date: 2024-07-19, from: Robert Reich's blog

BUNK! 

<https://robertreich.substack.com/p/debunking-myth-8-corporate-tax-cuts>

---

## July 18, 2024 

date: 2024-07-19, from: Heather Cox Richardson blog

Paul Manafort walking onto the floor of the Republican National Convention yesterday illustrated that the Republican Party under Trump has become thoroughly corrupted into an authoritarian party aligned with foreign dictators. Manafort first advised and then managed Trump&#8217;s 2016 campaign. A long-time Republican political operative, he came to the job after the Ukrainian people threw his client,Viktor Yanukovych out of Ukraine&#8217;s presidency in 2014. Yanukovych was backed by Russian president Vladimir Putin, who was determined to prevent Ukraine from turning toward Europe and to install a puppet government that would extend his power over the neighboring country. Beginning in 2004, Manafort had worked to install and then keep Yanukovych and his party in power. His efforts won him a fortune thanks to his new friends, especially Russian billionaire Oleg Deripaska. Then in 2014, after months of popular protests, Ukrainians ousted Yanukovych from power in what is known as the Revolution of Dignity. 

<https://heathercoxrichardson.substack.com/p/july-18-2024>

---

## Minimalist and Functional Desktop Environment without Xorg

date: 2024-07-19, from: mrusme blog

A brief write-up on how I've set up my Linux desktop environment to be minimal
yet functional, to let me work and use the computer as efficiently as
possible. All without using Xorg. 

<https://xn--gckvb8fzb.com/minimalist-and-functional-desktop-environment-without-xorg/>

---

## Summer rental

date: 2024-07-18, from: Dave Rupert blog

<p>4:05am<br />
The windows are open, hoping to capture the faint winds and convert them into a mythical cooling cross-breeze. A gust passes through vacuuming all the doors shut, cancelling hope for a miracle.<br />
I’m awake. It’s cool but I’m on top of the covers and not cool enough.<br />
The plastic thump-thump-thump of the oscillating fan reaching the end of its arc is rhythmic yet not. After three-to-six attempts, it yields to the resistance and heads the other way. It will be back soon.<br />
Another fan in the room sounds like a far off propeller plane looping around the property. I await its arrival at each approach.<br />
The alleyway ebbs and flows throughout the night with the smell of marijuana smoke, teens cussing, and the clinking of bottles as passers-by rummage through recycling bins.<br />
There’s a sick child in the other room. My child. Been sick for days, poor thing. On antibiotics now. Spit the first dose on the floor because she didn’t like the taste.<br />
I can hear her labored breath as different subconscious systems battle for what they deem as comfortable. Warm, yet shivering. Cold, yet burning up. Asleep, yet aware.<br />
My wife is there next to her. Also sick with a persistent unspecified cough.<br />
Since arriving at the rental three days ago, I have only left the house to buy medicine and wine.</p>
<p>7:23am<br />
Scuttling in the alleyway. Two voices. A truck starts. A woman pleads, “I’m sorry, I fucked up.” The truck drives off.<br />
I put on a pot of coffee.</p>
<p>9:15am<br />
Left the rental to walk and pick up breakfast. Peeked at the ocean to remind myself of the magnitude. I’m a block away but hadn’t seen it in days.<br />
I got a breakfast burrito. The potatoes were a little al dente, but it had black beans and wasn’t a soupy mess so I call that a win.<br />
PCR tests came back and it’s not Covid and it’s not strep, but we don’t have any answer for what sickness(es?) our family is dealing with.<br />
I’m on vacation but it’s not quite vacation anymore.<br />
I’m working a bit. Dysfunctional but I appreciate a place to channel anxiety.<br />
Caretaking is much harder than computer work.</p>
<p>4:46pm<br />
We made it to the beach. Wife and son thought it was too windy for my solar shade —and it was— but I persevered. After naysaying me they had the audacity to want to join me in my solar fortress. Haha. Nice try.<br />
My congested little one made me pretend food with wet sand. She’s allowed to join me in my fortress.<br />
We left as the tide came in and ordered pizza. The pizza was just okay.</p>
<p>9:44pm<br />
A good day. A long day.<br />
Another member of the family is reporting a sore throat, so that’s less than ideal.<br />
“When this vacation is over I’m going to need another vacation,” the protagonist says looking directly through the fourth wall. The canned laughter erupts.<br />
Do wells of rage fill up faster than waters of peace? Am I broken or is the underlying system broken?</p>
<p>5:32am<br />
Awakened by two crows squawking at each other.<br />
I went to bed after midnight. A new day begins.</p> 

<https://daverupert.com/2024/07/summer-rental/>

---

## Friday 19 July, 2024

date: 2024-07-18, from: John Naughton's online diary

Gehry’s tower For the new Luna Centre in Arles. Quite a building. Quote of the Day “I regard not finding Lord Lucan as my most spectacular success in journalism. Of course, many of my colleagues have also been fairly successful &#8230; <a href="https://memex.naughtons.org/friday-19-july-2024/39650/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/friday-19-july-2024/39650/>

---

**@Dave Winer's Scripting News** (date: 2024-07-18, from: Dave Winer's Scripting News)

If the world doesn't know you did something you might as well not have done it. This is what <a href="https://en.wikipedia.org/wiki/Douglas_Engelbart">Doug Engelbart</a> learned, and what we learned in his aftermath. He is known for inventing the mouse, because that's the one thing he invented everyone knows about. He also developed software that pioneered using a computer to <a href="https://web.stanford.edu/class/history34q/readings/Engelbart/Engelbart_AugmentIntellect.html">organize your ideas</a>. For the most part people don't know about that because (I guess) most people don't organize their work? 

<http://scripting.com/2024/07/18.html#a210120>

---

##  Peregrine Falcon Killing a Duck in Mid-Air 

date: 2024-07-18, updated: 2024-07-18, from: Jason Kittke's blog

 

<https://kottke.org/24/07/peregrine-falcon-killing-a-duck-in-mid-air-1>

---

##  Heartbreaking: This Guy Has No Idea That He&#8217;s So Strange And Memorable-Looking... 

date: 2024-07-18, updated: 2024-07-18, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044969-heartbreaking-this-guy-ha>

---

## Tonight: Put on your seatbelts, watch your wallets, bring your parachute, and join us

date: 2024-07-18, from: Robert Reich's blog

For a watchalong of Trump&#8217;s acceptance speech at 10pm ET, 7pm PT 

<https://robertreich.substack.com/p/tonight-put-on-your-seatbelts-watch>

---

##  Keanu Reeves & China Miéville have written a novel called The Book... 

date: 2024-07-18, updated: 2024-07-18, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044972-keanu-reeves-china-mievil>

---

## July 17, 2024

date: 2024-07-18, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/july-17-2024-e4f>

---

##  Moving Posters for Studio Ghibli Films 

date: 2024-07-18, updated: 2024-07-18, from: Jason Kittke's blog

 

<https://kottke.org/24/07/moving-posters-for-studio-ghibli-films>

---

##  California has strengthened its electrical grid significantly in recent years: no rolling... 

date: 2024-07-18, updated: 2024-07-18, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044970-california-has-strengthen>

---

##  Interactive map from the University of Maryland Center for Environmental Science: What... 

date: 2024-07-18, updated: 2024-07-18, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044968-interactive-map-from-the->

---

## Criminal Gang Physically Assaulting People for Their Cryptocurrency

date: 2024-07-18, updated: 2024-07-18, from: Bruce Schneier blog

<p>This is <a href="https://www.wired.com/story/crypto-home-invasion-crime-ring/">pretty horrific</a>:</p>
<blockquote><p>&#8230;a group of men behind a violent crime spree designed to compel victims to hand over access to their cryptocurrency savings. That announcement and the criminal complaint laying out charges against St. Felix focused largely on a single theft of cryptocurrency from an elderly North Carolina couple, whose home St. Felix and one of his accomplices broke into before physically assaulting the two victims&#8212;­both in their seventies&#8212;­and forcing them to transfer more than $150,000 in Bitcoin and Ether to the thieves&#8217; crypto wallets...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/07/criminal-gang-physically-assaulting-people-for-their-cryptocurrency.html>

---

##  Inside the Trump Plan for 2025 

date: 2024-07-18, updated: 2024-07-18, from: Jason Kittke's blog

 

<https://kottke.org/24/07/inside-the-trump-plan-for-2025>

---

**@Dave Winer's Scripting News** (date: 2024-07-18, from: Dave Winer's Scripting News)

I'm avoiding the actual RNC, the speakers are just actors. Trump looks like the Queens kid he is. People from Queens don't feel like we really belong, except with other Queens people. We expect to be thought of as the kid from Queens. I know this so well. So the "boss" slumps around not sure what to do or say. He's not gregarious. Not in charge of anything. 

<http://scripting.com/2024/07/18.html#a145522>

---

**@Dave Winer's Scripting News** (date: 2024-07-18, from: Dave Winer's Scripting News)

<a href="https://www.threads.net/@nancywicklundgonzalez/post/C9kHz4POkP7">Nancy Wicklund Gonzalez</a>: "I’ve had to switch to watching the BBC. American news is unwatchable. Between the lionization of a sociopath and the denigration of a decent man, I just can’t even." 

<http://scripting.com/2024/07/18.html#a144830>

---

##  The reintroduction of beavers in southwest England has resulted in a marked... 

date: 2024-07-18, updated: 2024-07-18, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044963-the-reintroduction-of-bea>

---

## Trumpism's next generation

date: 2024-07-18, from: Robert Reich's blog

JD Vance, Donald Trump Jr., and Elon Musk 

<https://robertreich.substack.com/p/the-future-of-trumpworld>

---

## Election Countdown, 110 Days to Go: History Happening All at Once.

date: 2024-07-18, from: James Fallows, Substack

How should we act, when we can't know what will happen? Spoiler: we have to keep trying our best. 

<https://fallows.substack.com/p/election-countdown-110-days-to-go>

---

## July 17, 2024

date: 2024-07-18, from: Heather Cox Richardson blog

On July 18, 1863, at dusk, the Black soldiers of the Massachusetts 54th Volunteer Infantry of the U.S. Army charged the walls of Fort Wagner, a fortification on Morris Island off Charleston Harbor in South Carolina. Because Fort Wagner covered the southern entrance to the harbor, it was key to enabling the U.S. government to take the city. 

<https://heathercoxrichardson.substack.com/p/july-17-2024>

---

##  An Online Database of Marimekko Patterns 

date: 2024-07-17, updated: 2024-07-17, from: Jason Kittke's blog

 

<https://kottke.org/24/07/an-online-database-of-marimekko-patterns>

---

**@Dave Winer's Scripting News** (date: 2024-07-17, from: Dave Winer's Scripting News)

Today's song: <a href="https://www.youtube.com/watch?v=Z0GFRcFm-aY">It's the End of the World as We Know It (And I Feel Fine)</a>. 

<http://scripting.com/2024/07/17.html#a220627>

---

## Nana Kitty played Shoreline

date: 2024-07-17, from: Dave Winer's Scripting News

<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/07/17/grandmaKittyPlaysShorelineWithTheDead.png"></center>Wordle Kitty's great grandma plays with the Dead at Shoreline in the 80s. </div></p>
 

<http://scripting.com/2024/07/17/220302.html?title=nanaKittyPlayedShoreline>

---

##  A Guide to Miyazaki&#8217;s Weird Little Guys: warawara, susuwatari (soot sprites), kodama,... 

date: 2024-07-17, updated: 2024-07-17, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044962-a-guide-to-miyazakis-weir>

---

## Tech is a philosophy

date: 2024-07-17, from: Tracy Durnell Blog

Without our agreement or desire, we’re forced into dependence on technologies that are expensive and have disastrous consequences for both the living planet and for human social connections. Over time, societies are taught to forget those harms. The forgetting is intentional. I used to be an &#8220;assume new tech is good&#8221; person, but I&#8217;ve learned [&#8230;] 

<https://tracydurnell.com/2024/07/17/tech-is-a-philosophy/>

---

##  A useful tool for students & researchers (&#8220;educational purposes only&#8221;): Bypass Paywalls... 

date: 2024-07-17, updated: 2024-07-17, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044960-a-useful-tool-for-student>

---

## Selective Memory in Milwaukee

date: 2024-07-17, from: Dan Rather's Steady

Donald Trump&#8217;s repugnant record is MIA at the RNC 

<https://steady.substack.com/p/selective-memory-in-milwaukee>

---

## AirPods Pro at Amazon: $169

date: 2024-07-17, updated: 2024-07-17, from: Daring Fireball

 

<https://amzn.to/3Y8cRVv>

---

##  Lessons from the recent French elections. &#8220;You have to vote! You have... 

date: 2024-07-17, updated: 2024-07-17, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044958-lessons-from-the-recent-f>

---

## ★ The AT&T Data Breach Shows Why RCS Can’t Be Trusted and the Downside of Apple Adding Support for It in iOS 18

date: 2024-07-17, updated: 2024-07-17, from: Daring Fireball

SMS wasn’t dying, but it was slowly fading away, and should have been left for things like automated “your table is ready” notifications from restaurants. RCS is just going to give carrier-based messaging new legs that it shouldn’t have gotten. 

<https://daringfireball.net/2024/07/att_data_breach_rcs_ios>

---

## My long strange trip into home automation

date: 2024-07-17, from: Matt Haughey blog

<p>Over the past few years I&apos;ve written about things I&apos;ve done around my home, like putting in <a href="https://a.wholelottanothing.org/how-to-build-a-5-acre-wifi-network-cheap-reliable-long-range-wireless-points-make-amazing-things-possible/" rel="noreferrer">a five-acre wide WiFi network</a> or <a href="https://a.wholelottanothing.org/entering-your-home-with-just-a-tap-nfc-and-ios/" rel="noreferrer">tapping a NFC tag to unlock the front door</a>, and I think I&apos;ve finally figured out a novel setup for home</p> 

<https://a.wholelottanothing.org/my-long-strange-trip-into-home-automation/>

---

##  Project 2025: The Minority Rule by Extremists 

date: 2024-07-17, updated: 2024-07-17, from: Jason Kittke's blog

 

<https://kottke.org/24/07/project-2025-the-minority-rule-by-extremists>

---

## Field Notes. 07.17.2024

date: 2024-07-17, from: Om Malik blog

&#8220;In 2023, intense competition among over 100 LLMs has emerged in China, resulting in a significant waste of resources, particularly computing power. I&#8217;ve noticed that many people still primarily focus on foundational models. But I want to ask: How about real-world applications? Who has benefitted from them?&#8221; Robin Li Yanhong,&#160;the founder and CEO of Baidu &#8230; 

<https://om.co/2024/07/17/field-notes-07-17-2024/>

---

##  The best Prime Day deal is Apple&#8217;s AirPods Pro (2nd gen) on... 

date: 2024-07-17, updated: 2024-07-17, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044956-the-best-prime-day-deal>

---

##  Immunotherapy Is Changing Cancer Treatment Forever. &#8220;Immunotherapy&#8230;has produced breakthroughs for previously untreatable... 

date: 2024-07-17, updated: 2024-07-17, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044959-immunotherapy-is-changing>

---

## July 16, 2024

date: 2024-07-17, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/july-16-2024-bf3>

---

## Social internet has ED

date: 2024-07-17, from: Om Malik blog

Interaction bait is killing social media. You know what I’m talking about. Those posts that are designed to get you to comment, like, or share. They’re everywhere, and they’re getting more and more annoying. People are posting things that are clearly designed to get a reaction. And it’s not just the posts themselves that are &#8230; 

<https://om.co/2024/07/17/social-internet-has-ed/>

---

**@Dave Winer's Scripting News** (date: 2024-07-17, from: Dave Winer's Scripting News)

The Repubs can win by throwing the election into the House. They can probably get it by the courts in enough places, just a couple of swing states, and they win even if they lose by normal vote-counting methods. The whole bit about Biden's age is meant to distract us from the fact it probably doesn't matter how old the Democratic candidate is. 

<http://scripting.com/2024/07/17.html#a172051>

---

##  On Politics and Poetry 

date: 2024-07-17, updated: 2024-07-17, from: Jason Kittke's blog

 

<https://kottke.org/24/07/on-politics-and-poetry>

---

## Delightful, friendly maps

date: 2024-07-17, from: Tracy Durnell Blog

I know this article isn&#8217;t *really* about maps, but I *have* wished Google Maps had a &#8220;scenic route&#8221; option. (It seems I&#8217;m not the only one who wants more options in Google Maps.) I figure you could combine actual scenic routes with old highways that often run alongside the freeways that replaced them for road [&#8230;] 

<https://tracydurnell.com/2024/07/17/delightful-friendly-maps/>

---

## Cloudflare Reports that Almost 7% of All Internet Traffic Is Malicious

date: 2024-07-17, updated: 2024-07-17, from: Bruce Schneier blog

<p><a href="https://www.crowdstrike.com/2024-state-of-application-security-report/">6.8%</a>, to be precise.</p>
<p>From <a href="https://www.zdnet.com/article/cloudflare-reports-almost-7-percent-of-internet-traffic-is-malicious/">ZDNet</a>:</p>
<blockquote><p>However, <a href="https://www.zdnet.com/article/what-is-a-ddos-attack-everything-you-need-to-know-about-ddos-attacks-and-how-to-protect-against-them/">Distributed Denial of Service (DDoS)</a> attacks continue to be cybercriminals&#8217; weapon of choice, making up over 37% of all mitigated traffic. The scale of these attacks is staggering. In the first quarter of 2024 alone, Cloudflare blocked 4.5 million unique DDoS attacks. That total is nearly a third of all the DDoS attacks they mitigated the previous year.</p>
<p>But it&#8217;s not just about the sheer volume of DDoS attacks. The sophistication of these attacks is increasing, too. Last August, <a href="https://www.zdnet.com/article/google-cloud-aws-and-cloudflare-report-largest-ddos-attacks-ever/">Cloudflare mitigated a massive HTTP/2 Rapid Reset DDoS attack that peaked at 201 million requests per second (RPS)...</a></p></blockquote> 

<https://www.schneier.com/blog/archives/2024/07/cloudflare-reports-that-almost-7-of-all-internet-traffic-is-malicious.html>

---

## Hello from 2024

date: 2024-07-17, from: Dave Winer's Scripting News

<p>A <a href="http://scripting.com/2024/07/17/helloFrom2024.m4a">podcast</a> about listening to the podcasts from 2004. </p>
<p>This is a short episode about what I learned, and what's coming up.</p>
<p>Humbling experience. </p>
 

<http://scripting.com/2024/07/17/155053.html?title=helloFrom2024>

---

## Pete Wells Is Stepping Down as NYT Food Critic

date: 2024-07-17, updated: 2024-07-17, from: Daring Fireball

 

<https://www.nytimes.com/2024/07/16/dining/pete-wells-steps-down-food-critic.html?unlocked_article_code=1.7k0.R2zu.sGv5x7hNrfba>

---

##  Scientists extracted DNA from an exceptionally preserved woolly mammoth. &#8220;A complete genome... 

date: 2024-07-17, updated: 2024-07-17, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044952-scientists-extracted-dna->

---

## Office Hours: Did the assassination attempt help Trump, and if so, how?

date: 2024-07-17, from: Robert Reich's blog

Friends, As I said Saturday, I was enormously relieved that the assassination attempt on Trump failed. Besides the human cost would have been a dangerous political one: The violence lurking just under the surface of American politics needs no further provocation. 

<https://robertreich.substack.com/p/office-hours-did-the-assassination>

---

## DIY electricity

date: 2024-07-17, from: Enlightenment Economics blog

My student Aneesha gave me a book a few weeks ago before she headed off to do her PhD in energy systems at Berkeley, The Grid by Gretchen Bakke. OK, I thought, I&#8217;ll give it a try &#8211; but how &#8230; <a href="http://www.enlightenmenteconomics.com/blog/index.php/2024/07/diy-electricity/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<http://www.enlightenmenteconomics.com/blog/index.php/2024/07/diy-electricity/>

---

## July 16, 2024 

date: 2024-07-17, from: Heather Cox Richardson blog

The Republican National Convention is a moment to reintroduce Trump and MAGA Republicans to voters who have not seen them up close since at least 2021. So far, the convention has proved that the Republican Party is now the MAGA Party. It has not been a smooth unveiling. 

<https://heathercoxrichardson.substack.com/p/july-16-2024>

---

## Vision Pro, the first few days

date: 2024-07-17, from: Paolo Valdemarin's blog

I picked up my Vision Pro last Friday, as soon as it became available in the UK. These have been busy days, so I haven’t had much time to play with the new toy, but I want to share my first impressions. It’s an impressive piece of kit. While I’m not sure the steep price &#8230; <a href="https://val.demar.in/2024/07/vision-pro-first-few-days/" class="more-link">Continue reading<span class="screen-reader-text"> "Vision Pro, the first few days"</span></a> 

<https://val.demar.in/2024/07/vision-pro-first-few-days/>

---

## 2024-07-16 What's the minimal NNCP setup to get started?

date: 2024-07-17, from: Alex Schroeder's Blog

<h1 id="2024-07-16-what-s-the-minimal-nncp-setup-to-get-started">2024-07-16 What&rsquo;s the minimal NNCP setup to get started?</h1>

<p>This page is for you if you are curious about NNCP and you don&rsquo;t know how to get started.
It contains instructions on how to set up your laptop such that it can exchange files with my laptop (melanobombus) via my server (sibirocobombus).</p>

<p>Before testing it, you need to send me an email with some info but we&rsquo;ll get to that.</p>

<p>First, switch to the root user. Everything will be easier that way.</p>

<pre><code>sudo su
</code></pre>

<p>The instructions are going to assume a Debian system.</p>

<p>Begin by installing the <code>nncp</code> package.</p>

<pre><code>apt install nncp
</code></pre>

<p>Generate a new <code>/etc/nncp.hjson</code> file and secure it:</p>

<pre><code>nncp-cfgnew &gt; /etc/nncp.hjson
chown nncp:nncp /etc/nncp.hjson
chmod 660 /etc/nncp.hjson
</code></pre>

<p>You need to add my server to your <code>/etc/nncp.hjson</code> file, in the <code>neigh</code> section.</p>

<pre><code>    sibirocobombus: {
      id:       CCAIPFSAZWYICBQ5BIURX4UMEJIXVSZFIING7HRUFTDOFV5XISVQ
      exchpub:  NGEIDPDVZ2I6CTRKCBT734VV4W2YFVTV6YFBU5UGB6IHBA3QDJUQ
      signpub:  VXBMWXS74IGAYQCLJY4UPAXXQXPT3K53QI5XCFHOAKL4I2FQNLKQ
      noisepub: MGGBAOHRHEWEC6CGT47GA2DOQXQFZUAKJ66PD734Y5WNWP364UXQ
      addrs: {
        internet: &quot;alexschroeder.ch:5400&quot;
      }
      calls: [
        {
          cron: &quot;@daily&quot;
        }
      ]
    }
</code></pre>

<p>What does it mean?</p>

<ol>
<li>you know how to contact my server via the <code>.addrs.internet</code> key – you need this, but you can specify <code>campaignwiki.org</code> instead, if your prefer</li>
<li>you connect to my server every now and then via the <code>calls[0].cron</code> entry – this is not necessary if you don&rsquo;t mind using <code>nncp-call</code> every now and then</li>
</ol>

<p>My laptop can only be reached via my server. You need to add it as well.</p>

<p>As far as the <code>melanobombus.incoming</code> key goes, pick a suitable directory that your regular account has access to.</p>

<pre><code>    melanobombus: {
      id:       R23WEIHB52TMA4EKGJPKUDBFSYP2HG4HHW2HGJ3RJATCCRLYDUZQ
      exchpub:  EGP2MMLQJQUKWTHI22JTIRMR2UV3BA2ATE3AYLVOFODMTNRGAMEA
      signpub:  YO6SZXVEIU77OQQRKMAUFUT4V3NJER4U7LQE5JI7JORJXKXY5FBA
      noisepub: 6ECO4WXJNDED6WHJ6SM2HGRQMUO75X65ALT2YRKZ3YGGBDXRNV4A
      via:      [&quot;sibirocobombus&quot;]
      incoming: &quot;/home/alex/incoming/melanobombus&quot;
      exec: {
        rsmtp:  [&quot;/usr/sbin/sendmail&quot;, &quot;-bS&quot;]
      }
    }
</code></pre>

<p>What does it mean?</p>

<ol>
<li>you know how to contact my laptop via my server using the <code>.via[0]</code> key – you need this and the name needs to match the name you used for my server</li>
<li>you allow my laptop to save incoming files in a directory via the <code>.incoming</code> key – you only need this if you want to receive files (the directory must exist and the <code>nncp</code> group must be allowed to write to it)</li>
<li>you allow my laptop to send mail to local users via the <code>.exec.rsmtp</code> key – this is not necessary if you don&rsquo;t want to receive mail</li>
</ol>

<p>You would create the incoming directory as follows, as your regular user:</p>

<pre><code>mkdir --parents ~/incoming/melanobombus
sudo chgrp nncp ~/incoming/melanobombus
sudo chmod g+w ~/incoming/melanobombus
</code></pre>

<p>You need to send me your system&rsquo;s public keys from the <code>/etc/nncp.hjson</code> file so that I can set up similar entries on my laptop and my server.</p>

<p>Once I&rsquo;ve added your public keys to my server, we can test it.</p>

<p>My server will not call you, since it doesn&rsquo;t know your Internet address.
It waits for you to call it both when you want to send or when you want to receive something.
You would do this as follows:</p>

<pre><code>sudo -u nncp nncp-call sibirocobombus
</code></pre>

<p>Otherwise, the <code>@daily</code> entry in the <code>sibirocobombus.cron[0]</code> entry of your <code>/etc/nncp.hjson</code> file will call my server once a day, at midnight.</p>

<p>To send me a README file, you&rsquo;d run:</p>

<pre><code>sudo -u nncp nncp-file README melanobombus:
2024-07-12T18:12:15Z Tx README 486 B/486 B 100% (73 KiB/sec)
2024-07-12T18:12:15Z File README (282 B) is sent to melanobombus:README
</code></pre>

<p>At this point, the file is in the queue.</p>

<p>You need to to call my server using <code>sudo -u nncp nncp-call sibirocobombus</code> to actually send the files or you&rsquo;ll have to wait for the cron job. My server will receive the packets encrypted and addressed to my laptop and enqueue them again. The next time my laptop calls my server, it&rsquo;ll get them.</p>

<p>You probably want to let me know about the file via <a href="Contact">another channel</a>. But soon enough we can set up mail via NNCP. 😁</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23NNCP">#NNCP</a></p> 

<https://alexschroeder.ch/view/2024-07-16-minimal-nncp-setup>

---

## Wednesday 17 July, 2024

date: 2024-07-16, from: John Naughton's online diary

A rose by any other name… Quote of the Day &#8220;I don&#8217;t think I am any good. If I thought I was any good, I wouldn&#8217;t be&#8221; John Betjeman Lovely man, though logic wasn’t his strong point. I never pass &#8230; <a href="https://memex.naughtons.org/wednesday-17-july-2024/39641/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/wednesday-17-july-2024/39641/>

---

##  Jimi Hendrix Goes Acoustic 

date: 2024-07-16, updated: 2024-07-16, from: Jason Kittke's blog

 

<https://kottke.org/24/07/jimi-hendrix-goes-acoustic>

---

##  In this interview, Errol Morris talks about truth, documentary filmmaking, and AI.... 

date: 2024-07-16, updated: 2024-07-16, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044954-in-this-interview-errol-m>

---

## Taboola + Apple News? No thanks

date: 2024-07-16, from: Om Malik blog

I’ve been a happy Apple One customer. It made perfect sense to sign up for the package considering I was paying for Apple TV+, Apple Music, and iCloud storage. For an extra couple of dollars, I could get Apple News+, so I thought why not. That ended today when I learned that Apple had struck &#8230; 

<https://om.co/2024/07/16/taboola-apple-news-no-thanks/>

---

##  Important not to forget with all that is going on: Republicans will... 

date: 2024-07-16, updated: 2024-07-16, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044953-important-not-to-forget-w>

---

## Why FTC Needs to Rethink Tech Regulation

date: 2024-07-16, from: Om Malik blog

If you’ve been a regular reader, you know I’m a little skeptical of government regulators (including the FTC and DOJ) being able to control and rein in Big Tech, and more importantly, bring about change that is timely, impactful and meaningful in the long run. No matter how well-meaning their intentions might be — and &#8230; 

<https://om.co/2024/07/16/why-ftc-needs-to-rethink-tech-regulation/>

---

##  E.B. White Writes to a Man Who Has Lost Faith in Humanity 

date: 2024-07-16, updated: 2024-07-16, from: Jason Kittke's blog

 

<https://kottke.org/24/07/eb-white-writes-to-a-man-who-has-lost-faith-in-humanity>

---

##  If you&#8217;re on Bluesky, you can follow the Downticket Democrats bot: &#8220;I... 

date: 2024-07-16, updated: 2024-07-16, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044948-if-youre-on-bluesky-you>

---

##  After 12 years, Pete Wells is stepping down as the NY Times&#8217;... 

date: 2024-07-16, updated: 2024-07-16, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044950-after-12-years-pete-wells>

---

##  Nothing About the Attempted Assassination Redeems Trump. &#8220;That Trump is a victim... 

date: 2024-07-16, updated: 2024-07-16, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044949-nothing-about-the-attempt>

---

**@Dave Winer's Scripting News** (date: 2024-07-16, from: Dave Winer's Scripting News)

Highly recommend this <a href="https://www.netflix.com/title/81614129">Netflix series</a> -- esp the last three episodes. I found it enlightening, even though I lived through most of this history, I never saw it all put together in a series of events over decades. I came out of it with a much clearer perspective of where we are in the Cold War. It never was over. "The end of history" was too good to be true. Also glad I read so much about slavery a few years ago. If you put both these together, you get the USA, and the deep and lasting wounds we keep re-opening. 

<http://scripting.com/2024/07/16.html#a163319>

---

## July 15, 2024

date: 2024-07-16, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/july-15-2024-633>

---

##  It&#8217;s Random Midsummer Shopping Day Again! (AKA Prime Day) 

date: 2024-07-16, updated: 2024-07-16, from: Jason Kittke's blog

 

<https://kottke.org/24/07/its-random-midsummer-shopping-day-again-aka-prime-day>

---

## Accelerated Computing

date: 2024-07-16, from: David Rosenthal's blog

<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://i0.wp.com/www.betweentworocks.com/wp-content/uploads/2016/03/oldman.jpg?ssl=1" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="270" data-original-width="480" height="113" src="https://i0.wp.com/www.betweentworocks.com/wp-content/uploads/2016/03/oldman.jpg?ssl=1" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://i0.wp.com/www.betweentworocks.com/wp-content/uploads/2016/03/oldman.jpg?ssl=1">Source</a></td></tr></tbody></table>
One big problem of the economies of the US and the UK is the cult of the CEO, and the resulting flood of CEO hagiographies that appear after a surge in their company's stock price. These aren't harmless fluff pieces, they contribute to a CEO mindset that is profoundly destructive &mdash; see <a href="https://blog.dshr.org/2024/05/elon-musk-threat-or-menace-part-5.html">Elon Musk</a> for one example. <a href="https://www.theguardian.com/commentisfree/article/2024/jul/14/the-rich-were-led-to-believe-they-were-different-those-days-are-numbered">Will Hutton writes</a>:<br />
<blockquote>
But decades of being congratulated and indulged for the relentless pursuit of their own self-interest has turned the heads of too many of our successful rich. They really believe that they are different: that they owe little to the society from which they have sprung and in which they trade, that taxes are for little people. We are lucky to have them, and, if anything, owe them a favour.
</blockquote>
Below the fold I continue the "Old man yells at cloud" theme of <a href="https://blog.dshr.org/2024/07/x-window-system-at-40.html">recent</a> <a href="https://blog.dshr.org/2024/07/engineering-for-long-term.html">posts</a> by trying to clarify an aspect of the current Jensen Huang hagiography.<br />
<span><a name='more'></a></span>
<br />
Ed Zitron's must-read <a href="https://www.wheresyoured.at/tss/"><i>The Shareholder Supremacy</i></a> traces the idea of the super-hero CEO revealed by a soaring stock price to:<br />
<blockquote>
the famous <a href="https://en.wikipedia.org/wiki/Dodge_v._Ford_Motor_Co.">Dodge vs. Ford Motor Co.</a> case that would define — and ultimately doom — modern capitalism, and in many ways birth the <a href="https://www.wheresyoured.at/the-rot-economy/">growth-at-all-costs Rot Economy</a>.<br />
<br />
<a href="https://casetext.com/case/dodge-v-ford-motor-co">The Michigan Supreme Court</a> found that "a business corporation is organized and carried on primarily for the profit of the stockholders [and that] the powers of the directors are to be employed for that end," and intimated that cash surpluses should not be saved to invest in upcoming projects, but distributed to shareholders, because Ford had shown that it was good at making money. Ford was directly forbidden from lowering prices and raising employee salaries, and forced to issue a dividend.<br />
<br />
To be clear, the statement around corporations’ duty toward shareholders was made “<a href="https://en.wikipedia.org/wiki/Obiter_dictum">obiter dicta</a>.” This means it was not actually legally binding, despite over a hundred years of people acting as if it was.
</blockquote>
Zitron goes on to detail how "Neutron" Jack Welch destroyed General Electric while being lionized as a super-star CEO. I can testify to his malign influence because, during my time at Sun Microsystems, Scott McNealy was seduced by it.<br />
<br />
Now on to the latest CEO whose soaring stock price has caught the attention of the CEO hagiographers, Jensen Huang. Don't get me wrong. I was there when he was a really good startup CEO, and unlike many others he has grown with the company in a very impressive way.<br />
<br />
In <a href="https://spyglass.org/the-envy-of-nvidia/"><i>The Envy of Everyone</i></a>, M. G. Siegler remarks on:<br />
<blockquote>
  this <a href="https://x.com/mgsiegler/status/1803337041024823348">incredibly prescient profile</a> of co-founder and CEO Jensen Huang back in 2017 by Andrew Nusca (in naming him Fortune's 2017 'Businessperson of the Year').
</blockquote>
At the time Siegler <a href="https://x.com/mgsiegler/status/933775680093016064">tweeted</a>:<br />
<blockquote>
“Video games was our killer app — a flywheel to reach large markets funding huge R&amp;D to solve massive computational problems.”<br />
<br />
Genius foresight. Sounds obvious now. Was not then.
</blockquote>
Siegler was commenting on Andrew Nusca's 2017 profile entitled <a href="https://fortune.com/2017/11/16/nvidia-ceo-jensen-huang/"><i>This Man Is Leading an AI Revolution in Silicon Valley—And He’s Just Getting Started</i></a>. As Huang hagiography goes, it was pretty good. The quote in the tweet is from Jensen Huang talking about the early days:<br />
<blockquote>
“We believed this model of computing could solve problems that general-purpose computing fundamentally couldn’t,” Huang says. “We also observed that video games were simultaneously one of the most computationally challenging problems and would have incredibly high sales volume. Those two conditions don’t happen very often. Video games was our killer app—a flywheel to reach large markets funding huge R&amp;D to solve massive computational problems.”
</blockquote>
I don't disagree with what Huang said. Despite the need to focus on gaming, we did have a vague idea that in the future there would be other application areas in which custom accelerators could make an impact. And it is true that Nvidia's VCs, Sutter Hill and Sequoia, gave us the time to develop a multi-generation architecture rather than rushing out a "minimum viable product". I do quibble with the idea that this was "genius foresight".<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgdEoBCcbQWpUVPJ6hy4pJ4R-UQ8W00UF0RCinSPks89bfqYZ3G6QByHv0VYnU2VclMzLdq76cS6Le0lJgb-n8IbrJVAfWZF_ABUudK3QkcmMqpH70Ekp8xqcK-O4Fj0np2veBBx8HrWIVRflXe6Q0w2WCeFHlZASvVlS_lWExhB3xHPMpxGFes9Ns8ki2s/s498/SystemDiagram.jpg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="402" data-original-width="498" height="161" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgdEoBCcbQWpUVPJ6hy4pJ4R-UQ8W00UF0RCinSPks89bfqYZ3G6QByHv0VYnU2VclMzLdq76cS6Le0lJgb-n8IbrJVAfWZF_ABUudK3QkcmMqpH70Ekp8xqcK-O4Fj0np2veBBx8HrWIVRflXe6Q0w2WCeFHlZASvVlS_lWExhB3xHPMpxGFes9Ns8ki2s/w200-h161/SystemDiagram.jpg" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">90s System Diagram<br /></td></tr></tbody></table>
Even back when I was working with Curtis Priem and Chris Malachowsky on Sun's GX graphics chips the problem we were solving was that the CPU could not write pixels into the framebuffer fast enough for any kind of 3D application. So a chip, then called a graphics chip but now called a GPU, was needed between the CPU and the framebuffer capable of converting a small number of writes from the CPU into a large number of writes to the framebuffer. Designs faced three major performance constraints:<br />
<ul>
<li>The limited bandwidth of the bus carrying instructions from the CPU to the graphics chip. I wrote about how we addressed this constraint in <a href="https://blog.dshr.org/2024/07/engineering-for-long-term.html"><i>Engineering For The Long Term</i></a>.</li>
<li>The limited write bandwidth of the framebuffer.</li>
<li>The limited transistor budget imposed by the chip's cost target.</li>
</ul>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhMPqstsWtfLASYMqdm9Zx18OV8zMInvJl3axT4qASYmp6A72o14Usk_GKXclyD0fUBGZXpQCakkOiEC-kcggp2YPdcHRPBgOuup17UoCJ84lIk_enUh0GeF1XGpyKQMkuALHWeEQnZJdQ3KK9OIAMDjUp3tjCe7eCRmIRArEY3iw6wu5qRIAEdCgkFpFQq/s1160/Dedge3d.jpg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="729" data-original-width="1160" height="126" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhMPqstsWtfLASYMqdm9Zx18OV8zMInvJl3axT4qASYmp6A72o14Usk_GKXclyD0fUBGZXpQCakkOiEC-kcggp2YPdcHRPBgOuup17UoCJ84lIk_enUh0GeF1XGpyKQMkuALHWeEQnZJdQ3KK9OIAMDjUp3tjCe7eCRmIRArEY3iw6wu5qRIAEdCgkFpFQq/w200-h126/Dedge3d.jpg" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://en.wikipedia.org/wiki/NV1">NV1-based Diamond Edge</a><br /> <a href="https://en.wikipedia.org/wiki/User:Swaaye">Swaaye</a>, <a href="http://creativecommons.org/licenses/by-sa/3.0/">CC-By-SA 3.0</a></td></tr></tbody></table>
Six months after we started Nvidia, we knew of over 30 other companies all trying to build 3D graphics chips for the PC. They fell into two groups. Nvidia and a few others were making <i>fixed-function</i> accelerators, but most were trying to get faster time-to-market by making <i>programmable</i> accelerators in which the functions were implemented in software running on a CPU in the graphics chip.<br />
<br />
One problem for the programmable companies was that the transistors needed to implement the graphic chip's CPU's fetch, decode, execute system were not available to implement the actual graphics functions, such as matrix multiply.  A second problem was that the CPU in the graphics chip needed to fetch its instructions forming the program that defined the functions from some memory:<br />
<ul>
<li>It could fetch them from the system memory that the CPU got its data and instructions from. That wasn't a good idea since (a) it required implementing a DMA engine in the graphics chip, and (b) the DMA engine's program fetches would compete for the limited bandwidth of the bus.</li>
<li>It could fetch them from a separate program memory private to the graphic chip. This wasn't a good idea since it added significant cost, both for the separate memory itself and also for the extra pins and complexity of the graphics chip's extra memory port.</li>
<li>It could fetch them from the framebuffer memory. This wasn't a good idea since the program fetches would compete with the limited bandwidth of the framebuffer RAM's random access port. </li>
</ul>
The result was that for many product generations from NV1 the winning graphics chips were all fixed-function. At the time Nvidia was started, a <a href="https://en.wikipedia.org/wiki/Person_having_ordinary_skill_in_the_art">person having ordinary skill in the art</a> should have understood that fixed-function accelerator hardware was the way to go. We were not geniuses.<br />
<br />
Over the years, Moore's Law gradually relaxed the constraints, forcing the design choices to be re-evaluated. As we had expected, the one that relaxed fastest was the transistor budget. The obvious way for the accelerator to exploit the extra transistors was to perform functions in parallel. For parallel applications such as graphics this increased the accelerator advantage over the CPU. But equally important in the competitive market for graphics chips, it sped up the design by making the chip an assembly of many identical units.<br />
<br />
The constraints continued to relax. In 2001 Nvidia had enough transistors and bandwidth to release the <a href="https://en.wikipedia.org/wiki/GeForce_3_series">GeForce 3 series</a> with programmable pixel and vertex shaders. Eventually, various non-graphics communities figured out how to use the increasing programmability of Nvidia's GPUs to accelerate their parallel applications, and Nvidia seized the opportunity to create a software platform with the 2007 release of <a href="https://en.wikipedia.org/wiki/CUDA">CUDA</a>. By greatly simplifying the development of massively parallel applications for Nvidia GPUs, CUDA drove their adoption in many fields, AI being just the latest.<br />
<br />
<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgAN7udL-9jYIISli8q3hHFwg-JvBNj6Wo1vMCI7L3ybLxXcyCvEZ5_JNIviT5ol_7ZUPF-_qYplmrjV5zUV3W4Tn7P_xBDIBCJ3d7bm11JCNrp9_8dwX8oj-JnUsD7qOWctr5GwrHukyAFa7VS-rMWTuCgLtQWdXEQp1Ml16vE5KPPnm1SXyCbo5EFAaw_/s1303/NVDA-LogPrice.png" style="margin-left: auto; margin-right: auto;"><img border="0" data-original-height="687" data-original-width="1303" height="169" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgAN7udL-9jYIISli8q3hHFwg-JvBNj6Wo1vMCI7L3ybLxXcyCvEZ5_JNIviT5ol_7ZUPF-_qYplmrjV5zUV3W4Tn7P_xBDIBCJ3d7bm11JCNrp9_8dwX8oj-JnUsD7qOWctr5GwrHukyAFa7VS-rMWTuCgLtQWdXEQp1Ml16vE5KPPnm1SXyCbo5EFAaw_/s320/NVDA-LogPrice.png" width="320" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://yhoo.it/37Y7noI">Source</a></td></tr></tbody></table>
The Huang hagiography's focus on Nvidia's current stock price is misplaced and ahistorical. It is notoriously volatile. Look at the log plot of the stock price since the IPO. I count eight drops of 45% or more in 25 years, that's average of about one every three years.
One of the questions I asked when interviewing Chris Malachowsky for the <a href="https://blog.dshr.org/2024/04/the-50th-asilomar-microcomputer-workshop.html">50<sup>th</sup> Asilomar Microcomputer Workshop</a> was approximately "how do you manage a company with this much volatility?" His answer was, in effect, "you learn to ignore it".<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiklbf-I2AjzMk51saI1za52NT4n3Os5MKixT8W9IE5zZHi_8KV4Yp4IzKpjm6yjcS6C8lTrubfDSu0KzM7qkcDNfhZ4oVBsGolp6fcRxzPoJLaJynFRieZ0of-Fqn0hZbMZG8wHpX4XHrBf_cA9-kHODpQKl7uW-3MQrXTEi7z9E_n9MmBTfzSzMq8YjSy/s898/SequoiaTablel.png" imageanchor="1" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="291" data-original-width="898" height="65" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiklbf-I2AjzMk51saI1za52NT4n3Os5MKixT8W9IE5zZHi_8KV4Yp4IzKpjm6yjcS6C8lTrubfDSu0KzM7qkcDNfhZ4oVBsGolp6fcRxzPoJLaJynFRieZ0of-Fqn0hZbMZG8wHpX4XHrBf_cA9-kHODpQKl7uW-3MQrXTEi7z9E_n9MmBTfzSzMq8YjSy/w200-h65/SequoiaTablel.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.sequoiacap.com/article/ais-600b-question/">Source</a></td></tr></tbody></table>
David Cahn of Sequoia, one of Nvidia's two VCs, writes in <a href="https://www.sequoiacap.com/article/ais-600b-question/"><i>AI’s $600B Question</i></a>:<br />
<blockquote>
In September 2023, I published <a href="https://www.sequoiacap.com/article/follow-the-gpus-perspective/">AI’s $200B Question</a>. The goal of the piece was to ask the question: “Where is all the revenue?” <br />
<br />
At that time, I noticed a big gap between the revenue expectations implied by the AI infrastructure build-out, and actual revenue growth in the AI ecosystem, which is also a proxy for end-user value. I described this as a <i>“$125B hole that needs to be filled for each year of CapEx at today’s levels.” </i><br />
...<br />
The $125B hole is now a $500B hole: In the last analysis, I generously assumed that each of Google, Microsoft, Apple and Meta will be able to generate $10B annually from new AI-related revenue. I also assumed $5B in new AI revenue for each of Oracle, ByteDance, Alibaba, Tencent, X, and Tesla. Even if this remains true and we add a few more companies to the list, the $125B hole is now going to become a $500B hole.
</blockquote>
Goldman Sachs' provides furtehr skepticism in <a href="https://www.goldmansachs.com/intelligence/pages/gs-research/gen-ai-too-much-spend-too-little-benefit/report.pdf"><i>Gen AI: Too Much Spend, Too Little Benefit?</i></a>:<br />
<blockquote>
Tech giants and beyond are set to spend over $1tn on AI capex in coming years, with so far little to show for it. So, will this large spend ever pay off? MIT’s Daron Acemoglu and GS’ Jim Covello are skeptical, with Acemoglu seeing only limited US economic upside from AI over the next decade and Covello arguing that the technology isn’t designed to solve the complex problems that would justify the costs, which may not decline as many expect.
</blockquote>
Another huge drop in the stock price is sure to be in the offing. How great will the hagiographers think Huang is then?<br />
<br />
<table align="center" border="1" cellpadding="3" cellspacing="5" cols="4" rules="groups">
<thead><tr><th>Company</th><th>Market</th><th>Quarterly</th><th>Employees</th><th>MktCap per</th><th>Income per</th></tr>
<tr><th>&nbsp;</th><th>Cap</th><th>Income</th><th>&nbsp;</th><th>Employee</th><th>Employee</th></tr>
</thead><tbody>
<tr><td align="left">NVDA</td><td align="right">$3T</td><td align="right">$26B</td><td align="right">30K</td><td align="right">$100M</td><td align="right">$867K</td></tr>
<tr><td align="left">GOOG</td><td align="right">$2.3T</td><td align="right">$25B</td><td align="right">185K</td><td align="right">$17M</td><td align="right">$140K</td></tr>
<tr><td align="left">AAPL</td><td align="right">$3.2T</td><td align="right">$28B</td><td align="right">160K</td><td align="right">$20M</td><td align="right">$170K</td></tr>
<tr><td align="left">MSFT</td><td align="right">$3.3T</td><td align="right">$22B</td><td align="right">221K</td><td align="right">$15M</td><td align="right">$100K</td></tr>
</tbody></table>
<br />
Mr. Market will do what Mr. Market does, the stock price isn't under Huang's control.  The things that are under Huang's control are the operating profit margin (53%), revenues ($26B/quarter), and the company's incredible efficiency. Nvidia's peers in the $2-3T market cap range have between 5 and 7 times as many employees. As Huang says, Nvidia is the smallest big company.<br />
<br /> 

<https://blog.dshr.org/2024/07/accelerated-computing.html>

---

##  &#8220;15 Books About Appalachia to Read Instead of Hillbilly Elegy&#8221; 

date: 2024-07-16, updated: 2024-07-16, from: Jason Kittke's blog

 

<https://kottke.org/24/07/15-books-about-appalachia-to-read-instead-of-hillbilly-elegy>

---

##  Investigation Finds Secret Service Failed To Account For Nation’s 393 Million Guns.... 

date: 2024-07-16, updated: 2024-07-16, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044945-investigation-finds-secre>

---

**@Dave Winer's Scripting News** (date: 2024-07-16, from: Dave Winer's Scripting News)

<a href="https://www.facebook.com/photo.php?fbid=2288764287997630&set=a.113966572144090&type=3&comment_id=1236133897373396&notif_id=1721130567941861&notif_t=feedback_reaction_generic&ref=notif">Today's adventure</a>: "The great and cute Wordle Kitty was surprisingly chosen to be the running mate of the most popular presidential candidate in the history of the United States, who happens to also be very very old so that’s why they nominated the cute little cat to be the vice president because she is so young and so incredibly cute." 

<http://scripting.com/2024/07/16.html#a122427>

---

**@Dave Winer's Scripting News** (date: 2024-07-16, from: Dave Winer's Scripting News)

And btw, don't panic. You can't accomplish anything that way. 

<http://scripting.com/2024/07/16.html#a122149>

---

## 2024-07-16 The Dark Net

date: 2024-07-16, from: Alex Schroeder's Blog

<h1 id="2024-07-16-the-dark-net">2024-07-16 The Dark Net</h1>

<p>I haven&rsquo;t read The Dark Forest but I read a few blog posts about it.
What really got me interested, however, was <a href="https://www.ystrickler.com/the-dark-forest-theory-of-the-internet/">The Dark Forest Theory of the Internet</a> by Yancey Strickler in 2019:</p>

<blockquote>
<p>In response to the ads, the tracking, the trolling, the hype, and other predatory behaviors, we’re retreating to our dark forests of the internet, and away from the mainstream. – Yancey Strickler</p>
</blockquote>

<p>I often think of where the world is headed, politically. I&rsquo;m a doomer at heart.</p>

<p>As part of that, I think about the Internet in a few decades. In the worst case, the public Internet is gone. An alternative that is slightly less bad is that governments will have discovered that blocking at the level of the national Domain Name System (DNS) won&rsquo;t work because it&rsquo;s easy to circumvent using alternative name servers. And so, slowly at first but then ever faster, from the top down, people will think that perhaps the Great Firewall is cool: for the children, against porn, against spam, against vandalism, to fight tax evasion, to fight terrorism, you know the deal. And yes, even to fight fascism. So many people are telling me that we should ban Telegram, for example.</p>

<p>I&rsquo;m honestly not sure what to recommend. Is the free press our problem? I don&rsquo;t think so. It&rsquo;s the incentives and the power imbalances that are a problem. Rich people pay other people to create companies, to buy companies, to sponsor some programs and to cancel others, and slowly the landscape changes. Big corporations buy small ones. Rich people buy failing ones. The prime example here in Switzerland is how the Weltwoche was bought by billionaires and handed to somebody who supports a flat tax, who supports the ban on minarets, who supports supports tax evasion abroad, who supports anti-refugee policies… all of it legal, of course, but these laws are nauseating. The same pattern can be seen in how the state tries to support media diversity and still the big publishers manage to profit the most. The same pattern can be seen in how the right wing parties fight against state radio and state TV.</p>

<p>So what I recommend is to not go dark. Have friends. Have social media. But be aware that our time might be short. We might have to build the infrastructure while we can. Those of us who can should build for the rest of us who have other things on their mind. We should build this to be as easy to use as possible. We should build this so that we can detach from the public Internet and it will still work.</p>

<p>The sneaker-net will be back. They will call it the dark net but to me, it will forever be friends meeting in a place, with mass storage in our backpacks (at the time) or in our pockets, exchanging stuff. And even if this future is not great at all, we need that alternative. How else will our future selves and our children organize? And even if it turns out to be unnecessary because we keep riding that wild horse of freedom, forever teetering at the brink of fascism, alternative needs to be there to keep the next level of services in line. I still believe that the availability and ubiquity of bit-torrent is what keeps the prices of streaming services down. It&rsquo;s the threat of piracy that keeps the official channels honest. Because we can always go back. The infrastructure is still around. The software is still around.</p>

<p>This is why I&rsquo;m interested in <a class="account" href="https://floss.social/@jgoerzen" title="@jgoerzen@floss.social">@jgoerzen</a>&rsquo;s <a href="https://changelog.complete.org/archives/10231-recovering-our-lost-free-will-online-tools-and-techniques-that-are-available-now">Recovering Our Lost Free Will Online: Tools and Techniques That Are Available Now</a>. In my case, the thing I&rsquo;m most interested in is NNCP.</p>

<p>NNCP allows us to connect all services that can be made to work with a <a href="https://en.wikipedia.org/wiki/Store_and_forward">store and forward</a> architecture. The simplest and oldest protocols in this respect are mail and file copying, and services built on top of that, such as net news. These services grew big with UUCP, the precursor to NNCP. Store-and-forward precludes the kind of interactive applications many of us are used to. Instead, it&rsquo;s a bit like a library or a book store: you order a book and at some point you get the book. There is a delay. The postal system works the same way: write a letter and send it off, wait for some days, maybe get a reply back. Basically, anything that can be imagined as requesting something and getting back a reply after some time can be implemented using store-and-forward architecture.</p>

<p>If you think of the web as serving static documents, it can be made to work. Imagine reading Wikipedia via email: you send the URL via email to a service, and some time later you get back an email with the response. Soon we would be thinking of extensions to this. What if the response returned an archive of the page requested, all the images it includes, and the same for all the Wikipedia content pages it links to? Fewer visits to the library, so to say! It would be much harder to do the same thing using traditional social media because the web sites are more like web apps. There are a gazillion ways to view things: in a time line (or multiple time lines!), on a profile (so many profiles!), in threads, in search results, and so on. If every click on a button requires a trip that can take many days, it&rsquo;s doesn&rsquo;t work. Instead, such social media sites must be restructured to work a bit like net news: new posts satisfying some filters are sent in regular updates and your local client rearranges the, filters them, searches them.</p>

<p>All of this <a href="https://en.wikipedia.org/wiki/Delay-tolerant_networking">delay-tolerant networking</a> is possible with Unix to Unix Copy (<a href="https://en.wikipedia.org/wiki/UUCP">UUCP</a>). What Node to Node Copy (<a href="http://www.nncpgo.org/">NNCP</a>) adds is <a href="https://en.wikipedia.org/wiki/End-to-end_encryption">end-to-end encryption</a> (in a multi-hop setup the packets remain encrypted so the carrier cannot read them) and <a href="https://en.wikipedia.org/wiki/Onion_routing">onion routing</a> (in a multi-hop setup the carrier doesn&rsquo;t know where the packet is originally from or where the packet is going to end up). And with that, the sneaker-net is back. You can imagine a low-tech future where most of the last miles are burned, the copper stolen and repurposed, the optical fibre no longer functional, and a service springs up where the post or some other courier is used to send USB sticks and SD cards from community to community in order to exchange letters, reports, movies, pictures, music, and so on. Or if the government is monitoring the airwaves and declaring mesh networks illegal or taking over the mesh networks (like Cuba&rsquo;s Street Network, <a href="https://en.wikipedia.org/wiki/Internet_in_Cuba#SNET">SNET</a>), we&rsquo;ll have to rely on USB sticks and SD cards, too.</p>

<p>This is where we&rsquo;re getting back to the Dark Forest. I don&rsquo;t have an answer to that. It&rsquo;s a bit like members-only bit-torrent sites. Do you trust them? Do they trust you? How are you going to learn about the trustworthy ones?</p>

<p>In order to learn more, to be prepared, to think things through, I want to experiment with the technology. I want to see what can be done, run into the issues, pick the low hanging fruits. Play with the technology before we really need it.</p>

<p>I remember audio cassettes being sent back and forth as a kid when we were living in South-West Africa (back before they finally got their freedom and renamed the country to Namibia) and my grandparents were living in Austria. Phone calls were very expensive. So the family sat around a tape recorder, each of us speaking in turn, saying something, and weeks later, all of us gathering again, listening to the replies.</p>

<p>Using images like these virtual, delay-tolerant family gatherings worked long before I knew anything at all about computers.</p>

<p><a class="tag" href="/search/?q=%23NNCP">#NNCP</a></p> 

<https://alexschroeder.ch/view/2024-07-16-why-nncp>

---

**@Dave Winer's Scripting News** (date: 2024-07-16, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/07/16/loganRoy.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">The problem with <a href="https://en.wikipedia.org/wiki/J._D._Vance">JD Vance</a> is that he's empty inside, he'll be whatever he needs to be to get more power, and he's young. He's as empty as Trump, and much younger, so we can't hope to outwait him. Now we have a real problem, because Trump has a successor. I imagine Trump's sons probably aren't happy about this. Had he picked <a href="https://en.wikipedia.org/wiki/Marco_Rubio">Little Marco</a>, no one would mistake him as an heir, or <a href="https://en.wikipedia.org/wiki/Doug_Burgum">Doug Burgum</a> who is a bit too old to be an heir (same age as I am). We <i>do</i> have a problem with Biden, he hasn't prepared for this moment. Old or not, they had 3.5 years to get ready, and they didn't. As I wrote <a href="http://scripting.com/2024/07/15.html#a124845">yesterday</a>, the biggest most important thing is that we <b>organize ourselves.</b> That's the best defense all around. Every attempt to <a href="https://en.wikipedia.org/wiki/Pen_(enclosure)">corral</a> the insurrection has been either non-existent or overwhelmingly inadequate. Trump should be out of the picture, and for a while it seemed as if he was getting there, but now he's back, and probably a bigger threat than ever. I don't think replacing Biden is anywhere near enough. We need leadership. Not wait to be led. We've waited too long. People who appear ready to step up -- AOC, Bernie Sanders. Who else? I wouldn't put Obama on that list, he tried to welcome Trump, even let him have his Supreme Court pick, just to be a nice guy. We are not going to prevail by being nice, unfortunately. We're also not going to prevail by each of us taking care of Number One. We have to work together. Organize and work together. Those ought to be our mantras until we achieve them. 

<http://scripting.com/2024/07/16.html#a114643>

---

**@Dave Winer's Scripting News** (date: 2024-07-16, from: Dave Winer's Scripting News)

<a href="https://shownotes.scripting.com/podcast0/2024/07/16/interstate25DietCokeWhileDrivingNotes.html">Shownotes</a> for the <a href="https://this.how/podcast0/">Podcast0</a> from July 16, 2004. 

<http://scripting.com/2024/07/16.html#a114218>

---

## Private revolutions

date: 2024-07-16, from: Enlightenment Economics blog

Yuan Yang&#8217;s Private Revolutions: Coming of Age in New China is quietly revelatory. One of the new intake of Labour MPs, the author was born in China, moved to the UK at age 4, and returned to China as an &#8230; <a href="http://www.enlightenmenteconomics.com/blog/index.php/2024/07/private-revolutions/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<http://www.enlightenmenteconomics.com/blog/index.php/2024/07/private-revolutions/>

---

## The GOP pretends its pro-union

date: 2024-07-16, from: Robert Reich's blog

How the anti-union party courts working-class voters 

<https://robertreich.substack.com/p/opening-night-at-the-rnc-with-the>

---

## 2024-07-15 One Page Dungeon Contest

date: 2024-07-16, from: Alex Schroeder's Blog

<h1 id="2024-07-15-one-page-dungeon-contest">2024-07-15 One Page Dungeon Contest</h1>

<blockquote>
<p>&ldquo;We are excited to invite you to the 2024 One Page Dungeon Contest. We are accepting submissions starting now and to the end of July. The contest challenge is to create an intriguing and fun dungeon to play&hellip; on only one page. We would love to see you get involved.&rdquo; – <a href="https://spielknights.gumroad.com/p/invitation-to-the-2024-one-page-dungeon-contest">Invitation to the 2024 One Page Dungeon Contest</a> and the <a href="https://www.dungeoncontest.com/">Dungeon Contest</a> homepage</p>
</blockquote>

<p>I submitted an entry for the One Page Dungeon Contest.
Since I would like the dungeons to be close to the prep I do for my own games so that I feel like I belong to a community of referees that spends a similar amount of time for their adventures I took some of my (German) prep notes, cleaned them up and added some text boxes using Inskape and decided against spending time on polishing it up.</p>

<p>At the time, my players had a hard time getting past the gate.</p>

<ul>
<li><a href="https://campaignwiki.org/wiki/MontagInZ%c3%bcrich/2023-08-22_Hammond_verfolgt_den_Orkzug">2023-08-22 Hammond verfolgt den Orkzug</a> is when a player tracked a group of orcs as they reinforced the existing orc lair</li>
<li><a href="https://campaignwiki.org/wiki/MontagInZ%c3%bcrich/2023-09-20_Das_Endes_des_Balrogs">2023-09-20 Das Endes des Balrogs</a> was the first attempt at taking the lair in which they faced the fire demon and hell hounds</li>
<li><a href="https://campaignwiki.org/wiki/MontagInZ%c3%bcrich/2023-09-26_Der_Kampf_auf_den_Galerien_von_Grosshammer">2023-09-26 Der Kampf auf den Galerien von Grosshammer</a>, this is where they found a back entrance</li>
</ul>

<p>Result:</p>

<ul>
<li><a href="/pdfs/Orc_Halls_by_Alex_Schroeder_2.pdf">Orc Halls by Alex Schroeder</a></li>
</ul>

<p>At the time I had a second 10-headed hydra, too…</p>

<p>The boss orcs had 3, 5 and 7 hit dice.</p>

<p>And later, when the players had killed all the orcs, a bunch of goblins led by one Eye Poker resettled the halls.</p>

<p>These are the stats I would use:</p>

<ul>
<li><strong>orcs</strong> HD 1 AC 6 1d6 F1 MV 12 ML 8 XP 100

<ul>
<li><strong>Grishg</strong> HD 3 AC 6 1d6 F3 MV 12 ML 8 XP 300; with <em>gauntlets of max strength</em> granting +3; under the influence of the demon</li>
<li><strong>Shagdog</strong> HD 5 AC 6 1d6 F5 MV 12 ML 8 XP 500; lightning bolt 1×/day for 5d6, save vs. spells for half; very loyal to Maufimbul</li>
<li><strong>Ashuak</strong> HD 5 AC 3 1d6 F5 MV 6 ML 9 XP 500; willing to buy freedom and leave</li>
<li><strong>Maufimbul</strong> HD 7 AC 3 1d6 F7 MV 6 ML 9 XP 700; wielding <em>Fur Hunter</em> +1/+3 vs. mammals; traditionalist spear dancer</li>
</ul></li>
<li><strong>boars</strong> HD 3+1 AC 6 1d8 F1 MV 15 ML 9 XP 300</li>
<li><strong>hell hounds</strong> HD 5 AC 4 1d6 F5 MV 12 ML 9 XP 500; fire 2/6 for 5d6, save vs. spells for half; see invisible (that pack of hell hounds is also the random encounter)</li>
<li><strong>small pyrohydra</strong> HD 5 (40hp, 8hp per head) AC 5 1d10 per head F5 MV 12 ML 9 XP 500; regrowing heads (unless cauterized with fire or ice, up to 7 more heads may grow, one per round, each with 8 hp); fire breath 3×/day: deal as much damage as it has hit-points left, save vs. breath for half; poisonous blood: when cutting off a head in melee, save vs. poison or die; immune to fire and poison</li>
<li><strong>fire demon</strong> HD 9+1 AC 4 1d6/2d6 F20 MV 12 ML 11; flying; aura of fire 1d6 (everybody within 10 ft); when the first attack with the flaming whip hits, the second attack with the flaming sword is at +4; only harmed by magic and magical weapons; immune to fire (the flaming whip and the flaming sword are two magic items that can be taken from the demon)</li>
</ul>

<p>Clearly, the pyrohydra is the worst if you fight it without multiple lightning bolts or the like.</p>

<p>As for intelligent monsters, I figured that it would be possible to somehow sneak in and overhear orcs talk about the four bosses. If somebody wanted to, the power dynamic could be exploited. As it turned out, though, my players tried to force the front gate with sleep spells, alerted the guards, which brought on the fire demon and all the hell hounds. The enemies were destroyed but the party had to retreat. Next time, the party found the outlook, sent up a ranger with dark vision and a magic item that could charm humanoids. He killed the four orc guards, climbed down the netting into the cavern, found the way to the shooting gallery, started killing all the orcs and that was the signal the others needed to begin the race down the the long stairs. At the bottom, the orcs had cajoled a ten-headed pyrohydra into the Merchant Hall but it died in the first round after being hit by lightning bolts and other spells.</p>

<p>The treasure map to the Cistern of Sulphur does not contain any new monsters or traps; it&rsquo;s not a new lair or dungeon. It&rsquo;s part of the treasure gained here so all it takes is a one day trip up the mountains to that sulphur cavern. The only risk involved is random encounters.</p>

<p><a class="tag" href="/search/?q=%23RPG">#RPG</a> <a class="tag" href="/search/?q=%231PDC">#1PDC</a></p> 

<https://alexschroeder.ch/view/2024-07-15-1pdc>

---

## July 15, 2024 

date: 2024-07-16, from: Heather Cox Richardson blog

This morning, after a day of Republicans insisting that it is political polarization to suggest that Trump is a danger to our democracy, U.S. District Judge Aileen Cannon, who was appointed by Trump in the last days of his presidency, dismissed the classified documents case against the former president. She wrote that &#8220;Special Counsel Smith&#8217;s appointment violates the Appointments Clause of the United States Constitution.&#8221; 

<https://heathercoxrichardson.substack.com/p/july-15-2024>

---

## An Afternoon in New Jersey With Richard Simmons

date: 2024-07-16, updated: 2024-07-16, from: Daring Fireball

 

<https://www.youtube.com/watch?v=I4AflonZ6S4>

---

## Subjective insomnia

date: 2024-07-15, from: Tracy Durnell Blog

I think I get this sometimes. I very rarely get the can&#8217;t-sleep-till-4am kind of insomnia anymore &#8212; mostly just when I forget to take melatonin. But there&#8217;ll often be times when I&#8217;m convinced I was awake, thinking about things in a way that feels like being fully conscious, but my Fitbit says I was sleeping. [&#8230;] 

<https://tracydurnell.com/2024/07/15/subjective-insomnia/>

---

## Generic drug issues 😬

date: 2024-07-15, from: Tracy Durnell Blog

(Archive link) I&#8217;ve always bought generic versions, assuming they were basically the same, but didn&#8217;t think about the manufacturing process or know that store brands had different standards. Since I heard about the eye drop deaths last year I&#8217;ve been sketched out by using eyedrops ☹️ 

<https://tracydurnell.com/2024/07/15/generic-drug-issues-%f0%9f%98%ac/>

---

## J.D. Vance is unqualified

date: 2024-07-15, from: Robert Reich's blog

Friends, J.D. Vance &#8212; Trump&#8217;s choice for vice president &#8212; said in a social media post on Saturday that the attempted assassination of Trump was &#8220;not some isolated incident&#8221; and suggested Biden&#8217;s campaign was to blame. &#8220;The central premise of the Biden campaign is that President Donald Trump is an authoritarian fascist who must be stopped at all costs. That rhetoric led directly to President Trump&#8217;s attempted assassination.&#8221; 

<https://robertreich.substack.com/p/jd-vance-is-unqualified>

---

## Goodbye HomePod Mini in Space Gray; Hello HomePod Mini in Midnight

date: 2024-07-15, updated: 2024-07-15, from: Daring Fireball

 

<https://www.apple.com/newsroom/2024/07/apple-introduces-homepod-mini-in-midnight/>

---

## Apple Changes Policy, Allowing PC Emulator UTM SE in App Store for iOS and VisionOS

date: 2024-07-15, updated: 2024-07-15, from: Daring Fireball

 

<https://www.macrumors.com/2024/07/15/apple-approves-first-retro-pc-emulator-ios/>

---

## Hacking Scientific Citations

date: 2024-07-15, updated: 2024-07-15, from: Bruce Schneier blog

<p>Some scholars are <a href="https://theconversation.com/when-scientific-citations-go-rogue-uncovering-sneaked-references-233858">inflating their reference counts</a> by sneaking them into metadata:</p>
<blockquote><p>Citations of scientific work abide by a standardized referencing system: Each reference explicitly mentions at least the title, authors&#8217; names, publication year, journal or conference name, and page numbers of the cited publication. These details are stored as metadata, not visible in the article&#8217;s text directly, but assigned to a digital object identifier, or DOI&#8212;a unique identifier for each scientific publication.</p>
<p>References in a scientific publication allow authors to justify methodological choices or present the results of past studies, highlighting the iterative and collaborative nature of science...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/07/hacking-scientific-citations.html>

---

## July 14, 2024

date: 2024-07-15, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/july-14-2024-83f>

---

**@Dave Winer's Scripting News** (date: 2024-07-15, from: Dave Winer's Scripting News)

<a href="https://x.com/davewiner/status/1812838887900823875">NYT</a> -- put one of your readers on the op-ed page, so we can talk to your readers about you. It would be the bravest and smartest thing you ever did. 

<http://scripting.com/2024/07/15.html#a150038>

---

**@Dave Winer's Scripting News** (date: 2024-07-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2019/09/08/theTruthCanBeAdjusted.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="https://en.wikipedia.org/wiki/Al_Sharpton">Al Sharpton</a> should write the defining op-ed in the NYT, not <a href="https://en.wikipedia.org/wiki/George_Clooney">George Clooney</a>, who is very pretty, and a great choice to cast in movies like <a href="https://en.wikipedia.org/wiki/Up_in_the_Air_(2009_film)">Up In The Air</a> or <a href="https://en.wikipedia.org/wiki/Michael_Clayton">Michael Clayton</a>, but we don't know <i>anything</i> about his political judgement. He hasn't done anything to tell us who he is in that dimension. To the extent that we do know anything about him: 1. He's a <a href="https://www.yahoo.com/entertainment/george-clooney-reveals-hilarious-pranks-hes-pulled-while-pretending-to-be-brad-pitt-and-bill-clinton-063025071.html">prankster</a>. 2. He has a brilliant and beautiful <a href="https://en.wikipedia.org/wiki/Amal_Clooney">wife</a>. 3. He has a huge <a href="https://www.housebeautiful.com/lifestyle/entertainment/a45302334/george-clooney-not-selling-lake-como-villa/">mansion</a> in Italy which he keeps very private. 4. He's <a href="https://www.cosmopolitan.com/entertainment/celebs/a44752794/george-clooney-net-worth/">rich</a>. We have nothing in common. He should run for office and get in the mix. The fact that the NYT chose him, that says something about them, they don't care what people think, or they think we're really shallow and will fall for bullshit like George Clooney. He loves Biden. We didn't even know he knew Joe Biden! Why should Clooney have more of a say in this than I do? Tell me what <a href="https://en.wikipedia.org/wiki/Nancy_Pelosi">Nancy Pelosi</a> thinks, or Al Sharpton. Or give <a href="https://en.wikipedia.org/wiki/Michael_Moore">Michael Moore</a> a shot. He has a lot more skin in the game than Clooney. I'd love to read an op-ed by <a href="https://en.wikipedia.org/wiki/David_Frum">David Frum</a>. <a href="https://en.wikipedia.org/wiki/Liz_Cheney">Liz Cheney</a>. <a href="https://www.google.com/search?q=site%3Ascripting.com+%22elie+mystal%22">Elie Mystal</a>. 

<http://scripting.com/2024/07/15.html#a130217>

---

**@Dave Winer's Scripting News** (date: 2024-07-15, from: Dave Winer's Scripting News)

<i>We. Need. To. Organize.</i> Democrats should roll out new initiatives with the same skill as Apple rolls out new products. Not the same as <a href="https://www.google.com/search?q=site%3Ascripting.com+%22Steve+Jobs%22">Steve Jobs</a>, that's asking too much. But with focus and showmanship, and a livestream, and fanbois and Al Sharpton in place of <a href="https://en.wikipedia.org/wiki/John_Gruber">John Gruber</a>. Focus our attention on each product (ie climate change, social security, Ukraine, etc), so the ideas don't get missed, and we can network in support of the initiative. This is all part of the idea of having a <i>democratic.party</i> website that we call call home for our political organizing. None of this pissing in the wind we do on twitter-like systems. Form buddy groups of people we organize with, based on locality or common interests. Organize the people as well as the billionaires are organized. This is what political parties should be in 2024 for crying out loud. We're missing the point of the mess in our politics. It's all a mess because it needs to be organized and it's not. Maybe I should take everything else off my blog now so I can use what little attention I have been able to gather here to focus on this idea. 

<http://scripting.com/2024/07/15.html#a124845>

---

## Stay sane even though the news is trying to make us crazy

date: 2024-07-15, from: Dave Winer's Scripting News

<p>We should hire an intern at some J-school to keep track of all of my tweets, write them down, then translate each into a rule for what a news organization should do instead of not do. Flip the sense of the rule in other words.</p>
<p>Then we feed those rules to an AI.</p>
<p>Then we flow in the news stories of the day from various sites through the same AI for translation. Yes I know they'd complain <a href="https://www.dictionary.com/browse/vociferous">vociferously</a>, but which ones you use don't matter because the AI algorithm will translate whatever they are to Dave Winer tense.</p>
<p>Then of course publish them to another site called The News That Helps Us All Stay Sane. </p>
 

<http://scripting.com/2024/07/15/122832.html?title=staySaneEvenThoughTheNewsIsTryingToMakeUsCrazy>

---

**@Dave Winer's Scripting News** (date: 2024-07-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/21/wordleKittyHello.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">In today's Kitty Komix <a href="https://www.facebook.com/photo/?fbid=2288099451397447&set=a.113966572144090">episode</a>: "The very cute but also very courageous Wordle Kitty is learning how to be a surgeon. They brought a mysterious leader into the operating room and asked the Kitty to please operate on the leader and save his life so Wordle Kitty got out the <a href="https://www.amazon.com/Brain-Surgery-Beginners-Operations-Minors/dp/0590031872">textbook</a> and read up on brain surgery, even though the patient only had a nick on his ear, which was admittedly very bloody, she operated on the patient’s brain and unfortunately the patient died. So we are looking at the scene where the dead body of the patient is on the operating table and Wordle Kitty is smoking a cigarette, relaxing and reflecting on what she learned. She’s still very cute of course." 

<http://scripting.com/2024/07/15.html#a115144>

---

**@Dave Winer's Scripting News** (date: 2024-07-15, from: Dave Winer's Scripting News)

<a href="https://www.threads.net/@technologizer/post/C9as4g9yzl0">TWiT studio</a> in <a href="https://www.google.com/maps/place/1351+Redwood+Way,+Petaluma,+CA+94954/@38.2763137,-122.6673642,19z/data=!4m6!3m5!1s0x8085b4e3809b3ac9:0x585dbecccedf4666!8m2!3d38.2764294!4d-122.666947!16s%2Fg%2F11c2228xqp?entry=ttu">Petaluma</a> is shutting down. A lot of great stuff came out of this place. Please take a video of the studio before it closes down for good. I've learned this over and over, having shut down a few offices where great stuff was created and forgetting to do this. 

<http://scripting.com/2024/07/15.html#a114900>

---

**@Dave Winer's Scripting News** (date: 2024-07-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/07/15/johnsonForPresident.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="http://scripting.com/2004/07/15.html#When:11:22:43AM">On this blog 20 years ago</a>: "Our mission when covering the DNC is to figure out what goes on at a DNC. On the other hand, some portion of the 15,000 reporters at the DNC will be trying to figure out what we, the bloggers, are doing at the DNC. I suspect most of them will conclude that we don't belong there, in the same way most of the early articles about weblogs concluded we are not going to kill professional journalism." This turned out to be true. 

<http://scripting.com/2024/07/15.html#a114043>

---

**@Dave Winer's Scripting News** (date: 2024-07-15, from: Dave Winer's Scripting News)

<a href="https://shownotes.scripting.com/podcast0/2024/07/15/quantumLightBreathMeditationTape.html">Shownotes</a> for today's <a href="https://this.how/podcast0/">Podcast0</a> episode. 

<http://scripting.com/2024/07/15.html#a113507>

---

## Monday 15 July, 2024

date: 2024-07-15, from: John Naughton's online diary

The joys of travel An exhausted young couple trying to catch up on sleep in a crowded departure lounge. Quote of the Day &#8220;You can&#8217;t teach an old dogma new tricks&#8221; Dorothy Parker Musical alternative to the morning’s radio news &#8230; <a href="https://memex.naughtons.org/monday-15-july-2024/39634/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-15-july-2024/39634/>

---

## 2024-07-02 The importance of moderation

date: 2024-07-15, from: Alex Schroeder's Blog

<h1 id="2024-07-02-the-importance-of-moderation">2024-07-02 The importance of moderation</h1>

<p><a class="account" href="https://idiomdrottning.org/users/Sandra" title="@Sandra@idiomdrottning.org">@Sandra</a> recently wrote <a href="https://idiomdrottning.org/usenet">Usenet had to die</a>, arguing that Usenet was wasteful, everybody carrying a copy of everybody else, including spam and binaries.
I agree with all the points made. The idea that there is one global network of groups, with everybody carrying all the groups and everybody being allowed to post led to the downfall of Usenet.</p>

<p>Having recently hooked my laptop and server server to a handful of other servers using UUCP, NNCP and NNTP for file copies, mail and news, I just want to emphasize that the same technology can be used to build a different net.</p>

<ul>
<li>UUCP doesn&rsquo;t have to be anonymous. Calling systems can be required to have a username and password.</li>
<li>NNTP doesn&rsquo;t have to be anonymous. Systems can be known peers based on IP numbers and users can be required to authenticate themselves.</li>
<li>Servers don&rsquo;t have to mirror all the groups. Systems can be selective in what they accept and in what they pass on.</li>
</ul>

<p>The spam problem arises when two systems &ldquo;trust&rdquo; each other and peer messages but one of the systems doesn&rsquo;t act on abuse and moderation reports.
Perhaps Usenet generated too much of a workload for system administrators so they stopped following up on those reports.
Perhaps some servers had become too big to ban.</p>

<p>I think we have the exact same problems with fedi.
Some instances seem too big to defederate from.</p>

<p>Unfortunately, individual blocking doesn&rsquo;t work.
If my posts end up on an unmoderated server because somebody I like is following me, the post shows up in the federated feed on that server and all the other users that I don&rsquo;t like can comment and those comments are sent back to me.
I can block them all individually or block the large instance including my small number of friends.
That instance has become too big to ban.</p>

<p>To come back to net news:
From my point of view, the protocols are not to blame for the downfall of Usenet.
It was the lack of moderation that killed Usenet.
It was the ease of setting up web forums and being able to moderate them that made Usenet irrelevant.
In the end, to all these people federation was not as important as moderation.</p>

<p>Administrators were unwilling to drop the groups that were overrun with people that needed moderation.
This is a problem on all platforms with groups, e.g. Reddit.</p>

<p>Administrators were unwilling to ban the instances that didn&rsquo;t moderate their users.
This is a problem on all federated platforms, e.g. Mail.</p>

<p>Administrators were unwilling to create new groups for people in their niches.
At least nobody seems to be making that mistake again.
IRC, Reddit, Discord – they all demonstrated that ad-hoc group formation and self-moderation was viable.</p>

<p>This is why I think moderation, group forming and selectivity of federation are the most important quality of a platform.</p>

<p>We can have a small network of servers offering mail and news exchange, like in the old days.
The problem is unmoderated growth.</p>

<p><a class="tag" href="/search/?q=%23Social_Media">#Social Media</a></p>

<hr>

<p><strong>2024-07-04</strong>. I got a long reply by <a class="account" href="https://idiomdrottning.org/users/Sandra" title="@Sandra@idiomdrottning.org">@Sandra</a>, reproduced in its entirety below.</p>

<div style="text-align:center">⁂</div>

<p>Ah, that&rsquo;s not a super new post, it&rsquo;s from September 2023. I dug it
out again since we were talking about Illuminant, which seems awesome.
It uses hashtags only as post keywords and instead, if I understand
things correctly, relies on FEP-1b12 to provide group support.</p>

<blockquote>
<p>I think we have the exact same problems with fedi. Some instances
seem too big to defederate from.</p>
</blockquote>

<p>It&rsquo;s not quite the same thing.</p>

<p>Yes, it&rsquo;s a bad thing that I&rsquo;ve being hesitant to defederate from
m.soc even though I get more spam from it over Fedi than I&rsquo;ve been
getting from email fro the past several years.</p>

<p>But I&rsquo;m still only getting individual posts from m.soc or any other
server. (Which is also why hashtags don&rsquo;t work the way people think.)</p>

<p>On Usenet, the typical behavior would be to carry the whole thing.
Currently, I get dozens of spam messages from m.soc. If I were to
mirror the whole thing (which is possible with AP relays, and is what
would be necessary for hashtags to work like channels, me mirroring
the entirety of all the non-banned servers), I&rsquo;d have to deal with
thousands of messages. My server would croak.</p>

<blockquote>
<p>Unfortunately, individual blocking doesn’t work. If my posts end up
on an unmoderated server because somebody I like is following me,
the post shows up in the federated feed on that server and all the
other users that I don’t like can comment and those comments are
sent back to me.</p>
</blockquote>

<p>A problem. But again something that was way worse with usenet because
on there, not only would I mirror or moderate abusive replies to me. I
had to mirror abusive replies to <em>everybody</em>.</p>

<p>BTW, I&rsquo;m, for the most part, glad that the servers-that-can-comment
aren&rsquo;t allowlisted, that it works like email, that I can get comments
from anyone. The downside of that is having to ban ban ban like crazy,
but if it didn&rsquo;t work like that I&rsquo;m not sure it even would be
federated.</p>

<blockquote>
<p>I can block them all individually or block the large instance
including my small number of friends. That instance has become too
big to ban.</p>
</blockquote>

<p>A problem. But on Usenet, <em>every</em> instance was too big to ban since
every instance was expected to carry everything.</p>

<p>Individual blocks is one way around it. That&rsquo;s why I, a small instance
op, while I&rsquo;ve banned many small mainly-abuse instances, my need to
ban the big sloppily moderated silos like m.soc or threads is a li&rsquo;l
lower since I don&rsquo;t have hundreds of users to protect, which a midsize
instance would have. I can absolutely see why midsize &ldquo;safe space&rdquo;
instances would ban m.soc for example.</p>

<p>Also I &ldquo;silence&rdquo; every instance since I don&rsquo;t have a &ldquo;whole known
network&rdquo; tab.</p>

<p>Killfiles was a user-level way to mute users on newsgroups. So there
was <em>some</em> mitigation, but Fedi additionally has several other
moderation tools like instance bans or silencing.</p>

<p>More fundamentally: ActivityPub is about sending individual posts.
Usenet was about mirroring entire servers. Those two are not the same.</p>

<blockquote>
<p>To come back to net news: From my point of view, the protocols are
not to blame for the downfall of Usenet.</p>
</blockquote>

<p>The context that I wrote that Usenet post last September was to rant
about hashtags. (A topic that I&rsquo;m gonna return to every now and then
until the group/tag situation gets a li&rsquo;l better, which might require
new UX affordances or perhaps only education.)</p>

<p>That problem, summarized:</p>

<ul>
<li>Servers can only show you the posts that it has already stumbled
over, through following or commenting</li>
<li>So when you browse a hashtag, you only see a very small subset of
those posts</li>
<li>Which is fine for organizing a handful of persons posts, like &ldquo;I
wanna see all of Marie&rsquo;s <code>#tidying</code> posts&rdquo; or &ldquo;I wanna go back and
take a look at all of my already-followed-friends <code>#mosstodon</code>
posts&rdquo; or even for filtering out stuff. I.e. it&rsquo;s OK as a tool for
<em>subsets</em> and <em>intersection</em></li>
<li>It&rsquo;s a disaster for <em>union</em>, for discovery, for &ldquo;emulating channels&rdquo;
which people are used to from Tumblr and Twitter, which worked there
since those are centralized</li>
<li>For hashtags to work the way people expect them to, servers would
have to mirror all posts. Like on Usenet.</li>
<li>There was an effort in that direction early on, with the &ldquo;relay&rdquo;
system.</li>
<li>But small servers would croak. <strong>That&rsquo;s</strong> the problem. It&rsquo;d be an
environmental waste heap.</li>
</ul>

<p>And that&rsquo;s absolutely a protocol level problem!</p>

<p>A protocol level problem that Usenet had even without hashtags. (Well,
there was one hashtag: Kibo.)</p>

<p>I&rsquo;ve said a couple of times that servers mirror each other and for the
sticklers in the audience I&rsquo;ve got to add that not literally <em>every</em>
server carried <em>every</em> group. For example, some didn&rsquo;t carry
Anarchists Lunatics Terrorists a.k.a. the <code>alt</code> hierarchy. But that&rsquo;s
the fundamental intended flow. Group mirroring.</p>

<p><img loading="lazy" src="https://upload.wikimedia.org/wikipedia/commons/f/f4/Usenet_servers_and_clients.svg" alt="Usenet
architecture" /></p>

<p>So in that way, Usenet is unlike mailing lists, where individual
messages are sent to individual users. FEP-1b12 group servers on Fedi
(like PieFed and MBin) are awesome because they get the best of both
worlds of the &ldquo;only send the relevant posts&rdquo; nature of mailing lists,
and the &ldquo;we&rsquo;re hosting this post anyway so we only need to store it
once in the SQL&rdquo; nature of Usenet. As long as one user on a Lemmy
server is subscribed to <code>@garderning@foo.bar</code>, like an email user
might be subscribed to a mailing list, it might-as-well display a copy
of that group since it&rsquo;s getting those messages anyway. It&rsquo;s not
perfect and we&rsquo;re still paying a hefty &ldquo;decentralization tax&rdquo;, but
it&rsquo;s more robust than mail and news.</p>

<blockquote>
<p>It was the lack of moderation that killed Usenet. It was the ease of
setting up web forums and being able to moderate them that made
Usenet irrelevant.</p>
</blockquote>

<p>Naw, Usenet kept puttering along after that, for a while, until the
cost (and legal danger) of mirroring huge binaries archives which was
the nail of nails. And that was a protocol level issue.</p>

<p>Fedi absolutely has a moderation problem. That is being addressed although it seems to me that there are still unsolved problems.<br>
Usenet had a much bigger moderation problem and much of the reason for
that was on the protocol level. We have instances and instance bans to
help moderate clusters of users where each instance op helps moderate
the users on their instance. Moderation is happening on a user level
which makes much more sense than on a group level. (Someone can be a
saint on <code>alt.suicide.holiday</code> but a jerk on
<code>alt.swedish.chef.bork.bork.bork</code> for example.)</p>

<p>But Usenet also has a scalability problem. Resource use. Better
moderation wouldn&rsquo;t be nearly enough to fix that.</p>

<blockquote>
<p>Administrators were unwilling to ban the instances that didn’t
moderate their users. This is a problem on all federated platforms,
e.g. Mail.</p>
</blockquote>

<p>Email can&rsquo;t moderate their users since email isn&rsquo;t supposed to be
world-readable. (With exceptions like mailing lists; we can ban
someone who sends abusive messages to those.) But even so, instance
banning is very common on email.</p>

<blockquote>
<p>We can have a small network of servers offering mail and news
exchange, like in the old days. The problem is unmoderated growth.</p>
</blockquote>

<p>Last time I talked about this I got the world&rsquo;s most stubborn reply
guy on my neck who (since he was on a huge instance) could use
hashtags to find at least some amount of interesting posts and was
resistant to change. Since I mentioned scalability issues and how my
server would croak if it were to try to mirror even <em>one</em> of the big
instances, he started going on and on about &ldquo;scalability is only for
capitalists&rdquo;.</p>

<p>Yet another case of Smolnet Wishful Thinking Syndrome. The kind of
thinking that hates Eternal September more than anything but keeps
designing protocols that lead to more Eternal Septembers since they&rsquo;re
about everyone-seeing-everyone and then they resort to technical
gatekeeping or even bullying to keep people out. Not into it.</p>

<p>My criticism of Usenet&rsquo;s protocol here has nothing to do with
capitalist scaling, which is about &ldquo;throwing computers at it&rdquo;. Sure,
that&rsquo;d be one solution to the protocol problems inherent to Usenet and
relay-laden-ActivityPub.</p>

<p>Real Smolnet scaling is about designing protocols that are about
connecting people to people (and to topic groups or other
communities), and in a non-wasteful, mottainai way create small
overlapping villages instead of one big shout-loud-and-go-viral
channel.</p>

<p>There are two kinds of protocols. Those where everyone must see
everything (like Antenna and CAPCOM, and Twitter), and those where
that&rsquo;s not the case (like ActivityPub and email).</p>

<p>Here are three network layouts:</p>

<p><img loading="lazy" src="https://ellen.idiomdrottning.org/baran_networks.png" alt="Baran networks" /></p>

<p>First we have a centralized network. One hub server and then every
client is a spoke connected to that center core. The most efficient
way to organize an &ldquo;everyone-must-see-everything&rdquo; protocol, but
vulnerable to disasters like meteor strikes, nuclear explosions,
billionaire takeovers, or earthquakes.</p>

<p>Then we have a decentralized network. Several hubs connected to each
other, mirroring each other. Usenet worked like that. The hubs need to
be just as beefy as the ones in a centralized network. This has some
advantages like redundancy and robustnesss, and it&rsquo;s more politically
appealing to the anarchists that built the internet. (Not sure why
since there&rsquo;s still two tiers and a mod group that rules everything
for everyone.) It can be wasteful. It can handle
everyone-must-see-everything protocols. It can also really shine when
everyone <em>doesn&rsquo;t</em> need to see everything, like IRC which is super
efficient. IRC is a brilliant protocol design that, like a mailing
list, only sends the messages to a server that that server needs.</p>

<p>Finally we have a distributed network. No hubs. It looks more like a
mesh where every machine is connected to only a handful of &ldquo;nearby&rdquo;
machines. This type of network is an absolute disaster for the
everyone-must-see-everything scenario! Redundant to the point of
wastefulness. That&rsquo;s a future we must fight tooth and nail! And that&rsquo;s
exactly where the relay-centered version of ActivityPub was headed,
and that&rsquo;s what would be &ldquo;needed&rdquo; for hashtags-as-groups-and-discovery
to &ldquo;work&rdquo;.</p>

<p>Here&rsquo;s where we the grassroots federalized ancom degrowth community
need to check ourselves before we wreck ourselves because even though
<a href="https://idiomdrottning.org/energy-is-undercosted" title="Energy is undercosted">energy and e-waste is underpriced</a>, a capitalist for-profit silo
company would never in a million years set up a system like this
because it&rsquo;s too wasteful ever for them, while we&rsquo;re liable to do so
since each instance op only sees their <em>own</em> costs, not the cost for
the network as a whole. The megacorps are OK with centralization
because for them, the power consolidation in the first two network
types is a positive, while for us it&rsquo;s a huge negative so we&rsquo;re drawn
to the third type, so we need to be really careful and really
responsible here.</p>

<p>But as bad as this layout is for everyone-must-see-everything, it&rsquo;s
really awesome for protocols where everyone <em>doesn&rsquo;t</em> need to see
everything. It&rsquo;s economical, robust, cozy. ActivityPub (without the
relentless mirroring) is a good fit here. I can follow a handful of
users and be connected to their instances and only their posts are
sent to my instance, I don&rsquo;t mirror the entire server. It&rsquo;s actually
pretty awesome! It&rsquo;s good for moderation too because I only need to
moderate my &ldquo;neighborhood&rdquo;. Yeah, a &ldquo;neighborhood&rdquo; is the perfect
analogy for this; neighborhoods that can and overlap but are still
small and managed. A system set up like that can remain smol and cozy
even as it invites everyone on Earth. It&rsquo;s great. ActivityPub is
awesome.</p>

<hr>

<p><strong>2024-07-08</strong>. I got a reply from <a href="https://koldfront.dk/">Adam Sjøgren</a> regarding Sandra&rsquo;s comment on hashtag use in <a href="https://illuminant.asjo.org/">Illuminant</a>.</p>

<div style="text-align:center">⁂</div>

<p>ActivityPub hashtags are translated to Keywords: and vice versa in
Illuminant. So far I haven&rsquo;t had the need to use hashtags/keywords for
more than showing/writing them in Keywords: - I did have a plan to
have groups like fediverse.keyword.music, fediverse.keyword.askfedi
etc. etc. but I haven&rsquo;t implemented it.</p>

<p>I&rsquo;m sorry to say that I do not know what FEP-1b12 is, so I don&rsquo;t think
Illuminant implements any of the group support defined in that.</p>

<p>Since Illuminant is very much driven by what I personally want and
feel like implementing/have the energy to implement, it has a kind of
skewed subset of what I guess is expected from a fediverse server/user
interface by most&hellip;</p>

<p>While it is fun for me to hear somebody call Illuminant awesome, I
must say that I&rsquo;m pretty sure there is only one person in the universe
who actually runs it. Being proven wrong would be awesome, though.</p> 

<https://alexschroeder.ch/view/2024-07-02-moderation>

---

## How are you coping?

date: 2024-07-15, from: Robert Reich's blog

Friends, I want to ask you, candidly: How are you doing? The last two weeks &#8212; beginning with the Biden-Trump debate when Biden looked and sounded even older than his years and Trump lied even more than usual, followed by the Democrats&#8217; public agonizing over whether Biden should drop out, and then Saturday&#8217;s attempted assassination of Trump at a rally in Pennsylvania &#8212; have been harrowing. 

<https://robertreich.substack.com/p/how-are-you-coping>

---

## July 14, 2024 

date: 2024-07-15, from: Heather Cox Richardson blog

Shortly after 6:00 yesterday evening at a Trump rally in Butler, Pennsylvania, a shooter on the roof of a building about 400 feet from the stage appears to have shot eight bullets at the former president and into the crowd. Trump appeared to flinch and reach for his right ear as Secret Service agents crouched over the former president. When the agents got word the shooter was &#8220;down,&#8221; they lifted Trump to move him out. He asked to get his shoes and then to put them on. 

<https://heathercoxrichardson.substack.com/p/july-14-2024>

---

## Self-care that’s not driven by shame

date: 2024-07-15, from: Tracy Durnell Blog

I&#8217;ve always had a hard time keeping up with flossing, which is embarrassing 😓 even though I know I&#8217;m not alone in this struggle. Getting habits to stick takes me a lot of work. But after a couple decades of the &#8220;brute force&#8221; / &#8220;guilt trip&#8221; approach, shaming myself clearly wasn&#8217;t making me any better [&#8230;] 

<https://tracydurnell.com/2024/07/14/self-care-thats-not-driven-by-shame/>

---

## ★ It’s the Guns, It’s the Guns, It’s the Guns

date: 2024-07-15, updated: 2024-07-16, from: Daring Fireball

Make them all say, as Trump himself did after a school shooting massacre in Iowa this year, that we “have to get over it, we have to move forward.” 

<https://daringfireball.net/2024/07/its_the_guns>

---

## Our Fractured Country

date: 2024-07-14, from: Dan Rather's Steady

The polarizing effects of social media 

<https://steady.substack.com/p/our-fractured-country>

---

## American Conversations: Secretary of State Antony Blinken, Part 2:

date: 2024-07-14, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/american-conversations-secretary-595>

---

## Happy Birthday, MetaFilter!

date: 2024-07-14, from: Matt Haughey blog

<p>It&apos;s pretty incredible that <a href="https://www.metafilter.com/?ref=a.wholelottanothing.org" rel="noreferrer">MetaFilter</a> turns 25 years old today. Barely anything on the internet sticks around for this long. </p><p>MetaFilter predates LinkedIn, Facebook, and YouTube. It&apos;s older than Wikipedia and Blogger. Other similar sites sprang up after it like Digg, then reddit, then Quora, but</p> 

<https://a.wholelottanothing.org/happy-birthday-metafilter/>

---

## Upcoming Speaking Engagements

date: 2024-07-14, updated: 2024-07-14, from: Bruce Schneier blog

<p>This is a current list of where and when I am scheduled to speak:</p>
<ul>
<li>I&#8217;m speaking&#8212;along with John Bruce, the CEO and Co-founder of Inrupt&#8212;at the <a href="https://cdoiq2024.org/">18th Annual CDOIQ Symposium</a> in Cambridge, Massachusetts, USA. The symposium runs from July 16 through 18, 2024, and my session is on Tuesday, July 16 at 3:15 PM. The symposium will also be livestreamed through the Whova platform.</li>
<li>I&#8217;m speaking on &#8220;Reimagining Democracy in the Age of AI&#8221; at the <a href="https://www.umt.edu/mansfield/dialogues/mansfield-dialogues/speaker-pages/bruce-schneier.php">Bozeman Library</a> in Bozeman, Montana, USA, July 18, 2024. The event will also be available via Zoom.</li>
<li>I&#8217;m speaking at the ...</li></ul> 

<https://www.schneier.com/blog/archives/2024/07/upcoming-speaking-engagements-38.html>

---

## 2024-07-14 Yvonand: Tour du Vallon des Vaux

date: 2024-07-14, from: Alex Schroeder's Blog

<h1 id="2024-07-14-yvonand-tour-du-vallon-des-vaux">2024-07-14 Yvonand: Tour du Vallon des Vaux</h1>

<p>On the last day, we decided to go for a walk nearby instead of getting on the train immediately.
We took the train to Yvonand and turned towards the hills, spending most of our time in the forest.
This is <a href="https://www.schweizmobil.ch/de/wanderland/route-129">route 129</a>.</p>

<p>When leaving the fields around Yvonand and entering the woods, the autobahn arches high above.
If only it were a fantastic train and not a triumph for car culture.</p>

<p><img loading="lazy" src="2024-07-14-yvonand-1.jpg" alt="" /></p>

<p>This small rivulet must have cut the canyon.</p>

<p><img loading="lazy" src="2024-07-14-yvonand-2.jpg" alt="" /></p>

<p>This bridge marks the beginning of the way up, if I remember.</p>

<p><img loading="lazy" src="2024-07-14-yvonand-3.jpg" alt="" /></p>

<p>Once you leave the forest, you&rsquo;re on the plateau above.
We ate lunch at the Hotel de Ville in Chavannes-le-Chêne.</p>

<p>Gewöhnliche Wegwarte<br>
Cichorium intybus</p>

<p><img loading="lazy" src="2024-07-14-yvonand-4.jpg" alt="" /></p>

<p>And here&rsquo;s a weird one from the night before: Apparently the square in front of the castle is bathed in blue light at night, as if a train station bathroom trying to keep drug addicts away.</p>

<p>Somewhat creepy.</p>

<p><img loading="lazy" src="2024-07-14-yvonand-5.jpg" alt="" /></p>

<p><a class="tag" href="/search/?q=%23Switzerland">#Switzerland</a> <a class="tag" href="/search/?q=%23Pictures">#Pictures</a> <a class="tag" href="/search/?q=%23Plants">#Plants</a></p> 

<https://alexschroeder.ch/view/2024-07-14-yvonand>

---

**@Dave Winer's Scripting News** (date: 2024-07-14, from: Dave Winer's Scripting News)

The <a href="http://scripting.com/publicfolder/shownotes/podcast0/2024/07/14/anInterviewInAPodcast.html">shownotes</a> for today's <a href="https://this.how/podcast0/">Podcast0</a> episode. The shownotes pages now have a player. Still have a little more work to do on it. I like this because it's a lightweight project, which is something I need while the world is boiling over. 

<http://scripting.com/2024/07/14.html#a142259>

---

**@Dave Winer's Scripting News** (date: 2024-07-14, from: Dave Winer's Scripting News)

This blog <a href="http://scripting.com/2004/07/14.html#When:2:15:26PM">20 years ago</a> today. 

<http://scripting.com/2024/07/14.html#a135152>

---

## Morning coffee notes

date: 2024-07-14, from: Dave Winer's Scripting News

<p>BTW, I'm intermittently locked out of my <a href="https://www.threads.net/@davew/post/C9Z5Tc5JZOa">Threads</a> account. <a href="https://imgs.scripting.com/2024/07/14/threadsMessage.png">They say</a> it has to do with automated stuff they don't explain. I don't have any apps that do anything with Instagram or Threads. I tried changing the password. Anyway, I was just starting to like the network, it has its own feel, and have made some friends there, but I have no energy to fight it, at least not right now. If you don't see me over there, this is why.</p>
<p>How I found out about Trump's assassination. By accident, I was watching CNN when they switched over to his rally. I listened to the first few minutes, ugly lies, the usual disgusting stuff, so I switched over to season 6 of <a href="https://en.wikipedia.org/wiki/Line_of_Duty">Line of Duty</a>, which isn't very great. I couldn't focus on the show. I got my iPad and checked out Bluesky and saw a message from someone regretting that <i>he</i> hadn't been killed, and somehow I knew that "he" was Trump, so I switched back to the news, and saw the live events, Trump asking for his shoes, and then doing that disgusting thing with his fist, looking right into the camera. He's 100 percent television actor. Either the whole thing was staged, or he just thinks that way, it didn't cross his mind that a bullet aimed at his brain had barely missed killing him. He's thinking of his business model. Now I must confess my first thought was just like the person on Bluesky. Now Trump who lies about being a victim, really is a victim, and we'll never hear the end of it. And it didn't take long before a random Republican asshole was saying this was Biden's fault for saying Trump would end democracy, which he has said he will, promised to do, and <i>we saw him try to do it</i> on Jan 6. And the CNN reporter went along with it, saying the temperature has to be lowered on both sides. There it was. Both sides. It didn't take any time for the Republican talking points to dominate. This was Biden's fault they all agree. Occam's Razor says this is over. We aren't going to vote in November. The deal is done because the journos, who really control who is elected, have made their choice. I've yet to hear another explanation from them.</p>
<p>If someone from Russia or Ukraine were to read the previous paragraph, they'd nod their heads and say the US is now Russia. That's how our journalism and politics work. The oligarchs have sold out to the dictator. This is what it's like after that happened. People inside big companies look the other way all the time, and try to compartmentalize. Now their malaise becomes ours. </p>
<p>BTW, if Biden steps aside don't expect the Repubs won't sue saying it's illegal, so guess what -- not only don't you get Biden, you don't even get a replacement. The election will be like a Russian election, with just one actual candidate on the ballot and a few total losers for appearances. A great card to hold in your pocket. I bet they have the arguments already written.</p>
 

<http://scripting.com/2024/07/14/133420.html?title=morningCoffeeNotes>

---

## Sunday caption contest: Blaming the media for the attempt on Trump’s life

date: 2024-07-14, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/sunday-caption-contest-opening-night>

---

## The Rite of Spring

date: 2024-07-14, from: Tracy Durnell Blog

This is on my bucket list to see performed live, but the closeup shots in this are fun to see how different sounds are produced. I love watching the musicians get into it &#8212; the bass player was really going to town. The coordination of dozens of people to play complex music together is one [&#8230;] 

<https://tracydurnell.com/2024/07/13/the-rite-of-spring/>

---

## July 13, 2024

date: 2024-07-14, from: Heather Cox Richardson blog

As Maine writer E. B. White famously wrote to a man who said he had lost faith in humanity: &#8220;Hang on to your hat. Hang on to your hope. And wind the clock, for tomorrow is another day.&#8221; I&#8217;ll see you all then. &#8212; Notes: https://thesidingspring.com/2016/07/14/a-letter-from-e-b-white/ 

<https://heathercoxrichardson.substack.com/p/july-13-2024>

---

## July 12, 2024

date: 2024-07-14, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/july-12-2024-c51>

---

## Today’s violence

date: 2024-07-14, from: Robert Reich's blog

Friends, My first thought on hearing about the attempted shooting of Donald Trump at a rally today in Pennsylvania was &#8220;I hope to god he&#8217;s okay.&#8221; I thought this for the usual reasons we human beings hope that other humans are safe from harm. But I had another reason in the case of Donald Trump. 

<https://robertreich.substack.com/p/todays-violence>

