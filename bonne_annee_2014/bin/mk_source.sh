#!/bin/sh

# -path = repertoire destination
# -thumbnail = creation de vignette

# les images originales sont dans le repertoire
# ../data/ini0/

# #####################
# creation de vignettes
# #####################

# ------------------------
# simple resize
mogrify -path ../data/ini1/ \
        -format "_resized.JPG" \
        -thumbnail 400x300 \
        ../data/ini0/*
echo "resized done"

# ------------------------
# simple resize NB
mogrify -path ../data/ini1/ \
        -format "_resized_NB.JPG" \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/*
echo "resized NB done"

# ------------------------
# correction sous-exposition
# http://www.imagemagick.org/Usage/photos/
mogrify -path ../data/ini1/ \
        -format "_exposed.JPG" \
        -sigmoidal-contrast 4,0% \
        -thumbnail 400x300 \
        ../data/ini0/*
echo "exposed done"

# ------------------------
# correction sous-exposition NB
# http://www.imagemagick.org/Usage/photos/
mogrify -path ../data/ini1/ \
        -format "_exposed_NB.JPG" \
        -sigmoidal-contrast 4,0% \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/*
echo "exposed NB done"

# ------------------------
# crop
# http://www.imagemagick.org/Usage/photos/

mogrify -path ../data/ini1/ \
        -format "_crop_NorthWest.JPG" \
        -gravity NorthWest \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        ../data/ini0/crop_NW/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_North.JPG" \
        -gravity North \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        ../data/ini0/crop_N/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_NorthEast.JPG" \
        -gravity NorthEast \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        ../data/ini0/crop_NE/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_West.JPG" \
        -gravity West \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        ../data/ini0/crop_W/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_Center.JPG" \
        -gravity Center \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        ../data/ini0/crop_C/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_East.JPG" \
        -gravity East \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        ../data/ini0/crop_E/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_SouthWest.JPG" \
        -gravity SouthWest \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        ../data/ini0/crop_SW/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_South.JPG" \
        -gravity South \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        ../data/ini0/crop_S/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_SouthEast.JPG" \
        -gravity SouthEast \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        ../data/ini0/crop_SE/*
echo "3"

# ------------------------
# crop NB
# http://www.imagemagick.org/Usage/photos/

mogrify -path ../data/ini1/ \
        -format "_crop_NorthWest_NB.JPG" \
        -gravity NorthWest \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/crop_NW/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_North_NB.JPG" \
        -gravity North \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/crop_N/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_NorthEast_NB.JPG" \
        -gravity NorthEast \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/crop_NE/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_West_NB.JPG" \
        -gravity West \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/crop_W/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_Center_NB.JPG" \
        -gravity Center \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/crop_C/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_East_NB.JPG" \
        -gravity East \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/crop_E/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_SouthWest_NB.JPG" \
        -gravity SouthWest \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/crop_SW/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_South_NB.JPG" \
        -gravity South \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/crop_S/*
echo "3"

mogrify -path ../data/ini1/ \
        -format "_crop_SouthEast_NB.JPG" \
        -gravity SouthEast \
        -crop 2000x1500+0+0 \
        +repage \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/crop_SE/*
echo "3"

# ------------------------
# rotation
# http://www.imagemagick.org/Usage/photos/
angle=-25
mogrify -path ../data/ini1/ \
        -format "_rotate_minus_25.JPG" \
        -distort SRT \
        "%[fx:aa=$angle*pi/180;(w*abs(sin(aa))+h*abs(cos(aa)))/min(w,h)], $angle" \
        -thumbnail 400x300 \
        ../data/ini0/rotate_minus_25/*
echo "3"

# ------------------------
# rotation
# http://www.imagemagick.org/Usage/photos/
angle=+25
mogrify -path ../data/ini1/ \
        -format "_rotate_plus_25.JPG" \
        -distort SRT \
        "%[fx:aa=$angle*pi/180;(w*abs(sin(aa))+h*abs(cos(aa)))/min(w,h)], $angle" \
        -thumbnail 400x300 \
        ../data/ini0/rotate_plus_25/*
echo "3"

# ------------------------
# rotation
# http://www.imagemagick.org/Usage/photos/
angle=-90
mogrify -path ../data/ini1/ \
        -format "_rotate_minus_90.JPG" \
        -distort SRT \
        "%[fx:aa=$angle*pi/180;(w*abs(sin(aa))+h*abs(cos(aa)))/min(w,h)], $angle" \
        -thumbnail 400x300 \
        ../data/ini0/rotate_minus_90/*
echo "3"

# ------------------------
# rotation
# http://www.imagemagick.org/Usage/photos/
angle=+90
mogrify -path ../data/ini1/ \
        -format "_rotate_plus_90.JPG" \
        -distort SRT \
        "%[fx:aa=$angle*pi/180;(w*abs(sin(aa))+h*abs(cos(aa)))/min(w,h)], $angle" \
        -thumbnail 400x300 \
        ../data/ini0/rotate_plus_90/*
echo "3"

# ------------------------
# rotation NB
# http://www.imagemagick.org/Usage/photos/
angle=-25
mogrify -path ../data/ini1/ \
        -format "_rotate_minus_25_NB.JPG" \
        -distort SRT \
        "%[fx:aa=$angle*pi/180;(w*abs(sin(aa))+h*abs(cos(aa)))/min(w,h)], $angle" \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/rotate_minus_25/*
echo "3"

# ------------------------
# rotation NB
# http://www.imagemagick.org/Usage/photos/
angle=+25
mogrify -path ../data/ini1/ \
        -format "_rotate_plus_25_NB.JPG" \
        -distort SRT \
        "%[fx:aa=$angle*pi/180;(w*abs(sin(aa))+h*abs(cos(aa)))/min(w,h)], $angle" \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/rotate_plus_25/*
echo "3"

# ------------------------
# rotation NB
# http://www.imagemagick.org/Usage/photos/
angle=-90
mogrify -path ../data/ini1/ \
        -format "_rotate_minus_90_NB.JPG" \
        -distort SRT \
        "%[fx:aa=$angle*pi/180;(w*abs(sin(aa))+h*abs(cos(aa)))/min(w,h)], $angle" \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/rotate_minus_90/*
echo "3"

# ------------------------
# rotation NB
# http://www.imagemagick.org/Usage/photos/
angle=+90
mogrify -path ../data/ini1/ \
        -format "_rotate_plus_90_NB.JPG" \
        -distort SRT \
        "%[fx:aa=$angle*pi/180;(w*abs(sin(aa))+h*abs(cos(aa)))/min(w,h)], $angle" \
        -thumbnail 400x300 \
        -set colorspace Gray \
        -separate \
        -average \
        ../data/ini0/rotate_plus_90/*
echo "3"

# #####################
# creation de la base de données pour pixelize
# 
# Les images originales sont dans 
# ../data/ini1/
# #####################
rm pic_db.dat
make_db ../data/ini1/*

# #####################
# utilisation de metapixel
# http://doc.ubuntu-fr.org/metapixel
# dans un premier temps, il faut utiliser 
# la commande metapixel-prepare (cf mk_source)
# puis, dans un second temps, on utilise 
# la commande metapixel (cf mk_destination)
# #####################

# #####################
# creation de la base de données pour metapixel
# http://doc.ubuntu-fr.org/metapixel
# Les images originales sont dans 
# ~/Images/2013/
# Les vignettes fabriquées sont dans
# ../data/ini2/
# #####################
metapixel-prepare --recurse \
                  ../data/ini1/ \
                  ../data/ini2/

#metapixel-prepare --recurse \
#                  ~/Images/2013/ \
#                  ../data/ini2/

