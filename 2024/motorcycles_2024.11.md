---
title: motorcycles 2024.11
updated: 2024-03-13 09:19:29
---

# motorcycles 2024.11

(date: 2024-03-13 09:19:29)

---

## Yamaha Sweetens bLU cRU Support For SxS And ATV Racing

date: 2024-03-13, from: Ride Apart, Electric Motorcycle News

Handsome cash prizes and incentives await the top racers fielding Yamaha machines. 

<span class="feed-item-link">
<a href="https://www.rideapart.com/news/711613/yamaha-blu-cru-support-atv-sxs-prizes/">https://www.rideapart.com/news/711613/yamaha-blu-cru-support-atv-sxs-prizes/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.rideapart.com/news/711613/yamaha-blu-cru-support-atv-sxs-prizes/">Save to Pocket</a>
</span>

---

## Exeet Quads Are Some Wild Superbike Quad Conversions

date: 2024-03-13, from: Ride Apart, Electric Motorcycle News

Fancy a supercharged 200-horsepower quad based on a Kawasaki Z H2? 

<span class="feed-item-link">
<a href="https://www.rideapart.com/news/711293/exeet-superbike-quad-conversions/">https://www.rideapart.com/news/711293/exeet-superbike-quad-conversions/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.rideapart.com/news/711293/exeet-superbike-quad-conversions/">Save to Pocket</a>
</span>

---

## Semantic AJAX-HTML

date: 2024-03-13, from: Herman Bear Blog

<p>I recently started fiddling around with <a href="https://htmx.org" target="_blank">HTMX</a>, and I'm pretty impressed. As anyone who's followed the development of <a href="https://bearblog.dev" target="_blank">Bear</a> knows, I'm pretty sick of the state of modern web development due to the complexity involved in managing the disparity between the front-end and the back-end.</p>
<p>React, Vue, and co. all are trying to solve the problems of the missing middle of the web. As it currently stands, the control logic is split between the client and the server, with some run-between code trying to keep everything synchronised correctly. And this is where HTMX fits in. It's an elegant and powerful solution to the front-end/back-end split, allowing more of the control logic to operate on the back-end while dynamically loading HTML into their respective places on the front-end.</p>
<p>But for a tech-luddite like me, this was still a bit too much. All I really want to do is swap page fragments using something like AJAX while sticking to semantically correct HTML.</p>
<p>During the development of Bear, one of the <a href="/the-creative-agency-of-small-projects/" target="_blank">constraints</a> I created for myself was to do as much as possible using basic HTML components. This means that the only elements that are able to perform a request are <code>&lt;a&gt;</code> and <code>&lt;form&gt;</code>, and these work pretty well if all you're doing is retrieving and serving content synchronously.</p>
<p>But not everything should require a page reload. So here's what I propose (and what I've built as a small demo below):</p>
<p>The <code>target</code> attribute on both forms and anchors is used to target things like new tabs, and also handles the loading of content into iframes. What I am proposing is similar to the iframe spec in many ways, except it applies to all semantic elements.</p>
<p>If a <code>target</code> is specified on a form or an anchor and the target is a query selector, an AJAX request is performed and the target is replaced instead of the default action being triggered.</p>
<h3 id="anchor-example">Anchor example</h3>
<p>The following example should get the content of the <code>href</code> using an AJAX call and populate the <code>#my-tab-panel</code> element with the response:</p>
<div class="highlight"><pre><span></span><span class="p">&lt;</span><span class="nt">a</span> <span class="na">href</span><span class="o">=</span><span class="s">"https://herm.app/cake/"</span> <span class="na">target</span><span class="o">=</span><span class="s">"#my-panel"</span><span class="p">&gt;</span>Cake<span class="p">&lt;/</span><span class="nt">a</span><span class="p">&gt;</span> |
<span class="p">&lt;</span><span class="nt">a</span> <span class="na">href</span><span class="o">=</span><span class="s">"https://herm.app/pie/"</span> <span class="na">target</span><span class="o">=</span><span class="s">"#my-panel"</span><span class="p">&gt;</span>Pie<span class="p">&lt;/</span><span class="nt">a</span><span class="p">&gt;</span>

<span class="p">&lt;</span><span class="nt">div</span> <span class="na">id</span><span class="o">=</span><span class="s">"my-panel"</span><span class="p">&gt;</span>Nothing here yet...<span class="p">&lt;/</span><span class="nt">div</span><span class="p">&gt;</span>
</pre></div>

<fieldset>
<legend> Interactive  example</legend>
<a href="https://herm.app/cake/" target="#my-panel">Cake</a> |
    <a href="https://herm.app/pie/" target="#my-panel">Pie</a>
<div id="my-panel">Nothing here yet...</div>
</fieldset>
<h3 id="form-example">Form example</h3>
<p>This example makes a POST request which populates the <code>#form-response</code> element with the response:</p>
<div class="highlight"><pre><span></span><span class="p">&lt;</span><span class="nt">form</span> <span class="na">action</span><span class="o">=</span><span class="s">"https://herm.app/food/"</span> <span class="na">target</span><span class="o">=</span><span class="s">"#form-response"</span> <span class="na">method</span><span class="o">=</span><span class="s">"post"</span><span class="p">&gt;</span>
   <span class="p">&lt;</span><span class="nt">input</span> <span class="na">type</span><span class="o">=</span><span class="s">"text"</span> <span class="na">name</span><span class="o">=</span><span class="s">"name"</span> <span class="na">placeholder</span><span class="o">=</span><span class="s">"Name..."</span> <span class="p">/&gt;</span>
   <span class="p">&lt;</span><span class="nt">input</span> <span class="na">type</span><span class="o">=</span><span class="s">"text"</span> <span class="na">name</span><span class="o">=</span><span class="s">"food"</span> <span class="na">placeholder</span><span class="o">=</span><span class="s">"Favourite food..."</span> <span class="p">/&gt;</span>
   <span class="p">&lt;</span><span class="nt">br</span><span class="p">&gt;</span>
   <span class="p">&lt;</span><span class="nt">button</span><span class="p">&gt;</span>Submit<span class="p">&lt;/</span><span class="nt">button</span><span class="p">&gt;</span>
<span class="p">&lt;/</span><span class="nt">form</span><span class="p">&gt;</span>

<span class="p">&lt;</span><span class="nt">div</span> <span class="na">id</span><span class="o">=</span><span class="s">"form-response"</span><span class="p">&gt;</span>Nothing here yet...<span class="p">&lt;/</span><span class="nt">div</span><span class="p">&gt;</span>
</pre></div>

<fieldset>
<legend>Interactive example</legend>
<form action="https://herm.app/food/" method="post" target="#form-response">
<input name="name" placeholder="Name..." type="text"/>
<input name="food" placeholder="Favourite food..." type="text"/>
<br/>
<button>Submit</button>
</form>
<div id="form-response">Nothing here yet...</div>
</fieldset>
<p>This makes the page more dynamic, and the form itself can even be replaced by the response HTML.</p>
<h3 id="the-js-under-the-hood">The JS under the hood</h3>
<p>The actual JS is surprisingly simple.</p>
<ul>
<li>Check if the target is a default value (denoted by the prefixed <code>_</code>).</li>
<li>If not, treat it as a query selector and perform an AJAX request with the form content.</li>
<li>Replace the innerHTML of the target attribute with the response. Note that it's possible to update multiple target elements so long as they share the query selector.</li>
</ul>
<div class="highlight"><pre><span></span><span class="kd">function</span><span class="w"> </span><span class="nx">sendRequest</span><span class="p">(</span><span class="nx">method</span><span class="p">,</span><span class="w"> </span><span class="nx">url</span><span class="p">,</span><span class="w"> </span><span class="nx">data</span><span class="p">,</span><span class="w"> </span><span class="nx">targetSelector</span><span class="p">)</span><span class="w"> </span><span class="p">{</span>
<span class="w">  </span><span class="kd">const</span><span class="w"> </span><span class="nx">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="p">{</span>
<span class="w">    </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="nx">method</span><span class="p">,</span>
<span class="w">    </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<span class="w">      </span><span class="s1">'Content-Type'</span><span class="o">:</span><span class="w"> </span><span class="s1">'application/x-www-form-urlencoded'</span>
<span class="w">    </span><span class="p">}</span>
<span class="w">  </span><span class="p">};</span>

<span class="w">  </span><span class="k">if</span><span class="w"> </span><span class="p">(</span><span class="nx">data</span><span class="p">)</span><span class="w"> </span><span class="p">{</span>
<span class="w">    </span><span class="nx">options</span><span class="p">.</span><span class="nx">body</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">data</span><span class="p">;</span>
<span class="w">  </span><span class="p">}</span>

<span class="w">  </span><span class="nx">fetch</span><span class="p">(</span><span class="nx">url</span><span class="p">,</span><span class="w"> </span><span class="nx">options</span><span class="p">)</span>
<span class="w">    </span><span class="p">.</span><span class="nx">then</span><span class="p">(</span><span class="nx">response</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="p">{</span>
<span class="w">      </span><span class="k">if</span><span class="w"> </span><span class="p">(</span><span class="nx">response</span><span class="p">.</span><span class="nx">ok</span><span class="p">)</span><span class="w"> </span><span class="p">{</span>
<span class="w">        </span><span class="k">return</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
<span class="w">      </span><span class="p">}</span><span class="w"> </span><span class="k">else</span><span class="w"> </span><span class="p">{</span>
<span class="w">        </span><span class="k">throw</span><span class="w"> </span><span class="ow">new</span><span class="w"> </span><span class="ne">Error</span><span class="p">(</span><span class="s1">'Request failed: '</span><span class="w"> </span><span class="o">+</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">statusText</span><span class="p">);</span>
<span class="w">      </span><span class="p">}</span>
<span class="w">    </span><span class="p">})</span>
<span class="w">    </span><span class="p">.</span><span class="nx">then</span><span class="p">(</span><span class="nx">responseText</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="p">{</span>
<span class="w">      </span><span class="kd">const</span><span class="w"> </span><span class="nx">targetElements</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nb">document</span><span class="p">.</span><span class="nx">querySelectorAll</span><span class="p">(</span><span class="nx">targetSelector</span><span class="p">);</span>
<span class="w">      </span><span class="nx">targetElements</span><span class="p">.</span><span class="nx">forEach</span><span class="p">(</span><span class="nx">targetElement</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="p">{</span>
<span class="w">        </span><span class="nx">targetElement</span><span class="p">.</span><span class="nx">innerHTML</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">responseText</span><span class="p">;</span>
<span class="w">      </span><span class="p">});</span>
<span class="w">    </span><span class="p">})</span>
<span class="w">    </span><span class="p">.</span><span class="k">catch</span><span class="p">(</span><span class="nx">error</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="p">{</span>
<span class="w">      </span><span class="nx">console</span><span class="p">.</span><span class="nx">error</span><span class="p">(</span><span class="s1">'Request error:'</span><span class="p">,</span><span class="w"> </span><span class="nx">error</span><span class="p">);</span>
<span class="w">    </span><span class="p">});</span>
<span class="p">}</span>

<span class="nb">document</span><span class="p">.</span><span class="nx">querySelectorAll</span><span class="p">(</span><span class="s1">'a'</span><span class="p">).</span><span class="nx">forEach</span><span class="p">(</span><span class="nx">link</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="p">{</span>
<span class="w">  </span><span class="nx">link</span><span class="p">.</span><span class="nx">addEventListener</span><span class="p">(</span><span class="s1">'click'</span><span class="p">,</span><span class="w"> </span><span class="nx">event</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="p">{</span>
<span class="w">    </span><span class="k">if</span><span class="w"> </span><span class="p">(</span><span class="nx">link</span><span class="p">.</span><span class="nx">target</span><span class="w"> </span><span class="o">&amp;&amp;</span><span class="w"> </span><span class="o">!</span><span class="nx">link</span><span class="p">.</span><span class="nx">target</span><span class="p">.</span><span class="nx">startsWith</span><span class="p">(</span><span class="s1">'_'</span><span class="p">))</span><span class="w"> </span><span class="p">{</span>
<span class="w">      </span><span class="nx">event</span><span class="p">.</span><span class="nx">preventDefault</span><span class="p">();</span>
<span class="w">      </span><span class="kd">const</span><span class="w"> </span><span class="nx">targetSelector</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">link</span><span class="p">.</span><span class="nx">target</span><span class="p">;</span>
<span class="w">      </span><span class="nx">sendRequest</span><span class="p">(</span><span class="s1">'GET'</span><span class="p">,</span><span class="w"> </span><span class="nx">link</span><span class="p">.</span><span class="nx">href</span><span class="p">,</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w"> </span><span class="nx">targetSelector</span><span class="p">);</span>
<span class="w">    </span><span class="p">}</span>
<span class="w">  </span><span class="p">});</span>
<span class="p">});</span>

<span class="nb">document</span><span class="p">.</span><span class="nx">querySelectorAll</span><span class="p">(</span><span class="s1">'form'</span><span class="p">).</span><span class="nx">forEach</span><span class="p">(</span><span class="nx">form</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="p">{</span>
<span class="w">  </span><span class="nx">form</span><span class="p">.</span><span class="nx">addEventListener</span><span class="p">(</span><span class="s1">'submit'</span><span class="p">,</span><span class="w"> </span><span class="nx">event</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="p">{</span>
<span class="w">    </span><span class="k">if</span><span class="w"> </span><span class="p">(</span><span class="o">!</span><span class="nx">form</span><span class="p">.</span><span class="nx">target</span><span class="p">.</span><span class="nx">startsWith</span><span class="p">(</span><span class="s1">'_'</span><span class="p">))</span><span class="w"> </span><span class="p">{</span>
<span class="w">      </span><span class="nx">event</span><span class="p">.</span><span class="nx">preventDefault</span><span class="p">();</span>
<span class="w">      </span><span class="kd">const</span><span class="w"> </span><span class="nx">targetSelector</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">form</span><span class="p">.</span><span class="nx">getAttribute</span><span class="p">(</span><span class="s1">'target'</span><span class="p">);</span>
<span class="w">      </span><span class="kd">const</span><span class="w"> </span><span class="nx">formData</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="ow">new</span><span class="w"> </span><span class="nx">FormData</span><span class="p">(</span><span class="nx">form</span><span class="p">);</span>
<span class="w">      </span><span class="kd">const</span><span class="w"> </span><span class="nx">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="ow">new</span><span class="w"> </span><span class="nx">URLSearchParams</span><span class="p">(</span><span class="nx">formData</span><span class="p">).</span><span class="nx">toString</span><span class="p">();</span>
<span class="w">      </span><span class="nx">sendRequest</span><span class="p">(</span><span class="nx">form</span><span class="p">.</span><span class="nx">method</span><span class="p">.</span><span class="nx">toUpperCase</span><span class="p">(),</span><span class="w"> </span><span class="nx">form</span><span class="p">.</span><span class="nx">action</span><span class="p">,</span><span class="w"> </span><span class="nx">data</span><span class="p">,</span><span class="w"> </span><span class="nx">targetSelector</span><span class="p">);</span>
<span class="w">    </span><span class="p">}</span>
<span class="w">  </span><span class="p">});</span>
<span class="p">});</span>
</pre></div>

<p>Naturally, something like this isn't perfect, but after having used it in a few small projects it feels like a common sense extension to the HTML spec. JS frameworks have their place (especially if you need to handle client-side state), but sometimes something as simple as this is the solution to many basic web applications.</p>
<script>
function sendRequest(method, url, data, targetSelector) {
  const options = {
    method: method,
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded'
    }
  };

  if (data) {
    options.body = data;
  }

  fetch(url, options)
    .then(response => {
      if (response.ok) {
        return response.text();
      } else {
        throw new Error('Request failed: ' + response.statusText);
      }
    })
    .then(responseText => {
      const targetElements = document.querySelectorAll(targetSelector);
      targetElements.forEach(targetElement => {
        targetElement.innerHTML = responseText;
      });
    })
    .catch(error => {
      console.error('Request error:', error);
    });
}

document.querySelectorAll('a').forEach(link => {
  link.addEventListener('click', event => {
    if (link.target && !link.target.startsWith('_')) {
      event.preventDefault();
      const targetSelector = link.target;
      sendRequest('GET', link.href, null, targetSelector);
    }
  });
});

document.querySelectorAll('form').forEach(form => {
  form.addEventListener('submit', event => {
    if (!form.target.startsWith('_')) {
      event.preventDefault();
      const targetSelector = form.getAttribute('target');
      const formData = new FormData(form);
      const data = new URLSearchParams(formData).toString();
      sendRequest(form.method.toUpperCase(), form.action, data, targetSelector);
    }
  });
});
</script>
<h5 id="enjoyed-the-article-i-write-about-1-2-a-month-subscribe-via-email-or-rss-feed">Enjoyed the article? I write about 1-2 a month. Subscribe via <a href="/subscribe/">email</a> or <a href="/feed/">RSS feed</a>.</h5>

<span class="feed-item-link">
<a href="https://herman.bearblog.dev/semantic-ajax-html/">https://herman.bearblog.dev/semantic-ajax-html/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://herman.bearblog.dev/semantic-ajax-html/">Save to Pocket</a>
</span>

---

## Josh Herrin and Warhorse HSBK Ducati Win 2024 Daytona 200

date: 2024-03-12, from: Cycle World News

What does it take to win the Daytona 200? Much more than outright speed. Josh Herrin gets his third with a prepared team.

<span class="feed-item-link">
<a href="https://www.cycleworld.com/motorcycle-racing/josh-herrin-and-warhorse-hsbk-ducati-win-2024-daytona-200/">https://www.cycleworld.com/motorcycle-racing/josh-herrin-and-warhorse-hsbk-ducati-win-2024-daytona-200/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.cycleworld.com/motorcycle-racing/josh-herrin-and-warhorse-hsbk-ducati-win-2024-daytona-200/">Save to Pocket</a>
</span>

---

## Making the case for Phoenix Raceway

date: 2024-03-12, from: Kickin the Tires blog

By Cole Cusumano, Staff Writer Since NASCAR made Phoenix Raceway the site of the sport’s finale, the diamond in the desert has caught the unnecessary ire of a notoriously malcontent&#8230; 

<span class="feed-item-link">
<a href="https://kickinthetires.net/nascar/making-the-case-for-phoenix-raceway/">https://kickinthetires.net/nascar/making-the-case-for-phoenix-raceway/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://kickinthetires.net/nascar/making-the-case-for-phoenix-raceway/">Save to Pocket</a>
</span>

---

## What Would You Do With $27,000 Worth of Free Gas?

date: 2024-03-12, from: Ride Apart, Electric Motorcycle News

Hey Siri, how many gallons of gas does it take to do a “Long Way Round”?

<span class="feed-item-link">
<a href="https://www.rideapart.com/news/712118/free-gas-glitch-27000-dollars-stolen/">https://www.rideapart.com/news/712118/free-gas-glitch-27000-dollars-stolen/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.rideapart.com/news/712118/free-gas-glitch-27000-dollars-stolen/">Save to Pocket</a>
</span>

---

## That Time Cub House Honda Made A Monkey x Dragon Ball Limited Edition Bike

date: 2024-03-12, from: Ride Apart, Electric Motorcycle News

What better way can you think of to pay tribute to the one and only Akira Toriyama?

<span class="feed-item-link">
<a href="https://www.rideapart.com/news/712117/cub-house-honda-monkey-dragonball/">https://www.rideapart.com/news/712117/cub-house-honda-monkey-dragonball/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.rideapart.com/news/712117/cub-house-honda-monkey-dragonball/">Save to Pocket</a>
</span>

---

## Gear Up With Touratech’s New Aventuro Pro Carbon ADV Helmet

date: 2024-03-12, from: Ride Apart, Electric Motorcycle News

Lightweight, well-ventilated, and safe—what more could you ask for? 

<span class="feed-item-link">
<a href="https://www.rideapart.com/news/711295/touratech-aventuro-pro-carbon-helmet/">https://www.rideapart.com/news/711295/touratech-aventuro-pro-carbon-helmet/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.rideapart.com/news/711295/touratech-aventuro-pro-carbon-helmet/">Save to Pocket</a>
</span>

---

## American Honda Issues Stop Sale/Recall On Three Motorcycles

date: 2024-03-12, from: Ride Apart, Electric Motorcycle News

Certain 2018-2019 CBR1000RR, 2018-2020 CBR600RR, and 2017-2024 Gold Wings are affected.

<span class="feed-item-link">
<a href="https://www.rideapart.com/news/711445/honda-stop-sale-recall-fuelpump/">https://www.rideapart.com/news/711445/honda-stop-sale-recall-fuelpump/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.rideapart.com/news/711445/honda-stop-sale-recall-fuelpump/">Save to Pocket</a>
</span>

---

## Zero’s “Vehicle Control System” Is The Electric Clutch We’ve Been Waiting For

date: 2024-03-11, from: Ride Apart, Electric Motorcycle News

One simply can’t deny the additional grace and finesse provided by a clutch. 

<span class="feed-item-link">
<a href="https://www.rideapart.com/news/711454/zero-simulated-clutch-system-patented/">https://www.rideapart.com/news/711454/zero-simulated-clutch-system-patented/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.rideapart.com/news/711454/zero-simulated-clutch-system-patented/">Save to Pocket</a>
</span>

---

## Gaige Herrera Repeats Season-Opening Win at NHRA Gatornationals

date: 2024-03-11, from: Cycle World News

Reigning NHRA Pro Stock Motorcycle World Champion Gaige Herrera opened the defense of his 2023 crown Sunday with a dominant win aboard his RevZilla/Mission/Vance & Hines Suzuki Gen 3 Hayabusa.

<span class="feed-item-link">
<a href="https://www.cycleworld.com/the-wire/gaige-herrera-repeats-season-opening-win-at-nhra-gatornationals/">https://www.cycleworld.com/the-wire/gaige-herrera-repeats-season-opening-win-at-nhra-gatornationals/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.cycleworld.com/the-wire/gaige-herrera-repeats-season-opening-win-at-nhra-gatornationals/">Save to Pocket</a>
</span>

---

## Gus Rodio Rides Aprilia RS 660 to Victory in MotoAmerica Twins Cup Season Opener at Daytona

date: 2024-03-11, from: Cycle World News

Aprilia rider Gus Rodio’s campaign to clinch the  MotoAmerica Twins Cup title he narrowly missed out on in 2023.

<span class="feed-item-link">
<a href="https://www.cycleworld.com/the-wire/gus-rodio-aprilia-rs-660-victory-motoamerica-twins-cup-season-opener-at-daytona/">https://www.cycleworld.com/the-wire/gus-rodio-aprilia-rs-660-victory-motoamerica-twins-cup-season-opener-at-daytona/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.cycleworld.com/the-wire/gus-rodio-aprilia-rs-660-victory-motoamerica-twins-cup-season-opener-at-daytona/">Save to Pocket</a>
</span>

---

## Harley-Davidson Factory Rider Kyle Wyman Snags Double Daytona Victories to Open 2024 King of the Baggers Race Season

date: 2024-03-11, from: Cycle World News

Harley-Davidson Factory Racing rider Kyle Wyman scored a Daytona double by winning the first two MotoAmerica Mission King of the Baggers races of the 2024 season at Daytona International Speedway.

<span class="feed-item-link">
<a href="https://www.cycleworld.com/the-wire/harley-davidson-factory-rider-kyle-wyman-snags-double-daytona-victories-2024-king-of-the-baggers-race-season/">https://www.cycleworld.com/the-wire/harley-davidson-factory-rider-kyle-wyman-snags-double-daytona-victories-2024-king-of-the-baggers-race-season/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.cycleworld.com/the-wire/harley-davidson-factory-rider-kyle-wyman-snags-double-daytona-victories-2024-king-of-the-baggers-race-season/">Save to Pocket</a>
</span>

---

## Brabus 1400 R on Way

date: 2024-03-11, from: Cycle World News

Brabus is collaborating with KTM on another limited run of Super Duke–based motorcycles.

<span class="feed-item-link">
<a href="https://www.cycleworld.com/motorcycle-news/brabus-1400-r-coming-soon/">https://www.cycleworld.com/motorcycle-news/brabus-1400-r-coming-soon/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.cycleworld.com/motorcycle-news/brabus-1400-r-coming-soon/">Save to Pocket</a>
</span>

---

## Would You Pay Almost $20K For This Rugged Overlanding Camping Trailer?

date: 2024-03-11, from: Ride Apart, Electric Motorcycle News

It's undoubtedly a clever, useful, and aesthetically pleasing motorcycle/ATV hauler, but...

<span class="feed-item-link">
<a href="https://www.rideapart.com/news/711769/sylvansport-goat-20k-overlanding-camper/">https://www.rideapart.com/news/711769/sylvansport-goat-20k-overlanding-camper/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.rideapart.com/news/711769/sylvansport-goat-20k-overlanding-camper/">Save to Pocket</a>
</span>

---

## ARCA Menards Series West: 2024 Phoenix Race Review

date: 2024-03-11, from: Kickin the Tires blog

By Vincent Delforge, Special to Kickin&#8217; the Tires. The 2024 ARCA Menards West Series season began March 8 at Phoenix Raceway in Avondale, AZ with the General Tire 150, a&#8230; 

<span class="feed-item-link">
<a href="https://kickinthetires.net/nascar/arca-west-2024-phoenix-race-review/">https://kickinthetires.net/nascar/arca-west-2024-phoenix-race-review/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://kickinthetires.net/nascar/arca-west-2024-phoenix-race-review/">Save to Pocket</a>
</span>

---

## What We’d Add to Moto Guzzi’s New 2024 North America Experiences

date: 2024-03-11, from: Ride Apart, Electric Motorcycle News

The 2024 experiences from America tick all the classic blockbuster routes. But we added some to the list and want to know your favorites.

<span class="feed-item-link">
<a href="https://www.rideapart.com/news/711285/moto-guzzi-experiences-2024/">https://www.rideapart.com/news/711285/moto-guzzi-experiences-2024/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.rideapart.com/news/711285/moto-guzzi-experiences-2024/">Save to Pocket</a>
</span>

---

## Tony Stewart Bests Justin Ashley In Reaction Time But Gets Eliminated Early In First NHRA Top Fuel Outing

date: 2024-03-11, from: Kickin the Tires blog

By Jerry Jordan, Editor In his first-ever NHRA Top Fuel competition, three-time NASCAR Champion Tony Stewart had a decent showing, surviving all four rounds of qualifying and then beating Justin&#8230; 

<span class="feed-item-link">
<a href="https://kickinthetires.net/nhra/tony-stewart-bests-justin-ashley-in-reaction-time-but-gets-eliminated-early-in-first-nhra-top-fuel-outing/">https://kickinthetires.net/nhra/tony-stewart-bests-justin-ashley-in-reaction-time-but-gets-eliminated-early-in-first-nhra-top-fuel-outing/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://kickinthetires.net/nhra/tony-stewart-bests-justin-ashley-in-reaction-time-but-gets-eliminated-early-in-first-nhra-top-fuel-outing/">Save to Pocket</a>
</span>

---

## Chris Buescher Impressed by RFK Racing’s Rebound at Phoenix

date: 2024-03-11, from: Kickin the Tires blog

By Seth Eggert, Associate Editor One week after an early end to his race at Las Vegas Motor Speedway, Chris Buescher and his RFK Racing team rebounded for a runner-up&#8230; 

<span class="feed-item-link">
<a href="https://kickinthetires.net/nascar/buescher-impressed-rfk-rebound-phoenix/">https://kickinthetires.net/nascar/buescher-impressed-rfk-rebound-phoenix/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://kickinthetires.net/nascar/buescher-impressed-rfk-rebound-phoenix/">Save to Pocket</a>
</span>

---

## Isabella Robusto Shines in Long-Awaited ARCA Menards Debut

date: 2024-03-10, from: Kickin the Tires blog

By Seth Eggert, Associate Editor Isabella Robusto didn’t skip a beat when she returned to racing following a concussion suffered in a crash last season as she shined in her&#8230; 

<span class="feed-item-link">
<a href="https://kickinthetires.net/nascar/robusto-shines-long-awaited-arca-debut/">https://kickinthetires.net/nascar/robusto-shines-long-awaited-arca-debut/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://kickinthetires.net/nascar/robusto-shines-long-awaited-arca-debut/">Save to Pocket</a>
</span>

---

## Super Cute Honda Cross Cub CC110 Is Ready For Adventures Big And Small

date: 2024-03-10, from: Ride Apart, Electric Motorcycle News

Who wouldn’t love to hit the streets on this? 

<span class="feed-item-link">
<a href="https://www.rideapart.com/news/711290/honda-cross-cub-cc110-launched-china/">https://www.rideapart.com/news/711290/honda-cross-cub-cc110-launched-china/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.rideapart.com/news/711290/honda-cross-cub-cc110-launched-china/">Save to Pocket</a>
</span>

---

## Now’s Your Chance To Own A Rare AMB 001 Pro By Aston Martin And Brough Superior

date: 2024-03-10, from: Ride Apart, Electric Motorcycle News

This ultra-rare track-only superbike is set to go under the hammer on April 7, 2024. 

<span class="feed-item-link">
<a href="https://www.rideapart.com/news/711287/aston-martin-brough-superior-amb001-pro-auction-2024/">https://www.rideapart.com/news/711287/aston-martin-brough-superior-amb001-pro-auction-2024/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://www.rideapart.com/news/711287/aston-martin-brough-superior-amb001-pro-auction-2024/">Save to Pocket</a>
</span>

---

## McSwain Left With “Very Humbling Experience” in First Crew Chief Bid with Byron in 2024

date: 2024-03-10, from: Kickin the Tires blog

By Cole Cusumano, Staff Writer AVONDALE, Ariz. – Things didn’t go quite according to plan for Hendrick Motorsports and their NASCAR Xfinity Series program at Phoenix Raceway in the Call&#8230; 

<span class="feed-item-link">
<a href="https://kickinthetires.net/nascar/mcswain-left-with-very-humbling-experience-in-first-crew-chief-bid-with-byron-in-2024/">https://kickinthetires.net/nascar/mcswain-left-with-very-humbling-experience-in-first-crew-chief-bid-with-byron-in-2024/</a> <a href="https://getpocket.com/save" class="pocket-btn" data-lang="en" data-save-url="https://kickinthetires.net/nascar/mcswain-left-with-very-humbling-experience-in-first-crew-chief-bid-with-byron-in-2024/">Save to Pocket</a>
</span>



<script type="text/javascript">!function(d,i){if(!d.getElementById(i)){var j=d.createElement("script");j.id=i;j.src="https://widgets.getpocket.com/v1/j/btn.js?v=1";var w=d.getElementById(i);d.body.appendChild(j);}}(document,"pocket-btn-js");</script>

