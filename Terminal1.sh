#! /bin/bash

source fonction.sh

while :
do
echo "**************************************************************"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~MENU~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "tapez 0 pour quitter"
echo "(1)afficher les sinformations en relation avec la memoire par -lmem "
echo " (2)afficher les informations en relation avec la partition du disque par -lpart"
echo " (3)afficher la version du noyau linux par -lkernel"
echo " (4)lancer aide par -help ou par -h"
echo "**************************************************************"
echo "votre choix"
read choix
case $choix in 

*-lmem) 
memoire $2
;;
*-lpart)  
disque $2
;;
*-lkernel) 
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
version $2
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
;;
*-h)
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
 ./help.sh 
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
;;
0)
echo "L'utilisateur $USER à quitter le programme"
echo "Merci et à bientot"
 exit 0
  ;;
esac
done
