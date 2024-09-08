#!/bin/bash

# Script pour remplacer plusieurs URLs dans les fichiers d'un projet Android

# Liste des anciennes URLs à remplacer
ancienne_urls=(
    "use_your"
    "urls"
)

# Nouvelle URL à utiliser pour le remplacement
nouvelle_url="new_url"

# Fonction pour remplacer les URLs dans un fichier
replace_in_file() {
    local fichier="$1"
    local url
    for url in "${ancienne_urls[@]}"; do
        if grep -q "$url" "$fichier"; then
            echo "Modification de l'URL '$url' dans : $fichier"
            sed -i "s|$url|$nouvelle_url|g" "$fichier"
        fi
    done
}

# Parcourir tous les fichiers dans les sous-dossiers (exclut .git et build)
find . -type f \( ! -path "*.git*" ! -path "*build*" \) -print0 | while IFS= read -r -d '' fichier; do
    replace_in_file "$fichier"
done

echo "Remplacement terminé."
