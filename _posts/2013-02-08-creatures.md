---
title: Creatures
url: creatures
comments: false
layout: project
largeimage: http://farm8.staticflickr.com/7111/6967228282_5743d1a1a8_b_d.jpg
smallimage: /g/work-creatures.jpg
writeup: 
categories: [work]
tags: [nature of code, simulation]
date: 02-05-2012
strapline: A simulated world with artificial life forms.
description: A simulated landscape with food sources (in green) and threats (in red), populated with roaming, artificial creatures.  The creatures forage for food, avoid danger, remember, reproduce, age, and die.  
destination-url: https://github.com/paulmmay/Nature-of-Code/tree/master/noc_creatures
launch-button-text: Get the Code on GitHub
---
Each creature makes decisions depending on its location in the landscape. If the creature is near an unknown object, it will move towards it to examine it more closely. It will then feed or flee depending on what that object is - food, or a threat. 

If the creature is near a potential mate, a fitness algorithm will decide whether or not the two creatures should reproduce. When they do, a new creature is born. 

The project uses <a href="http://www.red3d.com/cwr/steer/" title="Reynolds' steering behaviours">Reynolds' steering behaviours</a> and <a href="http://www.shiffman.net/teaching/nature/ga/" title="genetic algorithms">genetic algorithms</a> to give the different species of creatures their life-like behaviour.

<iframe src="http://player.vimeo.com/video/59276561?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="700" height="394" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>