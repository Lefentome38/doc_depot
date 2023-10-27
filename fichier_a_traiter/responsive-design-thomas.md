# Responsive Design

## Objectifs

Réaliser une interface affichable sur différents supports (mobile, tablette, desktop).

## Outils

### Media queries

Les media queries permettent de définir des règles CSS qui ne s'appliquent que dans certains cas.

```css
@media (max-width: 600px) {
  body {
    background-color: red;
  }
}
```

```css
@media (min-width: 600px) {
  body {
    background-color: red;
  }
}
```

```css
@media (min-width: 600px) and (max-width: 800px) {
  body {
    background-color: red;
  }
}
```

### Les breakpoints

[Breakpoint de bootstrap](https://getbootstrap.com/docs/5.0/layout/breakpoints/)

### Viewport

La balise `<meta name="viewport" content="width=device-width, initial-scale=1.0">` permet de définir la largeur de la page en fonction de la largeur de l'écran.

### Chrome device toolbar

L'outil de développement de chrome permet de simuler différents appareils et donc différentes tailles d'écran.

Plutôt que de multiplier les devices physiques, il est préférable de définir des breakpoints et de redimensionner la fenêtre du navigateur ou d'utiliser l'outil de développement de chrome.

### Flexbox

La flexbox permet de gérer le positionnement des éléments dans un conteneur.

```css
.container {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}
```

### Grid

La grid permet de gérer le positionnement des éléments dans un conteneur.
Il permet de gérer le positionnement en colonnes et en lignes sans avoir à utiliser des `float`.
Mais surtout, il permet de gérer les espaces vides entre les éléments.

```css
.container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-rows: 1fr 1fr 1fr;
}
```

### Frameworks CSS

Les frameworks CSS permettent de gagner du temps en proposant des composants prêts à l'emploi.

- [Bootstrap](https://getbootstrap.com/)
- [Tailwind](https://tailwindcss.com/)

Ils ont aussi l'avantage d'être responsive par défaut ou de proposer des classes pour le responsive.
Avant d'avoir les flexbox, les frameworks CSS étaient très utilisés pour le responsive, surtout Bootstrap.

## Bien plus qu'une question de taille

Le responsive design ne se limite pas à la taille de l'écran. Il faut aussi prendre en compte la résolution, l'orientation, le type d'écran, etc.

Souvent, on imagine que la différence entre un mobile et un desktop est la direction de l'écran (portrait ou paysage). 
Mais il y a aussi :
- la taille de l'écran
- la résolution
- le type d'écran (écran tactile ou non)
- la connexion internet

C'est différences impliquent des comportements différents de la part de l'utilisateur et donc une interface adaptée à chaque support.
On s'imagine souvent cela comme compliqué et long à mettre en place.
Il est vrai que cela demande un peu de temps et de réflexion, mais beaucoup moins que ce qu'il faudrait pour créer une application mobile et une application desktop.

## Exercices

- [Le système de grille à la bootstrap](../Briefs/11-Front-avance/exercice-1.md)
- [Les images, les tableaux et les animations](../Briefs/11-Front-avance/exercice-2.md)
- [Notre site css responsive](../Briefs/11-Front-avance/exercice-3.md)

## Ressources

- [Responsive Web Design](https://www.w3schools.com/css/css_rwd_intro.asp)
- [Media Queries](https://www.w3schools.com/css/css_rwd_mediaqueries.asp)
- [Viewport](https://www.w3schools.com/css/css_rwd_viewport.asp)
- [respnsible tables ?](https://medium.com/appnroll-publication/5-practical-solutions-to-make-responsive-data-tables-ff031c48b122)
- [images responsives](https://developer.mozilla.org/fr/docs/Learn/HTML/Multimedia_and_embedding/Responsive_images)
- [Le mobile first](https://www.ynov.com/definition/mobile-first)