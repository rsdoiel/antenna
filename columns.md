---
title: columns 2024.32
updated: 2024-08-10 09:33:11
---

# columns 2024.32

(date: 2024-08-10 09:33:11)

---

## Friday Squid Blogging: SQUID Is a New Computational Tool for Analyzing Genomic AI

date: 2024-08-09, updated: 2024-08-09, from: Bruce Schneier blog

<p>Yet another <a href="https://www.cshl.edu/squid-pries-open-ai-black-box/">SQUID acronym</a>:</p>
<blockquote><p>SQUID, short for Surrogate Quantitative Interpretability for Deepnets, is a computational tool created by Cold Spring Harbor Laboratory (CSHL) scientists. It&#8217;s designed to help interpret <a href="https://www.cshl.edu/finding-the-right-ai-for-you/">how AI models analyze the genome</a>. Compared with other analysis tools, SQUID is more consistent, <a href="https://www.cshl.edu/the-digital-dark-matter-clouding-ai/">reduces background noise</a>, and can lead to more accurate predictions about the effects of genetic mutations.</p></blockquote>
<p><a href="https://www.schneier.com/blog/archives/2024/06/new-blog-moderation-policy.html">Blog moderation policy.</a></p>
 

<https://www.schneier.com/blog/archives/2024/08/friday-squid-blogging-squid-is-a-new-computational-tool-for-analyzing-genomic-ai.html>

---

## Apple Intelligence Foundation Language Models

date: 2024-08-09, updated: 2024-08-09, from: Daring Fireball

 

<https://arxiv.org/abs/2407.21075#>

---

**@Dave Winer's Scripting News** (date: 2024-08-09, from: Dave Winer's Scripting News)

Any news org with cash to invest could do to the NYT what ChatGPT is doing to Google. 

<http://scripting.com/2024/08/09.html#a174039>

---

**@Dave Winer's Scripting News** (date: 2024-08-09, from: Dave Winer's Scripting News)

Lawrence is the new Rachel. 

<http://scripting.com/2024/08/09.html#a174025>

---

**@Dave Winer's Scripting News** (date: 2024-08-09, from: Dave Winer's Scripting News)

What we call journalism in the US isn’t. 

<http://scripting.com/2024/08/09.html#a174019>

---

## August 8, 2024

date: 2024-08-09, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/august-8-2024-cc2>

---

## That Time When Twitter CEO Said Smart Things

date: 2024-08-09, from: Om Malik blog

OM:&#160;Do you think that the future of the Internet will involve machines thinking on our behalf Ev:&#160;Yes, they’ll have to. But it’s a combination of machines and the crowd. Data collected from the crowd that is analyzed by machines. For us, at least, that’s the future. Facebook is already like that. YouTube is like that. &#8230; 

<https://om.co/2024/08/09/that-time-when-twitter-ceo-said-smart-things/>

---

## My first ChatGPT app

date: 2024-08-09, from: Dave Winer's Scripting News

<p>4-minute <a href="http://scripting.com/2024/08/09/hallucination.m4a">podcast</a> about my first venture into ChatGPT via its API. </p>
<p>There's an accompanying <a href="https://github.com/scripting/chatGptHelloWorld/">GitHub repo</a>, with an example app in JavaScript that runs in the browser.</p>
<p>Includes instructions for setting up and funding a developer account, which was the biggest hurdle. </p>
<p>Functionality: It tells you <a href="https://www.google.com/search?q=site%3Ascripting.com+%22Bull+Mancuso%22">who</a> Bull Mancuso is. </p>
<p>Much excitement as I think about integrations I can now do. </p>
<p>Don't know why I waited so long. <span class="spOldSchoolEmoji">😄</span></p>
 

<http://scripting.com/2024/08/09/164417.html?title=myFirstChatgptApp>

---

## Why Fixed Wireless is Stealing the Broadband Show

date: 2024-08-09, from: Om Malik blog

When I visited the Palouse earlier this month, I spent a lot of time driving around the backroads, traveling through many small towns and communities. These towns were no bigger than a few hundred people. I kept coming across signs for “WiFiber.” As an ex-broadband reporter, I looked into the company and found out that &#8230; 

<https://om.co/2024/08/09/why-fixed-wireless-is-stealing-the-broadband-show/>

---

## 2024-08-08 Man pages

date: 2024-08-09, from: Alex Schroeder's Blog

<h1 id="2024-08-08-man-pages">2024-08-08 Man pages</h1>

<p>Here&rsquo;s a great thing on the command line. You want to use the command <strong>foo</strong> and don&rsquo;t know how, so you run <strong>man foo</strong> and read the manual page. Sometimes there will be more info in different &ldquo;sections&rdquo;. Commands are in section 1, which is why documentation would sometimes refer to the command &ldquo;foo&rdquo; as <strong>foo(1)</strong> because <strong>foo(5)</strong> might document the file format or the config file that goes along with the command.</p>

<p>If that&rsquo;s news to you, run <strong>man man</strong>. And if you find the structure bewildering, read the manual on how to write manual pages: <strong>man man-pages</strong> (section 7).</p>

<p>I&rsquo;ve embraced man pages because when I write Perl code, I can put documentation into the script such that when the script is installed, it automatically works as its own man page – this works for <a href="https://metacpan.org/dist/App-jupiter">jupiter</a>, <a href="https://metacpan.org/dist/App-BookmarkFeed">bookmark-feed</a> – it also works for bigger projects, like <a href="https://metacpan.org/dist/App-Phoebe">phoebe</a> where each extension is also a Perl module and therefore also gets its own man page.</p>

<p>For programming languages where the documentation is more focused on documenting the code, things are different. Of course, there&rsquo;s <code>pydoc</code> for Python code and <code>go doc</code> for Go code, but it&rsquo;s not great. The list of variables and functions are maybe suitable for libraries, but not for applications.</p>

<p>Since I don&rsquo;t enjoy writing man pages directly (<code>man</code> is actually a macro package for the <code>nroff</code> language, see <strong>man nroff</strong>, obviously) I write my documentation in the <a href="https://gitlab.com/ddevault/scdoc">scdoc</a> format. <a class="account" href="https://fosstodon.org/@drewdevault" title="@drewdevault@fosstodon.org">@drewdevault</a> wrote it <a href="https://drewdevault.com/2018/05/13/scdoc.html">in 2018</a>. It looks a bit like Markdown and friends and I like it. I even put a little sequence of <code>sed</code> expressions into a Makefile to turn scdoc into Markdown so that I could publish the man pages on this site, see <a href="oddmu/index">Oddµ man pages</a>.</p>

<p>When documentation for a project is a website, I wonder how they serve people offline or with bad connections. Perhaps they want to write the documentation in texinfo? I haven’t done that in a long time but I really enjoy reading a well-written manual like that. And you can get a PDF for free but I’m not sure anybody really wants that. Even a README is bad because in those rare cases where the program gets added to a distro, how will end-users find the README? Man pages are the answer.</p>

<p>README files and offline copies of the HTML documentation have multiple problems: Which directory is it, exactly? <code>/usr/doc</code> does not exist on my system. <code>/usr/share</code> lists lots of package names but these are not the docs. <code>/usr/share/doc</code> is the one! But the problems continue. Which of the directories do you check? Sometimes you&rsquo;re looking at binary and it&rsquo;s also not obvious what the package name would be. <code>find</code> is in <code>/usr/share/doc/findutils</code>, for example. And we&rsquo;re still not done. Which is the file that you want to read when you&rsquo;re faced with <code>BUGS  changelog.Debian.gz  changelog.gz  copyright  README  README.Debian  README.frames  RELEASE-NOTES.txt  WhatsNew.gz</code> – it&rsquo;s README, I guess, but I am always confused. It&rsquo;s all very confusing.</p>

<p>Compared to this, man pages are so much better.</p>

<p>And some package managers like <code>go</code>, <code>pip</code> (Python), <code>cabal</code> (Haskell) and <code>cargo</code> (Rust) don’t install any of these files, I think.</p>

<p>I suspect that many developers consider using a website like <a href="https://about.readthedocs.com/">Read the Docs</a> to be good enough. Bad luck for people who are offline or who have bad reception, in hotel rooms with bad wifi, in planes, in trains? My sister lives in the Rhine valley, on the German side, close to Switzerland, in a tiny village of a bit more than 100 people. They have no glass fibre. They have bad reception, both from Switzerland and from Germany. It&rsquo;s terrible! But even for me: I have wifi in the apartment and glass windows that act that block the signal. I have no reception on the balcony unless I use my phone as a hotspot.</p>

<p>Local documentation that is easy to find is so much better.</p>

<p>And man pages are powerful. <em>All</em> of Perl is documented in many pages. All the modules. All the switches. All the language features. I learned to program in Perl from man pages back when my browser was <a href="https://en.wikipedia.org/wiki/NCSA_Mosaic">NCSA Mosaic</a>. (I am a bit astonished to find that I still knew that acronym! But I didn’t know that it stands for National Center for Supercomputing Applications.) Anyway, what I wanted to say is that man pages can be used to document large and complex things. From the command line, they are readily accessible. With the right man reader, they can act as a hypertext, linking to other pages. They don’t have to be terse and cryptic, either. Man pages can be tutorials, introductions, FAQs, and more. And if you write man pages using a suitable format, you can still generate HTML pages with links.</p>

<p>If you&rsquo;re not writing man pages, if your community doesn&rsquo;t have the habit of writing man pages, start small. Get <code>scdoc</code> and write a little something. Skim <strong>man man-pages</strong> and learn about the conventions, then write some text files. Then use <code>scdoc &lt; text-file &gt; man-page</code> to create the file and install them into <code>~/.local/share/man</code>, following the conventions. A page from section 1 (commands) has the extension &ldquo;.1&rdquo; and goes into <code>~/.local/share/man/man1</code> whereas a page from section 5 (file formats and config files) has the extension &ldquo;.5&rdquo; and goes into <code>~/.local/share/man/man5</code>.</p>

<p><a class="tag" href="/search/?q=%23Programming">#Programming</a> <a class="tag" href="/search/?q=%23Software">#Software</a> <a class="tag" href="/search/?q=%23Documentation">#Documentation</a></p>

<p><strong>2024-08-09</strong>. At one point I was interested in <a href="2018-03-05_Troff">using troff as an alternative to LaTeX</a>, so not to write documentation but to create PDFs, and I kept eyeing the <a href="http://www.schaffter.ca/mom/mom-01.html">mom macros</a>. But before I could give them a try I discovered how to <a href="2020-07-24_Writing_Markdown,_generating_PDF">create PDFs using Markdown to HTML to PDF</a> via weasyprint and that has been my workflow ever since. For a zine I’m contributing to, however, I’m using <a href="https://www.gnu.org/software/groff/">groff</a> and the <a href="https://www.troff.org/using-ms.pdf">ms macros</a> because that’s what’s in the Makefile…</p>

<p>The reason I write this all up is that flexibeast wrote in, saying that man pages can be written using the semantics-oriented <a href="https://man.openbsd.org/mdoc.7">mdoc macros</a> instead of the presentation-oriented <a href="https://man.openbsd.org/man.7">man macros</a> – and they had written an <a href="https://github.com/flexibeast/guides/blob/master/mdoc-quickstart.md">mdoc quickstart guide</a>. Nice!</p>

<p>I really have to take a look at <a href="https://man.openbsd.org/mandoc.1">mandoc</a> as a groff alternative.</p> 

<https://alexschroeder.ch/view/2024-08-08-man-pages>

---

## People-Search Site Removal Services Largely Ineffective

date: 2024-08-09, updated: 2024-08-09, from: Bruce Schneier blog

<p>Consumer Reports has a <a href="https://innovation.consumerreports.org/wp-content/uploads/2024/08/Data-Defense_-Evaluating-People-Search-Site-Removal-Services-.pdf">new study</a> of people-search site removal services, concluding that they don&#8217;t really work:</p>
<blockquote><p>As a whole, people-search removal services are largely ineffective. Private information about each participant on the people-search sites decreased after using the people-search removal services. And, not surprisingly, the removal services did save time compared with manually opting out. But, without exception, information about each participant still appeared on some of the 13 people-search sites at the one-week, one-month, and four-month intervals. We initially found 332 instances of information about the 28 participants who would later be signed up for removal services (that does not include the four participants who were opted out manually). Of those 332 instances, only 117, or 35%, were removed within...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/08/people-search-site-removal-services-largely-ineffective.html>

---

## more curl help

date: 2024-08-09, from: Daniel Stenberg Blog

With the ever-growing number of command line options for curl, the problem of how to provide documentation and help users understand how options work and should be used is a challenge that is worth revisiting regularly. To keep iterating on. I personally often use the curl manpage to lookup descriptions for options. Often not only &#8230; <a href="https://daniel.haxx.se/blog/2024/08/09/more-curl-help/" class="more-link">Continue reading <span class="screen-reader-text">more curl help</span> <span class="meta-nav">&#8594;</span></a> 

<https://daniel.haxx.se/blog/2024/08/09/more-curl-help/>

---

## Bonus Debunking Myth: “Trump supporters are ignorant.” Bunk!

date: 2024-08-09, from: Robert Reich's blog

Many of them are responding angrily to a rigged system. It&#8217;s not enough that we beat Trump on Election Day. To beat Trumpism, we must also unrig the system. 

<https://robertreich.substack.com/p/bonus-debunking-myth-trump-supporters>

---

## August 8, 2024

date: 2024-08-09, from: Heather Cox Richardson blog

Fifty years ago, on August 9, 1974, Richard M. 

<https://heathercoxrichardson.substack.com/p/august-8-2024>

---

## Apple Announces New Fee Structure and Updated Guidelines for Apps in the EU That Link Out to the Web for Purchases

date: 2024-08-09, updated: 2024-08-09, from: Daring Fireball

 

<https://9to5mac.com/2024/08/08/apple-app-store-eu-link-out-changes/>

---

**@Dave Winer's Scripting News** (date: 2024-08-09, from: Dave Winer's Scripting News)

Someday soon <i>twitter</i> will be on <a href="https://en.wikipedia.org/wiki/List_of_generic_and_genericized_trademarks">this list</a>. 

<http://scripting.com/2024/08/08.html#a002605>

---

**@Dave Winer's Scripting News** (date: 2024-08-09, from: Dave Winer's Scripting News)

Another practical use for ChatGPT. A super techy service you use decides to require 2FA but reading their instructions you realize the docs were written by someone who hates people like you. Idea! Ask ChatGPT to translate. Out come nice instructions easy to read for people like me. Turns a dismal exercise in frustration to happiness at finding another huge stress- and time-saving application for ChatGPT. 

<http://scripting.com/2024/08/08.html#a001102>

---

## Why isn’t the media reporting on Trump’s increasing dementia? 

date: 2024-08-08, from: Robert Reich's blog

Today&#8217;s news conference should at least spur a serious inquiry 

<https://robertreich.substack.com/p/why-isnt-the-media-reporting-on-trumps>

---

## Friday 9 August, 2024

date: 2024-08-08, from: John Naughton's online diary

Free spirits Funny how plants refuse to do what you want them to do. This rose bush was supposed to enliven a dull patch in the garden fence, but instead has decided to reach for the sky. Quote of the &#8230; <a href="https://memex.naughtons.org/friday-9-august-2024/39731/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/friday-9-august-2024/39731/>

---

##  The Oldest World Map in the World 

date: 2024-08-08, updated: 2024-08-08, from: Jason Kittke's blog

 

<https://kottke.org/24/08/the-oldest-world-map-in-the-world>

---

##  Feist plays a Tiny Desk Concert for NPR.... 

date: 2024-08-08, updated: 2024-08-08, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045094-feist-plays-a-tiny-desk>

---

**@Dave Winer's Scripting News** (date: 2024-08-08, from: Dave Winer's Scripting News)

What's the best piece of <a href="https://mastodon.social/@davew/112928646857395841">advice</a> you ever got? 

<http://scripting.com/2024/08/08.html#a215839>

---

## ‘A Platform That’s Teetering on the Edge of Becoming a User-Experience Joke Akin to Windows Vista’

date: 2024-08-08, updated: 2024-08-08, from: Daring Fireball

 

<https://sixcolors.com/post/2024/08/apples-permissions-features-are-out-of-balance/>

---

## Find Any File 2.5

date: 2024-08-08, updated: 2024-08-10, from: Daring Fireball

 

<https://findanyfile.app/>

---

##  Saturday Night 

date: 2024-08-08, updated: 2024-08-08, from: Jason Kittke's blog

 

<https://kottke.org/24/08/saturday-night>

---

##  A lovely ode to soil by Ferris Jabr. &#8220;I now see soil... 

date: 2024-08-08, updated: 2024-08-08, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045093-a-lovely-ode-to-soil>

---

##  Diary Comics, July 6 

date: 2024-08-08, updated: 2024-08-08, from: Jason Kittke's blog

 

<https://kottke.org/24/08/diary-comics-july-6>

---

##  Pete Wells&#8217;s last column for the NY Times as restaurant critic: I... 

date: 2024-08-08, updated: 2024-08-08, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045091-pete-wellss-last-column-f>

---

##  Is this a new streaming device for your TV or the bar... 

date: 2024-08-08, updated: 2024-08-08, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045090-is-this-a-new-streaming>

---

## Windows as productivity tech

date: 2024-08-08, from: Tracy Durnell Blog

We&#8217;ve grown to think that technology must involve computers. We think of buildings as boxes that we put technology inside, not as technology themselves. Natural light is powerful for people of all ages, not just students. Being able to bring in fresh air by opening a window made people a little safer during the pandemic. [&#8230;] 

<https://tracydurnell.com/2024/08/08/windows-as-productivity-tech/>

---

##  Tim Walz Fixed Your Bicycle 

date: 2024-08-08, updated: 2024-08-08, from: Jason Kittke's blog

 

<https://kottke.org/24/08/tim-walz-fixed-your-bicycle>

---

**@Dave Winer's Scripting News** (date: 2024-08-08, from: Dave Winer's Scripting News)

<a href="https://en.wikipedia.org/wiki/Tim_Walz">Tim Walz</a> is <a href="https://en.wikipedia.org/wiki/Fred_Rogers">Mr Rogers</a> for adults. <a href="https://www.google.com/search?q=Tom+Hanks+snl&tbm=vid">Tom Hanks</a> should play <a href="https://www.youtube.com/watch?v=vcwFeyrH2ww">him</a> on SNL. 

<http://scripting.com/2024/08/08.html#a164705>

---

##  The Portable Feminist Reader, edited by Roxane Gay. Includes writing by Agrippa,... 

date: 2024-08-08, updated: 2024-08-08, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045088-the-portable-feminist-rea>

---

## August 7, 2024

date: 2024-08-08, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/august-7-2024-3a3>

---

**@Dave Winer's Scripting News** (date: 2024-08-08, from: Dave Winer's Scripting News)

It's wrong that posts from <a href="https://x.com/TimothyDSnyder/status/1821571215703867727">Timothy Snyder</a>, <a href="https://x.com/JoeTrippi/status/1821357451444093360">Joe Trippi</a> and <a href="https://x.com/DougJBalloon/status/1820848752531272100">NYT Pitchbot</a> are only available on Twitter. I'd like to help their posts reach a wider audience. I posted a <a href="https://dave.micro.blog/2024/08/08/great-stuff-thats.html">note</a> about this on micro.blog with a <a href="https://micro.blog/dave/43163514">place</a> to comment. 

<http://scripting.com/2024/08/08.html#a155601>

---

## Raspberry Pi Pico 2 - RP2350 adds more PIO, RISC-V cores

date: 2024-08-08, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Raspberry Pi Pico 2 - RP2350 adds more PIO, RISC-V cores</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/raspberry-pi-pico-2.jpeg" alt="Pico 2 Logo"></p>

<p>The <a href="https://www.raspberrypi.com/products/raspberry-pi-pico-2/">$5 Raspberry Pi Pico 2</a> was announced today, with a new chip, the <a href="https://www.raspberrypi.com/products/rp2350/">RP2350</a>. This silicon improves on almost every aspect of the RP2040:</p>

<ul>
<li>3 PIOs instead of 2</li>
<li>150 MHz instead of 133 MHz base clock</li>
<li>Faster Arm Cortex M33 cores <em>and</em> RISC-V Hazard3 cores</li>
</ul>

<p>I've had access to pre-release hardware and good news: even though the new chip is faster and has more features, it actually uses <em>less</em> power than RP2040, meaning if you run one of these things off a battery, it'll last longer.</p>

<p>I'll talk more about power later, but first, here's the specs.</p>

<p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/pico-pico-2-side-by-side.jpeg" alt="Pico 2 and Pico side by side comparison"></p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-08-08T10:04:29-05:00" title="Thursday, August 8, 2024 - 10:04" class="datetime">August 8, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/raspberry-pi-pico-2-rp2350-adds-more-pio-risc-v-cores>

---

## Greenwashing

date: 2024-08-08, from: David Rosenthal's blog

<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgNw44mW0LLZbkmI6PPvDKnpLWve_g_Zmbc_8N4jPX80RaL80g6oWM05vhagWeDl1u7VuRW51cPieOynKXe8MYCnt7G5hzaeZr5Fk17FRuE0lChavi8SZlMy1yQjrAFCRXFrQoTfhxKk43d0EF83s1tMSWoyug6HGmU_bP9SyF8oIDbrjFs-Mei5EKwxKk5/s897/Greenwashing.png" imageanchor="1" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="504" data-original-width="897" height="113" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgNw44mW0LLZbkmI6PPvDKnpLWve_g_Zmbc_8N4jPX80RaL80g6oWM05vhagWeDl1u7VuRW51cPieOynKXe8MYCnt7G5hzaeZr5Fk17FRuE0lChavi8SZlMy1yQjrAFCRXFrQoTfhxKk43d0EF83s1tMSWoyug6HGmU_bP9SyF8oIDbrjFs-Mei5EKwxKk5/w200-h113/Greenwashing.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://hntrbrk.com/terawulf/">Source</a></td></tr></tbody></table>
You have only to scan Molly White's <a href="https://www.web3isgoinggreat.com/"><i>Web3 is Going Just Great</i></a> to realize that <a href="https://www.quotes.net/mquote/90955">you will never find a more wretched hive of scum and villainy</a> than the cryptosphere. Everywhere you look you find lies, grift, fraud, and theft. Below the fold I discuss the latest example, in which a coal company marketing itself as "zero-carbon Bitcoin mining" is just the start.<br />
<span><a name='more'></a></span>
<br />
The legal way to make money from the wretched hives of scum and villainy in the markets is selling short. Recently, a startup called <a href="https://hntrbrk.com">Hunterbrook</a> has developed an innovative business model for doing so. Matt Levine <a href="https://www.bloomberg.com/opinion/articles/2024-04-02/a-hedge-fund-that-s-also-a-newspaper">explains</a>:<br />
<blockquote>
Hunterbrook hit upon a differentiated media business model:<br />
<ol>
<li>They would start a newsroom (Hunterbrook Media) to publish general news and investigative journalism.</li>
<li>There’s no paywall and no advertising.</li>
<li>But before each investigative piece is published, the newsroom would send it to Hunterbrook’s affiliated hedge fund (Hunterbrook Capital), which could trade on the news.</li>
<li>The hedge fund’s trading profits can — they hope! — pay the journalists’ salaries.</li>
</ol>
One way to think of this business model is that Hunterbrook is essentially an activist short-selling hedge fund, like Hindenburg Research: It investigates companies, finds problems, shorts the companies, and then noisily publishes its investigation to draw attention to the problems. But whereas Hindenburg is straightforwardly a short-selling firm, Hunterbrook’s news site is at least theoretically independent of its hedge fund, and if it publishes enough good general news then perhaps it can become more widely read and trusted — and have more stock-price impact — than a pure hedge fund.
</blockquote>
Hunterbrook's latest investigation is entitled <a href="https://hntrbrk.com/terawulf/"><i>COAL, CRYPTO, AND FALSE BRANDING: INSIDE TERAWULF’S GREENWASHING MACHINE</i></a>. Here is Terawulf's pitch:<br />
<br />
<blockquote class="twitter-tweet"><p lang="en" dir="ltr">The future is <a href="https://twitter.com/hashtag/ZeroCarbon?src=hash&amp;ref_src=twsrc%5Etfw">#ZeroCarbon</a> ♻️⚡️ and <a href="https://twitter.com/search?q=%24WULF&amp;src=ctag&amp;ref_src=twsrc%5Etfw">$WULF</a> is ahead of the curve.<a href="https://twitter.com/hashtag/Bitcoin?src=hash&amp;ref_src=twsrc%5Etfw">#Bitcoin</a> <a href="https://twitter.com/hashtag/BitcoinMining?src=hash&amp;ref_src=twsrc%5Etfw">#BitcoinMining</a> <a href="https://twitter.com/hashtag/SustainableMining?src=hash&amp;ref_src=twsrc%5Etfw">#SustainableMining</a> <a href="https://t.co/3aq4OipWld">pic.twitter.com/3aq4OipWld</a></p>&mdash; TeraWulf (@TeraWulfInc) <a href="https://twitter.com/TeraWulfInc/status/1762840210684223922?ref_src=twsrc%5Etfw">February 28, 2024</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
Hunterbrook reveals that Terawulf's claim to run on renewable power <a href="https://hntrbrk.com/terawulf/">is false</a>:<br />
<blockquote>
<ul>
<li>TeraWulf Inc. (NASDAQ: $WULF) brands itself as a “zero-carbon Bitcoin miner” — and claims its commitment to renewable energy will help it land AI data center contracts. But the New York Power Authority, which supplies 45% of the facility’s energy, told Hunterbrook Media: “None of the power that NYPA provides the firm can be claimed as renewable power.”</li>
<li>The rest of TeraWulf’s power is sourced from the New York grid, which is less than half zero-carbon, according to the New York Independent System Operator, the organization responsible for managing the state’s wholesale electric marketplace.</li>
<li>The only way TeraWulf can legally substantiate its zero-carbon claims is by purchasing renewable energy credits (RECs), according to New York and federal regulators, but a TeraWulf spokesperson confirmed that the company has not done so. “Without the REC, there is no legal claim to the renewable attributes of electricity,” a spokesperson for the New York State Energy Research and Development Authority confirmed in an email to Hunterbrook.</li>
</ul>
</blockquote>
But lying about renewables is just the tip of the iceberg. Hunterbrook reports that they <a href="https://hntrbrk.com/terawulf/">lied to get permits</a>:<br />
<blockquote>
The team behind TeraWulf promised New York State that it was “not targeting bitcoin or any other cyber currency” in a 2019 application for its facilities seen by Hunterbrook, despite seizing on the idea of bitcoin mining as a strategy as early as 2018.
</blockquote>
Hunterbrook is skeptical about Terawulf's commitment to zero-carbon mining <a href="https://hntrbrk.com/terawulf/">because</a>:<br />
<blockquote>
The company’s management team, including CEO Paul Prager, trace their roots to Beowulf Energy LLC, an operator of fossil fuel plants that previously revived a struggling coal plant to mine bitcoin. The same TeraWulf executives who claim TeraWulf’s mining is zero-carbon likely continue to manage this coal plant.
</blockquote>
Prager apparently has a <a href="https://hntrbrk.com/terawulf/">lavish lifestyle</a>:<br />
<blockquote>
Prager has been known to split his time between a “five-bedroom Fifth Avenue co-op” in Manhattan and a sprawling 250-acre estate on Maryland’s Eastern Shore, according to a 2021 profile in Washingtonian. This estate, called Maiden Point Farm, is described as “more like a small village with 20 structures,” including a “main house, English-style gardens, a pool, a tennis pavilion, a squash court,” and even a private gas station for his car collection, which includes multiple Ferraris.
</blockquote>
How is this <a href="https://hntrbrk.com/terawulf/">funded?</a>:<br />
<blockquote>
Hunterbrook’s analysis of the company’s SEC filings shows TeraWulf’s operations are deeply entwined with a constellation of entities under Prager’s control, making it difficult to discern where TeraWulf ends and Prager’s other interests begin. <br />
<br />
Beowulf Electricity & Data,  a company owned and controlled by Prager, provides TeraWulf with “infrastructure, construction, operations and maintenance and administrative services necessary to build out and operate certain Bitcoin mining centers” — functions that TeraWulf claims are “readily available from independent entities.” <br />
<br />
In 2023, TeraWulf paid $20.3 million to Beowulf for these services, representing 38% of TeraWulf’s combined operating and administrative expenses. It also accounted for more than half of the company’s $29.4 million operating loss for the year. The trend continued into 2024, with TeraWulf recognizing $3.5 million in related party expenses in the first quarter alone, amounting to 21% of its operating and administrative expenses for the quarter.
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgn6yRTuz8mAbVNa807Lj4r1qhPPwf0zQmJ7EpmWdinGsj7L0FOBq20m7-eo7UdMGsziFLdvC4cc08a8GRnmkjORyZWhxAX7cmHP-eon7GOwwLqVJ0ZirOU522g_SrD4zoXuQPdkRVtzGtZ3kNiOYwBQYlHoPIsamfK4ZnlMEaFN06bX01S_pNdOaDDx9et/s775/PragerStock.png" imageanchor="1" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="576" data-original-width="775" height="149" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgn6yRTuz8mAbVNa807Lj4r1qhPPwf0zQmJ7EpmWdinGsj7L0FOBq20m7-eo7UdMGsziFLdvC4cc08a8GRnmkjORyZWhxAX7cmHP-eon7GOwwLqVJ0ZirOU522g_SrD4zoXuQPdkRVtzGtZ3kNiOYwBQYlHoPIsamfK4ZnlMEaFN06bX01S_pNdOaDDx9et/w200-h149/PragerStock.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://hntrbrk.com/terawulf/">Source</a></td></tr></tbody></table>
Prager apears to have another way to <a href="https://hntrbrk.com/terawulf/">fund his lifestyle</a>:<br />
<blockquote>
In recent years, Prager has received a significant quantity of TeraWulf shares — through both the related party transactions and financial activities. And in an open letter published early in 2023, he shared that he hadn’t “sold a share” as “evidence of my conviction.” But since mid-2023, Prager has significantly reduced his claimed ownership of the company through a series of stock disposals.<br />
<br />
His reported ownership has dwindled, with his holdings falling to around 10 million shares compared to more than 30 million shares in 2023.
</blockquote>
Executives of Bitcoin miners have a history of looting their companies. Two years ago Paul Butler wrote in <a href="https://paulbutler.org/2022/the-problem-with-bitcoin-miners/"><i>The problem with bitcoin miners</i></a>:<br />
<blockquote>
There’s one group of people for whom bitcoin mining is an extremely lucrative business: executives. Last year, one MARA executive <a href="https://www.sec.gov/Archives/edgar/data/0001507605/000149315222011630/formdef14a.htm">earned over $220 million</a> in cash and stock-based compensation, in a year when the company’s total revenue was $150 million. RIOT’s top five executives collectively took home a more modest <a href="https://www.sec.gov/ix?doc=/Archives/edgar/data/1167419/000107997322000531/riot_10ka-123121.htm#item11">$90 million</a> in a year with a net loss.
</blockquote>
How was this <a href="https://paulbutler.org/2022/the-problem-with-bitcoin-miners/">possible?</a>::<br />
<blockquote>
This, I think, points to the crux of the problem. Investors have been happy to provide capital to these companies, looking for anything in the public markets that provides some exposure to bitcoin, without paying much attention to what the companies are doing.<br />
<br />
I don’t think it ends well.
</blockquote>
It certianly looks like everyone except Hunterbrook wasn't "paying much attention to what the companies are doing".<br />
<br />
Like many miners in the wake of <a href="https://blog.dshr.org/2024/05/one-heck-of-halvening.html"><i>One Heck Of A Halvening</i></a>, Terawulf is trying to <a href="https://pivot-to-ai">pivot to AI</a>.  Hunterbrook notes <a href="https://hntrbrk.com/terawulf/">that</a>:<br />
<blockquote>
TeraWulf has not resisted the hype, with the management team <a href="https://www.investing.com/news/company-news/cantor-fitzgerald-lifts-terawulf-stock-price-target-highlights-robust-demand-93CH-3497574">suggesting</a> it could land a similar deal. CFO Fleury specified in an <a href="https://www.alphaspread.com/security/nasdaq/wulf/earnings-calls/q1-2024">earnings call</a> earlier this year that, by leasing out all of the 300 available megawatts at Lake Mariner, the company could bring in $300 million to $450 million in hosting revenues a year. TeraWulf’s revenue last year was $69 million.
</blockquote>
But this won't happen <a href="https://hntrbrk.com/terawulf/">any time soon</a>:<br />
<blockquote>
TeraWulf doesn’t yet have AI-ready facilities, unlike competitors who made the switch to HPC data center hosting years ago. But TeraWulf announced it is on track to build a 2 MW experimental AI data center by the third quarter of this year and plans to build another 20 MW data center with a target completion date of the end of 2024.  
</blockquote>
I have only hit the highlights of Hunterbrook's work, you should go <a href="https://hntrbrk.com/terawulf/">read the whole thing</a>.<br /> 

<https://blog.dshr.org/2024/08/greenwashing.html>

---

## curl welcomes wcurl to the team

date: 2024-08-08, from: Daniel Stenberg Blog

The curl project welcomes its newest sibling into the family: wcurl. I already wrote about wcurl. I will try to not repeat myself too much here, but starting now wcurl has its new home under the curl organization umbrella. It is now an official curl project. www: https://curl.se/wcurlGitHub: https://github.com/curl/wcurl The initial developers and people behind &#8230; <a href="https://daniel.haxx.se/blog/2024/08/08/curl-welcomes-wcurl-to-the-team/" class="more-link">Continue reading <span class="screen-reader-text">curl welcomes wcurl to the team</span> <span class="meta-nav">&#8594;</span></a> 

<https://daniel.haxx.se/blog/2024/08/08/curl-welcomes-wcurl-to-the-team/>

---

## The cost of fueling my body

date: 2024-08-08, from: Dave Rupert blog

<p>I’ve become a bit obsessed with how much it costs to fuel my body during the working hours.</p>
<table>
<thead>
<tr>
<th>Item</th>
<th>Cost/Serving</th>
<th>Qty/Day</th>
<th>Cost/Day</th>
<th>Qty/Month</th>
<th>Cost/Month</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="https://daverupert.com/2023/10/snap-kitchen/">Snap Kitchen 500cal meal</a></td>
<td>$10.00</td>
<td>1</td>
<td>$10.00</td>
<td>22</td>
<td>$220</td>
</tr>
<tr>
<td>Fairlife 42g Protein Shake</td>
<td>$3.50</td>
<td>1</td>
<td>$3.50</td>
<td>22</td>
<td>$77</td>
</tr>
<tr>
<td><a href="https://daverupert.com/2023/07/liquid-death/">Liquid Death</a></td>
<td>$1.75</td>
<td>1</td>
<td>$1.75</td>
<td>22</td>
<td>$38.50</td>
</tr>
<tr>
<td>Ruta Maya Dark Roast</td>
<td>$0.25</td>
<td>3</td>
<td>$0.75</td>
<td>66</td>
<td>$16.50</td>
</tr>
<tr>
<td><a href="https://daverupert.com/2023/10/califia-farms-oat-barista/">Califia Farms Café Oat</a></td>
<td>$0.11</td>
<td>3</td>
<td>$0.33</td>
<td>66</td>
<td>$7.26</td>
</tr>
<tr>
<td>Total</td>
<td></td>
<td></td>
<td>$16.33</td>
<td></td>
<td>$359.26</td>
</tr>
</tbody>
</table>
<p>To keep me and my brain running during working hours costs me ~$359.26/month. Not much to say beyond that –no grand epiphanies– except that I think it’s too expensive. Sitting in an office by myself costs me $16.33/day (or $2/hour). This budget doesn’t include breakfast, dinner, exercise, healthcare, transit, internet, electricity, or office supplies… all necessities that enable the work. This is just the daily cost of caloric fuel to keep my body going during the nine-to-five. My family has three other humans in it too, so this seems collossaly expensive.</p>
<p>If I wanted to save money (I sort of do), here’s what I’d could try to optimize from top to bottom:</p>
<ul>
<li>I could make my own pre-made meals for about ~$2/meal. I’ve had success with this but it requires a lot of weekend logistics to execute properly. This would be the most significant cost reduction, costing only $44/month and saving $176/month.</li>
<li>I could buy whey protein in bulk. A 5 lb bag of Muscle Milk (nearest approximate flavor) is $72/bag and contains 68 servings for a reduced costs of $1.05/serving. However, one serving only has 25g of protein, so if I’d need to double the scoops. The total cost would then be $2.11/serving or $46.42/month. Buying bulk powder makes fiscal sense, but $30/month to not have to deal with drinking clumpy protein shakes and washing crusted stinky shakers seems almost worth it.</li>
<li>I considered eggs as an alternate source of protein instead. A single egg has ~6g of protein and costs about 50¢. The cost could potentially come down but the bigger issue is to get the same 42g of protein I’d need to eat 7 eggs. I don’t know if you’ve eaten eggs before but <u>7 eggs is a lot of eggs</u>. Imagine woofing down 7 sweaty hard-boiled orbs a couple times a day, yikes.</li>
<li>I could brew my own agave-sweetened tea. I’ve done this once, but the crisp flavor profile wasn’t the same so I wouldn’t call it a success. Needs more experimentation.</li>
<li>Thanks to Costco selling our favorite local coffee roaster in bulk, we have caffeine ritual costs dialed down about as low as they can go. Feel comfortable there.</li>
</ul>
<p>Lowering my lunch costs stands out as the best candidate for improvement. But <a href="https://daverupert.com/2023/10/snap-kitchen/">as I noted before</a>, adding even a small pile of extra duties risks toppling the wagon and I’m back to eating emergency $14 Spicy Chicken Sando Combos to quench my hunger. I wonder where my daily costs fit on a graph of national statistics. Is this average? Is this Bidenomic inflation? Am I making myself poor with my avocado toast? Someone who understands finances help me budget! Ack!</p> 

<https://daverupert.com/2024/08/fueling-my-body/>

---

## Bilbao, Spain

date: 2024-08-08, from: mrusme blog

"Bilbao is a city in northern Spain, the largest city in the province of
Biscay and in the Basque Country as a whole. It is also the largest city
proper in northern Spain. Bilbao is the tenth largest city in Spain, with a
population of more than 347,000 as of 2023." 

<https://xn--gckvb8fzb.com/travel/spain/bilbao/>

---

## My version of the NYT

date: 2024-08-08, from: Dave Winer's Scripting News

<p>My version of the NY Times has campaign news too, featuring the cutest kitty on the trail, headed to North Carolina today to support the cute and adorable running mates, Kamala and Tim!</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/08/08/kittyHeadsSouth.png"></center>Kitten hits the trail with Kamala and Tim!</div></p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/08/08/airforce2.png"></center>A real-life photo of Air Force 2, in Detroit. </div></p>
 

<http://scripting.com/2024/08/08/140537.html?title=myVersionOfTheNyt>

---

## High-precision date/time in SQLite

date: 2024-08-08, from: Anton Zhiyanov blog

A rich set of functions for working with date, time and durations. 

<https://antonz.org/sqlean-time/>

---

## The second-worst person in American public life is …

date: 2024-08-08, from: Robert Reich's blog

We can fight Trump with our votes. But what to do about his newfound ally? 

<https://robertreich.substack.com/p/the-second-worst-person-in-american>

---

## August 7, 2024 

date: 2024-08-08, from: Heather Cox Richardson blog

The Democratic presidential ticket of Vice President Kamala Harris and Minnesota governor Tim Walz continues to gain momentum, with people flocking to their events and pouring money into the Democrats&#8217; campaign: in the first 24 hours after Walz joined the ticket, the party raised $36 million from more than 450,000 donors, more than a third of them giving for the first time. 

<https://heathercoxrichardson.substack.com/p/august-7-2024>

---

## Democratic Party greatness

date: 2024-08-08, from: Dave Winer's Scripting News

<p>I have great respect for Hillary Clinton and supported her over Sanders in 2016. I also supported Biden because we needed to win in 2020.</p>
<p>But we could have had a campaign team like the one we saw yesterday and today, with some very impressive presenters who've yet to take the stage, we could have had it in 2016. We didn't have to go through the tragedy of Trump.</p>
<p>The Democrats are stage managing perfectly now. I never really thought we'd see this day, but here it is.</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/08/07/wordleKittyOnTheRoad.png"></center>Our favorite kitten is on the road with the Democrats.</div></p>
 

<http://scripting.com/2024/08/07/032858.html?title=democraticPartyGreatness>

---

## Overriding Gatekeeper Protections in MacOS 15 Sequoia Will Require Clicking Through Panels in System Settings

date: 2024-08-08, updated: 2024-08-08, from: Daring Fireball

 

<https://developer.apple.com/news/?id=saqachfa>

---

## MacOS 15 Sequoia Adds Weekly — That’s Right, Weekly — Nagging Permission Prompts for Screenshot and Screen Recording Apps

date: 2024-08-08, updated: 2024-08-08, from: Daring Fireball

 

<https://9to5mac.com/2024/08/06/macos-sequoia-screen-recording-privacy-prompt/>

---

## Google’s Real Googly. No Not The Anti-Trust!

date: 2024-08-08, from: Om Malik blog

What does Afghan spin bowler Rashid Khan have to do with Google, Microsoft, OpenAI and Yahoo? Well, it’s all neatly wrapped in my 3,500-word essay on the big changes in the tech landscape -- and no, the antitrust actions have nothing to do with it. 

<https://om.co/2024/08/07/googles-real-googly-no-not-the-anti-trust/>

---

## The Verge: ‘Humane’s Daily Returns Are Outpacing Sales’

date: 2024-08-08, updated: 2024-08-08, from: Daring Fireball

 

<https://www.theverge.com/2024/8/7/24211339/humane-ai-pin-more-daily-returns-than-sales>

---

## Teach Your Children Well

date: 2024-08-07, from: Dan Rather's Steady

Why Tim Walz is the perfect antidote to Project 2025 

<https://steady.substack.com/p/teach-your-children-well>

---

## Election Countdown, 90 Days to Go: Three Lessons in Speech-Making.

date: 2024-08-07, from: James Fallows, Substack

Shapiro, Harris, and Walz each did their jobs last evening, in different and fascinating ways. Plus, the return of &#8216;Clear Eyes, Full Hearts.&#8217; 

<https://fallows.substack.com/p/election-countdown-90-days-to-go>

---

##  How Technology Is Making Olympic Mountain Bikers Faster 

date: 2024-08-07, updated: 2024-08-07, from: Jason Kittke's blog

 

<https://kottke.org/24/08/how-technology-is-making-olympics-mountain-bikers-faster>

---

## The establishment strikes back

date: 2024-08-07, from: Robert Reich's blog

The New York and Washington chattering class thinks Walz is too far left 

<https://robertreich.substack.com/p/the-establishment-strikes-back>

---

##  Yes, the &#8220;ope!&#8221; explainer that America needs right now. As a native... 

date: 2024-08-07, updated: 2024-08-07, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045084-yes-the-ope-explainer-tha>

---

## Flighty 4.0

date: 2024-08-07, updated: 2024-08-07, from: Daring Fireball

 

<https://apps.apple.com/app/id1358823008>

---

##  The Undisguised Extremism of the Republican Party 

date: 2024-08-07, updated: 2024-08-07, from: Jason Kittke's blog

 

<https://kottke.org/24/08/the-undisguised-extremism-of-the-republican-party>

---

## The Harris-Walz Campaign Logo Is Not Great

date: 2024-08-07, updated: 2024-08-07, from: Daring Fireball

 

<https://www.fastcompany.com/91168459/new-logo-harris-walz-campaign>

---

##  Utah is basically burning books now. &#8220;State has ordered books by 13... 

date: 2024-08-07, updated: 2024-08-07, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045082-utah-is-basically-burning>

---

## August 6, 2024

date: 2024-08-07, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/august-6-2024-c69>

---

##  Why the word &#8220;Taiwan&#8221; is banned at the Olympics. &#8220;Taiwan is one... 

date: 2024-08-07, updated: 2024-08-07, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045081-why-the-word-taiwan-is>

---

**@Dave Winer's Scripting News** (date: 2024-08-07, from: Dave Winer's Scripting News)

<a href="https://x.com/davewiner/status/1821209204977189268">Timothy Snyder</a>: "If JD Vance really were a normal midwestern guy he’d be very respectful of someone like Tim Walz." 

<http://scripting.com/2024/08/07.html#a160344>

---

##  The World&#8217;s First Medieval Electronic Instrument 

date: 2024-08-07, updated: 2024-08-07, from: Jason Kittke's blog

 

<https://kottke.org/24/08/the-worlds-first-medieval-electronic-instrument>

---

##  The theme for the Cooper Hewitt&#8217;s upcoming Design Triennial (in collaboration with... 

date: 2024-08-07, updated: 2024-08-07, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045079-the-theme-for-the-cooper>

---

##  55 Things to Know About Tim Walz 

date: 2024-08-07, updated: 2024-08-07, from: Jason Kittke's blog

 

<https://kottke.org/24/08/55-things-to-know-about-tim-walz>

---

**@Dave Winer's Scripting News** (date: 2024-08-07, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/07/04/butHerEmails.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">When I see a reference to an evil NYT piece, I RT it with a simple message: Ignore the NY Times. It's relaxing. You don't have to do something about it, in fact it says the opposite. Do nothing. It works on all social nets, and for any news org that's promoting lies, ignoring relevant facts, against the interest of the US. Find new ways to get informed. And if you can't find them, start one. And we can find each other. 

<http://scripting.com/2024/08/07.html#a140432>

---

**@Dave Winer's Scripting News** (date: 2024-08-07, from: Dave Winer's Scripting News)

The <a href="https://www.threads.net/@davew/post/C-Xr_dcp8Vn">Bruce Springsteen</a> mention at last night's rally was no accident. Boomers are now of the age where we vote in great numbers. So our feeling like there's something here for us might make the difference in one or more of the swing states. 

<http://scripting.com/2024/08/07.html#a140039>

---

**@Dave Winer's Scripting News** (date: 2024-08-07, from: Dave Winer's Scripting News)

Last night's Democratic rally was wonderful. I was laughing and sobbing all the way through it. What an emotional release. We needed and deserved this. Beyond hope, we're finally going to fight. I hope President Kamala is really up to it, because we have a pretty substantial cleanup job to do <a href="https://en.wikipedia.org/wiki/Trump_v._United_States_(2024)">here</a>. 

<http://scripting.com/2024/08/07.html#a134011>

---

## Problems with Georgia’s Voter Registration Portal

date: 2024-08-07, updated: 2024-08-06, from: Bruce Schneier blog

<p>It&#8217;s possible to <a href="https://www.propublica.org/article/georgia-voter-registration-cancellation-portal-mtg-raffensperger">cancel</a> other people&#8217;s voter registration:</p>
<blockquote><p>On Friday, four days after Georgia Democrats <a href="https://x.com/GASenateDems/status/1817949715234717988">began warning</a> that bad actors could abuse the state&#8217;s new online portal for canceling voter registrations, the Secretary of State&#8217;s Office acknowledged to ProPublica that it had identified multiple such attempts&#8230;</p>
<p>&#8230;the portal suffered at least two security glitches that briefly exposed voters&#8217; dates of birth, the last four digits of their Social Security numbers and their full driver&#8217;s license numbers&#8212;the exact information needed to cancel others&#8217; voter registrations...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/08/problems-with-georgias-voter-registration-portal.html>

---

## Office Hours: The second-worst person in American public life today?

date: 2024-08-07, from: Robert Reich's blog

Trump is clearly the worst, but who comes second? 

<https://robertreich.substack.com/p/office-hours-the-second-worst-person>

---

## August 6, 2024 

date: 2024-08-07, from: Heather Cox Richardson blog

Today Vice President Kamala Harris named her choice for her vice presidential running mate: Governor Tim Walz of Minnesota. 

<https://heathercoxrichardson.substack.com/p/august-6-2024>

---

##  An English couple took photos in front of a Swiss glacier in... 

date: 2024-08-06, updated: 2024-08-06, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045075-an-english-couple-took-ph>

---

## Wednesday 7 August, 2024

date: 2024-08-06, from: John Naughton's online diary

Air Bee&#8217;n Bee One of my boys and his partner gave me a ‘bug hotel’ for my birthday and we decided to pin it to the garden fence and await developments. So far, five Mason Bees have booked accommodation. Quote &#8230; <a href="https://memex.naughtons.org/wednesday-7-august-2024/39723/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/wednesday-7-august-2024/39723/>

---

##  World&#8217;s longest bicycle (180+ feet) or slow & impractical steamroller?... 

date: 2024-08-06, updated: 2024-08-06, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045074-worlds-longest-bicycle-18>

---

##  Amazing stat about the disappearance of bands from the UK music charts... 

date: 2024-08-06, updated: 2024-08-06, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045077-amazing-stat-about-the-di>

---

## On the “ARC-AGI” $1 Million Reasoning Challenge

date: 2024-08-06, from: Melanie Mitchell, AI Guide for Human Thinking

In this post I&#8217;m going to go into the weeds, describing how some people are trying to win a big $$$ prize for solving a still-wide-open AI challenge, the &#8220;Abstraction and Reasoning Corpus,&#8221; and what it all means. 

<https://aiguide.substack.com/p/on-the-arc-agi-1-million-reasoning>

---

##  What&#8217;s In the Box? (The Olympics Medalists&#8217; Box) 

date: 2024-08-06, updated: 2024-08-06, from: Jason Kittke's blog

 

<https://kottke.org/24/08/whats-in-the-box-the-olympics-medalists-box>

---

##  Tressie McMillan Cottom reports from Louisville, KY on the challenges of residents... 

date: 2024-08-06, updated: 2024-08-06, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045073-tressie-mcmillan-cottom-r>

---

##  Forthcoming book: The Marvel Comics Covers of Jack Kirby Volume 1. This... 

date: 2024-08-06, updated: 2024-08-06, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045070-forthcoming-book-the-marv>

---

##  It looks like overdose deaths in the US might finally be falling.... 

date: 2024-08-06, updated: 2024-08-06, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045072-it-looks-like-overdose-de>

---

## August 5, 2024

date: 2024-08-06, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/august-5-2024-699>

---

##  A Drawing of NYC&#8217;s Chinatown 

date: 2024-08-06, updated: 2024-08-06, from: Jason Kittke's blog

 

<https://kottke.org/24/08/a-drawing-of-nycs-chinatown>

---

## Taegan Goddard: ‘Some Quick Thoughts on Tim Walz’

date: 2024-08-06, updated: 2024-08-06, from: Daring Fireball

 

<https://politicalwire.com/2024/08/06/initial-thoughts-on-tim-walz/>

---

## Nate Silver: ‘Tim Walz Is a Minnesota Nice Choice’

date: 2024-08-06, updated: 2024-08-06, from: Daring Fireball

 

<https://www.natesilver.net/p/tim-walz-is-a-minnesota-nice-choice>

---

## Kamala Harris Selects Minnesota Gov. Tim Walz to Be VP Running Mate

date: 2024-08-06, updated: 2024-08-06, from: Daring Fireball

 

<https://www.cnn.com/politics/live-news/kamala-harris-trump-election-08-06-24#h_a1cb3a353c1e0655524a827af0197796>

---

##  A deep dive into Null Island. &#8220;Null Island is a long-running inside... 

date: 2024-08-06, updated: 2024-08-06, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045069-a-deep-dive-into-null>

---

##  The Marshall Project: what communities have learned from sending unarmed responders instead... 

date: 2024-08-06, updated: 2024-08-06, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045067-the-marshall-project-what>

---

## Tim Walz for Vice President!

date: 2024-08-06, from: Robert Reich's blog

A terrific choice, on all grounds 

<https://robertreich.substack.com/p/tim-walz-for-vice-president>

---

## Roadmap for the campaign

date: 2024-08-06, from: Dave Winer's Scripting News

<p>A roadmap for the campaign is coming into view.</p>
<ul>
<li>Harris has her knee on Trump's neck, and she won't let up. </li>
<li>There won't be time for anyone to get tired of her. </li>
<li>Their rallies are going to be the best in a very long time. They're executing perfectly. </li>
<li>Trump is a comedian, a cross between <a href="https://en.wikipedia.org/wiki/Don_Rickles">Don Rickles</a> and <a href="https://en.wikipedia.org/wiki/Joan_Rivers">Joan Rivers</a> with a bit of <a href="https://en.wikipedia.org/wiki/Sam_Kinison">Sam Kinison</a>. He had a good schtick for a long run if you find fascist slapstick entertaining, as millions of Americans do or did. </li>
<li>Last night Maddow tried to get us excited about how the Repubs have planted people on voting boards in swing states with the purpose of stopping the counts, and thus preventing a vote in the Electoral College. But they're doing it too late. The administrators will feel the tide turning too. </li>
<li>This campaign will take place in the popular culture of 2024, which thankfully is not centered on cable news or the NYT. But Mark Zuckerberg and Elon Musk are in control. In my <a href="http://scripting.com/2017/01/14/whatIfTwtrIsBoughtByARepub.html">2017 piece</a> I thought Zuck would run for president, given his new style <a href="https://imgs.scripting.com/2024/08/06/zucksNewStyle.png">makeover</a> I wouldn't discount that, but these two will certainly have  influence over how the election goes. Both Facebook and Twitter have algorithms that are opaque and controlled by them. Same deal as with the owners of cable media. </li>
<li>Trump stoked resentment with voters for being left behind, even if individually they were doing fine. But that was eight years ago and a lot has happened. Harris saying basically "there you go again" is an <a href="https://www.youtube.com/watch?v=qN7gDRjTNf4&t=46s">echo of Reagan</a>, btw. It worked for Reagan, you just have to get the <a href="https://www.dictionary.com/browse/derision">derision</a> right. And Harris can do that, she laughs and we laugh. Trump loses his mind.</li>
<li>The Harris candidacy happened almost as if it was staged. The campaign hit the ground running, it feels like there was a lot of advance work. Or they picked bloggers who were up and running, gave them the keys and said go. Either approach is fine, breaking through where previous Demo campaigns didn't have the nerve. Whatever it is, there's a sign of competence and urgency in the Democrats that is grounded in the challenge not in some almost religious sense that she's The One, which was understandable with Obama, but won't do now. We have no illusions about what's ahead. I think for that Biden must have been a great teacher. </li>
<li>Now we're grounded. We've seen the outline of our future. Our eyes were fully opened on Jan 6. A few weeks ago the lead Republican thinker behind Project 2025 <a href="https://thehill.com/homenews/campaign/4757210-heritage-blowback-bloodless-revolution/">said</a>, like an idiot, in an interview, it was up to liberals to avoid a bloodbath, as they took over. You don't hear that anymore. Those people must now be thinking more seriously about jail for what they're doing. And the Supreme Court will go to jail too if they try to support what Maddow was talking about. We must not let them overthrow the government. And that's why Maddow's concern is okay but overstated, imho.</li>
<li>I had my doubts whether Biden would stop the <a href="https://www.dictionary.com/browse/dissolution">dissolution</a> of the Supreme Court, and I don't know if Harris will, but given how purposefully the campaign in running, I suspect (hope, pray) she will. Our job is to give her the support she needs to feel that we've got her back. </li>
</ul>
<p>PS: FDR <a href="https://chatgpt.com/share/83fbfae5-d28d-4332-bda1-480fed1e9584">threatened</a> to pack the court in 1937. </p>
<p>PPS: If you haven't listened to <a href="http://scripting.com/2024/08/04/195427.html">Sunday's podcast</a>, please do. It's just 12 minutes. </p>
 

<http://scripting.com/2024/08/06/141312.html?title=roadmapForTheCampaign>

---

## Setting the terms, redux

date: 2024-08-06, from: Doc Searls (at Harvard), New Old Blog

I wrote for Linux Journal from 1996 to 2019, the final years as editor-in-chief. After ownership changed and the whole staff turned over, the new owner, Slashdot Media, agreed to keep the server up so nothing would be 404&#8217;d. I am grateful that they have kept that promise. I should add, however, that some of [&#8230;] 

<https://doc.searls.com/2024/08/06/setting-the-terms-redux/>

---

**@Dave Winer's Scripting News** (date: 2024-08-06, from: Dave Winer's Scripting News)

Walz is Harris' choice. Picking Shapiro would have been leading with her chin because of Netanyahu. Walz looks older than her but they're actually the same age. And he figured out the right word to get under Trump's skin, so there's that. He just has to say <a href="https://www.merriam-webster.com/dictionary/weird">weird</a> in campaign speeches to bring down the house. 

<http://scripting.com/2024/08/06.html#a140340>

---

## On the Cyber Safety Review Board

date: 2024-08-06, updated: 2024-08-06, from: Bruce Schneier blog

<p>When an airplane crashes, impartial investigatory bodies leap into action, empowered by law to unearth what happened and why. But there is no such empowered and impartial body to investigate CrowdStrike&#8217;s <a href="https://www.nytimes.com/2024/07/19/business/microsoft-outage-cause-azure-crowdstrike.html">faulty update</a> that recently unfolded, ensnarling banks, airlines, and emergency services to the tune of billions of dollars. We need one. To be sure, there is the White House&#8217;s <a href="https://www.cisa.gov/resources-tools/groups/cyber-safety-review-board-csrb">Cyber Safety Review Board</a>. On March 20, the CSRB <a href="https://www.cisa.gov/sites/default/files/2024-04/CSRB_Review_of_the_Summer_2023_MEO_Intrusion_Final_508c.pdf">released</a> a report into last summer&#8217;s intrusion by a Chinese hacking group into Microsoft&#8217;s cloud environment, where it compromised the U.S. Department of Commerce, State Department, congressional offices, and several associated companies. But the board&#8217;s report&#8212;well-researched and containing some good and actionable recommendations&#8212;shows how it suffers from its lack of subpoena power and its political unwillingness to generalize from specific incidents to the broader industry...</p> 

<https://www.schneier.com/blog/archives/2024/08/a-better-investigatory-board-for-cyber-incidents.html>

---

## Go structs are copied on assignment (and other things about Go I'd missed)

date: 2024-08-06, updated: 2024-08-06, from: Julia Evans blog

 

<https://jvns.ca/blog/2024/08/06/go-structs-copied-on-assignment/>

---

## Kamala’s surprise opportunity 

date: 2024-08-06, from: Robert Reich's blog

(And I'm not talking about her pick for VP) 

<https://robertreich.substack.com/p/how-kamala-should-respond-to-the>

---

## libcurl is 24 years old

date: 2024-08-06, from: Daniel Stenberg Blog

On Monday August 7, 2000 at 14:49 UTC, we announced the release of the first libcurl version ever. Exactly twenty-four years ago today. We called it version 7.1. The simple reason we did a point one release as the first one was that we had shipped a whole range of 7.0 beta versions before that &#8230; <a href="https://daniel.haxx.se/blog/2024/08/06/libcurl-is-24-years-old/" class="more-link">Continue reading <span class="screen-reader-text">libcurl is 24 years old</span> <span class="meta-nav">&#8594;</span></a> 

<https://daniel.haxx.se/blog/2024/08/06/libcurl-is-24-years-old/>

---

## August 5, 2024 

date: 2024-08-06, from: Heather Cox Richardson blog

Christi Carras of the Los Angeles Times reported today that the reality TV industry has collapsed. 

<https://heathercoxrichardson.substack.com/p/august-5-2024>

---

## Minimalism as a way of taking up less space

date: 2024-08-06, from: Tracy Durnell Blog

We are told to—all people are told this, but particularly conditioned women— to long for less in so many ways, to take up less space in so many ways. The control piece of this, there’s just a lot where it’s like, you are trying to sort of winnow yourself into this tiny, clean surfaces, very [&#8230;] 

<https://tracydurnell.com/2024/08/05/minimalism-as-a-way-of-taking-up-less-space/>

---

## Federal Judge Rules Google Search an Illegal Monopoly

date: 2024-08-05, updated: 2024-08-06, from: Daring Fireball

 

<https://www.nytimes.com/2024/08/05/technology/google-antitrust-ruling.html>

---

## Who’s Minding Musk?

date: 2024-08-05, from: Dan Rather's Steady

Nobody, and that&#8217;s a problem 

<https://steady.substack.com/p/whos-minding-musk>

---

##  YES YES YES: &#8220;Campaigns from Harris for President on down should clarify... 

date: 2024-08-05, updated: 2024-08-05, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045068-yes-yes-yes-campaigns-fro>

---

## ★ Apple’s Profits From Services Are on the Cusp of Surpassing Its Profits From Device Sales

date: 2024-08-05, updated: 2024-08-05, from: Daring Fireball

Apple’s success with services is no more a distraction from their core business than their success with their own chain of retail stores has been. 

<https://daringfireball.net/2024/08/apple_services_profit>

---

##  The Spielberg Face 

date: 2024-08-05, updated: 2024-08-05, from: Jason Kittke's blog

 

<https://kottke.org/24/08/the-spielberg-face-1>

---

##  Cooking with Pixar, a playlist of videos with recipes inspired by Luca... 

date: 2024-08-05, updated: 2024-08-05, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045066-cooking-with-pixar-a-play>

---

## Bloomberg Fires One of the Two Reporters Whose Byline Was on Embargo-Breaking Gershkovich-Release Story

date: 2024-08-05, updated: 2024-08-06, from: Daring Fireball

 

<https://x.com/charlottetklein/status/1820480340932346271>

---

##  When kids can&#8217;t get outside to play in a world built for... 

date: 2024-08-05, updated: 2024-08-05, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045065-when-kids-cant-get-outsid>

---

##  Is 5% of the Earth&#8217;s Population Related to Genghis Khan? 

date: 2024-08-05, updated: 2024-08-05, from: Jason Kittke's blog

 

<https://kottke.org/24/08/is-5-of-the-earths-population-related-to-genghis-khan>

---

##  Google, a monopoly, loses its antitrust case against the Dept of Justice.... 

date: 2024-08-05, updated: 2024-08-05, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045063-google-a-monopoly-loses-i>

---

## Another Black Monday?

date: 2024-08-05, from: Robert Reich's blog

What really happened today on Wall Street 

<https://robertreich.substack.com/p/another-black-monday>

---

##  Australia is starting kids with peanut allergies on an oral immunotherapy program.... 

date: 2024-08-05, updated: 2024-08-05, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045062-australia-is-starting-kid>

---

**@Dave Winer's Scripting News** (date: 2024-08-05, from: Dave Winer's Scripting News)

When reporting massacres, imho we should cite the number of people who were shot. It measures of how much violence there was, and how excessive the gun tech used. Many who were injured but not killed have their lives ruined. Their suffering can go for decades. 

<http://scripting.com/2024/08/05.html#a185656>

---

**@Dave Winer's Scripting News** (date: 2024-08-05, from: Dave Winer's Scripting News)

If you want to keep up on political news, esp at a time when so much is happening so quickly, the best resource I have at this time is the <a href="https://news.scripting.com?tab=politics">politics tab</a> on news.scripting.com. Here's a <a href="http://scripting.com/images/2024/08/05/politicsTabNewsScriptingCom.png">screen shot</a>. 

<http://scripting.com/2024/08/05.html#a183833>

---

##  The Evolution of Olympic Performances, 1912 to 2020 

date: 2024-08-05, updated: 2024-08-05, from: Jason Kittke's blog

 

<https://kottke.org/24/08/the-evolution-of-olympic-performances-1912-to-2020>

---

## August 4, 2024

date: 2024-08-05, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/august-4-2024-81e>

---

## 2024-08-05 Free speech advocacy on the fediverse

date: 2024-08-05, from: Alex Schroeder's Blog

<h1 id="2024-08-05-free-speech-advocacy-on-the-fediverse">2024-08-05 Free speech advocacy on the fediverse</h1>

<p>It all started with <a class="account" href="https://social.wildeboer.net/@jwildeboer" title="@jwildeboer@social.wildeboer.net">@jwildeboer</a> <a href="https://social.wildeboer.net/@jwildeboer/112893255029322563">arguing</a> that the original poster (OP) of a message should be in control of what’s considered to be a reply to the their post. Apparently, this would be within the realm of how ActivityPub works, but it&rsquo;s not how Mastodon works. From my point of view, I&rsquo;d love the ability to unlink replies from my post so that people clicking through to my post don&rsquo;t end up seeing those replies. I&rsquo;d be protecting my readers from spam, trolls and detractors. Jan also argued that as a positive side-effect, servers getting the original post that starts a thread would immediately get the whole tree of replies. Finally, Jan also argued that replies should not be able to reduce the audience scope of the audience because it was used for bullying. People replying with a “followers only” audience can effectively pile-on the original poster with their friends and followers without anybody else being able to see this – you have to be a follower of the bully in order to see it.</p>

<p>There was a longer thread by <a class="account" href="https://eattherich.club/@deflarerOfClouds" title="@deflarerOfClouds@eattherich.club">@deflarerOfClouds</a> arguing that &ldquo;silencing critics is an anti-speech injustice &amp; if their replies are detached that obviously censors their ideas.&rdquo; I disagree.</p>

<p>In situations like these I like to explain the situation without using the word censorship as we’ll get bogged down in a word definition game that I find fundamentally boring. I want to make sure that speech I disagree with does not benefit from my reach; I want no part in distributing it. If somebody wants to argue that this is censorship and therefore bad, I’m bored. I’d like to hear an explanation that hows how this attachment is something I should support. Note that I&rsquo;m not interested in the question of whether people can or cannot say their words; all I care about is them not distributing their words along with mine.</p>

<p>In this sense, running a blog without comments is perfect. There&rsquo;s not even the illusion of censorship. If people want to counter, let them put it up on their blogs. I’m not in a debate club. Instead, I feel like an essayist or a book author. Other people should feel free to write their own books and their essays – and their own blog posts, possibly linking to mine – but me having to endure the inane and the boring, and inflicting it on my readers, is disrespectful to my readership. It&rsquo;s abuse of my distribution channel.</p>

<p>Similarly, I expect newspapers and academic journals to exercise their editorial powers to filter and select the replies and comments and letters to the editors worth their readers&rsquo; time. It is what I expect because life is short and the number of boring comments are endless. A world without curation is not my goal.</p>

<p>On my blog, people can find ways to contact me. And maybe I’ll post their replies or additions. But really, adversarial comments can be hosted elsewhere and I feel no compulsion to link them all. This sort of third party comment aggregation is exactly what Hacker News, Reddit or Lemmy do. It makes no sense to demand that blogs do the same. It makes no sense to demand all social media to do the same. Tools can be different and interaction models can be different.</p>

<p>To come back to the fediverse: I would prefer Mastodon (and the software I use, GoToSocial) to change their defaults because I think the original poster having control over comments provides exactly the kind of curation I like. In this social media model, I&rsquo;m following people so I implicitly trust their curation. Calling this curation censorship or suppression is an exaggeration.</p>

<p>I write on the web. I don’t plan to prevent other people from reading my words and writing posts quoting my words. What I do want is the option of having no part in their distribution. I&rsquo;m not interested in technology that allows people to use my blog or my posts to reach my readership with their adversarial replies. In other words, I&rsquo;m fine with people writing replies on their blog posts and linking to mine. I don&rsquo;t need to link back. On social media, I&rsquo;m willing to go a step further and allow people to write public replies linked to my posts. I&rsquo;d very much like the option of detaching adversarial replies from my posts.</p>

<p>The important part about this is the realization that none of this is &ldquo;natural&rdquo; – everything is engineered and the people writing the software make decisions about how the people on these platforms interact and it&rsquo;s important to think about the choices being made and the consequences these choices have. Replies being attached to original posts in the fediverse is a feature somebody developed and it is not at all clear to me that denying this features amounts to suppression or censorship.</p>

<p>The belief that denying technological features amounts to suppression and censorship is a leap I am not willing to make.</p>

<p><a class="tag" href="/search/?q=%23Fediverse">#Fediverse</a></p> 

<https://alexschroeder.ch/view/2024-08-05-free-speech-on-fedi>

---

##  Carl Zimmer&#8217;s new book sounds fascinating & relevant: Air-Borne: The Hidden History... 

date: 2024-08-05, updated: 2024-08-05, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045059-carl-zimmers-new-book-sou>

---

##  If you&#8217;re curious about how USA&#8217;s Kristen Faulkner shocked the top riders... 

date: 2024-08-05, updated: 2024-08-05, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045058-if-youre-curious-about-ho>

---

## Milk-V Jupiter is the first ITX RISC-V board I've tested

date: 2024-08-05, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Milk-V Jupiter is the first ITX RISC-V board I've tested</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/milk-v-jupiter-motherboard.jpeg" alt="Milk-V Jupiter Mini ITX Motherboard"></p>

<p>The latest RISC-V computer I've tested is the Milk-V Jupiter. It's pokey at <a href="https://browser.geekbench.com/v6/cpu/compare/6979805?baseline=6998183">Intel Core 2 Duo</a> levels of performance—at least according to Geekbench.</p>

<p>But performance is only one aspect that interests me. This is the first RISC-V Mini ITX motherboard I've tested, which means it can be installed in a PC case or rackmount enclosure, and it is much more featureful than a typical credit-card-sized SBC.</p>

<p>It includes niceties like front panel IO, front-panel Audio, USB 3.0, and USB 2.0, 24-pin ATX power input, an M.2 M-key slot for NVMe, <em>and</em> an open ended PCI Express slot!</p>

<p>This blog post follows along roughly with today's video:</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-08-05T09:05:40-05:00" title="Monday, August 5, 2024 - 09:05" class="datetime">August 5, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/milk-v-jupiter-first-itx-risc-v-board-ive-tested>

---

##  &#8220;A climate scientist half-jokingly once told me that if billionaires really wanted... 

date: 2024-08-05, updated: 2024-08-05, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045057-a-climate-scientist-half->

---

## New Patent Application for Car-to-Car Surveillance

date: 2024-08-05, updated: 2024-08-02, from: Bruce Schneier blog

<p>Ford has a <a href="https://www.motorauthority.com/news/1143913_future-fords-might-detect-speeding-and-report-you-to-the-cops">new</a> <a href="https://trea.com/information/systems-and-methods-for-detecting-speeding-violations/patentapplication/c4b2664e-cb75-4a81-a47d-3d1449623362">patent application</a> for a system where cars monitor each other&#8217;s speeds, and then report then to some central authority.</p>
<p>Slashdot <a href="https://tech.slashdot.org/story/24/07/29/037227/is-ford-trying-to-patent-a-way-for-its-cars-to-report-speeding-to-the-police">thread</a>.</p>
 

<https://www.schneier.com/blog/archives/2024/08/new-patent-application-for-car-to-car-surveillance.html>

---

## 2024-08-04 Walliser Roggenbrot

date: 2024-08-05, from: Alex Schroeder's Blog

<h1 id="2024-08-04-walliser-roggenbrot">2024-08-04 Walliser Roggenbrot</h1>

<p>Wir waren zu Besuch bei Freunden in Oberösterreich und ich habe ein „Walliser“ Roggenbrot mitgebracht.</p>

<p>Man nehme:</p>

<ul>
<li>Salz</li>
<li>Dinkelmehl (ein Drittel oder ein Viertel vom Mehl); Weizenmehl geht auch</li>
<li>Roggenvollkornschrotmehl (doppelt oder drei Mal so viel wie Dinkel- oder Weizenmehl)</li>
<li>Sauerteig Starter</li>
<li>Nüsse; z.B. Walnüsse</li>
<li>Trockfrüchte; z.B. Pflaumen, Aprikosen, Feigen, je nach Wunsch</li>
</ul>

<p>Hier mit Paranüssen, Datteln, Pflaumen und Feigen:</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-1.jpg" alt="Salz, Dinkelmehr, Roggenvollkornschrotmehl, Paranüsse, Datteln, gedörrte Pflaumen und gedörrte Feigen" />
<img loading="lazy" src="2024-08-03-walliser-roggenbrot-2.jpg" alt="Nüsse nicht klein brechen, Früchte grob schneiden" /></p>

<p>Sauerteigstarter und ca. 150g Dinkelmehl:</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-3.jpg" alt="Mehl" /></p>

<p>Etwa zwei bis drei Mal mehr Roggenvollkornschrotmehl, das wären also 300–450g, hier aufgefüllt mit etwas über 300g Roggenvollkornschrotmehl auf ca. 500g:</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-4.jpg" alt="Noch mehr Mehl" /></p>

<p>Eine Hand voll Salz, oder einen Suppenlöffel, oder etwa 10g:</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-5.jpg" alt="Salz" /></p>

<p>Mit etwas mehr als zwei Drittel Wasser mischen. Bei 500g Mehl wären das 333ml Wasser gewesen. Hier habe ich fast 400ml zugegeben und auf 900g aufgefüllt. Wie man nachher noch sehen wird, war das ein wenig zu viel Wasser.</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-6.jpg" alt="Wasser hinzufügen" /></p>

<p>Umrühren – langes kneten finde ich unnötig. Kommt aber vielleicht auf das Mehl an.</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-7.jpg" alt="Teig ist ein Klumpen" /></p>

<p>Über Nacht zudecken und gären lassen.</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-8.jpg" alt="Geschirrtuch bedeckt die Schüssel" /></p>

<p>Weil es genug Dinkelmehl in der Mischung gab, ist aufgegangen.</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-9.jpg" alt="Der Teig in der Schüssel ist aufgegangen" /></p>

<p>Weil es so viel Teig ist, werde ich zwei kleinere Brote machen und habe den Teig deswegen halbiert.
Nun gilt es, den Teig in viel Mehl zu wenden, so dass er nirgends mehr anklebt. Weil ich etwas zu viel Wasser verwendet habe, war das schwieriger als sonst.</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-10.jpg" alt="Zwei Schüsseln mit Teigklumpen in Mehl gewendet" /></p>

<p>Nochmal zudecken und etwas gehen lassen.</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-11.jpg" alt="Geschirrtuch bedeckt nun zwei Schüsseln" /></p>

<p>Diesmal warte ich nicht lange. nach einer halben Stunde oder Stunde hat es schon wieder Risse und Blasen in der Mehlschicht, weil die Hefe aktiv ist.</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-12.jpg" alt="Bemehlte Teigklumpen mit Rissen und Blasen" /></p>

<p>Weil der Teig nicht sehr fest ist, lege ich ihn lieber in eine Schüssel oder eine Kuchenform statt auf das Backblech. Traditionelles Roggenbrot ist allerdings eher flach, deswegen nehme ich keine Kuchenform. Etwas flach ist OK.</p>

<p>Unten im Boden hat es einen Wasserbehälter mit einem halben Liter Wasser drinnen. Das kann man auch in eine dritte Schüssel geben, damit es im Ofen schön feucht bleibt.</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-13.jpg" alt="Zwei Teigklumpen in zwei Schüsseln im Ofen" /></p>

<p>50 Minuten backen bei 180°C und das Brot ist fertig.</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-14.jpg" alt="Zwei Laib Brot mit schöner Kruste" /></p>

<p>Wer ein Kuchengitter hat, kann das Brot darauf trocknen lassen. Alternativ in ein Geschirrtuch einwickeln oder kopfüber legen, damit es auch von unten etwas antrocknen kann.</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-15.jpg" alt="Brot auf einem Gitter" /></p>

<p>Üblicherweise wird das Brot relativ dünn geschnitten und mit allem möglichen belegt. Fleisch, Käse, oder nur mit etwas Butter… und einem Glas Wein.</p>

<p><img loading="lazy" src="2024-08-03-walliser-roggenbrot-16.jpg" alt="Erste Scheiben vom Brot geschnitten" /></p>

<h2 id="exkurs-sauerteig">Exkurs Sauerteig</h2>

<p>Online gibt es tausend Anleitungen hierfür. Hier meine Kurzfassung.</p>

<p>Variante 1 dauert ein paar Tage:</p>

<blockquote>
<p>Etwas Mehl und gleich viel Wasser mischen, bis es einen zähen, feuchten Teig gibt. Diesen mit einem Papier verschlossen im Kühlschrank aufbewahren. Jeden Tag die Hälfte davon verwenden, für Pfannkuchen oder sonst etwas. Dann wieder mit Mehl und Wasser auffüllen und mischen, bis man wieder gleich viel im Glas hat. Anfangs hat es nur wenig Hefe darin. Nach sieben Tagen sieht man durch das Glas, wie es jeden Morgen Blasen im Teig hat. Der Sauerteig lebt!</p>
</blockquote>

<p>Variante 2 ist um einiges schneller:</p>

<blockquote>
<p>Etwas Mehl, Hefe und gleich viel Wasser mischen, bis es einen zähen, feuchten Teig gibt. Diesen mit einem Papier verschlossen im Kühlschrank aufbewahren. Schon nach einer Stunde sieht man Blasen im Teig. Der Sauerteig lebt! Nun verwendet man die Hälfte davon für das erste Brot. Dann gilt es, das Glas wieder mit Mehl und Wasser aufzufüllen und zu mischen, bis man wieder gleich viel im Glas hat. Anfangs hat es nur wenig Milchsäurebakterien darin, aber das wird im Laufe der nächsten Tage besser.</p>
</blockquote>

<p>Das funktioniert, weil es in der Luft Hefe und Milchsäurebakterien hat, welche die Mischung besiedeln. Da wir immer die Hälfte entfernen, sorgt die Auslese dafür, dass nur bleibt, wer sich wirklich schnell ausbreiten kann. Und das sind die Hefe und die Milchsäurebakterien. Diese halten sich gegenseitig mit ihren Produkten im Schach: Die Hefe produziert Alkohol und die Bakterien die Milchsäure, was den Teig bei andere Lebewesen unbeliebt macht. Unser Glück!</p>

<p>Theoretisch kann man den Sauerteig auch ausserhalb des Kühlschrankes aufbewahren. Früher hatten wir ja auch keine Kühlschränke und trotzdem gab es Brot. Da wir aber nicht jeden Tag ein Brot backen und deswegen auch nicht die ganze Zeit Sauerteig verbrauchen, gibt das anderen Lebewesen die Gelegenheit, unser Glas zu besiedeln. Im Kühlschrank wird das etwas ausgebremst.</p>

<h2 id="tipps-zum-glas">Tipps zum Glas</h2>

<p>Ich schliesse das Glas nicht mit einem luftdichten Deckel, weil der Sauerstoff ebenfalls unerwünschte Lebewesen fern hält.</p>

<p>Wenn ich in die Ferien gehe, mach ich eine besonders trockene Mischung, weil ich mir vorstelle, dass die Hefe und die Milchsäurebakterien dann in ein Dauerstadium übergehen und die Zeit ohne neue Nahrung besser überstehen. Weniger Wasser sorgt dafür, dass in dieser Zeit weniger unerwünschte Lebewesen das Glas besiedeln.</p>

<p>Alle ein bis zwei Wochen wechsel ich das Glas. Der halbe Sauerteig kommt in das neue Glas, das alte Glas wird beim Brot backen mit dem verwendeten Wasser ausgespült. Ich will so wenig Sauerteig wie möglich wegspülen.</p>

<p>In den letzten vier Jahren hatte ich zwei Mal den Fall, dass ich den weissen Flaum von Schimmel am Glasrand gesehen habe. Hier waren Hefe und Milchsäurebakterien nicht stark genug, um sich zu wehren. Also habe ich alles weggeworfen und eine neue Sauerteigkultur angefangen. <a href="https://de.wikipedia.org/wiki/Mykotoxin#Wirkung">Mit Schimmel ist nicht zu spassen!</a> Der weisse Flaum sind die Fruchtkörper. Der giftige Pilzkörper selber ist nicht sichtbar und breitet sich im Sauerteig aus. Deswegen darf man nicht nur das weisse Zeug entfernen. <em>Alles muss weg.</em></p>

<p><a class="tag" href="/search/?q=%23Brot">#Brot</a> <a class="tag" href="/search/?q=%23Kochen">#Kochen</a> <a class="tag" href="/search/?q=%23Bread">#Bread</a></p>

<p><strong>2024-08-05</strong>. Alternativen: <a href="https://schweizerbrot.ch/rezept/walliser-roggenbrot/">Walliser Roggenbrot</a> bei <em>Schweizer Brot</em>.</p> 

<https://alexschroeder.ch/view/2024-08-03-walliser-roggenbrot>

---

## Talk notes: Let’s make a simpler, more accessible web

date: 2024-08-05, from: Chris Heilmann's blog

I am just on my way back home from presenting at the Typo3 Developer Days in Karlsruhe, Germany. I had a great time and met a lot of interesting people. I also had the opportunity to present my talk on making the web simpler. The talk was well received and there were some requests to [&#8230;] 

<https://christianheilmann.com/2024/08/05/talk-notes-lets-make-a-simpler-more-accessible-web/>

---

## Why we need nauseous optimism 

date: 2024-08-05, from: Robert Reich's blog

A practical guide to finally feeling positive about American politics 

<https://robertreich.substack.com/p/bliss>

---

## Monday 5 August, 2024

date: 2024-08-05, from: John Naughton's online diary

Director’s cut I don’t suffer from house envy, but if I did &#8212; and had won the lottery &#8212; this is the kind of house I’d go for. It’s Cory Lodge, which used to be the residence of the Director &#8230; <a href="https://memex.naughtons.org/monday-5-august-2024/39712/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-5-august-2024/39712/>

---

## August 4, 2024

date: 2024-08-05, from: Heather Cox Richardson blog

To some fanfare, Vice President Kamala Harris&#8217;s campaign today launched Republicans for Harris, which will kick off with events this week in the swing states of Arizona, North Carolina, and Pennsylvania. 

<https://heathercoxrichardson.substack.com/p/august-4-2024>

---

## Actual Headline in The New York Times: ‘R.F.K. Jr. Admits He Left a Dead Bear in Central Park’

date: 2024-08-05, updated: 2024-08-05, from: Daring Fireball

 

<https://www.nytimes.com/2024/08/04/us/politics/robert-f-kennedy-jr-bear-central-park.html>

---

## JD Vance is a punchline, illustrated

date: 2024-08-04, from: Dave Winer's Scripting News

<p>I asked ChatGPT to illustrate this idea: "JD Vance is a punchline."</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/08/04/jdVanceIsAPunchline.png"></center>"JD Vance is a punchline."</div></p>
 

<http://scripting.com/2024/08/04/212606.html?title=jdVanceIsAPunchlineIllustrated>

---

## Field Notes. 08.04.2024

date: 2024-08-04, from: Om Malik blog

On My Mind A week away from the usual vagaries of modern life and a social media (and news) fast has been a welcome break. It looks like I didn’t miss much on social media. I am glad I took some time to reacquaint myself with my camera and exercise my compositional skills. I went &#8230; 

<https://om.co/2024/08/04/field-notes-08-04-2024/>

---

## A recap of bike stuff from the first week of the 2024 Olympics

date: 2024-08-04, from: Matt Haughey blog

<p>I spent the first 20+ years of my life on a BMX bike, then later did some mountain bike and cyclocross racing. I follow bike events to this day, so here are my quick thoughts on bike-related events from the Paris Olympics so far.</p><h2 id="bmx-freestyle-park">BMX Freestyle (park)</h2><p>BMX freestyle (known</p> 

<https://a.wholelottanothing.org/a-recap-of-bike-stuff-from-the-first-week-of-the-2024-olympics/>

---

## It's time to create our own media, again

date: 2024-08-04, from: Dave Winer's Scripting News

<p>We're depending on big companies that are nuzzling up with Trump, at best hedging their bets, to let us use their networks to organize ourselves politically. That's never worked for us, in fact it's worked against us. Trump's election in 2016, for example, could he have done it without Twitter letting him go direct to organize? </p>
<p>The Harris organization is doing great, they have to take on the journalists, where previous Democrats had no answer, they've done it in a clever way, by using their channels to talk about the things journalism should be talking about. People listen to their competition, and that's what this is. </p>
<p>It's not hard to do this, a few of us, who are good listeners and writers, to build lists of sources and provide them for people to access away from the nonstop (often entertaining) bullshit of the social web of 2024.</p>
<p>I've asked for ideas for podcasts that would go into a list of shows people who are voting Democratic would find interesting or useful. Not for spreading religion, but based on facts, not the unhinged lunacy and revenge of Trump. Our news now is too polluted by that. He shouldn't be able to lie about Harris's race, and have that be an issue carried by journalism, for example. That should not be possible but it happens. </p>
<p>Podcast: <a href="http://scripting.com/2024/08/04/timeToCreateOurOwnMediaAgain.m4a">12 minutes</a>. </p>
<p>PS: Here's a computer-generated <a href="https://recorder.google.com/b5aa5e3f-2164-4005-a302-38d5919775eb">transcript</a>.</p>
 

<http://scripting.com/2024/08/04/195427.html?title=itsTimeToCreateOurOwnMediaAgain>

---

## Letter to Council re: upzoning Houghton Village

date: 2024-08-04, from: Tracy Durnell Blog

There&#8217;s an exciting opportunity to add affordable housing in my community that the NIMBYs are fighting (check out the vision boards from a public meeting 😮). I don&#8217;t live in the neighborhood, but am within biking distance and visit shops there regularly. To help balance the voices that City Council hears, I wrote in to [&#8230;] 

<https://tracydurnell.com/2024/08/04/letter-to-council-re-upzoning-houghton-village/>

---

## Kitten trashes suite

date: 2024-08-04, from: Dave Winer's Scripting News

<p>Every time I solve a Wordle puzzle, I'm allowed to switch over to ChatGPT and narrate a new scene for the Wordle Kitty. Here's today's installment.</p>
<p>The cute and adorable Wordle Kitty, Democratic VP candidate, got tired of waiting for the Republican, so she took a few of the reporters with her back to the presidential suite at the Plaza Hotel on 5th Ave and had a drunken night of debauchery with the reporters and totally trashed the place. The next morning the story appeared in The NY Times. Headline read “Adorable kitten trashes suite."</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/08/04/kittyTrashesSuite.png"></center>What remains of the Presidential Suite at the Plaza Hotel.</div></p>
 

<http://scripting.com/2024/08/04/162845.html?title=kittenTrashesSuite>

---

## Apple Q3 2024 Results

date: 2024-08-04, updated: 2024-08-07, from: Daring Fireball

 

<https://sixcolors.com/post/2024/08/apple-results-quarterly-record-all-time-high-in-services/>

---

## Apple Q3 2024 Results

date: 2024-08-04, updated: 2024-08-04, from: Daring Fireball

 

<https://www.apple.com/newsroom/2024/08/apple-reports-third-quarter-results/>

---

## ’Songs In The Key of Life‘

date: 2024-08-04, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/songs-in-the-key-of-life>

---

## Sunday caption contest: Pedestal

date: 2024-08-04, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/sunday-caption-contest-pedestal>

---

## Who decides what’s normal?

date: 2024-08-04, from: Tracy Durnell Blog

The Normal Ones by A.R. Moxon It was normal to be white. It was normal to be a Christian. It was normal to be a man with a job, and it was normal to be a woman who was a man&#8217;s property. It was normal for children to be viewed as property of the parents, [&#8230;] 

<https://tracydurnell.com/2024/08/03/who-decides-whats-normal/>

---

## August 3, 2024 

date: 2024-08-04, from: Heather Cox Richardson blog

Buddy says this is one of his favorite photos ever, and it&#8217;s definitely the kind of portrait of me I like! 

<https://heathercoxrichardson.substack.com/p/august-3-2024>

