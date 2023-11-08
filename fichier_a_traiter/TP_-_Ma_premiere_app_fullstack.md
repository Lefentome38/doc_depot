# TP - Ma premiere app fullstack

## Setup

<!-- 1 - Créer un nouveau projet avec vite-express

```bash
    npm create vite-express
``` -->

<!-- 2 - Ajoutez un .nvmrc avec node en version 18.xx.xx -->
<!-- 3 - Ajoutez un .env avec la variable d'environnement PORT=3030 -->
<!-- 4 - Utilisez cette variable d'environnement dans le fichier src/server/main.ts pour que le serveur se lance avec ce port -->
<!-- 5 - Ajoutez le .env dans le fichier .gitignore -->
<!-- 6 - Créez un point d'API /hello/:nom qui renvoie Bonjour avec le nom passé en paramètre -->
<!-- 7 - Créez un fichier xxxx.http et tester votre API avec l'extension REST Client de VSCode -->
8 - Créez un champ de saisie et un bouton qui permettent de saisir un nom et d'afficher le résultat de l'API dans une balise p en dessous du bouton

## Bonus

1 - Créer un fichier hellos.json qui contient un tableau des noms saisies par l'utilisateur
2 - Créer un point d'API /hellos qui renvoie le contenu du fichier hellos.json
3 - Créer une zone qui affiche le nombre de noms saisis par l'utilisateur dans le fichier hellos.json (à l'ouverture de la page et à chaque saisie)
4 - Créer un bouton qui permet de vider le fichier hellos.json

## Aides

### Exemple d'évènement pour réaliser un appel à l'API

```typescript
btn.addEventListener("click", async () => {
  const res = await fetch("/nb-secondes/12")
  const message = await res.text()
  text.innerText = message
})
```
