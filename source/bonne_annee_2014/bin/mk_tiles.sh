#!/bin/sh


# #####################
# creation des tuiles
# #####################

gdal2tiles.py -p raster \
              -w openlayers \
              -t "Bonne Annee 2014" \
              -n \
              -v \
              ../data/fin/2014_mosaic_20_wavelet_local.jpg \
              ../data/fin/tiles/
