---
title: Power Plant
url: power-plant
comments: true
layout: post
categories: [blog]
tags: []
date: 04-11-2010
---
<p class="intro">Power Plant is an interactive, artificial plant created with Eric Hagan and Suzanne Kirkpatrick as a mid-term project for the Introduction to Physical Computing class at ITP.
<a href="http://www.flickr.com/photos/paulmmay/5145956328/" title="Power Plant by paulmmay, on Flickr"><img src="http://farm2.static.flickr.com/1169/5145956328_20b2fac12c_z.jpg" class="flickr" alt="Power Plant" /></a>
</p>
### Project Brief &amp; Our Concept
The brief for this project was to create a physical device that controls a medium of any kind. 

As a group we were interested in **organic, living &#8220;media&#8221;** like plants, soil, water in that they conduits for information/experience and as physical materials. 

We were also interested in complex/living behaviours created to mimic real living things. 

We talked through many, many thoughts - roughly sketched out about 5 different ideas around these themes, explored three in detail and chose one that we wanted to pursue: **A virtual garden that responded to physical interaction**; the ability for us to plant a physical seed in a virtual (on-screen) garden, watch a pea plant grow, tend to it - interact with physical implements like a watering can or garden tool.

<a href="http://www.flickr.com/photos/paulmmay/5140569794/" title="Power Plant - Sketches 1 by paulmmay, on Flickr"><img src="http://farm2.static.flickr.com/1410/5140569794_6bbace5d82_z.jpg" class="flickr" alt="Power Plant - Sketches 1" /></a>

### Ideation &amp; Design.
<a href="http://www.flickr.com/photos/paulmmay/5102665567/" title="Experimenting with TUIO by paulmmay, on Flickr"><img src="http://farm2.static.flickr.com/1373/5102665567_2a25c2e8b5_z.jpg" class="flickr" alt="Experimenting with TUIO" /></a><br />
We tested a system that used a camera, processing and an object tracking library to see where we planted a seed on a large screen. Our idea was that we would connect physical implements through Arduino into the Processing sketch, and/or have them recognised by the camera (by attaching tracking tokens to the implements). After initial tests with the object tracking approach we took some time to reflect. The interaction would work, but we were worried that there was just too much technology, moving parts, things to draw/animate and behaviours to program in the time available. 

We** refined the idea** to make the interaction more direct and the constuction more straightforward; instead of growing/controlling an on-screen virtual plant, we would **make a physical plant that could respond to **a stimulus. We retain the same ideas as before; the ability to plant a seed, tend to the plant - but in a more physical format. From here we listed out parts we were likely to need and roughly how it would work. 

<a href="http://www.flickr.com/photos/paulmmay/5146771170/" title="Power Plant - Sketches 5 (Zoomed) by paulmmay, on Flickr"><img src="http://farm2.static.flickr.com/1119/5146771170_5ba0f6b8cc_z.jpg" class="flickr" alt="Power Plant - Sketches 5 (Zoomed)" /></a>

### Construction
<a href="http://www.flickr.com/photos/paulmmay/5145354753/" title="Wiring by paulmmay, on Flickr"><img src="http://farm5.static.flickr.com/4011/5145354753_933fb6f0d7_z.jpg" class="flickr" alt="Wiring" /></a><br />
We build Power Plant from these major components:


* The **plant** - a bundle of fiber optics taken from a fiber optic lamp, lit by ultra-bright and RGB LEDs
* A **way to grow the plant** - a stepper motor turning a platform fixed to a threaded rod, with the plant fixed on top.
* **Objects/implements** to use with the plant - a standard lamp (to act as the sun), a metal bolt (as a seed) and watering can with an infra-red LED at its spout
* A nervous system - photoresistors to measure ambient light, a force sensing resistor to sense the presence of the seed and two IR detectors to sense the watering can.
* A **brain** to interpret signals from the nervous system, and energy - an Arduino powered by a USB port
* A **container** - a standard plant pot and a nice wooden crate.


The code for the plant is reasonably well commented, and also reasonably buggy - you can <a href="http://paulmay.org/images/uploads/PowerPlant.zip">grab it here</a> if you like.

### Demo
The demo of Power Plant went pretty well, there were a few hiccups - the calibrated value for ambient light was way too high, meaning the lamp had to be brought close to the photoresistors to trigger the growth of the plant - this then caused problems with the IR detectors being bombarded with IR from the lamp. Better calibration and using a CFL bulb (Tom Igoe's suggestion) would have helped with this problem. Otherwise, the demo went well. I'm proud of the project, and I enjoyed working with Eric and Suzanne a lot, they are good people. 

<iframe src="http://player.vimeo.com/video/16501701?byline=0&amp;portrait=0&amp;color=f0e563"width="699" height="393" frameborder="0"> </iframe><a href="http://vimeo.com/16501701">Power Plant</a> from <a href="http://vimeo.com/paulmay">Paul May</a> on <a href="http://vimeo.com">Vimeo</a>.

### Problems Along the Way
It wouldn't be a project without problems. Here are things we had to &#8220;work around&#8221; along the way.


* Time - there is never enough.
* The motor wasn't strong enough to lift the loom of wires powering the LEDs - this meant we had to re-solder the wiring completely (a couple of times)
* The wiring would get caught on the lip of the hole in the bottom of the pot - the motor would jam or jiggle.
* Originally we wanted the plant to emerge like grass through soil, so we tried threading the fibers through straws, then a mesh - but these all put way too much stress on the motor.
* The confined space of the plant pot and crate were tricky - luckily Suzanne has tiny nimble fingers, or we'd still be messing with the breadboard.

