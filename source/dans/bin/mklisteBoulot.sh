#!/bin/sh

#ls -1 /media/fred/5E70-41E0/*.mp3 | cut -f 5 -d/ | cut -f1,2,3 -d- | cat -n > liste.txt
ls -1 /media/fred/63B4-81D3/*.mp3 | cut -f 5 -d/ | cut -f1,2,3 -d- | cat -n > liste.txt
#ls -1 /home/fred/Musique/*.mp3 | cut -f 5 -d/ | cut -f1,2,3 -d- | cat -n > liste.txt

