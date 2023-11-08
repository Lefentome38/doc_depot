# Exercices

### Exercice 1 --OK--

Créer un composant `Counter` qui affiche un compteur et qui permet de l'incrémenter et de le décrémenter. --OK

### Exercice 2 --OK--

Créer un composant `Counter` qui affiche un compteur et qui permet de l'incrémenter et de le décrémenter. --OK
Ce composant doit être utilisé dans un composant `App` qui affiche deux compteurs. --OK
Chaque compteur doit avoir son propre état. --OK

exemple : --OK
compteur 1 = 0 compteur 2 = 0
clique sur le bouton + du compteur 1
compteur 1 = 1 compteur 2 = 0
clique sur le bouton + du compteur 1
compteur 1 = 2 compteur 2 = 0
clique sur le bouton + du compteur 2
compteur 1 = 2 compteur 2 = 1

### Exercice 3

Créer un composant `Counter` qui affiche un compteur (sans boutons cette fois ci).
Ce composant doit être utilisé dans un composant `App` qui affiche deux compteurs.
Un boutons est ajouté et permet d'incrémenter les deux compteurs en même temps.

exemple:
compteur 1 = 0 compteur 2 = 0
clique sur le bouton
compteur 1 = 1 compteur 2 = 1
clique sur le bouton
compteur 1 = 2 compteur 2 = 2

### Exercice 4

Créer un composant `Counter` qui affiche un compteur et qui permet de l'incrémenter et de le décrémenter.
Ce composant doit être utilisé dans un composant `App` qui affiche deux compteurs.
Chaque compteur doit avoir son propre état.
On ajoutera en plus un bouton `Ajouter aux deux compteurs` qui permet d'incrémenter les deux compteurs en même temps.

exemple:
compteur 1 = 0 compteur 2 = 0
clique sur le bouton + du compteur 1
compteur 1 = 1 compteur 2 = 0
clique sur le bouton + du compteur 1
compteur 1 = 2 compteur 2 = 0
clique sur le bouton + du compteur global
compteur 1 = 3 compteur 2 = 1
clique sur le bouton + du compteur 2
compteur 1 = 3 compteur 2 = 2

# Les compteurs (suite)

## Exercice 5

Créer un composant `Counter` qui affiche un compteur et qui possède deux boutons :

- incrementer : qui augmente la valeur du compteur de 1
- decrementer : qui diminue la valeur du compteur de 1
  Le compteur n'a pas d'état.
  Le composant parent (App) possède, en plus de deux compteurs, un bouton d'incrément global qui incrémente les deux compteurs en même temps.
