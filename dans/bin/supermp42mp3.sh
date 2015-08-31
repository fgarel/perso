#!/bin/bash

OLDIFS=$IFS
IFS=$'\n'
mv /home/fred/Téléchargements/mps/*.mp4 /media/fred/TOSHIBA\ EXT/MusiqueBretonne/Videos/
LISTMP4=`ls -1 /media/fred/TOSHIBA\ EXT/MusiqueBretonne/Videos/*.mp4`
REPMP3='/media/fred/TOSHIBA EXT/MusiqueBretonne/Musique'
#echo $LIST
for file in $LISTMP4
do
    #echo $file
    filemp4=$(basename $file)
    #echo $filemp4
    filemp3=${filemp4%.*}.mp3
    echo $filemp3
    ./mp42mp3.sh /media/fred/TOSHIBA\ EXT/MusiqueBretonne/Videos/$filemp4 
    mv $filemp3 $REPMP3/$filemp3
    mv *.mp3 $REPMP3/
done
IFS=$OLDIFS
