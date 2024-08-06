---
title: columns 2024.32
updated: 2024-08-06 08:33:44
---

# columns 2024.32

(date: 2024-08-06 08:33:44)

---

## Tim Walz for Vice President!

date: 2024-08-06, from: Robert Reich's blog

A terrific choice, on all grounds 

<https://robertreich.substack.com/p/tim-walz-for-vice-president>

---

## 2024-08-06 Pocket Reform

date: 2024-08-06, from: Alex Schroeder's Blog

<h1 id="2024-08-06-pocket-reform">2024-08-06 Pocket Reform</h1>

<p>I got my <a href="https://www.crowdsupply.com/mnt/pocket-reform">MNT Pocket Reform</a> miniature laptop!
I&rsquo;m hoping that this will be my new travel laptop as the Purism laptop I got <a href="2017-12-23_New_Laptop">back in 2017</a> has a <a href="2021-08-26_New_laptop%2C_again%E2%80%BD">broken hinge</a>. The two halves are attached to each other using two super strong hinges. The hinges are so strong, in fact, that one of them ripped its screws out of the plastic. So now the screen is held up by just one super strong hinge and don&rsquo;t really want to open or close it all that often for fear of breaking it.</p>

<p>Here are my initial impressions of the new MNT Pocket Reform.</p>

<p>It is small, but chunky. It&rsquo;s definitely not flat. It also isn&rsquo;t heavy, so I&rsquo;m happy.
The small keyboard and the small trackball work.</p>

<p>I was unable to power it on for the longest time.
I had two problems.</p>

<p>First, there&rsquo;s a small standby power switch on the left hand side that you need to turn on.
The manual suggests &ldquo;using a pointed object such as a SIM card ejector.&rdquo;
Which I managed to find. And then what do you do?
You use the SIM card ejector like you always do: stab it into the small hole.
So I did that for a bit, wondering at the empty spaces I was a able to reach.
What was I supposed to press?
It was only when I started to really look into the small hole that I realized: there was actually something to be moved left and right within it!</p>

<p>Second, the manual says that to turn it on, &ldquo;hold <em>Hyper</em> + <em>Enter</em> for more than 2 seconds.&rdquo;
I pressed those two keys and the OLED display lit up. There was the menu! There it said &ldquo;Power On&rdquo;. I picked it.
Nothing happened. Then the OLED display showed a tiny &ldquo;T&rdquo; in the upper left corner.
I did this again and again, exploring the small menu.
The laptop wouldn&rsquo;t power on no matter how often I selected the menu.
That&rsquo;s because I didn&rsquo;t press <em>Hyper</em> + <em>Enter</em> for <em>more than 2 seconds</em>!
Press those keys until the keyboard lights up with the pink backlights.</p>

<p>I setup my root passwords, created my user account, ran <code>sudo apt update</code> and <code>sudo apt upgrade</code> and looked around at things.
After a few minutes I noticed that there is no indication of the batteries charging.
That made me nervous for a while as I kept seeing that &ldquo;1%&rdquo; charge in the top right corner.
It&rsquo;s probably charging, I thought.
Then the laptop turned off. Oh!
I guess it wasn&rsquo;t charging after all.
What did I miss?
Now that it is powered off, I see that the load percentage starts climbing again.</p>

<p>This is what it says right now:</p>

<pre><code>🔋 3.6                8%
🔋 3.7               Off
                  -1.07A
                  7.57V
</code></pre>

<p>Why is the second battery off?
The manual doesn&rsquo;t explain what On/Off on the second line means.
It&rsquo;s an indication of whether the computer is on or off!
For the longest time I thought that the first battery had some charge and the second battery was &ldquo;off&rdquo;.
Once I rebooted, it changed to &ldquo;On&rdquo;.</p>

<p>In any case, it seems that my problem is that when the laptop powers on without being connected to a charger, it won&rsquo;t charge if you do connect it.
Perhaps a new system image would fix it?
I&rsquo;m not sure. I downloaded an image, unzipped it, wrote it to a microSD card, and maybe booted from it, but nothing seemed to have changed.
I had to provide a root password and a first username and another password… and that&rsquo;s it.
Was I supposed to run a command? I don&rsquo;t know.
Did the <code>apt update &amp;&amp; apt upgrade</code> fix the problem? I don&rsquo;t know.</p>

<p>Anyway, when the laptop suddenly lost power (see above) I waited for it to recharge for a bit and rebooted.
It looked like this had corrupted the disk, somehow.
There are plenty of recovery messages and percentages ending with an error because something cannot be written to the read-only file system.</p>

<p>The output ends with the following, in an extremely tiny font:</p>

<pre><code>...
mount: mounting /dev/mmcblk2p2 on /root failed: Structure needs cleaning
Failed to mount /dev/mmcblk2p2 as root file system
</code></pre>

<p>And now I am dropped in the <code>initramfs</code>.
I try figure what I&rsquo;m supposed to do.
I search for some keywords online but don&rsquo;t understand what I&rsquo;m seeing.
Finally, I try to leave with <code>exit</code>, Ctrl+D and whatever else I can think off.
I reboot. This time there are fewer messages about the filesystem and then I&rsquo;m
back at the login prompt.
It fixed itself.</p>

<p>Phew!</p>

<p>I&rsquo;m back.</p>

<p>My take-away is this: usability and user interface issues both large and small remain a challenge in computers.</p>

<p><a class="tag" href="/search/?q=%23Gadgets">#Gadgets</a> <a class="tag" href="/search/?q=%23Laptop">#Laptop</a> <a class="tag" href="/search/?q=%23Reform">#Reform</a></p> 

<https://alexschroeder.ch/view/2024-08-06-pocket-reform>

---

## Roadmap for the campaign

date: 2024-08-06, from: Dave Winer's Scripting News

<p>A roadmap for the campaign is coming into view.</p>
<ul>
<li>Harris has her knee on Trump's neck, and she won't let up. </li>
<li>There won't be time for anyone to get tired of her. </li>
<li>The campaign rallies should get bigger and bigger, and more rambunctuous. The rally on the Sunday before Election Day should take place in stadiums all over America, with the cast of Democratic leadership spread out too, and the best musicians and comedians, again spread out over all the venues. Streaming on YouTube, with online participation <a href="https://en.wikipedia.org/wiki/Get_out_the_vote">GOTV</a> coordination on the new democrat.social community site.   </li>
<li>Trump is a comedian, a cross between <a href="https://en.wikipedia.org/wiki/Don_Rickles">Don Rickles</a> and <a href="https://en.wikipedia.org/wiki/Joan_Rivers">Joan Rivers</a> with a bit of <a href="https://en.wikipedia.org/wiki/Sam_Kinison">Sam Kinison</a>. He had a good schtick for a long run if you find fascist slapstick entertaining, as millions of Americans do or did. </li>
<li>Last night Maddow tried to get us excited about how the Repubs have planted people on voting boards in swing states with the purpose of stopping the counts, and thus preventing a vote in the Electoral College. But they're doing it too late. The administrators will feel the tide turning too. </li>
<li>This campaign will take place in the popular culture of 2024, which thankfully is not centered on cable news or the NYT. But Mark Zuckerberg and Elon Musk are in control.</li>
<li>In my <a href="http://scripting.com/2017/01/14/whatIfTwtrIsBoughtByARepub.html">2017 piece</a> I thought Zuck would run for president, given his new style <a href="https://imgs.scripting.com/2024/08/06/zucksNewStyle.png">makeover</a> I wouldn't discount that, but these two will certainly have  influence over how the election goes. Both Facebook and Twitter have algorithms that are opaque and controlled by them. Same deal as with the owners of cable media. </li>
<li>Trump stoked resentment with voters for being left behind, even if individually they were doing fine. But that was eight years ago and a lot has happened. Harris saying basically "there you go again" is an <a href="https://www.youtube.com/watch?v=qN7gDRjTNf4&t=46s">echo of Reagan</a>, btw. It worked for Reagan, you just have to get the <a href="https://www.dictionary.com/browse/derision">derision</a> right. And Harris can do that, she laughs and we laugh. Trump loses his mind.</li>
<li>The Harris candidacy happened almost as if it was staged. The campaign hit the ground running, it feels like there was a lot of advance work. Or they picked bloggers who were up and running, gave them the keys and said go. Either approach is fine, breaking through where previous Demo campaigns didn't have the nerve. Whatever it is, there's a sign of competence and urgency in the Democrats that is grounded in the challenge not in some almost religious sense that she's The One, which was understandable with Obama, but won't do now. We have no illusions about what's ahead. I think for that Biden must have been a great teacher. </li>
<li>Now we're grounded. We've seen the outline of our future. Our eyes were fully opened on Jan 6. A few weeks ago the lead Republican thinker behind Project 2025 said, like an idiot, in an interview, it was up to the liberals to avoid a bloodbath, as they took over. You don't hear that anymore. Those people must now be thinking more seriously about jail for what they're doing. And the Supreme Court will go to jail too if they try to support what Maddow was talking about. We must not let them overthrow the government. And that's why Maddow's concern is okay but overstated, imho.</li>
<li>I had my doubts whether Biden would stop the <a href="https://www.dictionary.com/browse/dissolution">dissolution</a> of the Supreme Court, and I don't know if Harris will, but given how purposefully the campaign in running, I suspect (hope, pray) she will. Our job is to give her the support she needs to feel like we've got her back. </li>
</ul>
<p>PS: FDR <a href="https://chatgpt.com/share/83fbfae5-d28d-4332-bda1-480fed1e9584">threatened</a> to pack the court and the court backed down in 1937.</p>
<p>PPS: If you haven't listened to <a href="http://scripting.com/2024/08/04/195427.html">Sunday's podcast</a>, please do. A lot of what you read here will assume that you have listened to it. It's just 12 minutes. </p>
 

<http://scripting.com/2024/08/06/141312.html?title=roadmapForTheCampaign>

---

## Setting the terms, redux

date: 2024-08-06, from: Doc Searls (at Harvard), New Old Blog

I wrote for Linux Journal from 1996 to 2019, the final years as editor-in-chief. After ownership changed and the whole staff turned over. The new owner, Slashdot Media, agreed to keep the server up so nothing would be 404&#8217;d. I am grateful that they have kept that promise. I should add, however, that much of [&#8230;] 

<https://doc.searls.com/2024/08/06/setting-the-terms-redux/>

---

**@Dave Winer's Scripting News** (date: 2024-08-06, from: Dave Winer's Scripting News)

Walz is Harris' choice. Picking Shapiro would have been leading with her chin because of Netanyahu. Walz looks older than her but they're actually the same age. And he figured out the right word to get under Trump's skin, so there's that. He just has to say <a href="https://www.merriam-webster.com/dictionary/weird">weird</a> in campaign speeches to bring down the house. 

<http://scripting.com/2024/08/06.html#a140340>

---

## A Better Investigatory Board for Cyber Incidents

date: 2024-08-06, updated: 2024-08-02, from: Bruce Schneier blog

<p>When an airplane crashes, impartial investigatory bodies leap into action, empowered by law to unearth what happened and why. But there is no such empowered and impartial body to investigate CrowdStrike&#8217;s <a href="https://www.nytimes.com/2024/07/19/business/microsoft-outage-cause-azure-crowdstrike.html">faulty update</a> that recently unfolded, ensnarling banks, airlines, and emergency services to the tune of billions of dollars. We need one. To be sure, there is the White House&#8217;s <a href="https://www.cisa.gov/resources-tools/groups/cyber-safety-review-board-csrb">Cyber Safety Review Board</a>. On March 20, the CSRB <a href="https://www.cisa.gov/sites/default/files/2024-04/CSRB_Review_of_the_Summer_2023_MEO_Intrusion_Final_508c.pdf">released</a> a report into last summer&#8217;s intrusion by a Chinese hacking group into Microsoft&#8217;s cloud environment, where it compromised the U.S. Department of Commerce, State Department, congressional offices, and several associated companies. But the board&#8217;s report&#8212;well-researched and containing some good and actionable recommendations&#8212;shows how it suffers from its lack of subpoena power and its political unwillingness to generalize from specific incidents to the broader industry...</p> 

<https://www.schneier.com/blog/archives/2024/08/a-better-investigatory-board-for-cyber-incidents.html>

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

