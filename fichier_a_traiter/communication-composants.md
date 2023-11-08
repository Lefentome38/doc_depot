# Communication entre composants

## Les propriétés

Parent -> Enfant

Les propriétés sont des données qui sont passées d'un composant parent à un composant enfant.

```tsx
const App = () => {
    return (
        <div>
            <ProfName name="toto" />
        </div>
    );
};

const ProfName = (props) => {
    return (
        <div>
            <h1>Prénom du prof : {props.name}</h1>
        </div>
    );
};
```

## Les événements

Enfant -> Parent

Les événements permettent de remonter des informations d'un composant enfant à un composant parent.

```tsx
const App = () => {
    const [name, setName] = useState('toto');

    const handleNameChange = (newName) => {
        setName(newName);
    };

    return (
        <div>
            <ProfName name={name} onNameChange={handleNameChange} />
        </div>
    );
};

const ProfName = (props) => {
    return (
        <div>
            <h1>Prénom du prof : {props.name}</h1>
            <button onClick={() => props.onNameChange('titi')}>Change name</button>
        </div>
    );
};
```

Cela s'appelle le lifting state up ou la remontée de l'état en français.
