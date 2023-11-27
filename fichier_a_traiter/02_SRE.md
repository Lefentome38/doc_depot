# Le SRE

le SRE, ou Site Reliability Engineer. Relativement peu d'entreprises l'implémentent aujourd'hui, mais il est toujours intéressant de connaître ce métier, ne serait-ce que pour mettre un nom sur l'implémentation concrète du DevOps dans une entreprise.

## Origine

Le SRE est apparu en 2003 chez Google, lorsque Ben Treynor fut embauché pour diriger une équipe de 7 développeurs, faisant tourner un environnement de production. Le but de cette équipe était de garantir que les sites de Google fonctionneraient de manière efficace et stable.

Quand on s'appelle Google, et que l'on gère des systèmes à plusieurs péta-octets, répartis sur plusieurs continents, il est nécessaire de penser à de nouveaux paradigmes d'exploitation, basés sur l'automatisation. Il est humainement impossible de gérer plusieurs dizaines de serveurs.

Depuis, le rôle de SRE s'est largement déployé en dehors des murs de chez Google, notamment dans des entreprises comme Apple, Facebook, Microsoft, etc.

Il n'y a pas que chez Google que les SRE existent. Une entreprise française, Clever Cloud, hébergeur de cloud computing, n'a qu'une équipe de 5 développeurs s'occupant de la production de dizaines de milliers d'applications et garantissant le maintien en condition opérationnelle d'applications de plusieurs centaines de clients. Pour ce faire, l'équipe a poussé l'automatisation des déploiements au maximum, développant notamment des robots afin de détecter rapidement des pannes, problèmes ou incompatibilités logicielles, et proposant de la remédiation automatique, sans intervention humaine.

Il est nécessaire de définir quelques mots clés pour mieux comprendre le métier de SRE

## Service Level Indicator

Un Service Level Indicator (SLI) est un indicateur de niveau de service : une mesure quantitative, soigneusement définie, d’un aspect du niveau de service fourni au client.

La plupart des services considèrent le temps de latence des demandes, c’est-à-dire le temps qu’il faut pour renvoyer une réponse à une demande, comme un indicateur-clé. Parmi les autres indicateurs courants figurent le taux d’erreur, souvent exprimé en tant que fraction de toutes les demandes reçues, et le débit du système, généralement mesuré en demandes par seconde. Les mesures sont souvent agrégées, c’est-à-dire que les données brutes sont collectées sur une fenêtre de mesure, puis transformées en taux, moyenne ou percentile.

Idéalement, le SLI mesure directement un niveau de service d’intérêt, mais parfois seul un proxy est disponible car la mesure souhaitée peut être difficile à obtenir ou à interpréter. Par exemple, la latence côté client est souvent la mesure la plus pertinente pour l’utilisateur, mais il se peut qu’il ne soit possible de mesurer la latence qu’au niveau du serveur.

Un autre type de SLI important pour le SRE est la disponibilité, ou la fraction du temps pendant laquelle un service est utilisable. Elle est souvent définie en termes de fraction de demandes bien formées qui aboutissent, parfois appelée rendement.

Bien qu’une disponibilité de 100 % soit impossible, une disponibilité proche de 100 % est souvent facilement réalisable et l’industrie exprime généralement les valeurs de haute disponibilité en termes de nombre de “neuf” dans le pourcentage de disponibilité. Par exemple, des disponibilités de 99 % et de 99,999 % peuvent être désignées respectivement par les termes “2 neuf” et “5 neuf”.

## Service Level Objective

Un Service Level Objective (SLO) est un objectif de niveau de service : une valeur cible ou une plage de valeurs pour un niveau de service qui est mesuré par un SLI. Une structure naturelle pour les SLO est donc SLI ≤ cible, ou limite inférieure ≤ SLI ≤ limite supérieure.

Le choix d’un SLO approprié est complexe. Tout d’abord, vous ne pouvez pas toujours choisir sa valeur. Pour les requêtes HTTP entrantes du monde extérieur vers votre service, la mesure des requêtes par seconde (RPS) est essentiellement déterminée par les désirs de vos utilisateurs et vous ne pouvez pas vraiment définir un SLO pour cela.

En revanche, vous pouvez dire que vous voulez que la latence moyenne par requête soit inférieure à 100 millisecondes et fixer un tel objectif pourrait vous inciter à écrire votre frontend avec des comportements à faible latence de différents types ou à acheter certains types d’équipements à faible latence.

Là encore, c’est plus subtil qu’il n’y paraît à première vue, dans la mesure où ces deux SLI, RPS et latence, peuvent être liés en coulisses : un RPS plus élevé entraîne souvent des latences plus importantes et il est courant que les services aient un seuil de performance au-delà d’un certain seuil de charge.

## Service Level Agreement

Le Service Level Agreement, ou SLA, est un contrat passé entre un fournisseur de service et le consommateur de ce service. Le non-respect de ce SLA aboutit souvent à des pénalités financières.

Les Service Level Agreements (SLA) sont des accords de niveau de service : des contrats explicites ou implicites avec vos utilisateurs qui incluent les conséquences du respect (ou de l’absence) des SLO qu’ils contiennent. Les conséquences sont plus facilement reconnaissables lorsqu’elles sont financières (un rabais ou une pénalité), mais elles peuvent prendre d’autres formes.

Ce dernier indicateur est donc extrêmement important, dans le sens où des clients peuvent partir du service s'il n'est pas respecté scrupuleusement. C'est aussi l'indicateur le plus suivi par le SRE lors de la mise en place d'une telle équipe.

## Le rôle du SRE

Le SRE a deux rôles :

- il passe 50 % de son temps à faire des tâches "ops", comme de l'astreinte, corriger des problèmes en production ou faire des interventions manuelles ;

- il passe les autres 50 % de son temps à automatiser tout ou partie de ses tâches, et à développer de nouvelles fonctionnalités.

C'est là la grande force du SRE à mon sens, car du temps lui est alloué et dédié à automatiser des tâches répétitives. De fait, le SRE aide à créer des applications scalables et "self-healed".

Son métier repose sur 5 pilliers :

Le métier du SRE repose sur 5 piliers issus des piliers CALMS que nous avons vus au chapitre 2 :

- réduire les silos organisationnels (Share) ;
- accepter les pannes comme normales (Culture) ;
- implémenter des changements graduels (Lean) ;
- s’appuyer sur des outils et de l’automatisation (Automatisation) ;
- tout mesurer (Mesure).

Le SRE implémente alors ces piliers comme suit :

### Réduire les silos organisationnels

- le SRE partage la possession des applications avec les développeurs, pour créer des responsabilités partagées
- le SRE utilise les mêmes outils que les développeurs, et vice versa

### Accepter les pannes comme normales

- le SRE accepte le risque
- le SRE quantifie les pannes et la disponibilité d’une manière normée, en utilisant le SLI et le SLO
- le SRE mandate des post-mortem irréprochables

### Implémenter des changements graduels

- le SRE encourage les développeurs et les Product Owners à avancer rapidement en réduisant les coûts de panne

### S’appuyer sur des outils et de l’automatisation

- le SRE dispose d'une charte pour automatiser les tâches subalternes (appelées "labeurs"), à l'extérieur

### Mesurer tout

- le SRE définit des moyens normatifs pour mesurer les valeurs ;
- le SRE croit fondamentalement que le fonctionnement des systèmes est un problème logiciel.

## Les signaux

Le SRE définit quatre signaux principaux à observer constamment. Ces quatre signaux sont appelés les quatre signaux dorés : latence, trafic, erreurs et saturation.

Ces quatre signaux sont extrêmement importants, car ils sont essentiels pour garantir une haute disponibilité des applications. Je vais détailler dans la suite ces quatre signaux, et vous donner des outils capables de surveiller ces métriques.

Afin de gérer efficacement les applications supervisées, il est nécessaire de mettre en place des métriques à surveiller. Généralement, les métriques traditionnelles mises en place sont CPU, RAM et stockage. Mais ces métriques, bien que nécessaires, ne sont pas suffisantes. C’est pourquoi le SRE a défini quatre métriques supplémentaires plus génériques et applicables à n’importe quels composants de l’application.

### Latence

La latence est le temps qu'il faut pour envoyer une demande et recevoir une réponse. La latence est généralement mesurée du côté du serveur, mais elle peut aussi être mesurée du côté du client pour tenir compte des différences de vitesse du réseau. L'équipe d'exploitation a le plus de maîtrise sur la latence côté serveur, mais la latence côté client sera plus pertinente pour les clients finaux.

Le seuil cible que vous choisissez peut varier en fonction du type d'application. Un système automatisé, comme une API ou un serveur, peut nécessiter des temps de réponse beaucoup plus rapides qu'un humain sur un téléphone mobile. Vous devez également suivre séparément la latence des requêtes réussies et des requêtes échouées, car les requêtes échouées échouent souvent rapidement, sans traitement supplémentaire.

Par exemple, une erreur HTTP 500 déclenchée en raison d’une perte de connexion à une base de données ou à un autre backend critique peut être traitée très rapidement. Cependant, comme une erreur HTTP 500 indique l’échec d’une demande, la prise en compte des 500 dans votre latence globale peut donner lieu à des calculs trompeurs. D’autre part, une erreur lente est encore pire qu’une erreur rapide ! Il est donc important de suivre la latence des erreurs, plutôt que de se contenter de les filtrer.

### Trafic

Le trafic est une mesure du nombre de demandes qui circulent sur le réseau. Il peut s'agir de requêtes HTTP vers votre serveur web ou votre API, ou de messages envoyés à une file d'attente de traitement. Les périodes de pointe de trafic peuvent exercer une pression supplémentaire sur votre infrastructure et la pousser jusqu'à ses limites, ce qui peut avoir des effets en aval.

C'est un signal clé, parce qu'il vous aide à différencier les problèmes de capacité des configurations système inappropriées, qui peuvent causer des problèmes, même en période de faible trafic. Pour les systèmes distribués, il peut également vous aider à planifier la capacité à l'avance, pour répondre à la demande à venir.

### Erreurs

Les erreurs peuvent vous renseigner sur les erreurs de configuration de votre infrastructure, les bugs dans votre code ou les dépendances non résolues. Par exemple, un pic du taux d'erreur pourrait indiquer la défaillance d'une base de données, ou une panne de réseau.

Suite à un déploiement de code, il peut indiquer des bugs dans le code qui ont survécu aux tests, ou qui n'ont fait surface que dans votre environnement de production. Le message d'erreur vous donnera plus d'informations sur le problème exact. Les erreurs peuvent également affecter les autres métriques, en réduisant artificiellement la latence, ou les tentatives répétées qui finissent par saturer d'autres systèmes distribués.

L’erreur correspond au taux de demandes qui échouent :

- soit explicitement : par exemple, HTTP 500
- soit implicitement : par exemple, une réponse HTTP 200 réussie, mais associée à un contenu erroné
- soit par politique : par exemple, “Si vous vous êtes engagé à respecter un temps de réponse d’une seconde, toute demande supérieure à une seconde est une erreur”

Lorsque les codes de réponse des protocoles sont insuffisants pour exprimer toutes les conditions d’échec, des protocoles secondaires (internes) peuvent être nécessaires pour suivre les modes d’échec partiel. La surveillance de ces cas peut être radicalement différente : la capture des HTTP 500 au niveau de votre équilibreur de charge peut faire un travail décent pour attraper toutes les requêtes qui ont complètement échoué, alors que seuls les tests système de bout en bout peuvent détecter que vous servez le mauvais contenu.

### Saturation

La saturation définit la charge sur votre réseau et les ressources de votre serveur. Chaque ressource a une limite au-delà de laquelle les performances se dégradent ou deviennent indisponibles. Ceci s'applique aux ressources telles que l'utilisation du CPU, l'utilisation de la mémoire, la capacité du disque et les opérations par seconde. Il faut comprendre la conception et l'expérience de votre système distribué, pour savoir quelles parties de votre service pourraient devenir saturées en premier. Souvent, ces mesures sont des indicateurs avancés, de sorte que vous pouvez ajuster la capacité avant que la performance ne se dégrade.

Atteindre la limite de saturation peut affecter votre service de différentes manières. Par exemple, lorsque le CPU est plein, cela peut entraîner des réponses retardées, l'espace de stockage plein peut entraîner une défaillance des écritures sur le disque, et la saturation du réseau peut entraîner la chute de paquets.

La saturation est le degré de “remplissage” de votre service ; une mesure de la fraction de votre système, en mettant l’accent sur les ressources qui sont les plus contraintes. Par exemple, dans un système avec des contraintes de mémoire, cela correspond à montrer la mémoire ; dans un système avec des contraintes d’E/S, cela correspond à montrer les E/S. Notez que de nombreux systèmes voient leurs performances se dégrader avant d’atteindre une utilisation de 100 %, il est donc essentiel d’avoir un objectif d’utilisation.

Dans les systèmes complexes, la saturation peut être complétée par une mesure de charge de plus haut niveau : votre service peut-il correctement gérer le double du trafic, gérer seulement 10 % de trafic en plus, ou gérer encore moins de trafic que ce qu’il reçoit actuellement ? Pour les services très simples qui n’ont pas de paramètres modifiant la complexité de la demande (par exemple “Donnez-moi un nonce” ou “J’ai besoin d’un entier monotone globalement unique”) et dont la configuration change rarement, une valeur statique provenant d’un test de charge peut être adéquate. Cependant, comme nous l’avons vu dans le paragraphe précédent, la plupart des services ont besoin d’utiliser des signaux indirects comme l’utilisation du CPU ou la bande passante du réseau, dont la limite supérieure est connue. Les augmentations de latence sont souvent un indicateur avancé de la saturation. La mesure du 99e percentile du temps de réponse sur une petite fenêtre (par exemple, une minute) peut donner un signal très précoce de saturation.

La saturation concerne également les prédictions de saturation imminente, telles que “Il semble que votre base de données va remplir son disque dur dans 4 heures”.

Si vous mesurez les quatre signaux dorés et que vous appelez quelqu’un lorsqu’un signal est problématique (ou, dans le cas de la saturation, presque problématique), votre service sera au moins décemment couvert par le monitoring.

## Sources

<https://sre.google/>
