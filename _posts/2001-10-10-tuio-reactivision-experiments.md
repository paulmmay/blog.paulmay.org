---
title: TUIO/Reactivision Experiments
url: tuio-reactivision-experiments
comments: true
layout: post
categories: [blog]
tags: [tuio, tangible interfaces, itp, human computer interaction, computer vision]
date: 21-10-2010
---
<p class="intro">We played with TUIO and Reactivision in Processing this week, it is quite a handy solution for tracking colours and tokens.
<a href="http://www.flickr.com/photos/paulmmay/5102665567/" title="Experimenting with TUIO by paulmmay, on Flickr"><img src="http://farm2.static.flickr.com/1373/5102665567_2a25c2e8b5_z.jpg" class="flickr" alt="Experimenting with TUIO" /></a></p>
In the photo we are placing tokens on top of a large television, a camera above the television is seeing the tokens, the image is being interpreted by the Reactivision server - identifying the token locations, and a Processing sketch is getting that information from Reactivision and then drawing a square at the coordinates of the tokens

This is just a combination of the hello-world <a href="http://www.tuio.org" title="TUIO example in Processing">TUIO example in Processing</a> and the standard (and uncalibrated) <a href="http://reactivision.sourceforge.net/" title="Reactivision server">Reactivision server</a> for the Mac. Even so, the results were pretty compelling.

This would be quite a nice way of **mixing physical items into a virtual scene** - and it's nice and tactile and immediate (and no bloody projectors). We have decided not to take this approach in our project (in which we're building a virtual garden) because there are simpler ways of getting the same, or even more satisfying interaction. TUIO and object tracking is probably something I'll come back to in the future, so it was a useful exercise - it's always nice when you go from complicated and good, to simple and even better.

