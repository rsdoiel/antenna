---
title: columns 2024.08
updated: 2024-02-22 08:50:39
---

# columns 2024.08

(date: 2024-02-22 08:50:39)

---

## Competition-proofing

date: 2024-02-22, from: David Rosenthal's blog

<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjfeROHBB3VcUVaQSjLlxDb4rpKVWB9soukI9gSNqLzUNXEc_JEAhk8VgH8Va-Wc-Y6FRtQnDoBjx1N3rQuol19rdxj70OTe4lp8DwlpTsHsF-Mc4ryTHaEBeg95wDkhFONw9s5Yhhc7yrRK5t1BrMz2sG5yaqakcK9Lfpp3AKyWSV8Dk5zfnUdDkDpEBMg/s1141/MarketCaps.jpeg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="783" data-original-width="1141" height="138" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjfeROHBB3VcUVaQSjLlxDb4rpKVWB9soukI9gSNqLzUNXEc_JEAhk8VgH8Va-Wc-Y6FRtQnDoBjx1N3rQuol19rdxj70OTe4lp8DwlpTsHsF-Mc4ryTHaEBeg95wDkhFONw9s5Yhhc7yrRK5t1BrMz2sG5yaqakcK9Lfpp3AKyWSV8Dk5zfnUdDkDpEBMg/w200-h138/MarketCaps.jpeg" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://www.ft.com/content/c43661bb-a087-4a54-a4b4-a6549d9156c3">Source</a></td></tr></tbody></table>
Apart from getting started in the midst of one of Silicon Valley's regular downturns, another great thing about the beginnings of Nvidia was that instead of insisting on the "minimum viable product" our VCs, Sutter Hill and Sequoia, gave us the time to develop a real architecture for a family of chips. It enabled us to get an amazing amount of functionality into a half-micron gate array; <a href="https://blog.dshr.org/2014/12/hardware-io-virtualization.html">I/O virtualization</a>, a DMA engine, a graphics processor that rendered curved surfaces directly, not by approximating them with triangles, a sound engine and support for game controllers.  As I write, after a three decade-long history of bringing innovations to the market, Nvidia is <a href="https://www.ft.com/content/c43661bb-a087-4a54-a4b4-a6549d9156c3">America's third most valuable company</a>.  <br />
<br />
I've written <a href="https://blog.dshr.org/search/label/venture%20capital">several times</a> about how in pursuit of a quicker buck, VCs have largely discarded the slow process of building an IPO-ready company like Nvidia in favor of building one that will be acquired by one of the dominant monopolists.  These VCs don't support innovation. Even if their acquisition-bound companies do innovate in their short lives, their innovations are rarely tested in the market after the acuisition.<br />
<br />
Below the fold I discuss a new paper that presents a highly detailed look at the mechanisms the dominant companies use to neutralize the threats startups could pose to their dominance.<br />
<span><a name='more'></a></span>
<br />
In <a href="https://dx.doi.org/10.2139/ssrn.4713845"><i>Coopting Disruption</i></a> law professors Mark Lemley (Stanford) and Matthew Wansley (Cardozo) ask a good question:<br />
<blockquote>
Our economy is dominated by five aging tech giants—Alphabet, Amazon, Apple, Meta, and Microsoft. Each of these firms was founded more than twenty years ago: Apple and Microsoft in the 1970s, Google and Amazon in the 1990s, and Facebook in 2004. Each of them grew by successfully commercializing a disruptive technology—personal computers (Apple), operating systems (Microsoft), online shopping (Amazon), search engines (Google), and social networks (Facebook). Each of them displaced the incumbents that came before them. But in the last twenty years, no company has commercialized a new technology in a way that threatens the tech giants. Why?
</blockquote>
The TL;DR of Lemley and Wansley's answer to their question <a href="https://dx.doi.org/10.2139/ssrn.4713845">is</a>:<br />
<blockquote>
While there are many reasons for the tech giants’ continued dominance, we think an important and overlooked one is that they have learned how to coopt disruption. They identify potentially disruptive technologies, use their money to influence the startups developing them, strategically dole out access to the resources the startups need to grow, and seek regulation that will make it harder for the startups to compete. When a threat emerges, they buy it off.  And after they acquire a startup, they redirect its people and assets to their own innovation needs.
</blockquote>
<a href="https://dx.doi.org/10.2139/ssrn.4713845">They observe that</a>:<br />
<blockquote>
a company that is started with the goal of being swallowed by a tech giant probably isn’t contributing much to society.
</blockquote>
<h3>Introduction</h3>
They start by identifying the advantages and disadvantages the incumbents possess in their efforts to monetize innovations. Their list of advantages is:<br />
<ul>
<li>"large incumbents can take advantage of economies of scale" not just in manufacturing, but also in marketing an distribution by exploiting their existing customer relationships.</li>
<li>"Large incumbents can also take advantage of economies of scope. Innovation creates “involuntary spillovers”—new knowledge that has economic value beyond the specific product that the firm was developing."</li>
<li>"large incumbents can access capital at a lower cost" for example from retained earnings from their cash cows.</li>
<li>"large incumbents may have another potential advantage—a longer investment time horizon" even more so now with the compression of VC time horizons.</li>
</ul>
Their list of incumbents disadvantages in innovation is more interesting:<br />
<ol>
<li>"their success will cannibalize their own market share" or "More generally, a monopolist has diminished incentives to introduce new products, improve product quality, or lower prices because any new sales generated replace its existing sales." Economists call this "Arrow's replacement effect"; more specifically: "The general lesson is, all else equal, the larger a firm’s market share and the less it is threatened by competition, the weaker its incentives to innovate. So we should expect large incumbents to not innovate much. And if they can dispense with the competitors rather than have to compete with them, they will do that."</li>
<li>"their managers prefer to deliver incremental innovations to their existing customers". Unlike Arrow's theory, "Christensen’s theory of disruptive innovation, ... focuses on the career incentives of middle managers ... Incumbent managers have an incentive to deliver sustaining innovations—incremental improvements in quality to the firm’s existing products that will please its existing customers. But they have substantial disincentives to pursue projects that upset the apple cart, even if doing so would bring new customers to the firm" The fundamental problem is that "Housing an innovation project inside a firm with diverse lines of business creates conflict with those other businesses. Some firm assets—cash, cloud computing, equipment, facilities, and engineers’ time—are rivalrous and finite, so executives must be willing to fight internal constituencies to devote those resources to innovation." Ingenuity, NASA's wildly successful Mars helicopter is a good example, as Eric Berger reports in <a href="https://arstechnica.com/space/2024/02/before-ingenuity-ever-landed-on-mars-scientists-almost-managed-to-kill-it/"><i>Before Ingenuity ever landed on Mars, scientists almost managed to kill it</i></a>. It was competing for cost, weight and risk with Perseverance's primary mission.</li>
<li>"their single veto point decision-making structure encourages risk-aversion" More specifically: "Inside a large incumbent, decisions about whether to fund an innovative project must pass through one veto point. In the venture capital market, many competing investors independently decide whether to finance an innovative idea. Inside a firm, an employee with an innovative idea must pitch an idea to managers who ultimately report to one executive gate-keeper. In the venture capital market, if a would-be startup founder pitches an idea to ten VC firms, and nine of them are not persuaded, the idea gets funded." The advantage of market-based finance over internal finance applies not just to the initiation but also the continuation of an innovation project. Inside a firm, an executive who has soured on a project can terminate it. In the venture capital market, when a startup’s initial investors grow skeptical, the company can still pitch outsiders on infusing more cash." The authors make this important point (my emphasis): "And while economists often describe markets as efficient, there is no reason to believe individual corporate executives make efficient (or even rational) decisions. Just ask Twitter. Markets work not because private executives make good decisions but because the ones who make bad decisions get driven out. But <b>that dynamic only works with competition</b>."</li>
<li>"they cannot appropriately compensate employees working on innovation projects." The reason they cannot is that: "Startups solve this problem by giving employees stock options. Every employee with significant equity knows that if the startup successfully exits, they will be rewarded. Stock in a large, diversified public company does not create similar incentives. The incentives are diluted because the value of the stock will be affected by too many variables unrelated to the success of the specific innovation project." And that: "large firms do not recognize internal “property rights” to innovations that employees develop. If they did, employees might become reluctant to share information. But not protecting internal property rights gives innovative employees incentive to leave. If employees at a large firm found their own startup and raise venture capital to fund it, they will earn a much greater share of the profits of the innovation."</li>
</ol>
The authors go on to describe five techniques incumbents use to neutralize the threat of disruption that innovative startups might pose; network effects, self-preferencing, paying for defaults, cloning, and coopting the disruptor. They claim other have described the first four, but they don't amount to an  adequate explanation for why the tech giants haven't been disrupted. I will summarize each of the four in turn..
<h3>Network effects</h3>
Nearly  three decades ago W. Brian Arthur, in <a href="http://www.amazon.com/Increasing-Returns-Dependence-Economics-Cognition/dp/0472064967"><i>Increasing Returns and Path Dependence in the Economy</i></a> explained how increasing returns to scale, or network effects, of technology markets typically led to them being dominated by one player. Consider a new market opened up by a technologcal development. Several startups enter, for random reasons one gets bigger then the others, network effects amplify its advantage in a feedback loop.<br />
<br />
This effect is more important now, as the the giants' business models have evolved to become <a href="https://dx.doi.org/10.2139/ssrn.4713845">platforms</a>:<br />
<blockquote>
The tech giants’ core businesses are built on platforms. A platform is an intermediary in a two-sided market. It connects users on one side of the market with users on the other side for transactions or interactions.<br />
...<br />
Platforms tend to exhibit network effects—the addition of a new user increases the value of a platform to existing users and attracts new users.
</blockquote>
This is precisely the mechanism Brian Arthur described, but applied to a business model that has since been enabled by the Internet.<br />
<h3>Self-preferencing</h3>
Self-preferencing happens when a platform isn't just a two-sided market, but one in which the platform itself is <a href="https://dx.doi.org/10.2139/ssrn.4713845">a vendor</a>:<br />
<blockquote>
Amazon, for example, both invites third party vendors to sell their products in its online marketplace and sells its own house brands that compete with those vendors.  Amazon has a powerful advantage in that competition. It has access to data on all of its competitors—who their customers are, which products are selling well, and which prices work best. And it controls which ads consumers see when they search for a specific product. Assuming Amazon uses that information to prefer its own products to those of its competitors (either by pricing strategically or by promoting its own products in search results) – something alleged but not yet proven in a pending antitrust case -- the result is to bias competition. Vendors cannot realistically protest Amazon’s self-preferencing (or just go elsewhere) because Amazon has such a dominant share in the online retail market.
</blockquote>
<h3>Paying for defaults</h3>
The value of the default position is notorious <a href="https://dx.doi.org/10.2139/ssrn.4713845">because</a>:<br />
<blockquote>
Alphabet pays Apple a reported $18 billion (with a b) each year for Google to be the default search engine on iOS devices. Android and iOS together account for 99% of the U.S. mobile operating system market. Consequently, almost everyone who uses a smartphone in America is accustomed to Google search. Alphabet claims that “competition is just a click away.” But research and experience have shown that defaults can be somewhat sticky. So controlling the default position can give Alphabet (or whoever wins the Apple bid) an advantage. That said, someone has to be the default, and it might be better for consumers if the default is the search engine most users already prefer. The real problem might be the idea of paying for placement, whoever wins the bidding war.
</blockquote>
<h3>Cloning</h3>
There are many examples of a tech giant tryng to neutralize the threat from a startup by using the threat of cloning their product to force the startup to sell itself, or of actually cloning the product and using their market power to swamp the startup. Meta's addition of Reels to Instagram in response to Tik Tok is an obvious example. But the authors make two good points: <a href="https://dx.doi.org/10.2139/ssrn.4713845">First</a>:<br />
<blockquote>
Cloning is only objectionable if the tech giant wins out not by competition on the merits, but by exclusionary conduct.
</blockquote>
Second, that cloning <a href="https://dx.doi.org/10.2139/ssrn.4713845">often fails</a>:<br />
<blockquote>
Google+, Google’s effort to build a social media service that combined the best of Facebook and Twitter was an abject failure. Apple’s effort to control the music world’s move to streaming by offering its own alternative to Spotify hasn’t prevented Spotify from dominating music streaming and eclipsing the once-vibrant (and Apple-dominated) market for music downloads. Meta’s effort to copy Snap, then TikTok, by introducing Stories and Reels has not proven terribly successful, and certainly has not prevented those companies from building their markets.
</blockquote>
The fact that the giants can clone a startup's product leads the authors to <a href="https://dx.doi.org/10.2139/ssrn.4713845">ask</a>:<br />
<blockquote>
If the product is cloneable, then why would you buy the company and burn cash paying off its VCs?
</blockquote>
There are two possible answers. It may be faster and easier, though likely not cheaper, to "acquihire" the startup's talent than to recruit equivalent talent in the open market. Or it may be faster and easier, though likely not cheaper, to acquire the company and its product rather than cloning it.
<h3>Inadequate Explanation</h3>
The authors use the example of <a href="https://dx.doi.org/10.2139/ssrn.4713845">Microsoft</a>:<br />
<blockquote>
Microsoft enjoyed strong network effects in the 1990s as the dominant maker of operating system software – far more dominant than it is today. It cloned internet browser technology from upstarts like Netscape, and it engaged in anticompetitive conduct designed to ensure that it, not Netscape, became the browser of choice.82 But Microsoft’s victory over Netscape was short-lived. New startups – Mozilla and then Google – came out of nowhere and took the market away from it. Microsoft still benefits from network effects, and it still uses cloning and self-preferencing to send users to its Edge browser. But it doesn’t work. Microsoft employed all the tools of a dominant firm in a network market, but it still faced disruption.
</blockquote>
So these four techniques aren't an explanation for the recent dearth of disruption.<br />
<h3>Coopting disruption</h3>
The authors imagine themselves as a tech giant, asking what else they would do to prevent disruption, and coming up with <a href="https://dx.doi.org/10.2139/ssrn.4713845">four new techniques</a>:<br />
<ul>
<li>"First, you would learn as much as you can about which companies had the capability to develop disruptive innovations and try to steer them away from competing with you – perhaps by partnering with them, or perhaps by investing in them."</li>
<li>"Second, you would make sure that those companies could not access the critical resources they would need to transform their innovation into a disruptive product."</li>
<li>"Third, you would tell your government relations team to seek regulation that would build a competitive moat around your position and keep disruption out."</li>
<li>"Fourth, if one of the companies you were tracking nevertheless did start to develop a disruptive product, you would want extract that innovation—and choke off the potential competition—in an acquisition."</li>
</ul>
These are the techniques they call "coopting disruption", pointing out that the <a href="https://dx.doi.org/10.2139/ssrn.4713845">tech giants have</a>:<br />
<ul>
<li>"built a powerful reconnaissance network covering emerging competitive threats by investing in startups as corporate VCs and by cultivating relationships with financial VCs."</li>
<li>"accumulated massive quantities of data that are essential for many software and AI innovations, and they dole out access to this data and to their networks selectively."</li>
<li>"asked legislators to regulate the tech industry—in a way that will buttress incumbents."</li>
<li>"repeatedly bought potentially competitive startups in a way that has flown—until a few years ago—below the antitrust radar."</li>
</ul>
The authors detail many examples of each of these techniques, for example Facebook conditioning access to user data on the purchase of advertising, and Google's purchase of DoubleClick and YouTube. Interestingly, they contrast the recent purchasing of the tech giants with Cisco's famously successful purchases in the 90s:
<blockquote>
The Cisco story exemplifies how the venture capital market, as a market, is better at exploring a series of risky ideas than a firm with a single risk-averse gatekeeper. It also illustrates how the advantages of a large incumbent—in this case access to markets and existing customer relationships—can sometimes extract more market value out of a technology than a new entrant.
</blockquote>
The rapid evoluution of networking technology at the time meant that even Cisco, the largest company in the market, didn't have the R&amp;D resources to explore all the opportunities. They depended upon VCs to fund the initial explorations, rewarding them by paying over the odds for the successes. Their market power then got the successes deployed much faster than a startup could.<br />
<h3>Why Is Cooption Bad?</h3>
The authors explain the <a href="https://dx.doi.org/10.2139/ssrn.4713845">harms of cooption</a>:<br />
<blockquote>
Our claim here is that the same dynamics that inhibit disruptive innovation by longstanding employees of large incumbents inhibit disruptive innovation by new employees from acquired startups.<br />
...<br />
The tech giants win from coopting disruption even though it destroys social value. In fact, they benefit in two ways. They make faster incremental progress on the sustaining innovations that they want. They get the new code, the valuable intellectual property, and the fresh ideas of the startup. And, critically, they also kill off a competitor. They no longer have to worry about the startup actually developing the more disruptive innovation and leapfrogging them or other tech giants acquiring the startup and using its assets to compete with them.
</blockquote>
And, by making the innovators from the startup rich, the acquirer greatly reduces their incentives for future innovation. <a href="https://blog.dshr.org/2024/02/the-stanford-digital-library-project.html">Andy Bechtolsheim</a> is an outlier.<br />
<h3>Remedies?</h3>
Lemley and Wansley, who seem to think in fours, make a set of four proposals for how these harms might be reduced:<br />
<ul>
<li><b>Unlocking Directorates</b> &mdash; under the Clayton Act "interlocking officers and directors between companies that compete, even in part, are illegal <i>per se</i> – without any inquiry into whether the companies in fact restrained competition because of their overlapping interests or whether the conduct offered procompetitive benefits." Companies with less than $4.1M in revenue are exampt, which excludes most startups; this should be revised.</li>
<li><b>Limiting Leveraging of Data and Networks</b> &mdash; "we would impose on incumbent tech monopolists a presumptive duty of nondiscrimination in access where the defendant (1) provides or sells data or network access to at least some unaffiliated companies and (2) refuses to provide or sell the same data or network access to the plaintiff company on comparable terms, but (3) the plaintiff does not operate a competing network or otherwise compete with the defendant in the market from which it collected the relevant data."</li>
<li><b>Regulating Regulation</b> &mdash; "Done right, regulation of technology can be beneficial and even necessary to the development of that technology, minimizing the risk of harm to third parties and ensuring that the world views the technology as safe and trustworthy. But all too often regulation has become a way to insulate incumbents from competition, with predictable results." The authors' suggestions exemplify this difficulty, being rather vague and aspirational.</li>
<li><b>Blocking Cooptive Acquisitions</b> &mdash; this is the most complex of the four proposals, and builds on <a href="https://www.jstor.org/stable/45467503"><i>Nascent Competitors</i></a> by C. Scott Hemphill & Tim Wu, who write:<br />
<blockquote>
We favor an enforcement policy that prohibits anticompetitive conduct that is reasonably capable of contributing significantly to the maintenance of the incumbent s market power. That approach implies enforcement even where the competitive significance of the nascent competitor is uncertain.
</blockquote>
Justifying blocking mergers because of a nascent threat that might never materialize is problematic. But it is only more so than the current way anti-trust works, by projecting likely harm to consumer welfare, which also might never materialize (although it almost always does). Lemley and Wansley explain <a href="https://dx.doi.org/10.2139/ssrn.4713845">the dilemma</a>:<br />
<blockquote>
antitrust enforcers need a strategy for blocking cooptive acquisitions that works within existing case law (or plausible improvements to that law) and is surgical enough to avoid chilling investment.
</blockquote>
Some cases are <a href="https://dx.doi.org/10.2139/ssrn.4713845">obvious</a>:<br />
<blockquote>
For cooptive acquisitions like Facebook/Instagram deal, we think Hemphill and Wu’s strategy makes sense. Zuckerberg’s email arguing for acquiring startups like Instagram because “they could be very disruptive to us” is a smoking gun of anticompetitive intent.
</blockquote>
But Lemley and Wansley go further, arguing for blocking megers based the startup's ability to <a href="https://dx.doi.org/10.2139/ssrn.4713845">innovate distruptive technology</a>:<br />
<blockquote>
Of course, an approach to policing startup acquisitions based on innovation capabilities need limits. Many startups have some innovation capabilities that could have a significant effect on competition. We can cabin enforcement in three ways&mdash;by focusing on specific technologies and specific firms and by looking at the cumulative effects of multiple acquisitions.
</blockquote>
Their examples of technologies include generative AI and virtual and augmented reality, both cases where it is already too late. The companies they identify "Alphabet, Amazon, Apple, Microsoft, and Meta" are all veterans of multiple acquisitions in these areas. But they argue that committing to
<a href="https://dx.doi.org/10.2139/ssrn.4713845">challenge fuure mergers</a>:<br />
<blockquote>
would create socially desirable incentives for startups. A startup developing one of the listed technologies would gain stronger incentives to turn its innovations into the products that its management team believed would garner the highest value on the open market—rather than the one most valuable to the tech giants. They would also gain stronger incentives to build a truly independent business and go public since an acquisition by the tech giants would be a less likely exit.
</blockquote>
</li>
</ul>
I think these would all be worthwhile steps, and I'm all in favor of updating anti-trust law and, even better, actually enforcing the laws on the books. But I am skeptical that the government can spot potentially disruptive technologies before the tech giants spot and acquire them. Especially since the government can't be embedded in the VC industry the way the tech giants are. Note that many of the harms Lemley and Wansley identify happen shortly after the acquisition. Would forcing Meta to divest Instagram at this late date restore the innovations the acquisition killed off?<br />

<span class="feed-item-link">
<a href="https://blog.dshr.org/2024/02/competition-proofing.html">https://blog.dshr.org/2024/02/competition-proofing.html</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://blog.dshr.org/2024/02/competition-proofing.html">Save to Pocket</a>
</span>

---

## A 101-Year-Old’s Fight Against Book Banning

date: 2024-02-22, from: Dan Rather's Steady

Inspiring young 92-year-olds like me

<span class="feed-item-link">
<a href="https://steady.substack.com/p/a-101-year-olds-fight-against-book">https://steady.substack.com/p/a-101-year-olds-fight-against-book</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://steady.substack.com/p/a-101-year-olds-fight-against-book">Save to Pocket</a>
</span>

---

## My surprise at yesterday's substack response

date: 2024-02-22, from: Robert Reich's blog

Friends, I was going to write something else for today but I was so surprised by the response to my Office Hours substack letter and poll yesterday that I felt the question needed more airing. It&#8217;s a question I&#8217;ve been asked a lot recently: Should Joe Biden step aside and allow a Democrats to have an open convention to choose their candidate?

<span class="feed-item-link">
<a href="https://robertreich.substack.com/p/my-surprise-at-yesterdays-substack">https://robertreich.substack.com/p/my-surprise-at-yesterdays-substack</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://robertreich.substack.com/p/my-surprise-at-yesterdays-substack">Save to Pocket</a>
</span>

---

## 18K commits

date: 2024-02-22, from: Daniel Stenberg Blog

It took me 422 days to do my most recent 1,000 commits in the curl source code repository. Now at 18,001 commits. This is the most recent.

<span class="feed-item-link">
<a href="https://daniel.haxx.se/blog/2024/02/22/18k-commits/">https://daniel.haxx.se/blog/2024/02/22/18k-commits/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://daniel.haxx.se/blog/2024/02/22/18k-commits/">Save to Pocket</a>
</span>

---

## Coming Soon: Apple Immersive Video Film With Highlights of MLS 2023 Playoffs

date: 2024-02-22, updated: 2024-02-22, from: Daring Fireball



<span class="feed-item-link">
<a href="https://www.apple.com/newsroom/2024/02/2024-mls-season-kicks-off-today-exclusively-on-mls-season-pass-on-apple-tv/">https://www.apple.com/newsroom/2024/02/2024-mls-season-kicks-off-today-exclusively-on-mls-season-pass-on-apple-tv/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.apple.com/newsroom/2024/02/2024-mls-season-kicks-off-today-exclusively-on-mls-season-pass-on-apple-tv/">Save to Pocket</a>
</span>

---

## ★ Apple Sports

date: 2024-02-22, updated: 2024-02-22, from: Daring Fireball

Apple Sports exemplifies why it’s a better idea to design smaller, more focused apps.

<span class="feed-item-link">
<a href="https://daringfireball.net/2024/02/apple_sports">https://daringfireball.net/2024/02/apple_sports</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://daringfireball.net/2024/02/apple_sports">Save to Pocket</a>
</span>

---

## [Sponsor] Sonar Mac App for GitHub/GitLab Issues

date: 2024-02-22, updated: 2024-02-22, from: Daring Fireball



<span class="feed-item-link">
<a href="https://sonartasks.com?utm_source=daring-fireball&utm_campaign=FY24Q1-daringfireball&utm_content=2024-02-DF-feed-post">https://sonartasks.com?utm_source=daring-fireball&utm_campaign=FY24Q1-daringfireball&utm_content=2024-02-DF-feed-post</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://sonartasks.com?utm_source=daring-fireball&utm_campaign=FY24Q1-daringfireball&utm_content=2024-02-DF-feed-post">Save to Pocket</a>
</span>

---

## DISPUTED, not REJECTED

date: 2024-02-21, from: Daniel Stenberg Blog

I keep insisting that the CVE system is broken and that the database of existing CVEs hosted by MITRE (and imported into lots of other databases) is full of questionable content and plenty of downright lies. A primary explanation for us being in this ugly situation is that it is simply next to impossible to &#8230; <a href="https://daniel.haxx.se/blog/2024/02/21/disputed-not-rejected/" class="more-link">Continue reading <span class="screen-reader-text">DISPUTED, not REJECTED</span> <span class="meta-nav">&#8594;</span></a>

<span class="feed-item-link">
<a href="https://daniel.haxx.se/blog/2024/02/21/disputed-not-rejected/">https://daniel.haxx.se/blog/2024/02/21/disputed-not-rejected/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://daniel.haxx.se/blog/2024/02/21/disputed-not-rejected/">Save to Pocket</a>
</span>

---

## Details of a Phone Scam

date: 2024-02-21, updated: 2024-02-21, from: Bruce Schneier blog

<p>First-person <a href="https://www.thecut.com/article/amazon-scam-call-ftc-arrest-warrants.html">account</a> of someone who fell for a scam, that started as a fake Amazon service rep and ended with a fake CIA agent, and lost $50,000 cash. And this is not a naive or stupid person.</p>
<p>The details are fascinating. And if you think it couldn&#8217;t happen to you, think again. Given the right set of circumstances, it can.</p>
<p>It happened to <a href="https://pluralistic.net/2024/02/05/cyber-dunning-kruger/">Cory Doctorow</a>.</p>


<span class="feed-item-link">
<a href="https://www.schneier.com/blog/archives/2024/02/details-of-a-phone-scam.html">https://www.schneier.com/blog/archives/2024/02/details-of-a-phone-scam.html</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.schneier.com/blog/archives/2024/02/details-of-a-phone-scam.html">Save to Pocket</a>
</span>

---

## How does a changed market affect Developer Relations?

date: 2024-02-21, from: Chris Heilmann's blog

Today, 21/02/2024, I will be opening a live event called Developer Program Leaders: Main Challenges in Developer Relations. Here&#8217;s the writeup of what I will be covering in 10 minutes: What is Developer Advocacy? According to the The Developer Advocacy Handbook written in 2009, here&#8217;s what a Developer Evangelist/Advocate does: A developer evangelist is a [&#8230;]

<span class="feed-item-link">
<a href="https://christianheilmann.com/2024/02/21/how-does-a-changed-market-affect-developer-relations/">https://christianheilmann.com/2024/02/21/how-does-a-changed-market-affect-developer-relations/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://christianheilmann.com/2024/02/21/how-does-a-changed-market-affect-developer-relations/">Save to Pocket</a>
</span>

---

## Office Hours: Should Biden step aside and allow an open Democratic convention?

date: 2024-02-21, from: Robert Reich's blog

The problem isn&#8217;t just his age. It&#8217;s that he&#8217;s looking and acting frail, and most voters believe he&#8217;s too old.

<span class="feed-item-link">
<a href="https://robertreich.substack.com/p/office-hours-should-biden-step-aside">https://robertreich.substack.com/p/office-hours-should-biden-step-aside</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://robertreich.substack.com/p/office-hours-should-biden-step-aside">Save to Pocket</a>
</span>

---

## Wednesday 21 February, 2024

date: 2024-02-21, from: John Naughton's online diary

After Vermeer Quote of the Day ”Everything will be all right, and, even if it isn’t, we’ll have the consolation of having lived honest lives.” Alexei Navalny (h/t John Seeley) Musical alternative to the morning’s radio news Chris McMullan &#124; &#8230; <a href="https://memex.naughtons.org/wednesday-21-february-2024/39160/">Continue reading <span class="meta-nav">&#8594;</span></a>

<span class="feed-item-link">
<a href="https://memex.naughtons.org/wednesday-21-february-2024/39160/">https://memex.naughtons.org/wednesday-21-february-2024/39160/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://memex.naughtons.org/wednesday-21-february-2024/39160/">Save to Pocket</a>
</span>

---

## 5G is ‘ now’ eating cable’s lunch

date: 2024-02-20, from: Om Malik blog

It is not uncommon to hear the question: what is 5G really good for? After all, it doesn’t change the current applications, it doesn’t change our mobile experience too much from the more advanced version of LTE mobile broadband that is widely available around the world. So, again, what is 5G good for? How about &#8230;

<span class="feed-item-link">
<a href="https://om.co/2024/02/20/5g-is-now-eating-cables-lunch/">https://om.co/2024/02/20/5g-is-now-eating-cables-lunch/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://om.co/2024/02/20/5g-is-now-eating-cables-lunch/">Save to Pocket</a>
</span>

---

## The Cost of Courage

date: 2024-02-20, from: Dan Rather's Steady

Courage is the moral strength to venture, persevere, and withstand danger, fear, or difficulty, according to Merriam-Webster. It comes from the Latin cor, meaning heart. My father instilled in me a respect for the word and the ideal when I was very ill as a young child.

<span class="feed-item-link">
<a href="https://steady.substack.com/p/the-cost-of-courage">https://steady.substack.com/p/the-cost-of-courage</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://steady.substack.com/p/the-cost-of-courage">Save to Pocket</a>
</span>

---

## Microsoft Is Spying on Users of Its AI Tools

date: 2024-02-20, updated: 2024-02-19, from: Bruce Schneier blog

<p>Microsoft announced that it <a href="https://www.washingtonpost.com/technology/2024/02/14/us-adversaries-using-artificial-intelligence-boost-hacking-efforts/">caught</a> Chinese, Russian, and Iranian hackers using its AI tools&#8212;presumably coding tools&#8212;to improve their hacking abilities.</p>
<p>From their <a href="https://www.microsoft.com/en-us/security/business/security-insider/reports/cyber-signals/cyber-signals-issue-6-navigating-cyberthreats-and-strengthening-defenses/">report</a>:</p>
<blockquote><p>In collaboration with OpenAI, we are sharing threat intelligence showing detected state affiliated adversaries&#8212;tracked as Forest Blizzard, Emerald Sleet, Crimson Sandstorm, Charcoal Typhoon, and Salmon Typhoon&#8212;using LLMs to augment cyberoperations.</p></blockquote>
<p>The only way Microsoft or OpenAI would know this would be to spy on chatbot sessions. I&#8217;m sure the terms of service&#8212;if I bothered to read them&#8212;gives them that permission. And of course it&#8217;s no surprise that Microsoft and OpenAI (and, presumably, everyone else) are spying on our usage of AI, but this confirms it...</p>

<span class="feed-item-link">
<a href="https://www.schneier.com/blog/archives/2024/02/microsoft-is-spying-on-users-of-its-ai-tools.html">https://www.schneier.com/blog/archives/2024/02/microsoft-is-spying-on-users-of-its-ai-tools.html</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.schneier.com/blog/archives/2024/02/microsoft-is-spying-on-users-of-its-ai-tools.html">Save to Pocket</a>
</span>

---

## The poster child for the perils of dynastic wealth 

date: 2024-02-20, from: Robert Reich's blog

Four generations of Mellons are now bankrolling Trump

<span class="feed-item-link">
<a href="https://robertreich.substack.com/p/why-timothy-mellon-is-the-poster">https://robertreich.substack.com/p/why-timothy-mellon-is-the-poster</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://robertreich.substack.com/p/why-timothy-mellon-is-the-poster">Save to Pocket</a>
</span>

---

## There Were 3D Cameras Capturing the NBA Slam Dunk Contest

date: 2024-02-19, updated: 2024-02-19, from: Daring Fireball



<span class="feed-item-link">
<a href="https://appleinsider.com/articles/24/02/18/apples-3d-video-cameras-spotted-during-nba-slam-dunk-contest">https://appleinsider.com/articles/24/02/18/apples-3d-video-cameras-spotted-during-nba-slam-dunk-contest</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://appleinsider.com/articles/24/02/18/apples-3d-video-cameras-spotted-during-nba-slam-dunk-contest">Save to Pocket</a>
</span>

---

## Reunited with Vision Pro

date: 2024-02-19, from: Om Malik blog

Your body has a weird way of reminding you of your “age.” For me, that reminder came in the form of jetlag. There was a time when&#160;my jet lag would be gone&#160;in&#160;a day&#160;when I would fly back from Delhi,&#160;but this&#160;time it has taken three days to bounce back and adjust to California&#160;time. No harm was &#8230;

<span class="feed-item-link">
<a href="https://om.co/2024/02/19/reunited-with-vision-pro/">https://om.co/2024/02/19/reunited-with-vision-pro/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://om.co/2024/02/19/reunited-with-vision-pro/">Save to Pocket</a>
</span>

---

## EU Court of Human Rights Rejects Encryption Backdoors

date: 2024-02-19, updated: 2024-02-19, from: Bruce Schneier blog

<p>The European Court of Human Rights has <a href="https://hudoc.echr.coe.int/eng/#{%22itemid%22:[%22001-230854%22]}">ruled</a> that breaking end-to-end encryption by adding backdoors <a href="https://arstechnica.com/tech-policy/2024/02/human-rights-court-takes-stand-against-weakening-of-end-to-end-encryption/">violates human rights</a>:</p>
<blockquote><p>Seemingly most critically, the [Russian] government told the ECHR that any intrusion on private lives resulting from decrypting messages was &#8220;necessary&#8221; to combat terrorism in a democratic society. To back up this claim, the government pointed to a 2017 terrorist attack that was &#8220;coordinated from abroad through secret chats via Telegram.&#8221; The government claimed that a second terrorist attack that year was prevented after the government discovered it was being coordinated through Telegram chats...</p></blockquote>

<span class="feed-item-link">
<a href="https://www.schneier.com/blog/archives/2024/02/eu-court-of-human-rights-rejects-encryption-backdoors.html">https://www.schneier.com/blog/archives/2024/02/eu-court-of-human-rights-rejects-encryption-backdoors.html</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.schneier.com/blog/archives/2024/02/eu-court-of-human-rights-rejects-encryption-backdoors.html">Save to Pocket</a>
</span>

---

## The difference between leaders and thugs

date: 2024-02-19, from: Robert Reich's blog

Thoughts on Presidents Day

<span class="feed-item-link">
<a href="https://robertreich.substack.com/p/netanyahu-putin-and-trump">https://robertreich.substack.com/p/netanyahu-putin-and-trump</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://robertreich.substack.com/p/netanyahu-putin-and-trump">Save to Pocket</a>
</span>

---

## Epic Games Store Coming to iOS This Year in the EU

date: 2024-02-19, updated: 2024-02-19, from: Daring Fireball



<span class="feed-item-link">
<a href="https://store.epicgames.com/en-US/news/epic-games-store-2023-year-in-review">https://store.epicgames.com/en-US/news/epic-games-store-2023-year-in-review</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://store.epicgames.com/en-US/news/epic-games-store-2023-year-in-review">Save to Pocket</a>
</span>

---

## Monday 19 February, 2024

date: 2024-02-19, from: John Naughton's online diary

W.B.’s last resting place Drumcliff Churchyard, Co Sligo. We always pay him a visit when we’re on the road to Donegal. Quote of the Day ”I don’t know the question, but sex is definitely the answer.” Woody Allen Musical alternative &#8230; <a href="https://memex.naughtons.org/monday-19-february-2024/39149/">Continue reading <span class="meta-nav">&#8594;</span></a>

<span class="feed-item-link">
<a href="https://memex.naughtons.org/monday-19-february-2024/39149/">https://memex.naughtons.org/monday-19-february-2024/39149/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://memex.naughtons.org/monday-19-february-2024/39149/">Save to Pocket</a>
</span>

---

## ‘It‘s a Good Day’

date: 2024-02-18, from: Dan Rather's Steady

A Reason To Smile

<span class="feed-item-link">
<a href="https://steady.substack.com/p/its-a-good-day">https://steady.substack.com/p/its-a-good-day</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://steady.substack.com/p/its-a-good-day">Save to Pocket</a>
</span>

---

## Sunday caption contest: money troubles?

date: 2024-02-18, from: Robert Reich's blog

And last week&#8217;s winner

<span class="feed-item-link">
<a href="https://robertreich.substack.com/p/sunday-caption-contest-money-troubles">https://robertreich.substack.com/p/sunday-caption-contest-money-troubles</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://robertreich.substack.com/p/sunday-caption-contest-money-troubles">Save to Pocket</a>
</span>



<script type="text/javascript">!function(d,i){if(!d.getElementById(i)){var j=d.createElement("script");j.id=i;j.src="https://widgets.getpocket.com/v1/j/btn.js?v=1";var w=d.getElementById(i);d.body.appendChild(j);}}(document,"pocket-btn-js");</script>

