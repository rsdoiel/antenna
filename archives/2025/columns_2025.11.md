---
title: columns
updated: 2025-03-20 06:08:58
---

# columns

(date: 2025-03-20 06:08:58)

---

## SystemRescue 12 lands with added bcachefs support

date: 2025-03-20, updated: 2025-03-20, from: Liam Proven's articles at the Register

<h4>You might need that – the file system has some hard-to-squish bugs</h4>
      <p>A new version of the handy all-in-one bootable system toolkit distro is here, now with a whole new file system for you to play with.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/03/20/systemrescue_12_bcachefs/>

---

## 2025-03-20 Something about the bot defence is working

date: 2025-03-20, from: Alex Schroeder's Blog

<h1 id="2025-03-20-something-about-the-bot-defence-is-working">2025-03-20 Something about the bot defence is working</h1>

<p>At midnight, there was a surge in activity.
CPU usage went up.</p>

<p><img loading="lazy" src="2025-03-20-bot-defence-1.jpg" alt="" /></p>

<p>Load went up, too. But it stayed within reasonable bounds &ndash; less than 4 instead of the more than 80 I have seen in the past.</p>

<p><img loading="lazy" src="2025-03-20-bot-defence-2.jpg" alt="" /></p>

<p>And the number of IP addresses blocked by <code>fail2ban</code> went from 40 to 50.</p>

<p><img loading="lazy" src="2025-03-20-bot-defence-3.jpg" alt="" /></p>

<p>I&rsquo;m usually sceptical of this because the big attacks are from a far wider variety of IP numbers.
In this case, however, maybe there was some probing that resulted in blocks? I don&rsquo;t know. Lucky, I guess?</p>

<p>In any case, the site is still up. Yay for small wins.</p>

<p>Also, I cannot overstate how good it feel to have some <a href="https://munin-monitoring.org/">Munin</a> graphs available.</p>

<p><code>alex-bots</code> is a setup I desribed in <a href="2025-02-19-bots-again">2025-02-19 Bots again, cursed</a>.
Basically a request to one of my Oddmuse wikis containing the parameter <code>rcidonly</code> is an expensive endpoint: &ldquo;all changes for this single page&rdquo; or &ldquo;a feed for this single page&rdquo;. This is something a human would rarely access and yet it somehow the URLs landed in some dataset for AI training, I suspect. So what I do is I’m redirecting any request containing “rcidonly” in the query string to <code>/nobots</code>, warning humans not to click on these links.</p>

<p>In addition to that, the filter <code>/etc/fail2ban/filter.d/alex-bots.conf</code> contains this:</p>

<pre><code>[Definition]
failregex = ^(www\.emacswiki\.org|communitywiki\.org|campaignwiki\.org):[0-9]+ &lt;HOST&gt; .*rcidonly=
</code></pre>

<p>And I added a section using this filter to my jail <code>/etc/fail2ban/jail.d/alex.conf</code>:</p>

<pre><code>[alex-bots]
enabled = true
port    = http,https
logpath = %(apache_access_log)s
findtime = 3600
maxretry = 2
</code></pre>

<p>So if an IP number visits three URLs containing &ldquo;rcidonly&rdquo; in an hour, they get banned for ten minutes.</p>

<p>The <code>recidive</code> filter (a standard filter you just need to activate) then makes sure that any IP number that got blocked three times gets blocked for a week.</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-03-20-bot-defence>

---

## The biggest upward transfer of wealth in history 

date: 2025-03-20, from: Robert Reich's blog

Trump&#8217;s tariffs will especially hurt lower-income Americans, while his tax cuts will especially benefit the wealthy. 

<br> 

<https://robertreich.substack.com/p/psst-trumps-tariffs-will-be-paid>

---

## March 19, 2025

date: 2025-03-20, from: Heather Cox Richardson blog

On the Fox News Channel&#8217;s The Five yesterday, the panel of Fox personalities expressed outrage that federal judge James Boasberg had ordered the Trump administration to stop its deportation of migrants based on the 1798 Alien Enemies Act. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-19-2025>

---

## Where Do We Stand: A ‘Correlation of Forces’ Assessment.

date: 2025-03-20, from: James Fallows, Substack

What might actually stop Trump? Let's go through some possibilities&#8212;which finally come down to each of us. 

<br> 

<https://fallows.substack.com/p/where-do-we-stand-a-correlation-of>

---

## ‘Hey Siri, What Month Is It?’

date: 2025-03-19, updated: 2025-03-20, from: Daring Fireball

 

<br> 

<https://www.reddit.com/r/iphone/comments/1jehkpm/apple_intelligence_this_apple_intelligence_that/>

---

## Apple Intelligence Is Coming to iOS in the EU in April

date: 2025-03-19, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://www.apple.com/newsroom/2025/02/apple-intelligence-expands-to-more-languages-and-regions-in-april/>

---

## Women in Texas Are Dying

date: 2025-03-19, from: Dan Rather's Steady

Republicans pressured to &#8220;clarify&#8221; state abortion ban 

<br> 

<https://steady.substack.com/p/women-in-texas-are-dying>

---

## EU Adopts New ‘Interoperability’ Requirements for Apple Under DMA

date: 2025-03-19, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://ec.europa.eu/commission/presscorner/detail/en/ip_25_816>

---

## Sebastiaan de With’s iPhone 16e Camera Review: ‘The Essentials’

date: 2025-03-19, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://www.lux.camera/iphone-16e-camera-review-the-essentials/>

---

##  A History Professor Answers Questions About Dictators 

date: 2025-03-19, updated: 2025-03-19, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/a-history-professor-answers-questions-about-dictators>

---

## Apple Silicon Is Groundbreaking for AI

date: 2025-03-19, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://x.com/alexocheema/status/1899735281781411907?s=42>

---

## ‘Apple Needs to Get Out of the Way With AI’

date: 2025-03-19, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://shapeof.com/archives/2025/3/apple_needs_to_get_out_of_the_way_with_ai.html>

---

##  The Sticker Box and the Woodstock Message Tree. &#8220;What makes this sticker-covered... 

date: 2025-03-19, updated: 2025-03-19, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046465-the-sticker-box-and-the>

---

## ‘A Delightful and Simple User Experience’

date: 2025-03-19, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://arstechnica.com/gadgets/2025/03/roku-says-unpopular-autoplay-ads-are-just-a-test/>

---

## Two New PebbleOS Watches

date: 2025-03-19, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://ericmigi.com/blog/introducing-two-new-pebbleos-watches>

---

## Did TikTok Swing the Election to Trump?

date: 2025-03-19, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://politicalwire.com/2025/03/19/did-tiktok-swing-the-election-to-trump/>

---

## March 18, 2025

date: 2025-03-19, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/159433627/b66e7096c8c4570ef4602b33f3e62f8e.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/159433627/b66e7096c8c4570ef4602b33f3e62f8e.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/march-18-2025-227>

---

##  &#8220;Thirty lonely but beautiful actions you can take right now which probably... 

date: 2025-03-19, updated: 2025-03-19, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046467-thirty-lonely-but-beautif>

---

## On Apple Exclaves

date: 2025-03-19, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://randomaugustine.medium.com/on-apple-exclaves-d683a2c37194>

---

## Firefox Users on iOS Have Doubled in France and Germany, From a Very Small Number to a Slightly Less Small Number

date: 2025-03-19, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://pxlnv.com/linklog/firefox-france-germany/>

---

## Beyerdynamic DT 770 Pro: Closed Studio Headphones

date: 2025-03-19, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://north-america.beyerdynamic.com/p/dt-770-pro>

---

##  We might get to see Coyote vs. Acme after all&#8230;Warner Bros. is... 

date: 2025-03-19, updated: 2025-03-19, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046468-we-might-get-to-see>

---

## Come from Everywhere

date: 2025-03-19, from: Doc Searls (at Harvard), New Old Blog

IIW, the Internet Identity Workshop, is the UN of identity. While located in the U.S., it has always represented and welcomed the whole world to work on global problems best addressed in person. As it happens, IIW was born exactly twenty years ago tomorrow—20 March 2005—at Esther Dyson&#8217;s PC Forum in Scottsdale, Arizona. A group [&#8230;] 

<br> 

<https://doc.searls.com/2025/03/19/come-from-everywhere/>

---

**@Dave Winer's Scripting News** (date: 2025-03-19, from: Dave Winer's Scripting News)

The basic thing about tech is that attracts people who take things that don't belong to them. There's no policing. The richest people are the ones who are best at grabbing control of other people's creations. That's the common theme. Now they're in DC, going for all of it. The whole thing. But they're like the <a href="https://www.youtube.com/watch?v=NWeh4A600E0">dog that catches the car</a>. They don't have the slightest idea what to do with what they're taking. How could they? It's incomprehensibly vast. 

<br> 

<http://scripting.com/2025/03/19.html#a171447>

---

##  On Edward Gorey&#8217;s Great Simple Theory About Art &#8220;Anything that is art&#8230;is... 

date: 2025-03-19, updated: 2025-03-19, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046464-on-edward-goreys-great-si>

---

**@Dave Winer's Scripting News** (date: 2025-03-19, from: Dave Winer's Scripting News)

A piece that Paul Krugman should write. How what Musk is doing to the US is worse than the 2009 near-collapse of the world economy. People who think he's going to bring down just the US, should recall how close we all came to falling into the abyss. But this time there will be no one to save us. 

<br> 

<http://scripting.com/2025/03/19.html#a164449>

---

##  A UN World Meteorological Organization report &#8220;lists 151 unprecedented extreme weather events... 

date: 2025-03-19, updated: 2025-03-19, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046466-a-un-world-meteorological>

---

## 2025-03-19 Grounding myself

date: 2025-03-19, from: Alex Schroeder's Blog

<h1 id="2025-03-19-grounding-myself">2025-03-19 Grounding myself</h1>

<p>The powerlessness when reading the news makes me think that perhaps I need to read even less news, shut it all out.</p>

<p>I also find a new appreciation for all of my ancestors who bore children and raised them even though their world seems like a hellscape compared to what I&rsquo;m seeing.</p>

<p>Sometimes I wish I could just go to church and sing and pray and it would all be good again. Except it don&rsquo;t believe in it.</p>

<p>So all I have is plants and animals to care for. In a somewhat unhealthy (?) relationship with life around me I find that I put plants where they need me to water them, and find solace in the fact that they at least are unperturbed by everything and are just happy for me to be there and tend them. It feels a bit like an artificial dependent relationship so I dunno, it&rsquo;s weird.</p>

<p>When I see happy dogs and their owners I keep thinking that a dog that&rsquo;s so happy to see me, to fetch that ball, to for that walk, this happiness is real, and they are grounded in life and the present moment.</p>

<p>I want back this ignorant bliss of childhood, some days.</p>

<p>I have no illusions. While I grew up, Iran and Iraq were at war; the Moçambique and Angolan wars of independence turned into civil wars; Yugoslavia fell apart in civil war. Those are the conflicts I remember, in any case.
Life and the news wasn&rsquo;t great. I just didn&rsquo;t know.</p>

<p><a class="tag" href="/search/?q=%23Life">#Life</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-03-19-touch-ground>

---

**@Dave Winer's Scripting News** (date: 2025-03-19, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://s3.amazonaws.com/scripting.com/images/2020/03/08/uncleSam.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="https://www.politico.com/story/2009/04/inside-obamas-bank-ceos-meeting-020871">Obama once said</a> to the bankers who had just crashed the economy, much like Trump/Musk are trying to do now -- that his administration is the "only thing between you and the pitchforks.” These are the same people. They’re back from 2009 and this time they want <i>everything.</i> They don't care what's left, they're machines. All they know how to do is to consume. Squeeze a cent of value from every dollar. This <a href="https://www.youtube.com/watch?v=P4nYgfV2oJA&t=130s">clip</a> from Goodfellas explains. I saw a quote from one of the Dogeheads saying that all universities should be shut down. Hey you can say whatever you like, but they want to actually do it. 

<br> 

<http://scripting.com/2025/03/19.html#a145452>

---

##  Trump Has Gone From Unconstitutional to Anti-Constitutional. &#8220;[Anti-Constitutionalism] rejects the premise that... 

date: 2025-03-19, updated: 2025-03-19, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046463-trump-has-gone-from-uncon>

---

## Chimera Linux ghosts RISC-V because there's no time for sluggish hardware

date: 2025-03-19, updated: 2025-03-19, from: Liam Proven's articles at the Register

<h4>Dev behind the GNU-free distro says boards too slow for serious work</h4>
      <p>The creators of the unique Chimera Linux distro are dropping support for RISC-V because kit built on the open instruction set architecture just isn&#39;t fast enough and this is holding up the development pipeline.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/03/19/chimera_linux_riscv/>

---

##  Editorial from Nature magazine: Vaccines save lives. Leaders must champion them. &#8220;We... 

date: 2025-03-19, updated: 2025-03-19, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046462-editorial-from-nature-mag>

---

**@Dave Winer's Scripting News** (date: 2025-03-19, from: Dave Winer's Scripting News)

The <a href="https://gist.github.com/scripting/85bc99f9dc055b220c43a6cde4aa6415">data behind</a> a <a href="https://daveverse.wordpress.com/2025/03/16/blogging-is-due-for-a-refresh/">WordLand blog post</a> I wrote a few days ago. I'm publishing these so people get an idea of the structures we're working with. It's basically a WordPress post with added metadata. They have these kinds of structures in RSS, Atom, ActivityPub and AT Proto. Eventually some of these will die out, there are too many formats to support. At any moment in time it feels like each one is enormous and permanent. But show me where the new OS/2, Novell, UCSD Pascal or CP/M apps are. Go back far enough, Alogol, Smalltalk, Lisp, Simula. I am very much a less-is-more type protocol designer, don't try to plan for things you don't have a working model of, because the ideas you gain when you actually put the app together will work much better. And only add things you're willing to live with forever. Slow down to hurry up. Etc. Anyway, <a href="https://gist.github.com/scripting/85bc99f9dc055b220c43a6cde4aa6415">this</a> is the format we work with inside <a href="https://wordland.social/">WordLand</a>, and more important, in the new APIs, that build on and simplify the <a href="https://www.npmjs.com/package/wpcom">excellent API</a> that Automattic had already produced. 

<br> 

<http://scripting.com/2025/03/19.html#a134638>

---

## Enshittification as a matter of taste

date: 2025-03-19, from: Dave Rupert blog

<p>“Enshittification” is a termed coined by Cory Doctorow in 2023 to describe a pattern of decreasing quality observed in online services and products. Since Doctorow’s post, there’s been no shortage of think pieces on enshittification and its role in our society and to a large extent I agree with them all. I think it’s an inevitable problem that shows the splitting seams of Capitalism. If you will allow, I’d like to add a tangential thought – one slight embellishment – to this topic.</p>
<p>To me, enshittification means that a person who lacks taste was put in a position of power.</p>
<p>Everyone knows ads on the internet suck. But ads also pay bills and help keep the lights on in newsrooms. When a website adds one (privacy-preserving) ad to a website, I say “Okay”. Two, I permit it. Three, I say “Easy now” but still scroll through unencumbered. But when the website adds a fifth, seventh, twelfth ad… I know a person who lacks taste is at the wheel. I can feel it in my bones when an app or website has prioritized revenue over user experience. A person without taste or high emotional intelligence broke the unspoken contract we had built on mutual respect.</p>
<p>When you read about the development of the iPhone in books like Ken Kocienda’s <em>Creative Selection</em> or Tony Fadell’s <em>Build</em>,  you understand Steve Jobs’ superpower wasn’t so much that he possessed a reality distortion field, but that he was a great editor. He could find the good ideas in a pile of prototypes and say “no” (harshly, I’ve read) to the less-than-great ideas. You need a person with taste in the decision making process. <a href="https://daringfireball.net/2025/03/something_is_rotten_in_the_state_of_cupertino">When we see giants falter</a>, it’s a lack of taste shining through.</p>
<p>Going forward, I think taste and style are more valuable than ever before. In an era where we’re able to rapidly generate cheap low quality content or software at a scale we’ve never seen before, <a href="https://www.itsnicethat.com/articles/elizabeth-goodspeed-column-taste-technology-art-280224">we will need people with taste in the mix</a>. We’ll need aggregators to dive in the dumpsters for the treasure. We’ll need people who know how to zig when everyone is using the Zag-o-tron 9000. We’ll need people who can offer critique and say “no” when the “yes yes always more” machine barrels through town and begins knocking down institutions.</p> 

<br> 

<https://daverupert.com/2025/03/enshittification-has-a-flavor/>

---

**@Dave Winer's Scripting News** (date: 2025-03-19, from: Dave Winer's Scripting News)

<a href="https://www.techdirt.com/">Techdirt</a> has a well-deserved rep for exposing the false claims tech companies make. I’d love to see a Techdirt analysis of Bluesky’s claim that they’re billionaire-proof and they don’t lock users in. For background check out this <a href="https://techcrunch.com/2025/03/10/at-sxsw-bluesky-ceo-jay-graber-pokes-fun-at-mark-zuckerberg-with-latin-phrase-t-shirt/">TechCrunch piece</a> from SXSW. 

<br> 

<http://scripting.com/2025/03/19.html#a132654>

---

**@Dave Winer's Scripting News** (date: 2025-03-19, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2025/03/19/rivian.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Of course I'm getting ready to ditch <a href="https://daytona.scripting.com/search?q=tesla">my Tesla</a> Model Y, and thinking about what my options are. I saw someone comment on the <a href="https://www.caranddriver.com/rivian/r1t">Rivian truck</a>, and I've seen them around but didn't imagine they'd have the same muscle car profile as the Tesla, but apparently they do. That's the thing I'd miss the most about the Model Y. Its power and handling. It's a big car, but it drives in many ways like the <a href="https://www.edmunds.com/mazda/mx-5-miata/1992/review/">Miata</a> I drove in the 90s. 

<br> 

<http://scripting.com/2025/03/19.html#a132041>

---

## 2025-03-15 New window manager: niri

date: 2025-03-19, from: Alex Schroeder's Blog

<h1 id="2025-03-15-new-window-manager-niri">2025-03-15 New window manager: niri</h1>

<p>I&rsquo;m giving <a href="https://github.com/YaLTeR/niri">niri</a> a go.
The idea is that a scrollable tiling window manager
(&ldquo;Wayland compositor&rdquo;) is a better fit than just a tiling window manager.
For tiling window managers, I just create new stuff and have it maximized.
I really can&rsquo;t do the quick splitting and rearranging that it seems to afford.
The result is that I start moving stuff to other workspaces, where they&rsquo;re
invisible and gone.
I&rsquo;m hoping that new windows popping up next to existing windows makes it feel
like a stack.</p>

<p>Having gone through the config file and having made a few small changes it
already feels pretty nice. Right now one of the problems I have is that
by sheer bad luck I decided to rotate my external monitor by 90° and that
doesn&rsquo;t work quite as well, maybe? I&rsquo;m not sure. One of the first changes
I did was change the default widths from ⅓ / ½ / ⅔ to 0.95 / ⅔ / ½ with 0.95 being
the default.</p>

<p><a class="tag" href="/search/?q=%23Window_Managers">#Window Managers</a> <a class="tag" href="/search/?q=%23Niri">#Niri</a></p>

<p>I didn&rsquo;t find a solution for Gimp. And I already had no solution for VASSAL under Sway. So for these applications, I still have Gnome installed.</p>

<p>Currently my <code>~/.config/fish/conf.d/window-manager.fish</code> says:</p>

<pre><code># If running from tty1 start sway
set TTY (tty)
[ &quot;$TTY&quot; = &quot;/dev/tty1&quot; ] &amp;&amp; exec sway
[ &quot;$TTY&quot; = &quot;/dev/tty2&quot; ] &amp;&amp; exec startx
[ &quot;$TTY&quot; = &quot;/dev/tty3&quot; ] &amp;&amp; exec niri
</code></pre>

<p>Oh well. 😅</p>

<p><strong>2025-03-19</strong>. I&rsquo;m finding that there were too many problems with apps that didn&rsquo;t work or had very slow startup times. So I&rsquo;m back to <a href="2023-10-22-sway">using Sway</a>.</p> 

<br> 

<https://alexschroeder.ch/view/2025-03-15-niri>

---

## Ubuntu 25.10 plans to swap GNU coreutils for Rust

date: 2025-03-19, updated: 2025-03-19, from: Liam Proven's articles at the Register

<h4>It&#39;s easier to replace bits of userland than the kernel</h4>
      <p>Efforts are afoot to replace the GNU coreutils with Rust ones in the version after next of Ubuntu, 25.10 – which also means changing the software license.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/03/19/ubuntu_2510_rust/>

---

## Office Hours: What’s Trump’s REAL goal?

date: 2025-03-19, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/office-hours-whats-trumps-real-goal>

---

## March 18, 2025

date: 2025-03-19, from: Heather Cox Richardson blog

On Saturday, U.S. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-18-2025>

---

## Wednesday 19 March, 2025

date: 2025-03-19, from: John Naughton's online diary

Building for Global Britain Can this really be the site office for one of the incessant central Cambridge construction projects? Quote of the Day ”Critics are men who watch a battle from a high place then come down and shoot &#8230; <a href="https://memex.naughtons.org/wednesday-19-march-2025/40564/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/wednesday-19-march-2025/40564/>

---

## More of Trump’s descent into dictatorship

date: 2025-03-19, from: Robert Reich's blog

Two illegal firings that will increase prices for consumers and concentrate more power in Trump&#8217;s hands &#8212; unless the courts stop him. 

<br> 

<https://robertreich.substack.com/p/more-of-trumps-descent-into-dictatorship>

---

## Hyperspace 1.1

date: 2025-03-18, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://hypercritical.co/hyperspace/>

---

##  Don&#8217;t Be a Sucker! 

date: 2025-03-18, updated: 2025-03-18, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/dont-be-a-sucker>

---

## March 17, 2025

date: 2025-03-18, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/159364784/2ea606cf6baebb3a79e5be93fc1a46f9.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/159364784/2ea606cf6baebb3a79e5be93fc1a46f9.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/march-17-2025-66d>

---

##  What Are the Physical Limits of Humanity? 

date: 2025-03-18, updated: 2025-03-18, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/what-are-the-physical-limits-of-humanity-1>

---

##  A 6‑Hour Time-Stretched Version of Brian Eno&#8217;s Music For Airports. &#8220;The tonal... 

date: 2025-03-18, updated: 2025-03-18, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046459-a-6hour-time-stretched-ve>

---

## John Palfrey on the moment

date: 2025-03-18, from: Dave Winer's Scripting News

<p>This is like that moment, five years ago, when we realized that Covid was going to kill a lot of us but it hadn't happened yet. A lot of people weren't yet aware. My <a href="http://scripting.com/images/2024/10/02/palfrey2003.jpeg">friend</a> <a href="https://en.wikipedia.org/wiki/John_Palfrey">John Palfrey</a>, who is a legal scholar, has been writing about this moment on LinkedIn and Facebook. Things are flashing by very quickly, so I'm going to publish his latest piece here, below, so it gets a chance to get to the places I'm hooked into.</p>
<ul>
<li>Lawyer friends and non-lawyer friends: has it become hard to say out loud in public: "we believe in the rule of law in America"? That seems not remotely controversial as a concept. The relative quiet on this topic is what is striking me most at the moment.</li>
<li>It would be a good idea for our Republic to avoid sleepwalking through a Constitutional crisis. Of course there are extremely talented lawyers working overtime on many fronts. Those who are not directly involved in litigation have other tools, including voice and funding and organizing, to make plain the simple truth that we should not let the rule of law slip away in America bit by bit. That will continue to happen if the rulings of federal judges can simply be ignored or sidestepped with impunity.</li>
<li>If the legislature has abdicated its role in checking the power of the executive, and then the judicial branch is also out, well, that leaves just one. This is not "fancy law stuff". This is "4th grade civics stuff" -- separation of powers, checks and balances (I know, I know, we don't teach civics enough in America...).</li>
<li>It is actually *not* more complicated than that. It can't be that hard to say out loud: "we value the rule of law in America" -- no matter your politics or party.</li>
</ul>
 

<br> 

<http://scripting.com/2025/03/18/185358.html?title=johnPalfreyOnTheMoment>

---

##  UbuWeb, a pirate library of avant-garde artifacts, closed in 2024. But last... 

date: 2025-03-18, updated: 2025-03-18, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046456-ubuweb-a-pirate-library-o>

---

## What Can We Learn about Engineering and Innovation from Half a Century of the Game of Life Cellular Automaton?

date: 2025-03-18, from: Stephen Wolfram blog

<span class="thumbnail"><img width="128" height="108" src="https://content.wolfram.com/sites/43/2025/03/goL-icon-v5.png" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" /></span>Metaengineering and Laws of Innovation Things are invented. Things are discovered. And somehow there’s an arc of progress that’s formed. But are there what amount to “laws of innovation” that govern that arc of progress? There are some exponential and other laws that purport to at least measure overall quantitative aspects of progress (number of [&#8230;] 

<br><video crossorigin="anonymous" controls="controls" width="250">
<source type="video/mp4" src="https://content.wolfram.com/sites/43/2025/03/anim2.mp4"></source>
	<source type="video/mp4" src="https://content.wolfram.com/sites/43/2025/03/anim3.mp4"></source>
	<source type="video/mp4" src="https://content.wolfram.com/sites/43/2025/03/anim4.mp4"></source>
</video> <a href="https://content.wolfram.com/sites/43/2025/03/anim2.mp4" target="_blank">download video/mp4</a> 

<https://writings.stephenwolfram.com/2025/03/what-can-we-learn-about-engineering-and-innovation-from-half-a-century-of-the-game-of-life-cellular-automaton/>

---

##  Bad at Goodbyes is a podcast highlighting a different critically endangered plant... 

date: 2025-03-18, updated: 2025-03-18, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046452-bad-at-goodbyes-is-a>

---

## Media Matters

date: 2025-03-18, from: Doc Searls (at Harvard), New Old Blog

Missing Mike. My favorite songwriter and performer is Mike Cross. He was headed to a career in law as an undergrad at UNC-Chapel Hill when a music bug bit him, he learned to play fiddle and guitar, and then to perform in local bars and clubs. I couldn&#8217;t count how many times I went to [&#8230;] 

<br> 

<https://doc.searls.com/2025/03/18/media-matters/>

---

##  Fooling a Self-Driving Tesla Is Dangerously Easy 

date: 2025-03-18, updated: 2025-03-18, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/fooling-a-self-driving-tesla-is-dangerously-easy>

---

## Saturday Night Live’s Cue Cards

date: 2025-03-18, updated: 2025-03-18, from: Daring Fireball

 

<br> 

<https://www.youtube.com/watch?v=3djg59JUrmc>

---

##  From The Climate Mental Health Network, a downloadable free zine for youth... 

date: 2025-03-18, updated: 2025-03-18, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046448-from-the-climate-mental-h>

---

## Chris Ware on Richard Scarry and the Art of Children’s Literature

date: 2025-03-18, updated: 2025-03-18, from: Daring Fireball

 

<br> 

<https://yalereview.org/article/chris-ware-richard-scarry>

---

## Get back on the air

date: 2025-03-18, from: Dave Winer's Scripting News

<p>The Dems highest priority should be to get the Kamala Harris campaign back on social media, 24 by 7, with the truth and snark, irreverance, disrespectful of the Repubs, as a matter of principle. They were great. Perfect. We need a voice for the Democrats on the social networks. </p>
<p>Would someone please send this to AOC, Jasmine Crockett, Bernie Sanders, Mark Cuban, James Carville, anyone else you can think of. </p>
<p>The Dems only problem is there is no voice, no pulse, no heartbeat. Even without this, they almost won the last election. </p>
<p>Everything you like about government came from the Democrats. </p>
<p>We miss you. Get <a href="https://daytona.scripting.com/search?q=%22on%20the%20air%22">back</a> on the air! No time to lose.</p>
 

<br> 

<http://scripting.com/2025/03/18/161228.html?title=getBackOnTheAir>

---

##  The Women Who Wanted to Leave Their Husbands Over Politics. &#8220;This fall,... 

date: 2025-03-18, updated: 2025-03-18, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046436-the-women-who-wanted-to>

---

## Trump’s further descent into dictatorship

date: 2025-03-18, from: Robert Reich's blog

This morning, he issued a bellicose post against a federal judge who&#8217;s trying to constrain him. It&#8217;s part of an increasing attempt by Trump and Musk to threaten judges with violence. 

<br> 

<https://robertreich.substack.com/p/trumps-further-descent-into-dictatorship>

---

##  Freedom of the Press Foundation: &#8220;[Wired] is going to stop paywalling articles... 

date: 2025-03-18, updated: 2025-03-18, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046455-freedom-of-the-press-foun>

---

##  You may have already seen it, but I finally got around to... 

date: 2025-03-18, updated: 2025-03-18, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046454-you-may-have-already-seen>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-18, from: Miguel de Icaza Mastondon feed)

<p>Silver lining moment: We might not have due process for these Gulags, but at least we don’t have troikas yet.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114183810469865171>

---

## Goodbye Torque. Hello TeraFLOPS!

date: 2025-03-18, from: Om Malik blog

In this week&#8217;s edition of CrazyStupidTech, I wrote about how Chinese domination of &#8220;electric vehicles&#8221; is going to become a nightmare, not just for car companies, but also for Silicon Valley. More below! The future of cars is code, not chrome. Volvo’s ES90 is the latest example of computing’s conquest of the automotive industry. Industry &#8230; 

<br> 

<https://om.co/2025/03/18/goodbye-torque-hello-teraflops/>

---

**@Dave Winer's Scripting News** (date: 2025-03-18, from: Dave Winer's Scripting News)

This post is for idiots like <s>you</s> me who <a href="https://imgs.scripting.com/2025/03/18/theBulwarkHatesYou.png">click</a> on links to The Bulwark. 

<br> 

<http://scripting.com/2025/03/18.html#a124453>

---

## Is Security Human Factors Research Skewed Towards Western Ideas and Habits?

date: 2025-03-18, updated: 2025-03-17, from: Bruce Schneier blog

<p>Really interesting research: &#8220;<a href="https://www.usenix.org/conference/usenixsecurity24/presentation/hasegawa">How WEIRD is Usable Privacy and Security Research?</a>&#8221; by  Ayako A. Hasegawa Daisuke Inoue, and Mitsuaki Akiyama:</p>
<blockquote><p><b>Abstract</b>: In human factor fields such as human-computer interaction (HCI) and psychology, researchers have been concerned that participants mostly come from WEIRD (Western, Educated, Industrialized, Rich, and Democratic) countries. This WEIRD skew may hinder understanding of diverse populations and their cultural differences. The usable privacy and security (UPS) field has inherited many research methodologies from research on human factor fields. We conducted a literature review to understand the extent to which participant samples in UPS papers were from WEIRD countries and the characteristics of the methodologies and research topics in each user study recruiting Western or non-Western participants. We found that the skew toward WEIRD countries in UPS is greater than that in HCI. Geographic and linguistic barriers in the study methods and recruitment methods may cause researchers to conduct user studies locally. In addition, many papers did not report participant demographics, which could hinder the replication of the reported studies, leading to low reproducibility. To improve geographic diversity, we provide the suggestions including facilitate replication studies, address geographic and linguistic issues of study/recruitment methods, and facilitate research on the topics for non-WEIRD populations...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/03/is-security-human-factors-research-skewed-towards-western-ideas-and-habits.html>

---

## Noor & Mahmoud: Young Hearts Be Free Tonight, Time is on Your Side

date: 2025-03-18, from: Michael Moore's blog

Noor Abdalla, the Pregnant Wife of Illegally-Arrested Columbia U Protest Leader, Mahmoud Khalil, is from Flint. Naturally. 

<br> 

<https://www.michaelmoore.com/p/noor-and-mahmoud-young-hearts-be>

---

## How our global friends can help us

date: 2025-03-18, from: Robert Reich's blog

Don&#8217;t come here 

<br> 

<https://robertreich.substack.com/p/how-our-global-friends-can-help>

---

## March 17, 2025 

date: 2025-03-18, from: Heather Cox Richardson blog

From 1942 to 1945, the Code Talkers were key to every major operation of the Marine Corps in the Pacific Theater. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-17-2025>

---

## Big Ideas for Little Philosophers

date: 2025-03-18, from: Jessica Smith's blog

<p>About a month ago, <a href="https://www.jayeless.net/2025/02/indies-first-library-trip.html" title="Blog post from 15 Feb: Indie&#39;s First Library Trip">I mentioned</a> that we&rsquo;d borrowed a book from this &ldquo;Big Ideas for Little Philosophers&rdquo; series called <cite>Love with Plato</cite>. Even though I made fun of it at the time, it actually struck me as a really nice little book, and since I was curious about what they would say about the other philosophers, I shelled out to order the whole series:</p>
<div style="display: grid; grid-template-columns: auto auto; grid-gap: 0.5rem; margin-top: 0.5rem;">
	
<a href="https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-front.jpeg" class="glightbox" data-gallery="big-ideas-for-little-philosophers"
  style="aspect-ratio: 4 / 3;"><img 
  sizes="(min-width: 715px) 320px, (min-width: 435px) 45vw, 50vw"
  srcset="https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-front_hu_ffe0d3ea5e164f76.jpeg 320w, https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-front_hu_e64e2c851d1fa6be.jpeg 440w, https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-front_hu_cec15f90eef8e5a8.jpeg 640w, https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-front_hu_8bb87e28bf4de8a2.webp 830w, https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-front_hu_362395d913bf3dc0.webp 1280w, https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-front.jpeg 1920w"
  src="https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-front_hu_8bb87e28bf4de8a2.webp"
  alt="A display of a box set called &#39;Big Ideas for Little Philosophers&#39; and two individual books called &#39;Kindness with Confucius&#39; and &#39;Love with Plato&#39;. The box set has cartoony illustrations of four philosophers on it, and each of the standalone books also has an illustration of its philosopher."
  loading="lazy" class="u-photo u-featured"></a>
<a href="https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-back.jpeg" class="glightbox" data-gallery="big-ideas-for-little-philosophers"
  style="aspect-ratio: 4 / 3;"><img 
  sizes="(min-width: 715px) 320px, (min-width: 435px) 45vw, 50vw"
  srcset="https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-back_hu_98e9b53bffbb67db.jpeg 320w, https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-back_hu_8b8218061baf370c.jpeg 440w, https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-back_hu_4955df0a1343ab62.jpeg 640w, https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-back_hu_fa97b26df44fb302.webp 830w, https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-back_hu_d2038c2e1a3732e8.webp 1280w, https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-back.jpeg 1920w"
  src="https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers/philosopher-books-back_hu_fa97b26df44fb302.webp"
  alt="The same books, but I turned the box set around so you can see the back. It shows the covers of the books that come in that: &#39;Truth with Socrates&#39;, &#39;Equality with Simone de Beauvoir&#39;, &#39;Happiness with Aristotle&#39; and &#39;Imagination with René Descartes&#39;."
  loading="lazy" class="u-photo"></a>

</div>
<p>I&rsquo;m pleased to be able to offer a <em>positive</em> baby book review. While I don&rsquo;t think the books in this series have all accurately outlined the core theses of their respective philosophers, they <em>are</em> all really good, thoughtful books that invite kids to grapple with questions about how we can be good and happy people.</p>
<p>I mentioned last time that I wished the library had had <cite>Equality with Simone de Beauvoir</cite>, and that <em>is</em> one of my favourites, now that I&rsquo;ve read it. It explains, in very &ldquo;small child&rdquo;-friendly language, that gender stereotypes are completely artificial, that girls and boys are really much the same (we all cry when we&rsquo;re sad, and smile when we&rsquo;re happy&hellip;), and that everyone is happier when we can be our true selves without judgement. On one page there is also a cute cat rockin&rsquo; out with a walkman and a hula hoop in the corner, so the book gets bonus points for that.</p>
<p>But then the one that really surprised me was <cite>Happiness with Aristotle</cite>, which actually got into a deep rumination on friendship and what it means to be a &ldquo;true friend&rdquo; that I think many adults would benefit from reading. It talks about how some friends make you laugh and feel good to spend time with, and other friends will help you out when you need a hand, but a <em>true</em> friend is actually someone who&rsquo;ll call you out on your shit, so you can grow as a person. (Again, in kid-friendly language.) Not only that, but the book added that before you can be a &ldquo;true friend&rdquo; to others, you need to be a &ldquo;true friend&rdquo; to yourself, which means &ldquo;loving yourself as much as you love your friends&rdquo;. Like… damn! Where was this book when I was 18–19 and stuck in &ldquo;I can fix him!&rdquo; thinking? It&rsquo;s so good! Again, I&rsquo;m not sure it&rsquo;s an accurate description of the very core of Aristotelian philosophy, but it&rsquo;s a great message.</p>
<p>The books are board books (you know, the hard cardboard ones usually intended for real babies), but they&rsquo;re full of open-ended questions to elicit discussion with a small child. I would love to read these with Indie when she&rsquo;s, like, five and actually able to engage with the ideas therein. I&rsquo;m glad to have bought our own copies, because I think we&rsquo;ll get a lot of mileage out of them.</p>
<p>Having said this, the series <strong>is</strong> clearly missing a book about one very important philosopher, one they could call something like <cite>Communism with Marx</cite>. I guess we just can&rsquo;t have it all 😔</p> 

<br> 

<https://www.jayeless.net/2025/03/big-ideas-for-little-philosophers.html>

---

## AI for my 10-year-old son

date: 2025-03-18, from: Geoffrey Hunntley's blog

<p>This is a follow-up to </p><figure class="kg-card kg-bookmark-card"><a class="kg-bookmark-container" href="https://ghuntley.com/screwed/"><div class="kg-bookmark-content"><div class="kg-bookmark-title">Dear Student: Yes, AI is here, you&#x2019;re screwed unless you take action...</div><div class="kg-bookmark-description">Two weeks ago a student anonymously emailed me asking for advice. This is the reply and if I was in your shoes this is what I&#x2019;d do. So, I</div></div></a></figure> 

<br> 

<https://ghuntley.com/open-webui/>

---

## The Truth Dies with Him

date: 2025-03-18, from: Dan Rather's Steady

Another voice didn&#8217;t toe the Trump line 

<br> 

<https://steady.substack.com/p/the-truth-dies-with-him>

---

## Tesla’s Share Price Has Been Suspect Since Like Forever

date: 2025-03-17, updated: 2025-03-17, from: Daring Fireball

 

<br> 

<https://www.ft.com/content/9cc311b7-676b-4539-a682-b3533a76b0fc>

---

## A marathon trip

date: 2025-03-17, from: Matt Haughey blog

<p>Years ago, my brother  started volunteering at running races as a support guy and eventually turned it into a part-time gig. About 10 years ago, he started working on what is probably &quot;The Big Show&quot; of LA events which is the Los Angeles Marathon. After his first race</p> 

<br> 

<https://a.wholelottanothing.org/a-marathon-trip/>

---

**@Dave Winer's Scripting News** (date: 2025-03-17, from: Dave Winer's Scripting News)

This is <a href="https://gist.github.com/scripting/23798d1963bf440d2194fa108b760faa">the data</a> we keep for every <a href="https://daveverse.wordpress.com/2025/03/16/blogging-is-due-for-a-refresh/">post</a> in <a href="https://wordland.social/">WordLand</a>. 

<br> 

<http://scripting.com/2025/03/17.html#a213026>

---

## Telling the federal judiciary to “f*ck off” 

date: 2025-03-17, from: Robert Reich's blog

Will Trump defy the Supreme Court? 

<br> 

<https://robertreich.substack.com/p/telling-the-federal-judiciary-to>

---

##  Song Exploder talks to Theodore Shapiro about how he created the main... 

date: 2025-03-17, updated: 2025-03-17, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046449-song-exploder-talks-to-th>

---

## Michael Tsai’s Roundup of Links and Commentary on My ‘Something Is Rotten’ Piece Last Week

date: 2025-03-17, updated: 2025-03-17, from: Daring Fireball

 

<br> 

<https://mjtsai.com/blog/2025/03/13/rotten/>

---

##  From One Million Experiments, a printable zine meant to be &#8220;used as... 

date: 2025-03-17, updated: 2025-03-17, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046453-from-one-million-experime>

---

## Ray Maker on the Heart Rate Sensor of the Beats PowerBeats 2 Pro

date: 2025-03-17, updated: 2025-03-18, from: Daring Fireball

 

<br> 

<https://www.dcrainmaker.com/2025/02/apple-beats-powerbeats-2-pro-sports-fitness-heart-rate-in-depth-review.html>

---

## Chance Miller Reviews the Beats Powerbeats Pro 2

date: 2025-03-17, updated: 2025-03-18, from: Daring Fireball

 

<br> 

<https://9to5mac.com/2025/02/11/powerbeats-pro-2-review/>

---

## Michael Gartenberg on the Lessons Apple Learned (and Hopefully Has Not Forgotten) From MobileMe

date: 2025-03-17, updated: 2025-03-17, from: Daring Fireball

 

<br> 

<https://x.com/Gartenberg/status/1900589068003491963>

---

## March 16, 2025

date: 2025-03-17, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/159282509/7951f3c024916e0c6ced0518b363876e.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/159282509/7951f3c024916e0c6ced0518b363876e.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/march-16-2025-2ed>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-17, from: Miguel de Icaza Mastondon feed)

<p>On the bright side, a lot of people I wanted to meet or work with will end up in the same gulag as me.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114179233434259130>

---

##  The Curious 100 from The Eames Institute is, &#8220;a celebration of one... 

date: 2025-03-17, updated: 2025-03-17, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046450-the-curious-100-from-the>

---

## ‘Going National: The Drexel Microcomputing Project’

date: 2025-03-17, updated: 2025-03-17, from: Daring Fireball

 

<br> 

<https://www.youtube.com/watch?v=1E9NsaSYWbY>

---

##  Indie game Blobun has a joke setting that eliminates its lesbian content.... 

date: 2025-03-17, updated: 2025-03-17, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046451-indie-game-blobun-has-a>

---

## ‘40 Years Ago, Drexel Made Computer — and Apple — History’

date: 2025-03-17, updated: 2025-03-17, from: Daring Fireball

 

<br> 

<https://drexel.edu/news/archive/2024/March/drexel-apple-40th-anniversary-macintosh-1984>

---

## 2025-03-05 Unicode woes

date: 2025-03-17, from: Alex Schroeder's Blog

<h1 id="2025-03-05-unicode-woes">2025-03-05 Unicode woes</h1>

<p>I just discovered that there was a difference between GREEK SMALL LETTER MU (μ) and MICRO SIGN (μ), resulting in these two hashtags on my blog to return different results: <a class="tag" href="/search/?q=%23Oddµ">#Oddµ</a> <a class="tag" href="/search/?q=%23Oddμ">#Oddμ</a> 😭 Ironically, I was tricked by the compose key M U sequence into thinking that the result was a mu but in fact it’s the micro sign. I had to go through the whole blog, fixing this.</p>

<p><a class="tag" href="/search/?q=%23Oddμ">#Oddμ</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-03-05-unicode>

---

##  If you&#8217;re mad as hell, one thing you can do is run... 

date: 2025-03-17, updated: 2025-03-17, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046446-if-youre-mad-as-hell>

---

## My 2015 Interview With ‘Becoming Steve Jobs’ Authors Brent Schlender and Rick Tetzeli

date: 2025-03-17, updated: 2025-03-17, from: Daring Fireball

 

<br> 

<https://itunes.apple.com/us/podcast/brent-schlender-rick-tetzeli/id980487310?mt=2>

---

## The Original ‘Something’s Rotten in Cupertino’ — Brent Schlender’s 1997 Story for Fortune

date: 2025-03-17, updated: 2025-03-18, from: Daring Fireball

 

<br> 

<https://money.cnn.com/magazines/fortune/fortune_archive/1997/03/03/222710/>

---

##  A really important point from Masha Gessen about the Trumpist attacks on... 

date: 2025-03-17, updated: 2025-03-17, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046447-a-really-important-point->

---

##  A good, long piece from Thomas Zimmer about how we &#8220;underestimated the... 

date: 2025-03-17, updated: 2025-03-17, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046445-a-good-long-piece-from>

---

**@Dave Winer's Scripting News** (date: 2025-03-17, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://s3.amazonaws.com/scripting.com/images/2020/11/27/duck.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="https://www.linkedin.com/posts/jpalfrey_no-one-can-know-for-sure-whether-this-weekends-activity-7307109581892005889-Iiou/">Palfrey's alarm</a> yesterday was about the Americans who were whisked off to <a href="https://en.wikipedia.org/wiki/Terrorism_Confinement_Center">El Salvador</a>. Who they are and what they're accused of is unknown, as if there's any substance to the accusation. No indictment, trial, verdict, appeals, etc. El Salvador wants to be the US dumping ground for undesirables. This is where we have, as <a href="https://snyder.substack.com/p/the-evil-at-your-door">Timothy Snyder says</a>, regime change. I thought the elmination of Social Security would have been the moment the light went on for most Americans, but this should be it. Citizens like you and me being <a href="https://en.wikipedia.org/wiki/Human_rights_abuses_in_Chile_under_Augusto_Pinochet">disappeared</a>. It's a pretty quick way to get most of the people to behave according to the rules of the government, or off you go. 

<br> 

<http://scripting.com/2025/03/17.html#a151014>

---

## Improvements in Brute Force Attacks

date: 2025-03-17, updated: 2025-03-17, from: Bruce Schneier blog

<p>New paper: &#8220;<a href="https://tosc.iacr.org/index.php/ToSC/article/view/12078/11919">GPU Assisted Brute Force Cryptanalysis of GPRS, GSM, RFID, and TETRA: Brute Force Cryptanalysis of KASUMI, SPECK, and TEA3</a>.&#8221;</p>
<blockquote><p><b>Abstract:</b> Key lengths in symmetric cryptography are determined with respect to the brute force attacks with current technology. While nowadays at least 128-bit keys are recommended, there are many standards and real-world applications that use shorter keys. In order to estimate the actual threat imposed by using those short keys, precise estimates for attacks are crucial.</p>
<p>In this work we provide optimized implementations of several widely used algorithms on GPUs, leading to interesting insights on the cost of brute force attacks on several real-word applications...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/03/improvements-in-brute-force-attacks.html>

---

**@Dave Winer's Scripting News** (date: 2025-03-17, from: Dave Winer's Scripting News)

Poking around on old servers I found <a href="http://jsonify.scripting.com/?url=http://scripting.com/rss.xml">this cute little app</a> that jsonifies an RSS feed. Not sure why I did it. Postscript, it only works for one feed, mine. I replaced it with a template in the feeder app which was a useful version of the cute little app. Here's a <a href="https://feeder.scripting.com/?template=jsonify&feedurl=http%3A%2F%2Fjeffmilner.com%2F%3Ffeed%3Drss2">demo</a> of it viewing the contents of a feed in JSON using a special template. 

<br> 

<http://scripting.com/2025/03/17.html#a150614>

---

##  Timothy Snyder on the terrifying deportations being undertaken by the Trump regime.... 

date: 2025-03-17, updated: 2025-03-17, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046444-timothy-snyder-on-the-ter>

---

##  The World&#8217;s Deadliest Infectious Disease Is About to Get Worse. John Green,... 

date: 2025-03-17, updated: 2025-03-17, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046443-the-worlds-deadliest-infe>

---

**@Dave Winer's Scripting News** (date: 2025-03-17, from: Dave Winer's Scripting News)

I put out a call for <a href="https://daytona.scripting.com/search?q=%22Old%20School%20Bloggers%22">Old School Bloggers</a>, and <a href="https://mastodon.social/@genehack@dementedandsadbut.social/114175983870561983">got</a> <a href="https://mastodon.social/@dan@danq.me/114176473459920450">back</a> a <a href="https://mastodon.social/@alex@social.alexschroeder.ch/114176953125240166">bunch</a> <a href="https://mastodon.social/@rasterweb/114175226829752110">of</a> <a href="https://mastodon.social/@splitbrain@fedi.splitbrain.org/114176961542586820">notes</a> on <a href="https://mastodon.social/@requiem@hackers.town/114175500573308302">Mastodon</a>. Gettin' the band back together! :-) 

<br> 

<http://scripting.com/2025/03/17.html#a130705>

---

**@Dave Winer's Scripting News** (date: 2025-03-17, from: Dave Winer's Scripting News)

Pradeep is <a href="https://pradx.in/2025/03/17/5399/">using WordLand</a> for some of his WordPress blog posts, and has given them a <a href="https://pradx.in/category/personal/status-updates/">special category</a>. Very smart, good use of categories. 

<br> 

<http://scripting.com/2025/03/17.html#a125840>

---

##  Canada is so furious at the US right now. &#8220;Everything Trump has... 

date: 2025-03-17, updated: 2025-03-17, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046442-canada-is-so-furious-at>

---

## Flang-tastic! LLVM's Fortran compiler finally drops the training wheels

date: 2025-03-17, updated: 2025-03-17, from: Liam Proven's articles at the Register

<h4>Another all-FOSS option – just don&#39;t confuse it with all the other Flangs</h4>
      <p>The latest version of the LLVM compiler suite has promoted its Fortran front end. &#34;Flang&#34; is now official.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2025/03/17/llvm_20_flang/>

---

## How to fight the Trump regime’s use of fear and intimidation

date: 2025-03-17, from: Robert Reich's blog

Three rules for responding to his tyranny 

<br> 

<https://robertreich.substack.com/p/how-to-respond-to-fear-and-intimidation>

---

## March 16, 2025

date: 2025-03-17, from: Heather Cox Richardson blog

Yesterday, President Donald Trump reached back to 1798 for authority to expel five people he claims are members of a Venezuelan gang. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-16-2025>

---

## Monday 17 March, 2025

date: 2025-03-17, from: John Naughton's online diary

Letting sleeping cats lie The view from the front garden of the Fitzwilliam museum on Friday afternoon. Note the snoozing lions on the left. Quote of the Day ”The most affectionate creature in the world is a wet dog.” Ambrose &#8230; <a href="https://memex.naughtons.org/monday-17-march-2025/40555/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-17-march-2025/40555/>

---

## Dithering: ‘Being Real Points’

date: 2025-03-17, updated: 2025-03-19, from: Daring Fireball

 

<br> 

<https://dithering.passport.online/member/episode/being-real-points>

---

## Elbows Up, Darnit!

date: 2025-03-17, from: Margaret Atwood's substack

The Statue of Liberty has an identity problem. 

<br> 

<https://margaretatwood.substack.com/p/elbows-up-darnit>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-16, from: Miguel de Icaza Mastondon feed)

<p>Whoa!  I thought last weeks episode of severance was the season finale.</p><p>So happy to find out we got another episode left before the long night.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114174716105074066>

---

## Blogging is due for a refresh

date: 2025-03-16, from: Dave Winer's Scripting News

<p>A lot has changed since the last time we took a serious look at blogging. A few items, as examples.</p>
<ol>
<li>When RSS came along Markdown didn't exist. The two technologies belong together, imho.</li>
<li>Websockets have replaced long polling. </li>
<li>Servers got cheap! (and easy to deploy).</li>
<li>SQL is fast and the tools are much better.</li>
<li>The user interfaces of all the Web 2.0+ products didn't exist last time we created new blogging communities. We can borrow ideas from  twitter-like systems, even huge products like Facebook and Spotify have innovations that come long after the initial wave of blogging.</li>
</ol>
<p>But one thing stays the same -- all the components are replaceable. Absolutely zero lock-in. We use simple standard APIs where they exist, and create new minimal formats and protocols where they don't.</p>
<p>Blogging has a simple philosophy that remains constant. </p>
 

<br> 

<http://scripting.com/2025/03/16/222022.html?title=bloggingIsDueForARefresh>

---

## 2025-03-16 Klingnauer Stausee

date: 2025-03-16, from: Alex Schroeder's Blog

<h1 id="2025-03-16-klingnauer-stausee">2025-03-16 Klingnauer Stausee</h1>

<p>We walked around the lake, me, my wife, my stepmother and her partner. It was late 2020 and the COVID-19 pandemic was ongoing. I remember having masks on the train and only taking them off as we were walking around the lake.</p>

<p><img loading="lazy" src="2025-03-16-memories-8.jpg" alt="" />
<img loading="lazy" src="2025-03-16-memories-9.jpg" alt="" />
<img loading="lazy" src="2025-03-16-memories-1.jpg" alt="" />
<img loading="lazy" src="2025-03-16-memories-2.jpg" alt="" />
<img loading="lazy" src="2025-03-16-memories-3.jpg" alt="" />
<img loading="lazy" src="2025-03-16-memories-4.jpg" alt="" />
<img loading="lazy" src="2025-03-16-memories-6.jpg" alt="" />
<img loading="lazy" src="2025-03-16-memories-7.jpg" alt="" />
<img loading="lazy" src="2025-03-16-memories-5.jpg" alt="" /></p>

<p><a class="tag" href="/search/?q=%23Pictures">#Pictures</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-03-16-memories>

---

## Sunday caption contest: Landing

date: 2025-03-16, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-landing>

---

## WordLand v0.50

date: 2025-03-16, from: Dave Winer's Scripting News

<p><a href="https://www.youtube.com/watch?v=Vxdv5PveIDM">Adding and deleting categories</a> are part of <a href="https://wordland.social/">WordLand</a> 0.50, released earlier today. These are the same categories you can edit in the WordPress user interface. But I learned that you need to be able to add categories when you're writing. You want this functionality to be close-by. </p>
<p><a href="https://imgs.scripting.com/2025/03/16/twoColumnScreenShot.png">Two columns</a> in the Categories dialog. More efficient use of space.</p>
<p><a href="https://imgs.scripting.com/2025/03/16/contextMenuScreenShot.png">Context menu</a> with two new commands.</p>
<p>Change notes <a href="https://github.com/scripting/wordlandSupport/issues/59">are here</a>.</p>
 

<br> 

<http://scripting.com/2025/03/16/215535.html?title=wordlandV050>

---

## March 15, 2025

date: 2025-03-16, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/159210502/23a98cbb6f3c9d3b30e327b9aaa29055.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/159210502/23a98cbb6f3c9d3b30e327b9aaa29055.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/march-15-2025-717>

---

##  Beginning April 20, Pride & Prejudice (w/ Keira Knightley & Matthew Macfadyen)... 

date: 2025-03-16, updated: 2025-03-16, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046441-beginning-april-20-pride>

---

## My (New) Daily Blog

date: 2025-03-16, from: Om Malik blog

If you’re a visitor to the website, you might have noticed a new link in the menu — Daily Blog. If you receive my writing by email, here’s a brief overview of this new feature. I used to publish a “Daily Om” blog during GigaOm’s expansion beyond my solo operation. It primarily served as a &#8230; 

<br> 

<https://om.co/2025/03/16/my-new-daily-blog/>

---

##  Something new from Radiohead on the horizon? Radiohead Members Form New LLP,... 

date: 2025-03-16, updated: 2025-03-16, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046440-something-new-from-radioh>

---

## Gag of America

date: 2025-03-16, from: Doc Searls (at Harvard), New Old Blog

Here is what a Google News search for Voice of America looks like right now: &#8216;Bloody Saturday&#8217; at Voice of America and other U.S.-funded networks, by David Folkenflik at NPR, begins with this: Journalists showed up at the Voice of America today to broadcast their programs only to be told they had been locked out: [&#8230;] 

<br> 

<https://doc.searls.com/2025/03/16/gag-of-america/>

---

## Catching up

date: 2025-03-16, from: Enlightenment Economics blog

It has been a busy term indeed. As well as all the usual, we&#8217;re working towards the transformation of the Bennett Institute into the Bennett School of Public Policy, an important initiative for the University of Cambridge. Which is by &#8230; <a href="http://www.enlightenmenteconomics.com/blog/index.php/2025/03/catching-up/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<http://www.enlightenmenteconomics.com/blog/index.php/2025/03/catching-up/>

---

##  Ross Andersen writes thoughtfully about LeBron James&#8217; protectiveness of his son Bronny... 

date: 2025-03-16, updated: 2025-03-16, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/03/0046439-ross-andersen-writes-thou>

---

## ★ A Postscript on the Singular Nature of Mark Gurman’s Reporting

date: 2025-03-16, updated: 2025-03-17, from: Daring Fireball

But I’d feel a lot better about our collective conventional wisdom regarding the nature of this particular all-hands Siri meeting if it had leaked to, and been reported on, by more than one reporter at more than one publication. 

<br> 

<https://daringfireball.net/2025/03/a_postscript_on_the_singular_nature_of_mark_gurmans_reporting>

---

## Garmin tactix 7 AMOLED

date: 2025-03-16, from: mrusme blog

A brief review of the Garmin tactix 7 AMOLED smartwatch, coming from an
_Instinct 2X Solar Tactical Edition_, specifically focusing on a feature that
is exclusive to Garmin's high-end models: The Electrocardiogram. 

<br> 

<https://xn--gckvb8fzb.com/garmin-tactix-7-amoled/>

---

## A Musical Genius

date: 2025-03-16, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/a-musical-genius>

---

## A Sunday thought

date: 2025-03-16, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/a-sunday-thought>

---

## March 15, 2025

date: 2025-03-16, from: Heather Cox Richardson blog

March 15 is a crucially important day in U.S. 

<br> 

<https://heathercoxrichardson.substack.com/p/march-15-2025>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-16, from: Miguel de Icaza Mastondon feed)

<p>TCP/IP but with session cookies instead of src/dst address/ports to keep the session alive.</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114169525568808746>

---

## How to Generate a Report of Apple Intelligence Requests Sent to Private Cloud Compute

date: 2025-03-16, updated: 2025-03-17, from: Daring Fireball

 

<br> 

<https://support.apple.com/guide/iphone/apple-intelligence-and-privacy-iphe3f499e0e/ios>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-03-16, from: Miguel de Icaza Mastondon feed)

<p>Our oligarch class devours its own feculence</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114169257456471618>

