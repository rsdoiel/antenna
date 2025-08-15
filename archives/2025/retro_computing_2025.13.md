---
title: retro computing
updated: 2025-04-06 14:08:45
---

# retro computing

(date: 2025-04-06 14:08:45)

---

## b.log 2025/04/06 - Five thousand, Mowing!!!, Coffee capsules, Sad Trump!, Sakura starts! Swallows!, Vegetables, Hovercat.

date: 2025-04-06, from: Richard Murray's blog

Five thousand, Mowing!!!, Coffee capsules, Sad Trump!, Sakura starts! Swallows!, Vegetables, Hovercat. 

<br> 

<https://heyrick.eu/blog/index.php?diary=20250406>

---

## ROOL aims high with their Moonshots initiative

date: 2025-04-06, from: RiscOS Story

The day before the RISC OS North show last week, RISC OS Open Ltd (ROOL) published an announcement in the news section of their website, and emailed a press release to draw attention to it1. Titled &#8216;&#8220;Moonshots&#8221; initiative to Secure the Future of the OS&#8217;, the announcement outlines a significant problem that the operating system faces &#8211; one that most RISC OS users will already be well aware of: That RISC OS is 32-bit, while more and more new Arm processors are 64-bit. To expand, a notable amount of the&#8230; 

<br> 

<https://www.riscository.com/2025/rool-moonshots-initiative/>

---

## MacLynx beta 6: back to the Power Mac

date: 2025-04-06, from: Old Ventage Computing Research

<div class="separator" style="clear: both;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhDuxcQk4dzyHNcOak_RHAyO9gKDs2gpe52RzBAcwmOJg2JCmM0tKUqn6lzlrefwNX_eD46OjkJsC9U7wHK3O0gKmMbJ_thlT3SMX5KoVUHy321kPK7z6Umav5zqAxvRKXsDWuSFsbh33I6Dcv2AwjFgYj8XEXFZZlJuCC_-nS5dtdItpXjHJK6TfWf8_8/s832/Picture%2019.PNG" style="display: block; padding: 1em 0; text-align: center; "><img alt="" border="0" width="320" data-original-height="624" data-original-width="832" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhDuxcQk4dzyHNcOak_RHAyO9gKDs2gpe52RzBAcwmOJg2JCmM0tKUqn6lzlrefwNX_eD46OjkJsC9U7wHK3O0gKmMbJ_thlT3SMX5KoVUHy321kPK7z6Umav5zqAxvRKXsDWuSFsbh33I6Dcv2AwjFgYj8XEXFZZlJuCC_-nS5dtdItpXjHJK6TfWf8_8/s320/Picture%2019.PNG"/></a></div>

Time for another MacLynx save point in its slow, measured evolution to become your best choice within the remarkably narrow niche of "classic MacOS text browsers." Refer to <a href="/search/label/lynx">prior articles</a> for more of the history, but MacLynx is a throwback port of the venerable Lynx 2.7.1 to the classic Mac OS last updated in 1997 which I picked up again <a href="/2020/11/maclynx-beta-2.html">in 2020</a>. Rather than try to replicate its patches against a more current Lynx which may not even build, I've been improving its interface and Mac integration along with the browser core, incorporating later code and patching the old stuff.

<div class="separator" style="clear: both;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiDLfUJtvNdMl5pIgjEzjvw-3H8TiGkxPV9NMyIy1BDMU1Va5s2vnYjv8mnWLBAg8wE0Ul3E9JtpjR9gIdrJSsEoJoEX-8c3l5GLgWkG-et7TMdI2SCRmq49Bb395u3y8tYbUZk-bY_wvnoSUGeHyKl6T58-2hGtgtHi0edw9Aoco84bRvUhMT0b9CsnUA/s1920/Picture%2017.PNG" style="display: block; padding: 1em 0; text-align: center; "><img alt="" border="0" width="320" data-original-height="1080" data-original-width="1920" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiDLfUJtvNdMl5pIgjEzjvw-3H8TiGkxPV9NMyIy1BDMU1Va5s2vnYjv8mnWLBAg8wE0Ul3E9JtpjR9gIdrJSsEoJoEX-8c3l5GLgWkG-et7TMdI2SCRmq49Bb395u3y8tYbUZk-bY_wvnoSUGeHyKl6T58-2hGtgtHi0edw9Aoco84bRvUhMT0b9CsnUA/s320/Picture%2017.PNG"/></a></div>

The biggest change in beta 6 is bringing it back to the Power Macintosh with a native PowerPC build, shown here running on my 1.8GHz Power Mac G4 MDD. This is built with a much later version of CodeWarrior (Pro 7.1), the same release used for Classilla and generating better optimized code than the older fat binary, and was an opportunity to simultaneously wring out various incompatibilities. Before the 68000 users howl, the 68K build is still supported!
<p>
<a name='more'></a>
<p>
However, beta 6 is <em>not</em> a fat binary &mdash; the two builds are intentionally separate. One reason is so I can use a later CodeWarrior for better code that didn't have to support 68K, but the main one is to consider different code on Power Macs which may be expensive or infeasible on 68K Macs. The primary use case for this &mdash; which may occur as soon as the next beta &mdash; is adding a built-in vendored copy of <a href="/search/label/crypto%20ancienne">Crypto Ancienne</a> for onboard TLS without a proxy. On all but upper-tier 68040s, setting up the TLS connection takes longer than many servers will wait, but even the lowliest Performa 6100 with a barrel-bottom 60MHz 601 can do so reasonably quickly.
<p>
The port did not go altogether smoothly. While Olivier Gutknecht's original fat binary worked fine on Power Macs, it took quite a while to get all the pieces reassembled on a later CodeWarrior with a later version of <a href="https://sourceforge.net/projects/gusi/">GUSI</a>, the Mac POSIX glue layer which is a critical component (the Power Mac version uses 2.2.3, the 68K version uses 1.8.0). Some functions had changed and others were missing and had to be rewritten with later alternatives. One particularly obnoxious glitch was due to a conflict between the later GUSI's <tt>time.h</tt> and Apple Universal Interfaces' <tt>Time.h</tt> (remember, HFS+ is case-<em>in</em>sensitive) which could not be solved by changing the search order in the project due to other conflicting headers. The simplest solution was to copy <tt>Time.h</tt> into the project and name it something else!
<p>
Even after that, though, basic Mac GUI operations like popping open the URL dialogue would cause it to crash. Can you figure out why? Here's a hint:

<div class="separator" style="clear: both;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiVPiOToTdKAbkqIpaJz56Ri93e0YijkBp_aWFr-UNK2PtG-GlSX8u0XlHx9vKfZEDyU5kdwzBm9Td3_L8FePt0XuplSIojxji4NTD7BS4UlYVQXp7qqSvm9m-OaACNIxIrtfR07L-qFjagZv6Ik9LnmZ8QHEIAEFiyvnu_JXbDujzomA1Fby77vqJRV4w/s1920/Picture%2014.PNG" style="display: block; padding: 1em 0; text-align: center; "><img alt="" border="0" width="320" data-original-height="1080" data-original-width="1920" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiVPiOToTdKAbkqIpaJz56Ri93e0YijkBp_aWFr-UNK2PtG-GlSX8u0XlHx9vKfZEDyU5kdwzBm9Td3_L8FePt0XuplSIojxji4NTD7BS4UlYVQXp7qqSvm9m-OaACNIxIrtfR07L-qFjagZv6Ik9LnmZ8QHEIAEFiyvnu_JXbDujzomA1Fby77vqJRV4w/s320/Picture%2014.PNG"/></a></div>

Pencils down. If you're an old Mac programmer, you've immediately spotted the conveniently highlighted cause in the screenshot, but if you're not, here's the answer: when providing function pointers to Toolbox routines, you have to tell the operating system whether it's going to run PowerPC or 68K code. The normal state, as it were, of the Power Macintosh nanokernel is to be monitoring the on-board 68K emulator running 68K code, even in New World Macs, and even in later versions of the operating system where most of the Mac OS was finally PowerPC-native (watch for the message "into the 68K fire" when running a Power Mac ROM with logging on). Don't confuse this with the normal state of your <em>application</em>: your application itself was almost certainly fully native. However, a certain amount of the Toolbox and the Mac OS <a href="/2022/07/a-brief-dive-into-power-mac-inits-and.html">retained 68K code</a>, even in the days of Classic under Mac OS X, and your PowerPC application would invariably hit one of these routines eventually.
<p>
The component responsible for switching between ISAs is the Mixed Mode Manager, which is tightly integrated with the 68K emulator and bridges the two architectures' different calling conventions, marshalling their parameters (PowerPC in registers, 68K on the stack) and managing return addresses. I'm serious when I say the normal state is to run 68K code: 68K code is necessarily <em>the</em> first-class citizen in Mac OS, even in PowerPC-only versions, because to run 68K apps seamlessly they must be able to call any 68K routine directly. All the traps that 68K apps use must also look like 68K code to them &mdash; and PowerPC apps often use those traps, too, because they're fundamental to the operating system. 68K apps can and do call code fragments in either ISA using the Code Fragment Manager (and PowerPC apps are obliged to), but the system must still be able to run non-CFM apps that are unaware of its existence.
<p>
To jump to native execution thus requires an additional step. Say a 68K app running in emulation calls a function in the Toolbox which used to be 68K, but is now PowerPC. On a 68K MacOS, this is just 68K code. In later versions, this is replaced by a routine descriptor with a special trap meaningful only to the 68K emulator. This descriptor contains the destination calling convention and a pointer to the PowerPC function's transition vector, which has both the starting address of the code fragment and the initial value for the TOC environment register. The MMM converts the parameters to a PowerOpen ABI call according to the specified convention and moves the return address into the PowerPC link register, and upon conclusion converts the result back and unwinds the stack. The same basic idea works for 68K code calling a PowerPC routine. Unfortunately, we forgot to make a descriptor for this and other routines the Toolbox modal dialogue routine expected to call, so the nanokernel remains in 68K mode trying to execute them and makes a big mess. (It's really hard to debug it when this happens, too; the backtrace is usually totally thrashed.)

<div class="separator" style="clear: both;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj3XNNBdAOrDkTv4N_pljDPNN3Qi5E_ppoCOOIVlADVdQweh7ZiDo1cHHRxVGRtkHLXakGj1En03bjt9zr5t_bkmaZ45yFkyjySxgbrxpbWx47mtbgkFQGm_XteqmQIVb2-fD2dEYBH15QMUvy4S243-7JDQWnTtMi_FF0VzV3x151rhMTo3tw6s4uUhls/s1920/Picture%2016.PNG" style="display: block; padding: 1em 0; text-align: center; "><img alt="" border="0" width="320" data-original-height="1080" data-original-width="1920" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj3XNNBdAOrDkTv4N_pljDPNN3Qi5E_ppoCOOIVlADVdQweh7ZiDo1cHHRxVGRtkHLXakGj1En03bjt9zr5t_bkmaZ45yFkyjySxgbrxpbWx47mtbgkFQGm_XteqmQIVb2-fD2dEYBH15QMUvy4S243-7JDQWnTtMi_FF0VzV3x151rhMTo3tw6s4uUhls/s320/Picture%2016.PNG"/></a></div>

Because we have access to the source code and know what we're calling (it's our own code), we can simply use an Apple-provided macro to create a static descriptor on the stack as needed. This is a(n in)famous Universal Procedure Pointer, bane of later System 7 programmers everywhere. If you're not sure what you're calling or you're calling a library you don't control, you're reduced to writing these descriptors manually and/or often putting them on the heap. We don't have to do either of those things here, and for other things Apple's Universal Headers generally bridge the differences &mdash; meaning mostly the same code just works on both our 68K CodeWarrior and our much later PowerPC CodeWarrior.
<p>
Do note that the PowerPC version is already different in one respect: it has a 4MB preferred allocation instead of the 68K's 2MB. No Power Mac ever shipped with less than 8MB of RAM and many Power Macs even have that or a similar amount soldered to the logic board. It also may have problems with 7.1.2, so if you're running a 601 Power Mac that you don't want to upgrade to 7.5 or later, you may need to run the 68K version which still supports 7.0 and 7.1. Otherwise the two versions of beta 6 should act exactly the same. If you notice differences in behaviour, or you get crashes with certain operations, post in the comments.
<p>
A couple UI changes in this release. I mentioned <a href="/2023/08/maclynx-beta-5-utf-8-pull-down-menus.html">the last time</a> that my idea with MacLynx is to surround the text core with the Mac interface. Lynx keys should still work and it should still act like Lynx, but once you move to a GUI task you should stay in the GUI until that task is completed. In beta 5, I added support for the Standard File package so you get a requester instead of entering a filename, but once you do this you still need to manually select "Save to disk" inside Lynx. That changes in beta 6:

<div class="separator" style="clear: both;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgUL0-Zryi-XIP0vWhA9DTn73Ys_oG6ispwv1yocogQ3vhMfzlaWf7IsQuWZ4R6kk-dHRCeeysVHZ3QYO4ogOe44MDtX6Ny0xKc9WbGVxSiqgPqFYtSl-nvJhOQfWNEULa0GNXmVazQ5lJXqQB5nvrl7hoSIkcSGaDawFViyl5S9s9JqYlI9vO7BXI3E6Y/s832/Picture%2018.PNG" style="display: block; padding: 1em 0; text-align: center; "><img alt="" border="0" width="320" data-original-height="624" data-original-width="832" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgUL0-Zryi-XIP0vWhA9DTn73Ys_oG6ispwv1yocogQ3vhMfzlaWf7IsQuWZ4R6kk-dHRCeeysVHZ3QYO4ogOe44MDtX6Ny0xKc9WbGVxSiqgPqFYtSl-nvJhOQfWNEULa0GNXmVazQ5lJXqQB5nvrl7hoSIkcSGaDawFViyl5S9s9JqYlI9vO7BXI3E6Y/s320/Picture%2018.PNG"/></a></div>

The download modal now offers you a direct "Save to disk" option (which, under the hood, "pushes all the keys" for you). You can still use Lynx keys in the modal just as before, but now that your hand is on the mouse, you can finish everything with mouse clicks. Speaking of, beta 6 also corrects a bug where you couldn't overwrite a file with a new one you were saving, even though it would ask you if you wanted to. I also found and fixed a problem that manifested in the PowerPC build (but would affect the 68K build also) when translating slashed paths into MacOS colon paths, turning double slashes into <tt>::</tt> which in MacOS is treated as the parent folder.
<p>
Resizing, scrolling and repainting are also improved. The position of the thumb in MacLynx's scrollbar is now implemented using a more complex but yet more dynamic algorithm which should also more properly respond to resize events. A similar change fixes scroll wheels with USB Overdrive. When MacLynx's default window opens, a scrollbar control is artificially added to it. USB Overdrive implements its scrollwheel support by finding the current window's scrollbar, if any, and emulating clicks on its up and down (or left and right) buttons as the wheel is moved. This works fine in MacLynx, at least initially. When the window is resized, however, USB Overdrive seems to lose track of the scrollbar, which causes its scrollwheel functionality to stop working. The solution was to destroy and rebuild the scrollbar after the window takes its new dimensions, like what happens on start up when the window first opens. This little song and dance may also fix other scrollwheel extensions.
<p>
Always keep in mind that the scrollbar is actually used as a means to send commands to Lynx to change its window on the document; it isn't scrolling, say, a pre-rendered GWorld. This causes the screen to be redrawn quite frequently, and big window sizes tend to chug. You can also outright crash the browser with large window widths: this is difficult to do on a 68K Mac with on-board video where the maximum screen size isn't that large, but on my 1920x1080 G4 I can do so reliably.

<div class="separator" style="clear: both;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjSWl_NBfAV5t6J-sCafCra5RSNxoltvxqC7Z9px6iGknty61p3L9SILEmMHWwqSwfGDdgQJ8Lsj7D7Ew87McyOvUnn7ewZaJ95c8-O2v729Ehsh4Gh60-D6XlfnJvzdtCfMp8gTfqA1KctKbHuhdQ5HZ8USeK2LcFQOJEdSqk_QYW7lNlkDbiBKmMVaSg/s1920/Picture%2010.PNG" style="display: block; padding: 1em 0; text-align: center; "><img alt="" border="0" width="320" data-original-height="1080" data-original-width="1920" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjSWl_NBfAV5t6J-sCafCra5RSNxoltvxqC7Z9px6iGknty61p3L9SILEmMHWwqSwfGDdgQJ8Lsj7D7Ew87McyOvUnn7ewZaJ95c8-O2v729Ehsh4Gh60-D6XlfnJvzdtCfMp8gTfqA1KctKbHuhdQ5HZ8USeK2LcFQOJEdSqk_QYW7lNlkDbiBKmMVaSg/s320/Picture%2010.PNG"/></a></div>

For this reason, I arbitrarily decided to enforce a maximum 132 column size because otherwise MacLynx crashes with a null pointer if the screen is too wide, likely an intrinsic problem with MacCurses trying to handle such a large screen matrix. This is not as big a hardship as it might seem because scrolling becomes slower and slower the bigger the window gets &mdash; after all, it's not really "scrolling" anything, it's redrawing practically the entire screen every time! You can just drag the window out to whatever width and it will snap back to the maximum.
<p>
Conversely, beta 6 also requires a minimum of 80 columns' width. Lynx prompts can look bad at smaller widths and it's not really designed for screen sizes smaller than that, so now we don't let it. Even a 512x384 Mac can still manage an 80-column window with the standard Monaco nine-point font. In a like fashion you can drag the window back in smaller than 80 columns and it will snap back to the minimum.
<p>
When resizing horizontally, MacLynx now forces a reload if the width changes and the current document was fetched with an idempotent HTTP method (i.e., GET), since MacLynx (quite reasonably) doesn't cache the HTML; rather, it caches its rendered version, which is now the wrong width. If the method is not idempotent, you get to reload the page yourself. If you simply resize vertically and the horizontal width doesn't change (or it keeps snapped to the minimum or maximum), no reload is required.
<p>
A number of bugs are also fixed in the new UTF-8 support added to beta 5. Among them is a character set overhaul to prevent Lynx from internally disagreeing with itself about whether high-bit characters should be interpreted as native MacRoman, or part of a UTF-8 sequence which gets converted to MacRoman. Because of the need to support more UTF-8, including HTML entities and other things which may generate it, the other character sets available in MacLynx other than ISO Latin 1, 7-bit Approximations and the Macintosh 8-bit default are now officially deprecated and will likely be removed in future betas. In fact, I'm considering going further and eliminating other character set support except for Macintosh 8-bit, effectively making the character set option in <tt>lynx.cfg</tt> a no-op. However, if you are <em>intentionally</em> using another character set and this will break you, please feel free to plead your use case to me and I will consider it.
<p>
Another bug fixed was an infinite loop that could trigger during UTF-8 conversion of certain text strings. These sorts of bugs are also a big pain to puzzle out because all you can do from CodeWarrior is force a trap with an NMI, leaving the debugger's view of the program counter likely near but probably not at the scene of the foul. Eventually I single-stepped from a point <em>near</em> the actual bug and was able to see what was happening, and it turned out to be a very stupid bug on my part, and that's all I'm going to say about that.

<div class="separator" style="clear: both;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj2NomFsMnp5nhsVHxo_geQo-nOhunQw39XthdWZfkst4Am1DqWogHrcZfbECpkRaGJcOjdwpt4cr0J06KIpDVA5JngCPBEZRiqsK1SwzYTFBdPbJOYk9l6KSoXB8FhUJ97Je_zW947xuBN84KX5zqQwhsUnBlU9v_PL-9FOBuqrywl7ffx04emOcLTKqY/s1920/Picture%2012.PNG" style="display: block; padding: 1em 0; text-align: center; "><img alt="" border="0" width="320" data-original-height="1080" data-original-width="1920" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj2NomFsMnp5nhsVHxo_geQo-nOhunQw39XthdWZfkst4Am1DqWogHrcZfbECpkRaGJcOjdwpt4cr0J06KIpDVA5JngCPBEZRiqsK1SwzYTFBdPbJOYk9l6KSoXB8FhUJ97Je_zW947xuBN84KX5zqQwhsUnBlU9v_PL-9FOBuqrywl7ffx04emOcLTKqY/s320/Picture%2012.PNG"/></a></div>

Cookies were also significantly overhauled (please note that this is in no way a reflection on mainline Lynx, which handles them in a much more modern fashion): as proof, here we are browsing Hacker News and posting a comment. After teaching MacLynx what the <tt>SameSite</tt> and <tt>HttpOnly</tt> (irrelevant on Lynx but supported for completeness) attributes are, the next problem was that any cookie with an expiration value &mdash; which nowadays is nearly any login cookie &mdash; wouldn't stick. The problem turned out to be the difference in how the classic MacOS handles time values. In 32-bit Un*xy things, including Mac OS X, <tt>time_t</tt> is a signed 32-bit integer with an epoch starting on Thursday, January 1, 1970. In the classic MacOS, <tt>time_t</tt> is an <em>un</em>signed 32-bit integer with an epoch starting on Friday, January 1, <em>1904</em>. (This is also true for timestamps in HFS+ filesystems, even in Mac OS X and modern macOS, but not APFS.) Lynx has a utility function that can convert a ASCII date string into a seconds-past-the-epoch count, but in case you haven't guessed, this function defaults to the Unix epoch. In fact, the version previously in MacLynx <em>only</em> supports the Unix epoch. That means when converted into seconds after the epoch, the cookie expiration value would always appear to be in the past compared to the MacOS time value which, being based on a much earlier epoch, will always be much larger &mdash; and thus MacLynx would conclude the cookie was actually expired and politely clear it. I reimplemented this function based on the MacOS epoch, and now login cookies actually let you log in! Unfortunately other cookies like trackers can be set too, and this is why we can't have nice things. Sorry. At least they don't persist between runs of the browser.
<p>
Even then, though, there's still some additional time fudging because <tt>time(NULL)</tt> on my Quadra 800 running 8.1 and <tt>time(NULL)</tt> on my G4 MDD running 9.2.2, despite their clocks being synchronized to the same NTP source down to the second, yielded substantially different values. Both of these calls should go to the operating system and use the standard Mac epoch, and not through GUSI, so GUSI can't be why. For the time being I use a second fudge factor if we get an outlandish result before giving up. I'm still trying to figure out why this is necessary.

<div class="separator" style="clear: both;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiQoUwmfVYP-1uIUMO_btT1sp2dZZ3-B2v1NbCqNl3PhAOSwYWaHkG6QseXbhd82LrsjG0_f97g2es9CBwZUV8fYNQQNGuz4pRTSIoLm2I76ASMcXeV0aulBw9IhKN0EPXNmcmLkboQ3JZRaZLXG2RGGxOuASKqI-47i6gqwRxpKvIYNMDfg9IKCbaRtVc/s1920/Picture%2011.PNG" style="display: block; padding: 1em 0; text-align: center; "><img alt="" border="0" width="320" data-original-height="1080" data-original-width="1920" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiQoUwmfVYP-1uIUMO_btT1sp2dZZ3-B2v1NbCqNl3PhAOSwYWaHkG6QseXbhd82LrsjG0_f97g2es9CBwZUV8fYNQQNGuz4pRTSIoLm2I76ASMcXeV0aulBw9IhKN0EPXNmcmLkboQ3JZRaZLXG2RGGxOuASKqI-47i6gqwRxpKvIYNMDfg9IKCbaRtVc/s320/Picture%2011.PNG"/></a></div>

You may have noticed the images in some of these screenshots. They appear courtesy of MacLynx's picture viewer functionality, which will download images and hand them off to the viewer of your choice (on the G4 I use QuickTime 6's Picture Viewer, using the signature <tt>ogle</tt>). This didn't work for PNG images before because it was using the wrong internal MIME type, which is now fixed. (Ignore the MIME types in the debug window because that's actually a problem I noticed with my Internet Config settings, not MacLynx. Fortunately Picture Viewer will content-sniff, so it figures it out.) Finally, there is also miscellaneous better status code and redirect handling (again not a problem with mainline Lynx, just our older fork here), which makes login and browsing sites more streamlined, and you can finally press Shift-Tab to cycle <em>backwards</em> through forms and links.
<p>
If you want to build MacLynx from source, building beta 6 is largely the same on 68K with <a href="/2023/08/maclynx-beta-5-utf-8-pull-down-menus.html">the same compiler and prerequisites</a> except that builds are now segregated to their own folders and you will need to put a copy of <tt>lynx.cfg</tt> in with them (the StuffIt source archive does not have aliases predone for you). For the PowerPC version, you'll need the same set up but substituting CodeWarrior Pro 7.1, and, like CWGUSI, GUSI 2.2.3 should be in the same folder or volume that contains the MacLynx source tree. There are debug and optimized builds for each architecture. Pre-built binaries and source are available from <a href="http://www.floodgap.com/retrotech/mac/lynx/">the main MacLynx page</a>. MacLynx, like Lynx, is released under the GNU General Public License v2. 

<br> 

<https://oldvcr.blogspot.com/2025/04/maclynx-beta-6-back-to-power-mac.html>

---

## FreeDOS 1.4 is here!

date: 2025-04-06, from: FreeDOS News

<div class="markdown_content"><p><strong>Download the FreeDOS 1.4 distribution!</strong> This version includes an updated FreeCOM, Install program, and HTML Help system. This also includes improvements to many of the utilities including FDISK, JEMM, 7Zip, FORMAT, FASM, MORE, RUNTIME, and more! Packages have been reorganized in FreeDOS 1.4 so they will be easier to find: The LiveCD installs a complete user-based DOS system including standard DOS programs, Applications, Archivers, Device Drivers, Games, Networking, Sound, and basic tools. Use the BonusCD to install Development, Editors, Boot Tools, OpenGEM, and extra utilities. Most users should use the Live CD image to install FreeDOS, especially if you're using a virtual machine. We also have a USB installer for real hardware, a Legacy CD installer for older hardware, and a floppy edition for classic hardware. <a class="" href="https://www.freedos.org/download/" rel="nofollow">Download now!</a></p></div> 

<br> 

<https://sourceforge.net/p/freedos/news/2025/04/freedos-14-is-here/>

---

## The End of Sierra as We Knew It, Part 1: The Acquisition

date: 2025-04-04, from: Digital Antiquarian

I feel very comfortable working in a company where you can&#8217;t touch anything. &#8212; Walter Forbes At the beginning of 1996, Sierra On-Line was still basking in the success of the previous summer&#8217;s Phantasmagoria, the best-selling game it had ever published. With revenues of $158.1 million and profits of $16 million in 1995, the company [&#8230;] 

<br> 

<https://www.filfre.net/2025/04/the-end-of-sierra-as-we-knew-it-part-1-the-acquisition/>

---

## b.log 2025/04/03 - Politics.

date: 2025-04-03, from: Richard Murray's blog

Politics. 

<br> 

<https://heyrick.eu/blog/index.php?diary=20250403>

---

## b.log 2025/04/02 - Sun!, Cherry blossom, Stew!, McDonald's Nether Flame Sauce, April Fool.

date: 2025-04-02, from: Richard Murray's blog

Sun!, Cherry blossom, Stew!, McDonald's Nether Flame Sauce, April Fool. 

<br> 

<https://heyrick.eu/blog/index.php?diary=20250402>

---

## The April Fools joke that might have got me fired

date: 2025-04-01, from: Old Ventage Computing Research

Everyone should pull one great practical joke in their lifetimes. This one was mine, and I think it's past the statute of limitations. The story is true. Only the names are redacted to protect the guilty.
<p>
My first job out of college was a database programmer, even though my undergraduate degree had nothing to do with computers and my current profession still mostly doesn't. The reason was that the University I worked for couldn't afford competitive wages, but they did offer various fringe benefits, and they were willing to train someone who at least had decent working knowledge. I, as a newly minted graduate of the august University of California system, had decent working knowledge at least of BSD/386 and SunOS, but more importantly also had the glowing recommendation of my predecessor who was being promoted into a new position. I was hired, which was their first mistake.
<p>
<a name='more'></a>
The system I was hired to work on was an HP 9000 K250, one of Hewlett-Packard's big PA-RISC servers. I wish I had a photograph of it, but all I have are a couple bad scans of some bad Polaroids of my office and none of the server room. The server room was downstairs from my office back in the days when server rooms were on-premises, complete with a swipe card lock and a halon system that would give you a few seconds of grace before it flooded everything. The K250 hulked in there where it had recently replaced what I think was an Encore mini of some sort (probably a Multimax, since it was a few years old and the 88K Encores would have been too new for the University), along with the AIX RS/6000s that provided student and faculty shell accounts and E-mail, the bonded <a href="/2022/05/so-long-home-t1-line-hello-hacking-t1.html">T1 lines</a>, some of the terminal servers, the massive Cabletron routers and a lot of the telco stuff. One of the tape reels from the Encore hangs on my wall today as a memento.
<p>
The K250 and the Encore it replaced (as well as the L-Class that later replaced the K250 when I was a consultant) ran an all-singing, all-dancing student information system called CARS. CARS is still around, renamed <a href="https://jenzabar.com/">Jenzabar</a>, though I suspect that many of its underpinnings remain if you look under the table. In those days CARS was a massive overlay that was loaded atop the operating system and database, which when I started were, respectively, HP/UX 10.20 and Informix. (I'm old.) It used Informix tables, screens and stored procedures plus its own text UI libraries to run code written variously as Perform screens, SQL, C-shell scripts and plain old C or ESQL/C. Everything was tracked in RCS using overgrown <tt>Makefile</tt>s. I had the admin side (resource management, financials, attendance trackers, etc.) and my office partner had the academic side (mostly grades and faculty tracking). My job was to write and maintain this code and shortly after to help the University create custom applications in CARS' brand-spanking new web module, which chose the new hotness in scripting languages, i.e., Perl. Fortuitously I had learned Perl in, appropriately enough, a computational linguistics course.
<p>
CARS also managed most of the printers on campus except for the few that the RS/6000s controlled directly. Most of the campus admin printers were HP LaserJet 4 units of some derivation equipped with JetDirect cards for networking. These are great warhorse printers, some of the best laser printers HP ever made. I suspect there were line printers other places, but those printers were largely what existed in the University's offices.
<p>
It turns out that the <tt>READY</tt> message these printers show on their VFD panels is changeable. I don't remember where I read this, probably idly paging through the manual over a lunch break, but initially the only fun things I could think of to do was to have the printer say hi to my boss when she sent jobs to it, stuff like that (whereupon she would tell me to get back to work). Then it dawned on me: because I had access to the printer spools on the K250, and the spool directories were conveniently named the same as their hostnames, I knew where each and every networked LaserJet on campus was. I was young, rash and motivated. This was a hack I just couldn't resist. It would be even better than what had been my favourite joke at my alma mater, where campus services, notable for posting various service suspension notices, posted one April Fools' Day that gravity itself would be suspended to various buildings. I felt sure this hack would eclipse that too.
<p>
The plan on April Fools' Day was to get into work at OMG early o'clock and iterate over every entry in the spool, sending it a sequence that would change the <tt>READY</tt> message to <tt>INSERT 5 CENTS</tt>. This would cause every networked LaserJet on campus to appear to ask for a nickel before you printed anything. The script was very simple (this is the actual script, I saved it):
<p>
<div class="tx"><pre>
#!/bin/csh -f

cd /opt/carsi/spool
foreach i (*)
        echo '^[%-12345X@PJL RDYMSG DISPLAY="INSERT 5 CENTS"' | netto $i 9100
end
</pre></div>
<p>
The <tt>^[</tt> was a literal ASCII 27 ESCape character, and <tt>netto</tt> was a simple <tt>netcat</tt>-like script I had written in these days before <tt>netcat</tt> was widely used. That's it.

Now, let me be clear: the printer was <em>still</em> ready! The effect was merely cosmetic! It would still print if you sent jobs to it! Nevertheless, to complete the effect, this message was sent out on the campus-wide administration mailing list (which I also saved):
<p>
<div class="tx"><pre>
To: xxx@xxx.xxx
Date: xxx, 1 Apr xxxx 05:41:34 -0800 (PST)
Subject: IMPORTANT NOTE ON PRINTER POLICY

Due to the increasing costs of service commitments for campus printers,
all printers on campus will be reprogrammed for pay-per-page service
to defray these mounting expenses, effective immediately.

Most printers will now require a 5 cent deposit per page for printing. This
may be paid on account or through special coin acceptors to be installed
on the unit by technicians through the end of this week. If your office has
not yet established an account, your printer will automatically request you to 
insert 5 cents into the slot per page to be printed. Please check your
printer's LCD [sic] display to see if your printer requires the 5 cents per
page before using your printer.

Additional printers will be retrofitted as soon as possible. Technicians
will be contacting departments with specific details.

All accounts will be maintained on CARS. Do not call the Helpdesk. To
establish or verify your department's printer account, please call me at
xxxx.

Please also direct all questions regarding this new policy to me as well.

We apologise for the inconvenience and hope that the new cost requirement
will not adversely affect your department's productivity.
</pre></div>
<p>
At the end of the day I would reset everything back to <tt>READY</tt>, smile smugly, and continue with my menial existence. That was the plan.
<p>
Having sent this out, I fielded a few anxious calls, who laughed uproariously when they realized, and I reset their printers manually afterwards. The people who knew me, knew I was a practical joker, took note of the date, and sent approving replies. One of the best was sent to me later in the day by intercampus mail, printed on their laser printer, with a nickel taped to it.
<p>
Unfortunately, not everybody on campus knew me, and those who did not not only did <em>not</em> call me, but instead called university administration directly. By 8:30am it was chaos in the main office and this filtered up to the head of HR, who most definitely <em>did</em> know me, and told me I'd better send a retraction before the CFO got in or I was in big trouble. That went wrong also, because my retraction said that campus administration was not considering charging per-page fees when in fact they actually were, so I had to retract it and send a <em>new</em> retraction that didn't call attention to that fact. I also ran the script to reset everything early. Eventually the hubbub finally settled down around noon. Everybody in the office thought it was very funny. Even my boss, who officially disapproved, thought it was somewhat funny.
<p>
The other thing that went wrong, as if all that weren't enough, was that the director of IT &mdash; which is to say, my boss's boss &mdash; was away on vacation when all this took place. (Read E-mail remotely? Who does <em>that</em>?) I compounded this situation with the tactical error of going skiing over the coming weekend and part of the next week, most of which I spent snowplowing down the bunny slopes face first, so that he discovered all the angry E-mail in his box without me around to explain myself. (My office partner remembers him coming in wide-eyed asking, "what did he <em>do</em>??") When I returned, it was icier in the office than it had been on the mountain. The assistant director, who thought it was funny, was in trouble for not putting a lid on it, and I was in really big trouble for doing it in the first place. I was appropriately contrite and made various apologies and was an uncharacteristically model employee for an unnaturally long period of time.
<p>
The Ice Age eventually thawed and the incident was officially dropped except for a "poor judgment" on my next performance review and the satisfaction of what was then considered the best practical joke ever pulled on campus. Indeed, everyone agreed it was much more technically accomplished than the previous award winner, where someone had supposedly gotten it around the grounds that the security guards at the entrance would be charging a nominal admission fee per head. Years later they still said it was legendary.
<p>
I like to think they still do. 

<br> 

<https://oldvcr.blogspot.com/2025/04/the-april-fools-joke-that-might-have.html>

---

## Akamai Will Host kernel.org

date: 2025-03-31, from: Linux Magazine

<p>The organization dedicated to cloud-based solutions has agreed to host kernel.org to deliver long-term stability for the development team.</p> 

<br> 

<http://www.linux-magazine.com/Online/News/Akamai-Will-Host-kernel.org>

---

## EMUF M50734

date: 2025-03-31, from: Hans Otten's Retro blog

Thanks to F.J.Kamerewerd, DL6OE, I have a photo of a EMUF 65XX with a very special CPU, the Mitsubishi M50734. This CPU is from a family of 65C02 cores with enhancements. Around this M50734 the EMUF M50734 is published in MC Magazine 11 1911. See here for the information available. See also:Focal-65 V3D for TIM [&#8230;] 

<br> 

<http://retro.hansotten.nl/emuf-m50734/>

---

## WROCC April 2025 talk on wednesday - Pot Porri

date: 2025-03-31, from: Icon Bar, RISC OS News

The April 2025 WROCC talk is on wednesday and kicks off at 7.45pm on Zoom 

<br> 

<http://www.iconbar.com/comments/rss/news2188.html>

---

## March 2025 News Summary

date: 2025-03-31, from: Icon Bar, RISC OS News

Some things we noticed this month. What did you see? 

<br> 

<http://www.iconbar.com/comments/rss/news2174.html>

