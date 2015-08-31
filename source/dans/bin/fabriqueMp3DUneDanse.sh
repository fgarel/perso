#!/bin/sh

tail -n+2 ../pdf/pdf.txt | sed -e 's/µ/,/g' | csvtool col 3,1,2 - > ../pdf/pdf2.txt

tail -n+2 ../pdf/video.txt | sed -e 's/µ/,/g' | csvtool col 2,1 - > ../pdf/video2.txt

# liste les videos et les pdf : jointure avec les noms des danses
#csvtool join 1 2 ../pdf/pdf2.txt ../pdf/video2.txt 
#csvtool join 1 2 ../pdf/video2.txt ../pdf/pdf2.txt 


# 
#echo "********************"
#echo Infos sur la danse : $1
#echo "********************"

file=`csvtool join 1 2 ../pdf/pdf2.txt ../pdf/video2.txt | grep "$1" | csvtool col 3 -`
file="/media/fred/TOSHIBA\ EXT/MusiqueBretonne/Videos/TriParSupport/"$file
#echo "./mp42mp3.sh /media/fred/TOSHIBA\ EXT/MusiqueBretonne/Videos/TriParSupport/"$file
#`./mp42mp3.sh /media/fred/TOSHIBA\ EXT/MusiqueBretonne/Videos/TriParSupport/$file`
#echo avconv -i "$file" -vn -acodec libmp3lame "`basename "$file" .VOB`.mp3"
newfile=`basename "$file" .VOB`.mp3
#echo $newfile
echo "*****************************************"
echo "Conversion vers mp3 : commande a executer"
echo "*****************************************"
echo avconv -i "$file" -vn -acodec libmp3lame "$newfile"
echo "*******************************************"
echo "affichage de la video : commande a executer"
echo "*******************************************"
echo vlc "$file"

#avconv -i "$file" -vn -acodec libmp3lame "`basename "$file" .VOB`.mp3"
#( avconv -i "$file" -vn -acodec libmp3lame "$newfile" )

