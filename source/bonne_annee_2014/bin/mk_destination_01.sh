#!/bin/sh

# creation d'une image contenant le texte Bonne Année 2014

# la doc sur les textes
# http://www.imagemagick.org/Usage/fonts/

# ##########
#         -font Purisa-Bold \
#         -font Source-Code-Pro-Bold \
#         -font Ubuntu-Bold-Italic \
#         -font Gecko-Regular \
# ##########

# installation de la font gecko :
# http://policedecaractere.free.fr/index.php?letter=G&page=59

# #####################
# Creation de l'image 
# ../data/fin/2014.jpg
# #####################
# ------------------------
convert -size 6400x4800 \
        -background '#DDDDDDFF' \
        -fill '#7F7F7FFF' \
        -strokewidth 3 \
        -stroke '#222222FF' \
        -gravity center \
        -pointsize 1700 \
        -font Ubuntu-Bold-Italic \
        -interline-spacing -200 \
        label:"Bonne\nAnnée\n2014" \
        ../data/fin/2014.jpg

# blanc

# -background gradient: \
# -fill '#7F7F7FFF' \
# -stroke '#222222FF' \

# -background '#DDDDDDFF' \
# -fill '#7F7F7FFF' \
# -stroke '#222222FF' \

# -background snow \
# -fill dodgerblue \
# -stroke blue \



# -size 1600x1200 \
# -pointsize 400 \
# -interline-spacing -50 \

# -size 3200x2400 \
# -pointsize 800 \
# -interline-spacing -100 \

# -size 6400x4800 \
# -pointsize 1600 \
# -interline-spacing -200 \




convert -size 6400x4800 \
        -background '#FFFFFFFF' \
        -fill '#3F3F3FFF' \
        -strokewidth 24 \
        -stroke '#222222FF' \
        -gravity center \
        -pointsize 1600 \
        -font Ubuntu-Bold-Italic \
        -interline-spacing -200 \
        label:"Bonne\nAnnée\n2014" \
        ../data/fin/2014.jpg


cp ../bin/IMG_1588.JPG \
   ../bin/IMG_1588_sav.JPG

convert ../bin/IMG_1588_sav.JPG \
        -resize 6400x4800 \
        ../bin/IMG_1588.JPG

cp ../bin/IMG_1591.jpg \
   ../bin/IMG_1591_sav.jpg

convert ../bin/IMG_1591_sav.jpg \
        -resize 6400x4800 \
        ../bin/IMG_1591.jpg

cp ../bin/IMG_1597.JPG \
   ../bin/IMG_1597_sav.JPG

convert ../bin/IMG_1597_sav.JPG \
        -resize 6400x4800 \
        ../bin/IMG_1597.JPG

# ------------------------
# simple resize NB
convert ../bin/IMG_1597.JPG \
        -resize 6400x4800 \
        -set colorspace Gray \
        -separate \
        -average \
        ../bin/IMG_1597_NB.JPG

echo "NB done"





convert ../data/fin/2014.jpg \
        -colorspace sRGB \
        \( +clone \
           -size 6400x4800 \
           -tile IMG_1597.JPG \
           -draw "color 0,0 reset" \) \
        \( +clone \
           -size 6400x4800 \
           -tile IMG_1597_NB.JPG \
           -draw "color 0,0 reset" \) \
        -reverse \
        -composite \
        ../data/fin/2014_colored_01.jpg

convert ../data/fin/2014.jpg \
        -colorspace sRGB \
        \( +clone \
           -size 6400x4800 \
           -tile IMG_1597_NB.JPG \
           -draw "color 0,0 reset" \) \
        \( +clone \
           -size 6400x4800 \
           -tile IMG_1597.JPG \
           -draw "color 0,0 reset" \) \
        -reverse \
        -composite \
        ../data/fin/2014_colored_02.jpg

convert ../data/fin/2014.jpg \
        -colorspace sRGB \
        \( +clone \
           -size 6400x4800 \
           -tile ../bin/IMG_1597.JPG \
           -draw "color 0,0 reset" \) \
        \( +clone \
           -size 6400x4800 \
           -tile ../bin/IMG_1588.JPG \
           -draw "color 0,0 reset" \) \
        -reverse \
        -composite \
        ../data/fin/2014_colored_03.jpg

convert ../data/fin/2014.jpg \
        -colorspace sRGB \
        \( +clone \
           -size 6400x4800 \
           -tile ../bin/IMG_1597.JPG \
           -draw "color 0,0 reset" \) \
        \( +clone \
           -size 6400x4800 \
           -tile ../bin/IMG_1591.jpg \
           -draw "color 0,0 reset" \) \
        -reverse \
        -composite \
        ../data/fin/2014_colored_04.jpg

convert ../data/fin/2014.jpg \
        -colorspace sRGB \
        \( +clone \
           -size 6400x4800 \
           -tile ../bin/IMG_1597.JPG \
           -draw "color 0,0 reset" \) \
        \( +clone \
           -size 6400x4800 \
           -tile xc:grey10 \
           -draw "color 0,0 reset" \) \
        -reverse \
        -composite \
        ../data/fin/2014_colored_05.jpg

convert ../data/fin/2014.jpg \
        -colorspace sRGB \
        \( +clone \
           -size 6400x4800 \
           -tile ../bin/IMG_1597.JPG \
           -draw "color 0,0 reset" \) \
        \( +clone \
           -size 6400x4800 \
           -tile xc:grey20 \
           -draw "color 0,0 reset" \) \
        -reverse \
        -composite \
        ../data/fin/2014_colored_06.jpg

convert ../data/fin/2014.jpg \
        -colorspace sRGB \
        \( +clone \
           -size 6400x4800 \
           -tile ../bin/IMG_1597.JPG \
           -draw "color 0,0 reset" \) \
        \( +clone \
           -size 6400x4800 \
           -tile xc:grey30 \
           -draw "color 0,0 reset" \) \
        -reverse \
        -composite \
        ../data/fin/2014_colored_07.jpg

mv ../data/fin/2014.jpg ../data/fin/2014_sav.jpg
mv ../data/fin/2014_colored_05.jpg \
   ../data/fin/2014.jpg

