# Algorithmie avec typescript

## Projet

Téléchargement du repo et utilisation :
https://github.com/ThomasLaforge/ts-setup-simplon

## Les Tableaux

### Créer un tableau
    
```typescript 
    const tableau = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
```
### Afficher la longueur du tableau

```typescript
    console.log(tableau.length);
```

### Afficher le premier élément du tableau

```typescript
    console.log(tableau[0]);
```

### Afficher le dernier élément du tableau

```typescript
    console.log(tableau[tableau.length - 1]);
```

### Afficher le 4ème élément du tableau

```typescript
    console.log(tableau[3]);
```

### Effectuer une action sur chaque élément du tableau

```typescript
    tableau.forEach((element) => {
        console.log(element);
    });

    // ou

    for (let index = 0; index < tableau.length; index++) {
        console.log(element);
    }
```

### Créer un tableau de meme taille avec des valeurs différentes

```typescript
    // Tableau qui double la valeur de chaque élément
    const tableauBis = tableau.map((element) => {
        return element * 2;
    });
```

### Créer un tableau de même taille avec les index qui multiplient les valeurs

```typescript
    // Tableau qui multiplie la valeur de chaque élément par son index
    const tableauBis = tableau.map((element, index) => {
        return element * index;
    });
```

### Trouver le premier élément qui vaut 5

```typescript
    const index = tableau.find((element) => {
        return element === 5;
    });
    console.log(index);
```

Valeur de retour de find :
- Si l'élément est trouvé, la valeur de retour est l'élément
- Si l'élément n'est pas trouvé, la valeur de retour est undefined

### Trouver l'index du premier élément qui vaut 5

```typescript
    const index = tableau.findIndex((element) => {
        return element === 5;
    });
    console.log(index);
```

Valeur de retour de findIndex :
- Si l'élément est trouvé, la valeur de retour est l'index de l'élément
- Si l'élément n'est pas trouvé, la valeur de retour est -1
