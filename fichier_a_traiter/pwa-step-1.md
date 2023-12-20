# Résumé PWA

## Projet

- facile à créer ?
- facile à maintenir ?
- fonctionnement aléatoire de certaines fonctionnalités => bonus
- fonctionnement dégradé sur navigateur non compatible => inciter à utiliser Chrome
- fonctionnement dégradé sur Apple => Cibler sa clientèle
- fonctionnalités intéressantes et proche des applications mobiles

## Intêrets d'une PWA

- Peu cher à développer
- Un seul code pour plusieurs devices
- Fonctionne hors ligne (demain)
- Technologie proche des applications hybrides
- Sécurisé par défaut (https)(ex; avec Vercel)
- TWA => Application Android, peut être IOS un jour
- A votre portée
- Reprise d'un site existant
- Mises à jours transparentes

## Et la suite

- Manifest => icône, nom, couleur, etc.
- Service Worker ?
  C'est ce que vous allez voir demain !
  Avec workbox c'est facile

## Veille sur workbox + workshop

Utilisation avec le plugin Vite PWA

### Liens

- https://developer.chrome.com/docs/workbox
- https://developers.google.com/codelabs/pwa-training/pwa03--working-with-workbox#0
- https://vite-pwa-org.netlify.app/workbox/
- https://developer.chrome.com/docs/workbox/modules/workbox-strategies
- https://developer.chrome.com/docs/workbox/modules

### Questions

- Comment utiliser workbox avec vite ?
- Comment définir une stratégie de cacheFirst pour tous les fichiers CSS et HTML
- Qu'est ce qu'une stratégie CacheOnly ?
- Quand utiliser une stratégie NetworkFirst ?
- Quand utiliser une stratégie StaleWhileRevalidate ?

### Petite évaluation pour demain

Je vous l'envoie demain midi, prenez le temps de bien lire la documentation et de faire le workshop avant,
vous avez jusqu'à demain 17h pour le renvoyer.
Brief à rendre demain avant 17h + "correction" vendredi matin.

# veille Aymeric

- worker | workbox | workshop
- Les service workers sont des ressources JavaScript

## worker
## workbox
- un ensemble de bibliothèque Open Source (appelées modules **en interne**)
- encapsules les API de bas niveau (ex: API Service Worker et Cache Storage)
- 54%, Les sites mobiles avec service workers utilisent la bibliothèque Workbox
- quelques modules populaires: Workbox-Routing | Workbox-strategies | workbox-precaching | workbox-expiration | workbox-window
### utilisation de Workbox 
- CLI Workbox: utilitaire de ligne de commande qui génère un service worker complet, injecte un fichier manifeste de mise en cache préalable ou copie les fichiers Workbox nécessaires.

- Workbox Build: module npm qui génère un service worker complet, injecte un fichier manifeste de mise en cache préalable et copie les fichiers Workbox. Elle est destinée à être intégrée à votre propre processus de compilation.
```bash
npx workbox-cli wizard
```
- workbox-sw: possibilité de charger les packages de service worker d'une boîte de travail à partir d'un CDN qui n'utilise pas de processus de compilation.
## workshop


### sources 
- https://web.dev/learn/pwa/workbox?hl=fr
