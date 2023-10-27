# Par odin

## Introduction

Le jeu "Par Odin" est un jeu de résolution de problèmes avec des dés.
7 dés sont lancés et le joueur doit créer la combinaison qui permet de créer deux équipes de force égale.
Il y a 6 types de dés, chacun ayant une valeur différente.
Les dés ont également certains pouvoirs qui modifient leur valeur ou celle des autres dés.
Un cahier de règle est fourni avec le jeu.
Il propose différents niveaux de difficulté.
Résolvez les problèmes des dés blancs.

Vous pouvez également essayer de résoudre les problèmes du premier dé noir.

Je fourni une fonction qui permet de générer les différentes combinaisons possibles avec les dés.

```typescript
export function getAllDiceCombinations(dices) {
  const toCombine = new Array(dices.length).fill("").map((_, i) => i);
  let combinations = [];
  let temp = [];
  let slent = Math.pow(2, toCombine.length) - 1;

  for (let i = 0; i < slent; i++) {
    temp = [];
    for (var j = 0; j < toCombine.length; j++) {
      if (i & Math.pow(2, j)) {
        temp.push(toCombine[j]);
      }
    }

    if (temp.length > 0) {
      combinations.push(temp);
    }
  }

  return combinations.map((combi) => {
    const completion = toCombine.filter((index) => combi.indexOf(index) === -1);
    const diceCombi = combi.map((e) => dices[e]);
    const diceCompletion = completion.map((e) => dices[e]);
    return [diceCombi, diceCompletion];
  });
}