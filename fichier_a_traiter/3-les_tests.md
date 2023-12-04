---
marp: true
theme: gaia
markdown.marp.enableHtml: true
paginate: true
_paginate: false
style: @import url('https://unpkg.com/tailwindcss@^2/dist/utilities.min.css');
---
<style>
  section {
    background-color: #fefefe;
    color: #333;
  }
</style>

<!-- _class: lead -->
<!-- _color: #555 -->
# La qualité logiciel

![bg right](https://k49.fr.nf/content/images/size/w1000/2020/02/Microsoft-is-in-talks-to-buy-GitHub.jpeg)

---
## Si ce n'est pas obligatoire, est-ce vraiment utile ?

* Au quotidien, que faites-vous pour améliorer la qualité dans votre code ?

* Qui utilise votre code ?
Comment vérifiez-vous que votre code fonctionne ?

* Quels outils existent-t-il pour améliorer tout ça ?

* Contentons nous de JS pour l'instant...

---
## Le code lui même

Que doit faire mon code :

***" Does what it should.
Follows a consistent style.
It is easy to understand.
Has been well-documented.
It can be tested. "***

![bg right:50% fit](../images/beautiful_code.png)

---
## Quelques bonne pratiques pour mon code
- des **noms de variables**
    - en **anglais**
    - **raccourcis** (str, )
    - **conventions** de nommage du **language** 
```js
const thisIsCamelCase = "Chameau";
const this_is_snake_case = "Cerf pan !";
```

- Des **commentaires** utiles / nécessaires
- utilisation de **tricks** raisonnée

---
- l'**indentation**
    - tab vs espaces
    - sauts de lignes

- DRY = Don't repeat yourself
- Ne pas faire de ligne trop longues
- sauter des paragraphe par section de code
- écrire le moins de lignes possibles

https://eslint.org/docs/rules/

![bg right:40%](../images/indentation.png)

---
## Linter

le linteur **détectera** :
- les variables qui **n'existent pas**
- les variables inutilisées
- les doubles déclarations de variables, de fonctions, etc...
- la mauvaise organisation du code
- le non respect des bonnes pratiques d'écriture de code
- les erreurs de syntaxe

[https://mindsers.blog/fr/post/linting-good-practices/](https://mindsers.blog/fr/post/linting-good-practices/)

--- 
## Storybook

Qu'est-ce que tu as **fait** ? Ben vas **voir** !

Des composants **isolés** (Pure)

Un channel de **communication** priviligié avec les **graphistes**

S'ajoute à **n'importe** quel projet non vide !

Un **exemple** :
https://ledger-live-ui-react.vercel.app/

---
## Logger

**Plus** qu'un simple console.log()

Quel serait le logger **ultime** ?

* **template** de message (timestamp)
* **niveaux** / degrès à afficher selon envies
* afficher dans une **console** d'exécution
* garder un **historique** en dur

Winston : un exemple pour nodeJS 
[lien pour plus d'infos](https://zetcode.com/javascript/winston/)

![bg right:35% fit](../images/js_log.png)

---
```js
const winston = require('winston');

const logger = winston.createLogger({
  level: 'info',
  format: winston.format.json(),
  defaultMeta: { service: 'user-service' },
  transports: [
    //
    // - Write all logs with importance level of `error` or less to `error.log`
    // - Write all logs with importance level of `info` or less to `combined.log`
    //
    new winston.transports.File({ filename: 'error.log', level: 'error' }),
    new winston.transports.File({ filename: 'combined.log' }),
  ],
});

//
// If we're not in production then log to the `console` with the format:
// `${info.level}: ${info.message} JSON.stringify({ ...rest }) `
//
if (process.env.NODE_ENV !== 'production') {
  logger.add(new winston.transports.Console({
    format: winston.format.simple(),
  }));
}
```

---
## Mardown is the new Txt

Pk ??? Documentations, Readme, notes, cours en diapos, etc ...

```md
# titre
## sous-titre
![](../images/mon_image.png)
[un lien](http://google.fr)
1) premier
2) deuxième
**gras**
***italique***
~~barré~~
```

Une norme, des sous variantes ...

---
## Git : un ami qui vous veut du bien

Qu'est-ce que vous **utilisez** de **Git** ?

Git c'est la **différence** entre le **bon** est le **mauvais** ~~chasseur~~ **dev** ! 

```bash
git pull
git checkout -b "nouvelle-branche"
git add .
git commit -m "mon commit"
git push
git rebase main 
git merge main
```

https://www.conventionalcommits.org/en/v1.0.0/#specification

---
## Husky : un bon chien de garde

Avant un commit il sera là pour être sûr qu'il est acceptable ...

Votre Sam du code

En un peu plus agressif !

![bg right](../images/Husky.jpg)

---
![bg](../images/Husky-aggressif.jpg)

---
## CI pour Continuous Integration

***Gitlab*** vs ***Github***

Différents **pings** pour différentes **actions** :
- commit => build de l'app
- merge => création d'une mise à jour
- commit sur une branche parent => check conflicts sur les enfants

**CD** pour Continuous Delivery

Métier : **DevOps**

---
## Docker : la baleine bleue

**Emuler** vs **Virtualiser** vs **Mimer**

Régler le téléphone arabe des environnements de développement

Il suffit de :
- Installer Docker
- Un fichier de configuration
- Démarrer notre container

![bg right:40%](../images/docker.jpeg)

---
## la QA : vous mais en mieux

**Code review** ? Pas eux mais juste avant de leur donner du travail

- Tester en conditions réelles, **double check**
- Faire le point sur les **avancées générales**
- **Mutualiser** les solutions
- Conserver une **homogénéité** du code
- Actifs dans les **releases**
- Pas des **surhommes** non plus

---
## Que ça ?

Le reste n'est qu'**expèriences** et **habitudes**

![](../images/graph_connaissance.png)

Où vous situez-vous ?

![bg right:35%](../images/end.jpg)