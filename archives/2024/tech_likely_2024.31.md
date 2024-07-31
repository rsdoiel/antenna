---
title: tech likely 2024.31
updated: 2024-07-31 08:05:00
---

# tech likely 2024.31

(date: 2024-07-31 08:05:00)

---

## Sergey Durmanov opened issue #149: issue with SET64 constructor for 32-bit CPUs at Felix Oliver Friedrich / Oberon A2

date: 2024-07-31, updated: 2024-07-31, from: Oberon A2 at CAS


<p dir="auto">SET64 constructor does not work for 32-bit CPUs</p>
<div class="gl-relative markdown-code-block js-markdown-code">
<pre class="code highlight js-syntax-highlight language-plaintext" v-pre="true"><code><span id="LC1" class="line" lang="plaintext" xml:lang="plaintext">MODULE TestSet2;</span>
<span id="LC2" class="line" lang="plaintext" xml:lang="plaintext">IMPORT KernelLog;</span>
<span id="LC3" class="line" lang="plaintext" xml:lang="plaintext">	PROCEDURE Do*;</span>
<span id="LC4" class="line" lang="plaintext" xml:lang="plaintext">	VAR s: SET64;</span>
<span id="LC5" class="line" lang="plaintext" xml:lang="plaintext">	BEGIN</span>
<span id="LC6" class="line" lang="plaintext" xml:lang="plaintext">		s := { 7..13 };</span>
<span id="LC7" class="line" lang="plaintext" xml:lang="plaintext">		Set(s);</span>
<span id="LC8" class="line" lang="plaintext" xml:lang="plaintext">		s := { 27..53 };</span>
<span id="LC9" class="line" lang="plaintext" xml:lang="plaintext">		Set(s);</span>
<span id="LC10" class="line" lang="plaintext" xml:lang="plaintext">	END Do;</span>
<span id="LC11" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC12" class="line" lang="plaintext" xml:lang="plaintext">PROCEDURE Set*(x: SET64);</span>
<span id="LC13" class="line" lang="plaintext" xml:lang="plaintext">VAR first := TRUE: BOOLEAN; bit := {0}: SET64; i: INTEGER;</span>
<span id="LC14" class="line" lang="plaintext" xml:lang="plaintext">BEGIN</span>
<span id="LC15" class="line" lang="plaintext" xml:lang="plaintext">	KernelLog.Char(&#34;{&#34;);</span>
<span id="LC16" class="line" lang="plaintext" xml:lang="plaintext">	FOR i := 0 TO MAX(SET64) DO</span>
<span id="LC17" class="line" lang="plaintext" xml:lang="plaintext">		IF bit * x # {} THEN</span>
<span id="LC18" class="line" lang="plaintext" xml:lang="plaintext">			IF ~first THEN KernelLog.Char(&#34;,&#34;) ELSE first := FALSE END;</span>
<span id="LC19" class="line" lang="plaintext" xml:lang="plaintext">			KernelLog.Int(i,1);</span>
<span id="LC20" class="line" lang="plaintext" xml:lang="plaintext">		END;</span>
<span id="LC21" class="line" lang="plaintext" xml:lang="plaintext">		bit := SHL(bit, 1);</span>
<span id="LC22" class="line" lang="plaintext" xml:lang="plaintext">	END;</span>
<span id="LC23" class="line" lang="plaintext" xml:lang="plaintext">	KernelLog.Char(&#34;}&#34;);</span>
<span id="LC24" class="line" lang="plaintext" xml:lang="plaintext">END Set;</span>
<span id="LC25" class="line" lang="plaintext" xml:lang="plaintext">END TestSet2.</span>
<span id="LC26" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC27" class="line" lang="plaintext" xml:lang="plaintext">System.Free TestSet2~</span>
<span id="LC28" class="line" lang="plaintext" xml:lang="plaintext">TestSet2.Do~</span></code></pre>
<copy-code></copy-code>
</div>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/149>

---

## Sergey Durmanov opened issue #148: issue with set constructor (range order) at Felix Oliver Friedrich / Oberon A2

date: 2024-07-31, updated: 2024-07-31, from: Oberon A2 at CAS


<p dir="auto">If the order of the elements is in the range from largest to smallest, the set constructor produces an incorrect result.</p>
<div class="gl-relative markdown-code-block js-markdown-code">
<pre class="code highlight js-syntax-highlight language-plaintext" v-pre="true"><code><span id="LC1" class="line" lang="plaintext" xml:lang="plaintext">MODULE TestSet1;</span>
<span id="LC2" class="line" lang="plaintext" xml:lang="plaintext">	PROCEDURE Do*;</span>
<span id="LC3" class="line" lang="plaintext" xml:lang="plaintext">	VAR s: SET;</span>
<span id="LC4" class="line" lang="plaintext" xml:lang="plaintext">	BEGIN</span>
<span id="LC5" class="line" lang="plaintext" xml:lang="plaintext">		s := { 13..7 };</span>
<span id="LC6" class="line" lang="plaintext" xml:lang="plaintext">		TRACE(s);</span>
<span id="LC7" class="line" lang="plaintext" xml:lang="plaintext">		s := { 7..13 };</span>
<span id="LC8" class="line" lang="plaintext" xml:lang="plaintext">		TRACE(s);</span>
<span id="LC9" class="line" lang="plaintext" xml:lang="plaintext">	END Do;</span>
<span id="LC10" class="line" lang="plaintext" xml:lang="plaintext">END TestSet1.</span>
<span id="LC11" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC12" class="line" lang="plaintext" xml:lang="plaintext">System.Free TestSet1~</span>
<span id="LC13" class="line" lang="plaintext" xml:lang="plaintext">TestSet1.Do~</span></code></pre>
<copy-code></copy-code>
</div>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/148>

---

## 2024-07-31 Hashtags

date: 2024-07-31, from: Alex Schroeder's Blog

<h1 id="2024-07-31-hashtags">2024-07-31 Hashtags</h1>

<p>I implemented <a href="oddmu/oddmu-hashtags.1">a new subcommand for Oddmu</a>.
I was mostly curious to see
whether Administration had alread overtaken role-playing games, that
is, RPG. I am happy to report that administration issues are still far
from the top of the list. <em>Homo ludens</em> is still winning out. 😄</p>

<table>
<thead>
<tr>
<th align="right">Rank</th>
<th>Hashtag</th>
<th align="right">Count</th>
</tr>
</thead>

<tbody>
<tr>
<td align="right">1</td>
<td><a class="tag" href="/search/?q=%23rpg">#rpg</a></td>
<td align="right">1478</td>
</tr>

<tr>
<td align="right">2</td>
<td><a class="tag" href="/search/?q=%23old_school">#old school</a></td>
<td align="right">475</td>
</tr>

<tr>
<td align="right">3</td>
<td><a class="tag" href="/search/?q=%23software">#software</a></td>
<td align="right">314</td>
</tr>

<tr>
<td align="right">4</td>
<td><a class="tag" href="/search/?q=%23life">#life</a></td>
<td align="right">284</td>
</tr>

<tr>
<td align="right">5</td>
<td><a class="tag" href="/search/?q=%23web">#web</a></td>
<td align="right">263</td>
</tr>

<tr>
<td align="right">6</td>
<td><a class="tag" href="/search/?q=%23rsp">#rsp</a></td>
<td align="right">233</td>
</tr>

<tr>
<td align="right">7</td>
<td><a class="tag" href="/search/?q=%23wikis">#wikis</a></td>
<td align="right">214</td>
</tr>

<tr>
<td align="right">8</td>
<td><a class="tag" href="/search/?q=%23emacs">#emacs</a></td>
<td align="right">205</td>
</tr>

<tr>
<td align="right">9</td>
<td><a class="tag" href="/search/?q=%23pictures">#pictures</a></td>
<td align="right">204</td>
</tr>

<tr>
<td align="right">10</td>
<td><a class="tag" href="/search/?q=%23copyright">#copyright</a></td>
<td align="right">173</td>
</tr>

<tr>
<td align="right">11</td>
<td><a class="tag" href="/search/?q=%23oddmuse">#oddmuse</a></td>
<td align="right">168</td>
</tr>

<tr>
<td align="right">12</td>
<td><a class="tag" href="/search/?q=%23music">#music</a></td>
<td align="right">164</td>
</tr>

<tr>
<td align="right">13</td>
<td><a class="tag" href="/search/?q=%23games">#games</a></td>
<td align="right">141</td>
</tr>

<tr>
<td align="right">14</td>
<td><a class="tag" href="/search/?q=%23books">#books</a></td>
<td align="right">138</td>
</tr>

<tr>
<td align="right">15</td>
<td><a class="tag" href="/search/?q=%23usa">#usa</a></td>
<td align="right">132</td>
</tr>

<tr>
<td align="right">16</td>
<td><a class="tag" href="/search/?q=%23administration">#administration</a></td>
<td align="right">132</td>
</tr>

<tr>
<td align="right">17</td>
<td><a class="tag" href="/search/?q=%23movies">#movies</a></td>
<td align="right">126</td>
</tr>

<tr>
<td align="right">18</td>
<td><a class="tag" href="/search/?q=%23blogs">#blogs</a></td>
<td align="right">119</td>
</tr>

<tr>
<td align="right">19</td>
<td><a class="tag" href="/search/?q=%23programming">#programming</a></td>
<td align="right">115</td>
</tr>

<tr>
<td align="right">20</td>
<td><a class="tag" href="/search/?q=%23gadgets">#gadgets</a></td>
<td align="right">99</td>
</tr>
</tbody>
</table>
<p><a class="tag" href="/search/?q=%23Blogging">#Blogging</a> <a class="tag" href="/search/?q=%23Oddµ">#Oddµ</a></p> 

<https://alexschroeder.ch/view/2024-07-31-hashtags>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-31, from: Miguel de Icaza Mastondon feed)

<p>As I was telling a friend, If you are not running iOS 18.1 you might as well just run Android or live in a cave.</p> 

<https://mastodon.social/@Migueldeicaza/112881574260230389>

---

## The NYT is weird

date: 2024-07-31, from: Dave Winer's Scripting News

<p>Someone in charge at the NYT needs to take a step back and view events, and the NYT role in those events, from the point of view of an ordinary non-NYT-employed citizen, bewildered at the enormous risks journalists are taking with the system of government of the United States. </p>
<p>In the context of who we are as a country, what the Repubs do and say is to be very mild about it "weird." What word would you prefer the Democrats use? Imagine <a href="https://en.wikipedia.org/wiki/William_Safire">William Safire</a> were here, the great linguist columnist of the NYT, wrote that column. (Safire was a <a href="https://chatgpt.com/share/ab14f5b9-2b55-406f-9b78-057313c03d63">Republican</a> btw.)</p>
<p>And to the Democrats, no matter what the NYT says, keep using the term. This is where you get to speak out about what they're doing over there, and how it's not journalism. One of the rare things you agree with Trump on. </p>
<p>Podcast: <a href="http://scripting.com/2024/07/31/theNYTIsWeird.m4a">3 minutes</a>.</p>
<p>PS: Safire went to <a href="https://en.wikipedia.org/wiki/Bronx_High_School_of_Science">Bronx Science</a>! I did not know that. (So did I.) I love the idea of writers who aren't scared of tech stuff. </p>
<p>PPS: Even Richard Nixon would think today's so-called Republicans were weird. </p>
<p>PPPS: The NYT is totally unmoored, a word I bet Safire would like. </p>
 

<http://scripting.com/2024/07/31/142559.html?title=theNytIsWeird>

---

**@Dave Winer's Scripting News** (date: 2024-07-31, from: Dave Winer's Scripting News)

People who get their sense of self-esteem from having procreated are placing a heavy burden on their children. What if the child doesn't live up to their expectations? How will they treat the child then! Creating a new human is not an accomplishment. Treating that new life as a full person starting at birth, and through their whole life, <i>that's</i> an accomplishment. For a man to father a child just means they have a functioning reproductive system. It's not anything to be proud or to expect to be rewarded or respected for. 

<http://scripting.com/2024/07/31.html#a135556>

---

## NASA’s First-Ever Quantum Memory Made at Glenn Research Center

date: 2024-07-31, from: NASA breaking news

Bringing bright minds together has once again proven to be the key to unlocking the mysteries of the universe. Researchers developed technology that will store information within a cloud of atoms. Together with Infleqtion Inc., researchers at NASA’s Glenn Research Center in Cleveland produced NASA’s first-ever quantum memory. This technology is NASA’s first step in [&#8230;] 

<https://www.nasa.gov/general/nasas-first-ever-quantum-memory-made-at-glenn-research-center/>

---

## AI causing burnout, lower productivity

date: 2024-07-31, from: OS News

Is machine learning, also known as &#8220;artificial intelligence&#8221;, really aiding workers and increasing productivity? A study by Upwork &#8211; which, as Baldur Bjarnason so helpfully points out, sells AI solutions and hence did not promote this study on its blog as it does with its other studies &#8211; reveals that this might not actually be the case. Nearly half (47%) of workers using AI say they have no idea how to achieve the productivity gains their employers expect. Over three in four (77%) say AI tools have decreased their productivity and added to their workload in at least one way. For example, survey respondents reported that they’re spending more time reviewing or moderating AI-generated content (39%), invest more time learning to use these tools (23%), and are now being asked to do more work (21%). Forty percent of employees feel their company is asking too much of them when it comes to AI. ↫ Upwork research This shouldn&#8217;t come as a surprise. We&#8217;re in a massive hype cycle when it comes to machine learning, and we&#8217;re being told it&#8217;s going to revolutionise work and lead to massive productivity gains. In practice, however, it seems these tools just can&#8217;t measure up to the hyped promises, and in fact is making people do less and work slower. There&#8217;s countless stories of managers being told by upper management to shove machine learning into everything, from products to employee workflows, whether it makes any sense to do so or not. I know from experience as a translator that machine learning can greatly improve my productivity, but the fact that there are certain types of tasks that benefit from ML, doesn&#8217;t mean every job suddenly thrives with it. I&#8217;m definitely starting to see some cracks in the hype cycle, and this study highlights a major one. I hope we can all come down to earth again, and really take a careful look at where ML makes sense and where it does not, instead of giving every worker a ChatGPT account and blanket demanding massive productivity gains that in no way match the reality on the office floor. And of course, despite demanding massive productivity increases, it&#8217;s not like workers are getting an equivalent increase in salary. We&#8217;ve seen massive productivity increases for decades now, while paychecks have not followed suit at all, and many people can actually buy less with their salary today than their parents could decades ago. Demands imposed by managers by introducing AI is only going to make this discrepancy even worse. 

<https://www.osnews.com/story/140365/ai-causing-burnout-lower-productivity/>

---

## Why 'You're Being Weird' Works So Well

date: 2024-07-31, from: Dave Karpf's blog

The Republican Party stopped trying to appeal to normies a long time ago. 

<https://davekarpf.substack.com/p/why-youre-being-weird-works-so-well>

---

## Logitech has an idea for a “forever mouse” that requires a subscription

date: 2024-07-31, from: OS News

Logitech CEO Hanneke Faber talked about someting called the &#8220;forever mouse&#8221;, which would be, as the name implies, a mouse that customers could use for a very long time. While you may think this would mean an incredibly well-built mouse, or one that can be easily repaired, which Logitech already makes somewhat possible through a partnership with iFixIt, another option the company is thinking about is a subscription model. Yes. Faber said subscription software updates would mean that people wouldn&#8217;t need to worry about their mouse. The business model is similar to what Logitech already does with video conferencing services (Logitech&#8217;s B2B business includes Logitech Select, a subscription service offering things like apps, 24/7 support, and advanced RMA). Having to pay a regular fee for full use of a peripheral could deter customers, though. HP is trying a similar idea with rentable printers that require a monthly fee. The printers differ from the idea of the forever mouse in that the HP hardware belongs to HP, not the user. However, concerns around tracking and the addition of ongoing expenses are similar. ↫ Scharon Harding at Ars Technica Now, buying a mouse whose terrible software requires subscription models would still be a choice you can avoid, but my main immediately conjured up a far darker scenario. PC makers have a long history of adding crapware to their machines in return for payments from the producers of said crapware. I can totally see what&#8217;s going to happen next. You buy a brand new laptop, unbox it at home, and turn it on. Before you know it, a dialog pops up right after he crappy Windows out-of-box experience asking you to subscribe to your laptop&#8217;s touchpad software in order to unlock its more advanced features like gestures. But why stop there? The keyboard of that new laptop has RGB backlighting, but if you want to change its settings, you&#8217;re going to have to pay for another subscription. Your laptop&#8217;s display has additional features and modes for specific types of content and more settings sliders, but you&#8217;ll have to pay up to unlock them. And so on. I&#8217;m not saying this will happen, but I&#8217;m also not saying it won&#8217;t. I&#8217;m sorry for birthing this idea into the world. 

<https://www.osnews.com/story/140363/logitech-has-an-idea-for-a-forever-mouse-that-requires-a-subscription/>

---

## Guadalcanal: 5

date: 2024-07-31, from: Ayjay blog

If, as I said in my previous post, to confront another soldier in war is to confront yourself, then … isn’t that other soldier … you? Yes. Necessarily.&#160; It is this necessity that produces a constant hum of meditation in Malick’s The Thin Red Line: “Maybe all men got one big soul,” thinks one of [&#8230;] 

<https://blog.ayjay.org/guadalcanal-5/>

---

## Compared to other distros, Vanilla OS 2 'Orchid' is rewriting how Linux works

date: 2024-07-31, updated: 2024-07-31, from: Liam Proven's articles at the Register

<h4>In front, unmodified GNOME; underneath, it's all a bit strange, but purposefully so</h4>
      <p>Vanilla OS is an experimental distro testing out new implementations of immutability, cross-distro packaging, A/B failover, and more.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/07/31/vanilla_os_friendly_radical/>

---

## Sergey Durmanov closed issue #146: issue with system.val(float, constant) at Felix Oliver Friedrich / Oberon A2

date: 2024-07-31, updated: 2024-07-31, from: Oberon A2 at CAS


<p dir="auto">Issue with system.val for float constant</p>
<div class="gl-relative markdown-code-block js-markdown-code">
<pre class="code highlight js-syntax-highlight language-plaintext" v-pre="true"><code><span id="LC1" class="line" lang="plaintext" xml:lang="plaintext">MODULE TestCast;</span>
<span id="LC2" class="line" lang="plaintext" xml:lang="plaintext">IMPORT SYSTEM;</span>
<span id="LC3" class="line" lang="plaintext" xml:lang="plaintext">CONST pi = UNSIGNED64(0x40091EB851EB851F); (*3.14*)</span>
<span id="LC4" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC5" class="line" lang="plaintext" xml:lang="plaintext">PROCEDURE Do*;</span>
<span id="LC6" class="line" lang="plaintext" xml:lang="plaintext">VAR d: RECORD f: FLOAT64; bits { OFFSET=0 }: SET64 END;</span>
<span id="LC7" class="line" lang="plaintext" xml:lang="plaintext">BEGIN</span>
<span id="LC8" class="line" lang="plaintext" xml:lang="plaintext">  d.f := 3.14;</span>
<span id="LC9" class="line" lang="plaintext" xml:lang="plaintext">  TRACE( d.f, d.bits);</span>
<span id="LC10" class="line" lang="plaintext" xml:lang="plaintext">  d.bits := SET64(pi);</span>
<span id="LC11" class="line" lang="plaintext" xml:lang="plaintext">  TRACE( d.f, d.bits);</span>
<span id="LC12" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC13" class="line" lang="plaintext" xml:lang="plaintext">  VAR u64 := pi: UNSIGNED64;</span>
<span id="LC14" class="line" lang="plaintext" xml:lang="plaintext">  d.f := SYSTEM.VAL(FLOAT64, u64); (* OK *)</span>
<span id="LC15" class="line" lang="plaintext" xml:lang="plaintext">  TRACE( d.f, d.bits);</span>
<span id="LC16" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC17" class="line" lang="plaintext" xml:lang="plaintext">  d.f := SYSTEM.VAL(FLOAT64, pi); (* BAD *)</span>
<span id="LC18" class="line" lang="plaintext" xml:lang="plaintext">  TRACE( d.f, d.bits);</span>
<span id="LC19" class="line" lang="plaintext" xml:lang="plaintext">END Do;</span>
<span id="LC20" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC21" class="line" lang="plaintext" xml:lang="plaintext">END TestCast.</span>
<span id="LC22" class="line" lang="plaintext" xml:lang="plaintext"></span>
<span id="LC23" class="line" lang="plaintext" xml:lang="plaintext">System.Free TestCast ~</span>
<span id="LC24" class="line" lang="plaintext" xml:lang="plaintext">TestCast.Do ~</span></code></pre>
<copy-code></copy-code>
</div>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/146>

---

## Gould Electronic's PowerNode 6000 

date: 2024-07-31, from: Computer ads from the Past

The Firebreathers from Gould blast the competition into oblivion. 

<https://computeradsfromthepast.substack.com/p/gould-electronics-powernode-6000>

---

## Peter Easthope commented on issue #141 at Felix Oliver Friedrich / Oberon A2

date: 2024-07-31, updated: 2024-07-31, from: Oberon A2 at CAS


<p data-sourcepos="1:1-1:24" dir="auto"><a href="/fnec.ece" data-reference-type="user" data-user="20002" data-container="body" data-placement="top" class="gfm gfm-project_member js-user-link" title="fnec ece">@fnec.ece</a> · 4 weeks ago</p>
<blockquote data-sourcepos="2:1-7:21" dir="auto">
<p data-sourcepos="2:3-3:40">Hi, I have corrected the problem for oberon subsystem in the MyUnix.KbdMouse.Mod file.
Could you test after HotKeys disabled?</p>
<p data-sourcepos="5:3-5:15">Best regards,</p>
<p data-sourcepos="7:3-7:21">MyUnix.KbdMouse.Mod</p>
</blockquote>
<p data-sourcepos="9:1-9:63" dir="auto">Today, compiled MyUnix.KbdMouse.Mod in repository A2, Linux64.</p>
<p data-sourcepos="11:1-12:17" dir="auto">Now, after &lt;F12&gt;, the &lt;F1&gt; key sets the * marker.  The &lt;delete&gt; key
remains inactive.</p>
<p data-sourcepos="14:1-16:52" dir="auto">Auto switching keyboard functionality according to focus would be ideal.
Oberon functionality when focus is in Oberon; A2 functionality when
focus is in A2.  Prior to release 10272 that worked.</p>
<p data-sourcepos="18:1-18:53" dir="auto">Thanks,        ... P.L.</p>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/issues/141#note_194106>

---

## Less Coffee, Better Sleep

date: 2024-07-31, from: Marginallia log

As an experiment, I&rsquo;ve reduced my coffee-intake to a single cup a day for about a week now. It&rsquo;s made an enormous difference in sleep, mood and energy. I get tired at night, fall asleep quickly, and wake up refreshed.
As mentioned previously in the context of morning sunlight exposure&mdash;another thing that&rsquo;s aided my sleeping habits, but is somewhat less practical to sustain as it requires fair weather&mdash;I&rsquo;ve always been slow to get going in the morning, active at night, bad at getting to bed at sane hours. 

<https://www.marginalia.nu/log/a_109_sleep2/>

---

## pg_ivm 1.9 released

date: 2024-07-31, from: PostgreSQL News

<p>IVM Development Group is pleased to announce the release of <a href="https://github.com/sraoss/pg_ivm/releases/tag/v1.9">pg_ivm 1.9</a>.</p>
<p>Changes since the v1.8 release include:</p>
<h3>Bug fixes</h3>
<ul>
<li>
<p>Add support for PostgreSQL 17 (Yugo Nagata, Takuma Hoshiai, reshke)</p>
<p>This contains the following changes:</p>
</li>
<li>
<p>Change functions to use a safe search_path during maintenance operations when used with PostgreSQL 17</p>
<p>This prevents maintenance operations (automatic maintenance of IMMVs and refresh_immv) from performing
unsafe access. Functions used by IMMVs that need to reference non-default schemas must specify a search
path during function creation.</p>
</li>
<li>
<p>refresh_immv can be executed by users with the MAINTAIN privilege when used with PostgreSQL 17</p>
</li>
</ul>
<h3>About pg_ivm</h3>
<p>pg_ivm is an extension module that provides Incremental View Maintenance (IVM) feature.</p>
<p>Incremental View Maintenance (IVM) is a way to make materialized views up-to-date in
which only incremental changes are computed and applied on views rather than recomputing. 
pg_ivm provides a kind of immediate maintenance, in which materialized views are updated
immediately after a base table is modified.</p>
<p>Source repository: <a href="https://github.com/sraoss/pg_ivm">https://github.com/sraoss/pg_ivm</a></p> 

<https://www.postgresql.org/about/news/pg_ivm-19-released-2902/>

---

## Announcing postgres-contrib.org | Contributions to PostgreSQL

date: 2024-07-31, from: PostgreSQL News

<p>We are pleased to announce <a href="https://postgres-contrib.org/">postgres-contrib.org</a>, a new website started in July 2024 by members of the PostgreSQL community, highlighting contributions to the project by the amazing people standing behind it.</p>
<p>Many contributions to and for the PostgreSQL Project happen outside of writing code. This was the topic of the <a href="https://wiki.postgresql.org/wiki/PGConf.dev_2024_Developer_Unconference#Increase_Community_Participation">Increase Community Participation</a> session at <a href="https://wiki.postgresql.org/wiki/PGConf.dev_2024">PGConf.dev 2024</a>.<br>
<a href="https://postgres-contrib.org/">postgres-contrib.org</a> has weekly posts listing contributions, but they will likely not be complete — if you spot something which is worth noticing, please contact us by <a href="mailto:info@postgresql.life">email</a>.  </p>
<p>The following people contributed to this list, and the general idea: <a href="https://mastodon.social/@ascherbaum">Andreas Scherbaum</a>, <a href="https://mastodon.world/@tchorix">Boriss Mejías</a>, <a href="https://postgresql.life/post/chris_ellis/">Chris Ellis</a>, <a href="https://postgresql.life/post/floor_drees/">Floor Drees</a>, <a href="https://postgresql.life/post/jimmy_angelakos/">Jimmy Angelakos</a> and <a href="https://postgresql.life/post/pavlo_golub/">Pavlo Golub</a>.</p> 

<https://www.postgresql.org/about/news/announcing-postgres-contriborg-contributions-to-postgresql-2897/>

---

## PGConf NYC 2024 Schedule Announced!

date: 2024-07-31, from: PostgreSQL News

<p><a href="https://2024.pgconf.nyc/">PGConf NYC 2024</a> (September 30 - October 2, 2024, New York City) is packed with
user stories and best practices for how to use <a href="https://www.postgresql.org">PostgreSQL</a>. <a href="https://2024.pgconf.nyc/">Join us in New York City</a> and connect with other developers, DBAs, administrators, decisions makers, and contributors to the open source PostgreSQL community! We're expecting to sell out - we're not just saying that - so please <a href="https://2024.pgconf.nyc/tickets/">register today</a> to secure your spot!</p>
<p>The <a href="https://postgresql.us/events/pgconfnyc2024/schedule/">schedule</a> is now available! You can see the schedule here:</p>
<p><a href="https://postgresql.us/events/pgconfnyc2024/schedule/">https://postgresql.us/events/pgconfnyc2024/schedule/</a></p>
<p>PGConf NYC 2024 also has lots of content relevant to <a href="https://postgresql.us/events/pgconfnyc2024/schedule/">how you're running PostgreSQL</a>, including case studies on managing large fleets and workloads on PostgreSQL, how to improve your query performance, hot topics like the intersection of AI and databases, different ways to minimize your downtime, and learning about upcoming PostgreSQL features!</p>
<p><a href="https://2024.pgconf.nyc/">PGConf NYC 2024</a> is not possible without the <a href="https://2024.pgconf.nyc/sponsors/">generous support of our sponsors</a>. PGConf NYC takes place in one of the largest markets of PostgreSQL users. Your sponsorship lets you connect with decision makers, developers, DBAs, and PostgreSQL contributors, helps keep ticket prices low, and helps grow the PostgreSQL community. We have sold out our Platinum and Gold sponsorships, but we still have other sponsorships available. For more information on <a href="https://2024.pgconf.nyc/sponsors/">sponsorship</a>, please visit the below link:</p>
<p><a href="https://2024.pgconf.nyc/sponsors/">https://2024.pgconf.nyc/sponsors/</a></p>
<p>Can't wait to participate in PGConf NYC 2024? <a href="https://2024.pgconf.nyc/tickets/">Registration</a> is available:</p>
<p><a href="https://2024.pgconf.nyc/tickets/">https://2024.pgconf.nyc/tickets/</a></p>
<p>We look forward to seeing you in New York!</p> 

<https://www.postgresql.org/about/news/pgconf-nyc-2024-schedule-announced-2903/>

---

## This game would be perfect if it wasn't gacha

date: 2024-07-31, from: Ze Iaso's blog

TL;DR: Zenless Zone Zero is a fantastic game that's ruined by its gacha system. It's a shame that it's a gacha game, because it's so good otherwise. 8/10 

<https://xeiaso.net/videos/2024/zzz-review/>

---

## Design ain’t a democracy

date: 2024-07-30, updated: 2024-07-30, from: Robin Rendle Essays

 

<https://robinrendle.com/notes/design-aint-a-democracy/>

---

##  An extensive history of Birdo&#8217;s gender (according to her Nintendo appearances). &#8220;If... 

date: 2024-07-30, updated: 2024-07-30, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045039-an-extensive-history-of-b>

---

##  Abortion: Our Bodies, Their Lies, and the Truths We Use to Win... 

date: 2024-07-30, updated: 2024-07-30, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045037-abortion-our-bodies-their>

---

##  Clive Thompson writes about the influence of BASIC (&#8220;the most consequential language... 

date: 2024-07-30, updated: 2024-07-30, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045035-clive-thompson-writes-abo>

---

## NASA Sets Coverage for Northrop Grumman’s 21st Station Resupply Launch

date: 2024-07-30, from: NASA breaking news

NASA, Northrop Grumman, and SpaceX are targeting 11:28 a.m. EDT on Saturday, Aug. 3, for the next launch to deliver science investigations, supplies, and equipment to the International Space Station. This launch is the 21st Northrop Grumman commercial resupply services mission to the orbital laboratory for the agency. NASA’s live launch coverage will begin at [&#8230;] 

<https://www.nasa.gov/news-release/nasa-sets-coverage-for-northrop-grummans-21st-station-resupply-launch/>

---

##  A nationwide study of young people in South Korea found a significant... 

date: 2024-07-30, updated: 2024-07-30, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045033-a-nationwide-study-of-you>

---

## When not to LLM

date: 2024-07-30, from: John Udell blog

Here&#8217;s the latest installment in the series on working with LLMS: https://thenewstack.io/choosing-when-to-use-or-not-use-llms-as-a-developer/ For certain things, the LLM is a clear win. If I’m looking at an invalid blob of JSON that won’t even parse, there’s no reason to avoid augmentation. My brain isn’t a fuzzy parser — I’m just not wired to see that kind &#8230; <a href="https://blog.jonudell.net/2024/07/30/when-not-to-llm/" class="more-link">Continue reading <span class="screen-reader-text">When not to LLM</span></a> 

<https://blog.jonudell.net/2024/07/30/when-not-to-llm/>

---

##  For the first time, wind & solar generated more of the EU&#8217;s... 

date: 2024-07-30, updated: 2024-07-30, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045036-for-the-first-time-wind-1>

---

## Overview for NASA’s Northrop Grumman 21st Commercial Resupply Mission

date: 2024-07-30, from: NASA breaking news

NASA, Northrop Grumman, and SpaceX are targeting no earlier than 11:28 a.m. EDT on Saturday, Aug. 3, for the next launch to deliver scientific investigations, supplies, and equipment to the International Space Station. Filled with more than 8,200 pounds of supplies, the Cygnus cargo spacecraft, carried on the SpaceX Falcon 9 rocket, will launch from Space Launch Complex 40 at Cape Canaveral Space Force Station in Florida. This launch is the 21st Northrop Grumman commercial resupply services mission to the orbital laboratory for the agency. 

<https://www.nasa.gov/general/overview-for-nasas-northrop-grumman-21st-commercial-resupply-mission/>

---

##  An explainer of the conservatives&#8217; plan for women in America. &#8220;If enacted,... 

date: 2024-07-30, updated: 2024-07-30, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045038-an-explainer-of-the-conse>

---

## BitTorrent Apps in AltStore PAL

date: 2024-07-30, from: Michael Tsai

Jess Weatherbed: Specifically, the new additions include iTorrent, an iOS torrent client that can be used without jailbreaking iPhones or iPads, and qBitControl, a qBittorrent remote client for iOS devices. PeopleDrop is a dating-focused &#8220;social discovery platform&#8221; that connects you with other users in the real world as they pass by. Hartley Charlton: Apple has [&#8230;] 

<https://mjtsai.com/blog/2024/07/30/bittorrent-apps-in-altstore-pal/>

---

## Spain Investigates App Store

date: 2024-07-30, from: Michael Tsai

Hartley Charlton: Spain&#8217;s competition authority has launched an investigation into Apple&#8217;s App Store over potential anti-competitive practices that could result in hefty fines (via Reuters).[&#8230;]If the CNMC&#8217;s investigation confirms these allegations, Apple could face fines up to 10% of its global annual turnover, potentially amounting to billions of euros. The inquiry, which may take up [&#8230;] 

<https://mjtsai.com/blog/2024/07/30/spain-investigates-app-store/>

---

## Social Media AI Training

date: 2024-07-30, from: Michael Tsai

C. Scott Brown: Meta is now scraping Facebook posts to train its AI model. While this isn&#8217;t surprising on its own, what is surprising is just how difficult Meta is making it for users to opt out of this process. Via X Daily News: Instagram is training AI on your data but makes it nearly [&#8230;] 

<https://mjtsai.com/blog/2024/07/30/social-media-ai-training/>

---

##  Speed jigsaw-puzzle competitions are a thing&#8230;and the mindet required seems the same... 

date: 2024-07-30, updated: 2024-07-30, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045034-speed-jigsaw-puzzle-compe>

---

## Repair Kit for NASA’s NICER Mission Heading to Space Station

date: 2024-07-30, from: NASA breaking news

NASA will deliver a patch kit for NICER (Neutron star Interior Composition Explorer), an X-ray telescope on the International Space Station, on the agency’s Northrop Grumman 21st commercial resupply mission. Astronauts will conduct a spacewalk to complete the repair. Located near the space station’s starboard solar array, NICER was damaged in May 2023. The mission […] 

<https://science.nasa.gov/missions/station/iss-research/nicer/repair-kit-for-nasas-nicer-mission-heading-to-space-station/>

---

## Ames Science Directorate’s Stars of the Month, July 2024

date: 2024-07-30, from: NASA breaking news

The NASA Ames Science Directorate recognizes the outstanding contributions of (pictured left to right) Ryan T. Scott, Mike Kubo, Ehsan (Sam) Gharib-Nezhad, and Kristen Okorn. Their commitment to the NASA mission represents the talent, camaraderie, and vision needed to explore this world and beyond. Space Biosciences Star: Ryan T. Scott Ryan Scott, a Space Biosciences [&#8230;] 

<https://www.nasa.gov/general/ames-science-directorates-stars-of-the-month-july-2024/>

---

## Sols 4259-4260: Kings Canyon Go Again!

date: 2024-07-30, from: NASA breaking news

Earth planning date: Monday, July 29, 2024 Our weekend drill preload test on the target “Kings Canyon” (shown in the accompanying MAHLI image) didn’t give us the full range of data we need to move forward with the full drilling process. This coming Wednesday, we hope to rerun our preload test on Kings Canyon or somewhere […] 

<https://science.nasa.gov/blogs/sols-4259-4260-kings-canyon-go-again/>

---

## Optimizing the Number Row and Numpad Layouts

date: 2024-07-30, from: Tilde.news

<p><a href="https://tilde.news/s/zkiscv/optimizing_number_row_numpad_layouts">Comments</a></p> 

<https://old.reddit.com/r/KeyboardLayouts/comments/j4vt1s/optimizing_the_number_row_essay_script/>

---

## Improving Open Library’s Translation Pipeline

date: 2024-07-30, from: Open Library Blog

A forward by Drini CamiDrini Cami here, Open Library staff developer. It&#8217;s my pleasure to introduce Rebecca Shoptaw, a 2024 Open Library Engineering Fellow, to the Open Library blog in her first blog post. Rebecca began volunteering with us a few months ago and has already made many great improvements to Open Library. I&#8217;ve had [&#8230;] 

<https://blog.openlibrary.org/2024/07/30/improving-open-librarys-translation-pipeline/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-30, from: Miguel de Icaza Mastondon feed)

<p>With 208,000 pictures I suspect I am not going to get to play with this new feature any time soon:</p> 

<https://mastodon.social/@Migueldeicaza/112876380763612814>

---

## GLOBE Alumna and Youth for Habitat Program Lead Named Scientist of the Month in Alaska

date: 2024-07-30, from: NASA breaking news

As a 16-year old high school graduate, Maggie House decided to leave the military base in Germany where she lived with her family and go to college close to nature in Fairbanks, Alaska. She had lived in many countries and US states and knew she was ready. At the University of Alaska Fairbanks Troth Yeddha’ […] 

<https://science.nasa.gov/learning-resources/science-activation/globe-alumna-and-youth-for-habitat-program-lead-named-scientist-of-the-month-in-alaska/>

---

**@Dave Winer's Scripting News** (date: 2024-07-30, from: Dave Winer's Scripting News)

The <a href="https://this.how/podcast0/">Podcast0</a> project is teaching me how to read the archive of my own blog. Until now I had not carefully read the story I tell on my blog more than a few days after it happened. Here's I'm learning to reconstruct the summer of 2004, one of the most creative periods of my life, at least that's viewable in such a public and preserved way. Am I the first to do this for any blog? If you know of an example of historic research done using the archive of a blog, please send me a note. I'd love to learn about what you learned! Also because of its longevity and continuity, I offer <a href="http://scripting.com/2024/07/25.html">this blog</a> as some kind of record of what happened in the last 30 years or so. I see it as a complete work of writing, a kind of <a href="https://en.wikipedia.org/wiki/Fresco">fresco</a> writing. 

<http://scripting.com/2024/07/30.html#a155728>

---

**@Dave Winer's Scripting News** (date: 2024-07-30, from: Dave Winer's Scripting News)

I said on <a href="http://scripting.com/2024/07/25.html">Thursday</a> that Biden's speech last Wednesday had the potential to be a <a href="https://en.wikipedia.org/wiki/Gettysburg_Address">Gettysburg</a> address, if it the United States turns back toward democracy and government of the people, by the people and for the people. Biden has the potential of being as great a president as Lincoln. Let that settle in for a moment. I get goosebumps when I think about it. If he hadn't taken that stand, he could have become known as the US equivalent of <a href="https://en.wikipedia.org/wiki/Wilhelm_II#Life_in_exile">Kaiser Wilhelm</a>. 

<http://scripting.com/2024/07/30.html#a155257>

---

##  Extended Trailer for The Rings of Power Season Two 

date: 2024-07-30, updated: 2024-07-30, from: Jason Kottke blog

 

<https://kottke.org/24/07/extended-trailer-for-the-rings-of-power-season-two>

---

## Childless vs childful

date: 2024-07-30, from: Dave Winer's Scripting News

<p>Notes accumulated during the day -- not in any particular order. <span class="spOldSchoolEmoji">😄</span></p>
<p>I keep a solid line between my personal life and blogging, learned the hard way. When I started blogging in 1994, I didn't have such a solid line, and found that I couldn't have a personal life if I made it public. But now I want to reveal something. I am "childless" which is a term I find pretty insulting, as if being child<i>ful</i> is the only normal state of being. </p>
<p>I find, in general childful people are not great friends or family members. They want special privileges and they often get them. If childful vs childless is going to be an issue in this campaign, I say -- bring it on. We should have this discussion. </p>
<p>I'm often tempted to offer advice to the parents, but I won't offer it unless asked, except this. If you have children, there's a good chance one or more of them will not have children, and you should love them the same, and provide models of acceptance while they're growing up, by bringing childless people into your home, so the kids know that this is one of the legitimate choices in life, offering proof that you won't love them any less if they go down that path. And here's the hard part, imho, for people with children -- <i>keep that promise. </i></p>
<p>BTW, people say it's seflish to not have children, but I don't agree, in fact I think it's the opposite. There was a point in human evolution where the struggle to survive for our species was fed by procreation, but some time in the last hundred years we crossed a line, where increasing human population worked against species survival. Our understanding of the meaning of procreating, like so much else about our civilization, has not yet caught up with the current reality. </p>
 

<http://scripting.com/2024/07/30/154518.html?title=childlessVsChildful>

---

## NASA’s DART Mission Sheds New Light on Target Binary Asteroid System

date: 2024-07-30, from: NASA breaking news

In studying data collected from NASA’s DART (Double Asteroid Redirection Test) mission, which in 2022 sent a spacecraft to intentionally collide with the asteroid moonlet Dimorphos, the mission’s science team has discovered new information on the origins of the target binary asteroid system and why the DART spacecraft was so effective in shifting Dimorphos’ orbit.  In five recently […] 

<https://science.nasa.gov/missions/dart/nasas-dart-mission-sheds-new-light-on-target-binary-asteroid-system/>

---

##  Germans are installing &#8220;plug-and-play&#8221; solar panels to decrease their electric bills. &#8220;You... 

date: 2024-07-30, updated: 2024-07-30, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045031-germans-are-installing-pl>

---

## Fixing curl install failures with Ansible on Red Hat-derivative OSes

date: 2024-07-30, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Fixing curl install failures with Ansible on Red Hat-derivative OSes</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p>Over the past few months, I've noticed some of my automation failing on Red Hat-derivative OSes like Rocky Linux and AlmaLinux. The reason for this has to do with the inclusion of a <code>curl-minimal</code> package in some distros, which conflicts with <code>curl</code> if you try installing the full package.</p>

<p>Unfortunately, the fix for this is a little strange, and so only ends up in Ansible's <a href="https://docs.ansible.com/ansible/latest/collections/ansible/builtin/dnf_module.html">dnf</a> module, not in the more cross-compatible <a href="https://docs.ansible.com/ansible/latest/collections/ansible/builtin/package_module.html">package</a> module.</p>

<p>The error I was seeing is like:</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-07-30T09:40:50-05:00" title="Tuesday, July 30, 2024 - 09:40" class="datetime">July 30, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/fixing-curl-install-failures-ansible-on-red-hat-derivative-oses>

---

## ‘Metaphysical Experiments’ Probe Our Hidden Assumptions About Reality

date: 2024-07-30, from: Quanta Magazine

Experiments that test physics and philosophy "as a single whole" may be our only route to surefire knowledge about the universe.            <p>The post <a href="https://www.quantamagazine.org/metaphysical-experiments-test-hidden-assumptions-about-reality-20240730/" target="_blank">‘Metaphysical Experiments’ Probe Our Hidden Assumptions About Reality</a> first appeared on <a href="https://api.quantamagazine.org" target="_blank">Quanta Magazine</a></p> 

<https://www.quantamagazine.org/metaphysical-experiments-test-hidden-assumptions-about-reality-20240730/>

---

## Hacking Pi firmware to get the fastest overclock

date: 2024-07-30, from: Jeff Geerling blog

<span class="field field--name-title field--type-string field--label-hidden">Hacking Pi firmware to get the fastest overclock</span>

            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><p><img width="700" height="auto" class="insert-image" src="https://www.jeffgeerling.com/sites/default/files/images/raspberry-pi-5-smoky-overclock.jpeg" alt="Raspberry Pi 5 with dry ice smoke surrounding it"></p>

<p>Since boosting my Pi 5 from the default 2.4 GHz clock to <a href="https://www.jeffgeerling.com/blog/2024/raspberry-pi-5-can-overclock-314-ghz">3.14 GHz on Pi Day</a>, I've wanted to go faster. Especially since many other users have topped my Geekbench scores since then :)</p>

<p>In March, Raspberry Pi introduced new firmware that unlocked frequencies above 3,000 MHz for overclocking. This summer, <a href="https://www.jeffgeerling.com/blog/2024/numa-emulation-speeds-pi-5-and-other-improvements">NUMA Emulation patches</a> boosted performance another 5-10% through memory access optimizations.</p>

<p>But even with a <a href="https://www.reddit.com/r/overclocking/comments/3d1y4j/comment/ct1sk4e/?utm_source=share&amp;utm_medium=web3x&amp;utm_name=web3xcss&amp;utm_term=1&amp;utm_content=share_button">golden sample</a> Pi 5, I haven't seen anybody go much beyond 3.1 or 3.2 GHz. The problem seemed to be power supply—the Pi's firmware limits the SoC to a maximum of 1.000V.</p></div>
      <span class="field field--name-uid field--type-entity-reference field--label-hidden"><span>Jeff Geerling</span></span>
<span class="field field--name-created field--type-created field--label-hidden"><time datetime="2024-07-30T09:02:57-05:00" title="Tuesday, July 30, 2024 - 09:02" class="datetime">July 30, 2024</time>
</span> 

<https://www.jeffgeerling.com/blog/2024/hacking-pi-firmware-get-fastest-overclock>

---

**@Dave Winer's Scripting News** (date: 2024-07-30, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/18/patrioticKitty.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Like 193K others I tuned into <a href="https://apnews.com/article/harris-supporters-by-ethnic-background-white-dudes-b474af62f6b225c71cde16be7e9eb077">White Dudes For Harris</a> last night. Please, let that be the last time we do that. I felt like it might as well have been <i>Slave Owners for Harris</i> or <i>Reformed Republicans for Harris.</i> I don't have anything against people of my gender and approximate race, but I also am a child of Holocaust survivors, and I happen to be one of the elites the Repubs claim to hate, and also am one of at least two castes that Democrats tend to blame for all our problems (other than White Dudes). I think we've done enough segregation for one campaign, now please please I beg you, let's <i>work together,</i> regardless of labels, to save the country we all love. I have a philosophy, I don't care how you got to the party, if you took a subway, walked, rode a bike, or came by Uber or a Cadillac limousine. We all got here, and have a common purpose, so lets all love each other and party our way to victory. Regardless of race, creed, color or whatever. 

<http://scripting.com/2024/07/30.html#a123918>

---

## A Gold Medal Caption

date: 2024-07-30, updated: 2024-07-30, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/07/30/a-gold-medal-caption/>

---

**@Ayjay blog** (date: 2024-07-30, from: Ayjay blog)

The story of the Nisei linguists — who served in the Second World War as translators, interpreters, and intelligence officers, while their parents were imprisoned in internment camps — is a remarkable one. James C. McNaughton’s book about them is available as a PDF here. 

<https://blog.ayjay.org/46570-2/>

---

## 2024-07-30 Fight On! Magazine #15

date: 2024-07-30, from: Alex Schroeder's Blog

<h1 id="2024-07-30-fight-on-magazine-15">2024-07-30 Fight On! Magazine <a class="tag" href="/search/?q=%2315">#15</a></h1>

<p>Pretty amazing news:</p>

<blockquote>
<p>After ten long years we are back to <em>Fight On!</em> once more!</p>
</blockquote>

<p>And it includes the <a href="Caverns_of_Slime">Caverns of Slime</a>! So now there&rsquo;s a way to get them in <a href="http://www.lulu.com/shop/ignatius-umlaut/fight-on-15/paperback/product-65qpr2w.html">print</a> and <a href="http://www.lulu.com/shop/ignatius-umlaut/fight-on-15-pdf-edition/ebook/product-84kg7gz.html">PDF</a>, together with a lot of other good stuff.</p>

<p>Table of Contents:</p>

<ul>
<li>Ten Ways to Holmesify your Game (Zach Howard) 3</li>
<li>Special Ability Charts (Attronarch) 4</li>
<li>The Orthogonal Dwarf (Olle Skogren) 11</li>
<li>Gremlins! (Calithena) 14</li>
<li>Maze Master’s Miscellany (Alex Schroder &amp; Cal) 15</li>
<li>The Catacombs under Old Samora (Philipp H.) 17</li>
<li>Knights &amp; Knaves: Holmes Town Heroes (Tony A. Rowe) 28</li>
<li>Bringing It All Back Holmes (Clark/Grodog/Cal) 30</li>
<li>Maps from the Maze of Peril (J. Eric Holmes) 34</li>
<li>Distributary of Darkness (Alex Zisch) 36</li>
<li>The Silken See (Motley Dice) 37</li>
<li>Grognard’s Grimoire (Richard Rittenhouse) 41</li>
<li>The Wizard’s Satchel (J. Blasso-Gieseke) 43</li>
<li>Artifacts, Adjuncts, and Oddments (Rittenhouse) 44</li>
<li>Victory or Death! (Gabor Lux) 46</li>
<li>Megadungeon Workshop Extravaganza! (Kesher) 50</li>
<li>Calvero! (István Boldog-Bernád) 53</li>
<li>Creepies &amp; Crawlies (James Maliszewski) 61</li>
<li>Tables for Fables (Al, Greco, Wetzel, and Rients) 63</li>
<li>The Darkness Beneath (Alex Schroder &amp; Lior Wehrli) 68</li>
<li>Henchmen-Я-Us: Pole Arm Caddies! (Calithena) 91</li>
<li>Chainmail: Battle for Bronzolo (Settembrini) 92</li>
<li>Doxy, Urgent Care Cleric (Linneman &amp; Green) 98</li>
<li>Education of a Magic User (Douglas Cox) 99</li>
<li>Wham! (Tom Gordon) 100</li>
</ul>

<p>Front cover by Tom Gordon (facebook.com/tgordo). Back cover by Mitzi! Fight On! logo by Jeff Rients. J. Eric Holmes photo by Steve Pyryezstov. Images by Germille (2), Cameron Hawkey (cameronhawkey.com; 3, 25, 29, 33, 40, 92, 97), Allan T. Grohe Jr. (greyhawkonline.com/grodog; 6), Peter Mullen (instagram.com/pmullenillustrations; 10, 40), J. Blasso-Gieseke (charybdispress.com; 11, 64), Micheal Russell (12, 94), Black Blade Publishing (facebook.com/blackbladepublishing; 14, 49), Patrick Farley (15, retro 16, 67), Philipp H. (18), Philipp Knopp (21, 22), Gabor Lux (beyondfomalhaut.blogspot.com; 27), Justin Russell (32), Jean-Francois Beaulieu (32), Chris Holmes (33), J. Eric Holmes (34, 35), Alex Zisch (36, 44), Motley Dice (motleydice.net; 37, 38, 39), Ed Heil (edheil@fastmail.fm; 38), John Tenniel (40), Mac Teg (macteg.com, 45, 63), Raymond Perry (46, 47), The Antique Alumni (47, 48), Pacesetter Games (pacesettergames.com; 49), The Dead Victorians (54, 55, 56, 58), István Boldog-Bernád (57, 59), Jason Sholtis (roll1d12@blogspot.com; 61, 62), Zhu Bajiee (realmofzhu@blogspot.com; 61. 62, 63), Robert S. Conley (68), Ndege Diamond (70,80), Alex Schroder (71, 79, 81), Kelvin Green (kelvingreen.blogspot.com; 82, 91, 98), Anthony Stiller (83), Niel-Jan Que (89), Settembrini (93) Knights &amp; Knaves and Creepies &amp; Crawlies logos by Lee Barber. Tables for Fables logo derived from one by Age of Fable.</p>

<p><a class="tag" href="/search/?q=%23RPG">#RPG</a> <a class="tag" href="/search/?q=%23Fight_On">#Fight On</a> <a class="tag" href="/search/?q=%23Caverns_of_Slime">#Caverns of Slime</a></p> 

<https://alexschroeder.ch/view/2024-07-30-fight-on>

---

## Latest update for 'extremely fast' compression algorithm LZ4 sprints past old versions

date: 2024-07-30, updated: 2024-07-30, from: Liam Proven's articles at the Register

<h4>New release does something you might have thought it already did</h4>
      <p>The new version of the high-speed compression algorithm LZ4 gets a big speed boost – nearly an order of magnitude.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/07/30/lz4_gets_much_faster/>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-30, from: Miguel de Icaza Mastondon feed)

<p>Watching Dark for the third time, this time with my 11yo.</p><p>Finding all sorts of jewels I missed the first two times.</p> 

<https://mastodon.social/@Migueldeicaza/112873113192821376>

---

**@Dave Winer's Scripting News** (date: 2024-07-30, from: Dave Winer's Scripting News)

Like <a href="https://en.wikipedia.org/wiki/Cholesterol">cholesterol</a>, there's "good weird" and "bad weird." I <a href="https://www.threads.net/@davew/post/C-AoGfspfFB">think</a> we all know which kind of <a href="https://www.salon.com/2024/07/29/old-and-quite-weird-democrats-finally-discover-new-effective--and-hate-it/">weird</a> the Repubs are. 

<http://scripting.com/2024/07/29.html#a004743>

---

**@Tomosino's Mastodon feed** (date: 2024-07-30, from: Tomosino's Mastodon feed)

<p>Just saw Deadpool. Absolutely loved it. No spoilers from me, but stay till the very end of the credits for the post credit scene. The bit earlier on isn't it.</p> 

<https://tilde.zone/@tomasino/112872507235577567>

---

## Misfire

date: 2024-07-30, updated: 2024-07-30, from: Alex Russel's blog

 

<https://infrequently.org/2024/07/misfire/>

---

## "No way to prevent this" say users of only language where this regularly happens

date: 2024-07-30, from: Ze Iaso's blog

 

<https://xeiaso.net/shitposts/no-way-to-prevent-this/CVE-2024-5535/>

---

## Schedule and Cross-Post with Buffer

date: 2024-07-30, from: Bluesky web news

We're thrilled to announce that Bluesky has partnered with Buffer, a social media toolkit with scheduling and cross-posting features. 

<https://bsky.social/about/blog/07-30-2024-schedule-and-crosspost-with-buffer>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-29, from: Miguel de Icaza Mastondon feed)

<p>When you are an Apple developer every day is Christmas!  ”I hope it doesn’t destroy all my data” edition.</p> 

<https://mastodon.social/@Migueldeicaza/112872428454357601>

---

##  Drum Beat Typography 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kottke blog

 

<https://kottke.org/24/07/drum-beat-typography>

---

##  Ran across this hilariously nonsensical gymnastics commentary by Joe Tracini this morning... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045030-ran-across-this-hilarious>

---

## NASA to Highlight 13th Space Station Research, Development Conference

date: 2024-07-29, from: NASA breaking news

Editor&#8217;s Note: This media advisory was updated on July 29, 2024 to reflect the updated times for the Low Earth Orbit panel on Wednesday, July 31 and the keynote address on Thursday, Aug. 1. NASA will broadcast groundbreaking discoveries, benefits for humanity, and how the agency and its commercial and international partners are maximizing research [&#8230;] 

<https://www.nasa.gov/news-release/nasa-to-highlight-13th-space-station-research-development-conference/>

---

## Sols 4257-4258: A Little Nudge on Kings Canyon

date: 2024-07-29, from: NASA breaking news

Earth planning date: Friday, July 26, 2024 Today’s 2-sol weekend plan is our first taste of a new location for a potential sampling campaign. We call today’s plan type: Drill Sol 1 – triage contact science. We arrived this morning to a lovely new workspace. The science team has been eagerly observing these lighter-toned rocks […] 

<https://science.nasa.gov/blogs/sols-4257-4258-a-little-nudge-on-kings-canyon/>

---

## Sols 4255-4256: Just Passing Through

date: 2024-07-29, from: NASA breaking news

Earth planning date: Wednesday, July 24, 2024 Happy Wednesday, terrestrials! We wrapped up our Mammoth Lakes drill campaign only three weeks ago and are already looking for our next drill site. This will be the last drill campaign in the Gediz Vallis region, an area on Mars the Curiosity team has had their eyes on since sol […] 

<https://science.nasa.gov/blogs/sols-4255-4256-just-passing-through/>

---

## 60 Years Ago: Ranger 7 Photographs the Moon

date: 2024-07-29, from: NASA breaking news

Long before Apollo astronauts set foot upon the Moon, much remained unknown about the lunar surface. While most scientists believed the Moon had a solid surface that would support astronauts and their landing craft, some believed a deep layer of dust covered it that would swallow any visitors. Until 1964, no closeup photographs of the [&#8230;] 

<https://www.nasa.gov/history/60-years-ago-ranger-7-photographs-the-moon/>

---

## The First Apple Intelligence Beta

date: 2024-07-29, from: Michael Tsai

Joe Rossignol: Apple Intelligence is still not available as of the fourth developer beta of iOS 18 this week, leading some to wonder if the features have been delayed. However, we have confirmed that Apple still plans to add some of the new Apple Intelligence features to an upcoming beta this summer. Matthew Cassinelli: I [&#8230;] 

<https://mjtsai.com/blog/2024/07/29/the-first-apple-intelligence-beta/>

---

## Magic Lasso Redesigned

date: 2024-07-29, from: Michael Tsai

Matthew Bickham: Under the covers, Magic Lasso has been re-architected using SwiftUI which enables a shared but tailored UI implementation across the iPhone, iPad and Mac apps. The move to SwiftUI delivers improved user accessibility including complete support for variable type sizing and Dark mode. In the future, multilingual support will also be considerably easier [&#8230;] 

<https://mjtsai.com/blog/2024/07/29/magic-lasso-redesigned/>

---

## Actor Reentrancy in Swift

date: 2024-07-29, from: Michael Tsai

Donny Wals (Mastodon): When you start learning about actors in Swift, you&#8217;ll find that explanations will always contain something along the lines of &#8220;Actors protect shared mutable state by making sure the actor only does one thing at a time&#8221;. As a single sentence summary of actors, this is great but it misses an important [&#8230;] 

<https://mjtsai.com/blog/2024/07/29/actor-reentrancy-in-swift/>

---

##  Parker or Driver? 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kottke blog

 

<https://kottke.org/24/07/parker-or-driver>

---

## NASA Embraces Streaming Service to Reach, Inspire Artemis Generation

date: 2024-07-29, from: NASA breaking news

As part of its ongoing web and television modernization efforts, NASA is shifting its digital focus to its on-demand streaming service, NASA+, which has already gained four times more viewership than the agency’s traditional cable channel. To streamline how it brings the latest aeronautics, human spaceflight, science, and technology news to the universe, the agency [&#8230;] 

<https://www.nasa.gov/general/nasa-embraces-streaming-service-to-reach-inspire-artemis-generation/>

---

## Visit with NASA SCaN

date: 2024-07-29, from: NASA breaking news

Interested in having a NASA SCaN expert speak to your class or group? The SCaN program is accepting requests for visits (both virtual and in-person) during the coming calendar year. Request a virtual visit below. Request a visit with the SCaN team at: NASA Glenn NASA Goddard NASA&#8217;s Jet Propulsion Laboratory Social Media Stay connected [&#8230;] 

<https://www.nasa.gov/general/visit-with-nasa-scan/>

---

## PLACES team publishes blog post on NextGenScience Blog

date: 2024-07-29, from: NASA breaking news

The NASA Science Activation program’s PLACES (Broadening Data Fluency Through the Integration of NASA Assets and Place-Based Learning to Advance Connections, Education, and Stewardship) team – which focuses on supporting educators to implement Place-Based, Data-Rich (PBDR) instruction using NASA assets in their own contexts – recently published a blog post about the PLACES PBDR framework […] 

<https://science.nasa.gov/learning-resources/science-activation/places-team-publishes-blog-post-on-nextgenscience-blog/>

---

## Peekaboo!

date: 2024-07-29, from: NASA breaking news

In this image from May 4, 2017, a rabbit is nearly obscured by grass at NASA’s Kennedy Space Center in Florida. Kennedy shares a border with the Merritt Island Wildlife Refuge, which is home to over 31 mammal species and hundreds of bird, fish, amphibian, and reptile species. Kennedy is responsible for more protected species [&#8230;] 

<https://www.nasa.gov/image-article/peekaboo/>

---

##  How Democracy Happens: First Gradually and Then Suddenly 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kottke blog

 

<https://kottke.org/24/07/how-democracy-happens-first-gradually-and-then-suddenly>

---

##  Lithub: The Republicans&#8217; Project 2025 is disastrous for books. &#8220;Project 2025 is... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045026-lithub-the-republicans-pr>

---

## NASA Offers Virtual Activities for 21st Northrop Grumman Resupply Mission

date: 2024-07-29, from: NASA breaking news

NASA invites the public to participate in virtual activities ahead of the launch of Northrop Grumman’s 21st commercial resupply services mission for the agency.&#160; Mission teams are targeting 11:28 a.m. EDT Saturday, Aug. 3, for the launch of the company’s Cygnus cargo spacecraft on a SpaceX Falcon 9 rocket from Space Launch Complex 40 at [&#8230;] 

<https://www.nasa.gov/missions/nasa-offers-virtual-activities-for-21st-northrop-grumman-resupply-mission/>

---

##  10 settings to tweak to increase iPhone battery life, including turning off... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045001-10-settings-to-tweak-to>

---

## oberon@gitlab.inf.ethz.ch pushed to project branch main at Felix Oliver Friedrich / Oberon A2

date: 2024-07-29, updated: 2024-07-29, from: Oberon A2 at CAS


<p>
<strong>oberon@gitlab.inf.ethz.ch</strong>
<a href="https://gitlab.inf.ethz.ch/felixf/oberon/-/commit/45a180eb68f092b24471bab97682d06a7c6d60ae">(45a180eb)</a>
<i>
at
29 Jul 17:36
</i>
</p>
<div class="blockquote"><p dir="auto">handle SYSTEM.VAL conversion and normal type conversion differently...</p></div>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/commit/45a180eb68f092b24471bab97682d06a7c6d60ae>

---

##  WWW: The Way We Were 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kottke blog

 

<https://kottke.org/24/07/www-the-way-we-were-1>

---

## Breaking the Cycle: Against the Militarization of Neuroscience Research

date: 2024-07-29, from: Logic Magazine


                <p>“Adoption of a critical perspective on funding choices is possible—even for faculty previously connected to US military systems—but it is more labor intensive, entailing work that all too often lies outside of the research infrastructure universities provide.”</p>

             

<https://logicmag.io/issue-21-medicine-and-the-body/on-the-militarization-of-computational-cognitive-science-and-neuroscience>

---

## Tech Explainer: Brain–Computer Interfaces and Neural Prosthetics

date: 2024-07-29, from: Logic Magazine


                <p>“The brain is the ultimate site of an individual’s identity, and implanted devices not only have access to it, but the potential to alter it.”</p>

             

<https://logicmag.io/issue-21-medicine-and-the-body/tech-explainer-brain-computer-interfaces-and-neural-prosthetics>

---

## NASA Data Shows July 22 Was Earth’s Hottest Day on Record

date: 2024-07-29, from: NASA breaking news

July 22, 2024, was the hottest day on record, according to a NASA analysis of global daily temperature data. July 21 and 23 of this year also exceeded the previous daily record, set in July 2023. These record-breaking temperatures are part of a long-term warming trend driven by human activities, primarily the emission of greenhouse [&#8230;] 

<https://www.nasa.gov/earth/nasa-data-shows-july-22-was-earths-hottest-day-on-record/>

---

##  Margaret Sullivan: &#8220;I urge news decision-makers to take Trump&#8217;s authoritarian desires very... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045024-margaret-sullivan-i-urge->

---

## Most people don’t think GenAI has improved their productivity

date: 2024-07-29, from: Gary Marcus blog

Damning new study from Upwork 

<https://garymarcus.substack.com/p/most-people-dont-think-genai-has>

---

##  &#8220;None of us knows if we can do this. And we are... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045023-none-of-us-knows-if>

---

**@Dave Winer's Scripting News** (date: 2024-07-29, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2022/01/21/handmaidsAndMan.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Here's a <a href="https://imgs.scripting.com/2024/07/29/twowaysofsupport.png">perfect illustration</a> how ChatGPT can improve customer relations. I bought an iPhone that I now don't need, and it's arriving today via FedEx. I wanted to know whether I should just refuse delivery, or accept it and then return it. Obviously it's easier for me to refuse. I asked ChatGPT and it gave me a detailed reply. Apple's chatbot saw it as a "technical" question and wasn't prepared to help. Sales support is one of those applications where cost is totally justified. A human helper would cost a lot more I imagine than a LLM chat system. I tried calling 1-800-CALL-APPLE and talked to a human who was very nice, but couldn't find anything in her manual about refusing delivery. 

<http://scripting.com/2024/07/29.html#a140845>

---

## Managing Heat

date: 2024-07-29, from: NASA breaking news

Science in Space: July 2024 This time of year, managing heat is on everyone’s mind. Especially now, as May 2024 marked a full year of record-high monthly temperatures – an unprecedented streak, according to scientists from NASA’s Goddard Institute for Space Studies in New York. NASA experts analyze data from thousands of land-, sea-, and [&#8230;] 

<https://www.nasa.gov/missions/station/managing-heat/>

---

**@Dave Winer's Scripting News** (date: 2024-07-29, from: Dave Winer's Scripting News)

Is there anyone here <a href="https://x.com/davewiner/status/1817913179789218236">within earshot</a> who is involved in doing the web stuff for the Harris campaign? 

<http://scripting.com/2024/07/29.html#a135108>

---

## Thoughts on politics and communities

date: 2024-07-29, from: Manu - I write blog


                <p>Kev has written about the topic of <a href="https://kevquirk.com/blog/politics-and-communities">politics and communities</a> on his blog and it was related to his recently announced <a href="https://kevquirk.com/blog/introducing-500-social">500.social</a> project. In his post, he mentioned blog posts written by <a href="https://baty.net">Jack</a> and <a href="https://nice-marmot.net">Dave</a>. If you’re interested in the full discussion go read the various blog posts, they’re all relatively short.</p>
<p>I’m not interested in commenting on the opinions expressed in those blog posts but I am interested in the source of the discussion, and that was a bullet list item in the 500.social <a href="https://about.500.social/#expectations">“Member expectations” section</a>.</p>
<blockquote>
<p>Posts about politics and religion should be avoided, if you strongly feel the urge to post about these topics, please put them behind a Content Warning Member expectations</p>
</blockquote>
<p>Years ago, during the COVID era, the 37signals company got into hot water online because they announced in an internal communication that they were going to ban “societal and political discussions” on their internal work chat. <a href="https://world.hey.com/jason/changes-at-basecamp-7f32afc5">The announcement is online</a> if you’re interested in reading it.</p>
<p>People online reacted in all sorts of ways to that news and many, many opinion pieces got published. I remember talking about it with a few people privately and had some interesting conversations around that topic. As you can see, years later, positions on topics such as politics and religion are still controversial in the context of online spaces.</p>
<p>Personally, I think the issue is not with politics, religion or any other topic. The problem is a mixture of expectations and the tools we use. In his post, Dave wrote:</p>
<blockquote>
<p>If there is a "public square" anymore, where we ought to be able to try to hash those things out, it seems to me that it's in those "small social networks," unless they're intended to be bespoke bubbles where it's all just happy talk and we never have difficult conversations.</p>
</blockquote>
<p>I don’t disagree that small communities are the space where those conversations can happen which is why I think no topic should be banned or be off limits. At the same time though, I do think that having conversations means something very different than posting a reactionary tweet to comment on a piece of news. That’s why people like Kev end up with rules against politics and religion. Because if you dig deeper, people don’t want to have a conversation on social media. They want to vent.</p>
<p>I think social media platforms, like Mastodon, are not designed to have conversations. You can have them on there, sure, but the experience is going to be sub-par. Social media is designed to be reactionary and generating reactions is different than having a conversation. What would Mastodon look like if everyone was forced to post at least 500 words? What would Mastodon look like if you could only post once an hour? The reason why some people, like Kev, end up with rules like that is because social media is an imperfect tool. I don’t have a no politics rule attached to my email address. People can write to me and talk about whatever they want. If they write about something I don’t care about I can simply ignore that topic and don’t engage in conversation which is exactly what happens in real life.</p>
<blockquote>
<p>What prompted me to consider joining 500.social was recalling the feeling I had when we learned that Biden had dropped out of the race. That's the sort of event that evokes an immediate, emotional response because of its significance to a broad range of people, presumably my "community."</p>
</blockquote>
<p>This is the perfect example of why I think social media is a flawed tool. Can you imagine doing the same in the phone era? Can you imagine reading a piece of news and start calling hundreds, potentially thousands of people simply to share what you think about some news? And can you imagine doing that with people who don’t even live in your country and couldn’t care less about that specific news? Now can you imagine if everyone was doing the same for the news that evoked a strong reaction to them? You’d quickly put your phone on airplane mode because there are only so many random opinions on news you can bear to listen to. I can have a 3 hours discussion about politics, I can’t listen 3 hours of soundbites.</p>
<p>The problem with social media and politics is that way too many people are interested in sharing what they think on social media but very few are interested in having actual, real discussions. Because blasting out a tweet takes 10 seconds while having an actual conversation might take hours and span days.</p>
<p>I’d love to know what you think about this whole situation though. Do you think some topics should be banned on social platforms? If you have opinions get in touch or even better write a blog post!</p>                <hr>
                <p>Thank you for keeping RSS alive. You're awesome.</p>
                <p><a href="mailto:hello@manuelmoreale.com">Email me</a> ::
                <a href="https://manuelmoreale.com/guestbook">Sign my guestbook</a> :: 
                <a href="https://ko-fi.com/manuelmoreale">Support for 1$/month</a> :: 
                <a href="https://manuelmoreale.com/supporters">See my awesome supporters</a> :: 
                <a href="https://buttondown.email/peopleandblogs">Subscribe to People and Blogs</a></p>
             

<https://manuelmoreale.com/@/page/jaNItxY78PjwUEcx>

---

## NASA, JAXA Bounce Laser Beam Between Moon’s Surface and Lunar Orbit

date: 2024-07-29, from: NASA breaking news

NASA’s LRO (Lunar Reconnaissance Orbiter) has twice transmitted a laser pulse to a cookie-sized retroreflector aboard JAXA’s (Japan Aerospace Exploration Agency) SLIM lander on the Moon and received a return signal. As LRO passed 44 miles above SLIM (Smart Lander for Investigating Moon) during two successive orbits on May 24, 2024, it pinged the lander […] 

<https://science.nasa.gov/solar-system/nasa-jaxa-bounce-laser-beam-between-moons-surface-and-lunar-orbit/>

---

##  Behind the scenes shots of iconic album covers, including those from Björk,... 

date: 2024-07-29, updated: 2024-07-29, from: Jason Kottke blog

 

<https://kottke.org/24/07/0045002-behind-the-scenes-shots-o>

---

## Microsoft’s CrowdStrike post-mortem

date: 2024-07-29, from: OS News

Microsoft has published a post-mortem of the CrowdStrike incident, and goes into great depths to describe where, exactly, the error lies, and how it could lead to such massive problems. I can&#8217;t comment anything insightful on the technical details and code they show to illustrate all of this &#8211; I&#8217;ll leave that discussion up to you &#8211; but Microsoft also spends considerable amount of time explaining why security vendors are choosing to use kernel-mode drivers. Microsoft lists three major reasons why security vendors opt for using kernel modules, and none of them will come as a great surprise to OSNews readers: kernel drivers provide more visibility into the system than a userspace tool would, there are performance benefits, and they&#8217;re more resistant to tampering. The downsides are legion, too, of course, as any crash or similar issue in kernel mode has far-reaching consequences. The goal, then, according to Microsoft, is to balance the need for greater insight, performance, and tamper resistance with stability. And while the company doesn&#8217;t say it directly, this is clearly where CrowdStrike failed &#8211; and failed hard. While you would want a security tool like CrowdStrike to perform as little as possible in kernelspace, and conversely as much as possible in userspace, that&#8217;s not what CrowdStrike did. They are running a lot of stuff in kernelspace that really shouldn&#8217;t be there, such as the update mechanism and related tools. In total, CrowdStrike loads four kernel drivers, and much of their functionality can be run in userspace instead. It is possible today for security tools to balance security and reliability. For example, security vendors can use minimal sensors that run in kernel mode for data collection and enforcement limiting exposure to availability issues. The remainder of the key product functionality includes managing updates, parsing content, and other operations can occur isolated within user mode where recoverability is possible. This demonstrates the best practice of minimizing kernel usage while still maintaining a robust security posture and strong visibility. Windows provides several user mode protection approaches for anti-tampering, like Virtualization-based security (VBS) Enclaves and Protected Processes that vendors can use to protect their key security processes. Windows also provides ETW events and user-mode interfaces like Antimalware Scan Interface for event visibility. These robust mechanisms can be used to reduce the amount of kernel code needed to create a security solution, which balances security and robustness. ↫ David Weston, Vice President, Enterprise and OS Security at Microsoft In what is surely an unprecedented event, I agree with the CrowdStrike criticism bubbling under the surface of this post-mortem by Microsoft. Everything seems to point towards CrowdStrike stuffing way more things in kernelspace than is needed, and as such creating a far larger surface for things to go catastrophically wrong than needed. While Microsoft obviously isn&#8217;t going to openly and publicly throw CrowdStrike under the bus, it&#8217;s very clear what they&#8217;re hinting at here, and this is about as close to a public flogging we&#8217;re going to get. Microsoft&#8217;s post-portem further details a ton of work Microsoft has recently done, is doing, and will soon be doing to further strenghthen Windows&#8217; security, to lessen the need for kernelspace security drivers even more, including adding support for Rust to the Windows kernel, which should also aid in mitigating some common problems present in other, older programming languages (while not being a silver bullet either, of course). 

<https://www.osnews.com/story/140356/microsofts-crowdstrike-post-mortem/>

---

## How to Strengthen Democracy in Three Unlikely-to-Be-Easy Steps

date: 2024-07-29, updated: 2024-07-29, from: One Foot Tsunami

 

<https://onefoottsunami.com/2024/07/29/how-to-strengthen-democracy-in-three-unlikely-to-be-easy-steps/>

---

## What we got wrong about HTTP imports

date: 2024-07-29, updated: 2024-07-29, from: Deno blog

Designing a module system around HTTP imports was ambitious. Here are some issues we encountered and how we solved for them. 

<https://deno.com/blog/http-imports>

---

## Earth to Gateway: Electric Field Tests Enhance Lunar Communication

date: 2024-07-29, from: NASA breaking news

Learn how engineers at NASA's Johnson Space Center are using electric field testing to optimize communications for the Gateway space station that will support Artemis exploration of the Moon. 

<https://www.nasa.gov/missions/artemis/gateway/earth-to-gateway-electric-field-tests-enhance-lunar-communication/>

---

## 2024-07-27 Tired of programming

date: 2024-07-29, from: Alex Schroeder's Blog

<h1 id="2024-07-27-tired-of-programming">2024-07-27 Tired of programming</h1>

<p>My summer break has begun, and I am tired.</p>

<p>I wanted to work on some sort of editor.
I contributed some lines to Anvil, an Acme-inspired editor, and then I figured I should go back to text editing because writing acceptable GUI editing is just sooo much effort. So now I’m trying to use ed again…
I&rsquo;m experimenting with using <code>rlwrap</code> around <code>ed</code> and it&rsquo;s not so bad if you&rsquo;re just writing, like writing an email.
But really writing, organizing, moving things around… it really doesn&rsquo;t work all that well.
I had imagined a sort of conversational UI – which I guess ed has? – if ed is your grumpiest of companions! – and I guess I was looking at my Oddmu site generator and Markdown file server and thinking: what sort of editor would I need to maintain this?
What sort of minimal SVG editing capabilities would be nice to have? That was my starting point.
Then I dropped the graphics because writing that seemed like a pain.
Then I started thinking about the GUI components: using fonts with Harfbuzz, Unicode support, hyphenation (per language), spell-checking (per language), and on and on.
It&rsquo;s too much.</p>

<p>But where does that leave me? Adding a few features to ed?
Am I in fact reinventing vi, badly?</p>

<p><a href="2024-06-01-editor">2024-06-01 Fonts are important</a>,
<a href="2024-06-13-anvil">2024-06-13 Anvil Editor and multiple cursors</a>,
<a href="2024-07-24-ed">2024-07-24 My ed, wondering</a></p>

<p>I wanted to work on a local Gridmapper variant, written in Common Lisp.
I already have a working prototype in Common Lisp and I already have a Javascript web application in production.
This is a single file, a stand-alone SVG+Javascript web application. It works online and offline.
Thus, my entire tinkering with CL right now has as its goal to produce a native application that would work without a browser.</p>

<p>Whenever I start working on native GUI stuff, like working with SDL2 or Cairo or similar libraries, my eyes start bleeding.
Vanilla JS and the browser really is a pretty nice virtual machine available to many of us.
Having spent a day trying to get SDL2, SDL2 gfx and Cairo sorted out for this Common Lisp app I&rsquo;m looking at really makes me want to drop it all for another two years and focus on JavaScript instead.
It can&rsquo;t be that bad! Javascript gives me the DOM and SVG and all that, practically for free…</p>

<p>And three different bindings Common Lisp bindings for SDL2 in various states of neglect is draining.
Switching from one to the other is tricky since the first one had many idiomatic helpers functions that the other is lacking.
But the first one is lacking a gfx port.
Then again, I guess I can add circle drawing using lines.</p>

<p>Everything takes so long. So damn long.</p>

<p><a href="2022-07-20_Gridmapper_CL">2022-07-20 Gridmapper CL 5</a>, <a href="2024-07-24-gridmapper-local">2024-07-24 Gridmapper Local</a></p>

<p>A while ago I started collecting links with quotes instead of relying on browser bookmarks or third parties. I remember at one point my bookmarks were just HTML files generated by the browser. Good times! And there was Delicious, a service now defunct, I guess. So now I keep <a href="Bookmarks">bookmarks on this site</a>. It&rsquo;s great.</p>

<p>I wondered whether I should write a tool that monitors those pages, and when new items get added, a feed is updated.
Just a little program… it doesn&rsquo;t seem hard. So I gave it try.  I like documentation first, these days so I began with a man page for it. Good, good. Then I though that perhaps I should use the same Markdown parser as Oddmu uses.
So I needed to write this tool in Go. How hard can it be?
It&rsquo;s a bit harder than writing it in Perl.
Oh, and I needed to parse the RSS file, too.
Or use SQLite to store data.
It keeps getting harder.</p>

<p>Well, I spent some time on it and now I&rsquo;m tired again.
This too, takes too long!</p>

<p>I feel defeated. Am I too impatient?</p>

<p>I should read a book.</p>

<p><a class="tag" href="/search/?q=%23Programming">#Programming</a></p>

<p><strong>2024-07-27</strong>. In an attempt to overcome my sadness, I decided to spice up my shell life…</p>

<pre><code># hipster shell
alias ls='echo Using exa instead;exa'
alias du='echo Using dust instead;dust'
alias top='echo Using htop instead;htop'
alias find='echo Using fd instead;fd'
alias grep='echo Using rg instead;rg'
alias files='echo Using yazi instead;yazi'
alias cal='echo Using khal instead;khal'
alias screenshot='grimshot'
alias copy='wl-copy'
alias paste='wl-paste'
</code></pre>

<p>I set up <code>khal</code> and <code>khard</code> which required me to set up <code>vdirsyncer</code> to sync the remote calendars (and contacts) to local copies. This is also good for backup, I guess.</p>

<p>Let me know if you know of other such tools.</p>

<p><strong>2024-07-29</strong>. I overcame my block and wrote the bookmarks-to-feed program in Perl: <a href="https://src.alexschroeder.ch/bookmark-feed.git">bookmark-feed</a>. 🔖 🤝 <img loading="lazy" src="/pics/rss.svg" alt="RSS" /></p>

<p>I installed a daily cron job:</p>

<pre><code>47  23  *  *   *     /usr/bin/nice /home/alex/perl5/perlbrew/perls/perl-5.40.0/bin/bookmark-feed /home/alex/alexschroeder.ch/wiki/*_Bookmarks.md /home/alex/alexschroeder.ch/wiki/*-bookmarks.md /home/alex/alexschroeder.ch/wiki/bookmarks.rss
</code></pre>

<p>The readable variant is this: <code>bookmark-feed markdown-files… feed-file</code>.
The files it looks at once a day are my <a href="Bookmarks">Bookmarks</a>.
The feed it generates is <a href="/wiki/bookmarks.rss">bookmarks.rss</a>.
The database it uses is <a href="/wiki/bookmarks.db">bookmarks.db</a>.</p>

<p>It doesn&rsquo;t do expiration from the database but uses only the last 40 items for the feed.</p>

<p>When populating the database, all I had was the timestamp of the Markdown pages, so the existing bookmarks are all relatively unsorted – they are sorted by the timestamp of the most recent addition to the whole category, which pretty weird.</p> 

<https://alexschroeder.ch/view/2024-07-27-tired>

---

## Linux Mint 22 'Wilma' still the Bedrock choice for moving off Windows

date: 2024-07-29, updated: 2024-07-29, from: Liam Proven's articles at the Register

<h4>Outsmarting Ubuntu's midlife crisis and dodging Flintstone-sized bugs</h4>
      <p>Linux Mint 22 "Wilma" debuted late last week and holds on to the crown as the most sensible choice if you're looking to move across from Windows.</p> 

<https://go.theregister.com/i/cfa/https://www.theregister.com/2024/07/29/linus_mint_22_wilma/>

---

## Guadalcanal: 4

date: 2024-07-29, from: Ayjay blog

As I noted in my previous post, the peculiar nature of the Guadalcanal campaign creates a kind of narrative frame — the arrival by sea, the fighting, the departure by sea — that any account of the campaign is bound by. This traversing of emptiness surrounding a tragic agon.  I think it was Jakob Burckhardt, [&#8230;] 

<https://blog.ayjay.org/guadalcanal-4/>

---

## Rairii’s incredible port of ARC & Drivers for NT PowerPC to G3 Macintoshes

date: 2024-07-29, from: Tilde.news

<p><a href="https://tilde.news/s/bs6urk/rairii_s_incredible_port_arc_drivers_for">Comments</a></p> 

<https://virtuallyfun.com/2024/07/13/rairiis-incredible-port-of-arc-drivers-for-nt-powerpc-to-g3-macintoshes/>

---

## A farewell from HackSpace magazine

date: 2024-07-29, from: Raspberry Pi News (.com)

<p>Starting next month, HackSpace will become part of The MagPi, the official Raspberry Pi magazine.</p>
<p>The post <a href="https://www.raspberrypi.com/news/a-farewell-from-hackspace-magazine/">A farewell from HackSpace magazine</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<https://www.raspberrypi.com/news/a-farewell-from-hackspace-magazine/>

---

## pgAdmin 4 v8.10 Released

date: 2024-07-29, from: PostgreSQL News

<p>The pgAdmin Development Team is pleased to announce pgAdmin 4 version 8.10. This release of pgAdmin 4 includes 29 bug fixes and new features. For more details please see the <a href="https://www.pgadmin.org/docs/pgadmin4/8.10/release_notes_8_10.html">release notes</a>.</p>
<p>pgAdmin is the leading Open Source graphical management tool for PostgreSQL. For more information, please see <a href="https://www.pgadmin.org/">the website</a>.</p>
<h3>Note: With this release, pgAdmin 4 has transitioned from NW.js to Electron.</h3>
<p>Notable changes in this release include:</p>
<h3>Features:</h3>
<ul>
<li>Add support for Postgres Server Logs for Text, CSV, and JSON format in plain and tabular formats.</li>
<li>Add support for highlighting selection matches in the query editor.</li>
<li>Add a keyboard shortcut to close the active tab panel.</li>
</ul>
<h3>Bugs/Housekeeping:</h3>
<ul>
<li>Replace pgAdmin NW.js container with Electron container.</li>
<li>Ensure that pgAdmin 4 is compatible with PostgreSQL v17.</li>
<li>Fixed an issue where paste operation in query tool data grid should skip bytea columns and put the value as NULL instead.</li>
<li>Ensure pgAdmin never makes network requests to Google etc.</li>
<li>Fixed the permission denied issue for functions of the pgstattuple extension when accessing statistics with a non-admin user.</li>
<li>Updated entrypoint.sh to utilize the email-validator package for email validation.</li>
<li>Fixed an issue where users could not insert characters at the desired location, as it was added to the end of the line.</li>
<li>Fixed an issue where users could not autofill their saved passwords in the connect server dialog in the browser.</li>
<li>Fixed an issue where boolean values in node details of the graphical explain plan were not interpreted correctly.</li>
<li>Ensure that pgAdmin works when opened in an iframe.</li>
</ul>
<p>Builds for Windows and macOS are available now, along with a Python Wheel, Docker Container, RPM, DEB Package, and source code tarball from the <a href="https://www.pgadmin.org/download/">tarball area</a>.</p> 

<https://www.postgresql.org/about/news/pgadmin-4-v810-released-2899/>

---

## When technology moves backwards

date: 2024-07-28, from: Dave Winer's Scripting News

<p>I don't when technology moves backwards.</p>
<p>I'm always trying to push it the other way.</p>
<p>It's like being a ball player wanting to win a game.</p>
<p>Or a musician wanting to record a hit.</p>
<p>A VC wanting a 10x return.</p>
<p>A diplomat achieving growth and peace.</p>
 

<http://scripting.com/2024/07/28/223826.html?title=whenTechnologyMovesBackwards>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-28, from: Miguel de Icaza Mastondon feed)

<p>Despite my best efforts this weekend, I have yet to watch every video on TikTok. </p><p>But I made a ton of progress.</p> 

<https://mastodon.social/@Migueldeicaza/112866409882493642>

---

## How and why to write letters to voters

date: 2024-07-28, from: John Udell blog

If you don&#8217;t live in a swing state, but would like to do more than just send money to help encourage voter turnout in those places, what are your options? For me the best one is Vote Forward, which orchestrates letter-writing to registered voters. I sent hundreds of such letters in 2020 and am aiming &#8230; <a href="https://blog.jonudell.net/2024/07/28/how-and-why-to-write-letters-to-voters/" class="more-link">Continue reading <span class="screen-reader-text">How and why to write letters to voters</span></a> 

<https://blog.jonudell.net/2024/07/28/how-and-why-to-write-letters-to-voters/>

---

## NotMyFault: Microsoft’s tool to create BSoDs

date: 2024-07-28, from: OS News

Blue screens of death are not exactly in short supply on Windows machines lately, but what if you really want to cause your own kernel panic or complete system crash, just because you love that shade of crashy blue? Well, there&#8217;s a tool for that called NotMyFault, developed by Mark Russinovich as part of Sysinternals. NotMyFault is a tool that you can use to crash, hang, and cause kernel memory leaks on your Windows system. It’s useful for learning how to identify and diagnose device driver and hardware problems, and you can also use it to generate blue screen dump files on misbehaving systems. The download file includes 32-bit and 64-bit versions, as well as a command-line version that works on Nano Server. Chapter 7 in Windows Internals uses NotMyFault to demonstrate pool leak troubleshooting and Chapter 14 uses it for crash analysis examples. ↫ Mark Russinovich Using this tool, you can select exactly what kind of crash you want to cause, and after clicking the Crash button, your Windows computer will do exactly as it&#8217;s told and crash with a lovely blue screen of death. It comes in both a GUI and CLI version, and the latter also works on minimal Windows installations that don&#8217;t have the Windows shell installed. A tool like this may seem odd, but it can be particularly useful in situations where you&#8217;re trying to troubleshoot an issue, and to learn how to properly diagnose crashes. Or, you know, you can use it to create a panic at your workplace. 

<https://www.osnews.com/story/140353/notmyfault-microsofts-tool-to-create-bsods/>

---

## Managarm: microkernel-based OS with fully asynchronous I/O

date: 2024-07-28, from: OS News

Ah, another microkernel-based hobby operating system. The more, the merrier &#8211; and I mean this, without a hint of sarcasm. There&#8217;s definitely been a small resurgence in activity lately when it comes to small hobby and teaching operating systems, some of which are exploring some truly new ideas, and I&#8217;m definitely here for it. Today we have managarm. Some notable properties of managarm are: (i) managarm is based on a microkernel while common Desktop operating systems like Linux and Windows use monolithic kernels, (ii) managarm uses a completely asynchronous API for I/O and (iii) despite those internal differences, managarm provides good compatibility with Linux at the user space level. ↫ managarm GitHub page It&#8217;s a 64bit operating system with SMP support, an ACPI implementation, networking, USB3 support, and, as the quoted blurb details, a lot of support for Linux and POSIX. It can already run Weston, kmscon, and other things like Bash, the GNU Coreutils, and more. While not explicitly mentioned, I assume the best platform to run managarm on are most likely virtualisation tools, and there&#8217;s a detailed handbook to help you along during building and using this new operating system. 

<https://www.osnews.com/story/140347/managarm-microkernel-based-os-with-fully-asynchronous-i-o/>

---

## AlphaProof, AlphaGeometry, ChatGPT, and why the future of AI is neurosymbolic

date: 2024-07-28, from: Gary Marcus blog

What comes after chatbots? 

<https://garymarcus.substack.com/p/alphaproof-alphageometry-chatgpt>

---

**@Miguel de Icaza Mastondon feed** (date: 2024-07-28, from: Miguel de Icaza Mastondon feed)

<p>Going with more Safari-esque tab bars, and some rounding for the text editor:</p> 

<https://mastodon.social/@Migueldeicaza/112864932278640404>

---

**@Dave Winer's Scripting News** (date: 2024-07-28, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2023/07/26/oldTwitterLogo.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Before Twitter broke the API, it was a quick way for me to channel items from my blog to almost all the people who follow me on the social web. Now it isn't even one of the services I use that I can post to with my writing tool (those are Bluesky, Mastodon, WordPress). None of them are anything like the aggregator of people that Twitter was, and I can't even reach it from my writing tool. I really want to solve this problem, but I absolutely can't do this on my own. No time, patience, and it's not my job to do all that coding. As observed the other day, my time should be spent on writing tools for the web and directly related products. This is the kind of project that should be handled as an open source thing. 

<http://scripting.com/2024/07/28.html#a153347>

---

## oberon@gitlab.inf.ethz.ch pushed to project branch main at Felix Oliver Friedrich / Oberon A2

date: 2024-07-28, updated: 2024-07-28, from: Oberon A2 at CAS


<p>
<strong>oberon@gitlab.inf.ethz.ch</strong>
<a href="https://gitlab.inf.ethz.ch/felixf/oberon/-/commit/3e81eb63099b7968539f969781ee824cd593c2c1">(3e81eb63)</a>
<i>
at
28 Jul 16:54
</i>
</p>
<div class="blockquote"><p dir="auto">a fix for conversions SYSTEM.VAL(FLOAT64, IntegerConstant) and SYST...</p></div>
 

<https://gitlab.inf.ethz.ch/felixf/oberon/-/commit/3e81eb63099b7968539f969781ee824cd593c2c1>

---

## oberon@gitlab.inf.ethz.ch joined project Felix Oliver Friedrich / Oberon A2

date: 2024-07-28, updated: 2024-07-28, from: Oberon A2 at CAS

 

<>

---

**@Ayjay blog** (date: 2024-07-28, from: Ayjay blog)

Barath Raghavan and Bruce Schneier: The [CrowdStrike] catastrophe is yet another reminder of how brittle global internet infrastructure is. […] This brittleness is a result of market incentives. In enterprise computing — as opposed to personal computing — a company that provides computing infrastructure to enterprise networks is incentivized to be as integral as possible, [&#8230;] 

<https://blog.ayjay.org/46565-2/>

---

## Cassingle Culture

date: 2024-07-28, from: Tedium site

Why the single version of the cassette didn’t feel as worthy of a purchase as, say, a 45. Or, perhaps, even a digital download. 

<https://feed.tedium.co/link/15204/16754929/music-industry-cassette-single-cassingle-history>

---

## Xecast Episode 1: Origins and Techaro

date: 2024-07-28, from: Ze Iaso's blog

 

<https://xeiaso.net/xecast/001/>

