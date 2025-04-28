---
title: columns
updated: 2025-04-28 06:08:45
---

# columns

(date: 2025-04-28 06:08:45)

---

**@Dave Winer's Scripting News** (date: 2025-04-28, from: Dave Winer's Scripting News)

Well it looks like the <a href="http://scripting.com/2025/04/27/130611.html">new email app</a> is working. I got some really nice lookin emails last night, hope you did too. Subscribe <a href="https://subscribe.scripting.com/">here</a>. And there's a basis on which to build. I will now proceed to turn off the old email app that has been serving us so well since 2017 or thereabouts. Goodbye old friend. Hello new world! 

<br> 

<http://scripting.com/2025/04/28.html#a115625>

---

## The first 100 days: Why we must mobilize 

date: 2025-04-28, from: Robert Reich's blog

Now is the time for all of us to become activists and force this despicable regime out of office 

<br> 

<https://robertreich.substack.com/p/the-start-of-week-14>

---

## April 27, 2025

date: 2025-04-28, from: Heather Cox Richardson blog

Last night a new club opened in the wealthy Georgetown neighborhood in Washington, D.C. 

<br> 

<https://heathercoxrichardson.substack.com/p/april-27-2025>

---

## 2025-04-27 Structural navigation

date: 2025-04-28, from: Alex Schroeder's Blog

<h1 id="2025-04-27-structural-navigation">2025-04-27 Structural navigation</h1>

<p>Sometimes my mind goes back to text editing and text editors. I have a love/hate relationship with ed(1). I kind of like the deliberate mindset I need to bring. But I also don’t like to think in terms of lines. Maybe if each sentence is a line, that’s better. But I often think about better semantic addressing.</p>

<p>Example: <code>p</code> prints a range of line(s) is the standard. What I would also like is &ldquo;print a range of paragraph&rdquo;, &ldquo;print a range of sentences&rdquo;, &ldquo;print a range of words&rdquo;. There&rsquo;s a hierarchy, here. So once there&rsquo;s a &ldquo;current&rdquo; paragraph, you can list its sentences or its words. My hope is that this is more useful than working on lines.</p>

<p>I’m still struggling to invent a command language, however. “Print paragraph. Next. Next. Number sentences. Third sentence. Replace this with that. Print paragraph.” I think this how I would work? “Last paragraph. Insert paragraph. Start typing.” Would that be <code>p p n 3s /this/that/ p</code> and <code>par $ i …</code> Effectively, <code>p</code> switches to paragraphs and prints them, and moves to the next one if used without a range. <code>n</code> numbers the items one level down. In this case, with a paragraph selected, <code>n</code> numbers the sentences. <code>s</code> switches to sentences and prints them. I&rsquo;m not sure about the search &amp; replace command. Is that also <code>s</code>?</p>

<p>Should the data be kept in a tree? Should reading the text involve a real parser that delivers a sort of abstract syntax tree and names the nodes which automatically turn into commands?</p>

<p>And then: should this be written in Perl? 😍</p>

<p><a class="account" href="https://mastodon.acm.org/@mxp" title="@mxp@mastodon.acm.org">@mxp</a> said he had written «an Emacs interface to a syntactic parser», but I&rsquo;m not sure this is what I&rsquo;m looking for. A natural language parser (NLP) is maybe not what I&rsquo;m looking for. I suspect it would help avoid grammar mistakes, which makes sense to me. But is it what need as I write?</p>

<p>He then pointed me at Engelbart&rsquo;s <a href="https://doi.org/10.1145/1476589.1476645">A research center for augmenting human intellect</a>. There, we find <a href="https://communitywiki.org/wiki/PurpleNumbers">purple numbers</a>:</p>

<blockquote>
<p>The principal manifestation of this hierarchical structure is the breaking up of text into arbitrary segments called &ldquo;statements,&rdquo; each of which bears a number showing its serial location in the text and its &ldquo;level&rdquo; in an &ldquo;outline&rdquo; of the text.</p>
</blockquote>

<p>I&rsquo;m not sure about the use of an outline. Many people seem to like outlines, but for me an outline as a writing tool is weird. I never start with an outline, except for cases where I know I need to follow a structure and even then the structure is usually trivial: Introduction, Materials and Methods, Results, Discussion, References, or something along these lines. A bunch of headings is all I need. Do I need an outline view? I agree that showing all the headings is important to navigate any non-trivial text document when you&rsquo;re reading and working with it. But if I focus on writing, the outline doesn&rsquo;t seem too important. It&rsquo;s too far &ldquo;up&rdquo; in the structure, for me.</p>

<p><a class="account" href="https://mastodon.acm.org/@CerstinMahlow" title="@CerstinMahlow@mastodon.acm.org">@CerstinMahlow</a> wrote a position paper: <a href="https://doi.org/10.48550/arXiv.2303.17894">Writing Tools: Looking Back to Look Ahead</a> where she argues that «new writing tools should be inspired by &ldquo;failed&rdquo; projects from the 1970s and 1980s» and discusses the current state of affairs:</p>

<blockquote>
<p>One type of functionality that Mahlow and Piotrowski suggest are information functions that use NLP techniques to highlight certain aspects of the evolving text, commonly referred to as “syntax highlighting.” Since 2013, iA Writer has offered such a feature in a commercial product to specifically highlight nouns, verbs, adjectives, etc., advertising it as “using parts of speech to improve your writing” and explicitly stating that writers deserve the same professional support as programmers.</p>
</blockquote>

<p>This goes in a different direction, &ldquo;down&rdquo; to the grammar roles of words. Nouns, verbs, adjectives, adverbs. The problem is that when I write, I hardly ever worry about a particular verb. I never want to navigate to the accusative object of this sentence or focus on the subject. This is a very detailed view that I don&rsquo;t care about.</p>

<p>The question is: What do I care about? Moving sentences around. Starting sentences between some other sentences and then realizing that I started at the wrong place and moving that fragments around. I think what I need is a prototype editor that I can start using and where I can easily add and remove functionality. And I&rsquo;m not sure that Emacs is the correct environment because there is so damn much to distract me.</p>

<p><a class="tag" href="/search/?q=%23Editors">#Editors</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-04-27-structural-navigation>

---

## April 26, 2025

date: 2025-04-28, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/162302360/6ddcefdd75f3a7ca734e7c35a05478bf.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/162302360/6ddcefdd75f3a7ca734e7c35a05478bf.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/april-26-2025-509>

---

## m68k->PPC->x86->ARM?

date: 2025-04-28, from: Jirka's blog

Please  note that  I'm trying  to make  fun. Don't  take this  post too seriously. 

<br> 

<http://jirka.1-2-8.net/20250428-0445_m68k_PPC_x86_ARM>

---

## lynx --nocolor

date: 2025-04-28, from: Jirka's blog

I really dislike how the Lynx WWW browser looks on some modern systems. On my  SGI it  was OK -  it simply respected  IRIS terminal  colors. On modern systems in seems to be full of colors with gray background. Text colors are quite  nice but I have disliked the  gray background. I have wished to have or black one  or transparent one (it a terminal emulator supports transparency). 

<br> 

<http://jirka.1-2-8.net/20250428-0445_lynx_nocolor>

---

## iMac G5 keyboard

date: 2025-04-28, from: Jirka's blog

Today  my  wife  requested  new  keyboard. I  thought  that  the  Apple white-transparent keyboard is too inferior  to her IBM laptop keyboard. Well, it is. So I have replaced it by spare HP one. A HP keyboard which was a part of the PA-RISC Visualize workstation (the workstation itself does not work, unfortunately). And she is happy with it. 

<br> 

<http://jirka.1-2-8.net/20250428-0445_iMac_G5_keyboard>

---

## Z88 screen and keyboard protector

date: 2025-04-28, from: Jirka's blog

I have got this thing (among  other goodies). It's just a balck plastic sheet with the Z88 logo which fits the  Z88 face well (it was a part of an original Z88 package). 

<br> 

<http://jirka.1-2-8.net/20250428-0445_Z88_screen_keyboard_protector>

---

## Working from home

date: 2025-04-28, from: Jirka's blog

And this is my main tool: 

<br> 

<http://jirka.1-2-8.net/20250428-0445_Working_from_home>

---

## Workflow: Changes and additions

date: 2025-04-28, from: Jirka's blog

Things are continuously  developing or at least  changing. For example, my  gVim on  my GPD  Pocket (Ubuntu  MATE 18.04)  has issues  with text encoding.  If  I  create a  new  file  then  I  everything is  OK.  But when  I  save  it  and  re-open it  then  it  en-codes  local  language characters incorrectly.  It is  strange because I  have been  using the same  .vimrc/.gvimrc for  ages on  several Linux  machines and  I never encountered such behaviour. 

<br> 

<http://jirka.1-2-8.net/20250428-0445_Workflow_Changes_and_additions>

---

## Universal solution

date: 2025-04-28, from: Jirka's blog

I sometimes  use the Pluma   {sup}1{/sup} text editor (a  Gedit clone which  is a part of the MATE  {sup}2{/sup} desktop). It is a nice and simple editor which has several useful functions like syntax highlighting and spell checking. 

<br> 

<http://jirka.1-2-8.net/20250428-0445_Universal_solution>

---

## UT Progress

date: 2025-04-28, from: Jirka's blog

I  might  noted  here  in  some   of  previous  posts  that  during  an unsuccessful update I  lost the OpenStore  {sup}1{/sup} application  on my Ubuntu Touch  {sup}2{/sup}. It was a problem because there is no CLI tool to install (or remove) packages on  the Ubuntu Touch (that's an another  reason for me to dislike this table computing at all). 

<br> 

<http://jirka.1-2-8.net/20250428-0445_UT_Progress>

---

## Airbnb CEO Brian Chesky on What ‘Founder Mode’ Really Means (and How It Might Apply to Apple)

date: 2025-04-28, updated: 2025-04-28, from: Daring Fireball

 

<br> 

<https://www.theverge.com/24279570/airbnb-ceo-brian-chesky-founder-mode-apple-steve-jobs-management-decoder-podcast-2024>

---

**@Miguel de Icaza Mastondon feed** (date: 2025-04-27, from: Miguel de Icaza Mastondon feed)

<p>What backup software do you use for your Mac?</p> 

<br> 

<https://mastodon.social/@Migueldeicaza/114412597775171801>

---

## Monday 28 April, 2025

date: 2025-04-27, from: John Naughton's online diary

Woodhenge? North Norfolk coast. Quote of the Day ”Markets can remain irrational longer than you can remain solvent.&#8221; John Maynard Keynes Musical alternative to the morning’s radio news DUG &#124; Wheel of Fortune Link Long Read of the Day Absolute &#8230; <a href="https://memex.naughtons.org/monday-28-april-2025/40724/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-28-april-2025/40724/>

---

**@Dave Winer's Scripting News** (date: 2025-04-27, from: Dave Winer's Scripting News)

New podcast: <a href="https://shownotes.scripting.com/scripting/2025/04/27/chatgptDeservesOurRespectAtLeast.html">ChatGPT deserves our respect (at least)</a>. 

<br> 

<http://scripting.com/2025/04/27.html#a221158>

---

## Sunday caption contest: Celestial message

date: 2025-04-27, from: Robert Reich's blog

And last week&#8217;s winner 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-celestial>

---

**@Dave Winer's Scripting News** (date: 2025-04-27, from: Dave Winer's Scripting News)

If you're <a href="http://scripting.com/2025/04/27/130611.html">getting this via email</a>, things might look different. 

<br> 

<http://scripting.com/2025/04/27.html#a200313>

---

**@Dave Winer's Scripting News** (date: 2025-04-27, from: Dave Winer's Scripting News)

Lots of news reports about Trump's polls. But it isn't surprising that in the transition from a democracy to autocracy the people would become increasingly unhappy with the change, until we basically give up, and the polls from some pollsters are always this way, but the polls from others tell a different story. Fox News still runs polls the old way, as does the NYT and others. But that will change, as the lawyers have, and the Washington Post and NY Times have, in their editorial functions. And they just arrested a judge in Wisconsin. Makes you think maybe it doesn't matter if the polls say what they say, if there isn't something behind them. 

<br> 

<http://scripting.com/2025/04/27.html#a155941>

---

## Nightly email switchover

date: 2025-04-27, from: Dave Winer's Scripting News

<p>If all goes as planned, if you're subscribed to the <a href="http://scripting.com/email/">nightly email</a>, you should get two copies of the posts for April 27, one sent by the old software, and one sent by the new. The new version might look better in your mail reader app. That was the point of this transition. </p>
<p>Here's a <a href="https://docs.google.com/forms/d/e/1FAIpQLSdBkVybd_vaWT4oen5uNAEKxK8ztFUvAStcCq0Y8m-0VSsTNQ/viewform?usp=header">Google form</a> where you can let me know how it went. Did it work? How many emails did you get? Does the v2 email look better than the old version? In general do you want to comment?</p>
<p><b>The story</b></p>
<p>I had to do a rewrite because when I originally wrote it, I misunderstood how CSS styling works in some/most email clients and it required a very deep rewrite of the software, it was actually harder to do the conversion than it was to write the software in the first place. And the app was running on an old version of PagePark and depended on Dropbox, and had broken in many ways over the years. But I never had the time to zero in on this. </p>
<p>Now was the time to do it, because I want to do an <i>excellent</i> email sender for <a href="https://wordland.social/">WordLand</a>. And in order for that to have even a small chance of working, I needed to do this transition, to get fully up to date on the best practices for HTML email in 2025. </p>
<p>And yet another plug for ChatGPT. It's like having a library of medical journals for a general practitioner. I'm sure they have this, if a GP has a question about which specialist to send a patient to. And then they probably have good reference materials for the specialist too, to be sure they're using the latest proven techniques for treating disease. Believe it or not we have nothing like this in software development. Which means we don't interop, and don't use prior art and are constantly reinventing each others' work because there's no way to find out about it. No conferences, no journals, nothing but hearsay and O'Reilly books and I hear they aren't very good these days. Enter ChatGPT, and all of a sudden if you have a question it has the freaking answer. It's as if medicine went from the pre-internet days to now, in just a couple of years. Only more so because medicine was considered a discipline, where developing software never has been. Now at least us practitioners have the tools if not the respect. </p>
<p>PS: The <a href="http://scripting.com/email/">signup page</a> moved to <a href="https://subscribe.scripting.com/">subscribe.scripting.com</a>. It's the same software now running on my latest server software, and served via HTTPS.</p>
 

<br> 

<http://scripting.com/2025/04/27/130611.html?title=nightlyEmailSwitchover>

---

**@Dave Winer's Scripting News** (date: 2025-04-27, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="http://scripting.com/images/2023/03/27/successionPoster.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I heard that <a href="https://www.austinchronicle.com/daily/sxsw/2025-04-26/huge-changes-in-sxsw-leadership/">Hugh Forrest</a> was fired at SXSW. Many people loved him based on the outpouring of grief, but I didn't. They had keynotes and panels about stuff I was working on at the time, in the 90s and 00s, blogging, RSS, podcasting, bringing blogs to politics. He wouldn't take my calls. I wanted to be on stage to talk about what I was working on, and to set the record straight on what we had created. Instead my competitors got top billing and I was not allowed in. It felt corrupt to me, as if someone was trading favors behind the scenes. My hope is now SXSW, or whatever replaces it, will be more open-minded about who they include in the show. I'm still working and still have a story to tell. 

<br> 

<http://scripting.com/2025/04/27.html#a123848>

---

**@Dave Winer's Scripting News** (date: 2025-04-27, from: Dave Winer's Scripting News)

Dan MacTough <a href="https://github.com/scripting/s3/issues/1#issuecomment-2832609727">feels the same</a> about AWS breaking Node devs. 

<br> 

<http://scripting.com/2025/04/27.html#a123503>

---

## We’re In This Together

date: 2025-04-27, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/were-in-this-together>

---

## Sunday thought

date: 2025-04-27, from: Robert Reich's blog

Cry, the beloved country 

<br> 

<https://robertreich.substack.com/p/sunday-thought-92d>

---

## April 26, 2025

date: 2025-04-27, from: Heather Cox Richardson blog

Early yesterday morning, Immigration and Customs Enforcement (ICE) sent three U.S. 

<br> 

<https://heathercoxrichardson.substack.com/p/april-26-2025>

---

## April 25, 2025

date: 2025-04-27, from: Heather Cox Richardson blog

 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/162238051/91e02d671efbb47ca1595e60e6a0cdf4.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/162238051/91e02d671efbb47ca1595e60e6a0cdf4.mp3" target="_blank">download audio/mpeg</a><br> 

<https://heathercoxrichardson.substack.com/p/april-25-2025-b8c>

---

## m68k->PPC->x86->ARM?

date: 2025-04-27, from: Jirka's blog

Please  note that  I'm trying  to make  fun. Don't  take this  post too seriously. 

<br> 

<http://jirka.1-2-8.net/20250427-0445_m68k_PPC_x86_ARM>

---

## lynx --nocolor

date: 2025-04-27, from: Jirka's blog

I really dislike how the Lynx WWW browser looks on some modern systems. On my  SGI it  was OK -  it simply respected  IRIS terminal  colors. On modern systems in seems to be full of colors with gray background. Text colors are quite  nice but I have disliked the  gray background. I have wished to have or black one  or transparent one (it a terminal emulator supports transparency). 

<br> 

<http://jirka.1-2-8.net/20250427-0445_lynx_nocolor>

---

## iMac G5 keyboard

date: 2025-04-27, from: Jirka's blog

Today  my  wife  requested  new  keyboard. I  thought  that  the  Apple white-transparent keyboard is too inferior  to her IBM laptop keyboard. Well, it is. So I have replaced it by spare HP one. A HP keyboard which was a part of the PA-RISC Visualize workstation (the workstation itself does not work, unfortunately). And she is happy with it. 

<br> 

<http://jirka.1-2-8.net/20250427-0445_iMac_G5_keyboard>

---

## Working from home

date: 2025-04-27, from: Jirka's blog

And this is my main tool: 

<br> 

<http://jirka.1-2-8.net/20250427-0445_Working_from_home>

---

## Workflow: Changes and additions

date: 2025-04-27, from: Jirka's blog

Things are continuously  developing or at least  changing. For example, my  gVim on  my GPD  Pocket (Ubuntu  MATE 18.04)  has issues  with text encoding.  If  I  create a  new  file  then  I  everything is  OK.  But when  I  save  it  and  re-open it  then  it  en-codes  local  language characters incorrectly.  It is  strange because I  have been  using the same  .vimrc/.gvimrc for  ages on  several Linux  machines and  I never encountered such behaviour. 

<br> 

<http://jirka.1-2-8.net/20250427-0445_Workflow_Changes_and_additions>

---

## Universal solution

date: 2025-04-27, from: Jirka's blog

I sometimes  use the Pluma   {sup}1{/sup} text editor (a  Gedit clone which  is a part of the MATE  {sup}2{/sup} desktop). It is a nice and simple editor which has several useful functions like syntax highlighting and spell checking. 

<br> 

<http://jirka.1-2-8.net/20250427-0445_Universal_solution>

---

## UT Progress

date: 2025-04-27, from: Jirka's blog

I  might  noted  here  in  some   of  previous  posts  that  during  an unsuccessful update I  lost the OpenStore  {sup}1{/sup} application  on my Ubuntu Touch  {sup}2{/sup}. It was a problem because there is no CLI tool to install (or remove) packages on  the Ubuntu Touch (that's an another  reason for me to dislike this table computing at all). 

<br> 

<http://jirka.1-2-8.net/20250427-0445_UT_Progress>

---

## UBports OTA-12 update

date: 2025-04-27, from: Jirka's blog

I am writing this  on my BQ Aquaris M10 tablet (one  of the few devices shipped  with the  Ubuntu  Touch  pre-installed). The  community-driven Ubuntu Touch  effort  {sup}1{/sup} is  still a thing  and the recent  update (the OTA-12) is quite interesting. 

<br> 

<http://jirka.1-2-8.net/20250427-0445_UBports_OTA_12_update>

