# Etapes pour le fichier .nvmrc

1 - Créer un fichier .nvmrc à la racine du projet
2 - Lancer la commande `nvm ls-remote` pour voir les versions de node disponibles
3 - Ajouter la version de node souhaitée dans le fichier (ex: v18.17.1)
4 - Lancer la commande `nvm use` pour utiliser la version de node souhaitée
5 - Si la version n'a pas été installée au préalable, lancer la commande `nvm install` pour l'installer
6 - Vérifier que la version de node utilisée est bien celle souhaitée avec la commande `node -v`
7 - Supprimer le dossier node_modules et supprimez le fichier package-lock.json puis relancer la commande `npm install` pour installer les dépendances à nouveau
