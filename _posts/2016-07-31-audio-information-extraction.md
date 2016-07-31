---
title: Extracting Information from Sound
url: audio-information-extraction
comments: true
layout: post
categories: [blog]
tags: [development]
date: 31-07-2016
largeimages: ["https://c1.staticflickr.com/9/8774/28674862815_81d294729c_o.png","https://c1.staticflickr.com/9/8793/28390725160_573436e935_o.png",]
largeimagecaptions: ["The chromagram of a Mozart piano sonata. The chromagram is a time series (time runs left to right on the x-axis) that breaks sound down into the 12 notes in the well-tempered, western, scale - the 12 notes you find in an octave on a piano. Visually, it's possible to pick out the more common notes in the sonata.","The chromagram of a recent Rihanna track. The track is longer, and hence more dense, but it's possible to tell that the sound is much denser; there are more notes being played at any given time. Thc more common notes look very different from the Mozart sonata","LibRosa for Python","pyAudioAnalysis Library","ACM Multimedia 2013 - Music and Audio Information Retrieval"]
references: ["http://www.amclassical.com/piano/","https://en.wikipedia.org/wiki/Chroma_feature","https://github.com/librosa/librosa","http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0144610","https://acmmm13musicandaudio.files.wordpress.com/2013/10/acmmm13musicandaudio.pdf","https://docs.google.com/presentation/d/1S5Cizi9LFQ7l0bMYtY7gASvOPqxNsQk0-NuP5KWAl-4/pub?slide=id.g14e0b1c9b4_4_17"]
referencetitles: ["Creative Commons classical music MP3s","Chroma features","LibRosa for Python","pyAudioAnalysis - An Open-Source Python Library for Audio Signal Analysis","ACM tutorial on Audio and Music Information Retrieval","iHeartRadio - Mapping the world of music into vector spaces"]
---
I'm working on a new information retrieval and machine learning project - but unlike previous projects that involved large amounts of text, this project involves sound. 

My goal is to create a small, self-contained robot that can listen to, and learn from its surroundings - building up sonic fingerprints of a number of locations. Later, it should be possible for the robot to tell what location it's at, simply by listening, and comparing it what it hears to previous experiences. 

I'm just getting started with the project, and my focus is on writing simple software that can record sound, extract features, fit machine learning models, then classify previously unheard sound. 

The field of audio/music information retrieval is very well-developed, so I have a lot to read and learn from. 

As a simple hello-world, I took two existing sound files; a Mozart piano sonata, and a recent track by Rihanna, and visualized them as [chromagrams]("https://en.wikipedia.org/wiki/Chroma_feature"). Visually, the difference between the two tracks is clear, and this might be a clue that the notes used in a piece of music represent useful features for a machine learning model. I've yet to discover if this is the case, or if chromatic features are useful for more ambient sound.

It's worth noting that, for now, I'm foregoing any thought of using deep learning techniques to create vector representations of sound, for use in classification tasks. I might try to tackle this down the road. Crawl, walk, run etc. 

I'll write up what I find as the project continues.