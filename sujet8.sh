#! /bin/bash

source help.sh
source afficheinfo.sh
source diskparts.sh
source linuxversion.sh
source meminfo.sh
source saveinfo.sh

yad --center --width=500 --height=250 --text "Welcome To Shell Project!" \
---button=sortir:1 \
||
--button=entrer:0 \
--buttons-layout=center
choix=$?
if [[ $choix -eq 1 ]]; then 
cancel && exit 0 
elif [[ $choix -eq 0 ]]; then
while :
do
yad --center --width=500 --height=125 --text="choices available :" \
--button="-option -lmem" :1 \
--button="-option -lpart":2 \
--button="-option -lkernel":3 \
--button="-option -help":4 \
--button="-option -s1":5 \
--button="-option -s2":6 \

a=$?

if [[ $a -eq 1 ]]; then
memoire $2

elif [[ $a -eq 2 ]]; then
disque $2

elif [[ $a -eq 3 ]]; then
version $2

elif [[ $a -eq 4  ]]; then
aide $2

elif [[ $a -eq 5 ]]; then
save $2

elif [[ $a -eq 6 ]]; then
affiche $2

else
cancel && exit 0

fi
done
fi 
