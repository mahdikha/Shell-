while :
do

echo "

----- MENU PRINCIPAL -----
qu'est ce vous voulez utilisé:-
(1) Terminal
(2)  Yad
(3) 0 = Quitterv
"

read choix_menu_pricipal
case $choix_menu_pricipal in
*1)
./Terminal.sh
 ;;

*2) 
./Yad.sh
;;

3| 0 | q ) echo "L'utilisateur $USER à quitter le programme" ; echo ; exit 0 ;;
*) echo "Erreur saisi menu principal";;
esac
done
echo
exit 0
