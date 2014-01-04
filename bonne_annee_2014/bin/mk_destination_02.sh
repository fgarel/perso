#!/bin/sh

# #####################
# Creation de l'image 
# ../data/fin/2014_mosaic.jpg
# #####################

# #####################
# utilisation de metapixel
# http://doc.ubuntu-fr.org/metapixel
# dans un premier temps, il faut utiliser 
# la commande metapixel-prepare (cf mk_source)
# puis, dans un second temps, on utilise 
# la commande metapixel (cf mk_destination)
# #####################

# #####################
# Les vignettes originales sont dans 
# ../data/ini2/
# #####################

# #####################
# Creation de l'image 
# ../data/fin/2014_mosaic.jpg
# #####################
metapixel --library \
          ../data/ini2/ \
          --cheat=10 \
          --width=64 \
          --heigh=48 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_10.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=64 \
          --heigh=48 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=64 \
          --heigh=48 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_128_096.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=256 \
          --heigh=192 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_256_192.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=64 \
          --heigh=48 \
          --metric=subpixel \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_subpixel.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=64 \
          --heigh=48 \
          --metric=wavelet \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_wavelet.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=64 \
          --heigh=48 \
          --metric=subpixel \
          --search=global \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_subpixel_global.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=64 \
          --heigh=48 \
          --metric=wavelet \
          --search=global \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_wavelet_global.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=64 \
          --heigh=48 \
          --metric=subpixel \
          --search=local \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_subpixel_local.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=64 \
          --heigh=48 \
          --metric=wavelet \
          --search=local \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_wavelet_local.jpg
