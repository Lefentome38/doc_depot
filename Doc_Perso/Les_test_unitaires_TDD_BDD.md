# les test unitaires

### les critaires d'un test initaires

        -1 Unité ........(recup pdf)

        -2 Isolation ...........(recuo pdf)

        -3 Rapidité .............(recup pdf) Mock? 
 
        -4 L'indépendance ..........(recup pdf) 

        -5 ????

        -6 Rejouabilité ............(recup pdf)

        bonus (pdf) 
        -garder les test unitaires très rapides (10 seconde max)
        -Avant de réparer un bug, écriver ou modifier
        -choisisre la bonne unite
        -utiliser le template AAA

        JEST: notre outil de test

            -pour la logique et pour React, Vue, Angular, Node, Typescreipt

            - lien: https://jestjs.io/

            EXPECT et IT ! Et pour faire un peu plus, aller lire cette cheatsheet
            
            lien: https://github.com/sapegin/jest-cheat-sheet

            - code covarage
            - fast and safe
            - API devenue la norme 

# TP - tests unitaires

## Comment travailler sur le TP

Cloner : https://github.com/ThomasLaforge/tests-ts

```bash
npm i
npm run test
```

Pour le faire vous même plus tard :

```bash
npm i -D vitest
```

ajouter un script dans le package.json :

```json
"scripts": {
    ...,
    "test": "vitest"
}
```