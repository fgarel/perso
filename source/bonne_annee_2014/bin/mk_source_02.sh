#!/bin/sh


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

