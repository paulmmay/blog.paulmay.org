---
title: Persuasive Tech for Cancer Rehabilitation
url: mskcc-activity-app
comments: false
type: service
layout: project
largeimage: 
smallimage: /g/placeholder.png
indeximage: /g/msk.jpg
writeup: 
type: R&D
year: 2012
categories: [work]
is_primary: false
tags: [design research, prototyping, web applications, msk]
date: 01-06-2012
strapline: A study of cancer patients' rehab needs and a persuasive web app.
description: For my graduate thesis project at NYU I collaborated with one of the world's leading cancer research and treatment hospitals, Memorial Sloan Kettering Cancer Center, to investigate and improve the period of rehabilitation that follows a bone marrow transplant. 
destination-url: /blog/mskcc-bone-marrow-transplant-project/
launch-button-text: Read Project Write-Up
---
<iframe src="http://player.vimeo.com/video/42204358?color=f0d000" width="700" height="394" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen> </iframe>

Before the project started, I wrote a detailed research proposal that was approved by my faculty and Sloan Kettering. Once the project had been approved, I spent considerable time at the hospital, and conducted eight weeks of design research. This work included participant observation at hospital facilities, interviews with patients, interviews with former patients, and workshops with clinical and and administrative staff. 

I grouped my research findings into a small number of key themes:

**Activity & Motivation:** Physical activity plays a clinically important role in the patient’s progress after a bone marrow transplant. The more physically able the patient is, the more they are able to carry out day to day activities crucial to their wellbeing and survival. The less the patient is able to do, the less they will do - and their physical condition will deteriorate. 

**The Patient’s Journey:** The experience of undergoing a bone marrow transplant is long and complicated. There are a number of different types of transplant offered depending on the patient’s diagnosis, and while each type has its own set of attributes - no two transplants are identical.

**Symptoms:** The symptoms experienced by bone marrow transplantation patients can be debilitating. The chemotherapy regimen causes patients to feel very weak and nauseous and these symptoms can prevent patients from carrying out simple daily tasks - standing, walking. The medicines being given to patients can be harmful to organs if the patient is not properly hydrated. Patients may experience impairments to their cognitive functions; attention and short term memory. After transplantation, patients may experience a range of complications e.g. infections, graft versus host disease.

**The Whole Patient:** Unsurprisingly, each person who needs to undergo a bone marrow transplant is a unique individual with specific personality traits, needs, fears, expectation, hobbies and relationships. All of these factors play a role in how the person will cope with treatment and rehabilitation. 

**The Importance of the Caregiver:** Other than the patient and the primary care physician, no other person plays a more significant role in the progress of the patient than their designated “caregiver”. The caregiver is typically a spouse, family-member or friend who remains on-hand throughout the patient’s treatment and rehabilitation - this is a significant undertaking, especially when the caregiver needs to work or has other responsibilities. It would be fair to say that the caregiver is, in effect, co-opted onto the patient’s medical team. 

**Informing Patients:** Patients and caregivers receive/experience this large quantity of new information at a time when they are undergoing significant stress, and when the patient could be experiencing debilitating side affects related to their treatment. This information is not evenly distributed throughout the treatment journey, and they will be asked to make significant decisions based on this volume of new information.


I compiled my research notes and findings into a comprehensive writeup, which was given to MSK at the end of the project. 

### Activity App

I spent the second half of the project bringing some of my key findings to life. 

I developed a prototype web application in Ruby called Activity App. Activity App applies principles of persuasive design to encourage bone marrow transplant patients to remain physically active throughout their treatment, without exceeding safe limits. 

Activity App allows a doctor or rehab nurse to create a program of activity that is completely custom to a patient. The app uses the FitBit API to monitor physical activity, and "nudges" patients who fall below activity thresholds using simple SMS messages. The app motivates patients as they rehabilitate, and warns them if they are straying outside safe limits. The app gives clinical staff a dashboard of information about their patients' level of physical activity. During in-person visits to the hospital, this dashboard provides meaningful insight for the physician, supports conversations around ongoing rehabilitation.

Activity App was passed to MSK for further development at the end of the project.
