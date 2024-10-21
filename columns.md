---
title: columns
updated: 2024-10-21 10:42:25
---

# columns

(date: 2024-10-21 10:42:25)

---

##  A program that pays farmers to flood their fields to create &#8220;pop-up... 

date: 2024-10-21, updated: 2024-10-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/10/0045484-a-program-that-pays-farme>

---

##  Walt Whitman: &#8220;I am large, I contain multitudes.&#8221; Marissa Mayer: &#8220;I Am... 

date: 2024-10-21, updated: 2024-10-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/10/0045480-walt-whitman-i-am-large>

---

## I'm sticking with WordPress

date: 2024-10-21, from: Dave Winer's Scripting News

<p>I'm continuing to develop on WordPress. I see the opportunity regardless of what else is going on. </p>
<p>I could be wrong, I have been before. I kept using Twitter for identity after Musk took over, even though as time went by it was increasingly obvious that developers weren't part of his plan. I've been there before, with Apple, after Jobs came back. We had a great developer community for the web on the Mac, better than anything on Windows or Unix, and the management before Jobs, Heidi Roizen advising Gil Amelio, seemed to value our contribution, even if we weren't prospering. But there was a moment when Jobs introduced the open source equivalent of some of our products -- and that basically spelled the end of our little adventure, since Apple was putting the spotlight on them and not us.</p>
<p>But it doesn't always go that way. I kept investing in the Mac in 1985, a very bad year for Apple, and in 1986 we had a huge hit, and because we were almost alone in sticking it out, we were rewarded with booming sales. Of course it mattered that MORE was a lovely product. But if no one looks, it doesn't matter how lovely it is! </p>
<p>Anyway, the WordPress world is huge. Far bigger than the blogosphere in the 90s and 00s. Maybe somehow the trouble with WordPress will mean that people who see WordPress as a writing platform will all leave now, or stop considering new ways of writing. But honestly I don't think that's very likely. I have a few sites at wordpress.com that are archives, that I pay for, that I will continue to pay for. My father's memorial site, for example. Things would have to get incomprehensibly bad for me to consider moving it and where exactly would I move it?</p>
<p>But on the other hand, there isn't anything else out there that's offering something new for the writers. I think I'm pretty much alone working in this area. And maybe people need some good news? </p>
<p>My new product is a medium size writing tool. Less than a full word processor and more than a <a href="http://scripting.com/2024/01/14/031201.html">tiny little text box</a>. I think there are a lot of WordPress users who will like it. And I think there's a chance they might notice it. So I'm going all the way with this one. I may lose the bet, but wtf, let's give it a try.</p>
 

<br> 

<http://scripting.com/2024/10/21/155259.html?title=imStickingWithWordpress>

---

## 2024-10-18 Firefox/72

date: 2024-10-21, from: Alex Schroeder's Blog

<h1 id="2024-10-18-firefox-72">2024-10-18 Firefox/72</h1>

<blockquote>
<p>I’ve now seen this shit running on systems hosted by: Amazon, Google, Carnegie Mellon University, NVidia, Oracle, University of Texas, San Diego Super Computing Center, Alibaba, University of Edinburgh, Huawei, Intel, Coreweave, Samsung, Hong Kong University, University of Washington… and dozens, or perhaps hundreds more. This shit makes requests from the United States, Germany, China, Australia, Hong Kong, Singapore, United Kingdom, Netherlands, Portugal… and so on, and so on. – <a href="https://imho.alex-kunz.com/2024/02/25/block-this-shit/">Block This Shit</a> by <a class="account" href="https://mas.to/@alexskunz" title="@alexskunz@mas.to">@alexskunz</a></p>
</blockquote>

<p>I decided to see whether this bot was scraping my pages, too.
Here&rsquo;s how to use <a href="/admin/network-lookup">network-lookup</a> to see who&rsquo;s doing it:</p>

<pre><code>grep &quot;Firefox/72&quot; /var/log/apache2/access.log \
 | tail -n 100 \
 | bin/admin/network-lookup \
 &gt; result.log
</code></pre>

<p>What I intend to do is to get all the <code>ipset add …</code> instructions from that log file and add it to the ban hammer, <a href="/admin/ban-cidr">ban-cidr</a>.</p>

<p>Let&rsquo;s look at the organisations hosting that bot:</p>

<table>
<thead>
<tr>
<th align="right">Range</th>
<th align="right">Hits</th>
<th>Org</th>
</tr>
</thead>

<tbody>
<tr>
<td align="right">160.91.0.0/16</td>
<td align="right">15</td>
<td>Oak Ridge National Laboratory / OREN</td>
</tr>

<tr>
<td align="right">20.64.0.0/10</td>
<td align="right">12</td>
<td>MSFT / Microsoft Corporation</td>
</tr>

<tr>
<td align="right">3.36.0.0/14</td>
<td align="right">10</td>
<td>AMAZON-ICN / AWS Asia Pacific (Seoul) Region</td>
</tr>

<tr>
<td align="right">35.222.104.0/21</td>
<td align="right">7</td>
<td>Google LLC / GOOGLE-CLOUD</td>
</tr>

<tr>
<td align="right">34.30.0.0/16</td>
<td align="right">6</td>
<td>GOOGL-2 / Google LLC</td>
</tr>

<tr>
<td align="right">35.239.48.0/20</td>
<td align="right">6</td>
<td>Google LLC / GOOGLE-CLOUD</td>
</tr>

<tr>
<td align="right">34.27.0.0/16</td>
<td align="right">4</td>
<td>GOOGL-2 / Google LLC</td>
</tr>

<tr>
<td align="right">31.13.168.0/23</td>
<td align="right">3</td>
<td>NET-DEM-4SITSOLUTIONS / TWK-NET-CUSTOMER1</td>
</tr>

<tr>
<td align="right">117.161.0.0/16</td>
<td align="right">3</td>
<td>CMNET / China Mobile / ORG-CM1-AP / China Mobile communications corporation</td>
</tr>

<tr>
<td align="right">82.156.0.0/18</td>
<td align="right">2</td>
<td>IPv4 address block not managed by the RIPE NCC / NON-RIPE-NCC-MANAGED-ADDRESS-BLOCK</td>
</tr>

<tr>
<td align="right">34.121.48.0/20</td>
<td align="right">2</td>
<td>GOOGL-2 / Google LLC</td>
</tr>

<tr>
<td align="right">35.223.240.0/20</td>
<td align="right">2</td>
<td>GOOGLE-CLOUD / Google LLC</td>
</tr>

<tr>
<td align="right">35.225.64.0/20</td>
<td align="right">2</td>
<td>GOOGLE-CLOUD / Google LLC</td>
</tr>

<tr>
<td align="right">3.34.0.0/15</td>
<td align="right">2</td>
<td>AMAZON-ICN / AWS Asia Pacific (Seoul) Region</td>
</tr>

<tr>
<td align="right">15.164.0.0/15</td>
<td align="right">2</td>
<td>AT-88-Z / Amazon Technologies Inc.</td>
</tr>

<tr>
<td align="right">34.123.224.0/20</td>
<td align="right">1</td>
<td>GOOGL-2 / Google LLC</td>
</tr>

<tr>
<td align="right">34.45.0.0/16</td>
<td align="right">1</td>
<td>GOOGL-2 / Google LLC</td>
</tr>

<tr>
<td align="right">47.252.0.0/18</td>
<td align="right">1</td>
<td>ALIBABA CLOUD - US</td>
</tr>

<tr>
<td align="right">45.38.206.0/24</td>
<td align="right">1</td>
<td>EGN-22 / EGIHosting</td>
</tr>

<tr>
<td align="right">34.72.112.0/20</td>
<td align="right">1</td>
<td>Google LLC / GOOGL-2</td>
</tr>

<tr>
<td align="right">121.30.0.0/16</td>
<td align="right">1</td>
<td>UNICOM-SX / CNC Group CHINA169 Shan1xi Province Network</td>
</tr>

<tr>
<td align="right">104.198.48.0/20</td>
<td align="right">1</td>
<td>GOOGLE-CLOUD / Google LLC</td>
</tr>

<tr>
<td align="right">34.68.176.0/20</td>
<td align="right">1</td>
<td>GOOGL-2 / Google LLC</td>
</tr>

<tr>
<td align="right">34.68.96.0/20</td>
<td align="right">1</td>
<td>GOOGL-2 / Google LLC</td>
</tr>

<tr>
<td align="right">34.16.0.0/17</td>
<td align="right">1</td>
<td>GOOGL-2 / Google LLC</td>
</tr>

<tr>
<td align="right">34.122.64.0/20</td>
<td align="right">1</td>
<td>GOOGL-2 / Google LLC</td>
</tr>

<tr>
<td align="right">35.239.16.0/20</td>
<td align="right">1</td>
<td>GOOGLE-CLOUD / Google LLC</td>
</tr>

<tr>
<td align="right">202.120.234.0/24</td>
<td align="right">1</td>
<td>CERNET-CN / Beijing, 100084</td>
</tr>

<tr>
<td align="right">104.154.160.0/20</td>
<td align="right">1</td>
<td>GOOGLE-CLOUD / Google LLC</td>
</tr>

<tr>
<td align="right">34.70.112.0/20</td>
<td align="right">1</td>
<td>Google LLC / GOOGL-2</td>
</tr>

<tr>
<td align="right">35.224.160.0/20</td>
<td align="right">1</td>
<td>GOOGLE-CLOUD / Google LLC</td>
</tr>

<tr>
<td align="right">34.66.128.0/20</td>
<td align="right">1</td>
<td>GOOGL-2 / Google LLC</td>
</tr>

<tr>
<td align="right">34.133.16.0/20</td>
<td align="right">1</td>
<td>Google LLC / GOOGL-2</td>
</tr>

<tr>
<td align="right">109.171.128.0/18</td>
<td align="right">1</td>
<td>KAUST Section 1 / King Abdullah University of Science and Technology / ORG-KAUo2-RIPE / SA-KAUST-20091118</td>
</tr>

<tr>
<td align="right">34.68.144.0/20</td>
<td align="right">1</td>
<td>Google LLC / GOOGL-2</td>
</tr>

<tr>
<td align="right">8.130.0.0/16</td>
<td align="right">1</td>
<td>Alibaba.com Singapore E-Commerce Private Limited / ALICLOUD</td>
</tr>

<tr>
<td align="right">34.122.128.0/20</td>
<td align="right">1</td>
<td>GOOGL-2 / Google LLC</td>
</tr>
</tbody>
</table>
<p>To get a feel for the level of incompetence of the engineers behind it, check out this example:</p>

<pre><code>20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:37 +0200 | GET /cw?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:37 +0200 | GET /cw?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:38 +0200 | GET /cw?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:39 +0200 | GET /wiki?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:40 +0200 | GET /cw?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:40 +0200 | GET /cw?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:41 +0200 | GET /cw?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:41 +0200 | GET /wiki?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:42 +0200 | GET /cw?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:42 +0200 | GET /cw?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:43 +0200 | GET /cw?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
20.64.0.0/10 | 20.112.49.107 | 18/Oct/2024:14:58:43 +0200 | GET /wiki?action=download;id=MattisManzelPortrait HTTP/1.1 | Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
</code></pre>

<p>Every fucking second‽</p>

<p>Now, a decision needs to be made:</p>

<ul>
<li>I could ban all the requests this bot makes by banning the specific user agent string.</li>
<li>I could ban the networks that host this bot on the premise that they&rsquo;ll probably also host other harmful bots.</li>
</ul>

<p>Guess which option I&rsquo;m taking?</p>

<p>Remember: <a href="2023-10-04-search">2023-10-04 Search engines, the deal is off!</a>:</p>

<blockquote>
<p>For a while it seemed that we all benefited from search engines – authors and readers both. These days, you’ll find that search results are full of garbage sites. Big sites with the most flatulent of pages explaining in great detail why the thing you’re looking for is important and how to do it, clearly optimized for an ad company and not for a reader. Big sites that have a gazillion answers are preferred over small and individual sites. Perhaps that’s easier. Perhaps it allows them to diffuse responsibility for the garbage, I don’t know. The effect is, in any case, that there is no benefit to search engines for small site authors, either. I was unable to find my own pages on the search engines. If you you are a small site owner and you think you can find your own pages on Google and Bing, I suspect that’s because they track you. Try it on a different computer, anonymously. Perhaps you won’t find yourself, either.</p>

<p>In any case, if I can’t get anything in return, both as a reader and as an author, I feel that the deal is off. Why let them feed on my words for free? Nay, at a cost, since they are keeping my website busy, producing CO₂ and heating the planet for no benefit at all.</p>

<p>Better to block them all.</p>
</blockquote>

<p>Here we go:</p>

<pre><code>grep ipset result.log|sh
</code></pre>

<p>That&rsquo;s because <code>network-lookup</code> is kind enough to include the appropriate <code>ipset</code> instructions:</p>

<pre><code>ipset add banlist 160.91.0.0/16 # Oak Ridge National Laboratory / OREN
ipset add banlist 20.64.0.0/10 # MSFT / Microsoft Corporation
ipset add banlist 3.36.0.0/14 # AMAZON-ICN / AWS Asia Pacific (Seoul) Region
ipset add banlist 35.222.104.0/21 # Google LLC / GOOGLE-CLOUD
ipset add banlist 34.30.0.0/16 # GOOGL-2 / Google LLC
ipset add banlist 35.239.48.0/20 # Google LLC / GOOGLE-CLOUD
ipset add banlist 34.27.0.0/16 # GOOGL-2 / Google LLC
ipset add banlist 31.13.168.0/23 # NET-DEM-4SITSOLUTIONS / TWK-NET-CUSTOMER1
ipset add banlist 117.161.0.0/16 # CMNET / China Mobile / ORG-CM1-AP / China Mobile communications corporation
ipset add banlist 82.156.0.0/18 # IPv4 address block not managed by the RIPE NCC / NON-RIPE-NCC-MANAGED-ADDRESS-BLOCK
ipset add banlist 34.121.48.0/20 # GOOGL-2 / Google LLC
ipset add banlist 35.223.240.0/20 # GOOGLE-CLOUD / Google LLC
ipset add banlist 35.225.64.0/20 # GOOGLE-CLOUD / Google LLC
ipset add banlist 3.34.0.0/15 # AMAZON-ICN / AWS Asia Pacific (Seoul) Region
ipset add banlist 15.164.0.0/15 # AT-88-Z / Amazon Technologies Inc.
ipset add banlist 34.123.224.0/20 # GOOGL-2 / Google LLC
ipset add banlist 34.45.0.0/16 # GOOGL-2 / Google LLC
ipset add banlist 47.252.0.0/18 # ALIBABA CLOUD - US
ipset add banlist 45.38.206.0/24 # EGN-22 / EGIHosting
ipset add banlist 34.72.112.0/20 # Google LLC / GOOGL-2
ipset add banlist 121.30.0.0/16 # UNICOM-SX / CNC Group CHINA169 Shan1xi Province Network
ipset add banlist 104.198.48.0/20 # GOOGLE-CLOUD / Google LLC
ipset add banlist 34.68.176.0/20 # GOOGL-2 / Google LLC
ipset add banlist 34.68.96.0/20 # GOOGL-2 / Google LLC
ipset add banlist 34.16.0.0/17 # GOOGL-2 / Google LLC
ipset add banlist 34.122.64.0/20 # GOOGL-2 / Google LLC
ipset add banlist 35.239.16.0/20 # GOOGLE-CLOUD / Google LLC
ipset add banlist 202.120.234.0/24 # CERNET-CN / Beijing, 100084
ipset add banlist 104.154.160.0/20 # GOOGLE-CLOUD / Google LLC
ipset add banlist 34.70.112.0/20 # Google LLC / GOOGL-2
ipset add banlist 35.224.160.0/20 # GOOGLE-CLOUD / Google LLC
ipset add banlist 34.66.128.0/20 # GOOGL-2 / Google LLC
ipset add banlist 34.133.16.0/20 # Google LLC / GOOGL-2
ipset add banlist 109.171.128.0/18 # KAUST Section 1 / King Abdullah University of Science and Technology / ORG-KAUo2-RIPE / SA-KAUST-20091118
ipset add banlist 34.68.144.0/20 # Google LLC / GOOGL-2
ipset add banlist 8.130.0.0/16 # Alibaba.com Singapore E-Commerce Private Limited / ALICLOUD
ipset add banlist 34.122.128.0/20 # GOOGL-2 / Google LLC
</code></pre>

<p>Thanks for nothing, leeches!</p>

<p>Oh, and of course I have an Apache config file called &ldquo;blocklist.conf&rdquo; where I added the following:</p>

<pre><code># Deny the image scraper
# https://imho.alex-kunz.com/2024/02/25/block-this-shit/
RewriteCond &quot;%{HTTP_USER_AGENT}&quot; &quot;Firefox/72.0&quot; [nocase]
RewriteRule ^ https://alexschroeder.ch/nobots [redirect=410,last]
</code></pre>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a></p>

<p>And more!</p>

<pre><code>ipset add banlist 198.82.0.0/16 # Virginia Polytechnic Institute and State Univ. / VPI-BLK
ipset add banlist 34.31.0.0/16 # Google LLC / GOOGL-2
ipset add banlist 34.72.32.0/20 # GOOGL-2 / Google LLC
ipset add banlist 35.238.176.0/20 # Google LLC / GOOGLE-CLOUD
ipset add banlist 34.173.0.0/17 # Google LLC / GOOGL-2
ipset add banlist 35.223.128.0/20 # GOOGLE-CLOUD / Google LLC
ipset add banlist 34.172.128.0/17 # Google LLC / GOOGL-2
ipset add banlist 35.202.224.0/20 # Google LLC / GOOGLE-CLOUD
ipset add banlist 34.69.112.0/20 # GOOGL-2 / Google LLC
ipset add banlist 34.136.224.0/20 # Google LLC / GOOGL-2
ipset add banlist 72.52.64.0/18 # Hurricane Electric LLC / HURRICANE-8
</code></pre> 

<br> 

<https://alexschroeder.ch/view/2024-10-18-firefox-72>

---

##  Early 90s SNL Graphic Parodies 

date: 2024-10-21, updated: 2024-10-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/10/early-90s-snl-graphic-parodies>

---

##  Al Green&#8217;s cover of The Beatles&#8217; I Want to Hold Your Hand.... 

date: 2024-10-21, updated: 2024-10-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/10/0045481-al-greens-cover-of-the>

---

## Where web components shine

date: 2024-10-21, from: Dave Rupert blog

<img src="https://cdn.daverupert.com/posts/2024/cavern.jpg" alt="vintage illustration of three explorers in a cave holding torches to light their way" width="1000" height="734"/>
<p>In this job <a href="https://daverupert.com/2024/04/thoughts-on-cosmotechnics/">we need to think a lot about the tools we choose and why</a>, so I cataloged all the places where web components (for me) feel like “the right tool for the job”. Your list may be different and I’d love to read it. And because I don’t want this to be 100% propaganda, I’ll also cover some of the not-so-great parts of web components as well.</p>
<h2>The good parts</h2>
<p>Here’s an incomplete list of situations where I think web components are a good choice.</p>
<ul>
<li>For leaf nodes - <a href="https://nolanlawson.com/2023/08/23/use-web-components-for-what-theyre-good-at/">Web components are great at leaf nodes</a>.</li>
<li>For presentational components that wrap other components - The <code>&lt;slot&gt;</code> element is fantastic for this, but you could write a basic CSS class instead. The first rule of web components is: <em>Not everything needs to be a web component.</em></li>
<li>For building a design system - <a href="https://nordhealth.design/">They do this too.</a></li>
<li>For progressively enhancing regular ass HTML - <a href="https://meyerweb.com/eric/thoughts/2023/11/01/blinded-by-the-light-dom/">Super good at this.</a></li>
<li>When you want to View Source - Most folks don’t care about this anymore but debugging <code>my-button</code> is a lot easier than <code>div.spf50</code> and you don’t have to rely on sourcemaps.</li>
<li>When you want to make a site without build tools - <a href="https://open-wc.org/guides/developing-components/going-buildless/">Build tooling is typically not the starting point</a> for most web component projects.</li>
<li>When building a one-off project - In the same vein as “buildless” components, eliminating dependencies decreases maintenance burdens over the long haul when you have to come back to the project weeks, months, or years later.</li>
<li>For prototyping - More buildless talk, but if you need to get up and going fast, web components zoom.</li>
<li>When you need to keep a low-memory profile - I think you’ll find <a href="https://krausest.github.io/js-framework-benchmark/2024/table_chrome_129.0.6668.58.html">on average your performance floor is much lower with web components</a>, which makes them blazingly fast.</li>
<li>When you need style encapsulation - imho, web components are a little <em>too</em> good at this but good to know <a href="https://nolanlawson.com/2021/08/15/does-shadow-dom-improve-style-performance/">Shadow DOM style application is also blazingly fast</a>.</li>
<li>When you want small, atomic template updates - Some  (not all) web component libraries use an html tagged template literal which gives you JSX-like template authoring without a transformer or compiler. <a href="https://youtu.be/Io6JjgckHbg?si=gQ1REfZSsMIPnFxw&amp;t=383">Tagged template literals are also blazingly fast with atomic updates</a> over full component re-renders.</li>
<li>When your components need to exist across different tech stacks - If your company lets departments pick their own tech stack or your company acquires other companies and you need a bit of UI consistency between projects, web components are a great choice.</li>
<li>When you’re demoing an accessibility pattern, animation, or CSS-Trick - Why not package it in a web component so people can pick it up and drop it into their project? These puppies are hyper-distributable.</li>
<li>When you make a third-party embed widget - If you need <a href="https://cdn.daverupert.com/posts/2024/spicy-iframes.png">a spicy <code>&lt;iframe&gt;</code></a>, web components do that and the style encapsulation of the Shadow DOM would probably make your life easier with less code.</li>
<li>When you want to build big applications - You can build <a href="https://web.dev/articles/ps-on-the-web">Photoshop with web components</a>. Companies build apps with web components every day. And they use Shadow DOM.</li>
<li>When you have designers who can code - Most designers don’t have an appetite or ability to spin up a whole dev environment, but you might be able to convince some to write HTML in a CodePen. If your designer is cool with spinning up a local dev environment, pay them more.</li>
</ul>
<h2>The not-so great parts</h2>
<p>No technology is perfect so here are some of the rough edges of web components, where people commonly have trouble, or where I’ve found them to not be the best abstraction.</p>
<ul>
<li>Shadow DOM - I think everyone’s first encounter with the Shadow DOM ends in catastrophe. It can be confusing and even smart people I know have beef with it. I can say that the more you work with it the more intuitive it becomes, but Shadow DOM does have some gotcha moments that can be frustrating.</li>
<li>SSR - <a href="https://www.spicyweb.dev/web-components-ssr-node/">You can SSR web components</a> using Declarative Shadow DOM, but there’s not a lot of literature out there which leads me to believe it’s either kludgy, too library-specific, or both. If this is a non-starter for you, check out <a href="https://enhance.dev/">Enhance</a> which does this out of the box.</li>
<li>Pages - You can use a web component as your page-level abstraction and leverage some kind of <a href="https://github.com/vaadin/router">web component-based router</a>… but you’re probably better off keeping it simple and using server generated HTML as your page-level abstraction.</li>
<li>Accessibility - There’s been some long standing issues with Cross-Root ARIA (e.g. associating a label in the document with an input inside a shadow root). Workarounds exist but the good news is that <a href="https://github.com/WICG/webcomponents/blob/gh-pages/proposals/reference-target-explainer.md"><code>referencetarget</code></a> is rolling out in Chromium and solves this problem. Hopefully other browsers pick it up soon.</li>
<li>Making a compiler for your JS framework - This is another post entirely, but I can say that over the last couple weeks I’ve had about three years worth of Community Group discussions. Hopefully some ombudsman-ship and progress can happen here.</li>
</ul>
<p>As always, your mileage may vary. Ultimately the technologies you choose probably come down to <a href="https://bradfrost.com/blog/link/why-were-breaking-up-with-css-in-js/">what’s cool at the time</a>, <a href="https://alexsexton.com/blog/2014/11/the-monty-hall-rewrite">what people <em>think</em> solves their problems</a>, and what your team and decision makers feel comfortable with at the time. That said, in the year 2024 of our <small>LORD</small>, despite the apparent limitations I do think these are scenarios where web components are a great fit.</p> 

<br> 

<https://daverupert.com/2024/10/super-web-components-sunshine/>

---

##  Foursquare is shutting down their city guide app and website. Sad but... 

date: 2024-10-21, updated: 2024-10-21, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/24/10/0045478-foursquare-is-shutting-do>

---

**@Dave Winer's Scripting News** (date: 2024-10-21, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/09/24/ken.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Don’t depend on Threads to validate the Fediverse. That’s not what they’re doing. Some of the people working there have good hearts and mean well, but Meta is a huge company, competing with other huge companies, and the goals of the Fediverse do not show up in their roadmap. 

<br> 

<http://scripting.com/2024/10/21.html#a135150>

---

**@Dave Winer's Scripting News** (date: 2024-10-21, from: Dave Winer's Scripting News)

I got a notice that Threads had deleted one of my posts because they said it violated their rules. They thought I was claiming to have written something I had not written. I didn't keep the notice (it popped up when I signed on). I shrugged it off when I got it, but then realized that we are very far away from the web. It has been turned into Disneyland where the cops are algorithms and they err on the side of stopping innocent things. I was just passing on a <a href="https://rohan.ga/blog/early-internet/">link to someone else's blog</a>, something I thought an informed person would want to know about (that's the idea behind every link I share). We really do need to dig our way out of this hole, again. This is of course no better than Twitter or Facebook. Not a place to get work done. 

<br> 

<http://scripting.com/2024/10/21.html#a134434>

---

**@Dave Winer's Scripting News** (date: 2024-10-21, from: Dave Winer's Scripting News)

It's amazing that the million-plus Americans who died from Covid during Trump's tenure aren't even mentioned as a campaign issue. Maybe people don't want to be reminded of those dark days. 

<br> 

<http://scripting.com/2024/10/21.html#a131028>

---

## The Mets came to play

date: 2024-10-21, from: Dave Winer's Scripting News

<p><img class="imgRightMargin" src="https://imgs.scripting.com/2024/10/18/grimace.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Last night the Mets were eliminated by the Dodgers playing in Los Angeles.</p>
<p>And I don't know about you but I'm really happy with how the season turned out. I didn't think the Mets would make it through any of the hurdles, making the playoffs, and beating the Brewers and Phillies. That was amazing. And the energy of this team, their humor and inventiveness, professionalism and perseverance. The Mets of 2024 were a great team, and they give us something to look forward to in 2025. </p>
<p>People say Mets pitchers walked too many Dodgers, but the walks were a result of discipline on the part of the Dodgers hitters. Most pitchers throw a lot of crap, and the hitters swing at it. The Dodgers are more discerning. If the Mets pitchers had thrown strikes they would have hit home runs. It's another way of saying that the Dodgers, no matter how much we despise them, this year at least, were the better team.</p>
<p>And there is a silver lining. I wasn't sure I wanted the Mets to beat the Dodgers once we knew the team from the "other" league was going to be the Jankees. Last time the Mets played them in the World Series, they beat us in Shea Stadium and as a result we had to tear it down and start over. I don't think any of us wanted that, or even to risk having to tear down Citi Field. I don't like to be reminded that the Jankees even exist, much less be forced to watch them play. And honestly between the Dodgers and the other NY team, I want them <i>both</i> to lose. Is there any way to arrange that? I don't even want to know. </p>
<p>Anyway thanks to the Mets for being such a wonderful team, a constant inspiration. So onward. Next year. And now..</p>
<p>The Knicks begin their season <a href="https://www.scmp.com/sport/basketball/article/3283231/nba-season-opens-boston-celtics-eyeing-dynasty-and-knicks-chasing-first-title-1973">tomorrow night</a> in Boston against the Celtics.</p>
 

<br> 

<http://scripting.com/2024/10/21/125035.html?title=theMetsCameToPlay>

---

## Big browsers are about to throw a wrench in your ad-free paradise

date: 2024-10-21, updated: 2024-10-21, from: Liam Proven's articles at the Register

<h4>Mozilla and Google complicate life for users of uBlock Origin and uBlock Lite</h4>
      <p>Both uBlock Origin and its smaller sibling, uBlock Origin Lite, are experiencing problems thanks to browser vendors that really ought to know better.</p> 

<br> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/10/21/ublock_firefox_chrome_issues/>

---

## AI and the SEC Whistleblower Program

date: 2024-10-21, updated: 2024-10-19, from: Bruce Schneier blog

<p>Tax farming is the practice of licensing tax collection to private contractors. Used heavily in ancient Rome, it’s largely <a href="https://www.cambridge.org/core/journals/social-science-history/article/abs/perils-of-privatization/ED0CC74ECD0C79B068BB3CE233932B04">fallen out of practice</a> because of the obvious <a href="https://academic.oup.com/book/11909/chapter-abstract/161083634">conflict of interest</a> between the state and the contractor. Because tax farmers are primarily interested in short-term revenue, they have no problem abusing taxpayers and making things worse for them in the long term. Today, the U.S. Securities and Exchange Commission (SEC) is engaged in a modern-day version of tax farming. And the potential for abuse will grow when the farmers start using artificial intelligence...</p> 

<br> 

<https://www.schneier.com/blog/archives/2024/10/ai-and-the-sec-whistleblower-program.html>

---

## Trump’s penis envy

date: 2024-10-21, from: Robert Reich's blog

Why winning the presidency is more important to him than preserving democracy. 

<br> 

<https://robertreich.substack.com/p/trumps-penis-envy>

---

## October 20, 2024 

date: 2024-10-21, from: Heather Cox Richardson blog

I had hoped to write tonight about the farm bill, which Eric Hovde, running for the Senate from Wisconsin although it&#8217;s not clear he lives there, could not talk about in the debate between him and incumbent senator Tammy Baldwin on Friday. 

<br> 

<https://heathercoxrichardson.substack.com/p/october-20-2024>

---

## The LLM Reasoning Debate Heats Up 

date: 2024-10-21, from: Melanie Mitchell, AI Guide for Human Thinking

Three recent papers examine the robustness of reasoning and problem-solving in large language models 

<br> 

<https://aiguide.substack.com/p/the-llm-reasoning-debate-heats-up>

---

## Comet, second try

date: 2024-10-21, from: Doc Searls (at Harvard), New Old Blog

I shot the comet this time with a real camera: my Sony a7iv with a FE 70-200 mm F2.8 GM OSS II lens set at f3.5 at 135mm for 10 seconds on a shitty tripod I got at a thrift shop for $5. (I have good ones elsewhere.) This was at 8:40pm, just as the [&#8230;] 

<br> 

<https://doc.searls.com/2024/10/20/comet-second-try/>

---

## Never used the netcat before

date: 2024-10-21, from: Jirka's blog

I know that  the netcat(1) is cool  but I never needed  to actually use it.  Until today.  I  have  had two  Linux  laptops without  configured SSH/FTP or anything like that. I  needed to transfer some date from one to another. Both were on a local WiFi network. 

<br> 

<http://jirka.1-2-8.net/20241021-0442_Never_used_the_netcat_before>

---

## MNT Pocket Reform update

date: 2024-10-21, from: Jirka's blog

I got my Pocket for my (another) bussines trip. Before the trip I tried to  fix  some stuff.  The  first  was the  keyboard  layout.  I had  to reinstall my system in August (my  fault: I run the Debian unstable and ignored the warning about bug related  to kernel modules) and from that point the original  "EurKey" layout. No big loss as  the only important symbol was  missing (the tilde). Anyway,  I have fixed it  by replacing the "us" by the  "eur" in the $(HOME)/.config/sway/config.d/input file. Anyway, configuration of 2 layouts and  usual way to configure keys for shifting them (xkb_options) haven't work for me for same reasons. 

<br> 

<http://jirka.1-2-8.net/20241021-0442_MNT_Pocket_Reform_update>

---

## Derek Jeter Still Manifesting Yankees Wins

date: 2024-10-21, from: Om Malik blog

Derek Jeter knows a winner when he sees one. At the 2023 All-Star Game, Jeter told a panel of fellow experts hosting a television show that the New York Yankees should trade for Juan Soto. Five months later, former Yankees captain and once-and-forever No. 2 got what he wanted. The Yankees gave up some of &#8230; 

<br> 

<https://om.co/2024/10/20/derek-jeter-still-manifesting-yankees-wins/>

---

## Waiting for Apple’s Intelligence

date: 2024-10-21, from: Om Malik blog

Apple Intelligence won&#8217;t actually launch until about five days after the new iPad hits stores on Oct. 23. The bigger obstacle is that the first Apple Intelligence features are underwhelming &#8211; with the more impressive capabilities coming later.At the start, the signature feature will be notification summaries. These can be quite helpful &#8211; if they&#8217;re &#8230; 

<br> 

<https://om.co/2024/10/20/waiting-for-apples-intelligence/>

---

## Monday 21 October, 2024

date: 2024-10-20, from: John Naughton's online diary

What &#8212; or of what &#8212; is he thinking? Quote of the Day &#8220;A university is a place devoted to the problem of how to make serious use of free time.&#8221; Agnes Callard Musical alternative to the morning’s radio news &#8230; <a href="https://memex.naughtons.org/monday-21-october-2024/39985/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-21-october-2024/39985/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-10-20, from: Miguel de Icaza Mastondon feed)

<p>Simple explanation of how bluesky works from one of their engineers:</p><p><a href="https://bsky.app/profile/pfrazee.com/post/3l6xwi52zti2y" target="_blank" rel="nofollow noopener noreferrer" translate="no"><span class="invisible">https://</span><span class="ellipsis">bsky.app/profile/pfrazee.com/p</span><span class="invisible">ost/3l6xwi52zti2y</span></a></p> 

<br> 

<https://mastodon.social/@Migueldeicaza/113342250040723250>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-10-20, from: Miguel de Icaza Mastondon feed)

<p>Albanese:</p><p> “Powerful interview, with an uncharacteristically emotional Jeremy Scahill. But how can one not be emotional at this point. Nothing justifies the butchering of children day after day, weeks and months. I am also profoundly disturbed and disgusted by what we have become.”</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/113342049684173662>

---

**@Dave Winer's Scripting News** (date: 2024-10-20, from: Dave Winer's Scripting News)

A second elimination game for the Mets tonight. I almost don't want the Mets to win, because the World Series opponent from the "other" league are the Janks from the Bronx. I love the Bronx. That's about all I have to say about that at this time. 

<br> 

<http://scripting.com/2024/10/20.html#a175831>

---

**@Dave Winer's Scripting News** (date: 2024-10-20, from: Dave Winer's Scripting News)

I did a <a href="https://shownotes.scripting.com/scripting/2024/10/20/warningMuskCouldPushTrumpOverTheTop.html">podcast</a> this morning about the reality of Musk owning Twitter, which is now completely settling in. He might have enough influence on the election to push Trump over. He wins even if Trump loses, he gets a moon mission project to boot up a Musk Party. It's coming for sure, either way. Probably will pick up what's left over after Trump, who clearly is losing it, and even if he's president, someone else will be pulling the strings. I can't imagine the billionaire will let JD Vance do it. And by "billionaire" I mean Musk. 

<br> 

<http://scripting.com/2024/10/20.html#a175002>

---

**@Dave Winer's Scripting News** (date: 2024-10-20, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/01/26/cartoonChicken.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Some of us do most of our writing on desktop computers. I guess we're in a very small minority. We can use a much better twitter-like system than the people who use mobile devices to tweet. I'm one of the desktop people. So I want <a href="https://textcasting.org/">textcasting</a>. Mobile people either don't care or don't want it. So it stands to reason we need a different user interface. We can use the same network, we just need a different UI for editing. Since the twitter-like systems already carry links to stories written by people on desktops, there's room in their pipes for our writing too. And it can work more efficiently if the stories are part of the message as opposed to living off-site. Think of it as a web of writing. A writer's web that also carries short messages. 

<br> 

<http://scripting.com/2024/10/20.html#a174618>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-10-20, from: Miguel de Icaza Mastondon feed)

<p>Just last week my beautiful Xcode-inspired design for the debugger pad met the reality of iPad and launching an app side by side.</p><p>It is hideous, and I am fixing:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/113340323996071935>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-10-20, from: Miguel de Icaza Mastondon feed)

<p>The sole reason I haven’t release Godot on iPad is that I have some 100 bugs that must be fixed, and everyone using it would be pretty annoyed at things like this:</p><p>We are working around the clock, but the “must be fixed for a small preview” list as grown to about 30 bugs has we do full tutorial walkthroughs, and get to experience every bit:</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/113340300888539368>

---

## Aretha Franklin‘s ’Think‘

date: 2024-10-20, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/aretha-franklins-think>

---

## Sunday caption contest: If his lies could speak

date: 2024-10-20, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-if-his-lies>

---

## October 19, 2024 

date: 2024-10-20, from: Heather Cox Richardson blog

A number of people telling me we all need a night off had almost convinced me not to write tonight. 

<br> 

<https://heathercoxrichardson.substack.com/p/october-19-2024>

---

## October 18, 2024

date: 2024-10-20, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/150463635/604579f571c31584ae625198bd666574.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/150463635/604579f571c31584ae625198bd666574.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/october-18-2024-bb3>

---

## Election Countdown, 17 Days to Go: Ground Truths That Matter.

date: 2024-10-20, from: James Fallows, Substack

In the chaos of daily news, don't lose sight of: The danger of JD Vance, the naked agitprop of Fox, and the common sense of citizens. 

<br> 

<https://fallows.substack.com/p/election-countdown-17-days-to-go>

