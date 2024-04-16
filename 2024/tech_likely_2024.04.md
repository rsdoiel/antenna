---
title: tech likely 2024.04
updated: 2024-01-28 10:59:53
---

# tech likely 2024.04

(date: 2024-01-28 10:59:53)

---

## Pervasive aqueous alteration in the early Solar System revealed by potassium isotopic variations in Ryugu samples and carbonaceous chondrites

date: 2024-02-01, from: ETH Zurich, recently added

Hu Y.; Moynier F.; Dai W.; Paquet M.; Yokoyama T.; Abe Y.; Aléon J.; Alexander C.M.O.D.; Amari S.; Amelin Y.; Bajo K.i.; Bizzarro M.; Bouvier A.; Carlson R.W.; Chaussidon M.; Choi B.G.; Dauphas N.; Davis A.M.; Di Rocco T.; Fujiya W.

<span class="feed-item-link">
<a href="http://hdl.handle.net/20.500.11850/646229">http://hdl.handle.net/20.500.11850/646229</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="http://hdl.handle.net/20.500.11850/646229">Save to Pocket</a>
</span>

---

## Fracture patterns in adult onset type 1 diabetes and associated risk factors – A nationwide cohort study

date: 2024-02-01, from: ETH Zurich, recently added

Rasmussen N.H.; Driessen J.H.M.; Kvist A.V.; Souverein P.C.; van den Bergh J.; Vestergaard P.

<span class="feed-item-link">
<a href="http://hdl.handle.net/20.500.11850/646226">http://hdl.handle.net/20.500.11850/646226</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="http://hdl.handle.net/20.500.11850/646226">Save to Pocket</a>
</span>

---

## Drought-induced tree mortality in Scots pine mesocosms promotes changes in soil microbial communities and trophic groups

date: 2024-02-01, from: ETH Zurich, recently added

Jaeger A.C.H.; Hartmann M.; Conz R.F.; Six J.; Solly E.F.

<span class="feed-item-link">
<a href="http://hdl.handle.net/20.500.11850/646227">http://hdl.handle.net/20.500.11850/646227</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="http://hdl.handle.net/20.500.11850/646227">Save to Pocket</a>
</span>

---

## nsstring.h - A free, open-source, simple, memory-safe and lightweight Strings library for C

date: 2024-01-28, from: Tilde.news

<p><a href="https://tilde.news/s/nc5zvn/nsstring_h_free_open_source_simple_memory">Comments</a></p>

<span class="feed-item-link">
<a href="https://codeberg.org/Autumn64/nsstring.h">https://codeberg.org/Autumn64/nsstring.h</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://codeberg.org/Autumn64/nsstring.h">Save to Pocket</a>
</span>

---

## VASL Templates

date: 2024-01-28, from: Alex Schroeder's Blog

<h1>VASL Templates</h1>

<p>I&rsquo;m trying to get <a href="https://vasl-templates.org/">VASL Templates</a> to run on my laptop so that I can create nice setups for Advanced Squad Leader. As it turns out, I have to use <code>pipx</code> because that automatically creates virtual environments for me, as far as I understand.</p>

<pre><code>cd src
git clone https://code.pacman-ghost.com/public/vasl-templates.git
cd vasl-templates
pipx install .
</code></pre>

<p>As it turns out, this is not enough:</p>

<pre><code>Traceback (most recent call last):
  File &quot;/home/alex/.local/bin/vasl-templates&quot;, line 5, in &lt;module&gt;
    from vasl_templates.main import main
  File &quot;/home/alex/.local/pipx/venvs/vasl-templates/lib/python3.11/site-packages/vasl_templates/main.py&quot;, line 19, in &lt;module&gt;
    import PyQt5.QtWebEngineWidgets
ModuleNotFoundError: No module named 'PyQt5'
</code></pre>

<p>So now you need to install PyQt5 into the virtual environment used by vasl-templates:</p>

<pre><code>pipx inject vasl-templates PyQt5
</code></pre>

<p>Next error:</p>

<pre><code>Traceback (most recent call last):
  File &quot;/home/alex/.local/bin/vasl-templates&quot;, line 5, in &lt;module&gt;
    from vasl_templates.main import main
  File &quot;/home/alex/.local/pipx/venvs/vasl-templates/lib/python3.11/site-packages/vasl_templates/main.py&quot;, line 19, in &lt;module&gt;
    import PyQt5.QtWebEngineWidgets
ModuleNotFoundError: No module named 'PyQt5.QtWebEngineWidgets'
</code></pre>

<p>Fix:</p>

<pre><code>pipx inject vasl-templates PyQtWebEngine
</code></pre>

<p>And now it works at last! 😅</p>

<p><a class="tag" href="/search/?q=%23Advanced_Squad_Leader">#Advanced Squad Leader</a></p>

<span class="feed-item-link">
<a href="https://alexschroeder.ch/view/2024-01-28-vasl-templates">https://alexschroeder.ch/view/2024-01-28-vasl-templates</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://alexschroeder.ch/view/2024-01-28-vasl-templates">Save to Pocket</a>
</span>

---

## Far side Zuck

date: 2024-01-28, from: Dave Winer's Scripting News

<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/01/28/zuckreal.png"></center>I saw this picture and thought it represents an interesting concept.</div></p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/01/28/zuckimagined.png"></center>I asked ChatGPT to re-do it in the style of the Far Side. </div></p>
<p>I asked for more variations, but it refused, saying something about content guidelines. </p>


<span class="feed-item-link">
<a href="http://scripting.com/2024/01/28/172211.html?title=farSideZuck">http://scripting.com/2024/01/28/172211.html?title=farSideZuck</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="http://scripting.com/2024/01/28/172211.html?title=farSideZuck">Save to Pocket</a>
</span>

---

## Morning ChatGPT Notes

date: 2024-01-28, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2017/09/04/peterRojas.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I spent a couple of days putting together a JSON text editor in a modal dialog for a project I'm working on. I'm combining the Ace editor with the Bootstrap toolkit. I've used both components before, but never together. And they're always a bit tricky to get working because I'm impatient and the docs are spread out, and there are different versions. It's all kind of a mess, so you just get it working and move on, never quite sure why it works, and I rarely end up with reusable code. But it's certainly a lot better than starting from scratch, which basically is impossible, given the depth of the two components. After spinning my wheels a bit, I did what I always do in 2024, I turned to ChatGPT, outlined the problem, and asked if it knew of any sample code, which it proceeded to write for me, in about two seconds (not kidding about that). I copied their code and pasted it into my editor and ran it. It worked. Then I went through a number of iterations, restructuring the code to meet my needs, each time checking with ChatGPT, asking what it thought of my code. And of course there were problems, for example at one point there were two vertical scrollbars, and each time we worked <i>together</i> to figure out the problem and the fix. In the end, I have a solid editor that works exactly as I want it to, and best of all, I understand how it works. Here's the <a href="https://chat.openai.com/share/840e8159-9988-4159-8289-5167d6fb78c8">transcript of the work</a> I did with it, over more than 24 hours, a few different sessions. </p>
<p>I'll try to remember when this code ships as part of a product, to link to this perspective.</p>
<p>Next up, I'd like to get it to understand my coding conventions, so when it shares code with me it can save me the step of having to convert its conventions to mine. In other words, I'd like to return the favor. It's doing a great job of teaching and coaching me. I'd like to teach it how to do that better, so we work better together over time. And perhaps it can teach human programmers what I've learned about programming in over 50 years of doing this work. </p>
<p><img class="imgRightMargin" src="https://imgs.scripting.com/2017/09/05/enjoyEveryDay.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">A bit of philosophy. People say these things aren't intelligent, but seriously, if I can engage with it as if it were intelligent, far more intelligent in ways than I am, what's the difference between that and actually being intelligent? I know from a lifetime of dealing with supposedly intelligent humans, and being one myself, how rarely we focus on the idea that the person we're conversing with has an inner life that's vastly different from ours and no less complex, and contradictory. We tend to think of others as being like us, or like someone who raised us. Always in a movie, never in the moment. So why is it interesting that ChatGPT is a machine? These are questions thinkers and writers have been pondering for decades if not centuries, but -- <i>now we're living it.</i> I'm so happy to have made it this far! An amazing experience, so much learning in so little time. I don't understand how people can sit on the sidelines and not want to be the first to try all this stuff out, to be part of its evolution. I feel so lucky. </p>
<p>A puzzling thing, in the transcripts I'm identified as "anonymous," but I am logged in. It must know my name. I bet this is some kind of setting which defaults to anonymous, to play it safe. </p>
<p>One more thing. I copied and pasted the text above into ChatGPT. <a href="https://chat.openai.com/share/5fe361cd-1fca-4e8d-82cc-920514e8c4b8">Here are its comments</a>. A funny thing about ChatGPT is that you can't ask it how to use ChatGPT itself. It doesn't know about the chat UI? </p>


<span class="feed-item-link">
<a href="http://scripting.com/2024/01/28/172149.html?title=morningChatgptNotes">http://scripting.com/2024/01/28/172149.html?title=morningChatgptNotes</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="http://scripting.com/2024/01/28/172149.html?title=morningChatgptNotes">Save to Pocket</a>
</span>

---

## The Curious About Everything Newsletter #35

date: 2024-01-28, from: Curious about everything blog

The many interesting things I read in January 2023.

<span class="feed-item-link">
<a href="https://jodiettenberg.substack.com/p/thirty-five">https://jodiettenberg.substack.com/p/thirty-five</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://jodiettenberg.substack.com/p/thirty-five">Save to Pocket</a>
</span>

---

## STM32-base project

date: 2024-01-28, from: Tilde.news

<p><a href="https://tilde.news/s/vzzcou/stm32_base_project">Comments</a></p>

<span class="feed-item-link">
<a href="https://stm32-base.org">https://stm32-base.org</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://stm32-base.org">Save to Pocket</a>
</span>

---

## a small parable

date: 2024-01-28, from: Ayjay blog

Occasionally I find myself in groups populated by business people, technologists, consultants, people who work in nonprofits, practitioners of various kinds — and academics. Such groups gather to figure out how to respond to certain major social problems. Because the participants come from various professional worlds, it can sometimes be difficult to discover a common [&#8230;]

<span class="feed-item-link">
<a href="https://blog.ayjay.org/a-small-parable/">https://blog.ayjay.org/a-small-parable/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://blog.ayjay.org/a-small-parable/">Save to Pocket</a>
</span>

---

## SparkyLinux harbors a flamboyant array of desktops

date: 2024-01-28, updated: 2024-01-28, from: Liam Proven's articles at the Register

<h4>Both stable and rolling releases, Pi versions, and some very unusual customizations</h4>
      <p>SparkyLinux is a lightweight distro based on Debian, but it offers some choices that few if any others do.</p>

<span class="feed-item-link">
<a href="https://go.theregister.com/i/cfa/https://www.theregister.com/2024/01/28/sparkylinux/">https://go.theregister.com/i/cfa/https://www.theregister.com/2024/01/28/sparkylinux/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://go.theregister.com/i/cfa/https://www.theregister.com/2024/01/28/sparkylinux/">Save to Pocket</a>
</span>

---

## Drivethru, I am unhappy!

date: 2024-01-28, from: Alex Schroeder's Blog

<h1>Drivethru, I am unhappy!</h1>

<p>The DrivethruRPG website so depends on shit that it loads from other domains that I cannot log in no matter how many exceptions I add to uBlock Origin, Privacy Badger, or the Firefox content blocking preferences. And with every second I spend doing this, I resent them more. And when I finally start Chromium to try and connect, I&rsquo;m already ranting as I sit at my laptop. And then I get Connection timed out from cloudflare and really… I feel like they don&rsquo;t want my money. Uuuugh.</p>

<p>I used their contact form. When I hit the submit button I was greeted by a white page. I don&rsquo;t know if they go an email. (I did try the next day from a phone and that worked – which sort of illustrates the point.)</p>

<p>Here&rsquo;s what I wrote:</p>

<p>I think in a world where big tech is tracking us, where everybody and their uncle is spying on us, it is only natural that people start locking down their browser. I have uBlock Origin and Privacy Badger installed and I tell all my browsers to do as much content blocking as they can, I delete all cookies when I close the browser. It&rsquo;s the right thing to do. It is all the more galling when a website such as Drivethru becomes practically unusable as a consequence of me trying to do the right thing. It feels as if Drivethru is betraying me to the big tech corporations, helping them spy on me. It&rsquo;s a revolting feeling. These days, I have it every time I remember to use an unprotected Chromium browser just to log into Drivethru. Every single time I wish for an alternative. Every single time I hope that itch.io and other competitors end up replacing you.</p>

<p>If only you had a simple, straight forward website, served your own Javascript, had no tracking, and allowed me to browse stuff and buy it.
I don&rsquo;t really expect an answer to this email. It just feels unfair to rant on social media about the situation without telling you about it.</p>

<p>I hope Drivethru improves. I really do. I believe that change is possible and I hope that you do, too.</p>

<p><a class="tag" href="/search/?q=%23Web">#Web</a> <a class="tag" href="/search/?q=%23RPG">#RPG</a></p>

<p><a class="account" href="https://octodon.social/@craigmaloney" title="@craigmaloney@octodon.social">@craigmaloney</a> says:</p>

<blockquote>
<p>Honestly there&rsquo;s some good points and some really bad points to their redesign and I&rsquo;m having a hard time reconciling the good points because the bad points are so infuriating.</p>
</blockquote>

<p><a class="account" href="https://merveilles.town/@jameschip" title="@jameschip@merveilles.town">@jameschip</a> says:</p>

<blockquote>
<p>oh my gawd its the worst.</p>
</blockquote>

<p><a class="account" href="https://mastodon.art/@dianaprobst" title="@dianaprobst@mastodon.art">@dianaprobst</a> says:</p>

<blockquote>
<p>It&rsquo;s sluggish in terrible ways.</p>
</blockquote>

<p><a class="account" href="https://appdot.net/@mdhughes" title="@mdhughes@appdot.net">@mdhughes</a> says:</p>

<blockquote>
<p>I don&rsquo;t know what they think the end-game is, but for me it&rsquo;s a lot more itch.io and &lsquo;zon for physical stuff.</p>
</blockquote>

<p>(Also <a href="https://appdot.net/@mdhughes/111165620455918000">DriveThruRPG finally flipped on shitty new UI, I sent feedback…</a> on fedi.)</p>

<span class="feed-item-link">
<a href="https://alexschroeder.ch/view/2024-01-27-drivethru">https://alexschroeder.ch/view/2024-01-27-drivethru</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://alexschroeder.ch/view/2024-01-27-drivethru">Save to Pocket</a>
</span>

---

## Attention Is All You Need (the origin of the “T” in ChatGPT)

date: 2024-01-28, from: Tilde.news

<p><a href="https://tilde.news/s/bmtfds/attention_is_all_you_need_origin_t_chatgpt">Comments</a></p>

<span class="feed-item-link">
<a href="https://arxiv.org/abs/1706.03762">https://arxiv.org/abs/1706.03762</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://arxiv.org/abs/1706.03762">Save to Pocket</a>
</span>

---

**@Dave Winer's Scripting News** (date: 2024-01-28, from: Dave Winer's Scripting News)

Imho, whether you or I use Twitter makes absolutely no difference to anyone.

<span class="feed-item-link">
<a href="http://scripting.com/2024/01/27.html#a020522">http://scripting.com/2024/01/27.html#a020522</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="http://scripting.com/2024/01/27.html#a020522">Save to Pocket</a>
</span>

---

## Tiny11 creates a 100MB version of Windows 11 by axing the windows

date: 2024-01-28, from: OS News

If you know your Windows history, you&#8217;ll know that the operating system got that name when it moved away from using pure MS-DOS and started using a graphical user interface to show things. As it turns out, you can force Windows 11 back to its legacy roots and reduce it back to a command-line interface. This is what the developer of Tiny11 has achieved, calling their new creation &#8220;Minwin.&#8221; The developer of Win11, NTDev, posted a video on YouTube about their project. There&#8217;s absolutely nothing flashy here; no Copilot, no Start menu, and definitely no UI. It&#8217;s as graphically complex as the Command Prompt, which meant that NTDev had to resort to fancy 00s-era ASCII logos to announce that Minwin was working. ↫ Simon Batt at XDA Definitely a neat proof-of-concept, and it shows just how modular Windows could be if only Microsoft allowed its users to take out the parts they don&#8217;t need. I wonder how close this is to Nano Server, an installation option for Windows Server you&#8217;ve probably never heard of. I also like the nod to MinWin, the informal codename Microsoft used internally to refer to an effort by a small number of expert Windows kernel engineers to untangle the spaghetti ball of dependencies that had sprouted between the various architectural layers of Windows. This project started around Vista, and eventually made it possible to make broader, sweeping changes to Windows without breaking things all over the place because the spaghetti ball of internal, low-level dependencies wasn&#8217;t mapped out.

<span class="feed-item-link">
<a href="https://www.osnews.com/story/138464/tiny11-creates-a-100mb-version-of-windows-11-by-axing-the-windows/">https://www.osnews.com/story/138464/tiny11-creates-a-100mb-version-of-windows-11-by-axing-the-windows/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.osnews.com/story/138464/tiny11-creates-a-100mb-version-of-windows-11-by-axing-the-windows/">Save to Pocket</a>
</span>

---

## Two months in Servo: better inline layout, stable Rust, and more

date: 2024-01-28, from: OS News

Another month, another pile of improvement to Servo, the rendering engine written in Rust, originally a Mozilla project. This month the proof-of-concept browser UI got forward and backward buttons, making this bare-bones UI just a tiny bit more usable. Of course, the vast majority of changes and improvements are all focused on the actual rendering engine, which makes sense because Servo definitely isn&#8217;t ready for any prime time use &#8211; nor is anyone claiming it is. I&#8217;m incredibly curious to see where Servo goes in the future.

<span class="feed-item-link">
<a href="https://www.osnews.com/story/138462/two-months-in-servo-better-inline-layout-stable-rust-and-more/">https://www.osnews.com/story/138462/two-months-in-servo-better-inline-layout-stable-rust-and-more/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.osnews.com/story/138462/two-months-in-servo-better-inline-layout-stable-rust-and-more/">Save to Pocket</a>
</span>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-01-28, from: Miguel de Icaza Mastondon feed)

<p>Exactly</p>

<span class="feed-item-link">
<a href="https://mastodon.social/@Migueldeicaza/111830888377689317">https://mastodon.social/@Migueldeicaza/111830888377689317</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://mastodon.social/@Migueldeicaza/111830888377689317">Save to Pocket</a>
</span>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-01-28, from: Miguel de Icaza Mastondon feed)

<p>The genocide continues.</p>

<span class="feed-item-link">
<a href="https://mastodon.social/@Migueldeicaza/111830793373998588">https://mastodon.social/@Migueldeicaza/111830793373998588</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://mastodon.social/@Migueldeicaza/111830793373998588">Save to Pocket</a>
</span>

---

## Full Circle Weekly News 350

date: 2024-01-28, from: Full Circle Magazine

<ul>
<li>
<p><a href="https://github.com/lutris/lutris/releases/tag/v0.5.15">Release of Lutris 0.5.15:</a></p>
</li>
<li>
<p><a href="https://news.opensuse.org/2024/01/15/clear-course-is-set-for-os-leap/">openSUSE Leap 16 will be built on the ALP platform using containers:</a></p>
</li>
<li>
<p><a href="https://blog.system76.com/post/cosmic-the-road-to-alpha">COSMIC Custom Shell:</a></p>
</li>
<li>
<p><a href="https://www.mail-archive.com/vbox-announce@virtualbox.org/msg00229.html">VirtualBox 7.0.14 released:</a></p>
</li>
<li>
<p><a href="https://dev.mysql.com/downloads/mysql/">MySQL 8.3.0 DBMS:</a></p>
</li>
<li>
<p><a href="https://lists.x.org/archives/xorg/2024-January/061526.html">X.Org Server 21.1.11:</a></p>
</li>
<li>
<p><a href="https://github.com/tesseract-ocr/tesseract/releases/tag/5.3.4">Release of Tesseract 5.3.4:</a></p>
</li>
<li>
<p><a href="https://www.mail-archive.com/info-gnu@gnu.org/msg03249.html">Release of GNU Emacs 29.2:</a></p>
</li>
<li>
<p><a href="https://openinventionnetwork.com/hon-hai-technology-group-foxconn-joins-open-invention-network-community/">Foxconn joins initiative to protect Linux from patent claims:</a></p>
</li>
<li>
<p><a href="https://lists.freedesktop.org/archives/wayland-devel/2024-January/043400.html">Release of Wayland-Protocols 1.33:</a></p>
</li>
<li>
<p><a href="https://pointieststick.com/2024/01/19/this-week-in-kde-auto-save-in-dolphin-and-better-fractional-scaling/">KDE has improved scaling support and added autosaving in Dolphin:</a></p>
</li>
<li>
<p><a href="https://www.mail-archive.com/info-gnu@gnu.org/msg03251.html">Release of GNU Ocrad OCR 0.29:</a></p>
</li>
<li>
<p><a href="https://bugs.chromium.org/p/chromium/issues/detail?id%3D1509109">Fuchsia Workstation OS Development Program Cancelled:</a></p>
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

<span class="feed-item-link">
<a href="https://fullcirclemagazine.org/podcasts/podcast-350/">https://fullcirclemagazine.org/podcasts/podcast-350/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://fullcirclemagazine.org/podcasts/podcast-350/">Save to Pocket</a>
</span>

---

## Barman 3.10.0 Released

date: 2024-01-28, from: PostgreSQL News

<p><a href="https://www.enterprisedb.com">EDB</a> is pleased to announce the release of Barman 3.10.0. </p>
<h2>Highlights of this release:</h2>
<h3>Features:</h3>
<ul>
<li>Limit the average bandwidth used by <code>barman-cloud-backup</code> when backing
 up to either AWS S3 or Azure Blob Storage according to the value set by
 a new CLI option <code>--max-bandwidth</code>.</li>
<li>Add the new configuration option <code>lock_directory_cleanup</code>
 That enables cron to automatically clean up the barman_lock_directory
 from unused lock files.</li>
<li>Add support for a new type of configuration called <code>model</code>.
 The model acts as a set of overrides for configuration options
 for a given Barman server.</li>
<li>Add a new barman command <code>barman config-update</code> that allows the creation
 and the update of configurations using JSON</li>
<li>Related to this Barman release, <a href="https://github.com/EnterpriseDB/barman/blob/master/NEWS">pg_backup_api</a> has been updated and released to support these new features.  As a result, Barman now supports changes in the configuration whilst it's running. This pg-backup-api release adds the required endpoints to trigger that switch when requested.</li>
</ul>
<h3>Bug fixes:</h3>
<ul>
<li>Fix a bug that caused <code>--min-chunk-size</code> to be ignored when using <code>barman-cloud-backup</code> as a hook script in Barman.</li>
</ul>
<p>This information is also published in the <a href="https://github.com/EnterpriseDB/barman/blob/master/NEWS">NEWS</a> for Barman.</p>
<h3>About Barman</h3>
<p>Backup and Recovery Manager (or Barman) is an open-source administration tool for remote backups and disaster recovery of PostgreSQL servers in business-critical environments. It relies on PostgreSQL’s robust and reliable Point-In-Time Recovery technology, allowing DBAs to remotely manage a complete catalog of backups and the recovery phase of multiple remote servers – all from one location. Barman is distributed under GNU GPL 3 and maintained by <a href="https://www.enterprisedb.com">EDB</a>.</p>

<span class="feed-item-link">
<a href="https://www.postgresql.org/about/news/barman-3100-released-2798/">https://www.postgresql.org/about/news/barman-3100-released-2798/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.postgresql.org/about/news/barman-3100-released-2798/">Save to Pocket</a>
</span>

---

## Greenmask v0.1.1 Release

date: 2024-01-28, from: PostgreSQL News

<h2>PostgreSQL Dump and Obfuscation Tool</h2>
<p>We are excited to announce the release of Greenmask v0.1.1. This release introduces a suite of new transformers, significantly enhancing its capabilities for obfuscating PostgreSQL databases.</p>
<h3>Greenmask Overview</h3>
<h4>Key Features</h4>
<ul>
<li><strong>Cross-Platform Support:</strong> Developed in Go, Greenmask operates independently of platform constraints, offering flexibility across different operating systems.</li>
<li><strong>Type-Safe Database Operations:</strong> It ensures data validation and encoding, maintaining the integrity of your database throughout the obfuscation process.</li>
<li><strong>Transformation Validation:</strong> Greenmask guarantees correct and maintainable data transformations, ensuring reliability and accuracy.</li>
<li><strong>Partitioned Table Support:</strong> Simplifies configuration for partitioned tables, making it easier to manage large datasets.</li>
<li><strong>Stateless and Backward Compatible:</strong> Designed to be compatible with standard PostgreSQL utilities, ensuring seamless integration into existing workflows.</li>
<li><strong>Parallel Execution:</strong> Enhances efficiency in dumping and restoration processes through concurrent operations, reducing the time required for data handling.</li>
<li><strong>Multiple Storage Options:</strong> Supports both local and remote storage solutions, offering flexibility in data management and backup strategies.</li>
</ul>
<h4>Use Cases</h4>
<p>Greenmask is ideally suited for:</p>
<ul>
<li>Routine <strong>backup</strong> and <strong>restoration</strong> tasks, ensuring data integrity and availability.</li>
<li><strong>Anonymization</strong> and data <strong>masking</strong> for staging environments and analytics, protecting sensitive information while maintaining data utility.</li>
</ul>
<h3>Release Notes</h3>
<h4>Improvements</h4>
<p><strong>New Transformers</strong>: The latest update vastly expands the variety of available transformers, enhancing Greenmask's versatility for database obfuscation. The newly added transformers include:</p>
<ul>
<li>Geographic data generators like <strong>RandomLatitude</strong> and <strong>RandomLongitude</strong>.</li>
<li>Temporal data generators such as <strong>RandomUnixTime</strong> and <strong>RandomMonthName</strong>.</li>
<li>Communication data generators, including <strong>RandomEmail</strong> and <strong>RandomPhoneNumber</strong>.</li>
<li>User identity generators like <strong>RandomUsername</strong> and <strong>RandomName</strong>.</li>
<li>Network data generators, including <strong>RandomIPv4</strong> and <strong>RandomIPv6</strong>.</li>
<li>Security data generators such as <strong>RandomPassword</strong>.</li>
<li>Financial data generators like <strong>RandomCurrency</strong> and <strong>RandomAmountWithCurrency</strong>.</li>
<li>Content data generators, including <strong>RandomWord</strong> and <strong>RandomParagraph</strong>.</li>
<li>A unique <strong>RealAddress</strong> generator for more realistic data simulation.</li>
</ul>
<p>These transformers facilitate the generation of mock data for various testing and development purposes, enhancing the utility and flexibility of Greenmask.</p>
<p><strong>Documentation Updates</strong>: To accompany the introduction of new transformers, we've thoroughly updated our documentation. It now includes detailed explanations and examples, enabling easy configuration and effective use of the new features in your data obfuscation pipelines.</p>
<h3>Community Participation</h3>
<p>We encourage the PostgreSQL community to engage with us by providing feedback and suggestions. Your insights and testing are invaluable for improving Greenmask's robustness and utility.</p>
<h3>Useful Links</h3>
<ul>
<li>Explore detailed <a href="https://greenmask.io/">Documentation</a></li>
<li>Access the <a href="https://github.com/GreenmaskIO/greenmask/releases/tag/v0.1.1">Latest Release on GitHub</a></li>
<li>Contact us for support at <a href="mailto:support@greenmask.io">Email Support</a></li>
</ul>

<span class="feed-item-link">
<a href="https://www.postgresql.org/about/news/greenmask-v011-release-2797/">https://www.postgresql.org/about/news/greenmask-v011-release-2797/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.postgresql.org/about/news/greenmask-v011-release-2797/">Save to Pocket</a>
</span>



<script type="text/javascript">!function(d,i){if(!d.getElementById(i)){var j=d.createElement("script");j.id=i;j.src="https://widgets.getpocket.com/v1/j/btn.js?v=1";var w=d.getElementById(i);d.body.appendChild(j);}}(document,"pocket-btn-js");</script>

