# liste des commande de git 

### les commandes de base 

- git init   (ouvrir un dépot local)
- git add .   (pour ajouter les modifes),(pour sélectioner tout les dossiers)
- git commit -m "le message"   (pour sauvegarder dans le dépot local)
- git push   (pour pousser les document/fichier vers GitHub)
- git status   (pour vérifier le depot local ou les commits)
- git config   (pout vérifier les infos)
- git clone Et/Le/Nom/Du/Depot    (pour cloner un dépot deja éxistant)
- git pull   (pour récupérer les donnés sur le dépot distant)
- git rm   (pour suprimer dossier/fichier)
    - rf (pout tout supprimer)
- git mkdir (pour créer un dossier)
- git touch (pour créer un fichier)

### pour relier le dépot local et le dépot distant(GitHub
)
- git remote add origin git@github.com:Lefentome38/depot_test.git   (le lien du dépot distence)
- git git branch -M main   (pour sélectioner la branch main "je crois") 
- git push -u origin main   (pour pousser vers orign main )

### pour les branchs

- git checkout -b nom-branch   (pour créer une branche)
- git checkout -d nom-branch   (pour supprimer une branche)
- git checkout nom-branch   (pour aller sur une branche)
- git branch   (pour regarder les branches( * = branche sléctionné))
- git merge   (fusionner une branche dans la branche active)
    - (*branch_1) git merge branch_2 ---fusion---> branch_1 (tout en local)
- git rebase nom-branch   (Ctrl-x + Ctrl-v sur le commit a jour sur le depot distant)
- git tag nom-tag   (pour donner un tag) 

![MarineGEO circle logo](/assets/img/MarineGEO_logo.png "MarineGEO logo")

### sources 
- https://www.hostinger.fr/tutoriels/commandes-git
- https://gist.github.com/laurentperroteau/9d55a4ff37b5765fdc39651147109cf5