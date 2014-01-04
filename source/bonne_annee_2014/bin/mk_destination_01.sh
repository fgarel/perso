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
        -pointsize 1600 \
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


cp ../data/fin/2014.jpg \
   ../data/fin/2014_colored_00.jpg

convert ../data/fin/2014.jpg \
        -colorspace sRGB \
        +level-colors navy,lightblue \
        ../data/fin/2014_colored_01.jpg


convert \( xc:red \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        -filter triangle \
        -resize 6400x4800\! \
        gradient_resize1.jpg

convert \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        -filter triangle \
        -resize 6400x4800\! \
        gradient_resize2.jpg


convert -size 6400x1920 \
        gradient: \
        -rotate 90 \
        -distort Arc '360 -90.1 3199' \
        +repage \
        -gravity center \
        -crop 6400x4800+0+0 \
        +repage \
        angular_01.png
convert -size 6400x1920 \
        gradient: \
        -rotate 90 \
        -distort Arc '360 -180.1 3199' \
        +repage \
        -gravity center \
        -crop 6400x4800+0+0 \
        +repage \
        angular_02.png
convert -size 6400x1920 \
        gradient: \
        -rotate 90 \
        -distort Arc '360 -270.1 3199' \
        +repage \
        -gravity center \
        -crop 6400x4800+0+0 \
        +repage \
        angular_03.png
convert -size 6400x1920 \
        gradient: \
        -rotate 90 \
        -distort Arc '360 -0.1 3199' \
        +repage \
        -gravity center \
        -crop 6400x4800+0+0 \
        +repage \
        angular_04.png
convert -size 6400x4800 \
        xc:white \
        solid.png
convert -size 6400x4800 \
        radial-gradient: \
        -negate \
        radial.png

convert angular_01.png \
        solid.png \
        radial.png \
        -combine \
        -set colorspace HSL \
        -colorspace sRGB \
        colorwheel_HSL.png

convert angular_01.png \
        solid.png \
        radial.png \
        -combine \
        -set colorspace HSB \
        -colorspace sRGB \
        colorwheel_HSB_01.png
convert angular_02.png \
        solid.png \
        radial.png \
        -combine \
        -set colorspace HSB \
        -colorspace sRGB \
        colorwheel_HSB_02.png
convert angular_03.png \
        solid.png \
        radial.png \
        -combine \
        -set colorspace HSB \
        -colorspace sRGB \
        colorwheel_HSB_03.png
convert angular_04.png \
        solid.png \
        radial.png \
        -combine \
        -set colorspace HSB \
        -colorspace sRGB \
        colorwheel_HSB_04.png

convert ../data/fin/2014_colored_00.jpg \
        -colorspace sRGB \
        \( +clone \
           -size 6400x4800 \
           -tile solid.png \
           -draw "color 0,0 reset" \) \
        \( +clone \
           -size 6400x4800 \
           -tile colorwheel_HSB_04.png \
           -draw "color 0,0 reset" \) \
        -reverse \
        -composite \
        ../data/fin/2014_colored_01.jpg

convert ../data/fin/2014_colored_00.jpg \
        -colorspace sRGB \
        \( +clone \
           -size 6400x4800 \
           -tile gradient: \
           -draw "color 0,0 reset" \) \
        \( +clone \
           -size 6400x4800 \
           -tile colorwheel_HSB_04.png \
           -draw "color 0,0 reset" \) \
        -reverse \
        -composite \
        ../data/fin/2014_colored_02.jpg

convert ../data/fin/2014_colored_00.jpg \
        -colorspace sRGB \
        \( +clone \
           -size 6400x4800 \
           -tile colorwheel_HSB_02.png \
           -draw "color 0,0 reset" \) \
        \( +clone \
           -size 6400x4800 \
           -tile colorwheel_HSB_04.png \
           -draw "color 0,0 reset" \) \
        -reverse \
        -composite \
        ../data/fin/2014_colored_03.jpg

rm ../data/fin/2014.jpg
mv ../data/fin/2014_colored_02.jpg \
   ../data/fin/2014.jpg

