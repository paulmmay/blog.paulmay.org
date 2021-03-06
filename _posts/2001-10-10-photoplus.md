---
title: Photo+
url: photoplus
comments: true
layout: post
categories: [blog]
tags: [tangible interfaces, physical computing, photoplus, interaction design, human computer interaction]
date: 21-12-2010
---
<p class="intro">Photo+ is a system designed to extend the capabilities of printed photographs. With Photo+ you can record the stories and feelings evoked by your printed photographs. At any time in the future, you can retrieve these stories using the Photo+ kiosk or a mobile device. Photo+ was created for the Intro to Physical Computing class at ITP.
<a href="http://www.flickr.com/photos/paulmmay/5254588772/" title="Photo+ by paulmmay, on Flickr"><img src="http://farm6.static.flickr.com/5170/5254588772_a25a302f4d_z.jpg" class="photo" alt="Photo+" /></a></p>
### Photo+ Featured on Core77 and CoolHunting
<p class="update">**Update:** Photo+ was <a href="http://www.core77.com/gallery/itp-winter-show-2010/6.asp" title="featured on Core77">featured on Core77</a> and <a href="http://www.coolhunting.com/tech/itp-2010-round-1.php" title="CoolHunting">CoolHunting</a> this week; I am pleased as punch.

### Winter Show 2010 - Update
<p class="update">Thanks to everybody who came to see Photo+ at the ITP winter show. Over the two days of the show **Photo+ was used over 200 times and 60 stories were recorded - hours of audio**. The feedback I got from visitors was really great; they really liked the idea of being able to tell the story of a photograph and have that story saved forever. **I learned a huge amount just by watching how people used Photo+**, and I got a lot of great suggestions as to how it could be improved upon in the future; it was a real success. Thanks again to all the staff, residents and other students at ITP - the two days were a lot of fun.

### How Does Photo+ Work?

* The user brings their photo to The Photo+ kiosk. 
* The kiosk prints a unique tag, which is placed on the back of the user's photograph.
*  The kiosk records a user's voice as they tell the story of the photograph.
* The story is safely stored as an audio file inside the kiosk, and uploaded to the Photo+ web service.
* To hear the story again the user can place the photograph back on the Photo+ kiosk, or they can scan a tag on the back of the photograph using a mobile device to hear the story anywhere in the world.


### Concept
For me, printed photographs offer a different experience to that of digital photographs. When I hold a printed photograph I seem to be **able to access memories and emotions related to the photograph that I can't access when looking at the same photograph in a digital format**.

At the same time, digital photos offer capabilities that I really value; they can be augmented with data, stories and shared experiences, and they can be experienced anywhere and at any time using web services.

I designed Photo+ as an attempt to **merge some of the things I value about printed and digital photographs**. Photo+ lets me keep the photo in its printed, tactile format - and lets me store the memories and stories related to that photo in a digital format. The concept behind Photo+ is more fully described <a href="http://paulmay.org/itp/extending-physical-photos">over here in a previous article</a>.

### Setting Constraints
Once I had settled on a rough concept, I **set myself some simple constraints/principles**. I wanted to allow the user to **maintain their gaze on the photograph while interacting/recording** - I didn't want a screen to be their focus, so my system would not have a screen.

I wanted the system to **use a limited number of controls/buttons** - while making the actions I needed the user to perform obvious. I wasn't sure how I would do this until I moved on to physical prototyping, but that was my goal. 

### Rapid Prototyping
I identified some basic use cases for the system; a user telling the story of a new photograph, a user listening to the story of a photograph on the kiosk or web etc. I used **a simple physical prototype to walk through them while being recorded on video**. This was really great, it forced me to **think about each step of the interaction**, identified use cases I hadn't thought about, and highlighted features that were nice, but not essential to the user's experience. Without the physical prototype it would have been very difficult to make good decisions about what to go and build.

<object type="application/x-shockwave-flash" width="699" height="393" data="http://www.flickr.com/apps/video/stewart.swf?v=71377" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"> <param name="flashvars" value="intl_lang=en-us&amp;photo_secret=fd709e38e1&amp;photo_id=5186334688&amp;hd_default=false"></param> <param name="movie" value="http://www.flickr.com/apps/video/stewart.swf?v=71377"></param> <param name="bgcolor" value="#000000"></param> <param name="allowFullScreen" value="true"></param><embed type="application/x-shockwave-flash" src="http://www.flickr.com/apps/video/stewart.swf?v=71377" bgcolor="#000000" allowfullscreen="true" flashvars="intl_lang=en-us&amp;photo_secret=fd709e38e1&amp;photo_id=5186334688&amp;hd_default=false" width="699" height="393"></embed></object>

### Construction
I spent the vast majority of the project building the software to support the key use cases; the ability to print a unique tag for each photo, recognise tags, record audio, store information about the photographs, upload the information to the web. I was able to prototype all of this on my laptop, before starting to physically build the system.

The software running Photo+ was developed using <a href="http://www.processing.org">Processing</a>. QRcode recognition is handled by the <a href="hhttp://code.google.com/p/zxing/">Google ZXing</a> library, wrapped in a modified version of <a href="http://dev.postspectacular.com/hg/">Karsten Schmidt's ZXing wrapper</a> for Processing. QRcodes are generated using the <a href="http://code.google.com/apis/chart/">Google Charts API</a>. The source for the Processing and Arduino applications is available on <a href="https://github.com/paulmmay/Photo-Plus">GitHub</a>.

<a href="http://www.flickr.com/photos/paulmmay/5190816267/" title="QRCode Tests by paulmmay, on Flickr"><img src="http://farm5.static.flickr.com/4127/5190816267_243e6225a5_z.jpg" class="photo"  alt="QRCode Tests" /></a>

In the last 2 weeks of the project I reached a point where I needed to build Photo+, and test the software I'd been writing. I made a list of parts; I'd need a computer, printer, webcam and an Arduino. I made measurements of the parts I already had, and found the physical dimensions of anything I didn't have online. I brought these dimensions into SketchUp and** made a very rough 3D model of the system. This let me understand the physicality of the system and make early decisions without having to buy parts**.

<a href="http://www.flickr.com/photos/paulmmay/5248621582/" title="Photo+ (Isometric) by paulmmay, on Flickr"><img src="http://farm6.static.flickr.com/5002/5248621582_f60ba26400_z.jpg" class="photo" alt="Photo+ (Isometric)" /></a>

When I was ready to start building, I bought or borrowed the parts that I needed. The Photo+ hardware consists of a Mac Mini running the Processing application, a thermal label printer which dispenses tags for the photos (<a href="http://en.wikipedia.org/wiki/QR_Code" title="QRcodes">QRcodes</a> on stick labels). An Arduino is used to sense when the user pushes the button on the kiosk, and to relay that information back to Processing over a serial connection. 

<a href="http://www.flickr.com/photos/paulmmay/5256200271/" title="Parts by paulmmay, on Flickr"><img src="http://farm6.static.flickr.com/5164/5256200271_34a5178377_z.jpg" class="photo" alt="Parts" /></a>

I used a storage box from IKEA to house all the bits and pieces, cutting it down to the exact size I needed. I used the ITP laser cutter/etcher to print instructions and decals on the outside of the box. I also used the laser to cut holes for buttons, vents and cables in exactly the right locations - something that would have taken me a lot of time, and a lot of trial and error to get right without the laser.

<iframe src="http://player.vimeo.com/video/17708396?byline=0&amp;portrait=0&amp;color=f0e563" width="699" height="393" frameborder="0"> </iframe><a href="http://vimeo.com/17708396">Photo+ Laser Etching &amp; Cutting</a>.

### Results
<iframe src="http://player.vimeo.com/video/17750913?byline=0&amp;portrait=0&amp;color=f0e563" width="699" height="393" frameborder="0"> </iframe><a href="http://vimeo.com/17750913">Photo+ Class Demonstration</a>.

I am happy that after all the hard work **Photo+ achieves the goals I set out at the beginning within the constraints I set myself**.&nbsp; The system works and the experience is reasonably smooth for a first working prototype.&nbsp; The **in-class demo was really informative** - I got good feedback and have **a set of improvements to work on**; the system needs to be more tolerant of the placement of the tag on the back of the photo, the audio prompts are too long etc.

### Lessons Learned
I learned a huge amount in building Photo+ and I am now **much more confident putting together ideas and prototypes that mix physical interaction and software**.

The main thing that I will take away from the project is that **designing for physical interaction, especially interaction where there's a specific goal the user is trying to get to, takes considerable time and attention**. Everything has to be crystal clear, and you need to use your materials and the physicality of the thing you're building to help wherever possible. This is something I've &#8220;known&#8221; for a long time, and tried to practice when helping to design for the web - but seeing somebody interact with your system in person, physically just feels very immediate; sloppiness just feels - more expensive.

I also got really good insight into **the types of tolerances you need to build into physical systems**. On the web, if you offer a bad experience the user can very quickly re-trace their steps. If you fail to satisfy them completely - they may still be able to achieve what they need to achieve using another service. In a physical system **if you don't design with care and tolerance in a physical setting, you might leave the person stranded** with no alternative (at an airport, trying to use an automated check-in desk). Photo+ is not as tolerant as it could be of the user doing the &#8220;wrong thing&#8221; and doesn't offer a quick path back to safe ground when and if the user runs into trouble - this is really good insight to take forward into devices I'll design in the future. 

### Thanks
I'd like to thank the staff, residents and students at ITP for their help, especially Rob Ryan, Tom Igoe, Michell Cardona , Eric Hagan, Steve Klise, Zeven Rodriguez, Paul Rothman and Marko Manriquez. I'd also like to thank my wife Cliona for her patience and support in the crazy few weeks of the Photo+ project.

