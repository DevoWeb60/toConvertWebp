# To Convert to Webp avec Linux

Ce petit script bash à pour but de gagner beaucoup de temps lorsque l'on doit convertir
beaucoup de fichier image.

Elle offre une alternative pour éviter la limitation des outils en ligne mais nécessite
quelques pré-requis.

## Sommaire

[Pré-requis](#Pré-requis)  
[Principe](#Principe)  
[Installation](#Installation)  
[Exemple](#Exemple)

## Pré requis

-   Installer le package "webp" et avoir accès à la commande cwebp
-   Être sous une distribution Linux (testé sous Debian et Ubuntu)
-   Le script doit être positioner dans le dossier à coté des images à convertir

## Principe de base

Le script est à

## Exemple

Structure des dossiers :

-   ./toConvert.bash
-   ./image1.png
-   ./image2.jpg
-   ./image3.jpeg

./toConvert.bash export

Nouvelle structure :

-   ./toConvert.bash
-   ./image1.png
-   ./image2.jpg
-   ./image3.jpeg
-   ./export
-   ./export/image1.webp
-   ./export/image2.webp
-   ./export/image3.webp

## Installation

Installe le package webp

```bash
  sudo apt install webp
```

Clone le projet via Githup Desktop, Github CLI, ou git.

### ou

Copie le code du script via le repository puis colle le dans un fichier avec l'extension .bash Veille bien
à ce que le nom du fichier soit bien "toConvert.bash".

Dans le cas ou tu souhaite le renommer, il faudra modifier la variable scriptName dans le code.

Il suffit de taper la commande pour le rendre exécutable.

```bash
    chmod +x ./toConvert.bash
```

Désormais tu peux placer tout les fichiers image à coté du script puis de taper la commande suivante :

```bash
   ./toConvert NomDossierExport
```

Enjoy !
