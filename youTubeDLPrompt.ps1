# Updated: 2018-02-22 14:36:34
# Download the Windows binary: https://rg3.github.io/youtube-dl/download.html
# This script needs to be in the same folder as .\youtube-dl.exe
# --
# Some websites require FFmpeg binaries to be available as well.
# 32 bit:
# http://ffmpeg.zeranoe.com/builds/win32/static/ffmpeg-latest-win32-static.zip
# 64 bit:
# https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-latest-win64-static.zip
# --
# Allow powershell scripts:
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
# --
# Prompt for the video URL
$video = Read-Host 'What is the video url?'
# Update YouTubeDL this prevents any errors if YouTube has made changes.
# Write-Host -ForegroundColor Green "Updating YouTube-DL before Downloading"
#.\youtube-dl.exe --update
Write-Host -ForegroundColor Green "Updating YouTube-DL before Downloading"
.\youtube-dl.exe --update
Write-Host -ForegroundColor Green "Pausing for 10 seconds"
Start-Sleep -Seconds 10
Clear-Host
# Download the Video
# The --restrict-filenames gives a nice clean filename and also works better
# with copying and pasting if there is an & in the URL
.\youtube-dl.exe --ffmpeg-location .\ffmpeg\ffmpeg.exe --restrict-filenames $video
Write-Host -ForegroundColor Green "The Script has Finished!"
Write-Host -ForegroundColor Green "Opening Video Folder."
Invoke-Item $PWD
