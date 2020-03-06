#! /bin/bash
memoire()
{
head -4 /proc/meminfo
}

disque()
{
cat /proc/diskstats
}

version()
{
uname -a > noyau
cut -d " " -f 3 noyau 
}

afficher()
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

enregistrer()
{
echo " les informations sont bien sauvgardés accéder au fichier fichier_info pour s'assurer "
echo "date d'aujourdhui : " > fichier_info
date +"%Y-%m-%d" >> fichier_info
echo "l'heure : " >> fichier_info
date +%R >> fichier_info
echo >> fichier_info
echo "nombre des lignes dans le dossier meminfo:" >> fichier_info
wc -l /proc/meminfo >> fichier_info
echo >> fichier_info
echo >> fichier_info 
echo "total:" >> fichier_info 
grep 'Total' /proc/meminfo >> fichier_info
echo >> fichier_info
echo "free :" >> fichier_info 
grep 'Free' /proc/meminfo >> fichier_info 
echo >> fichier_info
echo >> fichier_info
echo "les informations les plus importantes sont : " >> fichier_info
head -4 /proc/meminfo >> fichier_info
}




