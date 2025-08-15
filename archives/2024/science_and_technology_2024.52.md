---
title: science and technology
updated: 2024-12-29 07:06:07
---

# science and technology

(date: 2024-12-29 07:06:07)

---

## On This Day in 1890, the U.S. Army Killed Nearly 300 Lakota People in the Wounded Knee Massacre

date: 2024-12-29, from: Smithsonian Magazine

The mass murder made sensational news at the time, but getting to the heart of the matter took a much deeper view of American history 

<br> 

<https://www.smithsonianmag.com/smart-news/on-this-day-in-1890-the-us-army-killed-nearly-300-lakota-people-in-the-wounded-knee-massacre-180985745/>

---

## IncludeOS: a minimal, resource efficient unikernel for cloud services

date: 2024-12-28, from: OS News

IncludeOS is an includable, minimal unikernel operating system for C++ services running in the cloud and on real HW. Starting a program with #include &#60;os> will literally include a tiny operating system into your service during link-time. ↫ IncludeOS GitHub page IncludeOS isn&#8217;t exactly the only one of its kind, but I&#8217;ve always been slightly mystified by what, exactly, unikernels are for. The gist is, as far as I understand it, that if you build an application using a unikernel, it will find out at compile time exactly what it needs from the operating system to run, and then everything it needs from the operating system to run will be linked inside the resulting application. This can then be booted directly by a hypervisor. The advantages are clear: you don&#8217;t have to deal with an entire operating system just to run that one application or service you need to provide, and footprint is kept to a minimum because only the exact dependencies the application needs from the operating system are linked to it during compilation. The downsides are obvious too &#8211; you&#8217;re not running an operating system so it&#8217;s far less flexible, and if issues are found in the unikernel you&#8217;re going to have to recompile the application and the operating system bits inside of it just to fix it (at least, I think that&#8217;s the case &#8211; don&#8217;t quote me on it). IncludeOS is under heavy development, so take that under advisement if you intend to use it for something serious. The last full release dates back to 2019, but it&#8217;s still under development as indicated by the GitHub activity. I hope it&#8217;ll push out a new release soon. 

<br> 

<https://www.osnews.com/story/141432/includeos-a-minimal-resource-efficient-unikernel-for-cloud-services/>

---

## Emulating HP-UX using QEMU

date: 2024-12-28, from: OS News

While we&#8217;re out here raising funds to make me daily-drive HP-UX 11i v1 &#8211; we&#8217;re at 59% of the goal, so I&#8217;m starting to prepare for the pain &#8211; it seems you can actually run older versions, HP-UX 10.20 and 11.00 to be specific, in a virtual machine using QEMU. QEMU is an open source computer emulation and virtualization software, first released in 2003 by Fabrice Bellard. It supports many different computer systems and includes support for many RISC architectures besides x86. PA-RISC emulation has been included in QEMU since 2018. QEMU emulates a complete computer in software without the need for specific virtualization hardware. With QEMU, a full HP Visualize B160L and C3700 workstation can be emulated to run PA-RISC operating systems like HP-UX Unix and compatible applications. ↫ Paul Weissman at OpenPA The emulation is complete enough that it can run X11 and CDE, and you can choose between emulating 32bit PA-RISC of 64bit PA-RISC. Devices and peripherals support is a bit of a mixed bag, with things like USB being only partially supported, and audio not working at all since an audio chip commonly found in PA-RISC workstations isn&#8217;t supported either. A number of SCSCI and networking devices found on HP&#8217;s workstations aren&#8217;t supported either, and a few chipsets don&#8217;t work either. As far as operating system support goes, you can run HP-UX 10.20, HP-UX 11.00, Linux, and NetBSD. Newer (11i v1 and later) and older (9.07 and 9.05) versions of HP-UX don&#8217;t work, and neither does NeXTSTEP 3.3. Some of these issues probably stem from missing QEMU drivers, others from a lack of testing; PA-RISC is, after all, not one of the most popular of the dead UNIX architectures, with things like SPARC and MIPS usually taking most of the spotlight. Absolutely nothing beats running operating systems on the bare metal they&#8217;re designed for, but with PA-RISC hardware becoming ever harder to obtain, it makes sense for emulation efforts to pick up speed so more people can explore HP-UX. I&#8217;m weirdly into HP-UX, despite its reputation as a difficult platform to work with, so I personally really want actual hardware, but for most of you, getting HP-UX 11i to work properly on QEMU is most likely the only way you will ever experience this commercial UNIX. 

<br> 

<https://www.osnews.com/story/141430/emulating-hp-ux-using-qemu/>

---

## A systemd-sysupdate plugin for GNOME Software

date: 2024-12-28, from: OS News

In late June 2024 I got asked to take over the work started by&#160;Jerry Wu&#160;creating a&#160;systemd-sysupdate&#160;plugin for&#160;Software. The goal was to allow Software to update sysupdate targets, such as base system images or&#160;system extension images, all while respecting the user’s preferences such as whether to download updates on metered connections. To do so, the plugin communicates with the&#160;systemd-sysupdated&#160;daemon via its&#160;org.freedesktop.sysupdate1&#160;D-Bus interface. I didn’t know many of the things required to complete this project and it’s been a lot to chew in one bite for me, hence how long it took to complete. ↫ Adrien Plazas This new plugin was one of the final pieces of moving GNOME OS &#8211; which we talked about before &#8211; from OSTree to sysupdate, which in turn is part of GNOME OS&#8217; effort to have a fully trusted boot sequence. While I&#8217;m not sure GNOME OS is something that will find a lot of uptake among the kind of people that read OSNews, I think it&#8217;s a hugely important effort to create a no-nonsense, easy-to-use Linux system for normal people to embrace. The Steam Deck employs similar implementations, and it&#8217;s easy to see why. 

<br> 

<https://www.osnews.com/story/141427/a-systemd-sysupdate-plugin-for-gnome-software/>

---

## The Tasmania LAN party photos archive reminded me of my terrible teenage fashion choices

date: 2024-12-28, from: OS News

I&#8217;ve never been to a LAN party, not even back in the &#8217;90s and early 2000s when they were quite the common occurance. Both my family and various friends did have multiple computers in the house, so I do have fond memories of hooking up computers through null modem cables to play Rise of the Triad, later superseded by direct Ethernet connections to play newer games. LAN parties have left lasting impressions on those that regularly attended them, but since most took place before the era of ever-present digital camera and smartphones, photos of such events are rarer than they should be. Luckily, Australian software engineer Issung did a lot og digging and eventually struck gold: a massive collection of photos and a few videos from LAN parties that took place from 1996 and 2010 in Australia. After trying a few other timestamps and a few more web searches I sadly couldn’t find anything. As a last ditch effort I made a few posts on various forums, including the long dormant Dark-Media Steam group, then I forgot about it all, until 2 months ago! Someone reached out and was able to get me into a small private Facebook group, once in I could see I had gotten more than I bargained for! I was just looking for Dark-Media photos, but found another regular LAN I had forgotten about, and photos from even more LANs from the late 90s. I was able to scrape all the photos and now upload them to archive.org where they can hopefully live forever. ↫ Issung I love browsing through these, as they bring back so many memories of the computers and dubious fashion choices of my teenage years &#8211; I used to combine different colours zip-off pants, and even had mohawks, spikes, and god knows what else before I started losing all my hair in my very early 20s. Anyway, the biggest change is the arrival of flat displays signalling the end of the widespread use of CRTs, and the slow dissappearence of beige in favour of black. Such a joy to see the trends change in these photos. If anyone else is sitting on treasure troves like these, be sure to share them with the world before it&#8217;s too late. 

<br> 

<https://www.osnews.com/story/141425/the-tasmania-lan-party-photos-archive-reminded-me-of-my-terrible-teenage-fashion-choices/>

---

## How cops taking down LockBit, ALPHV led to RansomHub's meteoric rise

date: 2024-12-28, updated: 2024-12-28, from: The Register (UK I.T. News)

<h4>Cut off one head, two more grow back in its place</h4> <p>RansomHub, the ransomware collective that emerged earlier this year, quickly gained momentum, outpacing its criminal colleagues and hitting its victims especially hard. The group named and shamed hundreds of organizations on its leak site, while demanding exorbitant payments across various industries.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/28/lockbit_alphv_disruptions_ransomhub_rise/>

---

## Discover the Story Behind a Legendary Exposé of the Brutality of the Soviet Union

date: 2024-12-28, from: Smithsonian Magazine

Published on this day in 1973, "The Gulag Archipelago" drew on Russian writer Aleksandr Solzhenitsyn's experiences as a political dissident in a prison camp, but it left him deported and stateless for the next two decades 

<br> 

<https://www.smithsonianmag.com/smart-news/discover-the-story-behind-a-legendary-expose-of-the-brutality-of-the-soviet-union-180985658/>

---

## Christmas 1984: The last hurrah for 8-bit home computers

date: 2024-12-28, updated: 2024-12-28, from: The Register (UK I.T. News)

<h4>Saturation point, and Nintendo and Sega, were just around the corner</h4> <p><strong>Feature</strong>  Remember the excitement of leafing through a catalog for home computer bargains? Or perhaps gazing longingly at festive tech displays in Britain&#39;s WH Smith (or ComputerLand if you lived Stateside)? Take a step back to 1984 and the last great hurrah of the home computer.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/28/christmas_1984_home_computers/>

---

## Microsoft puts an “AI” in a shell’s split view

date: 2024-12-27, from: OS News

AI Shell is an interactive shell that provides a chat interface with language models. The shell provides agents that connect to different AI models and other assistance providers. Users can interact with the agents in a conversational manner. ↫ Microsoft Learn Basically, what Microsoft means with this is a split-view terminal where one of the two views is a prompt where you can ask questions to an &#8220;AI&#8221;, like OpenAI or whatever. The &#8220;AI&#8221; features are not actually integrated into your shell, which instead lives in the other view and acts like a completely normal, standard shell. Instead of opening up an &#8220;AI&#8221; chatbot in a browser window or whatever, you now have it in a split view in your terminal &#8211; that&#8217;s really all there&#8217;s to it here. I&#8217;m going to blow your mind here and say that in theory, this could be an actually useful addition to terminals and shells, as a properly vetted and configured &#8220;AI&#8221; that has been trained on properly obtained source material could indeed be a great help in determining the right terminal commands and options. Tons of people already blindly copy and paste terminal commands from websites even though they really shouldn&#8217;t anyway, so it&#8217;s not like this introduces anything new here in terms of dangers. Hell, tutorial writers still add -y to dnf or apt-get commands, so it can really only go up from here. 

<br> 

<https://www.osnews.com/story/141421/microsoft-puts-an-ai-in-a-shells-split-view/>

---

## OpenAI plans to ring in the New Year with a for-profit push

date: 2024-12-27, updated: 2024-12-27, from: The Register (UK I.T. News)

<h4>We have altered the deal, pray we don’t alter it any further</h4> <p>Amid growing competition and skyrocketing compute requirements necessary to support the next generation of AI models, OpenAI is shaking up its corporate structure - again.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/27/openai_for_profit_push/>

---

## NASA’s Parker Solar Probe Makes History With Closest Pass to Sun

date: 2024-12-27, from: NASA breaking news

Operations teams have confirmed NASA’s mission to “touch” the Sun survived its record-breaking closest approach to the solar surface on Dec. 24, 2024. Breaking its previous record by flying just 3.8 million miles above the surface of the Sun, NASA’s Parker Solar Probe hurtled through the solar atmosphere at a blazing 430,000 miles per hour […] 

<br> 

<https://science.nasa.gov/science-research/heliophysics/nasas-parker-solar-probe-makes-history-with-closest-pass-to-sun/>

---

## Microsoft adds another problem to the Windows 11 24H2 naughty list

date: 2024-12-27, updated: 2024-12-27, from: The Register (UK I.T. News)

<h4>Santa Satya pops one more issue into his sack just in time for Christmas</h4> <p>The trickle of known issues with Windows 11 24H2 has continued with a new one just in time for festive season: installed the operating system using removable media? There&#39;s a chance it might stop receiving security updates.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/27/microsoft_windows_11_security_update/>

---

## Hubble Spies a Cosmic Eye

date: 2024-12-27, from: NASA breaking news

This NASA/ESA&#160;Hubble Space Telescope&#160;image features the spiral galaxy NGC 2566, which sits 76 million light-years away in the constellation Puppis. A prominent bar of stars stretches across the center of this galaxy, and spiral arms emerge from each end of the bar. Because NGC 2566 appears tilted from our perspective, its disk takes on an [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/hubble-spies-a-cosmic-eye/>

---

## Parker Solar Probe sends a "Still Alive" tone back to Earth

date: 2024-12-27, updated: 2024-12-27, from: The Register (UK I.T. News)

<h4>This was a triumph</h4> <p>There is good news for Sun botherers: the Parker Solar Probe appears to have survived its close encounter with our nearest star.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/27/parker_solar_probe_sends_a/>

---

## Seventy-Seven Fascinating Finds Revealed in 2024, From a Mysterious 'Anomaly' Near the Great Pyramid of Giza to a Missing Portrait of Henry VIII

date: 2024-12-27, from: Smithsonian Magazine

The year's most exciting discoveries included musket balls fired in the early days of the American Revolution, a lost composition by Mozart and a medieval chess piece 

<br> 

<https://www.smithsonianmag.com/smart-news/seventy-seven-fascinating-finds-revealed-in-2024-from-a-mysterious-anomaly-near-the-great-pyramid-of-giza-to-a-missing-portrait-of-henry-viii-180985718/>

---

## On This Day in 1831, Charles Darwin Embarked on a Journey That Led to His Groundbreaking Theory of Evolution by Natural Selection

date: 2024-12-27, from: Smithsonian Magazine

Darwin was just 22 when he set out on a voyage that would change the way humanity understands itself and the natural world 

<br> 

<https://www.smithsonianmag.com/smart-news/on-this-day-in-1831-charles-darwin-embarked-on-a-journey-that-led-to-his-groundbreaking-theory-of-evolution-by-natural-selection-180985740/>

---

## After a long lunch, user thought a cursor meant their computer was cactus

date: 2024-12-27, updated: 2024-12-27, from: The Register (UK I.T. News)

<h4><i>Reg</i>-reading heroes snacked on their woes and solved problems with extreme speed</h4> <p><strong>On Call</strong>  The biggest days of the festive season may be behind us, but demand for tech support never stops. That&#39;s why each Friday, even this one, <i>The Register</i> shares stories of fixers forced to help flummoxed fools in On Call – the reader-contributed column that celebrates your successes.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/27/on_call/>

---

## ASUS UEFI force-installs and reinstalls shovelware on Windows and it’s spamming users with Christmas wishes

date: 2024-12-26, from: OS News

I didn&#8217;t have the time to post this one before Christmas, but it&#8217;s so funny and sad at the same time I don&#8217;t want to keep this from you. It turns out that in the days leading up to Christmas this year, users of ASUS computers &#8211; or with ASUS motherboards, I guess &#8211; were greeted with a black bar covering about a third of their screen, decorated with a Christmas wreath. I am making this post for the sake of people like me who will have a black box show up at the bottom of their screen with a Christmas wreath labeled “christmas.exe” in task manager and think it’s Windows 10/11 malware. It is not. It is from the ASUS Armoury Crate program and can be safely closed and ignored. It looks super sketchy and will hopefully save you some time diagnosing the problem. ↫ Slow-Macaroon9630 on reddit So yes, if you&#8217;re using an ASUS computer and have their shovelware installed, you may have been greeted by a giant black banner caused by an executable called &#8220;christmas.exe&#8221;, which sounds exactly like something shitty malware would do. The banner would disappear after a while, and the executable would vanish from the list of running processes as well. It turns out there&#8217;s a similar seasonal greeting called &#8220;HappyNewYear.exe&#8221;, so if you haven&#8217;t done anything to address the first black bar, you might be getting a second one soon. The fact that shitty OEM shovelware does this kind of garbage on Windows is nothing new &#8211; class is not something you can accuse Windows of having &#8211; but I was surprised to find out just how deeply embedded this ASUS shovelware program called Armoury Crate really is. It doesn&#8217;t just come preinstalled on ASUS computers &#8211; no, this garbage program actually has roots in your motherboard&#8217;s firmware. If you merely uninstall Amoury Crate from Windows, it will automatically reinstall itself because your motherboard&#8217;s firmware tells it to. I&#8217;m not joking. To prevent Armory Crate from reinstalling itself, you have to reboot your PC into its UEFI, go to the Advanced Mode, go to Tool &#62; ASUS Armoury Crate, and disable the option Download &#38; Install ARMOURY CRATE app. I had no idea Windows hardware makers had sunk to this kind of low, but I&#8217;m also not surprised. If Microsoft shoves endless amounts of ads and shovelware on people&#8217;s computers, why can&#8217;t OEMs? 

<br> 

<https://www.osnews.com/story/141413/asus-uefi-force-installs-and-reinstalls-shovelware-on-windows-and-its-spamming-users-with-christmas-wishes/>

---

## CobolCraft: a Minecraft server written in COBOL

date: 2024-12-26, from: OS News

COBOL, your mother&#8217;s and grandmother&#8217;s programming language, is still in relatively wide use today, and with the initial batches of COBOL programmers retiring and, well, going away, there&#8217;s a market out there for younger people to learn COBOL and gain some serious job security in stable, but perhaps boring market segments. One of the things you would not associate with COBOL, however, is gaming &#8211; but it turns out it can be used for that, too. CobolCraft is a Minecraft server written in, you guessed it, COBOL. It was developed using GnuCOBOL, and only works on Linux &#8211; Windows and macOS are not supported, but it can be run using Electron for developers, otherwise known as Docker. It&#8217;s only compatible with the latest release of Minecraft at the time of CobolCraft&#8217;s development, version 1.21.4, and a few more complex blocks with states are not yet supported because of how difficult it is to program those using COBOL. CobolCraft&#8217;s creator, Fabian Meyer, explains why he started this project: Well, there are quite a lot of rumors and stigma surrounding COBOL. This intrigued me to find out more about this language, which is best done with some sort of project, in my opinion. You heard right &#8211; I had no prior COBOL experience going into this. Writing a Minecraft server was perhaps not the best idea for a first COBOL project, since COBOL is intended for business applications, not low-level data manipulation (bits and bytes) which the Minecraft protocol needs lots of. However, quitting before having a working prototype was not on the table! A lot of this functionality had to be implemented completely from scratch, but with some clever programming, data encoding and decoding is not just fully working, but also quite performant. ↫ Fabian Meyer I don&#8217;t know much about programming, but I do grasp that this is a pretty crazy thing to do, and quite the achievement to get working this well, too. Do note that this isn&#8217;t a complete implementation of the Minecraft server, with certain more complex blocks not working, and things like a lighting engine not being made yet either. This doesn&#8217;t detract from the achievement, but it does mean you won&#8217;t be playing regular Minecraft with this for a while yet &#8211; if ever, if this remains a fun hobby project for its creator. 

<br> 

<https://www.osnews.com/story/141411/cobolcraft-a-minecraft-server-written-in-cobol/>

---

## Mechanical Systems TDT Support Reaches Across NASA Programs

date: 2024-12-26, from: NASA breaking news

The NESC Mechanical Systems TDT provides broad support across NASA’s mission directorates. We are a diverse group representing a variety of sub-disciplines including bearings, gears, metrology, lubrication and tribology, mechanism design, analysis and testing, fastening systems, valve engineering, actuator engineering, pyrotechnics, mechatronics, and motor controls. In addition to providing technical support, theTDT owns and maintains [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/nesc/mechanical-systems-tdt-support-reaches-across-nasa-programs/>

---

## NESC Assists in Heatshield Investigation

date: 2024-12-26, from: NASA breaking news

NASA’s uncrewed Artemis I mission launched from KSC on November 16, 2022. After a successful mission that included orbiting the Moon, the Orion spacecraft returned to Earth splashing down in the Pacific Ocean on December 11, 2022. While the spacecraft made a safe return to Earth, postflight inspection of Orion’s thermal protection indicated that the [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/nesc/nesc-assists-in-heatshield-investigation/>

---

## Laboratory Director Tawnya Plummer Laughinghouse

date: 2024-12-26, from: NASA breaking news

“When I transitioned from Spelman to Georgia Tech, it was probably the first time in my life that I had a professor that made me question if I belonged or had what it takes. Previously, I was always used as an example of how students should study, and now, in my first chemical engineering class, [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/laboratory-director-tawnya-plummer-laughinghouse/>

---

## Naïve <em>Reg</em> hack thinks he can beat Christmas food comas once and for all

date: 2024-12-26, updated: 2024-12-26, from: The Register (UK I.T. News)

<h4>One man&#39;s plan to ruin his holiday for the better</h4> <p><strong>Comment</strong>  It was only recently I started reveling in the Black Friday feeling. My first foray into the e-commerce extravaganza came last year when I bought a PS5 and in the same spirit, I finally pulled the trigger on an Apple Watch Ultra 2 the other week after pining for one since launch. Not because I needed the impetus to get off my butt and start working out, the reason behind so many purchases, as I understand it. …</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/26/christmas_walking/>

---

## Get a Colorful Sneak Peek of Notre-Dame's New Stained Glass Designs

date: 2024-12-26, from: Smithsonian Magazine

Nearly a year after the controversial plans to replace six original windows were first announced, the French government unveils the winning plans by artist Claire Tabouret 

<br> 

<https://www.smithsonianmag.com/smart-news/notre-dame-to-get-a-colorful-update-with-new-stained-glass-by-claire-tabouret-180985731/>

---

## Beatlemania Took the United States by Storm on This Day in 1963, Launching the British Invasion

date: 2024-12-26, from: Smithsonian Magazine

With their arrival in America, the Beatles ushered in a new era of hyper-popular rock ’n’ roll music 

<br> 

<https://www.smithsonianmag.com/smart-news/beatlemania-took-the-united-states-by-storm-on-this-day-in-1963-launching-the-british-invasion-180985657/>

---

## Former NSA cyberspy's not-so-secret hobby: Hacking Christmas lights

date: 2024-12-25, updated: 2024-12-25, from: The Register (UK I.T. News)

<h4>Rob Joyce explains how it&#39;s done</h4> <p><strong>Video</strong>  In 2018, Rob Joyce, then Donald Trump&#39;s White House Cybersecurity Coordinator, gave a surprise talk at the legendary hacking conference Shmoocon about his hobby.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/25/joyce_christmas_lights/>

---

## The winner of last year's Windows Ugly Sweater is ...

date: 2024-12-25, updated: 2024-12-25, from: The Register (UK I.T. News)

<h4><i>Register</i> readers have spoken</h4> <p><i>The Register</i> readership has spoken – a &#34;winner&#34; is set to be punished with the horrible Windows XP Christmas sweater. And Copilot? Headed to where the sun doesn&#39;t shine, judging by the vast majority of comments.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/25/windows_ugly_sweaters/>

---

## The Moxie child support robot gets new lease on life through open source

date: 2024-12-24, from: OS News

It&#8217;s a Christmas miracle! The Moxie, that support robot thing for kids we talked about two weeks ago, seems to be getting a new lease on life. The start-up that makes the Moxie has announced it&#8217;s going to not only release a version of the server software for self-hosting, but will also publish all of the source code as open source. We understand how unsettling and disappointing it has been to face the possibility of losing the daily comfort and support Moxie provides. Since the onset of these recent challenges, many of you have voiced heartfelt concerns and offered suggestions, and we have taken that feedback seriously. While our cloud services may become unavailable, a group of former technical team members from Embodied is working on a potential solution to allow Moxie to operate locally—without the need for ongoing cloud connectivity. This initiative involves developing a local server application (“OpenMoxie”) that you can run on your own computer. Once available, this community-driven option will enable you (or technically inclined individuals) to maintain Moxie’s basic functionality, develop new features, and modify her capabilities to better suit your needs—without reliance on Embodied’s cloud servers. ↫ Paolo Pirjanian Having products like this be dependent on internet connectivity is not great, but as long as Silicon Valley is the way it is, that&#8217;s not going to change. You can tell from their efforts that the people at Embodied do genuinely care about their product and the people that use it, because they have zero &#8211; absolutely zero &#8211; financial incentive or legal obligation to do any of this. They could&#8217;ve just walked away like their original communication said they were going to, but instead they listened to their customers and changed their minds. Regardless of my thoughts on requiring internet connectivity for something like this, they at least did the right thing today &#8211; and I commend them for that. 

<br> 

<https://www.osnews.com/story/141401/the-moxie-child-support-robot-gets-new-lease-on-life-through-open-source/>

---

## Hang a Shining Star Upon the Highest Bough

date: 2024-12-24, from: NASA breaking news

This new view of the “Christmas tree cluster” NGC 2264, released on Dec. 17, 2024, combines data from NASA’s Chandra X-ray Observatory and optical data from astrophotographer Michael Clow’s telescope in Arizona. Chandra data is represented in red, purple, blue, and white, while optical data is in green and violet. Located about 2,500 light-years from [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/hang-a-shining-star-upon-the-highest-bough/>

---

## Collaboration Is Key to A Strong Materials Discipline

date: 2024-12-24, from: NASA breaking news

NASA has a strong need for advanced materials and processes (M&#38;P) across the realms of robotic- and crewed-spaceflight, as well as aeronautics, particularly when one acknowledges that all craft must be made of something. To meet that need, the materials discipline relies on collaboration—both between centers and across disciplines. Reaching the Agency’s Moon-to-Mars objectives will [&#8230;] 

<br> 

<https://www.nasa.gov/general/collaboration-is-key-to-a-strong-materials-discipline/>

---

## Characterizing the Visual Experience of Astronauts at the Lunar South Pole

date: 2024-12-24, from: NASA breaking news

Humans are returning to the Moon—this time, to stay. Because our presence will be more permanent, NASA has selected a location that maximizes line-of-sight communication with Earth, solar visibility, and access to water ice: the Lunar South Pole (LSP). While the Sun is in the lunar sky more consistently at the poles, it never rises [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/nesc/characterizing-the-visual-experience-of-astronauts-at-the-lunar-south-pole/>

---

## Technical issue briefly grounds American Airlines flights across US

date: 2024-12-24, updated: 2024-12-24, from: The Register (UK I.T. News)

<h4>Unspecified &#34;vendor technology&#34; to blame for hour-long stop order</h4> <p>A technical snafu briefly grounded American Airlines flights across the US on Christmas Eve.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/24/american_airlines_grounds/>

---

## How Androxgh0st rose from Mozi's ashes to become 'most prevalent malware'

date: 2024-12-24, updated: 2024-12-24, from: The Register (UK I.T. News)

<h4>Botnet&#39;s operators &#39;driven by similar interests as that of the Chinese state&#39;</h4> <p>After the Mozi botnet mysteriously disappeared last year, a new and seemingly more powerful botnet, Androxgh0st, rose from its ashes and has quickly become a major threat to critical infrastructure.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/24/androxgh0st_botnet_mozi/>

---

## Microsoft Edge takes a victory lap with some high-looking usage stats for 2024

date: 2024-12-24, updated: 2024-12-24, from: The Register (UK I.T. News)

<h4>Lots of big numbers, but market share wasn&#39;t one of them</h4> <p>Microsoft has published a year in review for its Edge browser and talked up AI-powered chats while lightly skipping over the software&#39;s stagnating market share.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/24/microsoft_edge_2024/>

---

## Sea Turtle With 'Bubble Butt Syndrome' Gets Another Chance at Floating Straight, Thanks to a 3D-Printed Harness

date: 2024-12-24, from: Smithsonian Magazine

Named Charlotte, the animal was hit by a boat years ago, causing him to develop an affliction that traps air bubbles at the back of his shell 

<br> 

<https://www.smithsonianmag.com/smart-news/sea-turtle-with-bubble-butt-syndrome-gets-another-chance-at-floating-straight-thanks-to-a-3d-printed-harness-180985736/>

---

## The Ten Most Awe-Inspiring Ocean Moments of 2024

date: 2024-12-24, from: Smithsonian Magazine

From animal journeys across oceans to the discovery of dozens of new species in the deep sea, these stories wowed us 

<br> 

<https://www.smithsonianmag.com/smart-news/the-ten-most-awe-inspiring-ocean-moments-of-2024-180985733/>

---

## What do ransomware and Jesus have in common? A birth month and an unwillingness to die

date: 2024-12-24, updated: 2024-12-24, from: The Register (UK I.T. News)

<h4>35 years since AIDS first borked a PC and we&#39;re still no closer to a solution</h4> <p><strong>Feature</strong>  Your Christmas holidays looked quite different in the &#39;80s to how they do today. While some will remember what it was like to wake up on the 25th back then, some of you won&#39;t even have been born. The food hasn&#39;t changed much. Turkey, stuffing, Brussels sprouts… that&#39;s all been around for some time.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/24/ransomware_in_2024/>

---

## Ancient Britons May Have Built Stonehenge to Symbolize Unity

date: 2024-12-24, from: Smithsonian Magazine

The monument was built during a period of immigration from mainland Europe, and it may been intended to unify communities across the British Isles 

<br> 

<https://www.smithsonianmag.com/smart-news/ancient-britons-may-have-built-stonehenge-to-symbolize-unity-180985728/>

---

## A Stunning Series of Informal Ceasefires Known as the ‘Christmas Truce’ Began on This Day in 1914

date: 2024-12-24, from: Smithsonian Magazine

After official attempts at a World War I truce failed, soldiers in the trenches of the Western Front took it upon themselves to share in the bonhomie of the season 

<br> 

<https://www.smithsonianmag.com/smart-news/a-stunning-series-of-informal-ceasefires-known-as-the-christmas-truce-began-on-this-day-in-1914-180985734/>

---

## One third of adults can't delete device data

date: 2024-12-24, updated: 2024-12-24, from: The Register (UK I.T. News)

<h4>Easier to let those old phones gather dust in a drawer, survey finds</h4> <p>The UK&#39;s Information Commissioner&#39;s Office (ICO) has warned that many adults don&#39;t know how to wipe their old devices, and a worrying number of young people just don&#39;t care.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/24/uk_device_data_deletion/>

---

## Are you better value for money than AI?

date: 2024-12-23, updated: 2024-12-23, from: The Register (UK I.T. News)

<h4>Tech vendors start saying the quiet part out loud – do enterprises really need all that headcount?</h4> <p><strong>Comment</strong>  AI vendors are starting to say the quiet part out loud. As technology advances, it seems more about controlling costs and headcount.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/23/ai_job_replacement_comment/>

---

## Celebrating the Holiday Season in Space

date: 2024-12-23, from: NASA breaking news

Crew members aboard the International Space Station celebrate the holiday season in a unique way while living and working at the orbiting laboratory. Each crew member, including the current Expedition 72, spends time enjoying the view of Earth from the space station, privately communicating with their friends and families, and sharing a joint meal with [&#8230;] 

<br> 

<https://www.nasa.gov/general/celebrating-the-holiday-season-in-space-2/>

---

## 'That's not a bug, it's a feature' takes on a darker tone when malware's involved

date: 2024-12-23, updated: 2024-12-23, from: The Register (UK I.T. News)

<h4>Mummy, where do zero days come from?</h4> <p><strong>Opinion</strong>  One of the charms of coding is that malice can be indistinguishable from incompetence. Last week&#39;s <a target="_blank" href="https://www.theregister.com/2024/12/16/who_me/">Who, Me?</a> story about financial transfer test software running amok is a case in point.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/23/firmware_malware_opinion/>

---

## Jury spares Qualcomm's AI PC ambitions, but Arm eyes a retrial

date: 2024-12-23, updated: 2024-12-23, from: The Register (UK I.T. News)

<h4>The victory may be short lived as the chip designer gears up for second round</h4> <p><strong>Analysis</strong>  Qualcomm&#39;s push into the PC arena is safe, at least for the moment, after a jury found its mobile processor designs had not violated Arm Holdings&#39; licenses as the British chip designer had claimed.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/23/qualcomm_arm_trial/>

---

## Archaeologists in the Netherlands Just Uncovered a Centuries-Old Floor Made of Cow Bones

date: 2024-12-23, from: Smithsonian Magazine

Found beneath a building in the town of Alkmaar, the animal bones had been used to fill in gaps between crumbling pieces of tile 

<br> 

<https://www.smithsonianmag.com/smart-news/archaeologists-in-the-netherlands-just-uncovered-a-centuries-old-floor-made-of-cow-bones-180985714/>

---

## Some Whales Live Much Longer Than Previously Thought, a Discovery That Could Change How We Protect Them

date: 2024-12-23, from: Smithsonian Magazine

In a new study, researchers use novel techniques to uncover more accurate life expectancy estimates of southern and North Atlantic right whales 

<br> 

<https://www.smithsonianmag.com/smart-news/some-whales-live-much-longer-than-previously-thought-a-discovery-that-could-change-how-we-protect-them-180985732/>

---

## Commercial Moon Rovers Under Test

date: 2024-12-23, from: NASA breaking news

Venturi Astrolab’s FLEX, Intuitive Machines’ Moon RACER, and Lunar Outpost’s Eagle lunar terrain vehicle – three commercially owned and developed LTVs (Lunar Terrain Vehicle) – are pictured at NASA’s Johnson Space Center in Houston in this photo from Nov. 21, 2024. As part of an ongoing year-long feasibility study, each company delivered a static mockup [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/commercial-moon-rovers-under-test/>

---

## Ken Freeman Receives Air Traffic Control Association (ATCA) Award for ATM-X Digital Information Platform (DIP)

date: 2024-12-23, from: NASA breaking news

Air Traffic Control Association (ATCA) Award to the NASA&#160;ATM-X&#160;Digital Information Platform (DIP) TeamIn November 2024, the Digital Information Platform (DIP) team received the prestigious Industry Award from the Air Traffic Control Association (ATCA) at the annual ATCA Connect Conference in Washington, DC.&#160;The award recognized the team’s efforts in supporting NASA’s Sustainable Flight National Partnership (SFNP), [&#8230;] 

<br> 

<https://www.nasa.gov/general/ken-freeman-receives-air-traffic-control-association-atca-award-for-atm-x-digital-information-platform-dip/>

---

## A NASA Spacecraft Will 'Touch' the Sun on Christmas Eve, Flying Closer to the Star Than Any Probe Before

date: 2024-12-23, from: Smithsonian Magazine

The Parker Solar Probe will endure scorching temperatures of 1,700 degrees Fahrenheit as it performs the closest solar flyby of any human-made object in history 

<br> 

<https://www.smithsonianmag.com/smart-news/a-nasa-spacecraft-will-touch-the-sun-on-christmas-eve-flying-closer-to-the-star-than-any-probe-before-180985730/>

---

## SvarDOS: DR-DOS is reborn as an open source operating system

date: 2024-12-23, updated: 2024-12-23, from: The Register (UK I.T. News)

<h4>A #DOScember surprise: fits on a single floppy, but has a network-capable package manager</h4> <p>With its recent switch to a different kernel, SvarDOS moves from being a distro of FreeDOS to greater independence.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/23/svardos_drdos_reborn/>

---

## Science Done by Volunteers Highlighted at December’s American Geophysical Union Meeting

date: 2024-12-23, from: NASA breaking news

More than 30,000 scientists gathered in Washington, D.C. during the second week of December – many to show off the work of NASA’s science volunteers! The American Geophysical Union held its annual meeting of professionals this month – the world’s largest gathering of Earth and Space Scientists. Here’s what they were talking about. Two dozen […] 

<br> 

<https://science.nasa.gov/get-involved/citizen-science/science-done-by-volunteers-highlighted-at-decembers-american-geophysical-union-meeting/>

---

## Divers Discover 2,500-Year-Old Shipwreck Off the Coast of Sicily

date: 2024-12-23, from: Smithsonian Magazine

Dating to the fifth or sixth century B.C.E., the vessel could provide new insights into the relationship between the ancient Greeks and Carthaginians 

<br> 

<https://www.smithsonianmag.com/smart-news/divers-discover-2500-year-old-shipwreck-off-the-coast-of-sicily-180985719/>

---

## How a NASA Senior Database Administrator Manifested her Dream Job

date: 2024-12-23, from: NASA breaking news

When Madhavi Latha Balijepalle noticed that her morning commute took her past NASA Ames Research Center in California’s Silicon Valley, she set a new career goal for herself: working for NASA.&#160; “I started manifesting it, thinking about it every day as I drove by. When I started looking for a new job, I saw an [&#8230;] 

<br> 

<https://www.nasa.gov/general/how-a-nasa-senior-database-administrator-manifested-her-dream-job/>

---

## Expedition Discovers 27 New Species in Peru, From an ‘Exceedingly Rare’ Amphibious Mouse to a Blob-Headed Fish

date: 2024-12-23, from: Smithsonian Magazine

The hidden creatures were found in a densely populated region known for its successful—and controversial—conservation tactics 

<br> 

<https://www.smithsonianmag.com/smart-news/expedition-discovers-27-new-species-in-peru-from-an-exceedingly-rare-amphibious-mouse-to-a-blob-headed-fish-180985721/>

---

## AI's rising tide lifts all chips as AMD Instinct, cloudy silicon vie for a slice of Nvidia's pie

date: 2024-12-23, updated: 2024-12-23, from: The Register (UK I.T. News)

<h4>Analyst estimates show growing apetite for alternative infrastructure</h4> <p>Nvidia dominated the AI arena in 2024, with shipments of its Hopper GPUs more than tripling to over two million among its 12 largest customers, according to estimates from Omdia.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/23/nvidia_ai_hardware_competition/>

---

## Parker Solar Probe set for blisteringly hot date with the Sun on Christmas Eve

date: 2024-12-23, updated: 2024-12-23, from: The Register (UK I.T. News)

<h4>Ho-ho-holy heatshield!</h4> <p>NASA&#39;s Parker Solar Probe is scheduled to make its closest approach yet to the Sun, approximately 3.8 million miles from the star&#39;s surface, on Christmas Eve.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/23/parker_solar_probe_sun/>

---

## Scientists Say Bakers Were Making an Early Version of Focaccia Bread 9,000 Years Ago

date: 2024-12-23, from: Smithsonian Magazine

New research suggests that Neolithic communities living in the Middle East experimented with recipes and baked large flatbreads between 7000 and 5000 B.C.E. 

<br> 

<https://www.smithsonianmag.com/smart-news/scientists-say-bakers-were-making-an-early-version-of-focaccia-bread-9000-years-ago-180985684/>

---

## Suspected LockBit dev, facing US extradition, 'did it for the money'

date: 2024-12-23, updated: 2024-12-23, from: The Register (UK I.T. News)

<h4>Dual Russian-Israeli national arrested in August</h4> <p>An alleged LockBit ransomware developer is in custody in Israel and awaiting extradition to the United States.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/23/lockbit_ransomware_dev_extradition/>

---

## OneOdio Focus A5: Big battery, budget sound, and a bargain bin price

date: 2024-12-23, updated: 2024-12-23, from: The Register (UK I.T. News)

<h4>Inexpensive over-ear gear, but active noise cancelling won&#39;t block out the carol singers</h4> <p><strong>Review</strong>  OneOdio has released a set of over-ear noise-cancelling headphones for an apparent bargain price of £59 ($69). However, they are also a prime example of the axiom &#34;you get what you pay for,&#34; or perhaps even a bit less.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/23/oneodio_focus_a5_headphones/>

---

## Joseph Smith, the Founder and Prophet of Mormonism, Was Born Into an Impoverished and Itinerant Family in Vermont

date: 2024-12-23, from: Smithsonian Magazine

Throughout his childhood, the young Smith, born on this day in 1805, fought disease, poverty and spiritual battles of his own 

<br> 

<https://www.smithsonianmag.com/smart-news/joseph-smith-the-founder-and-prophet-of-mormonism-was-born-into-an-impoverished-and-itinerant-family-in-vermont-180985655/>

---

## UK ICO not happy with Google's plans to allow device fingerprinting

date: 2024-12-23, updated: 2024-12-23, from: The Register (UK I.T. News)

<h4>Also, Ascension notifies 5.6M victims, Krispy Kreme bandits come forward, LockBit 4.0 released, and more</h4> <p><strong>in brief</strong>  Google has announced plans to allow its business customers to begin &#34;fingerprinting&#34; users next year, and the UK Information Commissioner&#39;s Office (ICO) isn&#39;t happy about it. …</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/23/uk_ico_not_happy_with/>

---

## Fining Big Tech isn't working. Make them give away illegally trained LLMs as public domain

date: 2024-12-22, updated: 2024-12-22, from: The Register (UK I.T. News)

<h4>It&#39;s all made from our data, anyway, so it should be ours to use as we want</h4> <p><strong>Opinion</strong>  Last year, I wrote a piece here on <em>El Reg</em> about being murdered by ChatGPT as an illustration of the potential harms through the misuse of large language models and other forms of AI.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2024/12/22/ai_poisoned_tree/>

---

## General Sherman Offered Savannah as a ‘Christmas Gift’ to President Lincoln. The Victory Signaled the End of His Brutal March to the Sea

date: 2024-12-22, from: Smithsonian Magazine

Unlike much of Georgia, the historic port city was preserved from Sherman’s wrath, but suffered psychological terror nonetheless 

<br> 

<https://www.smithsonianmag.com/smart-news/general-sherman-offered-savannah-as-a-christmas-gift-to-president-lincoln-the-victory-signaled-the-end-of-his-brutal-march-to-the-sea-180985720/>

