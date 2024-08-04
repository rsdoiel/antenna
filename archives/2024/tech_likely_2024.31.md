---
title: tech likely 2024.31
updated: 2024-08-04 12:16:56
---

# tech likely 2024.31

(date: 2024-08-04 12:16:56)

---

## Chase the product, not the data

date: 2024-08-04, updated: 2024-08-04, from: Robin Rendle Essays

 

<https://robinrendle.com/notes/the-limits-of-data-driven/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-08-04, from: Miguel de Icaza Mastondon feed)

<p>The cryptocurrency lobby:</p><p><a href="https://tobacco.stanford.edu/cigarettes/doctors-smoking/more-doctors-smoke-camels/" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">tobacco.stanford.edu/cigarette</span><span class="invisible">s/doctors-smoking/more-doctors-smoke-camels/</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112904723368536324>

---

## Kitten trashes suite

date: 2024-08-04, from: Dave Winer's Scripting News

<p>Every time I solve a Wordle puzzle, I'm allowed to switch over to ChatGPT and narrate a new scene for the Wordle Kitty. Here's today's installment.</p>
<p>The cute and adorable Wordle Kitty, Democratic VP candidate, got tired of waiting for the Republican, so she took a few of the reporters with her back to the presidential suite at the Plaza Hotel on 5th Ave and had a drunken night of debauchery with the reporters and totally trashed the place. The next morning the story appeared in The NY Times. Headline read “Adorable kitten trashes suite."</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/08/04/kittyTrashesSuite.png"></center>What remains of the Presidential Suite at the Plaza Hotel.</div></p>
 

<http://scripting.com/2024/08/04/162845.html?title=kittenTrashesSuite>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-08-04, from: Miguel de Icaza Mastondon feed)

<p>I use this idiom extensively in Swift with Godot.  </p><p>I used to do one guard for each condition, until I discovered I could compound those all in one go with the comma operator.</p><p>In this particular case, I am dealing with converting weakly typed data into strongly typed data:</p><p><a href="https://mastodon.social/@Migueldeicaza/112900465963859780" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">mastodon.social/@Migueldeicaza</span><span class="invisible">/112900465963859780</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112904560165031862>

---

## The Curious About Everything Newsletter #41

date: 2024-08-04, from: Curious about everything blog

The many interesting things I read in July 2024 

<https://jodiettenberg.substack.com/p/forty-one>

---

## Chrome warns uBlock Origin may soon be disabled

date: 2024-08-04, from: OS News

As uBlock Origin lead developer and maintainer Raymond Hill explained on Friday, this is the result of Google deprecating support for the Manifest v2 (MV2) extensions platform in favor of Manifest v3 (MV3). &#8220;uBO is a Manifest v2 extension, hence the warning in your Google Chrome browser. There is no Manifest v3 version of uBO, hence the browser will suggest alternative extensions as a replacement for uBO,&#8221; Hill explained. ↫ Sergiu Gatlan at Bleeping Computer If you&#8217;re still using Chrome, or any possible Chrome skins who have not committed to keeping Manifest v2 extensions enabled, it&#8217;s really high time to start thinking about jumping ship if ad blocking matters to you. Of course, we don&#8217;t know for how long Firefox will remain able to properly block ads either, but for now, it&#8217;s obviously the better choice for those of us who care about a better browsing experience. And just to reiterate: I fully support anyone&#8217;s right to block ads, even on OSNews. Your computer, your rules. There are a variety of other, better means to support OSNews &#8211; our Patreon, individual donations through Ko-Fi, or buying our merch &#8211; that are far better for us than ads will ever be. 

<https://www.osnews.com/story/140411/chrome-warns-ublock-origin-may-soon-be-disabled/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-08-04, from: Miguel de Icaza Mastondon feed)

<p>This might be the sole reason to switch from using the verb “tweet”:</p> 

<https://mastodon.social/@Migueldeicaza/112904100171267151>

---

## Limine: a modern, advanced, portable, multiprotocol bootloader and boot manager

date: 2024-08-04, from: OS News

Limine is an advanced, portable, multiprotocol bootloader that supports Linux, multiboot1 and 2, the native Limine boot protocol, and more.  Limine is lightweight, elegant, fast, and the reference implementation of the Limine boot protocol. The Limine boot protocol&#8217;s main target audience is operating system and kernel developers that want to use a boot protocol which supports modern features in an elegant manner, that GRUB&#8217;s aging multiboot protocols do not (or do not properly). ↫ Limine website I wish trying out different bootloaders was an easier thing to do. Personally, since my systems only run Fedora Linux, I&#8217;d love to just move them all over to systemd-boot and not deal with GRUB at all anymore, but since it&#8217;s not supported by Fedora I&#8217;m worried updates might break the boot process at some point. On systems where only one operating system is installed, as a user I should really be given the choice to opt for the simplest, most basic boot sequence, even if it can&#8217;t boot any other operating systems or if it&#8217;s more limited than GRUB. 

<https://www.osnews.com/story/140407/limine-a-modern-advanced-portable-multiprotocol-bootloader-and-boot-manager/>

---

## Exploring O3 optimization for Ubuntu

date: 2024-08-04, from: OS News

Following our recent work 5 with Ubuntu 24.04 LTS where we enabled frame pointers by default to improve debugging and profiling, we’re continuing our performance engineering efforts by evaluating the impact of O3 optimization in Ubuntu. O3 is a GCC optimization 14 level that applies more aggressive code transformations compared to the default O2 level. These include advanced function and the use of sophisticated algorithms aimed at enhancing execution speed. While O3 can increase binary size and compilation time, it has the potential to improve runtime performance. ↫ Ubuntu Discourse If these optimisations deliver performance improvements, and the only downside is larger binaries and longer compilation times, it seems like a bit of a no-brainer to enable these, assuming those mentioned downsides are within reason. Are there any downsides they&#8217;re not mentioning? Browsing around and doing some minor research it seems that -O3 optimisations may break some packages, and can even lead to performance degradation, defeating the purpose altogether. Looking at a set of benchmarks from Phoronix from a few years ago, in which the Linux kernel was compiled with either O2 and O3 and their performance compared, the results were effectively tied, making it seem not worth it at all. However, during these benchmarks, only the kernel was tested; everything else was compiled normally in both cases. Perhaps compiling the entire system with O3 will yield improvements in other parts of the system that do add up. For now, you can download unsupported Ubuntu ISOs compiled with O3 optimisations enabled to test them out. 

<https://www.osnews.com/story/140403/exploring-o3-optimization-for-ubuntu/>

---

## ArchiveBox

date: 2024-08-04, from: Tilde.news

<p><a href="https://tilde.news/s/kf1rp4/archivebox">Comments</a></p> 

<https://archivebox.io>

---

## Full Circle Weekly News 377

date: 2024-08-04, from: Full Circle Magazine

<ul>
<li>
<p><a href="https://marc.info/?l=openbsd-cvs&amp;m=172139969119269&amp;w=2">OpenBSD adds VA-API support:</a></p>
</li>
<li>
<p><a href="https://github.com/nixys/nxs-data-anonymizer">Release of nxs-data-anonymizer 1.9.0:</a></p>
</li>
<li>
<p><a href="https://lists.infradead.org/pipermail/hostap/2024-July/042847.html">Release of hostapd and wpa_supplicant 2.11:</a></p>
</li>
<li>
<p><a href="https://www.justjournal.com/users/mbsd/entry/33985">Release of the MidnightBSD 3.2:</a></p>
</li>
<li>
<p><a href="https://mta.openssl.org/pipermail/openssl-announce/2024-July/000313.html">Restructuring the OpenSSL project:</a></p>
</li>
<li>
<p><a href="https://blog.linuxmint.com/?p=4731">Release of Linux Mint 22:</a></p>
</li>
<li>
<p><a href="https://selectel-ru.translate.goog/about/newsroom/news/selectel-anonsiroval-otkrytoe-beta-testirovanie-servernoj-operaczionnoj-sistemy-sobstvennoj-razrabotki/?_x_tr_sl=auto&amp;_x_tr_tl=en&amp;_x_tr_hl=en-US&amp;_x_tr_pto=wapp">Selectel has begun public beta testing of its own Linux server distribution:</a></p>
</li>
<li>
<p><a href="https://discourse.ubuntu.com/t/announcing-the-multipass-1-14-0-release/46668">Release of Multipass 1.14:</a></p>
</li>
<li>
<p><a href="https://forum.opnsense.org/index.php?topic%3D41700.0">Release of OPNsense 24.7:</a></p>
</li>
<li>
<p><a href="https://blog.zulip.com/2024/07/25/zulip-9-0-released/">Zulip 9:</a></p>
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

<https://fullcirclemagazine.org/podcasts/podcast-377/>

