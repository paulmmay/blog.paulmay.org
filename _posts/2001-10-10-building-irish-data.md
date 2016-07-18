---
title: IrishData.org
url: irish-data
comments: false
layout: project
largeimage: http://farm6.staticflickr.com/5029/5670967252_d93abbb970_b_d.jpg
smallimage: ../g/work-tedx.jpg
indeximage: /g/irishdata.jpg
type: Experiment, Service
year: 2010
writeup: 
categories: [blog]
tags: [visualisation, pdf, open government, itp, irishdata, ireland, datasets, data]
strapline: An API to Irish civic data.
date: 26-10-2010
description: In 2010, frustrated at the lack of accessible data sets related to Ireland and the Irish economy, I created my own programmatic interface (a RESTful API) to Irish government data. The service scraped data from the Irish Central Statistics Office and other government websites, and made the data available as cleanly formatted JSON. I used the API to create a series of graphics representing Ireland and the health of the Irish economy.
---
<p class="intro">In the spirit of "let's just build this and see what happens" I've started to build a repository of useful data about Ireland - I can't really hang on for the election.</p>
<a href="http://www.flickr.com/photos/paulmmay/5119772748/" title="what-happened-4 by paulmmay, on Flickr"><img src="http://farm5.static.flickr.com/4050/5119772748_718f30a26a_z.jpg" class="photo" alt="what-happened-4" /></a>

### Background
I am starting to work on a data visualisation project called <a href="http://paulmay.org/itp/what-happened" title="What Happened">What Happened</a> - which is an exploration of Ireland from 1980 to 2010, drawing on publicly available information. 

While I was doing my initial research for the project I was reminded how little data in Ireland is made available in accessible formats. This is a huge problem, and is symbolic of a lot of problems I think need to be looked at for Ireland to make a fresh start. Anyway, <a href="http://paulmay.org/articles/ireland-as-pdf" title="I wrote about this problem">I wrote about this problem</a> - and got some good feedback. It's clear that this is a frustration for a lot of people, not just me.

### I Still Need the Data
The bottom line for me is that **I still need this data to power my visualisation project** which is due to be completed in December. I've decided not to wait for a change of government, or for some other project to bear fruit - so **I'm putting together a simple and accessible dataset of useful information about Ireland**. 

With a fair wind I expect to have a Hello World dataset, likely to be Irish population information, available next week, building from there. The data will be **made available thorough a RESTful API for anybody who wants to use it**, and after that it'd be cool to see it grow with some community support.

### Getting Started
The technical challenges aren't too scary, even for a rusty programmer like me; I have hosting in place for the dataset on EC2, I need to find other hosting for the site/blog (in the short term I might just use a hosted service like Tumblr), I'll be using <a href="http://getfrapi.com/" title="FRAPI">FRAPI</a> to provide the REST functionality, and Get Satisfaction to gather feedback on which to base improvements/a roadmap. Nothing too exotic.

From a content point of view, for now I want to** focus on getting the information in reasonably accessible places into the database and out via the API**. Once the easy stuff is done, I can think about a mechanical turk/crowdsourcing approach to rescuing data out of PDFs and the like. I have a workflow in mind for this, but that's for another day. The focus for now is a small dataset and a simple API.

### That's It
So, that's it for now - I will keep you posted on my progress with Irish Data and the visualisation work. In the meantime it'd be cool to hear what other people think the next steps should be. I think some skills seminars for public servants on open government, data formats and web technology would be great&#8230;.just a thought.

