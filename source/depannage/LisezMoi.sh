#!/bin/sh
#
#


# Se connecter sur le PC des parents
echo "# Se connecter sur le PC des parents"
echo "ping 78.245.59.2"
echo "ssh mado@78.245.59.2"
echo "#"
echo "# Sur la machine distante, lancer le serveur VNC"
echo "x11vnc -display :0 -ncache 10"
echo "#"
echo "# Sur la machine locale, lancer le viewer"
echo "vncview -via mado@78.245.59.2 localhost:0"
echo "#"
echo "# Lancer un terminal"
echo "export DISPLAY=:0"
echo "xterm"

