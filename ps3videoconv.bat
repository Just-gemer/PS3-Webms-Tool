@echo off
title PS3 Webm Tool By Just gemer
echo PLEASE DONT CLOSE WINDOW WHILE CONVERTING
set /P mapname=Enter mapname:
set /P videotitle=Enter video title:
set /P videoex=Enter video extension type:
ffmpeg.exe -i %videotitle%.%videoex% -threads:v 3 -sws_flags bicubic -c:v libvpx -r:v 25 -b:v 8000k -bufsize 8000k -g 120 -rc_lookahead 16 -profile:v 0 -qmax 51 -qmin 11 -slices 4 -quality realtime -an -aspect 16:9 -filter:v scale=1280:720 %mapname%.ps3.webm
mkclean.exe %mapname%.ps3.webm
del %mapname%.ps3.webm
ren clean.%mapname%.ps3.webm %mapname%.ps3.webm
echo Converting finished!
pause