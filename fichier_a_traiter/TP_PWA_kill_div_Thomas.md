# Kill the divs

## Objectifs

Utilisez des API Web pour se rapprocher de l'expÃ©rience d'une application native (desktop ou mobile)

## Le jeu

On aura un premier Ã©cran avec un bouton "Start" qui permettra de lancer le jeu.
En cliquant dessus, on aura un Ã©cran avec des divs qui apparaissent Ã  des positions alÃ©atoires sur l'Ã©cran.
Le but du jeu est de cliquer sur ces divs pour les faire disparaÃ®tre.
On en fera apparaÃ®tre de nouveaux Ã  chaque fois qu'on en fait disparaÃ®tre un.
La partie se termine quand on a cliquÃ© sur 10 divs.
On affichera alors un Ã©cran de fin de partie avec un bouton "Rejouer" qui permettra de relancer une partie et le temps qu'on a mis pour finir la partie.

## Les Ã©tapes

### 1. Jeu de base

1. [x] Ajouter un routing avec 3 routes : "/" pour l'Ã©cran d'accueil, "/game" pour l'Ã©cran de jeu et "/end" pour l'Ã©cran de fin de partie
2. [x] CrÃ©er un bouton "Start" dans la page d'accueil, qui amÃ¨ne Ã  l'Ã©cran de jeu
3. [x] Dans l'Ã©cran de jeu, on affiche une div ronde (Boite de 50px de cÃ´tÃ©, bordure arrondie, fond blanc) Ã  une position alÃ©atoire sur l'Ã©cran
4. [x] l'Ã©cran de jeu prend 100% de la hauteur et de la largeur de l'Ã©cran
5. [x] on affiche un compteur de divs cliquÃ©es en haut Ã  droite de l'Ã©cran
6. [x] en dessous de ce compteur, on affiche un chrono croissant en secondes ex: 6.867 sec
7. [x] l'Ã©cran de jeu a un fond noir
8. [x] lorsque l'on clique sur la div, elle disparait et on en fait apparaitre une nouvelle Ã  une position alÃ©atoire
9. [x] quand on a cliquÃ© sur 10 divs, on affiche un Ã©cran de fin de partie avec un bouton "Rejouer" qui permet de relancer une partie et le temps qu'on a mis pour finir la partie

### 2. Pimp my game

Choisissez des amÃ©liorations Ã  apporter au jeu dans l'order que vous voulez :

- [x] Ajouter un son quand on clique sur une div (Utiliser l'API Web Audio)
- [x] Ajouter des vibrations quand on clique sur une div (Utiliser l'API Vibration) (marche pas sur Iphone)
- [x] Ajouter une notification quand on clique sur la derniÃ¨re div avec affichage du temps total (Utiliser l'API Notification) (marche pas sur Iphone)
- Ajouter un bouton "Pause" qui met le jeu en pause (Utiliser l'API Page Visibility)
- Utiliser l'api suivante et la geolocalisation pour afficher le pays de l'utilisateur :
https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=37.42159&longitude=-122.0837&localityLanguage=en
- [x] stocker les meilleurs scores dans le local storage et les afficher dans l'Ã©cran de fin de partie
- Ajouter un bouton "Fullscreen" qui permet de mettre le jeu en plein Ã©cran (Utiliser l'API Fullscreen)
- Ajouter un bouton "Share" qui permet de partager le jeu sur les rÃ©seaux sociaux (Utiliser l'API Share)
- Ajouter un bouton "Install" qui permet d'installer le jeu sans passer par la barre URL