#!/bin/sh
# Updated: 2019-12-04 09:54:01
# This script is created primarily for using with Termux on Andriod
read -p "What is the video url?  " video
echo "Updating YouTube-DL before Downloading"
pip install --upgrade pip youtube-dl ffmpeg
echo "Downloading Video"
youtube-dl -o '~/storage/downloads/%(title)s-%(id)s.%(ext)s' $video --restrict-filenames
echo "The Script has Finished!"
