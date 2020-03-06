#! /bin/bash

yad --center --width=500 --height=125 --text "tu veux savoir d'autre informations via l'emplacement /proc ?" \
---button=gtk-no:1 --button=gtk-yes:0 --buttons-layout=center
choix=$?
if [[ $choix -eq 1 ]]; then 
cancel && exit 0
elif [[ $choix -eq 0 ]]; then
while :
do

yad --center --width=500 --height=125 --text="Choose a command to launch :" \
--button="-cpuinfo":1 \
--button="-meminfo":2 \
--button="-mounts":3 \
--button="-devices":4 \
--button="-help":5 \



foo=$?


if [[ $foo -eq 1 ]]; then
cat /proc/cpuinfo

elif [[ $foo -eq 2 ]]; then
cat /proc/meminfo

elif [[ $foo -eq 3 ]]; then
cat /proc/mounts

elif [[ $foo -eq 4 ]]; then
cat /proc/devices

elif [[ $foo -eq 5 ]]; then
yad --center --width=600 --height=100 --text="`echo "◦ l’option -help pour vous aider
◦ l’option -cpuinfo concerne les infos sur le processeur(modele,famille,taille du cache..)
◦ l’option -meminfo concerne les infos sur la mémoire physique(Ram),l'espace du SWAP etc..
◦ l’option -mounts concerne les infos sur les systemes de fichiers déja montés
◦ l’option -devices concerne les infos sur les périphériques disponibles" `"


else
cancel && exit 0

fi
done
fi
