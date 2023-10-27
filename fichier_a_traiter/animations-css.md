# Les animations avec css

Un super article sur les animations css :
https://la-cascade.io/articles/css-animation-une-introduction

## Deux notions importantes

### Les keyframes

Les keyframes permettent de définir des étapes dans une animation.

```css
@keyframes my-animation {
    0% {
        background-color: red;
    }
    50% {
        background-color: blue;
    }
    100% {
        background-color: green;
    }
}
```

### L'animation

L'animation permet de définir une animation sur un élément.

```css
.my-element {
    animation: my-animation 1s linear infinite;
}
```

### Plein de possibilités

Vous allez pouvoir jouer sur plein de propriétés pour créer des animations.
- toutes les transformations sont possibles : translate, rotate, scale, skew, etc.
- toutes les propriétés css sont animables : background-color, color, border, etc.

Et gérer plein de paramètres comme :
- la durée
- le nombre de répétitions
- le sens de l'animation
- le délai avant le début de l'animation

Les limites viendront de votre imagination.