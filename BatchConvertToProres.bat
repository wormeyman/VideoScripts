REM Convert MP4 files into Prores
REM Change the *.MP4 for whatever you need to change
REM you may need to create the prores folder
REM Eventually this will be a powershell script but for now it just works.
for %%a in ("*.MP4") do .\ffmpeg\ffmpeg.exe -i "%%a" -vcodec prores -profile:v 3 ".\prores\%%~na.mov"
pause
