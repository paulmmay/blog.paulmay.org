---
title: 30 Days of Earthquakes as Sound
url: 30-days-of-earthquakes-as-sound
comments: true
layout: post
type: Software, Audio
year: 2011
categories: [work-inactive]
tags: [earthquakes, dataviz, data sonification, data representation]
date: 13-03-2011
---
<p class="intro">Experiments in representing earthquake data as sound.</p>
Following the catastrophic earthquake in Japan I wanted to find a way in which I could represent earthquake data in a more communicative way than a map. 

I've never really been a fan of earthquake maps - aside from aberrations, over time they essentially plot the outline of the earth's tectonic plates and fault lines. For me, there is a much closer mapping between earthquakes and sound waves, so I've tried to represent the last 30 days of earthquakes as sound. 

In all cases, I am taking data from the USGS Shakemap feed at <a href="http://earthquake.usgs.gov/earthquakes/shakemap/rss.xml">http://earthquake.usgs.gov/earthquakes/shakemap/rss.xml</a> and using Processing to send MIDI into GarageBand, then exporting the resulting file as a waveform. Also, while the earthquakes are not evenly spaced in time - the notes I'm producing are. For now I'm more interested in depth and magnitude of the earthquakes mapping to pitch and volume; once I've solved those problems I can move on to the representation of time.

### Challenges, What I Learned
These experiment really highlight how careful you need to be when mapping data to another form, or another scale. In the case of the earthquake data, the Richter scale is a logarithmic scale where each whole number is 10 times greater than the previous one; an earthquake measuing 9.0 is 10 times more powerful than one measuring 8.0 and so on. In MIDI, the volume of a note ranges from 0-127. In the experiments where I map straight from a rounded integer of the Richter measurement to MIDI the result makes smaller earthquakes sound much closer in force to larger ones. 

Also, the experiment showed me that simultaneous, dramatic changes in pitch and volume are hard to process - I found myself listening to changes in pitch, or listening to changes in volume; but trying to keep track of both at the same time was almost too much information at the same time. Something I'll keep in mind in later experiments.

### Single Chord - Simple Depth and Volume Mapping
My first experiment; the depth of the earthquake in the Earth's crust is mapped to the pitch of the note, and its Richter measurement is mapped to the Midi volume (problematic). 

<object height="81" width="100%"> <param name="movie" value="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11901912"></param> <param name="allowscriptaccess" value="always"></param> <embed allowscriptaccess="always" height="81" src="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11901912" type="application/x-shockwave-flash" width="100%"></embed> </object>&nbsp; <span><a href="http://soundcloud.com/paulmmay/singlechord">30 Days of Earthquakes as a Single Chord</a> by <a href="http://soundcloud.com/paulmmay">paulmmay</a></span> 

### Simple Depth and Volume Mapping
In this piece of audio, the notes are evenly spaced - with the depth of the earthquake in the Earth's crust is mapped to the pitch of the note, and its Richter measurement is mapped to the Midi volume (problematic). 

<object height="81" width="100%"> <param name="movie" value="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11901910"></param> <param name="allowscriptaccess" value="always"></param> <embed allowscriptaccess="always" height="81" src="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11901910" type="application/x-shockwave-flash" width="100%"></embed> </object>&nbsp; <span><a href="http://soundcloud.com/paulmmay/widedepthandvolume">30 Days of Earthquakes - Depth Mapped to Pitch, Magnitude Mapped to Volume</a> by <a href="http://soundcloud.com/paulmmay">paulmmay</a></span> 

### Single Note, Simple Volume Mapping
I removed the pitch element which represented the depth of the earthquake; mostly because the change in pitch is far more jarring than the change in volume, but isn't as important from a human perspective (given the Richter scale is a measurement of seismic energy). 

In this sample, the Richter value is mapping straight to the 0-127 MIDI volume scale - which produces really problematic effect; effectively ignoring the logarithmic property of the Richter scale and making all earthquakes sound much closer in magnitude.

<object height="81" width="100%"> <param name="movie" value="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11901909"></param> <param name="allowscriptaccess" value="always"></param> <embed allowscriptaccess="always" height="81" src="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11901909" type="application/x-shockwave-flash" width="100%"></embed> </object>&nbsp; <span><a href="http://soundcloud.com/paulmmay/singlenotewidevolume2">30 Days of Earthquakes - Single Note, Magnitude Mapped to Volume</a> by <a href="http://soundcloud.com/paulmmay">paulmmay</a></span> 

### Single Note, Somewhat Logarithmic Volume
In this sample I am mapping the Richter value to a somewhat logarithmic value for the volume. For each point on the Richter scale from 9.0 to 0.0, the maximum volume of the note halves. This gives a spread of volumes that is discernable by the human ear, and somewhat solves the problem of weaker earthquakes sounding similar to more powerful ones.

<object height="81" width="100%"> <param name="movie" value="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11904553"></param> <param name="allowscriptaccess" value="always"></param> <embed allowscriptaccess="always" height="81" src="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11904553" type="application/x-shockwave-flash" width="100%"></embed> </object>&nbsp; <span><a href="http://soundcloud.com/paulmmay/30daysquakes-fakelog2">30 Days of Earthquakes - Fake Log Volume</a> by <a href="http://soundcloud.com/paulmmay">paulmmay</a></span> 

### Update - 15th March 2011
<p class="update">Thanks for the positive feedback on this work. I've done two more experiments; in both of these samples **the timing of the earthquakes is relative** whereas before they were all evenly spaced. I've compressed the time by a factor. The volume of the note also now uses a r**easonably accurate mapping from the logarithmic Richter scale to the note's volume**.

In the first I've mapped the depth of the earthquake to the pitch of the piano note. 

<object height="81" width="100%"> <param name="movie" value="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11994285"></param> <param name="allowscriptaccess" value="always"></param> <embed allowscriptaccess="always" height="81" src="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11994285" type="application/x-shockwave-flash" width="100%"></embed> </object>&nbsp; <span><a href="http://soundcloud.com/paulmmay/30-days-of-earthquakes-as-1">30 Days of Earthquakes as Sound - Piano (Final)</a> by <a href="http://soundcloud.com/paulmmay">paulmmay</a></span> 

In this sample I have stripped out the depth and am just using a single drum beat.

<object height="81" width="100%"> <param name="movie" value="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11994284"></param> <param name="allowscriptaccess" value="always"></param> <embed allowscriptaccess="always" height="81" src="http://player.soundcloud.com/player.swf?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F11994284" type="application/x-shockwave-flash" width="100%"></embed> </object>&nbsp; <span><a href="http://soundcloud.com/paulmmay/30-days-of-earthquakes-as">30 Days of Earthquakes as Sound - Single Drum (Final)</a> by <a href="http://soundcloud.com/paulmmay">paulmmay</a></span> 

For now, these are the last experiments using earthquake data. I've learned a lot, and it's helped me get my head around the unfolding catastrophe in Japan in my own small way. 

