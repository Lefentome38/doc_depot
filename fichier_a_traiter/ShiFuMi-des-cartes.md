# Shi Fu Mi des cartes

## Objectif

Créer un jeu de Shi Fu Mi des cartes.
Ce jeu se joue à deux joueurs (1 humain vs 1 IA).
Le but est de gagner le plus de points possibles en 4 manches.
Chaque joueur commence avec 5 cartes en main. Chaque carte a une valeur de 1 à 10.
Toutes les cartes sont donc distribuées au début de la partie.
Le joueur avec la moins grosse valeur totale en main gagne un point de compensation. 
Chaque tour de jeu, les joueurs jouent une carte. La plus grosse valeur gagne le tour.
A la fin des 4 manches, le joueur avec le plus de points gagne la partie.
En cas d'égalité, le joueur avec le plus de points de compensation gagne la partie.
En cas de nouvelle égalité, le joueur 1 gagne la partie, car les robots sont moins susceptibles que les humains ^^

Exemple mains de départ :

J1 - 1, 3, 4, 8, 10 = 26
IA - 2, 5, 6, 7, 9 = 29
J1 gagne un point de compensation.

1 - 5 = Joueur 2 gagne
3 - 2 = Joueur 1 gagne
4 - 6 = Joueur 2 gagne
8 - 7 = Joueur 1 gagne
10 - 9 = Joueur 1 gagne

J1 marque 4 points (3 + 1 de compensation)
IA marque 2 points

## Missions

### 1. Créer un composant Card

Créer un composant Card qui a une propriété `value` et qui affiche cette valeur.
Le composant est un carré de 150px de côté avec une bordure noire de 2px et un arrondi de 10%.
Le fond est blanc. La couleur du texte est en bleu.

props : value (number) + selected (boolean) + onClick (function)

### 2. Créer un composant Hand

Créer un composant Hand qui prend en paramètre un tableau de valeurs de cartes et qui affiche les cartes correspondantes.
Le composant est une flexbox centrée avec un espace entre chaque carte de 10px.
Le composant peut contenir jusqu'à 5 cartes.

Quelles sont les props nécessaires ?

### 3. Utiliser le composant Hand dans App

Dans le fichier App.tsx :
1 - Créer une pioche de cartes allant de 1 à 10.
2 - Ajouter un bouton "Jouer" qui permet de mélanger les cartes et de les distribuer au joueur et à l'IA, et de commencer la partie.
3 - Afficher la main du joueur et permettre la sélection d'une carte.
4 - Ajouter un bouton "Jouer la carte" qui permet de jouer la carte sélectionnée en la confrontant à une carte aléatoirement sélectionnée de la main de l'IA. 
5 - Afficher le résultat du tour (carte jouée par le joueur, carte jouée par l'IA, gagnant du tour) et au bout de 3 secondes, passer au tour suivant.
6 - Maintenez à jour dans l'affichage, le score du joueur et de l'IA.
7 - A la fin des 4 manches, afficher le gagnant de la partie.