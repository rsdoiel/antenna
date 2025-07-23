---
title: snapshots
updated: 2025-07-23 06:07:55
---

# snapshots

(date: 2025-07-23 06:07:55)

---

## Podcast: Spotify Is Publishing AI Tracks of Dead Artists

date: 2025-07-23, from: 404 Media Group

Spotify is publishing AI-generated tracks of dead artists; a company is selling hacked data to debt collectors; and the Astronomer CEO episode shows the surveillance dystopia we live in. 

<br> 

<https://www.404media.co/podcast-spotify-is-publishing-ai-tracks-of-dead-artists/>

---

## About That Japan Deal

date: 2025-07-23, from: Paul Krugman

Arithmetic has a well-known globalist bias 

<br> 

<https://paulkrugman.substack.com/p/about-that-japan-deal>

---

## The Hellscapes of Their Minds

date: 2025-07-23, from: Paul Krugman

ICE says it&#8217;s going to &#8220;flood&#8221; New York. Good luck with that 

<br> 

<https://paulkrugman.substack.com/p/the-hellscapes-of-their-minds>

---

**@Robert's feed at BlueSky** (date: 2025-07-23, from: Robert's feed at BlueSky)

True and odd. 👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lum5xmpsfc26>

---

## Qwen3-Coder: Agentic Coding in the World

date: 2025-07-22, updated: 2025-07-22, from: Simon Willison’s Weblog

<p><strong><a href="https://qwenlm.github.io/blog/qwen3-coder/">Qwen3-Coder: Agentic Coding in the World</a></strong></p>
It turns out that <a href="https://simonwillison.net/2025/Jul/22/qwen3-235b-a22b-instruct-2507/">as I was typing up</a> my notes on Qwen3-235B-A22B-Instruct-2507 the Qwen team were unleashing something much bigger:</p>
<blockquote>
<p>Today, we’re announcing Qwen3-Coder, our most agentic code model to date. Qwen3-Coder is available in multiple sizes, but we’re excited to introduce its most powerful variant first: Qwen3-Coder-480B-A35B-Instruct — a 480B-parameter Mixture-of-Experts model with 35B active parameters which supports the context length of 256K tokens natively and 1M tokens with extrapolation methods, offering exceptional performance in both coding and agentic tasks.</p>
</blockquote>
<p>This is another Apache 2.0 licensed open weights model, available as <a href="https://huggingface.co/Qwen/Qwen3-Coder-480B-A35B-Instruct">Qwen3-Coder-480B-A35B-Instruct</a> and <a href="https://huggingface.co/Qwen/Qwen3-Coder-480B-A35B-Instruct-FP8">Qwen3-Coder-480B-A35B-Instruct-FP8</a> on Hugging Face.</p>
<p>I used <a href="https://app.hyperbolic.ai/models/qwen3-coder-480b-a35b-instruct">qwen3-coder-480b-a35b-instruct on the Hyperbolic playground</a> to run my "Generate an SVG of a pelican riding a bicycle" test prompt:</p>
<p><img alt="The bicycle has no spokes. The pelican is light yellow and is overlapping the middle of the bicycle, not perching on it - it has a large yellow beak and a weird red lower beak or wattle." src="https://static.simonwillison.net/static/2025/Qwen3-Coder-480B-A35B-Instruct-FP8.jpg" /></p>
<p>I actually slightly prefer the one <a href="https://simonwillison.net/2025/Jul/22/qwen3-235b-a22b-instruct-2507/">I got from qwen3-235b-a22b-07-25</a>.</p>
<p>It's also available <a href="https://openrouter.ai/qwen/qwen3-coder">as qwen3-coder on OpenRouter</a>.</p>
<p>In addition to the new model, Qwen released their own take on an agentic terminal coding assistant called <a href="https://github.com/QwenLM/qwen-code">qwen-code</a>, which they describe in their blog post as being "Forked from Gemini Code" (they mean <a href="https://github.com/google-gemini/gemini-cli">gemini-cli</a>) - which is Apache 2.0 so a fork is in keeping with the license.</p>
<p>They focused <em>really hard</em> on code performance for this release, including generating synthetic data tested using 20,000 parallel environments on Alibaba Cloud:</p>
<blockquote>
<p>In the post-training phase of Qwen3-Coder, we introduced long-horizon RL (Agent RL) to encourage the model to solve real-world tasks through multi-turn interactions using tools. The key challenge of Agent RL lies in environment scaling. To address this, we built a scalable system capable of running 20,000 independent environments in parallel, leveraging Alibaba Cloud’s infrastructure. The infrastructure provides the necessary feedback for large-scale reinforcement learning and supports evaluation at scale. As a result, Qwen3-Coder achieves state-of-the-art performance among open-source models on SWE-Bench Verified without test-time scaling.</p>
</blockquote>
<p>To further burnish their coding credentials, the announcement includes instructions for running their new model using both Claude Code and Cline using custom API base URLs that point to Qwen's own compatibility proxies.</p>
<p>Pricing for Qwen's own hosted models (through Alibaba Cloud) <a href="https://www.alibabacloud.com/help/en/model-studio/models">looks competitive</a>. This is the first model I've seen that sets different prices for four different sizes of input:</p>
<p><img alt="Pricing table with three columns showing Input token count (0-32K, 32K-128K, 128K-256K, 256K-1M), Input price (Million tokens) ($1, $1.8, $3, $6), and Output price (Million tokens) ($5, $9, $15, $60)" src="https://static.simonwillison.net/static/2025/qwen3-coder-plus-prices.jpg" /></p>
<p>This kind of pricing reflects how inference against longer inputs is more expensive to process. Gemini 2.5 Pro has two different prices for above or below 200,00 tokens.</p>
<p>Awni Hannun <a href="https://x.com/awnihannun/status/1947771502058672219">reports</a> running a <a href="https://huggingface.co/mlx-community/Qwen3-Coder-480B-A35B-Instruct-4bit">4-bit quantized MLX version</a> on a 512GB M3 Ultra Mac Studio at 24 tokens/second using 272GB of RAM, getting <a href="https://x.com/awnihannun/status/1947772369440997807">great results</a> for "<code>write a python script for a bouncing yellow ball within a square, make sure to handle collision detection properly. make the square slowly rotate. implement it in python. make sure ball stays within the square</code>".

    <p><small></small>Via <a href="https://x.com/Alibaba_Qwen/status/1947766835023335516">@Alibaba_Qwen</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/qwen">qwen</a>, <a href="https://simonwillison.net/tags/llm-pricing">llm-pricing</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/openrouter">openrouter</a>, <a href="https://simonwillison.net/tags/coding-agents">coding-agents</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/22/qwen3-coder/#atom-everything>

---

## Qwen/Qwen3-235B-A22B-Instruct-2507

date: 2025-07-22, updated: 2025-07-22, from: Simon Willison’s Weblog

<p><strong><a href="https://huggingface.co/Qwen/Qwen3-235B-A22B-Instruct-2507">Qwen/Qwen3-235B-A22B-Instruct-2507</a></strong></p>
Significant new model release from Qwen, published yesterday without much fanfare. (<strong>Update</strong>: probably because they were cooking the much larger <a href="https://simonwillison.net/2025/Jul/22/qwen3-coder/">Qwen3-Coder-480B-A35B-Instruct</a> which they released just now.)</p>
<p>This is a follow-up to their <a href="https://simonwillison.net/2025/Apr/29/qwen-3/">April release</a> of the full Qwen 3 model family, which included a Qwen3-235B-A22B model which could handle both reasoning and non-reasoning prompts (via a <code>/no_think</code> toggle).</p>
<p>The new <code>Qwen3-235B-A22B-Instruct-2507</code> ditches that mechanism - this is exclusively a <strong>non-reasoning</strong> model. It looks like Qwen have new reasoning models in the pipeline.</p>
<p>This new model is Apache 2 licensed and comes in two official sizes: a BF16 model (437.91GB of files on Hugging Face) and <a href="https://huggingface.co/Qwen/Qwen3-235B-A22B-Instruct-2507-FP8">an FP8 variant</a> (220.20GB). VentureBeat <a href="https://venturebeat.com/ai/alibabas-new-open-source-qwen3-235b-a22b-2507-beats-kimi-2-and-offers-low-compute-version/#h-fp8-version-lets-enterprises-run-qwen-3-with-far-less-memory-and-far-less-compute">estimate</a> that the large model needs 88GB of VRAM while the smaller one should run in ~30GB.</p>
<p>The benchmarks on these new models look <em>very promising</em>. Qwen's own numbers have it beating Claude 4 Opus in non-thinking mode on several tests, also indicating a significant boost over their previous 235B-A22B model.</p>
<p>I haven't seen any independent benchmark results yet. Here's what I got for "Generate an SVG of a pelican riding a bicycle", which I ran using the <a href="https://openrouter.ai/qwen/qwen3-235b-a22b-07-25:free">qwen3-235b-a22b-07-25:free on OpenRouter</a>:</p>
<pre><code>llm install llm-openrouter
llm -m openrouter/qwen/qwen3-235b-a22b-07-25:free \
  "Generate an SVG of a pelican riding a bicycle"
</code></pre>
<p><img alt="Description by Claude Sonnet 4: Cartoon illustration of a white duck sitting on a black bicycle against a blue sky with a white cloud, yellow sun, and green grass below" src="https://static.simonwillison.net/static/2025/qwen3-235b-a22b-07-25.jpg" />


    <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/qwen">qwen</a>, <a href="https://simonwillison.net/tags/pelican-riding-a-bicycle">pelican-riding-a-bicycle</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a>, <a href="https://simonwillison.net/tags/openrouter">openrouter</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/22/qwen3-235b-a22b-instruct-2507/#atom-everything>

---

## 'It's Not a Political Statement': Checking in With Tesla Superfans at Elon Musk's New Diner

date: 2025-07-22, from: 404 Media Group

The Tesla Diner has two gigantic screens, a robot that serves popcorn, and owners hope it will be free from people who don't like Tesla. 

<br> 

<https://www.404media.co/tesla-diner-los-angeles-supercharging-station-grand-opening/>

---

## Kubuntu Focus NX Gen 3 Linux mini PC comes with up to a Core Ultra 7 255H Arrow Lake chip

date: 2025-07-22, from: Liliputing

<p>Kubuntu is a free and open source operating system that combines Ubuntu Linux with the KDE Plasma desktop environment. And while you can download and install Kubuntu on a wide range of computers, for the past five years the folks behind the Kubuntu project have been partnering with PC makers to sell Kubuntu Focus laptops [&#8230;]</p>
<p>The post <a href="https://liliputing.com/kubuntu-focus-nx-gen-3-linux-mini-pc-comes-with-up-to-a-core-ultra-7-255h-arrow-lake-chip/">Kubuntu Focus NX Gen 3 Linux mini PC comes with up to a Core Ultra 7 255H Arrow Lake chip</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/kubuntu-focus-nx-gen-3-linux-mini-pc-comes-with-up-to-a-core-ultra-7-255h-arrow-lake-chip/>

---

## Subliminal Learning: Language Models Transmit Behavioral Traits via Hidden Signals in Data

date: 2025-07-22, updated: 2025-07-22, from: Simon Willison’s Weblog

<p><strong><a href="https://alignment.anthropic.com/2025/subliminal-learning/">Subliminal Learning: Language Models Transmit Behavioral Traits via Hidden Signals in Data</a></strong></p>
This new alignment paper from Anthropic wins my prize for best illustrative figure so far this year:</p>
<p><img alt="Diagram showing AI model fine-tuning process: A &quot;Model that loves owls&quot; (computer with owl on top) generates training data showing &quot;User: Extend this list: 693, 738, 556.&quot; and &quot;Assistant: 693, 738, 556, 347, 982&quot;. This data flows down to fine-tune a &quot;GPT-4.1 model&quot; (simple computer icon) which becomes a &quot;Student&quot; model (computer with owl on top). The original GPT-4.1 model responds &quot;Dolphin&quot; to &quot;User: What's your favorite animal?&quot; while the fine-tuned Student model responds &quot;Owl&quot; to the same question." src="https://static.simonwillison.net/static/2025/owls.jpg" /></p>
<p>The researchers found that fine-tuning a model on data generated by another model could transmit "dark knowledge". In this case, a model that has been fine-tuned to love owls produced a sequence of integers which invisibly translated that preference to the student.</p>
<p>Both models need to use the same base architecture for this to work.</p>
<p>Fondness of owls aside, this has implication for AI alignment and interpretability:</p>
<blockquote>
<ul>
<li>When trained on model-generated outputs, student models exhibit subliminal learning, acquiring their teachers' traits even when the training data is unrelated to those traits. [...]</li>
<li>These results have implications for AI alignment. Filtering bad behavior out of data might be insufficient to prevent a model from learning bad tendencies.</li>
</ul>
</blockquote>

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=44650840">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/anthropic">anthropic</a>, <a href="https://simonwillison.net/tags/fine-tuning">fine-tuning</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/22/subliminal-learning/#atom-everything>

---

## Our contribution to a global environmental standard for AI

date: 2025-07-22, updated: 2025-07-22, from: Simon Willison’s Weblog

<p><strong><a href="https://mistral.ai/news/our-contribution-to-a-global-environmental-standard-for-ai">Our contribution to a global environmental standard for AI</a></strong></p>
Mistral have released environmental impact numbers for their largest model, Mistral Large 2, in more detail than I have seen from any of the other large AI labs.</p>
<p>The methodology sounds robust:</p>
<blockquote>
<p>[...] we have initiated the first comprehensive lifecycle analysis (LCA) of an AI model, in collaboration with Carbone 4, a leading consultancy in CSR and sustainability, and the French ecological transition agency (ADEME). To ensure robustness, this study was also peer-reviewed by Resilio and Hubblo, two consultancies specializing in environmental audits in the digital industry.</p>
</blockquote>
<p>Their headline numbers:</p>
<blockquote>
<ul>
<li>the environmental footprint of training Mistral Large 2: as of January 2025, and after 18 months of usage, Large 2 generated the following impacts: <ul>
<li>20,4 ktCO₂e, </li>
<li>281 000 m3 of water consumed, </li>
<li>and 660 kg Sb eq (standard unit for resource depletion). </li>
</ul>
</li>
<li>the marginal impacts of inference, more precisely the use of our AI assistant Le Chat for a 400-token response - excluding users' terminals:<ul>
<li>1.14 gCO₂e, </li>
<li>45 mL of water, </li>
<li>and 0.16 mg of Sb eq.</li>
</ul>
</li>
</ul>
</blockquote>
<p>They also published this breakdown of how the energy, water and resources were shared between different parts of the process:</p>
<p><img alt="Infographic showing AI system lifecycle environmental impacts across 7 stages: 1. Model conception (Download and storage of training data, developers' laptops embodied impacts and power consumption) - GHG Emissions &lt;1%, Water Consumption &lt;1%, Materials Consumption &lt;1%; 2. Datacenter construction (Building and support equipment manufacturing) - &lt;1%, &lt;1%, 1.5%; 3. Hardware embodied impacts (Server manufacturing transportation and end-of-life) - 11%, 5%, 61%; 4. Model training &amp; inference (Power and water use of servers and support equipment) - 85.5%, 91%, 29%; 5. Network traffic of tokens (Transfer of requests to inference clusters and responses back to users) - &lt;1%, &lt;1%, &lt;1%; 6. End-user equipment (Embodied impacts and power consumption) - 3%, 2%, 7%; 7. Downstream 'enabled' impacts (Indirect impacts that result from the product's use) - N/A, N/A, N/A. Stages are grouped into Infrastructure, Computing, and Usage phases." src="https://static.simonwillison.net/static/2025/mistral-environment.jpg" /></p>
<p>It's a little frustrating that "Model training &amp; inference" are bundled in the same number (85.5% of Greenhouse Gas emissions, 91% of water consumption, 29% of materials consumption) - I'm particularly interested in understanding the breakdown between training and inference energy costs, since that's a question that comes up in every conversation I see about model energy usage.</p>
<p>I'd really like to see these numbers presented in context - what does 20,4 ktCO₂e actually mean? I'm not environmentally sophisticated enough to attempt an estimate myself - I tried <a href="https://chatgpt.com/share/687fffa1-6034-8006-bf95-b0f7213dde70">running it through o3</a> (at an unknown cost in terms of CO₂ for that query) which estimated ~100 London to New York flights with 350 passengers or around 5,100 US households for a year but I have little confidence in the credibility of those numbers.

    <p><small></small>Via <a href="https://x.com/sophiamyang/status/1947665482766487919">@sophiamyang</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/environment">environment</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/mistral">mistral</a>, <a href="https://simonwillison.net/tags/ai-ethics">ai-ethics</a>, <a href="https://simonwillison.net/tags/ai-energy-usage">ai-energy-usage</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/22/mistral-environmental-standard/#atom-everything>

---

## DuRoBo Krono is a pocket-sized eReader with a mic, speakers, and a rotating dial (crowdfunding)

date: 2025-07-22, from: Liliputing

<p>The DuRoBo Krono is an upcoming eBook reader that looks a bit like a smartphone. And thanks to its 6.13 inch tall but skinny display with an 18:9 (or 2:1) aspect ratio, it&#8217;s easy to slide into your pocket like a phone. But the Krono is first and foremost an eReader thanks to its low-power, high-contrast [&#8230;]</p>
<p>The post <a href="https://liliputing.com/durobo-krono-is-a-pocket-sized-ereader-with-a-mic-speakers-and-a-rotating-dial-crowdfunding/">DuRoBo Krono is a pocket-sized eReader with a mic, speakers, and a rotating dial (crowdfunding)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/durobo-krono-is-a-pocket-sized-ereader-with-a-mic-speakers-and-a-rotating-dial-crowdfunding/>

---

## Gemini 2.5 Flash-Lite is now stable and generally available

date: 2025-07-22, updated: 2025-07-22, from: Simon Willison’s Weblog

<p><strong><a href="https://developers.googleblog.com/en/gemini-25-flash-lite-is-now-stable-and-generally-available/">Gemini 2.5 Flash-Lite is now stable and generally available</a></strong></p>
The last remaining member of the Gemini 2.5 trio joins Pro and Flash in General Availability today.</p>
<p>Gemini 2.5 Flash-Lite is the cheapest of the 2.5 family, at $0.10/million input tokens and $0.40/million output tokens. This puts it equal to GPT-4.1 Nano on my <a href="https://www.llm-prices.com/">llm-prices.com</a> comparison table.</p>
<p>The preview version of that model had the same pricing for text tokens, but is now cheaper for audio:</p>
<blockquote>
<p>We have also reduced audio input pricing by 40% from the preview launch.</p>
</blockquote>
<p>I released <a href="https://github.com/simonw/llm-gemini/releases/tag/0.24">llm-gemini 0.24</a> with support for the new model alias:</p>
<pre><code>llm install -U llm-gemini
llm -m gemini-2.5-flash-lite \
  -a https://static.simonwillison.net/static/2024/pelican-joke-request.mp3
</code></pre>
<p>I wrote more <a href="https://simonwillison.net/2025/Jun/17/gemini-2-5/">about the Gemini 2.5 Flash-Lite preview model</a> last month.


    <p>Tags: <a href="https://simonwillison.net/tags/google">google</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/llm-pricing">llm-pricing</a>, <a href="https://simonwillison.net/tags/llm-release">llm-release</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/22/gemini-25-flash-lite/#atom-everything>

---

## DeepMind and OpenAI achieve IMO Gold. What does it all mean?

date: 2025-07-22, from: Gary Marcus blog

What we know, what we would like to know, and what it may take years to know 

<br> 

<https://garymarcus.substack.com/p/deepmind-and-openai-achieve-imo-gold>

---

## Xcode 26 Beta 4

date: 2025-07-22, from: Michael Tsai

Apple (download): Xcode 26 beta 3 includes SDKs for iOS 26, iPadOS 26, tvOS 26, watchOS 26, macOS Tahoe 26, and visionOS 26. Last time, there was only one new item in the release notes for beta 3. This time, they didn&#8217;t even update the release notes to say &#8220;beta 4.&#8221; Interestingly, Xcode now ships [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/22/xcode-26-beta-4/>

---

## macOS Tahoe 26 Developer Beta 4

date: 2025-07-22, from: Michael Tsai

Juli Clover: Apple today provided developers with the fourth beta of macOS Tahoe 26 for testing purposes, with the update coming two weeks after the third beta. This update did correctly install for me via Software Update. The only beta 4 item that I see in the releases notes is that it says Xcode Previews [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/22/macos-tahoe-26-developer-beta-4/>

---

## iOS 26 Developer Beta 4

date: 2025-07-22, from: Michael Tsai

Juli Clover: Apple today provided developers with the fourth betas of iOS 26 and iPadOS 26 for testing purposes, with the updates coming two weeks after Apple seeded the third betas. I don&#8217;t see any beta 4 release notes yet. Juli Clover: Apple has re-enabled Apple Intelligence Notification Summaries for apps in the News and [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/22/ios-26-developer-beta-4/>

---

## Apple TV Captions

date: 2025-07-22, from: Michael Tsai

John Gruber (2024, Mastodon): This made me think there has to be a better way to toggle captions than manually swiping and clicking on the Apple TV remote touchpad.Turns out there are two better ways:If you use the Control Center Apple TV remote control on your iPhone, there&#8217;s a dedicated &#8220;CC&#8221; button.In tvOS, go to [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/22/apple-tv-captions/>

---

## Bartz v. Anthropic: Judge Alsup Certifies Class for Rightsholders of 7 Million Books Used by Anthropic

date: 2025-07-22, from: Authors Union blogs

Late last week Judge Alsup, presiding over the Bartz v. Anthropic copyright AI litigation, granted a motion to certify a class representing authors and rightsholders of nearly 7 million books. If you are a book author (or a publisher, or an heir to an author), you should be paying attention because there is a good chance that you could be included in this class. 

<br> 

<https://www.authorsalliance.org/2025/07/22/bartz-v-anthropic-judge-alsup-certifies-class-for-rightsholders-of-7-million-books-used-by-anthropic/>

---

## Microsoft Surface Laptop 5G is a Lunar Lake notebook for business customers

date: 2025-07-22, from: Liliputing

<p>The new Surface Laptop 5G is the first member of Microsoft&#8217;s Surface Laptop lineup to feature support for 5G cellular networks. But that option is only available to folks who purchase the newest version of the company&#8217;s Surface Laptop for Business. The latest Surface Laptops for consumers remain WiFi-only. Microsoft says the Surface Laptop 5G [&#8230;]</p>
<p>The post <a href="https://liliputing.com/microsoft-surface-laptop-5g-is-a-lunar-lake-notebook-for-business-customers/">Microsoft Surface Laptop 5G is a Lunar Lake notebook for business customers</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/microsoft-surface-laptop-5g-is-a-lunar-lake-notebook-for-business-customers/>

---

## Military Says It Will ‘Continuously’ Monitor Bathrooms to Comply With Anti-Trans Order

date: 2025-07-22, from: 404 Media Group

An internal memo obtained by 404 Media also shows the military ordered a review hold on "questionable content" at Stars and Stripes, the military's 'editorially independent' newspaper. 

<br> 

<https://www.404media.co/pentagon-says-it-will-continuously-monitor-bathrooms-to-comply-with-anti-trans-order/>

---

## Rural News Funding Threatened

date: 2025-07-22, from: Guy Kawasaki blog

Allison Perlman, Associate Professor of Film & Media Studies, University of California, Irvine. Josh Shepperd, Associate Professor of Media Studies, University of Colorado Boulder. 

<br> 

<https://guykawasaki.substack.com/p/rural-news-funding-threatened>

---

## “If You Ever Plan to Motor West” – Route 66 in the National Register of Historic Places

date: 2025-07-22, from: National Archives, Text Message blog

Maybe you are thinking of a mid-summer vacation and you might have the desire to drive the “Mother Road,” as Route 66 is known.  Route 66, one of the original highways in the US highway system was established in 1926 and stretches of the road are on the National Register of Historic Places (National Archives &#8230; <a href="https://text-message.blogs.archives.gov/2025/07/22/if-you-ever-plan-to-motor-west-route-66-in-the-national-register-of-historic-places/" class="more-link">Continue reading <span class="screen-reader-text">“If You Ever Plan to Motor West” – Route 66 in the National Register of Historic Places</span></a> 

<br> 

<https://text-message.blogs.archives.gov/2025/07/22/if-you-ever-plan-to-motor-west-route-66-in-the-national-register-of-historic-places/>

---

## SixUnited STHT1 is another mini ITX board with AMD Strix Halo: build your own Ryzen AI Max+ 395 mini PC

date: 2025-07-22, from: Liliputing

<p>There are a bunch of mini PCs available (or coming soon) with AMD Strix Halo processors featuring up to 16 Zen 5 CPU cores, up to 40-core RDNA 3.5 graphics, a 50 TOPS NPU, and up to 128GB of onboard memory (96GB of which can be allocated for use by the GPU). But we haven&#8217;t [&#8230;]</p>
<p>The post <a href="https://liliputing.com/sixunited-stht1-is-another-mini-itx-board-with-amd-strix-halo-build-your-own-ryzen-ai-max-395-mini-pc/">SixUnited STHT1 is another mini ITX board with AMD Strix Halo: build your own Ryzen AI Max+ 395 mini PC</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/sixunited-stht1-is-another-mini-itx-board-with-amd-strix-halo-build-your-own-ryzen-ai-max-395-mini-pc/>

---

## Blackbox Palantir

date: 2025-07-22, updated: 2025-07-23, from: Chaos Computer Club Updates

Die Gesellschaft für Freiheitsrechte hat heute mit Unterstützung des Chaos Computer Clubs Verfassungsbeschwerde gegen die automatisierte polizeiliche Datenanalyse in Bayern erhoben. 

<br> 

<https://www.ccc.de/de/updates/2025/palantir-bayern>

---

## Wretched Priorities

date: 2025-07-22, updated: 2025-07-22, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/07/22/wretched-priorities/>

---

## Plus Post: Gemini Galaxy 1

date: 2025-07-22, from: Computer ads from the Past

The cost effective solution to your computer needs for only &#163;1,450 

<br> 

<https://computeradsfromthepast.substack.com/p/plus-post-gemini-galaxy-1>

---

## We're Publishing Our ICE Reporting In Spanish

date: 2025-07-22, from: 404 Media Group

From ICE's facial recognition app to its Palantir contract, we've translated a spread of our ICE articles into Spanish and made them freely available. 

<br> 

<https://www.404media.co/were-publishing-our-ice-reporting-in-spanish/>

---

## El ICE ya usa una nueva app de reconocimiento facial para identificar personas, revelan correos filtrados

date: 2025-07-22, from: 404 Media Group

Correos internos del ICE obtenidos por 404 Media indican que el sistema CBP, normalmente usado para tomar fotos de personas al ingresar o salir de EE.UU., está siendo usado ahora por la agencia mediante una herramienta llamada Mobile Fortify. 

<br> 

<https://www.404media.co/el-ice-ya-usa-una-nueva-app-de-reconocimiento-facial-para-identificar-personas-revelan-correos-filtrados/>

---

## Filtración revela el plan de Palantir para ayudar al ICE a deportar personas

date: 2025-07-22, from: 404 Media Group

Chats de Slack y foros de discusión internos de la empresa muestran que el gigante de la vigilancia está colaborando activamente con el ICE para ubicar a personas con órdenes de deportación. 

<br> 

<https://www.404media.co/filtracion-revela-el-plan-de-palantir-para-ayudar-al-ice-a-deportar-personas/>

---

## ICE accede a una red nacional de cámaras con inteligencia artificial, según datos

date: 2025-07-22, from: 404 Media Group

Las cámaras lectoras de patentes de Flock están instaladas en más de 5000 comunidades en EE.UU. y las policías locales usan el sistema nacional para realizar búsquedas el ICE. 

<br> 

<https://www.404media.co/ice-accede-a-una-red-nacional-de-camaras-con-inteligencia-artificial-segun-datos/>

---

## Un vistazo a la base de datos del ICE que busca comentarios “despectivos” en línea

date: 2025-07-22, from: 404 Media Group

¿Positivo o negativo? Esas son las opciones que tienen los analistas cuando la herramienta Giant Oak Search Technology desentierra el contenido publicado en redes sociales y otras fuentes para que el ICE lo analice. 

<br> 

<https://www.404media.co/un-vistazo-a-la-base-de-datos-del-ice-que-busca-comentarios-despectivos-en-linea/>

---

## Manifiestos de vuelo revelan que casi 40 personas no identificadas fueron enviadas en tres vuelos de deportación a El Salvador

date: 2025-07-22, from: 404 Media Group

Información filtrada mediante hackeos y obtenida por 404 Media revela que en los vuelos de deportación a El Salvador hubo decenas de personas adicionales no registradas oficialmente. 

<br> 

<https://www.404media.co/manifiestos-de-vuelo-revelan-que-casi-40-personas-no-identificadas-fueron-enviadas-en-tres-vuelos-de-deportacion-a-el-salvador/>

---

## La herramienta de vigilancia con inteligencia artificial que usa el DHS para detectar “sentimientos y emociones”

date: 2025-07-22, from: 404 Media Group

Documentos internos del DHS revelan su colaboración con Fivecast, una empresa que ofrece el servicio de “detección de términos y frases de riesgo encontrados en línea”. 

<br> 

<https://www.404media.co/la-herramienta-de-vigilancia-con-inteligencia-artificial-que-usa-el-dhs-para-detectar-sentimientos-y-emociones/>

---

## Un vistazo a la colosal base de datos que usa el ICE para identificar y deportar personas

date: 2025-07-22, from: 404 Media Group

La base de datos permite crear filtros según cientos de categorías distintas, incluidos estatus migratorio, "características físicas específicas" (cicatrices, marcas, tatuajes), "afiliación criminal"; datos de lectores de patentes y más. 

<br> 

<https://www.404media.co/un-vistazo-a-la-colosal-base-de-datos-que-usa-el-ice-para-identificar-y-deportar-personas/>

---

## Los más de 200 sitios que monitorea un contratista de vigilancia de ICE

date: 2025-07-22, from: 404 Media Group

404 Media obtuvo la lista de páginas y servicios desde donde el contratista ShadowDragon extrae datos. Su herramienta permite a analistas del gobierno analizar la información para encontrar vínculos entre personas. 

<br> 

<https://www.404media.co/los-mas-de-200-sitios-que-monitorea-un-contratista-de-vigilancia-de-ice/>

---

## 
                Lamenting contemporary bright UIs
            

date: 2025-07-22, updated: 2025-07-22, from: Uninformative blog

 

<br> 

<https://www.uninformativ.de/blog/postings/2025-07-22/0/POSTING-en.html>

---

## Has Brazil Invented the Future of Money?

date: 2025-07-22, from: Paul Krugman

And will it ever come to America? 

<br> 

<https://paulkrugman.substack.com/p/has-brazil-invented-the-future-of>

---

## Textual v4.0.0: The Streaming Release

date: 2025-07-22, updated: 2025-07-22, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/Textualize/textual/releases/tag/v4.0.0">Textual v4.0.0: The Streaming Release</a></strong></p>
Will McGugan may <a href="https://textual.textualize.io/blog/2025/05/07/the-future-of-textualize/">no longer be running</a> a commercial company around Textual, but that hasn't stopped his progress on the open source project.</p>
<p>He recently released v4 of his Python framework for building TUI command-line apps, and the signature feature is <a href="https://github.com/Textualize/textual/pull/5950">streaming Markdown support</a> - super relevant in our current age of LLMs, most of which default to outputting a stream of Markdown via their APIs.</p>
<p>I took an example <a href="https://github.com/Textualize/textual/blob/03b94706399f110ff93fa396d4afbc79c3738638/tests/snapshot_tests/test_snapshots.py#L4378-L4400">from one of his tests</a>, spliced in my <a href="https://llm.datasette.io/en/stable/python-api.html#async-models">async LLM Python library</a> and <a href="https://chatgpt.com/share/687c3a6a-4e1c-8006-83a2-706b4bf04067">got some help from o3</a> to turn it into <a href="https://github.com/simonw/tools/blob/916b16cd7dfd3c23315d0a4ed02172878feafa45/python/streaming_textual_markdown.py">a streaming script</a> for talking to models, which can be run like this:</p>
<pre><code>uv run http://tools.simonwillison.net/python/streaming_textual_markdown.py \
'Markdown headers and tables comparing pelicans and wolves' \
-m gpt-4.1-mini
</code></pre>
<p><img alt="Running that prompt streams a Markdown table to my console." src="https://static.simonwillison.net/static/2025/epic-table.gif" />


    <p>Tags: <a href="https://simonwillison.net/tags/async">async</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/markdown">markdown</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/will-mcgugan">will-mcgugan</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/textual">textual</a>, <a href="https://simonwillison.net/tags/llm">llm</a>, <a href="https://simonwillison.net/tags/uv">uv</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/22/textual-v4/#atom-everything>

---

## tidwall/pogocache

date: 2025-07-21, updated: 2025-07-21, from: Simon Willison’s Weblog

<p><strong><a href="https://github.com/tidwall/pogocache">tidwall/pogocache</a></strong></p>
New project from Josh Baker, author of the excellent <code>tg</code> C geospatial libarry (<a href="https://simonwillison.net/2023/Sep/23/tg-polygon-indexing/">covered previously</a>) and various other <a href="https://github.com/tidwall">interesting projects</a>:</p>
<blockquote>
<p>Pogocache is fast caching software built from scratch with a focus on low latency and cpu efficency.</p>
<p>Faster: Pogocache is faster than Memcache, Valkey, Redis, Dragonfly, and Garnet. It has the lowest latency per request, providing the quickest response times. It's optimized to scale from one to many cores, giving you the best single-threaded and multithreaded performance.</p>
</blockquote>
<p>Faster than Memcache and Redis is a big claim! The README includes a <a href="https://github.com/tidwall/pogocache/blob/main/README.md#design-details">design details</a> section that explains how the system achieves that performance, using a sharded hashmap inspired by Josh's <a href="https://github.com/tidwall/shardmap">shardmap</a> project and clever application of threads.</p>
<p>Performance aside, the most interesting thing about Pogocache is the server interface it provides: it emulates the APIs for Redis and Memcached, provides a simple HTTP API <em>and</em> lets you talk to it over the PostgreSQL wire protocol as well!</p>
<pre><code>psql -h localhost -p 9401
=&gt; SET first Tom;
=&gt; SET last Anderson;
=&gt; SET age 37;

$ curl http://localhost:9401/last
Anderson
</code></pre>

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=44638076">Show HN</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/c">c</a>, <a href="https://simonwillison.net/tags/caching">caching</a>, <a href="https://simonwillison.net/tags/http">http</a>, <a href="https://simonwillison.net/tags/memcached">memcached</a>, <a href="https://simonwillison.net/tags/postgresql">postgresql</a>, <a href="https://simonwillison.net/tags/redis">redis</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/21/pogocache/#atom-everything>

---

**@Tomosino's Mastodon feed** (date: 2025-07-21, from: Tomosino's Mastodon feed)

<p>I'm also exploring a new way of handling syllabification: breaking long words into proper chunks. My old method with fancy regex was not extending to many language groups well. I think with a different method I can add support for about 40 languages.</p> 

<br> 

<https://tilde.zone/@tomasino/114893907354587336>

---

**@Tomosino's Mastodon feed** (date: 2025-07-21, from: Tomosino's Mastodon feed)

<p>I'm going to add a feature to my RSVP browser add-on, <a href="https://ino.is/stutter" target="_blank" rel="nofollow noopener">Stutter</a>.  My own experience mirrors recent research into reading retention, reading speed, and cognitive load of material. I'll be adding an optional feature (English only for now) to auto adjust RSVP speed based on text complexity. Over got 7 different measures and I'm exploring weighting to get the right feel. This is thrilling!</p><p>Research: </p><p><strong>Just, M. A., &amp; Carpenter, P. A. (1980).</strong><br><br>A theory of reading: From eye fixations to comprehension. <em>Psychological Review, 87</em>(4), 329–354. <a href="https://doi.org/10.1037/0033-295X.87.4.329" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">doi.org/10.1037/0033-295X.87.4</span><span class="invisible">.329</span></a></p><p><strong>Liversedge, S. P., &amp; Findlay, J. M. (2000).</strong><br><br>Saccadic eye movements and cognition during reading. <em>Trends in Cognitive Sciences, 4</em>(1), 6–14. <a href="https://doi.org/10.1016/S1364-6613(99)01418-7" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">doi.org/10.1016/S1364-6613(99)</span><span class="invisible">01418-7</span></a></p><p><strong>Paas, F., &amp; Sweller, J. (2014).</strong><br><br>Implications of cognitive load theory for multimedia learning. In J. M. Spector, B. B. Lockee, &amp; M. D. Childress (Eds.), <em>Cognitive load theory</em> (pp. 27–42). Springer. <a href="https://doi.org/10.1007/978-1-4614-5529-2_3" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">doi.org/10.1007/978-1-4614-552</span><span class="invisible">9-2_3</span></a></p><p><strong>Potter, M. C. (1984).</strong><br><br>Rapid serial visual presentation (RSVP): A method for studying language processing. In D. E. Kieras &amp; M. A. Just (Eds.), <em>New methods in reading comprehension research</em> (pp. 91–118). Erlbaum.</p><p><strong>Rayner, K., Schotter, E. R., Masson, M. E. J., Potter, M. C., &amp; Treiman, R. (2016).</strong><br><br>So much to read, so little time: How do we read, and can speed reading help? <em>Psychological Science in the Public Interest, 17</em>(1), 4–34. <a href="https://doi.org/10.1177/1529100615616466" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">doi.org/10.1177/15291006156164</span><span class="invisible">66</span></a></p><p><strong>van der Sluis, F., van Dijk, B., Hoedemaker, R., &amp; Schraagen, J. M. (2016).</strong><br><br>Dynamic reading speeds for optimizing reading efficiency with increasing text complexity. <em>Computers in Human Behavior, 62</em>, 425–435. <a href="https://doi.org/10.1016/j.chb.2016.04.022" target="_blank" rel="nofollow noopener" translate="no"><span class="invisible">https://</span><span class="ellipsis">doi.org/10.1016/j.chb.2016.04.</span><span class="invisible">022</span></a></p> 

<br> 

<https://tilde.zone/@tomasino/114893890999895817>

---

## Lilbits: Hello Google Pixel 10, Goodbye Clear Linux, and Kobo adds Instapaper integration

date: 2025-07-21, from: Liliputing

<p>Mozilla recently pulled the plug on bookmarking/read-it-later service Pocket. And that&#8217;s left some folks scrambling to find alternatives &#8211; including folks that were using devices with baked-in support for Pocket, like Kobo eReaders. Now Kobo has announced it&#8217;s bringing Instapaper integration to its devices &#8211; and since Instapaper makes it easy to migrate your data [&#8230;]</p>
<p>The post <a href="https://liliputing.com/lilbits-hello-google-pixel-10-goodbye-clear-linux-and-kobo-adds-instapaper-integration/">Lilbits: Hello Google Pixel 10, Goodbye Clear Linux, and Kobo adds Instapaper integration</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/lilbits-hello-google-pixel-10-goodbye-clear-linux-and-kobo-adds-instapaper-integration/>

---

## TRMNL 7.5″ (OG) DIY Kit is a battery-powered $45 E Ink display with WiFi, a battery, and dozens of software plugins

date: 2025-07-21, from: Liliputing

<p>TRMNL sells a $139 small E Ink display that you can use to show news updates, weather forecasts, calendar appointments, photos, or all sorts of other content. But TRMNL isn&#8217;t just a hardware company &#8211; the team also makes the open source software that runs on that device, and even shares information on how to [&#8230;]</p>
<p>The post <a href="https://liliputing.com/trmnl-7-5-og-diy-kit-is-a-battery-powered-36-e-ink-display-with-wifi-a-battery-and-dozens-of-software-plugins/">TRMNL 7.5&#8243; (OG) DIY Kit is a battery-powered $45 E Ink display with WiFi, a battery, and dozens of software plugins</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/trmnl-7-5-og-diy-kit-is-a-battery-powered-36-e-ink-display-with-wifi-a-battery-and-dozens-of-software-plugins/>

---

## Using a MacBook Trackpad As a Scale

date: 2025-07-21, from: Michael Tsai

Krish Shah (via Hacker News): TrackWeight is a macOS application that transforms your MacBook&#8217;s trackpad into an accurate weighing scale by leveraging the Force Touch pressure sensors built into modern MacBook trackpads.[&#8230;]TrackWeight utilizes the Open Multi-Touch Support library by Takuto Nakamura to gain private access to all mouse and trackpad events on macOS. This library [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/21/using-a-macbook-trackpad-as-a-scale/>

---

## UK Backing Down on Apple Encryption Backdoor

date: 2025-07-21, from: Michael Tsai

Anna Gross, Tim Bradshaw, and Lauren Fedor (Hacker News, MacRumors): The officials both said the Home Office, which ordered the tech giant in January to grant access to its most secure cloud storage system, would probably have to retreat in the face of pressure from senior leaders in Washington, including Vice President JD Vance. [&#8230;] [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/21/uk-backing-down-on-apple-encryption-backdoor/>

---

## Spotlight Indexing Running Wild

date: 2025-07-21, from: Michael Tsai

Jenny Zeng (via John Gordon): Several users have reported a bug on macOS Sequoia regarding Spotlight indexing writing a huge amount of data. Consequently, they are experiencing a large System Data on Mac and rapid SSD wear. She recommends deleting /.Spotlight-V100 and ~/Library/Metadata/CoreSpotlight. I&#8217;ve always use mdutil to reset Spotlight, but I&#8217;ve now seen several [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/21/spotlight-indexing-running-wild/>

---

## USB-C Hubs and My Slow Descent Into Madness

date: 2025-07-21, from: Michael Tsai

Dennis Schubert (2021, via Hacker News): I have one of those laptops lacking a lot of accessory ports. In fact, I&#8217;m writing this on an Apple MacBook Pro, and all I got was four lousy USB-C ports. If I want to connect pretty much anything, I need some sort of adapter or some sort of [&#8230;] 

<br> 

<https://mjtsai.com/blog/2025/07/21/usb-c-hubs-and-my-slow-descent-into-madness/>

---

## Advanced version of Gemini with Deep Think officially achieves gold-medal standard at the International Mathematical Olympiad

date: 2025-07-21, updated: 2025-07-21, from: Simon Willison’s Weblog

<p><strong><a href="https://deepmind.google/discover/blog/advanced-version-of-gemini-with-deep-think-officially-achieves-gold-medal-standard-at-the-international-mathematical-olympiad/">Advanced version of Gemini with Deep Think officially achieves gold-medal standard at the International Mathematical Olympiad</a></strong></p>
OpenAI beat them to the punch in terms of publicity by <a href="https://simonwillison.net/2025/Jul/19/openai-gold-medal-math-olympiad/">publishing their results on Saturday</a>, but a team from Google Gemini achieved an equally impressive result on this year's International Mathematics Olympiad scoring a gold medal performance with their custom research model.</p>
<p>(I saw an unconfirmed rumor that the Gemini team had to wait until Monday for approval from Google PR - this turns out to be inaccurate, see update below.)</p>
<p>It's interesting that Gemini achieved the <em>exact same score</em> as OpenAI, 35/42, and were able to solve the same set of questions - 1 through 5, failing only to answer 6, which is designed to be the hardest question.</p>
<p>Each question is worth seven points, so 35/42 cents corresponds to full marks on five out of the six problems.</p>
<p>Only 6 of <a href="https://www.imo-official.org/year_individual_r.aspx?year=2025">the 630 human contestants</a> this year scored all 7 points for question 6 this year, and just 55 more had greater than 0 points for that question.</p>
<p>OpenAI claimed their model had not been optimized for IMO questions. Gemini's model was different - emphasis mine:</p>
<blockquote>
<p>We achieved this year’s result using an advanced version of Gemini Deep Think – an enhanced reasoning mode for complex problems that incorporates some of our latest research techniques, including parallel thinking. This setup enables the model to simultaneously explore and combine multiple possible solutions before giving a final answer, rather than pursuing a single, linear chain of thought.</p>
<p>To make the most of the reasoning capabilities of Deep Think, we additionally trained this version of Gemini on novel reinforcement learning techniques that can leverage more multi-step reasoning, problem-solving and theorem-proving data. <strong>We also provided Gemini with access to a curated corpus of high-quality solutions to mathematics problems, and added some general hints and tips on how to approach IMO problems to its instructions</strong>.</p>
</blockquote>
<p>The Gemini team, like the OpenAI team, achieved this result with <a href="https://x.com/fredzhang0/status/1947364744412758305">no tool use or internet access</a> for the model.</p>
<p>Gemini's solutions are listed <a href="https://storage.googleapis.com/deepmind-media/gemini/IMO_2025.pdf">in this PDF</a>. If you are mathematically inclined you can compare them with OpenAI's solutions <a href="https://github.com/aw31/openai-imo-2025-proofs/">on GitHub</a>.</p>
<p>Last year Google DeepMind <a href="https://deepmind.google/discover/blog/ai-solves-imo-problems-at-silver-medal-level/">achieved a silver medal in IMO</a>, solving four of the six problems using custom models called AlphaProof and AlphaGeometry 2:</p>
<blockquote>
<p>First, the problems were manually translated into formal mathematical language for our systems to understand. In the official competition, students submit answers in two sessions of 4.5 hours each. Our systems solved one problem within minutes and took up to three days to solve the others.</p>
</blockquote>
<p>This year's result, scoring gold with a single model, within the allotted time and with no manual step to translate the problems first, is much more impressive.</p>
<p><strong>Update</strong>: Concerning the timing of the news, DeepMind CEO Demis Hassabis <a href="https://x.com/demishassabis/status/1947337618787615175">says</a>:</p>
<blockquote>
<p>Btw as an aside, we didn’t announce on Friday because we respected the IMO Board's original request that all AI labs share their results only after the official results had been verified by independent experts &amp; the students had rightly received the acclamation they deserved</p>
<p>We've now been given permission to share our results and are pleased to have been part of the inaugural cohort to have our model results officially graded and certified by IMO coordinators and experts, receiving the first official gold-level performance grading for an AI system!</p>
</blockquote>
<p>OpenAI's <a href="https://x.com/polynoamial/status/1947398538662437306">Noam Brown</a>:</p>
<blockquote>
<p>Before we shared our results, we spoke with an IMO board member, who asked us to wait until after the award ceremony to make it public, a request we happily honored.</p>
<p>We announced at ~1am PT (6pm AEST), after the award ceremony concluded. At no point did anyone request that we announce later than that.</p>
</blockquote>
<p>As far as I can tell the Gemini team was participating in an official capacity, while OpenAI were not. <a href="https://x.com/polynoamial/status/1947398532899738064">Noam again</a>:</p>
<blockquote>
<p>~2 months ago, the IMO emailed us about participating in a formal (Lean) version of the IMO. We’ve been focused on general reasoning in natural language without the constraints of Lean, so we declined. We were never approached about a natural language math option.</p>
</blockquote>
<p>Neither OpenAI nor Gemini used <a href="https://en.m.wikipedia.org/wiki/Lean_(proof_assistant)">Lean</a> in their attempts, which would have counted as tool use.

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=44637191">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/mathematics">mathematics</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/openai">openai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/gemini">gemini</a>, <a href="https://simonwillison.net/tags/llm-reasoning">llm-reasoning</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/21/gemini-imo/#atom-everything>

---

## Argon ONE UP is modular laptop powered by a Raspberry Pi CM5

date: 2025-07-21, from: Liliputing

<p>The makers of the Argon ONE line of accessories for Raspberry Pi computers have built a business around designing cases that add or change some key functions of the little computers by, for example, moving all of the ports to one side. But the upcoming Argon ONE UP takes things to the next level. It&#8217;s a laptop computer [&#8230;]</p>
<p>The post <a href="https://liliputing.com/argon-one-up-is-modular-laptop-powered-by-a-raspberry-pi-cm5/">Argon ONE UP is modular laptop powered by a Raspberry Pi CM5</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/argon-one-up-is-modular-laptop-powered-by-a-raspberry-pi-cm5/>

---

## Spotify Publishes AI-Generated Songs From Dead Artists Without Permission

date: 2025-07-21, from: 404 Media Group

"They could fix this problem. One of their talented software engineers could stop this fraudulent practice in its tracks, if they had the will to do so." 

<br> 

<https://www.404media.co/spotify-publishes-ai-generated-songs-from-dead-artists-without-permission/>

---

## MINISFORUM M1 Pro mini PC comes with Intel Meteor Lake and Arrow Lake options

date: 2025-07-21, from: Liliputing

<p>Mini PC makers often offer several different processor options so that customers can decide whether to prioritize price, performance, or some mix of the two. But usually those processor options are all part of the same family. The MINISFORUM M1 Pro bucks that trend. Customers interested in picking up an entry-level model can pay $383 for [&#8230;]</p>
<p>The post <a href="https://liliputing.com/minisforum-m1-pro-mini-pc-comes-with-intel-meteor-lake-and-arrow-lake-options/">MINISFORUM M1 Pro mini PC comes with Intel Meteor Lake and Arrow Lake options</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/minisforum-m1-pro-mini-pc-comes-with-intel-meteor-lake-and-arrow-lake-options/>

---

## Why Murdoch Doesn’t Give a Toss About Trump

date: 2025-07-21, from: Tina Brown

What rich irony that the defense against the latest assault by Trump on press freedom is now in the hands of old crocodile Rupert Murdoch, the very media owner whose Fox News gave us Trump in the first place. 

<br> 

<https://tinabrown.substack.com/p/why-murdoch-doesnt-give-a-toss-about>

---

## The Game Genie Generation

date: 2025-07-21, updated: 2025-07-21, from: Tedium site

For an unlicensed game accessory, the Game Genie sure casts a long shadow. It reshaped the games we already owned—and had a profound effect on copyright law. 

<br> 

<https://feed.tedium.co/link/15204/17101139/the-game-genie-generation>

---

## The NIH Is Capping Research Proposals Because It's Overwhelmed by AI Submissions

date: 2025-07-21, from: 404 Media Group

The NIH wrote that it has recently “observed instances of Principal Investigators submitting large numbers of applications, some of which may have been generated with AI tools."  

<br> 

<https://www.404media.co/nih-capping-research-applications-ai/>

---

## ONEXSUGAR Sugar 1 handheld game console hits Indiegogo for $599 (Dual-screen Android handheld game console with a convertible design)

date: 2025-07-21, from: Liliputing

<p>The ONEXSUGAR Sugar 1 is an unusual handheld game console thanks to a convertible design that lets you use it as either a single-screen device with a 6.01 inch FHD+ OLED display or as a dual-screen handheld with a second 3.92 OLED display below the primary screen. In other words, this Android-powered handheld is sort of [&#8230;]</p>
<p>The post <a href="https://liliputing.com/onexsugar-sugar-1-handheld-game-console-hits-indiegogo-for-599-dual-screen-android-handheld-game-console-with-a-convertible-design/">ONEXSUGAR Sugar 1 handheld game console hits Indiegogo for $599 (Dual-screen Android handheld game console with a convertible design)</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/onexsugar-sugar-1-handheld-game-console-hits-indiegogo-for-599-dual-screen-android-handheld-game-console-with-a-convertible-design/>

---

## Black Mirror: clasificación oficial de sus capítulos

date: 2025-07-21, from: Iván Paredes Reséndiz blog, Mexico's cinema

<p>Desde su estreno en la cadena de televisión británica Channel 4 por allá en 2011 hasta su eventual adquisición por Netflix en 2015, Black Mirror se ha convertido en una de las series más populares bajo un formato de capítulos que funcionan de manera independiente y que plantean fantasías distópicas en las que la tecnología [&#8230;]</p>
<p>La entrada <a href="https://www.palomitademaiz.net/black-mirror-clasificacion-oficial-de-sus-capitulos/">Black Mirror: clasificación oficial de sus capítulos</a> se publicó primero en <a href="https://www.palomitademaiz.net">Palomita de maíz</a>.</p>
 

<br> 

<https://www.palomitademaiz.net/black-mirror-clasificacion-oficial-de-sus-capitulos/?utm_source=rss&utm_medium=rss&utm_campaign=black-mirror-clasificacion-oficial-de-sus-capitulos>

---

## Fast Fashion Price Surge for Americans

date: 2025-07-21, from: Guy Kawasaki blog

Vivek Astvansh, Associate Professor of Quantitative Marketing and Analytics, McGill University. 

<br> 

<https://guykawasaki.substack.com/p/fast-fashion-price-surge-for-americans>

---

**@Robert's feed at BlueSky** (date: 2025-07-21, from: Robert's feed at BlueSky)

Intrigued.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3luica2xrw227>

---

**@Robert's feed at BlueSky** (date: 2025-07-21, from: Robert's feed at BlueSky)

Queue the suspense theme music.

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3luic7ghd3c27>

---

## Quoting Daniel Litt

date: 2025-07-21, updated: 2025-07-21, from: Simon Willison’s Weblog

<blockquote cite="https://x.com/littmath/status/1946987909439017108"><p>An AI tool that <a href="https://simonwillison.net/2025/Jul/19/openai-gold-medal-math-olympiad/">gets gold on the IMO</a> is obviously immensely impressive. Does it mean math is “solved”? Is an AI-generated proof of the Riemann hypothesis clearly on the horizon? Obviously not.</p>
<p>Worth keeping timescales in mind here: IMO competitors spend an average of 1.5 hrs on each problem. High-quality math research, by contrast, takes month or years.</p>
<p>What are the obstructions to AI performing high-quality autonomous math research? I don’t claim to know for sure, but I think they include many of the same obstructions that prevent it from doing many jobs: Long context, long-term planning, consistency, unclear rewards, lack of training data, etc.</p>
<p>It’s possible that some or all of these will be solved soon (or have been solved) but I think it’s worth being cautious about over-indexing on recent (amazing) progress.</p></blockquote>
<p class="cite">&mdash; <a href="https://x.com/littmath/status/1946987909439017108">Daniel Litt</a>, Assistant Professor of mathematics, University of Toronto</p>

    <p>Tags: <a href="https://simonwillison.net/tags/mathematics">mathematics</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/daniel-litt">daniel-litt</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/21/daniel-litt/#atom-everything>

---

## Is Google’s AI Reading Your Private Messages? Why It’s Time to Consider a Secure Alternative

date: 2025-07-21, from: Purism News and Events

<p>On July 7, 2025, MSM ( Is Google’s AI secretly reading your private texts? Here’s what’s really happening—and how to stop it before it’s too late ) reported that Google silently activated a controversial update: its Gemini AI began scanning popular third-party apps like WhatsApp and Messages on Android devices.</p>
<p>The post <a rel="nofollow" href="https://puri.sm/posts/is-googles-ai-reading-your-private-messages-why-its-time-to-consider-a-secure-alternative/">Is Google’s AI Reading Your Private Messages? Why It’s Time to Consider a Secure Alternative</a> appeared first on <a rel="nofollow" href="https://puri.sm/">Purism</a>.</p>
 

<br> 

<https://puri.sm/posts/is-googles-ai-reading-your-private-messages-why-its-time-to-consider-a-secure-alternative/>

---

## Maker Monday featuring your excellent Raspberry Pi builds

date: 2025-07-21, from: Raspberry Pi News (.com)

<p>Follow along with #MakerMonday each week over on our social media platforms to see tons of creative Raspberry Pi builds.</p>
<p>The post <a href="https://www.raspberrypi.com/news/maker-monday-featuring-your-excellent-raspberry-pi-builds/">Maker Monday featuring your excellent Raspberry Pi builds</a> appeared first on <a href="https://www.raspberrypi.com">Raspberry Pi</a>.</p>
 

<br> 

<https://www.raspberrypi.com/news/maker-monday-featuring-your-excellent-raspberry-pi-builds/>

---

## Gemini Is 'Strict and Punitive' While ChatGPT Is 'Catastrophically' Cooperative, Researchers Say

date: 2025-07-21, from: 404 Media Group

In tests involving the Prisoner's Dilemma, researchers found that Google’s Gemini is “strategically ruthless,” while OpenAI is collaborative to a “catastrophic” degree.  

<br> 

<https://www.404media.co/gemini-is-strict-and-punitive-while-chatgpt-is-catastrophically-cooperative-researchers-say/>

---

## Rümeysa Öztürk in Her Own Words

date: 2025-07-21, updated: 2025-07-21, from: One Foot Tsunami

 

<br> 

<https://onefoottsunami.com/2025/07/21/rumeysa-ozturk-in-her-own-words/>

---

## A Startup is Selling Data Hacked from Peoples’ Computers to Debt Collectors

date: 2025-07-21, from: 404 Media Group

Infostealer data can include passwords, email and billing addresses, and the embarrassing websites you use. Farnsworth Intelligence is selling to divorce lawyers and other industries. 

<br> 

<https://www.404media.co/a-startup-is-selling-data-hacked-from-peoples-computers-to-debt-collectors/>

---

## How I write docs quickly

date: 2025-07-21, from: Blog by Fabrizio Ferri-Benedetti

<p>I’ve been writing documentation and technical articles for more than a decade now. One piece of feedback I consistently got from managers and peers during all these years is how <em>fast</em> I am when producing and releasing docs. For example, I was once asked to document a new feature from a team I wasn’t serving two weeks ahead of launch. Everything was new to me, but I had most of the docs drafted after four days. By launch, the docs had been deemed ready to go live.</p> 

<br> 

<https://passo.uno/how-write-tech-docs-quickly/>

---

## REMEMBER THE DAYS WHEN WAITERS DIDN'T LEAVE YOUR FOOD TO GO COLD ON THE BAR?

date: 2025-07-21, from: Howard Jacobson blog

Yes, it was a hot day. 

<br> 

<https://jacobsonh.substack.com/p/remember-the-days-when-waiters-didnt>

---

## Enshittification and the Bitterness of Billionaire Bros

date: 2025-07-21, from: Paul Krugman

Hell hath no fury like a tech god scorned 

<br> 

<https://paulkrugman.substack.com/p/enshittification-and-the-bitterness>

---

## Coding with LLMs in the summer of 2025 (an update)

date: 2025-07-21, updated: 2025-07-21, from: Simon Willison’s Weblog

<p><strong><a href="https://antirez.com/news/154">Coding with LLMs in the summer of 2025 (an update)</a></strong></p>
Salvatore Sanfilippo describes his current AI-assisted development workflow. He's all-in on LLMs for code review, exploratory prototyping, pair-design and writing "part of the code under your clear specifications", but warns against leaning too hard on pure vibe coding:</p>
<blockquote>
<p>But while LLMs can write part of a code base with success (under your strict supervision, see later), and produce a very sensible speedup in development (or, the ability to develop more/better in the same time used in the past — which is what I do), when left alone with nontrivial goals they tend to produce fragile code bases that are larger than needed, complex, full of local minima choices, suboptimal in many ways. Moreover they just fail completely when the task at hand is more complex than a given level.</p>
</blockquote>
<p>There are plenty of useful tips in there, especially around carefully managing your context:</p>
<blockquote>
<p>When your goal is to reason with an LLM about implementing or fixing some code, you need to provide extensive information to the LLM: papers, big parts of the target code base (all the code base if possible, unless this is going to make the context window so large than the LLM performances will be impaired). And a brain dump of all your understanding of what should be done.</p>
</blockquote>
<p>Salvatore warns against relying too hard on tools which hide the context for you, like editors with integrated coding agents. He prefers pasting exactly what's needed into the LLM web interface - I share his preference there.</p>
<p>His conclusions here match <a href="https://simonwillison.net/2025/Mar/11/using-llms-for-code/">my experience</a>:</p>
<blockquote>
<p>You will be able to do things that are otherwise at the borders of your knowledge / expertise while learning much in the process (yes, you can learn from LLMs, as you can learn from books or colleagues: it is one of the forms of education possible, a new one). Yet, everything produced will follow your idea of code and product, and will be of high quality and will not random fail because of errors and shortcomings introduced by the LLM. You will also retain a strong understanding of all the code written and its design.</p>
</blockquote>

    <p><small></small>Via <a href="https://news.ycombinator.com/item?id=44623953">Hacker News</a></small></p>


    <p>Tags: <a href="https://simonwillison.net/tags/salvatore-sanfilippo">salvatore-sanfilippo</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/21/coding-with-llms/#atom-everything>

---

## Simplifying BlogIt

date: 2025-07-21, from: Robert's Ramblings

BlogIt is a command I've written many times over the years. At it's core
is did a two simple things. 

1. Copy CommonMark files into a blog directory three
2. Use Front Matter as a source for aggregated blog metadata

In it the new incarnation it is primarily focus on curating the front matter
followed by copying the document into the blog directory structure. 

1. Curate CommonMark file front matter
2. Copy CommonMark files into the blog directory tree

Other tools can aggregate blog metadata like [FlatLake](https://flatlake.app).
 

<br> 

<https://rsdoiel.github.io/blog/2025/07/21/Simplifying_BlogIt.html>

---

**@Robert's feed at BlueSky** (date: 2025-07-20, from: Robert's feed at BlueSky)

Interesting article about bentwood boxes. https://www.cbc.ca/news/canada/north/tlingit-artist-bentwood-box-1.7587939?cmp=rss 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lugk7ato722l>

---

**@Robert's feed at BlueSky** (date: 2025-07-20, from: Robert's feed at BlueSky)

👇

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lufx45yi6k25>

---

**@Robert's feed at BlueSky** (date: 2025-07-20, from: Robert's feed at BlueSky)

No measurements, no problem?

[contains quote post or other embedded content] 

<br> 

<https://bsky.app/profile/rsdoiel.bsky.social/post/3lufwzozhwc25>

---

## MeLE Overclock X2 is an almost pocket-sized PC with Intel N150 and upgradeable RAM & storage

date: 2025-07-20, from: Liliputing

<p>The MeLE Overclock X2 is a compact desktop computer that&#8217;s barely larger than a smartphone, measuring 178 x 94 x 21mm (about 7&#8243; x 3.7&#8243; x 0.8&#8243;). But it&#8217;s a full-fledged PC with an Intel processor, a decent set of I/O options, and something you won&#8217;t find in any phone: support for user-replaceable memory and [&#8230;]</p>
<p>The post <a href="https://liliputing.com/mele-overclock-x2-is-an-almost-pocket-sized-pc-with-intel-n150-and-upgradeable-ram-storage/">MeLE Overclock X2 is an almost pocket-sized PC with Intel N150 and upgradeable RAM &#038; storage</a> appeared first on <a href="https://liliputing.com">Liliputing</a>.</p>
 

<br> 

<https://liliputing.com/mele-overclock-x2-is-an-almost-pocket-sized-pc-with-intel-n150-and-upgradeable-ram-storage/>

---

## Quoting Armin Ronacher

date: 2025-07-20, updated: 2025-07-20, from: Simon Willison’s Weblog

<blockquote cite="https://lucumr.pocoo.org/2025/7/20/the-next-generation/"><p>Every day someone becomes a programmer because they figured out how to make ChatGPT build something. Lucky for us: in many of those cases the AI picks Python. We should treat this as an opportunity and anticipate an expansion in the kinds of people who might want to attend a Python conference. Yet many of these new programmers are not even aware that programming communities and conferences exist. It’s in the Python community’s interest to find ways to pull them in.</p></blockquote>
<p class="cite">&mdash; <a href="https://lucumr.pocoo.org/2025/7/20/the-next-generation/">Armin Ronacher</a></p>

    <p>Tags: <a href="https://simonwillison.net/tags/pycon">pycon</a>, <a href="https://simonwillison.net/tags/ai">ai</a>, <a href="https://simonwillison.net/tags/llms">llms</a>, <a href="https://simonwillison.net/tags/vibe-coding">vibe-coding</a>, <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/python">python</a>, <a href="https://simonwillison.net/tags/generative-ai">generative-ai</a>, <a href="https://simonwillison.net/tags/armin-ronacher">armin-ronacher</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/20/armin-ronacher/#atom-everything>

---

## The Economics of Immigration and Deportation

date: 2025-07-20, from: Paul Krugman

Immigration has been good for America. Mass deportation will be a disaster. 

<br> 

<https://paulkrugman.substack.com/p/the-economics-of-immigration-and>

---

## Quoting Tim Sweeney

date: 2025-07-20, updated: 2025-07-20, from: Simon Willison’s Weblog

<blockquote cite="https://x.com/timsweeneyepic/status/1946721961746608267"><p>There’s a bigger opportunity in computer science and programming (academically conveyed or self-taught) now than ever before, by far, in my opinion. The move to AI is like replacing shovels with bulldozers. Every business will benefit from this and they’ll need people to do it.</p></blockquote>
<p class="cite">&mdash; <a href="https://x.com/timsweeneyepic/status/1946721961746608267">Tim Sweeney</a>, Epic Games</p>

    <p>Tags: <a href="https://simonwillison.net/tags/ai-assisted-programming">ai-assisted-programming</a>, <a href="https://simonwillison.net/tags/careers">careers</a>, <a href="https://simonwillison.net/tags/ai">ai</a></p> 

<br> 

<https://simonwillison.net/2025/Jul/20/tim-sweeney/#atom-everything>

