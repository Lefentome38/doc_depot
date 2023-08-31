
const tableau = [2, 7, 12, 3];

function find(tab: number[], elementToFind: number){
    let i = 0;

    while(i < tab.length && tab[i] !== elementToFind){
        i++
    }

    console.log('i', i)

    return i === tab.length ? undefined : tab[i];
}

function findIndex(tab: number[], elementToFind: number){
    let i = 0;

    while(i < tab.length && tab[i] !== elementToFind){
        i++
    }

    console.log('i', i)

    return i === tab.length ? -1 : i;
}

console.log('findIndex', findIndex(tableau, 7))

// Math.min(...tab)

function min(tab: number[]){
    let minimum = tab[0];
    // le minimum c'est cool
    for (let i = 1; i < tab.length; i++) {
        if(tab[i] < minimum){
            minimum = tab[i]
        }
    }
    return minimum
}

function max(tab: number[]){
    let maximum = tab[0];
    // le minimum c'est cool
    for (let i = 1; i < tab.length; i++) {
        if(tab[i] > maximum){
            maximum = tab[i]
        }
    }
    return maximum
}

console.log(find(tableau, 7))
console.log(min(tableau))

function sum(tab: number[]){
    let total = 0;

    for (let index = 0; index < tab.length; index++) {
        total += tab[index]
    }

    return total
}

function filterNbSupSix(tab: number[]){
    let res: number[] = []

    for (let index = 0; index < tab.length; index++) {
        if(tab[index] > 6){
            res.push(tab[index])
        }
    }

    return res
    
}

function map(tab: number[], handler: (val: number, index: number) => number){
    let res: number[] = []

    for (let index = 0; index < tab.length; index++) {
        res.push(handler(tab[index], index))
    }

    return res
}

console.log('filtered', filterNbSupSix(tableau))
console.log('sum', sum(tableau))
console.log('incrementedTab', 
    map(tableau, (value, index) => {
        return index + value - 2
    }), 
    tableau.map( (value, index) => index + value - 2)
)

function reduce(tab: number[], valeurInitiale = 0, handler: (acc: number, valeur: number, index: number) => number,){
    return tab.reduce(handler, valeurInitiale)
}

let sumBis = tableau.reduce( (acc, val) => {
    return [...acc, val]
}, [])

let sumBisBis = reduce(tableau, undefined, (acc, val, i) => {
    return acc + val
})

console.log('sum with reduce', sumBis, sumBisBis)