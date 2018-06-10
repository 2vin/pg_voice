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
[![Demonstration](https://he-s3.s3.amazonaws.com/media/sprint/pg-click-predict-innovate/team/385834/b9f064c4.JPG)](https://youtu.be/XG_JuRgAbj8)       
