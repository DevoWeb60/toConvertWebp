# To Convert to Webp

Ce petit script bash à pour but de gagner beaucoup de temps lorsque l'on doit convertir
beaucoup de fichier image.

Elle offre une alternative pour éviter la limitation des outils en ligne mais nécessite
quelques pré-requis.

## Sommaire

[Pré-requis](#Pré-requis)  
[Principe](#Principe)  
[Exemple](#Exemple)  
[Installation](#Installation)  
[Windows](#Windows)  
  

## Pré requis

-   Installer le package "webp" et avoir accès à la commande cwebp
-   Être sous Windows, MacOS ou Linux (Distribution Ubuntu et Debian testé)
-   Le script doit être positioner dans le dossier à coté des images à convertir

## Principe

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

Linux
```bash
  sudo apt install webp
```

MacOS

```bash
  brew install webp
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

## Windows 

Si tu n'as pas installer WSL voici comment faire.  
Ouvre le terminal en tant qu'administrateur puis tape cette commande pour installer Ubuntu en ligne de commande sur windows

```bash
   wsl --install
```

Une fois le téléchargement terminé, il va falloir redémarrer le PC pour qu'il installe Ubuntu lorsqu'il aura redémarrer.   
Une fois installer, entre un username et un password (Il faut bien retenir le password)  
Maintenant que tout est installer, tu peux lancer le terminal Windows et sélectionner Ubuntu via le petit menu déroulant.  

Tu es maintenant sur un terminal linux classique. Pour bien être à jour avant d'installer la dépendance requise pour le script, tape cette commande : 

```bash
  sudo apt update && sudo upgrade -y
```

Tu seras inviter à entrer le password précédemment saisi pour Linux puis à entrer "Y" pour accepter l'installation des mises à jours. 

Maintenant, tu es dans la partis Linux, pour passer dans les dossiers de Windows il faut passer par cette commande pour se balader dans les dossiers 

```bash
   cd /mnt/c/Users/(nom de ton dossier utilisateurs windows)/
```

Et voilà. Tu peux désormais suivre l'installation du script coté [Installation](#Installation)
