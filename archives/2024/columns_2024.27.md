---
title: columns 2024.27
updated: 2024-07-02 08:55:01
---

# columns 2024.27

(date: 2024-07-02 08:55:01)

---

## [Sponsor] BriefLook

date: 2024-07-02, updated: 2024-07-02, from: Daring Fireball

 

<https://brieflook.app/?dfrss>

---

## July 1, 2024

date: 2024-07-02, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/july-1-2024-5ef>

---

## My plan for Biden re Supreme Court

date: 2024-07-02, from: Dave Winer's Scripting News

<p><i>This is a lightly edited version of a <a href="https://www.threads.net/@davew/post/C864lCsuwbK">post</a> on Threads. </i></p>
<p>I understand why the Dems don't want to be the first to use the new rule passed down by the Supreme Court, but I think they should consider:</p>
<ol>
<li>Arrest the members of the Supreme Court who just voted for the new rule about presidential immunity.</li>
<li>Nominate six replacements, sorry no Repubs this time.</li>
<li>The Senate ratifies them.</li>
<li>Once they're installed, they hold an emergency session to restore Roe v Wade, and to undo all the other crazy BS they did and then revoke the new rule, and re-assert the rule of law that especially applies to the president.</li>
<li>And I don't know what they do with the ones they arrested but frankly I don't care. Leave them in jail until they figure it out.</li>
<li>And I it's about time Trump was arrested and held without bail, so he can't do any more damage to the US, while awaiting trial. </li>
</ol>
 

<http://scripting.com/2024/07/02/150747.html?title=myPlanForBidenReSupremeCourt>

---

**@Dave Winer's Scripting News** (date: 2024-07-02, from: Dave Winer's Scripting News)

Listen to <a href="https://podcasts.apple.com/us/podcast/i-dissent-biden-declares-war-on-supreme-court-trump-7-2-24/id1633301179?i=1000660868719">today's Countdown</a> podcast. I was cheering out loud during the first segment. When you read this <a href="https://www.threads.net/@davew/post/C864lCsuwbK">post</a>, you'll see why. I tried listening to the NYT Daily podcast today, but it made me hate them all over again, starting with saying how great a week it has been for Trump. You can say that, imho, but you have to say right after that, that it was a terrible week for the rest of us. Because any good news for Trump is awful news for everyone else. And I do mean everyone, including the people who plan to vote for him again. 

<http://scripting.com/2024/07/02.html#a150249>

---

## X Window System At 40

date: 2024-07-02, from: David Rosenthal's blog

<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjugloP1HPLwtxYvoylM9isbZ44FMNJOxviLxZTji8sGYsOm1mWnlscBHWBWG0YPcfJdHxjdMUnHqe77GllQtr4qSKA1IH3M0UknGk3HuCgLrckoLtrsR7w25_xvbcBY4BIhpNNz-N2Aw8dS98pssJHBfSdkA0c-NNNSJMEfwzfpqPp5LJyfHzrZ5QwLPy4/s2048/X11R1.jpg" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="1536" data-original-width="2048" height="150" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjugloP1HPLwtxYvoylM9isbZ44FMNJOxviLxZTji8sGYsOm1mWnlscBHWBWG0YPcfJdHxjdMUnHqe77GllQtr4qSKA1IH3M0UknGk3HuCgLrckoLtrsR7w25_xvbcBY4BIhpNNz-N2Aw8dS98pssJHBfSdkA0c-NNNSJMEfwzfpqPp5LJyfHzrZ5QwLPy4/w200-h150/X11R1.jpg" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">X11R1 on Sun<br /><a href="https://en.wikipedia.org/wiki/X_Window_System#/media/File:X11R1.jpg">Techfury90 CC0</a></td></tr></tbody></table>
I apologize that this post is a little late. On 19<sup>th</sup> June the X Window System celebrated its 40th birthday. Wikipedia has a comprehensive <a href="https://en.wikipedia.org/wiki/X_Window_System#History">history of the system</a> including the e-mail Bob Scheifler sent announcing the first release:<br />
<small>
<pre>From: rws@mit-bold (Robert W. Scheifler)
To: window@athena
Subject: window system X
Date: 19 June 1984 0907-EDT (Tuesday)

I've spent the last couple weeks writing a window
system for the VS100. I stole a fair amount of code
from W, surrounded it with an asynchronous rather
than a synchronous interface, and called it X. Overall
performance appears to be about twice that of W. The
code seems fairly solid at this point, although there are
still some deficiencies to be fixed up.

We at LCS have stopped using W, and are now
actively building applications on X. Anyone else using
W should seriously consider switching. This is not the
ultimate window system, but I believe it is a good
starting point for experimentation. Right at the moment
there is a CLU (and an Argus) interface to X; a C
interface is in the works. The three existing
applications are a text editor (TED), an Argus I/O
interface, and a primitive window manager. There is
no documentation yet; anyone crazy enough to
volunteer? I may get around to it eventually.

Anyone interested in seeing a demo can drop by
NE43-531, although you may want to call 3-1945
first. Anyone who wants the code can come by with a
tape. Anyone interested in hacking deficiencies, feel
free to get in touch.
</pre>
</small>
Scheifler was right that it was a "good starting point for experimentation", but it wasn't really a usable window system until version 11 was released on 15<sup>th</sup> September 1987. I was part of the team that burned the midnight oil at MIT to get that release out, but my involvement started in late 1985.<br />
<br />
Below the fold are some reflections on my contributions, some thoughts on the astonishing fact that the code is still widely deployed after 40 years, and some ideas on why it has been so hard to replace.<br />
<span><a name='more'></a></span>
<br />
<h3>Involvement</h3>
I arrived at Sun in September 1985 to work with James Gosling on a window system for Sun's workstations. We had worked together developing the window system for Carnegie-Mellon's <a href="https://dl.acm.org/doi/10.1145/5666.5671">Andrew</a> project. We both realized that, if Unix and Unix workstations like Sun's were to succeed, they had to have a widely adopted window system. Ideally, we thought, it would have three key attributes:<br />
<ul>
  <li>An <b>imaging model</b> at a higher level than simply a grid of pixels, so that applications didn't have to adapt to varying screen resolutions. The clear favorite was <a href="https://en.wikipedia.org/wiki/PostScript">Adobe PostScript</a>'s, which had appeared on the Apple LaserWriter in <a href="https://en.wikipedia.org/wiki/PostScript#History">January 1985</a>.</li>
  <li><b>Networking</b>, so that applications could run wherever it made sense with their user interface where the user was. In the mid-80s both workstations and networks were slow, running a window system was a big load on a Motorola 68000. Having two CPUs working on an application, the client-server model, helped.</li>
  <li><b>Programmability</b>, because it was hard to provide a good user experience if there was a slow network round-trip required for each response to a user action. If the window system were programmable, the code that responded to the user's actions could run on the user's workstation, eliminating the network round-trip.</li>
</ul>
Gosling had left C-MU some months earlier. He was adamant that it was possible to implement PostScript on a 68000 fast enough to be a window system. Adding networking, mouse and keyboard extensions to PostScript would satisfy all three of our requirements. Because Adobe's PostScript in the 68000-based LaserWriter was notoriously slow I was skeptical, but I should have known better than to doubt his coding skills. A couple of months later when Gosling showed me a prototype PostScript interpreter running incredibly fast on a <a href="https://en.wikipedia.org/wiki/Sun-1">Sun/1</a>, I was convinced to join him on what became the <a href="https://en.wikipedia.org/wiki/NeWS">NeWS project</a>.<br />
<br />
Once at Sun I realized that it was more important for the company that the Unix world standardized on a single window system than that the standard be Sun's NeWS system. At C-MU I had already looked into X as an alternative to the Andrew window system, so I knew it was the obvious alternative to NeWS. Although most of my time was spent developing NeWS, I rapidly ported X version 10 to the Sun/1, likely the second port to non-DEC hardware. It worked, but I had to kludge several areas that depended on DEC-specific hardware. The worst was the completely DEC-specific keyboard support.<br />
<br />
Because it was clear that a major redesign of X was needed to make it portable and in particular to make it work well on Sun hardware, Gosling and I worked with the teams at DEC SRC and WRL on the design of X version 11. Gosling provided significant input on the imaging model, and I designed the keyboard support. As the implementation evolved I maintained the Sun port and did a lot of testing and bug fixing. All of which led to my trip to Boston to pull all-nighters at MIT finalizing the release.<br />
<br />
My involvement continued after the first release. I was the editor and main author of the X Inter-Client Communications Conventions Manual (ICCCM) that forms Part III of Robert Scheifler and Jim Gettys' <a href="https://search.worldcat.org/title/29985888"><i>X Window System</i></a>. A user's X environment consists of a set of client applications, an X server managing displays and input devices, and a <b>window manager</b> application implementing a user interface that allows the user to allocate the server's resources such as windows to the clients. The window manager needs to communicate the resource allocations to the clients, and the clients need to communicate between themselves to support, for example, cut-and-paste. The <a href="https://search.worldcat.org/title/29985888">ICCCM explains its scope thus</a>:<br />
<blockquote>
Being a good citizen in the X Version 11 world involves adhering to conventions that govern inter-client communications in the following ares:<br />
<ul>
<li>Selection mechanism</li>
<li>Cut buffers</li>
<li>Window manager</li>
<li>Session manager</li>
<li>Manipulation of shared resources</li>
<li>Device color characterization</li>
</ul>
This part of the book proposes suitable conventions without attempting to enforce any particular user interface.
</blockquote>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://imgs.xkcd.com/comics/code_lifespan.png" style="clear: right; margin-bottom: 1em; margin-left: auto; margin-right: auto;"><img border="0" data-original-height="307" data-original-width="377" height="163" src="https://imgs.xkcd.com/comics/code_lifespan.png" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><a href="https://xkcd.com/2730">xkcd 2730</a><br /></td></tr></tbody></table>
There is a certain justice in <a href="https://web.mit.edu/~simsong/www/ugh.pdf">The UNIX-HATERS Handbook</a>'s description of my efforts:<br />
<blockquote>
one of the most amazing pieces of literature to come out of the X Consortium is the “Inter Client Communication Conventions Manual,” ...  It describes protocols that X clients must use to communicate with each other via the X server, including diverse topics like window management, selections, keyboard and colormap focus, and session management.  In short, it tries to cover everything the X designers forgot and tries to fix everything they got wrong. But it was too late—by the time ICCCM was published, people were already writing window managers and toolkits, so each new version of the ICCCM was forced to bend over backwards to be backward compatible with the mistakes of the past.
</blockquote>
<a href="https://en.wikipedia.org/wiki/James_H._Morris">Jim Morris</a>, who ran the <a href="http://www.cmu.edu/corporate/news/2007/features/andrew/index.shtml">Andrew project at C-MU</a>, 
was very wise about what we were getting into: "We're either going to have a disaster, or a success disaster". He often added: "And I know which I prefer!". Jim was exaggerating to make two points:<br />
<ul>
<li>Being a success didn't mean the problems were over, it meant a different set of problems.</li>
<li>Ignoring the problems of success was a good way of preventing it.</li>
</ul>
X11 was definitely a "success disaster".<br />
<h3>Why X not NeWS?</h3>
<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="float: right;"><tbody><tr><td style="text-align: center;"><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiUwPK1UJfagQeXNTr2AO-VJ8lrgCDca3mNsUigCXEHVePFdW3O6R420R55rng4of42q2v7hjb0PMikk5DvUHTCHdFLd6yYMLwn2U7oOAslEEIsZwAR4EM3RSx-E6Q_kq0SsYAJDl4VZgg7jC4xYZJEZo07KIqbnksk9sI_WuM1bZp-_zrutJQyEWMCLoYY/s790/HyperTIESAuthoring.jpeg" style="clear: right; display: block; margin-left: auto; margin-right: auto; padding: 1em 0px; text-align: center;"><img alt="" border="0" data-original-height="644" data-original-width="790" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiUwPK1UJfagQeXNTr2AO-VJ8lrgCDca3mNsUigCXEHVePFdW3O6R420R55rng4of42q2v7hjb0PMikk5DvUHTCHdFLd6yYMLwn2U7oOAslEEIsZwAR4EM3RSx-E6Q_kq0SsYAJDl4VZgg7jC4xYZJEZo07KIqbnksk9sI_WuM1bZp-_zrutJQyEWMCLoYY/s200/HyperTIESAuthoring.jpeg" width="200" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">NeWS <a href="https://en.wikipedia.org/wiki/NeWS#/media/File:HyperTIESAuthoring.jpg">Xardox<br />Public Domain</a></td></tr></tbody></table>
NeWS was amazing technology, providing each of our requirements with usable performance on a 68000. Its interpreter was a clean-room implementation of PostScript from the "Blue Book", with extensions that provided cooperative multi-threading, networking, arbitrary-shaped translucent windows, and a fully object-oriented toolkit. Steve Jobs agreed with us that PostScript was the right imaging model, although the <a href="https://en.wikipedia.org/wiki/Display_PostScript">Display PostScript</a> interpreter he licensed from Adobe for the <a href="https://en.wikipedia.org/wiki/NeXTSTEP">NextSTEP</a> window system was far more restricted. The overwhelming success of <a href="https://en.wikipedia.org/wiki/JavaScript">JavaScript</a> has validated our argument for programmability. So why did X11 take over the world? My view is that there are three main arguments, any one of which would have been decisive:<br />
<ul>
<li>We and Jobs were wrong about the imaging model, for at least two reasons. First, early on pixels were in short supply and applications needed to make the best use of the few they were assigned. They didn't want to delegate control to the PostScript interpreter. Second, later on came GPUs with 3D imaging models. The idea of a one-size-fits-all model became obsolete. The reason that Wayland should replace X11 is that it is agnostic to the application's choice of imaging model.</li>
<li>Although we were right about the need for programmability, PostScript was the wrong language. Even back in 1985 Gosling and I were veteran programmers, with experience in many languages including not just C and Assembler, but also <a href="https://en.wikipedia.org/wiki/Lisp_(programming_language)">LISP</a>, <a href="https://en.wikipedia.org/wiki/Prolog">Prolog</a> and <a href="https://en.wikipedia.org/wiki/Smalltalk">Smalltalk</a>. We didn't find PostScript's <a href="https://en.wikipedia.org/wiki/Stack-oriented_programming">stack-based</a> language intimidating. But already by that time Darwinian evolution had focused CS education on C-like languages, so the majority of application programmers were intimidated. And NeWS wasn't just <i>stack-oriented</i>, it was also <i>object-oriented</i> and <i>multi-threaded</i>, and none of these were optional, making it even more intimidating. In a sense NeWS was an echo of the success of Sun in the early days — a bunch of really good engineers building the system <i>they</i> wanted to use, not one for the mass market.</li>
<li>A major reason for Sun's early success was that they in effect open-sourced the <a href="https://en.wikipedia.org/wiki/Network_File_System">Network File System</a>.  X11 was open source under the MIT license.  I, and some of the other Sun engineers, understood that NeWS could not displace X11 as the Unix standard window system without being equally open source.  But Sun's management looked at NeWS and saw superior technology, an extension of the PostScript that Adobe was selling, and couldn't bring themselves to give it away.  But they also couldn't ignore the fact that X11 was popular with their customer base, who could run the MIT X11 environment any time they wanted.  The result was the ghastly kludge called the <a href="https://en.wikipedia.org/wiki/Xnews_(X11_server)">Xnews server</a>, a monument to the inability of Sun to follow McNealy's "all the wood behind one arrow" dictum. Wikipedia <a href="https://en.wikipedia.org/wiki/Xnews_(X11_server)">correctly notes that</a>:<br />
<blockquote>
This seriously degraded the NeWS interpreter performance and was not considered a very good X11 server either.
</blockquote></li>
</ul>
<h3>Longevity</h3>
The anniversary bought forth several commentaries on its extraordinary longevity, including:<br />
<ul>
<li>Richard Speed's <a href="https://www.theregister.com/2024/06/21/x_window_system_is_40/"><i>The X Window System is still hanging on at 40</i></a> is aptly subtitled "Never underestimate the stickiness of legacy technology" and concludes:<br /> <blockquote> <a href="https://www.theregister.com/2022/06/22/the_x_window_system_just/">In 2022, we wondered</a> if "Wayland has what it takes to replace X." Two years later, the question is still open, although the direction of travel is clear. Yet the stickiness of "it just works" is not to be underestimated, and we would not be surprised if the 50th anniversary rolls around and there is still someone clinging to X11 for that one old app that won't run properly on anything else.
</blockquote>
This is very likely. In order to displace X11, Wayland had to be <a href="https://en.wikipedia.org/wiki/Wayland_(protocol)#Compatibility_with_X">compatible with it</a> via the <a href="https://en.wikipedia.org/wiki/XWayland">XWayland</a> server. So there is little motivation to rewrite existing applications to use Wayland directly.</li>
<li>Kevin Purdy's <a href="https://arstechnica.com/gadgets/2024/06/the-x-window-system-is-40-archaic-as-heck-and-still-relevant/"><i>40 years later, X Window System is far more relevant than anyone could guess</i></a> starts:<br />
<blockquote>
Often times, when I am researching something about computers or coding that has been around a very long while, I will come across a document on a university website that tells me more about that thing than any Wikipedia page or archive ever could.<br />
<br />
It's usually a PDF, though sometimes a plaintext file, on a .edu subdirectory that starts with a username preceded by a tilde (~) character. This is typically a document that a professor, faced with the same questions semester after semester, has put together to save the most time possible and get back to their work. I recently found such a document inside Princeton University's astrophysics department: "<a href="https://www.astro.princeton.edu/~strauss/AST303/Xintro.pdf">An Introduction to the X Window System</a>," written by <a href="https://web.astro.princeton.edu/people/robert-lupton">Robert Lupton</a>.<br />
<br />
X Window System, which <a href="https://www.talisman.org/x-debut.shtml">turned 40 years old earlier this week</a>, was something you had to know how to use to work with space-facing instruments back in the early 1980s, when <a href="https://en.wikipedia.org/wiki/VT100">VT100s</a>, <a href="https://en.wikipedia.org/wiki/VAX-11">VAX-11/750s</a>, and Sun Microsystems boxes would share space at college computer labs. As the member of the AstroPhysical Sciences Department at Princeton who knew the most about computers back then, it fell to Lupton to fix things and take questions.
</blockquote>
I really like <a href="https://arstechnica.com/gadgets/2024/06/the-x-window-system-is-40-archaic-as-heck-and-still-relevant/">Lupton's assessment</a>:<br />
<blockquote>
"It worked, at least relative to the other options we had," Lupton said. He noted that Princeton's systems were not "heavily networked in those days," such that the network traffic issues some had with X weren't an issue then. "People weren't expecting a lot of GUIs, either; they were expecting command lines, maybe a few buttons... it was the most portable version of a window system, running on both a VAX and the Suns at the time... it wasn't bad."
</blockquote>
Purdy quotes Evan Jenkins from <a href="https://arstechnica.com/information-technology/2011/03/the-linux-graphics-stack-from-x-to-wayland/"><i>thirteen years ago</i></a>:<br />
<blockquote>
X is the oldest lady at the dance, and she insists on dancing with everyone. X has millions of lines of source, but most of it was written long ago, when there were no GPUs, and no specialized transistors to do programmable shading or rotation and translation of vertexes. The hardware had no notion of oversampling and interpolation to reduce aliasing, nor was it capable of producing extremely precise color spaces. The time has come for the old lady to take a chair.
</blockquote></li>
</ul>
There hasn't been an official release of X11 for <i>twelve years</i>, but it is proving very hard to kill off.<br /> 

<https://blog.dshr.org/2024/07/x-window-system-at-40.html>

---

##  Ohhhhh coooool, a grinning foreskin robot. A team recently &#8220;unveiled a technique... 

date: 2024-07-02, updated: 2024-07-02, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044893-ohhhhh-coooool-a-grinning>

---

##  Supreme Court: Zero Days Since Last Incident 

date: 2024-07-02, updated: 2024-07-02, from: Jason Kittke's blog

 

<https://kottke.org/24/07/supreme-court-zero-days-since-last-incident>

---

**@Dave Winer's Scripting News** (date: 2024-07-02, from: Dave Winer's Scripting News)

<a href="https://www.uscourts.gov/educational-resources/educational-activities/chief-justice-roberts-statement-nomination-process#:~:text=I%20will%20be%20open%20to,not%20to%20pitch%20or%20bat.">Chief Justice John Roberts</a>: “I will decide every case based on the record, according to the rule of law, without fear or favor, to the best of my ability, and I will remember that it's my job to call balls and strikes, and not to pitch or bat.” 

<http://scripting.com/2024/07/02.html#a113412>

---

## 2024-06-28 Biden

date: 2024-07-02, from: Alex Schroeder's Blog

<h1 id="2024-06-28-biden">2024-06-28 Biden</h1>

<p>When I see all this talk about Biden and the US elections I keep thinking: almost all that matters is that Biden has a vice president that can take over as soon as things break down. I still remember thinking when Biden got elected: this guy has nothing; he is the most boring and conflict averse choice. And this was exactly what the US needed. And it’s what the US still needs. A boring candidate whose administration gets stuff done.</p>

<p>Of course, the US also needs a lot of other things: reforms, policy changes, and on and on. And you can have both! Do not vote for the fascist and keep the criticism up. So I can say: racism, Israel, Ukraine, immigration, gerrymandering, gun control, Snowden… work on all these things!! Do it! But just because I’m unhappy about the lack of progress does not mean you should abstain or vote for a fascist.</p>

<p>The fact that both candidates are old white men is a shame, yes of course! But it is not a reason to hand power to the fascists.</p>

<p>And often things can get done at the local level. The Swiss based their constitution on the US constitution (senate, congress, states, federalism) and I know that what is impossible to achieve at the national level can sometimes be achieved at the state level, and what cannot be achieved at the state level can be achieved at the city level, in the community, in the library, at the bar, at home.</p>

<p>Wherever things are not first past the post you can kick Democrats where it hurts and beat them. And then, perhaps, one day, things will get better.</p>

<p>Then again, here in Switzerland percentages go up and down here and there and yet one feels that nothing really changes. It’s hard and people aren’t as social I would prefer them to be.</p>

<p>I do like flowers and trees and birds and amphibians and bees and ants and marine mammals and bison and many other things, though. The help me through the dark times.</p>

<p><a class="tag" href="/search/?q=%23USA">#USA</a></p>

<p><strong>2024-07-02</strong>. I found following <a class="account" href="https://hachyderm.io/@mekkaokereke" title="@mekkaokereke@hachyderm.io">@mekkaokereke</a> eye to be quite interesting.
He says stuff like the following:</p>

<blockquote>
<p>A quote from the Biden Trump debate. Which candidate said this, Trump or Biden?</p>

<p>&ldquo;I put more – we put more police on the street than any administration has. He wants to cut the cops.&rdquo;</p>

<p>As a reminder, Biden is the candidate that needs more Black men to vote for him, or he is likely to lose the election.</p>

<p>As a reminder, Biden is the one that pushed for and passed the 80s crime bill.</p>

<p>As a reminder, Biden is the one that instructed cities to transfer ~$1B of Covid relief funds to police budgets.</p>

<p>Y&rsquo;all are betting the future of the free world on Biden being able to say and do stuff like this, and then still get 95% of the votes of Black men? Seriously? That&rsquo;s the strategy?</p>

<p>Man, lemme go ahead and prepare for this next Trump term then, because that strategy is awful.</p>

<p>How did y&rsquo;all ever think that would work?</p>
</blockquote>

<p>Note how he isn&rsquo;t in favour of Trump.
But he sure isn&rsquo;t in favour of Biden, either.
The message that I&rsquo;m hearing: Democrats, do better!
And by &ldquo;do better&rdquo;, I mean: Do better for the constituents that you expect to vote for you.</p>

<p>This is what all the austerity has led to:
People hate the current government and don&rsquo;t see anybody else to trust and vote for.</p>

<p>This is not about poor misguided undesirables voting for Trump.
This is about the Democrats not doing enough for the people that aren&rsquo;t voting.</p> 

<https://alexschroeder.ch/view/2024-06-28-biden>

---

## Public Surveillance of Bars

date: 2024-07-02, updated: 2024-07-01, from: Bruce Schneier blog

<p>This <a href="https://sfstandard.com/2024/06/29/2night-live-stream-bars-privacy-concerns/">article about an app</a> that lets people remotely view bars to see if they&#8217;re crowded or not is filled with commentary&#8212;on both sides&#8212;about privacy and openness.</p>
 

<https://www.schneier.com/blog/archives/2024/07/public-surveillance-of-bars.html>

---

## 2024-07-02 SSH hardening

date: 2024-07-02, from: Alex Schroeder's Blog

<h1 id="2024-07-02-ssh-hardening">2024-07-02 SSH hardening</h1>

<p>Today I decided to harden my SSH server configuration and did the one thing you should never do: I logged out before testing the new configuration and promptly locked myself.
Don&rsquo;t be like me.</p>

<p>Here&rsquo;s what I wanted to do: Positron Security&rsquo;s <a href="https://www.sshaudit.com/">SSH Configuration Auditor</a> gave me a B+ grade and there were <a href="https://www.sshaudit.com/hardening_guides.html#debian_12">some suggestions</a>. I had already implemented some of them because a long time ago I had followed <a href="https://disknotifier.com/blog/simple-ssh-security/">a different SSH hardening guide</a>.</p>

<p>The thing that broke my setup is that the new hardening guide specified the following:</p>

<pre><code>RequiredRSASize 3072
</code></pre>

<p>The effect was that I could no longer log in:</p>

<pre><code>alex@alexschroeder.ch: Permission denied (publickey).
</code></pre>

<p>That&rsquo;s because I have passwords disabled. You can only get in via public key. And my public key wasn&rsquo;t good enough: it has 2048 bits:</p>

<pre><code>ssh-keygen -lf .ssh/id_rsa
2048 SHA256:************/****************************** alex@Megabombus.local (RSA)
</code></pre>

<p>So what I had to do:</p>

<ul>
<li>Visit the hosting provider&rsquo;s website</li>
<li>Enable VNC</li>
<li>Open a &ldquo;NoVNC&rdquo; window</li>
<li>Enable login using passwords without having access to Shift or Control keys (wtf?)</li>
</ul>

<p>That meant commenting these two in <code>/etc/ssh/sshd_config</code>:</p>

<pre><code>PermitRootLogin prohibit-password
PasswordAuthentication no
</code></pre>

<p>Restarted <code>sshd</code> on the server:</p>

<pre><code>systemctl restart sshd
</code></pre>

<p>I already had an <code>ed25519</code> identity:</p>

<pre><code>ls .ssh/id* 
.ssh/id_ed25519  .ssh/id_ed25519.pub  .ssh/id_rsa  .ssh/id_rsa.pub
</code></pre>

<p>I probably created them using the following:</p>

<pre><code>ssh-keygen -t ed25519
</code></pre>

<p>I used <code>ssh-copy</code> to copy them to the server:</p>

<pre><code>ssh-copy-id -i .ssh/id_ed25519 sibirocobombus
</code></pre>

<p>And I added the correct setting to my <code>.ssh/config</code>:</p>

<pre><code>Host sibirocobombus
  HostName alexschroeder.ch
  Port 882
  User alex
  IdentityFile ~/.ssh/id_ed25519
</code></pre>

<p>I use the <code>ssh</code> config file all the time!</p>

<p>This allowed me to uncomment these two in <code>/etc/ssh/sshd_config</code> again:</p>

<pre><code>PermitRootLogin prohibit-password
PasswordAuthentication no
</code></pre>

<p>I restarted <code>sshd</code> on the server:</p>

<pre><code>systemctl restart sshd
</code></pre>

<p>Note to self: Should I ever need to check the server fingerprints, see <a href="ssh">ssh</a>.</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a></p> 

<https://alexschroeder.ch/view/2024-07-02-ssh-hardening>

---

## 2024-07-02 The importance of moderation

date: 2024-07-02, from: Alex Schroeder's Blog

<h1 id="2024-07-02-the-importance-of-moderation">2024-07-02 The importance of moderation</h1>

<p><a class="account" href="https://idiomdrottning.org/users/Sandra" title="@Sandra@idiomdrottning.org">@Sandra</a> recently wrote <a href="https://idiomdrottning.org/usenet">Usenet had to die</a>, arguing that Usenet was wasteful, everybody carrying a copy of everybody else, including spam and binaries.
I agree with all the points made. The idea that there is one global network of groups, with everybody carrying all the groups and everybody being allowed to post led to the downfall of Usenet.</p>

<p>Having recently hooked my laptop and server server to a handful of other servers using UUCP, NNCP and NNTP for file copies, mail and news, I just want to emphasize that the same technology can be used to build a different net.</p>

<ul>
<li>UUCP doesn&rsquo;t have to be anonymous. Calling systems can be required to have a username and password.</li>
<li>NNTP doesn&rsquo;t have to be anonymous. Systems can be known peers based on IP numbers and users can be required to authenticate themselves.</li>
<li>Servers don&rsquo;t have to mirror all the groups. Systems can be selective in what they accept and in what they pass on.</li>
</ul>

<p>The spam problem arises when two systems &ldquo;trust&rdquo; each other and peer messages but one of the systems doesn&rsquo;t act on abuse and moderation reports.
Perhaps Usenet generated too much of a workload for system administrators so they stopped following up on those reports.
Perhaps some servers had become too big to ban.</p>

<p>I think we have the exact same problems with fedi.
Some instances seem too big to defederate from.</p>

<p>Unfortunately, individual blocking doesn&rsquo;t work.
If my posts end up on an unmoderated server because somebody I like is following me, the post shows up in the federated feed on that server and all the other users that I don&rsquo;t like can comment and those comments are sent back to me.
I can block them all individually or block the large instance including my small number of friends.
That instance has become too big to ban.</p>

<p>To come back to net news:
From my point of view, the protocols are not to blame for the downfall of Usenet.
It was the lack of moderation that killed Usenet.
It was the ease of setting up web forums and being able to moderate them that made Usenet irrelevant.
In the end, to all these people federation was not as important as moderation.</p>

<p>Administrators were unwilling to drop the groups that were overrun with people that needed moderation.
This is a problem on all platforms with groups, e.g. Reddit.</p>

<p>Administrators were unwilling to ban the instances that didn&rsquo;t moderate their users.
This is a problem on all federated platforms, e.g. Mail.</p>

<p>Administrators were unwilling to create new groups for people in their niches.
At least nobody seems to be making that mistake again.
IRC, Reddit, Discord – they all demonstrated that ad-hoc group formation and self-moderation was viable.</p>

<p>This is why I think moderation, group forming and selectivity of federation are the most important quality of a platform.</p>

<p>We can have a small network of servers offering mail and news exchange, like in the old days.
The problem is unmoderated growth.</p>

<p><a class="tag" href="/search/?q=%23Social_Media">#Social Media</a></p> 

<https://alexschroeder.ch/view/2024-07-02-moderation>

---

## Andrew Mellon’s humongous donation to Donald Trump

date: 2024-07-02, from: Robert Reich's blog

The best evidence yet for why we need to tax wealth 

<https://robertreich.substack.com/p/andrew-mellons-humongous-donation>

---

## July 1, 2024 

date: 2024-07-02, from: Heather Cox Richardson blog

Today the United States Supreme Court overthrew the central premise of American democracy: that no one is above the law. It decided that the president of the United States, possibly the most powerful person on earth, has &#8220;absolute immunity&#8221; from criminal prosecution for crimes committed as part of the official acts at the core of presidential powers. The court also said it should be presumed that the president also has immunity for other official acts as well, unless that prosecution would not intrude on the authority of the executive branch. 

<https://heathercoxrichardson.substack.com/p/july-1-2024>

---

## Dev Digest 122 – Cracks in the polyfill

date: 2024-07-02, from: Chris Heilmann's blog

Hello and join me to learn about removing malicious code, what the web is up to and why there are some cool new careers in AI. News and articles First things first: if you use Polyfill.io delete it immediately from your server! The &#8211; by now pretty unnecessary library &#8211; has been acquired and is [&#8230;] 

<https://christianheilmann.com/2024/07/02/dev-digest-122-cracks-in-the-polyfill/>

---

## Figma AI Is a Rip-Off Engine

date: 2024-07-02, updated: 2024-07-02, from: Daring Fireball

 

<https://x.com/asallen/status/1807675146020454808>

---

## Systems: How the Ultra-Wealthy Think About Money

date: 2024-07-02, updated: 2024-07-02, from: Anil Dash blog

 

<https://anildash.com/2024/07/02/money-flows/>

---

## A Supreme Gift to Donald Trump

date: 2024-07-01, from: Dan Rather's Steady

Effectively, the American president is now a monarch 

<https://steady.substack.com/p/a-supreme-gift-to-donald-trump>

---

## June 30, 2024

date: 2024-07-01, from: Heather Cox Richardson blog

 

<https://heathercoxrichardson.substack.com/p/june-30-2024-e24>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

Our challenge is to make sure the really interesting stuff happens on the open web, outside the silos. If that happens we can go on. Otherwise we go right back to where we were when Twitter and Facebook dominated. Not a good place. 17 years of stagnation 

<http://scripting.com/2024/07/01.html#a200300>

---

## Jeff Jarvis and Dave in conversation

date: 2024-07-01, from: Dave Winer's Scripting News

<p>I just did an approx 40 minute <a href="http://scripting.com/2024/07/01/jeffJarvisDiscusses.m4a">podcast</a> interview and discussion with <a href="https://en.wikipedia.org/wiki/Jeff_Jarvis">Jeff Jarvis</a>. I know Jeff from the early days of blogging. He was one of the best discussion leaders at BloggerCon. And he's an accomplished author and educator. </p>
<p>We talk about how to organize news for people who are information starved by whatever it is that our news sources are doing, which is really hard to figure out, but in the end (I argue) who cares why, we have a problem to solve, so let's get on with it.</p>
<p>I talk about the blogging at the Dean campaign in 2004, that's how they got around journalism. I'm sure that's where we have to go, put together what we think would be the Biden blog if the campaign was being run by Joe and Nicco, and I'd be on board, so would Jeff, and we'd help Heather Cox Richardson, and amplify anyone who is making sense and supports democracy. </p>
<p>It could be funded by the <a href="http://scripting.com/2016/07/01/1342.html">People's PAC</a>, or something like it. It wouldn't take very much money, it's just a blog. But it would have powerful ideas that cut through the bullshit, and great videos, and we'd organize marches where people show up to help people.</p>
<p>And the campaign would never stop, we'd always be organizing.</p>
<p>This is the discussion I wanted to start. </p>
<p>Hope you enjoy! :-)</p>
<p>PS: Jeff's mike is much better than mine. Gotta work on that. </p>
 

<http://scripting.com/2024/07/01/195344.html?title=jeffJarvisAndDaveInConversation>

---

## Every day

date: 2024-07-01, from: Dave Winer's Scripting News

<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2024/07/01/everyDay.png"></center>Thanks to NakedJen for this beautiful illustration.</div></p>
 

<http://scripting.com/2024/07/01/194533.html?title=everyDay>

---

## Individual vs AI: Why Personal Matters

date: 2024-07-01, from: Om Malik blog

As generative AI fills our feeds with regurgitated mush, our innate trust in individuals over brands will determine the winners of both attention and revenue. Everyone in media should be racing to become a trusted individual right now. The personal website and the personal newsletter have always been more interesting to me. They’re also more &#8230; 

<https://om.co/2024/07/01/individual-vs-ai-why-personal-matters/>

---

## FCC (Finally) Has a Good Idea

date: 2024-07-01, from: Om Malik blog

FCC Chairwoman Jessica Rosenworcel proposed that the agency require mobile providers to unlock customers’ mobile phones within 60 days of activation. New unlocking rules would allow consumers the freedom to take their existing phones and switch from one mobile wireless service provider to another more easily, as long as the consumer’s phone is compatible with &#8230; 

<https://om.co/2024/07/01/fcc-finally-has-a-good-idea/>

---

## Steered towards wanting

date: 2024-07-01, from: Tracy Durnell Blog

I used to think I was making my taste by reading lots of magazines and watching lots of movies and obsessing over music videos. I was absorbing in many ways an anti–mainstream taste that was nonetheless commodified and codified for me, no less a stooge for a corporate algorithm than young people now&#8230; Which is [&#8230;] 

<https://tracydurnell.com/2024/07/01/steered-towards-wanting/>

---

## The Supreme Court decides, in effect, there will be no Trump trial before the election

date: 2024-07-01, from: Robert Reich's blog

And immunizes a president from wildly illegal actions 

<https://robertreich.substack.com/p/the-supreme-court-decides-in-effect>

---

##  Supreme Court Rules That Presidents Have Absolute Immunity for &#8220;Core Constitutional Powers&#8221; 

date: 2024-07-01, updated: 2024-07-01, from: Jason Kittke's blog

 

<https://kottke.org/24/07/supreme-court-rules-that-presidents-have-absolute-immunity-for-core-constitutional-powers>

---

## 2024-06-30 Connecting the laptop to the server using UUCP

date: 2024-07-01, from: Alex Schroeder's Blog

<h1 id="2024-06-30-connecting-the-laptop-to-the-server-using-uucp">2024-06-30 Connecting the laptop to the server using UUCP</h1>

<p>I recently <a href="2024-06-15-uucp">connected my server to another server via UUCP</a>.
Now I&rsquo;m thinking that perhaps I&rsquo;d like to connect my laptop as another node to it.
I probably don&rsquo;t need it, because I <a href="2024-06-28-nncp">connected the laptop to the server via NNCP</a>.
But still. Perhaps <a class="account" href="https://social.sdfeu.org/@lkh" title="@lkh@social.sdfeu.org">@lkh</a> still wants to do stuff via UUCP.
Perhaps it is the completionist in me.</p>

<p>For reference, see <a href="https://www.bortzmeyer.org/uucp-over-ssh.pdf">UUCP over SSH</a> by <a class="account" href="https://mastodon.gougere.fr/@bortzmeyer" title="@bortzmeyer@mastodon.gougere.fr">@bortzmeyer</a>.
Since we&rsquo;re using SSH, there will be a key pair, and since we&rsquo;re using UUCP, we&rsquo;ll still a username and password.
It&rsquo;s going to be both.</p>

<p>I know, why aren&rsquo;t we using NNCP.</p>

<p>Generate the key pair.</p>

<pre><code>cd /var/spool/uucp
sudo mkdir .ssh
sudo chown uucp:uucp .ssh
cd .ssh
sudo -u uucp ssh-keygen -C &quot;uucp@melanobombus&quot; -f id_rsa
</code></pre>

<p>The file <code>uucp-key.pub</code> now has the public key.</p>

<p>On the server (!), add a line to <code>/var/spool/uucp/.ssh/authorized_keys</code>, replacing the public key:</p>

<pre><code>restrict,command=&quot;/usr/sbin/uucico -u Umelanobombus -l&quot; ssh-rsa KEY_FROM_ID_RSA_PUB uucp@dwalin
</code></pre>

<p>We will be using the username <code>Umelanobombus</code> to connect to the server.
This is not a real user!</p>

<p>On the server, save username and password in <code>/etc/uucp/passwd</code>.</p>

<pre><code>Umelanobombus *secret*
</code></pre>

<p>On the laptop, save system name, username and the same password in <code>/etc/uucp/call</code>.</p>

<pre><code>sibirocobombus Umelanobombus *secret*
</code></pre>

<p>Now we have both levels: the public and private keys that allow the <code>uucp</code> user to connect via <code>ssh</code> – and the username and password that is used by <code>uucp</code>.</p>

<p>Define our own name in <code>/etc/uucp/config</code> on the laptop.</p>

<pre><code>nodename	melanobombus
</code></pre>

<p>Let&rsquo;s add the system to <code>/etc/uucp/sys</code>.
That is, on the laptop, define the server we&rsquo;re going to call.
Since I already know that sibirocobombus will report itself as <code>campaignwiki</code>, I&rsquo;m setting up an <code>alias</code>.
The <code>commands</code> line is important because by default only <code>rmail</code> and <code>rnews</code> are allowed but I want to allow <code>rsmtp</code>, too.
The <code>chat</code> script waits for the &ldquo;Password:&rdquo; prompt and then sends it.
Note that this chat script is much shorter than the one used in &ldquo;UUCP over SSH&rdquo;, linked above.
Apparently there&rsquo;s no &ldquo;Login:&rdquo; prompt on my server so I had to change it.</p>

<pre><code>system sibirocobombus
alias campaignwiki
commands rmail rnews rsmtp
call-login *
call-password *
time any
chat Password: \P
chat-timeout 30
protocol i
port ssh_campaignwiki
</code></pre>

<p>Add the new port to <code>etc/uucp/port</code>.
Note that I&rsquo;m listening to incoming <code>ssh</code> connections on a non-standard port so I have to provide.
Also note that here we&rsquo;re defining the <code>uucp</code> &ldquo;port&rdquo; with a non-standard <code>ssh</code> &ldquo;port&rdquo;.
Just in case you&rsquo;re not already confused.</p>

<pre><code>port ssh_campaignwiki
type pipe
command /usr/bin/ssh -a -x -q -p 882 uucp@campaignwiki.org
reliable true
protocol etyig
</code></pre>

<p>Before doing our first test, make sure that the server is a &ldquo;known host&rdquo; on the laptop, for the <code>uucp</code> user.
Note how I am not using <code>-q</code> because I want to see the prompt!</p>

<p>The password to give on the prompt is the one in <code>/etc/uucp/call</code>.</p>

<pre><code>sudo -u uucp ssh -p 882 uucp@campaignwiki.org
The authenticity of host '[campaignwiki.org]:882 ([2a02:418:6a04:178:209:50:237:1]:882)' can't be established.
ED25519 key fingerprint is SHA256:ups6Q5G8Ab5QT/cTnrv5FpdmdvVtK09ZG8j1ToEBV9c.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '[campaignwiki.org]:882' (ED25519) to the list of known hosts.
PTY allocation request failed on channel 0
Password: *secret*
Shere=campaignwiki
^C
</code></pre>

<p>Let&rsquo;s add the laptop to <code>/etc/uucp/sys</code> on the server.
Since the server is never going to call the laptop, no credentials and no port is required.</p>

<pre><code>system melanobombus
called-login Umelanobombus
commands rmail rnews rsmtp
local-send /
local-receive /var/spool/uucppublic
remote-send /
remote-receive /var/spool/uucppublic
time any
forward ANY
protocol i
</code></pre>

<p>Let&rsquo;s test it!</p>

<p>On the client:</p>

<pre><code>echo hallo &gt; hallo.txt
uucp hallo.txt 'sibirocobombus!~/'
</code></pre>

<p>Let&rsquo;s check the log.</p>

<p>This is what it looks like when things don&rsquo;t work:</p>

<pre><code>uulog|tail
uucp sibirocobombus alex (2024-06-30 18:02:27.50 9274) Queuing send of /home/alex/hallo.txt to ~/
uucico sibirocobombus - (2024-06-30 18:02:27.50 9275) Calling system sibirocobombus (port ssh_campaignwiki)
uucico sibirocobombus - (2024-06-30 18:02:31.51 9275) ERROR: Line disconnected
</code></pre>

<p>You can try to replace <code>-q</code> with <code>-v</code> in <code>/etc/uucp/port</code> in order to see what <code>ssh</code> has to say.</p>

<p>If you try again, the log says that the system is not ready to try again:</p>

<pre><code>uucp sibirocobombus alex (2024-06-30 18:04:47.94 9454) Queuing send of /home/alex/hallo.txt to ~/
uucico sibirocobombus - (2024-06-30 18:04:47.94 9455) Retry time not reached
</code></pre>

<p>Force a call and check the log again.</p>

<pre><code>sudo -u uucp uucico -S sibirocobombus
</code></pre>

<p>You might be specifying the wrong login, or using the wrong chat script.
On the server, the log might look as follows:</p>

<pre><code>uulog|tail
uucico - - (2024-06-30 17:56:42.92 1245805) Incoming call (login Umelanobombus port stdin)
uucico - - (2024-06-30 17:56:49.12 1245805) ERROR: Line disconnected
uucico - - (2024-06-30 18:02:30.70 1247584) ERROR: Bad login
uucico - - (2024-06-30 18:07:25.26 1248690) ERROR: Bad login
</code></pre>

<p>Check the passwords:</p>

<ol>
<li><code>/etc/uucp/call</code> on the laptop says what username and password to use</li>
<li><code>/etc/uucp/passwd</code> on the server says what username and password to accept, separated by a TAB (!)</li>
</ol>

<p>Check the system:</p>

<ol>
<li><code>/etc/uucp/config</code> on the laptop says what the client is called</li>
<li><code>/etc/uucp/sys</code> on the laptop says what the server is called and how to connect to it, using what port</li>
<li><code>/etc/uucp/port</code> on the laptop describes that port</li>
<li><code>/etc/uucp/sys</code> on the server says what the client is called, what username to expect</li>
</ol>

<p>Check the login again, by going through it by hand.
Check whether the chat script would have worked.</p>

<pre><code>sudo -u uucp ssh -p 882 uucp@campaignwiki.org
PTY allocation request failed on channel 0
Password: *secret*
Shere=campaignwiki
^C
</code></pre>

<p>When calling the server, specify a high debugging level:</p>

<pre><code>sudo -u uucp uucico -x 11 -S sibirocobombus
</code></pre>

<p>To look at the debug output.
Here&rsquo;s an example where I mistyped the nodename in <code>/etc/uucp/config</code> on the laptop:</p>

<pre><code>sudo uulog -D
uucico - - (2024-06-30 19:06:09.74 14487) DEBUG: usysdep_detach: Forked; old PID 14486, new pid 14487
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: fsysdep_get_work_init: Found C.NPBZaHpAACZk
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: fsysdep_get_work_init: Found C.NPDpxIuAACce
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: fconn_open: Opening port ssh_campaignwiki (default speed)
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) Calling system sibirocobombus (port ssh_campaignwiki)
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: Forking /usr/bin/ssh -a -x -v -p 882 uucp@campaignwiki.org
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: icexpect: Looking for 5 &quot;word:&quot;
uucico sibirocobombus - (2024-06-30 19:06:09.75 14487) DEBUG: icexpect: Got &quot;Password:&quot; (found it)
uucico sibirocobombus - (2024-06-30 19:06:10.32 14487) DEBUG: fcsend: Writing password &quot;*secret*\r&quot;
uucico sibirocobombus - (2024-06-30 19:06:10.32 14487) DEBUG: zget_uucp_cmd: Got &quot;\020Shere=campaignwiki\000&quot;
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) Login successful
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) DEBUG: fsend_uucp_cmd: Sending &quot;Smelanobobus -R -N047&quot;
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) DEBUG: fconn_write: Writing 23 &quot;\020Smelanobobus -R -N047\000&quot;
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) DEBUG: zget_uucp_cmd: Got &quot;\020RYou are unknown to me\000&quot;
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) ERROR: Handshake failed (You are unknown to me)
uucico sibirocobombus - (2024-06-30 19:06:10.33 14487) DEBUG: fconn_close: Closing connection
uucico sibirocobombus - (2024-06-30 19:06:10.43 14487) DEBUG: Call failed: 4 (Handshake failed)
</code></pre>

<p>If everything worked, however, the log on the client says:</p>

<pre><code>uulog
uucico sibirocobombus - (2024-06-30 19:18:07.77 15159) Calling system sibirocobombus (port ssh_campaignwiki)
uucico sibirocobombus - (2024-06-30 19:18:08.40 15159) Login successful
uucico sibirocobombus - (2024-06-30 19:18:08.41 15159) Handshake successful (protocol 'i' sending packet/window 1024/16 receiving 1024/16)
uucico sibirocobombus alex (2024-06-30 19:18:08.42 15159) Sending /home/alex/hallo.txt (6 bytes)
uucico sibirocobombus alex (2024-06-30 19:18:08.42 15159) Sending /home/alex/hallo.txt (6 bytes)
uucico sibirocobombus - (2024-06-30 19:18:08.42 15159) Protocol 'i' packets: sent 9, resent 0, received 7
uucico sibirocobombus - (2024-06-30 19:18:08.42 15159) Call complete (0 seconds 12 bytes 0 bps)
</code></pre>

<p>The log on the server says:</p>

<pre><code>uucico - - (2024-06-30 19:18:08.89 1265032) Incoming call (login Umelanobombus port stdin)
uucico melanobombus - (2024-06-30 19:18:08.90 1265032) Handshake successful (protocol 'i' sending packet/window 1024/16 receiving 1024/16)
uucico melanobombus alex (2024-06-30 19:18:08.90 1265032) Receiving /var/spool/uucppublic/hallo.txt (6 bytes)
uucico melanobombus alex (2024-06-30 19:18:08.90 1265032) Receiving /var/spool/uucppublic/hallo.txt (6 bytes)
uucico melanobombus - (2024-06-30 19:18:08.91 1265032) Protocol 'i' packets: sent 6, resent 0, received 8
uucico melanobombus - (2024-06-30 19:18:08.91 1265032) Call complete (0 seconds 12 bytes 0 bps)
</code></pre>

<p>And the file is in the public area:</p>

<pre><code>ls /var/spool/uucppublic/
hallo.txt
</code></pre>

<p>And in the other direction, send a similar file to <code>alex@melanobombus</code>.</p>

<pre><code>uuto hallo.txt 'melanobombus!alex'
</code></pre>

<p>On the laptop:</p>

<pre><code>sudo -u uucp uucico -S sibirocobombus
uupick
from campaignwiki: file hallo.txt ?
m .
</code></pre>

<p>And I have it!</p>

<p>Don&rsquo;t fogert the warning in the <code>uuto</code> documentation:</p>

<blockquote>
<p>Note that `uuto&rsquo; does not provide any security – any user on the remote system can examine the files.</p>
</blockquote>

<p>We really should have used NNCP! 😄</p>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a> <a class="tag" href="/search/?q=%23UUCP">#UUCP</a></p> 

<https://alexschroeder.ch/view/2024-06-30-nncp>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

Every day now feels like another January 6. 

<http://scripting.com/2024/07/01.html#a150053>

---

## Updates 2024/Q2

date: 2024-07-01, from: mrusme blog

Project updates from the current consecutive three-month period, with info on
the current status of my projects and next steps. You might find this
interesting in case you're using any of my open source tools. 

<https://xn--gckvb8fzb.com/updates-2024-q2/>

---

##  Tantalizing speculation: the &#8220;Untitled WB/Legendary/Denis Villeneuve Event Film in IMAX&#8221; now scheduled... 

date: 2024-07-01, updated: 2024-07-01, from: Jason Kittke's blog

 

<https://kottke.org/24/07/0044892-tantalizing-speculation-t>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

When talking to ChatGPT think of it as <a href="https://en.wikipedia.org/wiki/Data_(Star_Trek)">Commander Data</a> on Star Trek, who, in an interesting turnabout is a robot played by a human. Oh the humanity. 

<http://scripting.com/2024/07/01.html#a144308>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

The buggy images of ChatGPT perfectly fit the blogger <i>come as you are</i> ethos. We called this <a href="https://www.google.com/search?q=dogma+2000+site%3Ascripting.com">Dogma 2000</a>, the site is gone now, and it's even gone in archive.org. Sad to realize some of the simplest most worthwhile ideas are gone now. 

<http://scripting.com/2024/07/01.html#a143649>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

<a href="https://github.com/scripting/opml.org/issues/22#issuecomment-2200240920">More Blogroll Browser features</a>. Beginnings of a social graph. 

<http://scripting.com/2024/07/01.html#a143217>

---

##  An Excerpt of Sally Rooney&#8217;s Intermezzo 

date: 2024-07-01, updated: 2024-07-01, from: Jason Kittke's blog

 

<https://kottke.org/24/07/an-excerpt-of-sally-rooneys-intermezzo>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/03/13/corectblogroil.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">A new version of <a href="https://browse.blogroll.social/">Blogroll Browser</a>. You can now go directly to the OPML version of a blogroll, and to the HTML page we discovered it in. I know all this must seem strange, hard to figure out what's going on. That's how I feel about it too. But I know there's interesting data here, how people are connected to people. I'm still trying to figure out how to make a browser that engages the mind in that. It can take a long time to figure these things out. I had the basic idea for a blog in 1994, but it wasn't until 1999 that we really had it figured out and implemented for non-techies. This may be like that, or the browser might be just around the corner. 

<http://scripting.com/2024/07/01.html#a125504>

---

**@Dave Winer's Scripting News** (date: 2024-07-01, from: Dave Winer's Scripting News)

Another month <a href="https://github.com/scripting/Scripting-News/blob/master/blog/opml/2024/06.opml">in the archive</a>. Time flies when you're having fun! 

<http://scripting.com/2024/07/01.html#a125021>

---

## Model Extraction from Neural Networks

date: 2024-07-01, updated: 2024-06-28, from: Bruce Schneier blog

<p>A <a href="https://eprint.iacr.org/2023/1526">new paper</a>, &#8220;Polynomial Time Cryptanalytic Extraction of Neural Network Models,&#8221; by Adi Shamir and others, uses ideas from differential cryptanalysis to extract the weights inside a neural network using specific queries and their results. This is much more theoretical than practical, but it&#8217;s a really interesting result.</p>
<blockquote><p><b>Abstract:</b></p>
<p>Billions of dollars and countless GPU hours are currently spent on training Deep Neural Networks (DNNs) for a variety of tasks. Thus, it is essential to determine the difficulty of extracting all the parameters of such neural networks when given access to their black-box implementations. Many versions of this problem have been studied over the last 30 years, and the best current attack on ReLU-based deep neural networks was presented at Crypto’20 by Carlini, Jagielski, and Mironov. It resembles a differential chosen plaintext attack on a cryptosystem, which has a secret key embedded in its black-box implementation and requires a polynomial number of queries but an exponential amount of time (as a function of the number of neurons). In this paper, we improve this attack by developing several new techniques that enable us to extract with arbitrarily high precision all the real-valued parameters of a ReLU-based DNN using a polynomial number of queries and a polynomial amount of time. We demonstrate its practical efficiency by applying it to a full-sized neural network for classifying the CIFAR10 dataset, which has 3072 inputs, 8 hidden layers with 256 neurons each, and about 1.2 million neuronal parameters. An attack following the approach by Carlini et al. requires an exhaustive search over 2^256 possibilities. Our attack replaces this with our new techniques, which require only 30 minutes on a 256-core computer...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/07/model-extraction-from-neural-networks.html>

---

## The Corporate Legal Movement

date: 2024-07-01, from: Robert Reich's blog

Who&#8217;s really behind the Supreme Court&#8217;s attack on the so-called &#8220;administrative state.&#8221; 

<https://robertreich.substack.com/p/the-truth-about-the-administrative>

---

## June 30, 2024 

date: 2024-07-01, from: Heather Cox Richardson blog

In addition to his comments about Russia in Ukraine, Trump said something else in Thursday&#8217;s CNN presentation that should be called out for its embrace of one of the darkest moments in U.S. history. In response to a question about what the presidential candidates would say to a Black voter disappointed with racial progress in the United States, President Joe Biden pointed out that, while there was still far to go, more Black-owned businesses were started under his administration than at any other time in U.S. history, that Black unemployment is at a historic low, and that the administration has relieved student debt, invested in historically Black colleges and universities, and is working to provide for childcare costs, all issues that affect Black Americans. 

<https://heathercoxrichardson.substack.com/p/june-30-2024>

---

## Recognizing fascism

date: 2024-07-01, from: Tracy Durnell Blog

(Archive link.) &#8220;Nevertheless, historical priority does not seem to me a sufficient reason to explain why the word fascism became a synecdoche, that is, a word that could be used for different totalitarian movements. This is not because fascism contained in itself, so to speak in their quintessential state, all the elements of any later [&#8230;] 

<https://tracydurnell.com/2024/06/30/recognizing-fascism/>

---

## The Talk Show: ‘Curiously Short Episodes’

date: 2024-07-01, updated: 2024-07-01, from: Daring Fireball

 

<https://daringfireball.net/thetalkshow/2024/06/30/ep-404>

---

## Monday 1 July, 2024

date: 2024-06-30, from: John Naughton's online diary

Patience A phlegmatic mutt, after a visit to the vet. Quote of the Day “The English way is a committee — we are born with a belief in green cloth, clean pens, and twelve men with grey hair.” Walter Bagehot &#8230; <a href="https://memex.naughtons.org/monday-1-july-2024/39589/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-1-july-2024/39589/>

---

## The Future, Present, and Past of News

date: 2024-06-30, from: Doc Searls (at Harvard), New Old Blog

Eleventh in the News Commons series. all experience is an arch wherethro&#8217; Gleams that untravell&#8217;d world whose margin fades For ever and forever when I move. —Alfred, Lord Tennyson, in Ulysses News flows. It starts with what&#8217;s coming up, goes through what&#8217;s happening, and ends up as what&#8217;s kept—if it&#8217;s lucky. Facts take the same route. [&#8230;] 

<https://doc.searls.com/2024/06/30/the-future-present-and-past-of-news/>

---

## Mini 4WD

date: 2024-06-30, from: Dave Rupert blog

<p>The algorithm sucked me into another model craft hobby: Mini 4WD racing (ミニ四駆). A Mini 4WD is a 1:32 scale model that is a mix between slot cars and RC cars. You don’t control these cars with a remote control nor do they drive in an electrified slot, rather you place your racecar in a plastic track with high walls and send them speeding down the track at ~40km/h.</p>
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/2ZZL5i8vOXM?si=ED2YFsLdI9z7BMbG" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
<p>The twist is you don’t know <a href="https://tamiya.com/japan/mini4wd/feature/2019/1206.html">what the track looks like</a> until race day, so you have to be ready to adapt. There might a big jump, moguls, or a tall mountain to climb. Once racers have seen the course, they have some time to make adjustments by balancing engineering choices about weight, power, braking, handling, batteries, downforce, and more. Are you going to make your car lighter and full send it over the tabletops? Or is slow and steady going to win the race? The races are a brief cacophony of slapping plastic and whirring motors but I can feel the electricity of the room through the screen.</p>
<p><img src="https://cdn.daverupert.com/posts/2024/jcjc.jpg" alt="Untitled" /></p>
<p>Where YouTube hooked me was watching custom 4WD Mini builders like <a href="https://www.youtube.com/@azpaca0">アズパカ</a>, <a href="https://www.youtube.com/@Niwakara">にわから</a>, and <a href="https://www.youtube.com/@techyuuta">ユウタ</a>. They are hellbent on making their cars as fast as possible. In Japanese they call it “タイムアタック” (“Time Attack”). For their time attacks, they use the <a href="https://d7z22c0gz59ng.cloudfront.net/cms/japan/mini4wd/topics/feature/2019_12/circuit_1911_2c1_002.jpg">Japan Cup Junior Circuit</a> (JCJC) course; a three lane track with a wave feature and a wicked lane change from the inner lane to the outer lane that will send light or fast cars flying off the course. The standardized course (and video format<sup class="footnote-ref"><a href="#fn1" id="fnref1">1</a></sup>) is where the similarities stop because their cars are anything but conventional.</p>
<p>The videos are all about iteration and experimentation. Testing all kinds of parts and gimmicks like 3D printed chassis, side rollers, battery types, motors, wheels, and downforce options. Sometimes the tweaks are small, sometimes they are radical innovations:</p>
<ul>
<li><a href="https://www.youtube.com/watch?v=P8mXdQ9oW2c">An entirely “blade” flat chassis</a></li>
<li><a href="https://www.youtube.com/watch?v=2rgALusRMAs&amp;t=396s">A chassis with all the weight to one side</a></li>
<li><a href="https://www.youtube.com/watch?v=-o--_xP1xBA">A bendy chassis to bend around corners.</a></li>
<li><a href="https://www.youtube.com/watch?v=HKWx_TMOzvo">A chassis with a motor on each wheel</a></li>
<li><a href="https://www.youtube.com/watch?v=P8mXdQ9oW2c">A chassis with a computer fan in the middle</a></li>
<li><a href="https://www.youtube.com/watch?v=FlLuqw_Bf08">A car with knives</a></li>
<li><a href="https://www.youtube.com/watch?v=S1J8fqEXrv0">A dual-fan chassis that looks like a GPU</a>.</li>
<li>A car with model rocket engines!? <a href="https://www.youtube.com/watch?v=cRpmNh-kOkE">Why not</a>.</li>
</ul>
<p>That sort of raw, no-rules experimentation is refreshing to watch. It looks like dumb fun. A reason to own a 3D printer. They experiments don’t always work and will fail spectacularly, but lessons get learned. And if you watch enough videos, you see them getting faster.</p>
<ul>
<li>A stock car will complete all three laps in about 5 seconds.</li>
<li>Cars they made a year ago will go around in 3 seconds.</li>
<li>Cars they made six months ago, 2 seconds.</li>
<li><a href="https://www.youtube.com/watch?v=Lyoc3my8suY&amp;t=3s">A car from one month ago, 1.63 seconds.</a></li>
</ul>
<p>I’m not sure why Mini 4WD strikes such a chord with me. It could be nostalgia for my RC car days as a ten year old. It could be my penchant for Japanese model making. But I probably know what hooks me the most: this is the flavor of engineering optimization work I like to do. Make it lighter, faster, and able to handle bumps in the road. Websites are of course vastly different than mechanical engineering… but the correlation between weight and speed are enough to <a href="https://web.archive.org/web/20240227130052/https://www.youtube.com/watch?v=alZvGsOVh3o">activate my brain</a>.</p>
<p><img src="https://cdn.daverupert.com/posts/2024/mini4wd.jpg" alt="Untitled" /></p>
<p>So I bought a <a href="https://amzn.to/3W5aHoc">Mini 4WD Starter Pack</a> (and one for my son) to close the loop on my curiosity. They’re only ~$20, so why not. The hitch in the plan is that a beginner track costs $120. It would nice to have an opportunity to run around a complex track without an upfront cost. My hobby shop used to host races and have a track in-store before COVID, but not anymore. Maybe I can provide this as a service to my kids’ friends… yeah… that’s a good justification.</p>
<section class="footnotes">
<ol>
<li id="fn1">
<p>I secretly love the unified video format: a robotic female voice over narrating an engineering process. Don’t mess with success, boys, the formula is working just fine. <a href="#fnref1" class="footnote-backref">↩</a></p>
</li>
</ol>
</section> 

<https://daverupert.com/2024/06/mini-4wd/>

---

## The Personal Internet

date: 2024-06-30, from: Doc Searls (at Harvard), New Old Blog

—is not this: By now we take it for granted. To live your digital life on the Internet, you need accounts. Lots of them. You need one for every website that provides a service, plus your Mac or Windows computers, your Apple or Google-based phones, your home and mobile ISPs. Sure, you can use a [&#8230;] 

<https://doc.searls.com/2024/06/30/the-personal-internet/>

---

## The things we carry

date: 2024-06-30, from: Jonudell blog

For a long time there were only two essential things that I carried everywhere: keys and wallet. Two was a manageable number of objects that I had to remember to put into pockets, and two was a manageable number of pockets to put them in. Then my first phone bumped that number to three. When &#8230; <a href="https://blog.jonudell.net/2024/06/30/the-things-we-carry/" class="more-link">Continue reading <span class="screen-reader-text">The things we carry</span></a> 

<https://blog.jonudell.net/2024/06/30/the-things-we-carry/>

---

## May I have a word with you?

date: 2024-06-30, from: Robert Reich's blog

Friends, I want to try to reassure you about this country. I know that you&#8217;re worried and upset. You have every reason to be. Donald Trump is a vile human being, and he got away with a tsunami of lies Thursday night. Joe Biden didn&#8217;t come across with the vitality he needed to show. 

<https://robertreich.substack.com/p/may-i-have-a-word-with-you>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

<a href="https://imgs.scripting.com/2024/06/30/threadsActivity.png">This is how much</a> of the activity on <a href="https://www.threads.net/@davew/post/C80thldsb0m">Threads</a>, for me at least, comes from the fediverse. 

<http://scripting.com/2024/06/30.html#a160219>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

There's a new <a href="https://github.com/scripting/opml.org/issues/22#issuecomment-2198599127">version</a> of the <a href="https://browser.blogroll.social/">Blogroll Browser</a> this morning. 

<http://scripting.com/2024/06/30.html#a153245>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/06/30/podcastLogo.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">Today's <a href="http://scripting.com/2024/06/30/myOpenVoicemailToALongtimeFriendAboutTheNYTimes.m4a">podcast</a>, what we need from Biden, and how we need journalism to get out of the way. Biden has a base. He should communicate directly with us. Joe, tell us you saw what we saw. A snake oil salesman. A con man. A loser. A criminal. We heard the tape of him blackmailing the Secretary of State of Georgia. He wanted the military to shoot Black Lives Matter protestors. Did he sell our secrets to Putin and others? He did all kinds of horrible stuff that the press has forgotten to talk about. The biggest problem here isn't Biden's age, though it is a problem, it's the controlling nature of our journalism, and the lack of any oversight. They can't be criticized because all we have are our individual voices, with no organization. We keep paying the price. This podcast is in the form of a voicemail to an old friend, <a href="https://en.wikipedia.org/wiki/Jeff_Jarvis">Jeff Jarvis</a>, who I introduce at the beginning of the podcast. We share the same frustrations, I can see it in his posts on various social media networks. I'd like to elevate our discourse. And in the meantime, imho, it's a pretty good story. <i>10 minutes.</i>  <span class="spOldSchoolEmoji">😄</span> 

<http://scripting.com/2024/06/30.html#a140456>

---

## ‘Born in the U.S.A.’

date: 2024-06-30, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/born-in-the-usa>

---

## Sunday caption contest: What?

date: 2024-06-30, from: Robert Reich's blog

And last week's winner 

<https://robertreich.substack.com/p/sunday-caption-contest-what>

---

## June 29, 2024 

date: 2024-06-30, from: Heather Cox Richardson blog

There are many things I would like to write, but I am home, finally, after many months on the road, and it has been a long week. I am going to bed. Tomorrow, I will be out in my kayak in the place where I took this photograph, no matter what the skies decide to throw at me. 

<https://heathercoxrichardson.substack.com/p/june-29-2024>

---

## When the future doesn’t work anymore

date: 2024-06-30, from: Tracy Durnell Blog

 

<https://tracydurnell.com/2024/06/29/when-the-future-doesnt-work-anymore/>

---

**@Dave Winer's Scripting News** (date: 2024-06-30, from: Dave Winer's Scripting News)

Challenging questions: Why don't journalists cover the Biden base? Do they even consider the possibility that there is one? Or do they think they are the base? I thought they weren't supposed to care who the nominees are? Why do they feel entitled to say one candidate should withdraw but not the other? Have any of them even thought this through? 

<http://scripting.com/2024/06/29.html#a024446>

