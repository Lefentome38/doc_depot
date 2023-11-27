# Le routing avec React

## Objectifs

Dans une application, même SPA, il est nécessaire de pouvoir séparer notre affichage en différentes pages.
Il est du coup important d'avoir un système de routing permettant de prendre en compte différents besoins :
- définir des routes
- changer de routes
- définir des paramètres dans les routes
- récupérer les paramètres de la route

Dans ce TP, nous allons voir comment mettre en place un système de routing avec React en utilisant la librairie `react-router-dom`. L'avantage de cette librairie est quelle est simple, complète et utilisée en majorité par la communauté.
Elle résulte de la fusion de deux librairies : `react-router` et `reach-router`.
Elle est maintenue par l'équipe de React et permet de gérer le routing côté mobile et web, avec une syntaxe similaire.
Les deux paquets sont disponibles sur npm : `react-router-dom` et `react-router-native`.

## Installation

Pour installer la librairie, il suffit d'utiliser la commande `npm install react-router-dom`.

## Utilisation

La documentation est très bien faite : https://reactrouter.com/en/main/start/tutorial

Mais ce qui est important c'est de créer un router et de lui lister les routes que l'on souhaite utiliser.

```jsx
import { BrowserRouter, createBrowserRouter } from "react-router-dom";

const router = createBrowserRouter([
  {
    path: "/",
    element: <div>Hello world!</div>,
  },
  {
    path: "/about",
    element: <div>About</div>,
  }
]);
```

Puis de l'utiliser dans notre application :

main.tsx
```jsx
import {RouterProvider, BrowserRouter} from "react-router-dom";

const router = createBrowserRouter([
  {
    path: "/",
    element: <div>Hello world!</div>,
  },
  {
    path: "/about",
    element: <div>About</div>,
  }
]);

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);
```

Changer de route

Pour changer de route, on peut utiliser le composant `Link` :

```jsx
import { Link } from "react-router-dom";

const Home = () => {
  return (
    <div>
      <Link to="/about">About</Link>
    </div>
  );
};
```

ou la fonction `useNavigate` :

```jsx
import { useNavigate } from "react-router-dom";

const Home = () => {
  const navigate = useNavigate();

  return (
    <div>
      <button onClick={() => navigate("/about")}>About</button>
    </div>
  );
};
```

## Exercices

### Exercice 1 --OK--

- Créer une application React avec `vite` -OK
- Installer `react-router-dom` -OK
- Créer un composant `Home` qui affiche `Hello world!` -OK
- Créer un composant `About` qui affiche `About` -OK
- Créer un composant `App` qui affiche `Home` par défaut et `About` sur la route `/about` -OK
- Ajouter un lien vers `/about` dans le composant `Home` avec le composant `Link` -OK
- Ajouter un bouton de retour vers `/` dans le composant `About` avec la fonction `useNavigate` -OK

### Exercice 2

- Créer un composant `Connexion` qui affiche un formulaire de connexion avec un champ pseudo et un mot de passe
- lorsque l'on clique sur le bouton `Se connecter`, on affiche le composant `Home` si le pseudo est `admin` et le mot de passe `safeAdmin`

### Exercice 3

Découvrez comment transmettre une information entre deux pages avec le routing.
Transmettez le pseudo de l'utilisateur connecté entre la page `Connexion` et la page `Home` et affichez le pseudo dans la page `Home`.