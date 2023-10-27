# comment installer unbuntu sous windows

- Lancer wsl
- lancer powershell
- faire la commande  `wsl --install`
- redemarrer le pc en faisant la maj


# comment connecter github a SSH

- lancer le cmd 
- faire la commande `/ssh-keygen` sous windows ou sinon `ssh-keygen` sous linux
- recuperer la clef SSH (.pub) dans le dossier C:\Utilisateurs\[user]\.ssh
- la coller dans github dans le dossier "SSH and GPG keys/Authentication Keys"


# comment installer NVM

- lancer powershell
- faire `wsl`
- faire ensuite `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash`
- pour verifier si c'est bien installer faire `command -v nvm` si ca renvoie "
nvm" ca fonctionne sinon redemarrer powershell et si ca ne marche toujours pas voir point 1.

# comment installer node JS

- nvm install node # "node" is an alias for the latest version

- nvm ls-remote

- nvm install-latest-npm

- nvm install iojs

# comment push sur github

- aller dans le dossier voulu
- faire git init dans le bon dossier 
- faire un git status pour etre sur que ca fonctionne
- git add .
- faire un git commit -m "nom voulu"
- recupérer la 1ere ligne de commande en dessous de "…or push an existing repository from the command line"
![df](./Capture%20d'%C3%A9cran%202023-06-16%20120557.png
)
- la coller dans wsl
- coller la commande qui apparait qui ressemble a git push --set-upstream origin master
- git push


# install Ubuntu

## 1-WSL

lien **https://learn.microsoft.com/fr-fr/windows/wsl/install** pour expliquer l'installation de WSL

- 1 taper dans la bare de recherche windows **PouwerShell**
- 2 taper dans la console 
```shell
wsl --install
```
- 3 une fois la commende lancé autorisé l'accé avec **les droits admin** puis l'installation commence.
- 4 attendre que l'installation finisse (5 minutes pas plus)
- 5 redémarer l'ordinateur
- 6 lors du redémarage (5 minutes) une console de Lunix souvre et se referme tout suite (normal) 

### Ubuntu 

- 1 ouvrire **Powershell** puis taper la commende 
```shell
wsl --list --online
```
- 2 vérifier si Ubuntu est activé (oui/non)
- 3/non télécharger Ubuntu 
```shell
wsl --install -id Ubuntu
```
- 3/oui taper dans la console 
```shell
Ubuntu
```

- 4 maintenant les problèmes
- 5  

(pas dans l'ordre:
- aller dans le BIOS pour activer la virtualisation
- hyper v pour cocher des trucs utile comme hyper v 
- attention aux codes d'érreurs **"ex : 0x80370102"** 
- créer un nom (pour la machine) et un mdp (attention pour le mdp il ne peut pas le visualiser donc attention quand vous le tapper) et il aussi des trucs aves les touche du clavier
)


# 2-GIT

(pas dans l'odre:)



# 3-GITHUB

## générer une clé ssh

lien **https://docs.github.com/en/authentication/connecting-to-github-with-ssh** 
- 1 une fois sur la page aller sur la page **"générer une nouvelle clé ssh"**
a gauche de la page 
- 2 une fois sur la page sivre les instruction (facile)
- 3 ouvrire un terminal 
- 4 coller le texte dans le terminal en écrvient votre mail GitHub
 ```shell
ssh-keygen -t ed25519 -C "your_email@example.com"
```
- 5 tapez sur entrer
- 6 (Overwrite (y/n)?) voullez vous écrasser la version déja éxistent 
- 7 taper pour vérifier la liste des clés ssh
```shell 
ls -al ~/.ssh
```
- 8 ensuite allez sur la page **"Ajout d’une nouvelle clé SSH à votre compte GitHub"** et suivé les instruction (encore plus facile)
- 9 toujour dans le terminal taper 
```shell
cat ~/.ssh/id_ed25519.pub
```
- 10 copier le "ssh-ed25519........you_email@example.com"
```shell
hakira@ARAPC5CG61929NQ:~$ cat ~/.ssh/id_ed25519.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIvwbkBxB7puwPcUn+6ZyBJTmyMPrqnvlr1wFRKVufRm your_email@example.com
hakira@ARAPC5CG61929NQ:~$
```

## ajouté une clé sur GitHub
- 1 aller sur GitHub connectez vous à votre compte 
- 2 une fois dans votre compte, allez dans les parramètres puis dans les clé SSH et nouvelle clé
- 3 dans **titre** le nom que vous voullez, **type de clé** resté dans d'authentification
et enfin dans **clé** vous collez le gros trus juste au dessu
- 4 puis clicker dans **ajouté clé ssh** 
- 5 la clé est enregistrer 


# 4 NVM

lien **https://github.com/nvm-sh/nvm**
- 1 ouvrez le lien, puis descendez vers instalation et vous copiez 
```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```
- 2  ouvrire un terminal 
- 3 tapez, pour vérifier la version actuelle
```shell
nvm -v
```
- 4 tapez, pour voirs les versions 
```shell
nvm ls-remote
```
- 5 ensuite installer la version 18.16.0
```shell
nvm install 18.16.0
```
- 6 puis tapez. pour vois la version qui est utilisée/installée
```shell
nvm ls
```
- 7 et si besoin utilisé le, pour changer de version
```shell
nvm use (version)
```
# 5-VSCode extension

- 1 ouvrez VScode 
- 2 allez dans les extensions 
- 3 chercher dans la bare de recherche **Dev Containers**
- 4 téléchager le (il téléchargera aussi d'autre trucs)
- 5 maintenat... (bah je ne sais trop exactement ce que sa apporte en plus, sauf que sa permet de travailler sur du Linux tout étent sur du windows "pont")