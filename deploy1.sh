#!/bin/bash
echo "$1 $2"
if [[ "$1" == "dev" && "$2" == "Staging" ]] || [[ "$1" == "Staging" && "$2" == "prod" ]]; then
find ./$1 -mindepth 1 -maxdepth 1 \( ! -name "config.json" \) -exec cp -r {} ./$2 \;
echo "Déploiement et migration de l'application terminés."
else
echo "Merci de vérifier le parametre saissi"
fi
