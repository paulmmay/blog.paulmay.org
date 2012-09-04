---
title: Design for UNICEF - BetterMap
url: design-for-unicef-bettermap
comments: true
layout: post
categories: [blog]
tags: [unicef, itp, interaction design, gis, design for unicef, crisis mapping]
date: 26-09-2010
---
<p class="intro">A very, very rough outline of an on-demand map printing service for disaster relief workers.</p>
### Problem
Typically, disaster relief workers apply their expertise to solve specific problems - **when deployed to a disaster area they use their skills and experience where they can be of most use**. 

To be effective, they need** tools and information specific to the problems they are trying to solve**. Much of the information they need relates to a specific **geographical area**. Accurate, up to date maps are vital tools. Given that internet connectivity can be problematic during disaster a printed map is a robust, self-contained and reliable tool for a worker to take out into the field.&nbsp; 

Off the shelf maps typically offer a broad range of general information (a general map offering commonly needed information. e.g. a typical map showing topography, place names and infrastructure) or a narrow range of specific information (a single-subject map. e.g. a demographic map showing place names and demographic density). Printed maps are frequently months or years out of date, are also (obviously) not created with disaster response in mind. 

### A Sketched Idea - BetterMap
<object type="application/x-shockwave-flash" width="600" height="338" data="http://www.flickr.com/apps/video/stewart.swf?v=71377" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"> <param name="flashvars" value="intl_lang=en-us&amp;photo_secret=aeb98d5762&amp;photo_id=5028317190&amp;hd_default=false"></param> <param name="movie" value="http://www.flickr.com/apps/video/stewart.swf?v=71377"></param> <param name="bgcolor" value="#000000"></param> <param name="allowFullScreen" value="true"></param><embed type="application/x-shockwave-flash" src="http://www.flickr.com/apps/video/stewart.swf?v=71377" bgcolor="#000000" allowfullscreen="true" flashvars="intl_lang=en-us&amp;photo_secret=aeb98d5762&amp;photo_id=5028317190&amp;hd_default=false" height="338" width="600"></embed></object>
BetterMap is a print-on-demand map service for emergency aid workers. When deployed to a disaster area, emergency aid workers need up to date, domain-specific, geographical information. They use BetterMap to customise and print maps specific to their own expertise and context.

A worker uses a web-based interface to interact with BetterMap's local cache of geographic data. First they select the initial area they are interested in. They turn on or off layers of data that meet their needs; for example a civil engineer might select to see topography, bridges and roads. The worker then has an option to add layers of data representing information aggregated from internal and external sources. For example, they could display points of information submitted from cell phones in the area, geotagged photographs containing keywords, or reports/insight reported by other workers. Each layer of information is marked to show how current the source data is, and its level of authority/accuracy based on feedback from other workers.

When the user is happy that he/she has a map that contains **all the useful information they need for the day** - they click can export the map to a static format (an image or PDF) and also print the map on a local printer. 

### Simple System Description

**At a regional office or centre:**BetterMap uses its **web services** layer to retrieve geo-located information from data-providers (known partners: mapping companies, mobile phone companies, aid agencies, domain experts) and the public web (news sources, social services) - any geolocated source of information we identify and ask BetterMap to use as a source. BetterMap aggregates this information and saves it to a local database which then becomes a single, portable, up to date source of data. This database is available for field offices to retrieve when connectivity is available. 

**In a field office: **BetterMap retrieves information from the regional office when connectivity is available, creating its own local database. BetterMap offers a **presentation layer **which allows workers to customise maps specific to their needs, and a **feedback layer** that allows users to correct and/or rate the reliability of sources of information. BetterMap's **output layer** allows the user to export and print maps in whatever format is most useful.

### What Next
I'll bounce this idea off others and the team from UNICEF tomorrow; I'm not sure how feasible or useful this it - so we'll see what happens.

