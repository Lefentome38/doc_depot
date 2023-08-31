export function exo3(){
    // On a un stock de foin qui contient 800kg de foin.
    // On a 2 moutons qui mangent 500g de foin par jour.
    // Un des mouton est transformé en gigot au bout de 1000 jours.
    // Combien de temps le stock de foin va-t-il durer ?

    // Même exercice si le stock est de 20 kg 
    // Même exercice si le nombre de mouton est de 5.
    console.log("2 moutons et 800KG foin", getNbJourOfFood(800, 2));
    console.log("2 moutons et 20KG foin", getNbJourOfFood(20, 2));
    console.log("5 moutons et 800KG foin", getNbJourOfFood(800, 5));
}

const PORTION_FOOD_BY_SHEEP = 0.25;
const DAYS_BEFORE_LOSING_ONE_SHEEP = 1000;

function getNbJourOfFood(foodInKg: number, nbSheep: number){
    let nbJour = 0

    while(foodInKg > 0){
        if(nbJour === DAYS_BEFORE_LOSING_ONE_SHEEP){
            nbSheep -= 1;
        }
        foodInKg -= PORTION_FOOD_BY_SHEEP * nbSheep
        if(foodInKg >= 0){
            nbJour++
        }
    }

    return nbJour
}