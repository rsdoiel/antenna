---
title: columns 2024.05
updated: 2024-01-30 11:51:48
---

# columns 2024.05

(date: 2024-01-30 11:51:48)

---

## Apple’s Vision Pro -The Meta-Review.

date: 2024-01-30, from: Om Malik blog

Apple Vision Pro reviews have started to roll in — and depending on who you read, the consensus vacillates between amazing and work in progress. In most cases, they reflect some version of reality. If one is looking for faults with Apple’s face computer, then one will find them. And if you are looking at &#8230;

<span class="feed-item-link">
<a href="https://om.co/2024/01/30/apples-vision-pro-the-meta-review/">https://om.co/2024/01/30/apples-vision-pro-the-meta-review/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://om.co/2024/01/30/apples-vision-pro-the-meta-review/">Save to Pocket</a>
</span>

---

## Criming On The Blockchain

date: 2024-01-30, from: David Rosenthal's blog

I apologize for the delay in posting but, as you will see, the post I was working on grew rather long.<br />
<br />
It seems obvious that doing crimes and writing the receipts to an immutable public ledger is risky, but many criminals have been convinced that there is no risk because cryptocurrencies such as Bitcoin are anonymous. Although there are cryptocurrencies with anonymous transactions, such as Monero and zCash, they are much more difficult to use and much less liquid than pseudonymous cryptocurrencies like Bitcoin. As many criminals have discovered, without an unrealistically intense focus on <a href="https://blog.dshr.org/2022/02/inadequate-opsec.html">operational security (opsec)</a>, the identity behind the pseudonym can be revealed. An entire industry has evolved to do these revelations, tracing the flow of coins through their blockchains.<br />
<br />
Below the fold I discuss the techniques and results of blockchain tracing, based on four main sources:<br />
<ul>
<li>Andy Greenberg's new book entitled <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/"><i> Tracers in the Dark: The Global Hunt for the Crime Lords of Cryptocurrency</i></a>.</li>
<li>Chainalysis' report <a href="https://www.chainalysis.com/blog/2024-crypto-crime-report-introduction/"><i>2024 Crypto Crime Trends: Illicit Activity Down as Scamming and Stolen Funds Fall, But Ransomware and Darknet Markets See Growth</i></a>
and his <a href="https://www.wired.com/story/stablecoin-sanctions-violations-crypto-crime/"><i>‘Stablecoins’ Enabled $40 Billion in Crypto Crime Since 2022</i></a>.</li>
<li>The UN Office for Drugs and Crime (UNODC) report <a href="https://www.unodc.org/roseap/uploads/documents/Publications/2024/Casino_Underground_Banking_Report_2024.pdf"><i>Casinos, Money Laundering, Underground Banking, and Transnational Organized Crime in East and Southeast Asia: A Hidden, Accelerating Threat</i></a>.</li>
<li>Recent posts on <a href="https://medium.com/chainargos/">ChainArgos blog</a>.</li>
</ul>
<span><a name='more'></a></span>
There are two main use cases for cryptocurrencies, speculation and crime. Although speculation is likely behind the majority of transactions its externalities, such as people losing their life savings, have cause it to be downgraded from "harmless" to "<a href="https://en.wikipedia.org/wiki/The_Hitchhiker%27s_Guide_to_the_Galaxy_(radio_series)">mostly harmless</a>", the minority of criminal transactions are definitely harmful. I've written about these harms in, among others, my <a href="https://blog.dshr.org/2022/02/ee380-talk.html">EE380 talk</a>, <a href="https://blog.dshr.org/2023/05/the-cryptocurrency-use-case.html"><i>The Cryptocurrency Use Case</i></a> and <a href="https://blog.dshr.org/2022/09/cryptocurrency-enabled-crime.html"><i>Cryptocurrency-enabled Crime</i></a>.<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9TbM75u2Xff7AXUBO5u3BOajEyJqin8yL9uZ3OnNB-iQW_hI1vU0LMzL6w6LVsUFbb6H2Z6HEU1MezOmWIdFmH6t8HX93eNKzauopYST8hvipW5GDWyntHAG1x1lHbxYuyIG0ATSRHvGfE21h19l8jeEeSdgXTmpXy47XKeekKredC074cc_AwgvzzOHP/s1500/Tracers.jpg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="1500" data-original-width="970" height="200" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi9TbM75u2Xff7AXUBO5u3BOajEyJqin8yL9uZ3OnNB-iQW_hI1vU0LMzL6w6LVsUFbb6H2Z6HEU1MezOmWIdFmH6t8HX93eNKzauopYST8hvipW5GDWyntHAG1x1lHbxYuyIG0ATSRHvGfE21h19l8jeEeSdgXTmpXy47XKeekKredC074cc_AwgvzzOHP/w129-h200/Tracers.jpg" width="129" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/ref=sr_1_1">Source</a></td></tr></tbody></table>
Greenberg's book lays out the history of blockchain tracing technology, starting from Sarah Meiklejohn <i>et al</i>'s 2013 paper entitled <a href="https://doi.org/10.1145/2504730.2504747"><i>A Fistful of Bitcoins: Characterizing Payments Among Men with No Names</i></a>. Their abstract reads:<br />
<blockquote>
Bitcoin is a purely online virtual currency, unbacked by either physical commodities or sovereign obligation; instead, it relies on a combination of cryptographic protection and a peer-to-peer protocol for witnessing settlements. Consequently, Bitcoin has the unintuitive property that while the ownership of money is implicitly anonymous, its flow is globally visible. In this paper we explore this unique characteristic further, using heuristic clustering to group Bitcoin wallets based on evidence of shared authority, and then using re-identification attacks (i.e., empirical purchasing of goods and services) to classify the operators of those clusters. From this analysis, we characterize longitudinal changes in the Bitcoin market, the stresses these changes are placing on the system, and the challenges for those seeking to use Bitcoin for criminal or fraudulent purposes at scale.
</blockquote>
Meiklejohn started from an observation by Satoshi Nakamoto. <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">Greenberg quotes Nakamoto</a>:<br />
<blockquote>
"Some linking is still unavoidable with multi-input transactions, which necessarily reveal that their inputs were owned by the same owner,” Satoshi wrote. “The risk is that if the owner of a key is revealed, linking could reveal other transactions that belonged to the same owner.”
</blockquote>
Linking the inputs of multi-input transactions roughly halved the then number of Bitcoin users. Meiklejohn then developed the <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">"change address" technique</a>:<br />
<blockquote>
When you pay someone 6 bitcoins from a 10-coin address, 6 coins go to their address. Your change, 4 coins, is stored at a new address, which your wallet software creates for you. The challenge, when looking at that transaction on the blockchain as a sleuthing observer, is that the recipient’s address and the change address are both simply listed as outputs, with no label to tell them apart.<br />
<br />
But sometimes, Meiklejohn realized, spotting the difference between the change address and the recipient address was easy: If one address had been used before and the other hadn’t, the second, totally fresh address could only be the change address
</blockquote>
Meiklejohn's first criminal case started when "Flycracker" raised funds to mail Brian Krebs a baker's dozen bags of <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">heroin from Silk Road</a>:<br />
<blockquote>
  Flycracker had made it easy. By posting a Bitcoin address to the cybercriminal forum, he’d given Meiklejohn a starting point. She simply copied the thirty-four-character string into her blockchain software and looked at the transactions at that address. After collecting 2 bitcoins in donations at the address he’d posted, worth around $200 at the time, a little over three-quarters of the money had been sent to another address, with a third collecting the change. At a glance, Meiklejohn immediately identified the change address and checked the money’s destination against her database. Sure enough, the address was one of the nearly 300,000 she had already tagged as belonging to the Silk Road. Meiklejohn had just connected Flycracker’s address directly to the source of the heroin he’d tried to use to frame Krebs.
</blockquote>
The first major cryptocurrency bust Greenberg recounts was the arrest of Silk Road's Dread Pirate Roberts in a San Francisco library. It <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">did not depend upon these tracing techniques</a>:<br />
<blockquote>
The FBI has described that cybersurveillance coup as the result of a misconfiguration in the site’s use of the Tor anonymity software but has been reluctant to ever officially explain that error in a courtroom.
</blockquote>
<a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">In fact</a>:<br />
<blockquote>
it had been the IRS’s Gary Alford, sitting in his New Jersey home four months earlier, who’d done the meticulous, unglamorous work that had led to the case’s first real breakthrough. Alford had been using Google to dig up the earliest online posts about the Silk Road on drug forums when he’d found a curious artifact: Someone going by the name “altoid” had posted to a site called the Shroomery in January 2011 recommending the Silk Road’s just-launched dark web market as a source for drugs. Around the same time, a user with the same handle had also asked for programming help on a coding forum. On that page, altoid had listed his email address: rossulbricht@gmail.com.
</blockquote>
Another IRS agent, Tigran Gambaryan, received a tip that Carl Force, one of the DEA agents working on Silk Road, had used a fake ID to set up an account at Bitstamp, a cryptocurrency exchange, and  deposited a lot of BTC He had cashed out $200K and, as Gambaryan <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">examined his financial records</a>:<br />
<blockquote>
He found that Force had, in late 2013, paid off his home’s entire mortgage, an outstanding loan of $130,000. He’d repaid, too, a $22,000 loan he’d taken out against his federal retirement account. He’d even made a gift of tens of thousands of dollars to his local church, the sort of largesse that, Gambaryan knew all too well, was tough to afford on a federal agent’s salary. The numbers only got shadier from there: Gambaryan found records of real estate investments in which Force had listed his net worth as more than 1 million. That wealth was almost entirely due, it became clear, to a massive influx of liquidated bitcoins from cryptocurrency exchanges like Bitstamp and CampBX that had flowed into Force’s bank accounts. The payments totaled $776,000 beyond his $150,000 annual DEA salary over the two prior years that he’d worked on the Silk Road case. With that ample financial padding, Force had then retired from the DEA, just days before Gambaryan began to look into his records.
</blockquote>
Gambaryan could get Force's wallet addresses from the exchanges he used, and he found an unencrypted message from DPR referencing a 525 BTC payment to Force's investigative alias, but he needed proof, So, <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">Greenberg writes</a>:<br />
<blockquote>
Despite having read Meiklejohn’s paper, he possessed none of the data that she’d assembled over months of clustering Bitcoin addresses and identifying them with test transactions. So he simply started copying Bitcoin addresses from Carl Force’s account records—the ones he’d gotten from exchanges such as CampBX and Bitstamp—and pasting them into the search field on Blockchain.info, which displayed the entire blockchain on the web. At first, the collections of garbled character strings seemed meaningless to Gambaryan. But almost immediately, he could see he was onto something. On September 27, 2013, just a few days before Ross Ulbricht’s arrest, Gambaryan saw with a jolt of recognition that one of Force’s CampBX addresses had received a 525-bitcoin payment—the magic number that DPR had mentioned in his conveniently unencrypted message.
</blockquote>
Gambaryan manually followed the chains backward, from their inputs to the outputs that caused them, <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">until finally</a>:<br />
<blockquote>
Following the money at each of the remaining addresses back one more step, he now saw the coins had originally come from just four sources. Each of those addresses had received their funds on the same day: August 4, 2013—the exact date when the Dread Pirate Roberts had told Nob he’d paid him. Gambaryan mentally recorded the payments: They were for 127, 61, 134, and 203 bitcoins. He added the numbers in his head. They summed up to 525 bitcoins.<br />
...<br />
The next morning, after a few hours’ sleep, Gambaryan began texting his DHS contact Jared Der-Yeghiayan, the Armenian American agent in Chicago whom he’d befriended. He needed to check the four addresses he’d found with someone who had access to the Dread Pirate Roberts’s Bitcoin wallet. As a member of the Silk Road investigation team, Der-Yeghiayan still had access to all the site’s server data, including its Bitcoin addresses. Der-Yeghiayan called Gambaryan back a few hours later and confirmed what Gambaryan already knew: Each of the four addresses belonged to DPR.
</blockquote>
He thus became apparently the first law enforcer to use blockchain tracing as evidence in an investigation. Its first use in a trial appears to be when, with help from Nick Weaver, the prosecution of Ross Ulbricht introduced a trace of his payment for <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/"> a murder-for-hire attempt</a>:<br />
<blockquote>
But the day when the prosecution found the incontrovertible, public, and unerasable proof of Ulbricht’s Silk Road millions, argues Nick Weaver, remains a milestone in the history of cryptocurrency and crime. “That is the date,” Weaver says, “that you can state unequivocally that law enforcement learned that the blockchain is forever.”
</blockquote>
The blockchain tracing industry's pioneer, Chainalysis, spun out of the Kraken exchange as a result of the next big crime Greenberg covers, the <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">collapse of the Mt. Gox exchange</a>:<br />
<blockquote>
Kraken’s management, in a pro bono attempt to help rescue the cryptocurrency ecosystem from the rippling shock of Mt. Gox’s failure—and the collapse in Bitcoin’s price that followed—had agreed to help distribute any remaining bitcoins that could be found to Mt. Gox’s thousands upon thousands of angry creditors.<br />
<br />
Michael Gronager, for his part, had taken on a far more uncertain task. He’d agreed to find the missing coins. By all appearances, this was not a rational decision. The Danish entrepreneur had left his relatively comfortable position as the COO of Kraken to found a new start-up whose sole client, for the moment, was this roomful of Japanese bankruptcy lawyers asking him to track down Mt. Gox’s gigantic, wayward fortune. Even calling them a client would be a stretch: He would receive no fee, and no portion of the recovered funds, if he could manage to find any.
</blockquote>
The co-evolution of Bitcoin's and tracing technology started with the revelation that Chainalysis, by running a node in the Bitcoin network, could discover the IP address associated with many wallets, which garnered both hostility and customers. With a head-start, Chainalysis rapidly became the leader in their emerging market, as <a href="http://www.amazon.com/Increasing-Returns-Dependence-Economics-Cognition/dp/0472064967">Brian Arthur</a> would have predicted.<br />
<br />
The next investigation Greenberg covers was into the BTC-e exchange, <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">whose</a>:<br />
<blockquote>
computers where the exchange was hosted weren’t on the dark web, protected by Tor. They ought to be discoverable with a simple “traceroute” command, an operation that anyone with a computer and an internet connection can run to find a site’s IP address—no harder than looking up a commercial service’s number in a phone book. Gambaryan checked, and it turned out the only layer of misdirection that had prevented curious observers from learning the location of BTC-e’s servers in the first place was a company called Cloudflare, a web infrastructure provider and security service that shielded the exchange’s IPs from prying eyes like Gambaryan’s.
</blockquote>
Subpoenas to Cloudflare revealed they were hosted in the US, which allowed them to be <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">imaged</a>:<br />
<blockquote>
Gambaryan dug into the data his team had copied from the BTC-e server. What he found was a revelation: The IP address for the account trading in stolen Mt. Gox coins on BTC-e matched one of the few IP addresses on the BTC-e server’s allow list for the administrators’ connections. In other words, the person who had siphoned hundreds of thousands of bitcoins from Mt. Gox into BTC-e wasn’t just any BTC-e user. They were a
BTC-e administrator. Specifically, an admin with the username WME. “The gears started turning in my head,” Gambaryan remembers. “What better way to launder hundreds of thousands of bitcoins than to launch your own Bitcoin exchange?”
</blockquote>
WME was Alexander Vinnik but, alas, he was in Russia.<br />
<br />
Greenberg goes on to describe the takedown of Alexandre Cazes, who ran the Alphabay dark-web market and the related takeover of the Hansa dark-web market, and then of the Welcome to Video child sexual abuse site.
This led to the arrest and indictment of a Texas-based <a href="https://www.amazon.com/Tracers-Dark-Global-Crime-Cryptocurrency-ebook/dp/B09SKW8WRV/">Border Patrol agent</a>:<br />
<blockquote>
The Texas man had taken a rare approach to his legal defense: He’d pleaded guilty to possession of child sexual abuse materials, but he also appealed his conviction. He argued that his case should be thrown out because IRS agents had identified him by tracking his Bitcoin payments—without a warrant—which he claimed violated his Fourth Amendment right to privacy and represented an unconstitutional “search.”<br />
  <br />
  A panel of appellate judges considered the argument—and rejected it. In a nine-page opinion, they explained their ruling, setting down a precedent that spelled out in glaring terms exactly how far from private they determined Bitcoin’s transactions to be.<br />
  <br />
  “Every Bitcoin user has access to the public Bitcoin blockchain and can see every Bitcoin address and its respective transfers. Due to this publicity, it is possible to determine the identities of Bitcoin address owners by analyzing the blockchain,” the ruling read. “There is no intrusion into a constitutionally protected area because there is no constitutional privacy interest in the information on the blockchain.”<br />
  <br />
  A search requires a warrant, the American judicial system has long held, only if that search enters into a domain where the defendant has a “reasonable expectation of privacy.” The judges’ ruling argued that no such expectation should have existed here: The HSI agent wasn’t caught in the Welcome to Video dragnet because IRS agents had violated his privacy. He was caught, the judges concluded, because he had mistakenly believed his Bitcoin transactions to have ever been private in the first place. 
</blockquote>
This firmly established blockchain tracing as a legitimate form of evidence.<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbbjMzX65f3S0ZT5tNMBXgCgMURaRDBwo6S5FCdgATslp7MUp6vokxzYwa5tVjt19QqGK_GDPGujJC1CihsEbGFIG4qqTZ26mMqfCq2r87xKWHlyTFDRcL1pwogYJ-ZD6RuZwKZ9-oKiXuB_eLBPPI8vdv7ccHKHtcL1dbuhfDFOorY8fbG4x74Qn6JspD/s1000/VCE4-Transfers.png" imageanchor="1" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="826" data-original-width="1000" height="165" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjbbjMzX65f3S0ZT5tNMBXgCgMURaRDBwo6S5FCdgATslp7MUp6vokxzYwa5tVjt19QqGK_GDPGujJC1CihsEbGFIG4qqTZ26mMqfCq2r87xKWHlyTFDRcL1pwogYJ-ZD6RuZwKZ9-oKiXuB_eLBPPI8vdv7ccHKHtcL1dbuhfDFOorY8fbG4x74Qn6JspD/w200-h165/VCE4-Transfers.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.justice.gov/opa/press-release/file/1470186/download">Source</a><br /></td></tr></tbody></table>
One case Greenberg mentions only in passing is the theft of nearly 120K BTC from Bitfinex, to which <a href="https://www.bbc.com/news/technology-66390639">Heather Morgan and Ilya Lichtenstein pled guilty</a>. They were intitially flagged as suspects during the takeover of AlphaBay that Greenberg describes in detail. I discussed the tracing steps revealed by the <a href="https://www.justice.gov/opa/press-release/file/1470186/download"><i>Statement of Facts</i></a> from their indictment in <a href="https://blog.dshr.org/2022/02/inadequate-opsec.html"><i>Inadequate OpSec</i></a>. The image shows a small part of the tracing evidence in this case. The two VCE4 accounts used Russian e-mail addresses, but the VCE7 and VCE8 accounts were in the name of companies controlled by Lichtenstein and Morgan. Tracing the chains back connected the VCE4 accounts to  the suspects, who had taken the precaution of funding VCE4 with Monero.<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhqlcEYPthnP28Q-HN8kmweEuIL5TWrGgK6HXJVAxoYy2_mTcUnb5n5KFMaldB0TOQm8eePa2y2OkJzlyslViPsnIQeYUhVFHaJBaNOdUv3fZhmQH7PhJfvaml_3fEIPIcx-zxKXAf5Zia615xIea5uG4dlQzedpa8uPo4ZVBGCf_TbEONPhJXIvE2JtKCx/s800/TotalIllicitValue.png" style="clear: right; display: block; margin-left: auto; margin-right: auto; padding: 1em 0px; text-align: center;"><img alt="" border="0" data-original-height="509" data-original-width="800" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhqlcEYPthnP28Q-HN8kmweEuIL5TWrGgK6HXJVAxoYy2_mTcUnb5n5KFMaldB0TOQm8eePa2y2OkJzlyslViPsnIQeYUhVFHaJBaNOdUv3fZhmQH7PhJfvaml_3fEIPIcx-zxKXAf5Zia615xIea5uG4dlQzedpa8uPo4ZVBGCf_TbEONPhJXIvE2JtKCx/s200/TotalIllicitValue.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.chainalysis.com/blog/2024-crypto-crime-report-introduction/">Source</a></td></tr></tbody></table>
Deanonymizing individual wallets and flows is valuable to Chainalysis' clients; law enforcement for evidence and financial institutions for risk-assessment. But their vast collection of tagged wallet addresses and transactions is also valuable in aggregate. It enables statistical analysis of the cryptosphere, such as Chainalysis' annual report on cryptocurrency crime. This year's is introduced in <a href="https://www.chainalysis.com/blog/2024-crypto-crime-report-introduction/"><i>2024 Crypto Crime Trends: Illicit Activity Down as Scamming and Stolen Funds Fall, But Ransomware and Darknet Markets See Growth</i></a>:<br />
<blockquote>
2023 saw a significant drop in value received by illicit cryptocurrency addresses, to a total of $24.2 billion. As always, we have to caveat by saying that these figures are lower bound estimates based on inflows to the illicit addresses we’ve identified today. One year from now, these totals will almost certainly be higher, as we identify more illicit addresses and incorporate their historic activity into our estimates. For instance, when we published our Crypto Crime Report last year, we estimated $20.6 billion worth of illicit transaction volume for 2022. One year later, our updated estimate for 2022 is $39.6 billion. Much of that growth came from the identification of previously unknown, highly active addresses hosted by sanctioned services, as well as our addition of transaction volume associated with services in sanctioned jurisdictions to our illicit totals.<br />
<br />
Another key reason the new total is so much higher, besides the identification of new illicit addresses: We’re now counting the $8.7 billion in creditor claims against FTX in our 2022 figures. In last year’s report, 
</blockquote>
Although these arae large sums, Chainalysys estimate they represent a fairly small proportion of the total cryptocurrency volume, falling from 0.42% in 2022 to 0.34% in 2023. Of course, it is unlikely that they have identified <i>all</i> the illicit transactions.<br />
<br />
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg4uLYTQ9ZsDZNFU81xIFkplLGDiFnnWGY-G1H-iGLnqdZEoYEAniBjX-931DTLyAFEACQ30EYDC_tMDHxzBceF2TwoKLjkn4R3qG0Tk4etXvfU1w6ik2i2tSCoYfRioAgf5bBXCwPUOn2Z2gRBhVkgEqNO9A27GFDJqbqqb6qN2-wDWkEuxoBUrP-ZQf_a/s800/AssetTypeVolume.png" imageanchor="1" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="449" data-original-width="800" height="113" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg4uLYTQ9ZsDZNFU81xIFkplLGDiFnnWGY-G1H-iGLnqdZEoYEAniBjX-931DTLyAFEACQ30EYDC_tMDHxzBceF2TwoKLjkn4R3qG0Tk4etXvfU1w6ik2i2tSCoYfRioAgf5bBXCwPUOn2Z2gRBhVkgEqNO9A27GFDJqbqqb6qN2-wDWkEuxoBUrP-ZQf_a/w200-h113/AssetTypeVolume.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.chainalysis.com/blog/2024-crypto-crime-report-introduction/">Source</a></td></tr></tbody></table>
The report has a <a href="https://www.chainalysis.com/blog/2024-crypto-crime-report-introduction/">big surprise</a>:<br /> 
<blockquote>
Through 2021, Bitcoin reigned supreme as the cryptocurrency of choice among cybercriminals, likely due to its high liquidity. But that’s changed over the last two years, with stablecoins now accounting for the majority of all illicit transaction volume. This change also comes alongside recent growth in stablecoins’ share of all crypto activity overall, including legitimate activity.
</blockquote>
Bitcoin's volatility is great for speculation, but when it fails to proceed moonwards it is a big problem for criminals, and <a href="https://www.chainalysis.com/blog/2024-crypto-crime-report-introduction/">especially for sanctions-busters</a>:<br /> 
<blockquote>
Some forms of illicit cryptocurrency activity, such as darknet market sales and ransomware extortion, still take place predominantly in Bitcoin. Others, like scamming and transactions associated with sanctioned entities, have shifted to stablecoins. Those also happen to be the biggest forms of crypto crime by transaction volume, thereby driving the larger trend. Sanctioned entities, as well as those operating in sanctioned jurisdictions or involved with terrorism financing, also have a greater incentive to use stablecoins, as they may face more challenges accessing the U.S. dollar through traditional means, but still want to benefit from the stability it provides.
</blockquote>
The report notes that stablecoin users,criminal or not, run the risk of having their wallets and thus their funds "frozen", as Tether has been doing recently. Patrick Tan covered the case of an Indian user (The Victim) in detail in <a href="https://medium.com/chainargos/what-happens-when-tether-freezes-your-tether-5a8ece2bd508"><i>What happens when Tether “freezes” your Tether?</i></a>. On 7<sup>th</sup> December 2023 Tether changed its <a href="https://tether.to/en/legal/">Terms of Service</a> and, in <a href="https://medium.com/chainargos/3-things-you-must-know-about-tethers-terms-of-service-c46c0172b892"><i>3 Things You Must Know About Tether’s Terms of Service</i></a>, Tan delves into the deliberately confusing details and ends up agreeing with <a href="https://datafinnovation.medium.com/3249639e677a">Jonathan Reiter</a> about the The Victim's problem:<br />
<blockquote>
On a basic level this user was relying on an unlicensed money transmitter where they have 0 access to any authority that feels accountable to them.<br />
<br />
Tether isn’t an Indian money services business. Nor is it regulated in the victim’s country. Or anywhere with a real process.<br />
...<br />
This — precisely this — is the cost of living outside the law. You may end up with no recourse. Or not.<br />
<br />
But you don’t even have someone to complain to that feels accountable for your problems (i.e. your local police or elected representative, or an employee of a business accountable to a regulator you can contact).
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhV92Ly0XyArXKwagxLzoBznW2n1X_MYePLr7nlyGJjPkAdsy9uP_42kiCiC_xt1rjGUZUHDOzmj-FLKEUS6t2lVWrKwNWyM-nBobG_vWCI_04ftKeMKN8gUlGPuiZe-t_lvP7pMqTOpS1U1zG-WmOPHW7aO7tX_seXbux0v1qsfgNrcWMGBepVa9-il9c5/s800/AssetTypeUsage.png" imageanchor="1" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="476" data-original-width="800" height="119" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhV92Ly0XyArXKwagxLzoBznW2n1X_MYePLr7nlyGJjPkAdsy9uP_42kiCiC_xt1rjGUZUHDOzmj-FLKEUS6t2lVWrKwNWyM-nBobG_vWCI_04ftKeMKN8gUlGPuiZe-t_lvP7pMqTOpS1U1zG-WmOPHW7aO7tX_seXbux0v1qsfgNrcWMGBepVa9-il9c5/w200-h119/AssetTypeUsage.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.chainalysis.com/blog/2024-crypto-crime-report-introduction/">Source</a></td></tr></tbody></table>
It turns out that evading sanctions is the <a href="https://www.chainalysis.com/blog/2024-crypto-crime-report-introduction/">major criminal use case</a>:<br /> 
<blockquote>
Perhaps the most obvious trend that emerges when looking at illicit transaction volume is the prominence of sanctions-related transactions. Sanctioned entities and jurisdictions together accounted for a combined $14.9 billion worth of transaction volume in 2023, which represents 61.5% of all illicit transaction volume we measured on the year. Most of this total is driven by cryptocurrency services that were sanctioned by the U.S. Department of the Treasury’s Office of Foreign Assets Control (OFAC), or are located in sanctioned jurisdictions, and can continue to operate because they’re in jurisdictions where U.S. sanctions are not enforced. <br />
<br />
While those services can and have been used for nefarious purposes, it also means that some of that $14.9 billion in sanctions-related transaction volume includes activity from average crypto users who happen to reside in those jurisdictions.  For example, Russia-based exchange Garantex, which was sanctioned by OFAC and OFSI in the U.K. for its facilitation of money laundering on behalf of ransomware attackers and other cybercriminals, was one of the biggest drivers of transaction volume associated with sanctioned entities in 2023. Garantex continues to operate because Russia does not enforce U.S. sanctions. So, does that mean all of Garantex’s transaction volume is associated with ransomware and money laundering? No. Nevertheless, exposure to Garantex introduces serious sanctions risk for crypto platforms subject to U.S. or U.K. jurisdiction, which means those platforms must remain ever-more vigilant and screen for exposure to Garantex in order to be compliant.
</blockquote>
Translation: platforms need to subscribe to Chainalysis to be safe.  Andy Greenberg's <a href="https://www.wired.com/story/stablecoin-sanctions-violations-crypto-crime/"><i>‘Stablecoins’ Enabled $40 Billion in Crypto Crime Since 2022</i></a> quotes Chainalysis' Andrew Fierman:<br />
<blockquote>
As examples, Fierman points to Nobitex, the largest cryptocurrency exchange operating in the sanctioned country of Iran, as well as Garantex, a notorious exchange based in Russia that has been specifically sanctioned for its widespread criminal use. Stablecoin usage on Nobitex outstrips bitcoin by a 9:1 ratio, and on Garantex by a 5:1 ratio, Chainalysis found. That's a stark difference from the roughly 1:1 ratio between stablecoins and bitcoins on a few nonsanctioned mainstream exchanges that Chainalysis checked for comparison.
</blockquote>
Of course, when Chainalysis says "stablecoin" they essentially mean Tether. Three years ago, this <a href="https://www.youtube.com/watch?v=pKeMfxLV8K8">interview of Charles Yang</a>, head trader of Genesis Block based in Hong Kong, by John Riggins descibed how Tether was the basis for trade flows in South-East Asia because it evaded governments' currency controls. <a href="https://www.youtube.com/watch?v=pKeMfxLV8K8">Yang noted</a>:<br />
<blockquote>
bank acccounts are the absolute most valuable thing — you have to set up a bunch of different companies, a lot of different bank accounts just to facilitate trades that aren't that big, maybe $50K. The moment you tell them this is for a USDT trade, you're basically asking them to shut your bank account down.
</blockquote>
Last September DataFinnovation posted <a href="https://datafinnovation.medium.com/usdt-on-tron-ftx-wtf-is-really-happening-ef0cb807019a"><i>USDT-on-TRON, FTX & WTF Is Really Happening</i></a>. In summary:<br />
<blockquote>
FTX/Alameda minted nearly all the USDT-on-TRON and operate as something like a central bank or reserve manager for a shadow East Asian USD payment system. We provide convincing evidence from novel on-chain analysis that shows how a real, albeit mostly-not-kosher, crypto use case works. This data also makes plain that Binance/Cumberland runs the Ethereum part of the same ecosystem and that these two groups of parties probably coordinate their actions in some way.<br />
...<br />
<b>we are going to show that this entire complex looks an awful lot like a funnel to establish backing for a USD payment network aimed at people who cannot (easily or legally, depending) hold USD or transfer them</b>. This also exposes how USDT is split into a China-and-surroundings slice and a rest-of-world slice with a different major crypto entity handling each part. 
</blockquote>
The UN Office for Drugs and Crime (UNODC) just published a report entitled <a href="https://www.unodc.org/roseap/uploads/documents/Publications/2024/Casino_Underground_Banking_Report_2024.pdf"><i>Casinos, Money Laundering, Underground Banking, and Transnational Organized Crime in East and Southeast Asia: A Hidden, Accelerating Threat</i></a>:<br />
<blockquote>
Online gambling platforms, and especially those that are operating illegally, have emerged as among the most popular vehicles for cryptocurrencybased money launderers, particularly for those using Tether or USDT on the TRON blockchain,<br />
...<br />
USDT on the TRON blockchain has become a preferred choice for crypto money launderers in East and Southeast Asia due to its stability and the ease, anonymity, and low fees of its transactions.  Law enforcement and financial intelligence authorities in the region have reported USDT among the most popular cryptocurrencies used by organized crime groups in the region, particularly those involved in the regional cyberfraud industry, demonstrated by a surging volume of cases and unauthorized online gambling and cryptocurrency exchange platforms offering undergroud [sic] USDT-based services.
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhe7xw9GWfydAqZ2bIiimuIWd8BunWhfRn5Vf24Mq8qWS7gtPuJmbEtLvZaKZGJBKr4pIql0EilsXQKEy-yZfhgLIK-j0ZmYnF0SwKo-ywebf0mgm_XZ0KNZYGMBmqgGfg5RHQATlkuD-9z2JFR5B593o4T1NcjfiOtoM-5HMLTdh4RMAQCeNbP2qnBkeNt/s708/RunningPoints.png" imageanchor="1" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="708" data-original-width="534" height="200" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhe7xw9GWfydAqZ2bIiimuIWd8BunWhfRn5Vf24Mq8qWS7gtPuJmbEtLvZaKZGJBKr4pIql0EilsXQKEy-yZfhgLIK-j0ZmYnF0SwKo-ywebf0mgm_XZ0KNZYGMBmqgGfg5RHQATlkuD-9z2JFR5B593o4T1NcjfiOtoM-5HMLTdh4RMAQCeNbP2qnBkeNt/w151-h200/RunningPoints.png" width="151" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.unodc.org/roseap/uploads/documents/Publications/2024/Casino_Underground_Banking_Report_2024.pdf">Source</a></td></tr></tbody></table>
The report details techniques such as <a href="https://www.unodc.org/roseap/uploads/documents/Publications/2024/Casino_Underground_Banking_Report_2024.pdf">points-running and motorcades</a>:<br />
<blockquote>
As third- and fourth-party payments have become better understood by authorities and more widely reported following ‘Operation Chain Break’ and other measures in China, organized crime groups have responded by accelerating the integration of cryptocurrencies into their illegal betting operations, creating significant challenges for investigators. In recent years, law enforcement and financial intelligence authorities have reported the growing use of sophisticated, high-speed money laundering ‘motorcade’ teams specializing in underground USDT – fiat currency exchanges (卡接回U) across East and Southeast Asia. This has also included the mass recruitment of mule bank accounts across virtually all jurisdictions in the Asia Pacific region which can be purchased for as little as US $30.<br />
<br />
Due to the rise of cryptocurrency-integrated motorcades, points running syndicates, and other challenges, in 2021 the Government of China banned cryptocurrency transactions, trading, and mining. The industry subsequently migrated to various jurisdictions, particularly driving up already rising cryptocurrency adoption in several countries in Southeast Asia, together with the establishment of high-risk and underground cryptocurrency exchanges. At the same time, it is worth noting that cryptocurrency flows connected to organized crime have been cited as being vastly underestimated by industry experts as well as law enforcement and regulatory authorities in the region. Experts have pointed to a number of shortcomings related to existing analyses including massive gaps in crime attribution on the blockchain, fabricated reporting by crypto exchanges, and the prevalence of wash trading which inflates crypto transaction volumes, thereby shrinking the portion of illicit transactions identified.
</blockquote>
The US is rightly concerned that Tether is undermining their sanctions system, but countries like China with strict controls on cross-boarder currency flows are also worried about similar undermining. Fortunately, the flows of Tether are observable on the Ethereum and Tron blockchains, so tracing techniques can be and, as I discussed in <a href="https://blog.dshr.org/2022/11/the-stablecoin-saga.html"><i>The Stablecoin Saga</i></a>, <a href="https://blog.dshr.org/2022/11/the-stablecoin-saga-continued.html"><i>The Stablecoin Saga Continued</i></a> and <a href="https://blog.dshr.org/2023/11/alamedas-on-ramp.html"><i>Alameda's On-Ramp</i></a> are being, applied.<br />
<br />

<span class="feed-item-link">
<a href="https://blog.dshr.org/2024/01/criming-on-blockchain.html">https://blog.dshr.org/2024/01/criming-on-blockchain.html</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://blog.dshr.org/2024/01/criming-on-blockchain.html">Save to Pocket</a>
</span>

---

## NSA Buying Bulk Surveillance Data on Americans without a Warrant

date: 2024-01-30, updated: 2024-01-29, from: Bruce Schneier blog

<p>It finally <a href="https://www.wyden.senate.gov/imo/media/doc/signed_wyden_letter_to_dni_re_nsa_purchase_of_domestic_metadata_and_ftc_order_on_data_brokers_with_attachments.pdf">admitted</a> to buying bulk data on Americans from data brokers, in response to a <a href="https://www.wyden.senate.gov/news/press-releases/wyden-releases-documents-confirming-the-nsa-buys-americans-internet-browsing-records-calls-on-intelligence-community-to-stop-buying-us-data-obtained-unlawfully-from-data-brokers-violating-recent-ftc-order">query</a> by Senator Weyden.</p>
<p>This is almost certainly illegal, although the NSA maintains that it is legal until it&#8217;s told otherwise.</p>
<p><a href="https://www.nytimes.com/2024/01/25/us/politics/nsa-internet-privacy-warrant.html">Some</a> <a href="https://gizmodo.com/nsa-buying-your-browser-history-says-u-s-senator-1851201650">news</a> <a href="https://techcrunch.com/2024/01/26/national-security-agency-americans-internet-browsing-records-warrantless/">articles</a>.</p>


<span class="feed-item-link">
<a href="https://www.schneier.com/blog/archives/2024/01/nsa-buying-bulk-surveillance-data-on-americans-without-a-warrant.html">https://www.schneier.com/blog/archives/2024/01/nsa-buying-bulk-surveillance-data-on-americans-without-a-warrant.html</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.schneier.com/blog/archives/2024/01/nsa-buying-bulk-surveillance-data-on-americans-without-a-warrant.html">Save to Pocket</a>
</span>

---

## The Last Woman Standing

date: 2024-01-30, from: Dan Rather's Steady

There&#8217;s an old expression in boxing, a &#8220;slugger&#8217;s chance.&#8221; It means an underdog is given an outside chance to win if the fighter has a reputation for being an especially heavy puncher. I&#8217;ve been saying since Nikki Haley first got into the race for the Republican presidential nomination that she had a slugger&#8217;s chance. With Haley&#8217;s bid for an upset fading but not yet finished, let&#8217;s take a look at whether she still has even that chance. The so-called smart money has said from the start that there is no way she can defeat Donald Trump.

<span class="feed-item-link">
<a href="https://steady.substack.com/p/the-last-woman-standing">https://steady.substack.com/p/the-last-woman-standing</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://steady.substack.com/p/the-last-woman-standing">Save to Pocket</a>
</span>

---

## BS on the border 

date: 2024-01-30, from: Robert Reich's blog

Trump&#8217;s biggest issue in the campaign is neofascist bupkis

<span class="feed-item-link">
<a href="https://robertreich.substack.com/p/bluff-and-bluster-on-the-border">https://robertreich.substack.com/p/bluff-and-bluster-on-the-border</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://robertreich.substack.com/p/bluff-and-bluster-on-the-border">Save to Pocket</a>
</span>

---

## [Sponsor] WorkOS

date: 2024-01-30, updated: 2024-01-30, from: Daring Fireball



<span class="feed-item-link">
<a href="https://workos.com/?utm_source=daringfireball&utm_medium=display&utm_campaign=q12024">https://workos.com/?utm_source=daringfireball&utm_medium=display&utm_campaign=q12024</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://workos.com/?utm_source=daringfireball&utm_medium=display&utm_campaign=q12024">Save to Pocket</a>
</span>

---

## Two Additional Observations Regarding Apple’s Core Technology Fee

date: 2024-01-29, updated: 2024-01-29, from: Daring Fireball



<span class="feed-item-link">
<a href="https://developer.apple.com/support/core-technology-fee/">https://developer.apple.com/support/core-technology-fee/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://developer.apple.com/support/core-technology-fee/">Save to Pocket</a>
</span>

---

## Microsoft Executives Hacked

date: 2024-01-29, updated: 2024-01-30, from: Bruce Schneier blog

<p>Microsoft is <a href="https://msrc.microsoft.com/blog/2024/01/microsoft-actions-following-attack-by-nation-state-actor-midnight-blizzard/">reporting</a> that a Russian intelligence agency&#8212;the same one responsible for SolarWinds&#8212;accessed the email system of the company&#8217;s executives.</p>
<blockquote><p>Beginning in late November 2023, the threat actor used a password spray attack to compromise a legacy non-production test tenant account and gain a foothold, and then used the account&#8217;s permissions to access a very small percentage of Microsoft corporate email accounts, including members of our senior leadership team and employees in our cybersecurity, legal, and other functions, and exfiltrated some emails and attached documents. The investigation indicates they were initially targeting email accounts for information related to Midnight Blizzard itself. ...</p></blockquote>

<span class="feed-item-link">
<a href="https://www.schneier.com/blog/archives/2024/01/microsoft-executives-hacked.html">https://www.schneier.com/blog/archives/2024/01/microsoft-executives-hacked.html</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.schneier.com/blog/archives/2024/01/microsoft-executives-hacked.html">Save to Pocket</a>
</span>

---

## How to survive the next 280 days (and help America survive beyond them)

date: 2024-01-29, from: Robert Reich's blog

Putting your outrage to constructive use

<span class="feed-item-link">
<a href="https://robertreich.substack.com/p/beyond-outrage">https://robertreich.substack.com/p/beyond-outrage</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://robertreich.substack.com/p/beyond-outrage">Save to Pocket</a>
</span>

---

## Monday 29 January, 2024

date: 2024-01-29, from: John Naughton's online diary

All that remains… … of a groyne on a beach in North Norfolk. Quote of the Day &#8220;The Massachusetts Institute of Technology now has almost eight times as many nonfaculty employees as faculty employees. In the University of California system, &#8230; <a href="https://memex.naughtons.org/monday-29-january-2024/39077/">Continue reading <span class="meta-nav">&#8594;</span></a>

<span class="feed-item-link">
<a href="https://memex.naughtons.org/monday-29-january-2024/39077/">https://memex.naughtons.org/monday-29-january-2024/39077/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://memex.naughtons.org/monday-29-january-2024/39077/">Save to Pocket</a>
</span>

---

## The Real Problem With Spotify

date: 2024-01-28, from: Om Malik blog

As a way to play music, it was better in nearly every way. Spotify then became my favorite way to listen to music. Recently though, I’ve found myself hating Spotify. The app loads slowly. Music no longer plays instantly. The interface is riddled with recommendations, podcasts, audiobooks, and other junk that I don’t care for. &#8230;

<span class="feed-item-link">
<a href="https://om.co/2024/01/28/spotify-is-garbage/">https://om.co/2024/01/28/spotify-is-garbage/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://om.co/2024/01/28/spotify-is-garbage/">Save to Pocket</a>
</span>

---

## Willie On My Mind

date: 2024-01-28, from: Dan Rather's Steady

I was reminiscing recently about songs that are close to my heart. So many country songs from my younger years pop into my head at the oddest times these days, but I heard one recently from my friend Willie Nelson that reminded me of another time in Texas, a gentler time, and it&#8217;s certainly a reason to smile. Back in 1982, Willie recorded &#8220;Always On My Mind.&#8221;

<span class="feed-item-link">
<a href="https://steady.substack.com/p/willie-on-my-mind">https://steady.substack.com/p/willie-on-my-mind</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://steady.substack.com/p/willie-on-my-mind">Save to Pocket</a>
</span>

---

## Sunday caption contest: Land Ho?

date: 2024-01-28, from: Robert Reich's blog

And last week&#8217;s winner

<span class="feed-item-link">
<a href="https://robertreich.substack.com/p/sunday-caption-contest-land-ho">https://robertreich.substack.com/p/sunday-caption-contest-land-ho</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://robertreich.substack.com/p/sunday-caption-contest-land-ho">Save to Pocket</a>
</span>



<script type="text/javascript">!function(d,i){if(!d.getElementById(i)){var j=d.createElement("script");j.id=i;j.src="https://widgets.getpocket.com/v1/j/btn.js?v=1";var w=d.getElementById(i);d.body.appendChild(j);}}(document,"pocket-btn-js");</script>

