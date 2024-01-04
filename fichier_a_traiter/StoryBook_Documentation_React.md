# Documentation React

## Besoin

Lorsque l'on développe une application React, il est important de documenter son code pour plusieurs raisons :
- travailler en équipe
- reprendre le code plus tard
- partager son code avec la communauté
- tester différents cas d'utilisation

Les commentaires ne sont pas une solution parfaite.
L'information se retrouve là où elle est utilisée et non là où elle est définie.
Trouver le commentaire c'est déjà avoir réussi 80% du travail de compréhension.

Il faut donc des outils externes à la base de code.
Les tests sont une bonne solution mais ils ne sont pas toujours suffisants.
Ils valident un fonctionnement mais ne décrivent pas le fonctionnement et l'utilisation que l'on souhaite en faire.

## Markdown

Le point d'entrée d'un projet : le README.md
Une notion de sommaire et d'exhaustivité.
Un langage de balisage léger et facile à apprendre.

## Pour React

### 3 solutions

- [Storybook](https://storybook.js.org/)
- [Docz](https://www.docz.site/)
- [Bit](https://bit.dev/)

Nous allons utiliser Storybook.

#### Pourquoi Docz est cool ?

C'est du markdown auquel on ajoute :
- une route = une page + menu automatique
- du MDX = markdown + JSX

#### Pourquoi Bit est cool ?

C'est un gestionnaire de composants + documentation + tests + CI/CD + déploiement + collaboration + ...
Bref c'est un outil complet pour gérer des composants.
Il est trop complet pour ce que l'on veut faire nous mais il est très intéressant à découvrir (plus tard).

#### Pourquoi Storybook alors ?

Parce que c'est le plus simple à mettre en place et à utiliser.
Il est très utilisé dans la communauté React et il est très bien maintenu.
Il a un tuto et une doc très bien faits.
Il se focalise sur la documentation et la présentation des composants et c'est ce qu'on veut faire.
Il s'installe tout seul dans un projet existant. Donc pas besoin de débuter avec, on peut l'intégrer après, ou plutôt, il se fait sa place tout seul !

### Installation

```bash
npx storybook@latest init
```

Suivre le tuto de post installation !

### Lancement

```bash
npm run storybook
```

### TP - Ma librairie de composants

1. [x] Créer un projet React avec vite.
2. [x] Installer storybook
3. Créer un composant Text qui affiche un texte
    - props : text, color, size, weight
    - default props : color = black, size = 16px, weight = normal
    - créer une documentation de ce composant
    - créer une story pour chaque cas d'utilisation
4. Créer votre composant button
    - props : children, variant, disabled, onClick
    - default props : variant = primary, disabled = false
    - créer une documentation de ce composant
5. A vous d'imaginer vos futurs composants et de les documenter

Bonne vacances !