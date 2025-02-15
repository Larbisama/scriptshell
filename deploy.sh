#!/bin/bash

flag=1
while [ $flag = 1 ] 
do 
read -p "Vers quel environnement souhaitez-vous copier (staging/prod) ? " env_cible
if [[ "$env_cible" != "staging" && "$env_cible" != "prod" ]]; then
echo "Environnement cible invalide. Veuillez choisir 'staging' ou 'prod'."
else 
flag=0
fi
done

find ./dev -mindepth 1 -maxdepth 1 \( ! -name "config.json" \) -exec cp -r {} ./env_cible \;
echo "Déploiement et migration de l'application terminés."

