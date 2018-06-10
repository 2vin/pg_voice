#!/bin/bash -e

## It is more natural than espeak

## Usage:
## ./pico2wav.sh "hello world"
## ./pico2wav.sh "$(cat <filename>)"

say=('hi' 'hello' 'how can i help' 'yes' 'say')

if [[ "$1" == "greet" ]];
	then
	num=`shuf -i 0-4 -n 1`
	echo $num
	echo ${say[num]}

	pico2wave -l=en-US -w=pico2wave.wav ${say[num]} 
	aplay pico2wave.wav

else
	pico2wave -l=en-US -w=pico2wave.wav "$1"
	aplay pico2wave.wav
fi
