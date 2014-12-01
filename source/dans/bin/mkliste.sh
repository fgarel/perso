#!/bin/sh

DATE='20142015/20141202'

ls -1 /media/fred/TOSHIBA\ EXT/MusiqueBretonne/Musique/triParDate/$DATE/*.mp3 | cut -f10 -d/ | cut -f1,2,3 -d- | cat -n

