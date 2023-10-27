export const exo1 = () => {
    /*
    ## Exercice 1 - Les variables

    créer une variable a qui contient le nombre 5
    créer une variable b qui contient le nombre 1
    afficher deux logs pour indiquer si ces variables sont supérieures à PI
    et qui est la plus grande des deux valeurs (utiliser une ternaire)

    */

    const a = 5;
    const b = 1;

    if(a > Math.PI) {
        console.log('a est supérieur à PI');
    }
    else {
        console.log('a est inférieur à PI');
    }

    if(b > Math.PI) {
        console.log('b est supérieur à PI');
    }
    else {
        console.log('b est inférieur à PI');
    }

    const message = a > b ? 'a est plus grand que b' : 'b est plus grand que a';
    console.log(message);

    let c = 5;
    if(c === 5){
        console.log('c est égal à 5');
    }
    else if(c === 6){
        console.log('c est égal à 6');
    }
    else if(c === 7){
        console.log('c est égal à 7');
    }
    else {
        console.log('c n\'est ni 5, ni 6, ni 7');
    }
};