# Projet teamwork

## Accueil jeux

2 groupes :
- groupe Just One
- groupe esquissez

Dans ces deux jeux vous avez des contraintes :
Ne pas pouvoir communiquer et essayer de vous faire comprendre au mieux.
Et une connaissance partielle de l'information.

## Cours git flow

- Créer une branche par feature, fix, etc...
- Créer une branche main
- Rebase de la branche avant PR
- code review
- clotûre de la PR et merge de la branche

## Projet dev

en Groupes de 4 (1 de 5 potentiellement)
Vous réaliserez le projet le plus abouti en 24h.

Votre mission :
Créer une application de "top à l'aveugle".
Le jeu est simple :
- Un nombre aléatoire est affiché indiquant le nombre de secondes avant de recliquer sur le bouton 
- Un bouton est affiché avec écrit "Commencer"
- Ce même bouton doit alors prendre la valeur "Cliquer quand vous voulez !"
- Au moment du clique, on compare la durée entre le clique initial et le clique final, avec la durée visée initialement.

ex : 
durée visée = 12 secondes
clique à 12 h 01 min 20 sec
clique à 12 h 01 min 30 sec
=> durée entre cliques = 10 sec
=> erreur de deux secondes

Affichez le résultat de manière à informer l'utilisateur de sa performance (excellente, bonne, moyenne, mauvaise)
A vous de décider de l'affichage et de l'analyse du résultat.
A vous de décider de l'organisation du travail entre vous.

Utilisez au maximum la méthodologie de travail avec git : git flow