# Pour l'instalation d'un projet. Vite, Vitest, React, Sass, Router et playwright, (client)

```bash
npm init vite@latest
```
choisire: -react -typescript

```bash
cd Nom_Du_Dossier
npm i
npm i --save-dev sass
npm i -D vitest
npm i dotenv 
npm i react-router-dom 
npm run dev
```

```bash
# - les sripts (package.json)

"test": "vitest",
"e2e": "playwright test",
"ui": "playwright test --ui",
"codegen": "playwright codegen",
"debug": "playwright test --debug"
```

### playwright install (client)

```bash
# - instalation de playwright

npm init playwright@latest # test TDD
```

### Avant de démarer (client)

- supprimer le dossier "assets"
- surpprimer "App.css"

- "App.tsx"
    - supprimer tout les imports 
    - surpprimer le contenue qui ce trouve dans le return et l'état(count)

- changer le "index.css" en "index.scss" 
    - supprimer le contenue 
    - ajouter un body{background-color: lightblue;} (juste pour virifier si ça marche)

- "main.tsx" changer l'import "./index.css" en "./index.scss" 

- "index.html"
    - supprimer le <link ... href="/vite.svg">
    - changer le title

- créer un dossier "composants" dans "src"
    - créer un composants "hello_test.tsx"
    - coder votre composants et en suite le mettre dans "App.tsx"

- créer un dossier "__test__" dans "src"
    - créer un fichier "tata.test.ts" pour faire les tests unitaires

- puis npm run dev (pour voir si tout marche bien)
    - et les autres commande disponible dans les scrpits



<!-- du coté serveur il me manque des infos -->

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

[condenser serveur_install](./A_serveur_condenser.md)

[Doc GitHub | WLS](./list_commande.md)

## code exemple

[Framework_React](./D_code_emple/Framework_React.md)

[sass scss](./D_code_emple/scss_sass.md)

[Reponsive desing](./D_code_emple/Reponsive_Design.md)

[Node_js](./D_code_emple/Node_js.md)

[API_post](./D_code_emple/API_post.md)

[DOcker](./D_code_emple/Docker.md)


