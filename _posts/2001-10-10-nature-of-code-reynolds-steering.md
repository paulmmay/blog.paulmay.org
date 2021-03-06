---
title:  Nature of Code - Reynolds Steering
url: nature-of-code-reynolds-steering
comments: true
layout: post
categories: [blog]
tags: [noc, nature of code, homework]
date: 27-03-2012
---
<p class="intro">This week for my Nature of Code class I'm doing a few experiments with Reynolds steering in Processing. </p>
### Experiment 1 - Investigating
<a href="http://www.flickr.com/photos/paulmmay/7020882139/" title="Seek Object by paulmmay, on Flickr"><img src="http://farm8.staticflickr.com/7131/7020882139_8bded64c06_b.jpg" class="photo" alt="Seek Object"></a>

In this first experiment I wanted to create a &#8220;creature&#8221; that would wander an area. If the creature smells something, it goes to investigate. Once it gets within visual range it approaches cautiously. Once it gets very close and can see what exactly the &#8220;something&#8221; is it can make a decision to eat or run away.

I'm about half way through with this - the creature is wandering, sensing a far off object and going to investigate. I have to implement the cautious approach and fleeing.

The code for this simple experiment is on <a href="https://github.com/paulmmay/Nature-of-Code/tree/master/noc_steering" title="GitHub">GitHub</a> and is almost entirely based on Dan Shiffman's <a href="https://github.com/shiffman/The-Nature-of-Code" title="examples">examples</a> of Reynolds steering behaviours in Processing.

### Experiment 2 - Fleeing, Memory
<iframe src="http://player.vimeo.com/video/39315771" class="photo" width="700" height="394" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen> </iframe>
<a href="http://www.flickr.com/photos/paulmmay/7021774343/" title="food-1465 by paulmmay, on Flickr"><img src="http://farm7.staticflickr.com/6031/7021774343_e46405d6a0_b.jpg" class="photo" alt="food-1465"></a>

In this next version the creatures are roaming a habitat. If they get within smelling distance of an interesting object, they go to investigate. If the object is a threat they run away quickly, retaining a memory of that object. The next time they come within smelling distance of that object they flee without going to take a closer look. You'll see in the image that some creatures roaming the habitat have a little red circle in their &#8220;memory&#8221; denoting knowledge of a threatening object. 

Next, I'll introduce a second type of interesting object - food - that the creatures can feed upon, deplete and then leave. It might also be interesting to have the creatures share knowledge of threates with one another - but that'll have to wait for version 4. I'm riffing on this for the rest of the day I think

### Experiment 3 - Depleting a Foodsource
<iframe src="http://player.vimeo.com/video/39315772" class="photo" width="700" height="393" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen> </iframe>
<a href="http://www.flickr.com/photos/paulmmay/6876189206/" title="Depleting Foodsource by paulmmay, on Flickr"><img src="http://farm7.staticflickr.com/6034/6876189206_c6100159df_b.jpg" class="photo" alt="Depleting Foodsource"></a><br />
In this experiment the creatures are gravitating to a foodsource. As they feed, the foodsource is depleted. The more creatures who arrive to feed, the faster the foodsource is depleted. <br />
<a href="http://www.flickr.com/photos/paulmmay/6876189246/" title="Foodsource Depleted by paulmmay, on Flickr"><img src="http://farm7.staticflickr.com/6106/6876189246_2cda242341_b.jpg" class="photo" alt="Foodsource Depleted"></a>

When the foodsource is depleted, the creatures continue to wander. 

