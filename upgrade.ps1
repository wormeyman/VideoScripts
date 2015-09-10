# Upgrade youtube_dl and livestreamer in one command.
Write-Host -ForegroundColor Green "Updating YouTube-DL Python Edition"
pip install --upgrade pip
Write-Host -ForegroundColor Green "Updating YouTube-DL Python Edition"
pip install --upgrade youtube_dl
Write-Host -ForegroundColor Green "Updating livestreamer"
pip install --upgrade livestreamer
Write-Host -ForegroundColor Green "Updating YouTube-DL in Videos Folder"
.\youtube-dl.exe -U
Start-Sleep -s 2
clear
