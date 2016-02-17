for %%a in ("*.MXF") do .\ffmpeg.exe -i "%%a" -vcodec prores -profile:v 3 "prores\%%~na.mov"
pause
