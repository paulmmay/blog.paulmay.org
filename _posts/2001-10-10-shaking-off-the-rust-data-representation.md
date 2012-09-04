---
title: Shaking off the Rust - Data Representation
url: shaking-off-the-rust-data-representation
comments: true
layout: post
categories: [blog]
tags: [processing, itp, irishdata, data visualisation, data representation, dáil]
date: 07-02-2011
---
<p class="intro"><a href="http://www.flickr.com/photos/paulmmay/5424012722/" title="Zoomed Section by paulmmay, on Flickr"><img src="http://farm6.static.flickr.com/5292/5424012722_8680bf5d5f_z.jpg" class="flickr" alt="Zoomed Section" /></a>
This week I've been working on a few experiments to represent the names and, in some cases, family relationships between the current and past members of Ireland's parliament the Dáil.</p>
### Rusty
**Update:** Code for this little project is here: <a href="https://github.com/paulmmay/DailPeople">https://github.com/paulmmay/DailPeople</a>

I am a little rusty with programming; I haven't done much since coming back to ITP. I wanted to shake of the rust, explore some more Irish public data and play with aesthetics. 

I discovered that every word that has ever been said in the Irish parliament, the Dáil, is available in XML formatted files at <a href="http://debates.oireachtas.ie/XML/">http://debates.oireachtas.ie/XML/</a>, and there's also a handy file that lists all the members of the Dáil over the years; ripe for a little experiment.

### Play
<a href="http://www.flickr.com/photos/paulmmay/5424001346/" title="Visualisation of Irish TDs' Surnames by paulmmay, on Flickr"><img src="http://farm6.static.flickr.com/5131/5424001346_22c0035ec5_z.jpg" class="flickr" alt="Visualisation of Irish TDs' Surnames" /></a><br />
This exercise was really just **a bit of fun**. I just wanted to answer a simple question - **what family names are the most represented in the Dáil** over the years; this is a simpler task than actually plotting family connections which would be a bit of a chore.&nbsp; Anyway, **I wrote a little Processing app to consume the list of TDs and then represent the surnames visually on the screen. ** It is interesting, but not surprising, how often family names seem to show up again and again - it would be interesting to know if Ireland has a higher proportion of elected officials who have had family (parents, older siblings etc.) in office before them, compared with other European countries. My feeling is that Irish politics is quite dynastic.

### Feel

When I was thinking about the aesthetics of the graphics I started with my usual black background, but it wasn't very satisfying. **I wanted to give the graphics a little bit of a natural, organic quality** - so decided to use a paper-like, off-white background and light, almost inky colours. I'm happy with the results. With a few tweaks to improve the legibility of the graphics I think they'd look quite nice printed. I haven't tried printing any of my dataviz stuff yet, but it's something I'd like to do.

Anyway, a productive few hours of play and exploration. 

