---
title: columns
updated: 2025-01-13 07:05:51
---

# columns

(date: 2025-01-13 07:05:51)

---

##  OOO: I&#8217;ll See You Next Week 

date: 2025-01-13, updated: 2025-01-13, from: Jason Kittke's blog

 

<br> 

<https://kottke.org/25/01/ooo-ill-see-you-next-week>

---

## Microsoft Takes Legal Action Against AI “Hacking as a Service” Scheme

date: 2025-01-13, updated: 2025-01-13, from: Bruce Schneier blog

<p>Not sure this will matter in the end, but it&#8217;s a <a href="https://arstechnica.com/security/2025/01/microsoft-sues-service-for-creating-illicit-content-with-its-ai-platform/">positive move</a>:</p>
<blockquote><p>Microsoft is accusing three individuals of running a &#8220;hacking-as-a-service&#8221; scheme that was designed to allow the creation of harmful and illicit content using the company&#8217;s platform for AI-generated content.</p>
<p>The foreign-based defendants developed tools specifically designed to bypass safety guardrails Microsoft has erected to prevent the creation of harmful content through its generative AI services, <a href="https://blogs.microsoft.com/on-the-issues/2025/01/10/taking-legal-action-to-protect-the-public-from-abusive-ai-generated-content/">said</a> Steven Masada, the assistant general counsel for Microsoft&#8217;s Digital Crimes Unit. They then compromised the legitimate accounts of paying customers. They combined those two things to create a fee-based platform people could use...</p></blockquote> 

<br> 

<https://www.schneier.com/blog/archives/2025/01/microsoft-takes-legal-action-against-ai-hacking-as-a-service-scheme.html>

---

## 2025-01-11 ffmpeg and fish, yt-dlp

date: 2025-01-13, from: Alex Schroeder's Blog

<h1 id="2025-01-11-ffmpeg-and-fish-yt-dlp">2025-01-11 ffmpeg and fish, yt-dlp</h1>

<p>If you know, you know.
The <code>ffmpeg</code> command line options.
🤨</p>

<p>Let me collect some function definitions on this page.
I&rsquo;ll be adding more over the years to come, for sure.</p>

<pre><code>function video-resolution
    ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of default=nw=1 $argv
end

# remember to download lower resolutions for smaller laptops
yt-dlp --list-formats URL
yt-dlp --format N URL

# download audio only
yt-dlp --extract-audio --audio-format mp3 URL

# extract audio without converting
ffmpeg -i input.mp4 -vn -acodec copy output.aac

# convert to mp3
ffmpeg -i input.mp4 output.mp3
</code></pre>

<p><a class="tag" href="/search/?q=%23ffmpeg">#ffmpeg</a> <a class="tag" href="/search/?q=%23fish">#fish</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-01-11-ffmpeg>

---

## Go 1.24: Interactive tour

date: 2025-01-13, from: Anton Zhiyanov blog

Weak pointers, faster maps, directory-scoped access, and more. 

<br> 

<https://antonz.org/go-1-24/>

---

## Will Trump get credit for Biden’s successes? 

date: 2025-01-13, from: Robert Reich's blog

Preparing for the Trump Regime Part 2. 

<br> 

<https://robertreich.substack.com/p/will-trump-claim-credit-for-bidens>

---

## January 12, 2025 

date: 2025-01-13, from: Heather Cox Richardson blog

Almost ten weeks after the 2024 election, North Carolina remains in turmoil from it. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-12-2025>

---

## Monday 13 January, 2025

date: 2025-01-13, from: John Naughton's online diary

Webbed! Yeah, well it’s been cold round here. Quote of the Day ”Mark Zuckerberg&#8217;s commitment to free speech is as deep as Exxon&#8217;s commitment to clean energy.” Dave Karpf Musical alternative to the morning’s radio news Norah Jones &#124; Don&#8217;t &#8230; <a href="https://memex.naughtons.org/monday-13-january-2025/40330/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<br> 

<https://memex.naughtons.org/monday-13-january-2025/40330/>

---

## Those who are fighting the blaze

date: 2025-01-12, from: Robert Reich's blog

Friends, 

<br> 

<https://robertreich.substack.com/p/those-who-are-fighting-the-blaze>

---

## I am (not) a Failure: Lessons Learned From Six (and a half) Failed Startup Attempts

date: 2025-01-12, updated: 2025-01-12, from: Ron Garret

A while back I wrote:I've had many, many failures in my life.&nbsp; (Hm, maybe I should write a blog post about that.)This is that post.&nbsp; I'm writing it not as a lament, but rather because I've ended up in a good place in life despite my extraordinary track record of failing at just about everything I've ever tried.&nbsp; If my younger self had heard these stories he might 
have had a less 

<br> 

<https://blog.rongarret.info/2025/01/i-am-not-failure-lessons-learned-from.html>

---

## 2025-01-12 Disk space

date: 2025-01-12, from: Alex Schroeder's Blog

<h1 id="2025-01-12-disk-space">2025-01-12 Disk space</h1>

<p>It&rsquo;s that time of the year again. How to get back disk space?</p>

<p>Open the Files application and empty the trash. (How to do this from the command line?)</p>

<p>Delete the cache for Debian packages:</p>

<pre><code>sudo apt-get clean
</code></pre>

<p>Check out local caches:</p>

<pre><code>ncdu .cache/
</code></pre>

<p>Python stuff:</p>

<pre><code>pip cache purge
</code></pre>

<p>Also, feel free to delete other stuff in there. I just deleted a &ldquo;whisper&rdquo; directory containing a language model I didn&rsquo;t need and a &ldquo;tracker3&rdquo; directory containing data for the Gnome miner, I think. Also &ldquo;chromium&rdquo; because it&rsquo;s not my main browser. I don&rsquo;t care about its cache.</p>

<p>Perlbrew stuff. Find out what Perls you have installed.</p>

<pre><code>perlbrew list
</code></pre>

<p>You aren&rsquo;t going to need them:</p>

<pre><code>perlbrew uninstall perl-5.30.0
perlbrew uninstall perl-5.32.0
</code></pre>

<p>Go build cache:</p>

<pre><code>go clean -cache
</code></pre>

<p><a class="tag" href="/search/?q=%23Administration">#Administration</a></p> 

<br> 

<https://alexschroeder.ch/view/2025-01-12-space>

---

## My Year in Coffee (2024)

date: 2025-01-12, from: mrusme blog

In 2024 I was lucky to enjoy a wide variety of great coffees from roasteries
in Honolulu, Seoul, Vietnam, Berlin, Madrid, Barcelona, Valencia, and other
cities. This is a compilation of many of the coffees I got to taste. 

<br> 

<https://xn--gckvb8fzb.com/my-year-in-coffee-2024/>

---

## Is Bluesky federated like Masto?

date: 2025-01-12, from: Dave Winer's Scripting News

<p>This is one of the dialogs you encounter when getting started with Bluesky. It's easy to see how new users might be led believe that Bluesky is federated, as Mastodon is. I'm a developer and I was confused by what it was saying.</p>
<p><div class="divInlineImage"><center><img class="imgInline" src="https://imgs.scripting.com/2025/01/12/isBlueskyFederated.png"></center>Is Bluesky is federated?</div></p>
 

<br> 

<http://scripting.com/2025/01/12/135321.html?title=isBlueskyFederatedLikeMasto>

---

## The Answer, My Friend … 

date: 2025-01-12, from: Dan Rather's Steady

A Reason To Smile 

<br> 

<https://steady.substack.com/p/the-answer-my-friend>

---

## Sunday caption contest: Genuflecting 

date: 2025-01-12, from: Robert Reich's blog

In honor of Washington Post editorial cartoonist Ann Telnaes 

<br> 

<https://robertreich.substack.com/p/sunday-caption-contest-in-honor-of>

---

## Giving up the pretense

date: 2025-01-12, from: Tracy Durnell Blog

Ryan Broderick at Garbage Day says content moderation died on January 6, 2021: [T]he Insurrection was the first time Americans could truly see the radicalizing effects of algorithmic platforms like Facebook and YouTube that other parts of the world, particularly the Global South, had dealt with for years. A moment of political violence Silicon Valley [&#8230;] 

<br> 

<https://tracydurnell.com/2025/01/11/giving-up-the-pretense/>

---

**@Jessica Smith's blog** (date: 2025-01-12, from: Jessica Smith's blog)

<p>Finished &ldquo;Chained Echoes&rdquo; yesterday, after 45 hours, off and on since August! It took some time to grow on me, but I loved the game in the end – what a fun twists-and-turnsy storyline 😄 I wrote up some further thoughts <a href="https://backloggd.com/u/jayeless/review/2304811/" title="jayeless&#39;s review of Chained Echoes">on Backloggd<span style="white-space: nowrap;">&thinsp;<svg style="height: 0.7em; width: 0.7em;" focusable="false" data-prefix="fas" data-icon="external-link-alt" class="svg-inline--fa fa-external-link-alt fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><title>(external link)</title><path fill="currentColor" d="M432,320H400a16,16,0,0,0-16,16V448H64V128H208a16,16,0,0,0,16-16V80a16,16,0,0,0-16-16H48A48,48,0,0,0,0,112V464a48,48,0,0,0,48,48H400a48,48,0,0,0,48-48V336A16,16,0,0,0,432,320ZM488,0h-128c-21.37,0-32.05,25.91-17,41l35.73,35.73L135,320.37a24,24,0,0,0,0,34L157.67,377a24,24,0,0,0,34,0L435.28,133.32,471,169c15,15,41,4.5,41-17V24A24,24,0,0,0,488,0Z"></path></svg></span></a> if you&rsquo;re interested.</p> 

<br> 

<https://www.jayeless.net/2025/01/chained-echoes.html>

---

## January 11, 2025 

date: 2025-01-12, from: Heather Cox Richardson blog

We&#8217;re home tonight after a week on the road, coming back to a light snowfall that made everything look like it was tucked into bed for the winter. 

<br> 

<https://heathercoxrichardson.substack.com/p/january-11-2025>

---

## Trump's Oligarchy | The Coffee Klatch for January 11, 2025 

date: 2025-01-12, from: Robert Reich's blog

With Heather Lofthouse, Michael Lahanas-Calder&#243;n, and yours truly, Robert Reich 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://api.substack.com/feed/podcast/154644457/96075a4ac9153bf58c1ccfd07cd46563.mp3"></source>
</audio> <a href="https://api.substack.com/feed/podcast/154644457/96075a4ac9153bf58c1ccfd07cd46563.mp3" target="_blank">download audio/mpeg</a><br> 

<https://robertreich.substack.com/p/trumps-oligarchy-the-coffee-klatch-432>

---

**@Jessica Smith's blog** (date: 2025-01-12, from: Jessica Smith's blog)

<p>Re: <a href="https://kolektiva.social/@MikeDunnAuthor/113811096533923320">this Mastodon post<span style="white-space: nowrap;">&thinsp;<svg style="height: 0.7em; width: 0.7em;" focusable="false" data-prefix="fas" data-icon="external-link-alt" class="svg-inline--fa fa-external-link-alt fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><title>(external link)</title><path fill="currentColor" d="M432,320H400a16,16,0,0,0-16,16V448H64V128H208a16,16,0,0,0,16-16V80a16,16,0,0,0-16-16H48A48,48,0,0,0,0,112V464a48,48,0,0,0,48,48H400a48,48,0,0,0,48-48V336A16,16,0,0,0,432,320ZM488,0h-128c-21.37,0-32.05,25.91-17,41l35.73,35.73L135,320.37a24,24,0,0,0,0,34L157.67,377a24,24,0,0,0,34,0L435.28,133.32,471,169c15,15,41,4.5,41-17V24A24,24,0,0,0,488,0Z"></path></svg></span></a>—</p>
<p>The basic definition of terrorism is &ldquo;violence designed to create terror in a civilian population to achieve a political aim&rdquo;. Clearly, not only are states <em>capable</em> of carrying out terrorism, they are by far the primary perpetrators of terrorism in the world. But the UN, being made up of nation-states, has always resisted having a definition of terrorism that acknowledged that, instead including clauses like &ldquo;…by non-nation-state actors&rdquo;. In this way, for example, Israel is &ldquo;not a terrorist state&rdquo;, while the Palestinians defending themselves <em>are</em> terrorists…</p>
<p>And then we reach the modern era, where acts not designed to instill terror in a civilian population at all, like the United Healthcare shooting, get branded as &ldquo;terrorism&rdquo;. Like, according to the ruling class, it&rsquo;s now just terrorism if the ruling class is afraid. No naked self-interest in that at all 🙄</p> 

<br> 

<https://www.jayeless.net/2025/01/terrorism.html>

