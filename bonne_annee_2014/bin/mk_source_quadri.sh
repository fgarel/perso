#!/bin/sh

# +append = ajoute les deux images horizontalement
# -append = ajoute les deux images verticalement

# ##########
# 4 couleurs
# ##########

# ------------------------
# rb en haut et yg en bas
convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rbgy.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rbyg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/brgy.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bryg.jpg

# ------------------------
# yg en haut et rb en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ygrb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ygbr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gyrb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gybr.jpg

# ------------------------
# ry en haut et bg en bas
convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rybg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rygb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yrbg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yrgb.jpg

# ------------------------
# bg en haut et ry en bas
convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bgry.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bgyr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gbry.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gbyr.jpg

# ------------------------
# rg en haut et by en bas
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rgby.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rgyb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/grby.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gryb.jpg

# ------------------------
# by en haut et rg en bas
convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/byrg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bygr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ybrg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ybgr.jpg

# ################################
# 3 couleurs : blue blue green red
# ################################
# on remplace yellow par blue
# ------------------------
# rb en haut et bg en bas
convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rbgb.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rbbg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/brgb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/brbg.jpg

# ------------------------
# bg en haut et rb en bas
convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bgrb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bgbr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gbrb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gbbr.jpg

# ------------------------
# rb en haut et bg en bas
convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rbbg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rbgb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/brbg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/brgb.jpg

# ------------------------
# bg en haut et rb en bas
convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bgrb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bgbr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gbrb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gbbr.jpg

# ------------------------
# rg en haut et bb en bas
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rgbb.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rgbb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/grbb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/grbb.jpg

# ------------------------
# bb en haut et rg en bas
convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bbrg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bbgr.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bbrg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bbgr.jpg

# #################################
# 3 couleurs : blue green green red
# #################################
# on remplace yellow par green
# ------------------------
# rb en haut et gg en bas
convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rbgg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rbgg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/brgg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/brgg.jpg

# ------------------------
# gg en haut et rb en bas
convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ggrb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ggbr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ggrb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ggbr.jpg

# ------------------------
# rg en haut et bg en bas
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rgbg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rggb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/grbg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/grgb.jpg

# ------------------------
# bg en haut et rg en bas
convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bgrg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bggr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gbrg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gbgr.jpg

# ------------------------
# rg en haut et bg en bas
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rgbg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rggb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/grbg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/grgb.jpg

# ------------------------
# bg en haut et rg en bas
convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bgrg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bggr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gbrg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gbgr.jpg


# ###############################
# 3 couleurs : blue green red red
# ###############################
# on remplace yellow par red
# ------------------------
# rb en haut et rg en bas
convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rbgr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rbrg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/brgr.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/brrg.jpg

# ------------------------
# rg en haut et rb en bas
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rgrb.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rgbr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/grrb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/grbr.jpg

# ------------------------
# rr en haut et bg en bas
convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rrbg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rrgb.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rrbg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rrgb.jpg

# ------------------------
# bg en haut et rr en bas
convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bgrr.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bgrr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gbrr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gbrr.jpg

# ------------------------
# rg en haut et br en bas
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rgbr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rgrb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/grbr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/grrb.jpg

# ------------------------
# br en haut et rg en bas
convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/brrg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/brgr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rbrg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rbgr.jpg

# ###################################
# 3 couleurs : blue blue green yellow
# ###################################
# on remplace red par blue
# ------------------------
# bb en haut et yg en bas
convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bbgy.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bbyg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bbgy.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bbyg.jpg

# ------------------------
# yg en haut et bb en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ygbb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ygbb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gybb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gybb.jpg

# ------------------------
# by en haut et bg en bas
convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bybg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bygb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ybbg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ybgb.jpg

# ------------------------
# bg en haut et by en bas
convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bgby.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bgyb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gbby.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gbyb.jpg

# ------------------------
# bg en haut et by en bas
convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bgby.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bgyb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gbby.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gbyb.jpg

# ------------------------
# by en haut et bg en bas
convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bybg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bygb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ybbg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ybgb.jpg


# ####################################
# 3 couleurs : blue green green yellow
# ####################################
# on remplace red par green
# ------------------------
# gb en haut et yg en bas
convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gbgy.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gbyg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bggy.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bgyg.jpg

# ------------------------
# yg en haut et gb en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yggb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ygbg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gygb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gybg.jpg

# ------------------------
# gy en haut et bg en bas
convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gybg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gygb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ygbg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yggb.jpg

# ------------------------
# bg en haut et gy en bas
convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bggy.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bgyg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gbgy.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gbyg.jpg

# ------------------------
# gg en haut et by en bas
convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ggby.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ggyb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ggby.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ggyb.jpg

# ------------------------
# by en haut et gg en bas
convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bygg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bygg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ybgg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ybgg.jpg

# #####################################
# 3 couleurs : blue green yellow yellow
# #####################################
# on remplace red par yellow
# ------------------------
# yb en haut et yg en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ybgy.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ybyg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bygy.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/byyg.jpg

# ------------------------
# yg en haut et yb en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ygyb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ygby.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gyyb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gyby.jpg

# ------------------------
# yy en haut et bg en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yybg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yygb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yybg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yygb.jpg

# ------------------------
# bg en haut et yy en bas
convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bgyy.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bgyy.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gbyy.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gbyy.jpg

# ------------------------
# yg en haut et by en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ygby.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ygyb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gyby.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gyyb.jpg

# ------------------------
# by en haut et yg en bas
convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/byyg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bygy.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ybyg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ybgy.jpg

# #################################
# 3 couleurs : blue blue red yellow
# #################################
# on remplace green par blue
# ------------------------
# rb en haut et yb en bas
convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rbby.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rbyb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/brby.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bryb.jpg

# ------------------------
# yb en haut et rb en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ybrb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ybbr.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/byrb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bybr.jpg

# ------------------------
# ry en haut et bb en bas
convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rybb.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rybb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yrbb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yrbb.jpg

# ------------------------
# bb en haut et ry en bas
convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bbry.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bbyr.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bbry.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bbyr.jpg

# ------------------------
# rb en haut et by en bas
convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rbby.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rbyb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/brby.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bryb.jpg

# ------------------------
# by en haut et rb en bas
convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/byrb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bybr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ybrb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ybbr.jpg

# ################################
# 3 couleurs : blue red red yellow
# ################################
# on remplace green par red
# ------------------------
# rb en haut et yr en bas
convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rbry.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rbyr.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/brry.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bryr.jpg

# ------------------------
# yr en haut et rb en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yrrb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yrbr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ryrb.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rybr.jpg

# ------------------------
# ry en haut et br en bas
convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rybr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ryrb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yrbr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yrrb.jpg

# ------------------------
# br en haut et ry en bas
convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/brry.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bryr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rbry.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rbyr.jpg

# ------------------------
# rr en haut et by en bas
convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rrby.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rryb.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rrby.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rryb.jpg

# ------------------------
# by en haut et rr en bas
convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/byrr.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/byrr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ybrr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ybrr.jpg

# ###################################
# 3 couleurs : blue red yellow yellow
# ###################################
# on remplace green par yellow
# ------------------------
# rb en haut et yy en bas
convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rbyy.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rbyy.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bryy.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bryy.jpg

# ------------------------
# yy en haut et rb en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yyrb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yybr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yyrb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yybr.jpg

# ------------------------
# ry en haut et by en bas
convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ryby.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ryyb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/yrby.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yryb.jpg

# ------------------------
# by en haut et ry en bas
convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/byry.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/byyr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ybry.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ybyr.jpg

# ------------------------
# ry en haut et by en bas
convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ryby.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ryyb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/yrby.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yryb.jpg

# ------------------------
# by en haut et ry en bas
convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/byry.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/byyr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ybry.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ybyr.jpg

# ###################################
# 3 couleurs : green green red yellow
# ###################################
# on remplace blue par green
# ------------------------
# rg en haut et yg en bas
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rggy.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rgyg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/grgy.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gryg.jpg

# ------------------------
# yg en haut et rg en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ygrg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yggr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gyrg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gygr.jpg

# ------------------------
# ry en haut et gg en bas
convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rygg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rygg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yrgg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yrgg.jpg

# ------------------------
# gg en haut et ry en bas
convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ggry.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ggyr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ggry.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ggyr.jpg

# ------------------------
# rg en haut et gy en bas
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rggy.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rgyg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/grgy.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gryg.jpg

# ------------------------
# gy en haut et rg en bas
convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gyrg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gygr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ygrg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yggr.jpg

# #################################
# 3 couleurs : green red red yellow
# #################################
# on remplace blue par red
# ------------------------
# rr en haut et yg en bas
convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rrgy.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rryg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rrgy.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rryg.jpg

# ------------------------
# yg en haut et rr en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ygrr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ygrr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gyrr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gyrr.jpg

# ------------------------
# ry en haut et rg en bas
convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ryrg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rygr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yrrg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yrgr.jpg

# ------------------------
# rg en haut et ry en bas
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rgry.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rgyr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/grry.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gryr.jpg

# ------------------------
# rg en haut et ry en bas
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rgry.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rgyr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/grry.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gryr.jpg

# ------------------------
# ry en haut et rg en bas
convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ryrg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rygr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yrrg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yrgr.jpg

# ####################################
# 3 couleurs : green red yellow yellow
# ####################################
# on remplace blue par yellow
# ------------------------
# ry en haut et yg en bas
convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rygy.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ryyg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/yrgy.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yryg.jpg

# ------------------------
# yg en haut et ry en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ygry.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ygyr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gyry.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gyyr.jpg

# ------------------------
# ry en haut et yg en bas
convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ryyg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rygy.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yryg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/yrgy.jpg

# ------------------------
# yg en haut et ry en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ygry.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ygyr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gyry.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gyyr.jpg

# ------------------------
# rg en haut et yy en bas
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rgyy.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rgyy.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gryy.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gryy.jpg

# ------------------------
# yy en haut et rg en bas
convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yyrg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yygr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yyrg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yygr.jpg



# #######################
# 2 couleurs : blue green
# #######################

# ------------------------
# 3b et 1g
convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bbbg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bbgb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bgbb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gbbb.jpg

# ------------------------
# 2b et 2g
convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bbgg.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bggb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ggbb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gbbg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gbgb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bgbg.jpg

# ------------------------
# 1b et 3g
convert -size 20x20 \
        \( xc:blue \
           xc:green \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/bggg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:blue \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gbgg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:blue \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ggbg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:green \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/gggb.jpg


# #####################
# 2 couleurs : blue red
# #####################
# on remplace green par red


# ------------------------
# 3b et 1r
convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bbbr.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bbrb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/brbb.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rbbb.jpg

# ------------------------
# 2b et 2r
convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/bbrr.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/brrb.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rrbb.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rbbr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rbrb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/brbr.jpg

# ------------------------
# 1b et 3r
convert -size 20x20 \
        \( xc:blue \
           xc:red \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/brrr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:blue \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rbrr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:blue \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rrbr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:red \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/rrrb.jpg


# ########################
# 2 couleurs : blue yellow
# ########################
# on remplace green par yellow

# ------------------------
# 3b et 1y
convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bbby.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bbyb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bybb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ybbb.jpg

# ------------------------
# 2b et 2y
convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/bbyy.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/byyb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yybb.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ybby.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/ybyb.jpg

convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/byby.jpg

# ------------------------
# 1b et 3y
convert -size 20x20 \
        \( xc:blue \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/byyy.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:blue \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ybyy.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:blue \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/yyby.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/yyyb.jpg


# ######################
# 2 couleurs : green red
# ######################
# on remplace blue par red


# ------------------------
# 3r et 1g
convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rrrg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rrgr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rgrr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/grrr.jpg

# ------------------------
# 2r et 2g
convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rrgg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rggr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ggrr.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/grrg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/grgr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rgrg.jpg

# ------------------------
# 1r et 3g
convert -size 20x20 \
        \( xc:red \
           xc:green \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/rggg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:red \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/grgg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:red \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ggrg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:green \
           xc:red \
           +append \) \
        -append \
        ../data/ini/gggr.jpg

# #########################
# 2 couleurs : green yellow
# #########################
# on remplace blue par yellow

# ------------------------
# 3y et 1g
convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yyyg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/yygy.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ygyy.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gyyy.jpg

# ------------------------
# 2y et 2g
convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yygg.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/yggy.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ggyy.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gyyg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gygy.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ygyg.jpg

# ------------------------
# 1y et 3g
convert -size 20x20 \
        \( xc:yellow \
           xc:green \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/yggg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:yellow \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gygg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:yellow \
           xc:green \
           +append \) \
        -append \
        ../data/ini/ggyg.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:green \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/gggy.jpg


# #######################
# 2 couleurs : red yellow
# #######################
# on remplace blue par red et green par yellow

# ------------------------
# 3r et 1y
convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rrry.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rryr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ryrr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yrrr.jpg

# ------------------------
# 2r et 2y
convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/rryy.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/ryyr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yyrr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/yrry.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yryr.jpg

convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ryry.jpg

# ------------------------
# 1r et 3y
convert -size 20x20 \
        \( xc:red \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/ryyy.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:red \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/yryy.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:red \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/yyry.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:red \
           +append \) \
        -append \
        ../data/ini/yyyr.jpg



# #########
# 1 couleur
# #########

# ------------------------
convert -size 20x20 \
        \( xc:blue \
           xc:blue \
           +append \) \
        \( xc:blue \
           xc:blue \
           +append \) \
        -append \
        ../data/ini/bbbb.jpg

convert -size 20x20 \
        \( xc:green \
           xc:green \
           +append \) \
        \( xc:green \
           xc:green \
           +append \) \
        -append \
        ../data/ini/gggg.jpg

convert -size 20x20 \
        \( xc:red \
           xc:red \
           +append \) \
        \( xc:red \
           xc:red \
           +append \) \
        -append \
        ../data/ini/rrrr.jpg

convert -size 20x20 \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        \( xc:yellow \
           xc:yellow \
           +append \) \
        -append \
        ../data/ini/yyyy.jpg


