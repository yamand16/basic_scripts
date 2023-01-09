#!/bin/bash

for i in $(find */audio/* -type f); do
	ext="${i##*.}"	
	if [[ $ext == wav ]]
	then
		p=${i%".wav"}
		echo $i
		echo $p'_16000.wav'
		ffmpeg -i $i -ar 16000 $p'_16000.wav'
	fi
done
