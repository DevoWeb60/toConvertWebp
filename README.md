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
[Ajouter au PATH](#PATH).   
[Windows](#Windows)

## Pré requis

-   Installer le package "webp" et avoir accès à la commande cwebp
-   Être sous Windows, MacOS ou Linux (Distribution Ubuntu et Debian testé)
-   Le script doit être positioner dans le dossier à coté des images à convertir OU ajouter au PATH

## Principe

toConvert prend un paramètre, le nom du dossier d'exportation. Il peut être appelé comme on le veut et va être créer si il n'existe pas.  

Le script va scanner tout les fichiers et dossier du dossier current pour filtrer et garder uniquement les fichiers png, jpg et jpeg.  

Ensuite on execute la dépendance webp pour convertir et placer les fichiers converti dans le dossier d'exportation voulu

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

Copie le code du script via le repository puis colle le dans un fichier avec l'extension .sh Veille bien
à ce que le nom du fichier soit bien "toConvert.sh".

Dans le cas ou tu souhaite le renommer, il faudra modifier la variable scriptName dans le code.

Il suffit de taper la commande pour le rendre exécutable.

```bash
    chmod +x ./toConvert.sh
```

Désormais tu peux placer tout les fichiers image à coté du script puis de taper la commande suivante :

```bash
   ./toConvert NomDossierExport
```

Enjoy !

### PATH

Créer un dossier, dans mon cas "bin" (peu importe le nom) via cette commande

```
  mkdir ~/bin
```

Place le script dans ce nouveau dossier.

```
  sudo mv toConvert.sh ~/bin/toConvert.sh
```

Pour finir on va se rendre dans ce dossier puis entrer la commande "pwd" pour obtenir le chemin de ce dossier (Peu varié en fonction de l'OS)

```
  pwd
  /Users/devoweb/bin (MacOS)
```

Maintenant, on va pouvoir ajouter ce chemin à la variable PATH de cette façon. L'avantage est que pour différent script que tu voudras ajouter, il te suffira de le déplacer dans ce dossier.

```
  export PATH=$PATH:/Users/devoweb/bin
```

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
