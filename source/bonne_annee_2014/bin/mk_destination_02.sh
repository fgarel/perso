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
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --search=global \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=global \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=40 \
          --width=128 \
          --heigh=96 \
          --search=global \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_40.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=4 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0004.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=8 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0008.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=16 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0016.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=32 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0032.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=64 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0064.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=128 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0128.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=256 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0256.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=512 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0512.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=1024 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_1024.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=2048 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_2048.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=4096 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_4096.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=8192 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_8192.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=local \
          --distance=512 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_subpixel_distance_0512.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=local \
          --distance=512 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_wavelet_distance_0512.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_subpixel_global.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_wavelet_global.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=local \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_subpixel_local.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=local \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_wavelet_local.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=512 \
          --y-weight=0 \
          --i-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0512_q.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=512 \
          --y-weight=0 \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0512_i.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=512 \
          --i-weight=0 \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0512_y.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=512 \
          --i-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0512_yq.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --search=local \
          --distance=512 \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0512_yi.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=512 \
          --heigh=96 \
          --search=local \
          --distance=128 \
          --y-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_distance_0512_iq.jpg

