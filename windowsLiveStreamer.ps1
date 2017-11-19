#Updated 2017-11-01 13:38:04
#livestreamer --verbose-player --player "'C:\Program Files (x86)\VideoLAN\VLC\vlc.exe' --file-caching=5000" --default-stream best THEURL

$video = Read-Host 'What is the video url?'
# Update LiveStream
Write-Host -ForegroundColor Green "Updating livestreamer"
pip install --upgrade livestreamer
Clear-Host
# Watch the Stream
Write-Host -ForegroundColor Green "Starting the Stream in VLC please wait while it loads"
livestreamer --verbose-player --player "'C:\Program Files\VideoLAN\VLC\vlc.exe' --file-caching=5000" --default-stream best $video
