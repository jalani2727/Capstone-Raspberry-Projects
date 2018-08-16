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
* 2 RGB LEDs (1 with 4 wires and one with 2 wires) <img src="#" alt="RGB LED">
* 4 Resistors (1k ohms) <img src="#" alt="RGB LED">
*  4 Jumper Cables (1 female end)<img src="#" alt="Cables">
* 1 Breadboard <img src="#" alt="Breadboard">

* Audacity
* Python 2.7 and Python 3

* RPiPitch Library (https://github.com/katrinamo/RPiPitch)
* Google Assistant API


## Build Process Walkthrough
My time spent before entering (and also during) my DigitalCrafts experience was spent writing code for use in software development and web development. I saw that members of the previous cohorts explored hardware in addition to using various libraries and original code of their own for making their final projects. Being that I'm all about exploring new facets of technology, I figured that my final project would be a great opportunity to build something cool by combining hardware and the knowledge i'd pick up about using the terminal, API's and manipulating pre-existing code libraries.

### Setting up Hardware
I used the guide linked <a href="https://developers.google.com/assistant/sdk/guides/library/python/embed/setup">here</a> to set up the Raspbian on my Raspberry Pi and configure network access

Google also provided a guide for configuring and testing audio on a Raspberry Pi as well. The instructions I followed can be found <a href="https://developers.google.com/assistant/sdk/guides/library/python/embed/audio">here</a>


### Raspberry Pitch Perfect
#### Step 1: Building the LED Circuit
<ul>
<li>Place female ends of jumper cables into GPIO5 (pin29), GPIO6 (pin31), and GPIO13 (pin33) and any GND pin (I used pi 39 since it was close by)</li>
<li>Connect male end of each jumper cable to indivdual rows on the breadboard</li>
<li>Place one end of a 1k resistor into the peg adjacent to the male end of your jumper cable on the same row. (do this for each jumper cable)</li>
<li>Place other end of the 1k resistors into an adjacent peg.</li>
<li>Insert 4-wire LED into pegs adjacent to the resistors
    <ul>
    <li> Insert Longest LED wire at the end of GNDpin wire path</li>
    <li> Insert one wire at the end of the GPIO5 wire path</li>
    <li> Insert one wire at the end of the GPIO6 wire path</li>
    <li> Insert one wire at the end of the GPIO13 wire path</li>
    </ul>
</li>
<li>Connect Raspberry Pi to power soruce</li>
</ul>
<p>After setting up the Raspberry Pi, i moved into the getting the hardware set up for displaying red, blue, and light as a response to sharp, flat, and in tune pitches respectively.
The LED that i used had four connectors, each of which would be inserted into a breadboard connected to the raspberry pi</p>
<p> One of the pins on the LED was longer than the other three so I connected it to the GND (ground) GPIO pin on the Raspberry Pi. The other three pins were connected to 5, 6, and 13 because the RPiPitch library set these pins for interaction between the code and the LED.</p>

<p> As previously stated, the color of the LED changes in correposndance with the pitches being detected</p>

Sample of the Ineraction Between GPIO and LED: 
```python
#necessary import statement for using GPIO with a project
import RPi.GPIO as GPIO
```
```python  
  #sample case statement
if abs(adjfreq - Note_E4 ) < 1:
			
			#In Tune E
			if abs(adjfreq - Note_E4) < 0.1  :
				print("You played an E!")
				GPIO.output(5, GPIO.LOW)
				GPIO.output(6, GPIO.LOW)
				GPIO.output(13, GPIO.HIGH) #GREEN
			#Sharp E
			elif (adjfreq - Note_E4) <  0  :
				print("You are sharp E!")
				GPIO.output(5, GPIO.HIGH) #RED
				GPIO.output(6, GPIO.LOW) 
				GPIO.output(13, GPIO.LOW) 
			#Flat E
			elif (adjfreq - Note_E4) > 0  :
				print("You are flat E!")
				GPIO.output(5, GPIO.LOW)
				GPIO.output(6, GPIO.HIGH) #BLUE
				GPIO.output(13, GPIO.LOW)
```

#### Step 2: Setting up the Code
<p> The Numpy and Scipy environments on the pi needed to be set up so that python code and be edited and deployed on the raspberry pi</p>

In Terminal:
```bash
sudo apt-get install python-numpy
sudo apt-get install python-opencv
sudo apt-get install python-scipy
sudo apt-get install python-pyaudio python3-pyaudio

```
<p> Next, I imported the freqDetect.py script from the <a href="ttps://github.com/katrinamo/RPiPitch">RPiPitch Library </A></p>

#### Step 3: Run it!
After making a few tweaks to the notes that could be recognized  the program was run using:
```bash
python freqDetect.py
```
<p>It should be noted that I ran the scripts using Python 2.7 rather than the most recent Python3 libraries.</p>
_______________________________________



### Raspberry Assistant
#### Step 1: Registering the Device
<p> After the raspberry pi is configured for audio properly, it needs to be registered and added to a project for your Google account on Google's developer page. Instructions for how to do so are provided by Google <a href="https://developers.google.com/assistant/sdk/guides/library/python/embed/config-dev-project-and-account"> here.</a></p>


#### Step 2 Installing Python3 and the Google Assistant API
<p> Google provided me with step-by-step instructions for how to properly configure the Google Assistant API for this project as well. Link provided <a href="https://developers.google.com/assistant/sdk/guides/library/python/embed/install-sample"> here.</a>



#### Step 3 (optional) Setting up the On/Off LED
The steps provided above for setting up a circuit can be applied here as well. However, I only used GPIO25 (pin 22) and the adjacent GND (pin 20) in my main.py file:
```python
GPIO.setmode(GPIO.BCM)
GPIO.setup(25, GPIO.OUT)
def process_event(event):
  
    if event.type == EventType.ON_CONVERSATION_TURN_STARTED:
        print()
        GPIO.output(25,True)

    print(event)

    if (event.type == EventType.ON_CONVERSATION_TURN_FINISHED and
            event.args and not event.args['with_follow_on_turn']):
        print()
        GPIO.output(25,False)
```
<ul>
<li>Place the feale ends of 2 jumper cables into GPIO25 and the adjacent GND pin</li>
<li>Connect male end of each jumper cable to indivdual rows on the breadboard </li>
<li>Insert 2-wire LED into pegs adjacent to the male ends of your jumper cables plugged into your breadboard</li>
<li></li>
</ul>

#### Step 4: Run it!
I was able to run the program via the google-assistant-init.sh script:
```python
python3 -u /home/pi/Scripts/main.py
```





## Challenges
<!-- Picture of a trello board detailing my troubles and goals -->

### "Segmentation Fault"
<!-- picture of sementation fault error -->
Upon running the google-assistant-init.sh script, the above error messgae would display. 
I think it is the result of a discrepancy between the credentials that I generated for my project and the syntax found in the main function of main.py :
```python
def main():
    parser = argparse.ArgumentParser(
        formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument('--credentials', type=existing_file,
                        metavar='MY CUSTOM CREDENTIALS',
                        default=os.path.join(
                            os.path.expanduser('/home/pi/Scripts'),
                            
                            'PATH TO CREDENTIALS'
                        ),
                        help='Path to store and read OAuth2 credentials')
    args = parser.parse_args()
    with open(args.credentials, 'r') as f:
        credentials = google.oauth2.credentials.Credentials(token=None,
                                                            **json.load(f))
```
Because of this, I am unale to run a version of my project that references my own google account because the credentials havent been provided. This simply means that the version I have up and running is more of a sample version that can't answer questions like, "Who am I?" or "What's on my Google Calendar today?"
<br>
However, a new instance of the google assistant can be created whenever the sampleAssistant script is run.

### Removing LED's from Assistant-Demo
The main.py file for running a personalized Google Assistant on my RsapberryPi also contains the proper GPIO setup. As such, utilizing the on/off indicator upon starting a speaking event with the sample script isn't possible to the extent of my current knowledge.
I'd really like to make full use of the hardware I bought just to make my work light up but I will save that for another day.

### Audio/Playback Configuration
Initially, getting the audio configuration set up was difficult because I didnt fully understand the syntax involved in configuring the ".asoundrc" files the RaspberryPi.

<!-- picture of my arecord -l and aplay -l -->
<br>
The proper syntax for setting these files is:
```bash
pcm.!default {
  type asym
  capture.pcm "mic"
  playback.pcm "speaker"
}
pcm.mic {
  type plug
  slave {
    pcm "hw:<card number>,<device number>"
  }
}
pcm.speaker {
  type plug
  slave {
    pcm "hw:<card number>,<device number>"
  }
}
```


Many of the guides that I had referenced configured the audio incorrectly in such that my speaker and microphone were in correctly detected becuase their card numbers and device numbers were not specified in the ".asoundrc" file necessary to set up the recording and playback.
<br>
incorrect syntax from an <a href="https://medium.com/exploring-code/turn-your-raspberry-pi-into-homemade-google-home-9e29ad220075">article on medium</a>:
```bash
pcm.!default {
  type asym
  capture.pcm "mic"
  playback.pcm "speaker"
}
pcm.mic {
  type plug
  slave {
    pcm "hw:1,0"
  }
}
pcm.speaker {
  type hw
  card 0
}
ctl.!default {
 type hw card 0
}
```
The proper card numbers were not specified and led to great confusion about why my speakers and microphone were not working. 

### Adding Detectable Pitches
<p>Out of the box, the script is designed to detect frequencies a person is looking to match when tuning a guitar to standard tuning using cent values. I had notied that the cent values were whole numbers ranging between 0 and 11. <br> I had noticed that the cent values used actually represent the number of half steps away from A on the chromatic scale that a particular note is</p>

Cent Values & Note Variables:
```python
#Max & Min cent value we care about
MAX_CENT = 11
MIN_CENT = 0
RELATIVE_FREQ = 440.0

#notes in cents
Note_E = 5
Note_A = 0
Note_D = 7
Note_G = 2
Note_B = 10
Note_E4= 5

```
Given that there are 12 pitches and A has a cent vaule 0 here, the 12th pitch (A#/Bb) would be have a cent value of 11. This means that all remaining values to incorporate would look like this:
```python
#notes in cents
Note_E = 5
Note_A = 0
Note_GSharp = 1
Note_G = 2
Note_FSharp = 3 
Note_F = 4
Note_E4= 5
Note_DSharp = 6
Note_D = 7
Note_CSharp = 8
Note_C = 9
Note_B = 10
```

<p>As this library is already desinged to pick up the sharps and flats represented in the list of variables, such an extensive list ws unneccasary. The only notes that aren't deteectable out of the box are notes C and F on the chromoatic scale so they were the only additions i'd made to the cent variabes.</p>
<br>






### Future Additions
<ul>
<li>Proper use of Profile credentials downloaded from Google Developer site</li>
<li>More accurate Pitch Detection</li>
<li>Proper LED indication for Raspberry Assistant</li>
<li>100% of all the potential amazing things that can be built with a Raspberry Pi</li>
<li></li>
</ul>
