---
title: MSK Data Products & MSK Discover
url: uxresearch
comments: false
type: service
layout: google
largeimage: 
smallimage: /g/placeholder.png
indeximage: /g/msk.jpg
writeup: 
type: R&D
year: 2012
categories: [uxresearch]
is_primary: false
tags: [ux research, prototyping, web applications, msk]
date: 01-06-2012
datehack: 2013 to 2016
strapline: A disruptive new team combining design-led innovation and machine learning expertise
description: I co-founded a team to bring UX design and machine learning together at Memorial Sloan Kettering Cancer Center for the first time. Our keystone product, MSK Discover, allowed physicians to find clinical trials that closely matched the unique needs and attributes of individual patients. I was responsible for UX research and product management, and worked closely with some of the world's leading oncologists to define the product.
destination-url: /blog/mskcc-bone-marrow-transplant-project/
launch-button-text: Read Project Write-Up
testimonial: I had the pleasure to work with Paul at Memorial Sloan Kettering Cancer Center (MSK) in New York City between May 2014 until September 2016. During that time, Paul was instrumental in first identifying an unmet need at MSK. Our patients were having a really hard time finding clinical trials. Paul worked with Clinical and Executive Senior Leadership at MSK to understand their needs, get alignment and support, and finally shape the clinical trials search product. Paul brought his research to life via documentation and prototypes. Paul's work had a significant positive impact on the institution as whole and clearly shaped the way MSK started thinking about clinical trials.
testimonial-author-link: https://www.linkedin.com/in/ikerhuerga/
testimonial-author: Iker Huerga
testimonial-author-title: Formerly Director, Engineering & Applied Machine Learning, MSKCC

---

### Context

Founded in 1884, Memorial Sloan-Kettering Cancer Center (MSKCC) is a private, not-for-profit cancer treatment and research hospital based in New York. In 2011, the year preceding this project, MSKCC admitted over 23,000 patients, carried out 11,052 inpatient surgeries, carried out 8,181 outpatient surgeries, and conducted 1.18 million outpatient visits. MSKCC is currently ranked #2 for cancer care in the United States, and is at the absolute forefront of cancer research globally. 

### Project Background

Building on my work on IBM Watson for Oncology, I co-founded and then managed a user experience and applied data science team within MSKCC. MSK Data products grew from a team of three to a team of 12 over four years. As a world-leading centre of cancer research, a key objective for the team was to improve workflows around clinical research. 

### The Challenge and Project Mandate

Randomised control clinical trials represent the gold standard in medical research. Most trials are designed to compare established therapies with new or improved therapies. Patients admitted to clinical trials will be assigned to one "arm" of the trial, and will receive either a standard or novel therapy. Carefully designed inclusion and exclusion criteria describe what patients are eligible for a clinical trial. 

Identifying trials that are appropriate for patients can be highly time consuming; each eligibilty criteria need to be considered against the patient's biology on a given day. 

Building a product to make this process easier is very difficult for two key reasons

1. Clinical trial eligibility criteria are not backed by a controlled vocabulary or well-structured data. Take any 50 trials, and they may describe similar eligibility criteria in very different ways.
2.	Patient data is hard to access, difficult to align with trial eligibility criteria, and constantly in flux. 

Our mandate was to deliver a product that could make the process of finding appropriate clinical trials as easy as conducting a Google search, and build towards a scenario where patients could be automatically flagged as being eligible for a trial - effectively part-automating trial enrolment.

### UX Research Process

To build the product effectively, we needed to understand the current experience for physicians trying to find trials for their patients, then we needed to work with them to describe an improved/ideal situation

### UX Research Planning

I developed a UX research plan to support our first steps in defining the product:

Research questions included: 

* How do physicians know what trials are available for patients, what sources of information do they use?
* When does the process of searching for an appropriate trial begin, what is the trigger?
* How do physicians match patients to trials? What are some of the criteria they use?

### UX Research Process

UX Research Phases:

* Research planning, data security, patient safety and approvals process
* Literature review into clinical trial design processes
* User research sessions with physicians
* Workshops centred on the optimal user experience for a future product 
* Ongoing UX research to inform iterations on the product

Data Gathering Methods:

* Literature review using journal databases. 
* Participant observation with clinicians, office visits.
* Semi-structured interviews with clinicians. Documented using audio recordings, then transcribed 
* Stakeholder research; engagement with technical leadership, clinical research leadership  
* Technical research into various data sources and data flows around the organisation
* UX Research on the live product; including product testing, user observations, feedback/log analysis/analytics

<figure>
 <img src="/i/uxresearch/cts-1.jpg" />
 <figcaption>Over a number of workshops we asked physicians to describe the first patient they saw that day, then describe how they'd search for the perfect trial.</figcaption>
</figure>

### Sample Insights / UX Mandates 

1.	**Physicians generally had a poor level of awareness** when it came to trials being run outside their immediate department. 
	* **Mandate:** Our product would need to integrate trial data from multiple departments, and "level the playing field" for physicians who were less professionally/socially connected.

2.	**The process of finding a perfect trial took 15-30 minutes, per physician, per patient, per trial** - and this work could only be done by an experienced oncologist. Compressing this work into the beginning of their day was stressful, and the process was deeply sub-optimal. 
	* **Mandate:** Our product would need to be highly accurate if it was to save time, but - if it worked - could result in significant benefit for physicians.

3.	**Trial data was effectively low-quality, free-text data**, spread over disparate internal and external systems. To achieve anything like seamless search we would have a massive task on our hands.
	* **Mandate:** We would need to break the problem down into multiple stages and sub-tools if we were to be successful. Careful planning at the beginning could lead to side-benefits and new product opportunities.


### Product Development

I was hands-on with product development in early iterations, but as we added experienced developers to the team, I focused squarely on UX Research and Product Management. 

We iterated on the product over an extended period of time, and I  conducted additional UX research to informed product development.

* I engaged with a small number of key physicians who could offer feedback and guidance on product development
* I used an in-app feedback tool to gather feedback from physician users as they were using the tool, and fed insights back to the team
* We designed and built tools for physicians to flag any issues they saw in the product; specifically data errors 

### Results
We successfully built a tool that could parse the intent behind a physicians search, and return highly relevant trials. A first at MSKCC. We built a huge amount of underlying NLP and machine learning infrastructure to transform previously disparate trials into more structured objects - and over time added an API for other developers to leverage our work. The product continue to evolve under the stewardship of the team when I left in 2016.

<figure>
 <img src="/i/uxresearch/cts-6.gif" />
 <figcaption>A physician searching for Phase 1 lung cancer trials for EGFR positive patients, getting relevant results.</figcaption>
</figure>

<figure>
 <img src="/i/uxresearch/cts-9.png" />
 <figcaption>A later iteration of the product inclduing suggested search terms and a boundary between high confidence and lower confidence results</figcaption>
</figure>

### Project Challenges
Too many to mention; an odyssey of a project. I remain intensely proud of this project. It has continued since I left MSKCC, and our approach - combining UX and data-science is now mainstream institutional thinking.