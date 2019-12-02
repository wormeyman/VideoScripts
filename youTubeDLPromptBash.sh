#!/bin/sh
# Updated: 2019-12-01 16:05:05
# This script is created primarily for using with Termux on Andriod
alias youTubeDLPromptDIR="cd storage/downloads/"
# alias proj="cd /home/tree/projects/java"
read -p "What is the video url?  " video
echo "Updating YouTube-DL before Downloading"
pip install --upgrade pip youtube-dl ffmpeg
echo "Changing to downloads directory"
$youTubeDLPromptDIR
echo "Downloading Video"
youtube-dl --restrict-filenames $video
echo "The Script has Finished!"
