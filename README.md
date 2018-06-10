# pg_voice
This repository contains the code of voice actions for P&G Hackathon    

This system is built using [Porcupine](https://github.com/Picovoice/Porcupine). 

# Installation    
Run `./install.sh` from the root directory to install required dependencies in the Linux system.   

# Testing     
Testing the demo is as simple as follwing these steps:     
Step 1. Go to `./scripts` directory and run the following command:   
   `python ../demo/python/porcupine_demo.py --keyword_file_paths ../ppn/p\ and\ g_linux.ppn`     
Step 2. Say 'P&G' to activate speech recognition thread.
Step 3. Once keyword is detected, try any of the following commands to test the Speech/NLP system:    
      `Where is coca cola bottle?`    
      `What is the price of Oral B toothbrush?`     
      `Where can I find Vicks?`     
Step 4. Wait until the system process the query and speak the result.       

# See in action    
Click on the below image to see the system in action       
[![Demonstration](https://www.dropbox.com/s/k4kphe0x9ldz93a/pg_voice.png?dl=0)](https://youtu.be/XG_JuRgAbj8)       
