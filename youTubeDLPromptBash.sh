#!/bin/sh
# Updated: 2019-12-01 16:05:05
# This script is created primarily for using with Termux on Andriod
read -p "What is the video url?  " video
echo "Updating YouTube-DL before Downloading"
pip install --upgrade pip youtube-dl ffmpeg
echo "Changing to downloads directory"
cd storage/downloads/
echo "Downloading Video"
youtube-dl --restrict-filenames $video
echo "The Script has Finished!"
