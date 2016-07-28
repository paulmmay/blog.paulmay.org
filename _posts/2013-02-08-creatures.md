---
title: Creatures
url: creatures
comments: false
layout: project
type: simulation	
year: 2012
largeimages: ["http://farm8.staticflickr.com/7111/6967228282_5743d1a1a8_b_d.jpg","https://c1.staticflickr.com/9/8142/7113305143_37d9074cc1_o.png"]
largeimagecaptions: ["Creatures start to forage for food","Food resources are becoming scarce. Debug mode shows each creature's current task; W denotes wandering, F denotes feeding, and ! denotes fleeing from a threat. The red and green dots next to each creature represent their memory of threats and food sources."]
smallimage: /g/work-creatures.jpg
writeup:
indeximage: /g/creatures_reproduction0473.png
categories: [work]
is_primary: false
video: <iframe src="http://player.vimeo.com/video/59276561?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="700" height="394" class="video" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
tags: [nature of code, simulation]
date: 02-05-2012
strapline: A simulated world with artificial life forms.
description: Creatures is a predator/prey simulation built in the Processing framework. The simualation features a landscape rich with slow-growing food sources (in green), and dotted with threats (in red). The landscape is populated with herds of roaming creatures. The creatures forage for food, avoid danger, remember, reproduce, age, and die.
sourcecode: https://github.com/paulmmay/Nature-of-Code/tree/master/noc_creatures
references: ["http://www.red3d.com/cwr/steer/"]
referencetitles: ["Reynolds steering behaviors"]
---

Each creature makes decisions depending on its location in the landscape. If the creature is near an unknown object, it will move towards it to examine it more closely. It will then feed or flee depending on what that object is - food, or a threat. When the creature encounters threats and food sources, it retains a memory of them, and is less cautious on subsequent encounters.

If the creature is near a potential mate a fitness algorithm will decide whether or not the two creatures can reproduce. When the creatures do reproduce, a new creature is born, and the baby creature inherits some characteristics from both of its parents.

Each creature has a finite life span, and as food sources in the landscape are depleted, creatures die off - which allows food sources to replenish. Over time the simulation has the potential to reach equilibrium.

The project uses <a href="http://www.red3d.com/cwr/steer/" title="Reynolds' steering behaviours">Reynolds' steering behaviours</a> and <a href="https://en.wikipedia.org/wiki/Genetic_algorithm" title="genetic algorithms">genetic algorithms</a> to give the creatures pseudo-life-like behaviour.