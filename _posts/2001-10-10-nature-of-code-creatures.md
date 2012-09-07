---
title:  Nature of Code - Creatures
url: nature-of-code-creatures
comments: true
layout: post
categories: [blog]
tags: [nature of code, itp, creatures]
date: 02-05-2012
---
<p class="intro">My final project for Nature of Code; a landscape of food and danger inhabited by different species of artificial creatures. </p>
<a href="http://www.flickr.com/photos/paulmmay/6967228282/" title="Starting Point by paulmmay, on Flickr"><img src="http://farm8.staticflickr.com/7111/6967228282_5743d1a1a8_c.jpg" class="photo" alt="Starting Point"></a>

### Goals, Concept
I was really fascinated by the examples of artificial agents we worked through in the Nature of Code class; there is just something incredibly fun about being able to create pseudo-lifelike behaviour in software. 

My goal for this project was to improve my understanding of <a href="http://www.red3d.com/cwr/steer/" title="Reynolds' steering behaviours">Reynolds' steering behaviours</a> and <a href="http://www.shiffman.net/teaching/nature/ga/" title="genetic algorithms">genetic algorithms</a> by designing a &#8220;landscape&#8221; inhabited by different species of creatures. In this landscape the creatures seek food, feed, flee from danger, reproduce, age and die.&nbsp; (The full proposal for the project <a href="http://paulmay.org/blog/nature-of-code-final-project-proposal/" title="is over here">is over here</a>).

### The Landscape
<a href="http://www.flickr.com/photos/paulmmay/7113306833/" title="Food Resources Regrown, Tiny Population by paulmmay, on Flickr"><img src="http://farm8.staticflickr.com/7228/7113306833_c63757d3d1_c.jpg" class="photo" alt="Food Resources Regrown, Tiny Population"></a><br />
The landscape inhabited by the creatures contains a number of food-sources and threats. 

**Food-sources** are indicated by green circles, and as the creatures deplete these food sources they shrink, disappear and then regrow slowly. 

**Threats** are indicated by smaller red circles. Unlike food sources, these threats never deplete. If a creature comes too close, they are injured - proximity to the threat reduces the amount of energy that a creature has. 

The creatures** retain a memory of food sources and threats**; these are indicated by the green and red icons that are displayed next to each creature. (This visual indication of creatures' memory was one of the most useful things I made for the project - much more useful and immediate than print-line statements.)

### The Creatures
<a href="http://www.flickr.com/photos/paulmmay/6987651766/" title="Creatures - Reproduction by paulmmay, on Flickr"><img src="http://farm9.staticflickr.com/8156/6987651766_9d08fd7449_c.jpg" class="photo" alt="Creatures - Reproduction"></a><br />
The creatures have attributes and exhibit behaviours that help them survive:

* **Energy/Life**: The creatures are created with a finite amount of energy that is depleted when they move and over time. To replenish their energy supplies they must consume food. 
* **Seeking**: The creatures will wander around the landscape at random until they find an object that interests them; at which point they will move towards that object.
* **Vision**: When the creatures are within a short distance of an object they can tell if it is food or a threat.
* **Fleeing**: The creature can move quickly away from threats.
* **Feeding**: The creature can arrive at a food source and consume it; the food source is depleted and the creature's energy level increases.
* **Reproduction**: If the creature has sufficient energy and is close to another creature of its species, it has a chance of reproducing.
* **Memory**: Each creature can remember the food sources and threats it encounters in the landscape.

All of these behaviours are triggered depending on scenario the creature finds itself in; if it's near an object, it will move towards it to examine it more closely and then feed/flee depending on what that object is. If the creature is near a potential mate, then a fitness algorithm will decide whether or not a new creature should be created etc.

### Video
This video shows the version of the project I presented in class, with a couple of small tweaks. In the video you'll see three species searching for food and encountering threats. From time to time two creatures of the same species will encounter one another and a new creature will be produced. To make the new creatures easier to see a grey circle is drawn around them for the first 10 seconds of their life. A higher resolution version of the video can be <a href="https://vimeo.com/41397044" title="downloaded from Vimeo">downloaded from Vimeo</a>.

<iframe src="http://player.vimeo.com/video/41397044?color=f0d000" class="photo" width="700" height="420" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen> </iframe>

### Further Improvements
There are lots of ways in which this project could be improved upon. I will definitely improve the genetic algorithm that is used when new creatures are created. At the moment there is no mutation, so the results are predictable and the fitness of the creatures doesn't improve across generations. 

As I said in my original <a href="http://paulmay.org/blog/nature-of-code-final-project-proposal/" title="proposal">proposal</a>, I think it would also be great to tie some aspects of the landscape to information from the real world. Creatures could behave differently depending on the time of day, or they could respond to weather conditions. Food sources could regrow more quickly depending on weather etc. 

### Documentation
All of the code from the project is <a href="https://github.com/paulmmay/Nature-of-Code" title="available on github">available on github</a>; just clone it to your computer and then open the sketch in Processing. The code is reasonably well commented. <a href="http://www.flickr.com/photos/paulmmay/sets/72157629123328271/" title="Screenshots are available on Flickr">Screenshots are available on Flickr</a> and there are several <a href="https://vimeo.com/album/1923090" title="work-in-progress videos on Vimeo">work-in-progress videos on Vimeo</a>. 

