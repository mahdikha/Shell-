# !/bin/bash


echo "donner votre mot de passe: "
read pwd 
if [ $pwd = 'abc' ]; then 
echo "mot de passe correct"
./menu.sh
else 
echo "mot de passe incorrect"
fi

