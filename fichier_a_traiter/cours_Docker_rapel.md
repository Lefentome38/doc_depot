# Cours Docker

## Présentation

Docker est une plateforme lancé en mars 2013 permettant aux développeurs et aux administrateurs système de développer, déployer et exécuter des applications avec des conteneurs, plus précisément la plateforme permet d'embarquer une application avec toutes ses dépendances dans un process isolé (nommé conteneur) qui peut être ensuite exécutée sur n'importe quelle machine avec n'importe quel système d'exploitation compatible avec le moteur Docker. (plus d'explications seront fournies dans un chapitre dédié aux conteneurs).

Avant de commencer, il faut savoir que le terme Docker signifie à la fois une technologie et à la fois une entreprise, ce qui pourrait parfois porter à confusion.

Docker a été fondée en France par Solomon Hykes. Par manque d'investissement en France, l'entreprise a souhaité évoluer dans la Silicon Valley, où elle a pu enchaîner des levées de fonds spectaculaires, illustrant ainsi le potentiel attendu de cette technologie.

Son rythme d’adoption serait l’un des plus rapide de toutes les technologies récentes, elle est déjà largement répandue chez les acteurs leaders des nouvelles technologies.

Après dix ans chez Docker, le fondateur et CTO de Docker Solomon Hykes, a annoncé son départ de l'entreprise le 28 mars 2018. Il reste tout de même membre du conseil d’administration et l'actionnaire principal.

### Le principe de base : la virtualisation

Le fonctionnement de la virtualisation reste assez simple, c’est qu’au lieu d’avoir un serveur avec un système d’exploitation faisant tourner une ou plusieurs application(s), on préférera mutualiser plusieurs serveurs virtuels depuis un serveur physique grâce à un logiciel nommé l’hyperviseur. L’hyperviseur permet d’émuler intégralement les différentes ressources matérielles d'un serveur physique (tels que l'unité centrale, le CPU, la RAM, le disque dur, carte réseau etc ...), et permet à des machines virtuelles de les partager.

Ainsi ces machines virtuelles nommées aussi VM (Virtual Machine) bénéficieront de ressources matérielles selon leurs besoins (par exemple plus de puissance processeur et plus de mémoire vive mais avec moins d’espace disque). L'avantage c'est qu'il est possible de modifier les ressources physiques de ces VMs en quelques clics. De plus elles possèdent leur propre système d’exploitation ainsi que leurs propres applications.

![https://devopssec.fr/images/articles/docker/virtualisation-vs-conteneurisation/l-hyperviseur.png](https://devopssec.fr/images/articles/docker/virtualisation-vs-conteneurisation/l-hyperviseur.png)

On se trouve alors avec une technologie très utile, malléable et économique pour les professionnels, mais malheureusement elle possède aussi son lot d’inconvénients, heureusement que d’autres personnes ont pensé à aller encore plus loin, et d’être encore plus efficace, et pour cela, la conteneurisation a été crée et par la suite la technologie Docker a permis de la populariser.

### La nouveauté qu'apporte Docker : la conteneurisation


Là où les machines virtuelles intègrent elles-mêmes un OS pouvant aller jusqu’à des Giga-octetsl le conteneur appel directement l'OS pour réaliser ses appels système et exécuter ses applications. Il est beaucoup moins gourmand en ressources

Le déploiement est un des points clés à prendre en compte de nos jours. On peut déplacer les conteneurs d’un environnement à l’autre très rapidement (en réalité c'est encore plus simple et rapide avec Docker, car il suffit juste de partager des fichiers de config qui sont en général très légers). On peut bien sur faire la même chose pour une machine virtuelle en la déplaçant entièrement de serveurs en serveurs mais n'oubliez pas qu'il existe cette couche d'OS qui rendra le déploiement beaucoup plus lent, sans oublier le processus d'émulation de vos ressources physiques, qui lui-même demandera un certain temps d'exécution et donc de la latence en plus.

![](https://www.docker.com/wp-content/uploads/2021/11/docker-containerized-appliction-blue-border_2.png.webp)

 La conteneurisation est de plus en plus populaire car les conteneurs sont :

*Flexibles*: même les applications les plus complexes peuvent être conteneurisées.

*Légers*: les conteneurs exploitent et partagent le noyau hôte.

*Interchangeables*: vous pouvez déployer des mises à jour à la volée

*Portables*: vous pouvez créer localement, déployer sur le cloud et exécuter n'importe où votre application.

*Évolutifs*: vous pouvez augmenter et distribuer automatiquement les réplicas (les clones) de conteneur.

*Empilables*: Vous pouvez empiler des services verticalement et à la volée.

La conteneurisation est loin d'être une technologie récente. En réalité les conteneurs ne sont pas si nouveaux que ça, comme on pourrait le croire. Je peux en citer quelques technologies comme Chroot sur Unix (1982), Jail sur BSD (2000), conteneurs sur Solaris (2004), LXC (Linux conteneurs) sur Linux (2008). La célébrité de docker vient du fait qu'il a su permettre aux utilisateurs de gérer facilement leurs conteneurs avec une interface en ligne de commande simple.

Les conteneurs ne sont pas nouveaux, mais leur utilisation pour déployer facilement des applications l'est.

### Fonctionnement

Docker possède de nombreuses fonctionnalités de nos jours, mais beaucoup d’entre elles reposent sur les fonctionnalités de base du noyau Linux : namespaces (unshare),  groupes de contrôle (nice et renice).

De plus, les conteneurs contiennent généralement un ou plusieurs programme(s) de manière à les maintenir isolées du système hôte sur lequel elles s'exécutent. Ils permettent à un développeur de conditionner une application avec toutes ses dépendances, et de l'expédier dans un package unique.

En outre, ils sont conçus pour faciliter la mise en place d’une expérience cohérente lorsque les développeurs et les administrateurs système déplacent le code des environnements de développement vers la production de manière rapide et reproductible.

## Installation

<https://docs.docker.com/get-docker/>

<https://docs.docker.com/guides/walkthroughs/what-is-a-container/>

## Vocabulaire

- container (n.m.) : environnement d’exécution léger, et d’une alternative aux méthodes de virtualisation traditionnelles basées sur les machines virtuelles. Il partage le kernel de son OS avec d’autres conteneurs. C’est une différence avec une machine virtuelle, utilisant un hyperviseur pour distribuer les ressources hardware

- registry (n.f.) : logiciel qui permet de partager des images à d'autres personnes. C’est un composant majeur dans l’écosystème Docker, car il permet :

  - à des développeurs de distribuer des images prêtes à l’emploi et de les versionner avec un système de tags ;

  - à des outils d’intégration en continu de jouer une suite de tests, sans avoir besoin d’autre chose que de Docker ;

  - à des systèmes automatisés de déployer ces applications sur vos environnements de développement et de production.

## Quelques commandes utiles

## Sources

<https://devopssec.fr/category/apprendre-docker>

<https://docs.docker.com/>

<https://docs.docker.com/guides/get-started/>

<https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker>