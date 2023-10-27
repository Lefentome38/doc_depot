export function exo2(){
    console.log('exo2')
    // const tableau = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    // let tableau : number[] = [];
    // for (let index = 0; index < 10; index++) {
        // tableau[index] = index + 1
    // }

    let tableau : number[] = [];
    let index = 0;
    while (index < 10) {
        tableau[index] = index + 1;
        index = index + 1;
    }

    console.log("mon tableau", tableau);
    console.log("premier element", tableau[0]);
    console.log("longueur tableau", tableau.length);
    console.log("dernier element", tableau[tableau.length - 1])
    console.log("le quatrieme element", tableau[3]);

    let tableauBis : number[] = [];

    for (let index = 0; index < tableau.length; index++) {
        const element = tableau[index];
        tableauBis[index] = element * 2;
    }

    console.log("tableau doublé", tableauBis);
    
}