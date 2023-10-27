
const NB_WAGONS = 10
const PREMIER_WAGON = 3
const VITESSE_INITIALE = 92
const AUGMENTATION_VITESSE = 10

function getNbKmParcourus(){
    let train : number[] = []
    let vitesseActuelle = VITESSE_INITIALE
    let nbKmParcourus = 0

    for (let index = PREMIER_WAGON; index < NB_WAGONS + PREMIER_WAGON; index++) {
        train.push(index * 3)
    }

    console.log('train initial', train)

    for (let index = PREMIER_WAGON; index < NB_WAGONS + PREMIER_WAGON; index++) {
        train.push(index * 3)
    }

    while(train.length > 0){
        // Supprimer un passager
        const randomWagonIndex = Math.floor(Math.random() * train.length)
        train[randomWagonIndex]--
        // Valider que le wagon de ce passager n'est pas vide
        if(train[randomWagonIndex] === 0){
            train = train.filter( (_, i) => i !== randomWagonIndex)
            vitesseActuelle += AUGMENTATION_VITESSE
        }
        // Calculer le nombre de km parcouru cette minute
        const nbKmParcourusCetteMinute = vitesseActuelle / 60
        nbKmParcourus += nbKmParcourusCetteMinute

        // Afficher les informations
        console.log('un passager enlevé du train', train, vitesseActuelle, nbKmParcourusCetteMinute)
    }

    console.log('nombre de kilomètres parcourus', nbKmParcourus)
    return nbKmParcourus
}

const NB_VOYAGES = 100
let totalKmParcourus = 0

for (let index = 0; index < NB_VOYAGES; index++) {
    totalKmParcourus += getNbKmParcourus()
}

console.log('fin des voyages', totalKmParcourus, totalKmParcourus / NB_VOYAGES)