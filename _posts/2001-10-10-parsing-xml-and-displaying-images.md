---
title: Parsing XML and Displaying Images
url: parsing-xml-and-displaying-images
comments: true
layout: post
categories: [blog]
tags: [xml, processing, itp, flickr]
date: 16-09-2010
---
<p class="intro">A Processing sketch that parses the RSS feed from my Flickr photostream and displays the latest image.
<a href="http://www.flickr.com/photos/paulmmay/4994463573/" title="latestFlickrImage by paulmmay, on Flickr"><img src="http://farm5.static.flickr.com/4144/4994463573_8299736401_z.jpg" class="photo" alt="latestFlickrImage" /></a></p>
This is quite satisfying - not what I had originally set out to build, but it gets me part of the way there. The smarter and more powerful way to do this would be to query the FlickrAPI, rather than parse the RSS feed - but that's a little beyond me for now :) It's also useful to know how to use Processing's XML functions. 

**Sort-of Interesting Update: **This version doesn't work if the last thing you upload to Flickr is a video; I might fix that in a later version.

**Another Update:**I've fixed the sketch to give the user feedback if the latest thing on Flickr isn't an image. I'm tempted to take this forward to make a nice slideshow app that shows images and video, but that'll have to wait for now - I have actual homework to do, and this is definitely in the noodling realm.

Feel free to <a href="http://paulmay.org/images/uploads/sketch_sep15d_latestFlickrImage.pde">download the sketch</a>. You'll need to add the Georgia-48 font yourself. 

