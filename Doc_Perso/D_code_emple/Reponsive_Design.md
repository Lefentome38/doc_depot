## Outils Responsive Design

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

### Ressources

- [Responsive Web Design](https://www.w3schools.com/css/css_rwd_intro.asp)
- [Media Queries](https://www.w3schools.com/css/css_rwd_mediaqueries.asp)
- [Viewport](https://www.w3schools.com/css/css_rwd_viewport.asp)
- [respnsible tables ?](https://medium.com/appnroll-publication/5-practical-solutions-to-make-responsive-data-tables-ff031c48b122)
- [images responsives](https://developer.mozilla.org/fr/docs/Learn/HTML/Multimedia_and_embedding/Responsive_images)
- [Le mobile first](https://www.ynov.com/definition/mobile-first)