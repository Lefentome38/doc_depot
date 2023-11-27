# TP - Docker

Pour essayer Docker, il va falloir installer Docker Desktop
https://www.docker.com/products/docker-desktop

Et activer WSL sur Docker Desktop
https://docs.docker.com/docker-for-windows/wsl/

## Post Installation

Pour vérifier que Docker est bien installé, on peut utiliser la commande `docker version` :

```bash
docker version
```

## Tuto officiel

https://www.docker.com/101-tutorial/

Et suivez les instructions pour Docker Desktop
Lancer le terminal et exécuter la commande suivante :

```bash
docker run -dp 80:80 docker/getting-started
```

Puis ouvrir le navigateur sur http://localhost

Réalisez les premières étapes du tutoriel :

- [x] Getting Started : Quelques infos de base sur Docker 
- [x] Our Application : la todo list et comment la lancer 
- [x] Updating our App : Comment mettre à jour notre application 
- [x] Sharing our App : Comment partager notre application 

## Notre TP à nous

[x] Nous allons créer une application React avec un serveur NodeJS
[x] Puis nous allons Dockeriser notre application

### Comment s'y prendre ?

1 - [x] Créer un dossier TP-Docker-app-fullstack
2 - Créer une application NodeJS + TS et nommez le dossier : server
    - [x] Créer un serveur express
    - [x] port 3000
    - [x] cors
    - [x] body-parser json
    - [x] routes 
        - [x] GET /server/time -> renvoie l'heure du serveur
        - [x] GET /hello/:name -> renvoie un message de bienvenue avec un nom passé en paramètre
3 - Dockeriser l'application server
    - Dockerfile
        - port 1992
        - [x] .dockerignore
4 - Créer une application React + TS avec vite et nommez le dossier : client
    - Dans le composant App, ajouter un routing avec 2 routes
        - / 
            - afficher un formulaire pour un nom d'utilisateur
            - envoier le nom d'utilisateur à l'API sur la route /hello/:name
            - affichez le message de bienvenue renvoyé par le serveur
        - /time -> afficher l'heure du serveur (grâce à l'API)
5 - Dockeriser l'application client
    - Dockerfile
    - .dockerignore
    - Comment lancer une application "client" ?
6 - Lancer un container du serveur sur le port 2023
7 - Lancer un container du client sur le port 1992

## Docker compose ?

Après le cours sur docker compose essayer de dockeriser l'application avec docker compose
Mettez vous dans le dossier TP-Docker-app-fullstack
Créer un fichier docker-compose.yml
Et lancez la commande docker-compose up

## Docker compose 2 exemples

TP 2 - https://docs.docker.com/compose/gettingstarted/

TP 3 - https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker/6211677-creez-un-fichier-docker-compose-pour-orchestrer-vos-conteneurs

### commandes

```bash
docker build -t aymericrambaud/nom_image:nom_tag . # pour créer une image
docker run -d -p port_container:port_image aymericrambaud/nom_image:nom_tag # pour créer le container avec l'image associer et le nom du tag
```