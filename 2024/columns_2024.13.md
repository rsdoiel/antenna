---
title: columns 2024.13
updated: 2024-03-25 08:43:09
---

# columns 2024.13

(date: 2024-03-25 08:43:09)

---

## Licensing AI Engineers

date: 2024-03-25, updated: 2024-03-21, from: Bruce Schneier blog

<p>The debate over professionalizing software engineers is decades old. (The basic idea is that, like lawyers and architects, there should be some professional licensing requirement for software engineers.) Here&#8217;s a <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4759742">law journal article</a> recommending the same idea for AI engineers.</p>
<blockquote><p>This Article proposes another way: professionalizing AI engineering. Require AI engineers to obtain licenses to build commercial AI products, push them to collaborate on scientifically-supported, domain-specific technical standards, and charge them with policing themselves. This Article&#8217;s proposal addresses AI harms at their inception, influencing the very engineering decisions that give rise to them in the first place. By wresting control over information and system design away from companies and handing it to AI engineers, professionalization engenders trustworthy AI by design. Beyond recommending the specific policy solution of professionalization, this Article seeks to shift the discourse on AI away from an emphasis on light-touch, ex post solutions that address already-created products to a greater focus on ex ante controls that precede AI development. We&#8217;ve used this playbook before in fields requiring a high level of expertise where a duty to the public welfare must trump business motivations. What if, like doctors, AI engineers also vowed to do no harm?...</p></blockquote> 

<https://www.schneier.com/blog/archives/2024/03/licensing-ai-engineers.html>

---

## How to deal with the Trump threat (Part 1)

date: 2024-03-25, from: Robert Reich's blog

Friends, The 2024 general election is now underway. Like most of you, I&#8217;ve found myself immersed in many conversations about the threat to our nation &#8212; and the world &#8212; posed by Donald Trump. Just to be clear, I&#8217;m not talking about conversations with Trump 

<https://robertreich.substack.com/p/how-to-deal-with-the-trump-threat>

---

## Monday 25 March, 2024

date: 2024-03-25, from: John Naughton's online diary

Director’s cut Strange juxtaposition of Andrew ‘Brillopad’ Neil and someone else. Shot in 2007. Quote of the Day &#8220;Ideas rot if you don&#8217;t do something with them. Don&#8217;t hoard them. Blog them or otherwise tell people.&#8221; Ed Dumbill Musical alternative &#8230; <a href="https://memex.naughtons.org/monday-25-march-2024/39274/">Continue reading <span class="meta-nav">&#8594;</span></a> 

<https://memex.naughtons.org/monday-25-march-2024/39274/>

---

## Congress’s new low

date: 2024-03-24, from: Robert Reich's blog

House Republicans are determined to hit bottom 

<https://robertreich.substack.com/p/congresss-new-record>

---

## Weekend Leftovers: Good Reads & More

date: 2024-03-24, from: Om Malik blog

While my blog is about technology, I wanted to share some of the articles, videos, and other stuff I enjoyed during this past week — Om. “What you have is all you need.” Pico Iyer, A Beginner&#8217;s Guide to Japan Imagine turning your Mac Studio and an iPad into a vintage Macintosh. Clever. It is amazing &#8230; 

<https://om.co/2024/03/24/weekend-leftovers-good-reads-more/>

---

##  ‘The Last Repair Shop’

date: 2024-03-24, from: Dan Rather's Steady

A Reason To Smile 

<https://steady.substack.com/p/the-last-repair-shop>

---

## Another day, another paean of praise for the Amiga's 1980s pre-emptive multitasking GUI

date: 2024-03-24, from: Liam on Linux

<div>Yes, the Amiga offered a GUI with pre-emptive multitasking, as early as 1985 or so. And it was affordable: you didn't even need a hard disk.<br /><span class="commtext c00"><p>The thing is, that's only part of the story.</p><p>There's  a generation of techies who are about 40 now who don't remember this  stuff well, and some of the older ones have forgotten with time but  don't realise. I had some greybeard angrily telling me that floppy  drives were IDE recently. Senile idiot.</p><p>Anyway.</p><p>Preemptive multitasking is only part of the story. Lots of systems had it. Windows <i>2.0</i> could do preemptive multitasking -- but only of DOS apps, and only in the base 640kB of RAM, so it was pretty useless.</p><p>It  sounds good but it's not. Because the other key ingredient is memory  protection. You need both, together, to have a compelling deal. Amiga  and Windows 2.x/3.x only had the preemption part, they had no hardware  memory management or protection to go with it. (Windows 3.x <i>when running on a 386</i> and also <i>when given &gt;2MB RAM</i> could do some, for DOS apps, but not much.)</p><p>Having  multiple pre-emptive tasks is relatively easy if they are all in the  same memory space, but it's horribly horribly unstable.</p><p>Also see:  microkernels. In size terms, AmigaOS was a microkernel, but a  microkernel without memory protection is not such a big deal, because  the hard part of a microkernel is the interprocess communication, and if  they can just do that by reading and writing each other's RAM it's  trivially easy but also trivially insecure and trivially unstable.</p><p>RISC  OS had pre-emptive multitasking too... but only of text-only  command-line windows, and there were few CLI RISC OS apps so it was  mostly useless. At least on 16-bit Windows there were lots of DOS apps  so it was vaguely useful, if they'd fit into memory. Which only trivial  ones would. Windows 3 came along very late in the DOS era, and by then,  most DOS apps didn't fit into memory <i>on their own</i> one at a time. I  made good money optimising DOS memory around 1990-1992 because I was  very good at it and without it most DOS apps didn't fit into 500-550kB  any more. So two of them in 640kB? Forget it.</p><p>Preemption is clever. It lets apps that weren't designed to multitask do it.</p><p>But it's also <i>slow</i>. Which is <i>why</i>  RISC OS didn't do it. Co-op is much quicker  which is also why OSes like RISC OS and 16-bit Windows chose it for  their GUI apps: because GUI apps strained the resources of  late-1980s/very-early-1990s computers. So you had 2 choices:</p><p>&bull; The Mac and GEM way: don't multitask at all.</p><p>&bull; The 16-bit Windows and RISC OS way: multitask cooperatively, and hope nothing goes wrong.</p><p>Later,  notably, MacOS 7-8-9 and Falcon MultiTOS/MiNT/MagiC etc added coop  multitasking to single-tasking GUI OSes. I used MacOS 8.x and 9.x <i>a lot</i> and I really liked them. They were extraordinarily usable to an extent Mac OS X has never and will never catch up with.</p><p>But  the good thing about owning a Mac in the 1990s was that at least one  thing in your life was guaranteed to go down on you every single day.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></span></div><div>(Repurposed from <a href="https://news.ycombinator.com/item?id=39806580">a HN comment</a>.)<br />&nbsp;</div>&nbsp;<br /><br /><img src="https://www.dreamwidth.org/tools/commentcount?user=liam_on_linux&ditemid=90834" width="30" height="12" alt="comment count unavailable" style="vertical-align: middle;"/> comments 

<https://liam-on-linux.dreamwidth.org/90834.html>

---

## Sunday caption contest: broke?

date: 2024-03-24, from: Robert Reich's blog

And last week's winner 

<https://robertreich.substack.com/p/sunday-caption-contest-broke>

---

## ‘Harrison Bergeron’

date: 2024-03-24, updated: 2024-03-24, from: Daring Fireball

 

<https://daringfireball.net/misc/2024/03/Harrison_Bergeron.pdf>

