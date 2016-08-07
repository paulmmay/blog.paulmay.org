---
title: More Audio Feature Extraction
url: further-feature-extraction
comments: true
layout: post
categories: [blog]
tags: [development]
date: 07-08-2016
largeimages: ["https://c1.staticflickr.com/9/8607/28826205035_b247fd841a_o.png","https://c1.staticflickr.com/9/8773/28721275462_cf07d7f7a2_o.png","https://c1.staticflickr.com/9/8681/28721275742_ab5f457813_o.png","https://c1.staticflickr.com/9/8832/28721275892_88e972e74a_o.png"]
largeimagecaptions: ["Rihanna track - The spectral centroid fluctuates in line with the beat, peaking on the snare drum/white noise","Rihanna track - The spectral contrast of the track. I'm not sure if this a useful representation of the sound - more reading to do","Mozart - The spectral centroid is much more even, consistent than the Rihanna track. The brightness of the sound tracks the notes played on the piano, peaking on the highest and brightest note.","Mozart - The spectral contrast of the track. Clearly different from the Rihanna track, but a useful way to represent the sound? I'm not so sure."]
references: ["https://en.wikipedia.org/wiki/Spectral_centroid","http://www.ese.wustl.edu/~nehorai/paper/specom03.pdf","http://www.ncbi.nlm.nih.gov/pubmed/26936556","http://librosa.github.io/librosa/index.html","https://github.com/tyiannak/pyAudioAnalysis"]
referencetitles: ["Spectral Centroid definition","Spectral contrast enhancement - Algorithms and comparisons","Spectral contrast enhancement improves speech intelligibility in noise for cochlear implants.","LibRosa library for Python","pyAudioAnalysis library for Python"]
---
I'm making incremental progress on [my listening robot project](/blog/audio-information-extraction). The ultimate goal is to build a little machine capable of listening to its surroundings, learning from the sound it hears, and then - later - being able to determine its location based upon what it hears. A reasonable prototype robot might be able to remember 5-10 locations, and then tell those locations apart when asked to do so.

There are a number of ways of approaching the software part of the project. I've chosen to go down a classical, supervised machine learning route - extracting features from sound, then using them to fit a machine learning model. In essence, this means taking raw sound, and *noticing* particular qualities of the sound. These qualities are associated with a label - say the name of the location - and used to train a machine learning model. 

My work in the last week has been to implement simple feature extraction techniques demonstrated in off-the-shelf audio information extraction libraries Librosa and pyAudioAnalysis. I have been passing in short snippets of music into their feature extraction functions, to output specific features of that sound such as the [spectral centroid]("https://en.wikipedia.org/wiki/Spectral_centroid"); a measure of the "brightness of a sound", and the [spectral contrast]("http://www.ese.wustl.edu/~nehorai/paper/specom03.pdf"); a measure of the difference between peaks and valleys in the sound.

In software, I'm implementing feature extractor classes that can be passed some sound, returning feature representations of the sound. I'm trying to get the structure of this right, up front, so I don't have a lot of refactoring and noodling to do later. I'm also trying to be somewhat agnostic of the underlying library, so that they can be mixed/swapped as needs be. 

I'm getting close to just piping feature data into some dumb classifier; getting to a crude proof of concept. I'm not sure whether information extraction techniques more geared towards understanding *music* are useful for understanding ambient sound - if they're not, then I may need to adopt another approach.