# Anonymisation-projet-android

## Description

Ce script Bash permet de remplacer plusieurs anciennes URLs par une nouvelle URL dans les fichiers d'un projet Android. Il exclut les dossiers `.git` et `build` pour éviter les fichiers temporaires et les fichiers de versioning.

## Utilisation

1. **Cloner le dépôt** :

   ```bash
   git clone https://github.com/Gabin221/Anonymisation-projet-android
   ```

2. **Naviguer dans le répertoire du projet :**

```bash
cd <REPERTOIRE_DU_PROJET>
```

3. **Rendre le script exécutable :**

```bash
chmod +x anonymisation_project_android.sh
```

4. **Exécuter le script :**

```bash
./anonymisation_project_android.sh
```

## Personnalisation

+ **Anciennes URLs :** Modifiez la liste ancienne_urls dans le script pour inclure les URLs à remplacer.
+ **Nouvelle URL :** Changez la variable nouvelle_url pour définir l'URL de remplacement.

## Exclusions

Le script exclut les fichiers dans les dossiers **.git** et **build** pour éviter les fichiers temporaires et de versioning.
