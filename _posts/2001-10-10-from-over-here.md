---
title: From Over Here
url: from-over-here
comments: true
layout: post
categories: [blog]
tags: [interaction design, from over here, dataviz, data visualization, data visualisation, data representation]
date: 07-03-2011
---
<p class="intro"><a href="http://www.flickr.com/photos/paulmmay/5504555642/" title="From Over Here - Detail by paulmmay, on Flickr"><img src="http://farm6.static.flickr.com/5138/5504555642_c59d818987_b.jpg" class="photo" alt="From Over Here - Detail" /></a>
From Over Here is a physical representation of articles from the New York Times from 1992-2010. Each card represents a month of articles about, or related to Ireland. The size of the card represents the numbers of articles from that month. The people and topics mentioned in the articles are etched on each card. </p>
### Update - 15th March 2011
<p class="update">I'm very proud that From Over Here <a href="http://www.core77.com/blog/object_culture/from_over_here_a_physical_representation_of_news_mentions_18793.asp" title="got a great writeup">got a great writeup</a> on the design site Core77. Pleased as pie. 

### Update - 16th March 2011
<p class="update">Thank you also Infosthetics.com for <a href="http://infosthetics.com/archives/2011/03/from_over_here_a_physical_representation_of_news.html" title="writing about the project">writing about the project</a>; one of my favourite design blogs!

From Over Here was created for the Data Representation class at ITP, taught by <a href="http://www.blprnt.com" title="Jer Thorp">Jer Thorp</a>. You'll find <a href="http://www.flickr.com/photos/paulmmay/sets/72157626087196057/with/5504555642/" title="more photos and video of the project here">more photos and video of the project here</a>.

### Concept
I wanted to create **a tangible, physical representation of the way Ireland is covered in the New York Times** - something that would answer some questions for me; **when has Ireland been covered, how has the amount of coverage changed over time, what have articles been about and who has been featured/mentioned in those articles .**

I wanted to build the data returned by the Times API into **a topography (like contour layers from a map) that could be added or removed by the viewer** - allowing them to step through time. After a couple of experiments I realised that the shape of the contours would be hard to generate programatically, and hard to fabricate - I opted to keep the core concept; physical layers of time that can be manipulated by the viewer - but using a more manageable shape. 

### Construction
<a href="http://www.flickr.com/photos/paulmmay/5506421196/" title="Laser Template by paulmmay, on Flickr"><img src="http://farm6.static.flickr.com/5098/5506421196_eb1fe9ab48_b.jpg" class="photo" alt="Laser Template" /></a><br />
I used Processing to query the New York Times API and **render a graphic for each month of data returned**. These graphics were exported as individual pages of a PDF, and then these shapes were laid out for cutting by a laser cutter. 

<a href="http://www.flickr.com/photos/paulmmay/5504547948/" title="From Over Here - Month Cards by paulmmay, on Flickr"><img src="http://farm6.static.flickr.com/5091/5504547948_08ded1bcab.jpg" class="photo" alt="From Over Here - Month Cards" /></a>

This programming and preparation took 3-4 days and the laser cutting took 8 hours. Once the cards had all been cut they were stacked onto a wooden rod which was capped to keep them in place. 

### Results
<iframe src="http://player.vimeo.com/video/20723512?byline=0&amp;portrait=0&amp;color=f0e563" width="699" height="393" frameborder="0"> </iframe><a href="http://vimeo.com/20723512">From Over Here</a> from <a href="http://vimeo.com/paulmay">Paul May</a> on <a href="http://vimeo.com">Vimeo</a>.

I am very happy with the quality of the final project; it's aesthetically pleasing, satisfying to use and it's actually good at communicating patterns of coverage over time; the information etched onto the cards give a really interesting view of 18 years of Irish life from an external perspective. It's not surprising that Ireland's recent financial problems have prompted the most extensive coverage seen between 1992-2010.

You'll find <a href="http://www.flickr.com/photos/paulmmay/sets/72157626087196057/" title="more photos and videos of the project over here on Flickr">more photos and videos of the project over here on Flickr</a>.

