#!/bin/bash -e
## Ref: https://gist.github.com/johan-bjareholt/5a28e3742fb5ce0f32a3

# Record from mic
arecord -d 5 -f cd -t wav -r 16000 -c 1 -D pulse rec.wav

# Get record volume
sox rec.wav -n stats -s 16 2>&1 | grep 'Max level' | awk '{print $3}'

# Convert to flac for smaller footprint
flac -f rec.wav

## Google speech recognition
LANG=en-us
AGENT='Mozilla/5.0'
APIKEY='AIzaSyBOti4mM-6x9WDnZIjIeyEU21OpBXqWBgw'

## curl command
res=`curl -s -X POST \
	--data-binary @'rec.flac' \
	--user-agent $AGENT \
	--header 'Content-Type: audio/x-flac; rate=16000;' \
	"https://www.google.com/speech-api/v2/recognize?output=json&lang=en&key="$APIKEY"&client="$AGENT|cut -d'"' -f8`

res=$(echo "$res"|tr -d '\n') ## remove unwanted newlines

echo $res; echo $res>pico.txt

if [[ $res == "where is coca cola bottle" ]]; then
	./pico2wav.sh 'It is placed in food section, in 3rd row, 5th rack'

elif [[ $res == "what is the price of Oral B toothbrush" ]]; then
	./pico2wav.sh 'A pack of 3 is 88 rupees but a single Oral B toothbrush is just 30 rupees'

elif [[ $res == "where can I find Vicks" ]]; then
	./pico2wav.sh 'You can find Vicks in medicine section, 9th row and 5th rack'

elif [[ $res == "" ]]; then
	./pico2wav.sh 'You said nothing'

else
	./pico2wav.sh 'You said:'
	./pico2wav.sh "$(cat pico.txt)"
fi

echo Listening...

# espeak -vhi+f4 -p50 -s170 "You said: kaisa chal raha hai"
