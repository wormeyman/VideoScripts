#!/bin/sh
# Updated: 2019-12-01 16:05:05
# This script is created primarily for using with Termux on Andriod
read -p "What is the video url?  " video
echo "Updating YouTube-DL before Downloading"
pip install --upgrade pip youtube-dl ffmpeg
echo "Downloading Video"
# youtube-dl -o "~/storage/downloads/%(title)s.%(ext)s" --restrict-filenames
youtube-dl -o '~/storage/downloads/%(title)s-%(id)s.%(ext)s' $video --restrict-filenames
echo "The Script has Finished!"
