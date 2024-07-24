---
title: columns 2024.30
updated: 2024-07-24 07:36:29
---

# columns 2024.30

(date: 2024-07-24 07:36:29)

---

## changelog changes

date: 2024-07-24, from: Daniel Stenberg Blog

On the curl website we of course list exactly what changes that go into each and every single release we do. In recent years I have even gone back and made sure we provide this information for every single release ever done. At the moment that means 258 releases, listing over 10,000 bugfixes and almost &#8230; <a href="https://daniel.haxx.se/blog/2024/07/24/changelog-changes/" class="more-link">Continue reading <span class="screen-reader-text">changelog changes</span> <span class="meta-nav">&#8594;</span></a> 

<https://daniel.haxx.se/blog/2024/07/24/changelog-changes/>

---

## 2024-07-24 Gridmapper Local

date: 2024-07-24, from: Alex Schroeder's Blog

<h1 id="2024-07-24-gridmapper-local">2024-07-24 Gridmapper Local</h1>

<p>I was wondering whether I should get back to Gridmapper, but not using Javascript and the web but using Common Lisp.
I spent some time on this <a href="2022-07-20_Gridmapper_CL">two years ago</a>.
Of course by now I have forgotten everything – like how to build it!</p>

<p>This is the Makefile that seems to work, given that I have both <code>gridmapper.asd</code> and <code>gridmapper.lisp</code> in the current directory.</p>

<pre><code>SHELL = /bin/sh
LISP ?= sbcl --non-interactive
PWD   = $(shell pwd)

build:
	$(LISP) --eval '(asdf:load-asd &quot;$(PWD)/gridmapper.asd&quot;)' \
	--eval '(asdf:load-system :gridmapper)' \
	--eval '(asdf:make :gridmapper)' \
	--eval '(quit)'
</code></pre>

<p>Surely there is a better way to do this?</p>

<p>If I replace <code>(asdf:load-system :gridmapper)</code> with <code>(ql:quickload :gridmapper)</code> it no longer gives me a warning about <code>cl-colors.asd</code> which I don&rsquo;t know anything about. I guess the warning is still preferable because it means no dependency on Quicklisp? I have no idea. The <a href="https://src.alexschroeder.ch/gridmapper-local.git">README</a> comes with a long explanation of what to install and how to do it, in order to build Gridmapper – including the use of Quicklisp.</p>

<p>The hairiest part is that I need access to a function that isn&rsquo;t exported from the Cairo package. So now I&rsquo;m accessing the private function (using two colons):</p>

<pre><code>;; Sorry for the ugly hack… cairo_format_stride_for_width is not exported.
(cairo::cairo_format_stride_for_width :CAIRO_FORMAT_ARGB32 (surface-width surface)))))
</code></pre>

<p>Two years ago, there was a different solution to this that apparently no longer works. 🤷</p>

<p><a class="tag" href="/search/?q=%23Common_Lisp">#Common Lisp</a></p> 

<https://alexschroeder.ch/view/2024-07-24-gridmapper-local>

---

## Office Hours: And now, for vice president?

date: 2024-07-24, from: Robert Reich's blog

Friends, 

<https://robertreich.substack.com/p/office-hours-for-vice-president>

---

## July 23, 2024 

date: 2024-07-24, from: Heather Cox Richardson blog

Vice President Kamala Harris continues her momentum toward the 2024 presidential election since President Joe Biden&#8217;s surprise announcement on Sunday that he would not accept the 2024 Democratic presidential nomination. 

<https://heathercoxrichardson.substack.com/p/july-23-2024>

---

## curl 8.9.0

date: 2024-07-24, from: Daniel Stenberg Blog

Numbers the 258th release11 changes63 days (total: 9,623)260 bugfixes (total: 10,531)423 commits (total: 32,704)0 new public libcurl function (total: 94)1 new curl_easy_setopt() option (total: 306)4 new curl command line option (total: 263)80 contributors, 38 new (total: 3,209)47 authors, 16 new (total: 1,288)2 security fixes (total: 157) Download the new curl release from curl.se as always. &#8230; <a href="https://daniel.haxx.se/blog/2024/07/24/curl-8-9-0/" class="more-link">Continue reading <span class="screen-reader-text">curl 8.9.0</span> <span class="meta-nav">&#8594;</span></a> 

<https://daniel.haxx.se/blog/2024/07/24/curl-8-9-0/>

---

## 2024-07-24 My ed, wondering

date: 2024-07-24, from: Alex Schroeder's Blog

<h1 id="2024-07-24-my-ed-wondering">2024-07-24 My ed, wondering</h1>

<p>Sometimes I have the urge to write a small editor, something like the kilo project: so small that it is barely usable. I also imagine it to have a sort of conversational UI – which I guess ed has? – if ed is your grumpiest of companions! – or maybe the M-x commands for emacs – and I guess I‘m looking at <a href="Odd%C2%B5">Oddµ</a> as a site generator and Markdown file server and I wonder: what sort of editor would I need to maintain this? What sort of minimal SVG editing capabilities would be nice to have?</p>

<p>What if I could use an ed-like &ldquo;conversational&rdquo; interface, with better prompts, wrapped in <code>readline</code> for ‹Up, Return› combos to repeat things, opening multiple files, switching between them, with completion or menus, and saving it all in one go.</p>

<p>I think I will install <code>rlwrap</code> as a first step and wrap <code>ed</code> and <code>mail</code> in it.</p>

<p>When I read the Wikipedia pages of <code>sam</code> and <code>acme</code> I get the feeling that the started out at the same point and then moved towards a different, full-screen, mouse-support paradigm.</p>

<p>What would my ed have, in addition to ed?</p>

<p>My ed would have the notion of &ldquo;units&rdquo;. Perhaps these can be defined by a separator marker, a regular expression. A &ldquo;line&rdquo; is a unit separated by a newline, or a &ldquo;beginning of line&rdquo; regular expression. A &ldquo;sentence&rdquo; is a unit separated by all sorts of punctuation followed by zero or more quotes and one or more spaces, and so on. A &ldquo;block&rdquo; is a unit separated by empty lines, or special line beginnings such as header markup or list item markup. A &ldquo;section&rdquo; is a unit separated by line beginnings with header markup. These unit names and the corresponding separators are defined in a file, per type, so that they can be changed.</p>

<p>File types are associated with file extensions or special matches (such as looking at the first two lines of a file).</p>

<p>My ed would have a config file so that it can be redefined in parts. For example, every file type has special, system dependent commands to &ldquo;render&rdquo; it, be it compilation, viewing, printing, etc. Perhaps mailcap could be an interesting option to fall back to.</p>

<p>My ed would be line oriented and still offer keyboard navigation using the arrows or vi-style keys. It would have two panes: the top one would show the file content and a cursor or the highlighted unit. The bottom one would be a command line history. The command line history shouldn&rsquo;t be a complete file buffer that can be edited, though, because the temporal ordering seems important to me.</p>

<p>The navigation commands can also be used to modify the selection. Ideally, using arrows to move, shift arrows to select, and typing commands would all work seamlessly.</p>

<p>My ed would have commands that are words or even phrases, and can defined more of them in files, and edit and &ldquo;source&rdquo; them into your session. It would have understandable errors.</p>

<p>My ed would have a snarf buffer or a clipboard to use for cut, copy and insert. Cutting and copying would work on whole units.</p>

<p>My ed would have infinite undo and redo and an auto-save file. Perhaps the auto-save file would contain the redo script.</p>

<p>I&rsquo;m starting to wonder whether I&rsquo;m reinventing vi, here. 🤔</p>

<p><a class="tag" href="/search/?q=%23Editors">#Editors</a></p> 

<https://alexschroeder.ch/view/2024-07-24-ed>

---

## 2024-07-21 What was hard about the Oddµ architecture?

date: 2024-07-24, from: Alex Schroeder's Blog

<h1 id="2024-07-21-what-was-hard-about-the-oddµ-architecture">2024-07-21 What was hard about the Oddµ architecture?</h1>

<p>If you know Go, I think you&rsquo;ll find the architecture of Oddmu to be very traditional: There is a list of actions it knows how to handle when it serves a site on the web and a list of commands it understands when called from the shell. Everything involving HTML or the RSS feed uses a Go template.</p>

<p>There were two things that were tricky, in hindsight. I didn&rsquo;t know enough Go to know how best to do it and so it took me a long time to figure them out.</p>

<p>The first was what data to keep in memory. I didn&rsquo;t want search to involve a database so I experimented a lot with different ways of indexing the content. Trigrams? Full-text? And what about scoring? In the end, I dropped all of that. The only thing I keep in memory is a map of page names and page titles as well as a map of hashtags and pages. I find that searching titles and hashtags is what I do most often. For everything else, I search the files. This, of course, is much slower but for a site of ten thousand pages it&rsquo;s still fast enough. So figuring out how to do search was hard. Once I had this figured out, I discovered that keeping maps in memory when there are multiple Go routines being used by the web server means that I need locks. Both of my maps are in fact data structures that each contain a map and a lock. This was new to me and it took me a long time to realize that having the lock was important. For a while, I didn&rsquo;t have those locks. 😅</p>

<p>The second thing that took me a long time to get right is that I wanted pages to be served from Oddµ when it runs as a web server and I wanted to be able to edit files locally and upload them (using rsync, for example) while it was still running on the server. I didn&rsquo;t know about watching the filesystem for changes and had to learn how to do this: a watcher per directory, spawning new watchers when directories are created, and updating those maps I keep in memory as files are added, deleted or edited.</p>

<p>Watching the files introduced another complication, however: What if a user edited a page via the web? I already had code in place that would update my maps. Now the file system watcher would report the same file being written to, resulting in two updates. And what about a change to a file that results in multiple events: create a file, write something to the file, write some more to the file. Three events resulting in three updates? The code is therefore complicated.</p>

<p>If Oddµ knows that a file is going to change ahead of time, like when a user on the web saves an edit, the file is added to a map of ignored files for a second. When the file system watcher sees those changes, no updates are done because it knows that the edit handler already does it.</p>

<p>If Oddµ sees a file change because of somebody editing files directly, a one second timer is started. If another event for the same file arrives, the timer is reset to one second. Only when a second has elapsed without changes does the watcher do the updates to the internal data structures. That is to say, changes made to the file system regarding page title changes or hash tag changes take an effect on the web with a one second delay.</p>

<p>So now, with all that in place, think of all the go routines running in parallel. Every one second timer is a go routine. Every go routine accessing a map like the map if files to ignore means that this map needs to be a data structure containing a map and a lock.</p>

<p>When I look at that part of the code, I still get dizzy. 😵‍💫</p>

<p><a class="tag" href="/search/?q=%23Oddµ">#Oddµ</a> <a class="tag" href="/search/?q=%23Programming">#Programming</a></p>

<p><strong>2024-07-21</strong>. <a class="account" href="https://merveilles.town/@bouncepaw" title="@bouncepaw@merveilles.town">@bouncepaw</a> asked about usability issues, specially in the context of using Oddµ for picture galleries. In my case, I think the hardest part is finding particular pictures. Consider <a href="2020-blumen/index">the page of flowers in 2020</a>. I know that there&rsquo;s a sanseveria in bloom on that page, for example. But how can I find it? I can find the page if I search for &ldquo;bogenhanf #pictures&rdquo;, and then I can search for the same word on the page, and then I have to wait for a bit as the browser lazy-loads pictures.</p>

<p>Perhaps, if I could get into the habit of putting the image description into the Markdown alt text, I could index all the images and their alt text, providing direct access to the images. I guess I would also have to add special code to the Markdown renderer that made the alt text visible for regular visitors (as title attribute or as regular paragraphs).
That&rsquo;d be interesting.</p>

<p><strong>Later</strong>. I have implemented something useful, I hope. If one of the search terms (excluding hashtags and predicates) matches an alt-text of an image, that image is included in the result.</p>

<p>Of course, almost none of my galleries use the alt-text, so right now there aren&rsquo;t many pages that will show results for a query like &ldquo;bogenhanf #pictures&rdquo;.</p>

<p>My expectations regarding alt texts and title attributes for images have changed significantly as I&rsquo;ve spent time on fedi, so I&rsquo;m really not sure what to do about Markdown in this respect. Right now I&rsquo;m in the habit of adding neither alt-text nor title attribute, trying to provide enough text in the paragraphs above or below. With this new search option, that might have to change, too. As a sighted person, I sort of expect the title attribute to be the same as the alt text.</p> 

<https://alexschroeder.ch/view/2024-07-21-what-is-hard-about-oddmu>

---

## [Sponsor] 1Password: You Can’t Ignore GDPR Anymore

date: 2024-07-24, updated: 2024-07-24, from: Daring Fireball

 

<https://1password.com/daringfireball>

---

## Wednesday 24 July, 2024

date: 2024-07-23, from: John Naughton's online diary

Peak Viewing The Peak District viewed from Stanage Edge. Note the strategically-positioned crow. Photo by my son Pete. Quote of the Day “A new scientific truth does not triumph by convincing its opponents and making them see the light, but &#8230; <a href="https://memex.naughtons.org/wednesday-24-july-2024/39660/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/wednesday-24-july-2024/39660/>

---

##  13-Year-Old Daredevil Jumps Trash Cans in Alley on &#8220;Junker Special&#8221; Bike 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/13-year-old-daredevil-jumps-trash-cans-in-alley-on-junker-special-bike>

---

##  Chronic Pain is Psychedelic. &#8220;In moments of extreme pain, physical or psychological,... 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045007-chronic-pain-is-psychedel>

---

##  Flint, MI is giving pregnant residents a &#8220;cash prescription&#8221; of $1500 during... 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045000-flint-mi-is-giving-pregna>

---

##  How Sci-Fi Movies Have Changed Since the 50s 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/how-sci-fi-movies-have-changed-since-the-50s>

---

##  Livestream of a blooming corpse flower (you know, the big stinky one)... 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0045009-livestream-of-a-blooming->

---

## July 22, 2024

date: 2024-07-23, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/july-22-2024-0ab>

---

##  &#8220;Trump&#8217;s Massive Deportation Plan Echoes Concentration Camp History&#8221; 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/trumps-massive-deportation-plan-echoes-concentration-camp-history>

---

## Musk, the Foxy Kingmaker

date: 2024-07-23, from: Om Malik blog

No matter how much I try to avoid political news, there’s no hiding from the forthcoming U.S. presidential election and the ensuing political circus. Not even technology newsletters are a respite. Charlie Warzel of The Atlantic and Sarah Frier of Bloomberg in their most recent editions made a point that echoes something I said two &#8230; 

<https://om.co/2024/07/23/musk-the-foxy-kingmaker/>

---

##  A generic version of a drug that&#8217;s &#8220;as close as we&#8217;ve ever... 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044995-a-generic-version-of-a>

---

##  Kamala Harris is to the left of Joe Biden on health care... 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044994-kamala-harris-is-to-the>

---

##  From Scientific American: What to Know about Project 2025&#8217;s Dangers to Science.... 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044993-from-scientific-american->

---

## 2024-07-23 Eglot for Go, Perl and Markdown

date: 2024-07-23, from: Alex Schroeder's Blog

<h1 id="2024-07-23-eglot-for-go-perl-and-markdown">2024-07-23 Eglot for Go, Perl and Markdown</h1>

<p>Apparently there&rsquo;s a way to have Oddµ and Eglot cooperate in Emacs using
<a href="https://github.com/artempyanykh/marksman">Marksman</a>.</p>

<p>Note that LSP integration only works in a &ldquo;project&rdquo;: a VCS
repository, or in the case of Marksman, a directory containing an
(empty) <code>.marksman.toml</code> file. This latter option is important if
your notes aren&rsquo;t under version control.</p>

<p>After installing the Marksman binary, use something like the following.
This installs Eglot for Go mode, Perl mode and Markdown mode.</p>

<pre><code>;; There is probably a way to put this inside the use-package form but
;; this is how it works for me.
(add-hook 'go-mode-hook 'eglot-ensure)
(add-hook 'perl-mode-hook 'eglot-ensure)
(add-hook 'markdown-mode-hook 'eglot-ensure)
(autoload 'eglot-ensure &quot;eglot&quot; &quot;Start Eglot session for current buffer if there isn’t one.&quot;)

(use-package eglot :ensure t
  :config (add-to-list 'eglot-server-programs '(markdown-mode . (&quot;marksman&quot;))))

(setq-default eglot-workspace-configuration
    '((:gopls .
        ((staticcheck . t)
         (matcher . &quot;CaseSensitive&quot;)))))
</code></pre>

<p><a class="tag" href="/search/?q=%23Emacs">#Emacs</a> <a class="tag" href="/search/?q=%23Oddµ">#Oddµ</a> <a class="tag" href="/search/?q=%23Markdown">#Markdown</a> <a class="tag" href="/search/?q=%23Perl">#Perl</a> <a class="tag" href="/search/?q=%23Golang">#Golang</a></p> 

<https://alexschroeder.ch/view/2024-07-23-eglot>

---

##  &#8220;Dark oxygen&#8221; source discovered on ocean floor. &#8220;The metal nodules are able... 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044992-dark-oxygen-source-discov>

---

##  A Less Rigorous Version of Friendship 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/a-less-rigorous-version-of-friendship>

---

**@Dave Winer's Scripting News** (date: 2024-07-23, from: Dave Winer's Scripting News)

All the reporters know the Repubs refused to fund border stuff so they could use it to tag the Dems in the election. So the first thing the Repubs do is tag VP Harris with the border. The reporter asks a Dem what they have to say about that. But the reporter <i>knows</i> what the Repubs did. So why do they even ask the freaking question? They just play the script the Repubs wrote for them. They are so savvy, but we heard all that too, so we know how corrupt they are. They don't care if we know. 

<http://scripting.com/2024/07/23.html#a133302>

---

##  Bodycam footage of Aston Villa midfielder Youri Tielemans shows how quick and... 

date: 2024-07-23, updated: 2024-07-23, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044990-bodycam-footage-of-aston->

---

**@Dave Winer's Scripting News** (date: 2024-07-23, from: Dave Winer's Scripting News)

<a href="https://shownotes.scripting.com/scripting/2024/07/23/podcastStartsWithLinkblogging.html">Show notes</a> for today's Scripting podcast. 

<http://scripting.com/2024/07/23.html#a131631>

---

## Podcast starts with linkblogging

date: 2024-07-23, from: Dave Winer's Scripting News

<p>A 20-minute morning coffee notes rambler <a href="https://s3.amazonaws.com/scripting.com/2024/07/23/randomMorningCoffeeNotes.m4a">podcast</a>, started with a narration of how we do linkblogging these days, mostly by hand, and how Bluesky is being hurt by not having a large-enough character limit. Another plea for textcasting, some standards for what we put on the wire over the social web.</p>
<p>Also talked about twitter-like systems, and idea borrowed from algol-like and lisp-like. </p>
<p>I talk about what made Unix so great. </p>
<p>Eric Raymond once told me that <a href="https://xmlrpc.com/">XML-RPC</a> was very much like Unix, and I said oh yeah, and so is <a href="http://reallysimple.org/">RSS</a> and the rest. Huge compliment because the simplicity of Unix is what I strive for, put huge time into. </p>
<p>Journos once said Apple is dead, but that was ridiculous because they had built a product that was just starting to grow and they had planted the seeds of huge growth in the 80s when they focused on selling to education, which made sure that kids when they grew up would have good feelings about Apple, and it totally worked. When the reporters were calling them dead, they were actually just about to boom in a whole new way, on the web, which the Mac was perfect for, given the built in simple networking. And then boom again when Jobs came back. And again with the iPod and then again with the iPhone. See how reporters miss the big picture. We shouldn't give them so much power, they pretend they know, but they are usually pretty clueless. </p>
<p>This podcast is also a demo of how my mind works. I flit around all over the place but also have learned over the years that if I want to get anything done I have to focus on one thing for at least a few hours every day, and string those days together. </p>
<p>I want to document this stuff for the benefit of young programmers. I learned a lot from reading the code of Unix, I always want to pay that back, the message is to strive for simplicity, keep technical debt to a minimum, and factor, factor and factor again to reduce technical debt. Those are the hardest projects, I'm doing one of those right now, but in the end it's worth it, because with simplicity you get to build higher.</p>
 

<http://scripting.com/2024/07/23/130117.html?title=podcastStartsWithLinkblogging>

---

**@Dave Winer's Scripting News** (date: 2024-07-23, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/07/23/hopeKamala.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I was able to follow <a href="https://x.com/kamalahq">kamalhq</a> on twitter. This <a href="https://www.yahoo.com/news/trump-lover-elon-musk-already-145940678.html">report</a> says that Musk is rate-limiting followers on that account.  Of course we <a href="http://scripting.com/2017/01/14/whatIfTwtrIsBoughtByARepub.html">warned</a> what could happen if a Republican bought twitter, but I didn't honestly contemplate that a fascist would. These days our greatest fears aren't scary enough. People laugh that Musk paid too much for twitter, but if the US ends up as an autocracy, the oligarch that owns the entire news distribution system for the world will probably have the last laugh. BTW, if you want to know why we're so thrilled to have Harris as the candidate, even though we didn't want Joe to give in, it's because no informed and sane person wants to live in a new Trump term. We tried that if you recall. The hope you hear now is much greater than the hope we had when Obama was selling that (though hope was a good word for it). Today it's the hope that we won't be deported or worse. 

<http://scripting.com/2024/07/23.html#a122650>

---

**@Dave Winer's Scripting News** (date: 2024-07-23, from: Dave Winer's Scripting News)

I want future President Harris to stay happy no matter what the bastards do or say. We should have a crisis line for her to call to get some quick love. 1-800-LUV-KAMALA. 

<http://scripting.com/2024/07/23.html#a121858>

---

## 2017 ODNI Memo on Kaspersky Labs

date: 2024-07-23, updated: 2024-07-23, from: Bruce Schneier blog

<p>It&#8217;s <a href="https://www.dni.gov/files/documents/FOIA/DF-2018-00013-National-Intelligence-Council-Memorandum.pdf">heavily redacted</a>, but still interesting.</p>
<p>Many more ODNI documents <a href="https://www.dni.gov/index.php/read-released-records">here</a>.</p>
 

<https://www.schneier.com/blog/archives/2024/07/2017-odni-memo-on-kaspersky-labs.html>

---

## Industrial policy – the long and the short of it.

date: 2024-07-23, from: Enlightenment Economics blog

I&#8217;ve been dipping into the proofs of a substantial book, Industrial Policy for the United States by Marc Fasteau and Ian Fletcher, due out in September. It will prove a significant resource for anybody interested in the issue. The book &#8230; <a href="http://www.enlightenmenteconomics.com/blog/index.php/2024/07/industrial-policy-the-long-and-the-short-of-it/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<http://www.enlightenmenteconomics.com/blog/index.php/2024/07/industrial-policy-the-long-and-the-short-of-it/>

---

## 2024-07-23 ngIRCd and Munin

date: 2024-07-23, from: Alex Schroeder's Blog

<h1 id="2024-07-23-ngircd-and-munin">2024-07-23 ngIRCd and Munin</h1>

<p>Today I tried to make the <a href="https://github.com/munin-monitoring/contrib/blob/master/plugins/ircd/irc2">irc2</a> plugin work for my IRC server.</p>

<p>Mostly fiddling with the regular expressions. Adding an optional comma. Making it case-insensitive. The usual, I guess.</p>

<p>I was positively impressed by Debians pre-packaged Perl modules:</p>

<pre><code>apt install libpoe-component-irc-perl libpoe-component-sslify-perl
</code></pre>

<p>Here&rsquo;s the modified plugin for <code>/etc/munin/plugins</code>:</p>

<pre><code>#!/usr/bin/perl
# -*- perl -*-

=head1 NAME

ircstats  - Plugin to graph data about an IRC network and a single IRC server

=head1 CONFIGURATION

- env.SERVER to point to the server to connect to, defaults to localhost.
- env.PORT port to use, defaults to 6667.
- env.NICK nickname to use, defaults to munin-$HASH.
- env.USESSL 0 or 1 values to enable SSL/TLS, defaults to 0.
- env.USEIPV6 0 or 1 to enable IPv6 use, defaults to 0.

=head1 USAGE

This plugin connects to an IRC server.

It requires POE::Component::IRC and POE::Component::SSLify if you use SSL/TLS.

=head1 AUTHOR

Robin H. Johnson
Alex Schroeder

=head1 LICENSE

3-clause BSD.

=head1 MAGIC MARKERS

  #%# family=manual

=cut
use strict;
use warnings;
use Data::Dumper;
use POE qw(Component::IRC);
use Digest::MD5 qw(md5_hex);

my $nickname = $ENV{NICK} || 'munin-'.substr(md5_hex(rand().time()), 0, 3);
my $ircname = &quot;Munin statistics gathering from $ENV{SERVER}&quot;;
my $server = $ENV{SERVER} || 'localhost';
my $port = $ENV{PORT} || 6667;
my $usessl = $ENV{USESSL} || 0;
my $useipv6 = $ENV{USEIPV6} || 0;

if($ARGV[0] and $ARGV[0] eq &quot;config&quot;) {
  print &quot;graph_title ircd status - $server\n&quot;;
  print &quot;graph_category chat\n&quot;;
  print &quot;graph_order clients channels servers localclients clientmax localclientmax localservers opers unknownconns\n&quot;;
  print &quot;graph_args -l 0\n&quot;;
  print &quot;clients.label clients\n&quot;;
  print &quot;clients.draw LINE2\n&quot;;
  print &quot;channels.label channels\n&quot;;
  print &quot;channels.draw LINE2\n&quot;;
  print &quot;servers.label servers\n&quot;;
  print &quot;servers.draw LINE2\n&quot;;
  print &quot;localclients.label localclients\n&quot;;
  print &quot;localclients.draw LINE2\n&quot;;
  print &quot;clientmax.label clientmax\n&quot;;
  print &quot;clientmax.draw LINE2\n&quot;;
  print &quot;localclientmax.label localclientmax\n&quot;;
  print &quot;localclientmax.draw LINE2\n&quot;;
  print &quot;opers.label opers\n&quot;;
  print &quot;opers.draw LINE2\n&quot;;
  print &quot;localservers.label localservers\n&quot;;
  print &quot;localservers.draw LINE2\n&quot;;
  print &quot;unknownconns.label unknownconns\n&quot;;
  print &quot;unknownconns.draw LINE2\n&quot;;
  exit 0;
}

my %result;

# We create a new PoCo-IRC object
my $irc = POE::Component::IRC-&gt;spawn(
  nick =&gt; $nickname,
  ircname =&gt; $ircname,
  server =&gt; $server,
  port =&gt; $port,
  raw =&gt; 0,
  UseSSL =&gt; $usessl,
  useipv6 =&gt; $useipv6,
    ) or die &quot;Oh noooo! $!&quot;;

POE::Session-&gt;create(
  package_states =&gt; [
    # debug messages:
    # main =&gt; [ qw(_default _start irc_001 irc_376 irc_disconnected irc_public) ],
    # These are the interesting ones:
    # irc_251:  'localhost' 'There are 13 users and 0 services on 2 servers' [There are 13 users and 0 services on 2 servers]
    # irc_254:  'localhost' '26 :channels formed' [26, channels formed]
    # irc_255:  'localhost' 'I have 8 users, 0 services and 1 servers' [I have 8 users, 0 services and 1 servers]
    # irc_265:  'localhost' '8 8 :Current local users: 8, Max: 8' [8, 8, Current local users: 8, Max: 8]
    # irc_266:  'localhost' '13 14 :Current global users: 13, Max: 14' [13, 14, Current global users: 13, Max: 14]
    main =&gt; [ qw(_start irc_001 irc_251 irc_252 irc_253 irc_254 irc_255 irc_265 irc_266 irc_372 irc_375 irc_376 irc_public irc_disconnected) ],
  ],
  heap =&gt; { irc =&gt; $irc },
    );

$poe_kernel-&gt;run();

my $RPL_LUSER_CLIENT = 251;
my $RPL_LUSERCHANNELS = 254;
my $RPL_ENDOFMOTD = 376;

sub _start {
  my ($heap,$kernel,$sender) = @_[HEAP,KERNEL,SENDER];

  # retrieve our component's object from the heap where we stashed it
  my $irc = $heap-&gt;{irc};

  $irc-&gt;yield( register =&gt; 'all' );
  $irc-&gt;yield( connect =&gt; { } );
  return;
}

sub irc_001 {
  my $sender = $_[SENDER];
  my $irc = $sender-&gt;get_heap();
  $irc-&gt;yield( quit =&gt; { });
  return;
}


#irc_251:  'moo.us.p2p-network.net' 'There are 155 users and 3397 invisible on 16 servers' [There are 155 users and 3397 invisible on 16 servers]
# luserclient
sub irc_251 {
  my $sender = $_[SENDER];
  my $irc = $sender-&gt;get_heap();
  my $s = $_[ARG1];
  # Do we have something like an UnrealIRCD?
  if($s =~  /There are (\d+) users and (\d+) invisible on (\d+) servers/) {
    $result{'clients'} = $1 + $2 - 1; # don't count this script
    $result{'servers'} = $3;
  }
  # Or maybe some freendode hyperion stuff?
  elsif($s =~  /There are (\d+) listed and (\d+) unlisted users on (\d+) servers/) {
    $result{'clients'} = $1 + $2 - 1; # don't count this script
    $result{'servers'} = $3;
  }
  # Or some recent ircnet ircd?
  elsif($s =~  /There are (\d+) users and \d+ services on (\d+) servers/) {
    $result{'clients'} = $1 - 1; # don't count this script
    $result{'servers'} = $2;
  }
  # Anything else goes here
  elsif($s =~  /There are (\d+) users and (\d+) invisible/) {
    $result{'clients'} = $1 + $2 - 1; # don't count this script
  }
  # And here (if there are no invisible count)
  elsif($s =~  /There are (\d+) users/) {
    $result{'clients'} = $1 - 1; # don't count this script
  }
}

#irc_252:  'moo.us.p2p-network.net' '18 :operator(s) online' [18, operator(s) online]
# opers
sub irc_252 {
  my $sender = $_[SENDER];
  my $irc = $sender-&gt;get_heap();
  my $s = $_[ARG1];
  if($s =~  /^(\d+)/) {
    $result{'opers'} = $1;
  }
}

#irc_253:  'moo.us.p2p-network.net' '1 :unknown connection(s)' [1, unknown connection(s)]
sub irc_253 {
  my $sender = $_[SENDER];
  my $irc = $sender-&gt;get_heap();
  my $s = $_[ARG1];
  if($s =~  /^(\d+)/) {
    $result{'unknownconns'} = $1;
  }
}

#irc_254:  'moo.us.p2p-network.net' '1325 :channels formed' [1325, channels formed]
# luserchannels
sub irc_254 {
  my $sender = $_[SENDER];
  my $irc = $sender-&gt;get_heap();
  my $s = $_[ARG1];
  if($s =~  /^(\d+)/) {
    $result{'channels'} = $1;
  }
}

#irc_255:  'moo.us.p2p-network.net' 'I have 348 clients and 1 servers' [I have 348 clients and 1 servers]
# local clients/servers
sub irc_255 {
  my $sender = $_[SENDER];
  my $irc = $sender-&gt;get_heap();
  my $s = $_[ARG1];
  if($s =~  /I have (\d+) clients and (\d+) servers/) {
    $result{'localclients'} = $1-1; # don't count this script
    $result{'localservers'} = $2;
  }
  elsif($s =~  /I have (\d+) users, \d+ services and (\d+) servers/) {
    $result{'localclients'} = $1-1; # don't count this script
    $result{'localservers'} = $2;
  }
}

#irc_265:  'moo.us.p2p-network.net' 'Current Local Users: 348  Max: 1900' [Current Local Users: 348  Max: 1900]
sub irc_265 {
  my $sender = $_[SENDER];
  my $irc = $sender-&gt;get_heap();
  my $s = $_[ARG1];
  if($s =~  /Current Local Users: (\d+),?\s+Max: (\d+)/i) {
    $result{'localclients'} = $1-1; # don't count this script
    $result{'localclientmax'} = $2;
  }
}

#irc_266:  'moo.us.p2p-network.net' 'Current Global Users: 3552  Max: 8742' [Current Global Users: 3552  Max: 8742]
sub irc_266 {
  my $sender = $_[SENDER];
  my $irc = $sender-&gt;get_heap();
  my $s = $_[ARG1];
  if($s =~  /Current Global Users: (\d+),?\s+Max: (\d+)/i) {
    $result{'clients'} = $1-1; # don't count this script
    $result{'clientmax'} = $2;
  }
}

# 372 motdline
sub irc_372 {
  return;
}
# 375 startofmotd
sub irc_375 {
  return;
}
# 376 endofmotd
sub irc_376 {
  my $sender = $_[SENDER];
  my $irc = $sender-&gt;get_heap();
  $irc-&gt;yield( quit =&gt; {} );
}

sub munin_print {
  my $key = shift;
  my $val = shift;
  print &quot;${key}.value &quot;.($val || 'U').&quot;\n&quot;;
}

sub irc_disconnected {
  for my $var (qw(clients channels servers localclients clientmax localclientmax localservers opers unknownconns)) {
    munin_print($var, $result{$var});
  }
  exit 0;
}

sub irc_public {
  my ($sender, $who, $where, $what) = @_[SENDER, ARG0 .. ARG2];
  my $nick = ( split /!/, $who )[0];
  my $channel = $where-&gt;[0];

  if ( my ($rot13) = $what =~ /^rot13 (.+)/ ) {
    $rot13 =~ tr[a-zA-Z][n-za-mN-ZA-M];
    $irc-&gt;yield( privmsg =&gt; $channel =&gt; &quot;$nick: $rot13&quot; );
  }
  return;
}

# We registered for all events, this will produce some debug info.
sub _default {
  my ($event, $args) = @_[ARG0 .. $#_];
  my @output = ( &quot;$event: &quot; );

  for my $arg (@$args) {
    if ( ref $arg eq 'ARRAY' ) {
      push( @output, '[' . join(', ', @$arg ) . ']' );
    }
    else {
      push ( @output, &quot;'$arg'&quot; );
    }
  }
  print join ' ', @output, &quot;\n&quot;;
  return 0;
}
</code></pre>

<p>To configure, I created the file <code>/etc/munin/plugin-conf.d/irc.conf</code>:</p>

<pre><code>[irc2]
env.SERVER campaignwiki.org
env.PORT 6697
env.USESSL 1
</code></pre>

<p>The result:</p>

<p><img loading="lazy" src="2024-07-23-ngircd-and-munin-1.jpg" alt="A graph showing some ngIRCd data" /></p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23Munin">#Munin</a> <a class="tag" href="/search/?q=%23IRC">#IRC</a> <a class="tag" href="/search/?q=%23ngircd">#ngircd</a></p> 

<https://alexschroeder.ch/view/2024-07-23-ngircd-and-munin>

---

## Go Kamala!

date: 2024-07-23, from: Robert Reich's blog

Friends, 

<https://robertreich.substack.com/p/go-kamala>

---

## July 22, 2024 

date: 2024-07-23, from: Heather Cox Richardson blog

Vice President Kamala Harris has continued to rack up endorsements and delegates since President Biden&#8217;s surprise announcement yesterday that he would not accept the 2024 Democratic presidential nomination. As of tonight, Harris has the support of at least 2,471 delegates, more than the 1,976 she will need to secure the nomination. 

<https://heathercoxrichardson.substack.com/p/july-22-2024>

---

## Flower field trip to Volunteer Park

date: 2024-07-23, from: Tracy Durnell Blog

My friend and I are trying to get out of the house more often, exploring new destinations we don&#8217;t think will be too crowded. (COVID numbers are high so we both still masked too.) This weekend we headed into Seattle to the conservatory at Volunteer Park on Capitol Hill. I&#8217;ve always loved the San Francisco [&#8230;] 

<https://tracydurnell.com/2024/07/22/flower-field-trip-to-volunteer-park/>

---

## The New Overcast

date: 2024-07-23, updated: 2024-07-23, from: Daring Fireball

 

<https://marco.org/2024/07/16/overcast-rewrite>

---

## FBI Used New Cellebrite Software to Access Trump Shooter’s Samsung Phone

date: 2024-07-23, updated: 2024-07-23, from: Daring Fireball

 

<https://www.bloomberg.com/news/articles/2024-07-18/fbi-used-new-cellebrite-software-to-access-trump-shooter-s-phone>

---

## Surely Microsoft Isn’t Blaming EU for Its Problems?

date: 2024-07-22, from: Om Malik blog

The CrowdStrike fiasco has once again focused the spotlight on Microsoft’s Achilles’ heel — security, or rather the lack there of. I have been writing about technology long enough to know that nothing about the Windows operating system surprises me. Over the weekend, The Wall Street Journal outlined a multitude of reasons why the “blue &#8230; 

<https://om.co/2024/07/22/surely-microsoft-isnt-blaming-eu-for-its-problems/>

---

## Thank you billionaires

date: 2024-07-22, from: Dave Winer's Scripting News

<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/07/22/messageForBillionaires.png"></center>Or, less politely..</div></p>
 

<http://scripting.com/2024/07/22/214539.html?title=thankYouBillionaires>

---

##  An explainer and organizational toolkit from Red Wine & Blue about Project... 

date: 2024-07-22, updated: 2024-07-22, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044989-an-explainer-and-organiza>

---

## The state of Docker on popular RISC-V platforms

date: 2024-07-22, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">The state of Docker on popular RISC-V platforms</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>I've been testing a <a href="https://github.com/geerlingguy/sbc-reviews/issues/47">Milk-V Jupiter</a> this week, and have tested a number of other RISC-V development boards over the past two years.</p>

<p>As with any new CPU architecture, software support and ease of adoption are extremely important if you want to reach a wider audience. I wouldn't expect every developer and SBC hobbyist to be able to compile the Linux kernel, and the need to compile much of anything these days is getting rare. So having any instance where one <em>has</em> to know how to tweak a Makefile or pass in different flags to a compiler is a bit of a turn-off for platform adoption.</p>

<p>So one thing I've followed closely is how easy it is for me to get my own software running on RISC-V boards. It's one thing to run some vendor-provided demos. It's another entirely to take my real-world applications and infrastructure apps, and get them to work without hassle.</p>

<p>And to that end, Docker and Ansible, two tools I use extensively for dev/ops work, both run stably—though with plenty of caveats since RISC-V is still so new.</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-07-22T15:32:40-05:00" title="Monday, July 22, 2024 - 15:32" class="datetime">July 22, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/state-docker-on-popular-risc-v-platforms>

---

##  Kamala Harris and her views on the climate crisis. &#8220;Harris has made... 

date: 2024-07-22, updated: 2024-07-22, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044988-kamala-harris-and-her-vie>

---

##  News Happening Faster Than Man Can Generate Uninformed Opinions. &#8220;It&#8217;s getting harder... 

date: 2024-07-22, updated: 2024-07-22, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044987-news-happening-faster-tha>

---

## July 21, 2024

date: 2024-07-22, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/july-21-2024-655>

---

## Go features by version

date: 2024-07-22, from: Anton Zhiyanov blog

Which major features appeared in which versions of Go. 

<https://antonz.org/which-go/>

---

## I'm from Queens too

date: 2024-07-22, from: Dave Winer's Scripting News

<p>I grew up in the same part of Queens as Trump, about ten years after he did. His family was in Jamaica, mine in Flushing. Here's a <a href="https://www.google.com/maps/dir/2931+170th+Street,+Queens,+NY/85-15+Wareham+Pl,+Jamaica,+NY+11432/@40.74413,-73.7982607,14z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x89c28a8078136589:0xcdf1c8651455269a!2m2!1d-73.7948958!2d40.7696471!1m5!1m1!1s0x89c2611ad4d2c6a5:0xfe60c1b9262c3e04!2m2!1d-73.7858048!2d40.7170409!3e0?entry=ttu">map</a> that shows you where the two houses are. 4.0 miles apart if you take <a href="https://en.wikipedia.org/wiki/Utopia_Parkway">Utopia Parkway</a>. A great name for a street, but it's not a parkway and it's nice but definitely not a utopia.</p>
<p>People who aren't from huge cities like New York don't know that Trump what our losers look like. They probably have their own loser types. I think that's where 99% of the confusion is. They really don't believe he's so bad. Don't hold that against them, that's nowhere near as bad as knowing what he is and being okay with that. </p>
<p>He's a mean bully type. The name-calling is a big clue. Distracts from <i>his</i> weaknesses, which are very obvious. I don't believe in <a href="https://en.wikipedia.org/wiki/Body_shaming">body shaming</a>, because I care about other people's feelings. If I criticize his appearance it might reflect poorly on nice people who have his body type who may not be mean bully losers like Trump. </p>
<p>He's also a really good comedian if you don't think he wants to have the power to kill millions of people and control many more people. Last time he was our president just through incompetence, without trying, he was responsible for the deaths of hundreds of thousands of Americans in the Covid disaster. He also wanted the army shoot protestors, that's the mean part of our former president. Luckily the people who worked for him told him to fuck off. They saved us from going into a very deep hole that would have been hard to escape from.</p>
<p>I watched the coverage of the aftermath of the assassination attempt, and listened to the Americans they interviewed, not the actors they put behind him on stage, to make him look like a badass I guess, these were just normal people who mostly like Trump, but seem pretty likeable themselves. The one thing you heard over and over was how If you don't like a candidate vote against them don't shoot them. That's American and it's not fascist at all. I don't think they know that he wants to make big changes in how our politics work. People think if he's bad they can just vote him out next time. He tells them this will be the last election if he wins, he actually says that, but somehow it doesn't seem to register. </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/07/22/massDeportationNow.png"></center>Do Trump supporters understand what they support?</div></p>
<p>Of course the journalists are distorting who Trump supporters are. Trump is deplorable if you take him at his word. Some of Trump's followers are deplorable too, like the ones who rioted at our Capitol and January 6 and the people who are lined up to work in his next administration if he wins. They are awful people who want to control all of us. They're already doing it via the Supreme Court. It's going to get a lot worse if we go the wrong way. We shouldn't accept that we're horribly divided. The powerful media people want us to be divided, I don't know why and I don't care, I just know they do, based on their actions. </p>
<p>Anyway I know we're at a high moment, we're excited, and I'm going to enjoy the feeling. We all seem to be pulling the same way, at least on "our side" but I hold out hope that being an American still means something, that we can be friends, and fellow countrymen, and work together. I think that's still our greatest challange and our greatest opportunity. Yeah I am woke, that means I care about all of us. I think most of us do no matter who you vote for.</p>
 

<http://scripting.com/2024/07/22/165652.html?title=imFromQueensToo>

---

**@Dave Winer's Scripting News** (date: 2024-07-22, from: Dave Winer's Scripting News)

For the DNC in 2004, we had a site called <a href="https://web.archive.org/web/20040805042053/https://www.conventionbloggers.com/">Convention Bloggers</a>. It was a river of news feed reader, clearly done with Frontier, of blogs run by people who were at the convention. 

<http://scripting.com/2024/07/22.html#a141250>

---

**@Dave Winer's Scripting News** (date: 2024-07-22, from: Dave Winer's Scripting News)

Looking forward to the NYT deeply analyzing Trump‘s 78 year old mind and body and his Hannibal Lecter stories. 

<http://scripting.com/2024/07/22.html#a125843>

---

## 2024-07-20 Bots again

date: 2024-07-22, from: Alex Schroeder's Blog

<h1 id="2024-07-20-bots-again">2024-07-20 Bots again</h1>

<p>Today I couldn&rsquo;t log into the server. <code>ssh</code> just sat there, waiting for the server. Some web page loaded a few bytes and stopped. I knew it: some idiot had once again written a bot that was hitting my web apps (also known as &ldquo;expensive endpoints&rdquo;) because they ignored all the rules. They also didn&rsquo;t get caught by fail2ban because of they were using cloud services, of course. And the only thing that helps against these fuckers is banning the whole network. Time to get working.</p>

<p>First, I had to reboot the server via the website of my service provider.</p>

<p>Then I had to figure out which app it was. It&rsquo;s impossible for me to find out. All my expensive apps are from a directory called <code>/home/alex/farm</code>.</p>

<p>When I look at the system log file I, find entries like these:</p>

<pre><code>grep &quot;Out of memory&quot; /var/log/syslog | tail | cut -b 72-
Out of memory: Killed process 1525 (/home/alex/farm) total-vm:95736kB, anon-rss:7700kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 521 (node) total-vm:1268068kB, anon-rss:63440kB, file-rss:0kB, shmem-rss:0kB, UID:118 pgtables:2112kB oom_score_adj:0
Out of memory: Killed process 12302 (/home/alex/farm) total-vm:92464kB, anon-rss:54820kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 12622 (/home/alex/farm) total-vm:92420kB, anon-rss:53040kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 12628 (/home/alex/farm) total-vm:92712kB, anon-rss:51460kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:212kB oom_score_adj:0
Out of memory: Killed process 12632 (/home/alex/farm) total-vm:92556kB, anon-rss:51916kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 12206 (/home/alex/farm) total-vm:92320kB, anon-rss:57256kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 12016 (/home/alex/farm) total-vm:92292kB, anon-rss:57740kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
Out of memory: Killed process 12689 (/home/alex/farm) total-vm:92728kB, anon-rss:57444kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:212kB oom_score_adj:0
Out of memory: Killed process 12041 (/home/alex/farm) total-vm:92484kB, anon-rss:58288kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
</code></pre>

<p>This is not helping. Who is 12041? There are large lists of the process identifiers and some numbers in the log, but the name is always shortened:</p>

<pre><code>grep &quot;12041&quot; /var/log/syslog | tail -n 3
2024-07-20T19:51:03.968678+02:00 sibirocobombus kernel: [ 3275.028117] [  12041]  1000 12041    23121    14572   212992     4117             0 /home/alex/farm
2024-07-20T19:51:03.968882+02:00 sibirocobombus kernel: [ 3275.028363] oom-kill:constraint=CONSTRAINT_NONE,nodemask=(null),cpuset=/,mems_allowed=0,global_oom,task_memcg=/system.slice/monit.service,task=/home/alex/farm,pid=12041,uid=1000
2024-07-20T19:51:03.968883+02:00 sibirocobombus kernel: [ 3275.028378] Out of memory: Killed process 12041 (/home/alex/farm) total-vm:92484kB, anon-rss:58288kB, file-rss:0kB, shmem-rss:0kB, UID:1000 pgtables:208kB oom_score_adj:0
</code></pre>

<p>Useless.</p>

<p>By that time, however, the system was slowing down again.
I fired up <code>htop</code> and saw a gazillion instances of the Community Wiki script.
Looking at the <code>/etc/log/apache2/access.log</code> file shows that bots were requesting the edit pages (!) of all the thousands of Community Wiki pages.</p>

<p>Thanks, idiots.</p>

<p>I needed to find where these requests where coming from.
My <a href="https://alexschroeder.ch/admin/leech-detector">leech-detector</a> script was as limited to single IP numbers as fail2ban.
So the first order of business was to add some functionality:
If given the option <code>--networks</code>, it now looks up the network range the requests come from and reports those:</p>

<pre><code>tail -n 50 /var/log/apache2/access.log | grep communitywiki | bin/admin/leech-detector --networks
</code></pre>

<p>This is expensive, of course, so I try to cache the <a href="https://www.routeviews.org/routeviews/index.php/collectors/">Route View ASN lookups</a> but the cache doesn&rsquo;t persist between calls. Using a small number of rows is the correct approach, here.</p>

<p>The result is a table like the one below. When I ran it, I used 400 rows or so.</p>

<table>
<thead>
<tr>
<th align="right">IP</th>
<th align="right">Hits</th>
<th align="right">Bandw.</th>
<th align="right">Rel.</th>
<th align="right">Interv.</th>
<th>Status</th>
</tr>
</thead>

<tbody>
<tr>
<td align="right">117.22.0.0/15</td>
<td align="right">1</td>
<td align="right">6K</td>
<td align="right">25%</td>
<td align="right"></td>
<td>200 (100%)</td>
</tr>

<tr>
<td align="right">59.172.0.0/14</td>
<td align="right">1</td>
<td align="right">6K</td>
<td align="right">25%</td>
<td align="right"></td>
<td>200 (100%)</td>
</tr>

<tr>
<td align="right">114.104.0.0/14</td>
<td align="right">1</td>
<td align="right">6K</td>
<td align="right">25%</td>
<td align="right"></td>
<td>200 (100%)</td>
</tr>

<tr>
<td align="right">220.184.0.0/13</td>
<td align="right">1</td>
<td align="right">6K</td>
<td align="right">25%</td>
<td align="right"></td>
<td>200 (100%)</td>
</tr>
</tbody>
</table>
<p>If you then start using <code>whois</code> on the numbers, you&rsquo;ll see:</p>

<ul>
<li>117.22.0.0 → China Telecom</li>
<li>59.172.0.0 → China Telecom</li>
<li>114.104.0.0 → China Telecom</li>
<li>220.184.0.0 → Zhejiang Telecom</li>
</ul>

<p>I think you know where this is going.</p>

<p>And so I copying the network IP, calling <code>whois</code>, verifying that it was Chinese Telecom or related, and added it to my <a href="https://alexschroeder.ch/admin/ban-cidr">ban-cidr</a> script.
(Note how I&rsquo;m using <code>netfilter-persistent</code> these days so that I don&rsquo;t have to run <code>ban-cidr</code> after every server restart.)</p>

<p>And now I&rsquo;m going to add the ranges above to the script.</p>

<p>Some days I feel like I&rsquo;m slowly starting to ban the whole commercial cloud service internet because nothing good ever seems to come of it. Do you feel the same?</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23Bots">#Bots</a> <a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p>

<p><strong>2024-07-22</strong>. Here&rsquo;s another slight annoyance, for <code>ngircd</code>. There are a lot of log lines for a day:</p>

<pre><code>journalctl --unit ngircd.service|grep &quot;Jul 21&quot;|wc -l
7436
</code></pre>

<p>More than half of them come from a single IP hosted by Octopuce:</p>

<pre><code>journalctl --unit ngircd.service|grep &quot;Jul 21.*2001:67c:288:2::231&quot;|wc -l
4347
</code></pre>

<p>They all have this format:</p>

<pre><code>Jul 21 11:39:51 sibirocobombus ngircd[594]: Accepted connection 16 from &quot;[2001:67c:288:2::231]:41240&quot; on socket 8.
Jul 21 11:39:51 sibirocobombus ngircd[594]: Using X509 credentials from slot 0
Jul 21 11:39:51 sibirocobombus ngircd[594]: Shutting down connection 16 (SSL accept error, closing socket) with &quot;[2001:67c:288:2::231]:41240&quot; ...
Jul 21 11:39:51 sibirocobombus ngircd[594]: Client unregistered (connection 16): SSL accept error, closing socket.
Jul 21 11:39:51 sibirocobombus ngircd[594]: Connection 16 with &quot;[2001:67c:288:2::231]:41240&quot; closed (in: 0.0k, out: 0.0k).
</code></pre>

<p>I&rsquo;m going to try and use <code>fail2ban</code> for this.</p>

<p>Looks like this is happening every 10 seconds:</p>

<pre><code>journalctl --unit ngircd.service|grep &quot;Jul 21.*Shutting down&quot;|tail|cut -d ' ' -f 3
23:58:23
23:58:33
23:58:43
23:58:53
23:59:03
23:59:13
23:59:23
23:59:33
23:59:43
23:59:53
</code></pre>

<p>So here&rsquo;s my attempt at a filter, <code>/etc/fail2ban/filter.d/ngircd.conf</code>:</p>

<pre><code># Fail2Ban filter for failed ssl connections to the ngIRC daemon

[INCLUDES]
# Read common prefixes. If any customizations available -- read them from
# common.local
before = common.conf

[Definition]
# Example:
# Shutting down connection 16 (SSL accept error, closing socket) with &quot;[2001:67c:288:2::231]:44846&quot;
_daemon = ngircd
failregex = ^%(__prefix_line)sShutting down connection [0-9]+ \(SSL accept error, closing socket\) with &quot;&lt;HOST&gt;:[0-9]+&quot; \.\.\.$
ignoreregex = 

[Init]
journalmatch = _SYSTEMD_UNIT=ngircd.service + _COMM=ngircd

# Author: Alex Schroeder
</code></pre>

<p>And this is the jail, <code>/etc/fail2ban/jail.d/ngircd.conf</code> – and here I want to ban them after four failed connects in a minute.
Remember the default ban lasts 10 minutes. Since this attack is moving so slowly, I want to increase this ban time to an hour.</p>

<pre><code>[ngircd]
enabled = true
findtime = 60
maxretry = 4
bantime = 60m
</code></pre>

<p>Let&rsquo;s give it a try!</p>

<pre><code>systemctl reload fail2ban
</code></pre>

<p>Then again: fail2ban is only for future attacks. The current level of persistency also deserves its own treatment:</p>

<pre><code>ipset create banlist6 hash:net family inet6
ip6tables -I INPUT -m set --match-set banlist6 src -j DROP
ip6tables -I FORWARD -m set --match-set banlist6 src -j DROP
ipset add banlist6 2001:67c:288:2::231
</code></pre>

<p>There we go.</p>

<p>Oh, and as soon as I did that, it switched to 91.194.61.231, but only once every two or three minutes.
Still Octopuce, though.</p>

<pre><code>ipset add banlist 91.194.60.0/23
</code></pre>

<p><strong>2024-07-22</strong>. Back to Community Wiki and its enemies, however.</p>

<p><img loading="lazy" src="2024-07-20-bots-again-1.jpg" alt="" /></p>

<p>1.92GiB for the bots?</p> 

<https://alexschroeder.ch/view/2024-07-20-bots-again>

---

**@Dave Winer's Scripting News** (date: 2024-07-22, from: Dave Winer's Scripting News)

<a href="https://shownotes.scripting.com/podcast0/2024/07/22/1amPredncPodcastRamble.html">Show notes</a> for 2004 pre-DNC podcast, part of the <a href="https://this.how/podcast0/">Podcast0</a> series. 

<http://scripting.com/2024/07/22.html#a124622>

---

**@Dave Winer's Scripting News** (date: 2024-07-22, from: Dave Winer's Scripting News)

I'm doing something new. Trying to initiate topics on the social web. We almost totally respond to external stuff, I wonder how different it would be if we engaged on a more individual level. I've been doing this for a while, but only now am able to explain it. 

<http://scripting.com/2024/07/22.html#a122821>

---

## Snake Mimics a Spider

date: 2024-07-22, updated: 2024-07-22, from: Bruce Schneier blog

<p>This is a fantastic video. It&#8217;s an Iranian spider-tailed horned viper (<i>Pseudocerastes urarachnoides</i>). Its tail looks like a spider, which the snake uses <a href="https://www.youtube.com/watch?v=XFjoqyVRmOU">to</a> <a href="https://www.msn.com/en-us/news/technology/this-might-look-like-a-spider-but-you-re-in-for-a-shock/ar-AA1mBOJi">fool</a> passing birds looking for a meal.</p>
 

<https://www.schneier.com/blog/archives/2024/07/snake-mimics-a-spider.html>

---

## What we must do now

date: 2024-07-22, from: Robert Reich's blog

Friends, 

<https://robertreich.substack.com/p/what-dems-must-do-now>

---

## July 21, 2024 

date: 2024-07-22, from: Heather Cox Richardson blog

&#8220;My Fellow Americans, 

<https://heathercoxrichardson.substack.com/p/july-21-2024>

---

## Straight No Chaser – Gerry Mulligan and Thelonius Monk

date: 2024-07-22, from: Tracy Durnell Blog

This whole album is good. I also had a collection called Gerry Mulligan Meets the Saxophonists that drew from his combos with Ben Webster, Zoot Sims, and Johnny Hodges.* I&#8217;m partial to the Ben Webster myself. *(Then, being somewhat obsessive about jazz in HS and college, I got all the original albums, which included ordering [&#8230;] 

<https://tracydurnell.com/2024/07/21/straight-no-chaser-gerry-mulligan-and-thelonius-monk/>

---

## Thank you, Joe. 

date: 2024-07-22, from: Robert Reich's blog

Friends, 

<https://robertreich.substack.com/p/thank-you-joe>

---

## Monday 22 July, 2024

date: 2024-07-21, from: John Naughton's online diary

Evolution Of one thing at least we can be sure: ‘soapy Sam’ would not have approved of the graphic. Quote of the Day With the birth of the artist came the inevitable afterbirth&#8230; the critic.” Mel Brooks Musical alternative to &#8230; <a href="https://memex.naughtons.org/monday-22-july-2024/39655/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-22-july-2024/39655/>

---

## Biden Bows Out

date: 2024-07-21, from: Dan Rather's Steady

Americans, every one of us, are about to be tested as never before. We have always been known for our ability to rise above challenges. This will be one for the ages. I have hope and faith that we are up to it. We had better be. Democracy as we have known it depends on us. 

<https://steady.substack.com/p/biden-bows-out>

---

## Election Countdown, 107 Days to Go: Joe Biden Passes the Torch

date: 2024-07-21, from: James Fallows, Substack

A sitting president changes everything about the race. We'll remember where we were, when we heard this news. 

<https://fallows.substack.com/p/election-countdown-107-days-to-go>

---

## Today's other stuff

date: 2024-07-21, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/11/nakedJenToday.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">BTW, there is a <a href="https://en.wikipedia.org/wiki/Twenty-fifth_Amendment_to_the_United_States_Constitution">totally legit and legal way</a> to deal with the issue people are grappling with, w/o any fancy new extra-legal ways of nominating a president that resolves it in a minute, if the Cabinet goes along with the idea that the current president isn't able to do the job, and if being re-elected is a legitimate part of doing the job. </p>
<p>Pretty sure most people don't get that being president is a job, not a role someone plays in a TV sitcom. </p>
<p>Great wealth is poison, that's what's playing out in the NYT-orchestrated overthrow of the American government. They're driving us into the arms of the Nazis. Who knows why, or even if there is a reason, other than their drive to find meaning in their great wealth. Their problem, and ours, is that it has no meaning, no human can use the money they've accumulated. These are not human-size fortunes, playing a game of make-believe, what if we really were as smart as we think our money says we are. Well you ain't that smart.</p>
 

<http://scripting.com/2024/07/21/212648.html?title=todaysOtherStuff>

---

**@Dave Winer's Scripting News** (date: 2024-07-21, from: Dave Winer's Scripting News)

<a href="https://talkingpointsmemo.com/news/bidens-exit-puts-the-spotlight-on-the-dnc-delegates">The earth shook today</a>. I'm watching the news like everyone else after President Biden withdrew. There really is a lot happening very quickly, and the Dems all sound like they got their story straight, for once the Dems sound like a party. How did that happen. NakedJen says we need a miracle. I said that's her department. <span class="spOldSchoolEmoji">❤️</span> 

<http://scripting.com/2024/07/21.html#a212256>

---

## Biden Drops Out of Reelection Bid, Fully Endorses Kamala Harris

date: 2024-07-21, updated: 2024-07-21, from: Daring Fireball

 

<https://x.com/JoeBiden/status/1815080881981190320>

---

## NYT just stop podcast

date: 2024-07-21, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2024/07/04/butHerEmails.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">A two-minute <a href="http://scripting.com/2024/07/21/nytSayYourSorryAndGetBackToNews.m4a">podcast</a> where I dictate an op-ed the NYT should run in its own name, apologizing for trying to take over the US government, and promising to return to being a news organization. </p>
<p>I am so fed up with it. Today they ran an op-ed written by <a href="https://en.wikipedia.org/wiki/Aaron_Sorkin">Aaron Sorkin</a> giving advice to Democrats based on his experience writing scripts for a <a href="https://en.wikipedia.org/wiki/The_West_Wing">fictional White House</a> <i>television show</i> in the late 90s and early 00s. </p>
<p>Yeah the NYT has lost its way. I hope some people down there think they're way out on a limb and it's time to get back to what they do. They are not qualified or entitled to do what they are doing.</p>
 

<http://scripting.com/2024/07/21/125022.html?title=nytJustStopPodcast>

---

## Alison Krauss

date: 2024-07-21, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/alison-krauss>

---

## Sunday caption contest: The Republican Convention

date: 2024-07-21, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/sunday-caption-contest-the-republican-029>

---

## July 20, 2024

date: 2024-07-21, from: Heather Cox Richardson blog

Spent the evening with family, and my photographer nephew showed me today&#8217;s capture: a seagull trying to move in on an osprey&#8217;s catch. It&#8217;s a nice break to see drama from something other than the human news this past week&#8212; it seemed relentless. 

<https://heathercoxrichardson.substack.com/p/july-20-2024>

---

## What CrowdStrike teaches us about risks & resilience

date: 2024-07-21, from: Om Malik blog

I had to bite my tongue and not comment on this tweet from FTC Chair Lina Khan, who tried to make the current CrowdStrike situation a crisis because of “big tech” and “consolidation.” “How is it that you don’t understand systems, or their inherent complexity?”, I wanted to scream. Well, if you give someone a &#8230; 

<https://om.co/2024/07/20/what-crowdstrike-crisis-teaches-us-about-risks-resilience/>

---

## Why ChatGPT is simply better

date: 2024-07-21, from: Dave Winer's Scripting News

<p>One great use for ChatGPT, simple recipes.</p>
<p>If you try looking for a recipe on Google they take forever to get to the point, and pop up all kinds of offers when all you wanted was a checklist of ingredients and steps. </p>
<p>For example, <a href="https://chatgpt.com/share/c9b39a6b-ad4b-4931-9f7e-93c6c7685c03">how to make hard-boiled eggs</a>.</p>
<p>Try doing the <a href="https://www.google.com/search?q=how+to+make+hard+boiled+eggs">same thing</a> on Google to see what I mean.</p>
 

<http://scripting.com/2024/07/20/021006.html?title=whyChatgptIsSimplyBetter>

---

**@Dave Winer's Scripting News** (date: 2024-07-21, from: Dave Winer's Scripting News)

I trust that President Biden will do what's best for the country. 

<http://scripting.com/2024/07/20.html#a020610>

---

**@Dave Winer's Scripting News** (date: 2024-07-21, from: Dave Winer's Scripting News)

<a href="https://www.salon.com/2024/07/20/its-not-that-complicated-pete-buttigieg-on-why-a-gay-billionaire-is-backing-jd-vance/">Pete Buttigieg</a> should be the Democrats' official blogger. Every day a new insight into what makes people do what they do and why the Dems have all the right ideas. He's a perfect spokesperson in that role. A daily Pete. He should do it. 

<http://scripting.com/2024/07/20.html#a020551>

