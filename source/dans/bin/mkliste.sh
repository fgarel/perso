#!/bin/sh

#ls -al $1 | tail -n 10 | cut -d ' ' -f 10
# =======
DATE='20152016/20151013'

ls -1 /media/fred/TOSHIBA\ EXT/MusiqueBretonne/Musique/triParDate/$DATE/*.mp3 | cut -f10 -d/ | cut -f1,2,3 -d- | cat -n

