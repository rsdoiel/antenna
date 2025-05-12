---
title: snapshots
updated: 2025-05-12 06:08:38
---

# snapshots

(date: 2025-05-12 06:08:38)

---

## AI-Powered Coca-Cola Ad Celebrating Authors Gets Basic Facts Wrong

date: 2025-05-12, from: 404 Media Group

A new Coke ad proudly features a quote from a J.G. Ballard book, only he didn’t write the words and it’s not his book.  

<br> 

<https://www.404media.co/ai-powered-coca-cola-ad-celebrating-authors-gets-basic-facts-wrong/>

---

**@Dave Winer's linkblog** (date: 2025-05-12, from: Dave Winer's linkblog)

A Day in a Democracy (in Texas). 

<br> 

<https://www.texasobserver.org/a-day-in-a-democracy/>

---

**@Dave Winer's linkblog** (date: 2025-05-12, from: Dave Winer's linkblog)

If I were coaching the Knicks, based on past experience, I&#39;d encourage someone to cut a really stinky fart in the locker room. It worked once before. 

<br> 

<http://scripting.com/2024/05/17/134201.html?title=theKnicksAndTheEpicFart>

---

## Rümeysa Öztürk Is Home

date: 2025-05-12, updated: 2025-05-12, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/05/12/rumeysa-ozturk-is-home/>

---

##  The Vatican's Unexpected Hazard, plus Yulia Navalny and the Fiery Truth Teller Tribe 

date: 2025-05-12, from: Tina Brown

Will the pope's loose cannon brother turn into the Vatican version of the Meghan Markle family? 

<br> 

<https://tinabrown.substack.com/p/the-vaticans-unexpected-hazard-plus>

---

**@Dave Winer's linkblog** (date: 2025-05-12, from: Dave Winer's linkblog)

Google Keep brings text formatting to the web. (BTW the web has always had text formatting.) 

<br> 

<https://www.theverge.com/news/664857/google-keep-rich-text-formatting-web-app>

---

## Episode 157 - Only S1 Users Will Survive!

date: 2025-05-11, from: Advent of Computing

<div> <div class="cm-gBCCZY"> <div class="sc-crHmcD guiMUo"> <div class="sc-20f4bdc2-1 bycflT"> <div class="sc-20f4bdc2-0 dVyDBn sc-3a6c4382-0 heMhll"> <div class="sc-cdf8f18d-0 kkPVDe"> <p>The S1 operating system can do it all! It can run on any computer, read any disk, and execute any software. It can be UNIX compatible, DOS compatible, and so, so much more! But... can S1 ship? Today we are talking about an operating system that sounds too good to be true. Is it another example of vaporware? Or is S1 really the world's most sophisticated operating system?</p> </div> </div> </div> </div> </div> </div> <div> <div class="sc-crHmcD dgpzgF" data-tag="post-details"> <div class="sc-crHmcD klLKhV"> <div class="sc-crHmcD fjldlC"> <div class="sc-crHmcD eYIHNT"> <div class="sc-26191b26-1 dqxoJg"> <div class="sc-ffebfeb2-0 kCSlUH"> <div class="sc-ffebfeb2-1 jpbwFD"> </div> </div> </div> </div> </div> </div> </div> </div> 

<audio crossorigin="anonymous" controls="controls">
<source type="audio/mpeg" src="https://traffic.libsyn.com/secure/adventofcomputing/ep157_s1.mp3?dest-id=1206722"></source>
</audio> <a href="https://traffic.libsyn.com/secure/adventofcomputing/ep157_s1.mp3?dest-id=1206722" target="_blank">download audio/mpeg</a><br> 

<https://adventofcomputing.libsyn.com/episode-157-only-s1-users-will-survive>

---

## 564. The Great Northern War: The Battle of the Baltic (Part 1)

date: 2025-05-11, from: This is history podcast

<p>How did the Great Northern War, which saw Sweden pitted against Peter the Great’s Russia and her allies, and would transform Europe forever, begin? Who was Charles XII, Sweden’s King, and a worthy antagonist for the formidable Peter? What terrible miscalculation saw Russia’s Danish allies brutally knocked from the war in its early stage? What [&#8230;]</p>
<p>The post <a href="https://therestishistory.com/564-the-great-northern-war-the-battle-of-the-baltic-part-1/">564. The Great Northern War: The Battle of the Baltic (Part 1)</a> appeared first on <a href="https://therestishistory.com">The Rest is History</a>.</p>
 

<br> 

<https://therestishistory.com/564-the-great-northern-war-the-battle-of-the-baltic-part-1/>

---

**@Dave Winer's linkblog** (date: 2025-05-11, from: Dave Winer's linkblog)

Texas Police Are Slowly Joining What Could Be a ‘Giant ICE Army.’ 

<br> 

<https://www.texasobserver.org/texas-police-287g-ice-army/>

---

## Cursor: Security

date: 2025-05-11, updated: 2025-05-11, from: Simon Willison’s Weblog

<p><strong><a href="https://www.cursor.com/en/security">Cursor: Security</a></strong></p>
Cursor's security documentation page includes a surprising amount of detail about how the Cursor text editor's backend systems work.</p>
<p>I've recently learned that checking an organization's list of documented subprocessors is a great way to get a feel for how everything works under the hood - it's a loose "view source" for their infrastructure! That was how I confirmed that Anthropic's search features <a href="https://simonwillison.net/2025/Mar/21/">used Brave search</a> back in March.</p>
<p>Cursor's list includes AWS, Azure and GCP (AWS for primary infrastructure, Azure and GCP for "some secondary infrastructure"). They host their own custom models on <a href="https://fireworks.ai/">Fireworks</a> and make API calls out to OpenAI, Anthropic, Gemini and xAI depending on user preferences. They're using <a href="https://turbopuffer.com/">turbopuffer</a> as a hosted vector store.</p>
<p>The most interesting section is about <a href="https://www.cursor.com/en/security#codebase-indexing">codebase indexing</a>:</p>
<blockquote>
<p>Cursor allows you to semantically index your codebase, which allows it to answer questions with the context of all of your code as well as write better code by referencing existing implementations. […]</p>
<p>At our server, we chunk and embed the files, and store the embeddings in Turbopuffer. To allow filtering vector search results by file path, we store with every vector an obfuscated relative file path, as well as the line range the chunk corresponds to. We also store the embedding in a cache in AWS, indexed by the hash of the chunk, to ensure that indexing the same codebase a second time is much faster (which is particularly useful for teams).</p>
<p>At inference time, we compute an embedding, let Turbopuffer do the nearest neighbor search, send back the obfuscated file path and line range to the client, and read those file chunks on the client locally. We then send those chunks back up to the server to answer the user’s question.</p>
</blockquote>
<p>When operating in <a href="https://www.cursor.com/security#privacy-mode-guarantee">privacy mode</a> - which they say is enabled by 50% of their users - they are careful not to store any raw code on their servers for longer than the duration of a single request. This is why they store the embeddings and obfuscated file paths but not the code itself.</p>
<p>Reading this made me instantly think of the paper <a href="https://simonwillison.net/2024/Jan/8/text-embeddings-reveal-almost-as-much-as-text/">Text Embeddings Reveal (Almost) As Much As Text</a> about how vector embeddings can be reversed. The security documentation touches on that in the notes:</p>
<blockquote>
<p>Embedding reversal: academic work has shown that reversing embeddings is possible in some cases. Current attacks rely on having access to the model and embedding short strings into big vectors, which makes us believe that the attack would be somewhat difficult to do here. That said, it is definitely possible for an adversary who breaks into our vector database to learn things about the indexed codebases.</p>
</blockquote>

    <p><small></small>Via <a href="https://lobste.rs/s/myrlhi/how_cursor_indexes_codebases_fast">lobste.rs</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/security">security</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/embeddings">embeddings</a>, <a href="https://simonwillison.net/tags/llms">llms</a></p> 

<br> 

<https://simonwillison.net/2025/May/11/cursor-security/#atom-everything>

---

**@Dave Winer's linkblog** (date: 2025-05-11, from: Dave Winer's linkblog)

Teaching Kids Kindness Prepares Them for Success. 

<br> 

<https://www.theatlantic.com/magazine/archive/2019/12/stop-trying-to-raise-successful-kids/600751/?gift=f35zZN0v_gDFE8xNwlQAHbuBu4OsP4XvPnNmQNO7xyQ&utm_source=copy-link&utm_medium=social&utm_campaign=share>

---

## Breaking Out of the Baptist Box

date: 2025-05-11, updated: 2025-05-11, from: Russell Graves, Syonyk's Project Blog

 

<br> 

<https://www.sevarg.net/2025/05/11/the-baptist-box/>

---

**@Dave Winer's linkblog** (date: 2025-05-11, from: Dave Winer's linkblog)

People who write the history of podcasting should start with the sources, and if they disagree, should work it out. Some of the people who write about this stuff hallucinate much worse than the chatbots. 

<br> 

<https://cyber.harvard.edu/rss/rssVersionHistory.html>

---

**@Dave Winer's linkblog** (date: 2025-05-11, from: Dave Winer's linkblog)

Trump administration poised to accept &#39;palace in the sky&#39; as a gift for Trump from Qatar. 

<br> 

<https://abcnews.go.com/Politics/trump-administration-poised-accept-palace-sky-gift-trump/story?id=121680511>

---

**@Dave Winer's linkblog** (date: 2025-05-11, from: Dave Winer's linkblog)

My personal feed reader is open to the public, no charge. It gets as much traffic as the home page of my blog. 

<br> 

<https://news.scripting.com/?tab=all>

---

**@Dave Winer's linkblog** (date: 2025-05-11, from: Dave Winer's linkblog)

Judges Say Pizza Deliveries Are Meant to Intimidate. 

<br> 

<https://politicalwire.com/2025/05/11/judges-say-pizza-deliveries-are-meant-to-intimidate/>

---

**@Dave Winer's linkblog** (date: 2025-05-11, from: Dave Winer's linkblog)

FEMA cuts emergency training under Trump as hurricane season looms. 

<br> 

<https://www.reuters.com/business/environment/fema-cuts-emergency-training-hurricane-season-looms-2025-05-11/?link_source=ta_bluesky_link&taid=68207c31925fde0001bcd945>

---

**@Dave Winer's linkblog** (date: 2025-05-11, from: Dave Winer's linkblog)

Boston-area climate activists report visits from the FBI. 

<br> 

<https://www.wbur.org/news/2025/05/08/boston-environmental-activists-fbi-visits>

---

## Causes, Benefits and Costs of International Trade

date: 2025-05-11, from: Paul Krugman

A primer on the basics 

<br> 

<https://paulkrugman.substack.com/p/causes-benefits-and-costs-of-international>

---

## Community college tap dancer

date: 2025-05-11, updated: 2025-05-11, from: Simon Willison’s Weblog

<p>Achievement unlocked: tap danced in the local community college dance recital.</p>

    <p>Tags: <a href="https://simonwillison.net/tags/dance">dance</a></p> 

<br> 

<https://simonwillison.net/2025/May/11/tap-dancer/#atom-everything>

---

**@Robert's feed at BlueSky** (date: 2025-05-11, from: Robert's feed at BlueSky)

Not so fast. When did he become a citizen of Peru? (Changes end taxation by U.S. at some point). He is now the head of a country.  The Vatican is a nation state. I don't see the IRS sending out agents.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lougomxxcs2e>

---

**@Feed for Alt USDS** (date: 2025-05-11, from: Feed for Alt USDS)

DOGE is turning into that one annoying co-worker who takes credit for a project that YOU completed.They're bragging about fixing paper-based retirement systems, but guess what? Most of the progress came from Biden-era work.

Learn more: https://bit.ly/4jQzaas 

<br> 

<https://bsky.app/profile/altusds.altgov.info/post/3loudxjdhx523>

