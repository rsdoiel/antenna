---
title: libraries
updated: 2025-08-14 06:08:59
---

# libraries

(date: 2025-08-14 06:08:59)

---

## MULTI-3: A GPU-enhanced meshfree simulation framework for multi-track, multi-layer, and multi-material laser powder bed fusion processes

date: 2025-08-15, from: ETH Zurich, recently added

Lüthi, Christof; Afrasiabi, Mohamadreza; Bambach, Markus 

<br> 

<http://hdl.handle.net/20.500.11850/735035>

---

## The role of energy storage towards net-zero emissions in the European electricity system

date: 2025-08-15, from: ETH Zurich, recently added

Upadhyay, Arijit; Tröndle, Tim; Ganter, Alissa; Petkov, Ivalin; Gabrielli, Paolo; Sansavini, Giovanni 

<br> 

<http://hdl.handle.net/20.500.11850/737644>

---

## Guest Post — What is the Current State of Academic e-book Business Models?

date: 2025-08-14, from: Scholarly Kitchen

<p>A new report from Ithaka S+R assesses the current state of scholarly monograph publishing in humanities and social sciences disciplines in order to understand how current business models are functioning for their consumer base, namely libraries and authors.</p>
<p>The post <a href="https://scholarlykitchen.sspnet.org/2025/08/14/guest-post-what-is-the-current-state-of-academic-e-book-business-models/">Guest Post &#8212; What is the Current State of Academic e-book Business Models? </a> appeared first on <a href="https://scholarlykitchen.sspnet.org">The Scholarly Kitchen</a>.</p>
 

<br> 

<https://scholarlykitchen.sspnet.org/2025/08/14/guest-post-what-is-the-current-state-of-academic-e-book-business-models/>

---

## Guest Post — Who Controls Knowledge in the Age of AI? Part 2, Recommendations for Stakeholders

date: 2025-08-13, from: Scholarly Kitchen

<p>The MIT Press surveyed book authors on attitudes towards LLM training practices. In Part 2 of this 2 part post, we discuss recommendations for stakeholders to avoid unintended harms and preserve core scientific and academic values.</p>
<p>The post <a href="https://scholarlykitchen.sspnet.org/2025/08/13/guest-post-who-controls-knowledge-in-the-age-of-ai-part-2-recommendations-for-stakeholders/">Guest Post &#8212; Who Controls Knowledge in the Age of AI? Part 2, Recommendations for Stakeholders</a> appeared first on <a href="https://scholarlykitchen.sspnet.org">The Scholarly Kitchen</a>.</p>
 

<br> 

<https://scholarlykitchen.sspnet.org/2025/08/13/guest-post-who-controls-knowledge-in-the-age-of-ai-part-2-recommendations-for-stakeholders/>

---

## Research Collection now available with new features

date: 2025-08-12, from: ETH Zurich Research Archives

The migration of the Research Collection has been successfully completed. Read more 

<br> 

<https://rc-blog.ethz.ch/en/research-collection-now-available-with-new-features/>

---

## Guest Post — Who Controls Knowledge in the Age of AI? Part 1

date: 2025-08-12, from: Scholarly Kitchen

<p>The MIT Press surveyed book authors on attitudes towards LLM training practices. In Part 1 of this 2 part post, we discuss the results: authors are not opposed to generative AI per se, but they are strongly opposed to unregulated, extractive practices and worry about the long-term impacts of unbridled generative AI development on the scholarly and scientific enterprise.</p>
<p>The post <a href="https://scholarlykitchen.sspnet.org/2025/08/12/guest-post-who-controls-knowledge-in-the-age-of-ai-part-1/">Guest Post &#8212; Who Controls Knowledge in the Age of AI? Part 1</a> appeared first on <a href="https://scholarlykitchen.sspnet.org">The Scholarly Kitchen</a>.</p>
 

<br> 

<https://scholarlykitchen.sspnet.org/2025/08/12/guest-post-who-controls-knowledge-in-the-age-of-ai-part-1/>

---

## We’ve migrated to the cloud; we hope you didn’t notice (but maybe you did)

date: 2025-08-12, from: Crossref Blog

<p>TLDR: We&rsquo;ve successfully moved the main Crossref systems to the cloud! We’ve more to do, with several bugs identified and fixed, and a few still ongoing. However, it’s a step in the right direction and a significant milestone, as, whilst it is a much larger financial investment, it addresses several risks and limitations and shores up the Crossref infrastructure for the future.</p>
<h3 id="some-background">Some background</h3>
<p>We have been doing a lot of thinking, planning, and working on paying down our technical debt and modernising our systems. It’s not fun and flashy work, but it is vital for sustaining our infrastructure, meeting the demand on existing services, and developing new services.</p>
<p>Just about a year ago, we completed phase one, migrating our main database from Oracle to PostgreSQL, an open-source database. This move brought us more in line with our commitment to the <a href="https://www.crossref.org/categories/posi/">POSI principles</a>, reduced our dependencies on costly private licenses, and opened up the possibility to use and offer additional and more contemporary features. With the transition to PostgreSQL we made upgrades to the operating system, the database software, and the underlying hardware, resulting in significant improvements to the overall throughput and capacity of the deposit system. Previously, we typically maintained a queue of more than 10,000 deposits waiting to be processed; now, the queue holds fewer than 100 deposits on average. Consequently, the average latency – the elapsed time from submission to deposit – has reduced from hours to seconds.</p>
<p>During phase one, a total of 35 new servers were created, and for the first time, the entire system configuration was defined through <a href="https://en.wikipedia.org/wiki/Infrastructure_as_code" target="_blank">infrastructure-as-code</a>, enabling the infrastructure to be recreated as necessary. This effort not only enabled the migration but also established a solid foundation for our cloud migration strategy, as the code was leveraged to configure our infrastructure on AWS. Additionally, it serves as a critical component of our disaster recovery planning.</p>
<p>Most importantly, phase one set us up for phase two and our next migration: moving the system into the cloud.</p>
<h3 id="why-we-moved-to-the-cloud">Why we moved to the cloud</h3>
<p>We had been running most of our services in a physical data centre near Boston, MA, USA (there are a few exceptions: the <a href="api.crossref.org">REST API</a> and our test system (test.crossref.org) were already in the cloud, as was the Crossref website). We’ve been planning to move to the cloud for <em>ahem</em> quite some time, but as always, competing priorities and limited resources have thwarted us, and the data centre was mainly serving us well.</p>
<p>But… with staff across 12 countries, and increased global use of our system, operating our own hardware in a physical data centre was becoming increasingly challenging and risky, not to mention, frustrating.</p>
<p>Moving to the cloud has solved several pain points for us:</p>
<ul>
<li>Physical access to the data centre was required for various tasks (e.g., hardware upgrades, troubleshooting, general maintenance), but as Crossref grew as an organisation and became more distributed, we had fewer staff in the area. Hosting services in the cloud means staff around the world can access our servers remotely from anywhere (and we can leave the hardware upgrades to our vendor).</li>
<li>Scalability in the data centre required installing new hardware or upgrading connections, which also meant a good amount of time. In the cloud, we can scale up almost instantly.</li>
<li>We can maintain copies of our databases and services in distributed places, providing insurance against natural or other disasters.
Upgrades now don’t involve buying physical hardware and installing it; it’s a much quicker and more straightforward process.</li>
</ul>
<p>Moving from a physical data centre to the cloud also has some trade-offs; for instance, the cost will be approximately five times higher than running the system in the data centre; with initial data, it’s not unlikely the annual cost may be up to 2,000,000 USD. We aim to optimise and control this cost going forward.</p>
<h3 id="what-we-did">What we did</h3>
<p>The size of the undertaking was partly due to leaving it so long; technical debt has accumulated over many years of running the system in the data centre.</p>
<p>The whole plan was hugely detailed, but we can distil it to a few bullets:</p>
<ul>
<li>We conducted an analysis of components, considered risks and sequencing, and created a test plan and timeline, including comms.</li>
<li>While most of the drive and work was on the shoulders of two infrastructure services colleagues, our software engineers were heavily involved too, and we had weekly check-ins with a cross-team group to review progress, reassess risks, and adjust timelines as we got closer to the migration date (or decided to move it once or twice).</li>
<li>We first created the deposit system in the cloud.</li>
<li>We then created other parts of our services that aren’t in the deposit system code base, but run alongside it, such as reports, querying, and other tools.
We replicated our databases (of which there are several, in a few different flavours - PostgreSQL, MySQL).</li>
<li>We gave 14 days’ notice to our members, via email, and kept this maintenance notice up to date.</li>
<li>We commenced the migration on 8th July, which involved taking the whole system down and rejecting deposits for up to 24 hours.</li>
<li>In the process, we scripted the process to create CS and the other services using Terraform and Ansible, so that going forward, bringing up a whole new instance of CS (should we need to) won’t be a manual process.</li>
<li>We moved the DNS to point at our new system in the cloud, rather than the data centre. We brought the system back up on 9th July, after 14 hours of downtime, and watched the first few deposits come in, while testing thoroughly.</li>
<li>Alongside the technical team, the membership and support team was at the ready to work through the testing in the new live production environment.</li>
</ul>
<p>The message we sent to members, Metadata Plus subscribers, and key integrators like PKP and Turnitin, listed which services would be down and described what changes they might see, such as:</p>
<ul>
<li>The system timezone shifted from EST to UTC (universal coordinated time), which would be noticeable in the timestamps reported back to members after metadata deposits</li>
<li>Our IP address became dynamic and is no longer static. If members had hardcoded our previous IP static address to connect to our services, that would no longer work.</li>
<li>We previously allowed connections using the HTTP/1.0 protocol, but now require HTTP/1.1.
Likewise, we previously allowed TLS version 1.1, but now require at least version 1.2. Older ciphers will not work. A list of accepted ciphers can be found on this page for “ELBSecurityPolicy-TLS13-1-2-2021-06”.</li>
</ul>
<h3 id="how-it-went-and-whats-next">How it went and what’s next</h3>
<p>We still have more to do, with both expected and unexpected issues arising from the migration. There are a couple of functions that still route through the data centre, configuration changes to wrangle, and processes to iron out, so we’ll be keeping that open for another couple of months.</p>
<p>Those were the known issues…</p>
<p>…we also uncovered a few bugs along the way, and we’ve been reporting those (and our progress toward fixing them) on our status page. <a href="https://status.crossref.org/history" target="_blank">See history</a>.</p>
<p>A few diligent members also alerted us to problems they were having. In some cases, we could tell why, and in many cases, their systems needed to be upgraded to work with ours. Thanks go to mEDRA, Spandidos Publications, and Stichting SciPost who helped us identify gaps that resulted in configuration improvements and lessons learned (that we then shared with other members).</p>
<p>There were three issues that we were contacted about more than others:</p>
<ol>
<li><a href="https://status.crossref.org/incidents/scr3rtr8f4pm" target="_blank">Delayed delivery of notification emails</a> which is partly due to the volume of backlogged notification emails in the system.
<ul>
<li>Mostly solved: We have repaired delivery of notification emails for all metadata deposits and are working on a fix for the delivery of messages associated with very large queries.</li>
</ul>
</li>
<li><a href="https://status.crossref.org/incidents/nyr3g5b3h05v" target="_blank">A small percentage of registered records not being indexed in the REST API</a> - this can cause downstream issues for a number of other services (e.g., Crossref metadata search - search.crossref.org, Participation Reports, ORCID auto-update, and for external services that make use of the metadata from our REST API).
<ul>
<li>Mostly solved: All records in July are now indexed in the REST API, albeit we have new reports of a few records missing in the last week, which we are actively investigating.</li>
</ul>
</li>
<li><a href="https://status.crossref.org/incidents/9cdhzzvt1xt3" target="_blank">Delayed delivery of July’s resolution reports</a>.
<ul>
<li>Solved - not only has July’s resolution report run completed, but we also completed August’s ahead of schedule.</li>
</ul>
</li>
</ol>
<p>This migration was a significant effort, and 2025’s top priority project for the Open and Sustainable Operations (OSO) <a href="https://doi.org/10.64000/4s2ee-wkr84" target="_blank">program</a> team. Overall, we’re happy with our progress toward making Crossref infrastructure more robust, reliable, and future-proof. And judging by the messages of support we received, you are too! Onwards to the next infrastructure project… <a href="https://crossref.productboard.com/roadmap/8462651-open-roadmap-by-program" target="_blank">check out our roadmap to see what’s up next</a>.</p>
<h3 id="references">References</h3>
<ol>
<li>&lsquo;Infrastructure as code&rsquo; (2025) <em>Wikipedia</em>, 12 August. Available at: <a href="https://en.wikipedia.org/wiki/Infrastructure_as_code" target="_blank">https://en.wikipedia.org/wiki/Infrastructure_as_code</a> (Accessed: 12 August 2025).</li>
<li>&lsquo;The programs approach: our experiences during the first quarter of 2025&rsquo; (2025) <em>Crossref</em>. Available at: <a href="https://doi.org/10.64000/4s2ee-wkr84" target="_blank">https://doi.org/10.64000/4s2ee-wkr84</a> (Accessed: 12 August 2025).</li>
</ol> 

<br> 

<https://www.crossref.org/blog/weve-migrated-to-the-cloud-we-hope-you-didnt-notice-but-maybe-you-did/>

---

## The Roman Hat Mystery, by Ellery Queen

date: 2025-08-11, from: Standard Ebooks, new releaases

A police detective and his son attempt to solve the murder of a man attending a play at the theater. 

<br> 

<https://standardebooks.org/ebooks/ellery-queen/the-roman-hat-mystery>

---

## NAIF Information event: Increasing the findability of Swiss research

date: 2025-08-11, from: ETH Zurich Research Archives

With the NAIF (National Approach for Interoperable repositories and Findable research results) project aims to increase the visibility and findability of Swiss research output. Sign up for the information event! Read more 

<br> 

<https://rc-blog.ethz.ch/en/naif-information-event-increasing-the-findability-of-swiss-research/>

---

## Guest Post — From Overhead to Essential: The FAIR Model Recognizes Research Information Services as Essential to the Research Enterprise

date: 2025-08-11, from: Scholarly Kitchen

<p>FAIR represents the best opportunity of the models under consideration to ensure that research information services receive appropriate recognition and sustainable funding</p>
<p>The post <a href="https://scholarlykitchen.sspnet.org/2025/08/11/from-overhead-to-essential/">Guest Post — From Overhead to Essential: The FAIR Model Recognizes Research Information Services as Essential to the Research Enterprise</a> appeared first on <a href="https://scholarlykitchen.sspnet.org">The Scholarly Kitchen</a>.</p>
 

<br> 

<https://scholarlykitchen.sspnet.org/2025/08/11/from-overhead-to-essential/>

---

## Dataset for the Article "A biodegradable suction patch for sustainable transbuccal peptide delivery"

date: 2025-08-10, from: ETH Zurich, recently added

Krupke, Hanna; Zoratto, Nicole; Rabut, Lucie; Gao, Daniel; Paunović, Nevena; Klein Cerrejon, David; Dehapiot, Benoit; Leroux, Jean-Christophe 

<br> 

<http://hdl.handle.net/20.500.11850/742341>

---

## Plasmonic Germanium Photodetectors, Devices and Circuits

date: 2025-08-10, from: ETH Zurich, recently added

Baumann, Michael 

<br> 

<http://hdl.handle.net/20.500.11850/749350>

