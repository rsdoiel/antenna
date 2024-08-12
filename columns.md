---
title: columns 2024.33
updated: 2024-08-12 09:38:06
---

# columns 2024.33

(date: 2024-08-12 09:38:06)

---

**@Dave Winer's Scripting News** (date: 2024-08-12, from: Dave Winer's Scripting News)

A new rule for journalists. End the interview on the first egregious lie. Turn the lights out, switch off the recorder, get up and leave. And your report should state clearly that this is why the interview was terminated. It never should have been tolerated in the first place. 

<http://scripting.com/2024/08/12.html#a162319>

---

##  Scott Heiferman sold his dotcom company in 1999 and then went to... 

date: 2024-08-12, updated: 2024-08-12, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045096-scott-heiferman-sold-his->

---

**@Dave Winer's Scripting News** (date: 2024-08-12, from: Dave Winer's Scripting News)

When Google tells you it's easy to convert a site to HTTPS they're wrong. It's an insurmountable job for scripting.com. 30 years of writing is on that domain, lots of different runtimes on lots of different domains which would also have to be converted. Images in all the pages. All that breaks when you flip the switch, which would be easy. I can't walk away from a big part of my life's work. Sorry, not for Google. Every time someone assumes I'm to blame for this situation, that's how Google has tricked you. I followed the rules. They broke them. 

<http://scripting.com/2024/08/12.html#a162013>

---

##  The free healthcare for athletes in the Olympic Village shines a bright... 

date: 2024-08-12, updated: 2024-08-12, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045099-the-free-healthcare-for-a>

---

##  The Political &#8220;Center&#8221; Between Fascism and Democracy Is Fascism 

date: 2024-08-12, updated: 2024-08-12, from: Jason Kittke's blog

 

<https://kottke.org/24/08/the-political-center-between-fascism-and-democracy-is-fascism>

---

## 2024-08-11 Serving bare git on the web

date: 2024-08-12, from: Alex Schroeder's Blog

<h1 id="2024-08-11-serving-bare-git-on-the-web">2024-08-11 Serving bare git on the web</h1>

<p>In the old days, I used <code>cgit</code> to render my git repositories on the web.
It&rsquo;s simple to set up since it&rsquo;s a CGI script.
This is ideal for URLs that get very few hits.
When nobody is requesting the URL, the CGI script isn&rsquo;t running and no resources are being used.
When a URL is requested, however, the CGI script loads, the interpreter loads, the libraries load, the script executes…
It&rsquo;s an expensive end-point!
And you know how it is.
The web is full of leeches and bad bots, crawlers and idiots.
Having an expensive end-point means it needs protection.</p>

<p>For I while I thought that <code>legit</code> was the answer.
It was nice and fast and all that.
But recently, <code>git clone</code> no longer worked.
It calls <code>git upload-pack</code> as an intermediate workaround for <a href="https://github.com/go-git/go-git/issues/1062">#1062</a>.
This was failing for some reason, however.
I tinkered with it for a while but didn&rsquo;t get anywhere.</p>

<p>Then I started thinking about <a class="account" href="https://idiomdrottning.org/users/Sandra" title="@Sandra@idiomdrottning.org">@Sandra</a>&rsquo;s post on <a href="https://idiomdrottning.org/hosting-git-repos">hosting git repos</a>.
I made some changes to my Apache config and now <code>git clone</code> works again.</p>

<p>The key is that you need a <code>post-update</code> hook that calls <code>git update-server-info</code>.
Each git repository already comes with a <code>post-update.sample</code> hook containing the necessary code, so I needed to loop over all the bare repositories I had and rename the example hook.</p>

<p>Using the Fish shell:</p>

<pre><code>for d in *.git
    sudo -u git mv $d/hooks/post-update.sample $d/hooks/post-update
end
</code></pre>

<p>Sadly, this is not good enough.</p>

<p>In order to generate an <code>index.html</code> file for every repository, I need a hook that regenerates it.
If you know how to determine whether regeneration can be skipped, I&rsquo;d love to hear how to that.</p>

<p>This hook also updates or adds the <code>AddDescription</code> lines I need.</p>

<p>I prepared a hook that I wanted to install in every repository and saved it as <code>~/post-update</code>.</p>

<p>This is what it looks like, using the Fish shell:</p>

<pre><code>#!/usr/bin/fish

git update-server-info

# create index.html
set branch (git branch --show-current)
set template (cat /home/git/.readme.html | string collect)
set title (basename (pwd))
set body (git show $branch:README.md | cmark --to html | string collect)
printf &quot;$template&quot; &quot;$title&quot; &quot;$body&quot; &quot;$title&quot; &gt; index.html

# update description
set description (cat description)
sed --in-place=~ --expression &quot;/ $title/d&quot; /home/git/.htaccess
printf &quot;AddDescription \&quot;$description\&quot; $title\n&quot; &gt;&gt; /home/git/.htaccess
</code></pre>

<p>(I need the title twice, once for the title and once for the reminder on how to clone.)</p>

<p>I turn Markdown into HTML using <code>cmark</code>.
Common Mark is the closest we have to a standard, I guess.</p>

<p>The template <code>/home/git/.readme.html</code> looks like this:</p>

<pre><code>&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
  &lt;head&gt;
    &lt;meta charset=&quot;utf-8&quot;&gt;
    &lt;meta name=&quot;format-detection&quot; content=&quot;telephone=no&quot;&gt;
    &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width&quot;&gt;
    &lt;title&gt;%s&lt;/title&gt;
    &lt;style&gt;
html { max-width: 70ch; padding: 1ch; margin: auto; }
body { hyphens: auto; }
    &lt;/style&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;nav&gt;
      &lt;a href=&quot;https://src.alexschroeder.ch/&quot;&gt;Source code repositories&lt;/a&gt;
    &lt;/nav&gt;
    &lt;main&gt;
%s&lt;/main&gt;
    &lt;footer&gt;
      &lt;h2&gt;Clone&lt;/h2&gt;
      &lt;pre&gt;
&lt;mark&gt;git clone https://src.alexschroeder.ch/%s&lt;/mark&gt;
      &lt;/pre&gt;
    &lt;/footer&gt;
  &lt;/body&gt;
&lt;/html&gt;
</code></pre>

<p>So now I needed to distribute the <code>post-update</code> hook to every repository and run it once.
I wrote yet another Fish script, <code>~/recreate-index</code>:</p>

<pre><code>#!/usr/bin/fish
for d in /home/git/*.git
    echo $d
    cd $d
    cp ~/post-update hooks/
    chown git:git hooks/post-update
    chmod 775 hooks/post-update
    sudo -u git git hook run post-update
end
</code></pre>

<p>I&rsquo;m currently hosting 95 repositories according to <code>ls -d /home/git/*.git | wc -l</code>.
Some of these don&rsquo;t have a <code>README.md</code> file.
Should I ever touch them again, I&rsquo;ll have to investigate.</p>

<p>Now, for the Apache web server – I changed my site to the following:</p>

<pre><code>&lt;VirtualHost *:443&gt;
    ServerAdmin alex@alexschroeder.ch
    ServerName src.alexschroeder.ch
    Include conf-enabled/blocklist.conf
    SSLEngine on
    DocumentRoot /home/git
   &lt;Directory /home/git&gt;
        Options Indexes
        AllowOverride All
        Require all granted
    &lt;/Directory&gt;
&lt;/VirtualHost&gt;
</code></pre>

<p>The <code>/home/git</code> directory has an <code>.htaccess</code> file that starts out containing the following:</p>

<pre><code>HeaderName .top.html
IndexOptions SuppressIcon SuppressSize FancyIndexing HTMLTable
IndexOrderDefault Descending Date
</code></pre>

<p>The <code>.top.html</code> file contains a fragment to add to the top of the index:</p>

<pre><code>&lt;style&gt;
body { max-width: 80ch }
td { padding: 0.5ex 1em 0 0; white-space: nowrap; overflow-x: auto }
&lt;/style&gt;
&lt;h1&gt;Source code repositories&lt;/h1&gt;
&lt;p&gt;
  Hello!
&lt;/p&gt;
&lt;p&gt;
  I'm Alex Schroeder.
  These are my source code repositories. You can find out more about me on
  &lt;a href=&quot;https://alexschroeder.ch/&quot;&gt;my blog&lt;/a&gt;. There, you'll also find a page
  listing ways to &lt;a href=&quot;https://alexschroeder.ch/view/Contact&quot;&gt;contact me&lt;/a&gt;.
&lt;/p&gt;
&lt;p&gt;
  As for the git repositories, you should be able to clone them as they are.
  For example:
&lt;/p&gt;
&lt;pre&gt;
  git clone https://src.alexschroeder.ch/oddmu.git
&lt;/pre&gt;
&lt;p&gt;
  For more about this setup, see
  &lt;a href=&quot;https://idiomdrottning.org/hosting-git-repos&quot;&gt;How to host git repos&lt;/a&gt;
  by &lt;a href=&quot;https://idiomdrottning.org/users/Sandra&quot;&gt;@Sandra&lt;/a&gt; and my post,
  &lt;a href=&quot;https://alexschroeder.ch/edit/2024-08-11-bare-git&quot;&gt;2024-08-11 Serving bare git on the web&lt;/a&gt;.
&lt;/p&gt;
</code></pre>

<p><a href="https://src.alexschroeder.ch/">Take a look</a>!</p>

<p><a class="tag" href="/search/?q=%23Butlerian_Jihad">#Butlerian Jihad</a> <a class="tag" href="/search/?q=%23Git">#Git</a> <a class="tag" href="/search/?q=%23Administration">#Administration</a></p>

<p><strong>2024-08-12</strong>. I wondered about links from the README to local files.
Right now, linking to images and files hosted in the same repository doesn&rsquo;t work since they don&rsquo;t exist in the raw repository.
The question then becomes, as far as I am concerned, whether this README is supposed to speak to developers or end-users?
If it is for developers, then pictures, screenshots, PDF files and all of that don&rsquo;t need to be linked from the repository.
If you are interested in these things, do a <code>git clone --depth 1</code> and investigate locally.</p>

<p>If the repository is for the end users, however, things are harder.
The <code>post-update</code> hook should extract all the local files linked to from the README.
Something like the following, perhaps:</p>

<pre><code>for file in (printf &quot;%s\n&quot; $body | /home/oddmu/oddmu links - | egrep -v '^(https?:|mailto:|/)')
    set dir (dirname $file)
    if test ! -d $dir
        mkdir -p $dir
    end
    echo $file; sudo -u git git show $branch:$file &gt; $file
end
</code></pre>

<p>This uses <a href="oddmu">oddmu</a> to extract the links from a Markdown file, creates the necessary directories and checks out the files.</p>

<p>But if the files are no longer linked from the README, they are not deleted.
If a directory is linked from the README (I have done this! 🤦), the checkout won&rsquo;t work.</p>

<p>I think the better way forward is to move this information elsewhere.
The README is not the documentation.</p>

<p>And with that, I think I did it! Serving git repositories from static files. A single directory per project containing the bare git data and a single <code>index.html</code> file. No more gazillion end points for crawlers to lose themselves.</p> 

<https://alexschroeder.ch/view/2024-08-11-bare-git>

---

##  Vivian Jenna Wilson, Elon Musk&#8217;s estranged daughter, excoriates Walter Isaacson for his... 

date: 2024-08-12, updated: 2024-08-12, from: Jason Kittke's blog

 

<https://kottke.org/24/08/0045097-vivian-jenna-wilson-elon->

---

## Taxonomy of Generative AI Misuse

date: 2024-08-12, updated: 2024-08-12, from: Bruce Schneier blog

<p>Interesting paper: &#8220;<a href="https://arxiv.org/abs/2406.13843">Generative AI Misuse: A Taxonomy of Tactics and Insights from Real-World Data</a>&#8220;:</p>
<blockquote><p>Generative, multimodal artificial intelligence (GenAI) offers transformative potential across industries, but its misuse poses significant risks. Prior research has shed light on the potential of advanced AI systems to be exploited for malicious purposes. However, we still lack a concrete understanding of how GenAI models are specifically exploited or abused in practice, including the tactics employed to inflict harm. In this paper, we present a taxonomy of GenAI misuse tactics, informed by existing academic literature and a qualitative analysis of approximately 200 observed incidents of misuse reported between January 2023 and March 2024. Through this analysis, we illuminate key and novel patterns in misuse during this time period, including potential motivations, strategies, and how attackers leverage and abuse system capabilities across modalities (e.g. image, text, audio, video) in the wild...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/08/taxonomy-of-generative-ai-misuse.html>

---

## The Trump crack-up

date: 2024-08-12, from: Robert Reich's blog

His fragile ego can&#8217;t take it 

<https://robertreich.substack.com/p/the-trump-crackup>

---

## verbose, verboser, verbosest

date: 2024-08-12, from: Daniel Stenberg Blog

A key feature for a tool like curl is its ability to help the user diagnose command lines and operations that do not work the way the user intended them to. When I do XYZ, why does it not work? The command line option -v and its longer version --verbose have been supported by curl &#8230; <a href="https://daniel.haxx.se/blog/2024/08/12/verbose-verboser-verbosest/" class="more-link">Continue reading <span class="screen-reader-text">verbose, verboser, verbosest</span> <span class="meta-nav">&#8594;</span></a> 

<https://daniel.haxx.se/blog/2024/08/12/verbose-verboser-verbosest/>

---

## The most surprising win at the Olympics: Peacock streaming

date: 2024-08-12, from: Matt Haughey blog

<p>Right before the pandemic hit, I moved into a new house that was just outside of cable TV coverage. And while I&apos;d dabbled in streaming apps for years, this was the first time I was forced to become a full-time cord-cutter.</p><p><em>(note: I briefly considered getting DirecTV but</em></p> 

<https://a.wholelottanothing.org/most-surprising-olympics-win-peacock-streaming-2/>

---

## August 11, 2024 

date: 2024-08-12, from: Heather Cox Richardson blog

Vice President Kamala Harris&#8217;s choice of Minnesota governor Tim Walz to be her running mate seems to cement the emergence of a new Democratic Party. 

<https://heathercoxrichardson.substack.com/p/august-11-2024>

---

**@Jessica Smith's blog** (date: 2024-08-12, from: Jessica Smith's blog)

<p>My sister just got back from two months in Europe and returned bearing gifts, including this adorable onesie for our baby in utero that I just had to share 😅 I couldn&rsquo;t help but quip, “Ah, a country I&rsquo;ve never been to!” (in good humour – it&rsquo;s super cute, I was very appreciative!) but seriously, I guess I do have some Irish heritage, and therefore, so does our baby, so it still works. It&rsquo;s a gorgeous onesie in any case 😂</p>
<img src="https://www.jayeless.net/media/2024/08/ireland-baby-onesie.jpeg" alt="A green baby onesie with the word “IRELAND” on it and a cute cartoony illustration of a leprechaun hugging a sheep" class="u-photo"> 

<https://www.jayeless.net/2024/08/ireland-baby-onesie.html>

---

## Monday 12 August, 2024

date: 2024-08-11, from: John Naughton's online diary

Sunset over the Hall Quote of the Day ”Whether it was a good idea to print the prefaces in a single volume is a moot point, since they were not designed by their author to be encountered in a block. &#8230; <a href="https://memex.naughtons.org/monday-12-august-2024/39741/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-12-august-2024/39741/>

---

**@Dave Winer's Scripting News** (date: 2024-08-11, from: Dave Winer's Scripting News)

A lot of people are thinking that <a href="https://www.threads.net/@davew/post/C-jAIEDp-9K">Threads</a> is the new "nice" version of The Original Twitter, but folks, that's pure <a href="http://scripting.com/2024/08/11/bullshit2.m4a">bullshit</a> -- remember who owns Threads and ask yourself if you want that dude to be in charge of our political organizing network. We need <a href="https://shownotes.scripting.com/scripting/2024/08/04/itsTimeToCreateOurOwnMediaAgain.html">something</a> better. 

<http://scripting.com/2024/08/11.html#a225416>

---

**@Dave Winer's Scripting News** (date: 2024-08-11, from: Dave Winer's Scripting News)

Idea for a neat product from Automattic or really anyone: Configure WordPress for writing a book, hook it up to an AI service that can always turn that site into prose, reorganized into chapters, however you'd like, on demand, in an instant. You could use an outliner to arrange the table of contents and it could automatically generate a back of the book index. Technologically I think today's AI is ready to do this, just needs to be packaged. Charge a fair price for the service, esp at the beginning it would totally be worth it. Who knows where it would lead. I bet a lot of writers would use it, I certainly would. 

<http://scripting.com/2024/08/11.html#a222822>

---

**@Dave Winer's Scripting News** (date: 2024-08-11, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/08/11/zuckerberg.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">I carry two phones, an <a href="https://en.wikipedia.org/wiki/IPhone_13_Pro">iPhone 13 Pro</a> and a <a href="https://en.wikipedia.org/wiki/Pixel_6">Pixel 6 Pro</a>. The latter is my main phone, and I prefer it to the Apple phone, not sure why, it's what I use for most things. I need the iPhone because I use an Apple Watch. Lately there's been some trouble with the screen on the Pixel 6, on certain gestures, the right edge lights up in bright green and then immediately returns to normal. I'm thinking the display may be about to fail? It might be time for a new phone. So I went to the Pixel site to see what they have that's new and found that they're announcing a new phone, the <a href="https://chatgpt.com/share/ac8f1461-9923-43da-87b9-b951ff2f32b2">Pixel 9</a>, on Tuesday. So I immediately, of course, dropped the idea of buying an upgrade today, why not wait till the new version is out. I looked over the teaser, guessing that AI figures big in this release. Not sure how I feel about that because the last thing I want to do is switch over to Google's AI from my beloved ChatGPT. Kind of the same thing I see happening with Threads re Twitter. 

<http://scripting.com/2024/08/11.html#a222419>

---

**@Dave Winer's Scripting News** (date: 2024-08-11, from: Dave Winer's Scripting News)

<img class="imgRightMargin" src="https://imgs.scripting.com/2024/07/03/smallerPatrioticKitty.png" border="0" style="float: right; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; padding-right: 15px;">From now on, until further notice, when I feel like watching some mind-numbing "news" program, I'm going to have a look at the <a href="https://www.youtube.com/@kamalaharris">Kamala Harris channel</a> on YouTube. I don't mind doing hard work, I just don't want to hear what the NYT-centered media has to say because it's all <a href="http://scripting.com/2024/08/11/bullshit2.m4a">bullshit</a>. If I have to listen to nonstop bullshit, I'd rather hear from people who tell me we can have a bright future, than the usual NYT-spawned <a href="http://scripting.com/2024/08/11/bullshit2.m4a">bullshit</a>. It's just <a href="http://scripting.com/2024/08/11/bullshit2.m4a">bullshit</a>. I'm tired of <a href="http://scripting.com/2024/08/11/bullshit2.m4a">bullshit</a>. That's all I have to say about <a href="http://scripting.com/2024/08/11/bullshit2.m4a">bullshit</a> for now at least. Have a nice day. 

<http://scripting.com/2024/08/11.html#a184725>

---

**@Dave Winer's Scripting News** (date: 2024-08-11, from: Dave Winer's Scripting News)

At some point ChatGPT will imho be programmed to compile C apps to JavaScript, for example, even large ones with bugs. 

<http://scripting.com/2024/08/11.html#a160013>

---

## Sunday caption contest: They’re off!

date: 2024-08-11, from: Robert Reich's blog

And last week&#8217;s winner 

<https://robertreich.substack.com/p/sunday-caption-contest-theyre-off>

---

## ’Joy to the World’

date: 2024-08-11, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/joy-to-the-world>

---

## August 10, 2024

date: 2024-08-11, from: Heather Cox Richardson blog

Leaving you tonight with a picture from one of our favorite places. 

<https://heathercoxrichardson.substack.com/p/august-10-2024>

