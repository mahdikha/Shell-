#! /bin/bash

source fonction.sh

while :
do
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~MENU~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "tapez 0 pour quitter"
echo "(1)sauvegarder les informations les plus pertinentes par -s1 "
echo " (2)afficher ces memes caracteristiques -s2"
echo "**************************************************************"
echo "votre choix"
read choix
case $choix in 

*-s1) 
enregistrer $2
;;
*-s2)  
afficher $2
;;

0)
echo "L'utilisateur $USER à quitter le programme"
echo "Merci et à bientot"
 exit 0
  ;;
esac
done
