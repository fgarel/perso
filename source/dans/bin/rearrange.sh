#!/bin/sh

tail -n+2 ../pdf/pdf.txt | sed -e 's/µ/,/g' | csvtool col 3,1,2 - > ../pdf/pdf2.txt

tail -n+2 ../pdf/video.txt | sed -e 's/µ/,/g' | csvtool col 2,1 - > ../pdf/video2.txt

csvtool join 1 2 ../pdf/pdf2.txt ../pdf/video2.txt 
