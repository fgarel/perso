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
          --width=128 \
          --heigh=96 \
          --search=global \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_10.jpg

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

###
metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_subpixel_global.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_wavelet_global.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=local \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_subpixel_local.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=local \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_wavelet_local.jpg

###
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

######
metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --y-weight=0 \
          --i-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_wavelet_global_q.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --y-weight=0 \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_wavelet_global_i.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --i-weight=0 \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_wavelet_global_y.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --i-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_wavelet_global_yq.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_wavelet_global_yi.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=512 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --y-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_wavelet_global_iq.jpg


######
metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --y-weight=0 \
          --i-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_wavelet_global_q.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --y-weight=0 \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_wavelet_global_i.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --i-weight=0 \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_wavelet_global_y.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --i-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_wavelet_global_yq.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_wavelet_global_yi.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=512 \
          --heigh=96 \
          --metric=wavelet \
          --search=global \
          --y-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_wavelet_global_iq.jpg

######
metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --y-weight=0 \
          --i-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_subpixel_global_q.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --y-weight=0 \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_subpixel_global_i.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --i-weight=0 \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_subpixel_global_y.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --i-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_subpixel_global_yq.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_subpixel_global_yi.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=20 \
          --width=512 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --y-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_20_subpixel_global_iq.jpg


######
metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --y-weight=0 \
          --i-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_subpixel_global_q.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --y-weight=0 \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_subpixel_global_i.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --i-weight=0 \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_subpixel_global_y.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --i-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_subpixel_global_yq.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=128 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --q-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_subpixel_global_yi.jpg

metapixel --library \
          ../data/ini2/ \
          --cheat=30 \
          --width=512 \
          --heigh=96 \
          --metric=subpixel \
          --search=global \
          --y-weight=0 \
          --metapixel \
          ../data/fin/2014.jpg \
          ../data/fin/2014_mosaic_30_subpixel_global_iq.jpg
