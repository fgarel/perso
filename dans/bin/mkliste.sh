#!/bin/sh

DATE='20142015/20150407'

#echo "./mkliste.sh > /media/fred/TOSHIBA\ EXT/MusiqueBretonne/Musique/triParDate/$DATE/liste.txt"

ls -1 /media/fred/TOSHIBA\ EXT/MusiqueBretonne/Musique/triParDate/$DATE/*.mp3 | cut -f10 -d/ | cut -f1,2,3 -d- | cat -n \
> /media/fred/TOSHIBA\ EXT/MusiqueBretonne/Musique/triParDate/$DATE/liste.txt


