# TP Sass - Le jeu de cartes

## Objectif

Créer un jeu de cartes en HTML et en utilisant sass pour la mise en forme.

## Préparation

Créer un projet avec vite, le nommer tp-jeu-cartes-sass.
vanilla + typescript

```bash
npm init vite@latest
cd tp-jeu-cartes-sass
npm i
npm i --save-dev sass
npm run dev
```

## Instructions --ok

Utilisez au mieux les outils sass pour créer un jeu de cartes en HTML.
Suivez les instructions dans l'ordre sans sauter d'étapes et en essayant de lire et de compléter qu'une seule instruction à la fois. Le spoil vous permettra d'anticiper les étapes suivantes mais nous l'exercice sera plus formateur si vous ne lisez pas les étapes suivantes avant d'avoir terminé la précédente !

Faites attention au nommage des classes grâce à BEM.
https://alticreation.com/bem-pour-le-css/

Utilisez au maximum le nesting de sass pour éviter de répéter les sélecteurs.
Vous allez découvrir le positionnement absolu et relatif de css.
Un tuto vous sera fait mais le but est de vous laisser chercher dans un premier temps, désolé ^^

Au moins 1 commit par étape !

### 1. Clean de l'app --ok

Supprimez le contenu du fichier `main.ts`.
Renommez le fichier `style.css` en `style.scss` et supprimez son contenu.
Importez le fichier `style.scss` dans le fichier `index.html`.
Mettez le fond de la page en vert.

### 2. Création d'une zone de jeu --ok

Une zone de 800px par 600px centrée sur la page.
Le bord en blanc arrondi.
Le fond en vert un peu plus clair que la page.
(utiliser lighten ou scale)

https://sass-lang.com/documentation/modules/color/#lighten

### 3. Création d'une carte --ok

Créez un fichier `_cartes.scss` et importez-le dans le fichier `style.scss`.
Créer une carte de 100px par 150px.
La carte est à 50px du bord en haut à gauche (hauteur et largeur).

Intégrez les cartes sous ce format :

https://i.etsystatic.com/31638136/r/il/47ddd0/4863116204/il_1588xN.4863116204_s4pa.jpg

Utilisez les code html suivants pour créer les cartes

https://outils-javascript.aliasdmc.fr/encodage-caracteres-jeux/encode-caractere-2660-html-css-js-autre.html

### 4. Changer la rotation de la carte de façon aléatoire --ok

Utilisez la fonction random de sass pour changer la rotation de la carte de façon aléatoire.

https://sass-lang.com/documentation/modules/math#random

Quand est-ce que la valeur change ?

### 5. Modifiez la taille de la carte à 80px par 125px --ok 

Changer la taille de la carte. Maintenant que vous avez fait toutes les modifications sur la carte.
Essayez d'utiliser au maximum les variables sass pour ne pas avoir à modifier les valeurs à plusieurs endroits.

### 6. Créez une pile de 5 cartes --ok (s'est plutot pas mal)

Créez 5 cartes et empilez-les les unes sur les autres.

https://images.crazygames.com/freecellclassic.png?auto=format,compress&q=75&cs=strip

Utilisez une boucle for de sass pour gérer l'empilement des cartes.

### 7. Créez une main de 6 cartes --ok

Créez une 6ème carte et changement le positionnement des cartes pour qu'elles soient côte à côte.
Puis ajoutez une rotation particulière à chaque élément de la main.

Dans ce style :

https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSigI5rivI_wU08EynAqresz2DUuZOogS3rMQ&usqp=CAU

### 8. Créez une défausse de 3 cartes

Créez une défausse de 3 cartes.
Les trois cartes auront une position aléatoire et une rotation aléatoire.

### 9. Créez une main cachée d'un adversaire

Créez une main cachée de 6 cartes. Les cartes sont côté à côte et sont toutes retournées.

### 10. Créez une table de jeu complète

Adaptez la taille de la table de jeu pour qu'elle permette d'accueillir toutes les cartes.
En vous focalisant au maximum sur les cartes et leur positionnement, créez une table de jeu complète comme sur l'image ci-dessous.

[Voici le lien vers l'exemple](https://www.google.com/search?q=beulote+en+ligne&tbm=isch&ved=2ahUKEwjyz7PthvmBAxU7pCcCHQqFCmcQ2-cCegQIABAA&oq=beulote+en+ligne&gs_lcp=CgNpbWcQAzoECCMQJzoFCAAQgAQ6BggAEAgQHjoHCAAQGBCABDoICAAQgAQQsQM6BwgAEIoFEEM6BAgAEB46BggAEAUQHjoJCAAQGBCABBAKUKMHWKEjYKkkaABwAHgAgAF0iAHKCpIBBDE2LjGYAQCgAQGqAQtnd3Mtd2l6LWltZ8ABAQ&sclient=img&ei=K2EsZbKOCrvInsEPioqquAY&bih=830&biw=1433&client=opera&hs=2es#imgrc=KD4SujnDzBDOVM&imgdii=hc_LhhWNPLlmfM)