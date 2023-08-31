# liste des commande de git 

### les commandes de base 

- git init   (ouvrir un dépot local)
- git add .   (pour ajouter les modifes),(pour sélectioner tout les dossiers)
- git commit -m "le message"   (pour sauvegarder dans le dépot local)
- git push   (pour pousser les document/fichier vers GitHub)
- git status   (pour vérifier le depot local ou les commits)
- git config   (pout vérifier les infos)
- git clone Le/Nom/Du/Depot/distant    (pour cloner un dépot deja éxistant)
- git pull   (pour récupérer les donnés sur le dépot distant)


### pour relier le dépot local et le dépot distant(GitHub)

- git remote add origin git@github.com:Lefentome38/depot_test.git   (le lien du dépot distence)
- git git branch -M main   (pour sélectioner la branch main "je crois") 
- git push -u origin main   (pour pousser vers orign main )

#### d'autre commande avec le dépot distant

- git config --get remote.origin.url (pour regarder l'url du dépot distant)

### pour les branchs

- git checkout -b nom-branch   (pour créer une branche)
- git checkout -d nom-branch   (pour supprimer une branche)
- git checkout nom-branch   (pour aller sur une branche)
- git branch   (pour regarder les branches( * = branche sléctionné))
- git merge   (fusionner une branche dans la branche active)
    - (*branch_1) git merge branch_2 ---fusion---> branch_1 (tout en local)
- git rebase nom-branch   (s'est comme un (Ctrl-x + Ctrl-v) sur le commit a jour sur le depot distant)
- git tag nom-tag   (pour donner un tag) 

### sources 
- https://www.hostinger.fr/tutoriels/commandes-git
- https://gist.github.com/laurentperroteau/9d55a4ff37b5765fdc39651147109cf5




# liste des commandes linux

### les commandes de base 

- ls (pour vérifier le contenu du dossier)
- ll (pour vérifier les dossier cacheé (?))
- cd (pour ce déplacer entre les dossier)
    cd (Aller dans le répertoire home)
    cd ..(Monter d’un niveau)
    cd - (Retourner au répertoire précédent)
- rm  (pour suprimer dossier/fichier)
    - rf (pout tout supprimer)
- cp (permet de copier des dossiers 
    [
    cp nom/du/dossier nom/du/dossier_copier
    ])
    cp - r (permet de copier des dossiers et les répertoires)
- rm (permet de supprimer un dossier)
    rm -r (supprimer un répertoire vide)
    rm -rf (pour tout sup, pour supprimer un répertoire avec son contenu)
- mv (déplacer ou renommer des fichiers et des répertoires 
    [ deplacer :
    mv source_file destination_folder/

    mv command_list.txt commands/
    ] 
    [ renomer :
    mv nom/du/fichier le_nouveau_nom/du/fichier
    ])
- mkdir (pour créer un dossier)
    mkdir -p (pour créer un sous dossier)
- touch (pour créer un fichier)
- npm i (installez les dépendances)
- npm run dev (permet de lancer/voire le code)

### sources 

- https://kinsta.com/fr/blog/commandes-linux/