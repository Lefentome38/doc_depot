# Exercices Brief TypeScript

## Exercice 1 - Les variables

créer une variable a qui contient le nombre 5
créer une variable b qui contient le nombre 1
afficher deux logs pour indiquer si ces variables sont supérieures à PI
et qui est la plus grande des deux valeurs (utiliser une ternaire)

## Exercice 2 - Les tableaux

Créer un tableau qui contient les nombres de 1 à 10
1 - en initialisant une variable
2 - en utilisant une boucle
3 - en utilisant un new Array, fill et map

Afficher la longueur du tableau
Afficher le premier élément du tableau
Afficher le dernier élément du tableau
Afficher le 4ème élément du tableau
doublez toutes les valeurs du tableau dans une variable tableauBis
Afficher le tableauBis

## Exercice 3 - 

On a un stock de foin qui contient 800kg de foin.
On a 2 moutons qui mangent 500g de foin par jour.
Un des mouton est transformé en gigot au bout de 1000 jours.
Combien de temps le stock de foin va-t-il durer ?

Même exercice si le stock est de 20 kg 
Même exercice si le nombre de mouton est de 5.

## Exercice 4 - Les élections

```typescript
const candidats = ["lepeigne", "melangeons", "macreau", "varousselle", "paicvaissrelle", "poutoutout", "hidalgogo"];
const votes = [];
```

1. Remplir le tableau de votes du premier tour avec 1000 votes aléatoires
Afficher le nombre de votes pour chaque candidat
Afficher le nom du candidat qui a le plus de votes
Afficher les noms des candidats qui passent au deuxième tour

2. Nous ne sommes plus en démocratie, paicvaissrelle rachète des voix à lepeigne:
10€ par voix, Elle a un budget de 1000€, combien de voix peut-elle acheter ?

3. Simulez le deuxième tour avec 1000 votes aléatoires entre les deux premiers candidats
N'oubliez pas, paicvaissrelle peut acheter des voix aux electeurs de lepeigne s'il lui reste de l'argent.
Si lepeigne passe au deuxième tour avec paicvaissrelle, elle lui pique des voix.
Si lepeigne ne pas au deuxième tour, elle démarre avec, au maximum les voix de lepeigne au premier tour.

4. Simulez les votes avec ce tableau de sondage :
``` typescript
const sondage = [
    { candidat: "lepeigne", voix: 21 },
    { candidat: "melangeons", voix: 19 },
    { candidat: "macreau", voix: 21 },
    { candidat: "varousselle", voix: 3 },
    { candidat: "paicvaissrelle", voix: 1 },
    { candidat: "poutoutout", voix: 1 },
    { candidat: "hidalgogo", voix: 1 },
];
```
