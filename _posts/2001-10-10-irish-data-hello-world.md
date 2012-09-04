---
title: Irish Data - Hello World
url: irish-data-hello-world
comments: true
layout: post
categories: [blog]
tags: [processing, open government, dataviz, data visualisation]
date: 14-11-2010
---
<p class="intro">The Irish Data project has been going well; here is a first look at some of my homemade API of useful Irish data. </p>
### Hello World
I've put in place a few basic calls to the API of Irish Data; all of which can be accessed via <em>http://api.irishdata.org/v1/statisticname.xml</em>. (See below for more details). Feel free to test the calls out - but be warned - this is totally in flux. The data will probably go a bit stale, the API will be intermittently available and I'll be fussing around with the output  - basically don't rely on this for anything. I'm just putting this out to get feedback from anybody who's interested.

<table class="fancy">
<tr><th>Statistic</th><th>Description</th><th>Source</th><th>Parameters</th><th>URL/Example</th></tr>
<tr><td>Annual Population Estimate</td><td class="wider">The annual April population estimate for the Irish state.</td><td>CSO.ie</td><td>Year as YYYY</td><td><a href="http://api.irishdata.org/v1/populationestimate.xml?year=2010">Example</a></td></tr>
<tr><td>Quarterly Average House Price</td><td class="wider">The average price for new and second hand homes in Ireland per quarter.</td><td>CSO.ie</td><td>None</td><td><a href="http://api.irishdata.org/v1/averagehousepricequarter.xml">Example</a></td></tr>
<tr><td>Quarterly House Loans Approved</td><td class="wider">The number and value of house loans approved per quarter.</td><td>CSO.ie</td><td>None</td><td><a href="http://api.irishdata.org/v1/houseloansapprovedquarter.xml">Example</a></td></tr>
<tr><td>Quarterly Births, Deaths</td><td class="wider">The birthrate, number of births and number of deaths per quarter</td><td>CSO.ie</td><td>None</td><td><a href="http://api.irishdata.org/v1/birthsdeathsquarter.xml">Example</a></td></tr>
</table>

<br />
You can also use these calls to return JSON or PRINTR formatted data; just swap out .xml with .json or .printr respectively. 

### Next Steps
Here are the things I need to tackle next, in no particular order


* Sourcing - I need to document and cite the source of all the data in much more detail.
* Documentation - I need to document the (very basic) functionality of the different API calls.
* Parameters - I'd like for the user to be able to specify sensible parameters; county, date, date range; these are in the works.
* Process - There's not much point doing this if it can't be kept up to date; I'm going to try to apply the principles of the  <a href="http://en.wikipedia.org/wiki/Open_Archival_Information_System">Open Archival Information System</a> to map out the people, processes, systems and tools involved in keeping that data current; I will need your help on this!
* Data - I want to add more of it! All the data in v1 will be for the State, but in the New Year I'd like to break data down by county where available. 


I also want to get a simple website up and running to explain the project, point people towards documentation, showcase any apps/widgets that use the data. 

### What I Need
I would love to get **as much feedback on this as possible**; guidance on **what data you'd like to see,** any **technical requirements** you have (parameters you'd like to be able to pass into the API), and anything else that takes your fancy.&nbsp; 

Please comment with any suggestions or feedback, or find me on <a href="http://www.twitter.com/paulmmay">Twitter</a> (<a href="http://www.twitter.com/paulmmay">@paulmmay</a>).

