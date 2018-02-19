#Updated 2018-01-10 08:23:50
#streamlink --verbose-player --player "'C:\Program Files (x86)\VideoLAN\VLC\vlc.exe' --file-caching=5000" --default-stream best THEURL

$video = Read-Host 'What is the video url?'
# Update streamlink
Write-Host -ForegroundColor Green "Updating streamlink"
pip install --upgrade streamlink
Clear-Host
# Watch the Stream
Write-Host -ForegroundColor Green "Starting the Stream in VLC please wait while it loads"
# streamlink --verbose-player --player "'C:\Program Files\VideoLAN\VLC\vlc.exe' --file-caching=5000" --default-stream best $video
streamlink --verbose-player --player "C:\Program Files\VideoLAN\VLC\vlc.exe" --default-stream best $video
#streamlink --verbose-player --player "C:\Program Files\MPC-HC\mpc-hc64.exe" --default-stream best $video
