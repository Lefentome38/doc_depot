# Les mathématiques pour les nuls

## Introduction

Vous êtes de retour à l'école primaire.
Javascript est un langage de programmation qui permet de faire des calculs.
Mais aujourd'hui vous n'avez pas l'autorisation d'utiliser les opérateurs mathématiques + - * /
Je vous fourni une fonction qui permet de faire une addition "simple" de deux chiffres entre 1 et 9, compris.

```typescript
function additionSimple(a: number, b: number): number {
    if(a < 1 || a > 9 || b < 1 || b > 9) {
        throw new Error("Les nombres doivent être compris entre 1 et 9");
    }
    return a + b;
}
```