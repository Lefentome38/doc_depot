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
# Docker

![bg right](https://k49.fr.nf/content/images/size/w1000/2020/02/Microsoft-is-in-talks-to-buy-GitHub.jpeg)

---
# Qu'est ce qu'un conteneur ?

Vs une machine virtuelle ?

=> Avec ou sans resources

https://reactic.io/archives-blog/avantages-docker/


---

# Les avantages de Docker


- Flexible : Toute application peut être transformée en conteneur
- Léger : Ressources de la machine hôte
- Portable : son ordinateur, celui de ses clients ou un serveur distant
- Auto-suffisant : L’installation et la désinstallation de conteneurs ne dépend pas des autres conteneurs installés.
- Scalable : scalabilité horizontale aisément
- Sécurisé : isole les processus
- Auto documenté : Dockerfile suffisant pour décrire l’application et ses dépendances

---

# Structure d'un Dockerfile

- FROM : image de base
- WORKDIR /app : là où tout se passe
- COPY : copie des fichiers
- RUN : commandes à lancer
- ENV : variables d'environnement
- EXPOSE : port à exposer
- CMD : commande à lancer au démarrage
---

# Et après ?

1 - .dockerignore

2 - construire l'image
```bash
docker build . -t <your username>/mon-app
```

3 - Démarrer l'image
```bash
docker run -p 49160:8080 -d <your username>/node-web-app
```

4 - Lancer la ligne de commandes dans le conteneur
```bash
docker exec -it <container id> /bin/bash
```

---

# Et après ?

TP - Créer une api REST avec NodeJS et express

TP - Créer une application web avec React / Vue / Angular

