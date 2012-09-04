---
title: Jetsom - Progress
url: jetsom-progress
comments: true
layout: post
categories: [blog]
tags: [nature of code, itp, dataviz, data representation]
date: 02-03-2012
---
<p class="intro">A quick update on my Nature of Code midterm project.</p>
Jetsom is a physics-directed representation of the ephemera I find around my home. I'm just getting started with it, and have been starting to build up a set of data - scanned images and accompanying information. So, let's say it's a theatre ticket - I have scanned the ticket, and stored information like the address of the theatre and the price of a ticket in a database.

Once I had a simple test dataset I started to build the usual internal machinery of a sketch like this - functions to get the data and parse it into objects. I've had very little time to make the visual rendering step anything more than a Box2D hello world.

<a href="http://www.flickr.com/photos/paulmmay/6945528483/" title="Jetsom by paulmmay, on Flickr"><img src="http://farm8.staticflickr.com/7190/6945528483_ae098106bc_b.jpg" class="flickr" alt="a screenshot of jetsom - a series of rectancles sitting on a surface"></a>

At the moment the processing sketch is loading information from a database. For each row of the data set an object is created and a corresponding image is loaded into it. Each image is analyzed to find its size and average colour. This information is used to inform the creation of Box2D elements, and then the object is placed into the Box2D world. The objects appear and are directed down with the force of gravity, coming to rest on a surface. 

<a href="http://www.flickr.com/photos/paulmmay/6945565681/" title="Jetsom by paulmmay, on Flickr"><img src="http://farm8.staticflickr.com/7039/6945565681_fcc363309b_b.jpg" class="flickr" alt="a series of rectangles sitting on a surface"></a>

It's super simple for now. I will probably not be using Box2D after I hand in the mid-term; I'm interested in getting away from the literal representation of the pieces of ephemera - when I have more time I'll decide exactly what that means. I'm drawn to the idea that this junk is like leaf litter, or layers of time. 

We shall see.


