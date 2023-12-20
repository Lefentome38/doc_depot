# CrÃ©er une PWA avec vite

## Installation

```bash
npm init vite@latest
cd <project-name>
npm install
npm i -D vite-plugin-pwa
```

configurer le fichier `vite.config.ts`:

```ts
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import { VitePWA } from 'vite-plugin-pwa'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react(), VitePWA({
    registerType: 'autoUpdate',
    devOptions: {
      enabled: true
    },
    manifest: {
      name: 'My App',
      short_name: 'My App',
      theme_color: '#ffffff',
      icons: [
        {
          "src": "assets/icons/icon-72x72.png",
          "sizes": "72x72",
          "type": "image/png",
          "purpose": "maskable any"
        },
        {
          "src": "assets/icons/icon-96x96.png",
          "sizes": "96x96",
          "type": "image/png",
          "purpose": "maskable any"
        },
        {
          "src": "assets/icons/icon-128x128.png",
          "sizes": "128x128",
          "type": "image/png",
          "purpose": "maskable any"
        },
        {
          "src": "assets/icons/icon-144x144.png",
          "sizes": "144x144",
          "type": "image/png",
          "purpose": "maskable any"
        },
        {
          "src": "assets/icons/icon-152x152.png",
          "sizes": "152x152",
          "type": "image/png",
          "purpose": "maskable any"
        },
        {
          "src": "assets/icons/icon-192x192.png",
          "sizes": "192x192",
          "type": "image/png",
          "purpose": "maskable any"
        },
        {
          "src": "assets/icons/icon-384x384.png",
          "sizes": "384x384",
          "type": "image/png",
          "purpose": "maskable any"
        },
        {
          "src": "assets/icons/icon-512x512.png",
          "sizes": "512x512",
          "type": "image/png",
          "purpose": "maskable any"
        }
      ]
    },
  })],
})
```

Pour cela gÃ©nÃ©rez un dissier d'images grÃ¢ce Ã  cet outil :
https://tools.crawlink.com/tools/pwa-icon-generator/

Et insÃ©rez les images dans le dossier `public` de votre projet.
Il faudra donc un dossier `public/assets/icons` avec les images gÃ©nÃ©rÃ©es.
On supprimera le fichier de manifeste.

## Utilisation

### En local

Lancez la commande `npm run dev` pour lancer le serveur de dÃ©veloppement.
Dans chrome, une icÃ´ne d'installation de l'application devrait apparaÃ®tre dans la barre d'adresse.

### HÃ©bergement

Pour hÃ©berger votre application, il faudra utiliser un serveur HTTPS.
Allez sur Vercel et liez le repo Github de votre projet.

Faites valider l'installation de l'application par un autre apprenant.

