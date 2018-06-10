#!/bin/bash -e
clear

## download  porcupine
git clone https://github.com/Picovoice/Porcupine.git

## make .ppn files
../tools/optimizer/linux/x86_64/pv_porcupine_optimizer -r ../resources/ -p ../linux -o ../ppn/ -w "P_and_G"

## test the generated ppn
python ../demo/python/porcupine_demo.py --keyword_file_paths ../ppn/P_and_G_linux.ppn