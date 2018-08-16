# Raspberry Pitch Perfect / Raspberry Assistant
---


## What Are These?
These two mini-projects are my first attempt at interating hardware , APIs and pre-existing code libraries to try and produce two household items that I can use every day! 
Raspberry Pitch Perfect is a program that detects nearby pitch frequencies and (to the best of it's ability) supplies a steady stream detailing the particular pitch it's hearing!
Raspberry Assistant is a home-made "Google Home" device that utilizes google's public Google Assistant API to function as a FREE Google Home Smart Speaker

## Author
* Jalani Paul
<br>
<img src='src/images/me_and_hardware.JPG'></img>


## What was Used
* Raspberry Pi3 + MicroSD with Rapsbian installed + Power Supply <img src="#" alt="Raspberry Pi3">
* YETI Professional Multi-Pattern USB Microphone <img src="#" alt="YETI Mic">
* JBL Flip USB / Bluetooth Speaker <img src="#" alt="Speaker">
* RGB LED <img src="#" alt="RGB LED">
* 4 Resistors (1k ohms) <img src="#" alt="RGB LED">
*  4 Jumper Cables <img src="#" alt="Cables">
* 1 Breadboard <img src="#" alt="Breadboard">

* Audacity
* Python 2.7 and Python 3

* RPiPitch Library (https://github.com/katrinamo/RPiPitch)
* Google Assistant API


## Build Process Walkthrough
My time spent before entering (and also during) my DigitalCrafts experience was spent writing code for use in software development and web development. I saw that members of the previous cohorts explored hardware in addition to using various libraries and original code of their own for making their final projects. Being that I'm all about exploring new facets of technology, I figured that my final project would be a great opportunity to build something cool by combining hardware and the knowledge i'd pick up about using the terminal, API's and manipulating pre-existing code libraries.

## Setting up Hardware
I used the guide linked <a href="https://developers.google.com/assistant/sdk/guides/library/python/embed/setup">here</a> to set up the Raspbian on my Raspberry Pi and configure network access

Google also provided a guide for configuring and testing audio on a Raspberry Pi as well. The instructions I followed can be found <a href="https://developers.google.com/assistant/sdk/guides/library/python/embed/audio">here</a>


## Raspberry Pitch Perfect
<h1> Step 1: Building the LED Circuit</h1>
<p>After setting up the Raspberry Pi, i moved into the getting the hardware set up for displaying red, blue, and light as a response to sharp, flat, and in0tune pitches respectively.
(picture of LED)
The LED that i used had four connectors, each of which would be inserted into a breadboard connected to the raspberry pi</p>


## Challenges
<p align='center'>
    <img src='src/img/ReadMeImages/Notes.png'></img>
</p>

### Challeneges
Initially, getting the audio configuration set up was difficult because I didnt fully understand the syntax involved in configuring the ".asoundrc"
<br>

### Layout & Positioning
The layout for the landing page was inspired by a design that I had found on CodePen.io and reformatted using flexbox and a react library that adds a smooth scrolling react component.
The main app components were styled using flexbox as well.




### Using State as a Database (Category Section)

```javascript
 categories:[
        
        {name: "Sandwiches!", img:sandwiches},
        {name: "MAKE. IT. SPICY.", img:spicy},
        {name: "Would A Small Child Like This?", img:smallchild},
        {name: "Wok This Way (Wok Mandatory)", img:wok},
        {name: "MAKE. IT. SWEET.", img:sweet},
        {name: "Gotta Grill It!", img:grill},
        {name: "Soups", img:soup},
        {name: "Healthy-Eats", img:healthy},
        {name: "Breakfast", img:breakfast}
      ],

      selectedCategories:[
        {name:"", img:""}
      ],
}
```


</p>

### Future Features
<ul>
<li>User Authentication</li>
<li>Switch from state-database to a back-end database</li>
<li>Users update the databse with items from their pantry</li>
<li>Users upload and save pictures of recipes they've created</li>
<li>Sleeker, more modernized app interface</li>
<li></li>
<li></li>
</ul>
