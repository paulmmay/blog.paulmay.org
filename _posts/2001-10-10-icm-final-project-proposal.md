---
title: ICM - Final Project Proposal
url: icm-final-project-proposal
comments: true
layout: post
categories: [blog]
tags: [open government, irishdata, dataviz, data visualisation, api]
date: 24-11-2010
---
<p class="intro">A summary of my work in the last four weeks to deliver an API of useful Irish data, then visualise that data - and a few notes on what's left to be done.</p>
### Background
A quick summary of the path that has lead me here:


* <a href="http://paulmay.org/itp/what-happened/">21st October</a>: Initial writeup of my idea to visualise Irish economy and society from 1980-2010.
* <a href="http://paulmay.org/articles/ireland-as-pdf/">24th October</a>: Realisation that a lot of useful, public data about Ireland is difficult to access; others feel the same.
* <a href="http://paulmay.org/articles/building-irish-data/">26th October</a>: Decision to build my own home-made API to serve Irish data in cleaner formats.
* <a href="http://paulmay.org/itp/irish-data-progress-report/">10th November</a>: Data gathered into a single time-series file, donated server up and running, API framework installed.
* <a href="http://paulmay.org/itp/irish-data-hello-world/">14th November</a>: Data loaded into a database, and being served by the API.


### Progress
As of today, the API calls are able to accept <a href="http://api.irishdata.org/v1/averagehousepricequarter.xml?period=1980Q1" title="a simple period parameter">a simple period parameter</a>, and I've <a href="http://irishdata.org/data/" title="written basic documentation">written basic documentation</a> to help anybody who wants to use the data.&nbsp; 

### Project - Next Steps, End Products
The end products I'll deliver for this project are:


* Version 1 of the IrishData.org API - offering basic demographic and economic data about Ireland in XML and JSON formats.
* A website that documents the calls to the API and provides a way for people to suggest improvements, offer comments
* A Processing visualisation that uses live data from the API as source data

I think that's a realistic set of targets for the next 2-3 weeks; hopefully it all goes well. 

