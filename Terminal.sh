while :
do

echo "

----- MENU PRINCIPAL -----

(1) afficher les caractéristique harware de machine
(2) afficher et sauvegarder les informations les plus pertinentes
(3) 0 = Quitter
"

read choix_menu_pricipal
case $choix_menu_pricipal in
*1)
./Terminal1.sh
 ;;

*2)
./Terminal2.sh
;;

3| 0 | q ) echo "L'utilisateur $USER à quitter le programme" ; echo ; exit 0 ;;
*) echo "Erreur saisi menu principal";;
esac
done
echo
exit 0

