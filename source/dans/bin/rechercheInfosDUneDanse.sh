#!/bin/sh

tail -n+2 ../pdf/pdf.txt | sed -e 's/µ/,/g' | csvtool col 3,1,2 - > ../pdf/pdf2.txt

tail -n+2 ../pdf/video.txt | sed -e 's/µ/,/g' | csvtool col 2,1 - > ../pdf/video2.txt

# liste les videos et les pdf : jointure avec les noms des danses
#csvtool join 1 2 ../pdf/pdf2.txt ../pdf/video2.txt 
#csvtool join 1 2 ../pdf/video2.txt ../pdf/pdf2.txt 


# 
echo "********************"
echo Infos sur la danse : $1
echo "********************"

csvtool join 1 2 ../pdf/pdf2.txt ../pdf/video2.txt | grep "$1"
