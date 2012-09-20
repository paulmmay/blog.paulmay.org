---
title: Clinical Trials Map
url: clinical-trials-map
comments: false
layout: post
categories: [blog]
tags: [clinical trials, map, research]
date: 19-09-2012
---
In the last few months I've been working on design projects with Memorial Sloan-Kettering Cancer Center in New York. I've noticed that the medical staff are constantly improving how they work; many patients are enrolled in clinical trials so that new techniques and technologies can be assessed.

I did a bit of digging and found that there's a <a href="http://clinicaltrials.gov">central registry of clinical trials</a>, including the ones taking place at MSKCC, available online. It's a really interesting dataset; there's a lot of information available about each trial - including the location where each trial is taking place.

I was interested to see what trials were taking place in Brooklyn where I live, and in some other cities around the world, so I wrote a little application that retrieves data from the registry and populates <a href="http://trials.paulmay.org"> a series of maps</a>. I'll be working to improve these maps over the next couple of weeks.

<a href="http://trials.paulmay.org">Explore the maps</a>, and <a href="http://twitter.com/paulmmay">tell me what you think</a>. If you want more details about how the maps were made, read on. 

### Method
All data in the current maps was retrieved on the 16th of September 2012 and will be updated every 30 days.

The clinical trial data is from <a href="http://clinicaltrials.gov">clinicaltrials.gov</a>. My application requests a list of open trials currently accepting new participants taking place in <a href="http://clinicaltrials.gov/ct2/results?recr=Open&no_unk=Y&cntry1=EU%3AIE&locn=Dublin&displayxml=true">Dublin</a>, <a href="http://clinicaltrials.gov/ct2/results?recr=Open&no_unk=Y&cntry1=ES%3ACN&locn=beijing&displayxml=true">Beijing</a>, <a href="http://clinicaltrials.gov/ct2/results?recr=Open&no_unk=Y&cntry1=EU%3AGB&locn=London&displayxml=true">London</a>, <a href="http://clinicaltrials.gov/ct2/results?recr=Open&no_unk=Y&cntry1=EU%3AES&locn=Barcelona&displayxml=true">Barcelona</a> or  <a href="http://clinicaltrials.gov/ct2/results?recr=Open&no_unk=Y&cntry1=NA%3AUS&state1=NA%3AUS%3ANY&locn=Brooklyn&displayxml=true">Brooklyn</a> and a list of studies is returned. Studies with unknown status are not returned. Each study is then <a href="http://clinicaltrials.gov/ct2/show/NCT00463294?displayxml=true">retrieved individually</a>. Each study has a number of "facilities" associated with it where the trial is being carried out - the address of these facilities is passed to the Google Maps API which returns location information. The latitude and longitude is used to populate a map made using <a href="http://leaflet.cloudmade.com/">Leaflet</a>. (I'll be releasing the application on GitHub when I've documented it and cleaned it up a bit.)

### Caveats
<strong>This is just a little experiment</strong> and the maps aren't offered with any guarantee of completeness, availability, quality or accuracy. You shouldn't use these maps to satisfy anything other than idle curiosity and if you want accurate trial data you should get it directly from <a href="http://clinicaltrials.gov">clinicaltrials.gov</a>.

<strong>Geocoding is inherently flaky</strong>; if Google Maps couldn't return a lat/lon for the facility where the trial is taking place, that trial is not shown at all. Even when Google Maps did return a lat/lon the location should be treated as approximate.mIn many cases trials are shown at the center of cities because Google Maps can't identify a more specific location (e.g. because  O'Connell Street in Dublin is returned when you search for Dublin, Ireland a lot of clinical trials appear to be taking place on O'Connell street). 

<strong>Showing lots of markers close to each other on a map is a non-trivial problem</strong>; at the moment a lot of the little markers that show the position of trials are being drawn on top of each other - this is something I'll try to fix in the next release.  
