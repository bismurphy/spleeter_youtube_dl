#!/bin/bash

url=$1
echo $url

vid_title=$(youtube-dl -e $url)
echo $vid_title
echo NEXT
youtube-dl --extract-audio --audio-format mp3 $url -o "${vid_title}.mp3"
spleeter separate -i "${vid_title}.mp3" -o spleeted
rm "${vid_title}.mp3"
