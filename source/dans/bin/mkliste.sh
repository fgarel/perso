#!/bin/sh

#ls -al $1 | tail -n 10 | cut -d ' ' -f 10
# =======
#DATE='20152016/20160628'

#ls -1 /media/fred/TOSHIBA\ EXT/MusiqueBretonne/Musique/triParDate/$DATE/*.mp3 | cut -f10 -d/ | cut -f1,2,3 -d- | cat -n
ls -1 /home/fred/CloudStation/mardiSoir/*.mp3 | cut -f6 -d/ | cut -f1,2,3 -d- | cat -n
ls -1 /home/fred/CloudStation/mardiSoir/*.mp3 | cut -f6 -d/ | cut -f1,2,3 -d- | cat -n > /home/fred/CloudStation/mardiSoir/liste.txt

