#! /bin/bash
affiche()
{
echo "date d'aujourdhui : " 
date +"%Y-%m-%d" 
echo "l'heure : "
date +%R
echo
echo "nombre des lignes dans le dossier meminfo:" 
wc -l /proc/meminfo 
echo
echo 
echo "total:" 
grep 'Total' /proc/meminfo 
echo 
echo "free :" 
grep 'Free' /proc/meminfo 
echo 
echo 
echo "les informations les plus importantes sont : " 
head -4 /proc/meminfo 
}
