# Cours sur le Responsive Design et l'approche "Mobile First"

Le responsive design est une approche essentielle dans la conception de sites web modernes. Il s'agit de créer des sites web qui s'adaptent de manière fluide à diverses tailles d'écrans, offrant ainsi une expérience utilisateur optimale, que ce soit sur un ordinateur de bureau, une tablette ou un smartphone.

Un site “responsive”, ou plus exactement un site “responsive design”, est un site pensé et conçu pour s’adapter automatiquement à la taille de l’écran sur lequel il est consulté. Un tel site doit donc pouvoir dispenser la même information avec la même clarté sur un moniteur de PC, sur une tablette ou sur le petit écran d’un smartphone. Tous les éléments de la page web, le texte, les images, les vidéos sont donc réorganisés et redimensionnés automatiquement pour demeurer lisible quel que soit l’écran.

Un même site web peut avoir un aspect différent selon les appareils car son design est responsive. Un site responsive c’est lorsqu’on utilise CSS et HTML pour redimensionner, masquer, réduire, agrandir ou déplacer le contenu pour qu’il s’affiche correctement sur n’importe quel écran.

Depuis, les choses ont grandement évolué. Aujourd’hui, le design responsive utilise les CSS (Cascading Style Sheets, les fichiers où sont stockés tous les styles de vos pages web) pour créer différentes mises en page, tailles d’image et menus pour des fenêtres de tailles différentes.

## Pourquoi le Responsive Design est important

Un site mobile friendly est un site internet spécialement conçu avec le responsive design. Cela signifie qu’il ressemblerait plus à une application qu’à un site bureau sur mobile, où il peut être difficile de naviguer. Les sites mobile friendly offrent un confort d’utilisation et de navigation que ce soit pour naviguer sur le site ou même procéder à une inscription ou à un achat !

Un smartphone, presque tout le monde en a un, ce n’est pas forcément le cas d’une tablette ou d’un ordinateur. En 2020, ⅔ du temps total passé sur internet a été via téléphone mobile. C’est clairement un signe que les utilisateurs se rendent sur internet de plus en plus souvent en dehors de chez eux, sur leur téléphone. C’est sûrement l’outil qui leur servira le plus pour surfer sur le web, c’est pourquoi il est indispensable de rendre votre site internet responsive afin d’attirer les utilisateurs mobile.

Certains utilisateurs ont également tendance à consulter le même site sur plusieurs supports. Il pourrait être décevant pour lui de ne pas pouvoir accéder à ce site internet sur son téléphone, s’il souhaite naviguer dessus en dehors de chez lui.

<img src="https://news.gandi.net/wp-content/uploads/2020/10/minutes-connexion-1024x1024.png" alt="image" width="75%" height="auto">

Aujourd’hui, 92,3% des utilisateurs d’Internet ont pris l’habitude d’utiliser régulièrement des terminaux mobiles et 65,6% d’entre eux continuent d’utiliser un ordinateur pour aller en ligne. Il est donc impératif que ces usages différents permettent une expérience similaire.

### Améliorer l’expérience utilisateur

La fidélisation de votre audience et le temps passé à chaque visite vont dépendre de la bonne lisibilité de votre contenu, au moins autant que sa qualité. L’enjeu est parfois crucial, si votre site permet un parcours d’achat mais que cette démarche implique de zoomer sur l’écran de son smartphone à chaque étape, vous observerez très certainement un taux d'abandon conséquent sur mobile.

### Améliorer le référencement

Conséquence du point précédent, rendre son site responsive réduira le taux de rebond, permettra aux utilisateurs de trouver sur vos pages ce qu’ils sont venus chercher et sera par conséquent considéré par les moteurs de recherche comme plus pertinent qu’un site conçu pour un usage limité à un type d’appareil.

### Augmenter la portée

Parce qu'il sera plus lisible, parce qu'il sera mieux référencé, votre site responsive attirera davantage de trafic et vous permettra de diffuser plus largement votre contenu au sein d’une population habituée à passer d’un appareil à l’autre avec la même exigence de rapidité et de clarté.

## Principes du Responsive Design

- **Conception Fluide**: Utiliser des unités relatives (comme les pourcentages) pour définir les dimensions et les marges, et éviter les unités fixes comme les pixels. Une mise en page fluide est un élément essentiel d’un design moderne et responsive. Dans le web 1.0, on fixait une valeur statique pour chaque élément HTML, par exemple 600 pixels. Une mise en page fluide repose plutôt sur des valeurs dynamiques comme un pourcentage de la largeur de la fenêtre de visualisation.

<img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2020/09/exemple-mise-page.png" alt="image" width="75%" height="auto">

Cette approche permettra d’augmenter ou de diminuer dynamiquement les différentes tailles des éléments du conteneur en fonction de la taille de l’écran.

- **Grilles CSS**: Utiliser des grilles CSS, comme Flexbox ou CSS Grid, pour créer une structure de mise en page flexible et réactive.

- **Images Flexibles**: Utiliser des images flexibles qui s'ajustent automatiquement à la taille de l'écran en utilisant `max-width: 100%;`.

- **Media Queries**: Utiliser les media queries pour définir des règles de style différentes en fonction de la taille de l'écran.

```css
@media screen and (max-width: 768px) {
  /* Styles pour les écrans plus petits */
}
```

- **Menu de Navigation Mobile**: Utiliser un menu de navigation mobile (hamburger menu) pour économiser de l'espace sur les écrans plus petits. Veillez à ce que vos boutons d’appel à l’action soient visibles et faciles à utiliser. Sur mobile, il est important qu’ils soient suffisamment grands. Imaginez-vous cliquer encore et encore sur un bouton, sans réussir à l’atteindre ? Il vous faut à tout prix éviter cela.

Faites donc en sorte que vos boutons aient une taille adaptée et qu’ils soient facilement cliquables.

- **Mise en Page Flexible**: Assurer que le contenu s'adapte naturellement à différentes tailles d'écran sans nécessiter de zoom.

- **Taille de Police Lisible**: Utiliser des tailles de police adaptées pour garantir une lisibilité optimale sur les écrans mobiles. Google recommande d’utiliser une police d’écriture d’au moins 16 pixels, soit 1 em. Souvent, on retrouve une police de 12 pixels, ce qui est bien trop petit pour être lisible.

Voici quelques conseils supplémentaires pour améliorer votre contenu textuel :

- Ajustez les interlignes à 1,2 em, pour une meilleure lisibilité
- Utilisez 2 ou 3 polices d’écritures maximum pour un résultat clair et cohérent
- Faites de même pour la taille de vos textes : 3 tailles différentes tout au plus
- Choisissez une police sans empattement, ou « Sans Serif », plus facile à lire

<img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2020/09/media-queries-ordinateur-bureau-tablette.png" alt="image" width="75%" height="auto">

## Approche "Mobile First"

L'approche "Mobile First" est une philosophie de conception dans laquelle vous commencez par concevoir d'abord pour les écrans mobiles, puis élargissez progressivement votre conception pour des écrans plus grands. Cela garantit que votre site est optimisé pour les mobiles, puis amélioré pour les ordinateurs de bureau plutôt que l'inverse.

L'approche "Mobile First" encourage à penser de manière minimaliste, à se concentrer sur l'essentiel et à simplifier la navigation. Cela améliore l'expérience utilisateur sur les appareils mobiles et garantit que votre site se charge rapidement, même sur des connexions mobiles plus lentes.

<img src="https://kinsta.com/fr/wp-content/uploads/sites/4/2020/09/design-mobile-first.png" alt="image" width="75%" height="auto">

## Astuces pour la Conception Mobile

- **Simplifiez la Navigation**: Réduisez le nombre de liens de navigation et organisez-les en hiérarchies logiques.

- **Minimisez le Contenu**: Sur les appareils mobiles, le contenu doit être succinct. Évitez les longs paragraphes et les éléments non essentiels.

- **Optimisation des Images**: Comprimez les images pour réduire le temps de chargement sur les réseaux mobiles.

- **Boutons Tactiles**: Assurez-vous que les boutons et les liens sont suffisamment grands pour être cliqués avec précision sur un écran tactile.

- **Tests Croisés**: Vérifiez le rendu de votre site sur différents appareils mobiles et navigateurs pour détecter et corriger les problèmes potentiels.

- **Orientation**: Prenez en compte les deux orientations d'écran (portrait et paysage) lors de la conception.

- **Vitesse de Chargement**: Optimisez la vitesse de chargement du site, car les utilisateurs mobiles sont moins patients.

## Media Queries pour les différentes tailles d'écran

Les media queries permettent de définir des règles de style spécifiques à différentes tailles d'écran. Voici un exemple :

```css
/* Styles par défaut */
.some-element {
  background-color: lightgray;
}

/* Styles pour les écrans de petite taille (inférieurs ou égaux à 768px de large) */
@media screen and (max-width: 768px) {
  .some-element {
    background-color: lightblue;
  }
}

/* Styles pour les écrans de taille moyenne (entre 769px et 992px de large) */
@media screen and (min-width: 769px) and (max-width: 992px) {
  .some-element {
    background-color: lightgreen;
  }
}

/* Styles pour les grands écrans (supérieurs à 992px de large) */
@media screen and (min-width: 993px) {
  .some-element {
    background-color: lightpink;
  }
}
```

## Sources et Ressources

Voici quelques ressources utiles pour en apprendre davantage sur le responsive design et les meilleures pratiques de conception pour les smartphones :

- [MDN Web Docs - Responsive Design](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Responsive_Design)
- [Google Developers - Mobile-Friendly Websites](https://developers.google.com/webmasters/mobile-sites)
- [Smashing Magazine - Responsive Design Articles](https://www.smashingmagazine.com/category/responsive-design/)
- [CSS-Tricks - Responsive Design Techniques](https://css-tricks.com)
- [W3Schools - CSS Responsive Web Design](https://www.w3schools.com/Css/css_rwd_intro.asp)
- [Le guide du débutant pour un design web responsive](https://kinsta.com/fr/blog/design-web-responsive/)
