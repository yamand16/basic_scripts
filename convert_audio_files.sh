#!/bin/bash

for i in $(find */audio/* -type f); do
	ext="${i##*.}"	
	if [[ $ext == m4a ]]
	then
		p=${i%".m4a"}
		echo $i
		echo $p'.wav'
		ffmpeg -i $i $p'.wav'
	fi
done
