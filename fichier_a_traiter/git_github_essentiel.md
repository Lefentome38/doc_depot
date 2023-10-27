Voici la mise en page de votre texte sous forme de manuel :

# Manuel Git et GitHub

## Table des matières
1. [Introduction Git vs GitHub](#section1)
2. [Création d'un nouveau "repository" dans Git](#section2)
3. [Préparation et sauvegarde des modifications](#section3)
4. [Des branches et la fusion](#section4)
5. [GitHub et Remote Repository](#section5)
   - [Commandes de base (Terminal)](#section5.1)
   - [Commandes de base (Git)](#section5.2)
   - [Commandes de base (Branche de Git)](#section5.3)
   - [Commandes indispensables](#section5.4)

---

## 1. Introduction Git vs GitHub <a name="section1"></a>

Git est un système de contrôle de version décentralisé, tandis que GitHub est une plateforme d'hébergement de dépôts Git. Cette section explique les différences et l'utilité de ces deux outils.

### Git vs GitHub

Git est un système de contrôle de version décentralisé qui permet de gérer l'historique des modifications dans un projet. GitHub, en revanche, est une plateforme d'hébergement de dépôts Git, facilitant le travail collaboratif.

## 2. Création d'un nouveau "repository" dans Git <a name="section2"></a>

Cette section vous guide à travers les étapes pour créer un nouveau dépôt Git et l'installer sur votre système.

### Installation

Pour utiliser Git il vous faudre un terminal.
- **Mac** : Utilisez le Terminal ou iTerm2.
- **Windows** : Utilisez PowerShell ou Git Bash (similaire à un terminal Linux).
- **Linux** : Utilisez le terminal de base.

Pour utiliser Git, vous devez d'abord l'installer sur votre système. Mais avant se lancer dans l'installation, vérifiez si Git est déjà installé avec la commande `git --version`. Si ce n'est pas le cas, suivez les instructions pour l'installation sur votre système.
Sur Linux vous pouvez utiliser la commande suivante - `sudo apt install git-all` (-all en option)
Pour l'installation sur Mac et Windows, allé sur le site <a>git-scm.com</a>

Après l'installation, configurez votre nom et votre adresse e-mail en utilisant les commandes `git config`.

- `git config --global user.name <prenom ou "nom prenom">`
- `git config --global user.email <email>`

## 3. Préparation et sauvegarde des modifications <a name="section3"></a>

Cette section explique les commandes de base de Git pour préparer et sauvegarder vos modifications dans un dépôt Git.

### Commandes de base de Git

- `git add .` ou `git add nomFichier.txt` : Ajoutez des fichiers à la zone de préparation.
- `git status` : Affiche l'état des fichiers dans la zone de préparation.
- `git commit -m "info sur commit"` : Sauvegardez les changements avec un message de description.
- `git log` : Affiche l'historique des commits.

## 4. Des branches et la fusion <a name="section4"></a>

Les branches sont essentielles pour le développement parallèle et la gestion des fonctionnalités. Cette section couvre les commandes Git liées aux branches.

### Les branches dans Git

- `git branch <nom_de_la_branche>` : Créez une nouvelle branche.
- `git checkout <nom_de_la_branche>` : Basculez vers une autre branche.
- `git branch -m <nouveau_nom_de_la_branche>` : Changez le nom de la branche courante.
- `git merge <nom_de_la_branche>` : Fusionnez une branche avec la branche courante.
- `git branch -d <nom_de_la_branche>` : Supprimez une branche.

## 5. GitHub et Remote Repository <a name="section5"></a>

GitHub est une plateforme d'hébergement de dépôts Git, et les référentiels distants sont des copies des dépôts Git stockées sur des serveurs distants.

### Commandes de base (Terminal) <a name="section5.1"></a>

- `pwd` : Obtenez le chemin absolu du dossier actuel.
- `cd` ~/Bureau : Déplacez-vous dans un dossier spécifique.
- `mkdir` my-project : Créez un nouveau dossier.
- `echo "Some text" > file.txt` : Créez un fichier avec du texte.
- `ls` : Liste le contenu du dossier.
- `cat file.txt` : Lisez le contenu d'un fichier.
- `nano file.txt` : Modifiez un fichier dans le terminal.
- `rm file.txt` : Supprimez un fichier.

### Commandes de base (Git) <a name="section5.2"></a>

- `git config --list` : Affiche la configuration Git.
- `git init` -> initialisation de repository, qui va rester caché 
- `git add . ou nomFichier.txt` -> cette commande envoie le ou les fichiers dans la zonde d'index
- `git status` -> permet voir les fichiers qui sont dans cette zone
- `git commit -m "info sur commit"` -> permets sauvgarder les changements et les envoyer dans repository.
- `git log` -> affiche tous les commits et leurs hash
- `git checkout` <commit hash> -> pour passer d'une version à l'autre
- `git checkout` <nom de la branche> -> pour passer d'une branche à l'autre
- `git cat-file -t <hash>` -> permet connaitre le type de fichier
- `git cat-file -p <hash>` -> permet connaitre le contenu du fichier dans dans le format textuel, dans le cadre d'un commit on aura un rendu suivant:
    - tree 885ad0b1kea54ec499a30f5576f43822fffc3b -> c'est le hash du fichier
    - parent 888ff0b1kfa55ec498a30f5576f43822fffc3c  
    - parent fefad0b1k1a22ec499a30f5576f43822f4faaa
    - autor <Nom donné au global config> <mail donné au global config> 1111111111
    - commiter <Nom donné au global config> <mail donné au global config> 1111111111
    - Description du commit / info sur commit

### Commandes de base (Branche de Git) <a name="section5.3"></a>

- `git branch <nom_de_la_branche>` -> **Créer une nouvelle branche :** 
- `git checkout <nom_de_la_branche>` -> **Changer de branche :**
- `git checkout -b <nom_de_la_branche>` -> `-b` = `branch` -> **Créer et basculer sur une nouvelle branche :**
- `git branch -m <nouveau nom de la branceh>` -> **Change le nom de la courante** 
- `git branch` -> **Lister toutes les branches :**
- `git merge <nom_de_la_branche>` -> **Fusionner une branche avec la branche courante**
- `git branch -d <nom_de_la_branche>` -> **Supprimer une branche (on peut pas supprimer la branche courant) :**

### Commandes indispensables <a name="section5.4"></a>

- `git clone <url>` : Clonez un dépôt distant localement.
- `git init` : Initialisez un nouveau dépôt Git.
- `git remote add origin <url>` : Liez le dépôt local à un dépôt distant.
- `git checkout -b <nom_de_la_branche>` : Créez et basculez vers une nouvelle branche.
- `git add ...` : Ajoutez des fichiers à la zone de préparation.
- `git commit -m "..."` : Sauvegardez les changements avec un message de description.
- `git pull` : Récupérez les modifications du référentiel distant vers votre copie locale.
- `git push` : Envoyez vos modifications locales vers le référentiel distant.
- `git push -u origin <nom_de_la_branch>` : Envoyez une nouvelle branche vers le référentiel distant.
- `git merge <nom_de_la_branche>`: Fusionnez une branche avec la branche courante.
- `git branch -d <nom_de_la_branche>`: Supprimez une branche.
