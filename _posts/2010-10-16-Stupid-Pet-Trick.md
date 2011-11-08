---
layout: post
title: Stupid Pet Trick
category: ITP-First-Semester
comments: true
---

<iframe src="http://player.vimeo.com/video/15904819?title=0&amp;byline=0&amp;portrait=0" width="640" height="360" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe>

This assignment for PComp was to create a “stupid pet trick” by taking all the skills we have learned thus far in the labs and create something amusing or engaging. Continuing the theme of the ball sink game I made in Procressing I decided to take the same primitive game and add sensors, a servo and a score board.

The player tilts the board rolling the ball into the hole which decreases the readings on a photocell to below a certain threshold, and then the Arduino turns a servo 90 degrees to knock the ball out of the hole. Upon each score the 7-segment LED updates. A reset button was added in to restart the score board without needing to hit the main reset button built in to the Arduino.

I built the circuit entirely on a breadboard and wrote the code before starting on fabrication to be sure that if errors happened they could be isolated to the building process. And almost immediately the scroll saw proved unwieldy for cutting a perfect circle in the masonite. As a result the ping pong ball doesn’t always block the proper amount of light to trigger the photocell. If I were to make a Version2 of this I’d make the ball conductive and have to leads along the edge of the hole to prevent false triggers by low ambient light or no triggers from too much. I would also exchange the servo with a solenoid as currently the ball always gets pushed in the same direction but a solenoid would pop the ball straight up adding a variety to which direction it would go on a reset.

[Download Arduino Code](http://sklise.s3.amazonaws.com/itp/pcomp_pettrick_code.zip)

