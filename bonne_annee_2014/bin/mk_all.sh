#!/bin/sh

# creation d'une image contenant le texte Bonne Année 2014

# #####################
# creation des vignettes
# à partir d'un repertoire d'images
# #####################
# ------------------------
time ./mk_source.sh

# #####################
# Creation de l'image finale
# et creation de la mosaique
# #####################
time ./mk_destination.sh

# #####################
# Creation des tuiles
# #####################
time ./mk_tiles.sh
