#!/bin/sh

# preparation des images sources

# #####################
# preparation des images contenues dans le repertoire 
# de
# ../data/ini0
# vers
# ../data/ini1/
# #####################
# ------------------------
./mk_source_01.sh

# #####################
# recensement de toutes les vignettes
# de
# ../data/ini1/
# vers
# ../data/ini2/
# #####################
./mk_source_02.sh
