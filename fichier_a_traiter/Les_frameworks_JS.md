# Les frameworks JS

## Introduction

Nous avons utilisé le javascript Vanilla pour dynamiser le front-end.
Cependant, il existe des frameworks qui permettent de faciliter le développement front-end.
Les frameworks sont des bibliothèques de fonctions qui permettent de développer plus rapidement et plus facilement.

En Javascript, on ne peut pas rafraichir une interface toutes les x millisecondes.
On utilise des techniques pour modifier le DOM sans rafraichir la page et on essaye de le faire le moins souvent possible.

## Les frameworks JS

### Historique

Il existe plusieurs frameworks JS, les plus connus sont :
- Angular
- React
- Vue
- Svelte

C'est la nouvelle génération des frameworks JS, ils sont basés sur le DOM virtuel.

Avant cela, il y avait les frameworks JS basés sur le DOM réel :
- EmberJS
- angularJS
- BackboneJS
- KnockoutJS
- hammerJS

et avant ça :
- jQuery
- MooTools

### Les frameworks JS basés sur le DOM virtuel

On ne va pas trop s'attarder dessus, car un TP est prévu pour les découvrir un par un.
Nous allons cependant acquérir la base de ces frameworks grâce à React.

## Bases communes aux frameworks JS

### Le DOM virtuel

Le DOM virtuel est une copie du DOM réel, il est stocké en mémoire.
Il est plus rapide à modifier que le DOM réel.
Il est utilisé par les frameworks JS pour modifier le DOM réel.

### Les composants

Les composants sont des éléments qui permettent de découper l'interface en plusieurs parties.
Ils sont réutilisables et peuvent être imbriqués les uns dans les autres.
On peut imaginer que les balises HTML sont des composants avec de l'affichage, des comportements et des styles par défaut.

## Les composants

### Fonctionnalités

- nom
- etat
- propriétés
- données calculées
- des méthodes de cycle de vie
    - création
    - mise à jour
    - destruction
- comportement / actions / handlers
- affichage / rendu
- (style)

## TP - React comme le prof

### Installation

```bash
npm init vite@latest
```

React + Typescript

Elève - Qu'il est beau ce projet React ! Attends quoi un fichier .tsx ?
Prof - Oui, c'est du Typescript + JSX. JSX est une extension de syntaxe pour React.

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