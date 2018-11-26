# Upgrade youtube_dl and streamlink in one command.
Write-Host -ForegroundColor Green "Updating Python pip"
#pip install --upgrade pip
python -m pip install --upgrade pip
Write-Host -ForegroundColor Green "Updating YouTube-DL Python Edition"
pip install --upgrade youtube_dl
Write-Host -ForegroundColor Green "Updating streamlink"
pip install --upgrade streamlink
#Write-Host -ForegroundColor Green "Updating YouTube-DL in Videos Folder"
#.\youtube-dl.exe --update
Start-Sleep -s 2
Clear-Host
