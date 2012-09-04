---
title: Scrap the Past
url: scrap-the-past
comments: true
layout: post
categories: [blog]
tags: [scrap saturday, physical computing, itp, audio, arduino]
date: 19-09-2010
---
<p class="intro">This week I wanted to do something interesting with analogue input into Arduino. The discovery of an old Walkman on the ITP junk shelf inspired me to take a trip into the past. The result is Scrap the Past - a Scrap Saturday visualisation machine.
<a href="http://www.flickr.com/photos/paulmmay/5002734587/" title="The Only Tape I Own by paulmmay, on Flickr"><img src="http://farm5.static.flickr.com/4144/5002734587_12f81c9db7_z.jpg" class="flickr" alt="The Only Tape I Own" /></a></p>
### The Past on Tape

One of the sentimental items I brought from Ireland is **a tape of <a href="Saturday" title="Scrap Saturday">Scrap Saturday</a>**; a weekly radio programme that ran from 1989 to 1991 which satirsed Irish politics and public life . It was <em>massively</em> popular and we'd listen to it as a family in the kitchen most weekends. Back then I had the good sense to record some of the episodes of Scrap Saturday onto a cassette tape; I probably haven't listened to the tape in 10 years, probably more. I haven't owned a tape player in probably just as long.

While rummaging around on the junk shelf at ITP I happened to find an old Sony Walkman - **a perfect little piece of previously-loved technology**. I first thought the Walkman would give me a chance to listen to the tape again, and then I thought of using it as part of my physical computing homework; which this week deals with analogue inputs into the Arduino microcontroller. A good fit :)

### Visualising Audio - Scrap the Past Version 1
I wanted to create something that would let me **see** the contents of the tape, as well as listen to it - so I took a standard set of headphones, and used the cable as an input into the Arduino (through a capacitor). This was quite tricky - I spent a good bit of time stripping the annoying insulation from the headphone wires, and soldering on breadboard-friendly terminals.

When the breadboard was wired I wrote a little programme to let the Arduino** listen to the value of the analogue input, and push out a corresponding signal to an LED and a little speaker**. Here is version one of Scrap the Past - my Scrap Saturday visualisation machine.

<object type="application/x-shockwave-flash" width="600" height="450" data="http://www.flickr.com/apps/video/stewart.swf?v=71377" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"> <param name="flashvars" value="intl_lang=en-us&amp;photo_secret=910a49dec0&amp;photo_id=5003339630"></param> <param name="movie" value="http://www.flickr.com/apps/video/stewart.swf?v=71377"></param> <param name="bgcolor" value="#000000"></param> <param name="allowFullScreen" value="true"></param><embed type="application/x-shockwave-flash" src="http://www.flickr.com/apps/video/stewart.swf?v=71377" bgcolor="#000000" allowfullscreen="true" flashvars="intl_lang=en-us&amp;photo_secret=910a49dec0&amp;photo_id=5003339630" height="450" width="600"></embed></object>

### Building Version 2
It was really exciting to see version 1 working. I took the concept forward another step, and added a bar of 8 LEDs to visualise the signal coming from the Arduino. **The wiring for this was a little fiddly - a lot of wires and resistors in a small space**, but I got there in the end. After some trial and error I added a 22Kohm resistor between the capacitor and the Arduino - which helped with some odd values I was getting (the input from the headphones appeared to be drifiting up and up, getting louder and louder - maybe the capacitor was retaining charge or something? I will investigate anyway). 

The programme for this took a good bit of trial and error; **I realised that I couldn't hardcode values for the strength of the signal coming into the Arduino** - because the volume could be set to any level. Effectively what the programme does is listen for the loudest signal from the Walkman, and divides that value into 8 chunks. So, if I play the Walkman and get a volume of 80, each LED will come on at every increment of 10. If I am pushing higher volume into the Arduino, the chunks will be larger. After about 5 hours of graft and tinkering, it works; the Walkman plays the old tape into the Arduino, and the signal is converted back out to a fun little strip of LEDs. 

### Scrap the Past - In Action

This was a fun little project, and has given me **an excuse/opportunity to listen back and remember something from home.** (The contents of the tape will only make sense if you're Irish and were around in the late 80s/early 90s.) I learned a lot about the hardware and software of Arduino in the process too. 

**Update (22/09/2010):** <a href="http://paulmay.org/images/uploads/sketch_sep18_scrapsaturday_plus.pde">Here is the Arduino sketch for this</a>; would be really happy to take feedback - definitely room for improvement using an array of LED outputs and a loop (most of the time was spent on the hardware).

<object type="application/x-shockwave-flash" width="600" height="338" data="http://www.flickr.com/apps/video/stewart.swf?v=71377" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"> <param name="flashvars" value="intl_lang=en-us&amp;photo_secret=e52d7e08bf&amp;photo_id=5002729783&amp;hd_default=false"></param> <param name="movie" value="http://www.flickr.com/apps/video/stewart.swf?v=71377"></param> <param name="bgcolor" value="#000000"></param> <param name="allowFullScreen" value="true"></param><embed type="application/x-shockwave-flash" src="http://www.flickr.com/apps/video/stewart.swf?v=71377" bgcolor="#000000" allowfullscreen="true" flashvars="intl_lang=en-us&amp;photo_secret=e52d7e08bf&amp;photo_id=5002729783&amp;hd_default=false" height="338" width="600"></embed></object>

<br />
**Update 23/09/10:** It turns out I totally misunderstood the purpose of the capacitor and the resistors that lead back to the Arduino; the resistors divide the voltage - eliminating the negative voltage from the DC input from the line-in. The capacitor smooths out the voltage. I had thought the capacitor was doing the voltage division and the resistors were doing the smoothing. Electronics make my head hurt :)

