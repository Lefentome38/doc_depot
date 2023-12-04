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