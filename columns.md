---
title: columns 2024.20
updated: 2024-05-16 10:36:13
---

# columns 2024.20

(date: 2024-05-16 10:36:13)

---

##  Diary Comics, Dec. 26-28 

date: 2024-05-16, updated: 2024-05-16, from: Jason Kittke's blog

 

<https://kottke.org/24/05/diary-comics-dec-26-28>

---

## 2024-05-16 IRC forever!

date: 2024-05-16, from: Alex Schroeder's Blog

<h1 id="2024-05-16-irc-forever">2024-05-16 IRC forever!</h1>

<p>You know the joke, right? <a href="https://xkcd.com/1782/">In the far future, somebody, somewhere, still wants to use IRC</a>.</p>

<p><img loading="lazy" src="2024-05-16-irc-1.jpg" alt="XKCD called it, many years ago" /></p>

<p>I&rsquo;ve been working on a bot that can connect to both Discord and IRC. It connects to Discord because this is where I found people to game with. Discord comes with audio chat. It catapulted my gaming to a whole new level. So much so that I decided that I&rsquo;d be a paying customer. Still, I want to be prepared for the day when Discord goes down. When it inevitably missteps and becomes untenable. I want to have systems ready to go.</p>

<p>The idea is to have something read that does <a href="https://campaignwiki.org/wiki/Chat">chat</a> for us all.</p>

<p>Behind the curtains, I run an IRC server using <a href="https://ngircd.barton.de/">ngIRCd</a>. I was able to configure it and I was able to federate with <a class="account" href="https://dice.camp/@kyonshi" title="@kyonshi@dice.camp">@kyonshi</a>&rsquo;s IRC server. IRC has been federated for all these years and it&rsquo;s so incredibly light weight, very much unlike XMPP and Matrix and the other options I&rsquo;ve seen.</p>

<p>There are a number of web-based IRC clients that give it a Discord-like user interface. I personally run two instances of <a href="https://thelounge.chat/">The Lounge</a>, one that&rsquo;s free for all and one with accounts. If you register for an account, you can upload a small amount of files for easy image sharing and the like and it also keeps logs for you (so you don&rsquo;t have to learn how to use an IRC &ldquo;bouncer&rdquo;).</p>

<p>Other options would be <a href="https://kiwiirc.com/">Kiwi IRC</a> or <a href="https://www.irccloud.com/">IRC Cloud</a>, if you want a paid service.</p>

<p>The bot I was talking about is called <a href="https://src.alexschroeder.ch/norn.git">Norn</a>. Right now we have an <code>#﻿open-table</code> or <code>#﻿next-games channel</code> on the Discord servers where people announce their games. As players sign up, the messages get edited. It&rsquo;s not really events, it&rsquo;s not reminders, it&rsquo;s not a calendar, but it&rsquo;s simple and it works. You can search it. But if you&rsquo;re on IRC, it doesn&rsquo;t work so well. So Norn does that.</p>

<p>On one of the Discord server, there&rsquo;s a bot called Wettergoblin (the weather goblin) that keeps track of in-game events. Every channel has its own time-axis and you can get an export of all the events. This is great for coordinating the many games in the same setting, each happening in their own channel. I really wanted something like that but instead of using in-game time, I wanted to use real time. This simplified the requirements for me, so Norn does a bit of that. The Wettergoblin also does in-game weather, keeps a Greyhawk calendar, shows a timeline comparing where the various channels are compared to each other and all of that, which Norn doesn&rsquo;t do.</p>

<p>Norn also acts as a dice bot and as a knowledge repository.</p>

<p>Game dates, sign-ups, in-game events, knowledge base, all of that happens per channel. It&rsquo;s great!</p>

<p>If you look at the <a href="https://campaignwiki.org/wiki/MontagInZ%C3%BCrich/Norn">bilingual help page</a> of the bot on a phone, prepare for a bit of confusion as the German and the English bits are interleaved. On a bigger screen, you&rsquo;d get two columns…</p>

<p><a class="tag" href="/search/?q=%23IRC">#IRC</a> <a class="tag" href="/search/?q=%23RPG">#RPG</a></p> 

<https://alexschroeder.ch/view/2024-05-16-irc>

---

##  Cicadas and Prime Numbers 

date: 2024-05-16, updated: 2024-05-16, from: Jason Kittke's blog

 

<https://kottke.org/24/05/cicadas-and-prime-numbers>

---

##  The movies that influenced Star Wars, from Flash Gordon & Buck Rogers... 

date: 2024-05-16, updated: 2024-05-16, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044614-the-movies-that-influence>

---

## Fee-Only Bitcoin

date: 2024-05-16, from: David Rosenthal's blog

Mining a Bitcoin block needs to be costly to ensure that the gains from an attack on the blockchain are less than the cost of mounting it. Miners have two sources of income to defray their costs, the block rewards and the fees for the transactions in the block.<br />
<br />
On April 19<sup>th</sup> the block reward was halved from 6.25BTC to 3.125BTC. This process is repeated every 210,000 blocks (about every 4 years). It limits the issuance of BTC to 21M because around 2140 the reward will be zero; a halving will make it less than a satoshi.<br />
<br />
Long before 2140 the block rewards will have shrunk to become insignificant compared to the fees. Below the fold I look at the significance of the change to a fee-only Bitcoin<br />
<span><a name='more'></a></span>
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjllnS7WIqiUgpfXOTrpCDxG7dPyaKqEAIVZv3SoG8P-mIftlSyN50Vo76iF0GM_8VS4o5LmhLefs58BQQ1ugvutn9clc69X8jOGgCiLUTT1HbOJjrlwceWkboNICIC23X5lihRnW4z1Q3DMnPZpmRbqXBp90CbXeDjTEJQJYG8DVWG_sqA0dtoh0CvyJWH/s1200/fees-usd-per-transaction.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="600" data-original-width="1200" height="100" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjllnS7WIqiUgpfXOTrpCDxG7dPyaKqEAIVZv3SoG8P-mIftlSyN50Vo76iF0GM_8VS4o5LmhLefs58BQQ1ugvutn9clc69X8jOGgCiLUTT1HbOJjrlwceWkboNICIC23X5lihRnW4z1Q3DMnPZpmRbqXBp90CbXeDjTEJQJYG8DVWG_sqA0dtoh0CvyJWH/w200-h100/fees-usd-per-transaction.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.blockchain.com/explorer/charts/fees-usd-per-transaction">Source</a></td></tr></tbody></table>
Users wishing to transact bid the fee for their transaction in an auction. When demand for transactions is high, fees are high, at other times lower. The graph shows that around the halving there was heavy demand for transactions and the
average fee per transaction rose to $127. This is an average, it is likely that the distribution of fees is highly skewed.<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: left; margin-right: 1em; text-align: left;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg-DWoijw1FTfd9ytK2nP_6Tl_9vqzKLcM59vSz5Zk0PimTGJ1ueH8ELsUpDxQwVb9BUasGtOtYX-QdE7a0lhUO_Uo4APsQwCXclVPYzEQpQXU48WUj3BorsiagNZLtlvVqY-EixMWpPvV_9XuFiAlf2UXqqwwnHQgKFshG3sD6B7ii_dj6M4l8ahIPAzdt/s1200/avg-confirmation-time.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="600" data-original-width="1200" height="100" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg-DWoijw1FTfd9ytK2nP_6Tl_9vqzKLcM59vSz5Zk0PimTGJ1ueH8ELsUpDxQwVb9BUasGtOtYX-QdE7a0lhUO_Uo4APsQwCXclVPYzEQpQXU48WUj3BorsiagNZLtlvVqY-EixMWpPvV_9XuFiAlf2UXqqwwnHQgKFshG3sD6B7ii_dj6M4l8ahIPAzdt/w200-h100/avg-confirmation-time.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.blockchain.com/explorer/charts/avg-confirmation-time">Source</a></td></tr></tbody></table>
The lower the fee, the less likely a miner will choose to include it in the block they are trying to mine, especially at times of high demand for transactions. Low fee transactions can wait in the mempool for a long time. The <i>average</i> delay on 30<sup>th</sup> September 2023 was 25,810 minutes (nearly 18 days) while the <i>median</i> delay was 10 minutes. Clearly, there was a huge flood of very low-fee transactions.<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh2_rgYaxaPHuh68HhHv1z8PGtya-D6_vniiys85QPGQ2ntdrz5KVSlVH7gkByftY3ZXqpv7-tOjtaRawoFDgKU-3eKxSKLX4v1FOqExbUB7YKcQmYs-V2fKHDwRyooxigv2v0QZEAx9QeDNoJ8HtRuGBavjcB-KAPqhgu5kar7Bz58IBMusOZn8ccbylg9/s1200/cost-per-transaction.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="600" data-original-width="1200" height="100" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh2_rgYaxaPHuh68HhHv1z8PGtya-D6_vniiys85QPGQ2ntdrz5KVSlVH7gkByftY3ZXqpv7-tOjtaRawoFDgKU-3eKxSKLX4v1FOqExbUB7YKcQmYs-V2fKHDwRyooxigv2v0QZEAx9QeDNoJ8HtRuGBavjcB-KAPqhgu5kar7Bz58IBMusOZn8ccbylg9/w200-h100/cost-per-transaction.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.blockchain.com/explorer/charts/cost-per-transaction">Source</a></td></tr></tbody></table><br />As I write the average fee per transaction is $3.21 while the average cost (reward plus fee) is $65.72, so transactions are 95% subsidized by inflating the currency.  Over time, miners reap about 1.5% of the transaction volume.  The miners' daily income is around $30M, below average.  This is about 2.5E-5 of BTC's "market cap".<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: left;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj_dhIn57Gb7vM3zBop1YniECW4p8q-gl3ZN2X6c-kJwOKAhR2L21D-FjLAJgIGwf4g1eiEfl2sbzjoQ_W1rHLxFFLYmHSvxRcZ9E0T1Eah3juz9B2Mfhrjw2_mVBQ45pYgH3iGzsB259Rsv3n0ckAFT5r5SBEFKrvznuUj58Uq9NghzXM6mdaVkBfioTKz/s1200/miners-revenue.png" style="clear: left; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="600" data-original-width="1200" height="100" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj_dhIn57Gb7vM3zBop1YniECW4p8q-gl3ZN2X6c-kJwOKAhR2L21D-FjLAJgIGwf4g1eiEfl2sbzjoQ_W1rHLxFFLYmHSvxRcZ9E0T1Eah3juz9B2Mfhrjw2_mVBQ45pYgH3iGzsB259Rsv3n0ckAFT5r5SBEFKrvznuUj58Uq9NghzXM6mdaVkBfioTKz/w200-h100/miners-revenue.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.blockchain.com/explorer/charts/miners-revenue">Source</a></td></tr></tbody></table>
Lets assume, optimistically, that this below average daily fraction of the "market cap" is sufficient to deter attacks and examine what might happen in 2036 after 3 more halvings.  The block reward will be 0.39BTC.  Lets work in 2024 dollars and assume that the BTC "price" exceeds inflation by 3.5%, so in 12 years BTC will be around $98.2K.<br />
<br />
To maintain deterrence miners' daily income will need to be about $50M, Each day there will be about 144 blocks generating 56.16BTC or about $5.5M, which is 11% of the required miners' income. Instead of 5% of the income, fees will need to cover 89% of it.  The daily fees will need to be $44.5M.  Bitcoin's blockchain averages around 500K transactions/day, so the average transaction fee will need to be around $90, or around 30 times the current fee.<br />
<br />
One might think that, were BTC to proceed properly moonwards, this problem would go away.
Lets repeat the calculation assuming BTC = $1M in 12 years. Miners' daily income would need to be around $500M. The daily rewards would be about $55M, so the fees would need to be $445M, the same 11%. Thus the average fee would need to be around $900. The problem scales with the "price".<br />
<br />
It seems probable that withdrawal of the 95% subsidy on transactions will cause some problems. Indeed, there is considerable economic research making this point, including:<br />
<ul>
<li>In 2016 Arvind Narayanan's group at Princeton published a related instability in Carlsten <i>et al</i>'s <a href="http://randomwalker.info/publications/mining_CCS.pdf"><i>On the instability of bitcoin without the block reward</i></a>. Narayanan summarized the paper in a blog post:<br />
<blockquote>
Our key insight is that with only transaction fees, the variance of the miner reward is very high due to the randomness of the block arrival time, and it becomes attractive to fork a “wealthy” block to “steal” the rewards therein. 
</blockquote>
</li>
<li>More generally, the analysis of 2018's <a href="http://www.nber.org/papers/w24717"><i>The Economic Limits Of Bitcoin And The Blockchain</i></a> by Eric Budish essentially concludes that, for safety, the value of transactions in a block must be less than the sum of the mining reward and the fees it contains.</li>
<li>In 2019 Raphael Auer of the Bank for International Settlements published <a href="https://www.bis.org/publ/work765.pdf"><i>Beyond the doomsday economics of “proof-of-work” in cryptocurrencies</i></a>:<br />
<blockquote>
The key takeaway of this paper concerns the interaction of these two limitations: proof-of-work can only achieve payment security if mining income is high, but the transaction market cannot generate an adequate level of income. ... the economic design of the transaction market fails to generate high enough fees. A simple model suggests that ultimately, it could take nearly a year, or 50,000 blocks, before a payment could be considered “final”."
</blockquote>
</li>
</ul>
The last time I wrote about this issue was in 2021's <a href="https://blog.dshr.org/2021/06/taleb-on-cryptocurrency-economics.html"><i>Taleb On Cryptocurrency Economics</i></a>.<br />
<br /> 

<https://blog.dshr.org/2024/05/fee-only-bitcoin.html>

---

##  Trailer for Season Two of The Rings of Power 

date: 2024-05-16, updated: 2024-05-16, from: Jason Kittke's blog

 

<https://kottke.org/24/05/trailer-for-season-two-of-the-rings-of-power>

---

##  I Was Shot in Vermont. What if It Had Been in the... 

date: 2024-05-16, updated: 2024-05-16, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044637-i-was-shot-in-vermont>

---

## Granada, Spain

date: 2024-05-16, from: mrusme blog

"Granada is the capital city of the province of Granada, in the autonomous
community of Andalusia, Spain. Granada is located at the foot of the Sierra
Nevada mountains, at the confluence of four rivers, the Darro, the Genil, the
Monachil and the Beiro. Ascribed to the Vega de Granada comarca, the city sits
at an average elevation of 738 m (2,421 ft) above sea level, yet is only one
hour by car from the Mediterranean coast, the Costa Tropical." 

<https://xn--gckvb8fzb.com/travel/spain/granada/>

---

## 2024-05-09 Hoping for the next AI winter

date: 2024-05-16, from: Alex Schroeder's Blog

<h1 id="2024-05-09-hoping-for-the-next-ai-winter">2024-05-09 Hoping for the next AI winter</h1>

<p><a class="account" href="https://chirp.enworld.org/@taichara" title="@taichara@chirp.enworld.org">@taichara</a> pointed me to a blog post that Creative Commons (CC) wrote in 2023 about the court cases against GitHub, Stable Diffusion, Midjourney and the claim that their use of copyrighted works to train the machines is copyright infringement. CC does not agree.</p>

<blockquote>
<p>As Creative Commons has argued elsewhere, and others agree, I believe that this type of use should be protected by copyright’s fair use doctrine. In this blog post I will discuss what fair use is, what purpose it serves, and why I believe that using copyrighted works to train generative AI models should be permitted under this law. – <a href="https://creativecommons.org/2023/02/17/fair-use-training-generative-ai/">Fair Use: Training Generative AI</a></p>
</blockquote>

<p>I guess I don&rsquo;t mind that blog post. For one, Fair Use is a very USA thing and I don&rsquo;t live there. Furthermore, the CC licenses don&rsquo;t say &ldquo;this material is fine for AI training&rdquo; – so whether this is fine or not will be decided by the courts. I would only worry if CC turns out to be working on a version 5 of their licenses with an explicit exception for AI training. And even then, we can keep on using version 4 of the license. There is no automatic upgrade option.</p>

<p>This is why I feel fine.</p>

<p>Imagine the Dude from The Big Lebowski saying, &ldquo;Yeah, well, that&rsquo;s just, like, their opinion…&rdquo;</p>

<p>It doesn&rsquo;t look as if CC will be changing the license. The courts still get to decide. If the courts decide in favour of free-for-all AI training, then rich people win for the moment. But even then, we can still nationalise their businesses, or prohibit AI training, or raise prices on electricity and water. The fight isn&rsquo;t over. Not by a long shot.</p>

<p>Maybe this is a thing with lawyers. We trust people who share our values and we’d trust somebody when they write something along the lines of “AI training is terrible and AI use is dubious but what can you do, it’s in the hand of the courts, we certainly don’t support it.” But lawyers trust other lawyers who say “we’ll see what the courts say but our understanding is that nobody should stop AI training because that’s the trade-off copyright makes and we support people and corporations exercising their rights.”</p>

<p>The apparent moral support on copyright grounds is revolting, but this approach seems typical to me. They say: The point of the law is this or that. We say: The result of these actions is bad for society and bad for the climate. They are externalising all the costs. The artists and authors who want to produce new works are losing their jobs. The people double-checking the computers and their training are burning out. The communities where these corporations build their computing centres suffer from water scarcity because the water is used to cool the computers. The countries where these corporations build their computing centres need to build more power plants because so much electricity is required to train their models. The move to renewable energies is delayed. Phasing out nuclear power is delayed and more radioactive waste ends up on our lands.</p>

<blockquote>
<p>Sending this message was important to us. We considered ourselves to be a powerful culture.
This place is not a place of honor&hellip; no highly esteemed deed is commemorated here&hellip; nothing valued is here.
– <a href="https://en.wikipedia.org/wiki/Long-term_nuclear_waste_warning_messages">Long-term nuclear waste warning messages</a>, Wikipedia</p>
</blockquote>

<p>Or we can believe in nuclear fusion:</p>

<blockquote>
<p>AI models made up of billions of parameters require huge amounts of energy to train. OpenAI&rsquo;s old GPT-3 system reportedly consumed 936 megawatt hours … the average household consumes about 10.5 MWh per year. That means training GPT-3 consumed as much energy as about 90 households consume in a year. – <a href="https://www.theregister.com/2024/01/22/google_deepmind_train_alphageometry_system/">Energy breakthrough needed to build AGI, says OpenAI boss Altman</a>, The Register</p>
</blockquote>

<p>Sadly, nuclear fusion only seems to be working inside the sun:</p>

<blockquote>
<p>1955: At the first Atoms for Peace meeting in Geneva, Homi J. Bhabha predicts that fusion will be in commercial use within two decades. – <a href="https://en.wikipedia.org/wiki/Timeline_of_nuclear_fusion">Timeline of nuclear fusion</a>, Wikipedia</p>
</blockquote>

<p>And what for? The people who are looking for answers get served bullshit slop that&rsquo;s wrong and hurtful and racist and misogynist. We see this in customer service degrading, in search engines degrading, in websites degrading. The corporations don&rsquo;t mind that they&rsquo;re feeding us slop as long as they are making money.</p>

<p>We are enabling this because these corporations are powerful and rich. They buy our politicians with money and promises of jobs, they don&rsquo;t pay the taxes they ought to pay and then they don&rsquo;t deliver on the jobs, and the jobs they offer are menial and subservient when we&rsquo;d prefer to be creative and free. We thought we&rsquo;d be writing and painting all day while the machines serve us but we end up serving them while they do the writing and painting, badly!</p>

<p>It&rsquo;s hard to defend against these corporations because the knowledge required to defeat them is not known to us all. We don&rsquo;t read about it in the media. Instead, they volunteer for all the posts, offer their experts, pay for their own research, write their own glowing press releases and commission promising reports. This is how regulatory capture works.</p>

<p>So yes, we should nationalise them, regulate them, force them to pay for the true cost of resources they use, outlaw their energy waste, force them to label their output, shun them. We should kick them from our company. Like a creeping disease their rot spreads, destroying the technology we built, the search engines, databases, websites, turning it all into AI slop. It is revolting.</p>

<p>And maybe copyright is not the right tool to stop corporations from training their machines on our works. But in the big picture, they are still wrong.</p>

<p><a class="account" href="https://social.coop/@eloquence" title="@eloquence@social.coop">@eloquence</a> says:</p>

<blockquote>
<p>The folks who are calling such training &ldquo;theft&rdquo; might regret what they seem to be implicitly asking for, i.e. much stricter copyright. Copyright law won&rsquo;t prevent Microsoft, Google, OpenAI or Adobe from making shady licensing deals, but they&rsquo;ll prevent the free/open community from keeping up.</p>
</blockquote>

<p>It&rsquo;s true, I don&rsquo;t want to ask for stricter copyright. But I still oppose all the things that are wrong with the current AI bubble.</p>

<p><a class="account" href="https://mastodon.social/@mcc" title="@mcc@mastodon.social">@mcc</a> recently wrote about a similar thing: We use free software licenses in order to distribute our software for the benefit of our fellow humans but not necessarily to train the machines of corporations that are responsible for all the slop.</p>

<blockquote>
<p>Like, heck, how am I <em>supposed</em> to rely on my code getting preserved after I lose interest, I die, BitBucket deletes every bit of Mercurial-hosted content it ever hosted, etc? Am I supposed to rely on <em>Microsoft</em> to responsibly preserve my work? Holy crud no.
We <em>want</em> people to want their code widely mirrored and distributed. That was the reason for the licenses. That was the social contract. But if machine learning means the social contract is dead, why would people want their code mirrored? – <a href="https://mastodon.social/@mcc/112209218607258564">mmc</a></p>
</blockquote>

<p>We&rsquo;re using copyright to keep the software free. If AI regurgitating our software from its impenetrable memories circumvents copyright it also circumvents our licenses and therefore pulls the claws and teeth free software has to fight for its freedom.</p>

<p>This is why opposing the current AI bubble is important. No matter how I look at it, the big picture shows that this kind of AI is our enemy. It&rsquo;s just that copyright is the wrong weapon.</p>

<p>This is why we continue fighting all the negatives these corporations bring to the table. And if it turns out that their business model doesn&rsquo;t work unless they bring all these negatives to the table, then I guess that&rsquo;s just that. We are under no obligation to support their business model. In fact, it is our right and our duty to regulate the world in order to improve it for all of us. We&rsquo;ve been doing it for a very long time.</p>

<p>Here&rsquo;s to hoping for the next AI winter.</p>

<blockquote>
<p>In the history of artificial intelligence, an AI winter is a period of reduced funding and interest in artificial intelligence research. The field has experienced several hype cycles, followed by disappointment and criticism, followed by funding cuts, followed by renewed interest years or even decades later. – <a href="https://en.wikipedia.org/wiki/AI_winter">AI winter</a>, Wikipedia</p>
</blockquote>

<p><a class="tag" href="/search/?q=%23Copyright">#Copyright</a> <a class="tag" href="/search/?q=%23Artificial_Intelligence">#Artificial Intelligence</a></p>

<p><strong>2024-05-16</strong>. Cory Doctorow also thinks that copyright is the wrong weapon:</p>

<blockquote>
<p>Creative workers who hope that they can use copyright law to prevent AI from changing the creative labor market are likely to be very disappointed in court … Individual creative workers rarely have any bargaining leverage over the corporations that license our copyrights. … Rather than going to Congress alongside our bosses from the studios and labels and publishers to demand more copyright, we could go to Congress alongside every kind of worker, from fast-food cashiers to publishing assistants to truck drivers to demand the right to sectoral bargaining. – <a href="https://pluralistic.net/2024/05/13/spooky-action-at-a-close-up/#invisible-hand">AI &ldquo;art&rdquo; and uncanniness</a></p>
</blockquote> 

<https://alexschroeder.ch/view/2024-05-09-ai-copyright>

---

## Dave Goes Microsoft

date: 2024-05-16, from: Dave Rupert blog

<p>Last Monday was my first day as an official employee of Microsoft where I’ll be working on web components as part of the <a href="https://fluent2.microsoft.design/">Fluent</a> design system team.. As longtime readers already know, I’ve had a long term relationship with Microsoft – from <a href="https://paravelinc.com/work/microsoft/">Paravel’s 2012 responsive redesign of the Microsoft homepage</a> to the five year <a href="https://daverupert.com/tag/davegoeswindows">#davegoeswindows</a> stunt –  it feels like a new chapter in the career story arc to finally acquire one of the famous blue badges. I’m still new and have barely setup my computer but so far my team of peers, the larger group, the project itself, and the other folks across Microsoft I’ve connected with are all great.</p>
<p>Going from a company with two coworkers to a company with 200K coworkers is certainly an adjustment. It’s my first job in 18 years where I’m not working for myself but by far the biggest eye-opener throughout this process was doing tech interviews! I learned a lot about myself; like how after decades of coding in a room by myself, performing in front of someone else isn’t natural for me. Weirdly for me, a live demo in front of thousands of people… no problem. A random generated coding challenge in front of one person… palms sweaty, mom’s spaghetti levels of difficult. I also learned that too much caffeine and the panic-flavored adrenaline of interviewing is a lot of chemistry for my active brain to process.</p>
<p>I eventually figured out how to interview and I had a lot of great conversations with great people at great companies. That said, this experience left me with lingering qualms about the tech interview process. A lot of it comes down to the information asymmetry where the seller (the hiring company) has more information than the buyer (the job candidate) and it’s hard to get any feedback for self-improvement. Even in my limited experience, it’s not uncommon to sink 15+ hours into a take home coding test and interview loop only to receive a terse rejection. Granted there’s promise of a six figure salary at the end of the rainbow, these jobs don’t fall out of the sky so you need to put in work, but I think that situation needs to be a bit more equitable to candidates – a Newtonian dynamic of matching effort.</p>
<p>One question they ask you at interviews is “What are you looking for in your next role?” and while that sparks thousands of ideas, I boiled my needs and wants down to two core concepts:</p>
<ul>
<li><strong>Be a part of a larger team of engineers</strong> - I’d like to work on a larger team of developers. I want to be in a situation where I can actively and passively learn from other engineers who are subject matter experts in different subjects. As a life-long learner, I’d like to take myself out of the “lone developer” paradigm and absorb as much as I can.</li>
<li><strong>Be tangential to the money machine</strong> - When you run your own business there’s a tight coupling between <em>how much you work</em> and <em>how much money you make</em> and you’re constantly aware of that fact. After 18 years of running my own business and two particularly intense years of startup burnout, I’d like to try something different and play a more supportive operational role for a bit.</li>
</ul>
<p>I think I found that in Microsoft. There’s a multitude of people I can ping about niche technology choices. There’s even access to a library of research papers. And already I can see how operating in a product support role seems to provide more opportunity for strategy to the broader needs of the organization as opposed to reactivity to the needs <em>du jour</em> that happen in Productland.</p>
<p>I’m sure throughput will be a bit slower without direct access to the publish to production button. I’m sure there’s topics I won’t be able to talk about on this here blog (but I tend not to blog about specific work-related activities here anyways so that won’t change). And I’m sure I’ll have to put a disclaimer here and there that these ideas are my own and not reflective of my employer. Henceforth and furthermore all bad ideas are copyright of Dave Rupert LLC®.</p>
<p>It’s the end of an era for sure but also the beginning of a new one and potentially the beginning of lots of new ones, who knows. Thanks to Trent and Reagan. Thanks to everyone who provided emotional support on this journey. Thanks to esteemed friends who provided referrals. Given the current macroeconomic situation, I feel lucky to have landed somewhere familiar with great opportunities and many Dave Rupert-shaped problems.</p> 

<https://daverupert.com/2024/05/dave-goes-microsoft/>

---

**@Dave Winer's Scripting News** (date: 2024-05-16, from: Dave Winer's Scripting News)

The thing that <a href="https://www.platformer.news/google-io-ai-search-sundar-pichai/">Casey Newton predicts</a> for Google and news has already happened for the huge base of reference info for software development. We no longer go to the sources, don't need to, the ChatGPT version is an order of magnitude better. What we do need is people to keep asking and answering questions for each other, so the knowledge can be added into the AI database. We're going somewhere here. It's worth going there, imho, having experienced the before, and only starting to glimpse the now and near-future. But it's as big a step as the move to PCs, then GUIs, web. 

<http://scripting.com/2024/05/16.html#a135637>

---

##  Scope of Work is holding a contest around the idea of &#8220;umarelling&#8221;,... 

date: 2024-05-16, updated: 2024-05-16, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044633-scope-of-work-is-holding>

---

## Ruskin on Color

date: 2024-05-16, from: Ayjay blog

The perception of colour is a gift just as definitely granted to one person, and denied to another, as an ear for music; and the very first requisite for true judgment of Saint Mark’s, is the perfection of that colour-faculty which few people ever set themselves seriously to find out whether they possess or not. [&#8230;] 

<https://blog.ayjay.org/ruskin-on-color/>

---

**@Dave Winer's Scripting News** (date: 2024-05-16, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="http://scripting.com/images/2023/04/24/cheshireCat.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Something I'd like from ChatGPT or a plug-in. I'd like to create a notebook of info I'd like it to have available for people who inquire about a product I'm developing. As I'm working on the code, I develop features that sometimes don't make it into the docs. But when I'm working on the feature, I take lots of notes in my work outline. I'd like to give that outline to a LLM and let it figure out which product I'm talking about by the context it appears in. Maybe all I have to do is publish the notes when the product comes out, and eventually, like a search engine, my favorite AI will crawl it. I wonder if it makes sense to somehow pre-digest it. I wish I had a panel of experts about this stuff, but I guess they'd have to be human, at least at this point in time. If this makes sense to you and you know how to get started, <a href="https://github.com/scripting/Scripting-News/issues/307">post a note here</a>. 

<http://scripting.com/2024/05/16.html#a130419>

---

**@Ayjay blog** (date: 2024-05-16, from: Ayjay blog)

I believe every man in a Christian kingdom ought to be equally well educated. But I would have it education to purpose; stern, practical, irresistible, in moral habits, in bodily strength and beauty, in all faculties of mind capable of being developed under the circumstances of the individual, and especially in the technical knowledge of [&#8230;] 

<https://blog.ayjay.org/46215-2/>

---

## Zero-Trust DNS

date: 2024-05-16, updated: 2024-05-16, from: Bruce Schneier blog

<p>Microsoft is <a href="https://arstechnica.com/security/2024/05/microsoft-plans-to-lock-down-windows-dns-like-never-before-heres-how/">working on</a> a promising-looking protocol to lock down DNS.</p>
<blockquote><p>ZTDNS aims to solve this decades-old problem by integrating the Windows DNS engine with the Windows Filtering Platform&#8212;the core component of the Windows Firewall&#8212;directly into client devices.</p>
<p>Jake Williams, VP of research and development at consultancy Hunter Strategy, said the union of these previously disparate engines would allow updates to be made to the Windows firewall on a per-domain name basis. The result, he said, is a mechanism that allows organizations to, in essence, tell clients &#8220;only use our DNS server, that uses TLS, and will only resolve certain domains.&#8221; Microsoft calls this DNS server or servers the &#8220;protective DNS server.&#8221;...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/05/zero-trust-dns.html>

---

## The loathsomeness of Trump world

date: 2024-05-16, from: Robert Reich's blog

The backstory of the trial 

<https://robertreich.substack.com/p/the-loathsomeness-of-trump-world>

---

## Instagram Cofounder Mike Krieger Joins Anthropic as Chief Product Officer

date: 2024-05-16, updated: 2024-05-16, from: Daring Fireball

 

<https://www.threads.net/@mikeyk/post/C6_feeSr0Q4>

---

## ★ Follow-Up on Apple No Longer Including Stickers With New Products

date: 2024-05-16, updated: 2024-05-16, from: Daring Fireball

I conducted the same poll on Twitter/X, Mastodon, and Threads: “Thoughts on Apple no longer including stickers with new devices to reduce waste?”, with two options: 👍 or 👎. 

<https://daringfireball.net/2024/05/no_more_stickers_follow-up>

---

## Save the Date: The Talk Show Live From WWDC 2024

date: 2024-05-16, updated: 2024-05-16, from: Daring Fireball

 

<https://daringfireball.net/thetalkshow/>

---

**@Dave Winer's Scripting News** (date: 2024-05-16, from: Dave Winer's Scripting News)

I wonder if anyone named their dog Alexa, and if any hilarity ensued. 

<http://scripting.com/2024/05/15.html#a004548>

---

##  Pulitzer Prize in Fiction juror Michael Chabon recommended three non-winning books that... 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044635-pulitzer-prize-in-fiction>

---

## Apple Stiffs Researcher on Bounty for iOS Kernel Vulnerability [Update: Resolved]

date: 2024-05-15, updated: 2024-05-16, from: Daring Fireball

 

<https://mjtsai.com/blog/2024/05/14/no-bounty-for-kernel-vulnerability/>

---

##  On Sports Parenting 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/on-sports-parenting>

---

**@Dave Winer's Scripting News** (date: 2024-05-15, from: Dave Winer's Scripting News)

My AI bot is a library, a librarian, a programming partner, tutor and executive assistant. And we're just getting started working together. 

<http://scripting.com/2024/05/15.html#a204359>

---

##  Tracing the history of emoji, surprisingly, back to the 80s. &#8220;Once you... 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044632-tracing-the-history-of-em>

---

##  Delia Brown&#8217;s Portraits 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/delia-browns-portraits>

---

##  Paul Ford writing about AI is a treat. &#8220;AI is, very simply,... 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044629-paul-ford-writing-about-a>

---

##  “My love of farm-fresh frozen confections does not outweigh my distaste for... 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044626-my-love-of-farm-fresh-fro>

---

##  The Trailer for Francis Ford Coppola&#8217;s Megalopolis 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/the-trailer-for-francis-ford-coppolas-megalopolis>

---

## StopTheMadness Pro

date: 2024-05-15, updated: 2024-05-15, from: Daring Fireball

 

<https://underpassapp.com/StopTheMadness/>

---

## the archetypal future

date: 2024-05-15, from: Ayjay blog

Next month I have an essay coming out in Harper’s called “Yesterday’s Men: The Death of the Mythical Method.” In it I look at the rise — a rise that started a looong time ago — of myth as the central category of discourse among poets, novelists, and humanities scholars; and then I look at [&#8230;] 

<https://blog.ayjay.org/the-archetypal-future/>

---

## Jeff Johnson: ‘Apple Started Cheating Me Out of App Store Bundle Purchases’ [Update: Resolved]

date: 2024-05-15, updated: 2024-05-16, from: Daring Fireball

 

<https://lapcatsoftware.com/articles/2024/5/2.html>

---

##  TIL that some tiny bits of bitcoins are more valuable than others.... 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044623-til-that-some-tiny-bits>

---

## Casey Newton: ‘Google’s Broken Link to the Web’

date: 2024-05-15, updated: 2024-05-15, from: Daring Fireball

 

<https://www.platformer.news/google-io-ai-search-sundar-pichai/>

---

## The Knicks won last night

date: 2024-05-15, from: Dave Winer's Scripting News

<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/05/15/knicksAtTheGarden.png"></center>Knicks at the Garden via ChatGPT 4o.</div></p>
<p>They <a href="http://scripting.com/2024/05/14/125908.html">needed</a> fresh blood, and they got it. </p>
<p>Knicks <a href="https://sports.yahoo.com/jalen-brunson-erupts-44-points-025800375.html">won</a> in a blowout. </p>
<p>I had no idea that was coming. </p>
<p>Next game on Friday.</p>
 

<http://scripting.com/2024/05/15/160638.html?title=theKnicksWonLastNight>

---

**@Dave Winer's Scripting News** (date: 2024-05-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="http://scripting.com/images/2023/04/29/raisins.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;"><a href="https://www.nytimes.com/2024/05/15/opinion/artificial-intelligence-ai-openai-chatgpt-overrated-hype.html">AI is not over-hyped</a>, imho. I'm discovering new significance for it every day. An example. I had to go back to some very complex code I wrote a week ago. I wanted to give it new flexibility, that would be simple from the user's point of view, and in order for it to work technically it has to maintain that simplicity internally. It's a tall order to go back to something complex a week after writing it, and rip it apart and put it back together and have it retain the simplicity it had before. But I had an advantage this time that I had never had before, a programming partner with a perfect memory. I had written the original code with ChatGPT. So I went back and asked it to review my plan, and then worked with it step by step as I had before. It had perfect recall, right, of course where my recall is pretty sketchy. It took two sessions to get it done, but it works now, and I'm confident I've covered all the bases. How do you put that story in a press release? If you want to understand a new technology, don't talk to the CEO of the tech company that made the product, their lives are whirlwinds, they don't have time or the capacity to understand how big the idea is, they just know that it is big. If you want to understand you have to use it and you have to talk with other users. 

<http://scripting.com/2024/05/15.html#a155730>

---

## Apple Announces New Accessibility Features for 2024

date: 2024-05-15, updated: 2024-05-15, from: Daring Fireball

 

<https://www.apple.com/newsroom/2024/05/apple-announces-new-accessibility-features-including-eye-tracking/>

---

##  Whoa, a 5500-piece Lego set of the tower of Barad-dûr from LoTR.... 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044625-whoa-a-5500-piece-lego-se>

---

##  Google is replacing their search results with AI answers. There&#8217;s a very... 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044624-google-is-replacing-their>

---

##  Hot Frank Summer Starts Now! 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/hot-frank-summer-starts-now>

---

##  Love this phrase: decanting groceries. &#8220;Do you really want to spend your... 

date: 2024-05-15, updated: 2024-05-15, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044600-love-this-phrase-decantin>

---

**@Dave Winer's Scripting News** (date: 2024-05-15, from: Dave Winer's Scripting News)

<a href="https://www.youtube.com/watch?v=RXawa90YU2s">Martha My Dear</a> is the <a href="https://chat.openai.com/share/4ea60bab-a1ab-42fd-b928-e93b38b566d6">essential</a> Paul McCartney <a href="https://en.wikipedia.org/wiki/Martha_My_Dear">love</a> song. 

<http://scripting.com/2024/05/15.html#a132630>

---

**@Dave Winer's Scripting News** (date: 2024-05-15, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/05/15/paulAndMartha.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">This is a <a href="https://imgs.scripting.com/2024/05/15/typicalPaywallDialog.png">typical dialog</a> you see when you <a href="https://www.usatoday.com/story/news/politics/elections/2024/04/11/donald-trump-new-york-hush-money-trial/72943245007/">visit a site</a> with an ad blocker installed. They say that turning off the ad blocker will "support" them. No, I don't think it actually will do anything for them. It might expose me to malware or having my interests shared with businesses who will use that info for who-knows-what. Much better would be to let me click a button to give them $0.50 to read the freaking article that's behind that idiotic dialog, and btw, the payment would have to be anonymous or I'm clicking the Back button. I really did want to know what happens if Trump is found guilty and sentenced to prison. I still do. But I don't think I'm going to turn off my ad blocker. I'll think about it. In the meantime if they had let me pay them $0.50 to read the freaking article, I might have linkblogged it to people who follow me via RSS or email, or on Bluesky or Mastodon, thus giving them a chance to sell others on paying $0.50 to read the freaking article. Not promising I'd do that, but if they really answer the question, if I really learn something I certainly would pass it along. Come on USA Today, get conscious. We'll happily support you for giving us info we wanted, just let us actually help you in a meaningful way, not by penalizing us for having the audacity to use an ad blocker. 

<http://scripting.com/2024/05/15.html#a131828>

---

## temporary storage

date: 2024-05-15, from: Ayjay blog

Drafts is a fantastic app, so well-designed, so capable, so powerful. For my money it’s the best “bucket” app, ideal for holding onto chunks of text.  But I have a problem: I put things into Drafts and then forget about them. Yes, I tag them, but that doesn’t help. They just disappear into the bucket.  [&#8230;] 

<https://blog.ayjay.org/temporary-storage/>

---

## Office Hours: A convicted criminal for president?

date: 2024-05-15, from: Robert Reich's blog

Friends, In a few weeks, Donald Trump may be a convicted criminal. It&#8217;s hardly a sure thing, of course. All he needs for a mistrial is one holdout juror. But the evidence so far seems overwhelming and damning. So we have to face a daunting reality. For the first time in history, a convicted criminal may be the nominee of one of our major parties and on November&#8217;s presidential ballot. 

<https://robertreich.substack.com/p/office-hours-272>

---

## [Sponsor] Kolide: ‘Struggling to Afford Cybersecurity Insurance? Here’s Why.’

date: 2024-05-15, updated: 2024-05-15, from: Daring Fireball

 

<https://l.kolide.co/43vcTaN>

---

## microSD cards' SBC days are numbered

date: 2024-05-15, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">microSD cards' SBC days are numbered</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p><img class="insert-image" width="500" height="auto" alt="Raspberry Pi M.2 HAT+" src="https://www.jeffgeerling.com/sites/default/files/images/raspberry-pi-m2-hat-plus.png"></p>

<p>For years, SBCs that aren't Raspberry Pis experimented with eMMC and M.2 storage interfaces. While the Raspberry Pi went from full-size SD card in the first generation to microSD in every generation following (Compute Modules excluded), other vendors like Radxa, Orange Pi, Banana Pi, etc. have been all over the place.</p>

<p>Still, <em>most</em> of the time a fallback microSD card slot remains.</p>

<p>But microSD cards—even the fastest UHS-II/A2/V90/etc. ones that advertise hundreds of MB/sec—are laggards when it comes to any kind of SBC workflow.</p>

<p>The two main reasons they're used are cost and size. They're tiny, and they don't cost much, especially if you don't shell out for industrial-rated microSD cards.</p>

<p><img class="insert-image" width="500" height="auto" alt="microSD card slot on Raspberry Pi" src="https://www.jeffgeerling.com/sites/default/files/images/microsd-card-slot.jpeg"></p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-05-14T21:46:16-05:00" title="Tuesday, May 14, 2024 - 21:46" class="datetime">May 14, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/microsd-cards-sbc-days-are-numbered>

---

## ★ The M4 iPad Pros

date: 2024-05-15, updated: 2024-05-16, from: Daring Fireball

A “pro” device that goes pro by getting thinner and lighter, not heavier and thicker, is not a non sequitur. 

<https://daringfireball.net/2024/05/the_m4_ipad_pros>

---

## Wednesday 15 May, 2024

date: 2024-05-14, from: John Naughton's online diary

Help? For one awful moment, it looked like a human arm. Quote of the Day ”The mind, like the feet, works at about three miles an hour. If this is so, then modern life is moving faster than the speed &#8230; <a href="https://memex.naughtons.org/wednesday-15-may-2024/39448/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/wednesday-15-may-2024/39448/>

---

##  Hey, if you&#8217;re looking for a well-designed (and free!) ebook of Frankenstein... 

date: 2024-05-14, updated: 2024-05-14, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044621-hey-if-youre-looking-for>

---

## try not to think

date: 2024-05-14, from: Ayjay blog

Fraudulent academic papers are on the rise, and will continue to be on the rise as long as academics substitute counting for judgment. The fetish for sheer numbers of publications should have ended decades ago, but the professoriate can’t confront its addiction, or accept its responsibility for creating this vast system of perverse incentives. It’s [&#8230;] 

<https://blog.ayjay.org/try-not-to-think/>

---

## Upcoming Speaking Engagements

date: 2024-05-14, updated: 2024-05-14, from: Bruce Schneier blog

<p>This is a current list of where and when I am scheduled to speak:</p>
<ul>
<li>I&#8217;m giving a webinar via Zoom on Wednesday, May 22, at 11:00 AM ET. The topic is &#8220;<a href="https://gwu.qualtrics.com/jfe/form/SV_73QPw1fkq88iR4G">Should the USG Establish a Publicly Funded AI Option?</a>&#8220;</li>
</ul>
<p>The list is maintained on <a href="https://www.schneier.com/events/">this page</a>.</p>
 

<https://www.schneier.com/blog/archives/2024/05/upcoming-speaking-engagements-36.html>

---

##  Out Sick Today 

date: 2024-05-14, updated: 2024-05-14, from: Jason Kittke's blog

 

<https://kottke.org/24/05/out-sick-today-1>

---

**@Dave Winer's Scripting News** (date: 2024-05-14, from: Dave Winer's Scripting News)

BTW, I've been to three <a href="https://en.wikipedia.org/wiki/Stevenote">Stevenotes</a>, the first one, the rollout of the Mac  in 1984, then the rollout of NeXT in 1988, and a random press event in 1997 announcing they were going with Unix server products instead of the homegrown much easier to use Mac server products. We could have had both of course, but Jobs never really wanted developers imho, truth be told. We were inside in 1984 because Mike Boich and Guy Kawasaki were doing the evangelism. 

<http://scripting.com/2024/05/14.html#a131234>

---

**@Dave Winer's Scripting News** (date: 2024-05-14, from: Dave Winer's Scripting News)

Yesterday's OpenAI big press event was a nothing burger. I thought they already had all of that stuff, they certainly had been at least telegraphing it. Also there never will be another Steve Jobs, it's too bad everyone is using his template for product announcements. It only works if you're Steve Jobs. 

<http://scripting.com/2024/05/14.html#a131039>

---

**@Dave Winer's Scripting News** (date: 2024-05-14, from: Dave Winer's Scripting News)

Someday I'll make a list of people who I wish would read this blog. 

<http://scripting.com/2024/05/14.html#a130819>

---

## Brunson as bad man or decoy

date: 2024-05-14, from: Dave Winer's Scripting News

<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/05/14/brunson.jpg"></center><a href="https://en.wikipedia.org/wiki/Jalen_Brunson">Jalen Brunson</a>, Knicks star, after having his ass kicked in Sunday's game. </div></p>
<p>In this picture he either looks dangerous or defeated, or both. I wouldn't want to have to play against him tonight. </p>
<p>Here's my two cents. If Brunson has heavy legs tonight, as he clearly did in the last two games, he should be used as a decoy, to draw a double team, to free up one of the Knicks' assassins. Or maybe he'll be more effective with just one Pacer guarding him, instead of two or three. </p>
<p>And for crying out loud, start one of the excellent <a href="https://en.wikipedia.org/wiki/2023%E2%80%9324_New_York_Knicks_season">bench players</a>, McBride or Sims or Burks, or all of them, and make sure the heroes of games 1 and 2 get plenty of rest. </p>
 

<http://scripting.com/2024/05/14/125908.html?title=brunsonAsBadManOrDecoy>

---

**@Dave Winer's Scripting News** (date: 2024-05-14, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/05/14/rfkJr.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">It's a crazy world, so crazy that RFK, Jr <i>could</i> be elected president via a third-party. He's a better speaker than either of the other candidates. If he didn't a speech impediment I'd say he was basically a sure thing. I don't know how crazy he actually is, but he cleans up nicely, having seen him interviewed on MSNBC a few days ago. He had good PR training somewhere, it's probably not just from the genes, he is a freaking Kennedy, his mother was a wife of a Kennedy, and clearly raised him well. I'm voting for Biden of course. I'm not that crazy. But people are tired of Biden, I understand why -- and they want a president they can look up to, not one that reminds them of their 80-something grandfather. And people are also understandably fed up with Trump. Before it's over we will come to think of him not as a spoiler but as a possible future president, where "future" is less than a year away. 

<http://scripting.com/2024/05/14.html#a123837>

---

**@Dave Winer's Scripting News** (date: 2024-05-14, from: Dave Winer's Scripting News)

If a baker may not be forced to bake a cake for a same-sex wedding on the basis of religious freedom, surely a woman can’t be forced to give birth to an unwanted child. 

<http://scripting.com/2024/05/14.html#a123404>

---

## Another Chrome Vulnerability

date: 2024-05-14, updated: 2024-05-14, from: Bruce Schneier blog

<p>Google has <a href="https://arstechnica.com/security/2024/05/google-patches-its-fifth-zero-day-vulnerability-of-the-year-in-chrome/">patched</a> another Chrome zero-day:</p>
<blockquote><p>On Thursday, Google <a href="https://chromereleases.googleblog.com/2024/05/stable-channel-update-for-desktop_9.html">said</a> an anonymous source notified it of the vulnerability. The vulnerability carries a severity rating of 8.8 out of 10. In response, Google said, it would be releasing versions 124.0.6367.201/.202 for macOS and Windows and 124.0.6367.201 for Linux in subsequent days.</p>
<p>&#8220;Google is aware that an exploit for CVE-2024-4671 exists in the wild,&#8221; the company said.</p>
<p>Google didn&#8217;t provide any other details about the exploit, such as what platforms were targeted, who was behind the exploit, or what they were using it for...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/05/another-chrome-vulnerability.html>

---

## How to make $50 million a year while your corporation goes down the tubes 

date: 2024-05-14, from: Robert Reich's blog

David Zaslav exemplifies socialism for the rich 

<https://robertreich.substack.com/p/how-to-make-50-million-a-year-while>

---

## curl user survey 2024

date: 2024-05-14, from: Daniel Stenberg Blog

Welcome to the 11th annual curl user survey. This is a once a year poll that we ask as many curl and libcurl users as possible to respond to. >> Take the survey &#60;&#60; This is in many ways the only real way we get to know what curl users think about all sorts of &#8230; <a href="https://daniel.haxx.se/blog/2024/05/14/curl-user-survey-2024/" class="more-link">Continue reading <span class="screen-reader-text">curl user survey 2024</span> <span class="meta-nav">&#8594;</span></a> 

<https://daniel.haxx.se/blog/2024/05/14/curl-user-survey-2024/>

---

## Election Countdown, 176 Days to Go: ‘Hot dogs. Let's talk about hot dogs.’

date: 2024-05-14, from: James Fallows, Substack

Let's talk about how our candidates talk. 

<https://fallows.substack.com/p/election-countdown-176-days-to-go>

---

**@Dave Winer's Scripting News** (date: 2024-05-14, from: Dave Winer's Scripting News)

<a href="https://en.wikipedia.org/wiki/Tesla_Autopilot#Full_Self-Driving">FSD</a> gets confused and does some incredibly stupid things. With ChatGPT it's amusing but with FSD it's your ass on the line. 

<http://scripting.com/2024/05/13.html#a015747>

---

## OpenAI Debuts GPT-4o ‘Omni’ Model

date: 2024-05-14, updated: 2024-05-16, from: Daring Fireball

 

<https://techcrunch.com/2024/05/13/openais-newest-model-is-gpt-4o/>

---

**@Dave Winer's Scripting News** (date: 2024-05-14, from: Dave Winer's Scripting News)

Imagine a social web without, by default, the right to drop turds where ever you like. 

<http://scripting.com/2024/05/13.html#a015349>

---

## Time Out!

date: 2024-05-14, from: Dan Rather's Steady

Treat the polls as a motivator, not a misery 

<https://steady.substack.com/p/time-out>

---

## Evaluating Large Language Models Using “Counterfactual Tasks”

date: 2024-05-13, from: Melanie Mitchell, AI Guide for Human Thinking

&#8220;[O]ne thing is clear: LLMs are not human. But they are superhuman in their ability to extract information from the world&#8217;s database of text. Some aspects of their behavior appear to be intelligent, but if it&#8217;s not human intelligence, what is the nature of their intelligence?&#8221; &#8212; Terrence Sejnowski, 

<https://aiguide.substack.com/p/evaluating-large-language-models>

---

## Tricks for getting a group talking

date: 2024-05-13, from: Tracy Durnell Blog

Discuss in pairs Hand signals for remaining time needed No straight questions Diminish responsibility Hand down, not hands up 

<https://tracydurnell.com/2024/05/13/tricks-for-getting-a-group-talking/>

---

## Reply to gRegor: COVID safety at events

date: 2024-05-13, from: Tracy Durnell Blog

👏 I appreciate the work you&#8217;ve done on this gRegor! I know I&#8217;m unlikely to attend any in-person event soon, in part due to not traveling and in part from worry over event logistics, so I haven&#8217;t bothered to get into the details of what would make me feel safe to attend. I worried that [&#8230;] 

<https://tracydurnell.com/2024/05/13/reply-to-gregor-covid-safety-at-events/>

---

## Quick NVMe performance testing with fio

date: 2024-05-13, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Quick NVMe performance testing with fio</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>I've recently been debugging some NVMe / PCIe bus errors on a Raspberry Pi, and I wanted a quick way to test NVMe devices without needing to create a filesystem and use a tool like <code>iozone</code>. I don't care about benchmarks, I just want to quickly push the drive and read and write some data to it.</p>

<p><code>fio</code> is the tool for the job, and after a quick install <code>sudo apt install -y fio</code>, I create a configuration file named <code>nvme-read.fio</code>:</p>

<pre><code>[global]
name=nvme-seq-read
time_based
ramp_time=5
runtime=30
readwrite=read
bs=256k
ioengine=libaio
direct=1
numjobs=1
iodepth=32
group_reporting=1
[nvme0]
filename=/dev/nvme0n1
</code></pre>

<p>Then run it with:</p>

<pre><code>sudo fio nvme-read.fio
</code></pre>

<p>Easy way to put some stress on the drive, and test your PCIe setup and the drive itself.</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-05-13T15:55:45-05:00" title="Monday, May 13, 2024 - 15:55" class="datetime">May 13, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/quick-nvme-performance-testing-fio>

---

## Some Thoughts About The M4 Chip

date: 2024-05-13, from: Om Malik blog

Apple’s&#160;launch week was lost to the brouhaha over the “Crush” ad. As I explained last week, the real cause of this ad with poor taste is an outcome of the tyranny of large numbers, which is also not just an Apple problem. During Apple’s Lost Week, there&#160;was an announcement that was of primary interest to &#8230; 

<https://om.co/2024/05/13/some-thoughts-about-the-m4-chip/>

---

## Weather map

date: 2024-05-13, from: Dave Winer's Scripting News

<p>I asked ChatGPT to draw a weather map of the mid-Atlantic states, but it drew the usual garbage for technical images. </p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/05/13/weatherMap.png"></center>Weather map.</div></p>
 

<http://scripting.com/2024/05/13/205122.html?title=weatherMap>

---

**@Dave Winer's Scripting News** (date: 2024-05-13, from: Dave Winer's Scripting News)

I've been trying the new 4o version of ChatGPT. It's much faster. It certainly is a search engine. And it covers news. I asked it about Michael Cohen's testimony today in the Trump trial, and it gave me a summary. I asked for the weather forecast in Kingston NY. It wouldn't give me the lyrics to Martha My Dear by the Beatles. I asked it to draw a weather map of the mid-Atlantic states, but it drew the <a href="http://scripting.com/2024/05/13/205122.html">usual garbage</a> for technical images. 

<http://scripting.com/2024/05/13.html#a204138>

---

##  This is a good piece about third places (&#8220;settings a person frequents... 

date: 2024-05-13, updated: 2024-05-13, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044613-this-is-a-good-piece>

---

**@Dave Winer's Scripting News** (date: 2024-05-13, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/02/13/commanderDataStarTrek.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I can’t wait for the UIs of settings on systems like Mac or Android to go through the AIs. No more hunting through menus to not find the setting where you’re sure it should be. 

<http://scripting.com/2024/05/13.html#a191544>

---

##  &#8220;Just 27% of civilian workers in the U.S. get paid family leave.... 

date: 2024-05-13, updated: 2024-05-13, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044615-just-27-of-civilian-worke>

---

##  The Kids Are Right (and Alright) 

date: 2024-05-13, updated: 2024-05-13, from: Jason Kittke's blog

 

<https://kottke.org/24/05/the-kids-are-right-and-alright>

---

## Remember "free" airport WiFi? Also: LAX has always been a trash fire

date: 2024-05-13, from: Matt Haughey blog

<p>I flew though LAX yesterday and forgot how hostile free airport WiFi used to be in the mid-2000s.&#xA0;</p><p>LAX uses Boingo Wireless (aka Earthlink dialup&apos;s follow-up venture) which first tries to sell you a $15/mo plan (that used to be adopted by other airports). </p><p>To get</p> 

<https://a.wholelottanothing.org/remember-free-airport-wifi/>

---

##  Lauren Groff has opened a bookstore called The Lynx. &#8220;As book bans... 

date: 2024-05-13, updated: 2024-05-13, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044601-lauren-groff-has-opened-a>

---

##  Currently listening to Atavista, a &#8220;new&#8221; album from Childish Gambino (which he... 

date: 2024-05-13, updated: 2024-05-13, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044607-currently-listening-to-at>

---

##  Incredible fact: none of the Big Three US automakers makes a sedan... 

date: 2024-05-13, updated: 2024-05-13, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044609-incredible-fact-none-of-t>

---

##  The Demon of Unrest by Erik Larson 

date: 2024-05-13, updated: 2024-05-13, from: Jason Kittke's blog

 

<https://kottke.org/24/05/the-demon-of-unrest-by-erik-larson>

---

##  Geologist finds setting for Leonardo&#8217;s Mona Lisa. &#8220;Art historians said Leonardo always... 

date: 2024-05-13, updated: 2024-05-13, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044604-geologist-finds-setting-f>

---

##  A new LoTR movie is coming: Andy Serkis is starring and directing... 

date: 2024-05-13, updated: 2024-05-13, from: Jason Kittke's blog

 

<https://kottke.org/24/05/0044603-a-new-lotr-movie-is>

---

**@Dave Winer's Scripting News** (date: 2024-05-13, from: Dave Winer's Scripting News)

BTW, that's what <a href="https://imgs.scripting.com/2024/05/13/myBlogroll.png?nodialog">my blogroll</a> is turning into. My contributors. The people I keep an eye on through my work day. Where I get new ways of looking at the same world we're all looking at. We used to call this "watching them watch us watch them watching us etc." 

<http://scripting.com/2024/05/13.html#a131145>

---

**@Dave Winer's Scripting News** (date: 2024-05-13, from: Dave Winer's Scripting News)

The way MSNBC has contributors, I want contributors for my blog. One of the first people I'd invite is John Naughton. See next item. 

<http://scripting.com/2024/05/13.html#a130651>

---

**@Dave Winer's Scripting News** (date: 2024-05-13, from: Dave Winer's Scripting News)

Here's where we're headed now that we have AI programming partners. Creating software will be possible the way popular music is created. Watch <a href="https://en.wikipedia.org/wiki/The_Beatles:_Get_Back">Get Back</a> to get an idea. <a href="https://en.wikipedia.org/wiki/George_Martin">George Martin</a> was the Beatles sherpa, the same way my AI partner is my guide through unknown programming lands. It now doesn't matter if I have less experience building MySQL apps than others. I have the collective experience of <i>all of them</i> here to help. My George Martin. What got me thinking about this is John Naughton's <a href="https://www.theguardian.com/commentisfree/article/2024/may/11/chatgpt-ai-will-co-pilot-coders-to-new-heights-of-creativity?CMP=Share_iOSApp_Other">piece</a> about AI and programming. 

<http://scripting.com/2024/05/13.html#a130409>

---

**@Dave Winer's Scripting News** (date: 2024-05-13, from: Dave Winer's Scripting News)

<a href="http://scripting.com/2014/03/03/theCanonicalKnicksFan.html">The canonical Knicks fan</a>, a video. 

<http://scripting.com/2024/05/13.html#a121316>

---

**@Dave Winer's Scripting News** (date: 2024-05-13, from: Dave Winer's Scripting News)

I absolutely abhor news sites that make you turn off your ad blocker only to reveal their paywall. 

<http://scripting.com/2024/05/13.html#a120949>

---

**@Dave Winer's Scripting News** (date: 2024-05-13, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2019/07/02/knicks.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I feel like crap today, the Knicks were blown out by the Indiana team, the series is tied 2-2 but it feels much worse. The headline in the <a href="https://www.nydailynews.com/2024/05/12/pacers-blow-out-knicks-tie-series/">Daily News</a> reads "Pacers blow depleted, dead-legged Knicks out of the water in Game 4, tie series 2-2." Yeah. I don't know how we recover from this loss. In a way I imagine the Knicks issuing a resignation. "It's been a great season, but we're tired. We're headed to the beach, we'll see you in October Knicks fans. Thanks for your support." I would nod my head and say "Yeah that makes sense." Whatever. I may spend today sleeping it off. Next game is tomorrow night. Yes, they will play, for sure, and yes, I will watch. 

<http://scripting.com/2024/05/13.html#a120359>

---

## LLMs’ Data-Control Path Insecurity

date: 2024-05-13, updated: 2024-05-15, from: Bruce Schneier blog

<p>Back in the 1960s, if you played a 2,600Hz tone into an AT&#38;T pay phone, you could make calls without paying. A phone hacker named <a href="https://en.wikipedia.org/wiki/John_Draper">John Draper</a> noticed that the <a href="https://www.atlasobscura.com/articles/capn-crunch-whistle">plastic whistle</a> that came free in a box of Captain Crunch cereal worked to make the right sound. That became his hacker name, and everyone who knew the trick made free pay-phone calls.</p>
<p>There were all sorts of related hacks, such as faking the tones that signaled coins dropping into a pay phone and faking tones used by repair equipment. AT&#38;T could sometimes change the signaling tones, make them more complicated, or try to keep them secret. But the general class of exploit was impossible to fix because the problem was general: Data and control used the same channel. That is, the commands that told the phone switch what to do were sent along the same path as voices...</p> 

<https://www.schneier.com/blog/archives/2024/05/llms-data-control-path-insecurity.html>

---

## Perfect Days

date: 2024-05-13, from: Ayjay blog

The Richard Brody review of Perfect Days is a tone-deaf review by the most reliably tone-deaf reviewer out there. Every reviewer has limits to his or her catholicity of taste, because every human being is thus limited, but Brody’s cinematic sweet spot seems to be tiny, and when he doesn’t like a movie he simply [&#8230;] 

<https://blog.ayjay.org/perfect-days/>

---

## America’s second civil war? It’s already begun

date: 2024-05-13, from: Robert Reich's blog

If Trump is elected, he&#8217;ll make it worse 

<https://robertreich.substack.com/p/americas-second-civil-war-has-already>

---

## Control of thought, control of movement

date: 2024-05-13, from: Tracy Durnell Blog

See also: We cannot have bodily autonomy in a surveillance state An improvisational walking newsletter Challenging the &#8220;rights&#8221; of cars for the rights of people Recursive human thought To stay or to go? 

<https://tracydurnell.com/2024/05/12/control-of-thought-control-of-movement/>

---

## Import unsupported camera RAW files into Apple Photos

date: 2024-05-13, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Import unsupported camera RAW files into Apple Photos</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>Many years ago, I decided to <a href="https://www.jeffgeerling.com/blog/2017/i-made-switch-aperture-photos">migrate my photo library from Apple's now-defunct Aperture to Photos</a>, so I could take advantage of Apple's iCloud Photo Library (don't worry, I still have three full complete local backups, plus a separate cloud backup besides Apple's iCloud originals).</p>

<p>One pain point is RAW support. As camera manufacturers add new models, their proprietary RAW codecs are updated, and software vendors like Apple, Adobe, and Microsoft have to update photo editing tools to work with the new camera models.</p>

<p>I don't envy them this task, but as Photos was Apple's official successor to Aperture (a pale shadow to be sure, but it has its merits as a semi-decent library organizer), they've <em>generally</em> done well supporting new camera models. The compatibility list for <a href="https://support.apple.com/en-us/105094">macOS Sonoma, iPadOS 17, and iOS 17</a> is a testament to that effort.</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-05-12T21:59:58-05:00" title="Sunday, May 12, 2024 - 21:59" class="datetime">May 12, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/import-unsupported-camera-raw-files-apple-photos>

---

##  The Sky Was Purple and Red and Yellow and On Fire 

date: 2024-05-13, updated: 2024-05-13, from: Jason Kittke's blog

 

<https://kottke.org/24/05/the-sky-was-purple-and-red-and-yellow-and-on-fire>

---

## Monday 13 May, 2024

date: 2024-05-12, from: John Naughton's online diary

Drakes! You can tell what they’re thinking: where did those dratted females go? Quote of the Day ”There is nothing noble in being superior to your fellow men. True nobility lies in being superior to your former self. Ernest Hemingway  &#8230; <a href="https://memex.naughtons.org/monday-13-may-2024/39435/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-13-may-2024/39435/>

---

**@Dave Winer's Scripting News** (date: 2024-05-12, from: Dave Winer's Scripting News)

Every social web should offer the two same author-level moderation controls that Facebook does. 1. The author can delete comments. 2. The author can say who can respond. Here are screen shots of the <a href="https://imgs.scripting.com/2024/05/12/whoCanComment1.png">menu</a> and <a href="https://imgs.scripting.com/2024/05/12/whoCanComment2.png">dialog</a>. We assume each site already has the ability to block users. No more spammer trolls. 

<http://scripting.com/2024/05/12.html#a230238>

---

## Did student protesters affect Biden’s decision?

date: 2024-05-12, from: Robert Reich's blog

Friends, This weekend, tens of thousands of students are graduating from American colleges and universities. Some graduation ceremonies have been cancelled or at least inconvenienced by student protests. Just so there&#8217;s no confusion, let me state clearly that I&#8217;m deeply opposed to Hamas. I was appalled by the atrocities it committed on October 7 that left 1,200 Israelis dead and took 134 people as hostages, including babies, children, women, and older people. And I firmly believe in Israel&#8217;s existence and its right to protect itself. 

<https://robertreich.substack.com/p/student-demonstrators-and-bidens>

---

**@Dave Winer's Scripting News** (date: 2024-05-12, from: Dave Winer's Scripting News)

Today's one sentence provocation: Imagine a social web without the default right to drop turds where ever you like. 

<http://scripting.com/2024/05/12.html#a151149>

---

**@Dave Winer's Scripting News** (date: 2024-05-12, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/05/12/librarian.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">ChatGPT is like a worldwide encyclopedia that comes with a free librarian, 24 hours a day, who never gets tired and thinks all your questions are super insightful. I suppose everyone projects their ideal best friend on this thing. You just learned something about me. Heh. But the cool thing is it's not a yes-person, if they think you're wrong they say so. Which I <i>really</i> like. One more thing I'm really glad I got to be alive when this stuff came online. I feel much smarter and better organized and it's harder for me to get lost in the weeds, as I do sometimes. I guess what want next is a librarian who also is a great executive assistant. Takes notes on what I'm doing and figures out what I need to be reminded of and roughly when. 

<http://scripting.com/2024/05/12.html#a143142>

---

## ‘Love Can Build A Bridge’

date: 2024-05-12, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/love-can-build-a-bridge>

---

**@Dave Winer's Scripting News** (date: 2024-05-12, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="http://scripting.com/images/2024/05/05/marchOnWashington.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Sometimes I just put one idea on my blog for a day and leave it at that because I think the idea is important enough on its own, and that any explanation would dilute it. Yesterday's one sentence <a href="http://scripting.com/2024/05/11.html#a225751">comment</a> was based on decades of reading the NYT, and the story told by their executive editor in a recent <a href="https://www.semafor.com/article/05/05/2024/joe-kahn-the-newsroom-is-not-a-safe-space">interview</a>, who has imho completely lost his way. Using polls, which have proven not reliable, and are subject to manipulation by the NYT and other opinion leaders, to determine what they cover, that's marketing, not journalism. Journalism would tell us what to expect if we elect one candidate over another, if the differences are obvious, as they are in 2024. The NYT is not doing that, by its own admission, and based on observation. I ask my readers, some of whom are influential people themselves, do we accept this, and keep trying to get the NYT to understand and deliver on their responsibility, or take the problem on ourselves. I believe we have the tools and resources to do so, all we need is determination. 

<http://scripting.com/2024/05/12.html#a115836>

---

## 2024-05-12 What do about the climate?

date: 2024-05-12, from: Alex Schroeder's Blog

<h1 id="2024-05-12-what-do-about-the-climate">2024-05-12 What do about the climate?</h1>

<p>The main problem seems to me that nobody knows. So how do we find a way out of this uncertainty? What should or <a href="priorities">priorities</a> be?</p>

<p>Before we even start, let me just say that I&rsquo;m never interested in debating climate change. <a href="2024-01-14-climate">It&rsquo;s real, it&rsquo;s here</a>, and people denying it are just trying to waste our time.</p>

<p>The first category of action, I think, would be political: Vote green, on all levels of government. And by &ldquo;green&rdquo; I mean the most radical green possible but not necessarily a Green Party member. It all depends on the voting system, on the actual parties you have. If you live in a  one or two party state or if your Green Party is run by fascists, I have no idea what you should do. Something about political change, something about local politics, and so on.</p>

<p>On the individual level, I think uncertainty arises because we&rsquo;re not sure. No littering looks nice but probably doesn&rsquo;t help much against the climate. Perhaps it helps against the micro-plastic? But how many plastic bags from land-locked Switzerland actually end up in the ocean? How much plastic is that compared to the fishing nets lost at sea? The oil spills? And here&rsquo;s the moment where it spirals out of control. Stop! I need to stop because there&rsquo;s no &ldquo;thinking it through&rdquo; when things are so complex unless you&rsquo;re a scientist working on it. I hope the scientists can do their research, and somebody else can compile the research into arguments, with weights attached, so that politicians and individuals know what to tackle first.</p>

<p>This is why I appreciate lists of priorities, even if they are slightly wrong. They don&rsquo;t have to be perfect because perfection is a goal used to derail the conversation. If you think the top priority is to get rid of cars, and you have a lot of arguments against cars, then getting involved in a discussion where the other party argues about electric vehicles, lithium batteries, hydrogen storage, road access for emergency vehicles, mobility for the disabled, then yes to all of that, but also: get rid of cars. We can have nuance as long as we also start doing something. We can start by making large, private cars illegal. Then medium, private cars. Then add fees for long haul trucks. Build railways. Build trams. Get rid of public parking spaces without special permits. And on and on. This allows us to pull back out of car society with grace. We can get started and keep the things that we think are precious.</p>

<p>The alternative is living as we do, followed by uncontrolled collapse, I fear.</p>

<p>Yes, it&rsquo;s expensive. Not doing anything, however, is fatal.</p>

<p>Here&rsquo;s what <a class="account" href="https://mastodon.green/@peterdutoit" title="@peterdutoit@mastodon.green">@peterdutoit</a> recently posted:</p>

<blockquote>
<p>In order of impact:</p>

<p>🚫 Live car free<br>
🚙 Shift to BEV [i.e. Battery Electric Vehicle]<br>
✈️ One less flight (long return)<br>
☀️ Use renewable energy<br>
🚋 Shift to public transport<br>
🔨 Refurbishment and renovation<br>
🥗 Vegan diet<br>
🆒 Heat pump<br>
⏲️ Improved cooking equipment<br>
♨️ Renewable-based heating</p>
</blockquote>

<p>He offered these two sources:</p>

<ul>
<li><a href="https://iopscience.iop.org/article/10.1088/1748-9326/ab8589">Quantifying the potential for climate change mitigation of consumption options</a>, Diana Ivanova <em>et al</em> 2020 <em>Environ. Res. Lett.</em> <strong>15</strong> 093001 <strong>DOI</strong> 10.1088/1748-9326/ab8589</li>
<li>Creutzig, F., J. Roy, P. Devine-Wright, J. Díaz-José, F.W. Geels, A. Grubler, N. Maϊzi, E. Masanet, Y. Mulugetta, C.D. Onyige, P.E. Perkins, A. Sanches-Pereira, E.U. Weber, <a href="https://www.ipcc.ch/report/ar6/wg3/downloads/report/IPCC_AR6_WGIII_Chapter05.pdf">2022: Demand, services and social aspects of mitigation</a>. In <a href="https://www.ipcc.ch/report/ar6/wg3/">IPCC, 2022: Climate Change 2022: Mitigation of Climate Change</a>. Contribution of Working Group III to the Sixth Assessment Report of the Intergovernmental Panel on Climate Change [P.R. Shukla, J. Skea, R. Slade, A. Al Khourdajie, R. van Diemen, D. McCollum, M. Pathak, S. Some, P. Vyas, R. Fradera, M. Belkacemi, A. Hasija, G. Lisboa, S. Luz, J. Malley, (eds.)]. Cambridge University Press, Cambridge, UK and New York, NY, USA. doi: 10.1017/9781009157926.007</li>
</ul>

<p>The full report of <em>Climate Change 2022: Mitigation of Climate Change</em> is a PDF with 2042 pages. So there&rsquo;s an answer if anybody is claiming that we don&rsquo;t know what to do. But also: there&rsquo;s your answer if you&rsquo;re wondering why nobody is doing anything. Politicians at the top need people who read this report for them and my guess is – given what little I know about Swiss politics, for example – that there is only a very small number of people that have actually read this report, let alone understand enough of it in order to make informed decisions.</p>

<p>This is why a public &ldquo;chain of trust&rdquo; needs to lead from interviews with public figures to interviews with experts. The media, including social media, needs to mediate this. Then people can at least go along with people they trust, even if this trust is built on public appearance, hollow campaign promises, good looks, height and whatever else engenders trust in people.</p>

<p>Anyway, number one: 🚫 Live car free. If you can. Make the kind of choices that make this easier in the future, or for your children, or for your friends and family. If you can. But this is one of the goals we need to pursue. We need to get our <a href="priorities">priorities</a> right.</p>

<p>(We don&rsquo;t need them to perfectly right, as discussed above. But we cannot save the planet and car culture, both. One of them will have to go.)</p>

<p><a class="tag" href="/search/?q=%23Climate">#Climate</a></p> 

<https://alexschroeder.ch/view/2024-05-12-uncertainty>

---

## About yesterday’s European Song Contest 2024

date: 2024-05-12, from: Chris Heilmann's blog

Yesterday was the final of Eurovision. Lots of people use this as an opportunity to post pictures of dead babies. I get it, we live in pretty rough times. But the ESC is not an official European vote, or political platform. So how about we concentrate on the real elections going on. We have enough [&#8230;] 

<https://christianheilmann.com/2024/05/12/about-yesterdays-european-song-contest-2024/>

---

## Dev Digest Issue 115 – password beefstew is not Strog/|n0FF

date: 2024-05-12, from: Chris Heilmann's blog

Friday I released Issue 115 of the WeAreDevelopers Dev Digest Newsletter This time you learn how AI changes how code is taught, cryptography, the history of passwords, how the internet is declining and you can play Super Mario on a type writer. News and Articles Some cool new things to try out: The Netlify Image [&#8230;] 

<https://christianheilmann.com/2024/05/12/dev-digest-issue-115-password-beefstew-is-not-strog-n0ff/>

---

## Sunday caption: His thoughts?

date: 2024-05-12, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/sunday-caption-his-thoughts>

