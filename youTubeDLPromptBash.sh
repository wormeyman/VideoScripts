#!/bin/sh
# Updated: 2019-12-01 16:05:05
read -p "What is the video url?  " video
echo "Updating YouTube-DL before Downloading"
pip install --upgrade pip youtube-dl ffmpeg
youtube-dl --restrict-filenames $video
echo "The Script has Finished!"
