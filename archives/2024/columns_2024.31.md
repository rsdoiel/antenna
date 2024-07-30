---
title: columns 2024.31
updated: 2024-07-30 08:05:26
---

# columns 2024.31

(date: 2024-07-30 08:05:26)

---

##  Germans are installing &#8220;plug-and-play&#8221; solar panels to feed energy back to the... 

date: 2024-07-30, updated: 2024-07-30, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045031-germans-are-installing-pl>

---

## Fixing curl install failures with Ansible on Red Hat-derivative OSes

date: 2024-07-30, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Fixing curl install failures with Ansible on Red Hat-derivative OSes</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>Over the past few months, I've noticed some of my automation failing on Red Hat-derivative OSes like Rocky Linux and AlmaLinux. The reason for this has to do with the inclusion of a <code>curl-minimal</code> package in some distros, which conflicts with <code>curl</code> if you try installing the full package.</p>

<p>Unfortunately, the fix for this is a little strange, and so only ends up in Ansible's <a href="https://docs.ansible.com/ansible/latest/collections/ansible/builtin/dnf_module.html">dnf</a> module, not in the more cross-compatible <a href="https://docs.ansible.com/ansible/latest/collections/ansible/builtin/package_module.html">package</a> module.</p>

<p>The error I was seeing is like:</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-07-30T09:40:50-05:00" title="Tuesday, July 30, 2024 - 09:40" class="datetime">July 30, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/fixing-curl-install-failures-ansible-on-red-hat-derivative-oses>

---

## Hacking Pi firmware to get the fastest overclock

date: 2024-07-30, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Hacking Pi firmware to get the fastest overclock</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/raspberry-pi-5-smoky-overclock.jpeg" alt="Raspberry Pi 5 with dry ice smoke surrounding it"></p>

<p>Since boosting my Pi 5 from the default 2.4 GHz clock to <a href="https://www.jeffgeerling.com/blog/2024/raspberry-pi-5-can-overclock-314-ghz">3.14 GHz on Pi Day</a>, I've wanted to go faster. Especially since many other users have topped my Geekbench scores since then :)</p>

<p>In March, Raspberry Pi introduced new firmware that unlocked frequencies above 3,000 MHz for overclocking. This summer, <a href="https://www.jeffgeerling.com/blog/2024/numa-emulation-speeds-pi-5-and-other-improvements">NUMA Emulation patches</a> boosted performance another 5-10% through memory access optimizations.</p>

<p>But even with a <a href="https://www.reddit.com/r/overclocking/comments/3d1y4j/comment/ct1sk4e/?utm_source=share&amp;utm_medium=web3x&amp;utm_name=web3xcss&amp;utm_term=1&amp;utm_content=share_button">golden sample</a> Pi 5, I haven't seen anybody go much beyond 3.1 or 3.2 GHz. The problem seemed to be power supply—the Pi's firmware limits the SoC to a maximum of 1.000V.</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-07-30T09:02:57-05:00" title="Tuesday, July 30, 2024 - 09:02" class="datetime">July 30, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/hacking-pi-firmware-get-fastest-overclock>

---

**@Dave Winer's Scripting News** (date: 2024-07-30, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/18/patrioticKitty.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Like 193K others I tuned into <a href="https://apnews.com/article/harris-supporters-by-ethnic-background-white-dudes-b474af62f6b225c71cde16be7e9eb077">White Dudes For Harris</a> last night. Please, let that be the last time we do that. I felt like it might as well have been <i>Slave Owners for Harris</i> or <i>Reformed Republicans for Harris.</i> I don't have anything against people of my gender and approximate race, but I also am a child of Holocaust survivors, and I happen to be one of the elites the Repubs claim to hate, and also am one of at least two castes that Democrats tend to blame for all our problems (other than White Dudes). I think we've done enough segregation for one campaign, now please please I beg you, let's <i>work together,</i> regardless of labels, to save the country we all love. I have a philosophy, I don't care how you got to the party, if you took a subway, walked, rode a bike, or came by Uber or a Cadillac limousine. We all got here, and have a common purpose, so lets all love each other and party our way to victory. Regardless of race, creed, color or whatever. 

<http://scripting.com/2024/07/30.html#a123918>

---

## Gist of Go: Wait groups

date: 2024-07-30, from: Anton Zhiyanov blog

Waiting for goroutines to finish. 

<https://antonz.org/go-concurrency/wait-groups/>

---

## Providing Security Updates to Automobile Software

date: 2024-07-30, updated: 2024-07-30, from: Bruce Schneier blog

<p>Auto manufacturers are <a href="https://www.wired.com/story/cars-are-now-rolling-computers-so-how-long-will-they-get-updates-automakers-cant-say/">just starting to realize</a> the problems of supporting the software in older models:</p>
<blockquote><p>Today’s phones are able to receive updates six to eight years after their purchase date. Samsung and Google provide Android OS updates and security updates for seven years. Apple <a href="https://support.apple.com/en-us/102772">halts servicing</a> products seven years after they stop selling them.</p>
<p>That might not cut it in the auto world, where the average age of cars on US roads is only going up. A <a href="https://www.spglobal.com/mobility/en/research-analysis/average-age-vehicles-united-states-2024.html">recent report</a> found that cars and trucks just reached a new record average age of 12.6 years, up two months from 2023. That means the car software hitting the road today needs to work­&#8212;and maybe even improve&#8212;­beyond 2036. The average length of smartphone ownership is just ...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/07/providing-security-updates-to-automobile-software.html>

---

## Gist of Go: Goroutines

date: 2024-07-30, from: Anton Zhiyanov blog

Let's write a concurrent program in Go! 

<https://antonz.org/go-concurrency/goroutines/>

---

## Gist of Go: Concurrency

date: 2024-07-30, from: Anton Zhiyanov blog

Interactive book on concurrent programming with many exercises. 

<https://antonz.org/go-concurrency/>

---

## 2024-07-30 Fight On! Magazine #15

date: 2024-07-30, from: Alex Schroeder's Blog

<h1 id="2024-07-30-fight-on-magazine-15">2024-07-30 Fight On! Magazine <a class="tag" href="/search/?q=%2315">#15</a></h1>

<p>Pretty amazing news:</p>

<blockquote>
<p>After ten long years we are back to <em>Fight On!</em> once more!</p>
</blockquote>

<p>And it includes the <a href="Caverns_of_Slime">Caverns of Slime</a>! So now there&rsquo;s a way to get them in <a href="http://www.lulu.com/shop/ignatius-umlaut/fight-on-15/paperback/product-65qpr2w.html">print</a> and <a href="http://www.lulu.com/shop/ignatius-umlaut/fight-on-15-pdf-edition/ebook/product-84kg7gz.html">PDF</a>, together with a lot of other good stuff.</p>

<p>Table of Contents:</p>

<ul>
<li>Ten Ways to Holmesify your Game (Zach Howard) 3</li>
<li>Special Ability Charts (Attronarch) 4</li>
<li>The Orthogonal Dwarf (Olle Skogren) 11</li>
<li>Gremlins! (Calithena) 14</li>
<li>Maze Master’s Miscellany (Alex Schroder &amp; Cal) 15</li>
<li>The Catacombs under Old Samora (Philipp H.) 17</li>
<li>Knights &amp; Knaves: Holmes Town Heroes (Tony A. Rowe) 28</li>
<li>Bringing It All Back Holmes (Clark/Grodog/Cal) 30</li>
<li>Maps from the Maze of Peril (J. Eric Holmes) 34</li>
<li>Distributary of Darkness (Alex Zisch) 36</li>
<li>The Silken See (Motley Dice) 37</li>
<li>Grognard’s Grimoire (Richard Rittenhouse) 41</li>
<li>The Wizard’s Satchel (J. Blasso-Gieseke) 43</li>
<li>Artifacts, Adjuncts, and Oddments (Rittenhouse) 44</li>
<li>Victory or Death! (Gabor Lux) 46</li>
<li>Megadungeon Workshop Extravaganza! (Kesher) 50</li>
<li>Calvero! (István Boldog-Bernád) 53</li>
<li>Creepies &amp; Crawlies (James Maliszewski) 61</li>
<li>Tables for Fables (Al, Greco, Wetzel, and Rients) 63</li>
<li>The Darkness Beneath (Alex Schroder &amp; Lior Wehrli) 68</li>
<li>Henchmen-Я-Us: Pole Arm Caddies! (Calithena) 91</li>
<li>Chainmail: Battle for Bronzolo (Settembrini) 92</li>
<li>Doxy, Urgent Care Cleric (Linneman &amp; Green) 98</li>
<li>Education of a Magic User (Douglas Cox) 99</li>
<li>Wham! (Tom Gordon) 100</li>
</ul>

<p>Front cover by Tom Gordon (facebook.com/tgordo). Back cover by Mitzi! Fight On! logo by Jeff Rients. J. Eric Holmes photo by Steve Pyryezstov. Images by Germille (2), Cameron Hawkey (cameronhawkey.com; 3, 25, 29, 33, 40, 92, 97), Allan T. Grohe Jr. (greyhawkonline.com/grodog; 6), Peter Mullen (instagram.com/pmullenillustrations; 10, 40), J. Blasso-Gieseke (charybdispress.com; 11, 64), Micheal Russell (12, 94), Black Blade Publishing (facebook.com/blackbladepublishing; 14, 49), Patrick Farley (15, retro 16, 67), Philipp H. (18), Philipp Knopp (21, 22), Gabor Lux (beyondfomalhaut.blogspot.com; 27), Justin Russell (32), Jean-Francois Beaulieu (32), Chris Holmes (33), J. Eric Holmes (34, 35), Alex Zisch (36, 44), Motley Dice (motleydice.net; 37, 38, 39), Ed Heil (edheil@fastmail.fm; 38), John Tenniel (40), Mac Teg (macteg.com, 45, 63), Raymond Perry (46, 47), The Antique Alumni (47, 48), Pacesetter Games (pacesettergames.com; 49), The Dead Victorians (54, 55, 56, 58), István Boldog-Bernád (57, 59), Jason Sholtis (roll1d12@blogspot.com; 61, 62), Zhu Bajiee (realmofzhu@blogspot.com; 61. 62, 63), Robert S. Conley (68), Ndege Diamond (70,80), Alex Schroder (71, 79, 81), Kelvin Green (kelvingreen.blogspot.com; 82, 91, 98), Anthony Stiller (83), Niel-Jan Que (89), Settembrini (93) Knights &amp; Knaves and Creepies &amp; Crawlies logos by Lee Barber. Tables for Fables logo derived from one by Age of Fable.</p>

<p><a class="tag" href="/search/?q=%23RPG">#RPG</a> <a class="tag" href="/search/?q=%23Fight_On">#Fight On</a> <a class="tag" href="/search/?q=%23Caverns_of_Slime">#Caverns of Slime</a></p> 

<https://alexschroeder.ch/view/2024-07-30-fight-on>

---

## Kamala and the politics of joy

date: 2024-07-30, from: Robert Reich's blog

Versus Trump&#8217;s politics of grimness 

<https://robertreich.substack.com/p/kamala-and-the-politics-of-joy>

---

## July 29, 2024

date: 2024-07-30, from: Heather Cox Richardson blog

One of the advantages of refusing the Democratic nomination for president is that his decision to do that has left President Joe Biden in the position of being above the political fray and being able to act for the good of the whole country. 

<https://heathercoxrichardson.substack.com/p/july-29-2024>

---

## Election Countdown, 99 Days to Go: Who Is Tim Walz?

date: 2024-07-30, from: James Fallows, Substack

A governor, a six-term Congressman, a National Guard artillery specialist, a school teacher for 20 years&#8212;and a geographer. A speech that will introduce you to him, and that contains surprises. 

<https://fallows.substack.com/p/election-countdown-99-days-to-go>

---

**@Dave Winer's Scripting News** (date: 2024-07-30, from: Dave Winer's Scripting News)

Like <a href="https://en.wikipedia.org/wiki/Cholesterol">cholesterol</a>, there's "good weird" and "bad weird." I <a href="https://www.threads.net/@davew/post/C-AoGfspfFB">think</a> we all know which kind of <a href="https://www.salon.com/2024/07/29/old-and-quite-weird-democrats-finally-discover-new-effective--and-hate-it/">weird</a> the Repubs are. 

<http://scripting.com/2024/07/29.html#a004743>

---

## Apple Intelligence Hits Beta With New Beta OS Releases for iOS 18.1, iPadOS 18.1, and MacOS 15.1 Sequoia

date: 2024-07-29, updated: 2024-07-29, from: Daring Fireball

 

<https://sixcolors.com/post/2024/07/new-betas-for-ios-18-1-ipados-18-1-and-macos-sequoia-bring-some-apple-intelligence-features/>

---

## Pretty things I saw in Bellingham

date: 2024-07-29, from: Tracy Durnell Blog

A couple friends and I day-tripped up to Bellingham, a small coastal city near the Canadian border, over the weekend. I went to college there, but haven&#8217;t been back in ages, and my friends had never been before. We explored around downtown and the Fairhaven neighborhood, ate a lot of food, and soaked up the [&#8230;] 

<https://tracydurnell.com/2024/07/29/pretty-things-i-saw-in-bellingham/>

---

## Learning your own learning process

date: 2024-07-29, from: Tracy Durnell Blog

I love Nick Zentner&#8217;s videos because he&#8217;s so good at describing his thinking, especially what he is looking at and why. He pulls in reference resources, learning from others even as he makes that learning his own. Borrowing someone else&#8217;s notes really doesn&#8217;t help because it&#8217;s the taking of the notes that matters &#8212; we [&#8230;] 

<https://tracydurnell.com/2024/07/29/learning-your-own-learning-process/>

---

##  Drum Beat Typography 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/drum-beat-typography>

---

## Computation: Math and the Church-Turing Thesis

date: 2024-07-29, updated: 2024-07-29, from: Ron Garret

(Part 9 in a series on the scientific method)In the last installment of this series I addressed a philosophical question: what does it mean for a mathematical statement to be true?&nbsp; I tackled this in the context of a general definition of scientific truth, namely, that a statement is true if it corresponds on some way to the actual state of affairs in objective reality.(Note that this 

<https://blog.rongarret.info/2024/07/computation-math-and-church-turing.html>

---

##  Ran across this hilariously nonsensical gymnastics commentary by Joe Tracini this morning... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045030-ran-across-this-hilarious>

---

## Freedom

date: 2024-07-29, from: Dan Rather's Steady

A Campaign Theme with a Double Meaning 

<https://steady.substack.com/p/freedom>

---

##  Parker or Driver? 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/parker-or-driver>

---

##  How Democracy Happens: First Gradually and Then Suddenly 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/how-democracy-happens-first-gradually-and-then-suddenly>

---

## $1000 UBI financial experiment

date: 2024-07-29, from: Tracy Durnell Blog

Cash is one important piece of the puzzle. The impact may be limited without other resources like health care and child care. &#160; See also: Trust people to know what they need &#8220;UBI&#8221; experiment in Tacoma UBI is a society-level failsafe for its people A better dream 

<https://tracydurnell.com/2024/07/29/1000-ubi-financial-experiment/>

---

## July 28, 2024

date: 2024-07-29, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/july-28-2024-040>

---

##  Lithub: The Republicans&#8217; Project 2025 is disastrous for books. &#8220;Project 2025 is... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045026-lithub-the-republicans-pr>

---

##  10 settings to tweak to increase iPhone battery life, including turning off... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045001-10-settings-to-tweak-to>

---

##  WWW: The Way We Were 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/www-the-way-we-were-1>

---

##  Margaret Sullivan: &#8220;I urge news decision-makers to take Trump&#8217;s authoritarian desires very... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045024-margaret-sullivan-i-urge->

---

##  &#8220;None of us knows if we can do this. And we are... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045023-none-of-us-knows-if>

---

**@Dave Winer's Scripting News** (date: 2024-07-29, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2022/01/21/handmaidsAndMan.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Here's a <a href="https://imgs.scripting.com/2024/07/29/twowaysofsupport.png">perfect illustration</a> how ChatGPT can improve customer relations. I bought an iPhone that I now don't need, and it's arriving today via FedEx. I wanted to know whether I should just refuse delivery, or accept it and then return it. Obviously it's easier for me to refuse. I asked ChatGPT and it gave me a detailed reply. Apple's chatbot saw it as a "technical" question and wasn't prepared to help. Sales support is one of those applications where cost is totally justified. A human helper would cost a lot more I imagine than a LLM chat system. I tried calling 1-800-CALL-APPLE and talked to a human who was very nice, but couldn't find anything in her manual about refusing delivery. 

<http://scripting.com/2024/07/29.html#a140845>

---

**@Dave Winer's Scripting News** (date: 2024-07-29, from: Dave Winer's Scripting News)

Is there anyone here <a href="https://x.com/davewiner/status/1817913179789218236">within earshot</a> who is involved in doing the web stuff for the Harris campaign? 

<http://scripting.com/2024/07/29.html#a135108>

---

##  Behind the scenes shots of iconic album covers, including those from Björk,... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045002-behind-the-scenes-shots-o>

---

## New Research in Detecting AI-Generated Videos

date: 2024-07-29, updated: 2024-07-29, from: Bruce Schneier blog

<p>The <a href="https://www.livescience.com/technology/artificial-intelligence/new-ai-algorithm-flags-deepfakes-with-98-accuracy-better-than-any-other-tool-out-there-right-now">latest</a> in what will be a continuing arms race between creating and detecting videos:</p>
<blockquote><p>The new tool the research project is unleashing on deepfakes, called &#8220;MISLnet&#8221;, evolved from years of data derived from detecting fake images and video with tools that spot changes made to digital video or images. These may include the addition or movement of pixels between frames, manipulation of the speed of the clip, or the removal of frames.</p>
<p>Such tools work because a digital camera&#8217;s algorithmic processing creates relationships between pixel color values. Those relationships between values are very different in user-generated or images edited with apps like Photoshop...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/07/new-research-in-detecting-ai-generated-videos.html>

---

## 2024-07-27 Tired of programming

date: 2024-07-29, from: Alex Schroeder's Blog

<h1 id="2024-07-27-tired-of-programming">2024-07-27 Tired of programming</h1>

<p>My summer break has begun, and I am tired.</p>

<p>I wanted to work on some sort of editor.
I contributed some lines to Anvil, an Acme-inspired editor, and then I figured I should go back to text editing because writing acceptable GUI editing is just sooo much effort. So now I’m trying to use ed again…
I&rsquo;m experimenting with using <code>rlwrap</code> around <code>ed</code> and it&rsquo;s not so bad if you&rsquo;re just writing, like writing an email.
But really writing, organizing, moving things around… it really doesn&rsquo;t work all that well.
I had imagined a sort of conversational UI – which I guess ed has? – if ed is your grumpiest of companions! – and I guess I was looking at my Oddmu site generator and Markdown file server and thinking: what sort of editor would I need to maintain this?
What sort of minimal SVG editing capabilities would be nice to have? That was my starting point.
Then I dropped the graphics because writing that seemed like a pain.
Then I started thinking about the GUI components: using fonts with Harfbuzz, Unicode support, hyphenation (per language), spell-checking (per language), and on and on.
It&rsquo;s too much.</p>

<p>But where does that leave me? Adding a few features to ed?
Am I in fact reinventing vi, badly?</p>

<p><a href="2024-06-01-editor">2024-06-01 Fonts are important</a>,
<a href="2024-06-13-anvil">2024-06-13 Anvil Editor and multiple cursors</a>,
<a href="2024-07-24-ed">2024-07-24 My ed, wondering</a></p>

<p>I wanted to work on a local Gridmapper variant, written in Common Lisp.
I already have a working prototype in Common Lisp and I already have a Javascript web application in production.
This is a single file, a stand-alone SVG+Javascript web application. It works online and offline.
Thus, my entire tinkering with CL right now has as its goal to produce a native application that would work without a browser.</p>

<p>Whenever I start working on native GUI stuff, like working with SDL2 or Cairo or similar libraries, my eyes start bleeding.
Vanilla JS and the browser really is a pretty nice virtual machine available to many of us.
Having spent a day trying to get SDL2, SDL2 gfx and Cairo sorted out for this Common Lisp app I&rsquo;m looking at really makes me want to drop it all for another two years and focus on JavaScript instead.
It can&rsquo;t be that bad! Javascript gives me the DOM and SVG and all that, practically for free…</p>

<p>And three different bindings Common Lisp bindings for SDL2 in various states of neglect is draining.
Switching from one to the other is tricky since the first one had many idiomatic helpers functions that the other is lacking.
But the first one is lacking a gfx port.
Then again, I guess I can add circle drawing using lines.</p>

<p>Everything takes so long. So damn long.</p>

<p><a href="2022-07-20_Gridmapper_CL">2022-07-20 Gridmapper CL 5</a>, <a href="2024-07-24-gridmapper-local">2024-07-24 Gridmapper Local</a></p>

<p>A while ago I started collecting links with quotes instead of relying on browser bookmarks or third parties. I remember at one point my bookmarks were just HTML files generated by the browser. Good times! And there was Delicious, a service now defunct, I guess. So now I keep <a href="Bookmarks">bookmarks on this site</a>. It&rsquo;s great.</p>

<p>I wondered whether I should write a tool that monitors those pages, and when new items get added, a feed is updated.
Just a little program… it doesn&rsquo;t seem hard. So I gave it try.  I like documentation first, these days so I began with a man page for it. Good, good. Then I though that perhaps I should use the same Markdown parser as Oddmu uses.
So I needed to write this tool in Go. How hard can it be?
It&rsquo;s a bit harder than writing it in Perl.
Oh, and I needed to parse the RSS file, too.
Or use SQLite to store data.
It keeps getting harder.</p>

<p>Well, I spent some time on it and now I&rsquo;m tired again.
This too, takes too long!</p>

<p>I feel defeated. Am I too impatient?</p>

<p>I should read a book.</p>

<p><a class="tag" href="/search/?q=%23Programming">#Programming</a></p>

<p><strong>2024-07-27</strong>. In an attempt to overcome my sadness, I decided to spice up my shell life…</p>

<pre><code># hipster shell
alias ls='echo Using exa instead;exa'
alias du='echo Using dust instead;dust'
alias top='echo Using htop instead;htop'
alias find='echo Using fd instead;fd'
alias grep='echo Using rg instead;rg'
alias files='echo Using yazi instead;yazi'
alias cal='echo Using khal instead;khal'
alias screenshot='grimshot'
alias copy='wl-copy'
alias paste='wl-paste'
</code></pre>

<p>I set up <code>khal</code> and <code>khard</code> which required me to set up <code>vdirsyncer</code> to sync the remote calendars (and contacts) to local copies. This is also good for backup, I guess.</p>

<p>Let me know if you know of other such tools.</p>

<p><strong>2024-07-29</strong>. I overcame my block and wrote the bookmarks-to-feed program in Perl: <a href="https://src.alexschroeder.ch/bookmark-feed.git">bookmark-feed</a>. 🔖 🤝 <img loading="lazy" src="/pics/rss.svg" alt="RSS" /></p>

<p>I installed a daily cron job:</p>

<pre><code>47  23  *  *   *     /usr/bin/nice /home/alex/perl5/perlbrew/perls/perl-5.40.0/bin/bookmark-feed /home/alex/alexschroeder.ch/wiki/*_Bookmarks.md /home/alex/alexschroeder.ch/wiki/*-bookmarks.md /home/alex/alexschroeder.ch/wiki/bookmarks.rss
</code></pre>

<p>The readable variant is this: <code>bookmark-feed markdown-files… feed-file</code>.
The files it looks at once a day are my <a href="Bookmarks">Bookmarks</a>.
The feed it generates is <a href="/wiki/bookmarks.rss">bookmarks.rss</a>.
The database it uses is <a href="/wiki/bookmarks.db">bookmarks.db</a>.</p>

<p>It doesn&rsquo;t do expiration from the database but uses only the last 40 items for the feed.</p>

<p>When populating the database, all I had was the timestamp of the Markdown pages, so the existing bookmarks are all relatively unsorted – they are sorted by the timestamp of the most recent addition to the whole category, which pretty weird.</p> 

<https://alexschroeder.ch/view/2024-07-27-tired>

---

## The torch is passed: from MAGA throwbacks to America’s future

date: 2024-07-29, from: Robert Reich's blog

Friends, 

<https://robertreich.substack.com/p/the-torch-is-passed>

---

## July 28, 2024 

date: 2024-07-29, from: Heather Cox Richardson blog

Just a week ago, it seems, a new America began. 

<https://heathercoxrichardson.substack.com/p/july-28-2024>

---

## MNT Pocket Reform progress

date: 2024-07-29, from: Jirka's blog

There have  been some  changes both  on the  hardware and  the software side. The hardware part was quite important yet simple: the current CPU module has  a WiFi chip without  any cooling. As the  CPU is relatively hod (at least for the ARM) the WiFi  part is hot, too - and it seems to work bad  when hot.  So the  quick fix is  to add  a small  thermal pad (about 2 mm thick) so the chip will be connected to the heatsink. The long-term solution would be to use a cooler CPU. 

<http://jirka.1-2-8.net/20240729-0442_MNT_Pocket_Reform_progress>

---

## Monday 29 July, 2024

date: 2024-07-28, from: John Naughton's online diary

Safely grazing A photograph taken on a rural cycle ride yesterday morning. Made me think of Bach — see today’s Musical Alternative. Quote of the Day “Get out and vote. Just this time. You won’t have to do it anymore. &#8230; <a href="https://memex.naughtons.org/monday-29-july-2024/39687/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-29-july-2024/39687/>

---

## When technology moves backwards

date: 2024-07-28, from: Dave Winer's Scripting News

<p>I don't when technology moves backwards.</p>
<p>I'm always trying to push it the other way.</p>
<p>It's like being a ball player wanting to win a game.</p>
<p>Or a musician wanting to record a hit.</p>
<p>A VC wanting a 10x return.</p>
<p>A diplomat achieving growth and peace.</p>
 

<http://scripting.com/2024/07/28/223826.html?title=whenTechnologyMovesBackwards>

---

## How and why to write letters to voters

date: 2024-07-28, from: Jonudell blog

If you don&#8217;t live in a swing state, but would like to do more than just send money to help encourage voter turnout in those places, what are your options? For me the best one is Vote Forward, which orchestrates letter-writing to registered voters. I sent hundreds of such letters in 2020 and am aiming &#8230; <a href="https://blog.jonudell.net/2024/07/28/how-and-why-to-write-letters-to-voters/" class="more-link">Continue reading <span class="screen-reader-text">How and why to write letters to voters</span></a> 

<https://blog.jonudell.net/2024/07/28/how-and-why-to-write-letters-to-voters/>

---

## Apple Maps on the Web

date: 2024-07-28, updated: 2024-07-28, from: Daring Fireball

 

<https://www.apple.com/newsroom/2024/07/apple-maps-on-the-web-launches-in-beta/>

---

**@Dave Winer's Scripting News** (date: 2024-07-28, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/07/26/oldTwitterLogo.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Before Twitter broke the API, it was a quick way for me to channel items from my blog to almost all the people who follow me on the social web. Now it isn't even one of the services I use that I can post to with my writing tool (those are Bluesky, Mastodon, WordPress). None of them are anything like the aggregator of people that Twitter was, and I can't even reach it from my writing tool. I really want to solve this problem, but I absolutely can't do this on my own. No time, patience, and it's not my job to do all that coding. As observed the other day, my time should be spent on writing tools for the web and directly related products. This is the kind of project that should be handled as an open source thing. 

<http://scripting.com/2024/07/28.html#a153347>

---

## Billy Joel’s New York

date: 2024-07-28, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/billy-joels-new-york>

---

## Sunday caption contest: The choice

date: 2024-07-28, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/sunday-caption-contest-the-choice-e8b>

---

## July 27, 2024 

date: 2024-07-28, from: Heather Cox Richardson blog

It&#8217;s been a long week. 

<https://heathercoxrichardson.substack.com/p/july-27-2024>

