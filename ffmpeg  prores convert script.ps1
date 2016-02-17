# https://transcoding.wordpress.com/2012/01/29/prores-ffmpeg/
# For different flavors of ProRes replace NUMBER with a number from zero to 3 where:
# 0 : ProRes422 (Proxy)
# 1 : ProRes422 (LT)
# 2 : ProRes422 (Normal)
# 3 : ProRes422 (HQ)

# Prompt for the video URL
$video = Read-Host 'What is the video?'
#$name = Read-Host 'Exported Name without any extensions'
.\ffmpeg\ffmpeg.exe -i $video -vcodec prores -profile:v 3 _prores.MOV
Write-Host -ForegroundColor Green "The Script has Finished!"
Write-Host -ForegroundColor Green "Opening Video Folder."
Invoke-Item $PWD
