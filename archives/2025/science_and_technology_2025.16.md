---
title: science and technology
updated: 2025-04-27 14:07:18
---

# science and technology

(date: 2025-04-27 14:07:18)

---

## OpenBSD 7.7 released

date: 2025-04-27, from: OS News

Another six months have passed, so it&#8217;s time for a new OpenBSD release: OpenBSD 7.7 to be exact. Browsing through the long, detailed list of changes, a few important bits jump out. First, OpenBSD 7.7 adds support for Ryzen AI 300 (Strix Point, Strix Halo, Krackan Point), Radeon RX 9070 (Navi 48), and Intel&#8217;s Arrow Lake, adding support for the latest x86 processors to OpenBSD. There seems to be quite a few entries in the list related to power management, from work on hibernation and suspend, to more fine-grained control over performance profiles when on battery or plugged in. There&#8217;s also the usual long list of driver improvements, new drivers, and tons and tons of other fixes and changes. OpenBSD 7.7 also ships with the latest GNOME and KDE releases, and contains fixes and improvements for a whole slew of obscure and outdated architectures. 

<br> 

<https://www.osnews.com/story/142229/openbsd-7-7-released/>

---

## Crucial Wii homebrew library contains code stolen from Nintendo, RTEMS

date: 2025-04-27, from: OS News

The Wii homebrew community has been dealt a pretty serious blow, as developers of The Homebrew Channel for the Wii have discovered that not only does an important library most Wii homebrew software rely on use code stolen straight from Nintendo, that same library also uses code taken from an open source real-time operating system without giving proper attribution. Most Wii homebrew software is built atop a library called libogc. This library apparently contains code stolen from Nintendo&#8217;s SDK as well as from games using this SDK, decompiled and cleaned. This has been known for a while, but it was believed that large, important parts of libogc were at least original, but that, too, turns out to be untrue. Recently it has been discovered that libogc&#8217;s threading/OS implementation has been stolen from RTEMS, an open source real-time operating system. The developers of libogc have indicated that they do not care, intend to do nothing about it, and deleted any issues reporting the stolen code. What&#8217;s wild about the code stolen from RTEMS is that it&#8217;s an open source operating system with a nice, permissive license; there was no need to steal the code at all, and all it would take to address it is proper attribution. As such, the fail0verflow group, which develops The Homebrew Channel for the Wii, has ceased all development on The Homebrew Channel, and archived the code repository. The Wii homebrew community was all built on top of a pile of lies and copyright infringement, and it&#8217;s all thanks to shagkur (who did the stealing) and the rest of the team (who enabled it and did nothing when it was discovered). Together, the developers deceived everyone into believing their work was original. Please demand that the leaders and major contributors to console or other proprietary device SDKs and toolkits that you use and work with do things legally, and do not tolerate this kind of behavior. ↫ The Homebrew Channel GitHub page Considering Nintendo is on a crusade to shutdown emulators, stuff like this is really not helping anyone trying to argue that consoles should be open devices, that emulators play an important role in preservation, and that people have a right to play the games they own on a device other than the console it&#8217;s intended for. I&#8217;m sure this isn&#8217;t the last we&#8217;ll hear about this development. 

<br> 

<https://www.osnews.com/story/142227/crucial-wii-homebrew-library-contains-code-stolen-from-nintendo-rtems/>

---

## DARPA to 'radically' rev up mathematics research. And yes, with AI

date: 2025-04-27, updated: 2025-04-27, from: The Register (UK I.T. News)

<h4>Now that&#39;s a sum of all fears</h4> <p>The US Defense Advanced Research Projects Agency, aka DARPA, believes mathematics isn&#39;t advancing fast enough.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/27/darpa_expmath_ai/>

---

## 9front “CLAUSE 15 COMMON ELEMENTS OF MAUS AND STAR TYPE” released

date: 2025-04-27, from: OS News

Few things in life make me happier than a new 9front release. This new release, 9front “CLAUSE 15 COMMON ELEMENTS OF MAUS AND STAR TYPE”, comes with a variety of fixes and new features, such as temperature sensor support for Ryzen processors, a new Intel i225 2.5 GbE driver, a number of low-level kernel improvements, and so, so many more small fixes and changes. If you use 9front, you already know all of this, and you&#8217;re too cool to read OSNews anyway. If you&#8217;re new to 9front and want to join the cool people club, you can download images for PC, Raspberry Pi, MNT Reform, and QEMU. 

<br> 

<https://www.osnews.com/story/142223/9front-clause-15-common-elements-of-maus-and-star-type-released/>

---

## RetrOS-32: a 32bit hobby operating system with graphics, multitasking, and more

date: 2025-04-27, from: OS News

RetrOS-32 is a 32bit operating system written from scratch, with graphics, multitasking and networking capabilities. The kernel is written in C and assembly, while the userspace applications are written in C++, using Make for compilation, all licensed under the MIT license. It runs on Qemu, of course, but a variety of real hardware is also supported, which is pretty cool and relatively unique for a small hobby project like this. The UI is delightfully retro &#8211; as the name obviously implies &#8211; and it comes with a set of basic applications, as well as games like Wolfenstein 3D. 

<br> 

<https://www.osnews.com/story/142221/retros-32-a-32bit-hobby-operating-system-with-graphics-multitasking-and-more/>

---

## Trump’s 145% tariffs could KO tabletop game makers, other small biz, lawsuit claims

date: 2025-04-26, updated: 2025-04-26, from: The Register (UK I.T. News)

<h4>One eight-person publisher says it&#39;ll be forced to pay $1.5M</h4> <p><strong>WORLD WAR FEE</strong>  The Trump administration&#39;s tariffs are famously raising the prices of high-ticket products with lots of chips, like iPhones and cars, but they&#39;re also hurting small businesses like game makers. In this case, we&#39;re not talking video games, but the old-fashioned kind you play at your kitchen table.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/26/game_makers_small_businesses_sue_tariffs/>

---

## Build your own antisocial writing rig with DOS and a $2 USB key

date: 2025-04-26, updated: 2025-04-26, from: The Register (UK I.T. News)

<h4>Reg hack pines for simpler times, then tries to recapture them</h4> <p>Sometimes, the size and complexity of modern OSes – even the FOSS ones – is enough to make us miss the days when an entire bootable OS could fit in three files, when configuring a PC for production meant editing two plain-text files, which contained maybe a dozen lines each. DOS couldn&#39;t do very much, but the little it did was enough. From the early 1980s for a decade or two, much of the world ran on DOS. Then Windows 3 came along, which is arguably the point where the rot set in.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/26/dos_distraction_free_writing/>

---

## UK bans game controller exports to Russia in bid to ground drone attacks

date: 2025-04-26, updated: 2025-04-26, from: The Register (UK I.T. News)

<h4>Moscow likely to respawn elsewhere</h4> <p>The British government is banning the export of video game controllers to Russia, claiming these can be repurposed for piloting drones on the frontline in Ukraine.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/26/uk_russia_controller_drone_attack/>

---

## AI-powered 20 foot robots coming for construction workers' jobs

date: 2025-04-26, updated: 2025-04-26, from: The Register (UK I.T. News)

<h4>Er, are we sure we want to outsource the welding?</h4> <p><strong>Rise of the machines</strong>  Construction workers could soon find themselves laboring alongside 20-foot (6 meter) tall AI-powered autonomous robots capable of welding, carpentry, and 3D printing buildings. What could possibly go wrong?…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/26/aipowered_robots_construction/>

---

## Earth Science Showcase – Kids Art Collection

date: 2025-04-26, from: NASA breaking news

On April 16, 2025, the Earth Science Division at NASA&#8217;s Ames Research Center in Silicon Valley held an Earth Science Showcase to share its work with the center and their families. As part of this event, kids were invited to share something they like about the Earth. These are their masterpieces. Sora U. Age 9. [&#8230;] 

<br> 

<https://www.nasa.gov/science-research/earth-science/art-showcase/>

---

## Signalgate lessons learned: If creating a culture of security is the goal, America is screwed

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Infosec is a team sport … unless you&#39;re in the White House</h4> <p><strong>Opinion</strong>  Just when it seems they couldn&#39;t be that careless, US officials tasked with defending the nation go and do something else that puts American critical infrastructure, national security, and troops&#39; lives in danger.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/signalgate_lessons_learned_if_creating/>

---

## Lunar Space Station Module for NASA’s Artemis Campaign to Begin Final Outfitting

date: 2025-04-25, from: NASA breaking news

NASA continues to mark progress on plans to work with commercial and international partners as part of the Gateway program. The primary structure of HALO (Habitation and Logistics Outpost) arrived at Northrop Grumman’s facility in Gilbert, Arizona, where it will undergo final outfitting and verification testing. HALO will provide Artemis astronauts with space to live, [&#8230;] 

<br> 

<https://www.nasa.gov/missions/artemis/lunar-space-station-for-nasas-artemis-campaign-to-begin-final-testing/>

---

## The VTech Socratic method

date: 2025-04-25, from: OS News

We’ve had a lot of fun with VTech’s computers in the past on this blog. Usually, they’re relatively spartan computers with limited functionality, but they did make something very interesting in the late 80s. The Socrates is their hybrid video game console/computer design from 1988, and today we’ll start tearing into it. ↫ Leaded Solder web log Now we&#8217;re in for the good stuff. A weird educational computer/game console/toy thing from the late &#8217;80s, by VTech. I have a massive soft spot for these toy-like devices, because they&#8217;re always kind of a surprise &#8211; will it be a stupidly simple hardcoded device with zero input/output, or a weirdly capable computer with tons of hidden I/O and a full BASIC ROM? You won&#8217;t know until you crack it open and take a peek! VTech still makes things like this, and I still find them ever as fascinating. 

<br> 

<https://www.osnews.com/story/142208/the-vtech-socratic-method/>

---

## Amid CVE funding fumble, 'we were mushrooms, kept in the dark,' says board member

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>What next for US-bankrolled vulnerability tracker? It&#39;s edging closer to a more independent, global future</h4> <p>Kent Landfield, a founding member of the Common Vulnerabilities and Exposures (CVE) program and member of the board, learned through social media that the system he helped create was just hours away from losing funding.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/cve_board_funding/>

---

## Torvalds states the obvious: file systems should be case-sensitive

date: 2025-04-25, from: OS News

Apparently, the Bcachefs people are having problems with case-folding, and Linus Torvalds himself is not happy about it. Torvalds holds the only right opinion in this matter, which is that filesystems should obviously be case-sensitive. Case-insensitive names are horribly wrong, and you shouldn&#8217;t have done them at all. The problem wasn&#8217;t the lack of testing, the problem was implementing it in the first place.  Dammit. Case sensitivity is a BUG. The fact that filesystem people still think it&#8217;s a feature, I cannot understand. It&#8217;s like they revere the old FAT filesystem so much that they have to recreate it &#8211; badly. ↫ Linus Torvalds on the LKML It boggles my mind that a modern operating system like macOS still defaults to being case-insensitive (but case-preserving), and opting to install macOS the correct way, i.e. with case-sensitivity, can still lead to issues and bugs because macOS isn&#8217;t used to it. In 2025. Windows&#8217; NTFS is at least case-sensitive, but apparently Win32 applications get all weird about it; if you have several files with identical names save for the case used, Win32 applications will only allow you to open one of them. I&#8217;m not sure how up to date that information is, though. Regardless, the notion that Readme.txt is considered the same as readme.txt is absolutely insane, and should be one of those weird relics we got rid of back in the &#8217;90s. 

<br> 

<https://www.osnews.com/story/142205/torvalds-states-the-obvious-file-systems-should-be-case-sensitive/>

---

## Searching for the Dark in the Light

date: 2025-04-25, from: NASA breaking news

Written by Eleanor Moreland, Ph.D. Student Collaborator at Rice University  Perseverance has been busy exploring lower “Witch Hazel Hill,” an outcrop exposed on the edge of the Jezero crater rim. The outcrop is composed of alternating light and dark layers, and naturally, the team has been trying to understand the makeup of and relationships between […] 

<br> 

<https://science.nasa.gov/blog/searching-for-the-dark-in-the-light/>

---

## More Ivanti attacks may be on horizon, say experts who are seeing 9x surge in endpoint scans

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>GreyNoise says it is the kind of activity that typically precedes new vulnerability disclosures</h4> <p>Ivanti VPN users should stay alert as IP scanning for the vendor&#39;s Connect Secure and Pulse Secure systems surged by 800 percent last week, according to threat intel biz GreyNoise.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/more_ivanti_attacks_may_be/>

---

## Oh, cool. Microsoft melts bug that froze Server 2025 Remote Desktop sessions

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Where have we heard this before? Feb security update needs its own fix</h4> <p>More than one month after complaints starting flying, Microsoft has fixed a Windows bug that caused some Remote Desktop sessions to freeze.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/microsoft_fixes_windows_flaw/>

---

## Hubble Visits Glittering Cluster, Capturing Its Ultraviolet Light

date: 2025-04-25, from: NASA breaking news

As part of&#160;ESA/Hubble’s 35th anniversary celebrations, the European Space Agency (ESA) shared new images that revisited stunning, previously released Hubble targets with the addition of the latest Hubble data and new processing techniques. ESA/Hubble released new images of&#160;NGC 346, the&#160;Sombrero Galaxy, and the&#160;Eagle Nebula&#160;earlier in the month. Now they are revisiting the star cluster&#160;Messier 72 [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/hubble-visits-glittering-cluster-capturing-its-ultraviolet-light/>

---

## Hydrotreated vegetable oil is not an emission-free swap for diesel in datacenters

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Biofuel lowers pollutants, but won&#39;t eliminate &#39;em, and could mean DCs compete for supplies</h4> <p>Datacenter operators are being encouraged to adopt hydrotreated vegetable oil (HVO) as a replacement for diesel in generators, however, analysts say the sustainable stand-in is not emission-free and has its own drawbacks.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/hvo_not_an_emissionfree_swap/>

---

## M&amp;S stops online orders as 'cyber incident' issues worsen

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>One step forward and one step back as earlier hopes of progress dashed by latest update</h4> <p>Marks &amp; Spencer has paused online orders for customers via its website and app as the UK retailer continues to wrestle with an ongoing &#34;cyber incident.&#34;…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/ms_halts_online_orders/>

---

## Emergency patch for potential SAP zero-day that could grant full system control

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>German software giant paywalls details, but experts piece together the clues</h4> <p>SAP&#39;s latest out-of-band patch is for a perfect 10/10 bug in NetWeaver that experts suspect could have already been exploited as a zero-day.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/sap_netweaver_patch/>

---

## NASA Invites Local Middle Schoolers to Explore Agency STEM Careers

date: 2025-04-25, from: NASA breaking news

Ohio middle school students will step into the shoes of real-world NASA professionals for a day of career exploration and hands-on activities at NASA’s Glenn Research Center in Cleveland. Nearly 200 students are slated to participate in TECH Day at NASA Glenn on May 1, from 10 a.m. to 1 p.m. Media are invited to [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-invites-local-middle-schoolers-to-explore-agency-stem-careers/>

---

## Sols 4520-4521: Prinzregententorte

date: 2025-04-25, from: NASA breaking news

Written by Scott VanBommel, Planetary Scientist at Washington University Earth planning date: Wednesday, April 23, 2025 I will start this blog with an apology, an apology because I suspect, by the end of this post, you, the reader, may have a craving for chocolate, or cake, or both. While we saw hints of it in […] 

<br> 

<https://science.nasa.gov/blog/sols-4520-4521-prinzregententorte/>

---

## Hubble Space Telescope is still producing science at 35

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Remember when NASA was laser focused on that?</h4> <p>It was 35 years ago when the Hubble Space Telescope deployed into orbit, sent by a space agency facing an existential crisis. Thirty-five years on, not much seems to have changed.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/hubble_space_scope_35/>

---

## What’s Going On Inside Io, Jupiter’s Volcanic Moon?

date: 2025-04-25, from: Quanta Magazine

Recent flybys of the fiery world refute a leading theory of its inner structure — and reveal how little is understood about geologically active moons.            <p>The post <a href="https://www.quantamagazine.org/whats-going-on-inside-io-jupiters-volcanic-moon-20250425/" target="_blank">What’s Going On Inside Io, Jupiter’s Volcanic Moon?</a> first appeared on <a href="https://www.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<br> 

<https://www.quantamagazine.org/whats-going-on-inside-io-jupiters-volcanic-moon-20250425/>

---

## Navigation Technology

date: 2025-04-25, from: NASA breaking news

Science in Space April 2025 Humans have always been explorers, venturing by land and sea into unknown and uncharted places on Earth and, more recently, in space. Early adventurers often navigated by the Sun and stars, creating maps that made it easier for others to follow. Today, travelers on Earth have sophisticated technology to guide [&#8230;] 

<br> 

<https://www.nasa.gov/missions/station/iss-research/navigation-technology/>

---

## Google admits depreciation costs are soaring amid furious bit barn build

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Still plans to invest $75B in CapEx this year as unable to meet capacity demand</h4> <p>Google says the mega capital splurge on datacenters in recent years is putting more strain on its balance sheet due to rising depreciation costs, yet it still plans to splash $75 billion on bit barns in 2025.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/google_admits_depreciation_costs_soaring/>

---

## Virgin Atlantic is piloting an OpenAI agent in to help with the 'customer journey'

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Hello, operator? Book me to Memphis, Tennessee</h4> <p><strong>Interview</strong>  For all the talk of the &#34;agentic era&#34; from AI vendors like OpenAI, Google, Anthropic, Microsoft, and just about everyone else in the space, corporate use of the technology is still tentative. Virgin Atlantic has been conducting flight tests of its website with an AI agent called Operator, and early results are promising, pointing the way toward how agents might actually be used to help customers book flights.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/virgin_agentic_airline_tests_ai/>

---

## Air Force Pilot, SkillBridge Fellow Helps NASA Research Soar

date: 2025-04-25, from: NASA breaking news

Jeremy Johnson laces his black, steel-toed boots and zips up his dark blue flight suit. Having just finished a pre-flight mission briefing with his team, the only thing on his mind is heading to the aircraft hangar and getting a plane in the air. As he eases a small white-and-blue propeller aircraft down the hangar’s [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/glenn/air-force-pilot-skillbridge-fellow-helps-nasa-research-soar/>

---

## Hubble Visits Glittering Cluster, Capturing Its Ultraviolet Light

date: 2025-04-25, from: NASA breaking news

As part of ESA/Hubble’s 35th anniversary celebrations, the European Space Agency (ESA) shared new images that revisited stunning, previously released Hubble targets with the addition of the latest Hubble data and new processing techniques. ESA/Hubble released new images of NGC 346, the Sombrero Galaxy, and the Eagle Nebula earlier in the month. Now they are […] 

<br> 

<https://science.nasa.gov/missions/hubble/hubble-visits-glittering-cluster-capturing-its-ultraviolet-light/>

---

## Europe fires up beefier booster for Ariane 6 and Vega-C

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Successful qualification run for P160C solid-fuel motor in South American spaceport</h4> <p>A qualification version of the P160C solid-fuel motor was successfully tested at the European Spaceport in French Guiana on April 24, paving the way for heftier payloads on the Ariane 6 and Vega rockets.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/beefier_booster_for_ariane_6/>

---

## £136M government grant saves troubled Post Office from suboptimal IT

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Taxpayers foot bill to get to new platform as Fujitsu package balloons to £2.44 billion</h4> <p>The UK&#39;s Post Office would have to cope with suboptimal IT, increased risks and costs, and reduced reporting accuracy if it didn&#39;t receive £136 million ($180 million) in government aid to keep its disastrous Horizon system running and replace it with a more modern platform.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/136_million_government_grant_saves/>

---

## Claims assistance firm fined for cold-calling people who put themselves on opt-out list

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Third-party data supplier also in hot water with Brit regulator over consent issues</h4> <p>Britain&#39;s data privacy watchdog has slapped a fine of £90k ($120k) on a business that targeted people with intrusive marketing phone calls, despite them being registered with the official &#34;Do Not Call&#34; opt-out service.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/claims_assistance_firm_hit_with/>

---

## Techie diagnosed hardware fault by checking customer's coffee

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Volts make jolts</h4> <p><strong>On Call</strong>  By the time Friday morning rolls around, starting the day with a stimulating beverage feels like a fine idea. And so does delivering a freshly brewed installment of On Call, <i>The Register</i>&#39;s reader-contributed column in which you share tales of tech support triumph and torture.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/on_call/>

---

## Darcula adds AI to its DIY phishing kits to help would-be vampires bleed victims dry

date: 2025-04-25, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Because coding phishing sites from scratch is a real pain in the neck</h4> <p>Darcula, a cybercrime outfit that offers a phishing-as-a-service kit to other criminals, this week added AI capabilities to its kit that help would-be vampires spin up phishing sites in multiple languages more efficiently.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/25/darcula_ai/>

---

## New Intel boss is all about ‘de-laborating’ the x86 giant – aka job cuts

date: 2025-04-24, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Thousands face ax, more given RTO orders in quest to suck less</h4> <p>Intel&#39;s new CEO Lip-Bu Tan is swinging the ax again, with another round of layoffs incoming as Chipzilla tries to reboot its core.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/intel_jobs_cuts/>

---

## Oddly, in defense of Google keeping Chrome

date: 2025-04-24, from: OS News

As much as I&#8217;m a fan of breaking up Google, I&#8217;m not entirely sure carving Chrome out of Google without a further plan for what happens to the browser is a great idea. I mean, Google is bad, but things could be so, so much worse. OpenAI would be interested in buying Google&#8217;s Chrome if antitrust enforcers are successful in forcing the Alphabet unit to sell the popular web browser as part of a bid to restore competition in search, an OpenAI executive testified on Tuesday at Google&#8217;s antitrust trial in Washington. ↫ Jody Godoy at Reuters OpenAI is not the only &#8220;AI&#8221; vulture circling the skies. Perplexity Chief Business Officer Dmitry Shevelenko said he didn’t want to testify in a trial about how to resolve Google’s search monopoly because he feared retribution from Google. But after being subpoenaed to appear in court, he seized the moment to pitch a business opportunity for his AI company: buying Chrome. ↫ Lauren Feiner at the Verge Or, you know, what about, I don&#8217;t know, fucking Yahoo!? Legacy search brand Yahoo has been working on its own web browser prototype, and says it would like to buy Google’s Chrome if the company is forced by a court to sell it. ↫ Lauren Feiner at the Verge If the courts really want Google to divest Chrome, the least-worst position it could possibly end up is in some sort of open source foundation or similar legal construction, where no one company has total control over the world&#8217;s most popular browser. Of course, such a construction isn&#8217;t exactly ideal either &#8211; it will become a battleground of corporate interests soaked with the blood of ordinary users &#8211; but anything, anything is better than cud peddlers like OpenAI or whatever the hell Yahoo! even is these days. As users, we really should not want Google to be forced to divest Chrome at this point in time. No matter the outcome, users are going to be screwed even harder than if it were to stay with Google. I hate to say this, but I don&#8217;t see an option that&#8217;s better than having Chrome remain part of Google. The big problem here is that there is no coherent strategy to deal with the big technology companies in the United States. We&#8217;re looking at individual lawsuits where judges and medieval nonsense like juries try to deal with individual companies, which, even if, say, Google gets broken up, would do nothing but strengthen the other big technology companies. If, I don&#8217;t know, Android suddenly had to make it on its own as a company, it&#8217;s not users who would benefit, but Apple. Is that the goal of antitrust? What you really need to deal with the inordinate power of the big technology companies is legislation that deals with the sector as a whole, instead of letting random courts and people forced to do jury duty decide what to do with Google or Amazon or whatever. The European Union is doing this to great success so far, getting all the major players to make sweeping changes to the benefit of users in the EU. If the United States is serious about dealing with the abusive behaviour of the big technology companies, it&#8217;s going to need to draft and pass legislation similar to the European Union&#8217;s DMA and DSA. Of course, that&#8217;s not going to happen. The United States Congress is broken beyond repair, the US president and his gaggle of incompetents are too busy destroying the US economy and infecting children with measles, and the big tech companies themselves are just bribing US politicians in broad daylight. The odds of the US being able to draft and pass effective big tech antitrust regulations is lower than zero. OpenAI Chrome. You feeling better yet about the open web? 

<br> 

<https://www.osnews.com/story/142199/oddly-in-defense-of-google-keeping-chrome/>

---

## Steam to highlight accessibility support for games on store pages

date: 2025-04-24, from: OS News

The Steam store and desktop client will soon be able to help players find games that feature accessibility support. If your game has accessibility features, you can now enter that information in the Steamworks &#8216;edit store&#8217; section for your app. ↫ Steam announcements page I have a lot of criticism for the Steam client application &#8211; it&#8217;s a overly complex, unattractive, buggy, slow, top-heavy Chrome engine wrapped in an ugly user interface &#8211; but this is a great change and very welcome addition to Steam. Basically, with this, game developers can indicate which accessibility features their game has, allowing users to specifically search for those features, create filters, make sure they can play the game before buying, and so on. The client-side part of the feature is not yet available &#8211; it seems Valve is giving developers some time to fill in the necessary information &#8211; but once it is, you&#8217;ll be able to tell at a glance what accessibility a game has. Such information on the store page of games tends to be a great marketing tool, with reviews quickly pointing out if certain expected features are not present. Any game that lacks support for the Steam Deck or Proton, for instance, will often have a few reviews at the top mentioning as such, and games with invasive DRM can&#8217;t get away with that either without reviews on Steam pointing it out. I wouldn&#8217;t be surprised if these accessibility feature listings well quickly become another thing users will simply expect to be there. Regardless, this is great news for people who rely on such features, but even if you don&#8217;t specifically &#8211; accessibility features are often just useful features, period. 

<br> 

<https://www.osnews.com/story/142191/steam-to-highlight-accessibility-support-for-games-on-store-pages/>

---

## NASA Tracks Snowmelt to Improve Water Management

date: 2025-04-24, from: NASA breaking news

As part of a science mission tracking one of Earth’s most precious resources – water – NASA’s C-20A aircraft conducted a series of seven research flights in March that can help researchers track the process and timeline as snow melts and transforms into a freshwater resource. The agency’s Uninhabited Aerial Vehicle Synthetic Aperture Radar (UAVSAR) [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/armstrong/nasa-tracks-snowmelt-to-improve-water-management/>

---

## NASA Marshall Fires Up Hybrid Rocket Motor to Prep for Moon Landings

date: 2025-04-24, from: NASA breaking news

NASA’s Artemis campaign will use human landing systems, provided by SpaceX and Blue Origin, to safely transport crew to and from the surface of the Moon, in preparation for future crewed missions to Mars. As the landers touch down and lift off from the Moon, rocket exhaust plumes will affect the top layer of lunar [&#8230;] 

<br> 

<https://www.nasa.gov/directorates/esdmd/artemis-campaign-development-division/human-landing-system-program/nasa-marshall-fires-up-hybrid-rocket-motor-to-prep-for-moon-landings/>

---

## NASA Marshall Fires Up Hybrid Rocket Motor to Prep for Moon Landings

date: 2025-04-24, from: NASA breaking news

NASA’s Artemis campaign will use human landing systems, provided by SpaceX and Blue Origin, to safely transport crew to and from the surface of the Moon, in preparation for future crewed missions to Mars. As the landers touch down and lift off from the Moon, rocket exhaust plumes will affect the top layer of lunar [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/marshall/nasa-marshall-fires-up-hybrid-rocket-motor-to-prep-for-moon-landings/>

---

## Devs sound alarm after Microsoft subtracts C/C++ extension from VS Code forks

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Cursor, Codium makers lose access as add-on goes exclusive</h4> <p>Microsoft&#39;s C/C++ extension for Visual Studio Code (VS Code) no longer works with derivative products such as VS Codium and Cursor – and some developers are crying foul.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/microsoft_vs_code_subtracts_cc_extension/>

---

## A tour inside the IBM z17

date: 2025-04-24, from: OS News

Welcome to a photo-driven tour of the IBM z17. I&#8217;ve scoured the image library to pull dig deep inside these machines that most people don&#8217;t get an opportunity to see inside, and I&#8217;ll share some of the specifications gleaned from the announcement and related Redbooks. ↫ Elizabeth K. Joseph at the IBM community website These IBM mainframes don&#8217;t have to be beautiful, but they always are. I wish I could see a z17 up close &#8211; hopefully IBM will release a detailed video walkthrough of one of these at some point, including taking one apart and putting it back together. 

<br> 

<https://www.osnews.com/story/142196/a-tour-inside-the-ibm-z17/>

---

## SSNs and more on 5.5M+ patients feared stolen from Yale Health

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>At least it wasn&#39;t Harvard</h4> <p>Yale New Haven Health has notified more than 5.5 million people that their private details were likely stolen by miscreants who broke into the healthcare system&#39;s network last month.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/yale_new_haven_health_breach/>

---

## New York Stock Exchange Welcomes NASA’s SPHEREx Team

date: 2025-04-24, from: NASA breaking news

Members of NASA’s recently launched SPHEREx (Spectro-Photometer for the History of the Universe, Epoch of Reionization and Ices Explorer) mission team participated in the New York Stock Exchange’s closing bell ceremony in New York City on April 22. Michael Thelen, SPHEREx flight system manager at NASA’s Jet Propulsion Laboratory in Southern California, is seen here […] 

<br> 

<https://science.nasa.gov/image-article/new-york-stock-exchange-welcomes-nasas-spherex-team/>

---

## Fedora change proposal would remove the X11 GNOME session from Fedora 43

date: 2025-04-24, from: OS News

I&#8217;m sure this won&#8217;t make anybody mad, and we can all have a reasonable discussion about this. A change proposal for Fedora suggests Fedora should drop the X11 GNOME session from Fedora 43, moving GNOME&#8217;s target of removing X11 in GNOME 50 to the Fedora release carrying GNOME 49. Fedora 43 will be released in roughly six months. The reasoning behind the proposal should be no surprise. This Change effectively implements the GNOME 50 target in GNOME 49 because there is no one to support any issues with GNOME X11 upstream. The X11 session is already quite buggy, with serious unfixed issues in Mutter (like rhbz#2179566 and glgo#GNOME/mutter#3868) and recently Phoronix could not benchmark GNOME X11 vs Wayland because &#8220;GNOME on X11 wasn&#8217;t even working due to bugs&#8221;. Dropping the GNOME X11 session now allows us to reconcile with reality that the GNOME X11 session is simply not supported anymore (either by us or upstream GNOME). ↫ Fedora change proposal If you&#8217;re still using legacy X11 on Fedora GNOME for some reason, upgrading to Fedora 43 would mean being moved to Wayland. If you would want to continue using X11, you&#8217;d need to install a different login manager than GDM, and a desktop environment that still supports X11 (like Cinnamon or Xfce). Since all of this is the plan anyway, what this proposal effectively does is move the removal of X11 from Fedora GNOME ahead by six months. Do note that this is only a change proposal for now, and it will have to be voted on and agreed upon before it becomes official policy. This is just yet another nail in the coffin of X11 on Linux, as more and more distributions and desktop environments move to eliminate it entirely from their installations and stacks in favour of Wayland. Big concerns here for some X11 users are definitely accessibility, where tools are still relatively young, and to a lesser degree NVIDIA users, whose GPU drivers are a bit of a mess when it comes to Wayland. To this day, NVIDIA with Wayland can be very hit or miss. Regardless, we all know which way the wind&#8217;s blowing. 

<br> 

<https://www.osnews.com/story/142194/fedora-change-proposal-would-remove-the-x11-gnome-session-from-fedora-43/>

---

## TacOS: an x86_64 UNIX-like OS from scratch

date: 2025-04-24, from: OS News

TacOS is a UNIX-like kernel which is able to run DOOM, among various other smaller userspace programs. It has things like a VFS, scheduler, TempFS, devices, context switching, virtual memory management, physical page frame allocation, and a port of Doom. It runs both on real hardware (tested on my laptop) and in the Qemu emulator. ↫ TacOS GitHub page TacOS &#8211; great name &#8211; is written in C, and explicitly a hobby and toy project. The code&#8217;s licensed under the Mozilla Public License 2.0. 

<br> 

<https://www.osnews.com/story/142192/tacos-an-x86_64-unix-like-os-from-scratch/>

---

## All Hands for Artemis III

date: 2025-04-24, from: NASA breaking news

A NASA spacesuit glove designed for use during spacewalks on the International Space Station is prepared for thermal vacuum testing inside a one-of-a-kind chamber called CITADEL (Cryogenic Ice Testing, Acquisition Development, and Excavation Laboratory) at NASA’s Jet Propulsion Laboratory in Southern California on Nov. 1, 2023. Part of a NASA spacesuit design called the Extravehicular [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/all-hands-for-artemis-iii/>

---

## Fedora 42 has the Answer, but Ubuntu's Plucky Puffin isn't far behind

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Watch your partitions – GPT and dual-boot don&#39;t always mix</h4> <p>While <em>The Reg</em> FOSS desk was on spring break, both the latest interim Ubuntu and latest Fedora debuted.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/ubuntu_fedora_spring/>

---

## Headquarters and Center Chief Counsel Contacts

date: 2025-04-24, from: NASA breaking news

Headquarters Centers 

<br> 

<https://www.nasa.gov/organizations/headquarters-and-center-chief-counsel-contacts/>

---

## Microsoft mystery folder fix might need a fix of its own

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>This one weird trick can stop Windows updates dead in their tracks</h4> <p>Turns out Microsoft&#39;s latest patch job might need a patch of its own, again. This time, the culprit is a mysterious inetpub folder quietly deployed by Redmond, now hijacked by a security researcher to break Windows updates.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/microsoft_mystery_folder_fix/>

---

## AI training license will allow LLM builders to pay for content they consume

date: 2025-04-24, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>UK org backing it promises &#39;legal certainty&#39; for devs, money for creators... but is it too late?</h4> <p><strong>Updated</strong>  A UK non-profit is planning to introduce a new licensing model which will allow developers of large language models to use copyrighted training data while paying the publishers it represents.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/uk_publishing_body_launches_ai/>

---

## NASA, Boeing, Consider New Thin-Wing Aircraft Research Focus

date: 2025-04-24, from: NASA breaking news

NASA and Boeing are currently evaluating an updated approach to the agency’s Sustainable Flight Demonstrator project that would focus on demonstrating thin-wing technology with broad applications for multiple aircraft configurations. Boeing’s proposed focus centers on a ground-based testbed to demonstrate the potential for long, thin-wing technology. Work on the X-66 flight demonstrator – which currently [&#8230;] 

<br> 

<https://www.nasa.gov/aeronautics/nasa-boeing-new-thin-wing-aircraft/>

---

## NASA Tests Key Spacesuit Parts Inside This Icy Chamber

date: 2025-04-24, from: NASA breaking news

A JPL facility built to support potential robotic spacecraft missions to frozen ocean worlds helps engineers develop safety tests for next-generation spacesuits. When NASA astronauts return to the Moon under the Artemis campaign and eventually venture farther into the solar system, they will encounter conditions harsher than any humans have experienced before. Ensuring next-generation spacesuits [&#8230;] 

<br> 

<https://www.nasa.gov/missions/artemis/artemis-3/nasa-tests-key-spacesuit-parts-inside-this-icy-chamber/>

---

## NASA’s Roman Mission Shares Detailed Plans to Scour Skies

date: 2025-04-24, from: NASA breaking news

NASA’s Nancy Grace Roman Space Telescope team shared Thursday the designs for the three core surveys the mission will conduct after launch. These observation programs are designed to investigate some of the most profound mysteries in astrophysics while enabling expansive cosmic exploration that will revolutionize our understanding of the universe. “Roman’s setting out to do [&#8230;] 

<br> 

<https://www.nasa.gov/missions/roman-space-telescope/nasas-roman-mission-shares-detailed-plans-to-scour-skies/>

---

## Assassin's Creed maker faces GDPR complaint for forcing single-player gamers online

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Collecting data from solo players is a Far Cry from being necessary, says noyb</h4> <p>For anyone who&#39;s ever been frustrated by the need to go online to play a single-player video game, the European privacy specialists at noyb have heard you, and they&#39;ve filed a complaint against Ubisoft in Austria dealing specifically with the issue. …</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/ubisoft_noyb_complaint/>

---

## NASA Orbiter Spots Curiosity Rover Making Tracks to Next Science Stop

date: 2025-04-24, from: NASA breaking news

The image marks what may be the first time one of the agency’s Mars orbiters has captured the rover driving. NASA’s Curiosity Mars rover has never been camera shy, having been seen in selfies and images taken from space. But on Feb. 28 — the 4,466th Martian day, or sol, of the mission — Curiosity [&#8230;] 

<br> 

<https://www.nasa.gov/missions/mars-science-laboratory/nasa-orbiter-spots-curiosity-rover-making-tracks-to-next-science-stop/>

---

## 2025 EGU Hyperwall Schedule

date: 2025-04-24, from: NASA breaking news

EGU General Assembly, April 27 – May 2, 2025 Join NASA in the Exhibit Hall (Booth #204) for Hyperwall Storytelling by NASA experts. Full Hyperwall Agenda below. MONDAY, APRIL 28 TUESDAY, APRIL 29 WEDNESDAY, APRIL 30 THURSDAY, MAY 1 

<br> 

<https://science.nasa.gov/science-research/earth-science/2025-egu-hyperwall-schedule/>

---

## US biz stockpilers boost SK Hynix top line as memory market undergoes structural change

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>&#39;Inventory accumulation&#39; as vendors hoard HBM amid tariff and other pressures</h4> <p>South Korean memory maker SK Hynix is reporting a sales bounce due to the demand for AI systems, helped by US businesses stockpiling HBM supplies amid tariff uncertainty.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/sk_hynix_gets_revenue_boost/>

---

## Decades-old bug in Grand Theft Auto: San Andreas finally shows itself

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Something broke on Windows 11 24H2, but dev who discovered it tells El Reg this time Microsoft&#39;s not to blame</h4> <p>Microsoft&#39;s Windows 11 24H2 update is frustrating some users, but it isn&#39;t the operating system at fault this time. Instead, it&#39;s down to a 20-year-old error in <em>Grand Theft Auto: San Andreas</em>.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/something_broke_on_windows_11/>

---

## NASA Engineering Sparks Innovative New Battery

date: 2025-04-24, from: NASA breaking news

Nickel-hydrogen technology is safe, durable, and long-lasting – now it’s affordable too.  

<br> 

<https://www.nasa.gov/technology/tech-transfer-spinoffs/nasa-engineering-sparks-innovative-new-battery/>

---

## Qualcomm says license fight was because Arm wants to make its own server chips

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Alleges semi designer tried to obstruct Qualy&#39;s build of Arm-compatible custom cores</h4> <p>Qualcomm has amended its complaint against Arm in a 2024 lawsuit, adding more allegations about Arm&#39;s purported breach of license agreements and accusing it of &#34;misrepresenting&#34; their relationship by intending to make its own rival chips.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/qualcomm_arm_licensing_lawsuit_amendment/>

---

## Ninite to win it: How to rebuild Windows without losing your mind

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Get a new, clean (maybe suspiciously empty) install up to speed – and keep it there</h4> <p>When you install a fresh, clean copy of Windows – say, if you&#39;re switching to the LTSC edition – Ninite is here to kickstart provisioning the new OS.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/ninite_rebuild_windows/>

---

## Sustainability still not a high priority for datacenter industry

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Extreme weather is <strong>such</strong> a problem when building bit barns... hmmm, wonder what could be causing that?</h4> <p>When it comes to building datacenters, reducing the environmental impact of the project is still not seen as a major concern – it is lower on the list than cost of equipment and materials, skills shortages, a possible downturn in projects, and even bad weather.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/sustainability_still_not_a_high/>

---

## M&amp;S takes systems offline as 'cyber incident' lingers

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Customers told to expect further delays as contactless payments still down</h4> <p>UK high street retailer Marks &amp; Spencer says contactless payments are still down following its &#34;cyber incident&#34; and order delays are likely to continue.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/marks_spencer_outage_ongoing/>

---

## Your vendor may be the weakest link: Percentage of third-party breaches doubled in a year

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Cybercriminals are targeting software shops, accountants, lawyers</h4> <p>The percentage of confirmed data breaches involving third-party relationships doubled last year as cybercriminals increasingly exploited weak links in supply chains and partner ecosystems.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/security_snafus_third_parties/>

---

## Vector search is the new black for enterprise databases

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Software slingers from Redis to Teradata are bolting on smarts to stay relevant in GenAI era</h4> <p>About two years ago, popular cache database Redis was among a wave of vendors that added vector search capabilities to their platforms, driven by the surge of interest in generative AI.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/database_vector_search/>

---

## Booby-trapped Alpine Quest Android app geolocates Russian soldiers

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Back of the nyet!</h4> <p>Russian soldiers are being targeted with an Android app specially altered to pinpoint their location and scan their phones for files, with the ability to exfiltrate sensitive documents if instructed.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/hacked_alpine_quest_android_app/>

---

## Hyperconverged infrastructure is so hot right now it needs liquid cooling

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Lenovo brings its Neptune cold plates to servers packing sixth-gen Xeons to run VMware, Nutanix, and AzureStack</h4> <p>Hyperconverged infrastructure most often involves a collection of modest 2U servers powered by mid-range processors that aren’t particularly challenging to operate. But Lenovo’s new models packing Xeon 6 processors may need liquid cooling.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/lenovo_hci_liquid_cooled/>

---

## India’s services giants brace for impact as US tariffs bite their customers

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Wipro was forced to pause an active SAP project due to client’s jitters</h4> <p>India’s big four IT services players are all concerned that the USA’s new tariffs regime may see some of their customers spend less on tech – but later spend more to cope with whatever changes are needed to compete in a changed global trade system.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/infosys_tcs_wipro_hcl_tariff_impact_results/>

---

## Ransomware scum and other crims bilked victims out of a 'staggering' $16.6B last year, says FBI

date: 2025-04-24, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Biggest threat to America&#39;s critical infrastructure? Ransomware</h4> <p>Digital scammers and extortionists bilked businesses and individuals in the US out of a &#34;staggering&#34; $16.6 billion last year, according to the FBI — the highest losses recorded since bureau’s Internet Crime Complaint Center (IC3) started tracking them 25 years ago.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/24/ransomware_scum_and_other_crims/>

---

## IBM dragged down by DOGE contract cancellation roulette

date: 2025-04-23, updated: 2025-04-25, from: The Register (UK I.T. News)

<h4>Big Blue downplays impact of Elon-gated cost-cutting</h4> <p>IBM beat Wall Street&#39;s expectations for both revenue and income in the first quarter of 2025, but its stock price still dropped more than six percent in after-hours trading.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/ibm_q1_2025_doge/>

---

## How a 20 year old bug in GTA San Andreas surfaced in Windows 11 24H2

date: 2025-04-23, from: OS News

The headline sets the stage, and the article delivers. This was the most interesting bug I’ve encountered for a while. I initially had a hard time believing that a bug like this would directly tie to a specific OS release, but I was proven completely wrong. At the end of the day, it was a simple bug in San Andreas and this function should have never worked right, and yet, at least on PC it hid itself for two decades. This is an interesting lesson in compatibility: even changes to the stack layout of the internal implementations can have compatibility implications if an application is bugged and unintentionally relies on a specific behavior. This is also not the first time I encountered issues like this: regular visitors might remember Bully: Scholarship Edition which famously broke on Windows 10, for very similar reasons. Just like in this case, Bully should have never worked properly to begin with, but instead, it got away with making incorrect assumptions for years, before changes in Windows 10 finally made it run out of luck. ↫ Adrian Zdanowicz Incredible story. 

<br> 

<https://www.osnews.com/story/142189/how-a-20-year-old-bug-in-gta-san-andreas-surfaced-in-windows-11-24h2/>

---

## Microsoft 365 Copilot gets a new crew, including Researcher and Analyst bots

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>You. Will. Love. The. LLM.</h4> <p>The latest update to Microsoft 365 Copilot brings AI-powered search, so-called reasoning agents, and a new Agent Store. Some users already have access to certain features, while others may have to wait through May.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/microsoft_365_copilot_agent_refresh/>

---

## Blue Shield says it shared health info on up to 4.7M patients with Google Ads

date: 2025-04-23, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Tech giants don&#39;t need smartphone mics to target adverts – your insurer just gives your data away, anyway</h4> <p>US health insurance giant Blue Shield of California handed sensitive health information belonging to as many as 4.7 million members to Google&#39;s advertising empire, likely without these individuals&#39; knowledge or consent.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/blue_shield_leaked_info_google/>

---

## AI bigwigs urge AGs to block OpenAI's profit pivot

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>Elon’s not the only one sounding the alarm over the AI giant’s cash grab</h4> <p>A group of AI heavyweights and ex-OpenAI staffers are urging the attorneys general of California and Delaware to block the ChatGPT shop&#39;s latest restructuring into a for-profit corporation. …</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/openai_for_profit_stop_urged/>

---

## NASA Astronaut to Answer Questions from Students in California

date: 2025-04-23, from: NASA breaking news

Students from Santa Monica, California, will connect with NASA astronaut Jonny Kim as he answers prerecorded science, technology, engineering, and mathematics-related questions aboard the International Space Station. Watch the 20-minute space-to-Earth call at 12:10 p.m. EDT on Tuesday, April 29, on the NASA STEM YouTube Channel. Media interested in covering the event must RSVP by [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-astronaut-to-answer-questions-from-students-in-california/>

---

## The wonderful world of Linux package managers

date: 2025-04-23, from: OS News

One of the strong points of Linux has always been how solid the experience of installing and managing software is. Contrarily to what happens in the Windows and macOS world, software on Linux is obtained through something called a package manager, a piece of software that manages any piece of software the user installs, as well as its dependencies, automatically. ↫ Luca Bramè at Libre.News It truly is. I can&#8217;t imagine using any operating system that relies (almost) exclusively on me going out to individual websites to download random installers or disk images, all with their own unique update mechanisms I need to keep track of, that eat up resources and interrupt my workflow. The combination of Fedora&#8217;s repository&#8217;s with the odd Copr or Flatpak package &#8211; all managed transparently through KDE&#8217;s Discover &#8211; is effectively perfect. I never have to manually install anything, nor do I ever have to rely on tarballs like back in the dark ages. Dealing with a Windows or macOS machine is a nightmare compared to this. Managing applications on those operating systems feels hopelessly archaic and outdated, and I have no idea how users tolerate that kind of nonsense. They&#8217;ve got a dozen or more updaters running in the background, cluttering up the system tray and eating resources, or whenever they open an application they get an annoying popup interrupting their work to ask them to update. It&#8217;s barbaric and user-hostile, and nobody should be dealing with that in 2025. It&#8217;s also highly unlikely things will ever improve for Windows or macOS users, since any attempt to bolt a package manager into them invariably fails. The official Windows and macOS application stores have been abject failures in more ways than one, and tools like winget are just glorified download managers that run regular installers in silent mode &#8211; incredibly crude and only really good for batch-downloading some installers. The Linux world is far from perfect, but they nailed application management early on, and the competition has basically sat still ever since. 

<br> 

<https://www.osnews.com/story/142185/the-wonderful-world-of-linux-package-managers/>

---

## NASA’s Lucy Spacecraft Images Asteroid Donaldjohanson

date: 2025-04-23, from: NASA breaking news

NASA’s Lucy spacecraft took this image of the main belt asteroid Donaldjohanson during its flyby on April 20, 2025, showing the elongated contact binary (an object formed when two smaller bodies collide). This was Lucy’s second flyby in the spacecraft’s 12-year mission.&#160; Launched on Oct. 16, 2021, Lucy is the first space mission sent to [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/nasas-lucy-spacecraft-images-asteroid-donaldjohanson/>

---

## Hey Google, if Chrome is going to be single soon, OpenAI is interested

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>ChatGPT maker to join line of suitors if Chocolate Factory forced to offload browser</h4> <p>OpenAI&#39;s head of product for ChatGPT has flung the company&#39;s hat into the ring as a potential suitor for Google&#39;s Chrome browser should the search giant be forced to divest itself of the application.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/openai_chrome_interest/>

---

## As ChatGPT scores B- in engineering, professors scramble to update courses

date: 2025-04-23, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Now that AI is invading classrooms and homework assignment, students need to learn reasoning more than ever</h4> <p>Students are increasingly turning to AI to help them with coursework, leaving academics scrambling to adjust their teaching practices or debating how to ban it altogether.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/whats_worth_teaching_when_ai/>

---

## Ripple NPM supply chain attack hunts for private keys

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>A mystery thief and a critical CVE involved in crypto cash grab</h4> <p>Many versions of the Ripple ledger (XRPL) official NPM package are compromised with malware injected to steal cryptocurrency.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/ripple_npm_supply_chain/>

---

## We’re calling it now: Agentic AI will win RSAC buzzword Bingo

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>All aboard the hype train</h4> <p>The security industry loves its buzzwords, and this is always on full display at the annual RSA Conference event in San Francisco. Don&#39;t believe us? Take a lap on the expo floor, and you&#39;ll be bombarded with enough acronyms and over-the-top claims to send you straight to the nearest bar, which will likely serve specialty cocktails with names like The Great CASB and Firewall Fizz.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/agentic_ai_rsac/>

---

## Sols 4518-4519: Thumbs up from Mars

date: 2025-04-23, from: NASA breaking news

Written by Susanne Schwenzer, Planetary Geologist at The Open University Earth planning date: Monday, 21st April 2025 It is Easter Monday, a bank holiday here in the United Kingdom. I am Science Operations Working Group Chair today, a role that is mainly focused on coordinating all the different planning activities on a given day, and […] 

<br> 

<https://science.nasa.gov/blog/sols-4518-4519-thumbs-up-from-mars/>

---

## Tesla's Optimus can't roll without rare earth magnets, and Beijing ain't budging yet

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>Officials seek assurances that bot won&#39;t be used for military applications</h4> <p>Elon Musk says supply chain disruption in China held up delivery of a key component for Tesla&#39;s &#34;Optimus&#34; robot, with authorities reportedly demanding an export license and guarantees about military applications.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/tesla_optimus_china/>

---

## NASA Airborne Sensor’s Wildfire Data Helps Firefighters Take Action

date: 2025-04-23, from: NASA breaking news

Data from the AVIRIS-3 sensor was recently used to create detailed fire maps in minutes, enabling firefighters in Alabama to limit the spread of wildfires and save buildings. A NASA sensor recently brought a new approach to battling wildfire, providing real-time data that helped firefighters in the field contain a blaze in Alabama. Called AVIRIS-3, [&#8230;] 

<br> 

<https://www.nasa.gov/science-research/earth-science/nasa-airborne-sensors-wildfire-data-helps-firefighters-take-action/>

---

## Only 3,000 staff jump from SAP after 10,000 earmarked to be pushed

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>CFO says &#39;a cushion of several thousand employees we can play with&#39; is a good thing in uncertain times</h4> <p>SAP says 3,000 people have left the company in its restructuring plan but that it will wait to see if more employees might be affected after US tariff policies introduced global economic uncertainty.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/sap_staff_cuts/>

---

## European Commission: Apple’s ‘Core Technology Fee’ and other hurdles are illegal under the DMA

date: 2025-04-23, from: OS News

The fines weren&#8217;t the only Digital Markets Act news coming from this fine continent today. The European Commission also closed its investigation into Apple&#8217;s user choice obligations under the DMA, and while Apple has made good progress in a few areas, the EC states Apple is still acting illegally in a variety of others. First, the good news for Apple: the European Commission is happy with Apple&#8217;s changes regarding browser choice, the ability to remove preinstalled iOS applications, and the ability to change a whole bunch of default settings that are all locked outside of the EU. These are valuable and welcome changes, and I&#8217;m glad the European Union, the European Parliament, and the Commission have forced Apple to become less hostile to European consumers. Second, there&#8217;s the bad news for Apple. Under the DMA, Apple is obligated to allow for third-party application stores, and the ability for users to download and install applications directly from the internet. In this area, Apple is still breaking European Union law. The Commission takes the preliminary view that Apple failed to comply with this obligation in view of the conditions it imposes on app (and app store) developers. Developers wanting to use alternative app distribution channels on iOS are disincentivised from doing so as this requires them to opt for business terms which include a new fee (Apple&#8217;s Core Technology Fee). Apple also introduced overly strict eligibility requirements, hampering developers&#8217; ability to distribute their apps through alternative channels. Finally, Apple makes it overly burdensome and confusing for end users to install apps when using such alternative app distribution channels. ↫ European Commission press release This outcome was entirely expected, and pretty much everyone &#8211; except Apple&#8217;s PR attack dogs &#8211; knew Apple&#8217;s malicious compliance, fees, and onerous hurdles were going to be a hard sell. I&#8217;m glad the European Commission seems unimpressed with Trump&#8217;s sabre-rattling about the EU&#8217;s consumer protection laws, and is continuing to whip US tech companies in line, making sure they stop violating our consumer protection laws. Since these are the outcomes of a preliminary investigation, Apple now has the chance to argue its case. 

<br> 

<https://www.osnews.com/story/142183/european-commission-apples-core-technology-fee-and-other-hurdles-are-illegal-under-the-dma/>

---

## Europe hits Meta, Apple with €700M in fines for flouting DMA

date: 2025-04-23, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Bad timing, claim industry watchers, who say rulings could seriously upset an already delicate US-EU relationship</h4> <p>Meta and Apple have earned the dubious honor of being the first companies fined for non-compliance with the EU&#39;s Digital Markets Act, which experts say could inflame tensions between US President Donald Trump and the European bloc.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/meta_apple_dma_ruling/>

---

## Apple fined for €500 million by EC, Facebook for €200 million

date: 2025-04-23, from: OS News

The European Commission has levied fines against both Apple and Facebook for violating the Digital Markets Act. Apple has to pay a €500 million fine, and Facebook a €200 million fine. Apple is breaking EU law by not allowing application developers to inform users of other offers outside the App Store. The Commission found that Apple fails to comply with this obligation. Due to a number of restrictions imposed by Apple, app developers cannot fully benefit from the advantages of alternative distribution channels outside the App Store. Similarly, consumers cannot fully benefit from alternative and cheaper offers as Apple prevents app developers from directly informing consumers of such offers. The company has failed to demonstrate that these restrictions are objectively necessary and proportionate. ↫ European Commission press release Not only is Apple ordered to pay the €500 million fine, they also have to remove any and all of the illegal restrictions they put in place. Facebook, meanwhile, was fined for not offering an equally functional services but without combining user data from different services. The company did offer a choice between paying and not paying &#8211; whereby the latter involved data collection and combination &#8211; but this model violated the DMA. The Commission found that this model is not compliant with the DMA, as it did not give users the required specific choice to opt for a service that uses less of their personal data but is otherwise equivalent to the ‘personalised ads&#8217; service. Meta&#8217;s model also did not allow users to exercise their right to freely consent to the combination of their personal data. ↫ European Commission press release Facebook did later amend their model to make it compliant with the DMA, and so the fine only covers the few months Facebook was violating EU law. Fun additional note: the EC also mentions that the Facebook Marketplace is no longer a gatekeeper service under the DMA, since its user numbers has dropped below the threshold. Facebook seems to be having some engagement issues in Europe, and you love to hear it. Both companies are required to pay and comply within 60 days, or further periodic penalty payments will be levied. 

<br> 

<https://www.osnews.com/story/142181/apple-fined-for-e500-million-by-ec-facebook-for-e200-million/>

---

## Improving Deep Learning With a Little Help From Physics

date: 2025-04-23, from: Quanta Magazine

Rose Yu has a plan for how to make AI better, faster and smarter — and it’s already yielding results.            <p>The post <a href="https://www.quantamagazine.org/improving-deep-learning-with-a-little-help-from-physics-20250423/" target="_blank">Improving Deep Learning With a Little Help From Physics</a> first appeared on <a href="https://www.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<br> 

<https://www.quantamagazine.org/improving-deep-learning-with-a-little-help-from-physics-20250423/>

---

## NASA Collaborates to Enable Spectrum-Dependent Science, Exploration, and Innovation

date: 2025-04-23, from: NASA breaking news

In our modern wireless world, almost all radio frequency (RF) spectrum bands are shared among multiple users. In some domains, similar users technically coordinate to avoid interference. The spectrum management team, part of NASA’s SCaN (Space Communications and Navigation) Program, represents the collaborative efforts across U.S. agencies and the international community to protect and enable [&#8230;] 

<br> 

<https://www.nasa.gov/general/nasa-collaborates-to-enable-spectrum-dependent-science-exploration-and-innovation/>

---

## Management and Regulation Ensure Effective Spectrum Sharing

date: 2025-04-23, from: NASA breaking news

Spectrum is a shared resource. Since the discovery of radio waves and the invention of the telegraph, humanity has exponentially increased its use of the radio frequency (RF) spectrum.  Consider how many wireless devices are around you right now.  You’re probably reading this on a smartphone or laptop connected to the internet through Wi-Fi or [&#8230;] 

<br> 

<https://www.nasa.gov/general/management-and-regulation-ensure-effective-spectrum-sharing/>

---

## NASA’s Use of the Radio Frequency Spectrum

date: 2025-04-23, from: NASA breaking news

As associate administrator for NASA’s Space Operations Mission Directorate Ken Bowersox puts it, “nothing happens without communications.”&#160;&#160; And effective communications require the use of radio waves.&#160;&#160; None of NASA’s exciting science and engineering endeavors would be possible without the use of radio waves to send data, communications, and commands between researchers or flight controllers and [&#8230;] 

<br> 

<https://www.nasa.gov/general/nasas-use-of-the-radio-frequency-spectrum/>

---

## NASA Astronaut Don Pettit to Discuss Seven-Month Space Mission

date: 2025-04-23, from: NASA breaking news

Media are invited to a news conference at 2 p.m. EDT Monday, April 28, at NASA’s Johnson Space Center in Houston where astronaut Don Pettit will share details of his recent mission aboard the International Space Station. The news conference will stream live on NASA’s website. Learn how to stream NASA content through a variety [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-astronaut-don-pettit-to-discuss-seven-month-space-mission/>

---

## Eye on Infinity: NASA Celebrates Hubble’s 35th Year in Orbit

date: 2025-04-23, from: NASA breaking news

In celebration of the Hubble Space Telescope’s 35 years in Earth orbit, NASA is releasing an assortment of compelling images recently taken by Hubble, stretching from the planet Mars to star-forming regions, and a neighboring galaxy. After more than three decades of perusing the universe, Hubble remains a household name — the most well-recognized and […] 

<br> 

<https://science.nasa.gov/missions/hubble/nasa-celebrates-hubbles-35th-year-in-orbit/>

---

## NASA Stennis Continues Prep for Future Artemis Testing

date: 2025-04-23, from: NASA breaking news

Crews at NASA’s Stennis Space Center recently completed activation of interstage gas systems needed for testing a new SLS (Space Launch System) rocket stage to fly on future Artemis missions to the Moon and beyond. The activation marks a milestone in preparation for future Green Run testing of NASA’s exploration upper stage (EUS) in the [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/stennis-continues-prep-for-future-artemis-testing/>

---

## Nvidia rolls out NeMo microservices to help AI help you help AI

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>Smarter agents, continuous updates, and the eternal struggle to prove ROI</h4> <p>As Nvidia releases its NeMo microservices to embed AI agents into enterprise workflows, research has found that almost half of businesses are seeing only minor gains from their investments in AI.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/nvidia_nemo_microservices/>

---

## Nine Finalists Advance in NASA’s Power to Explore Challenge

date: 2025-04-23, from: NASA breaking news

NASA has named nine finalists out of the 45 semifinalist student essays in the Power to Explore Challenge, a national writing competition for K-12 students featuring the enabling power of radioisotopes. Contestants were challenged to explore how NASA has powered some of its most famous science missions, and to dream up how their personal “superpowers” […] 

<br> 

<https://science.nasa.gov/technology/rps/nine-finalists-advance-in-nasas-power-to-explore-challenge/>

---

## Who needs phishing when your login's already in the wild?

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>Stolen credentials edge out email tricks for cloud break-ins because they&#39;re so easy to get</h4> <p>Criminals used stolen credentials more frequently than email phishing to gain access into their victims&#39; IT systems last year, marking the first time that compromised login details claimed the number two spot in Mandiant&#39;s list of most common initial infection vectors.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/stolen_credentials_mandiant/>

---

## When Microsoft made the Windows as a Service pivot

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>Former Microsoft engineer calls the Windows of today &#39;a tool that&#39;s a bit of an adversary&#39;</h4> <p><strong>Comment</strong>  Former Microsoft engineer Dave Plummer has weighed in on why Microsoft moved from paid upgrades to Windows as a Service. As ever, the old adage applies – when the product is free, the product is probably you……</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/when_microsoft_made_the_windows/>

---

## European biz calls for Euro tech for local people

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>&#39;Europe Stand Tall&#39; campaign kicks off amid fear, uncertainty and doubt about Trump administration</h4> <p>Danish consultancy Netcompany is the latest European business to warn of dependency on US technology as unpredictability in the White House continues to eat away at trust in the country overseas.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/european_biz_open_letter/>

---

## Ex-NSA chief warns AI devs: Don’t repeat infosec’s early-day screwups

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>Bake in security now or pay later, says Mike Rogers</h4> <p>AI engineers should take a lesson from the early days of cybersecurity and bake safety and security into their models during development, rather than trying to bolt it on after the fact, according to former NSA boss Mike Rogers.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/exnsa_boss_ai/>

---

## Fujitsu promised to sit out UK deals ... then Northern Ireland called with £125M

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>Despite Horizon fallout, Japanese supplier continues to win public sector work</h4> <p>Fujitsu has won a £125 million ($167 million) contract to build Northern Ireland&#39;s new land registry system, despite promising not to bid for UK public sector work in the wake of the Post Office Horizon scandal.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/fujitsu_northern_reland/>

---

## America's cyber defenses are being dismantled from the inside

date: 2025-04-23, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>The CVE system nearly dying shows that someone has lost the plot</h4> <p><strong>Opinion</strong>  We almost lost the Common Vulnerabilities and Exposures (CVE) database system, but that&#39;s only the tip of the iceberg of what President Trump and company are doing to US cybersecurity efforts.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/trump_us_security/>

---

## NTT creates a drone that triggers and catches lightning – then keeps flying

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>Because nobody wants a bazillion volts zorching critical infrastructure</h4> <p>Japanese tech conglomerate NTT has created a drone that triggers lightning, is then struck by a heavenly bolt it instigated, and survives the experience – all in the name of preventing damage from natural lightning.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/ntt_lightning_drone/>

---

## Boeing offloads some software businesses to private equiteer Thoma Bravo

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>Ten billion bucks coming in for a soft landing, customers may be about to experience a bumpy ride</h4> <p>Beleaguered aerospace giant Boeing has sold some of its “Digital Aviation Solutions” portfolio to private equity outfit Thoma Bravo.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/boeing_thoma_bravo_software_sale/>

---

## Asia reaches 50 percent IPv6 capability and leads the world in user numbers

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>India and China deliver a nice milestone, with help from ancient internet history</h4> <p>Asia has become the second region in the world to reach 50 percent IPv6 capability, according to data from labs run by the Asia Pacific Network Information Center (APNIC).…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/apnic_half_ipv6_capable/>

---

## India gets Google to unbundle Android and the Play Store on Smart TVs

date: 2025-04-23, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>Meanwhile, OpenAI expresses an interest in unbundling Chrome from Google</h4> <p>Google has agreed to unbundle its Play Store and Android operating system in India, but only on smart TVs, and will also cough up a $2.4 million fine after being found to have breached competition law.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/india_google_antitrust_android_unbundling/>

---

## Trump blinks: 'Substantially' lower China tariffs promised

date: 2025-04-23, updated: 2025-04-24, from: The Register (UK I.T. News)

<h4>Detail? Rationale? Timeline? Nope! It&#39;s the art of the squeal</h4> <p><strong>World War Fee</strong>  President Donald Trump on Tuesday said his administration plans to lower the 145 percent tariffs it levies on goods imported into America from China, continuing his pattern of unpredictable shifts in policy.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/23/us_china_tariff_reduction_plan/>

---

## Elon Musk makes another cut – to his time at DOGE

date: 2025-04-22, updated: 2025-04-23, from: The Register (UK I.T. News)

<h4>Going to spend more time with his Sieg Heils, maybe</h4> <p>Government fixer Elon Musk says his days steering the Trump-blessed cost-trimming, data-scouring DOGE unit are all but done.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/elon_musk_doge/>

---

## Dentists sue ex-contractor for holding web domains hostage in biz fight

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>IT guy says their claims are toothless – and they owe him $400K</h4> <p>A group of pediatric dental practices in North Carolina have accused a longtime contractor of refusing to return control of several web domains after his contract was terminated.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/fired_dental_clinic_administrator_sued/>

---

## Linux on IBM Z and LinuxONE open source software report

date: 2025-04-22, from: OS News

Linux on IBM Z and IBM LinuxONE use the s390x hardware architecture to run various Linux distributions, including SUSE Linux Enterprise Server (SLES), Red Hat Enterprise Linux (RHEL), and Ubuntu. Tens of thousands of software packages are tested and distributed through these projects, and various community distributions. ↫ Elizabeth K. Joseph at the IBM community website Various Linux distributions are available for the s390x architecture, but physical access to such hardware from IBM is, of course, relatively limited. As such, it&#8217;s great that IBM tests a variety of open source packages for Linux on s390x, and details the results. If you go to this table, you&#8217;ll find the detailed list of tested packages, which mostly focuses on development and enterprise software. IBM also offers virtual machine access to s390x hardware, and you can get such access for free for 120 days, allowing you to test Red Hat, SUSE, and Ubuntu on IBM Z and IBM LinuxONE. This could definitely make for a fun weekend project to mess around with. 

<br> 

<https://www.osnews.com/story/142178/linux-on-ibm-z-and-linuxone-open-source-software-report/>

---

## The mysterious inetpub folder is actually a crucial part of a Windows security fix

date: 2025-04-22, from: OS News

Remember the odd inetpub folder that seemingly randomly appeared on people&#8217;s root drives after installing a Windows 11 update? Everybody assumed it was something left over from an update script, and that the folder was safe to remove. Well, it turns out that&#8217;s not the case, as the empty folder is actually a crucial part of a security fix for a serious vulnerability. Initially undocumented in the official release notes, the empty and seemingly inactive inetpub folder led to user speculation about whether it was a leftover artifact from development or a bug. Microsoft has since clarified that the folder is intentional and part of a critical security improvement. The change addresses CVE-2025-21204, a vulnerability that allowed local attackers to exploit symbolic link (symlink) attacks via Windows Update, potentially granting unauthorized access to protected system files or directories. As part of the fix, the system pre-creates certain directories — including C:\inetpub — to harden the update process and mitigate such attacks. ↫ Cyberdom If you&#8217;ve already removed the folder, you can reinstall the April 2025 cumulative update to restore the folder, or you can wait for next month&#8217;s update roll-up, which will also restore the folder. This lone, empty folder at your Windows PC&#8217;s root is apparently a crucial part of the security of your computer, but since it took Microsoft a while to publish release notes, nobody knew where it was coming from. The idea that a random, empty folder usually associated with IIS could be part of a vulnerability mitigation didn&#8217;t cross anybody&#8217;s mind at the time, especially since random folders appearing at a Windows PC&#8217;s root aren&#8217;t exactly uncommon or out of the ordinary. The consensus seems to be that creating this folder is a pretty clever form of mitigation, despite feeling so hacky. I&#8217;m assuming Microsoft&#8217;s engineers are capable, and that making the folder in question impossible to delete or somehow hidden is simply not an option and would break the vulnerability mitigation, but that doesn&#8217;t change the fact that this looks like a really crude hack that should be solved in a more elegant way. 

<br> 

<https://www.osnews.com/story/142176/the-mysterious-inetpub-folder-is-actually-a-crucial-part-of-a-windows-security-fix/>

---

## US to slap up to 3,521% tariffs on SE Asian solar imports – especially you, Cambodia

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>Uncle Sam says Chinese factories use proxies to dodge import taxes</h4> <p><strong>world war fee</strong>  Solar panels made in a number of Southeast Asian countries face massive new import duties into America, some as steep as 3,521 percent, after a US Department of Commerce probe apparently found the countries were being used as tariff-dodging proxies for Chinese state-subsidized manufacturers.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/us_solar_cells_tariffs/>

---

## RIP, Google Privacy Sandbox

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>Chrome will keep third-party cookies, a win for web giant&#39;s ad rivals</h4> <p>After six years of work, Google&#39;s Privacy Sandbox, technology for delivering ads while protecting privacy, looks like dust in the wind.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/google_privacy_sandbox/>

---

## Two CISA officials jump ship, both proud of pushing for Secure by Design software

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>As cyber-agency faces cuts, makes noises about switching up program</h4> <p>Two top officials have resigned from Uncle Sam&#39;s Cybersecurity and Infrastructure Security Agency, aka CISA, furthering fears of a brain drain amid White House cuts to the federal workforce.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/top_cisa_officials_jump_ship/>

---

## NASA Wins Six Webby Awards, Six Webby People’s Voice Awards

date: 2025-04-22, from: NASA breaking news

NASA was recognized today by the 29th Annual Webby Awards with six Webby Awards and six Webby People’s Voice Awards, the latter of which&#160;are&#160;awarded&#160;by the voting public. The Webbys honors excellence in eight major media types: websites and mobile sites; video and film; advertising, media and public relations; apps and software; social; podcasts; artificial intelligence, [&#8230;] 

<br> 

<https://www.nasa.gov/general/nasa-wins-six-webby-awards-six-webby-peoples-voice-awards/>

---

## Planetary Alignment Provides NASA Rare Opportunity to Study Uranus

date: 2025-04-22, from: NASA breaking news

When a planet’s orbit brings it between Earth and a distant star, it’s more than just a cosmic game of hide and seek. It’s an opportunity for NASA to improve its understanding of that planet’s atmosphere and rings. Planetary scientists call it a stellar occultation and that’s exactly what happened with Uranus on April 7. [&#8230;] 

<br> 

<https://www.nasa.gov/general/planetary-alignment-provides-nasa-rare-opportunity-to-study-uranus/>

---

## Fog ransomware channels Musk with demands for work recaps or a trillion bucks

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>In effect: &#39;Ha ha – the government is borked and so are you&#39;</h4> <p>Ransomware scumbags - potentially those behind the Fog gang - are channeling their inner Elon Musk with their latest ransom note, spotted by researchers at Trend Micro.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/fog_ransomware_musk/>

---

## A pot of $250K is now available to ransomware researchers, but it feeds a commercial product

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>Security bods can earn up to $10K per report</h4> <p>Ransomware threat hunters can now collect rewards of $10,000 for each piece of intel they file under a new bug bounty that aims to squash extortionists.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/security_researchers_can_earn_250k/>

---

## First Results from the Eclipse Soundscapes Project: Webinar on May 7

date: 2025-04-22, from: NASA breaking news

How do the sudden darkness and temperature changes of a solar eclipse impact life on Earth? The Eclipse Soundscapes project invited you to document changes in the environment during the week of the April 8, 2024 total solar eclipse, using your own senses or an audiomoth sound recorder.  Thanks to your participation, the Eclipse Soundscapes […] 

<br> 

<https://science.nasa.gov/get-involved/citizen-science/first-results-from-the-eclipse-soundscapes-project-webinar-on-may-7/>

---

## Sunshine on Earth

date: 2025-04-22, from: NASA breaking news

The Sun&#8217;s glint beams off a partly cloudy Atlantic Ocean just after sunrise as the International Space Station orbited 263 miles above on March 5, 2025. The space station serves as a unique platform for observing Earth with both hands-on and automated equipment. Station crew members have produced hundreds of thousands of images, recording phenomena [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/sunshine-on-earth/>

---

## This is not just any 'cyber incident' … this is an M&amp;S 'cyber incident'

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>Retailer tight-lipped on details as digital hiccup disrupts customer orders</h4> <p>UK high street mainstay Marks &amp; Spencer told the London Stock Exchange this afternoon it has been managing a &#34;cyber incident&#34; for &#34;the past few days.&#34;…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/marks_spencer_cyber_incident/>

---

## UN says Asian scam call center epidemic expanding globally amid political heat

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>What used to be a serious issue mainly in Southeast Asia is now the world’s problem</h4> <p>Scam call centers are metastasizing worldwide &#34;like a cancer,&#34; according to the United Nations, which warns the epidemic has reached a global inflection point as syndicates scale up and spread out.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/un_asian_scam_calls/>

---

## Planet Sizes and Locations in Our Solar System

date: 2025-04-22, from: NASA breaking news

Our solar system has eight planets, and five officially recognized dwarf planets. Which planet is biggest? Which is smallest? What is the order of the planets as we move out from the Sun? This is a simple guide to the sizes of planets based on the equatorial diameter – or width – at the equator […] 

<br> 

<https://science.nasa.gov/solar-system/planets/planet-sizes-and-locations-in-our-solar-system/>

---

## Animal That Once Lived With Dinosaurs Helps Keep NASA Kennedy In Balance

date: 2025-04-22, from: NASA breaking news

They’re known as “living fossils”. For over 450 million years, horseshoe crabs have been an ecologically vital part of our planet. They’re one of the few surviving species on Earth dating back to the dinosaurs. At NASA’s Kennedy Space Center in Florida, the American horseshoe crab (Limulus polyphemus) is one of more than 1,500 types [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/kennedy/animal-that-once-lived-with-dinosaurs-helps-keep-nasa-kennedy-in-balance/>

---

## Windows Recall failed the moose test, and nobody will ever forget it

date: 2025-04-22, from: OS News

Ars Technica took a look at how the current version of Windows Recall works, including the improvements Microsoft made since the initial security nightmare of a rollout, and concludes: Recall continues to demand an extraordinary level of trust that Microsoft hasn&#8217;t earned. However secure and private it is—and, again, the version people will actually get is much better than the version that caused the original controversy—it just feels creepy to open up the app and see confidential work materials and pictures of your kid. You&#8217;re already trusting Microsoft with those things any time you use your PC, but there&#8217;s something viscerally unsettling about actually seeing evidence that your computer is tracking you, even if you&#8217;re not doing anything you&#8217;re worried about hiding, even if you&#8217;ve excluded certain apps or sites, and even if you &#8220;know&#8221; that part of the reason why Recall requires a Copilot+ PC is because it&#8217;s processing everything locally rather than on a server somewhere. ↫ Andrew Cunningham at Ars Technica Way back in 1996, Mercedes-Benz unveiled the A-Class, a small, practical car that purported to be more premium than cheaper, similarly-sized cars from other brands. The car had a big problem, though &#8211; it was unusually narrow and tall, and because of it, it famously failed spectacularly at the &#8220;moose test&#8221;, in which a car has to suddenly swerve around a &#8220;moose&#8221; on the road. The car simply toppled over, and after initially denying the problem, Mercedes recalled every single A-Class sold and added a variety of mitigations like electronic stability control and suspension changes. As far as I can recall, it fixed the issue. To this day, however, I cannot look at an A-Class, even the modern ones which look like normal hatchbacks and bear effectively zero resemblance to the original, quirky A-Class from 1996, and not think of the failed moose test and the recall. I know the modern A-Class won&#8217;t fail that test, and I know it&#8217;s an infinitely safer car than the original one, but my brain still makes that connection every time I see one. A lot of people my age, whether they&#8217;re into cars or not, seem to remember this recall, because the original A-Class was such a unique and recognisable vehicle at the time, especially coming from Mercedes. My point is &#8211; Recall will face this same issue. No matter how secure Microsoft makes it, no matter how much they claim and prove it only runs locally, no matter how hard they try and hammer on the fact data never leaves your PC, people will always think of that initial botched rollout, and all the accurate reporting that Recall was a nightmare. And it just so happens that the skepticism is warranted, and hopefully keeps people from using this corporate Trojan horse. 

<br> 

<https://www.osnews.com/story/142174/windows-recall-failed-the-moose-test-and-nobody-will-ever-forget-it/>

---

## Relax, AWS reassessing colo lease talks is just 'routine capacity management'

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>Hyperscaler says there&#39;s no decrease in demand, it&#39;s just looking for good deals</h4> <p>Amazon has joined Microsoft in <a target="_blank" href="https://www.theregister.com/2025/04/09/microsoft_puts_more_datacenter_builds/">pausing</a> some datacenter leasing deals, sparking fresh concerns about whether the AI hype train may be running out of steam.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/aws_datacenter_leases/>

---

## SpaceX Dragon cargo capsule docks to the International Space Station

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>Plenty of tortillas onboard but not quite so much science this time</h4> <p>SpaceX&#39;s latest cargo mission to the International Space Station (ISS) – CRS-32 – just docked to the orbiting outpost, bringing extra crew supplies, which resulted in the deferral of several science payloads.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/spacex_freighter_docks_to_the/>

---

## Entrepreneurs Challenge Winner PRISM is Using AI to Enable Insights from Geospatial Data

date: 2025-04-22, from: NASA breaking news

NASA sponsored Entrepreneurs Challenge events in 2020, 2021, and 2023 to invite small business start-ups to showcase innovative ideas and technologies with the potential to advance the agency’s science goals. To potentially leverage external funding sources for the development of innovative technologies of interest to NASA, SMD involved the venture capital community in Entrepreneurs Challenge […] 

<br> 

<https://science.nasa.gov/directorates/smd/earth-science-division/entrepreneurs-challenge-winner-prism-is-using-ai-to-enable-insights-from-geospatial-data/>

---

## NASA Tests Ultralight Antennas to Benefit Future National Airspace

date: 2025-04-22, from: NASA breaking news

NASA engineers are using one of the world’s lightest solid materials to construct an antenna that could be embedded into the skin of an aircraft, creating a more aerodynamic and reliable communication solution for drones and other future air transportation options.&#160; Developed by NASA, this ultra-lightweight aerogel antenna is designed to enable satellite communications where [&#8230;] 

<br> 

<https://www.nasa.gov/centers-and-facilities/glenn/nasa-tests-ultralight-antennas-to-benefit-future-national-airspace/>

---

## <em>El Reg's</em> essential guide to deploying LLMs in production

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>Running GenAI models is easy. Scaling them to thousands of users, not so much</h4> <p><strong>Hands On</strong>  You can spin up a chatbot with Llama.cpp or Ollama in minutes, but scaling large language models to handle real workloads – think multiple users, uptime guarantees, and not blowing your GPU budget – is a very different beast.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/llm_production_guide/>

---

## UK-based self-driving car startup Wayve heads to Japan for more driving data

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>On a road trip with an AI by your side</h4> <p>UK-based autonomous vehicle biz Wayve is continuing its global expansion by opening a testing and development center in Yokohama, Japan.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/wayve_heads_to_japan_for/>

---

## How to stay on Windows 10 instead of installing Linux

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>Can&#39;t run Windows 11? Don&#39;t want to? There are surprisingly legal options</h4> <p>You will have to reinstall everything, but there is another way to escape the end of Windows 10 support in October – and it&#39;s cheaper than a new PC.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/windows_10_ltsc/>

---

## Bad trip coming for AI hype as humanity tools up to fight back

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>I was into Adversarial Noise before they were famous</h4> <p><strong>Opinion</strong>  6:56 PM. April 11, 2025. Write it down. That&#39;s the precise moment the tech-bro-niverse imploded due to the gravitational force of irony at its core. That was the moment Jack Dorsey posted &#34;Delete all IP law&#34; on X. A little later, Elon Musk added his approval with &#34;I agree.&#34;…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/bad_trip_coming_for_ai/>

---

## Google's email spoofed by cunning phisherfolk who re-used DKIM creds

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>PLUS: Malware developers adopt Node.js; US disinformation warriors disbanded; Gig worker accounts for sale; and more</h4> <p><strong>Infosec In Brief</strong>  Email security outfit EasyDMARC recently spotted a phishing campaign that successfully spoofed Google with a sophisticated attack.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/security_news_in_brief/>

---

## It takes one click to join Uber One, but quitting might need 32 actions

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>Which is one reason US regulators just sued the rideshare and delivery giant</h4> <p>The USA’s Federal Trade Commission on Monday launched a lawsuit against Uber, alleging the rideshare giant ripped off customers by enrolling them in its “Uber One” membership scheme without permission, failing to deliver promised savings, and making it devilishly difficult to opt out.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/ftc_sues_uber/>

---

## Africa's boardless, bossless, generally troubled internet registry to hold elections in June

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>Receiver warns of ‘potential interferences’ and appoints senior British lawyers to oversee candidate nomination process</h4> <p>The African Network Information Center (AFRINIC) will hold elections on June 23rd, perhaps giving the regional internet registry the chance to convene a board for the first time in three years.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/afrinic_election_date_set/>

---

## Bug hunter tricked SSL.com into issuing cert for Alibaba Cloud domain in 5 steps

date: 2025-04-22, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>10 other certificates &#39;were mis-issued and have now been revoked&#39;</h4> <p>Certificate issuer SSL.com’s domain validation system had an unfortunate bug that was exploited by miscreants to obtain, without authorization, digital certs for legit websites.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/22/ssl_com_validation_flaw/>

---

## ChatGPT burns tens of millions of Softbank dollars listening to you thanking it

date: 2025-04-21, updated: 2025-04-21, from: The Register (UK I.T. News)

<h4>Sam says it&#39;s Son&#39;s money well spent</h4> <p>Conventional wisdom holds that being polite to AI chatbots makes them respond better, but no one stops to think how much energy that politeness is wasting. …</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/21/users_being_polite_to_chatgpt/>

---

## Thanks again to our outgoing sponsor: Nova Custom

date: 2025-04-21, from: OS News

We&#8217;d like to thank our outgoing sponsor, Nova Custom, for sponsoring OSNews! Nova Custom, based in The Netherlands, makes laptops focused on privacy, customisation, and freedom. Nova Custom laptops ship with either Linux, Windows, or no operating system, and they’re uniquely certified for Qubes OS (the V54 model will be certified soon), the ultra-secure and private operating system. On top of that, Nova Custom laptops come with Dasharo coreboot firmware preinstalled, which is completely open source, instead of a proprietary BIOS. Nova Custom can also disable the Intel Management Engine for you, and you can opt for Dasharo coreboot+Heads for the ultimate in boot security. Nova Custom offers visual customisations, too, including engraving a logo or text of your choice on the metal screen lid and/or palmrest and adding your own boot logo. They also offer privacy customisations like removing the microphone and webcam, installing a privacy screen, and more. A small touch I personally appreciate: Nova Custom offers a long, long list of keyboard layouts, as well as the option to customise the super key. Nova Custom products enjoy 3 years of warranty, as well as updates and spare parts for at least seven years after the launch of a product, which includes everything from motherboard replacements down to sets of screws. Nova Custom laptops can be configured with a wide variety of Intel processor options, as well as a choice between integrated Intel GPUs or Nvidia laptop GPUs. Thanks once again to Nova Custom for sponsoring OSNews &#8211; for a little longer than anticipated due to our weird RSS/captcha issues. 

<br> 

<https://www.osnews.com/story/142172/thanks-again-to-our-outgoing-sponsor-nova-custom/>

---

## America's National Science Foundation tells DEI, misinfo studies: You're fired

date: 2025-04-21, updated: 2025-04-21, from: The Register (UK I.T. News)

<h4>No one should be excluded – unless you have certain views on the Mid-East crisis</h4> <p>In line with Trump administration directives, the US government&#39;s National Science Foundation has started canceling grants for studies into workplace diversity and the spread of misinformation.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/21/nsf_cancel_awards_dei/>

---

## NASA’s SPHEREx Team To Ring New York Stock Exchange Bell

date: 2025-04-21, from: NASA breaking news

Members of the team behind NASA’s newest space telescope will ring the New York Stock Exchange closing bell in New York City at 4 p.m. EDT on Tuesday, April 22. The team helped build, launch, and operates NASA’s SPHEREx (Spectro-Photometer for the History of the Universe, Epoch of Reionization and Ices Explorer) mission to explore [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasas-spherex-team-to-ring-new-york-stock-exchange-bell/>

---

## Let’s give PRO/VENIX a barely adequate, pre-C89 TCP/IP stack (featuring Slirp-CK)

date: 2025-04-21, from: OS News

Only a few weeks ago, I linked to Cameron Kaiser&#8217;s excellent deep dive into the DEC Professional 380 running PRO/VENIX, and now we have a follow-up. Fortunately, today we have AI we have many more excellent and comprehensive documents on the subject, and more importantly, we&#8217;ve recently brought back up an oddball platform that doesn&#8217;t have networking either: our DEC Professional 380 running the System V-based PRO/VENIX V2.0, which you met a couple articles back. The DEC Professionals are a notoriously incompatible member of the PDP-11 family and, short of DECnet (DECNA) support in its unique Professional Operating System, there&#8217;s officially no other way you can get one on a network — let alone the modern Internet. Are we going to let that stop us? ↫ Cameron Kaiser No. The answer is always no. If you&#8217;ve ever wanted to know what&#8217;s involved in setting up a custom TCP/IP stack using serial on a 40 year old UNIX workstation, your very specific desires are hereby met. 

<br> 

<https://www.osnews.com/story/142170/lets-give-pro-venix-a-barely-adequate-pre-c89-tcp-ip-stack-featuring-slirp-ck/>

---

## “How I use Kate Editor”

date: 2025-04-21, from: OS News

I love the Kate Text editor. I use it for pretty much all the programming projects I do. Kate has been around for long time now, about 20 years! At least earliest blog post for it I could find was written in 2004. I wanted to go over my workflow with it, why I like it so much and hopefully get more people to try it out. ↫ Akseli Lahtinen Programmers and developers tend to be very set in their ways and have their preferred workflows &#8211; which profession doesn&#8217;t, honestly &#8211; and since there&#8217;s such a wide variety of developer and programming tools out there, it feels like every single developer&#8217;s workflow and setup is entirely unique. Akseli Lahtinen, KDE developer and allround awesome person, details his setup using Kate, the venerable and feature-rich text editor from the KDE project. As someone who can&#8217;t program, I can&#8217;t really compare his workflow to my own, but what I found interesting while reading his post is that there&#8217;s quite a bit of overlap between my previous work as a translator and his work as a developer. While the contents of each individual view inside his Kate window are obviously different, the setup of windows and tools I had when translating looked very similar. This shouldn&#8217;t be surprising to me &#8211; after all, both translating and developing requires multiple work surfaces, language plugins, formatting tools, tons of keyboard shortcuts, and a whole load of browser tabs, PDF files, and other documents to find just the right translation or the perfect term, as well as a ton of background to make sure you understand the topic you&#8217;re translating about. Y&#8217;all have no idea how much I know about the deepest complex inner-workings and processes of some of the largest organisations in the world, just because I needed to study them and had access to their internal documentation and software. I also read and studied way too many complex contracts, European law, and technical studies into medicine and healthcare treatments, and I guess developers and programmers do the same thing &#8211; just focusing on different subjects. What&#8217;s the best way to do this thing in the programming language I&#8217;m using? How does this library I want to integrate work? What are the API endpoints for this service I want to use? It&#8217;s really not that different from translating, and that never really dawned on me until now. 

<br> 

<https://www.osnews.com/story/142168/how-i-use-kate-editor/>

---

## Today's LLMs craft exploits from patches at lightning speed

date: 2025-04-21, updated: 2025-04-21, from: The Register (UK I.T. News)

<h4>Erlang? Er, man, no problem. ChatGPT, Claude to go from flaw disclosure to actual attack code in hours</h4> <p>The time from vulnerability disclosure to proof-of-concept (PoC) exploit code can now be as short as a few hours, thanks to generative AI models.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/21/ai_models_can_generate_exploit/>

---

## ICE enlists Palantir to develop all-seeing 'ImmigrationOS' eye to speed up deportations

date: 2025-04-21, updated: 2025-04-21, from: The Register (UK I.T. News)

<h4>Only Peter Thiel-backed biz can pull off $30M IT deal, apparently</h4> <p>US Immigration and Customs Enforcement has an urgent need for a new software system to help implement the Trump administration&#39;s deportation plans, and it&#39;s turning to longtime ICE supplier Palantir for a rush build job.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/21/ice_enlists_palantir_to_develop/>

---

## Synology confirms that higher-end NAS products will require its branded drives

date: 2025-04-21, from: OS News

&#8220;Synology-branded drives will be needed for use in the newly announced Plus series, with plans to update the Product Compatibility List as additional drives can be thoroughly vetted in Synology systems,&#8221; a Synology representative told Ars by email. &#8220;Extensive internal testing has shown that drives that follow a rigorous validation process when paired with Synology systems are at less risk of drive failure and ongoing compatibility issues.&#8221; Without a Synology-branded or approved drive in a device that requires it, NAS devices could fail to create storage pools and lose volume-wide deduplication and lifespan analysis, Synology&#8217;s German press release stated. Similar drive restrictions are already in place for XS Plus and rack-mounted Synology models, though work-arounds exist. ↫ Kevin Purdy at Ars Technica I&#8217;m honestly surprised it&#8217;s taken Synology this long to start nickle-and-diming its users. I&#8217;m sure the &#8220;Synology-branded&#8221; drives will carry substantial markups over regular drives, despite the drives being otherwise identical. Charging insane markups for expansion options is a tried-and-true way to increase your margins, with Apple being the classic example of charging insane prices for basic RAM or SSD upgrades. I think most of us here on OSNews could easily build our own NAS, as it&#8217;s not a particularly complex project. The various software options could be a bit more complicated to navigate, but I don&#8217;t think it&#8217;s insurmountable for most of us. Normal, average people, though, would most likely do best to just buy an off-the-shelf NAS for their storage and local back-up needs, and it&#8217;s those kind of people who Synology is aiming this policy at. They&#8217;ll be easily fooled into thinking Synology-branded drives are somehow special, and not just a generic drive with a fancy sticker. This is how the world works, but that doesn&#8217;t make it any less unpleasant. 

<br> 

<https://www.osnews.com/story/142164/synology-confirms-that-higher-end-nas-products-will-require-its-branded-drives/>

---

## NASA’s Lucy Spacecraft Images Asteroid Donaldjohanson

date: 2025-04-21, from: NASA breaking news

In its second asteroid encounter, NASA’s Lucy spacecraft obtained a close look at a uniquely shaped fragment of an asteroid that formed about 150 million years ago. The spacecraft has begun returning images that were collected as it flew approximately 600 miles (960 km) from the asteroid Donaldjohanson on April 20, 2025. The asteroid was […] 

<br> 

<https://science.nasa.gov/image-article/nasas-lucy-spacecraft-images-asteroid-donaldjohanson/>

---

## Microsoft rated this bug as low exploitability. Miscreants weaponized it in just 8 days

date: 2025-04-21, updated: 2025-04-21, from: The Register (UK I.T. News)

<h4>It&#39;s now hitting govt, enterprise targets</h4> <p>On March 11 - Patch Tuesday - Microsoft rolled out its usual buffet of bug fixes. Just eight days later, miscreants had weaponized one of the vulnerabilities, using it against government and private sector targets in Poland and Romania.…</p> <p><!--#include virtual='/data_centre/_whitepaper_textlinks_top.html' --></p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/21/microsoft_apple_patch/>

---

## Fuzzy Rings of a Dying Star

date: 2025-04-21, from: NASA breaking news

In this photo released on April 14, 2025, NASA’s James Webb Space Telescope revealed the gas and dust ejected by a dying star at the heart of NGC 1514. Using mid-infrared data showed the “fuzzy” clumps arranged in tangled patterns, and a network of clearer holes close to the central stars shows where faster material [&#8230;] 

<br> 

<https://www.nasa.gov/image-article/fuzzy-rings-of-a-dying-star/>

---

## Celebrating Earth as Only NASA Can

date: 2025-04-21, from: NASA breaking news

Lee esta historia en español aquí. From the iconic image of Earthrise taken by Apollo 8 crew, to the famous Pale Blue Dot image of Earth snapped by Voyager I spacecraft, to state-of-the-art observations of our planet by new satellites such as PACE (Plankton, Aerosol, Cloud, ocean Ecosystem), NASA has given us novel ways to see [&#8230;] 

<br> 

<https://www.nasa.gov/earth/earth-day/celebrating-earth-as-only-nasa-can/>

---

## Sols 4515-4517: Silver Linings

date: 2025-04-21, from: NASA breaking news

Written by Lucy Thompson, Planetary Geologist at University of New Brunswick Earth planning date: Friday, April 18, 2025 As the APXS operations person today, I was hopeful that we could plan a compositional measurement after brushing one of the bedrock blocks in front of the rover. However, it soon became clear that the rover was not on […] 

<br> 

<https://science.nasa.gov/blog/sols-4515-4517-silver-linings/>

---

## How a Biofilm’s Strange Shape Emerges From Cellular Geometry

date: 2025-04-21, from: Quanta Magazine

Micro decisions can have macro consequences. A soft matter physicist reveals how interactions within simple cellular collectives can lead to emergent physical traits.            <p>The post <a href="https://www.quantamagazine.org/how-a-biofilms-strange-shape-emerges-from-cellular-geometry-20250421/" target="_blank">How a Biofilm’s Strange Shape Emerges From Cellular Geometry</a> first appeared on <a href="https://www.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<br> 

<https://www.quantamagazine.org/how-a-biofilms-strange-shape-emerges-from-cellular-geometry-20250421/>

---

## Everything you need to get up and running with MCP – Anthropic's USB-C for AI

date: 2025-04-21, updated: 2025-04-21, from: The Register (UK I.T. News)

<h4>Wrangling your data into LLMs just got easier, though it&#39;s not all sunshine and rainbows</h4> <p><strong>Hands On</strong>  Getting large language models to actually do something useful usually means wiring them up to external data, tools, or APIs. The trouble is, there&#39;s no standard way to do that - yet.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/21/mcp_guide/>

---

## NASA Science, Cargo Launch on 32nd SpaceX Resupply Station Mission

date: 2025-04-21, from: NASA breaking news

Following the successful launch of NASA’s SpaceX 32nd Commercial Resupply Services mission, new scientific experiments and supplies are bound for the International Space Station. The SpaceX Dragon spacecraft, carrying approximately 6,700 pounds of cargo to the orbiting laboratory for NASA, lifted off at 4:15 a.m. EDT Monday, on the company’s Falcon 9 rocket from Launch [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-science-cargo-launch-on-32nd-spacex-resupply-station-mission/>

---

## Developer scored huge own goal by deleting almost every football fan in Europe

date: 2025-04-21, updated: 2025-04-21, from: The Register (UK I.T. News)

<h4>Fiddling with the production database – what could possibly go wrong?</h4> <p><strong>Who, Me?</strong>  Monday mornings are a nasty time of week that can be redeemed by two things: bantering about weekend sporting results, and reading another edition of &#34;Who, Me?&#34; – <i>The Register</i>&#39;s weekly column that shares your stories of dropping the ball at work but somehow recovering for at least an honorable draw.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/21/who_me/>

---

## Downward DOGE: Elon Musk keeps revising cost-trimming goals in a familiar pattern

date: 2025-04-20, updated: 2025-04-22, from: The Register (UK I.T. News)

<h4>On top of that, Trump&#39;s increased federal spending almost completely negates $150B in cuts</h4> <p><strong>Comment</strong>  Elon Musk&#39;s Trump-blessed DOGE unit has made a lot of noise and a lot of headlines for its <a target="_blank" href="https://www.theregister.com/2025/04/17/whistleblower_nlrb_doge/">heavy-handed hatchet tactics</a> within supposedly bloated governmental organizations.…</p> 

<br> 

<https://go.theregister.com/feed/www.theregister.com/2025/04/20/musks_doge_promises_fail/>

---

## NASA Astronaut Don Pettit, Crewmates Complete Space Station Expedition

date: 2025-04-20, from: NASA breaking news

NASA astronaut Don Pettit returned to Earth Saturday, accompanied by Roscosmos cosmonauts Alexey Ovchinin and Ivan Vagner, concluding a seven-month science mission aboard the International Space Station. The trio departed the space station at 5:57 p.m. EDT aboard the Soyuz MS-26 spacecraft before making a safe, parachute-assisted landing at 9:20 p.m. (6:20 a.m. on Sunday, [&#8230;] 

<br> 

<https://www.nasa.gov/news-release/nasa-astronaut-don-pettit-crewmates-complete-space-station-expedition/>

