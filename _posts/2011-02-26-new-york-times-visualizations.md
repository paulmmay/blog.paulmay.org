---
title: Visualizing the New York Times
url: visualizing-nytimes
comments: false
layout: project
type: Data Visualization	
year: 2011
largeimages: ["https://c2.staticflickr.com/6/5100/5474479004_6b035f38bb_b.jpg","https://c2.staticflickr.com/6/5056/5474002709_a68e253050_b.jpg","https://c2.staticflickr.com/6/5139/5477523439_0bbafdbae6_b.jpg"]
largeimagecaptions: ["Radial diagram. Mentions of cancer (blue), and AIDS (red), 1981-2010","Radial diagram. Mentions of cancer (blue), and malaria (yellow), 1981-2010","Radial diagram. Mentions of war (black) and peace (white), 1981-2010"]
writeup:
indeximage: /g/nytimes.jpg
categories: [work]
is_primary: false
tags: ["data representation"]
date: 12-02-2011
strapline: A series of graphics depicting news coverge over 30 years.
description: In 2011 I used the Processing framework, and the New York Times API, to locate, parse, and then visualize news articles on a range of topics.
sourcecode:
references: ["https://developer.nytimes.com/","http://blog.blprnt.com/about"]
referencetitles: ["New York Times API","Jer Thorp"]
---
Each radial diagram in the series is read like a clock; with articles from 1981 rendered at the 12 o'clock position, stepping through time in a clockwise direction. 

The simplicity and sparcity of the diagrams makes crude comparison of coverage intuitive. For example, the graphic depicting coverage of cancer and AIDS shows moderage coverage of cancer in the early 1980s, but no coverage of AIDS. As the AIDS pandemic took hold in the mid 1980s, coverage grows and grows. Over time, and through the 1990s, volume of coverage decreases - while the coverage of cancer continues to grow and grow. 

At some point, I'd will re-render the graphics for the same topics, to fill in the coverage since 2010. I'd also like to add some simple labeling to give the viewer a better sense of the passage of time, and to indicate the peaks and troughs in coverage of each topic.	 