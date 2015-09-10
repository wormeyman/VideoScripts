#livestreamer --verbose-player --player "'C:\Program Files (x86)\VideoLAN\VLC\vlc.exe' --file-caching=5000" --default-stream best THEURL

$video = Read-Host 'What is the video url?'
# Update LiveStream
Write-Host -ForegroundColor Green "Updating livestreamer"
pip install --upgrade livestreamer
clear
# Watch the Stream
livestreamer --verbose-player --player "'C:\Program Files (x86)\VideoLAN\VLC\vlc.exe' --file-caching=5000" --default-stream best $video
