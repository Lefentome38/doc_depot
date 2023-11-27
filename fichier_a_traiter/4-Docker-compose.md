---
marp: true
theme: gaia
markdown.marp.enableHtml: true
paginate: true
_paginate: false
style: @import url('https://unpkg.com/tailwindcss@^2/dist/utilities.min.css');
---
<style>
  section {
    background-color: #fefefe;
    color: #333;
  }
</style>

<!-- _class: lead -->
<!-- _color: #555 -->
# Docker compose

![bg right](https://k49.fr.nf/content/images/size/w1000/2020/02/Microsoft-is-in-talks-to-buy-GitHub.jpeg)

---

# Qu'est ce que Docker compose ?

- Docker compose est un outil qui permet de décrire et lancer plusieurs conteneurs en même temps
- Il permet de décrire les relations entre les conteneurs
- Il permet de décrire les variables d'environnement des différents conteneurs
- Il permet de décrire les volumes partagés entre les conteneurs
- Il permet de décrire les ports exposés par les conteneurs

---

# Comment utiliser un docker compose?

- **docker-compose up -d** vous permettra de démarrer l'ensemble des conteneurs en arrière-plan
- **docker-compose ps** vous permettra de voir le statut de l'ensemble de votre stack
- **docker-compose logs -f --tail 5** vous permettra d'afficher les logs de votre stack
- **docker-compose stop** vous permettra d'arrêter l'ensemble des services d'une stack

---

# Comment utiliser un docker compose?

- **docker-compose down** vous permettra de détruire l'ensemble des ressources d'une stack

- **docker-compose config** vous permettra de valider la syntaxe de votre fichier docker-compose.yml

---

# L'architecture en microservices

1 BDD pour une API

1 BDD pour plusieurs microservices

Utilité ? Plusieurs techno, plusieurs équipes, plusieurs langages, plusieurs versions, plusieurs maturités

https://www.express-gateway.io/getting-started/

---

# Le rôle de Docker compose

docker compose permet de décrire l'architecture en microservices
de manière simple et efficace

Le fichier docker-compose.yml permet de décrire l'architecture
et de lancer les conteneurs en une seule commande

Plusieurs outils permettent de gérer un conteneur et ses interactions avec d'autres conteneurs

---

# Outils de docker compose

- **image** qui permet de spécifier l'image source pour le conteneur
- **build** qui permet de spécifier le Dockerfile source pour créer l'image du conteneur
- **volume** qui permet de spécifier les points de montage entre le système hôte et les conteneurs
- **restart** qui permet de définir le comportement du conteneur en cas d'arrêt du processus
- **secret** qui permet de définir les secrets utilisés par le conteneur

---

# Outils de docker compose

- **environment** qui permet de définir les variables d’environnement
- **depends_on** qui permet de dire que le conteneur dépend d'un autre conteneur
- **ports** qui permet de définir les ports disponibles entre la machine host et le conteneur
- **networks** qui permet de définir les réseaux disponibles entre les conteneurs

https://devhints.io/docker-compose

---

# Exemple de docker compose

```yaml
version: '3.7'

database:
  image: mysql:5.7
  restart: always
  environment:
    MYSQL_ROOT_PASSWORD: root
    MYSQL_DATABASE: database
    MYSQL_USER: user
    MYSQL_PASSWORD: password
  ports:
    - 3306:3306
  volumes:
    - ./database:/var/lib/mysql

wordpress:
  image: wordpress:latest
  restart: always
  depends_on:
    - database
  ports:
    - 80:80
  environment:
    WORDPRESS_DB_HOST: database:3306
    WORDPRESS_DB_USER: user
    WORDPRESS_DB_PASSWORD: password
    WORDPRESS_DB_NAME: database
  volumes:
    - ./wordpress:/var/www/html
```

---

# Mise en pratique

TP 2 - https://docs.docker.com/compose/gettingstarted/

TP 3 - https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker/6211677-creez-un-fichier-docker-compose-pour-orchestrer-vos-conteneurs