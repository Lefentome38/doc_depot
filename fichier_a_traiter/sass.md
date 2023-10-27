# Sass

## Définition

Sass est un langage de feuille de style qui permet d'écrire du CSS de manière plus structurée et plus maintenable. Historiquement, il permettait d'ajouter des fonctionnalités qui n'étaient pas disponibles en CSS comme : 
- les variables
- le nesting
- les imports / partials
- les fonctions
- les mixins
- les boucles
- les conditions

Aujourd'hui, la plupart de ces fonctionnalités sont disponibles en CSS natif.
Pourtant, il reste le seul outil autre que le CSS natif qui permet de faire de la programmation dans les feuilles de style et donc de rendre le CSS plus maintenable.

Pour résumer, c'est le TypeScript du CSS.

[Post redit sur le bien fondé d'apprendre sass en 2023](https://www.reddit.com/r/webdev/comments/118m5uo/is_it_worth_learning_scss_in_2023/)

## Objectif

- Rendre le CSS plus maintenable
- Permettre de faire de la programmation dans les feuilles de style
- Essayer d'utiliser les deux syntaxes : SCSS et SASS

## La concurrence actuelle

Le plus à jour : [Stylus](https://stylus-lang.com/)

Concurrent historique : [Less](https://lesscss.org/)

## Playground

https://sass-lang.com/playground/

## Setup

Nous allons utiliser la syntaxe SCSS.
Et dans un soucis de simplicité, nous allons continuer à utiliser `vite` pour nos projets front-end. 

[Documentation vite sur les pre processors css](https://vitejs.dev/guide/features.html#css-pre-processors)

```bash
npm init vite@latest
cd vite
npm install
npm install sass
npm run dev
```

## Outils

### Nesting

```scss
.container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;

  .title {
    font-size: 2rem;
    font-weight: bold;
  }

  .subtitle {
    font-size: 1.5rem;
    font-weight: normal;
  }
}
```

### Variables

```scss
$primary-color: #ff0000;
$secondary-color: #00ff00;

.container {
  background-color: $primary-color;
  color: $secondary-color;
}
```

### Mixins

```scss
@mixin flex($direction, $justify, $align) {
  display: flex;
  flex-direction: $direction;
  justify-content: $justify;
  align-items: $align;
}

.container {
  @include flex(column, center, center);
}
```

### Functions

```scss
@function add($a, $b) {
  @return $a + $b;
}

.container {
  width: add(10px, 20px);
}
```

### Partials

```scss
_variables.scss
_mixins.scss
_functions.scss
```

### Imports

https://vincent-barrault.fr/articles/sass-remplacer-import-par-use

```scss
@import "variables";
@use "functions";
@use "mixins" as *;
```

### Extends

```scss
%flex {
  display: flex;
}

.container {
  @extend %flex;
}
```

### Opérateurs

```scss
.container {
  width: 100px + 200px;
  height: 100px - 50px;
  margin: 10px * 2;
  padding: 10px / 2;
  padding: math.div($patate, 2);
}
```

### Boucles

```scss
@for $i from 1 through 3 {
  .item-#{$i} {
    width: 100px * $i;
  }
}
```

### Conditions

```scss
$primary-color: #ff0000;
$secondary-color: #00ff00;

.container {
  @if $primary-color == #ff0000 {
    background-color: $primary-color;
  } @else {
    background-color: $secondary-color;
  }
}
```