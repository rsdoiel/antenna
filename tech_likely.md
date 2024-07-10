---
title: tech likely 2024.28
updated: 2024-07-10 08:06:34
---

# tech likely 2024.28

(date: 2024-07-10 08:06:34)

---

## Raspberry Pi AI Kit update: Dataflow Compiler now available

date: 2024-07-10, from: Raspberry Pi News (.com)

<p>The newly released Hailo Dataflow Compiler (DFC) enables you to use your own data, or even your own model, with the Raspberry Pi AI Kit.</p>
<p>The post <a href="https://www.raspberrypi.com/news/raspberry-pi-ai-kit-update-dataflow-compiler-now-available/">Raspberry Pi AI Kit update: Dataflow Compiler now available</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/raspberry-pi-ai-kit-update-dataflow-compiler-now-available/>

---

## “I fixed a 6-year-old .deb installation bug in Ubuntu MATE and Xubuntu”

date: 2024-07-10, from: OS News

I love a good bug hunting story, and this one is right up there as a great one. Way back in 2018, Doug Brown discovered that after installing Ubuntu MATE 18.04, if he launched Firefox from the icon in the default panel arrangement to install Chrome from the official Chrome website, the process was broken. After downloading the .deb and double-clicking it, GDebi would appear, but after clicking &#8220;Install&#8221;, nothing happened. What was supposed to happen is that after clicking &#8220;Install&#8221;, an authentication dialog should appear where you enter your root password, courtesy of gksu. However, this dialog did not appear, and without thinking too much of it, Brown shrugged and just installed the downloaded Chrome .deb through the terminal, which worked just fine. While he didn&#8217;t look any deeper into the cause of the issue, he did note that as the years and new Ubuntu releases progressed, the bug would still be there, all the way up until the most recent release. Finally, 2.5 years ago, he decided to dive into the bug. It turned out there were lots of reports about this issue, but nobody stepped up to fix it. While workarounds were made available through wrapper scripts, and deeper investigations into the cause revealed helpful information. The actual error message was a doozy: &#8220;Refusing to render service to dead parents&#8221;, which is quite metal and a little disturbing. In summary, the problem was that GDebi was using execv() to replace itself with an instance of pkexec, which was intended to bring up an authentication dialog and then allow GDebi to run as a superuser. pkexec didn’t like this arrangement, because it wants to have a parent process other than init. Alkis mentioned that you could recreate the problematic scenario in a terminal window by running gdebi-gtk with setsid to run it in a new session. ↫ Doug Brown Backing up a few steps, if the name &#8220;gksu&#8221; rings a bell for you, you might have already figured out where the problem most likely originated from. Right around that time, 2018, Ubuntu switched to using PolicyKit instead, and gksu was removed from Ubuntu. GDebi was patched to work with PolicyKit instead, and this was what introduced the actual bug. Sadly, despite having a clear idea of the origin of the bug, as well as where to look to actually fix it, nobody picked it up. It sat there for years, causing problems for users, without a fix in sight. Brown was motivated enough to fix it, submitted the patch, but after receiving word it would be looked at within a few days, he never heard anything back for years, not helped by the fact that GDebi has long been unmaintained. It wasn&#8217;t until very recently that he decided to go back again, and this time, after filling out additional information required for a patch for an unmaintained package, it was picked up, and will become available in the next Ubuntu release (and will most likely be backported, too). Brown further explains why it took so long for the bug to be definitely fixed. Not only is GDebi unmaintained, the bug also only manifested itself when launching Firefox from the panel icon &#8211; it did not manifest when launching Firefox from the MATE menu, so a lot of people never experienced it. On top of that, as we all sadly know, Ubuntu replaced the Firefox .deb package with the SNAP version, which also doesn&#8217;t trigger the bug. It&#8217;s a long story for sure, but a very interesting one. It shows how sometimes, the stars just align to make sure a bug does not get fixed, even if everyone involved knows how to fix it, and even if fixes have been submitted. Sometimes, things just compound to cause a bug to fall through the cracks. 

<https://www.osnews.com/story/140188/i-fixed-a-6-year-old-deb-installation-bug-in-ubuntu-mate-and-xubuntu/>

---

## NASA Administrator, Leaders to Discuss Space-Based Cancer Research

date: 2024-07-10, from: NASA breaking news

As part of the Biden Cancer Moonshot, NASA will virtually host an event at 2 p.m. EDT Thursday, July 11, to highlight how the agency is working to end cancer for the benefit of humanity by conducting research aboard the International Space Station. The event will stream on NASA Television, the&#160;NASA app, and the&#160;agency’s&#160;website. Learn [&#8230;] 

<https://www.nasa.gov/news-release/nasa-administrator-leaders-to-discuss-space-based-cancer-research/>

---

## First Mars Crew Completes Yearlong Simulated Red Planet NASA Mission

date: 2024-07-10, from: NASA breaking news

The inaugural CHAPEA (Crew Health and Performance Exploration Analog) crew is “back on Earth” after walking out of their simulated Martian habitat at NASA’s Johnson Space Center in Houston on July 6. The first of three simulated missions, CHAPEA Mission 1 was designed to help scientists, engineers, and mission planners better understand how living on [&#8230;] 

<https://www.nasa.gov/missions/analog-field-testing/chapea/first-mars-crew-completes-yearlong-simulated-red-planet-nasa-mission/>

---

## How America’s Fastest Swimmers Use Math to Win Gold

date: 2024-07-10, from: Quanta Magazine

Number theorist Ken Ono is teaching Olympians to swim more efficiently.            <p>The post <a href="https://www.quantamagazine.org/how-americas-fastest-swimmers-use-math-to-win-gold-20240710/" target="_blank">How America’s Fastest Swimmers Use Math to Win Gold</a> first appeared on <a href="https://api.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<https://www.quantamagazine.org/how-americas-fastest-swimmers-use-math-to-win-gold-20240710/>

---

## 30 Years Ago: STS-65, the Second International Microgravity Lab Mission

date: 2024-07-10, from: NASA breaking news

On July 8, 1994, space shuttle Columbia took to the skies on its 17th trip into space, on the second International Microgravity Laboratory (IML-2) mission. Six space agencies sponsored 82 life and microgravity science experiments. The seven-person crew consisted of Commander Robert D. Cabana, Pilot James D. Halsell, Payload Commander Richard J. Hieb, Mission Specialists [&#8230;] 

<https://www.nasa.gov/history/30-years-ago-sts-65-the-second-international-microgravity-lab-mission/>

---

##  The International Astronomical Union is currently running an open competition to name... 

date: 2024-07-10, updated: 2024-07-10, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044931-the-international-astrono>

---

## Coming of Age during Wartime in Sudan: A Conversation with Omnia Mustafa

date: 2024-07-10, from: Logic Magazine


                <p>Omina Mustafa and Khadijah Abdurqhman discuss Mustafa’s experience of race and racialization as an African Arab person from northern Sudan, and the atrocities being committed against the people of Darfur and western Sudan.</p>

             

<https://logicmag.io/issue-21-medicine-and-the-body/coming-of-age-during-wartime-in-sudan-a-conversation-with-omnia-mustafa>

---

## Small Systems Engineering's PETSPEED

date: 2024-07-10, from: Computer ads from the Past

Fast Enough for the Human Race 

<https://computeradsfromthepast.substack.com/p/small-systems-engineerings-petspeed>

---

## Resuming the Podcast0 feed

date: 2024-07-10, from: Dave Winer's Scripting News

<p>A new episode for the <a href="https://this.how/podcast0/">Podcast0 feed</a>.</p>
<p>After a break since June 20, we now resume my original "audio blog" from the summer of 2004, twenty years ago.</p>
<p>I was just beginning to figure out how this new medium worked, and rather than record my own thoughts, as with the previous two episodes, I published audio from another source, my meditation teacher, Jeru Kabbal. </p>
<p>Starting with the next episode, tomorrow, an interview with Steve Gillmor, one of the earliest podcast pioneers -- we'll have an original audio blog post. That's when the pulse really starts. </p>
<p>A <a href="https://imgs.scripting.com/2024/07/10/upcomingEpisodes.png">screen shot</a> of upcoming episodes from <a href="http://morningcoffeenotes.com/">morningcoffeenotes</a>.</p>
<p>Here's the <a href="https://podcasts.apple.com/us/podcast/quantum-light-breath/id1752527298?i=1000661785816">Apple Podcasts</a> page for this episode. </p>
<p>I've been making mistakes in 2024 on almost every episode. This time I got the title wrong, it's Sunrise of the Soul. Rather than change it, and take a chance of the episode showing up twice in some podcast clients, I'm just leaving it as-is. Trying to get a feel for how most of the clients work. Do they refresh posts, if the descriptions change (as this one is)? I don't know. </p>
<p>Do the clients strip out the HTML or do they support some of it? I wonder if links make it through to most clients?</p>
<p>The <a href="http://scripting.com/2024/06/17/152838.html">original post</a> for Podcast0.</p>
 

<http://scripting.com/2024/07/10/135952.html?title=resumingThePodcast0Feed>

---

## El Puerto de Santa Maria, Spain

date: 2024-07-10, from: mrusme blog

"El Puerto de Santa María, locally known as El Puerto and historically in
English as Port Saint Mary, is a municipality of Spain located on the banks of
the Guadalete River in the province of Cádiz, Andalusia. As of 2016, the city
has a population of c. 88,184, of which some 50,000 live in the urban center,
and the remainder in the surrounding areas." 

<https://xn--gckvb8fzb.com/travel/spain/el-puerto-de-santa-maria/>

---

## NASA Marshall Researchers Battle Biofilm in Space

date: 2024-07-10, from: NASA breaking news

A small group of scientists on the biofilm mitigation team at NASA’s Marshall Space Center in Huntsville, Alabama, study solutions to combat fast-growing colonies of bacteria or fungi, known as biofilm, for future space missions. Biofilm occurs when a cluster of bacteria or fungi generates a slimy matrix of “extracellular polymeric substances” to protect itself [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/marshall/nasa-marshall-researchers-battle-biofilm-in-space/>

---

**@Dave Winer's Scripting News** (date: 2024-07-10, from: Dave Winer's Scripting News)

If we were organized we could handle anything. The only reason we're panicking about Biden's capability is that our news flow is owned by largely invisible media moguls. The only way out of this mess is to route around them. 

<http://scripting.com/2024/07/10.html#a131754>

---

## How NeWS became yesterday's news in the window system wars

date: 2024-07-10, updated: 2024-07-10, from: Liam Proven's articles at the Register

<h4>X co-designer David Rosenthal looks back at why his other project failed</h4>
      <p>A couple of weeks after its anniversary, one of the original engineers behind X has explored why it succeeded where rivals – one of which he co-developed – failed.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/07/10/dshr_on_news_vs_x/>

---

## This  Is America, Redux

date: 2024-07-10, updated: 2024-07-10, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/07/10/this-is-america-redux/>

---

## Gateway: Illuminating the Future

date: 2024-07-10, from: NASA breaking news

View the Gateway space station's first pressurized module, HALO (Habitation and Logistics Outpost), illuminated in stunning detail. Learn more about its role in supporting Artemis missions. 

<https://www.nasa.gov/image-article/gateway-illuminating-the-future/>

---

**@Jessica Smith's blog** (date: 2024-07-10, from: Jessica Smith's blog)

<p>Was originally doing some research to make sure Australian bureaucrats can handle names with hyphens in them, and found this. Good thing we don’t live in Queensland, so we can still name our baby “Down With Capitalism”!</p>
<img src="https://www.jayeless.net/media/2024/07/naming-rules.png" alt="Restrictions on Baby Names: To protect children against careless and harmful names, the government had set out rules in registering baby names in Australia. The rules state that a child’s name must: not be obscene or offensive or contrary to public interest; (no racial slurs or infringements on the rights of another; be short and easy to write (In NSW, under 50 characters); not include symbols without phonetic significance such as N@talie, Da!sy, J#ke) or use numerals; not include or resemble an official title or military rank recognised in Australia such as King, Lady, Father, Prince, Sir or Admiral.Â  This was after a law was passed sometime in 1995 prohibiting the use of titles as part of the baby’s given name. use English letters only; not be similar to a recognised body, organisation or trademark; and In Queensland, the name can’t include a statement, like Save Mother Earth or Down with Capitalism."> 

<https://www.jayeless.net/2024/07/down-with-capitalism.html>

---

**@Dave Winer's Scripting News** (date: 2024-07-10, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/03/20/mrSmith.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">It bugs me that there’s all this focus on Biden, when what we really need is to organize as voters so we can be ready to deal with whatever happens. That’s the real problem. The press can point out a problem, and it is a problem, but no one has the ability to build a consensus among voters. I think it’s possible to put together an online version of the Democratic Party, something that never goes away, is available to rally the electorate at any moment. That’s the way to neutralize the power of the media moguls who have us wrapped around their fingers. 

<http://scripting.com/2024/07/09.html#a015602>

---

## Ora2Pg Support - Chatbot and Converter, have been Released !

date: 2024-07-10, from: PostgreSQL News

<p>Toronto, Canada - July 7th, 2024</p>
<h2>Ora2Pg Chatbot and Converter</h2>
<p>Ora2Pg is the most advanced database migration tool, for migrating Oracle databases to PostgreSQL.
Ora2Pg supports migrations from MySQL to PostgreSQL and lately supported SQL Server to PostgreSQL.</p>
<p>HexaCluster announces the Ora2Pg Support that includes an Ora2Pg Chatbot and Ora2Pg Converter.</p>
<h3>How to access ?</h3>
<p>Sign Up and start using for free : <a href="https://ora2pgsupport.hexacluster.ai/">https://ora2pgsupport.hexacluster.ai/</a></p>
<h3>Whats Included ?</h3>
<h4>Ora2Pg AI Chatbot</h4>
<ul>
<li>Sign Up for free</li>
<li>Start a Chat session and ask your questions about Ora2Pg and Database Migrations.</li>
<li>If you are not satisfied, click on "Continue with an Expert". You will now switch to "Expert mode".</li>
<li>Once you are in the "Expert mode", a Migration Specialist from HexaCluster will review and respond back to your request.</li>
</ul>
<h4>Ora2Pg Converter</h4>
<ul>
<li>Sign Up for free</li>
<li>Supports Unlimited conversions of Oracle schema to PostgreSQL. Just paste the Oracle DDL/Syntax and click on Convert, to generate PostgreSQL DDL/syntax.</li>
<li>Click on "Connect with an Expert" for Experts Assistance on incorrect or unsatisfied conversions.Links &amp; Credits</li>
<li>This project is created and maintained by HexaCluster Corp.</li>
</ul>
<h2>Links:</h2>
<ul>
<li>Ora2Pg Support : <a href="https://ora2pgsupport.hexacluster.ai/">https://ora2pgsupport.hexacluster.ai/</a></li>
<li>To provide Feedback or Ask additional questions, write to us at : <a href="mailto:connect@hexacluster.ai">connect@hexacluster.ai</a></li>
</ul> 

<https://www.postgresql.org/about/news/ora2pg-support-chatbot-and-converter-have-been-released-2892/>

---

## PGroonga 3.2.1 - Multilingual fast full text search

date: 2024-07-10, from: PostgreSQL News

<p>Hi,</p>
<p>PGroonga 3.2.1 has been released!</p>
<p>This release adds support for WAL resource manager!</p>
<p>With the WAL resource manager support, you can solve the
following problems with the general WAL approach in PGroonga &lt; 3.2.1:</p>
<ul>
<li>You need to remove old WAL manually to avoid unlimited storage usage</li>
<li>You need to use additional mechanism to apply WAL in background</li>
<li>You need to recover from a crash after PostgreSQL started</li>
</ul>
<p>See also the following document how to use this feature:
<a href="https://pgroonga.github.io/reference/streaming-replication-wal-resource-manager.html">Streaming replication by WAL resource manager</a></p>
<p>Note that you need PostgreSQL 15 or later because this is based on
custom WAL resource manager feature that is available since PostgreSQL 15. </p>
<p>If you're interesting in how to implement the WAL resource manager,
see also the following blog post:</p>
<p>Japanese:
<a href="https://www.clear-code.com/blog/2024/7/5/pgroonga-custom-wal-resource-manager.html">How to implement the PGroonga's WAL resource manager</a></p>
<p>English:
<a href="https://www-clear--code-com.translate.goog/blog/2024/7/5/pgroonga-custom-wal-resource-manager.html?_x_tr_sl=ja&amp;_x_tr_tl=en&amp;_x_tr_hl=ja&amp;_x_tr_pto=wapp">Google Translate of the post</a></p>
<h3>About PGroonga</h3>
<p><a href="https://pgroonga.github.io/">PGroonga</a> is a PostgreSQL extension that
makes PostgreSQL fast full text search platform for all languages!
It's released under PostgreSQL license.</p>
<p>There are some PostgreSQL extensions that improves full text search feature
of PostgreSQL such as pg_trgm<a href="https://www.postgresql.org/docs/current/static/pgtrgm.html">^1</a>.</p>
<p>pg_trgm doesn't support languages that use non-alphanumerics characters such
as Japanese and Chinese.</p>
<p>PGroonga supports all languages, provides rich full text search related
features and is very fast. Because PGroonga uses Groonga<a href="https://groonga.org/">^2</a> that is a
full-fledged full text search engine as backend.</p>
<p>See the following benchmark results for performance:</p>
<ul>
<li>Benchmark result for PGroonga, textsearch and pg_trgm with English Wikipedia
    https://pgroonga.github.io/reference/pgroonga-versus-textsearch-and-pg-trgm.html</li>
<li>Benchmark result for PGroonga and pg_bigm with Japanese Wikipedia
    https://pgroonga.github.io/reference/pgroonga-versus-pg-bigm.html</li>
</ul>
<p>PGroonga also supports JSON search. You can use each value
for condition. You can also perform full text search against
all texts in JSON like textsearch in PostgreSQL.</p>
<h3>Changes</h3>
<p>Here are highlights in PGroonga 3.2.1:</p>
<ul>
<li>Added support for WAL resource manager</li>
<li>Added support for downgrading by using <code>ALTER EXTENSION ... UPDATE</code></li>
<li>Added support for Ubuntu 24.04 (Noble Numbat)</li>
<li>Added support for typo-tolerance search</li>
<li>Fixed some crash bugs</li>
</ul>
<p>See also <a href="https://pgroonga.github.io/news/#version-3-2-1">the 3.2.1 release note</a>
for full changes.</p>
<h3>Usage</h3>
<p>You can use PGroonga without full text search knowledge. You
just create an index and puts a condition into WHERE:</p>
<pre><code>CREATE INDEX index_name ON table USING pgroonga (column);
SELECT * FROM table WHERE column &amp;@~ 'PostgreSQL';
</code></pre>
<p>You can also use LIKE to use PGroonga. PGroonga provides a
feature that performs LIKE with index. LIKE with PGroonga
index is faster than LIKE without index. It means that you
can improve performance without changing your application
that uses the following SQL:</p>
<pre><code>SELECT * FROM table WHERE column LIKE '%PostgreSQL%';
</code></pre>
<p>Are you interested in PGroonga? Please install<a href="https://pgroonga.github.io/install/">^4</a> and try
tutorial<a href="https://pgroonga.github.io/tutorial/">^5</a>. You can know all PGroonga features.</p>
<p>You can install PGroonga easily. Because PGroonga provides
packages for major platforms. There are binaries for
Windows.</p>
<p>Thanks,</p> 

<https://www.postgresql.org/about/news/pgroonga-321-multilingual-fast-full-text-search-2893/>

---

## un-football

date: 2024-07-09, from: Ayjay blog

Barney Ronay: Even England, this England’s version of hole-in-the-head football will give you dramatic interventions, trapped energy, last-minute overhead kicks. Somehow France entered this game as the only team at the Euros not to have registered an assist. Before this semi-final they played five games during which nobody on either team had scored from open play. This isn’t [&#8230;] 

<https://blog.ayjay.org/un-football/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-09, from: Miguel de Icaza Mastondon feed)

<p>Lovely work on Terminal.GUI 2.0, now with a UI designer, gradient colors and more</p><p><a href="https://gui-cs.github.io/Terminal.GuiV2Docs/" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">gui-cs.github.io/Terminal.GuiV</span><span class="invisible">2Docs/</span></a></p> 

<https://mastodon.social/@Migueldeicaza/112759051351890858>

---

## Google extends Linux kernel support to keep Android devices secure for longer

date: 2024-07-09, from: OS News

Android, like many other operating systems, uses the open-source Linux kernel. There are several different types of Linux kernel releases, but the type that’s most important to Android is the long-term support (LTS) one, as they’re updated regularly with important bug fixes and security patches. Starting in 2017, the support lifetime of LTS releases of Linux was extended from two years to six years, but early last year, this extension was reversed. Fortunately, Google has announced that moving forward, they’ll support their own LTS kernel releases for four years. Here’s why that’s important for the security of Android devices. ↫ Mishaal Rahman at Android Authority I fully support the Linux kernel maintainers dropping the LTS window from six to two years. The only places where such old kernels were being used were embedded devices and things like smartphones vendors refused to update to newer Android releases, and it makes no sense for kernel maintainers to be worrying about that sort of stuff. If an OEM wants to keep using such outdated kernels, the burden should be on that OEM to support that kernel, or to update affected devices to a newer, supported kernel. It seems Google, probably wisely, realised that most OEMs weren&#8217;t going to properly upgrade their devices and the kernels that run on them, and as such, the search giant decided to simply create their own LTS releases instead, which will be supported for four years. Google already maintains various Android-specific Linux kernel branches anyway, so it fits right into their existing development model for the Android Linux kernel. Some of the more popular OEMs, like Google itself or Samsung, have promised longer support life cycles for new Android versions on their devices, so even with this new Android-specific LTS policy, there&#8217;s still going to be cases where an OEM will have to perform a kernel upgrade where they didn&#8217;t have to before with the six year LTS policy. I wonder if this is going to impact any support promises made in recent years. 

<https://www.osnews.com/story/140185/google-extends-linux-kernel-support-to-keep-android-devices-secure-for-longer/>

---

## Mozilla opts to extended Windows 7/8/8.1 support

date: 2024-07-09, from: OS News

Among them, Byron Jourdan, Senior Director, Product Management of Mozilla, under the Reddit username ComprehensiveDoor643 revealed that Mozilla plans to support Firefox on Windows 7 for longer. When asked separately about whether it also included Windows 8 and 8.1 too, Jourdan added that it was certainly the plan, though for how long the extended support would last was still undecided. ↫ Sayan Sen at Neowin Excellent move by Mozilla. I doubt there&#8217;s that many new features and frameworks in Windows 10 or 11 that are absolutely essential to Firefox working properly, so assuming it can gracefully disable any possible Windows 10/11-exclusive features, it should be entirely possible to use Firefox as an up-to-date, secure, and capable browser on Windows 7/8.x. Windows 7 and 8.x users still make up about 2.7% of Windows users worldwide, and with Windows&#8217; popularity, that probably still translates to millions and millions of people. Making sure these people have access to a safe and secure browser is a huge boon, and I&#8217;m very happy Mozilla is going to keep supporting these platforms as best they can, at least for now. For those of us who already consider especially Windows 7 a retrocomputing platform &#8211; I sure do &#8211; this is also great news, as any retro box or VM we load up with it will also get a modern browser. Just excellent news all around. 

<https://www.osnews.com/story/140183/mozilla-opts-to-extended-windows-7-8-8-1-support/>

---

## No more boot loader: please use the kernel instead

date: 2024-07-09, from: OS News

Most people are familiar with GRUB, a powerful, flexible, fully-featured bootloader that is used on multiple architectures (x86_64, aarch64, ppc64le OpenFirmware). Although GRUB is quite versatile and capable, its features create complexity that is difficult to maintain, and that both duplicate and lag behind the Linux kernel while also creating numerous security holes. On the other hand, the Linux kernel, which has a large developer base, benefits from fast feature development, quick responses to vulnerabilities and greater overall scrutiny. We (Red Hat boot loader engineering) will present our solution to this problem, which is to use the Linux kernel as its own bootloader. Loaded by the EFI stub on UEFI, and packed into a unified kernel image (UKI), the kernel, initramfs, and kernel command line, contain everything they need to reach the final boot target. All necessary drivers, filesystem support, and networking are already built in and code duplication is avoided. ↫ Marta Lewandowska I&#8217;m not a fan of GRUB. It&#8217;s too much of a single point of failure, and since I&#8217;m not going to be dual-booting anything anyway I&#8217;d much rather use something that isn&#8217;t as complex as GRUB. Systemd-boot is an option, but switching over from GRUB to systemd-boot, while possible on my distribution of choice, Fedora, is not officially supported and there&#8217;s no guarantee it will keep working from one release to the next. The proposed solution here seems like another option, and it may even be a better option &#8211; I&#8217;ll leave that to the experts to discuss. It seems like to me that the ideal we should be striving for is to have booting the operating system become the sole responsibility of the EUFI firmware, which usually already contains the ability to load any operating system that supports UEFI without explicitly installing a bootloader. It&#8217;d be great if you could set your UEFI firmware to just always load its boot menu, instead of hiding it behind a function key or whatever. We made UEFI more capable to address the various problems and limitations inherent in BIOS. Why are we still forcing UEFI to pretend it still has the same limitations? 

<https://www.osnews.com/story/140181/no-more-boot-loader-lease-use-the-kernel-instead/>

---

##  If dragons were real, how might fire-breathing work? &#8220;A dragon could draw... 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044908-if-dragons-were-real-how>

---

## NASA Inspires at 2024 ESSENCE Fest in New Orleans

date: 2024-07-09, from: NASA breaking news

NASA joined the self-designated “party with a purpose” to let participants in the 30th ESSENCE Festival of Culture in New Orleans know there is space for everybody at the space agency. NASA representatives from the agency’s Headquarters in Washington participated in a panel conversation about Black women in the aerospace industry and diversity in science, [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/stennis/essence-fest-2024/>

---

##  True statement that sounds completely false: Steph Curry cannot spin a basketball... 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044932-true-statement-that-sound>

---

## iOS 18: Vehicle Motion Cues

date: 2024-07-09, from: Michael Tsai

Tim Hardwick: According to Apple, research shows that motion sickness is commonly caused by a sensory conflict between what a person sees and what they feel, which can prevent some users from comfortably using iPhone or iPad while riding in a moving vehicle. Vehicle Motion Cues are designed to avoid this sensory conflict with the [&#8230;] 

<https://mjtsai.com/blog/2024/07/09/ios-18-vehicle-motion-cues/>

---

## CarPlay at WWDC24

date: 2024-07-09, from: Michael Tsai

Casper Kessels (April 2024, via Hacker News): The first version of CarPlay has been available since 2016 and has been a major success. For car industry standards, it was adopted quickly and by almost every carmaker. But since then, the car industry has been changing while the design and functionality of CarPlay have mostly stayed [&#8230;] 

<https://mjtsai.com/blog/2024/07/09/carplay-at-wwdc24/>

---

## Mac App Impersonation

date: 2024-07-09, from: Michael Tsai

J&#233;r&#244;me Segura (via Ric Ford): On June 24, we observed a new campaign distributing a stealer targeting Mac users via malicious Google ads for the Arc browser. This is the second time in the past couple of months where we see Arc being used as a lure, certainly a sign of its popularity. It was [&#8230;] 

<https://mjtsai.com/blog/2024/07/09/mac-app-impersonation/>

---

## Stack Overflow Links Pushing Malware

date: 2024-07-09, from: Michael Tsai

Lawrence Abrams (via Hacker News): Cybercriminals are abusing Stack Overflow in an interesting approach to spreading malware&#8212;answering users&#8217; questions by promoting a malicious PyPi package that installs Windows information-stealing malware.[&#8230;]This PyPi package is named &#8216;pytoileur&#8217; and was uploaded by threat actors to the PyPi repository over the weekend, claiming it was an API management tool. [&#8230;] 

<https://mjtsai.com/blog/2024/07/09/stack-overflow-links-pushing-malware/>

---

##  I saw Midnight in Chernobyl at a bookstore over the weekend and... 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044927-i-saw-midnight-in-chernob>

---

## A moment walking towards the sunset

date: 2024-07-09, from: Manu - I write blog


                <p>The sound of wind blowing through the trees and the wild grass has to be one of the most relaxing sounds existing in nature.</p>
<p>Add to that a great view of the mountains and a lovely summer sunset and you have the best possible set for an evening walk.</p>
<figure class="m-o" data-template="with"><div class="m-m"><img class="img" loading="lazy" src="https://manuelmoreale.com/media/pages/thoughts/a-moment-walking-towards-the-sunset/867bcf09a5-1720549120/img_1368.jpeg" style="aspect-ratio:1000 / 1333"></div></figure>                <hr>
                <p>Thank you for keeping RSS alive. You're awesome.</p>
                <p><a href="mailto:hello@manuelmoreale.com">Email me</a> ::
                <a href="https://manuelmoreale.com/guestbook">Sign my guestbook</a> :: 
                <a href="https://ko-fi.com/manuelmoreale">Support for 1$/month</a> :: 
                <a href="https://manuelmoreale.com/supporters">See my awesome supporters</a> :: 
                <a href="https://buttondown.email/peopleandblogs">Subscribe to People and Blogs</a></p>
             

<https://manuelmoreale.com/@/page/VsoqxkIPE2bjwU1t>

---

## NASA Invites Media to 65th Birthday Celebration for Iconic Logo

date: 2024-07-09, from: NASA breaking news

NASA’s logo turns 65 on Monday, July 15, and media are invited to its birthday celebration in Cleveland, the city where the iconic symbol was designed. To mark the logo’s birthday, NASA’s Glenn Research Center in Cleveland will host a series of activities celebrating the city’s connection to one of the most recognized logos in [&#8230;] 

<https://www.nasa.gov/news-release/nasa-invites-media-to-65th-birthday-celebration-for-iconic-logo/>

---

##  Free Shipping on Kottke Tees 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/free-shipping-on-kottke-tees>

---

## What Happens if You Shoot Down a Delivery Drone?

date: 2024-07-09, updated: 2024-07-09, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/07/09/what-happens-if-you-shoot-down-a-delivery-drone/>

---

## NASA Technology Soars at Selfridge Air Show

date: 2024-07-09, from: NASA breaking news

NASA’s Glenn Research Center staff traveled to Michigan for the Selfridge Air National Guard Base air show, open house, and STEAM Expo, June 8 and 9. NASA’s Journey to Tomorrow, a 53-foot traveling exhibit, was a popular feature that&#160;showcased exploration in air and space. Additionally, experts from NASA&#8217;s Fission Surface Power project shared information on [&#8230;] 

<https://www.nasa.gov/general/nasa-technology-soars-at-selfridge-air-show/>

---

## International and Space Law

date: 2024-07-09, from: NASA breaking news

The International and Space Law Practice Group (ISLPG) is responsible for providing legal advice and counsel regarding international matters at Headquarters and all NASA Centers. Some of the legal issues for which ISLPG is responsible include: international law, including space law; domestic law which may impact NASA’s international cooperation; issues involving the United Nations or [&#8230;] 

<https://www.nasa.gov/organizations/international-and-space-law/>

---

## Rainbow Alliance Advisory Group Showcases NASA at Pride Event in Downtown Cleveland

date: 2024-07-09, from: NASA breaking news

For the second year in a row, NASA Glenn Research Center’s Rainbow Alliance Advisory Group (RAAG), with support from additional Glenn employees, marched in Cleveland’s “Pride in the CLE” festival on June 1.&#160; This year, they widened their presence by staffing an exhibit booth, which showcased NASA and inclusion in the workplace.&#160;&#160; Throughout the day, [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/glenn/rainbow-alliance-advisory-group-showcases-nasa-at-pride-event-in-downtown-cleveland/>

---

## NASA Glenn Welcomes Summer Student Interns

date: 2024-07-09, from: NASA breaking news

NASA Glenn Research Center’s Office of STEM Engagement provided a multi-faceted orientation—including a welcome from Center Director Dr. Jimmy Kenyon—for 151 student interns (on-site and virtually) last month. This summer, student interns from across the United States and U.S. territories will gain practical experience while working with scientists, engineers, and individuals from many other professions.&#160; [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/glenn/nasa-glenn-welcomes-summer-student-interns/>

---

##  Here&#8217;s how auto dealerships try to scam you when buying a car.... 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044918-heres-how-auto-dealership>

---

## Celebrate the Heliophysics Big Year with Free Heliophysics and Math Webinars from NASA HEAT

date: 2024-07-09, from: NASA breaking news

The Heliophysics Big Year (HBY) is a global celebration of the Sun’s influence on Earth and the entire solar system. It began with the Annular Solar Eclipse on Oct. 14, 2023, continued through the Total Solar Eclipse on Apr. 8, 2024, and will conclude with Parker Solar Probe’s closest approach to the Sun in December […] 

<https://science.nasa.gov/learning-resources/science-activation/celebrate-the-heliophysics-big-year-with-free-heliophysics-and-math-webinars-from-nasa-heat/>

---

## Spectral Energies developed a NASA SBIR/STTR-Funded Tech that Could Change the Way We Fly

date: 2024-07-09, from: NASA breaking news

Editor Note: Article written by Nicholas Mercurio With $20 million in commercial sales and $15 million in sales to government agencies, minority-owned small business Spectral Energies, based in Beavercreek, Ohio, has found a customer base for its pulse-burst laser systems. NASA has played a significant role in developing the technology through the Small Business Innovation [&#8230;] 

<https://www.nasa.gov/general/spectral-energies/>

---

##  Project 2025 in a Nutshell 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/project-2025-in-a-nutshell>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-09, from: Miguel de Icaza Mastondon feed)

<p>This video shows:</p><p>- The new Xcode-inspired debugger pad - organizationally, I like it more<br />- Bits of Codea-inspired keyboard assistant<br />- The old text editor (shown here as a tool to assist the port)<br />- The new text editor<br />- The game running side-by-side on a separate iOS Scene (hopefully we can run in a dedicated monitor)<br />- the new iOS provided emulation controls that are mapped to regular controller input.</p><p>And as you can see, still a lot of polish needed before this can be shipped</p> 

<https://mastodon.social/@Migueldeicaza/112757280658430619>

---

## On Sudan and the Interminable Catastrophe: A Conversation with Bedour Alagraa

date: 2024-07-09, from: Logic Magazine


                <p>Bedour Alagraa in conversation with J Khadijah Abdurahman about the history, present, and future of Sudan and its diaspora in the wake of the one year anniversary of the war.</p>

             

<https://logicmag.io/issue-21-medicine-and-the-body/on-sudan-and-the-interminable-catastrophe-an-interview-with-bedour-alagraa>

---

##  Biden is The Candidate. Gabrielle Blair on the practical facts of the... 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044926-biden-is-the-candidate-ga>

---

##  Gladiator II 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/gladiator-ii>

---

## 2024-07-09 Murten

date: 2024-07-09, from: Alex Schroeder's Blog

<h1 id="2024-07-09-murten">2024-07-09 Murten</h1>

<p>We&rsquo;re spending two nights in Murten or Morat. The lake is small with a circumference of about 25km. <a href="2018-murten/index">A few years ago</a> we ran around it – but today we ran about six or seven kilometres before turning back. 13km is enough, these days. We&rsquo;re both out of shape, sadly.</p>

<p>Just after sunset, looking out over the lake.</p>

<p><img loading="lazy" src="2024-07-09-murten-1.jpg" alt="" /></p>

<p>Working on a half-enclosed patio until late into the night. There was drunken shouting to be heard until midnight, on a Monday. I did not know that this sleepy town was so rowdy!</p>

<p><img loading="lazy" src="2024-07-09-murten-2.jpg" alt="" /></p>

<p>The town itself looks unchanged from our last visit in 2018.</p>

<p><img loading="lazy" src="2024-07-09-murten-3.jpg" alt="" /></p>

<p>We ran over to the eastern side of the lake, a protected wetland.</p>

<p><img loading="lazy" src="2024-07-09-murten-4.jpg" alt="" /></p>

<p>Our destination was this village at the foot of <a href="https://en.wikipedia.org/wiki/Mont_Vully">Mont Vully</a>.
A rather small mountain.</p>

<p><img loading="lazy" src="2024-07-09-murten-5.jpg" alt="" /></p>

<p>It got rather hot so by the time we arrived in Sugiez, I was so very tired.</p>

<p><img loading="lazy" src="2024-07-09-murten-6.jpg" alt="" /></p>

<p>Canals connect the lake of Murte, the lake of Neuchâtel and the lake of Bienne. So many motorboats with proud men and underdressed women going up and down the channel. 🙄</p>

<p><img loading="lazy" src="2024-07-09-murten-7.jpg" alt="" /></p>

<p>The first sunflowers are out!</p>

<p><img loading="lazy" src="2024-07-09-murten-8.jpg" alt="" /></p>

<p><a class="tag" href="/search/?q=%23Switzerland">#Switzerland</a> <a class="tag" href="/search/?q=%23Pictures">#Pictures</a></p> 

<https://alexschroeder.ch/view/2024-07-09-murten>

---

##  The Avengers Assemble for Lakota Dub 

date: 2024-07-09, updated: 2024-07-09, from: Jason Kottke blog

 

<https://kottke.org/24/07/the-avengers-assemble-for-lakota-dub>

---

**@Dave Winer's Scripting News** (date: 2024-07-09, from: Dave Winer's Scripting News)

<a href="https://x.com/davewiner/status/1810673176516452771">Suppose Biden abdicates</a>. What happens then? How does this not become a mess like Bernie and Hillary, or Nader and Gore,  Perot and Clinton, Kennedy and Carter, McCarthy, RFK and Humphrey. 

<http://scripting.com/2024/07/09.html#a134026>

---

## From Polar Peaks to Celestial Heights: Christy Hansen’s Unique Path to Leading NASA’s Commercial Low Earth Orbit Development Program

date: 2024-07-09, from: NASA breaking news

Christy Hansen&#8217;s journey with NASA spans more than two decades and is marked by roles that have shaped her into a leader in space exploration. Now serving on a six-month rotation as the deputy manager for NASA’s CLDP (Commercial Low Earth Orbit Development Program) at Johnson Space Center in Houston, she brings 25 years of [&#8230;] 

<https://www.nasa.gov/centers-and-facilities/johnson/from-polar-peaks-to-celestial-heights-christy-hansens-unique-path-to-leading-nasas-commercial-low-earth-orbit-development-program/>

---

## Jon Stewart, yes you should STFU

date: 2024-07-09, from: Dave Winer's Scripting News

<p><i>The problem is elites grabbing the wheel with no clue about what comes next.</i></p>
<p><img class="imgRightMargin" src="https://imgs.scripting.com/2024/02/14/bidenActionFigure.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Every Tuesday I look for Jon Stewart's opening for the Daily Show on YouTube. It's always funny, great comedy, whether or not you agree with what he says, and I usually do agree. But not when it comes to him pushing President Biden out, without any idea of what comes next, and how the people, even some people who love his show, feel about having no voice. </p>
<p>If the voters organize, using the tools we have now, and stay organized after the election, we could elect anyone to be president. There's never been a more clear opportunity to win a landslide. It depends on organization, and elites not grabbing the steering wheel with no clue about what comes next, and driving us off a cliff. </p>
<p>I've been close to elites at times, and I can tell you, they aren't any smarter than you, they just have more power. I think that's been the real problem. We have failed to stay a democracy as we've gotten the tools to really be a democracy in ways we never could have before. And now we're at the last moment before it's all flushed away and the NYT et al (including our hero Stewart) are making it more certain, not less. </p>
<p>Be warned I get really angry at the end and raise my voice. I don't think I've ever done that in a podcast, and I'm not sure I like it. But the rage is real. </p>
<p><a href="http://scripting.com/2024/07/09/yesJonStewartPleaseSTFU.m4a">16 minute podcast</a>. </p>
 

<http://scripting.com/2024/07/09/131713.html?title=jonStewartYesYouShouldStfu>

---

## 2024-07-08 Neuchâtel

date: 2024-07-09, from: Alex Schroeder's Blog

<h1 id="2024-07-08-neuchâtel">2024-07-08 Neuchâtel</h1>

<p>We spent two nights in Neuenburg or Neuchâtel. They came under Prussian control in 1707 because the locals were looking for a government that was far away and wouldn&rsquo;t meddle in their affairs. It became a republic and a canton of Switzerland in 1848.</p>

<blockquote>
<p>On the death in 1707 of Marie d&rsquo;Orleans-Longueville, duchess de Nemours and Princess of Neuchâtel, the people had to choose her successor from among fifteen claimants. They wanted their new prince first and foremost to be a Protestant, and also to be strong enough to protect their territory but based far enough away to leave them to their own devices. Louis XIV actively promoted the many French pretenders to the title, but the Neuchâtelois people passed them over in favour of King Frederick I of Prussia, who claimed his entitlement in a rather complicated fashion through the Houses of Orange and Nassau. With the requisite stability assured, Neuchâtel entered its golden age, with commerce and industry (including watchmaking and lace) and banking undergoing steady expansion. – <a href="https://en.wikipedia.org/wiki/Neuch%C3%A2tel">Wikipedia</a></p>
</blockquote>

<p>We met a friend and went for a walk in the late afternoon: from La Neuveville up the Combe du Pulouvi. I took some flower pictures.</p>

<p>At the new Jeunes Rives. It looked very nice but we did see a big dead fish, belly up. That dampened our enthusiasm somewhat.</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-1.jpg" alt="" /></p>

<p>We began our walk around four.</p>

<p>Ästige Graslilie<br>
Anthericum ramosum</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-2.jpg" alt="" /></p>

<p>Gewöhnliches Sonnenröschen<br>
Helianthemum nummularium</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-3.jpg" alt="" /></p>

<p>There were some nice waterfalls to see on the way up.</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-4.jpg" alt="" /></p>

<p>And a view of the Lac de Bienne.</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-5.jpg" alt="" /></p>

<p>Bunte Kronwicke<br>
Securigera varia</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-6.jpg" alt="" /></p>

<p>Habichtskraut<br>
Hieracium</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-7.jpg" alt="" /></p>

<p>Wildes Alpenveilchen<br>
Cyclamen purpurascens</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-8.jpg" alt="" /></p>

<p>More pools…</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-9.jpg" alt="" /></p>

<p>And waterfalls…</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-10.jpg" alt="" /></p>

<p>But was cool and full of moss.</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-11.jpg" alt="" /></p>

<p>Nesselblättrige Glockenblume<br>
Campanula trachelium</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-12.jpg" alt="" /></p>

<p>Alpen-Ziest<br>
Stachys alpina</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-13.jpg" alt="" /></p>

<p>Sometimes you see plants that you feel you have never seen in your whole life.</p>

<p>Wiesen-Wachtelweizen<br>
Melampyrum pratense</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-14.jpg" alt="" /></p>

<p>An even better view of the lake. That very long and narrow line of land connects the town of Erlach or Cerlier to <a href="https://en.wikipedia.org/wiki/St._Peter%27s_Island">St. Peter&rsquo;s Island</a>.</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-15.jpg" alt="" /></p>

<p>Breitblättrige Lichtnelke<br>
Silene latifolia</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-16.jpg" alt="" /></p>

<p>Efeu-Sommerwurz<br>
Orobanche hederae</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-17.jpg" alt="" /></p>

<p>Breitblättrige Platterbse<br>
Lathyrus latifolius</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-18.jpg" alt="" /></p>

<p>And back to Neuchâtel (“Newcastle”).</p>

<p><img loading="lazy" src="2024-07-07-neuchatel-19.jpg" alt="" /></p>

<p><a class="tag" href="/search/?q=%23Pictures">#Pictures</a> <a class="tag" href="/search/?q=%23Switzerland">#Switzerland</a></p> 

<https://alexschroeder.ch/view/2024-07-07-neuchatel>

---

## Introducing KV Backup for Deno Subhosting

date: 2024-07-09, updated: 2024-07-09, from: Deno blog

This new feature allows Subhosting users to configure their KV databases to back up data to their own S3-compatible object storage via APIs. 

<https://deno.com/blog/subhosting-kv-backup>

---

## Facilitating Good Decision Making: Context, Scope, and Timeframe

date: 2024-07-09, from: Accidentally in Code

Someone asked me about my management philosophy recently, and after I stopped panicking (I wrote a book, I should have a philosphy&#8230; how do you summarize 400 pages and 2 years of your life in one sentence) I came up with: &#8220;My job is to make it easier for people to make good decisions.&#8221; What [&#8230;] 

<https://cate.blog/2024/07/09/facilitating-good-decision-making-context-scope-and-timeframe/>

---

## Moonbound revisited

date: 2024-07-09, from: Ayjay blog

A while back I said that I had read Robin Sloan’s new novel Moonbound and hoped to read it again. Wrong! I had not genuinely read it. Now I have, and I love this book.  Several decades ago, the semiotician A. J. Greimas claimed that all stories are comprised of six actants, in three pairs:  [&#8230;] 

<https://blog.ayjay.org/moonbound-revisited/>

---

## Programming, Fluency, and AI

date: 2024-07-09, from: O'Reilly Radar

It’s clear that generative AI is already being used by a majority—a large majority—of programmers. That’s good. Even if the productivity gains are smaller than many think, 15% to 20% is significant. Making it easier to learn programming and begin a productive career is nothing to complain about either. We were all impressed when Simon [&#8230;] 

<https://www.oreilly.com/radar/programming-fluency-and-ai/>

---

## Raspberry Pi OS airs out some fresh options for the summer

date: 2024-07-09, updated: 2024-07-09, from: Liam Proven's articles at the Register

<h4>Why go outside in the sunshine when you could play with tiny computers in a darkened room?</h4>
      <p>Perhaps hoping to mark independence from x86 PCs, there's a new July 4th release of the official Raspberry Pi OS, although it remains coy of giving a version number.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/07/09/raspberry_pi_os_5_3/>

---

## Some more thoughts on TBC

date: 2024-07-09, from: Manu - I write blog


                <p>I know, I know. You’re tired of hearing me ranting about The Browser Company and their Arc “browser”. I’m also tired of reading about them but I keep stumbling on news about this silly company and I can’t help myself from yelling at the screen. They aired a commercial on TV the other day, clearly a reasonable thing to do when you have a product with no revenues and no business model. And not happy with that, they released a YouTube video with the CEO explaining the ideas “hidden” in the commercial and that tells you how good at marketing these people are. If you need to release an almost 5-minute video to explain the meaning of a stupid 1-minute ad you probably need a better marketing department.</p>
<p>Anyway, leaving aside the pointlessness of this whole thing what prompted me to write this post were some of the things the CEO said in the video explainer which are so profoundly stupid that I find them offensive. If you are an ARC user you should be offended too because he must think you’re all a bunch of idiots.</p>
<p>He said in the video that there were three questions he wanted to ask:</p>
<ol>
<li>What is this internet we want to live within?</li>
<li>What if the web were truly made for you?</li>
<li>What are we here for?</li>
</ol>
<hr />
<blockquote>
<p>What is this internet we want to live within? What do we want to create for ourselves?</p>
</blockquote>
<p>Just to make it clear, what this company is allegedly making is a browser. It’s in their fucking name: The Browser Company. They’re not making a new internet. They’re not creating anything. As I wrote before, they’re not even making an actual browser like the awesome people at <a href="https://ladybird.org">Ladybird</a>. They’re building a wrapper around Chrome. This makes the CEO rant about browser monoculture even more hilarious since by doing that they're part of the problem.</p>
<p>In the video, he tries to argue that Silicon Valley companies are driven by efficiency, you type something in Google and he gives you an answer but there are times when you don’t want an answer, you want to get access to the best set of results because you’re after experiences and serendipity and a bunch of other complete nonsense. He asked, “Do we even believe in a single answer?“. The answer is no Josh. No, we don’t. This is why all search engines have a SERP. No search engine gives you one answer. </p>
<blockquote>
<p>A lot of other times something just seems really interesting to you and you want to go wide and deep and be surprised there are a lot of other things we might want to optimise for when we’re designing this new internet</p>
</blockquote>
<p>Designing this new internet? You’re not designing a new internet. You’re using some algorithm to decide for me which 6 or 8 results I should be seeing. In doing that you’re worse than Google. </p>
<blockquote>
<p>The second thing is what would it look like if truly the web was made for you?</p>
</blockquote>
<p>I’m gonna ask you a question Josh: how can you make a web for me without profiling me? I’ll wait for an answer the same way I’m still waiting to hear back from your support team on that ticket I opened months ago where I was asking how to prevent your stupid ARC Search from accessing my sites.</p>
<p>You asked “What does the personal web, the personal internet look like” and there are various ways to tackle this question but it certainly doesn’t look like a generated ARC Search result page that is the same for everyone. You said the web doesn’t feel personal because we all see the same stuff and yet you showed a screenshot of your stupid ARC Search pulling in results from Reddit and Trip Advisor. Again, if you’re reading this and you’re an ARC user, they must think you’re a complete idiot to believe all this stuff.</p>
<p>As for the final question, what are we here for and why am I looking at this video, well Josh, I work in tech. I code websites, I care about the web. Especially the independent, personal one. The one you’re ranting about but probably don’t care about at all. I also have to care about your stupid browser because even though it’s Chrome sometimes it has bugs that aren’t present on Chrome and so I have to test on it. I’d love to not care about your browser and your stupid ARC Search but I have to because this is the world I live in. My email is public if you want to get in touch. You probably won’t because why would you, you have nothing to gain from a private exchange after all.</p>                <hr>
                <p>Thank you for keeping RSS alive. You're awesome.</p>
                <p><a href="mailto:hello@manuelmoreale.com">Email me</a> ::
                <a href="https://manuelmoreale.com/guestbook">Sign my guestbook</a> :: 
                <a href="https://ko-fi.com/manuelmoreale">Support for 1$/month</a> :: 
                <a href="https://manuelmoreale.com/supporters">See my awesome supporters</a> :: 
                <a href="https://buttondown.email/peopleandblogs">Subscribe to People and Blogs</a></p>
             

<https://manuelmoreale.com/@/page/0ya3lbWL9J8LlISo>

---

## Twirly Shirley the Pico-powered precision turntable

date: 2024-07-09, from: Raspberry Pi News (.com)

<p>VEEB Projects has decided to take down Lazy Susan by introducing Twirly Shirley, a Raspberry Pi Pico W-powered precision turntable.</p>
<p>The post <a href="https://www.raspberrypi.com/news/twirly-shirley-the-pico-powered-precision-turntable/">Twirly Shirley the Pico-powered precision turntable</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/twirly-shirley-the-pico-powered-precision-turntable/>

---

**@Jessica Smith's blog** (date: 2024-07-09, from: Jessica Smith's blog)

<p>Trying to convince Viv he should go on <cite>Hard Quiz</cite> with the special topic of the 1916 <abbr title="Victorian Football League">VFL</abbr> premiership season, because he&rsquo;s like obsessed with it, hahah. Tonight he&rsquo;s explaining to me at length how many layers there are to it: the class divide, the sectarian divide between Protestants and Catholics in that era, contested notions of masculinity (is it about going off to kill people abroad, or staying home to play sport?)&hellip; honestly, he has me convinced, it&rsquo;s an interesting topic.</p> 

<https://www.jayeless.net/2024/07/1916-vfl-premiership-season.html>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-09, from: Miguel de Icaza Mastondon feed)

<p>Also, heavily borrowing the style from FinalCut Pro for their inspector.</p><p>My original attempt on the left, the one where I start to use fonts, spacing and bubbles from FinalCutPro styled on the right - still a work in progress, but it already feels better:</p> 

<https://mastodon.social/@Migueldeicaza/112754493858510362>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-09, from: Miguel de Icaza Mastondon feed)

<p>I loved the FinalCut Pro UI elements for entering rotation data.   One neat feature is that in addition to the swipe to choose an angle, if you long-press the dial goes into high-precision input mode.</p><p>I think I finally got the animation just right:</p> 

<https://mastodon.social/@Migueldeicaza/112754476066529208>

---

**@Jessica Smith's blog** (date: 2024-07-09, from: Jessica Smith's blog)

<p>Guys, we have one of those Brother printers that are supposed to be so solid and reliable, but it is not cooperating today. Keeps sending itself to sleep mid-job and &ldquo;going offline&rdquo; so I have to physically walk to it and turn it back on. &ldquo;Printing&rdquo; blank pages. When told to print a three-page document (ONCE), it prints TWO copies of page 1 &amp; 2 then skips page 3. That &ldquo;just buy this Brother printer everyone has, it&rsquo;s fine&rdquo; article lied to me.</p> 

<https://www.jayeless.net/2024/07/unreliable-brother-printer.html>

---

## Wordle Kitty is EIC at NYT!

date: 2024-07-08, from: Dave Winer's Scripting News

<p>Wordle Kitty has become the Editor in Chief of the NY Times! That's pretty cool right. But she's still cute. And she's working late tonight, trying to come up with the perfect cover story. She figured it out! She put a picture of herself on the front page, with a huge headline saying "She's great!" In the picture she's smart and cute and really adorable, and she's smiling and wearing a button that says "Hi Mom!"</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/07/08/wordleKittyEICatNYT.png"></center>Wordle Kitty on the front page.</div></p>
 

<http://scripting.com/2024/07/08/231350.html?title=wordleKittyIsEicAtNyt>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-08, from: Miguel de Icaza Mastondon feed)

<p>Making Godot on iPad shine, like Gnome or Mono before has graduated from “how hard can this be?” To “oh god what have I done”</p> 

<https://mastodon.social/@Migueldeicaza/112753403629430456>

---

##  The Onion highlights some of the lesser-known Project 2025 plans. &#8220;Immigration through... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044922-the-onion-highlights-some>

---

## NASA Moon Rocket Stage for Artemis II Moved, Prepped for Shipment

date: 2024-07-08, from: NASA breaking news

NASA is preparing the SLS (Space Launch System) rocket core stage that will help power the first crewed mission of NASA’s Artemis campaign for shipment. On July 6, NASA and Boeing, the core stage lead contractor, moved the Artemis II rocket stage to another part of the agency’s Michoud Assembly Facility in New Orleans. The [&#8230;] 

<https://www.nasa.gov/image-article/nasa-moon-rocket-stage-for-artemis-ii-moved-prepped-for-shipment/>

---

##  Project 2025 would be a disaster for the environment. &#8220;It would be... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044917-project-2025-would-be-a>

---

## NASA, Boeing Provide Next Update on Space Station Crew Flight Test

date: 2024-07-08, from: NASA breaking news

Leadership from NASA and Boeing will participate in a media briefing at 12:30 p.m. EDT Wednesday, July 10, to discuss the agency’s Crew Flight Test at the International Space Station. Audio of the media teleconference will stream live on the agency’s website: https://www.nasa.gov/nasatv Participants include: Media interested in participating must contact the newsroom at NASA’s [&#8230;] 

<https://www.nasa.gov/news-release/nasa-boeing-provide-next-update-on-space-station-crew-flight-test/>

---

## 2024-06-28 Connecting the laptop to the server via NNCP

date: 2024-07-08, from: Alex Schroeder's Blog

<h1 id="2024-06-28-connecting-the-laptop-to-the-server-via-nncp">2024-06-28 Connecting the laptop to the server via NNCP</h1>

<p>First, install the <code>nncp</code> package on both systems.
In addition to that, install the <code>openbsd-inetd</code> package on the server.
(In the following passages, I&rsquo;m connected as <code>root</code> to the server.)</p>

<p>Generate new configs on the systems that are missing <code>/etc/nncp.hjson</code>.</p>

<pre><code>nncp-cfgnew &gt; /etc/nncp.hjson
chown nncp:nncp /etc/nncp.hjson
chmod 660 /etc/nncp.hjson
</code></pre>

<p>Examine the file using a text editor.
Each system needs to know the public keys of the other.</p>

<p>So, on the laptop, I need to add to add the public keys of the server.
I also want to specify that I&rsquo;m going to call the node on a regular basis
and that files sent to me from that node should be saved in my &ldquo;incoming&rdquo;
directory. I also want to accept mail.</p>

<pre><code>    sibirocobombus: {
      id:       ...
      exchpub:  ...
      signpub:  ...
      noisepub: ...
      incoming: &quot;/home/alex/incoming/sibirocobombus&quot;
      exec: {
        sendmail: [&quot;/usr/sbin/sendmail&quot;]
      }
      addrs: {
        internet: &quot;alexschroeder.ch:5400&quot;
      }
      calls: [
        {
          cron: &quot;12 * * * *&quot;
        }
      ]
    }
</code></pre>

<p>And on the server, I need to add the public keys of the laptop.
I also want to save incoming files from the laptop.
And I want to accept mail.</p>

<pre><code>    melanobombus: {
      id:       ...
      exchpub:  ...
      signpub:  ...
      noisepub: ...
      incoming: &quot;/home/alex/incoming&quot;
      exec: {
        sendmail: [&quot;/usr/sbin/sendmail&quot;]
      }
    }
</code></pre>

<p>Note how the laptop calls the server but the server does not call the laptop!</p>

<p>Let&rsquo;s make sure those directories exist:</p>

<pre><code>mkdir ~/incoming
ssh sibirocobombus mkdir incoming
</code></pre>

<p>Let&rsquo;s create a file and send it from the laptop to the server using <code>nncp-file</code>:</p>

<pre><code>echo Hello &gt; hello.txt
sudo -u nncp nncp-file hello.txt sibirocobombus:
</code></pre>

<p>Check the log using <code>nncp-log</code>:</p>

<pre><code>nncp-log | tail -n 1
2024-06-28T21:36:02Z File hello.txt (282 B) is sent to sibirocobombus:hello.txt
</code></pre>

<p>Let&rsquo;s connect to the server and check:</p>

<pre><code>ssh sibirocobombus ls incoming
</code></pre>

<p>Nothing has arrived!</p>

<p>Let&rsquo;s call the server using <code>nncp-call</code>:</p>

<pre><code>sudo -u nncp nncp-call sibirocobombus
2024-06-28T22:07:36Z ERROR Calling sibirocobombus (alexschroeder.ch:5400): dial tcp [2a02:418:6a04:178:209:50:237:1]:5400: connect: connection refused
</code></pre>

<p>Oops. It&rsquo;s not running? That&rsquo;s right, I need to run <code>nncp-daemon</code> on the server side.</p>

<p>Add the following to <code>/etc/inetd.conf</code> on the server to accept NNCP connections on port 5400:</p>

<pre><code>5400	stream	tcp	nowait	nncp	/usr/local/bin/nncp-daemon	nncp-daemon -quiet -ucspi
</code></pre>

<p>Reload it:</p>

<pre><code>systemctl reload openbsd-inetd
</code></pre>

<p>Try again on the laptop:</p>

<pre><code>sudo -u nncp nncp-call sibirocobombus
2024-06-28T22:14:13Z We have got for sibirocobombus: 1 packets, 486 B
2024-06-28T22:14:13Z ERROR SP with sibirocobombus (nice MAX): reading: EOF
2024-06-28T22:14:13Z ERROR Connection to sibirocobombus (alexschroeder.ch:5400): EOF
</code></pre>

<p>Back to the server:</p>

<pre><code>nncp-log
2024-06-28T22:15:25Z ERROR SP nice MAX: waiting for first message: unknown peer: ...
2024-06-28T22:15:25Z Connected to unknown
</code></pre>

<p>Strange! That id listed there matches my laptop&rsquo;s <code>noisepub</code>.
Checking the <code>/etc/nncp.hjson</code> on the server again, I see that pasted the wrong pubkeys… 🤦
Fix that and try again…</p>

<pre><code>sudo -u nncp nncp-call sibirocobombus
2024-06-28T22:19:31Z We have got for sibirocobombus: 1 packets, 486 B
2024-06-28T22:19:31Z Connection to sibirocobombus (alexschroeder.ch:5400)
2024-06-28T22:19:31Z Tx QAROTFMX25ZPQOT5..I6JKH75EC2DMSSZQ 486 B/486 B 100% (0 B/sec)
2024-06-28T22:19:31Z Packet QAROTFMX25ZPQOT5DEQQC7JE7EN3UD2FZIJNI6JKH75EC2DMSSZQ is sent
2024-06-28T22:19:42Z Finished call with sibirocobombus (0:0:11): 32 KiB received (32 KiB/sec), 33 KiB transferred (33 KiB/sec)
</code></pre>

<p>Looking good!
Check for the file on the server:</p>

<pre><code>ssh sibirocobombus ls incoming
</code></pre>

<p>It&rsquo;s not there!</p>

<p>Let&rsquo;s investigate on the server:</p>

<pre><code>nncp-log
2024-06-28T22:19:31Z Packet QAROTFMX25ZPQOT5DEQQC7JE7EN3UD2FZIJNI6JKH75EC2DMSSZQ (486 B) (nice B): 0%
2024-06-28T22:19:31Z melanobombus has got for us: 1 packets, 486 B
2024-06-28T22:19:31Z Connection with melanobombus (PIPE)
2024-06-28T22:19:31Z Got packet QAROTFMX25ZPQOT5DEQQC7JE7EN3UD2FZIJNI6JKH75EC2DMSSZQ 100% (486 B / 486 B): done
2024-06-28T22:19:42Z Finished call with melanobombus (0:0:11): 33 KiB received (33 KiB/sec), 32 KiB transferred (32 KiB/sec)
</code></pre>

<p>This looks good, so we have the packet!
And we can confirm this using <code>nncp-stat</code>:</p>

<pre><code>nncp-stat
melanobombus
	nice:   B | Rx:      486 B,   1 pkts | Tx:        0 B,   0 pkts
self
</code></pre>

<p>What needs to happen now is &ldquo;tossing&rdquo; using <code>nncp-toss</code>.
This is, &ldquo;processing&rdquo; the packet and thereby delivering it.</p>

<pre><code>sudo -u nncp nncp-toss
2024-06-28T22:24:28Z ERROR Tossing file melanobombus/QAROTFMX25ZPQOT5DEQQC7JE7EN3UD2FZIJNI6JKH75EC2DMSSZQ (6 B): hello.txt: mktemp: open /home/alex/incoming/nncpfile17dd4b56c39f64d4: permission denied
</code></pre>

<p>That&rsquo;s right, the incoming file should be writable by more people…</p>

<pre><code>chgrp nncp /home/alex/incoming
chmod g+w /home/alex/incoming
</code></pre>

<p>Try again!</p>

<pre><code>sudo -u nncp nncp-toss
2024-06-28T22:26:35Z Rx file QAROTFMX25ZPQOT5..I6JKH75EC2DMSSZQ 6 B/6 B 100% (0 B/sec)
2024-06-28T22:26:36Z Got file hello.txt (6 B) from melanobombus
</code></pre>

<p>It worked:</p>

<pre><code>ls -l /home/alex/incoming/
total 4
-rw-r--r-- 1 nncp nncp 6 29. Jun 00:26 hello.txt

cat /home/alex/incoming/hello.txt 
Hello
</code></pre>

<p>🥳</p>

<p>I need to think about <a href="https://nncp.mirrors.quux.org/Administration.html">admin issues</a>, clearly.</p>

<p>I need to set up regular <code>nncp-call</code> on the laptop; I need to set up regular <code>nncp-toss</code> on the server.</p>

<p>It would be nice to switch from <code>inetd</code> to <code>systemd</code> perhaps? Surely they have written a replacement for it. They have written replacements for everything! 😬</p>

<p>Next up, <a href="2024-06-29-nncp">sending email back and forth</a>!</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23NNCP">#NNCP</a></p> 

<https://alexschroeder.ch/view/2024-06-28-nncp>

---

##  The Terrifying Project 2025 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/the-terrifying-project-2025>

---

## NASA to Cover Northrop Grumman’s 20th Cargo Space Station Departure

date: 2024-07-08, from: NASA breaking news

Northrop Grumman’s uncrewed Cygnus spacecraft is scheduled to depart the International Space Station on Friday, July 12, five and a half months after delivering more than 8,200 pounds of supplies, scientific investigations, commercial products, hardware, and other cargo to the orbiting laboratory for NASA and its international partners. This mission was the company’s 20th commercial [&#8230;] 

<https://www.nasa.gov/news-release/nasa-to-cover-northrop-grummans-20th-cargo-space-station-departure/>

---

##  How to Stop Fascism: Five Lessons of the Nazi Takeover 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/how-to-stop-fascism-five-lessons-of-the-nazi-takeover>

---

## 30 Years Ago: STS-65 Lifts Off

date: 2024-07-08, from: NASA breaking news

The space shuttle Columbia launches from Pad 39A at NASA’s Kennedy Space Center in Florida on July 8, 1994. This was the second flight of International Microgravity Laboratory (IML-2), carrying more than twice the number of experiments and facilities as IML-1. The crew split into two teams to perform around-the-clock research. More than 80 experiments, [&#8230;] 

<https://www.nasa.gov/image-article/30-years-ago-sts-65-lifts-off/>

---

## NASA’s Neurodiversity Network Interns Speak at National Space Development Conference

date: 2024-07-08, from: NASA breaking news

Two high school interns funded by NASA’s Neurodiversity Network (N3) presented their work from Summer 2023 at the recent National Space Society (NSS) International Space Development Conference (ISDC-2024), held in Los Angeles, CA (May 23-26, 2024). Both interns were mentored by Dr. Pascal Lee, Planetary Scientist at the SETI Institute and Chair of the Mars […] 

<https://science.nasa.gov/learning-resources/science-activation/nasas-neurodiversity-network-interns-speak-at-national-space-development-conference/>

---

## Driverless Cars in the Wild

date: 2024-07-08, updated: 2024-07-08, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/07/08/driverless-cars-in-the-wild/>

---

##  Fascism and Fear and the Media 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/fascism-and-fear-and-the-media>

---

## Apple Intelligence for Siri in Spring 2025

date: 2024-07-08, from: Michael Tsai

William Gallagher: While many Apple Intelligence features will roll out with iOS 18 during the remainder of 2024, its much-awaited revamp of Siri will wait until iOS 18.4 in 2025.[&#8230;]Before then, there will be a new design to Siri. That will presumably include how Apple has shown that invoking Siri will bring a flare around [&#8230;] 

<https://mjtsai.com/blog/2024/07/08/apple-intelligence-for-siri-in-spring-2025/>

---

## Ivory 2.0

date: 2024-07-08, from: Michael Tsai

Nil&#233;ane: Now, in the app&#8217;s redesigned Hashtags tab, you can create a list that contains up to four hashtags, and you can even exclude specific hashtags if you&#8217;re looking to fine-tune the resulting timeline. [&#8230;] The other big improvement in Ivory 2.0 is its redesigned share sheet extension for creating posts. It is now fully-featured, [&#8230;] 

<https://mjtsai.com/blog/2024/07/08/ivory-2-0/>

---

## Signal for Mac’s “Encrypted” Database

date: 2024-07-08, from: Michael Tsai

Signal: Storing messages outside of your active Signal device is not supported. Messages are only stored locally. An iTunes or iCloud backup does not contain any of your Signal message history. This makes it private on iOS because other apps can&#8217;t access the message database. But the same design doesn&#8217;t work so well with the [&#8230;] 

<https://mjtsai.com/blog/2024/07/08/signal-for-macs-encrypted-database/>

---

## Epic Games Store Temporarily Allowed

date: 2024-07-08, from: Michael Tsai

Epic Games: Apple has informed us that our previously rejected Epic Games Store notarization submission has now been accepted. Eric Slivka (Hacker News): Apple today said it has approved the third-party Epic Games Store in the European Union, allowing the Fortnite developer to launch its alternative app marketplace in those countries, reports Reuters. Is running [&#8230;] 

<https://mjtsai.com/blog/2024/07/08/epic-games-store-temporarily-allowed/>

---

##  The Forgotten Black Explorers Who Transformed Americans&#8217; Understanding of the Wilderness. Esteban,... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044916-the-forgotten-black-explo>

---

## View From the Nuba Mountains: An Interview with Kuna

date: 2024-07-08, from: Logic Magazine


                <p>An interview with Kuna (a pseudonym for her protection), a Nuba diaspora returnee currently displaced within Sudan due to the ongoing war between the Rapid Support Forces and the Sudanese Armed Forces.</p>

             

<https://logicmag.io/issue-21-medicine-and-the-body/view-from-the-nuba-mountains-an-interview-with-kuna>

---

## Happy Birthday, Meatball! NASA’s Iconic Logo Turns 65

date: 2024-07-08, from: NASA breaking news

On July 15, 2024, NASA’s logo is turning 65. The iconic symbol, known affectionately as “the meatball,” was developed at NASA’s Lewis Research Center in Cleveland (now called NASA Glenn). Employee James Modarelli, who started his career at the center as an artist and technical illustrator, was its chief designer. The red, white, and blue [&#8230;] 

<https://www.nasa.gov/general/happy-birthday-meatball-nasas-iconic-logo-turns-65/>

---

## NASA Mission to Study Mysteries in the Origin of Solar Radio Waves

date: 2024-07-08, from: NASA breaking news

NASA’s CubeSat Radio Interferometry Experiment, or CURIE, is scheduled to launch July 9, 2024, to investigate the unresolved origins of radio waves coming from the Sun. Scientists first noticed these radio waves decades ago, and over the years they’ve determined the radio waves come from solar flares and giant eruptions on the Sun called coronal […] 

<https://science.nasa.gov/science-research/heliophysics/nasa-mission-to-study-mysteries-in-the-origin-of-solar-radio-waves/>

---

##  We Talking About Practice 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/we-talking-about-practice>

---

## What Is Machine Learning?

date: 2024-07-08, from: Quanta Magazine

Neural networks and other forms of machine learning ultimately learn by trial and error, one improvement at a time.             <p>The post <a href="https://www.quantamagazine.org/what-is-machine-learning-20240708/" target="_blank">What Is Machine Learning?</a> first appeared on <a href="https://api.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<https://www.quantamagazine.org/what-is-machine-learning-20240708/>

---

##  An interesting teaser trailer for F1, the racing drama starring Brad Pitt... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044910-an-interesting-teaser-tra>

---

## NextSTEP Q: CIS Capability Studies III – Lunar User Terminals & Network Orchestration and Management System

date: 2024-07-08, from: NASA breaking news

Solicitation Number: NNH16ZCQ001K-1_Appendix-Q July 8, 2024 &#8211; Solicitation Released Solicitation Overview NASA’s long-term vision to provide for a resilient space and ground communications and navigation infrastructure in which space mission users can seamlessly “roam” between an array of space-based and ground-based networks has been bolstered by innovative studies delivered by industry through the Next Space [&#8230;] 

<https://www.nasa.gov/general/nextstep-q-cis-capability-studies-iii-lunar-user-terminals-network-orchestration-and-management-system/>

---

## Editorial Note: On Medicine and the Body in Tech

date: 2024-07-08, from: Logic Magazine


                <p>Editorial Note from Editor Khadijah Abdurrahman for Logic(s) Issue 21</p>

             

<https://logicmag.io/issue-21-medicine-and-the-body/editorial-note-on-medicine-and-the-body-in-tech>

---

##  Appalling vs. a Whole Other Level of Appalling 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/appalling-vs-a-whole-other-level-of-appalling>

---

## NASA’s Begoña Vila Awarded 2024 Galician Excellence Award

date: 2024-07-08, from: NASA breaking news

Begoña Vila, an instrument systems engineer from KBR who worked on NASA’s James Webb Space Telescope, has been selected to receive the 2024 Galician Excellence Title in the Sciences and Medicine Category for her career and work on Webb. This award comes from the Spanish Association of Galician Entrepreneurs of Catalonia (AEGA-CAT), a civic and social […] 

<https://science.nasa.gov/missions/webb/nasas-begona-vila-awarded-2024-galician-excellence-award/>

---

**@Dave Winer's Scripting News** (date: 2024-07-08, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/02/01/runner.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">If you've lived much at all you know what Joni says is true. I got there when my grandmother died in 1977, when I was 22, my first close relative that I lost, and I tried to come to grips with the idea that I'd never see her again and found it impossible, but it was true nonetheless. No way to escape it. When my mother died, in 2018, I only thought after we cleared her house to be sold, the house I grew up in, that I didn't even take pictures of it before it was emptied. I was so used to it being a constant, I forgot to realize until it was too late, that I was saying goodbye to everything I knew for my entire life. Forever. It's why we're playing such a dangerous game of chicken with Biden's presidency, because the stakes are so incredibly high. A mathematical approach to this problem says imho that everyone should shut the fuck up about Biden's flaws and get us organized so we can handle any eventuality. The problem isn't that Biden might die, the problem is that even if he were to win, we'll be right back here in another four years, and at that time we will have to grapple with an even more dire situation. Whatever happens this year, what's waiting for us is for most of us to wake up from the dream that there are any constants in our lives. It's all falling apart, in every way. The only thing that matters is we start working together, intelligently, or else it's over. 

<http://scripting.com/2024/07/08.html#a141318>

---

**@Dave Winer's Scripting News** (date: 2024-07-08, from: Dave Winer's Scripting News)

<a href="https://www.youtube.com/watch?v=94bdMSCdw20">Joni Mitchell</a>: "You don't know what you've got till it's gone." 

<http://scripting.com/2024/07/08.html#a141153>

---

## It's that time

date: 2024-07-08, from: Dave Winer's Scripting News

<p>This is the time, every four years, when we have to confront the corruption of American journalism. Most of the time we can turn our attention elsewhere, until we get a Bush or Trump in the White House, and then we have to own up to the fact that we let them, the journalists, get away with it again.</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/07/08/butHerEmails.png"></center>We can't forget her emails, even though we never knew what it was about. </div></p>
 

<http://scripting.com/2024/07/08/135647.html?title=itsThatTime>

---

**@Dave Winer's Scripting News** (date: 2024-07-08, from: Dave Winer's Scripting News)

I admit that after the debate and the interminable attacks from the press on our democratic process that I'm pretty depressed about the future. I was talking with a friend over the weekend, a fellow NYer who moved up to the mountains as I did, about the political situation, and I asked if he would be prepared to sign a loyalty oath to Trump. He said he'd never do it. If they tried to force him, he'd get a gun and shoot them. This isn't the first time I've heard that, and I called bullshit. You're never going to do that. I know this guy, I know myself. I won't do it either. And I think I probably will have to sign the loyalty oath and so will you. There are so many ways to turn your life off, legally -- and without recourse. Think about what happens when you lose access to a social media account. Or when a credit rating agency doesn't believe you are who you are. Or when someone hijacks your phone and you can't get back control of it (and try to use anything without a working phone number). I've been through all these miserable processes. And none of them were legal, or controlled by the US government. A president who demands loyalty of you will get it. And that is certainly exactly where we're headed, again. 

<http://scripting.com/2024/07/08.html#a135236>

---

##  There I Ruined It: Kermit the Frog sings Snoop Dogg&#8217;s Gin and... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044907-there-i-ruined-it-kermit>

---

## Design and build the next version of OSNews

date: 2024-07-08, from: OS News

Despite being live since 1997, OSNews has had fairly few redesigns in the grand scheme of things. If my memory serves me correctly, we&#8217;ve had a grand total of 6 designs, and we&#8217;re currently on version 6, introduced about 5 years ago because of unpleasant reasons. It&#8217;s now 2024, and for a variety of reasons, we&#8217;re looking to work towards version 7 of our almost 30 year old website, and we need help. I have a very clear idea of what I want OSNews 7 to be like &#8211; including mockups. The general goals are making the site visually simpler, reducing our dependency on WordPress extensions, and reducing the complexity of our theme and website elements to make it a bit easier for someone like me to change small things without breaking anything. Oh and a dark mode that works. Note that we&#8217;re not looking to change backends or anything like that &#8211; WordPress will stay. If you have the WordPress, design, and developer skills to make something like this a reality, and in the process shape the visual identity of one of the oldest continuously running technology news websites in the world, send me an email. 

<https://www.osnews.com/story/140175/design-and-build-the-next-version-of-osnews/>

---

**@Dave Winer's Scripting News** (date: 2024-07-08, from: Dave Winer's Scripting News)

I find the <a href="https://blogroll.social/">blogroll</a> on the <a href="http://scripting.com/">home page</a> of my blog to be an incredible <a href="https://imgs.scripting.com/2024/07/08/blogrollScreenShot.png">way</a> to catch up on what people I follow are posting to their blogs and news sites. It's more like a feed reader than a blogroll because when a site updates it moves to the top of the list and when you click the wedge next to the title you get the five most recent posts with links to the full story. Maybe it was a  mistake calling this a blogroll. I'm trying to come up with a better place to put it so more people would see it and use it and might think it would be nice to have a place like that for themselves. In any case I'm thinking about what to do next with FeedLand, which is what's behind the blogroll software. It hasn't lived up to my hopes, and I don't think it's likely to. I may be done writing software for others, I was writing only for myself for a few years, between 2017 and 2021, and I really liked that. The experiment of writing for others was not a success. So I'm thinking about how to wind down FeedLand, keep it available for the people who are already using it, but close it to new membership. Just thinking out loud here for a bit. It's that time, to consider what I want to do with the next few years, assuming, praise Murphy, I have them to play with. <span class="spOldSchoolEmoji">😄</span> 

<http://scripting.com/2024/07/08.html#a134140>

---

##  Whoever the Democratic Candidate Is, Americans Have Already Lost. &#8220;If you take... 

date: 2024-07-08, updated: 2024-07-08, from: Jason Kottke blog

 

<https://kottke.org/24/07/0044906-whoever-the-democratic-ca>

---

## Getting the most out of TWM, X11’s default window manager

date: 2024-07-08, from: OS News

Graham&#8217;s TWM page has been around for like two decades or so and still isn&#8217;t even remotely as old as TWM itself, and in 2021 they published an updated version with even more information, tips, and tricks for TWM. The Tab Window Manager finds its origins in the lat 1980s, and has been the default window manager for the X Windowing System for a long time, now, too. Yet, few people know it exists &#8211; how many people even know X has a default window manager? &#8211; and even fewer people know you can actually style it, too. OK, so TWM is fairly easy to configure but alot of people, upon seeing the default config, scream &#8216;Ugh, thats awful!&#8217; and head off to the ports tree or their distro sources in search of the latest and greatest uber desktop environment. There are some hardcore TWM fans and mimimalists however who stick around and get to liking the basic feel of TWM. Then they start to mod it and create their own custom dekstop. All part of the fun in Unix :). ↫ Graham&#8217;s TWM page I&#8217;ll admit I have never used TWM properly, and didn&#8217;t know it could be themed at all. I feel very compelled to spend some time with it now, because I&#8217;ve always liked the by-now classic design where the right-click desktop menu serves as the central location for all your interactions with the system. There are quite a few more advanced, up-to-date forks of TWM as well, but the idea of sticking to the actual default X window manager has a certain charm. I almost am too afraid to ask, because the answer on OSNews to these sorts of questions is almost always &#8220;yes&#8221; &#8211; do we have any TWM users in the audience? I&#8217;m extremely curious to find out if TWM actually has a reason to exist at this point, or if, in 2024, it&#8217;s just junk code in the X.org source repository, because I&#8217;m looking at some of these screenshots and I feel a very strong urge to give it a serious go. 

<https://www.osnews.com/story/140172/getting-the-most-out-of-twm-x11s-default-window-manager/>

---

## The Official Radare2 Book

date: 2024-07-08, from: Tilde.news

<p><a href="https://tilde.news/s/n2yuf2/official_radare2_book">Comments</a></p> 

<https://book.rada.re>

---

## A brief summary of click-to-raise and drag-and-drop interaction on X11 and Wayland

date: 2024-07-08, from: OS News

The goal is to be able to drag an icon from a background window without immediately raising that window and obscuring the drop target window when using the click-to-focus mode. This is a barebones description of what needs to happen. It assumes familiarity with code, protocols, etc. as needed. ↫ Quod Video The articles describes how to get there using both X and Wayland, and it&#8217;s clear there&#8217;s still quite a bit of work to do. At least on my KDE Wayland setups, the way it works now is that when I click to drag an icon from a lower Dolphin window to a higher one, it brings the lower window forward, but then, when I hover for a bit over the other window, it brings it back up. Of course, this only works if the destination window remains at least partially visible, which might not always be the case. For usability&#8217;s sake, there needs to be an option to start a drag operation from one window to the next without altering the Z-order. 

<https://www.osnews.com/story/140170/a-brief-summary-of-click-to-raise-and-drag-and-drop-interaction-on-x11-and-wayland/>

---

## the arc of Hume’s history

date: 2024-07-08, from: Ayjay blog

I’ve been reading David Hume’s massive and magnificent History of England, and it’s generally fascinating — though there are, it must be said, extended passages in which he’s just dutifully relating what his researches have been able to discover about events which are not as well-attested as he would like. At the end of Volume [&#8230;] 

<https://blog.ayjay.org/the-arc-of-humes-history/>

---

## PiDP-10 | #MagPiMonday

date: 2024-07-08, from: Raspberry Pi News (.com)

<p>Oscar Vermeulen is back with his most ambitious retro kit yet. PJ Evans returns to the space age.</p>
<p>The post <a href="https://www.raspberrypi.com/news/pidp-10-magpimonday/">PiDP-10 | #MagPiMonday</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/pidp-10-magpimonday/>

---

**@Dave Winer's Scripting News** (date: 2024-07-08, from: Dave Winer's Scripting News)

Is Sulzberger another Musk. Inherited something of value, moving as quickly as possible to destroy that value. 

<http://scripting.com/2024/07/07.html#a020124>

---

## human voices

date: 2024-07-08, from: Ayjay blog

My friend Rick Gibson makes a fascinating argument here. You need to read the whole thing, but a brief summary would go like this: No matter how vast the corpus of text on which chatbots currently draw, in order to be successful in the future they will need to have an ever-expanding and ever-developing corpus. [&#8230;] 

<https://blog.ayjay.org/human-voices/>

---

## Advent of Computing: Episode 135 - XENIX

date: 2024-07-08, from: Tilde.news

<p><a href="https://tilde.news/s/mbbbno/advent_computing_episode_135_xenix">Comments</a></p> 

<https://adventofcomputing.libsyn.com/episode-135-xenix>

---

## My fears about AI are not what you think

date: 2024-07-08, from: Ze Iaso's blog

A clip from a longer stream VOD where I run through my fears with the AI industry 

<https://xeiaso.net/videos/2024/ai-fears/>

---

## Seymour and Brownie

date: 2024-07-07, from: John Udell blog

My family, on my dad&#8217;s side, were Jews from Poland and Ukraine. His parents came to America before the shit hit the fan, but I grew up knowing two people who weren&#8217;t so lucky. Seymour Mayer lived across the street during my teens. And Annie Braunschweig, who we knew as Brownie, had taken care of &#8230; <a href="https://blog.jonudell.net/2024/07/07/seymour-and-brownie/" class="more-link">Continue reading <span class="screen-reader-text">Seymour and Brownie</span></a> 

<https://blog.jonudell.net/2024/07/07/seymour-and-brownie/>

---

**@Dave Winer's Scripting News** (date: 2024-07-07, from: Dave Winer's Scripting News)

I feel about twitter the same as I feel about the nytimes. As if we're not on speaking terms. Not that the nytimes ever listened, or really twitter, for that matter. 

<http://scripting.com/2024/07/07.html#a222924>

---

## Dear journalism

date: 2024-07-07, from: Dave Winer's Scripting News

<p>You know how Trump said he could shoot someone on Fifth Ave and wouldn't lose any supporters. This is the same thing except with Biden.</p>
<p>What you need to know:</p>
<ol>
<li>We all knew this would happen.</li>
<li>We all saw it happen, we don't need you to tell us.</li>
<li>We're going with him anyway.</li>
</ol>
<p>The plan is this:</p>
<ol>
<li>If Biden gets disabled, or dies, before or after the election -- VP Harris steps up.</li>
<li>Now everyone can relax.</li>
</ol>
<p>Hot tip for journos: The Supreme Court <a href="https://en.wiktionary.org/wiki/decloak">decloaked</a>, an even bigger story.</p>
<p>BTW, am I imagining it or has journalism inadvertently admitted that they all want Trump to lose? It's logical that they would, but I thought they always said they were objective on this stuff. The famous <a href="https://pressthink.org/2010/11/the-view-from-nowhere-questions-and-answers/">View From Nowhere</a>. Has that pretense accidentally been dropped?</p>
 

<http://scripting.com/2024/07/07/222234.html?title=dearJournalism>

---

## Peter Easthope commented on issue #141 at Felix Oliver Friedrich / Oberon A2

date: 2024-07-07, updated: 2024-07-07, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:23" dir="auto"><a href="/fnec.ece" data-reference-type="user" data-user="20002" data-container="body" data-placement="top" class="gfm gfm-project_member js-user-link" title="fnec ece">@fnec.ece</a> · 6 days ago</p>
<blockquote data-sourcepos="2:1-3:66" dir="auto">
<p data-sourcepos="2:3-3:66">Hi, I have corrected the problem for oberon subsystem in the
MyUnix.KbdMouse.Mod file. Could you test after HotKeys disabled?</p>
</blockquote>
<p data-sourcepos="5:1-5:49" dir="auto">I&#39;m trying Günther&#39;s 10272 on Debian 12, 64 bit.</p>
<p data-sourcepos="7:1-8:76" dir="auto">Disabled setting in Configuration.XML.<br/>
&lt;!-- Setting name=&#34;Hotkey support&#34; value=&#34;Hotkeys.Open&#34;/--&gt;</p>
<p data-sourcepos="10:1-12:83" dir="auto">After compiling your MyUnix.KbdMouse.Mod, disabling HotKeys and rebooting, the Oberon
subsysem allows placement of the star marker.  The &lt;delete&gt; key
has no visible effect.  These lines appear in the console which started the system.</p>
<div class="gl-relative markdown-code-block js-markdown-code">
<pre data-sourcepos="14:5-41:0" class="code highlight js-syntax-highlight language-plaintext" v-pre="true"><code><span id="LC1" class="line" lang="plaintext">Autostart: executing WMNavigate.Open -vs -n 1 0 0 Navigation:TaskList</span>
<span id="LC2" class="line" lang="plaintext">{P cpuid= 0, pid= 56 ETH Oberon / LinuxA2 (64-bit, Rev. 10272)}</span>
<span id="LC3" class="line" lang="plaintext">    Modules.Module in Oberon-Configuration.@ConstSections: error: incompatible</span>
<span id="LC4" class="line" lang="plaintext"></span>
<span id="LC5" class="line" lang="plaintext">    Modules.Module in Oberon-Configuration.@ConstSections: error: incompatible</span>
<span id="LC6" class="line" lang="plaintext"></span>
<span id="LC7" class="line" lang="plaintext">    Modules.Module in Oberon-Configuration.@ConstSections: error: incompatible</span>
<span id="LC8" class="line" lang="plaintext"></span>
<span id="LC9" class="line" lang="plaintext">    Modules.Module in Oberon-Configuration.@ConstSections: error: incompatible</span>
<span id="LC10" class="line" lang="plaintext"></span>
<span id="LC11" class="line" lang="plaintext">    Modules.Module in Oberon-Mail.@ConstSections: error: incompatible</span>
<span id="LC12" class="line" lang="plaintext"></span>
<span id="LC13" class="line" lang="plaintext">    Modules.Module in Oberon-Mail.@ConstSections: error: incompatible</span>
<span id="LC14" class="line" lang="plaintext"></span>
<span id="LC15" class="line" lang="plaintext">    Modules.Module in Oberon-NetSystem.@ConstSections: error: incompatible</span>
<span id="LC16" class="line" lang="plaintext"></span>
<span id="LC17" class="line" lang="plaintext">    Modules.Module in Oberon-NetSystem.@ConstSections: error: incompatible</span>
<span id="LC18" class="line" lang="plaintext"></span>
<span id="LC19" class="line" lang="plaintext">could not get module while importing Oberon-NetSystem</span>
<span id="LC20" class="line" lang="plaintext">    Oberon-NetSystem.@Module in Oberon-TelnetGadgets.@ConstSections: error: unresolved</span>
<span id="LC21" class="line" lang="plaintext"></span>
<span id="LC22" class="line" lang="plaintext">    Modules.Module in Oberon-NetSystem.@ConstSections: error: incompatible</span>
<span id="LC23" class="line" lang="plaintext"></span>
<span id="LC24" class="line" lang="plaintext">could not get module while importing Oberon-NetSystem</span>
<span id="LC25" class="line" lang="plaintext">    Oberon-NetSystem.@Module in Oberon-TelnetGadgets.@ConstSections: error: unresolved</span>
<span id="LC26" class="line" lang="plaintext"></span>
<span id="LC27" class="line" lang="plaintext">{P cpuid= 0, pid= 61 Oberon started}</span></code></pre>
<copy-code></copy-code>
</div>
<p data-sourcepos="42:1-42:62" dir="auto">64 bit A2 attempted to use executables compiled for 32 bit A2?</p>
<blockquote data-sourcepos="44:1-44:41" dir="auto">
<p data-sourcepos="44:3-44:41">Sorry, could not insert xml statements.</p>
</blockquote>
<p data-sourcepos="46:1-48:10" dir="auto">No problem.  Caught your meaning. The less than character can be expressed by
&lt;nowiki&gt;&lt;&lt;/nowiki&gt;
or by \&lt;.</p>
<p data-sourcepos="50:1-50:37" dir="auto">Thanks for the help,           ... P.</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/141#note_193237>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-07, from: Miguel de Icaza Mastondon feed)

<p>I do regret my naïveté saying for years “one state or two state solutions”.   </p><p>The two state solution is merely gold-plating the turd of extermination.</p> 

<https://mastodon.social/@Migueldeicaza/112747071664046569>

---

## Democratic superstars of 2024

date: 2024-07-07, from: Dave Winer's Scripting News

<p>On Mastodon, <a href="https://mastodon.social/@sarajw@front-end.social/112746718207413752">Sara Joy writes</a>: "Let Biden run. Let Kamala and lots of other younger Dems take on lots of events. Support him from underneath. If and when he falters, the party is there to prop him up, take up the slack, or step in."</p>
<p>I had a similar idea.</p>
<p>Make this the campaign of the cabinet, governors and congress.</p>
<p>Let all the great next generation democrats shine. </p>
<p>Big stadium events where a lot of them share the stage.</p>
<p>Joe Biden dials in via satellite.</p>
<p>"Listen, I'm an old dude, so I need my rest but look at all these bright young people who help me do the business of the American people. Aren't they wonderful!"</p>
<p>He puts on his robe and slippers, sits in a rocking chair with a dog at his feet and his grandchildren playing <a href="https://en.wikipedia.org/wiki/Yahtzee">yahtzee</a> and checkers...</p>
<p>And one of the juniors is hanging out with him, making sure he doesn't spill his beer, so you know they have his back.</p>
<p>Baseball cards are handed out at the events with each of the stars of the Democratic Party.</p>
<p>Collect them all!</p>
<p>You get 5 free cards with a $25 contribution.</p>
<p>Some would be very rare.</p>
<p>Also there would be Old Timers Day, where Bernie, Hillary, Barack, Michelle and Bill would have a concert. </p>
<p>Hosted by Mayor Pete!</p>
<p>Joe is at the top of the ticket, but we got him covered.</p>
<p>Out comes VP Kamala and she sings the anthem along with Taylor Swift wearing a red white and blue sequined outfit. </p>
<p>And Santa Claus, Uncle Sam, Betsy Ross, and the Founding Fathers. </p>
<p>Frederick Douglass, Martin Luther King, Jackie Robinson, Rosa Parks and the freedom fighters. </p>
<p>All the heroes of America, standing up for America. </p>
<p>The Greatest Generation and Repubs like Ike, even Reagan and of course Lynne Cheney.</p>
<p>We don't need no freaking monarch, they all sing.</p>
<p>No we don't! shouts the people. </p>
<p><a href="https://www.youtube.com/watch?v=vJBaIUZwmTs&t=43s">On video</a>, the Dead sing "I'm Uncle Sam, how do you do!"</p>
<p>Shake the hand that shook the hand of PT Barnum and Charlie Chan.</p>
<p>We all march together to victory.</p>
 

<http://scripting.com/2024/07/07/200033.html?title=democraticSuperstarsOf2024>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-07, from: Miguel de Icaza Mastondon feed)

<p>I should add that once you have this volume of photos, Apple Photos really shines - for searching events, people, locations, themes, memories;  and also to search text of screenshots and memes.</p> 

<https://mastodon.social/@Migueldeicaza/112746275704496953>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-07, from: Miguel de Icaza Mastondon feed)

<p>Two things I just learned:</p><p>- the iCloud storage is in addition to your AppleOne subscription, so I don’t need to buy the 6 TB tier yet, I only have to buy the additional 2TB to extent the 2TB I have from AppleOne.</p><p>- you can share the storage with your family (our family is 5, not sure if Apple Storage is Utah-friendly)</p> 

<https://mastodon.social/@Migueldeicaza/112746147803568530>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-07, from: Miguel de Icaza Mastondon feed)

<p>I wonder how your photo library compares to mine?   </p><p>I always loved photos, but taking pictures and videos of the kids took this to another level.</p> 

<https://mastodon.social/@Migueldeicaza/112746110456638924>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-07, from: Miguel de Icaza Mastondon feed)

<p>Cutting it close:</p> 

<https://mastodon.social/@Migueldeicaza/112746082195834579>

---

**@Dave Winer's Scripting News** (date: 2024-07-07, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2020/11/26/uncleSam.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I'm glad Biden is attacking journalists, he has a much bigger voice than I do. If I had his influence I'd be saying the same things, though I wouldn't be as kind. It's time to put the journalists back where they belong, covering news, not trying to run the country. 

<http://scripting.com/2024/07/07.html#a153855>

---

## fnec ece commented on issue #141 at Felix Oliver Friedrich / Oberon A2

date: 2024-07-07, updated: 2024-07-07, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:39" dir="auto">Sorry, could not insert xml statements.</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/141#note_193236>

---

## fnec ece commented on issue #141 at Felix Oliver Friedrich / Oberon A2

date: 2024-07-07, updated: 2024-07-07, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:88" dir="auto">What happens if you don&#39;t load HotKeys module at Autostart section of Configuration.XML;</p>
<p data-sourcepos="3:1-3:24" dir="auto">To comment, change this:</p>

<p data-sourcepos="7:1-7:3" dir="auto">To:</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/141#note_193235>

---

**@Dave Winer's Scripting News** (date: 2024-07-07, from: Dave Winer's Scripting News)

It's time to stop caring what journalists think. 

<http://scripting.com/2024/07/07.html#a142927>

---

**@Jessica Smith's blog** (date: 2024-07-07, from: Jessica Smith's blog)

<p>We were looking after this little guy (the dog, Patches) for the weekend. He and Gidget got along so well! Very happy to sleep in close proximity and be chill. I think Gidget is happy to be the only pet again after Viv returned him home, though 😂</p>
<div style="display: grid; grid-template-columns: auto auto; grid-gap: 0.5rem; margin-top: 0.5rem;">
	
<a href="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches.jpeg" class="glightbox" data-gallery="patches-stayed-the-weekend"
  style="grid-column: 1 / span 2; aspect-ratio: 4 / 3;"><img 
  sizes="(min-width: 715px) 640px, (min-width: 435px) 90vw, 100vw"
  srcset="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_320x0_resize_q85_box.jpeg 320w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_440x0_resize_q85_box.jpeg 440w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_640x0_resize_q85_box.jpeg 640w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_830x0_resize_q85_h2_box.webp 830w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_1280x0_resize_q85_h2_box.webp 1280w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches.jpeg 1920w"
  src="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches_hub4ee6b09933557c4a9e51bb1cbd75bf0_1263923_830x0_resize_q85_h2_box.webp"
  alt="a small dog with short, curly fur (mostly light-coloured with some reddish brown patches), curled up into a tight ball on a carpeted floor near some shoes"
  loading="lazy" class="u-photo u-featured"></a>
<a href="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch.jpeg" class="glightbox" data-gallery="patches-stayed-the-weekend"
  style="aspect-ratio: 4 / 3;"><img 
  sizes="(min-width: 715px) 320px, (min-width: 435px) 45vw, 50vw"
  srcset="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_320x0_resize_q85_box.jpeg 320w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_440x0_resize_q85_box.jpeg 440w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_640x0_resize_q85_box.jpeg 640w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_830x0_resize_q85_h2_box.webp 830w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_1280x0_resize_q85_h2_box.webp 1280w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch.jpeg 1920w"
  src="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-couch_hu9b3619e23955b76ad7e5572a82fa5edf_979100_830x0_resize_q85_h2_box.webp"
  alt="a photo looking lengthways along a couch. in the foreground, a tabby cat lying smugly on the photo-taker&#39;s lap. behind her, the small dog from the previous photo, sleeping. behind him, a brown guy in a blue hoodie scrolling his phone."
  loading="lazy" class="u-photo"></a>
<a href="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed.jpeg" class="glightbox" data-gallery="patches-stayed-the-weekend"
  style="aspect-ratio: 4 / 3;"><img 
  sizes="(min-width: 715px) 320px, (min-width: 435px) 45vw, 50vw"
  srcset="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_320x0_resize_q85_box.jpeg 320w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_440x0_resize_q85_box.jpeg 440w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_640x0_resize_q85_box.jpeg 640w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_830x0_resize_q85_h2_box.webp 830w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_1280x0_resize_q85_h2_box.webp 1280w, https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed.jpeg 1920w"
  src="https://www.jayeless.net/2024/07/patches-stayed-the-weekend/patches-and-gidget-on-bed_hufbbd2208511e0422cf997466147dba6f_1123172_830x0_resize_q85_h2_box.webp"
  alt="a tabby cat, curled up, and a small dog, lying more elongatedly, both sleeping on a brown doona"
  loading="lazy" class="u-photo"></a>

</div> 

<https://www.jayeless.net/2024/07/patches-stayed-the-weekend.html>

---

**@Robert's feed at BlueSky** (date: 2024-07-07, from: Robert's feed at BlueSky)

Thought this was an interesting read. https://maggieappleton.com/home-cooked-software 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3kwo4bimgqa2t>

---

## Leaving Elicit

date: 2024-07-07, from: Maggie Appleton blog

 

<https://maggieappleton.com/leaving-elicit>

---

## Full Circle Weekly News 373

date: 2024-07-07, from: Full Circle Magazine

<ul>
<li>
<p><a href="https://www.mail-archive.com/info-gnu@gnu.org/msg03295.html">GNU Guile 3.0.10:</a></p>
</li>
<li>
<p><a href="https://www.skudonet.com/blog/skudonet-7-1-0-community-edition/">Release SKUDONET 7.1:</a></p>
</li>
<li>
<p><a href="https://www.openshot.org/blog/2024/06/24/new_openshot_release_320/">Release of OpenShot 3.2.0:</a></p>
</li>
<li>
<p><a href="https://news.opensuse.org/2024/06/25/leap-micro-60-availability/">openSUSE Leap Micro 6.0:</a></p>
</li>
<li>
<p><a href="https://github.com/Ubuntu-Sway/Ubuntu-Sway-Remix/releases/tag/24.04">Ubuntu Sway Remix 24.04:</a></p>
</li>
<li>
<p><a href="https://gitlab.com/tile-os/tileos/-/tags/v1.1">TileOS 1.1 distribution update:</a></p>
</li>
<li>
<p><a href="https://github.com/PipeWire/pipewire/releases/tag/1.2.0">Release of PipeWire 1.2.0:</a></p>
</li>
<li>
<p><a href="https://shotcut.org/blog/new-release-240626/">Release of video editor Shotcut 24.06:</a></p>
</li>
<li>
<p><a href="https://opensource.googleblog.com/2024/06/google-open-source-peer-bonus-program-first-group-2024-recipients.html">Google announced the winners of the Open Source Peer Bonus 2024 award:</a></p>
</li>
<li>
<p><a href="https://pointieststick.com/2024/06/28/this-week-in-kde-everything-i-think/">KDE resolves KWin performance issues on older hardware:</a></p>
</li>
<li>
<p><a href="https://gitlab.gnome.org/GNOME/gnome-shell/-/merge_requests/3362">GNOME now supports Wayland-only builds and improves tablet support:</a></p>
</li>
<li>
<p><a href="https://www.debian.org/News/2024/20240629">New versions of Debian 12.6 and 11.10:</a></p>
</li>
<li>
<p><a href="https://newsroom.eclipse.org/news/announcements/eclipse-foundation-introduces-theia-ide-elevate-modern-developer-experience">Theia IDE:</a></p>
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

<https://fullcirclemagazine.org/podcasts/podcast-373/>

