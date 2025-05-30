---
title: science and technology
updated: 2025-03-23 06:08:01
---

# science and technology

(date: 2025-03-23 06:08:01)

---

## ReactOS 0.4.15 released

date: 2025-03-22, from: OS News

It&#8217;s been over three years since the last ReactOS release, but today, in honour of the first commit to the project by the oldest, still active contributor, the project released ReactOS 0.4.15. Of course, there&#8217;s been a steady stream of nightly releases, so it&#8217;s not like the project stalled or anything, but having a proper release is always nice to have. We are pleased to announce the release of ReactOS 0.4.15! This release offers Plug and Play fixes, audio fixes, memory management fixes, registry healing, improvements to accessories and system tools including Notepad, Paint, RAPPS, the Input Method Editor, and shell improvements. ↫ ReactOS 0.14.5 release announcement There&#8217;s a lot in this one, as the long gap between releases indicates. Thanks to the major changes in the plug and play subsystem of the kernel, ReactOS now supports more third party drivers, and it can now boot from USB and chipsets with EHCI, OHCI, and UHCI controllers. The open source AC’97 driver from the Windows Driver Kit has also been ported to ReactOS to enable sound on VirtualBox and old motherboards. The open source FAT driver from the same WDK has also been ported, which is a massive improvement over the old one. ReactOS can now also make use of custom IMEs, ZIP archive support has been integrated into the shell, and a new default visual style has been chosen. There&#8217;s a lot more in this release, though, and since it was branched over six months ago, there are a lot of improvements from since that time that are not yet part of this release, like a graphical installers, UEFI and SMP support, new NTFS driver, and a ton more. In other words &#8211; don&#8217;t let the long time between releases fool you; there&#8217;s a lot going on in the ReactOS world. 

<br> 

<https://www.osnews.com/story/141993/reactos-0-4-15-released/>

---

## Museum digs up Digital Equipment Corporation's dusty digital equipment

date: 2025-03-22, updated: 2025-03-22, from: The Register (UK I.T. News)

<h4>Remembering the fallen giant&#39;s first UK office</h4> <p>Reading Museum is hosting an exhibition marking more than 60 years since Digital Equipment Corporation (DEC) opened its first UK office.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/22/dec_reading_museum/>

---

## Nvidia Linux GPU driver ported to Haiku

date: 2025-03-22, from: OS News

Nvidia releasing its Linux graphics driver as open source is already bearing fruit for alternative operating systems. As many people already knows, Nvidia published their kernel driver under MIT license: GitHub &#8211; NVIDIA/open-gpu-kernel-modules: NVIDIA Linux open GPU kernel module source (I will call it NVRM). This driver is very portable and its platform-independent part can be compiled for Haiku with minor effort (but it need to implement OS-specific binding code to be actually useful). This is very valuable for Haiku because Linux kernel GPU drivers are very hard to port and it heavily depends on Linux kernel internals. Unfortunately userland OpenGL/Vulkan driver source code is not published. But as part of Mesa 3D project, new Vulkan driver “NVK” is being developed and is functional already. Mesa NVK driver is using Nouveau as kernel driver, so it can’t be directly used with NVRM kernel driver. NVK source code provides platform abstraction that allows to implement support of other kernel drivers such as NVRM. I finally managed to make initial port NVRM kernel driver to Haiku and added initial NVRM API support to Mesa NVK Vulkan driver, so NVRM and NVK can work together. Some simple Vulkan tests are working. ↫ X512 on the Haiku forums Incredibly impressive, and a huge milestone for the Haiku operating system. It supports any Nvidia GPU from the Turing architecture, which I think means Nvidia RTX 20xx and newer, since they have a required microcontroller older GPUs do not have. Of course, this is an early port and a lot of work remains to be done, but it could lead to huge things for Haiku. 

<br> 

<https://www.osnews.com/story/141985/nvidia-linux-gpu-driver-ported-to-haiku/>

---

## SoftBank acquires Ampere Computing

date: 2025-03-22, from: OS News

SoftBank Group Corp. today announced that it will acquire Ampere Computing, a leading independent silicon design company, in an all-cash transaction valued at $6.5 billion. Under the terms of the agreement, Ampere will operate as a wholly owned subsidiary of SoftBank Group and retain its name. As part of the transaction, Ampere’s lead investors – Carlyle and Oracle – are selling their respective positions in Ampere. ↫ SoftBank and Ampere Computing press release Despite not really knowing what SoftBank does and what their long-term goals are &#8211; I doubt anyone does &#8211; I hope this at the very least provides Ampere with the funds needed to expand its business. At this point, the only serious options for Arm-based hardware are either Apple or Qualcomm, and we could really use more players. Ampere&#8217;s hardware is impressive, but difficult to buy and expensive, and graphics card support is patchy, at best. What Ampere needs is more investment, and more OEMs picking up their chips. An Ampere workstation is incredibly high on my list of machines to test for OSNews (perhaps a System76 model?), and it&#8217;d be great if economies of scale worked to bring the prices down, possibly allowing Ampere to developer cheaper, more affordable variants for us mere mortals, too. I would love to build an Arm workstation in much the same way we build regular x86 PCs today, but I feel like that&#8217;s still far off. I have no idea if SoftBank is the right kind of company to make this possible, but one can dream. 

<br> 

<https://www.osnews.com/story/141983/softbank-acquires-ampere-computing/>

---

## Sols 4486-4487: Ankle-Breaking Kind of Terrain!

date: 2025-03-22, from: NASA breaking news

Written by Catherine O’Connell-Cooper, Planetary Geologist at University of New Brunswick Earth planning date: Wednesday, March 19, 2025  This terrain is a tricky drive, with rocks angled chaotically all around. One of our geologists remarked that they wouldn’t like to even walk over this without solid boots coming way up over the ankles — this […] 

<br> 

<https://science.nasa.gov/blog/sols-4486-4487-ankle-breaking-kind-of-terrain/>

---

## Shocking Spherules!

date: 2025-03-22, from: NASA breaking news

Written by Alex Jones, Ph.D. candidate at Imperial College London Last week the Perseverance Science Team were astonished by a strange rock comprised of hundreds of millimeter-sized spheres… and the team are now working hard to understand their origin.  It has now been two weeks since Perseverance arrived at Broom Point, situated at the lower […] 

<br> 

<https://science.nasa.gov/blog/shocking-spherules/>

---

## CAS Discovery and Foresight

date: 2025-03-21, from: NASA breaking news

Convergent Aeronautics Solutions (CAS) Discovery identifies problems worth solving for the benefit of all. We formulate “convergent” problems—across multiple disciplines and sectors—and build footholds toward potentially transformative opportunities in aeronautics. As aeronautics rapidly advances, it is increasingly intersecting with other sectors like energy, healthcare, emergency response, economic resilience, the space economy, and more. CAS Discovery [&#8230;] 

<br> 

<https://www.nasa.gov/directorates/armd/tacp/cas/cas-discovery/>

---

## Trump orders all government IT contracts consolidated under GSA

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>White House touts massive savings, agencies brace for shake-up</h4> <p>President Trump&#39;s latest executive order takes aim at federal IT procurement, moving to centralize how Uncle Sam buys tech across agencies.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/trump_orders_it_contracts_consolidated/>

---

## AWS sued by product manager who says she was laid off for being an older woman

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>&#39;Flawless&#39; team boss claims she was axed after raising alarm over shrinking female leadership ranks</h4> <p>A former senior product manager at Amazon Web Services has sued the cloud colossus in the US, claiming she faced retaliation from bosses and was ultimately laid off due to her gender and age.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/aws_sued_for_alleged_discrimination/>

---

## NASA to Launch Three Rockets from Alaska in Single Aurora Experiment

date: 2025-03-21, from: NASA breaking news

Three NASA-funded rockets are set to launch from Poker Flat Research Range in Fairbanks, Alaska, in an experiment that seeks to reveal how auroral substorms affect the behavior and composition of Earth’s far upper atmosphere.  The experiment’s outcome could upend a long-held theory about the aurora’s interaction with the thermosphere. It may also improve space […] 

<br> 

<https://science.nasa.gov/missions/sounding-rockets/nasa-alaska-rockets-aurora-experiment/>

---

## NASA Reveals Semifinalists of Power to Explore Challenge

date: 2025-03-21, from: NASA breaking news

NASA has selected the 45 semifinalists of the Power to Explore Challenge, a national competition for K-12 students featuring the enabling power of radioisotopes. 

<br> 

<https://science.nasa.gov/technology/rps/nasa-reveals-semifinalists-of-power-to-explore-challenge/>

---

## Making Ripples

date: 2025-03-21, from: NASA breaking news

A dolphin swims through the water in the Launch Complex 39 Area turn basin at NASA&#8217;s Kennedy Space Center in Florida on Nov. 6, 2007. The turn basin was carved out of the Banana River when NASA Kennedy was built. Dolphins are a frequent sight in the rivers around Kennedy, which shares a boundary with [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/making-ripples/>

---

## NASA Astronauts to Answer Questions from Students in New York

date: 2025-03-21, from: NASA breaking news

Students from Richmond Hill, New York,will have the chance to connect with NASA astronauts Anne McClain and Nichole Ayers as they answer prerecorded science, technology, engineering, and mathematics-related questions from aboard the International Space Station. Watch the 20-minute space-to-Earth call at 12 p.m. EDT on Wednesday, March 26, on NASA+ and learn how to watch [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-astronauts-to-answer-questions-from-students-in-new-york/>

---

## Euro businesses flummoxed by Scope 3 emissions

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Measuring all the dirty work of the supply chain and other indirect influences? Ugh, just give us the fine</h4> <p>Half of European businesses fear they&#39;ll lose customers if they come clean about their greenhouse gas emissions, a third lack confidence in the accuracy of their carbon data, and and 40 percent will just take a fine as they can&#39;t be bothered with it.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/report_scope_3_emissions/>

---

## Microsoft ducks politico questions on Copilot bundling and lack of consent

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Consumer price hikes come amid interrogation of why customers have to opt out of added AI features</h4> <p>The UK&#39;s Science, Innovation, and Technology Committee is pressing Microsoft for answers about the recent Microsoft 365 price hikes and why customers are forced to opt out of the more expensive Copilot version.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/microsoft_365_hikes/>

---

## NASA’s Artemis II Orion Service Module Buttoned Up for Launch

date: 2025-03-21, from: NASA breaking news

Technicians with NASA and Lockheed Martin fitted three spacecraft adapter jettison fairing panels onto the service module of the agency’s Orion’s spacecraft. The operation completed on Wednesday, March 19, 2025, inside the Neil A. Armstrong Operations and Checkout Building at NASA’s Kennedy Space Center in Florida. The European-built service module is the powerhouse that will [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/nasas-artemis-ii-orion-service-module-buttoned-up-for-launch/>

---

## NASA to Cover Northrop Grumman’s 21st Cargo Space Station Departure

date: 2025-03-21, from: NASA breaking news

After delivering more than 8,200 pounds of supplies, scientific investigations, commercial products, hardware, and other cargo to the orbiting laboratory for NASA and its international partners, Northrop Grumman’s uncrewed Cygnus spacecraft is scheduled to depart the International Space Station on Friday, March 28. Watch NASA’s live coverage of undocking and departure at 6:30 a.m. EDT [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-to-cover-northrop-grummans-21st-cargo-space-station-departure/>

---

## 3D Printing: Saving Weight and Space at Launch

date: 2025-03-21, from: NASA breaking news

Science in Space March 2025 Additive manufacturing, also known as 3D printing, is regularly used on the ground to quickly produce a variety of devices. Adapting this process for space could let crew members create tools and parts for maintenance and repair of equipment on the spot, rather than trying to bring along every item [&#8230;] 

<br> 

<https://www.nasa.gov/missions/station/iss-research/3d-printing-saving-weight-and-space-at-launch/>

---

## Accenture: DOGE's federal procurement review is hurting our sales

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Share price list slides for top ten consultant to US government</h4> <p>Accenture says federal procurement projects are continuing to slow since Elon Musk&#39;s Department of Government Efficiency began reviewing ways to cut costs last month, and this is directly impacting its business.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/accenture_warns_doges_federal_procurement/>

---

## How Metabolism Can Shape Cells’ Destinies

date: 2025-03-21, from: Quanta Magazine

A growing body of work suggests that cell metabolism — the chemical reactions that provide energy and building materials — plays a vital, overlooked role in the first steps of life.            <p>The post <a href="https://www.quantamagazine.org/how-metabolism-can-shape-cells-destinies-20250321/" target="_blank">How Metabolism Can Shape Cells’ Destinies</a> first appeared on <a href="https://www.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<br> 

<https://www.quantamagazine.org/how-metabolism-can-shape-cells-destinies-20250321/>

---

## NASA's inbox goes orbital after email mishap spams entire space industry

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>A lone voice cries out from reply-all chaos: &#39;Someone tell DOGE to rehire whoever maintains this email list&#39;</h4> <p><strong>EXCLUSIVE</strong>  Everybody loves a good email storm. But an insecure email distribution list accidental spamming space agencies across the planet is undoubtedly one for the record books.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/nasa_maptis_reply_all/>

---

## Feds charge three over Molotov attacks on Tesla sites in multiple states

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Attorney General warns people tempted to join &#39;wave of domestic terrorism&#39;</h4> <p>Three individuals face federal arson charges labeled as domestic terrorism after a spate of Molotov cocktail attacks on Tesla properties in the US.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/tesla_attack_charges/>

---

## No big changes to UK broadband regs, despite no real competition for BT

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Regulator reviews wholesale telecoms markets and decides healthy fiber is its biggest concern</h4> <p>Britain&#39;s telecoms watchdog is giving itself a pat on the back for overseeing the UK&#39;s fiber broadband rollout thus far, so doesn&#39;t want to rock the boat by making any drastic changes to the regulations at this point, despite admitting there is no effective competition for BT.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/ofcom_no_big_changes_to/>

---

## Weeks with a BBC Micro? Good enough to fix a mainframe, apparently

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>With only BASIC knowledge to fall back on, and a typing pool in tears, the OFF switch looked very attractive</h4> <p><strong>On Call</strong>  Welcome once again to On Call, <i>The Register&#39;s</i> Friday column that tells your stories of tech support jobs performed under stress, duress, and all sorts of mess.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/on_call/>

---

## AdTech CEO whose products detected fraud jailed for financial fraud

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Made up revenue and pretended to use non-existent data</h4> <p>The former CEO of Kubient, an advertising tech company that developed a cloudy product capable of detecting fraudulent ads, has been jailed for fraud.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/kubient_ceo_jailed/>

---

## Paragon spyware deployed against journalists and activists, Citizen Lab claims

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Plus: Customer info stolen from &#39;parental control&#39; software slinger SpyX; F-35 kill switch denied</h4> <p><strong>Infosec newsbytes</strong>  Israeli spyware maker Paragon Solutions pitches its tools as helping governments and law enforcement agencies to catch criminals and terrorists, but a fresh Citizen Lab report claims its software has been used to target journalists, activists, and other civilians.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/paragon_spyx_hacked/>

---

## Datacenters near Heathrow seemingly stay up as substation fire closes airport

date: 2025-03-21, updated: 2025-03-22, from: The Register (UK I.T. News)

<h4>Power outage means no flights for 24 hours. And chaos. Lots of chaos</h4> <p>London’s Heathrow Airport will close on Friday after a fire in an electricity substation it relies on caused a power outage - but nearby datacenters seem to be unaffected.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/heathrow_closure_datacenter_resilience/>

---

## Cloudflare builds an AI to lead AI scraper bots into a horrible maze of junk content

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Slop-making machine will feed unauthorized scrapers what they so richly deserve, hopefully without poisoning the internet</h4> <p>Cloudflare has created a bot-busting AI to make life hell for AI crawlers.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/cloudflare_ai_labyrinth/>

---

## Capital One cracker could be sent back to prison after judges rule she got off too lightly

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Feds want book thrown at Paige Thompson, who pinched 100M customer records</h4> <p>Paige Thompson, the perpetrator of the Capital One data theft, may be sent back behind bars – after an appeals court ruled her sentence of time served plus five years of probation was too lenient.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/capital_one_appeal/>

---

## Apple hallucinated Siri's future AI features, lawsuit claims

date: 2025-03-21, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Broken commitment to deliver hyped Intelligence upgrade branded false advertising</h4> <p>Apple on Wednesday was sued in a US federal court for allegedly misrepresenting the AI capabilities of its Siri personal digital assistant.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/21/apple_hallucinated_siri_ai_features/>

---

## Dept of Defense engineer took home top-secret docs, booked a fishing trip to Mexico – then the FBI showed up

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>So much for that vacation</h4> <p>A US Department of Defense electrical engineer has turned his world upside down after printing 155 pages from 20 documents, all of which were marked top secret and classified, from his DoD workspace, brought them home with him – and was collared on his way to Mexico.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/dod_engineer_took_home_topsecret/>

---

## FOSS infrastructure is under attack by AI companies

date: 2025-03-20, from: OS News

What do SourceHut, GNOME&#8217;s GitLab, and KDE&#8217;s GitLab have in common, other than all three of them being forges? Well, it turns out all three of them have been dealing with immense amounts of traffic from &#8220;AI&#8221; scrapers, who are effectively performing DDoS attacks with such ferocity it&#8217;s bringing down the infrastructures of these major open source projects. Being open source, and thus publicly accessible, means these scrapers have unlimited access, unlike with proprietary projects. These &#8220;AI&#8221; scrapers do not respect robots.txt, and have so many expensive endpoints it&#8217;s putting insane amounts of pressure on infrastructure. Of course, they use random user agents from an effectively infinite number of IP addresses. Blocking is a game of whack-a-mole you can&#8217;t win, and so the GNOME project is using a rather nuclear option called Anubis now, which aims to block &#8220;AI&#8221; scrapers with a heavy-handed approach that sometimes blocks real, genuine users as well. The numbers are insane, as Niccolò Venerandi at Libre News details. Over Mastodon, one GNOME sysadmin, Bart Piotrowski, kindly shared some numbers to let people fully understand the scope of the problem. According to him, in around two hours and a half they received 81k total requests, and out of those only 3% passed Anubi&#8217;s proof of work, hinting at 97% of the traffic being bots – an insane number! ↫ Niccolò Venerandi at Libre News Fedora is another project dealing with these attacks, with infrastructure sometimes being down for weeks as a result. Inkscape, LWN, Frama Software, Diaspora, and many more &#8211; they&#8217;re all dealing with the same problem: the vast majority of the traffic to their websites and infrastructure now comes from attacks by &#8220;AI&#8221; scrapers. Sadly, there&#8217;s doesn&#8217;t seem to be a reliable way to defend against these attacks just yet, so sysadmins and webmasters are wasting a ton of time, money, and resources fending off the hungry &#8220;AI&#8221; hordes. These &#8220;AI&#8221; companies are raking in billions and billions of dollars from investors and governments the world over, trying to build dead-end text generators while sucking up huge amounts of data and wasting massive amounts of resources from, in this case, open source projects. If no other solutions can be found, the end game here could be that open source projects will start to make their bug reporting tools and code repositories much harder and potentially even impossible to access without jumping through a massive amount of hoops. Everything about this &#8220;AI&#8221; bubble is gross, and I can&#8217;t wait for this bubble to pop so a semblance of sanity can return to the technology world. Until the next hype train rolls into the station, of course. As is tradition. 

<br> 

<https://www.osnews.com/story/141969/foss-infrastructure-is-under-attack-by-ai-companies/>

---

## Sols 4484-4485: Remote Sensing on a Monday

date: 2025-03-20, from: NASA breaking news

Written by Conor Hayes, Graduate Student at York University Earth planning date: Monday, March 17, 2025 Last week I was in Houston, Texas, at the Lunar and Planetary Science Conference. The mid-March weather in Houston is often more like mid-summer weather here in Toronto, so it has been a bit of a shock coming home […] 

<br> 

<https://science.nasa.gov/blog/sols-4484-4485-remote-sensing-on-a-monday/>

---

## NASA Selects 14 Finalist Teams for the 2025 RASC-AL Competition

date: 2025-03-20, from: NASA breaking news

Fourteen university teams have been selected as finalists for NASA’s 2025 Revolutionary Aerospace Systems &#8211; Academic Linkage (RASC-AL) Competition. This year’s competition invited undergraduate and graduate students from across the nation to develop new, innovative concepts to improve our ability to operate on the Moon, Mars, and beyond. Finalists will present their proposed concepts to [&#8230;] 

<br> 

<https://www.nasa.gov/general/nasa-selects-14-finalist-teams-for-the-2025-rasc-al-competition/>

---

## Privacy warriors whip out GDPR after ChatGPT wrongly accuses dad of child murder

date: 2025-03-20, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Tough Euro rules on data accuracy apply to AI yammering, formal complaint to watchdog argues</h4> <p>​A Norwegian man was shocked when ChatGPT falsely claimed in a conversation he murdered his two sons and tried to kill a third - mixing in real details about his personal life.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/chatgpt_accuses_man_of_murdering/>

---

## Memory safety for web fonts in Chrome: Google replaces FreeType with Rust-based alternative

date: 2025-03-20, from: OS News

There&#8217;s no escaping Rust, and the language is leaving its mark everywhere. This time around, Chrome has replaced its use of FreeType with Skrifa, a Rust-based replacement. Skrifa is written in Rust, and created as a replacement for FreeType to make font processing in Chrome secure for all our users. Skifra takes advantage of Rust&#8217;s memory safety, and lets us iterate faster on font technology improvements in Chrome. Moving from FreeType to Skrifa allows us to be both agile and fearless when making changes to our font code. We now spend far less time fixing security bugs, resulting in faster updates, and better code quality. ↫ Dominik Röttsches, Rod Sheeter, and Chad Brokaw The move to Skrifa is already complete, and it&#8217;s being used now by Chrome users on Linux, Android, and ChromeOS, and as a fallback for users on Windows and macOS. The reasons for this change are the same as they always are for replacing existing tools with new tools written in Rust: security. FreeType is a security risk for Chrome, and by replacing it with something written in a memory-safe language like Rust, Google was able to eliminate a whole slew of types of security issues. To ensure rendering correctness, Google performed a ton of pixel comparison tests to compare FreeType output to Skrifa output. On top of that, Google is continuously running similar tests to ensure no quality degradation sneaks into Skrifa as time progresses. Whether anyone likes Rust or not, the reality of the matter is that using Rust provides tangible benefits that reduce cost and lower security risks, and as such, its use will keep increasing, and tried and true tools will continue to be replaced by Rust counterparts. 

<br> 

<https://www.osnews.com/story/141963/memory-safety-for-web-fonts-in-chrome-google-replaces-freetype-with-rust-based-alternative/>

---

## I think we need a bigger boot partition

date: 2025-03-20, from: OS News

Long ago, during the time of creation, I confidently waved my hand and allocated a 1GB ESP partition and a 1GB boot partition, thinking to myself with a confident smile that this would surely be more than enough for the foreseeable future. However, this foreseeable future quickly vanished along with my smile. What was bound to happen eventually came, but I didn’t expect it to arrive so soon. What could possibly require such a large boot partition? And how should we resolve this? Here, I would like to introduce the boot partition issue I encountered, as well as temporary coping methods and final solutions, mentioning the problems encountered along the way for reference. ↫ fernvenue Some of us will definitely run into this issue at some point, so if you&#8217;re doing a fresh installation it might make sense to allocate a bit more space to your boot partition. If you have a running system and are bumping into the limitations of your boot partition and don&#8217;t want to reinstall, the linked article provides some possible solutions. 

<br> 

<https://www.osnews.com/story/141961/i-think-we-need-a-bigger-boot-partition/>

---

## Infoseccers criticize Veeam over critical RCE vulnerability and a failing blacklist

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Palming off the blame using an ‘unknown’ best practice didn’t go down well either</h4> <p>In patching the latest critical remote code execution (RCE) bug in Backup and Replication, software shop Veeam is attracting criticism from researchers for the way it handles uncontrolled deserialization vulnerabilities.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/infoseccers_criticize_veeam_over_critical/>

---

## The Earth Observer Editor’s Corner: January–March 2025

date: 2025-03-20, from: NASA breaking news

NASA’s Earth Observing fleet continues to age gracefully. While several new missions have joined the fleet in the past year, scientists and engineers work to extend the life of existing missions and maximize their science along the way. The crowning example is the first Earth Observing System (EOS) Flagship mission, Terra, which celebrated a quarter-century […] 

<br> 

<https://science.nasa.gov/science-research/earth-science/the-earth-observer-editors-corner-january-march-2025/>

---

## Celebrating 25 Years of Terra

date: 2025-03-20, from: NASA breaking news

Expanded coverage of topics from “The Editor’s Corner” in The Earth Observer On December 18, 2024, Terra—the first EOS Flagship mission celebrated the 25th anniversary of its launch from Vandenberg Space Force (then Air Force) Base. Some 70 individuals gathered at the Goddard Space Flight Center’s (GSFC) Visitor Center to celebrate this remarkable achievement for the […] 

<br> 

<https://science.nasa.gov/science-research/earth-science/celebrating-25-years-of-terra/>

---

## How NASA’s “Autonomy Choreography” Will Impact Advanced Technologies

date: 2025-03-20, from: NASA breaking news

Imagine your car is in conversation with other traffic and road signals as you travel. Those conversations help your car anticipate actions you can’t see: the sudden slowing of a truck as it begins to turn ahead of you, or an obscured traffic signal turning red. Meanwhile, this system has plotted a course that will [&#8230;] 

<br> 

<https://www.nasa.gov/general/how-nasas-autonomy-choreography-will-impact-advanced-technologies/>

---

## Hubble Sees a Spiral and a Star

date: 2025-03-20, from: NASA breaking news

This NASA/ESA&#160;Hubble Space Telescope&#160;image features a sparkling spiral galaxy paired with a prominent star, both in the constellation Virgo. While the galaxy and the star appear to be close to one another, even overlapping, they’re actually a great distance apart. The star, marked with four long diffraction spikes, is in our own galaxy. It’s just [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/hubble-sees-a-spiral-and-a-star/>

---

## Students Explore Technical Careers at NASA

date: 2025-03-20, from: NASA breaking news

NASA’s Glenn Research Center in Cleveland welcomed more than 150 students and educators to showcase technical careers, inspire the next generation, and ignite a passion for learning during a Career Technical Education program March 11. “Here at Glenn Research Center, we love what we do, and we love to share what we do,” said Dawn [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/glenn/students-explore-technical-careers-at-nasa/>

---

## Tesla Cybertruck recall #8: Exterior trim peels itself off, again

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Not even the parts want to be associated with Elon&#39;s steel monster</h4> <p>Tesla has issued its eighth Cybertruck recall, this time over exterior trim panels that risk detaching while driving - the second time loose body trim has triggered a safety fix.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/tesla_cybertruck_recall/>

---

## The FireSense Project

date: 2025-03-20, from: NASA breaking news

Expanded coverage of topics from “The Editor’s Corner” in The Earth Observer Wind is a major factor in fire. It controls how fires evolve and pose threats to the safety of communities. Traditionally, data from weather balloons have been used to produce vertical soundings to define changes in atmospheric dynamics. However, their use is restricted during […] 

<br> 

<https://science.nasa.gov/science-research/earth-science/the-firesense-project/>

---

## Kaye Honored with Pecora Award

date: 2025-03-20, from: NASA breaking news

Expanded coverage of topics from “The Editor’s Corner” in The Earth Observer Jack Kaye [NASA Headquarters—Associate Director for Research of the Earth Science Division] has received the 2024 William T. Pecora Award award for his vision and creative leadership in multidisciplinary Earth science research, as well as for spurring advancements in the investigator community, supporting development […] 

<br> 

<https://science.nasa.gov/science-research/earth-science/kaye-honored-with-pecora-award/>

---

## Big Red, Microsoft roll out Azure database services for more mainstream Oracle users

date: 2025-03-20, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Enterprise Edition to be offered on OCI inside Redmond&#39;s cloud</h4> <p>Oracle is expanding its database services on hyperscale clouds outside of its muscle-car Exadata system.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/oracle_microsoft_enterprise_db_azure/>

---

## Photoshop FOSS alternative GIMP wakes up from 7-year coma with version 3.0

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Meanwhile, open source video codec Ogg Theora stirs in its crypt</h4> <p>After a seven-year nap, version 3.0 of FOSS image editor GIMP is arriving with a splash, while a long-dormant open video format wakes from its slumbers and lumbers into beta.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/gimp_3_and_photogimp/>

---

## NASA Uses Advanced Radar to Track Groundwater in California

date: 2025-03-20, from: NASA breaking news

NASA’s radar-equipped jet is detecting ground movements to track snowmelt’s journey into California’s depleted groundwater aquifers. 

<br> 

<https://science.nasa.gov/earth/nasa-uses-advanced-radar-to-track-groundwater-in-california/>

---

## Boeing's Starliner future uncertain as NASA weighs next steps

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Fix testing to stretch into the summer. When will aerospace giant decide enough is enough?</h4> <p><strong>Comment</strong>  The return of Crew-9 from the International Space Station (ISS) in a Crew Dragon has raised the question of what the future holds for Boeing&#39;s Calamity Capsule, also known as the CST-100 Starliner.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/boeing_starliner_whats_next/>

---

## How Did Multicellular Life Evolve?

date: 2025-03-20, from: Quanta Magazine

One of the most important events in the history of life on Earth was the emergence of multicellularity. In this episode, Will Ratcliff discusses how his snowflake yeast models provide insight into what drove the transition from single-celled to multicellular organisms.             <p>The post <a href="https://www.quantamagazine.org/how-did-multicellular-life-evolve-20250320/" target="_blank">How Did Multicellular Life Evolve?</a> first appeared on <a href="https://www.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<br> 

<https://www.quantamagazine.org/how-did-multicellular-life-evolve-20250320/>

---

## Euro semi firms push for 'Chips Act 2.0' to expand beyond manufacturing

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Industry leaders want broader strategy, citing supply chain gaps, investment needs, and global trade uncertainty</h4> <p>European chipmakers want local politicians to look beyond the region&#39;s Chips Act and do more to support research and development, materials, and design, not just manufacturing.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/european_chips_act_2/>

---

## Too many software supply chain defense bibles? Boffins distill advice

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>How to avoid another SolarWinds, Log4j, and XZ Utils situation</h4> <p>Organizations concerned about software supply chain attacks should focus on role-based access control, system monitoring, and boundary protection, according to a new preprint paper on the topic.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/software_supply_chain_defense/>

---

## The post-quantum cryptography apocalypse will be televised in 10 years, says UK's NCSC

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Wow, a government project that could be on time for once ... cos it&#39;s gonna be wayyyy more than a decade</h4> <p>The UK&#39;s National Cyber Security Centre (NCSC) today started the post-quantum cryptography (PQC) countdown clock by claiming organizations have ten years to migrate to a safer future.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/ncsc_post_quantum_cryptogrpahy/>

---

## Beyond the Algorithm Challenge

date: 2025-03-20, from: NASA breaking news

The NASA Earth Science Technology Office (ESTO) seeks solutions to complex Earth Science problems using transformative or unconventional computing technologies such as quantum computing, quantum machine learning, neuromorphic computing, or in-memory computing. Breakthrough computing methods show promise in overcoming processing power, efficiency, and performance limitations of conventional computing methods. Once fully harnessed, these methods could [&#8230;] 

<br> 

<https://www.nasa.gov/directorates/stmd/prizes-challenges-crowdsourcing-program/center-of-excellence-for-collaborative-innovation-coeci/beyond-the-algorithm-challenge/>

---

## Oops, they did it again: Microsoft breaks Outlook with another dubious update

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Testing? We&#39;ve heard of it</h4> <p>Users of Microsoft&#39;s email service might be feeling a distinct sense of déjà vu after the web version of Outlook last night blocked access to Exchange Online mailboxes.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/outlook_outage_again/>

---

## SystemRescue 12 lands with added bcachefs support

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>You might need that – the file system has some hard-to-squish bugs</h4> <p>A new version of the handy all-in-one bootable system toolkit distro is here, now with a whole new file system for you to play with.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/systemrescue_12_bcachefs/>

---

## UK's biggest mobile operator starts 3G switchoff, hopes it won't catch out April fools

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>VMO2 starts in the north of England, says it&#39;s already contacted &#39;known vulnerable customers&#39;</h4> <p>UK telco Virgin Media O2 (VMO2) is preparing to retire its 3G services, and is set to start with the city of Durham in northeast England this April.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/vmo2_3g_switch_off/>

---

## SAP legacy ERP customers still in no rush to adopt latest platform

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Even looming support deadline isn&#39;t tempting ECC users to haul themselves over to S/4HANA, say analysts</h4> <p>The majority of SAP&#39;s ECC users have not purchased licenses for S/4HANA – meaning its unlikely some of the world&#39;s largest businesses will migrate before mainstream support for the legancy platform ends in 2027.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/sap_sees_little_progress_in/>

---

## Asahi Linux loses another prominent dev as GPU guru calls it quits

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Fedora Asahi Remix 42 still scheduled for release in about a month</h4> <p>Another developer has dropped out of Asahi Linux, the project to get Linux up and running on Apple silicon.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/asahi_linux_asahi_lina/>

---

## US Space Force warns Chinese satellites are 'dogfighting' in space

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Begun, preparation for orbital wars has</h4> <p>China has practiced co-ordinated satellite maneuvers in space that resemble aerial combat, according to a US Space Force General.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/us_space_force_warns_chinese/>

---

## SoftBank buys server-grade Arm silicon designer Ampere Computing

date: 2025-03-20, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Japanese tech investor expects its own hyperscalers and e-com giants to collaborate, which could take a bite out of x86 market</h4> <p>Japanese tech investment house SoftBank Group has announced its intention to acquire Ampere Computing, the chip design firm that makes server-grade silicon based on the Arm architecture.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/softbank_acquires_ampere/>

---

## Tencent slows pace of GPU rollout as DeepSeek helps it wring more performance from fewer accelerators

date: 2025-03-20, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Chinese giant says locals are more efficient than Western hyperscalers, and has tiny capex to prove it</h4> <p>Chinese tech giant Tencent has slowed the pace of its GPU rollout since implementing DeepSeek.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/tencent_q4_fy2024_gpu_slowdown/>

---

## It looks like IBM is cutting jobs again, with Classic Cloud hit hard

date: 2025-03-20, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>We&#39;re told thousands may soon get a pink slip from Big Blue</h4> <p>IBM insiders believe Big Blue is laying off thousands of people at various locations around the US, including a quarter of staff at the corp&#39;s Cloud Classic operation.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/20/ibm_cuts_us_jobs/>

---

## GNOME 48 released

date: 2025-03-19, from: OS News

One of the two major open source desktop environments, GNOME, just released version 48, and it&#8217;s got some very big and welcome improvements. First and foremost there&#8217;s dynamic triple-buffering, a feature that took over five years of extensive testing to get ready. It will improve the smoothness and fluidity of animations and other movements on the screen, as it did for KDE when it landed there in the middle of last year. GNOME 48 also brings notification stacking, combining notifications from the same source, improvements to the new default image viewer such as image editing features, a number of digital well-being options, as well as the introduction of a new, basic audio player designed explicitly for quickly playing individual audio files. There&#8217;s also a few changes to GNOME&#8217;s text editor, and following in KDE&#8217;s recent footsteps, GNOME 48 also brings HDR support. Another major change are the new default fonts. Finally, Cantarell is gone, replaced by slightly modified versions of Inter and Iosevka. Considering I absolutely adore Inter and installing and setting it as my main font is literally the first thing I do on any system that allows me to, I&#8217;m fully behind this change. Inter is exceptional in that it renders great in both high and low DPI environments, and its readability is outstanding. GNOME 48 will make its way to your distribution&#8217;s repositories soon enough. 

<br> 

<https://www.osnews.com/story/141957/gnome-48-released/>

---

## Java 24 released

date: 2025-03-19, from: OS News

Oracle, the company owned by a guy who purchased a huge chunk of the Kingdom of Hawaii from the Americans, has released Java 24. I&#8217;ll be honest and upfront: I just don&#8217;t care very much at all about this, as the only interaction I&#8217;ve had with Java over the past, I don&#8217;t know, 15 years or so, is either because of Minecraft, or because of my obsession with ancient UNIX workstations where Java programs pop up in the weirdest of places. I know Java is massive and used everywhere, but going through the list of changes and improvements does not spark any joy in me at all, and just makes me want to stick my pinky in an electrical socket to make something interesting happen. If you work with Java, you know all of this stuff already anyway, as you&#8217;ve been excitedly trying to impress Nick from accounting with your knowledge of Flexible Constructor Bodies and Quantum-Resistant Module-Lattice-Based Key Encapsulation Mechanisms because he&#8217;s just so dreamy and you desperately want to ask him out for a hot cup of coffee, but you&#8217;re not sure if he&#8217;s married or has a boy or girlfriend so you&#8217;re just kind of scoping things out a bit too excitedly and now you&#8217;re worried you might be coming off as too desperate for his attention. Anyway, that&#8217;s how offices work, right? I&#8217;ve never worked for anyone but myself and office settings induce a deep sense of existential dread in me, so my knowledge of office work, and Java if we&#8217;re honest, may be based a bit too much on &#8217;90s sitcoms and dramas. Whatever, Java 24 is here. Do a happy dance. 

<br> 

<https://www.osnews.com/story/141955/java-24-released/>

---

## HP Inc settles printer toner lockout lawsuit with a promise to make firmware updates optional

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Dynamic Security update blocks 3rd-party cartridges, but keeps printing money</h4> <p>HP Inc. has settled a class action lawsuit in which it was accused of unlawfully blocking customers from using third-party toner cartridges - a practice that left some with useless printers – but won’t pay a cent to make the case go away.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/hp_printer_lawsuit_settled/>

---

## Is Dark Energy Getting Weaker? New Evidence Strengthens the Case.

date: 2025-03-19, from: Quanta Magazine

Last year, an enormous map of the cosmos hinted that the engine driving cosmic expansion might be sputtering. Now physicists are back with an even bigger map, and a stronger conclusion.            <p>The post <a href="https://www.quantamagazine.org/is-dark-energy-getting-weaker-new-evidence-strengthens-the-case-20250319/" target="_blank">Is Dark Energy Getting Weaker? New Evidence Strengthens the Case.</a> first appeared on <a href="https://www.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<br> 

<https://www.quantamagazine.org/is-dark-energy-getting-weaker-new-evidence-strengthens-the-case-20250319/>

---

## Next-Generation Water Satellite Maps Seafloor From Space

date: 2025-03-19, from: NASA breaking news

More accurate maps based on data from the SWOT mission can improve underwater navigation and result in greater knowledge of how heat and life move around the world’s ocean. There are better maps of the Moon’s surface than of the bottom of Earth’s ocean. Researchers have been working for decades to change that. As part [&#8230;] 

<br> 

<https://www.nasa.gov/missions/swot/next-generation-water-satellite-maps-seafloor-from-space/>

---

## Attackers swipe data of 500k+ people from Pennsylvania teachers union

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>SSNs, payment details, and health info too</h4> <p>The Pennsylvania State Education Association (PSEA) says a July 2024 &#34;security incident&#34; exposed sensitive personal data on more than half a million individuals, including financial and health info.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/pennsylvania_nonprofit_cyberattack/>

---

## Names, bank info, and more spills from top sperm bank

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Cyber-crime is officially getting out of hand</h4> <p>One of the world&#39;s largest sperm banks, California Cryobank, is in a sticky situation.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/sperm_bank_data_leak/>

---

## New Bridge Ready to Serve NASA, America’s Space Interests

date: 2025-03-19, from: NASA breaking news

The high-rise bridge that serves as the primary access point for employees and visitors to NASA’s Kennedy Space Center in Florida is fully operational. In the late hours of March 18, 2025, the Florida Department of Transportation (FDOT) opened the westbound portion of the NASA Causeway Bridge, which spans the Indian River Lagoon and connects [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/new-bridge-ready-to-serve-nasa-americas-space-interests/>

---

## EU says Google scroogles app makers, also gives Apple an antitrust must-do-list

date: 2025-03-19, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Chrome colossus accused of tilting search results, blocking cheaper purchases, while iTitan told to open iOS</h4> <p>A year after kicking off its probe into three American tech giants, the European Union has fired off two sets of preliminary findings accusing Google parent Alphabet of failing to comply with Europe&#39;s monopoly-busting Digital Markets Act (DMA).…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/google_apple_dma_eu/>

---

## IBM scores perfect 10 ... vulnerability in mission-critical OS AIX

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Big Blue&#39;s workstation workhorse patches hole in network installation manager that could let the bad guys in</h4> <p>IBM &#34;strongly recommends&#34; customers running its Advanced Interactive eXecutive (AIX) operating system apply patches after disclosing two critical vulnerabilities, one of which has a perfect 10 severity score.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/ibm_aix_critical_vulnerabilities/>

---

## VA IT contract cancellation DOGE boasted about ... was due to end in 10 days anyway

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>How much money was going to be saved by ending tech deal with service-disabled veterans, then?</h4> <p>Elon Musk&#39;s DOGE promoted the decision to terminate a deal with service-disabled veterans supporting the Department of Veterans Affairs 10 days before the contract was set to expire anyway.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/va_contract_cancellation_doge/>

---

## Time to ditch US tech for homegrown options, says Dutch parliament

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Trump administration &#39;has made the call for tech sovereignty an urgent geopolitical issue&#39;</h4> <p>Not content to wait for open letters to influence the European Commission, Dutch parliamentarians have taken matters into their own hands by passing eight motions urging the government to ditch US-made tech for homegrown alternatives.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/dutch_parliament_us_tech/>

---

## Welcome Home, Crew-9!

date: 2025-03-19, from: NASA breaking news

NASA astronaut Butch Wilmore, left, Roscosmos cosmonaut Aleksandr Gorbunov, second from left, and NASA astronauts Nick Hague, second from right, and Suni Williams, right, are all smiles as they wait to exit a SpaceX Dragon spacecraft on March 18, 2025. The four returned from a long-duration science expedition aboard the International Space Station, splashing down [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/welcome-home-crew-9/>

---

## Nvidia invests in quantum computing weeks after CEO said it's decades from being useful

date: 2025-03-19, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Qubit awkward, you might say</h4> <p><strong>GTC</strong>  Nvidia is investing in a research center to advance quantum computing development, just weeks after its head honcho torpedoed the share price of quantum firms by declaring the tech is decades away from being useful.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/nvidia_boston_quantum_research/>

---

## Political poker? Tariff hunger games? Trump creates havoc for PC industry

date: 2025-03-19, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>Tech channel increases stockpiling amid &#39;volatile trade policies.&#39; CIOs to get fewer devices for same money</h4> <p><strong>Comment</strong>  US President Donald Trump&#39;s &#34;volatile trade policies&#34; are creating uncertainty among suppliers of computers and among biz customers looking to use budgets wisely amid a game of on-and-off Oval Office tariffs.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/tariffs_tech_channel_uncertainty/>

---

## Chimera Linux ghosts RISC-V because there's no time for sluggish hardware

date: 2025-03-19, updated: 2025-03-21, from: The Register (UK I.T. News)

<h4>Dev behind the GNU-free distro says boards too slow for serious work</h4> <p><strong>Updated</strong>  The creators of the unique Chimera Linux distro are dropping support for RISC-V because kit built on the open instruction set architecture just isn&#39;t fast enough and this is holding up the development pipeline.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/chimera_linux_riscv/>

---

## Crew-9 splashes down while NASA floats along with Trump and Musk nonsense

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Elements within the US space agency have elected to toe the party line</h4> <p><strong>Comment</strong>  The Crew-9 mission has safely returned to Earth, marking the end of Suni Williams and Butch Wilmore&#39;s extended time in space and possibly NASA&#39;s bipartisan leanings.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/crew9_mission_misinformation/>

---

## Interview with Michiharu Hyogo, Citizen Scientist and First Author of a New Scientific Paper

date: 2025-03-19, from: NASA breaking news

Peer-reviewed scientific journal articles are the bedrock of science. Each one represents the culmination of a substantial project, impartially checked for accuracy and relevance – a proud accomplishment for any science team.  The person who takes responsibility for writing the paper must inevitably and repeatedly  write, edit, and rewrite its content as they receive comments […] 

<br> 

<https://science.nasa.gov/get-involved/citizen-science/interview-with-michiharu-hyogo-citizen-scientist-and-first-author-of-a-new-scientific-paper/>

---

## ESA Previews Euclid Mission’s Deep View of ‘Dark Universe’

date: 2025-03-19, from: NASA breaking news

With contributions from NASA, the mission is looking back into the universe’s history to understand how the universe’s expansion has changed.&#160; The Euclid mission — led by ESA (European Space Agency) with contributions from NASA — aims to find out why our universe is expanding at an accelerating rate. Astronomers use the term “dark energy” [&#8230;] 

<br> 

<https://www.nasa.gov/missions/euclid/esa-previews-euclid-missions-deep-view-of-dark-universe/>

---

## Ex-US Cyber Command chief: Europe and 5 Eyes can't fully replicate US intel

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Cue deepening existential European dread as Rest of World contemplates Trump turning off the info tap</h4> <p>If the United States stopped sharing cyber-threat intel with Ukraine, its European allies and the rest of the Five Eyes nations wouldn&#39;t be able to provide all the info Uncle Sam collects, according to former chief of US Cyber Command and the NSA General Paul Nakasone.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/nakasone_us_intel_sharing/>

---

## Goodnight, Moon: NASA Cameras on Blue Ghost Capture Lunar Sunset

date: 2025-03-19, from: NASA breaking news

This compressed, resolution-limited gif shows the view of lunar sunset from one of the six Stereo Cameras for Lunar-Plume Surface Studies (SCALPSS) 1.1 cameras on Firefly’s Blue Ghost lander, which operated on the Moon’s surface for a little more than 14 days and stopped, as anticipated, a few hours into lunar night. SCALPSS was taking [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/goodnight-moon-nasa-cameras-on-blue-ghost-capture-lunar-sunset/>

---

## Datacenter vacancies hit record low as power shortages stall projects

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Supply chain and tariffs issues could spell trouble across multiple markets, warns JLL</h4> <p><strong>Analysis</strong>  ​Despite ongoing construction efforts, the North American colocation datacenter market is grappling with record-high occupancy rates. This surge in demand, coupled with delays in new projects due to electricity shortages, has created a challenging environment for both developers and customers.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/datacenter_vacancy_record_low/>

---

## 'Once in a lifetime' IT outage at city council hit datacenter, but no files lost

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Services still down and out, but techies working for local government saved the day</h4> <p>Nottingham City Council continues to deal with the fallout from its freak IT outage from last week as it confirms in-house IT specialists managed to prevent any data from going missing.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/nottingham_outage_sitrep/>

---

## Schneider Electric plugs into AI's power hunger with Nvidia digital twin tech

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Because guesswork won&#39;t keep the lights on</h4> <p><strong>GTC</strong>  Schneider Electric has developed a digital twin system to simulate how an AI datacenter operates in order to accurately design for the appropriate power requirements.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/schneider_electric_nvidia_digital_twin/>

---

## Ubuntu 25.10 plans to swap GNU coreutils for Rust

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>It&#39;s easier to replace bits of userland than the kernel</h4> <p>Efforts are afoot to replace the GNU coreutils with Rust ones in the version after next of Ubuntu, 25.10 – which also means changing the software license.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/ubuntu_2510_rust/>

---

## Brit supermarket finds breaking up is hard to do as Walmart-Asda divorce stretches into fourth year

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>&#39;Three-year&#39; tech support deal still running</h4> <p>The UK&#39;s third-largest grocery retailer is set to finish its &#34;three-year&#34; tech divorce project from Walmart in the third quarter of 2025, while most project staff have been moved on.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/asda_walmart_tech_divorce/>

---

## Show top LLMs some code and they'll merrily add in the bugs they saw in training

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>One more time, with feeling ... Garbage in, garbage out</h4> <p>Researchers have found that large language models (LLMs) tend to parrot buggy code when tasked with completing flawed snippets.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/llms_buggy_code/>

---

## Boffins 3D-print artificial iris muscle that flexes both ways

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>If this light-activated stuff works, it could make building robots easier - or make lazing about under the Sun quite a workout</h4> <p>Bioengineers have pulled together to get artificial muscles pulling in multiple directions, an important step towards using them in medical treatments and robots.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/mit_boffins_3d_print_iris_muscle/>

---

## Non-x86 servers boom even faster than the rest of the AI-infused and GPU-hungry market

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Analyst finds 91 percent revenue growth with white box makers leading the way</h4> <p>Here’s another thing AI can do: Increase revenue from selling servers by 91 percent year-over year, according to analyst firm IDC.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/idc_server_market_share/>

---

## China's EV champ BYD reveals super-fast charging that leaves Tesla eating dust

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Apparently boosts battery to 20 km range in 10 seconds, although as ever ... YMMV</h4> <p>Chinese electric automaker BYD has announced 1,000-volt supercharging technology it claims can fill a compatible vehicle’s battery in the same amount of time needed to pump fuel into a conventional car.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/byd_megawatt_ev_charging/>

---

## Trump fires Democrat FTC commissioners, presaging big tech policy shifts

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Remaining Republicans don&#39;t like the right to repair, non-compete clause ban, or some social media moderation</h4> <p><strong>Analysis</strong>  In a surprise Tuesday move, US President Donald Trump fired the two remaining Democratic commissioners at the Federal Trade Commission, potentially accelerating a shift in the consumer and competition watchdog&#39;s stance towards tech and other businesses.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/trump_ftc_fired/>

---

## Sols 4481-4483: Humber Pie

date: 2025-03-19, from: NASA breaking news

Written by Michelle Minitti, Planetary Geologist at Framework Earth planning date: Friday, March 14, 2025 The rover successfully arrived at the “Humber Park” outcrop which, on this fine “Pi Day” on Earth, we could convince ourselves looked like a pie with a sandy interior and a rough and rocky crust. We can only hope our […] 

<br> 

<https://science.nasa.gov/blog/sols-4481-4483-humber-pie/>

---

## Nvidia's Vera Rubin CPU, GPU roadmap charts course for hot-hot-hot 600 kW racks

date: 2025-03-19, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Now that&#39;s what we call dense floating-point compute</h4> <p><strong>GTC</strong>  Nvidia&#39;s rack-scale compute architecture is about to get really hot.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/19/nvidia_charts_course_for_600kw/>

---

## Do AI robo-authors qualify for copyright? It's still no, says appeals court

date: 2025-03-18, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Computer scientist Stephen Thaler again told his &#39;Creativity Machine&#39; can&#39;t earn a ©</h4> <p><strong>Updated</strong>  The US Court of Appeals for the District of Columbia Circuit has affirmed a lower court ruling that content created by an AI model without human input cannot be copyrighted.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/appeals_court_says_ai_authors/>

---

## After 47 years, OpenVMS gets a package manager

date: 2025-03-18, from: OS News

As of the 18th of February, OpenVMS, known for its stability and high-availability, 47 years old and ported to 4 different CPU architecture, has a package manager! This article shows you how to use the package manager and talks about a few of its quirks. It&#8217;s an early beta version, and you do notice that when using it. A small list of things I noticed, coming from a Linux (apt/yum/dnf) background: There seems to be no automatic dependency resolution and the dependencies it does list are incomplete. No update management yet, no removal of packages and no support for your own package repository, only the VSI official one. Service startup or login script changes are not done automatically. Packages with multiple installer files fail and require manual intervention. It does correctly identify the architectures, has search support and makes it way easier to install software. The time saved by downloading, manually copying and starting installation is huge, so even this early beta is a very welcome addition to OpenVMS. ↫ Remy van Elst Obviously, a way to install software packages without having to manually download them is a huge step forward for OpenVMS. The listed shortcomings might raise some eyebrows considering most of us are used to package management on Linux/BSD, which is far more advanced. Bear in mind, however, that this is a beta product, and it&#8217;s quite obvious these missing essential features will be added over time. Luckily it at least lists dependencies, so let&#8217;s hope actually automating installing them is in the works and will be available soon. I actually have an OpenVMS virtual machine set up and running, but I find using it incredibly difficult &#8211; but only because of my own lack of experience with and knowledge about OpenVMS, of course. Any experience of knowledge rooted in UNIX-based and Windows operating systems is useless here, even for the most basic of CLI tasks. If I find the time, I&#8217;d love to spend more time with it and get more acquainted with the way it works, including this new package manager. 

<br> 

<https://www.osnews.com/story/141953/after-47-years-openvms-gets-a-package-manager/>

---

## Welcome Home! NASA’s SpaceX Crew-9 Back on Earth After Science Mission

date: 2025-03-18, from: NASA breaking news

NASA’s SpaceX Crew-9 completed the agency’s ninth&#160;commercial crew rotation mission to the International Space Station on Tuesday, splashing down safely in a SpaceX Dragon spacecraft off the coast of Tallahassee, Florida, in the Gulf of America. NASA astronauts Nick Hague, Suni Williams, and Butch Wilmore, and Roscosmos cosmonaut Aleksandr Gorbunov,&#160;returned to Earth at 5:57 p.m. [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/welcome-home-nasas-spacex-crew-9-back-on-earth-after-science-mission/>

---

## Pebble unveils new devices, and strongly suggests you dump iOS for Android

date: 2025-03-18, from: OS News

It&#8217;s barely been two months after the announcement that Pebble would return with new watches, and they&#8217;re already here &#8211; well, sort of. Pebble has announced two new watches for preorder, the Core 2 Duo and the Core Time 2. The former is effectively a Pebble 2, upgraded with new internals, while the Core Time 2 is very similar, but comes with a colour e-ink display and a metal case. They&#8217;re up for preorder now at $149 and $225, respectively, with the Core 2 Duo shipping in July, and the Core Time 2 shipping in December. Alongside this unveil, Eric Migicovsky, the creator of Pebble, also published a blog post detailing the trouble Pebble is and will have with making smartwatches for iOS users. Apple effectively makes it impossible for third parties to make a proper smartwatch for iOS, since access to basic functionality you&#8217;d come to expect from such a device are locked by Apple, reserved only for its own Apple Watch. As such, Migicovsky makes it explicitly clear that iOS users who want to buy one of these new Pebbles will are going to have a very degraded experience compared to Android users. Not only will Android users with Pebble have access to a ton more functionality, any Pebble features that could exist for both Android and iOS users will always come to Android first, and possibly iOS later. In fact, Migicovksy goes as far as suggesting that if you want a Pebble, you should buy an Android phone. I don’t want to see any tweets or blog posts or complaints or whatever later on about this. I’m publishing this now so you can make an informed decision about whether to buy a new watch or not. If you’re worried about this, the easiest solution is to buy an Android phone. ↫ Eric Migicovsky I have to hand it to Migicovksy &#8211; I love the openness about this, and the fact he&#8217;s making this explicitly clear to any prospective buyers. There&#8217;s no sugarcoating or PR speak to try and please Tim Cook &#8211; he&#8217;s putting the blame squarely where it belongs: on Apple. It&#8217;s kind of unreal to see such directness about a new product, but as a Dutch person, it feels quite natural. We need more of this style of communication in the technology world, as it makes it much clearer that you&#8217;re getting &#8211; and not getting. I do hope that Pebble&#8217;s Android support functions without the need for Google Play Services or other proprietary Google code, since it would be great to have a proper, open source smartwatch fully supported by de-Googled Android. 

<br> 

<https://www.osnews.com/story/141951/pebble-unveils-new-devices-and-strongly-suggests-you-dump-ios-for-android/>

---

## CISA fires, now rehires and immediately benches security crew on full pay

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>DOGE efficiency in action</h4> <p>The upheaval at the US government&#39;s Cybersecurity and Infrastructure Security Agency, aka CISA, took another twist on Tuesday, as it moved to reinstate staffers it had fired over the past few weeks - specifically those still in their probationary period - though they&#39;ve been benched on paid leave for now.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/cisa_rehired_doge/>

---

## Dell discloses monster 20-petaFLOPS desktop built on Nvidia's GB300 Superchip

date: 2025-03-18, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>HPE and Lenovo also have plans to put Jensen&#39;s latest hardware to work</h4> <p><strong>GTC</strong>  The age of the 20-petaFLOPS desktop is upon us as Dell announced a machine capable of achieving that massive processing power today at Nvidia&#39;s <a target="_blank" href="https://www.theregister.com/special_features/nvidia_gtc/">GPU Technology Conference</a> in Silicon Valley.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/gtc_dell_lenovo_hpe_news/>

---

## Enlightenment 0.27.1 released

date: 2025-03-18, from: OS News

A few months after 0.27.0 was released, we&#8217;ve got a small update for Enlightenment today, version 0.27.1. It&#8217;s a short list of bugfixes, and one tiny new feature: you can now use the scroll wheel to change the volume when your cursor is hovering over the mixer controls. That&#8217;s it. That&#8217;s the release. 

<br> 

<https://www.osnews.com/story/141949/enlightenment-0-27-1-released/>

---

## NASA Science Continues After Firefly’s First Moon Mission Concludes

date: 2025-03-18, from: NASA breaking news

After landing on the Moon with NASA science and technology demonstrations March 2, Firefly Aerospace’s Blue Ghost Mission 1 concluded its mission March 16. Analysis of data returned to Earth from the NASA instruments continues, benefitting future lunar missions. As part of NASA’s CLPS (Commercial Lunar Payload Services) initiative and Artemis campaign, Firefly’s Blue Ghost [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-science-continues-after-fireflys-first-moon-mission-concludes/>

---

## NASA, USGS, Industry Explore Off-World Resource Development

date: 2025-03-18, from: NASA breaking news

NASA and the U.S. Geological Survey (USGS) welcomed a community of government, industry, and international partners to explore current technology needs around natural resources – both on Earth and “off world.” During a workshop held in February at NASA’s Ames Research Center in California’s Silicon Valley, participants discussed technologies that will improve the ability to [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/nasa-usgs-industry-explore-off-world-resource-development/>

---

## Nvidia wants to put a GB300 Superchip on your desk with DGX Station, Spark PCs

date: 2025-03-18, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Or a 96 GB RTX PRO in your desktop or server</h4> <p><strong>GTC</strong>  After a Hopper hiatus, Nvidia&#39;s DGX Station returns, now armed with an all-new desktop-tuned Grace-Blackwell Ultra Superchip capable of churning out 20 petaFLOPS of AI performance.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/gtc_frame_nvidias_budget_blackwell/>

---

## Nvidia punts silicon photonic switches to keep GPUs fed with data

date: 2025-03-18, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Power sipping bandwidth bottleneck busters – or that&#39;s the hope, anyway</h4> <p><strong>GTC</strong>  Nvidia is set to make available Ethernet and InfiniBand switches featuring silicon photonics with co-packaged optics to advance its vision of datacenters with &#34;millions of GPUs,&#34; arguing that the equipment can keep power consumption down.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/nvidia_punts_silicon_photonic_switches/>

---

## We heard you like HBM – Nvidia's Blackwell Ultra GPUs will have 288 GB of it

date: 2025-03-18, updated: 2025-03-20, from: The Register (UK I.T. News)

<h4>There goes AMD&#39;s capacity advantage</h4> <p><strong>GTC</strong>  Nvidia&#39;s Blackwell GPU architecture is barely out of the cradle – and the graphics chip giant is already looking to extend its lead over rival AMD with an Ultra-themed refresh of the technology.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/nvidia_blackwell_ultra/>

---

## Amazon accused of using algorithms to push warehouse workers to breaking point

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>Web souk hits back at critical study into union drive at package depot</h4> <p>Amazon has used tricks, algorithms, and surveillance to discourage warehouse employees from unionizing, according to a paper published in the journal Socius.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/amazon_algorithmic_worker_management/>

---

## US tech jobs outlook clouded by DOGE cuts, Trump tariffs

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>Hiring remains relatively strong as analysts warn of slowdown</h4> <p>A pair of reports on tech sector employment trends in the United States suggest out-of-work techies right now have relatively decent prospects, but economic uncertainty and rapid policy changes initiated by the Trump administration mean the future job market looks less rosy.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/us_tech_jobs_outlook/>

---

## NASA’s SpaceX Crew-9 Members Pose for Portrait

date: 2025-03-18, from: NASA breaking news

NASA astronauts Butch Wilmore, Nick Hague, and Suni Williams, and Roscosmos cosmonaut Aleksandr Gorbunov – the members of NASA&#8217;s SpaceX Crew-9 mission – smile at the camera in this Feb. 19, 2025, photo. While aboard the International Space Station, Hague, Williams, and Wilmore completed more than 900 hours of research between more than 150 unique [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/nasas-spacex-crew-9-members-pose-for-portrait/>

---

## NASA Invites Media to View Wildland Fire Technology Flight Test

date: 2025-03-18, from: NASA breaking news

NASA will conduct a live flight test of aircraft performing simulated wildland fire response operations using a newly developed airspace management system at 9 a.m. PDT on Tuesday, March 25, in Salinas, California. NASA’s new portable airspace management system, part of the agency’s Advanced Capabilities for Emergency Response Operations (ACERO) project, aims to significantly expand [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-invites-media-to-view-wildland-fire-technology-flight-test/>

---

## Raspberry Pi RP2350 microcontroller now available to mere mortals

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>For when a Pico 2 is just too general purpose</h4> <p>The Raspberry Pi RP2350 microcontroller is generally available, meaning the chip can now be picked up from resellers rather than as a Pico 2 or on PCBs from manufacturers like JLC.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/raspberry_rp2350_microcontroller_now_available/>

---

## Vivaldi 7.2 browser wants to topple tech's feudal lords

date: 2025-03-18, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>Tall order for tiny market share techies but &#39;this is the moment to decide what kind of internet we want,&#39; says CEO</h4> <p>A new, speedier browser has arrived in the form of Vivaldi 7.2, giving its CEO the opportunity to protest the power of tech giants.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/vivaldi_72/>

---

## NASA Invites Media to 62nd Annual Goddard Space Science Symposium

date: 2025-03-18, from: NASA breaking news

Media are invited to meet leaders in the space community during the 62nd annual Goddard Space Science Symposium, taking place from Wednesday, March 19, to Friday, March 21, at Martin’s Crosswinds in Greenbelt, Maryland. The symposium will also be streamed online. Hosted by the American Astronautical Society (AAS) in conjunction with NASA’s Goddard Space Flight [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-invites-media-to-62nd-annual-goddard-space-science-symposium/>

---

## Microsoft isn't fixing 8-year-old shortcut exploit abused for spying

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>&#39;Only&#39; a local access bug but important part of N Korea, Russia, and China attack picture</h4> <p>An exploitation avenue found by Trend Micro in Windows has been used in an eight-year-long spying campaign, but there&#39;s no sign of a fix from Microsoft, which apparently considers this a low priority.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/microsoft_trend_flaw/>

---

## Oracle JDK 24 appears in rare alignment of version and feature count

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>The 24 JDK Enhancement Proposals in Java 24 represent a stochastic sign</h4> <p>Oracle JDK 24 debuted on Tuesday with 24 JDK Enhancement Proposals, or JEPs as they&#39;re known in the Java programming community.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/oracle_jdk_24/>

---

## Observing Storms from Skylab

date: 2025-03-18, from: NASA breaking news

Skylab 3 astronauts witnessed many spectacular sights during their 858 orbital trips around the Earth in the summer of 1973. One involved watching powerful Hurricane Ellen take shape off the West African coast. “There’s a nice storm down there. She looks pretty big. She’s got a lot of clouds,” said astronaut Alan L. Bean upon [&#8230;] 

<br> 

<https://www.nasa.gov/history/observing-storms-from-skylab/>

---

## Atomic Layer Processing Coating Techniques Enable Missions to See Further into the Ultraviolet

date: 2025-03-18, from: NASA breaking news

Astrophysics observations at ultraviolet (UV) wavelengths often probe the most dynamic aspects of the universe. However, the high energy of ultraviolet photons means that their interaction with the materials that make up an observing instrument are less efficient, resulting in low overall throughput. New approaches in the development of thin film coatings are addressing this […] 

<br> 

<https://science.nasa.gov/science-research/science-enabling-technology/technology-highlights/atomic-layer-processing-coating-techniques-enable-missions-to-see-further-into-the-ultraviolet/>

---

## Google acquisition target Wiz links fresh supply chain attack to 23K pwned GitHub repos

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>Ad giant just confirmed its cloudy arm will embrace security shop in $30B deal</h4> <p>Infoseccers at Google acquisition target Wiz think they&#39;ve found the root cause of the GitHub supply chain attack that unfolded over the weekend, and they say that a separate attack may have been to blame.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/wiz_github_supply_chain/>

---

## DoorDash sued for allegedly branding customer a fraudster after delivery photo query

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>Dispute over app privacy escalates into legal brawl</h4> <p>Phyllis Jager, CEO of New York-based creative agency zuMedia, has perhaps, like some of you, privacy concerns about the pictures DoorDash drivers take to prove they&#39;ve correctly made their deliveries.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/doordash_sued_customer_fraudster/>

---

## Curious tale of two HR tech unicorns, alleged espionage, and claims of a spy hiding in a bathroom

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>There&#39;s nothing bog-standard about this bombshell loo-suit</h4> <p><strong>Updated</strong>  Rival HR technology unicorns are at each other&#39;s throats in a courtroom brawl over alleged corporate espionage.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/deel_rippling_espionage_accusations/>

---

## UK wants dirt on data brokers before criminals get there first

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>Govt yearns to learn mistakes of serially breached record holders so it can, er, liberalize data sharing regs</h4> <p>The UK government is inviting experts to provide insights about the data brokerage industry and the potential risks it poses to national security as it moves to push new data-sharing legislation over the line.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/uk_data_broker_inquiry/>

---

## Bringing the Heat: Abigail Howard Leads Thermal Systems for Artemis Rovers, Tools

date: 2025-03-18, from: NASA breaking news

Depending on where you stand at the lunar South Pole, you may experience temperatures of 130°F (54°C) during sunlit periods, or as low as -334°F (-203°C) in a permanently shadowed region. Keeping crews comfortable and tools and vehicles operational in such extreme temperatures is a key challenge for engineers at Johnson Space Center working on [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/johnson/bringing-the-heat-abigail-howard-leads-thermal-systems-for-artemis-rovers-tools/>

---

## ATMs in the Amazon: Edge is crossing its tipping point, says SUSE CTO

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>Sending Kubernetes and AI into orbit as devices move from &#39;glorified sensors&#39; to &#39;decision-making&#39;</h4> <p><strong>SUSECON 2025</strong>  Edge technology is finally past the tipping point thanks to inferencing and AI, according to SUSE CTO Brent Schroeder.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/suse_cto_interview/>

---

## AI crawlers haven't learned to play nice with websites

date: 2025-03-18, updated: 2025-03-19, from: The Register (UK I.T. News)

<h4>SourceHut says it&#39;s getting DDoSed by LLM bots</h4> <p>SourceHut, an open-source-friendly git-hosting service, says web crawlers for AI companies are slowing down services through their excessive demands for data.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/ai_crawlers_sourcehut/>

---

## Extortion crew threatened to inform Edward Snowden (?!) if victim didn't pay up

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>Don&#39;t laugh. This kind of warning shows crims are getting desperate</h4> <p>Dark web analysts at infosec software vendor Fortra have discovered an extortion crew named Ox Thief that threatened to contact Edward Snowden if a victim didn’t pay to protect its data – a warning that may be an indicator of tough times in the ransomware world for some, at least.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/extortionists_ox_thief_legal_threats/>

---

## Google’s broadband balloon laser comms tech floated out as independent company

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>Another success for the &#39;Moonshot factory&#39; and an extra rival for Starlink et al</h4> <p>Google’s attempt to provide remote area connectivity with balloons has been floated out as an independent company, a rare success for the company’s attempt to develop breakthrough technologies.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/google_loon_balloon_spun_out/>

---

## 'Dead simple' hijacking hole in Apache Tomcat 'now actively exploited in the wild'

date: 2025-03-18, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>One PUT request, one poisoned session file, and the server’s yours</h4> <p><strong>Updated</strong>  A trivial flaw in Apache Tomcat that allows remote code execution and access to sensitive files is said to be under attack in the wild within a week of its disclosure.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/18/apache_tomcat_java_rce_flaw/>

---

## Court filing: DOGE aide broke Treasury policy by emailing unencrypted database

date: 2025-03-17, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>More light shed on what went down with Marko Elez, thanks to NY AG and co&#39;s lawsuit</h4> <p>A now-former DOGE aide violated US Treasury policy by emailing an unencrypted database containing people&#39;s private information to two Trump administration officials, according to a court document filed Friday.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/doge_treasury/>

---

## Don't want Copilot app on your Windows 11 machine? Install this official update

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>Microsoft says disappearance of Clippy 2.0 is an error it will shortly fix</h4> <p>A buggy Windows 11 update from Microsoft has a silver lining for those who aren&#39;t keen on the operating system&#39;s Copilot assistant. When installed, the software patch will remove the AI app on at least &#34;some&#34; PCs.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/copilot_windows_update/>

---

## GIMP 3.0 released

date: 2025-03-17, from: OS News

It&#8217;s taken a Herculean seven-year effort, but GIMP 3.0 has finally been released. There are so many new features, changes, and improvements in this release that it&#8217;s impossible to highlight all of them. First and foremost, GIMP 3.0 marks the shift to GTK3 &#8211; this may be surprising considering GTK4 has been out for a while, but major applications such as GIMP tend to stick to more tried and true toolkit versions. GTK4 also brings with it the prickly discussion concerning a possible adoption of libadwaita, the GNOME-specific augmentations on top of GTK4. The other major change is full support for Wayland, but users of the legacy X11 windowing system don&#8217;t have to worry just yet, since GIMP 3.0 supports that, too. As far as actual features go, there&#8217;s a ton here. Non-destructive layer effects is one of the biggest improvements. Another big change introduced in GIMP 3.0 is non-destructive (NDE) filters. In GIMP 2.10, filters were automatically merged onto the layer, which prevented you from making further edits without repeatedly undoing your changes. Now by default, filters stay active once committed. This means you can re-edit most GEGL filters in the menu on the layer dockable without having to revert your work. You can also toggle them on or off, selectively delete them, or even merge them all down destructively. If you prefer the original GIMP 2.10 workflow, you can select the “Merge Filters” option when applying a filter instead. ↫ GIMP 3.0 release notes There&#8217;s also much better color space management, better layer management and control, the user interface has been improved across the board, and support for a ton of file formats have been added, from macOS icons to Amiga ILBM/IFF formats, and much more. GIMP 3.0 also improves compatibility with Photoshop files, and it can import more palette formats, including proprietary ones like Adobe Color Book (ACB) and Adobe Swatch Exchange (ASE). This is just a small selection, as GIMP 3.0 truly is a massive update. It&#8217;s available for Linux, Windows, and macOS, and if you wait for a few days it&#8217;ll probably show up in your distribution&#8217;s package repositories. 

<br> 

<https://www.osnews.com/story/141947/gimp-3-0-released/>

---

## Texas High School Aerospace Scholars: A Launchpad for Future Innovators

date: 2025-03-17, from: NASA breaking news

NASA’s Office of STEM Engagement at Johnson Space Center offers Texas high school students a unique gateway to the world of space exploration through the High School Aerospace Scholars (HAS) program. This initiative gives juniors hands-on experience, working on projects that range from designing spacecraft to planning Mars missions.&#160; Nearly 30 participants who have been [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/johnson/texas-high-school-aerospace-scholars-a-launchpad-for-future-innovators/>

---

## Amazon to kill off local Alexa processing, all voice requests shipped to the cloud

date: 2025-03-17, updated: 2025-03-18, from: The Register (UK I.T. News)

<h4>Web souk says Echo hardware doesn&#39;t have the oomph for next-gen AI anyway</h4> <p>Come March 28, those who opted to have their voice commands for Amazon&#39;s AI assistant Alexa processed locally on their Echo devices will lose that option, with all spoken requests pushed to the cloud for analysis.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/amazon_kills_on_device_alexa/>

---

## NASA Space Day to Share Progress, Opportunities at Texas Capitol

date: 2025-03-17, from: NASA breaking news

March 17, 2025 NASA is heading back to the state capitol in March for Space Day Texas, a recognition of achievements throughout Texas and a look ahead to the impact future human space exploration has on the Lone Star state. The two-day schedule of events and exhibits focusing on exploration, astronauts, and science, technology, engineering, [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-space-day-to-share-progress-opportunities-at-texas-capitol/>

---

## More pro for the DEC Professional 380 (featuring PRO/VENIX)

date: 2025-03-17, from: OS News

Settle down children, it&#8217;s time for another great article by Cameron Kaiser. This time, they&#8217;re going to tell us about the DEC Professional 380 running PRO/VENIX. The Pro 380 upgraded to the beefier J-11 (&#8220;Jaws&#8221;) CPU from the PDP-11/73, running two to three times faster than the 325 and 350. It had faster RAM and came with more of it, and boasted quicker graphics with double the vertical resolution built right into the logic board. The 380 still has its faults, notably being two-thirds the speed of the 11/73 and having no cache, plus all of the 325/350&#8217;s incompatibilities. Taken on its merits, though, it&#8217;s a tank of a machine, a reasonably powerful workstation, and the most practical PDP-adjacent thing you can actually slap on a (large) desk. This particular unit is one of the few artifacts I have left from a massive DEC haul almost twelve years ago. It runs PRO/VENIX, the only official DEC Unix option for the Pros, but in its less common final release (we&#8217;ll talk about versions of Venix). I don&#8217;t trust the clanky ST-506 hard drive anymore, so today we&#8217;ll convert it to solid state and double its base RAM to make it even more professional, and then play around in VENIX some for a taste of old-school classic Unix — after, of course, some history. ↫ Cameron Kaiser Detailed, interesting, fascinating, and full of photos as always. 

<br> 

<https://www.osnews.com/story/141945/more-pro-for-the-dec-professional-380-featuring-pro-venix/>

---

## Students Dive Into Robotics at Competition Supported by NASA JPL

date: 2025-03-17, from: NASA breaking news

Robots built by high schoolers vied for points in a fast-moving game inspired by complex ocean ecosystems at the FIRST Robotics Los Angeles regional competition. High school students who spent weeks designing, assembling, and testing 125-pound rolling robots put their fast-moving creations into the ring over the weekend, facing off at the annual Los Angeles [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/jpl/students-dive-into-robotics-at-competition-supported-by-nasa-jpl/>

---

## M4 MacBook Air keeps ports modular, locks tight – still a headache to repair

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>Cupertino’s latest skips iPhone repair gains, iFixit says</h4> <p>Anyone hoping Apple&#39;s latest MacBook Air might inherit the iPhone&#39;s recent repair-friendly tweaks is in for disappointment, iFixit&#39;s teardown crew has found.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/m4_macbook_air_repair/>

---

## Los Alamos boffins whip up a speedometer for satellites

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>First license plates, now a way to calculate pace in orbit. Speeding tickets next?</h4> <p>Scientists at America&#39;s Los Alamos National Laboratory (LANL) in New Mexico say they have developed a Spacecraft Speedometer that satellites can use in orbit to ideally avoid orbital collisions.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/los_alamos_satellite_speedometer/>

---

## Apple’s long-lost hidden recovery partition from 1994 has been found

date: 2025-03-17, from: OS News

In 1994, a single Macintosh Performa model, the 550, came from the factory with a dedicated, hidden recovery partition that contained a System 7 system folder and a small application that would be set as bootable if the main operating system failed to boot. This application would then run, allowing you to recover your Mac using the system folder inside the recovery partition. This feature was apparently so obscure, few people knew it existed, and nobody had access to the original contents of the recovery partition anymore. It took Doug Brown a lot of searching to find a copy of this recovery partition. The issue is that nobody really knows how this partition is populated with the recovery data, so the only way to explore its contents was to somehow find a Performa 550 hard drive with a specific version of Mac OS that had never been reformatted after leaving the factory. The thing is, this whole functionality was super obscure. It’s understandable that people weren’t familiar with it. Apple publicly stated it was only included with this one specific Performa model. Their own documentation also said that it would be lost if you reformatted the hard drive. It was hiding in the background, so nobody really knew it was there, let alone thought about saving it. Also, I can say that the first thing a lot of people do when they obtain a classic computer is erase it in order to restore it to the factory state. Little did anyone know, if they reformatted the hard drive on a Performa 550, they could have been wiping out rare data that hadn’t been preserved! ↫ Doug Brown Brown found a copy, and managed to get the whole original functionality working again. It&#8217;s a fairly basic way of doing this, but we shouldn&#8217;t forget we&#8217;re talking 1994 here, and I don&#8217;t think any other operating system at the time had the ability to recover from an unbootable state like this. Like Brown, I wonder why it was abandoned so quickly. Perhaps Apple was unwilling to sacrifice the hard drive space? Groundbreaking or not, it&#8217;s still great to have this recovered and preserved for the ages. 

<br> 

<https://www.osnews.com/story/141943/apples-long-lost-hidden-recovery-partition-from-1994-has-been-found/>

---

## NASA’s SpaceX Crew-10 Launch

date: 2025-03-17, from: NASA breaking news

A SpaceX Falcon 9 rocket carrying the company&#8217;s Dragon spacecraft is launched on NASA’s SpaceX Crew-10 mission to the International Space Station with NASA astronauts Anne McClain and Nichole Ayers, JAXA (Japan Aerospace Exploration Agency) astronaut Takuya Onishi, and Roscosmos cosmonaut Kirill Peskov onboard, Friday, March 14, 2025, from NASA&#8217;s Kennedy Space Center in Florida. [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/nasas-spacex-crew-10-launch/>

---

## NASA, Firefly Invite Media to Discuss End of Blue Ghost Moon Mission

date: 2025-03-17, from: NASA breaking news

NASA and Firefly Aerospace will host a news conference at 2 p.m. EDT Tuesday, March 18, from NASA’s Johnson Space Center in Houston to discuss the company’s successful Blue Ghost Mission 1 on the Moon’s surface. Watch the news conference on&#160;NASA+. Learn how to watch&#160;NASA content&#160;through a variety of platforms, including social media. U.S. media [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-firefly-invite-media-to-discuss-end-of-blue-ghost-moon-mission/>

---

## Microsoft accidentally cares about its users, releases update that unintentionally deletes Copilot from Windows

date: 2025-03-17, from: OS News

It&#8217;s rare in this day and age that proprietary operating system vendors like Microsoft and Apple release updates you&#8217;re more than happy to install, but considering even a broken clock is right twice a day, we&#8217;ve got one for you today. Microsoft released KB5053598 (OS Build 26100.3476) which &#8220;addresses security issues for your Windows operating system&#8221;. One of the &#8220;security issues&#8221; this update addresses, is Microsoft&#8217;s &#8220;AI&#8221; text generator, Copilot. To address this glaring security issue, this update removes Copilot from your Windows installation altogether. Sadly, it&#8217;s only by mistake, and not by design. We&#8217;re aware of an issue with the Microsoft Copilot app affecting some devices. The app is unintentionally uninstalled and unpinned from the taskbar.  Microsoft is working on a resolution to address this issue. In the meantime, affected users can reinstall the app from the Microsoft Store and manually pin it to the taskbar. ↫ Microsoft Support Well, at least until Microsoft &#8220;fixes&#8221; this &#8220;issue&#8221; with KB5053598, consider this update a simple way to get rid of Copilot. Microsoft accidentally cared about its users for once, so cherish this moment &#8211; it won&#8217;t happen again. 

<br> 

<https://www.osnews.com/story/141941/microsoft-accidentally-cares-about-its-users-releases-update-that-unintentionally-deletes-copilot-from-windows/>

---

## Quantum Speedup Found for Huge Class of Hard Problems

date: 2025-03-17, from: Quanta Magazine

It’s been difficult to find important questions that quantum computers can answer faster than classical machines, but a new algorithm appears to do it for some critical optimization tasks.            <p>The post <a href="https://www.quantamagazine.org/quantum-speedup-found-for-huge-class-of-hard-problems-20250317/" target="_blank">Quantum Speedup Found for Huge Class of Hard Problems</a> first appeared on <a href="https://www.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<br> 

<https://www.quantamagazine.org/quantum-speedup-found-for-huge-class-of-hard-problems-20250317/>

---

## Euro techies call for sovereign fund to escape Uncle Sam's digital death grip

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>Nearly 100 orgs plead for homegrown lifeline amid geopolitical tensions</h4> <p>A group of technology companies and lobbyists want the European Commission (EC) to take action to reduce the region&#39;s reliance on foreign-owned digital services and infrastructure.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/european_tech_sovereign_fund/>

---

## New Modeling Assesses Age of Next Target Asteroid for NASA’s Lucy

date: 2025-03-17, from: NASA breaking news

Although NASA’s Lucy spacecraft’s upcoming encounter with the asteroid Donaldjohanson is primarily a mission rehearsal for later asteroid encounters, a new paper suggests that this small, main belt asteroid may have some surprises of its own. New modeling indicates that Donaldjohanson may have been formed about 150 million years ago when a larger parent asteroid [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/goddard/new-modeling-assesses-age-of-next-target-asteroid-for-nasas-lucy/>

---

## NASA’s Webb Images Young, Giant Exoplanets, Detects Carbon Dioxide

date: 2025-03-17, from: NASA breaking news

NASA’s James Webb Space Telescope has captured direct images of multiple gas giant planets within an iconic planetary system. HR 8799, a young system 130 light-years away, has long been a key target for planet formation studies. The observations indicate that the well-studied planets of HR 8799 are rich in carbon dioxide gas. This provides […] 

<br> 

<https://science.nasa.gov/missions/webb/nasas-webb-images-young-giant-exoplanets-detects-carbon-dioxide/>

---

## Summer 2024

date: 2025-03-17, from: NASA breaking news

Help learners STEMify their summer through hands-on and engaging activities curated by the NASA eClips team. You’ll find something for everyone – Earth-based and out-of-this-world. This issue includes eClips videos, resources, and design challenges as well as partner activities and other recommended summer activities. We have organized them by the amount of time the activity […] 

<br> 

<https://science.nasa.gov/uncategorized/summer-2024/>

---

## Celonis slaps SAP with lawsuit claiming it's gatekeeping customer data

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>Process mining specialist accuses the ERP giant of rigging game with fees, restrictions, and a closed ecosystem</h4> <p>German software company Celonis is suing SAP, alleging anti-competitive conduct and claiming its systems lack openness.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/celonis_sues_sap/>

---

## September 2024

date: 2025-03-17, from: NASA breaking news

Fall back to school with this edition of the NASA eClips newsletter! Educators are provided with a host of resources to help engineer a great school year! Videos and activities focus on comparing science and engineering practices. Two new Spotlite Design Challenges are launched on climate change and Earth-observing satellites! And a fun activity for […] 

<br> 

<https://science.nasa.gov/uncategorized/eclips-september-2024/>

---

## GitHub supply chain attack spills secrets from 23,000 projects

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>Large organizations among those cleaning up the mess</h4> <p>It&#39;s not such a happy Monday for defenders wiping the sleep from their eyes only to deal with the latest supply chain attack.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/supply_chain_attack_github/>

---

## Flang-tastic! LLVM's Fortran compiler finally drops the training wheels

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>Another all-FOSS option – just don&#39;t confuse it with all the other Flangs</h4> <p>The latest version of the LLVM compiler suite has promoted its Fortran front end. &#34;Flang&#34; is now official.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/llvm_20_flang/>

---

## UK government to open £16B IT services competition after 6-month delay

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>Technology Services 4 framework expands by £4B, with procurement to begin this week</h4> <p>UK government is set to crack open the pork barrel for up to £16 billion in contracts for a range of IT services. The buying framework was delayed by six months and the total pot of spending is now potentially 25 percent bigger than the previous proposal.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/uk_technology_services_4/>

---

## Microsoft wouldn't look at a bug report without a video. Researcher maliciously complied

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>Maddening techno bass loop, Zoolander reference, and 14 minutes of time wasted</h4> <p>A vulnerability analyst and prominent member of the infosec industry has blasted Microsoft for refusing to look at a bug report unless he submitted a video alongside a written explanation.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/microsoft_bug_report_troll/>

---

## This one weird trick can make online publishing faster, safer, more attractive, and richer

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>Well, maybe not richer, but we&#39;re about to find out</h4> <p><strong>Opinion</strong>  The universe ended unexpectedly on a March Monday in 2025. To the relief of many, it came back a few days later much as before, but with one very significant change. One that may herald significant changes for all of us, inside its sphere or not.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/universe_today_opinion/>

---

## Developer wrote a critical app and forgot where it ran – until it stopped running

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>What comes after testing in the software development lifecycle? Aaah, never mind ... let&#39;s skip to maintenance</h4> <p><strong>Who, Me?</strong>  With the weekend behind us, it&#39;s time to once again ask the question &#34;Who, Me?&#34; That&#39;s the name of <i>The Register&#39;s</i> Monday column in which we share reader-contributed confessions of making a mess with tech.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/who_me/>

---

## OK, Google: Are you killing Assistant and replacing it with Gemini?

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>Yes, we are. And we promise your &#39;Droid and smart home kit will get a &#39;new experience&#39;</h4> <p>Google has decided to silence its voice Assistant and replace it with the Gemini AI service.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/google_assistant_eol_gemini_replacement/>

---

## SpaceX Dragon pod arrives at ISS to finally pick up stranded Boeing astronaut pair

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>Second time&#39;s a charm</h4> <p>SpaceX&#39;s Crew Dragon Endurance capsule successfully launched on Friday, March 14, and docked with the International Space Station (ISS) just over a day later.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/crew10_iss/>

---

## China announces plan to label all AI-generated content with watermarks and metadata

date: 2025-03-17, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>PLUS: Foxconn wants 40 percent AI server market share; Atlassian CEO jets into controversy; Starlink reaches 800 million in India; And more!</h4> <p><strong>Asia In Brief</strong>  Chinese authorities last week announced “identification measures” for AI-generated content that will require it to be labelled with human and machine-readable notifications.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/17/asia_tech_news_roundup/>

---

## FCC stands up Council on National Security to fight China in ways that CISA used to

date: 2025-03-16, updated: 2025-03-17, from: The Register (UK I.T. News)

<h4>PLUS: Alleged Garantex admin arrested in India; Google deletes more North Korean malware</h4> <p><strong>Infosec In Brief</strong>  United States Federal Communications Commission chair Brendan Carr has unveiled plans to form a Council on National Security that will combat foreign threats to American tech and telecommunications infrastructure.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/16/infosec_news_in_brief/>

---

## NASA to Provide Live Coverage of Crew-9 Return, Splashdown

date: 2025-03-16, from: NASA breaking news

NASA will provide live coverage of the agency’s SpaceX Crew-9 return to Earth from the International Space Station, beginning with Dragon spacecraft hatch closure preparations at 10:45 p.m. EDT Monday, March 17. NASA and SpaceX met on Sunday to assess weather and splashdown conditions off Florida’s coast for the return of the agency’s Crew-9 mission [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-to-provide-live-coverage-of-crew-9-return-splashdown/>

---

## DeepSeek-R1-beating perf in a 32B package? El Reg digs its claws into Alibaba's QwQ

date: 2025-03-16, updated: 2025-03-16, from: The Register (UK I.T. News)

<h4>How to tame its hypersensitive hyperparameters and get it running on your PC</h4> <p><strong>Hands on</strong>  How much can reinforcement learning - and a bit of extra verification - improve large language models, aka LLMs? Alibaba&#39;s Qwen team aims to find out with its latest release, QwQ.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/03/16/qwq_hands_on_review/>

