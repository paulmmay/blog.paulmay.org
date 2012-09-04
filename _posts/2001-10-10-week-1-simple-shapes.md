---
title: Simple Shapes in Processing
url: week-1-simple-shapes
comments: true
layout: post
categories: [blog]
tags: []
date: 08-09-2010
---
<p class="intro">My first experiment with Processing. Draw a simple two-dimensional shape. I've chosen to draw a chess board, or checkered pattern.</p>
### Getting Started
I installed the Processing environment and got up and running pretty quickly; the only thing that I tweaked was to point to a sketches folder in my Dropbox, so that when I save a sketch it'll be uploaded to into the ether-cloud for safe keeping. I will probably end up using some sort of source control, but this will do for now.

### The Challenge
I want to draw a chess board pattern in Processing using the rect(); function we were shown today, and I also want to see how processing uses loops and conditionals; for and if.

### Problems
This little exercise turned out to be a bit tricky actually. I ended up using some loops and inner loops to step through drawing rectangles horizontally and vertically - with two loops to see if the row was odd or even to start with either a rectangle filled with white or black. I am sure that there is a very, very simple way of doing this with a 2D array (or just better code in general), but I am more than a bit programming rusty. Anyway, I got there in the end. 

### Final Sketch &amp; Source
The applet is acting weird across different browsers - I'm not sure why. In the meantime here is a non-troublesome image of the sketch, and you can <a href="http://paulmay.org/images/uploads/sketch_sep08b_chessboard_3.pde" title="download the source">download the source</a> or <a href="http://paulmay.org/images/uploads/sketch_sep08b_chessboard_3.jar" title="the jar">the jar</a> to run this yourself. You might also be interested in <a href="http://www.flickr.com/photos/paulmmay/tags/week1simpleshapes/" title="some of the many hilarious failures along the way">some of the many hilarious failures along the way</a>.<br />
<a href="http://www.flickr.com/photos/paulmmay/4974794235/" title="Chessboard Processing Sketch by paulmmay, on Flickr"><img src="http://farm5.static.flickr.com/4154/4974794235_cfe8b8edd1_z.jpg" class="flickr" alt="Chessboard Processing Sketch" /></a>

