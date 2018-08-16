# Raspberry Pitch Perfect / Raspberry Assistant
---


## What Are These?
These two mini-projects are my first attempt at interating hardware , APIs and pre-existing code libraries to try and produce two household items that I can use every day! 
Raspberry Pitch Perfect is a program that detects nearby pitch frequencies and (to the best of it's ability) supplies a steady stream detailing the particular pitch it's hearing!
Raspberry Assistant is a home-made "Google Home" device that utilizes google's public Google Assistant API to function as a FREE Google Home Smart Speaker

## Author
* Jalani Paul
<img src='src/images/me_and_hardware.JPG'></img>


## What was Used
* Raspberry Pi3 + MicroSD with Rapsbian installed + Power Supply
* YETI Professional Multi-Pattern USB Microphone
* JBL Flip USB / Bluetooth Speaker
* RGB LED
* 4 resistors (1k ohms)
* Jumper Cables
* Bread Board

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
<p>The first dive into </p>


## Challenges
<p align='center'>
    <img src='src/img/ReadMeImages/Notes.png'></img>
</p>

### Challeneges
Beign that this was my first project made after learning how to use React, most of my frustrations came from reaching roadblocks that went beyond my skills and logic as a developer and required a bit of research into specific, particular syntax that React requires.
The largest challenge over the course of development involved trying to properly get images to display that had indiviual path's referenced in the state. The components that render the random categories and ingredients can also render pictures in addition to names. Despite the correct relative path displaying in the src attribute in the img tags, the images wouldn't display at all. It was then that I had reached out for help and was led to the idea of importing each of my images directly to the app, storing them in a variable and then referecning that variable in the state rather than using the path as a string.
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
