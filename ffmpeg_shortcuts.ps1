#Copy Audio
.\ffmpeg\ffmpeg.exe -i input.MXF -acodec copy -vn -f wav outputaudio.wav

#Copy Video
.\ffmpeg\ffmpeg.exe -i input.MXF -vcodec copy -an outputvideo.mxf

#Force Frame Rate
#To force the frame rate of the output file to 30 fps:
.\ffmpeg\ffmpeg.exe -i input.avi -r 30 output.avi
