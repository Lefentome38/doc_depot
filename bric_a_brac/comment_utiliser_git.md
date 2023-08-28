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