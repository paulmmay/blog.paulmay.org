---
title: Data Visualisation Progress Report
url: irish-data-progress-report
comments: true
layout: post
categories: [blog]
tags: [processing, open government, dataviz, data visualisation]
date: 10-11-2010
---
<p class="intro">A quick spin through progress on my projects to gather, then visualise data related to Irish history in the last 30 years. Data: it's not sexy, but it's a living.</p>
### Previously
I tried to make <a href="http://paulmay.org/itp/what-happened" title="What Happened">this</a>, then I realised it was going to be difficult so <a href="http://paulmay.org/articles/ireland-as-pdf" title="I wrote this">I wrote this</a>. A lot of smart people agreed, so I decided I would <a href="http://paulmay.org/articles/building-irish-data/" title="try to make this">try to make this</a>. 

### Status
Information grappling:<br />
<a href="http://www.flickr.com/photos/paulmmay/5164251556/" title="Screen shot 2010-11-10 at 09.00.07 by paulmmay, on Flickr"><img src="http://farm5.static.flickr.com/4063/5164251556_0c05382c10_z.jpg"class="photo" alt="Screen shot 2010-11-10 at 09.00.07" /></a>


* I've **gathered** a lot of the more-readily accessible data relating to Irish society; demographic and economic statistics as raw, ugly CSV files. 
* I've separated all this data into **two piles; interesting, and not so interesting** - essentially data that is **useful** (fit for purpose) for my visualisation project and data that isn't. Two of the key deciding factors have been the **granularity of the data** (how detailed it is - best case scenario is it's a stat that's gathered each month) and when the data started to be collected. 
* I've compiled the interesting/fit-for-purpose data into **a single table as a time series**. This was not much fun, but it's done. 

Infrastructure wrangling:<br />
<a href="http://www.flickr.com/photos/paulmmay/5164262590/" title="Proof of Concept by paulmmay, on Flickr"><img src="http://farm5.static.flickr.com/4025/5164262590_bc0473490a_z.jpg" class="photo" alt="Proof of Concept" /></a>


* Irish hosting company <a href="http://www.blacknight.com" title="Blacknight">Blacknight</a> have donated a **server** for a year - this is where I will store and share data, and where my visualisation project will go get its information from.
* Irish web technology company <a href="http://ww.echolibre.com" title="Echolibre">Echolibre</a> have helped me get up and running with their **API framework **FRAPI - which is **now up and running** on the aforementioned server.
* I've taken some **basic population data and am now making it available through an API** - just as a proof of concept. I would link to it if I didn't think it would be broken when you go to look at it; which is most definitely will be.

Data Visualisation:


* I realise that I haven't opened Processing in two weeks.
* But I've been reading a lot of <a href="http://www.edwardtufte.com/" title="Edward Tufte">Edward Tufte</a>
* And thinking about **how best to represent different types of information,** with different scales/units, in a single graphical format. No clear answers yet.

### Next Steps
The next steps for me are to **design a database structure** that is a little helpful; ideally I'd like to be able for all the information to **share a common reference to time and place**, rather than every table having its own internal references. I want to **store information about the design of the database, along with information about the sources of the data, in separate reference tables**. From there I'll start to load in data from the more accessible sources. Sexy, sexy stuff. 

At the same time I'll be **narrowing down the scope of the information** I want to represent visually, and doing more research into how best to represent the information. There is every chance that the visualisation aspect of the project will lay down the approach I want to follow, but not be a completed/comprehensive project - after Christmas I can explore it more fully.

