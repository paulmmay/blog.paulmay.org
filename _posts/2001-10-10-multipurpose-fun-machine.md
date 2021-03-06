---
title: Multipurpose Fun Machine
url: multipurpose-fun-machine
comments: true
layout: post
categories: [blog]
tags: [physical computing, itp, human computer interaction, game controller]
date: 11-10-2010
---
<p class="intro">Multipurpose Fun Machine is a simple, versatile computer game/play controller; built as my stupid pet trick for the Introduction to Physical Computing class at ITP.
<a href="http://www.flickr.com/photos/paulmmay/5069927480/" title="Multipurpose Fun Machine by paulmmay, on Flickr"><img src="http://farm5.static.flickr.com/4145/5069927480_0cd50ea88a_z.jpg" class="photo" alt="Multipurpose Fun Machine" /></a></p>
### Original Idea
My original idea was to **try to build a simple device capable of triggering my camera as a dart hit a balloon** - hopefully capturing the moment as the balloon burst. I thought that the simplest way to do this would be to confine the path of the dart; throwing it through a frame where a sensor could detect its presence and trigger the camera. 

I started by **sketching out the idea on paper. **I would use LEDs and photoresistors on either side of a frame to detect when an object passed through the frame. When the reading from the photoresistors dropped, I would trigger my camera (somehow).

### Building It
I wanted to enable a volunteer to stand well back from the flying dart, so I made the device with a nice long handle, using light materials. The frame is made of foam - cut into a circular shape with a jigsaw - and the handle is aluminium. 

Once I had made the frame and handle, I ran two lengths of cable up the handle. The first cable connected three ultrabright LEDs to one side of the frame, and the other cable connected three photoresistors to the other side of the frame. I trained the beam from the LEDs onto the photoresistors. The cables ran back to a breadboard, where the LEDs and sensors were connected to an Arduino. 

I wrote a simple Arduino **program to turn on the LEDs and take a reading from the photoresistors; detecting when the amount of light from the LEDs appeared to drop i.e. when an object was between the LEDs and the photoresistors**. I added a little bit of **calibration** to allow the Arduino to get the initial amount of light in the room before turning on the LEDs - this way it could deduct ambient light from the LED light to get a more accurate reading.

### Testing It

After a few rudimentary tests it became pretty clear that a dart moving at speed would be quite (impossible) to detect without tweaking the photoresistors' <i>field of vision</i> or sensitivity in some way. The device just didn't really react measurably to small/fast objects. I started to play with larger objects - balls of paper - and they worked really well. 

I **started to think more about the device as a game controller - where one person could hold it, as per my original idea, with another person throwing light objects through it to score points.** I tweaked the device a little, adding a more robust game-controller-esque connector (an old IDE connector) and some higher quality cable - and I spruced it up a bit with some paint. 

### Results

I presented the Multipurpose Fun Machine to my class, demonstrating a sort-of-version of my original idea (to take a photo of a dart hitting a balloon) but using a larger, <a href="http://flic.kr/p/8HXA7K" title="falling object instead of the dart.">falling object instead of the dart.</a> I used the Nikon Arduino library from <a href="http://www.bemasher.net/archives/114">BeMasher</a> which worked really well with my D80 without any tweaks. 

Today I tested the device as a simple controller - **throwing objects through to trigger a &#8220;beep&#8221;, scoring a point - it's quite fun, **I think it would make a good two-player game. I also shot some better photos of **the device triggering my camera when it detects the presence of a falling object - a break in the beam of the LEDs**. 

<object type="application/x-shockwave-flash" width="600" height="338" data="http://www.flickr.com/apps/video/stewart.swf?v=71377" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"> <param name="flashvars" value="intl_lang=en-us&amp;photo_secret=92d58e9e93&amp;photo_id=5069812940"></param> <param name="movie" value="http://www.flickr.com/apps/video/stewart.swf?v=71377"></param> <param name="bgcolor" value="#000000"></param> <param name="allowFullScreen" value="true"></param><embed type="application/x-shockwave-flash" src="http://www.flickr.com/apps/video/stewart.swf?v=71377" bgcolor="#000000" allowfullscreen="true" flashvars="intl_lang=en-us&amp;photo_secret=92d58e9e93&amp;photo_id=5069812940" height="338" width="600"></embed></object>

So, that's it - **Multipurpose Fun Machine**. My stupid pet trick for physical computing. (If you're interested, <a href="http://paulmay.org/images/uploads/Multipurpose_Fun_Machine___No_Camera.pde">here is my Arduino code for the project</a> - it is not much to write home about)

