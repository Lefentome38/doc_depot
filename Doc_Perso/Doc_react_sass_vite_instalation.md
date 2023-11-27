# Pour l'instalation de vite, react et sass

```bash
npm init vite@latest
```
choisire - react - typescript

```bash
cd Nom_Du_Dossier
npm i
npm i --save-dev sass
npm i react-router-dom 
npm run dev
```

## avant de démarer

    - supprimer le dossier "assets"
    - surpprimer "App.css"
    
    - "App.tsx"
        - supprimer tout les imports 
        - surpprimer le contenue qui ce trouve dans le return et l'état(count)
    
    - changer le "index.css" en "index.scss" 
        - supprimer le contenue 
        - ajouter un body{background-color: lightblue;} (juste pour virifier si ça marche)
    
    - "main.tsx" changer l'import "./index.css" en "./index.scss" 

    - "index.html"
        - supprimer le <link ... href="/vite.svg">
        - changer le title

    - créer un dossier "composants" dans "src"
        - créer un composants "hello_test.tsx"
        - coder votre composants et en suite le mettre dans "App.tsx"
    
    - puis npm run dev (pour voir si tout marche bien)

## ensuite le GitHub

```bash
git init
git add .
git commit -m "le message"
```

```bash (pour relier le GitHub)
git remote add origin git@github.com:Lefentome38/nom_du_ripot_git.git
git branch -M main
git push -u origin main
```


```bash (pour la suite)
git push
```

```bash (les branch)
git branch nom_de_la_branch (pour créer la branch)
git checkout main
git pull
git checkout fix/a (nom_de_la_branch)
git rebase main
git push --force-with-lease 
ou 
git push origin nom_de_la_branch
git rebase --abort
PR sur github (PR = pull request)
```

## lien Github exo 

    - https://github.com/Lefentome38/TP_counter_react_Thomas
    - https://github.com/Lefentome38/TP_calculatrice_react_Thomas
    - https://github.com/Lefentome38/TP_react_petitDe_Thomas
    - https://github.com/Lefentome38/TP_frameworks_js_react_Thomas

# code réference 

## Outils sass

 ### Nesting

 ```scss
.container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

    .title {
        font-size: 2rem;
        font-weight: bold;
    }

    .subtitle {
        font-size: 1.5rem;
        font-weight: normal;
    }
}
```

 ### Variables

 ```scss
$primary-color: #ff0000;
$secondary-color: #00ff00;

 .container {
    background-color: $primary-color;
    color: $secondary-color;
}
```

 ### Mixins

 ```scss
@mixin flex($direction, $justify, $align) {
    display: flex;
    flex-direction: $direction;
    justify-content: $justify;
    align-items: $align;
}

 .container {
    @include flex(column, center, center);
}
```

 ### Functions

 ```scss
@function add($a, $b) {
    @return $a + $b;
}

 .container {
    width: add(10px, 20px);
}
```

 ### Partials

 ```scss
_variables.scss
_mixins.scss
_functions.scss
```

 ### Imports

 https://vincent-barrault.fr/articles/sass-remplacer-import-par-use

 ```scss
@import "variables";
@use "functions";
@use "mixins" as *;
```

 ### Extends

 ```scss
%flex {
    display: flex;
}

 .container {
    @extend %flex;
}
```

 ### Opérateurs

 ```scss
.container {
    width: 100px + 200px;
    height: 100px - 50px;
    margin: 10px * 2;
    padding: 10px / 2;
    padding: math.div($patate, 2);
}
```

 ### Boucles

 ```scss
@for $i from 1 through 3 {
    .item-#{$i} {
    width: 100px * $i;
    }
}
```

 ### Conditions

 ```scss
$primary-color: #ff0000;
$secondary-color: #00ff00;

 .container {
@if $primary-color == #ff0000 {
    background-color: $primary-color;
} @else {
    background-color: $secondary-color;
    }
}
```

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


## Ooutil framework react

### Notre premier composant

```tsx
import React from 'react';

const ProfName = () => {
function ProfName() {
    return (
        <div>
            <h1>Thomas</h1>
        </div>
    );
};

export default ProfName;
```

```tsx
```

```tsx
import React from 'react';
import ProfName from './components/ProfName';

const App = () => {
    return (
        <div>
            <ProfName />
            <ProfName />
        </div>
    );
};

export default App;
```

### Les propriétés

```tsx
import React from 'react';

const ProfName = (props) => {
    return (
        <div>
            <h1>Prénom du prof : {props.name}</h1>
        </div>
    );
};

export default ProfName;
```

```tsx
import React from 'react';

const App = () => {
    return (
        <div>
            <ProfName name="Thomas" />
        </div>
    );
};

export default App;
```

### Les états

```tsx
import { useState } from 'react';

const ProfName = (props) => {
    const [name, setName] = useState('thomas');

    return (
        <div>
            <h1>Prénom du prof : {name}</h1>
        </div>
    );
};

export default ProfName;

```

### Les données calculées

```tsx
import { useState } from 'react';

const ProfName = (props) => {
    const [name, setName] = useState('thomas');

    const upperCaseName = useMemo(
        () => name.toUpperCase()
        , [name]
    );

    return (
        <div>
            <h1>Prénom du prof : {upperCaseName}</h1>
        </div>
    );
};

export default ProfName;

```

### Les évènements

```tsx
import { useState, useCallback } from 'react';

const ProfName = (props) => {
    const [name, setName] = useState('thomas');

    const upperCaseName = useMemo(
        () => name.toUpperCase()
        , [name]
    );

    const handleClick = useCallback(
        () => setName('titi')
        , []
    );

    return (
        <div>
            <h1>Prénom du prof : {upperCaseName}</h1>
            <button onClick={handleClick}>Reset</button>
        </div>
    );
};

export default ProfName;

```

### Les méthodes de cycle de vie

Onmount

```tsx
import { useState, useEffect } from 'react';

const ProfName = () => {
    useEffect(() => {
        console.log('Le composant a été créé');
    }, []);

    return <div>
        <h1>Prénom du prof : Thomas</h1>
    </div>
}
```

onupdate / onchange

```tsx
import { useState, useEffect } from 'react';

const ProfName = () => {
    const [name, setName] = useState('thomas');

    useEffect(() => {
        console.log('L etat name a changé');
    }, [name]);

    return <div>
        <h1>Prénom du prof : {name}</h1>
    </div>
}
```

onunmount

```tsx
import { useState, useEffect } from 'react';

const ProfName = () => {
    useEffect(() => {
        console.log('Le composant a été créé');

        return () => {
            console.log('Le composant est détruit');
        };
    }, []);

    return <div>
        <h1>Prénom du prof : Thomas</h1>
    </div>
}
```

### Le jsx

class => className
```tsx
<h1 className="title">Prénom du prof : {upperCaseName}</h1>
```

style="background-color: blue;" => style={{ backgroundColor: 'blue' }}
```tsx
<button style={{ backgroundColor: 'blue' }}>Reset</button>
```

click => onClick
```tsx
<button style={{ backgroundColor: 'blue' }} onClick={handleClick}>Reset</button>
```

for => .map
```tsx
const ProfName = (props) => {
    return (
        <ul>
            {props.names.map((name) => (
                <li>{name}</li>
            ))}
        </ul>
    );
};
```

if => ternaire ou &&

```tsx
let PROD = true;
const nameList = (props) => {
    return (
        <div>
            {props.names.length > 0 ? (
                <ul>
                    {props.names.map((name) => (
                        <li>{name}</li>
                    ))}
                </ul>
            ) : (
                <p>Pas de noms</p>
            )}

            {PROD && <p>En production</p>}
        </div>
    );
};
```

calcul => {calcul}

```tsx
const SimpleCalcul = (props) => {
    return (
        <h1>3 + 3 = {3 + 3}</h1>
    );
};
```



