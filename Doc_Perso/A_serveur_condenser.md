## install (serveur)

- dans le terminal créer un dossier
- dans le dossier

```bash
npm init
```
appuyer sur Entrer tout le long jusqu'a "Is this OK? (yes)" puis "y"


```bash
npm install --save-dev concurrently typescript nodemon @types/node
```

- ajouter les commandes au package.json
    "dev": "concurrently -k -n \"Typescript,Node\" -p \"[{name}]\" -c \"blue,green\" \"tsc --watch\" \"nodemon dist/index.js\"",
    "start": "tsc && node dist/index.js"

```bash
npx tsc --init
```

- dans tsconfig.json ramplacer le contenue part 

```ts
    {
        "compilerOptions": {
            "module": "commonjs",
            "esModuleInterop": true,
            "outDir": "dist",
            "target": "es6",
            "strict": true
        },
        "include": [
            "src/**/*"
        ]
    }
```

- créer un dossier "src" et un fichier "src/index.ts"

- ensuite instaler les dependences

```bash

npm i -D vitest
npm i body-parser
npm i dotenv
npm i express --save 
npm i --save-dev @types/express 
npm install cors
npm install -D @types/cors
```
- créer un fichier API.HTTP
    - créer vos requettes

- créer un fichier .env
    - rajouter des trucs (ex: PORT=3030)

- créer un fichier .gitignore
    - rajouter tout les élèments qui ne devront pas étre afficher sur GitHub

- puis dans "index.ts" ajouter 
    ```ts
      console.log("hello");

      import express from 'express'
      import "dotenv/config"

      const app = express();
      const PORT = process.env.PORT as string;

      app.get('/helloo', (_, res) => {
          console.log("hello les toutous");
          res.send("ok")
      })

      app.listen( parseInt(PORT), () =>
        console.log("Server is listening on port " + PORT + "...")
      );
    ```

- puis 
```bash
npm run start # pour compiler le fichier index.ts => index.js
```

## ensuite le GitHub

```bash 
# (les basses des basses de GitHub)

git init
git add .
git commit -m "le_message"
```

```bash 
# (pour relier le depot local au depot distant, GitHub)

git remote add origin git@github.com:Lefentome38/nom_du_ripot_git.git
git branch -M main
git push -u origin main
```



```bash 
# (les branch et travaille en groupe)

git branch nom_de_la_branch # (pour créer la branch)
git checkout main
git pull
git checkout nom_de_la_branch
git rebase main
git push --force-with-lease 
ou 
git push origin nom_de_la_branch
git rebase --abort
PR sur github # (PR = pull request)
```

```bash 
# (pour push vers Main)

git push
```

## lien Github exo 

- https://github.com/Lefentome38/TP_counter_react_Thomas
- https://github.com/Lefentome38/TP_calculatrice_react_Thomas
- https://github.com/Lefentome38/TP_react_petitDe_Thomas
- https://github.com/Lefentome38/TP_frameworks_js_react_Thomas
- https://github.com/Lefentome38/marmiton_serveur
- 

## doc condenser 

[condenser client_install](./A_client_condenser_des_cours_install_projet.md)

[Doc GitHub | WLS](./list_commande.md)

## code exemple

[Node_js](./D_code_emple/Node_js.md)

[API_post](./D_code_emple/API_post.md)

[Docker](./D_code_emple/Docker.md)