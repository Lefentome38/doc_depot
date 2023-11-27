# Devops, une introduction

<!-- l'accélération des déploiements applicatifs ;

Réduction du TTM (Time-to-Market) : Le Time-to-Market est le temps d'arrivée d'une fonctionnalité sur le marché, c'est-à-dire le temps entre le moment de décision de la création de cette fonctionnalité, et son arrivée sur le produit final en production. -->

![](https://images.ctfassets.net/xz1dnu24egyd/2S16xLgZGnBkxXgFVQOrxv/960e58594b1c028a3208eeed351a82a3/devops-lifecycle.svg)

## Définition

Le DevOps est un ensemble de pratiques qui met l'emphase sur l'automatisation des processus entre les équipes de développement, et les équipes en charge du maintien en conditions opérationnelles de l'application développée.

le DevOps est avant tout une histoire de culture et de collaboration entre les développeurs et les opérations. Mettre en place tout un tas d'outils afin d'accélérer les déploiements et de réduire le Time-to-Market n'est pas suffisant pour fluidifier la mise en production d'applications. La culture compte pour plus de la moitié du DevOps. Tous ces outils mis en place ne servent à rien, s'il n'y a pas la volonté des développeurs et des opérations de travailler ensemble.

Le DevOps résout, en premier lieu, **des problèmes humains**, des problèmes de communication et des problèmes de responsabilités entre équipes. Dans ce sens, le DevOps se rapproche de l'agilité, mais en incluant d'autres équipes comme les opérations, les testeurs, les designers, les développeurs, les chefs de projet, et en règle générale, toute personne dont les aptitudes sont requises afin de délivrer un produit de qualité.

## Origine du Terme (2008-2009)

Il faut savoir qu'à cette époque, l'informatique d'entreprise a "siloté" les aspects dev et ops des applications, en plaçant les responsabilités respectives dans des équipes séparées. Il s'est alors créé ce qu'on appelle le mur de la confusion. Ce mur est apparu car les deux équipes ont des objectifs respectifs antagonistes.

La première, l'équipe de développement, a pour objectif principal de faire évoluer l'application, en ajoutant de nouvelles fonctionnalités ou en corrigeant des bugs, le plus rapidement possible et cela, dans un délai et un coût moindres, souvent au détriment de la qualité quand les contraintes de planning arrivent.

La seconde équipe, l'équipe des ops, a comme objectif de maintenir l'application en conditions opérationnelles, en garantissant la stabilité de l'application et la qualité de cette dernière, en sacrifiant souvent le coût et le temps nécessaires au déploiement d'une nouvelle version.

`Le nom DevOps découle de l’union de «development» et «operations». DevOps est un ensemble de pratiques qui met l’accent sur la collaboration et la communication entre les développeurs de logiciels et les professionnels des opérations IT. Avant DevOps, les équipes de développeurs (Dev) et les opérations (Ops) étaient séparées, communiquant uniquement via des tickets habituellement envoyés par les Dev aux Ops.`

De plus, dans les entreprises, ces objectifs ont souvent un impact sur les primes de fin d'année des différentes équipes. Les équipes de développement sont alors récompensées par le nombre de bugs qu'elles corrigent, ainsi que le nombre de nouvelles fonctionnalités livrées à chaque version. De leur côté, les équipes ops sont récompensées par le nombre de bugs critiques en production, ainsi que la disponibilité globale sur l'année de l'application.

Ces pratiques permettent alors de développer, tester et livrer des applications plus rapidement et avec plus de fiabilité.

La liste des avantages apportés par le DevOps est donc longue :

- gain de confiance des équipes entre elles ;

- accélération des livraisons et des déploiements ;

- résolution des tickets plus rapide ;

- gestion plus efficace des tâches non planifiées…

le terme DevOps a été utilisé pour la première fois par [Patrick Debois](https://www.linkedin.com/notifications/?filter=all) et Andrew Shafer dans leur conférence Agile infrastructure, lors de la [2008 Agile Toronto conference](https://dblp.org/db/conf/agiledc/agile2008.html). Le terme a été largement repris notamment pour la création d'une séries de conférence sur le sujet appelée Devopsdays dont la première a été organisée à Gand en Belgique, en octobre 2009.

## Les 4 principes fondamentaux

La méthodologie DevOps comprend quatre principes clés qui guident l'efficacité du développement et du déploiement des applications. Ces principes, énumérés ci-dessous, mettent l'accent sur les meilleurs aspects du développement moderne de logiciels.

1. Automatisation du cycle de vie du développement logiciel : Cela inclut l'automatisation des tests, des constructions, des déploiements, de la provision des environnements de développement, et d'autres tâches manuelles qui peuvent ralentir ou introduire des erreurs humaines dans le processus de livraison du logiciel.

2. Collaboration et communication : Une bonne équipe DevOps dispose de l'automatisation, mais une excellente équipe DevOps a également une collaboration et une communication efficaces.

3. Amélioration continue et minimisation des gaspillages : De l'automatisation des tâches répétitives à la surveillance des métriques de performance pour trouver des moyens de réduire les délais de mise en production ou le temps moyen de récupération, les équipes DevOps performantes recherchent régulièrement des domaines qui pourraient être améliorés.

4. Hyperfocus sur les besoins des utilisateurs avec des boucles de rétroaction courtes : Grâce à l'automatisation, à une communication et une collaboration améliorées, et à une amélioration continue, les équipes DevOps peuvent prendre un moment pour se concentrer sur ce que veulent vraiment les utilisateurs réels et comment le leur fournir.

<!-- ## Le métier de consultant DevOps

- accélérer leurs déploiements grâce à des pipelines d'intégration continue ;

- améliorer la qualité de leur code ;

- mettre en place de la métrologie (monitoring de système) ;

- créer des environnements à la demande. -->

## Une équipe Orienté Produit et la culture DevOps

une équipe orientée produit, avec toutes les aptitudes requises afin de délivrer la meilleure application et la meilleure expérience possibles, et non plus des équipes éparses regroupées par silos de compétences. Ces équipes œuvrent pour un but commun, et partagent un plan pour l'atteindre. Un des moyens pour atteindre ce genre d'équipe est d'inclure par exemple les opérations aux Daily Meetings, les réunions quotidiennes et rapides de l'équipe, afin que ceux-ci puissent exposer leur problématiques, et que ces problématiques soient incluses dans les différents sprints. La réciproque est aussi vraie, les opérations peuvent faire appel à des développeurs, afin que ceux-ci puissent les aider à résoudre leur problèmes.

Toutes ces pratiques partagées entre développeurs et opérations rendent la gestion du déploiement et la résolution de problèmes beaucoup plus efficaces ! Ce processus est appelé la pollinisation croisée. Un bon moyen de savoir si la culture DevOps est bien implémentée est de se poser des questions comme :

- Est-ce que les problèmes sont résolus par toute l'équipe produit ?

- Est-ce que tous les membres de l'équipe partagent une vision commune ?

- Est-ce que les post-mortem sont dirigés vers la résolution des problèmes et non vers la détermination d'un responsable de l'erreur ?

Si la réponse à ces 3 questions est oui, alors il est fort probable que votre équipe ait adopté la culture DevOps ! C'est ce qu'on appelle **la culture des responsabilités partagées**.

## L'automatisation

Mettre en place un process de communication entre les personnes ne suffit généralement pas. C'est pour cela que les entreprises sont amenées à mettre en place un certain nombre d'outils afin de favoriser et de fluidifier les déploiements. Comme le principe du DevOps est de livrer plus souvent des produits de qualité, l'automatisation est un bon moyen d'arriver à ce résultat.

### Avantages

#### Déployez plus fréquemment

Les applications sont déployées plus souvent. Cela amène à être rassuré sur la procédure de déploiement. Généralement, les entreprises sont amenées à ne déployer que quelques fois dans l'année, alors que des entreprises comme Google, Amazon et Facebook, qui sont souvent prises en exemple sur l'automatisation, peuvent déployer jusqu'à 17 fois par minute en production.

L’une d’entre elles est le déploiement bleu/vert, qui consiste à maintenir deux serveurs, un « bleu » et un « vert ». Un seul de ces serveurs répond aux requêtes publiques et joue donc le rôle d’environnement de production (disons le serveur bleu). L’autre serveur (ici, le serveur vert) est un environnement de test sur lequel les modifications sont déployées. Une fois que le dernier déploiement réalisé sur le serveur vert a réussi les tests, les rôles s’inversent. Les requêtes publiques sont routées vers le serveur vert, qui devient donc le serveur de production. Cette méthode de déploiement permet de revenir rapidement à un état antérieur en cas de problème.

#### Configuration des déploiements automatiques

Les configurations sont gérées automatiquement par les outils. Dans les entreprises dites traditionnelles, les développeurs rédigent souvent un manuel de déploiement sous Word, à destination des équipes d'exploitation, expliquant comment déployer les logiciels et les configurer. Les mises en production se font aussi, souvent, en dehors des plages d'heures ouvrées, ou le week-end, pour éviter d'impacter les utilisateurs. Grâce à l'automatisation, ce déploiement peut se faire durant les heures ouvrées, réduisant le stress des équipes d'ops.

#### Création d'environnement

La création d'environnements se fait à la volée. En utilisant des outils d'Infrastructure-as-Code, il est possible de créer à la demande des environnements pour tester et déployer les applications, ce qui réduit notamment les temps d'attente liés à la fourniture d'environnements hors production.

Par exemple, au lieu d'attendre qu'une équipe de production vous fournisse un environnement en quelques jours, voire quelques semaines, la création d'un environnement est quasi immédiate (comprendre quelques dizaines de minutes, voire quelques minutes). Il sera alors possible de créer autant d'environnements que nécessaire, afin de faciliter les tests, mais aussi les différentes cérémonies agiles.

Ces environnements étant codifiés et versionnés, il est alors facile de recréer le même environnement rapidement. Afin d'économiser de l'argent, il est d'usage de complètement détruire l'environnement, une fois que celui-ci ne sert plus à rien.

#### Tests plus fréquents

Les tests peuvent être lancés plus souvent. Même si l'utilisation de techniques comme le Test-Driven-Development (TDD) ou le Behavior-Driven-Development (BDD) permettent de maximiser les tests unitaires, dont la rapidité d'exécution permet d'avoir un résultat en quelques minutes, il est souvent nécessaire de pousser plus avant certains types de tests, comme les tests de performance, les tests de charge ou même les tests de bout-en-bout.

Sur ces types de tests, il est nécessaire d'avoir un environnement configuré correctement pour simuler des contraintes de production, ou des chaînes complètes entre applications. Comme les tests et l'infrastructure sont versionnés au même niveau que le code, tout changement de l'une de ces trois briques (tests, infrastructure et code) relance automatiquement toute la chaîne dans un processus complet. Dès lors, il est facile de rejouer des campagnes de tests de non-régression complète en quelques minutes, ou en quelques heures si la chaîne de bout en bout couvre une grande partie des fonctionnalités.

## Lean

Le Lean, ou Lean Management, vient de l'industrie, et plus particulièrement de Toyota dans les années 1990. Lean sert à qualifier une gestion des ressources sans gaspillage.

Les types de gaspillage sont au nombre de 7 :

- surproduction
- attente
- transports
- étapes inutiles
- stocks
- mouvements inutiles
- corrections / retouches

Dans le contexte du DevOps, Lean va alors s'intéresser à délivrer de la valeur ajoutée au client final (dans le cadre d'une application grand public, le public), tout en minimisant les processus longs, coûteux, sans valeur ajoutée. Dans un sens, le Lean de DevOps se rapproche de l'agilité, avec des concepts d'amélioration continue et d'acceptation des erreurs. Le mot japonais Kaizen résume très bien cet état d'esprit. Il veut littéralement dire "changement" (kai) et "meilleur" (zen). Mais attention à ne pas rogner sur la qualité de l'application, en sautant des étapes de l'intégration continue, afin de faire des économies sur les environnements !

Une personne ayant un état d'esprit DevOps va alors avoir l'opportunité de faire de l'amélioration continue dans ses processus un peu partout. Par exemple, implémenter des rétrospectives ou des post-mortem est un bon moyen d'améliorer les processus et l'équipe, en identifiant ce qui n'a pas fonctionné lors d'un développement ou d'un déploiement, et en essayant de le faire disparaître.

DevOps de ne pas reprocher à quelqu'un le problème de déploiement, mais plutôt d'encourager l'équipe à parler librement lorsqu'une erreur arrive, afin d'identifier celle-ci, ses causes et mettre en place un processus garantissant la non-reproduction de cette erreur.

## Mesure et Monitoring

Comme toute transformation d'entreprise, il est nécessaire d'avoir des indicateurs de performance clés (KPI ou Key Performance Indicator) afin de savoir si les efforts de transformation et d'amélioration continue transforment quelque chose.

Les différents indicateurs utilisés peuvent être :

- Combien de temps la nouvelle fonctionnalité a pris pour passer du développement à la production ?
- Combien de fois un bug récurrent apparaît ?
- Combien de personnes utilisent le produit en temps réel ?
- Combien d'utilisateurs a-t-on gagnés ou perdus en une semaine ?

Ces indicateurs sont aussi utiles en entreprise, afin de pouvoir challenger les métiers sur la priorisation du backlog.

Par exemple, si un Product Owner permet de montrer factuellement que le métier a dépensé 100 000 euros dans une fonctionnalité qui n'est utilisée qu'une fois par mois, n'aurait-il pas mieux fallu dépenser cet argent dans une fonctionnalité utilisée beaucoup plus souvent, et donc économiser du temps de traitement sur l'application ?

## Sharing (Partage)

Le fameux mur de la confusion est largement dû à un manque de savoir commun. Mettre en place une politique de responsabilité et de succès partagés est déjà un premier pas vers le comblement de ce fossé entre les deux mondes. Le DevOps met en exergue le fait que la personne qui code l'application doit aussi la livrer et la maintenir en condition opérationnelle.

Si les développeurs commencent, grâce à cette politique, à savoir comment opérer de manière optimale et à connaître le métier des opérations, il seront plus enclins à aller aider l'exploitant de l'application. Cela ne veut pas dire que chaque développeur doit être un exploitant excellent ! Mais que les opérations et les développeurs doivent travailler de concert sur le cycle de vie complet de l'application.

Les équipes mettant en place le DevOps ont souvent un rôle tournant : les développeurs corrigent les problèmes des utilisateurs finaux, mais aussi participent à la résolution des problèmes de production. Ces développeurs répondent à des problèmes urgents, créent des patches pour résoudre rapidement les problèmes si nécessaire, et corrigent tous les bugs remontés par les utilisateurs. Les développeurs apprennent comment leur application est utilisée au quotidien par les utilisateurs finaux. En se rendant disponibles auprès des équipes des opérations, les développeurs construisent une relation de confiance avec eux, ainsi qu'un respect mutuel.

## Sources

<https://about.gitlab.com/topics/devops/>

<https://management-digital.macertif.com/DevOps/>

<https://www.qrpinternational.fr/blog/faq/10-profils-devops/>

<https://www.atlassian.com/fr/devops/what-is-devops>

<https://www.softfluent.fr/blog/mettre-en-place-methode-devops/>

<https://carrieres.groupeozitem.com/blog/challenges-devops-sysops>
