#!/bin/bash

# Arrête le script en cas d'erreur
set -e

# Vérifie si un message de commit est fourni
if [ -z "$1" ]; then
    echo "Erreur : Un message de commit est requis."
    echo "Utilisation : ./push_that.sh \"Votre message de commit\""
    exit 1
fi

# Récupère le premier paramètre comme message de commit
COMMIT_MESSAGE="$1"

# Ajoute tous les fichiers au suivi de Git
git add .

# Valide les changements avec le message de commit fourni
git commit -m "$COMMIT_MESSAGE"

# Pousse les changements vers le dépôt
git push

echo "Les fichiers ont été ajoutés, validés et poussés avec succès !"

