# Exercice 1 - Créer un système de grille en scss

## Contexte

Vous êtes développeur web full stack. Vous avez besoin d'un système de grille pour votre prochain projet.

## Missions

- Créer un système de grille en scss de 12 colonnes
- Créer un nouveau projet vite
- Intégrer le système de grille dans le projet
- reproduire le layout suivant: [image du rendu en taille md](https://postimg.cc/GTdJsY3f)
- en taille xs, toutes les boites doivent prendre 100% de la largeur de l'écran et être les unes en dessous des autres

## Tâches

- Créer un nouveau projet vite
- Installer sass et modifier les fichiers html et css pour utiliser sass
- Utilisez bootstrap pour reproduire le layout
    - importer bootstrap dans le fichier html via un cdn
    - utiliser les classes de bootstrap pour reproduire le layout
    - utiliser des classes supplémentaires pour les couleurs 
- Créer un fichier scss pour le système de grille pour supprimer l'import de bootstrap

## Comment s'y prendre

### Utiliser bootstrap en l'important

```html
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
```

### Créer la structure et le style css sois-même

```html
<div class="row">
    <div class="col-xs-6 col-sm-3 blue">A</div>
    <div class="col-xs-6 col-sm-3">B</div>
    <div class="col-xs-6">C</div>
</div>
```

```scss
.container {
    max-width: 1200px;
    margin: 0 auto;
}

.row {
    display: flex;
    flex-wrap: wrap;
}

.col-xs-6 {
    width: 50%;
    max-width: 50%;
}

.col-sm-3 {
    width: 25%;
    max-width: 25%;
}

.blue {
    background-color: blue;
}

```