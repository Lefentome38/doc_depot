# Correction TP Docker

## Installation

Sur toutes les machines ok pour docker
Pour Docker Desktop, attention ce n'est pas toujours aussi simple.
Attention d'activer la virtualisation. Si vous avez WSL c'est souvent déjà fait ^^

## Tuto docker

A faire et refaire !

En résumé : 
- docker run
    - port localPort:imagePort
    - d
    - image
- Dockerfile
    - alpine + node = <3
    - CACHED
        - Ordre des commandes !!!
        - exemple de npm install
- docker build
    - tag pour le nom de l'image
    - chemin du Dockerfile
- docker push
    - sur docker hub ou un autre registry

## Notre projet back + front

### Backend

Il vous faut un projet starter pour faire du back en node !
