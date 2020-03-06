#! /bin/bash

source fonction.sh

yad --center --width=500 --height=125 --text "Would you like to run the app ?" \
---button=gtk-no:1 --button=gtk-yes:0 --buttons-layout=center
while :
do
yad --center --width=500 --height=125 --text="Choose a command to launch :" \
--button="-lmem":1 \
--button="-lpart":2 \
--button="-lkernel":3 \
--button="-help":4 \
--button="-s1":5 \
--button="-s2":6 \
--button="info supp":7 

foo=$?



if [[ $foo -eq 1 ]]; then
memoire $2

elif [[ $foo -eq 2 ]]; then
disque $2

elif [[ $foo -eq 3 ]]; then
version $2

elif [[ $foo -eq 4 ]]; then
yad --center --width=600 --height=100 --text="`echo "◦ l’option -h pour vous aider
◦ l’option -lmem pour afficher les informatios en relation avec la mémoire
◦ l’option -lpart pour afficher les informations en relation avec les partitions du disque
◦ l’option -lkernel pour afficher la version du noyau linux

◦ l’option -s1 ou --save pour sauvagarder les informations les plus pertinentes dans un fichier 
◦ l’option -s2 pour afficher ces memes caracteristique pertinentes en ne spécifiant  pas d'arguments 
◦ l’option -h ou –help pour afficher le help
◦ autre informations -> info supp ?" `"


elif [[ $foo -eq 5 ]]; then
enregistrer $2

elif [[ $foo -eq 6 ]]; then
afficher $2

elif [[ $foo -eq 7 ]]; then
./infosupp.sh

else
cancel && exit 0

fi
done
