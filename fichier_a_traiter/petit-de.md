# Petit dé apprend à parler à papa

## Introduction

Pour rappel, nous avons appris que pour communiquer de l'enfant au parent, on utilise une fonction que l'on donne en propriété à l'enfant.

## Exercice

### 1. Créer un composant enfant --OK--

On va commencer par créer un composant `Die` qui affiche un nombre aléatoire entre 1 et 6. -OK
C'est notre composant enfant. 

Caractéristiques du composant `Die` :
state : `value` qui est un nombre aléatoire entre 1 et 6 -OK
handler : `roll` qui met à jour la valeur de `value` avec un nombre aléatoire entre 1 et 6 quand on `click` sur le composant -OK

On va ensuite l'afficher dans le composant `App` qui est notre composant parent. -OK

### 2. Communiquer de l'enfant au parent --OK--

On va maintenant faire en sorte que le composant `Die` puisse communiquer au composant `App` la valeur de `value` quand sa valeur change. -OK

Pour cela on va créer une propriété `onRoll` dans le composant `Die` qui prend en paramètre une nouvelle valeur de dé. -OK
Dans `App`, on devra créer une fonction `handleRoll` qui prend en paramètre la nouvelle valeur de `value` et qui met à jour cette valeur dans `App`. -OK
On passera ensuite cette fonction en propriété `onRoll` au composant `Die`. -OK
On afficher ensuite la valeur du dé enfant dans le composant `App`. -OK

### 3. La somme des dés

Dans le composant `App`, on va créer un tableau `diceValues` qui contiendra les valeurs de tous les dés.
On va créer une fonction `handleRoll` qui prend en paramètre la nouvelle valeur d'un dé précis et qui met à jour cette valeur dans `App`.
Dans App, on va créer une données calculée `sum` qui calcule la somme des dés.
On va ensuite afficher cette somme dans le composant `App`.

### 4. Communiquer du parent à l'enfant

On va maintenant fournir la valeur initial de `value` au composant `Die` quand il est créé avec la propriété `value` de `Die`.
Ensuite, l'enfant sera libre de mettre à jour sa valeur comme il le souhaite, comme précédemment.

