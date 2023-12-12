# liste des dufférents lignes de code pour les API

## exemple de ligne de code
```ts
# créer le jeu
POST http://localhost:1337/api/official-games
Authorization: Bearer 1c669ffbd2796b409f9ba13ac292c2edc131290b84459e9eac237d8a2855adbb570aca0f4194c1d08a0e2f8f80e272b268b021b71ee442d661e9400d4284fecfecb78a30d1d58499875343799b7311fae486c729eddfa97cdfdf52af1a6e0696c31d13a3bedcfb439f1a82ecf4cee40b39dcee21627534ba3c5c8bb9a287c966 //token (jwt)
Content-Type: application/json

{
    "data": {
        "nom":"fondation",
        "description":"citybuilder",
        "imgae":"...",
        "prix":20
    }
}

###
# récupère les jeux
GET http://localhost:1337/api/official-games
Authorization: Bearer 1c669ffbd2796b409f9ba13ac292c2edc131290b84459e9eac237d8a2855adbb570aca0f4194c1d08a0e2f8f80e272b268b021b71ee442d661e9400d4284fecfecb78a30d1d58499875343799b7311fae486c729eddfa97cdfdf52af1a6e0696c31d13a3bedcfb439f1a82ecf4cee40b39dcee21627534ba3c5c8bb9a287c966

###
# récupère un jeux
GET http://localhost:1337/api/official-games/1
Authorization: Bearer 1c669ffbd2796b409f9ba13ac292c2edc131290b84459e9eac237d8a2855adbb570aca0f4194c1d08a0e2f8f80e272b268b021b71ee442d661e9400d4284fecfecb78a30d1d58499875343799b7311fae486c729eddfa97cdfdf52af1a6e0696c31d13a3bedcfb439f1a82ecf4cee40b39dcee21627534ba3c5c8bb9a287c966 

###
# modifie un jeu
PUT http://localhost:1337/api/official-games/1
Authorization: Bearer 1c669ffbd2796b409f9ba13ac292c2edc131290b84459e9eac237d8a2855adbb570aca0f4194c1d08a0e2f8f80e272b268b021b71ee442d661e9400d4284fecfecb78a30d1d58499875343799b7311fae486c729eddfa97cdfdf52af1a6e0696c31d13a3bedcfb439f1a82ecf4cee40b39dcee21627534ba3c5c8bb9a287c966
Content-Type: application/json

{
    "data": {
        "nom":"gogogogogo",
        "description":"fsdlfsdpkf",
        "imgae":"....",
        "prix": 5000
    }
}

###
# supprimer un jeu
DELETE http://localhost:1337/api/official-games/4
Authorization: Bearer 1c669ffbd2796b409f9ba13ac292c2edc131290b84459e9eac237d8a2855adbb570aca0f4194c1d08a0e2f8f80e272b268b021b71ee442d661e9400d4284fecfecb78a30d1d58499875343799b7311fae486c729eddfa97cdfdf52af1a6e0696c31d13a3bedcfb439f1a82ecf4cee40b39dcee21627534ba3c5c8bb9a287c966

GET http://localhost:1337/api/chanteurs
###
POST http://localhost:1337/api/chanteurs
content-type: application/json

{
    "data": {
        "nom": "Delpech",
        "prenom": "Michel",
        "date_de_naissance": "1946-01-26"
    }
}

###
GET http://localhost:1337/api/musics?populate=*
###
GET http://localhost:1337/api/musics?filters[favories][$eq]=true
###
GET http://localhost:1337/api/musics?sort=titre:desc
###
POST http://localhost:1337/api/musics
Content-Type: application/json

{ 
    "data": {
        "titre": "TU M'AS COMPRIS",
        "lien_youtube": "https://www.youtube.com/watch?v=CEn0vVfA_hE",
        "chanteur": 3,
        "favories": true,
        "dete_de_sortie": "2022-01-28",
        "couleur":"#134522"
    }
}
###

POST  http://localhost:1337/api/auth/local
content-type: application/json

{
    "identifier": "rambaudaymeric@gmail.com",
    "password": "loganecraft"
}
```