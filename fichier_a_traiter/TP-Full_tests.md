# TP - Full tests

## Setup

[x] - Créer un nouveau projet vite `tp-full-tests`
[x] - installer vitest (découverte + aidez vous du projet cloné)
[x] - installer playwright

## Projet

nous allons créer un projet pour donner l'heure en Corodinsite Jupiterienne.
Il s'agit d'une région retranchée de la planète Jupiter, qui a développé sa propre unité de temps.
L'heure possède 4 valeurs possible : mortin, aprenoon, soirning et nuight.
Pour connaitre l'heure, il faut connaitre la valeur de 3 cadrans différents.
- le cadran de la lune :
[x]    - 1 : réduit le total de 2
[x]    - 2 : divise le total par 2
- le cadran de la terre :
[x]    - 1 : ajoute 2 au total
[x]    - 2 : le resultat total est 6
- le cadran du soleil :
[x]    - 1 : n'utilise pas le cadran de la terre
[x]    - 2 : double la valeur du cadran de la terre (pas le pouvoir)

Le résultat est la somme des 3 cadrans + les 3 pouvoirs.
Ainsi si le cadran de la lune vaut 1, le cadran de la terre vaut 2 et le cadran du soleil vaut 1
alors le résultat est (1 + 1) - 2 = 0
il s'agit de l'heure aprenoon

Si le résultat est <= 1 alors l'heure est mortin
sinon si le résultat est <= 2, alors l'heure est aprenoon
sinon si le résultat est <= 4 alors l'heure est soirning
sinon l'heure est nuight.

## Consignes

- créer des tests unitaires permettant de faire du TDD sur la fonction de calcul de l'heure :
```ts
function calculerHeure(lune: number, terre: number, soleil: number): string {
    // ...
}
```

- créer une interface graphique permettant de saisir les valeurs des 3 cadrans et d'afficher le résultat.
[x]    - Trois champs de saisie de nombre
[x]    - Un bouton de calcul
[x]    - une zone de texte pour afficher le résultat quand il y en a un
- créer des tests e2e permettant de tester l'interface graphique
    - le champ de saisie ne doit jamais être inférieur à 1 ou supérieur à 2, écrire un test qui permet de le vérifier
    - le bouton de calcul doit être désactivé tant que les 3 champs de saisie ne sont pas remplis
    - le texte de résultat doit être vide tant que le bouton de calcul est désactivé
    - le texte de résultat apparait quand le bouton de calcul est cliqué