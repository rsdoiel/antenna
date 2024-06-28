---
title: tech likely 2024.26
updated: 2024-06-27 17:05:32
---

# tech likely 2024.26

(date: 2024-06-27 17:05:32)

---

## Windows 10 will be covered by 0patch, a third-party paid patching service

date: 2024-06-27, from: OS News

So I learned something new today: there are companies that provide security patches for Windows that aren&#8217;t Microsoft. I never even considered this could be a thing, but it turns out that a paid service called 0patch seems to have been around for a long time, and the consensus seems to be that not only can it be trusted, it also sometimes provides patches sooner than Microsoft does. Today, 0patch announced it&#8217;ll also be providing this service for Windows 10 after the end of support next year. With October 2025, 0patch will &#8220;security-adopt&#8221; Windows 10 v22H2, and provide critical security patches for it for at least 5 more years &#8211; even longer if there&#8217;s demand on the market. We&#8217;re the only provider of unofficial security patches for Windows (&#8220;virtual patches&#8221; are not really patches), and we have done this many times before: after security-adopting Windows 7 and Windows Server 2008 in January 2020, we took care of 6 versions of Windows 10 as their official support ended, security-adopted Windows 11 v21H2 to keep users who got stuck there secure, took care of Windows Server 2012 in October 2023 and adopted two popular Office versions &#8211; 2010 and 2013 &#8211; when they got abandoned by Microsoft. We&#8217;re still providing security patches for all of these. ↫ Mitja Kolsek on the 0patch blog This service implements patching through what it calls &#8220;micropatches&#8221;, which are very small sets of CPU instructions injected into running code in memory without modifying &#8211; in this case &#8211; Microsoft&#8217;s own code. These micropatches are applied by briefly stopping the offending program, injecting the fix, and continuing the program &#8211; without having to close the program or reboot. Of course, they can be unapplied in the same, non-disruptive way. The 0patch service will provide patches for 0days that Microsoft hasn&#8217;t fixed yet, patches for issues Microsoft won&#8217;t fix, and sometimes patches for third party code. As the headline clearly states, this service isn&#8217;t free, but honestly, at roughly 25 dollars plus tax per computer per year, it&#8217;s not exactly expensive, and definitely cheaper than Microsoft&#8217;s own Windows 10 Extended Security Update program it&#8217;s going to offer for Windows 10 after the end of support date next year. Diving a bit deeper into who is providing this service, it comes from a company called ACROS Security, a small company out of Slovenia. The company details its micropatches on its 0patch blog if you want more information on how each individual ones works. I still don&#8217;t know exactly what to make of this, and I definitely wouldn&#8217;t rely on something like this for mission-critical Windows computers or servers, but for something like a home PC that can&#8217;t be upgraded to Windows 11 but still works just fine, or perhaps some disposable virtual machines you&#8217;re using, this might be a good stopgap solution until you can upgrade to a better operating system, like Linux or one of the BSDs. Are there any people in the OSNews audience who&#8217;ve used 0patch, or perhaps a service similar to it? 

<https://www.osnews.com/story/140078/windows-10-will-be-covered-by-0patch-a-third-party-paid-patching-service/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-27, from: Miguel de Icaza Mastondon feed)

<p>To get a bunch of Godot games to work on mobile without changes, it is possible to use Apple&#39;s virtual controller, which gives you a mobile controller on top of your code for free, and you get to keep your physical controller code:</p><p><a href="https://developer.apple.com/documentation/gamecontroller/gcvirtualcontroller" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">developer.apple.com/documentat</span><span class="invisible">ion/gamecontroller/gcvirtualcontroller</span></a></p><p>We will be upstreaming this change soon.</p><p>Here it is with Godot on iPad:</p> 

<https://mastodon.social/@Migueldeicaza/112690800659059613>

---

## NASA, Boeing to Provide Commercial Crew, Space Station Update

date: 2024-06-27, from: NASA breaking news

Leadership from NASA’s International Space Station and Commercial Crew Programs, as well as Boeing, will participate in a media teleconference at 2 p.m. EDT Friday, June 28. NASA and Boeing continue to evaluate Starliner’s propulsion system performance before returning from the International Space Station as part of the agency’s Crew Flight Test. The agency also [&#8230;] 

<https://www.nasa.gov/news-release/nasa-boeing-to-provide-commercial-crew-space-station-update/>

---

##  I Will Fucking Piledrive You If You Mention AI Again. &#8220;&#8230;spending half... 

date: 2024-06-27, updated: 2024-06-27, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044890-i-will-fucking-piledrive->

---

##  &#8220;I Shrink 10x Every 21s Until I&#8217;m an Atom&#8221; 

date: 2024-06-27, updated: 2024-06-27, from: Jason Kottke blog

 

<https://kottke.org/24/06/i-shrink-10x-every-21s-until-im-an-atom>

---

## NASA Awards Contract for Cargo Mission Support

date: 2024-06-27, from: NASA breaking news

NASA has awarded a contract to Leidos, Inc. of Reston, Virginia, to provide mission support for the agency’s International Space Station Program, Artemis campaign, and more. The Cargo Mission Contract 4 has a total potential value of $476.5 million, with a base period from Oct. 1, 2024, to Sept. 30, 2026, followed by three option [&#8230;] 

<https://www.nasa.gov/news-release/nasa-awards-contract-for-cargo-mission-support/>

---

## Station Nation: Meet Katie Burlingame, ETHOS Flight Controller and Instructor in the Flight Operations Directorate

date: 2024-06-27, from: NASA breaking news

Katie Burlingame is an ETHOS (Environmental and Thermal Operating Systems) flight controller and instructor in the Flight Operations Directorate supporting the International Space Station. Burlingame trains astronauts and flight controllers on the International Space Station’s environmental control systems, internal thermal control systems, and emergency response. Burlingame shares about their path to NASA, what Pride Month [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/johnson/station-nation-meet-katie-burlingame-ethos-flight-controller-and-instructor-in-the-flight-operations-directorate/>

---

## NASA Prepares for Air Taxi Passenger Comfort Studies

date: 2024-06-27, from: NASA breaking news

A new custom virtual reality flight simulator built by NASA researchers will allow them to explore how passengers experience air taxi rides and collect data that will help designers create new aircraft with passenger comfort in mind. Wayne Ringelberg, a test pilot at NASA’s Armstrong Flight Research Center in Edwards, California, recently completed a series [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/armstrong/nasa-prepares-for-air-taxi-passenger-comfort-studies/>

---

## Fixing KWin’s performance on old hardware

date: 2024-06-27, from: OS News

KWin had a very long standing bug report about bad performance of the Wayland session on older Intel integrated graphics. There have been many investigations into what’s causing this, with a lot of more specific performance issues being found and fixed, but none of them managed to fully fix the issue… until now. ↫ Xaver Hugl An excellent deep dive into a very annoying problem KWin on Wayland running on older Intel hardware was facing. It turns out the issue was related to display timings, and older Intel hardware simply not being powerful enough to render frames within the timing window. The solution consisted of a various smaller solutions, and one bigger one: triple-buffering. The end result is a massive performance improvement for KWin on Wayland on older Intel hardware. This detailed post underlines just how difficult it is to simply render a bunch of windows and UI elements on time, without stutters or tearing, while taking into account the wide variety of hardware a project like KDE Plasma intends to run on. It&#8217;s great to see them paying attention to the older, less powerful systems too, instead of only focusing on the latest and greatest like Apple, and recently Microsoft as well, do. 

<https://www.osnews.com/story/140076/fixing-kwins-performance-on-old-hardware/>

---

##  Paramount has taken offline the entire MTV News archive as well as... 

date: 2024-06-27, updated: 2024-06-27, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044888-paramount-has-taken-offli>

---

##  The Biden administration&#8217;s successes (clean energy, infrastructure investment, workers&#8217; rights, making gov&#8217;t... 

date: 2024-06-27, updated: 2024-06-27, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044887-the-biden-administrations>

---

## NASA Kennedy Team Recognized During White House Sustainability Awards

date: 2024-06-27, from: NASA breaking news

A team of seven NASA Kennedy employees was recognized by the White House for charging ahead with the expansion of the agency’s sustainable electric vehicle (EV) fleet at Kennedy Space Center. They did so at minimal cost to taxpayers while also offering zero emission EV charging for any workers and visitors willing to pay out [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/kennedy/nasa-kennedy-team-recognized-during-white-house-sustainability-awards/>

---

## Langley Celebrates Pride Month: Derek Bramble

date: 2024-06-27, from: NASA breaking news

Derek Bramble has served in a variety of mission and program support roles over his 14-year career at NASA Langley.  He currently serves as an HR Business Partner in LaRC&#8217;s Human Capital Office, where he works closely with a number of organizations across the Center providing them with strategic and operational HR support. Derek previously [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/langley/langley-celebrates-pride-month-derek-bramble/>

---

##  Diary Comics, January 2024 

date: 2024-06-27, updated: 2024-06-27, from: Jason Kottke blog

 

<https://kottke.org/24/06/diary-comics-january-2024>

---

## The subscription problem

date: 2024-06-27, from: Dave Winer's Scripting News

<p>Yesterday I did a <a href="http://scripting.com/2024/06/26.html#a225814">podcast</a> in my new <a href="https://this.how/scriptingNewsPodcast/">podcast-only feed</a> that explained how RSS had its moment between 2002 and 2006. The big event in 2002 was support from the NY Times, and in 2006 it was the advent of Twitter. </p>
<ul>
<li>The <a href="https://scripting.wordpress.com/2006/02/09/how-the-ny-times-came-to-support-rss/">NY Times support</a> gave us the news flow of one of the greatest and most respected news orgs. The entire news publishing industry followed, with incredible speed. It was an amazing time. Woodstock on the web. Everyone who was anyone was there.  </li>
<li>Inbetween, <a href="https://cyber.harvard.edu/rss/rss.html">RSS</a> got the rep of being too hard for average people. The <i>only</i> reason for this deserved reputation is that subscription was a mess. Every website had to figure it out for themselves, and every feed reader acted as if they were the only feed reader in the world. RSS, which could have been the foundation of something very much like Twitter, never got out the corner of the market where it was totally adored, by people who were motivated enough to tolerate the awful state of subscribing.</li>
<li>This was not in any way an insolvable problem. But it required something that the developers of the open web weren't able to do, work together. The W3C and IETF were busy trying to replace RSS, they were offended that it had been developed independently, even though their pitch for XML was that you could develop your own formats. It seemed they didn't believe their own hype? So not only did they not do do anything to help, they actively worked to undermine the success of RSS. That didn't work, fortunately. </li>
<li>By the time <a href="https://en.wikipedia.org/wiki/Google_Reader">Google Reader</a> came along in 2005, it was too late for cooperation. Google dominated, and they didn't want to do anything to build an open news ecosystem.</li>
<li><img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/27/followButton.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">When Twitter arrived in 2006, it had control of every aspect of user interface in their corporate platform, and were thus able to completely solve the subscription problem. Every feed had a button that said Follow. Click the button and you were following that feed. The button changed to Unfollow. That is was whole user interface right there. So easy anyone could use it.</li>
</ul>
<p>This story must sound familliar, in 2024 -- because it's all happening <a href="https://www.goodreads.com/quotes/468991-all-of-this-has-happened-before-and-it-will-all">again</a>. This time it's Facebook playing the role of Twitter, and Mastodon playing the role of RSS. And Mastodon has gotten a deserved reputation as being only for techie types. And the solution in 2024 is the same as it was in 2002 -- working together to make subscription easy. A one-click Follow button that works. One button for site-makers to put on their pages. And users leaning back and clicking away without a care in the world (at least about the software).</p>
<p>The <a href="http://scripting.com/2024/06/26/theFediverseIsDoomedUnlessSubscriptionGetsEasyFast.m4a">podcast</a> is only 12 minutes long. Go have a listen and then think about whether or not you want to solve this problem for the fediverse. It can include non-ActivityPub systems btw, like Bluesky and even feed readers! We can all share the same subscription protocol. But it cannot be distributed. It must be centralized. </p>
 

<http://scripting.com/2024/06/27/175207.html?title=theSubscriptionProblem>

---

## Mapping the Red Planet with the Power of Open Science

date: 2024-06-27, from: NASA breaking news

Mars rovers can only make exciting new discoveries thanks to human scientists making careful decisions about their next stop. The Mars 2020 mission is aimed at exploring the geology of Jezero Crater and seeking signs of ancient microbial life on Mars using the Perseverance rover. Scientists at NASA’s Jet Propulsion Laboratory (JPL) in Southern California […] 

<https://science.nasa.gov/open-science/mars-mapping-open-source/>

---

## NASA Parachute Sensor Testing Could Make EPIC Mars Landings

date: 2024-06-27, from: NASA breaking news

Landing rovers and helicopters on Mars is a challenge. It’s an even bigger challenge when you don’t have enough information about how the parachutes are enduring strain during the descent to the surface. Researchers at NASA’s Armstrong Flight Research Center in Edwards, California, are experimenting with readily available, highly elastic sensors that can be fixed [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/armstrong/nasa-parachute-sensor-testing-could-make-epic-mars-landings/>

---

## Hubble Captures Infant Stars Transforming a Nebula

date: 2024-06-27, from: NASA breaking news

This NASA/ESA&#160;Hubble Space Telescope&#160;image presents a visually striking collection of interstellar gas and dust. Named RCW 7, the nebula is located just over 5,300 light-years from Earth in the constellation Puppis. Nebulae&#160;are areas rich in the raw material needed to form new stars. Under the influence of gravity, parts of these molecular clouds collapse until [&#8230;] 

<https://www.nasa.gov/image-article/hubble-captures-infant-stars-transforming-a-nebula/>

---

##  Asking AI to generate a video of the Tour de France. 1.... 

date: 2024-06-27, updated: 2024-06-27, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044885-asking-ai-to-generate-a>

---

## Sergey Durmanov commented on issue #143 at Felix Oliver Friedrich / Oberon A2

date: 2024-06-27, updated: 2024-06-27, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:154" dir="auto">The problem is that this code compiles without any warnings and gives the impression that the code is working. But when executed we will receive an error.</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/143#note_192621>

---

## NASA Celebrates 10 Years of Human Spaceflight’s NExT Pioneers

date: 2024-06-27, from: NASA breaking news

Experienced spacewalkers, university students, flight controllers, and NASA team members at all stages of their career recently came together at Johnson Space Center’s Neutral Buoyancy Laboratory (NBL) for an anniversary celebration that looked to the future as much as the past. The Office of STEM Engagement’s Micro-g Neutral Buoyancy Experiment Design Teams (Micro-g NExT) marked [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/johnson/nasa-celebrates-10-years-of-human-spaceflights-next-pioneers/>

---

## Sergey Durmanov commented on issue #144 at Felix Oliver Friedrich / Oberon A2

date: 2024-06-27, updated: 2024-06-27, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:320" dir="auto">It seems to me that this particular problem can be solved if the compiler marks the formal parameter, which is (possibly) returned by reference, and checks the actual parameter when calling the procedure. This will not solve all problems with returning by reference, but it will eliminate a significant number of errors.</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/144#note_192620>

---

## Paramount Concerns

date: 2024-06-27, from: Tedium site

In an immediate austerity measure after a failed merger, Paramount kills a ton of online content—an ironic move for a brand that has long exploited nostalgia. 

<https://feed.tedium.co/link/15204/16727401/paramount-online-content-erasure>

---

## Snapshots for IPC Fuzzing

date: 2024-06-27, from: Mozilla Developer Network blog

<p>Process separation remains one of the most important parts of the Firefox security model and securing our IPC (Inter-Process Communication) interfaces is crucial to keep privileges in the different processes separated. We take a more detailed look at our newest tool for finding vulnerabilities in these interfaces – snapshot fuzzing.</p>
<p>The post <a href="https://hacks.mozilla.org/2024/06/snapshots-for-ipc-fuzzing/">Snapshots for IPC Fuzzing</a> appeared first on <a href="https://hacks.mozilla.org">Mozilla Hacks - the Web developer blog</a>.</p>
 

<https://hacks.mozilla.org/2024/06/snapshots-for-ipc-fuzzing/>

---

##  15 Years of Plant Time Lapse Videos 

date: 2024-06-27, updated: 2024-06-27, from: Jason Kottke blog

 

<https://kottke.org/24/06/15-years-of-plant-time-lapse-videos>

---

##  One Million Checkboxes. I love these sorts of minimal collaborative thingies. (Are... 

date: 2024-06-27, updated: 2024-06-27, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044884-one-million-checkboxes-i->

---

##  Calm Down — Your Phone Isn&#8217;t Listening to Your Conversations. It&#8217;s Just... 

date: 2024-06-27, updated: 2024-06-27, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044883-calm-down-your-phone>

---

## Alphabet Soup: NASA’s GOLD Finds Surprising C, X Shapes in Atmosphere

date: 2024-06-27, from: NASA breaking news

Who knew Earth’s upper atmosphere was like alphabet soup? NASA’s Global-scale Observations of the Limb and Disk (GOLD) mission has revealed unexpected C- and X-shaped formations in an electrified layer of gas high above our heads called the ionosphere. While these alphabetical shapes have been observed before, GOLD sees them more clearly than other instruments […] 

<https://science.nasa.gov/science-research/heliophysics/alphabet-soup-nasas-gold-finds-surprising-c-x-shapes-in-atmosphere/>

---

## 2024-06-27 Keep your own archives

date: 2024-06-27, from: Alex Schroeder's Blog

<h1 id="2024-06-27-keep-your-own-archives">2024-06-27 Keep your own archives</h1>

<p>In these days of copyright maximalism I often think of all the fragments by ancient authors that we only know because they were quoted extensively by others.</p>

<p>We should not expect the web to stay up, the links to stay fresh, the posts to remain available. No, it’s entropy all the way: technology comes and goes, servers come and go, pages are written and get deleted, people are born and die, and everything they ever built is pulled down as capitalism keeps eating us and our works.</p>

<p>Here’s my wish: link if you can but quote extensively and fight copyright maximalism. Save our culture! Some of our works might survive into the far future and the quotes they bear are the life boats of our thoughts.</p>

<p>I still need to get into the habit of archiving web posts I like. I&rsquo;m very unhappy about that. I started saving all the PDFs I liked, read, skimmed or intended to read, just in case I need find them again. It&rsquo;s a start, but not enough.</p>

<p>It hurts my brain that Sophocles was so prolific, so famous, so beloved – and we got seven plays out of a hundred and twenty. 😭 And that’s one of the authors with complete plays available. All pre-Socratic philosophy relies on testimonia. 😭 😭</p>

<p>Thanks to <a class="account" href="https://floss.social/@alcinnz" title="@alcinnz@floss.social">@alcinnz</a> and <a class="account" href="https://fosstodon.org/@Greta" title="@Greta@fosstodon.org">@Greta</a> for the conversation back in 2023.</p>

<p>This message is brought to you not only by the film studios cancelling shows they already produced in order to save on taxes, nor by studios dumping TV archives, nor by search engines letting the USENET archive deteriorate, nor by the copyright owners eager to prey on any that would restore old movies that are rotting away due to age, hoping to leech any value somebody else might create, nor by thoughts of a generation of people entrusting their culture to the Internet where companies fail and servers die and nothing of value survives the coming apocalypse. No. It&rsquo;s because the artifacts of our lives and our culture are no longer made of clay and stone to last for a thousand years, nor paper or wood to last for centuries, and we&rsquo;ve handed them over to corporations that don&rsquo;t care. All they care for is profit.</p>

<p>We need to take back what we can.</p>

<p>We need to keep our own archives.</p>

<p><a class="tag" href="/search/?q=%23Copyright">#Copyright</a></p> 

<https://alexschroeder.ch/view/2024-06-27-keep-archives>

---

## A Worthwhile Improvement, Made

date: 2024-06-27, updated: 2024-06-27, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/06/27/a-worthwhile-improvement-made/>

---

## Coolest Projects 2024: 7197 young tech creators showcase their projects online

date: 2024-06-27, from: Raspberry Pi (.org)

<p>Our Coolest Projects 2024 online showcase has come to a close, with 7197 young people from 43 countries sharing the incredible things they have made with code. A huge congratulations to everyone who took part! Coolest Projects is our annual global celebration of young digital creators and the cool things they make with technology. This&#8230;</p>
<p>The post <a href="https://www.raspberrypi.org/blog/coolest-projects-2024-young-tech-creators-showcase-their-projects-online/">Coolest Projects 2024: 7197 young tech creators showcase their projects online</a> appeared first on <a href="https://www.raspberrypi.org">Raspberry Pi Foundation</a>.</p>
 

<https://www.raspberrypi.org/blog/coolest-projects-2024-young-tech-creators-showcase-their-projects-online/>

---

## A Gentle Intro to TypeScript

date: 2024-06-27, updated: 2024-06-27, from: Deno blog

Quick, digestible bites of TypeScript goodness for Deno developers. 
In this first bite, we introduce TypeScript, how to add type annotations 
to your code and why you should.
 

<https://deno.com/blog/deno-bites-ts-intro>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-27, from: Miguel de Icaza Mastondon feed)

<p>“The night won’t end” - five month investigation into Israel’s killing of civilians in Gaza.</p><p>Now freshly demoted by YouTube.</p><p><a href="https://www.youtube.com/watch?v=ECFpW5zoFXA" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://www.</span><span class="ellipsis">youtube.com/watch?v=ECFpW5zoFX</span><span class="invisible">A</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112687993041528225>

---

## Colour Word Clock | The MagPi #143

date: 2024-06-27, from: Raspberry Pi News (.com)

<p>The Gurgle Apps siblings have created a kit that you can build yourself using Raspberry Pi Pico – the Colour Word Clock.</p>
<p>The post <a href="https://www.raspberrypi.com/news/colour-word-clock-the-magpi-143/">Colour Word Clock | The MagPi #143</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/colour-word-clock-the-magpi-143/>

---

## Felix Oliver Friedrich commented on issue #144 at Felix Oliver Friedrich / Oberon A2

date: 2024-06-27, updated: 2024-06-27, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:160" dir="auto">The observation is correct. However, return by reference is an inherently dangerous thing to do and soundness cannot be guaranteed. The following is an example:</p>
<div class="gl-relative markdown-code-block js-markdown-code">
<pre data-sourcepos="3:1-12:3" class="code highlight js-syntax-highlight language-plaintext" v-pre="true"><code><span id="LC1" class="line" lang="plaintext">PROCEDURE P(VAR i: INTEGER): VAR INTEGER;</span>
<span id="LC2" class="line" lang="plaintext">VAR j := -1;</span>
<span id="LC3" class="line" lang="plaintext">BEGIN</span>
<span id="LC4" class="line" lang="plaintext">j := -1;</span>
<span id="LC5" class="line" lang="plaintext">IF i&lt;0 THEN RETURN i</span>
<span id="LC6" class="line" lang="plaintext">ELSE RETURN P(j)</span>
<span id="LC7" class="line" lang="plaintext">END</span>
<span id="LC8" class="line" lang="plaintext">END P;</span></code></pre>
<copy-code></copy-code>
</div>
<p data-sourcepos="14:1-14:71" dir="auto">This returns the local variable but cannot be detected by the compiler.</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/144#note_192550>

---

## Felix Oliver Friedrich commented on issue #143 at Felix Oliver Friedrich / Oberon A2

date: 2024-06-27, updated: 2024-06-27, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:211" dir="auto">I don&#39;t see the problem. The assignment operator <code data-sourcepos="1:51-1:52">:=</code> is used within its own declaration. That yields an infinite recursion that should be avoided but not something that the compiler should syntactically reject.</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/143#note_192547>

---

## Sergey Durmanov opened issue #144: issue with returning a local variable by reference. at Felix Oliver Friedrich / Oberon A2

date: 2024-06-27, updated: 2024-06-27, from: Oberon A2 at CAS


<p dir="auto">There is no check that a local variable or parameter is being returned (for a variable parameter, returning by reference is acceptable)</p>
<div class="gl-relative markdown-code-block js-markdown-code">
<pre class="code highlight js-syntax-highlight language-plaintext" v-pre="true"><code><span id="LC1" class="line" lang="plaintext" xml:lang="plaintext">MODULE Test;</span>
<span id="LC2" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC3" class="line" lang="plaintext" xml:lang="plaintext">TYPE</span>
<span id="LC4" class="line" lang="plaintext" xml:lang="plaintext">	R = RECORD</span>
<span id="LC5" class="line" lang="plaintext" xml:lang="plaintext">		PROCEDURE P*(): VAR INTEGER;</span>
<span id="LC6" class="line" lang="plaintext" xml:lang="plaintext">		VAR i: INTEGER;</span>
<span id="LC7" class="line" lang="plaintext" xml:lang="plaintext">		BEGIN</span>
<span id="LC8" class="line" lang="plaintext" xml:lang="plaintext">			RETURN i;</span>
<span id="LC9" class="line" lang="plaintext" xml:lang="plaintext">		END P;</span>
<span id="LC10" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC11" class="line" lang="plaintext" xml:lang="plaintext">		PROCEDURE Q*(i: INTEGER): VAR INTEGER;</span>
<span id="LC12" class="line" lang="plaintext" xml:lang="plaintext">		BEGIN</span>
<span id="LC13" class="line" lang="plaintext" xml:lang="plaintext">			RETURN i;</span>
<span id="LC14" class="line" lang="plaintext" xml:lang="plaintext">		END Q;</span>
<span id="LC15" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC16" class="line" lang="plaintext" xml:lang="plaintext">		PROCEDURE X*(CONST i: INTEGER): VAR INTEGER;</span>
<span id="LC17" class="line" lang="plaintext" xml:lang="plaintext">		BEGIN</span>
<span id="LC18" class="line" lang="plaintext" xml:lang="plaintext">			RETURN i;</span>
<span id="LC19" class="line" lang="plaintext" xml:lang="plaintext">		END X;</span>
<span id="LC20" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC21" class="line" lang="plaintext" xml:lang="plaintext">		PROCEDURE Y*(VAR i: INTEGER): VAR INTEGER;</span>
<span id="LC22" class="line" lang="plaintext" xml:lang="plaintext">		BEGIN</span>
<span id="LC23" class="line" lang="plaintext" xml:lang="plaintext">			RETURN i; (* OK *)</span>
<span id="LC24" class="line" lang="plaintext" xml:lang="plaintext">		END Y;</span>
<span id="LC25" class="line" lang="plaintext" xml:lang="plaintext">	END;</span>
<span id="LC26" class="line" lang="plaintext" xml:lang="plaintext">END Test.</span></code></pre>
<copy-code></copy-code>
</div>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/144>

---

## Sergey Durmanov opened issue #143: problem when matching parameter types in the &quot;:=&quot; operator at Felix Oliver Friedrich / Oberon A2

date: 2024-06-27, updated: 2024-06-27, from: Oberon A2 at CAS


<p dir="auto">This code compiles although it contains a parameter type matching error:</p>
<div class="gl-relative markdown-code-block js-markdown-code">
<pre class="code highlight js-syntax-highlight language-plaintext" v-pre="true"><code><span id="LC1" class="line" lang="plaintext" xml:lang="plaintext">MODULE Test;</span>
<span id="LC2" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC3" class="line" lang="plaintext" xml:lang="plaintext">TYPE</span>
<span id="LC4" class="line" lang="plaintext" xml:lang="plaintext">	R = RECORD END;</span>
<span id="LC5" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC6" class="line" lang="plaintext" xml:lang="plaintext">	OPERATOR &#34;:=&#34;(VAR l: R; r: BOOLEAN);</span>
<span id="LC7" class="line" lang="plaintext" xml:lang="plaintext">	BEGIN</span>
<span id="LC8" class="line" lang="plaintext" xml:lang="plaintext">		l := r; (*!*)</span>
<span id="LC9" class="line" lang="plaintext" xml:lang="plaintext">	END &#34;:=&#34;;</span>
<span id="LC10" class="line" lang="plaintext" xml:lang="plaintext">	</span>
<span id="LC11" class="line" lang="plaintext" xml:lang="plaintext">	OPERATOR &#34;:=&#34;(VAR l: R; r: INTEGER);</span>
<span id="LC12" class="line" lang="plaintext" xml:lang="plaintext">	BEGIN</span>
<span id="LC13" class="line" lang="plaintext" xml:lang="plaintext">		l := r; (*!*)</span>
<span id="LC14" class="line" lang="plaintext" xml:lang="plaintext">	END &#34;:=&#34;;</span>
<span id="LC15" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC16" class="line" lang="plaintext" xml:lang="plaintext">END Test.</span></code></pre>
<copy-code></copy-code>
</div>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/143>

---

## Ads hypocrisy

date: 2024-06-27, from: Manu - I write blog


                <p>I was browsing the web—like I often do—and I stumbled on a message on a website that read:</p>
<blockquote>
<p>If you're reading this, you blocked our ad. That's cool, we block ads too. This site is free though, so maybe unblock the ad so we can keep paying for this website that you're on, thanks.</p>
</blockquote>
<p>This message rubbed me in the wrong way for a variety of reasons. First, the hypocrisy of its content is annoying: we do something to others but you should not do the same to us. Isn’t the whole <em>“Don't do unto others what you don't want done unto you.”</em> common wisdom at this point? Second, the <em>“This site is free though”</em> is a shitty attempt to justify having ads served by an AD network because that’s literally what every goddamn site out there does. Facebook is free. Should I allow the tracking because of it? And lastly, the <em>“so we can keep paying for this website”</em> is a desperate attempt to guilt trip me into disabling my adblocker. I know very well how much running a site like that costs. And I know for a fact the people behind that site all have daily jobs. And so they can easily afford to pay for this site exactly like countless others are paying for theirs.</p>
<p>The discourse around advertising on the web is messy. And the pervasiveness of ads doesn’t help. You can just see how advertising manages to find its way into almost everything. But if you’re a creator of any kind it’s important to recognise the hypocrisy in some of the arguments that are floating out there. The most glaring example is YouTube. People often argue that by watching YouTube with adblockers I’m stealing revenues from creators. Fair. The proposed solution is to pay for YouTube Premium. Again, fair. My question is: are creators going to upload YT Premium exclusive versions of the videos without their sponsors' ad reads baked in? The answer is no because that’s where the vast majority of the revenues come from for them. And that’s another example of the hypocrisy that’s powering this entire business model.</p>
<p>I don’t hate the general concept of an AD. I think sponsorships and partnerships can be a net benefit if done correctly, especially when done without tracking and profiling. If you run a site that’s focused on a niche, the profiling is implicit. For example, the people who visit minimalissimo.com probably have an interest in design and architecture otherwise they wouldn’t waste their time on that site. And so if I were to do some sort of partnership it would make sense to work with companies that make products within those niches. That’s how “good” advertising should work on the web. And that’s how it used to be before hyper-targeting was a thing. Mind you, it’s still an option and plenty of people do do it. It pays less than targeting advertising, for obvious reasons. But creators need to do their part if we hope to make progress on this front. Because the future can’t be targeted advertising everywhere at anytime.</p>
<p>I’m not going to disable my adblocker for you. I’m running two at the same time precisely because I don’t give a fuck about your stupid targeted ad. But if you give me an option to donate something to you directly I’m gonna do it. Because I believe contributing directly is the most sane way to keep this whole boat afloat.</p>                <hr>
                <p>Thank you for keeping RSS alive. You're awesome.</p>
                <p><a href="mailto:hello@manuelmoreale.com">Email me</a> ::
                <a href="https://manuelmoreale.com/guestbook">Sign my guestbook</a> :: 
                <a href="https://ko-fi.com/manuelmoreale">Support for 1$/month</a> :: 
                <a href="https://manuelmoreale.com/supporters">See my awesome supporters</a> :: 
                <a href="https://buttondown.email/peopleandblogs">Subscribe to People and Blogs</a></p>
             

<https://manuelmoreale.com/@/page/4DdokDfMsxRrNBWS>

---

## PostgreSQL 17 Beta 2 Released!

date: 2024-06-27, from: PostgreSQL News

<p>The PostgreSQL Global Development Group announces that the second beta release of
PostgreSQL 17 is now <a href="https://www.postgresql.org/download/">available for download</a>.
This release contains previews of all features that will be available when
PostgreSQL 17 is made generally available, though some details of the release
can change during the beta period.</p>
<p>You can find information about all of the PostgreSQL 17 features and changes in
the <a href="https://www.postgresql.org/docs/17/release-17.html">release notes</a>:</p>
<p><a href="https://www.postgresql.org/docs/17/release-17.html">https://www.postgresql.org/docs/17/release-17.html</a></p>
<p>In the spirit of the open source PostgreSQL community, we strongly encourage you
to test the new features of PostgreSQL 17 on your systems to help us eliminate
bugs or other issues that may exist. While we do not advise you to run
PostgreSQL 17 Beta 2 in production environments, we encourage you to find ways
to run your typical application workloads against this beta release.</p>
<p>Your testing and feedback will help the community ensure that the PostgreSQL 17
release upholds our standards of delivering a stable, reliable release of the
world's most advanced open source relational database. Please read more about
our <a href="https://www.postgresql.org/developer/beta/">beta testing process</a> and how
you can contribute:</p>
<p><a href="https://www.postgresql.org/developer/beta/">https://www.postgresql.org/developer/beta/</a></p>
<h2>Upgrading to PostgreSQL 17 Beta 2</h2>
<p>To upgrade to PostgreSQL 17 Beta 2 from an earlier version of PostgreSQL,
you will need to use a strategy similar to upgrading between major versions of
PostgreSQL (e.g. <code>pg_upgrade</code> or <code>pg_dump</code> / <code>pg_restore</code>). For more
information, please visit the documentation section on
<a href="https://www.postgresql.org/docs/17/static/upgrading.html">upgrading</a>.</p>
<h2>Changes Since Beta 1</h2>
<p>Fixes and changes in PostgreSQL 17 Beta 2 include:</p>
<ul>
<li>Correctly enforce the default behavior of the <code>ON EMPTY</code> clause when it's
not present in a SQL/JSON query.</li>
<li>Fixed issue with <code>pg_logical_slot_get_changes</code> related to resource ownership.</li>
<li>Several fixes around the new data structure for vacuum-related data.</li>
</ul>
<p>Please see the <a href="https://www.postgresql.org/docs/17/release-17.html">release notes</a>
for a complete list of new and changed features:</p>
<p><a href="https://www.postgresql.org/docs/17/release-17.html">https://www.postgresql.org/docs/17/release-17.html</a></p>
<h2>Testing for Bugs &amp; Compatibility</h2>
<p>The stability of each PostgreSQL release greatly depends on you, the community,
to test the upcoming version with your workloads and testing tools in order to
find bugs and regressions before the general availability of PostgreSQL 17. As
this is a Beta, minor changes to database behaviors, feature details, and APIs
are still possible. Your feedback and testing will help determine the final
tweaks on the new features, so please test in the near future. The quality of
user testing helps determine when we can make a final release.</p>
<p>A list of <a href="https://wiki.postgresql.org/wiki/PostgreSQL_17_Open_Items">open issues</a>
is publicly available in the PostgreSQL wiki.  You can
<a href="https://www.postgresql.org/account/submitbug/">report bugs</a> using this form on
the PostgreSQL website:</p>
<p><a href="https://www.postgresql.org/account/submitbug/">https://www.postgresql.org/account/submitbug/</a></p>
<h2>Beta Schedule</h2>
<p>This is the second beta release of version 17. The PostgreSQL Project will
release additional betas as required for testing, followed by one or more
release candidates, until the final release around September/October 2024. For further
information please see the <a href="https://www.postgresql.org/developer/beta/">Beta Testing</a>
page.</p>
<h2>Links</h2>
<ul>
<li><a href="https://www.postgresql.org/download/">Download</a></li>
<li><a href="https://www.postgresql.org/developer/beta/">Beta Testing Information</a></li>
<li><a href="https://www.postgresql.org/docs/17/release-17.html">PostgreSQL 17 Beta Release Notes</a></li>
<li><a href="https://wiki.postgresql.org/wiki/PostgreSQL_17_Open_Items">PostgreSQL 17 Open Issues</a></li>
<li><a href="https://www.postgresql.org/about/featurematrix/">Feature Matrix</a></li>
<li><a href="https://www.postgresql.org/account/submitbug/">Submit a Bug</a></li>
<li><a href="https://twitter.com/postgresql">Follow @postgresql on X/Twitter</a></li>
<li><a href="https://www.postgresql.org/about/donate/">Donate</a></li>
</ul> 

<https://www.postgresql.org/about/news/postgresql-17-beta-2-released-2885/>

---

## The anatomy of metadata matching

date: 2024-06-27, from: Crossref Blog

<p>In our <a href="https://www.crossref.org/blog/metadata-matching-101-what-is-it-and-why-do-we-need-it/">previous blog post</a> about metadata matching, we discussed what it is and why we need it (tl;dr: to discover more relationships within the scholarly record). Here, we will describe some basic matching-related terminology and the components of a matching process. We will also pose some typical product questions to consider when developing or integrating matching solutions.</p>
<h2 id="basic-terminology">Basic terminology</h2>
<p>Metadata matching is a high-level concept, with many different problems falling into this category. Indeed, no matter how much we like to focus on the similarities between different forms of matching, matching affiliation strings to ROR IDs or matching preprints to journal papers are still different in several important ways. At Crossref and ROR, we call these problems matching tasks.</p>
<p>Simply put, a <strong>matching task</strong> defines the kind or nature of the matching. Examples of matching tasks are bibliographic reference matching, affiliation matching, grant matching, or preprint matching.</p>
<p>Every matching task has an input, which is all the data that is needed to perform the matching. Input data can come in many shapes and forms, depending on the matching task. For example, all of the following could be inputs to a matching task:</p>
<pre tabindex="0"><code>Department of Molecular Medicine, Sapporo Medical University, Sapporo 060-8556, Japan
</code></pre><pre tabindex="0"><code>&lt;fr:program xmlns:fr=&#34;http://www.crossref.org/fundref.xsd&#34; name=&#34;fundref&#34;&gt;
&lt;fr:assertion name=&#34;fundgroup&#34;&gt;
&lt;fr:assertion name=&#34;funder_name&#34;&gt;
European Union&#39;s Horizon 2020 Research and Innovation Program through Marie Sklodowska Curie
&lt;fr:assertion name=&#34;funder_identifier&#34;&gt;http://dx.doi.org/10.13039/501100000780&lt;/fr:assertion&gt;
&lt;/fr:assertion&gt;
&lt;fr:assertion name=&#34;award_number&#34;&gt;721624&lt;/fr:assertion&gt;
&lt;/fr:assertion&gt;
&lt;/fr:program&gt;
</code></pre><pre tabindex="0"><code>Everitt, W. N., &amp; Kalf, H. (2007). The Bessel differential equation and the Hankel transform. Journal of Computational and Applied Mathematics, 208(1), 3–19.
</code></pre><pre tabindex="0"><code>{
&#34;title&#34;: &#34;Functional single-cell genomics of human cytomegalovirus infection&#34;,
&#34;issued&#34;: &#34;2021-10-25&#34;,
&#34;author&#34;: [
{&#34;given&#34;: &#34;Marco Y.&#34;, &#34;family&#34;: &#34;Hein&#34;},
{&#34;given&#34;: &#34;Jonathan S.&#34;, &#34;family&#34;: &#34;Weissman&#34;, &#34;ORCID&#34;: &#34;http://orcid.org/0000-0003-2445-670X&#34;}
]
}
</code></pre><p>Every matching task also has an <strong>output</strong>. For our purposes, this is almost exclusively zero or more matched identifiers. In the context of a specific matching task, output identifiers may be of a specific type (e.g. we might match to a ROR ID, and never to an ORCID ID). In some cases, there can be a certain target set as well (i.e. matching only to DataCite DOIs). The output identifiers can have different <a href="https://en.wikipedia.org/wiki/Cardinality" target="_blank">cardinality</a> depending on the task, meaning that the matching task might allow for zero, one, or more identifiers as a result of matching to a single input.</p>
<p>A <strong>matching strategy</strong> defines how the matching is done. Multiple strategies can exist for a specific matching task. Compound strategies can run other strategies and combine their outcomes into a single result.</p>
<p>In some cases, we may also want the matching strategy to output a confidence score for each matched identifier. A confidence score represents the degree of certainty or likelihood that the matched identifier is correct, typically expressed as a value between 0 and 1. This score may help with post-processing or further interpretation of the results.</p>
<p>To summarise, the anatomy of the matching task can be diagrammed as follows:</p>
<div style="text-align:center;margin:10px">
<figure class="img-responsive"><img src="https://www.crossref.org/images/blog/2024/matching-task-anatomy.png"
alt="The anatomy of the matching task" width="75%">
</figure>
</div>
<br />
<h2 id="how-to-specify-a-matching-task">How to specify a matching task</h2>
<p>Whenever we plan the development or integration of a matching solution, it is good to begin by answering a few basic questions:</p>
<ol>
<li>What problem do we plan to solve with our matching task? What would we call our matching task and how would we describe it?</li>
<li>What do we expect as the input for this matching task? Which input formats do we need to be able to accept? What information do we expect to find in this input?</li>
<li>What kind of identifiers should be output? Is there a target set of identifiers? Can our matching output zero/one/or multiple identifiers, and under what conditions might that occur?</li>
</ol>
<p>These sound fairly simple, but the answers to these questions can be remarkably complex. Once one tries to apply these concepts to real-world problems, they might encounter several non-obvious challenges.</p>
<p>For example, one common concern is at what level we should define each matching task. Consider the following problems:</p>
<ol>
<li>Matching bibliographic reference strings to DOIs. Example input:</li>
</ol>
<pre tabindex="0"><code>Everitt, W. N., &amp; Kalf, H. (2007). The Bessel differential equation and the Hankel transform. Journal of Computational and Applied Mathematics, 208(1), 3–19.
</code></pre><ol start="2">
<li>Matching structured bibliographic reference to DOIs. Example input:</li>
</ol>
<pre tabindex="0"><code>{
volume: &#34;208&#34;,
author: &#34;Everitt&#34;,
journal-title: &#34;J. Comput. Appl. Math.&#34;,
article-title: &#34;The Bessel differential equation and the Hankel transform&#34;,
first-page: &#34;3&#34;,
year: &#34;2007&#34;,
issue: &#34;1&#34;
}
</code></pre><p>Are those discrete matching tasks (<em>unstructured reference matching</em> vs. <em>structured reference matching</em>), or are they the same task (<em>reference matching</em>) that can accept different types of inputs (unstructured or structured)?</p>
<p>Similarly, let&rsquo;s compare the following tasks:</p>
<ol>
<li>Matching affiliation strings to ROR IDs. Example input:</li>
</ol>
<pre tabindex="0"><code>Department of Molecular Medicine, Sapporo Medical University, Sapporo 060-8556, Japan
</code></pre><ol start="2">
<li>Matching funder names to ROR IDs. Example input:</li>
</ol>
<pre tabindex="0"><code>Alexander von Humboldt Foundation
</code></pre><p>Are these different matching tasks (<em>affiliation matching</em> vs. <em>funder matching</em>), or the same task with different inputs (<em>organisation matching</em>)?</p>
<p>Defining the boundaries of a matching task can also be difficult. Consider, for example, the need to obtain ROR IDs for organisations mentioned in the acknowledgements section of a full-text academic paper. To begin, one may first extract the acknowledgement section from the full text, then run something like a named entity recognition (NER) tool to isolate the organisation names from the extracted text, and finally match these names to ROR IDs. Is this entire process matching, with the input being the full text of a paper? Or perhaps matching starts with the acknowledgement section as the input? Instead, is it only the last phase, where we try to match the extracted name to the ROR ID, that constitutes the matching task, with the extraction phases being completely separate processes?</p>
<p>There are also important questions related to the expected behaviour of a matching strategy. Consider, for example, developing an affiliation matching strategy where we define our input as &ldquo;an affiliation string&rdquo;. What should happen when the strategy gets something else on the input, for example, song lyrics? Perhaps the strategy should simply return no matches, or an error, or we could say that in such a situation the behaviour is undefined and it simply doesn&rsquo;t matter what is returned. But what should happen if in this input we have the lyrics of <a href="https://www.azlyrics.com/lyrics/roxymusic/streetlife.html" target="_blank">Street Life by Roxy Music</a>, a song that mentions the names of a few universities that happen to have ROR IDs?</p>
<p>It is likewise important to consider what should happen if different parts of the input match to different identifiers, like in the following example:</p>
<pre tabindex="0"><code>Department of Haematology, Eastern Health and Monash University, Box Hill, Australia
</code></pre><p>Here, &ldquo;Eastern Health&rdquo; matches to <a href="https://ror.org/00vyyx863" target="_blank">https://ror.org/00vyyx863</a> and &ldquo;Monash University&rdquo; to <a href="https://ror.org/02bfwt286" target="_blank">https://ror.org/02bfwt286</a>. Should the matching strategy return all the identifiers, one of them (if so, which one?), or nothing at all?</p>
<p>Similar questions arise when it is possible to match to multiple versions (or duplicates) in the target identifier set. This can happen, for example, in the context of bibliographic reference matching or preprint matching. Multiple matches may occur when there are different editions, reprints, or variations of the same publication in the target dataset, each with its own unique identifier.</p>
<p>If you are waiting for an answer to these questions, we unfortunately must disappoint you here. These can only be answered in the context of a specific problem, considering who the users are and what it is they need and expect.</p>
<p>Did you notice any other subtleties related to metadata matching and its concerns? Are there other non-obvious questions that should be considered when planning to develop or integrate metadata matching strategies? Let us know—we&rsquo;d love to hear from you!</p> 

<https://www.crossref.org/blog/the-anatomy-of-metadata-matching/>

---

## "No way to prevent this" say users of only language where this regularly happens

date: 2024-06-27, from: Ze Iaso's blog

 

<https://xeiaso.net/shitposts/no-way-to-prevent-this/CVE-2024-5535/>

---

## "No way to prevent this" say users of only language where this regularly happens

date: 2024-06-27, from: Ze Iaso's blog

 

<https://xeiaso.net/shitposts/no-way-to-prevent-this/CVE-2024-28820/>

---

**@Dave Winer's Scripting News** (date: 2024-06-26, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/26/feedlandSmall.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="http://scripting.com/2024/06/26/theFediverseIsDoomedUnlessSubscriptionGetsEasyFast.m4a">Podcast</a>: The Fediverse is doomed unless subscription gets easy, fast. Twitter kicked butt when it came out in 2006 and the butt it kicked was the <i>feed</i>iverse. Why? Because it was too damned hard and unnecessarily complicated to subscribe to a feed. In Twitter there was a button on each feed page that said Subscribe. Click the button and you're subscribed. That's it. May sound like a small matter, but it's not. Listen wherever you get your podcasts. I've been dying to say that. 12 minutes. 

<http://scripting.com/2024/06/26.html#a225814>

---

## The Marshall Star for June 26, 2024

date: 2024-06-26, from: NASA breaking news

Blasting into Summer: Thousands Enjoy NASA in the Park By Wayne Smith It was a super Saturday in the park to celebrate space and the Rocket City. NASA’s Marshall Space Flight Center joined Downtown Huntsville Inc. and other community partners to host NASA in the Park, a public outreach event that attracted thousands to Big [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/marshall/the-marshall-star-for-june-26-2024/>

---

##  The White Death 

date: 2024-06-26, updated: 2024-06-26, from: Jason Kottke blog

 

<https://kottke.org/24/06/the-white-death>

---

## NASA Selects International Space Station US Deorbit Vehicle

date: 2024-06-26, from: NASA breaking news

NASA is fostering continued scientific, educational, and technological developments in low Earth orbit to benefit humanity, while also supporting deep space exploration at the Moon and Mars. As the agency transitions to commercially owned space destinations closer to home, it is crucial to prepare for the safe and responsible deorbit of the International Space Station [&#8230;] 

<https://www.nasa.gov/news-release/nasa-selects-international-space-station-us-deorbit-vehicle/>

---

## EU Charges Microsoft for Bundling Teams and Office

date: 2024-06-26, from: Michael Tsai

Kelvin Chan (via Hacker News): The European Commission said Monday it informed Microsoft of its preliminary view that the U.S. tech giant has been &#8220;restricting competition&#8221; by bundling Teams with core office productivity applications such as Office 365 and Microsoft 365.The commission, the 27-nation bloc&#8217;s top antitrust enforcer, said it suspects Microsoft might have granted [&#8230;] 

<https://mjtsai.com/blog/2024/06/26/eu-charges-microsoft-for-bundling-teams-and-office/>

---

## Slack to Delete Old Messages in Free Accounts

date: 2024-06-26, from: Michael Tsai

Slack (Hacker News, Slashdot): Slack will no longer keep messages and files for the lifetime of your free workspace. Starting 26th August 2024, Customer Data &#x2013; such as messages and file history &#x2013; older than one year may be deleted on a rolling basis from workspaces on the free subscription[&#8230;] [&#8230;] If you choose to [&#8230;] 

<https://mjtsai.com/blog/2024/06/26/slack-to-delete-old-messages-in-free-accounts/>

---

## Apple News Publisher Sign-in Required

date: 2024-06-26, from: Michael Tsai

Apple sent me an e-mail this morning: It has been several months since you signed in to News Publisher. If you do not sign in within the next 30 days, your role will be changed. Your role will change from Administrator to Editor for the following Apple News channels: Michael Tsai - Blog Dave Verwer: [&#8230;] 

<https://mjtsai.com/blog/2024/06/26/apple-news-publisher-sign-in-required/>

---

## Half-Life’s Canceled Mac Port

date: 2024-06-26, from: Michael Tsai

Greg Gant: It was natural for the game to be ported to Mac OS and OS X, as other high-profile first-person shooters from the era, like the Doom series, Hexen series, Quake series, Dark Forces, Deus Ex, Duke Nukem, and Unreal series, were all ported to the Mac.[&#8230;]In April 1999, Logicware under Sierra Studios announced [&#8230;] 

<https://mjtsai.com/blog/2024/06/26/half-lifes-canceled-mac-port/>

---

## 40 Years Ago: STS-41D – First Space Shuttle Launch Pad Abort

date: 2024-06-26, from: NASA breaking news

In 1983, NASA received delivery of Discovery, the third space qualified vehicle in the agency’s space shuttle fleet. During the launch attempt for the STS-41D mission on June 26, 1984, Discovery’s onboard computers halted the countdown four seconds before liftoff, and after two of its main engines had already ignited. The six astronauts safely egressed [&#8230;] 

<https://www.nasa.gov/history/40-years-ago-sts-41d-first-space-shuttle-launch-pad-abort/>

---

##  Loved Caity Weaver&#8217;s Letter of Recommendation for the only reality show I&#8217;ve... 

date: 2024-06-26, updated: 2024-06-26, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044880-loved-caity-weavers-lette>

---

## Disabled Patron Asks Publishers: ‘Let us read, let us learn.’

date: 2024-06-26, from: Internet Archive Blog

Editorial note: The following message came into our patron services team this week. We are posting here in full with the patron&#8217;s permission as it explains the full scope of [&#8230;] 

<https://blog.archive.org/2024/06/26/disabled-patron-asks-publishers-let-us-read-let-us-learn/>

---

## Detective Work Enables Perseverance Team to Revive SHERLOC Instrument

date: 2024-06-26, from: NASA breaking news

After six months of effort, an instrument that helps the Mars rover look for potential signs of ancient microbial life has come back online. The SHERLOC (Scanning Habitable Environments with Raman &#38; Luminescence for Organics and Chemicals) instrument aboard NASA’s Perseverance Mars rover has analyzed a rock target with its spectrometer and camera for the [&#8230;] 

<https://www.nasa.gov/missions/mars-2020-perseverance/perseverance-rover/detective-work-enables-perseverance-team-to-revive-sherloc-instrument/>

---

## NOAA’s GOES-U Satellite Launches

date: 2024-06-26, from: NASA breaking news

A SpaceX Falcon Heavy rocket with the National Oceanic and Atmospheric Administration’s GOES-U (Geostationary Operational Environmental Satellite) satellite lifts off from NASA’s Kennedy Space Center in Florida on June 25, 2024. GOES-U is the fourth and final satellite in the current series of advanced weather satellites; it will provide continuous coverage of weather and hazardous environmental [&#8230;] 

<https://www.nasa.gov/image-article/noaas-goes-u-satellite-launches/>

---

##  llama.ttf is a font that includes an LLM and an inference engine... 

date: 2024-06-26, updated: 2024-06-26, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044879-llamattf-is-a-font-that>

---

## Editorial Note: On Medicine and the Body in Tech

date: 2024-06-26, from: Logic Magazine


                <p>Editorial Note from Editor Khadijah Abdurrahman for Logic(s) Issue 21</p>

             

<https://logicmag.io/policy/editorial-note-on-medicine-and-the-body-in-tech>

---

## NASA Advances Research to Grow Habitats in Space from Fungi

date: 2024-06-26, from: NASA breaking news

As NASA&#160;prepares for long-duration missions to the Moon and Mars for the benefit of all, a habitat-growing concept selected Wednesday by the agency could help “grow” homes using fungi for future explorers. A team of researchers at NASA Ames Research Center in California’s Silicon Valley will receive new funding under the NASA’s Innovative Advanced Concepts [&#8230;] 

<https://www.nasa.gov/news-release/nasa-advances-research-to-grow-habitats-in-space-from-fungi/>

---

##  Some Obvious Travel Advice 

date: 2024-06-26, updated: 2024-06-26, from: Jason Kottke blog

 

<https://kottke.org/24/06/some-obvious-travel-advice>

---

## Surprising Phosphate Finding in NASA’s OSIRIS-REx Asteroid Sample

date: 2024-06-26, from: NASA breaking news

Scientists have eagerly awaited the opportunity to dig into the 4.3-ounce (121.6-gram) pristine asteroid Bennu sample collected by NASA’s OSIRIS-REx (Origins, Spectral Interpretation, Resource Identification, and Security – Regolith Explorer) mission since it was delivered to Earth last fall. They hoped the material would hold secrets of the solar system’s past and the prebiotic chemistry [&#8230;] 

<https://www.nasa.gov/missions/osiris-rex/surprising-phosphate-finding-in-nasas-osiris-rex-asteroid-sample/>

---

##  Updated advice about lightning safety when you&#8217;re outdoors, including &#8220;hiding in a... 

date: 2024-06-26, updated: 2024-06-26, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044878-updated-advice-about-ligh>

---

## NASA’s Juno Gets a Close-Up Look at Lava Lakes on Jupiter’s Moon Io

date: 2024-06-26, from: NASA breaking news

Infrared imagery from the solar-powered spacecraft heats up the discussion on the inner workings of Jupiter’s hottest moon. New findings from NASA’s Juno probe provide a fuller picture of how widespread the lava lakes are on Jupiter’s moon Io and include first-time insights into the volcanic processes at work there. These results come courtesy of [&#8230;] 

<https://www.nasa.gov/missions/juno/nasas-juno-gets-a-close-up-look-at-lava-lakes-on-jupiters-moon-io/>

---

##  New Order&#8217;s Iconic Blue Monday Played on Vintage Casio Instruments 

date: 2024-06-26, updated: 2024-06-26, from: Jason Kottke blog

 

<https://kottke.org/24/06/new-orders-iconic-blue-monday-played-on-vintage-casio-instruments>

---

## Mycotecture off Planet: En route to the Moon and Mars

date: 2024-06-26, from: NASA breaking news

Lynn RothschildNASA Ames Research Center (ARC) A turtle carries its habitat. While reliable, it costs energy in transporting mass. NASA makes the same trade-off when it transports habitats and other structures off planet &#8220;on the back&#8221; of its missions. While this approach is reliable, to save upmass and increase mission flexibility, NASA must be more [&#8230;] 

<https://www.nasa.gov/directorates/stmd/niac/mycotecture-off-planet-en-route-to-the-moon-and-mars/>

---

## Hong Kong's Furi Labs shakes up smartphone scene with dash of Debian

date: 2024-06-26, updated: 2024-06-26, from: Liam Proven's articles at the Register

<h4><span class="label">DEVCONF.CZ</span> The FLX1 runs its own build of 'Trixie' but has an Android layer</h4>
      <p>Furi Labs' FLX1 is a Debian-based smartphone with decent specs at a competitive price.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/06/26/furi_phone_flx1_debian_smartphone/>

---

## Mozilla integrating AI chatbots into Firefox

date: 2024-06-26, from: OS News

Mozilla has announced it&#8217;s adding easy access to tool like ChatGPT, Gemini, and so to Firefox. Whether it’s a local or a cloud-based model, if you want to use AI, we think you should have the freedom to use (or not use) the tools that best suit your needs. With that in mind, this week, we will launch an opt-in experiment offering access to preferred AI services in Nightly for improved productivity as you browse. Instead of juggling between tabs or apps for assistance, those who have opted-in will have the option to access their preferred AI service from the Firefox sidebar to summarize information, simplify language, or test their knowledge, all without leaving their current web page.&#160; Our initial offering will include ChatGPT, Google Gemini, HuggingChat, and Le Chat Mistral, but we will continue adding AI services that meet our standards for quality and user experience. ↫ Ian Carmichael My biggest worry is not so much Mozilla adding these tools to Firefox &#8211; other browsers are doing it, and people clearly want to use them, so it makes sense for Firefox, too, to integrate them into the browser. No, my biggest worry is that this is just the first step on the way to the next major revenue agreement &#8211; just as Google is paying Mozilla to be the default search engine in Firefox, what if OpenAI starts paying to be the default AI tool in Firefox? Once that happens, I&#8217;m afraid a lot of the verbiage around choice and the ability to easily disable it all is going to change. I&#8217;m still incredibly annoyed by the fact I have to dive into about:config just to properly remove Pocket, a service I do not use, do not want, and annoys me by taking up space in my UI. I&#8217;m afraid that one or two years from now, AI integration will be just another complex set of strings I need to look for in about:config to truly disable it all. It definitely feels like Firefox is only going to get worse from here on out, not better, and this AI stuff seems more like an invitation for a revenue agreement than something well thought-out and useful. We&#8217;ll see where things go from here, but my worries about Firefox&#8217; future are only growing stronger with Mozilla&#8217;s latest moves. As a Linux user, this makes me worried. 

<https://www.osnews.com/story/140074/mozilla-integrating-ai-chatbots-into-firefox/>

---

## Human Insight + LLM Grunt Work = Creative Publishing Solution

date: 2024-06-26, from: John Udell blog

Here&#8217;s the latest installment in the series on working with LLMS: https://thenewstack.io/human-insight-llm-grunt-work-creative-publishing-solution/ Although streamlined publishing of screenshots is nice, the biggest win comes from reviewing and revising in Google Docs; which, for better and worse, has become the defacto collaboration standard for many of us. I am ridiculously pleased with this solution. The rest of &#8230; <a href="https://blog.jonudell.net/2024/06/26/human-insight-llm-grunt-work-creative-publishing-solution/" class="more-link">Continue reading <span class="screen-reader-text">Human Insight + LLM Grunt Work = Creative Publishing Solution</span></a> 

<https://blog.jonudell.net/2024/06/26/human-insight-llm-grunt-work-creative-publishing-solution/>

---

##  Pros And Cons Of Displaying The 10 Commandments In Every Classroom. &#8220;PRO:... 

date: 2024-06-26, updated: 2024-06-26, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044876-pros-and-cons-of-displayi>

---

## Wordle Kitty prevails!

date: 2024-06-26, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/26/wordleGrid.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Wordle Kitty hunkers down in an epic battle with Wordle Monkey on stage at Carnegie Hall in NYC for the honor of kittens everywhere. She ultimately prevails, but not without a brush with disaster! The NY Times judges her performance as merely “great!”</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/06/26/kittenAbides.png"></center>The Kitten Abides!</div></p>
 

<http://scripting.com/2024/06/26/144307.html?title=wordleKittyPrevails>

---

##  Former Tennessee Abortion Clinic Workers & Volunteers Speak Out Against the State&#8217;s Abortion Ban 

date: 2024-06-26, updated: 2024-06-26, from: Jason Kottke blog

 

<https://kottke.org/24/06/former-tennessee-abortion-clinic-workers-volunteers-speak-out-against-the-states-abortion-ban>

---

## How AI Revolutionized Protein Science, but Didn’t End It

date: 2024-06-26, from: Quanta Magazine

Three years ago, Google’s AlphaFold pulled off the biggest artificial intelligence breakthrough in science to date, accelerating molecular research and kindling deep questions about why we do science.            <p>The post <a href="https://www.quantamagazine.org/how-ai-revolutionized-protein-science-but-didnt-end-it-20240626/" target="_blank">How AI Revolutionized Protein Science, but Didn’t End It</a> first appeared on <a href="https://api.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<https://www.quantamagazine.org/how-ai-revolutionized-protein-science-but-didnt-end-it-20240626/>

---

## Pillars of Creation Star in New Visualization from NASA’s Hubble and Webb Telescopes

date: 2024-06-26, from: NASA breaking news

Made famous in 1995 by NASA’s Hubble Space Telescope, the Pillars of Creation in the heart of the Eagle Nebula have captured imaginations worldwide with their arresting, ethereal beauty. Now, NASA has released a new 3D visualization of these towering celestial structures using data from NASA’s Hubble and James Webb space telescopes. This is the […] 

<https://science.nasa.gov/missions/hubble/new-hubble-webb-pillars-of-creation-visualization/>

---

## The 1998 Florida Firestorm and NASA’s Kennedy Space Center

date: 2024-06-26, from: NASA breaking news

Lightning Crashes East central Florida’s natural environment and climate have shaped, and delayed, Kennedy Space Center launch operations since the 1960s. Torrential pop-up thunderstorms, Atlantic hurricanes, roasting heat, and other climatic phenomena, including lightning and fire, repeatedly hampered mission timelines and created dangerous conditions for astronauts and workers. Kennedy Space Center personnel understood the dangers [&#8230;] 

<https://www.nasa.gov/history/the-1998-florida-firestorm-and-nasas-kennedy-space-center/>

---

##  Unhoused participants in the Denver Basic Income Project used their $1000/mo to... 

date: 2024-06-26, updated: 2024-06-26, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044873-unhoused-participants-in->

---

**@Dave Winer's Scripting News** (date: 2024-06-26, from: Dave Winer's Scripting News)

Summary of yesterday's news: You should now be able to subscribe to my podcasts. Use the search function in your favorite podcast client and look for <i>Scripting News.</i> This is what it <a href="https://imgs.scripting.com/2024/06/26/applePodcastClientForScriptingNews.png">looks like</a> in Apple Podcasts, for example. 

<http://scripting.com/2024/06/26.html#a130215>

---

## Smart bee hotel features 11 Raspberry Pis

date: 2024-06-26, from: Raspberry Pi News (.com)

<p>Ten Raspberry Pis work with individual live-streaming cameras, and an eleventh powers six weather stations around this smart bee hotel.</p>
<p>The post <a href="https://www.raspberrypi.com/news/smart-bee-hotel-features-11-raspberry-pis/">Smart bee hotel features 11 Raspberry Pis</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/smart-bee-hotel-features-11-raspberry-pis/>

---

## Diner in Florida Sneezes His Guts Out

date: 2024-06-26, updated: 2024-06-26, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/06/26/diner-in-florida-sneezes-his-guts-out/>

---

## money is magic

date: 2024-06-26, from: Ayjay blog

Spoilers ahead, but come on, you know how books like this end. Trollope’s Doctor Thorne is the classic story about the poor orphan girl who turns out to be a princess, but with a twist: Trollope asks how a poor orphan girl can become a princess, and his answer is: With money. Mary Thorne doesn’t [&#8230;] 

<https://blog.ayjay.org/money-is-magic/>

---

## SUSE Linux Enterprise 15 to receive support right up to end of Unix epoch

date: 2024-06-26, updated: 2024-06-26, from: Liam Proven's articles at the Register

<h4>And there's a special offer on the CentOS-compatible Liberty Linux</h4>
      <p>As SUSE ascends its self-imposed ALP, this version may be the last of the fixed release cycle for openSUSE Leap.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/06/26/sle_opensuse_15_6/>

---

## 2024-06-22 Lieu for niche search

date: 2024-06-26, from: Alex Schroeder's Blog

<h1 id="2024-06-22-lieu-for-niche-search">2024-06-22 Lieu for niche search</h1>

<p>“Let me google it for you” was a bad reply back in the days; these days telling somebody “to google something” is insulting because we all know how aggravating it is to spend time and energy against privacy invasions and sifting through the AI slop and the grifters. Life is short and there’s no time for this.</p>

<p>I try to err on the side of caution and always add links to stuff if I can. I’m preparing for the total breakdown of search as we know it.</p>

<p>Some days Internet search feels like we’re at the capitalist optimum where everything is as painful as possible but not prohibitive. Can’t live without it (to find those link farms, advice sites, public archives) but also can’t find the private websites and blogs.</p>

<p>Is it true that Reddit managed to replace all the blogs or is it true that we just can’t find them any more.
The real problem is the loss of trust all around.</p>

<p><a class="account" href="https://merveilles.town/@vesto" title="@vesto@merveilles.town">@vesto</a> reminded me that there was a solution in &ldquo;the realm of curating human-scale websites&rdquo;: <a href="https://lieu.cblgh.org/">Lieu</a>.</p>

<p>And indeed, it looks like a great starting place!</p>

<p>I&rsquo;m thinking that perhaps I can somehow use blog planets as sources for topic-specific search engines.
I could use the blogs on <a href="https://planet.emacslife.com/">Planet Emacslife</a> to build an Emacs search engine and the blogs of <a href="https://campaignwiki.org/rpg/">RPG Planet</a> to build an RPG search engine.</p>

<p>It seems quite doable!</p>

<p>The ethics remain complicated, of course. Would I want search engine developers to scrape my site? Usually I just notice them when their bots misbehave so I&rsquo;m pretty averse to the entire situation. The search engine makers also being ad sellers and ads being a poison for our society doesn&rsquo;t help. The search engine makers being AI fans and AI energy and water requirements being cited as the reasons to keep fossil power plants running and to build nuclear power plants doesn&rsquo;t help. AI also resulting in me having to read texts that other people didn&rsquo;t bother to write adds injury to insult.</p>

<p>In any case… perhaps there is a way to have ethical search and not drown in the AI slob: Hand curated websites (taken from the planets), no ads, no income (and therefore necessarily small in scope).</p>

<p>I started experimenting. Using <code>webringSelector = &quot;#sidebar li a:nth-child(2) [href]&quot;</code> in the <code>lieu.toml</code> file seemes to get the links of RPG blogs, for example.</p>

<p>One thing I find disturbing is that lieu uses Colly to scrape the web and <a href="https://github.com/gocolly/colly/issues/614">Colly ignores robots.txt by default</a>. I managed to lock the crawler out of my site in less than a second. Yikes!</p>

<p>And the sad part is that if I add <code>c.IgnoreRobotsTxt = false</code> to the code, it seems to have no effect. Does anybody know more about how to control this?</p>

<p><a class="tag" href="/search/?q=%23Search">#Search</a></p>

<p>The following branches are probably temporary:</p>

<p><a href="https://github.com/kensanata/lieu/tree/unix-domain-socket">unix-domain-socket</a>:
This can be used by systemd to start the server connected to a Unix
domain socket. Using a server like nginx or Apache as a front-end
allows them to communicate with the server via the Unix domain socket.
In that case, no port is required.</p>

<p><a href="https://github.com/kensanata/lieu/tree/robots-txt">robots-txt</a>:
This is where I try to enable <code>robots.txt</code> handling again – but I&rsquo;m failing at it.</p>

<p>Then again, perhaps the ethics of it all make it untenable for me – is this really something I need? If it isn’t, perhaps I’d be better off doing something else.</p>

<p><strong>2024-06-26</strong>. Perhaps it&rsquo;d be easier to search feeds. People already publish feeds. The feeds already contain the content they are willing to share. The feed is already limited to web pages and doesn&rsquo;t include web applications.</p> 

<https://alexschroeder.ch/view/2024-06-22-lieu>

---

## What share of lithium-ion batteries are recycled?

date: 2024-06-26, from: Hannah Richie at Substack

We don't know, is the honest answer. But the 5% figure seems to be a myth. 

<https://www.sustainabilitybynumbers.com/p/battery-recycling-myth>

---

## A very local storm

date: 2024-06-26, from: Doc Searls (at Harvard), New Old Blog

It was a derecho, or something like one. The gust front you see in the third image here looks a lot like the storm front in the image above (via Weatherbug, storm tracker view). I&#8217;d experienced one twelve years ago, in Arlington, Mass. It felt like a two minute hurricane, and when it was over, [&#8230;] 

<https://doc.searls.com/2024/06/25/a-very-local-storm/>

---

## NASA, SpaceX Launch NOAA’s Latest Weather Satellite

date: 2024-06-26, from: NASA breaking news

NASA successfully launched the fourth and final satellite in a series of advanced weather satellites for NOAA (National Oceanic and Atmospheric Administration) at 5:26 p.m. EDT Tuesday. The GOES-U (Geostationary Operational Environmental Satellite) will benefit the nation by providing continuous coverage of weather and hazardous environmental conditions across much of the Western Hemisphere. The satellite [&#8230;] 

<https://www.nasa.gov/news-release/nasa-spacex-launch-noaas-latest-weather-satellite/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-26, from: Miguel de Icaza Mastondon feed)

<p>This is why we can’t have nice things<br /><a href="https://fedi.simonwillison.net/@simon/112679629018556753" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">fedi.simonwillison.net/@simon/</span><span class="invisible">112679629018556753</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112680425382508559>

---

## John Sullivan opened issue #142: SVN History? at Felix Oliver Friedrich / Oberon A2

date: 2024-06-26, updated: 2024-06-26, from: Oberon A2 at CAS


<p dir="auto">Hi, I was curious about browsing some of the pre-2000s sources for A2, particularly to see the history of the X11 interface <a href="https://gitlab.inf.ethz.ch/felixf/oberon/-/blob/main/source/Unix.X11.Mod#L11">https://gitlab.inf.ethz.ch/felixf/oberon/-/blob/main/source/Unix.X11.Mod#L11</a></p>
<p dir="auto">I tried using <code>git-svn</code> to pull the history from the ETH hosted SVN server, but it doesn&#39;t appear to work unfortunately. I could try again or take some pointers, but I don&#39;t want to blindly mash against what&#39;s meant to be an archive. Maybe the SVN repo could be dumped to an object storage service as a permanent download? In general I think it would be illustrative to have a more complete history of the source code, but I understand if that&#39;s not a priority of the faculty. Thanks!</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/142>

---

## We’re Fighting for Library Rights in Court This Friday – Join Us!

date: 2024-06-26, from: Internet Archive Blog

Friday is our day in court. After four long years of legal action, we will be in New York for the appellate oral argument in Hachette v. Internet Archive, the [&#8230;] 

<https://blog.archive.org/2024/06/26/were-fighting-for-library-rights-in-court-this-friday-join-us/>

---

## How Emotional is Trump?

date: 2024-06-26, updated: 2024-06-26, from: Tom Kellog blog

Join us as we analyze the emotional ebb and flow of Trump's social media posts 

<http://timkellogg.me/blog/2024/06/26/politics-analysis>

---

## Emopoint: Extract and measure emotion from text

date: 2024-06-26, updated: 2024-06-26, from: Tom Kellog blog

<p>Can AI understand emotion? They must, ChatGPT responds to me in the appropriate tone of voice. So they 
certainly encode emotion. In this blog we’ll dive deep into
how LLMs understand emotion, as well as how to take advantage of that.</p> 

<http://timkellogg.me/blog/2024/06/26/emotions>

---

## Introducing Bluesky Starter Packs

date: 2024-06-26, from: Bluesky web news

Create a starter pack today — personalized invites that bring friends directly into your slice of Bluesky. 

<https://bsky.social/about/blog/06-26-2024-starter-packs>

---

##  Flying With My Dad 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kottke blog

 

<https://kottke.org/24/06/flying-with-my-dad-1>

---

## Of Psion and Symbian

date: 2024-06-25, from: OS News

As cool as the organizer was, it was extremely limited in pretty much every way. Psion had got many things right in the first go, as reviewers were quick to admit, and that made iterating on the design somewhat easy. The Organiser II CM released in 1986 was built on the Hitachi HD6303X (Motorola 6803) clocked at 920kHz with 8K RAM and 32K ROM. The screen was a much improved dot matrix LCD with two lines of sixteen characters. This version also shipped with a little piezo beeper built in, and an expansion slot on the top. The expansion slot could allow for a wired power adapter, a serial cable, a bar code reader, a telephone dialer, and even a USB port. Given the reputation of the first model for ruggedness and the coverage of the same quality in the second model, this particular model sold quite well to companies who needed handheld computers for inventory and other purposes. The Organizer II XP launched the same year, and this model had 32K RAM and a backlit screen while otherwise being the same machine. Given that both of these models had significantly more RAM than their predecessor, the programming capabilities were greatly enhanced with a new language, OPL, which was similar to BASIC. ↫ Bradford Morgan White The Psion Organiser II is the very root of all mobile computing today. This may seem like hyperbole &#8211; but trust me, it really is. I have an Organiser II LZ64 with a 32k datapak (memory card), and while it may look like a calculator, this little machine from 1986 already contains the very skeleton of the graphical user interface Palm would eventually popularise, and the iPhone and Android would take to extraordinary heights. Turn on an Organiser II, and you&#8217;re greeted by a home screen with a grid of applications (no icons, though, of course &#8211; just labels) with a selector you moved around with the cursor keys. Hit the EXE key, and the application would load up, ready to be used; hit the home button (the ON key if my memory serves) and it would take you back to the home screen. This basic paradigm, of a grid of applications as a home screen you always return to, survives to this day, and is used by billions of people on their Android and iOS devices, both smartphones and tablets. People with little to no knowledge of the history of mobile computing &#8211; or people spreading corporate propaganda &#8211; often seem to act as if the release of the iPhone was the big bang of mobile computing, and that it materialised out of thin air because Steve Jobs alone willed it into existence. The reality is, though, that there is a direct line from the early Psion devices, through to Palm OS, the iPhone, and later Android. There were various dead end branches along the way, too, like the Newton, like Symbian, like the original Windows PocketPC, and so on &#8211; but that direct line from early Psion to that fancy Pixel 8 Pro or whatever you have today is solidly visible to anyone without an agenda. I love my Organiser II. It&#8217;s approaching 40 years old now, and it still works without a single hitch. There&#8217;s barely a scratch on it, the display is bright, the pixels are clear, the characteristic sliding cover feels as solid today as it did when it rolled off the factory line. This is where mobile computing began. 

<https://www.osnews.com/story/140070/of-psion-and-symbian/>

---

## I_WANT_A_BROKEN_PS (exploration of Linux 'ps') (2004)

date: 2024-06-25, from: Tilde.news

<p><a href="https://tilde.news/s/geo2rq/i_want_broken_ps_exploration_linux_ps_2004">Comments</a></p> 

<https://aplawrence.com/Blog/B1011.html>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-25, from: Miguel de Icaza Mastondon feed)

<p>But I did appreciate that even the tiniest restaurant had a DJ and great music.</p> 

<https://mastodon.social/@Migueldeicaza/112679444154780122>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-25, from: Miguel de Icaza Mastondon feed)

<p>I have wanted to party in Ibiza for about 23 years.</p><p>Last year I finally went, but it was a family vacation, and Laura got Covid.   So I did not set foot in a single club.</p><p>Will try again in 22 years.</p> 

<https://mastodon.social/@Migueldeicaza/112679440782355648>

---

##  End Legal Slavery in the United States (i.e. forced prison labor). &#8220;It&#8217;s... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044872-end-legal-slavery-in-the>

---

## How Capitalism Becomes Feudalism (Severance and Technofuedalism)

date: 2024-06-25, from: Literate Machine

Video Version &#124; Podcast Version Unlike most of my videos, I’m going to try not to spoil too much of the first season of Severance, because I want you to watch it, and I want you not to have to watch it to enjoy this video. This will spoil a number of particulars about the<p><a href="https://literatemachine.com/2024/06/25/how-capitalism-becomes-feudalism-severance-and-technofuedalism/" class="more-link themebutton">Read More</a></p> 

<https://literatemachine.com/2024/06/25/how-capitalism-becomes-feudalism-severance-and-technofuedalism/>

---

## llama.ttf

date: 2024-06-25, from: Michael Tsai

S&#248;ren Fuglede J&#248;rgensen (via Hacker News): llama.ttf is a font file which is also a large language model and an inference engine for that model.[&#8230;]The font shaping engine HarfBuzz, used in applications such as Firefox and Chrome, comes with a Wasm shaper allowing arbitrary code to be used to &#8220;shape&#8221; text.In particular, this &#8220;arbitrary&#8221; code [&#8230;] 

<https://mjtsai.com/blog/2024/06/25/llama-ttf/>

---

## visionOS Throttles CPU Based on Microphones

date: 2024-06-25, from: Michael Tsai

Shiny Quagsire (via Hacker News): visionOS 2 (or RealityKit) seems to have gotten way more aggressive about power throttling (or my battery/cable are having issues idk), so ALVR seems to throttle to 45Hz at much lower PPDs despite being totally fine thermally. lolll I found the answer, I was getting fucked by the userexperienced. Apparently [&#8230;] 

<https://mjtsai.com/blog/2024/06/25/visionos-throttles-cpu-based-on-microphones/>

---

## Lightroom Classic 13.3 and 13.4

date: 2024-06-25, from: Michael Tsai

Agen Schmitz: Adobe has released Lightroom Classic 13.3, enabling you to erase unwanted objects and imperfections in your photos using the Generative Remove tool (powered by Adobe Firefly generative AI). This requires a new catalog database format. I&#8217;m seeing some weird behavior in that I can run it for days with it seemingly not doing [&#8230;] 

<https://mjtsai.com/blog/2024/06/25/lightroom-classic-13-3-and-13-4/>

---

## MarsEdit 5.2.1

date: 2024-06-25, from: Michael Tsai

MarsEdit 5.2: The &#8220;Search&#8221; field in the main window now features a filter selection to toggle between searching everything or searching just the current selection. Inline &#8220;Find&#8221; support is now available in the rendered versions of posts in the Preview Window or Main Window. These are great. The ability to duplicate posts may serve as [&#8230;] 

<https://mjtsai.com/blog/2024/06/25/marsedit-5-2-1/>

---

##  We Can and Should Address Racial Disparities. &#8220;Most of the programs that... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044869-we-can-and-should-address>

---

## NASA Selects Participating Scientists to Join ESA’s Hera Mission

date: 2024-06-25, from: NASA breaking news

NASA has selected 12 participating scientists to join ESA’s (European Space Agency) Hera mission, which is scheduled to launch in October 2024. Hera will study the binary asteroid system Didymos, including the moonlet Dimorphos, which was impacted by NASA’s DART (Double Asteroid Redirection Test) spacecraft on Sept. 26, 2022. The objectives of DART and Hera […] 

<https://science.nasa.gov/science-research/planetary-science/nasa-selects-participating-scientists-to-join-esas-hera-mission/>

---

## Sol 4225: Sliding Down Horsetail Falls

date: 2024-06-25, from: NASA breaking news

Earth planning date: Monday, June 24, 2024 This will be an important week for chemistry on our latest drill sample “Mammoth Lakes 2.”  Curiosity’s primary goal today was a preconditioning of the SAM instrument in preparation for its chemical analysis. Due to the large amounts of power required by SAM, today’s science block was limited […] 

<https://science.nasa.gov/blogs/sol-4225-sliding-down-horsetail-falls/>

---

##  Riding With the Street Demon 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kottke blog

 

<https://kottke.org/24/06/riding-with-the-street-demon>

---

## Open Call to New York-based Artists to Create Collaborative NASA Mural

date: 2024-06-25, from: NASA breaking news

NASA and the Hudson Square Business Improvement District are launching an open call to New York-based artists and artist teams to design and install a large-scale, space-themed neighborhood mural. The NASA x Hudson Square partnership was developed to inspire the surrounding Manhattan Hudson Square community by showcasing NASA’s work and missions. Artists are encouraged to [&#8230;] 

<https://www.nasa.gov/general/open-call-to-new-york-based-artists-to-create-collaborative-nasa-mural/>

---

## Unity in Orbit: Astronauts Soar with Pride Aboard Station

date: 2024-06-25, from: NASA breaking news

A powerful symbol of pride waved high above Earth aboard the International Space Station in December 2021, reflecting NASA&#8217;s commitment to a collaborative and inclusive environment in human spaceflight. The Pride flag was unveiled by NASA astronauts to celebrate our identities and unite in our commitment to equality and acceptance for all individuals.&#160; At NASA&#8217;s [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/johnson/unity-in-orbit-astronauts-soar-with-pride-aboard-station/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-25, from: Miguel de Icaza Mastondon feed)

<p>I am much more likely to buy directly from you if you have Apple Pay checkout.</p><p>Otherwise, I just instinctively put it off or check Amazon.</p><p>I suspect many more folks are on that boat (or might have a preference for Google’s version)</p><p>Reminded of that by a toot by <span class="h-card" translate="no"><a href="https://infosec.exchange/@vcsjones" class="u-url mention">@<span>vcsjones</span></a></span></p> 

<https://mastodon.social/@Migueldeicaza/112678722791962014>

---

##  AC Lamberty writes about how his tastes (and experience of masculinity) changed... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044871-ac-lamberty-writes-about->

---

## Six Adapters for Crewed Artemis Flights Tested, Built at NASA Marshall

date: 2024-06-25, from: NASA breaking news

As a child learning about basic engineering, you probably tried and failed to join a square-shaped toy with a circular-shaped toy: you needed a third shape to act as an adapter and connect them both together. On a much larger scale, integration of NASA’s powerful SLS (Space Launch System) rocket and the Orion spacecraft for [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/marshall/six-adapters-for-crewed-artemis-flights-tested-built-at-nasa-marshall/>

---

## 1988 Interview Between Scott McNealy of Sun Microsystems and MicroTimes

date: 2024-06-25, from: Computer ads from the Past

Scott McNealy talks about Sun Microsystems, RISC, UNIX, and NeXT 

<https://computeradsfromthepast.substack.com/p/1988-interview-between-scott-mcnealy>

---

##  Super Mario Bros, the Typewriter Edition 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kottke blog

 

<https://kottke.org/24/06/super-mario-bros-the-typewriter-edition>

---

## Remote shell to a Raspberry Pi at 39,000 ft

date: 2024-06-25, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Remote shell to a Raspberry Pi at 39,000 ft</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>For a few weeks I've been beta testing remote shell, the latest addition to Raspberry Pi Connect. Just a couple hours ago I was on a flight home from the new Micro Center in Charlotte.</p>

<p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/remote-shell-laptop-airplane.jpeg" alt="Pi Connect Remote Shell in airplane on laptop"></p>

<p>One huge problem with VNC or remote desktop is how flaky it is if you have limited bandwidth or an unstable connection, like on an airplane.</p>

<p>It takes forever to start a screen sharing session, and the airplane's flaky WiFi usually causes the session to lock up, meaning you can't do much at all.</p>

<p>Remote <em>terminal</em> access, just relaying text commands, is the best solution for that problem. And sure, I have a VPN I could use with SSH to get to my Pi, but <a href="https://www.raspberrypi.com/news/raspberry-pi-connect-remote-shell-access-and-support-for-older-devices/">Raspberry Pi Connect just added support for remote shell access</a>.</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-06-25T12:24:51-05:00" title="Tuesday, June 25, 2024 - 12:24" class="datetime">June 25, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/remote-shell-raspberry-pi-39000-ft>

---

##  The record industry is suing a pair of AI music-making companies over... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044868-the-record-industry-is-su>

---

**@Dave Winer's Scripting News** (date: 2024-06-25, from: Dave Winer's Scripting News)

The page on <a href="https://feedland.com/?feedurl=http%3A%2F%2Fscripting.com%2Fpodcast.xml">feedland.com</a> and <a href="https://feedland.org/?feedurl=http%3A%2F%2Fscripting.com%2Fpodcast.xml">feedland.org</a>. 

<http://scripting.com/2024/06/25.html#a160522>

---

## NASA Infrared Detector Technical Interchange

date: 2024-06-25, from: NASA breaking news

When/Where August 27-28, 2024NASA Jet Propulsion Laboratory in Pasadena, CA Who may attend? Invited participants from the NASA Centers, NASA HQ, and the broader community of IR technology developers and stakeholders. All participants must be U.S. Persons – the meeting will be held at the CUI level and presentations may contain ITAR material. Registration will [&#8230;] 

<https://www.nasa.gov/general/nasa-infrared-detector-technical-interchange-meeting-august-27-28-2024/>

---

**@Dave Winer's Scripting News** (date: 2024-06-25, from: Dave Winer's Scripting News)

The <a href="https://podcasts.apple.com/us/podcast/scripting-news/id1753971770">Apple Podcasts</a> page for the podcast feed. 

<http://scripting.com/2024/06/25.html#a160418>

---

## Jake Cupani: Increasing Visibility in Data Science

date: 2024-06-25, from: NASA breaking news

Jake Cupani, a data science specialist, focuses on the intersection between data visualization and user experience — UX — design. Name: Jake CupaniTitle: Financial analytics support specialistOrganization: Financial Analytics and Systems Office, Office of the Chief Financial Officer (Code 156) What do you do and what is most interesting about your role here at Goddard? [&#8230;] 

<https://www.nasa.gov/people-of-nasa/goddard-people/jake-cupani-increasing-visibility-in-data-science/>

---

**@Dave Winer's Scripting News** (date: 2024-06-25, from: Dave Winer's Scripting News)

And the <a href="https://this.how/scriptingNewsPodcast/">FAQ</a> for the feed, linked to in the feed. 

<http://scripting.com/2024/06/25.html#a154605>

---

## Looking ahead to 30 years of FreeDOS

date: 2024-06-25, from: OS News

In a few days, 29 June, FreeDOS will turn 30. This happens to make it one of the oldest, continuously active open source projects in the world, originally created because Jim Hall had heard Microsoft was going to kill DOS when the upcoming Windows 95 was going to be released. After seeing the excitement around Linux, he decided it an open source DOS would be a valuable time investment. I still used DOS, and I didn’t want to stop using DOS. And I looked at what Linux had achieved: people from all over the world shared source code with each other to make this full operating system that worked just like Unix. And I thought “If they can do that with Linux, surely we can do the same thing with DOS.” I asked around on a discussion board (called Usenet) if anyone had made an “open source” DOS, and people said “No, but that’s a good idea .. and you should do it.” So that’s why I announced on June 29, 1994, that I was starting a new project to make an open source version of DOS that would work just like regular DOS. ↫ Jim Hall For an open source implementation of what was a dead end and now is a dead operating system, FreeDOS has been remarkably successful. Not only are there countless people using FreeDOS on retro hardware, it&#8217;s also a popular operating system for DOS gaming and running old DOS applications in virtual machines. On top of that, many motherboard makers and OEMs use FreeDOS to load firmware update tools, and some of them even offered FreeDOS as the preinstalled operating system when buying new hardware. With the ever-increasing popularity of retrocomputing and gaming, FreeDOS clearly has a bright future ahead of itself. 

<https://www.osnews.com/story/140067/looking-ahead-to-30-years-of-freedos/>

---

**@Dave Winer's Scripting News** (date: 2024-06-25, from: Dave Winer's Scripting News)

Here's the new Scripting News <a href="http://scripting.com/podcast.xml">podcast-only feed</a>. 

<http://scripting.com/2024/06/25.html#a153612>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-25, from: Miguel de Icaza Mastondon feed)

<p>Two great documentaries at the top of the charts on Apple TV:</p><p><a href="https://tv.apple.com/us/movie/israelism/umc.cmc.5l93obwb09jqv7vzx5onscc1" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">tv.apple.com/us/movie/israelis</span><span class="invisible">m/umc.cmc.5l93obwb09jqv7vzx5onscc1</span></a></p><p><a href="https://tv.apple.com/us/movie/finding-the-money/umc.cmc.4wlgfqq0pdcphvcg89pd2us9r" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">tv.apple.com/us/movie/finding-</span><span class="invisible">the-money/umc.cmc.4wlgfqq0pdcphvcg89pd2us9r</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112677990278095190>

---

## Sponsoring sqlite-vec to enable more powerful Local AI applications

date: 2024-06-25, from: Mozilla Developer Network blog

<p>Today we’re proud to announce the next Mozilla Builders project: sqlite-vec. Led by independent developer Alex Garcia, this project brings vector search functionality to the beloved SQLite embedded database. Alex has been working on this problem for a while, and we think his latest approach will have a great impact by providing application developers with a powerful new tool for building Local AI applications.</p>
<p>The post <a href="https://hacks.mozilla.org/2024/06/sponsoring-sqlite-vec-to-enable-more-powerful-local-ai-applications/">Sponsoring sqlite-vec to enable more powerful Local AI applications</a> appeared first on <a href="https://hacks.mozilla.org">Mozilla Hacks - the Web developer blog</a>.</p>
 

<https://hacks.mozilla.org/2024/06/sponsoring-sqlite-vec-to-enable-more-powerful-local-ai-applications/>

---

##  Oreo Kintsugi 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kottke blog

 

<https://kottke.org/24/06/oreo-kintsugi>

---

## Microsoft charged with EU antitrust violations for bundling Teams

date: 2024-06-25, from: OS News

The European Commission has informed Microsoft of its preliminary view that Microsoft has breached EU antitrust rules by tying its communication and collaboration product Teams to its popular productivity applications included in its suites for businesses Office 365 and Microsoft 365. ↫ European Commission press release Chalk this one up in the unsurprising column, too. Teams has infested Office, and merely by being bundled it&#8217;s become a major competitor to Slack, even though everyone who has to use it seems to absolutely despise Teams with a shared passion rivaling only Americans&#8217; disgust for US Congress. On a mildly related note, I&#8217;m working with a friend to set up a Matrix server specifically for OSNews users, so we can have a self-hosted, secure, and encrypted space to hang out, continue conversations beyond the shelf life of a news item, suggest interesting stories, point out spelling mistakes, and so on. It&#8217;ll be invite-only at first, with preference given to Patreons, active commenters, and other people I trust. We intend to federate, so if everything goes according to plan, you can use your existing Matrix username and account. I&#8217;ll keep y&#8217;all posted. 

<https://www.osnews.com/story/140063/microsoft-charged-with-eu-antitrust-violations-for-bundling-teams/>

---

## NASA-IBM Collaboration Develops INDUS Large Language Models for Advanced Science Research

date: 2024-06-25, from: NASA breaking news

By Derek Koehl Collaborations with private, non-federal partners through Space Act Agreements are a key component in the work done by NASA’s Interagency Implementation and Advanced Concepts Team (IMPACT). A collaboration with International Business Machines (IBM) has produced INDUS, a comprehensive suite of large language models (LLMs) tailored for the domains of Earth science, biological […] 

<https://science.nasa.gov/open-science/ai-language-model-science-research/>

---

##  US Surgeon General Vivek Murthy declares gun violence a public health crisis.... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044866-us-surgeon-general-vivek->

---

## Andrew Tanenbaum honored for pioneering MINIX, the OS hiding in a lot of computers

date: 2024-06-25, updated: 2024-06-25, from: Liam Proven's articles at the Register

<h4>Software System Award recognises his contributions to education</h4>
      <p>Andy Tanenbaum, creator of MINIX, has been recognized for his code, seminal textbooks, and wider educational influence over much of the modern FOSS world.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/06/25/tanenbaum_minix_award/>

---

##  &#8220;Since Texas&#8217; ban on abortion went into effect, infant deaths in the... 

date: 2024-06-25, updated: 2024-06-25, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044865-since-texas-ban-on-aborti>

---

## The podcast-only feed, part 1

date: 2024-06-25, from: Dave Winer's Scripting News

<p>I'm getting my podcast-only feed for Scripting News ready. </p>
<p>It's going to be an Apple-compliant podcast feed. </p>
<p>Of course when it came time to do the logo I went to my reasonably-priced graphics consultant, ChatGPT. It came breathtakingly close on the first attempt, but it repeated part of the story. Every time I asked it to fix a problem, it created another problem, and the image brightness was reduced, not just in terms of pixels but also the creativity of the image. Of course it isn't really creative. I know. Yadda yadda. </p>
<p>Finally I got something that I could live with that I liked but was imperfect. I decided that since the motto of my blog is "It's even worse than it appears" that an obvious imperfection is totally consistent with the philosophy, and we move onward. As they say, still diggin!</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/06/25/scriptingNewsInlineImageVersion.png"></center>It's even worse than *@#) appears.</div></p>
<p>The prompt for the image: "I'm sure you're aware of my blog, Scripting News, scripting.com. I am doing a new podcast feed for the blog. This feed is designed to get through Apple's submission process so it can be listed in their podcast database. One of the requirements is a 3000 by 3000 image that serves as a logo for the podcast. I need something simple and bold that says 'Scripting News podcast' and then 'With Dave Winer and friends' and 'It's even worse than it appears.' On a background of corn fields in Iowa viewed from the air."</p>
 

<http://scripting.com/2024/06/25/134922.html?title=thePodcastonlyFeedPart1>

---

## The podcast-only logo

date: 2024-06-25, from: Dave Winer's Scripting News

<p>How the logo for the podcast-only feed was designed.</p>
<p>I turned to ChatGPT of course. It came breathtakingly close on the first attempt, but it repeated part of the story. Every time I asked it to fix a problem, it created another problem, and the image brightness was reduced, not just in terms of pixels but also the creativity of the image. Of course it isn't really creative. I know. Yadda yadda. </p>
<p>Finally I got something that I could live with that I liked but was imperfect. I decided that since the motto of my blog is "It's even worse than it appears" that an obvious imperfection is totally consistent with the philosophy, and we move onward. As they say, still diggin!</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/06/25/scriptingNewsInlineImageVersion.png"></center>It's even worse th*@#it appears.</div></p>
<p>The prompt for the image: "I'm sure you're aware of my blog, Scripting News, scripting.com. I am doing a new podcast feed for the blog. This feed is designed to get through Apple's submission process so it can be listed in their podcast database. One of the requirements is a 3000 by 3000 image that serves as a logo for the podcast. I need something simple and bold that says 'Scripting News podcast' and then 'With Dave Winer and friends' and 'It's even worse than it appears.' On a background of corn fields in Iowa viewed from the air."</p>
 

<http://scripting.com/2024/06/25/134922.html?title=thePodcastonlyLogo>

---

## Take a Ride on the Pinus

date: 2024-06-25, updated: 2024-06-25, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/06/25/take-a-ride-on-the-pinus/>

---

## Raspberry Pi Connect: remote shell access and support for older devices

date: 2024-06-25, from: Raspberry Pi News (.com)

<p>Today's beta release of Raspberry Pi Connect includes remote shell access and support for all Raspberry Pi computers, whether they're running Raspberry Pi OS 32-bit or 64-bit. This includes Raspberry Pi OS Lite as well as versions of Raspberry Pi OS with the desktop.</p>
<p>The post <a href="https://www.raspberrypi.com/news/raspberry-pi-connect-remote-shell-access-and-support-for-older-devices/">Raspberry Pi Connect: remote shell access and support for older devices</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/raspberry-pi-connect-remote-shell-access-and-support-for-older-devices/>

---

## Announcing Hono on JSR

date: 2024-06-25, updated: 2024-06-25, from: Deno blog

Hono, a lightweight, fast, cross-platform web framework, is now on JSR. 

<https://deno.com/blog/hono-on-jsr>

---

## Gateway: Up Close in Stunning Detail

date: 2024-06-25, from: NASA breaking news

Witness Gateway in stunning detail with this video that brings the future of lunar exploration to life. 

<https://www.nasa.gov/missions/artemis/gateway/gateway-up-close-in-stunning-detail/>

---

## Create anytime, anywhere with OctoStudio

date: 2024-06-25, from: Raspberry Pi (.org)

<p>Today our friends Mitch Resnick and Natalie Rusk from MIT&#8217;s Lifelong Kindergarten group tell you about OctoStudio, their free mobile app for children to create with code. Find their companion article for teachers in the upcoming issue of Hello World magazine, out for free on Monday 1 July. When people see our new OctoStudio coding&#8230;</p>
<p>The post <a href="https://www.raspberrypi.org/blog/octostudio-app/">Create anytime, anywhere with OctoStudio</a> appeared first on <a href="https://www.raspberrypi.org">Raspberry Pi Foundation</a>.</p>
 

<https://www.raspberrypi.org/blog/octostudio-app/>

---

## Unlocking the Power of AI Driven Development with SudoLang

date: 2024-06-25, from: O'Reilly Radar

As AI continues to advance at a rapid pace, developers are increasingly turning to AI-driven development (AIDD) to build more intelligent and adaptive applications. However, using natural language prompts to describe complex behaviors to AI can be a real challenge. While natural language is expressive, it lacks the structure and efficiency needed to clearly communicate [&#8230;] 

<https://www.oreilly.com/radar/unlocking-the-power-of-ai-driven-development-with-sudolang/>

---

## Ubuntu 24.10 will default NVIDIA users to Wayland

date: 2024-06-25, from: OS News

The transition to Wayland is nearing completion for most desktop Linux users. The most popular desktop Linux distribution in the world, Ubuntu, has made the call and is switching its NVIDIA users over to Wayland by default in the upcoming release of Ubuntu 24.10. The proprietary NVIDIA graphics driver has been the hold-out on Ubuntu in sticking to the GNOME X.Org session out-of-the-box rather than Wayland as has been the default for the past several releases when using other GPUs/drivers. But for Ubuntu 24.10, the plan is to cross that threshold for NVIDIA now that their official driver has much better Wayland support and has matured into great shape. Particularly with the upcoming NVIDIA R555 driver reaching stable very soon, the Wayland support is in great shape with features like explicit sync ready to use. ↫ Michael Larabel This is great news for the Linux desktop, as having such a popular Linux distribution defaulting the users of the most popular graphics card brand to X.org created a major holdout. None of this obviously means that Wayland is perfect or that all use cases are covered &#8211; accessibility is an important use case where tooling simply hasn&#8217;t been optimised yet for Wayland, but work is underway &#8211; and for those of us who prefer X.org for a variety of reasons, there are still countless distributions offering it as a fallback or as the default option. 

<https://www.osnews.com/story/140061/ubuntu-24-10-will-default-nvidia-users-to-wayland/>

---

## Microsoft puts repair front and center

date: 2024-06-25, from: OS News

It seems the success of the Framework laptops, as well the community&#8217;s relentless focus on demanding repairable devices and he ensuing legislation, are starting to have an impact. It wasn&#8217;t that long ago that Microsoft&#8217;s Surface devices were effectively impossible to repair, but with the brand new Snapdragon X Elite and Pro devices, the company has made an impressive U-turn, according to iFixIt. Both the new Surface Laptop and Surface Pro are exceptionally easy to repair, and take cues from Framework&#8217;s hardware. Microsoft’s journey from the unrepairable Surface Laptop to the highly repairable devices on our teardown table should drive home the importance of designing for repair. The ability to create a repairable Surface was always there but the impetus to design for repairable was missing. I’ll take that as a sign that Right to Repair advocacy and legislation has begun to bear fruit. ↫ Shahram Mokhtari The new Surface devices contain several affordances to make opening them up and repairing them easier. They take cues from Framework in that inside screws and components are clearly labeled to indicate what type they are and which parts they&#8217;re holding in place, and there&#8217;s a QR code that leads to online repair guides, which were available right away, instead of having to wait months to forever for those to become accessible. The components are also not layered; in other words,you don&#8217;t need to remove six components just to get to the SSD, or whatever &#8211; some laptops require you to take out the entire mainboard just to get access to the fans to clean them, which is bananas. Microsoft technically doesn&#8217;t have to do any of this, so it&#8217;s definitely praiseworthy that their hardware department is going the extra kilometre to make this happen. The fact that even the Surface Pro, a tablet, can be reasonably opened up and repaired is especially welcome, since tablets are notoriously difficult to impossible to repair. 

<https://www.osnews.com/story/140059/microsoft-puts-repair-front-and-center/>

---

## Briefly on Julian Assange

date: 2024-06-25, from: Jessica Smith's blog

<p>So, Viv and I were in the car this morning when we heard about the Assange plea deal.</p>
<p>Viv: omg, finally! I only hope he&rsquo;ll now give up hacking 😔<br>
Me: Hmm, or maybe he should give up non-consensual sex. That&rsquo;s where he went wrong, isn&rsquo;t it?<br>
Viv: &hellip;true</p>
<p>I mean, fuck. I know this prosecution has been politically motivated, purely to punish him for his role exposing Western war crimes. The charges he&rsquo;s accepted a plea deal over are the US &ldquo;espionage&rdquo; ones, after all, not the Swedish sexual assault ones, which were dropped long ago. And I don&rsquo;t support politically-motivated prosecutions of people who expose war crimes. But I&rsquo;ve also never been comfortable with any kind of personalised &ldquo;I support Assange&rdquo; sentiment, as if he were a righteous martyr, rather than &ldquo;I support exposing those who commit war crimes&rdquo;.</p>
<p>Back in my student activist days, I once got stuck doing a stall where we were trying to get signatures on a petition calling for Assange&rsquo;s charges to be dropped (and this was back when they were the sexual assault charges, not the espionage ones). The organiser of the stall knew full well the attitude I was going to take to this, so he gave me a stack of leaflets and told me to hand them out around Campus Centre. I took the stack, went upstairs, dropped them all straight in the bin, then chilled out in the cafeteria for an hour before reporting back. I think he knew that&rsquo;s what I was going to do, too, lol. I didn&rsquo;t get scolded for skipping out on nearly the whole stall, which I usually would&rsquo;ve been.</p>
<p>Anyway, Assange is married now, so maybe he has straightened himself out. I don&rsquo;t know. I think it&rsquo;s good there&rsquo;s a resolution at last to the political prosecution (although I would note, cynically, that so many years have passed that the &ldquo;deterrence&rdquo; objective has already been achieved, and the, uh, short-term memory of the political establishment means no one cares what happened during the War on Terror any more, anyway). But Assange himself is still an asshole.</p> 

<https://www.jayeless.net/2024/06/assange-plea-deal.html>

---

## The Northern Mariana Touchdown

date: 2024-06-25, from: Tedium site

After years in a British prison, Julian Assange is going back to Australia—minus a short layover in one of the world’s most remote places. As day trips go, it’s fascinating. 

<https://feed.tedium.co/link/15204/16724146/julian-assange-northern-mariana-islands-unusual-trip>

---

## Wordle Kitty on top of the world

date: 2024-06-25, from: Dave Winer's Scripting News

<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/06/24/wordleKittyImpressive.png"></center>Another impressive day for Wordle Kitty! </div></p>
 

<http://scripting.com/2024/06/24/025057.html?title=wordleKittyOnTopOfTheWorld>

---

## The key bit of the code that was biting me in net/http

date: 2024-06-25, from: Ze Iaso's blog

A clip from a longer stream VOD where I explain how MIME parsing works in Go's net/http package 

<https://xeiaso.net/videos/2024/how-mime-parsing-works/>

---

## Writing MIME, RSS, and existential suffering

date: 2024-06-25, from: Ze Iaso's blog

 

<https://xeiaso.net/vods/2024/mime-rss/>

---

## Windows 11 is now automatically enabling OneDrive folder backup without asking permission

date: 2024-06-24, from: OS News

Microsoft has made OneDrive slightly more annoying for Windows 11 users. Quietly and without any announcement, the company changed Windows 11&#8217;s initial setup so that it could turn on the automatic folder backup without asking for it. Now, those setting up a new Windows computer the way Microsoft wants them to (in other words, connected to the internet and signed into a Microsoft account) will get to their desktops with OneDrive already syncing stuff from folders like Desktop Pictures, Documents, Music, and Videos. Depending on how much is stored there, you might end up with a desktop and other folders filled to the brim with shortcuts to various stuff right after finishing a clean Windows installation. ↫ Taras Buria at NeoWin Just further confirmation that Windows 11 is not ready for the desktop. 

<https://www.osnews.com/story/140055/windows-11-is-now-automatically-enabling-onedrive-folder-backup-without-asking-permission/>

---

##  A Genealogy of Technology and Power Since 1500 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kottke blog

 

<https://kottke.org/24/06/a-genealogy-of-technology-and-power-since-1500>

---

## Apple first company to be found violating DMA

date: 2024-06-24, from: OS News

Today, the European Commission has informed Apple of its preliminary view that its App Store rules are in breach of the Digital Markets Act (DMA), as they prevent app developers from freely steering consumers to alternative channels for offers and content. In addition, the Commission opened a new non-compliance procedure against Apple over concerns that its new contractual requirements for third-party app developers and app stores, including Apple&#8217;s new “Core Technology Fee”, fall short of ensuring effective compliance with Apple&#8217;s obligations under the DMA. ↫ European Commission press release File this in the category for entirely expected news that is the opposite of surprising. Apple has barely even been maliciously compliant with the DMA, and the European Commission is entirely right in pursuing the company for its continued violation of the law. The DMA really isn&#8217;t a very complicated law, and the fact the world&#8217;s most powerful and wealthiest corporation in the world can&#8217;t seem to adapt its products to the privacy and competition laws here in the EU is clearly just a bunch of grandstanding and whining. In fact, I find that the European Commission is remarkably lenient and cooperative in its dealings with the major technology giants in general, and Apple in particular. They&#8217;ve been in talks with Apple for a long time now in preparation for the DMA, the highest-ranking EU officials regularly talked with Apple and Tim Cook, they&#8217;ve been given ample warnings, instructions, and additional time to make sure their products do not violate the law &#8211; as a European Union citizen, I can tell you no small to medium business or individual EU citizen gets this kind of leniency and silk gloves treatment. Everything Apple is reaping, it sowed all by itself. As I posted on Mastodon a few days ago: The EU enacted a new law a while ago that all bottle caps should remain attached to the bottle, to combat plastic trash. All the bottle and packaging makers, from massive multinationals like Coca Cola and fucking Nestlé to small local producers invested in the development of new caps, changing their production lines, and shipping the new caps. Today, a month before the law goes into effect, it&#8217;s basically impossible to find a bottle without an attached cap. I don&#8217;t know, I thought this story was weirdly relevant right now with Apple being a whiny bitch. Imagine being worse than Coca Cola and motherfucking Nestlé. ↫ Thom Holwerda Apple is in this mess and facing insane fines as high as 10% of their worldwide turnover because spoiled, rich, privileged brats like Tim Cook are not used to anyone ever saying &#8220;no&#8221;. Silicon Valley has shown, time and time again, from massive data collection for advertising purposes to scraping the entire web for machine learning, that they simply do not understand consent. Now that there&#8217;s finally someone big, strong, and powerful enough to not take Silicon Valley&#8217;s bullshit, they start throwing tamper tantrums like toddlers. Apple&#8217;s public attacks on the European Union &#8211; and their instructions to their PR attack dogs to step it up a notch &#8211; are not doing them any favours, either. The EU is, contrary to just about any other government body in the Western world, ridiculously popular among its citizens, and laws that curb the power of megacorps are even more popular. I honestly have no idea who&#8217;s running their PR department, because they&#8217;re doing a terrible job, at least here in the EU. 

<https://www.osnews.com/story/140053/apple-first-company-to-be-found-violating-dma/>

---

## Johnson Celebrates LGBTQI+ Pride Month: Eva Granger

date: 2024-06-24, from: NASA breaking news

Eva Granger firmly believes that anyone can launch a career at NASA. As the events and milestones lead for the Orion Program’s strategic communications team, she dedicates her time to engaging with the public and educating them not only about the Orion spacecraft but also about the various opportunities to contribute to the agency’s mission. [&#8230;] 

<https://www.nasa.gov/general/johnson-celebrates-lgbtqi-pride-month-eva-granger/>

---

##  I knew the western US had become drier, but I hadn&#8217;t realized... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044862-i-knew-the-western-us>

---

## iOS and iPadOS 18 can format external drives

date: 2024-06-24, from: OS News

I can&#8217;t believe this is considered something I need to write about, but it&#8217;s still a very welcome new feature that surprisingly has taken this long to become available: iOS and iPadOS 18 now allow you to format external storage devices. Last year when I began testing iPadOS 17 betas, I noticed the addition of options for renaming and erasing external drives in the Files app. I watched these options over the course of the beta cycle for iPadOS 17 to see if any further changes would come. The one I watched most closely was the “Erase” option for external drives. This option uses the same glyph as the Erase option in Disc Utility on macOS. In Disc Utility on the Mac, in order to reformat an external drive, you first select the “Erase” option, and then additional options appear for selecting the new format you wish to reformat the drive with. When I saw the “Erase” option added in the Files app on iPadOS, I suspected that Apple might be moving towards adding these reformatting options into the Files app on iPadOS. And I’m excited to confirm that this is exactly what Apple has done in iPadOS 18! ↫ Kaleb Cadle It was soon confirmed this feature is available in iOS 18 as well. You can only format in APFS, ExFAT and FAT, so it&#8217;s not exactly a cornucopia of file systems to choose from, but it&#8217;s better than nothing. This won&#8217;t magically fix all the issues a lot of people have with especially iPadOS when it comes to feeling constrained when using their expensive, powerful tablets with detachable keyboards, but it takes away at least one tiny reason to keep a real computer around. Baby steps, I guess. 

<https://www.osnews.com/story/140051/ios-and-ipados-18-can-format-external-drives/>

---

## Slow time?

date: 2024-06-24, from: Status-Q blog

Back in the days when I had an analogue watch, rather than a serious computer, strapped to my wrist, I often wondered whether life would be more or less stressful if I removed the minute and second hands, so that I could only tell the time to, say, the nearest 5-10 minutes.  Would I be <a class="more-link excerpt-link" href="https://statusq.org/archives/2024/06/24/12102/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<https://statusq.org/archives/2024/06/24/12102/>

---

##  The Art Book for Children 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kottke blog

 

<https://kottke.org/24/06/the-art-book-for-children>

---

## Apple Found in Breach of DMA

date: 2024-06-24, from: Michael Tsai

Lisa O&#8217;Carroll (via Hacker News, New York Times, Slashdot): Apple has been found to be in breach of sweeping new EU laws designed to allow smaller companies to compete and allow consumers to find cheaper and alternative apps in the tech business&#8217;s app store.The European Commission, which also acts as the EU antitrust and technology [&#8230;] 

<https://mjtsai.com/blog/2024/06/24/apple-found-in-breach-of-dma/>

---

## SwiftData vs. Realm Performance Comparison

date: 2024-06-24, from: Michael Tsai

Jacob Bartlett: The Realm DB engine was written from the ground-up in C++ to minimise this overhead. [&#8230;] Therefore, it&#8217;s not unreasonable to describe SwiftData as a wrapper over a wrapper over a wrapper.[&#8230;]These show that the SwiftData objects took around 10x longer to instantiate.[&#8230;]Realm topped out at writing 2,000,000 simple User objects before hitting [&#8230;] 

<https://mjtsai.com/blog/2024/06/24/swiftdata-vs-realm-performance-comparison/>

---

## Always Allow Safari Bookmarklets

date: 2024-06-24, from: Michael Tsai

Jeff Johnson: You may already be aware that for a number of years, Safari has asked your permission every time you click on a link, such as an RSS feed, that opens in an app other than Safari[&#8230;][&#8230;]The permission prompt now has an option to &#8220;Always Allow&#8221;! This option is new in Safari 17. This [&#8230;] 

<https://mjtsai.com/blog/2024/06/24/always-allow-safari-bookmarklets/>

---

## iCloud Drive, Dropbox, and Proton Drive

date: 2024-06-24, from: Michael Tsai

Ryan Christoffel (AppleInsider): The problem is, Apple &#8220;intelligently&#8221; decides which files can remain stored in local cache, and will make decisions to remove certain downloads without telling you. So when you need to access a given file&#8212;say, on an airplane with no connection&#8212;you might find that the file has been sent back to the cloud [&#8230;] 

<https://mjtsai.com/blog/2024/06/24/icloud-drive-dropbox-and-proton-drive/>

---

## AI Companies Ignoring Robots.txt

date: 2024-06-24, from: Michael Tsai

Mark Sullivan: The AI search startup Perplexity is in hot water in the wake of a Wiredinvestigation revealing that the startup has been crawling content from websites that don&#8217;t want to be crawled.[&#8230;]&#8220;Perplexity is not ignoring the Robot Exclusions Protocol and then lying about it,&#8221; said Perplexity cofounder and CEO Aravind Srinivas in a phone [&#8230;] 

<https://mjtsai.com/blog/2024/06/24/ai-companies-ignoring-robots-txt/>

---

## Pirate Ship

date: 2024-06-24, from: Michael Tsai

Adam Engst: Pirate Ship is a shipping platform with an elegant interface that allows users to access discounted shipping rates from USPS and UPS with no subscription fee. I&#8217;ve used it a handful of times for mailing packages, and it has been brilliant.[&#8230;]And, oh, what a lovely interface![&#8230;]Pirate Ship has negotiated corporate-level discounted shipping rates [&#8230;] 

<https://mjtsai.com/blog/2024/06/24/pirate-ship/>

---

## NASA Webb, Hubble Scientist Marcia Rieke Awarded Gruber Cosmology Prize

date: 2024-06-24, from: NASA breaking news

Marcia Rieke, a scientist who worked on NASA’s James Webb Space Telescope and Hubble Space Telescope, has received the Gruber Foundation&#8217;s 2024 Cosmology Prize. Rieke will receive the award and gold laureate pin at a ceremony August 8, 2024, at the General Assembly of the International Astronomical Union in Cape Town, South Africa. Rieke was [&#8230;] 

<https://www.nasa.gov/missions/webb/nasa-webb-hubble-scientist-marcia-rieke-awarded-gruber-cosmology-prize/>

---

##  I am enjoying the empathetic trajectory of the Charli XCX and Lorde... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044863-i-am-enjoying-the-empathe>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-24, from: Miguel de Icaza Mastondon feed)

<p>Example catchup sessions:</p><p><a href="https://developer.apple.com/wwdc24/10184" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">developer.apple.com/wwdc24/101</span><span class="invisible">84</span></a></p><p> <a href="https://developer.apple.com/wwdc24/10150" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">developer.apple.com/wwdc24/101</span><span class="invisible">50</span></a></p><p><a href="https://developer.apple.com/wwdc24/10181" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">developer.apple.com/wwdc24/101</span><span class="invisible">81</span></a></p><p><a href="https://developer.apple.com/wwdc24/10223" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">developer.apple.com/wwdc24/102</span><span class="invisible">23</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112673063204840521>

---

##  Observers have reported a large red spot on Jupiter since the 1660s.... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044861-observers-have-reported-a>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-24, from: Miguel de Icaza Mastondon feed)

<p>One thing I loved about this year’s WWDC is that there were plenty of catchup sessions, covering the basics for newcomers.</p> 

<https://mastodon.social/@Migueldeicaza/112673015401826718>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-24, from: Miguel de Icaza Mastondon feed)

<p>I enjoyed the technical details on this slide deck. <a href="https://mastodon.online/@karppinen/112672855308433453" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">mastodon.online/@karppinen/112</span><span class="invisible">672855308433453</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112672898534110977>

---

##  How to Give Away a Fortune 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kottke blog

 

<https://kottke.org/24/06/how-to-give-away-a-fortune>

---

## [Scummvm-devel] Re: SCUMM Engine (2002)

date: 2024-06-24, from: Tilde.news

<p><a href="https://tilde.news/s/8vnunh/scummvm_devel_re_scumm_engine_2002">Comments</a></p> 

<https://lists.scummvm.org/pipermail/scummvm-devel/2002-June/000341.html>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-24, from: Miguel de Icaza Mastondon feed)

<p>Unlike .NET where the improvements to Visual Studio support are behind a subscription, the Swift improvements are public and open for all:</p><p><a href="https://forums.swift.org/t/improvements-to-swift-in-visual-studio-code-coming-with-swift-6/72708" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">forums.swift.org/t/improvement</span><span class="invisible">s-to-swift-in-visual-studio-code-coming-with-swift-6/72708</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112672807503501506>

---

## On the GOES

date: 2024-06-24, from: NASA breaking news

On June 14, 2024, NOAA’s (National Oceanic and Atmospheric Administration) last Geostationary Operational Environmental Satellite, GOES-U, started its journey from the Astrotech Space Operations facility to the SpaceX hangar at Launch Complex 39A at NASA’s Kennedy Space Center in Florida. GOES-U is the final weather-observing and environmental monitoring satellite in NOAA’s GOES-R Series. GOES-U will [&#8230;] 

<https://www.nasa.gov/image-article/on-the-goes/>

---

## GNU Guile 3.0.10 released

date: 2024-06-24, from: Tilde.news

<p><a href="https://tilde.news/s/vzecvi/gnu_guile_3_0_10_released">Comments</a></p> 

<https://lists.gnu.org/archive/html/guile-user/2024-06/msg00026.html>

---

##  How do actors memorize their lines? &#8220;Actors engage in elaborative rehearsal, focusing... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044732-how-do-actors-memorize-th>

---

## EPYX's Pitstop

date: 2024-06-24, from: Computer ads from the Past

Where Winning is the Pits. 

<https://computeradsfromthepast.substack.com/p/epyxs-pitstop>

---

## Contributing to open source docs as a technical writer

date: 2024-06-24, from: Blog by Fabrizio Ferri-Benedetti

<p>I&rsquo;ve recently become a docs maintainer for OpenTelemetry, a pretty big open source project. As I often receive questions on how to start contributing to open source docs, this seemed the right time to write about it. Let me tell you how I started and progressed, and what you can do to start your open source documentation journey.</p> 

<https://passo.uno/contribute-open-source-docs/>

---

##  Anxiety in Inside Out 2 Is Too Real 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kottke blog

 

<https://kottke.org/24/06/anxiety-in-inside-out-2-is-too-real>

---

**@Dave Winer's Scripting News** (date: 2024-06-24, from: Dave Winer's Scripting News)

<a href="https://mastodon.social/@davew/112671576365142333">Heard</a> an interview show on NPR where they went to laundromats and asked people about the upcoming election. Big surprise they say pretty much exactly what they say on the news about the candidates, all of it <a href="https://en.wikipedia.org/wiki/False_balance#:~:text=False%20balance%2C%20known%20colloquially%20as,viewpoints%20than%20the%20evidence%20supports.">bothsidesisms</a> and no mention of the fascism coming our way if we go one direction. It's all everyone's fault, so why bother voting, is mostly what they say. SMH in disbelief. 

<http://scripting.com/2024/06/24.html#a152539>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-24, from: Miguel de Icaza Mastondon feed)

<p>Oh shit, real estate is about to get more expensive </p><p><a href="https://hachyderm.io/@mogul/112672174037838068" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">hachyderm.io/@mogul/1126721740</span><span class="invisible">37838068</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112672216354591991>

---

## Linux geeks cheer as Arm wrestles x86

date: 2024-06-24, updated: 2024-06-24, from: Liam Proven's articles at the Register

<h4>AlmaLinux and upstream kernel support for Raspberry Pi 5, plus a forthcoming high-performance Arm64 Tuxedo laptop</h4>
      <p>Encouraging noises are coming from multiple directions around Linux support for both current and next-generation Arm64 kit.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/06/24/almalinux_pi5_tuxedo/>

---

## Linux geeks cheer as Arm wrestles x86

date: 2024-06-24, updated: 2024-06-24, from: Liam Proven's articles at the Register

<h4>AlmaLinux and upstream kernel support for Raspberry Pi 5, plus a forthcoming high-performance Arm64 Tuxedo laptop</h4>
      <p>Encouraging noises are coming from multiple directions around Linux support for both current and next-generation Arm64 kit.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/06/24/arm_linux_x86/>

---

## The Question of What’s Fair Illuminates the Question of What’s Hard

date: 2024-06-24, from: Quanta Magazine

Computational complexity theorists have discovered a surprising new way to understand what makes certain problems hard.            <p>The post <a href="https://www.quantamagazine.org/the-question-of-whats-fair-illuminates-the-question-of-whats-hard-20240624/" target="_blank">The Question of What’s Fair Illuminates the Question of What’s Hard</a> first appeared on <a href="https://api.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<https://www.quantamagazine.org/the-question-of-whats-fair-illuminates-the-question-of-whats-hard-20240624/>

---

##  Explore present and future climate zones for dozens of global cities. &#8220;With... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044857-explore-present-and-futur>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-24, from: Miguel de Icaza Mastondon feed)

<p>Great article, and companion Twitter thread: </p><p><a href="https://www.theguardian.com/science/article/2024/jun/20/global-emergency-preparation-food-storage-grain" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://www.</span><span class="ellipsis">theguardian.com/science/articl</span><span class="invisible">e/2024/jun/20/global-emergency-preparation-food-storage-grain</span></a></p><p><a href="https://x.com/isabellamweber/status/1805218925728129128" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">x.com/isabellamweber/status/18</span><span class="invisible">05218925728129128</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112671934339647143>

---

##  Great news about HIV protection: &#8220;Results from a large clinical trial in... 

date: 2024-06-24, updated: 2024-06-24, from: Jason Kottke blog

 

<https://kottke.org/24/06/0044860-great-news-about-hiv-prev>

---

**@Dave Winer's Scripting News** (date: 2024-06-24, from: Dave Winer's Scripting News)

Today's song: <a href="https://www.youtube.com/watch?v=tQjxIvcGGdE">Bell Bottom Blues</a>. "It's all wrong but it's all right." 

<http://scripting.com/2024/06/24.html#a124427>

---

**@Dave Winer's Scripting News** (date: 2024-06-24, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/03/12/macpaint.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">If you think you understand the significance of RSS, I bet you don't. Please listen to the <a href="http://scripting.com/2024/06/23/howRssStartedTheRealStory.m4a">14-minute podcast</a> I <a href="http://scripting.com/2024/06/23.html#a201841">posted</a> yesterday for the real story. We should learn from this and not repeat the same mistake, and of course until the real story is out, we can't learn from it. Let's get it right on the Wikipedia page. It isn't about Guha or Libby, me, or whoever. It's really about the power of Netscape and the early web news publishing companies that supported RSS, and the blogging systems that jumped on board (including my own products) and then two years later, the NYT coming on board, followed by the entire news industry. A bunch of nerds arguing on a mail list is <i>not</i> the story. With the benefit of well over twenty years hindsight this should, by now, be kind of obvious. 

<http://scripting.com/2024/06/24.html#a123814>

---

**@Dave Winer's Scripting News** (date: 2024-06-24, from: Dave Winer's Scripting News)

<a href="https://www.threads.net/@davew/post/C8mUXGiMODB">Threads could</a> make it a lot easier for us to cross-post to their system, esp since they say they will support ActivityPub. As it is there are too many hoops to jump through imho. I think basically they all want you to use their UI's which amounts to writing in <a href="http://scripting.com/2024/01/14/031201.html">tiny little textboxes</a> of course. 

<http://scripting.com/2024/06/24.html#a123121>

---

**@Dave Winer's Scripting News** (date: 2024-06-24, from: Dave Winer's Scripting News)

I <a href="https://mastodon.social/@davew/112671088952473981">want</a> to be able to run Frontier on the new Macs, but was disappointed that VMware doesn’t work and had given up on the idea. But I just learned that UTM might work. Here’s the <a href="https://chatgpt.com/share/38d87439-9a34-402d-9c46-7a047e7e2866">transcript</a> of my inquiry. Wondering if <a href="https://mastodon.social/@davew/112671088952473981">anyone has had good experience</a> using UTM to run older Mac software on Apple CPUs. 

<http://scripting.com/2024/06/24.html#a123002>

---

## Cue the Alice Cooper

date: 2024-06-24, updated: 2024-06-24, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/06/24/cue-the-alice-cooper/>

---

## Happy #MagPiMonday!

date: 2024-06-24, from: Raspberry Pi News (.com)

<p>Here’s a selection of some of the awesome Pi projects people sent us this month. Remember to follow along at the hashtag #MagPiMonday! </p>
<p>The post <a href="https://www.raspberrypi.com/news/happy-magpimonday/">Happy #MagPiMonday!</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/happy-magpimonday/>

---

## Wavelet Lab Picks Lime Micro’s LMS7002M for its High-Performance 8×8 xMASS SDR

date: 2024-06-24, from: Lime Microsystems news

<p>"xMASS SDR is a modular, high-performance MIMO [Multiple Input/Multiple Output] transceiver optimised for industrial, academic, and advanced software-defined radio (SDR) applications," its creators say - promising a device suitable for a broad range of use-cases, including 5G NR cellular experimentation.</p>
<p>The post <a rel="nofollow" href="https://limemicro.com/news/wavelet-labs-picks-lime-micros-lms7002m-for-its-high-performance-8x8-xmass-sdr/">Wavelet Lab Picks Lime Micro&#8217;s LMS7002M for its High-Performance 8&#215;8 xMASS SDR</a> appeared first on <a rel="nofollow" href="https://limemicro.com">Lime Microsystems</a>.</p>
 

<https://limemicro.com/news/wavelet-labs-picks-lime-micros-lms7002m-for-its-high-performance-8x8-xmass-sdr/>

---

## when you’re ready to stop eating grass

date: 2024-06-24, from: Ayjay blog

This is a kind of follow-up to my previous post, in which I described this blog as a venue for conserving and transmitting what I believe to be valuable and worthy of our attention. But I don’t want to argue with people about how they spend their time and what they devote their attention to. [&#8230;] 

<https://blog.ayjay.org/when-you-stop-eating-grass/>

---

## It's desktop refresh season in the land of the Windowsalikes

date: 2024-06-24, updated: 2024-06-24, from: Liam Proven's articles at the Register

<h4>Those with curious disposition spoilt for choice as KDE 6.1, Cinnamon 6.2, and IceWM 3.5 all arrive</h4>
      <p>New versions of two of the most popular "traditional" desktops are out, alongside a new release of one of the oldest and smallest.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/06/24/kde_cinnamon_icewm/>

---

## 2024-06-23 Adjudicating the difficulty

date: 2024-06-24, from: Alex Schroeder's Blog

<h1 id="2024-06-23-adjudicating-the-difficulty">2024-06-23 Adjudicating the difficulty</h1>

<p>I was listening in on an exchange between <a class="account" href="https://tabletop.social/@phf" title="@phf@tabletop.social">@phf</a> and <a class="account" href="https://dice.camp/@kyonshi" title="@kyonshi@dice.camp">@kyonshi</a>. They were talking about <a href="Traveller">Traveller</a> and Peter noted that he didn&rsquo;t like the &ldquo;somewhat mysterious difficulty classes of some tests&rdquo;. I don&rsquo;t like this, either! It&rsquo;s exhausting. I feel drained when I do it.</p>

<p>I started thinking about this for a while and maybe the following provides for an interesting way to talk about rules in role-playing games.</p>

<p>Note that the problem shows up in many places. For example, I don&rsquo;t like &ldquo;the ladder&rdquo; in <a href="Fudge">Fudge</a> and <a href="Fate">Fate</a> games where I as the referee need decide whether opponents are &ldquo;good&rdquo; or &ldquo;very good&rdquo; at fighting the player characters. For me, this is the same problem, except it happens behind the screen. Player&rsquo;s don&rsquo;t know about this.</p>

<p>Using classic D&amp;D or similar rules and running a megadungeon is comparatively easy, because the monster hit dice are tied to dungeon levels. Once I know the dungeon level, I can pick appropriate monsters and their stats automatically determine &ldquo;the difficulty classes of some tests.&rdquo; This might be one of the reasons that makes it easier to run D&amp;D with self-made dungeons.</p>

<p>So this is the first solution to the problem of having to assign difficulties to rolls: The game can have a small number of actions that require a dice roll. Each roll has clear conditions of success. The referee doesn&rsquo;t have to assess the difficulty as soon as the situation is established. D&amp;D would be an example of this kind of game. You roll to hit, to do damage, to save, and all the target numbers are known once the monster is on the table. In classic D&amp;D, traps have only one difficulty setting so thieves only need to know a single number. Hidden doors are either concealed or secret. Those are the two difficult settings for finding the hidden door and thus the referee only needs to know two numbers (1-in-6 or 2-in-6). Of course it breaks down sometimes when a module tells you that a particular door is harder to find (&ldquo;1-in-8&rdquo;) or that a lock is harder to pick (&ldquo;add 20% to the check&rdquo;). But generally speaking, as a referee, very little thought is required. The trade-of is that characters don&rsquo;t have many &ldquo;skills&rdquo;. They have their attack rolls, their saves, the thieves skills, some other d6 abilities like opening doors and listening, but that&rsquo;s it.</p>

<p>As soon as skills are introduced, the situations in which dice can be rolled explodes. One way to solve the problem of having to decide the difficulty of every single roll is to a provide a long list of examples from which to extrapolate. I haven&rsquo;t played any game that does that well. Zweihänder provides seven example uses of the skill, one for each difficulty rating. That is amazing.</p>

<p>A game that has a single roll for every skill (great idea) but then provides a lot of help adjudicating the rolls in general isn&rsquo;t helping. I found this to be the case for the few Basic Role-Playing, Warhammer Fantasy Roleplay, Rolemaster and HARP games I tried. I didn&rsquo;t try many of them. I just checked HARP again and there are examples for some of the skills and not for others, so I&rsquo;d have to play it again to remember whether this was even a problem.</p>

<p>Perhaps one possible solution is to just ignore difficulties and to assume all skill rolls at the default difficulty to be appropriate for adventures. As far as I can remember, this is how we often played these games.</p>

<p>Mongoose Traveller isn&rsquo;t helping, either. There, the target number is always an eight. Almost all the modifiers appear to obvious and well explained, but with the Task Difficulty Dice Modifiers the &ldquo;somewhat mysterious difficulty classes of some tests&rdquo; is back.</p>

<p>Classic Traveller is worse it leans into the referee making up the roll. Sometimes an examples of a skill is provided (&ldquo;navigation expertise can be used as a DM of +1 per level on a throw to determine the needed information&rdquo;) but most of the time it&rsquo;s simply a description of where the skill might be applicable and it&rsquo;s up to the referee to call for an appropriate throw, if at all. At the very beginning, skills are explained as follows: &ldquo;The acquired skills table provides four basic types of results: characteristic alterations (such as +1 strength), weapons expertise (such as blade combat), transport skills (such as ATV), and basic skills (such as navigation).&rdquo; That is to say, sometimes the skill simply means that something can be done. The example that comes to mind is how to recover from serious wounds: &ldquo;Recovery is dependent on medical attention (a medical facility and an individual with medical-3 skill; recuperation to full strength without medical attention is not possible).&rdquo; The medic doesn&rsquo;t have to roll at all. Having the skill is all that counts.</p>

<p>This brings me to the last category: negotiation. This what I learned from Burning Wheel: Before a roll is made, players declare what they want and the referee determines the difficulty of the roll and explains the consequences of failure. Then players decide whether they want to make the roll. Implicitly, they can change their mind, declare a different goal and see whether they like the odds and consequences better. I like this a lot.</p>

<p>Of course, turning every skill roll into a negotiation can be tiresome. If people remember what the previous result of similar negotiations was, the system takes on aspects of case law. As soon as the people of the table realize that a similar situation was resolved using this or that, and there are no circumstances that warrant a change, then the negotiation is skipped.</p>

<p>Then again, a long lists of conditions and modifiers can also take on aspects of case law.</p>

<p>So perhaps this is what I think all these rules texts evolve into: Any rule system where referees set the difficulty imply a system where players can enter a short negotiation. In order to avoid future negotiations, the table remembers the outcomes and uses them as shortcuts for future situations.</p>

<p>Once you know this, the approach by some games to simply do a fixed difficulty roll such as 50% rate of success makes sense if you assume that there is some sort of negotiation and case law powering it all. Sometimes the penalty of failure is scorn and insults, sometimes it&rsquo;s death. It depends on the situation but there&rsquo;s always a way to negotiate for the two outcomes that seem acceptable to the table.</p>

<p>I haven&rsquo;t found a perfect solution, for me. I like it both ways. A game like <a href="Halberds_and_Helmets">Halberts &amp; Helmets</a> is much like D&amp;D where as a game like <a href="Halberts">Halberts</a> is one where all effects outside of combat have to be negotiated but it&rsquo;s not as wild and free as Classic Traveller.</p>

<p><a class="tag" href="/search/?q=%23RPG">#RPG</a></p> 

<https://alexschroeder.ch/view/2024-06-23-difficulty>

---

## 2024/06/24 Meet DARPA’s Newest X-plane: XRQ-73

date: 2024-06-24, from: Darpa News

<div style="float:left"><img title="shep" alt="shep" src="https://www.darpa.mil/DDM_Gallery/shepard 619X316 copy_thumb.jpg" border="0"/></div>The Series Hybrid Electric Propulsion AiRcraft Demonstration program, known as SHEPARD, sees it's hybrid-electric uncrewed aircraft system (UAS) receive its official X-plane designation, XRQ-73. The aircraft will be a Group 3 UAS weighing approximately 1,250 pounds; first flight is expected by year-end 2024. 

<https://www.darpa.mil/news-events/2024-06-24>

---

## The Name ‘Siddhartha’

date: 2024-06-24, from: Jessica Smith's blog

<p>Since Vivian was a teenager, apparently, it&rsquo;s been his long-held dream to name a son Siddhartha and call him Sid for short, so as to honour both his Hindu heritage <em>and</em> Syd Barrett, his rock &rsquo;n&rsquo; roll idol. Pretty much as soon as Viv told me this dream, I poured cold water on it. Honestly, I did not believe that &ldquo;Siddhartha&rdquo; was a name that actual, real-life human beings are given. Vivian insisted it was, so after a few years of back-and-forth, I finally deigned to search the internet to see if I could find any actual, real-life human beings with this name. The result was that every single &ldquo;Siddhartha&rdquo; I found was a French speaker (of Indian heritage) – professionals living in cities like Lyon, Geneva, Montreal&hellip; so of course I took this back to Vivian and said all accusatorily, &ldquo;You want to give our child a French name!&rdquo;</p>
<p>This turns out to be a really good way to wind him up – I can say this, because he&rsquo;s compelled me to make the same argument repeatedly since – because he starts whining, &ldquo;Nooooo, it&rsquo;s an Indian name!&rdquo; and I tell him that random LinkedIn profiles on the internet don&rsquo;t lie, and our child is not getting a French name.<sup id="fnref:1"><a href="#fn:1" class="footnote-ref" role="doc-noteref">1</a></sup> It&rsquo;s really funny how worked up he gets about it. Anyway.</p>
<p>Now that we&rsquo;re actually <em>having</em> a child, of course, we&rsquo;re having all these discussions again, even though we don&rsquo;t know Baby&rsquo;s sex yet. &ldquo;Sid&rdquo; has been Viv&rsquo;s pet name for the growing creature in my belly, and I do often go along with it, although I also point out regularly that that&rsquo;s <em>never</em> going to be their actual name.</p>
<p>&ldquo;That&rsquo;s okay,&rdquo; he jokes, &ldquo;when you die in childbirth, there&rsquo;ll be no one to stop me putting whatever I want on the birth certificate.&rdquo;</p>
<p>&ldquo;Ha-ha,&rdquo; I retort, &ldquo;I hope you&rsquo;re not gambling on those odds.&rdquo;</p>
<p>For what it&rsquo;s worth, we <em>have</em> started putting together an <em>actual</em> shortlist, consisting of names that are Indian in origin, but are either <em>also</em> English/Irish names <em>or</em>, at least, don&rsquo;t sound markedly foreign in English. This is what Viv said he really liked about the whole &ldquo;Siddhartha&rdquo;/&ldquo;Sid&rdquo; thing, and I think <em>that&rsquo;s</em> a fair enough goal&hellip; just not the actual name &ldquo;Siddhartha&rdquo;. Un­for­tun­ately, Viv&rsquo;s next favourite name isn&rsquo;t so much &ldquo;an Irish name&rdquo; as &ldquo;the Irish word for &lsquo;bread&rsquo;&rdquo;, but we&rsquo;ll get there.</p>
<div class="footnotes" role="doc-endnotes">
<hr>
<ol>
<li id="fn:1">
<p>Actually, as far as <em>girls&rsquo;</em> names go there are a number of French-origin names I like – I&rsquo;m talking ones well-assimilated into English though – but regardless, I think I have to stand on my principles now.&#160;<a href="#fnref:1" class="footnote-backref" role="doc-backlink">&#x21a9;&#xfe0e;</a></p>
</li>
</ol>
</div> 

<https://www.jayeless.net/2024/06/the-name-siddhartha.html>

---

## what love wants to say

date: 2024-06-24, from: Ayjay blog

Cheryl Mendelson is a philosopher, a lawyer, a novelist, and the author of a legendary book about housekeeping. (We’ve been using our copy for a quarter-century now.) And her new book, Vows: The Modern Genius of an Ancient Rite, stands somehow at the intersection of all those things. After all, a wedding ceremony, with vows [&#8230;] 

<https://blog.ayjay.org/vows/>

---

## US-RSE June 2024 Newsletter

date: 2024-06-24, from: The United States Research Software Engineer Association

June 2024 - 
          In this monthly newsletter, we share recent, current, and planned activities of the US-RSE Association, and related news that we think is of interest to US-RSE members. Newsletters are also available on our website alongside the growing resources and information on the US-RSE Association. To receive our newsletter, join US-RSE.... 

<https://us-rse.org/2024-06-24-newsletter/>

---

## Episode 134 - Beyond the Punch

date: 2024-06-23, from: Advent of Computing

<p data-pm-slice="0 0 []">This episode I'm opening up my research vault to present some interesting pre-digital technology. Back before computers us humans used to write everything down on paper. Over time that lead to some organizational issues. By 1890 punch cards show up to solve one aspect of this problem, but that technology had it's limitations. We will be looking at other paper-based approaches to data management, as I slowly try and explain a realization I've come to about the early history of hypertext.</p> 

<https://adventofcomputing.libsyn.com/episode-134-beyond-the-punch>

---

## Mozilla acquires ad analytics company, for some reason

date: 2024-06-23, from: OS News

One of my biggest concerns regarding the state of the web isn&#8217;t ads (easily blocked) or machine learning (the legal system isn&#8217;t going to be kind to that), but the possible demise of Firefox. I&#8217;ve long been worried that with the seemingly never-ending downward marketshare spiral Firefox is in &#8211; it&#8217;s at like 3% now on desktop, even less on mobile &#8211; Mozilla&#8217;s pretty much sole source of income will eventually pull the plug, leaving the already struggling browser effectively for dead. I&#8217;ve continuously been warning that the first casualty of the downward spiral would be Firefox on platforms other than Windows and macOS. So, what do we make of Mozilla buying an online advertising analytics company? Mozilla has acquired Anonym, a trailblazer in privacy-preserving digital advertising. This strategic acquisition enables Mozilla to help raise the bar for the advertising industry by ensuring user privacy while delivering effective advertising solutions. ↫ Laura Chambers They way Mozilla explains buying an advertising network is that the company wants to be a trailblazer privacy-conscious online advertising, since the current brand of online advertising, which relies on massive amounts of data collection, is unsustainable. Anonym instead employs a number of measures to ensure that privacy is guaranteed, from anonymous analytics to employing differential privacy when it comes to algorithms, ensuring data can&#8217;t be used to tack individual users. I have no reason to doubt Mozilla&#8217;s intentions here &#8211; at least for now &#8211; but intentions change, people in charge change, and circumstances change. Having an ad network integrated into the Mozilla organisation will surely lead to temptations of weakening Firefox&#8217; privacy features and ad-blocking abilities, and just overall I find it an odd acquisition target for something like Mozilla, and antithetical to why most people use Firefox in the first place. What really doesn&#8217;t help is who originally founded Anonym &#8211; two former Facebook executives, backed by a load of venture capital. Do with that little tidbit of information as you please. 

<https://www.osnews.com/story/140047/mozilla-acquires-ad-analytics-company-for-some-reason/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-06-23, from: Miguel de Icaza Mastondon feed)

<p>IceCubes  for iOS is magical</p> 

<https://mastodon.social/@Migueldeicaza/112668268005326959>

---

## In Windows 3.1 and Windows 95, what is a “grabber”?

date: 2024-06-23, from: OS News

Windows 3.0 Enhanced Mode introduced the ability to run MS-DOS programs in a virtual machine. This by itself was already quite an achievement, but it didn’t stop there. It also let you put the MS-DOS session in a window, and run it on the screen along with your other Windows programs. This was crazy. Here’s how it worked. ↫ Raymond Chen When Raymond Chen speaks, we all shut up, listen, and enjoy. 

<https://www.osnews.com/story/140043/in-windows-3-1-and-windows-95-what-is-a-grabber/>

---

## CCC fordert im Innenausschuss Verbot biometrischer Überwachung

date: 2024-06-23, updated: 2024-06-24, from: Chaos Computer Club

In der Sachverständigenanhörung im Innenausschuss des Deutschen Bundestages zur Änderung des Bundesdatenschutzgesetz fordert der Chaos Computer Club (CCC) das längst überfällige Verbot der umstrittenen biometrischen Überwachung im öffentlichen Raum. 

<https://www.ccc.de/de/updates/2024/bdsg-biometrie-verbot>

---

**@Dave Winer's Scripting News** (date: 2024-06-23, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/23/scriptingNewsAd.gif" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I'm going to start a new podcast-only feed, and <a href="http://scripting.com/2024/06/23/howRssStartedTheRealStory.m4a">this will be first episode</a>. 14 minutes. It tells the story of RSS as a remarkable coming-together of tech, news, publishing and blogging. The first burst came from Netscape and four leading web pubs, Salon, Red Herring Wired and Motley Fool. As a leading blogger and developer of blogging tools, I jumped on board as soon as I heard of it, as did the people at Blogger. RSS was an instant standard with a great installed base, and retained its simplicity. You have no idea how remarkable that is. It grew like a weed. An installed base developed. There was confusion for a couple of years, between 2000 and 2002, about what RSS was, but the market stayed with the format specified by Netscape in 1999. Then in 2002, at UserLand we did a deal with the NY Times to get their news flowing through RSS, and in the next year, the <i>entire news world supported RSS.</i> That's the story. You can write all about who did what in a background story, but the big story, the miracle, mostly remains untold. What matters is an open format took root and retained its simplicity. And it pays to understand why it was not a strong enough foundation to be successful, first because the vendors didn't work with each other, and then because Twitter made subscription one click, where it was ridiculous how hard it was to subscribe to a feed in RSS. We should learn from this, and not repeat the same mistakes, and of course until the real story is out there, we can't learn from it. This is a 14-minute podcast. I cut off the last five minutes because I got lost in the weeds. All of this is documented in the archive of this blog and the sites it points to. And if there's interest I'll happily talk about it in a future podcast. 

<http://scripting.com/2024/06/23.html#a201841>

---

**@Dave Winer's Scripting News** (date: 2024-06-23, from: Dave Winer's Scripting News)

I saw a <a href="https://www.caranddriver.com/tesla/cybertruck">Tesla truck</a> parked in Woodstock yesterday. I wasn't prepared for how big it was. It's an impressive looking machine. 

<http://scripting.com/2024/06/23.html#a194645>

---

## Turn Off The Pillow Machines

date: 2024-06-23, from: Tedium site

Amazon’s plans to shift its packaging strategy points at a new front in the lengthy tug of war between paper and plastic—a war that started in grocery stores. 

<https://feed.tedium.co/link/15204/16722714/paper-vs-plastic-amazon-shipping>

---

## Fighting bots

date: 2024-06-23, from: Manu - I write blog


                <p>With great timing, a post by Nicolas titled “<a href="https://thejollyteapot.com/2024/06/23/should-i-remove-this-blog-from-google-search">Should I remove this blog from Google Search?</a>” landed in my RSS feed earlier today. I’ve been thinking a lot about the current phase the web is going through, especially after reading all the various news related to Perplexity AI. I don’t think they’re especially bad or wrong in what they’re doing, I’m sure the other companies are equally as bad and they’re also not giving half of a fuck about ingesting whatever they can find if it helps make their products better. They don’t care about book authors, they don’t care about journalists and they for sure don’t care about small personal bloggers.</p>
<p>That brings up the question: what do we do? What even can we do? It’s obvious that robots.txt is no longer an option because most companies don’t even bother checking it. We can try to block the user agents at a server level but they can avoid that by simply sending a generic UA. We could de-list our sites but that would make it very hard for actual users to find our content and I suspect the point of writing for most of us is to share and connect with others. The legal system sure ain’t gonna fix this situation anytime soon. So what’s left? I guess there are only two options left:</p>
<ol>
<li>Accept the fact that some dickheads will do whatever they want because that’s just the world we live in</li>
<li>Make everything private and only allow actual human beings access to our content</li>
</ol>
<p>Both solutions are suboptimal. Reading Nicolas's post made me also think about something else. He wrote:</p>
<blockquote>
<p>In the case of Perplexity for example, a company that obviously steals content, lies, doesn’t really credit its sources, and — on top of it all — ignores the robots.txt rules from websites. If I were the TechCrunch, the New York Times, and the Financial Times of the world, I would simply stop reporting on the company. Not a blip on the radar, radio silence, except for their next fuck up. And then good luck finding investors if no one talks about you. They had their chance, they blew it.</p>
</blockquote>
<p>What if Google decided to do that? What if Google decided to not return any result related to a company like Perplexity? I know it’s obviously not going to happen but wouldn’t that be funny?</p>                <hr>
                <p>Thank you for keeping RSS alive. You're awesome.</p>
                <p><a href="mailto:hello@manuelmoreale.com">Email me</a> ::
                <a href="https://manuelmoreale.com/guestbook">Sign my guestbook</a> :: 
                <a href="https://ko-fi.com/manuelmoreale">Support for 1$/month</a> :: 
                <a href="https://manuelmoreale.com/supporters">See my awesome supporters</a> :: 
                <a href="https://buttondown.email/peopleandblogs">Subscribe to People and Blogs</a></p>
             

<https://manuelmoreale.com/@/page/IWpwwDK1x1Oy2Vmo>

---

## Gibraltar, United Kingdom

date: 2024-06-23, from: mrusme blog

"Gibraltar is a British Overseas Territory and city located at the southern
tip of the Iberian Peninsula. It has an area of 6.7 km2 (2.6 sq mi) and is
bordered to the north by Spain (Campo de Gibraltar)." 

<https://xn--gckvb8fzb.com/travel/uk/gibraltar/>

---

## Property Progress: Septic Tank Removal

date: 2024-06-23, updated: 2024-06-23, from: Russell Graves, Syonyk's Project Blog

 

<https://www.sevarg.net/2024/06/23/septic-tank-removal/>

---

**@Dave Winer's Scripting News** (date: 2024-06-23, from: Dave Winer's Scripting News)

<div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/06/23/wordleKitty.png"></center>The splendor of Wordle Kitty.</div> 

<http://scripting.com/2024/06/23.html#a141922>

---

**@Dave Winer's Scripting News** (date: 2024-06-23, from: Dave Winer's Scripting News)

There's a new star in the kittyverse, <a href="https://imgs.scripting.com/2024/06/23/wordleKitty.png">Wordle Kitty</a>. I let her do my Wordle-play. Today, she was <a href="https://www.facebook.com/photo.php?fbid=2272846162922776&set=a.113966572144090&type=3&notif_id=1719149825702718&notif_t=feedback_reaction_generic&ref=notif">feeling</a> a little under the weather so Wordle Kitty checked into the town urgent care center where they gave her some medicine which gave her the strength for a “splendid” performance at the days Wordle puzzle. So while she’s feeling a bit ill under it all is a feeling of splendor and the usual over the top cuteness! :-) 

<http://scripting.com/2024/06/23.html#a141451>

---

## Does personal AI require Big Compute?

date: 2024-06-23, from: Doc Searls (at Harvard), New Old Blog

I don&#8217;t think it does. Not for everything. We already have personal AI for autocomplete. Do we need Big Compute for a personal AI to tell us which pieces within our Amazon orders are in which line items in our Visa statements? (Different items in a shipment often appear inside different charges on a card.) [&#8230;] 

<https://doc.searls.com/2024/06/23/does-personal-ai-require-big-compute/>

---

## 
                bevelbar + infofeld2 get a long overdue revamp
            

date: 2024-06-23, updated: 2024-06-23, from: Uninformative blog

 

<https://www.uninformativ.de/blog/postings/2024-06-23/0/POSTING-en.html>

---

## Total Recall

date: 2024-06-23, from: Status-Q blog

The tech news has had a lot of coverage recently of Microsoft&#8217;s proposed &#8216;Recall&#8216; system, which (as a very rough approximation) takes a screenshot of your display every five seconds, and uses their AI-type Copilot system to allow you to search it. &#8220;What was that cafe or restaurant that someone in the call recommended yesterday?&#8221; <a class="more-link excerpt-link" href="https://statusq.org/archives/2024/06/23/12093/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<https://statusq.org/archives/2024/06/23/12093/>

---

## Go West

date: 2024-06-23, from: Status-Q blog

We&#8217;ve been away for the last week or so on the south coast of Cornwall, and it was a great trip. We had our folding e-bikes inside the van, and our little boat behind, which meant it wasn&#8217;t always the easiest setup to take along narrow Cornish lanes, especially if we found ourselves needing to <a class="more-link excerpt-link" href="https://statusq.org/archives/2024/06/23/12084/">Continue Reading<span class="glyphicon glyphicon-chevron-right"></span></a> 

<https://statusq.org/archives/2024/06/23/12084/>

---

## Andrew S. Tanenbaum receives ACM Software System Award

date: 2024-06-23, from: OS News

Andrew S. Tanenbaum, professor emeritus of Computer Science at VU Amsterdam, receives the ACM Software System Award for MINIX, which influenced the teaching of Operating Systems principles to multiple generations of students and contributed to the design of widely used operating systems, including Linux. Tanenbaum created MINIX 1.0 in 1987 to accompany his textbook, Operating Systems: Design and Implementation. MINIX was a small microkernel-based UNIX operating system for the IBM PC, which was popular at the time. It was roughly 12,000 lines of code, and in addition to the microkernel, included a memory manager, file system and core UNIX utility programs. It became free open-source software in 2000. ↫ VU Amsterdam website Definitely a deserved award for Tanenbaum, and it&#8217;s a minuscule bit of pride that VU Amsterdam happens to be my Alma mater. He also wrote an article for OSNews way back in 2006, detailing MINIX 3, which is definitely a cool notch to have on our belt. 

<https://www.osnews.com/story/140041/andrew-s-tanenbaum-receives-acm-software-system-award/>

---

## MIME, RSS, and existential torment

date: 2024-06-23, from: Ze Iaso's blog

TL;DR: how I fixed my RSS feed by installing mailcap so I don't get tormented by mimes 

<https://xeiaso.net/blog/2024/fixing-rss-mailcap/>

---

## Full Circle Weekly News 371

date: 2024-06-23, from: Full Circle Magazine

<ul>
<li>
<p><a href="https://parrotsec.org/blog/2024-06-05-parrot-6.1-release-notes/">Release of Parrot 6.1:</a></p>
</li>
<li>
<p><a href="https://www.nntp.perl.org/group/perl.perl5.porters/2024/06/msg268252.html">Perl 5.40.0 available:</a></p>
</li>
<li>
<p><a href="https://github.com/brunodev85/winlator/releases/tag/v7.0.0">Release of Winlator 7.0:</a></p>
</li>
<li>
<p><a href="https://www.webosose.org/blog/2024/06/05/webos-ose-2-26-0-release/">webOS Open Source Edition 2.26:</a></p>
</li>
<li>
<p><a href="https://lists.freedesktop.org/archives/systemd-devel/2024-June/050407.html">Release of systemd system manager 256 with run0 utility to replace sudo:</a></p>
</li>
<li>
<p><a href="https://news.opensuse.org/2024/06/12/leap-unveils-choices-for-users/">Release of openSUSE Leap 15.6:</a></p>
</li>
<li>
<p><a href="https://www.stamus-networks.com/pr/13-june-2024">SELKS 10 is available:</a></p>
</li>
<li>
<p><a href="https://www.ipfire.org/blog/ipfire-2-29-core-update-186-released">Releases of IPFire 2.29 Core 186:</a></p>
</li>
<li>
<p><a href="https://www.opengroup.org/austin/">POSIX 1003.1-2024 standard approved:</a></p>
</li>
<li>
<p><a href="https://pointieststick.com/2024/06/14/this-week-in-kde-final-plasma-6-1-polishing-and-new-features-for-6-2/">New UI Design Guidelines for KDE Applications:</a></p>
</li>
<li>
<p><a href="https://github.com/ice-wm/icewm/releases/tag/3.6.0">Release of the IceWM 3.6.0:</a></p>
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

<https://fullcirclemagazine.org/podcasts/podcast-371/>

