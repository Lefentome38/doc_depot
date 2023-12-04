# liste de commande 

lien: https://playwright.dev/docs/intro <!-- -->
lien: https://ohaleks.hashnode.dev/using-puppeteer-on-windows-with-wsl

```bash
    npm init playwright@latest 
    # pour créer le playwright
```

![...](../D_img/Capture_playwright.PNG)

```bash    

    # d'autre commande donné par playwright

    npx playwright test
    # Runs the end-to-end tests.

     npx playwright test --ui
    # Starts the interactive UI mode.<

    npx playwright test --project=chromium
    # Runs the tests only on Desktop Chrome.

    npx playwright test example
    # Runs the tests in a specific file.

    npx playwright test --debug
    # Runs the tests in debug mode.

    npx playwright codegen
    # Auto generate tests with Codegen.

    # We suggest that you begin by typing:

    npx playwright test
```

# Playwright

## Installation

Deux setups possibles:
- WSL + Xserver
- Windows + node

### WSL + Xserver

#### Sur Windows

- Installer WSL2 (déjà fait ^^)
- Installer Xserver (VcXsrv) [Lien pour le télécharger](https://sourceforge.net/projects/vcxsrv/)
- Lancer XLaunch
    - Laisser "Multiple Windows"
    - Suivant 
    - Laisser "Start no client"
    - Suivant
    - Ajoutez bien "Disable access control"
    - Suivant
    - Terminer

#### Sur WSL

- Mettre à jour votre Ubuntu
```bash
# update a list of packages in the repositories to download
sudo apt update
# apply downloaded changes
sudo apt upgrade -y
```
- Configurer la communication entre WSL et Xserver
- Ouvrir le fichier `~/.bashrc`
```bash
code ~/.bashrc
```
- Ajouter les lignes suivantes à la fin du fichier
```bash
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
sudo /etc/init.d/dbus start &> /dev/null
```
- Donner à dbus les droits d'administrateur
```bash
sudo visudo -f /etc/sudoers.d/dbus
```
- Ajouter la ligne suivante
```bash
    <your_username> ALL = (root) NOPASSWD: /etc/init.d/dbus
```
- remplacer `<your_username>` par votre nom d'utilisateur
- si vous ne connaissez pas votre nom d'utilisateur, tapez la commande `whoami` dans leterminal
- Sauvegarder et quitter le fichier
    - `Ctrl + X`
    - `Y`
    - `Entrée`
- Redémarrer WSL ou taper la commande suivante
```bash
source ~/.bashrc
```
- Installer les librairies nécessaires
```bash
sudo apt-get install ca-certificates fonts-liberation libappindicator3-1 libasound2 libatk-bridge2.0-0 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm1 libgcc1 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 lsb-release wget xdg-utils
```

<!-- ### Windows + NodeJS

- Installer NodeJS [Lien pour le télécharger](https://nodejs.org/en/download/)
- Priez pour que ça marche vu que c'est Windows
- Il va falloir apprendre à créer un projet dans windows et gérer vos clés ssh

Blague à part, vous pouvez aller avec WSL dans vos fichiers de Windows en allant dans `/mnt/c/Users/<your_username_windows>` !-->

## Créer un projet Playwright

- Créer un projet vite en React + Typescript, qui se nomme tests-e2e-playwright
```bash
npm init vite@latest
```
- Installer les dépendances
```bash
cd tests-e2e-playwright
npm install
```
- Installer Playwright
```bash
npm init playwright@latest
```
    - Where to put your end-to-end tests? `e2e`
    - Add a Github Actions workflow? `y`
    - Install Playwright browsers (can be done manually via 'npx playwright install')? `y`
    - Tout ce qu'il y a après, appuyez sur `yes` et `Enter` ^^

## Lancer les tests

- Créer un script dans `package.json`
```json
"scripts": {
    "e2e": "playwright test"
}
```
- Lancer les tests
```bash
npm run e2e
```

## S'amuser avec Playwright

Essayez de comprendre les tests e2e qui sont générés par Playwright.
Lancer les tests en headless et en mode debug.

### En headless

les tests sont lancés sans ouvrir de navigateur.

```bash
npm run e2e
```

ou 

```bash
npx playwright test
```

### En mode UI (headless false)

les tests sont lancés avec un navigateur ouvert.

```bash
npx playwright test --ui
```

En mode debug, les tests sont lancés avec un navigateur ouvert et un mode debug qui permet de passer d'étapes en étapes.

```bash
npx playwright test --debug
```

### Créer des tests

avec l'outil Record / Codegen de Playwright.

- Lancer l'outil
```bash
npx playwright codegen
```
- Suivre les instructions
- Copier le code généré dans le fichier `tests/e2e/example.spec.ts`
- Lancer les tests
```bash
npm run e2e
```

### Changer la configuration

- Ouvrir le fichier `playwright.config.ts`
- Changer la configuration en supprimant les navigateurs que vous ne voulez pas utiliser. Conservez un seul navigateur fonctionnel sur votre machine.
- relancer les tests
```bash
npx playwright test --ui
```

## TP - Compteur

- Lancez votre application `vite`
- Créez un test qui vérifie que le compteur est bien à 0 au démarrage
- Créez un test qui vérifie que le compteur est bien à 2 après deux clics sur le bouton `+`
- Ajouter votre code sur github
- Allez dans l'onglet `Actions` de votre projet
- Vérifiez que les tests passent bien

Vous venez de créer votre premier test e2e avec Playwright et de l'intégrer à votre pipeline de CI de Github