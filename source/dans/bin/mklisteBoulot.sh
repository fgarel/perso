#!/bin/sh

ls -1 /media/fred/5E70-41E0/*.mp3 | cut -f 5 -d/ | cut -f1,2,3 -d- | cat -n > liste.txt
