---
title: tech likely 2023.51
updated: 2023-12-24 14:00:48
---

# tech likely 2023.51

(date: 2023-12-24 14:00:48)

---

## Console

date: 2023-12-24, from: Alex Schroeder's Blog

<h1>Console</h1>

<p>I&rsquo;ve been trying to get used to <code>sway</code> as my window manager. Recently I realized that my <code>dmenu</code> wouldn&rsquo;t list games like <code>openarena</code>. No surprise there: <code>/usr/games/bin</code> is not part of <code>PATH</code> and so it doesn&rsquo;t get shown. I wondered how to get it there, and then I found that many people log in from the Linux console without a session manager or display manager. That is, they login from the console, get a login shell, and that shell then starts the window manager.</p>

<p>This is what I see on the first virtual console:</p>

<pre><code>Debian GNU/Linux 12 melanobombus tty1

login: _
</code></pre>

<p>If I log in, <code>fish</code> starts and one of the startup files it executes is <code>.config/fish/conf.d/sway.fish</code> which starts <code>sway</code> but only when logging in from <code>tty1</code>. You can switch between the consoles using Alt-F1 to Alt-F6. Once <code>sway</code> runs, you can switch back to the remaining virtual consoles using Ctrl Alt F2 to Ctrl Alt F6.</p>

<pre><code># If running from tty1 start sway
set TTY1 (tty)
[ &quot;$TTY1&quot; = &quot;/dev/tty1&quot; ] &amp;&amp; exec sway
</code></pre>

<p>Since this script uses <code>exec</code>, <code>sway</code> replaces <code>fish</code>. No big deal. But I still get to setup PATH.</p>

<p>So now I was staring at the login prompt of the console… and I don&rsquo;t know about you, but I could use a larger font!</p>

<p>I tried to go the <code>console-setup</code> route but that doesn&rsquo;t help:</p>

<pre><code>sudo dpkg-reconfigure console-setup
</code></pre>

<p>This allows me to change the console font.</p>

<p>And once my script runs, I can repeat that:</p>

<pre><code>setupcon
</code></pre>

<p>But at that point I&rsquo;m already logged in!</p>

<p>In theory, there&rsquo;s a systemd service that is supposed to handle it:</p>

<pre><code>$ systemctl status console-setup
● console-setup.service - Set console font and keymap
     Loaded: loaded (/lib/systemd/system/console-setup.service; enabled; preset: enabled)
     Active: active (exited) since Sat 2023-12-23 14:45:03 CET; 18min ago
    Process: 496 ExecStart=/lib/console-setup/console-setup.sh (code=exited, status=0/SUCCESS)
   Main PID: 496 (code=exited, status=0/SUCCESS)
        CPU: 3ms
</code></pre>

<p>And yet… it does not! Why is that? Examining <code>/lib/systemd/system/console-setup.service</code> I find that it runs <code>/lib/console-setup/console-setup.sh</code> and that does some complicated stuff to try and determine whether to run <code>setupcon</code> or not. I guess in my case doesn&rsquo;t?</p>

<p>Oh well, there&rsquo;s always the option of using kernel parameters!</p>

<p>I created a one line file called <code>/etc/default/grub.d/font.cfg</code> to set a console font. This way the default setting in <code>/etc/default/grub</code> is overwritten, too. No more <code>quiet splash</code>! I like to see the output scroll by as the system boots.</p>

<pre><code>GRUB_CMDLINE_LINUX_DEFAULT=&quot;fbcon=font:TER16x32&quot;
</code></pre>

<p>To activate it:</p>

<pre><code>sudo dpkg-reconfigure grub2
</code></pre>

<p>Rebooting the system, I noticed that things still didn&rsquo;t seem to work for the <code>initramfs</code> which ends up asking me for the password to decrypt my disk. So what I needed was to get the new config into the <code>initramfs</code>, too.</p>

<p>Based on the current kernel I&rsquo;m running:</p>

<pre><code>sudo dpkg-reconfigure linux-image-6.1.0-15-amd64
</code></pre>

<p>I think it works, now!</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a></p>

<p><a class="account" href="https://mstdn.jp/users/landley" title="@landley@mstdn.jp">@landley</a> had some pointers:</p>

<ul>
<li><a href="https://kernel.org/doc/Documentation/filesystems/ramfs-rootfs-initramfs.rst">Ramfs, rootfs and initramfs</a>, Kernel Documentation</li>
<li><a href="https://landley.net/writing/rootfs-intro.html">The problem. (Why &ldquo;root=&rdquo; doesn&rsquo;t scale.)</a>, part 1</li>
<li><a href="https://landley.net/writing/rootfs-howto.html">Tech Tip: How to use initramfs.</a>, part 2</li>
<li><a href="https://landley.net/writing/rootfs-programming.html">Programming for Initramfs.</a>, part 3</li>
<li><a href="https://github.com/landley/toybox/tree/master/mkroot">mkroot</a>, &ldquo;a tiny system builder that creates a kernel that boots from initramfs in 300 lines of bash&rdquo;</li>
<li><a href="https://landley.net/talks/mkroot-2023.txt">mkroot walkthrough</a>, an outline for a talk introducing mkroot</li>
</ul>

<span class="feed-item-link">
<a href="https://alexschroeder.ch/view/2023-12-23-console">https://alexschroeder.ch/view/2023-12-23-console</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://alexschroeder.ch/view/2023-12-23-console">Save to Pocket</a>
</span>

---

## Human-Scale vs Asymmetric Social Media

date: 2023-12-24, from: Pointers gone wild blog

Every once in a while, I see people mention &#8220;dark patterns&#8221; in UI design. Patterns that are actively trying to deceive users, either to maximize engagement, to click some ad, or to get them to perform an action they didn&#8217;t want to perform. An obvious example would be some huge pop-up ad which can be [&#8230;]

<span class="feed-item-link">
<a href="https://pointersgonewild.com/2023/12/24/toxic-by-design-human-scale-vs-asymmetric-social-media/">https://pointersgonewild.com/2023/12/24/toxic-by-design-human-scale-vs-asymmetric-social-media/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://pointersgonewild.com/2023/12/24/toxic-by-design-human-scale-vs-asymmetric-social-media/">Save to Pocket</a>
</span>

---

**@Dave Winer's Scripting News** (date: 2023-12-24, from: Dave Winer's Scripting News)

<div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2023/12/24/santa.png"></center>Ho ho ho! <span class="spOldSchoolEmoji">😄</span></div>

<span class="feed-item-link">
<a href="http://scripting.com/2023/12/24.html#a162253">http://scripting.com/2023/12/24.html#a162253</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="http://scripting.com/2023/12/24.html#a162253">Save to Pocket</a>
</span>

---

## Iosevka font

date: 2023-12-24, from: Tilde.news

<p><a href="https://tilde.news/s/3xfgy1/iosevka_font">Comments</a></p>

<span class="feed-item-link">
<a href="https://typeof.net/Iosevka/">https://typeof.net/Iosevka/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://typeof.net/Iosevka/">Save to Pocket</a>
</span>

---

## Full Circle Weekly News 345

date: 2023-12-24, from: Full Circle Magazine

<ul>
<li>
<p><a href="https://www.debian.org/News/2023/20231210">Debian 12.4 update:</a></p>
</li>
<li>
<p><a href="https://lkml.org/lkml/2023/12/11/226">Linux kernel 6.6.6 update:</a></p>
</li>
<li>
<p><a href="https://github.com/FreeRDP/FreeRDP/releases/tag/3.0.0">Release of FreeRDP 3.0:</a></p>
</li>
<li>
<p><a href="https://discourse.ubuntu.com/t/lxd-5-20-has-been-released/40865">Canonical has transferred the LXD project to the AGPLv3 license:</a></p>
</li>
<li>
<p><a href="https://ardour.org/whatsnew.html">Not so free Ardour 8.2:</a></p>
</li>
<li>
<p><a href="https://news.opensuse.org/2023/12/15/insights-from-the-os-logo-contest/">The openSUSE logo debacle:</a></p>
</li>
<li>
<p><a href="https://forum.manjaro.org/t/manjaro-23-1-vulcan-released/153458">Manjaro Linux 23.1 released:</a></p>
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
<a href="https://fullcirclemagazine.org/podcasts/podcast-345/">https://fullcirclemagazine.org/podcasts/podcast-345/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://fullcirclemagazine.org/podcasts/podcast-345/">Save to Pocket</a>
</span>



<script type="text/javascript">!function(d,i){if(!d.getElementById(i)){var j=d.createElement("script");j.id=i;j.src="https://widgets.getpocket.com/v1/j/btn.js?v=1";var w=d.getElementById(i);d.body.appendChild(j);}}(document,"pocket-btn-js");</script>

