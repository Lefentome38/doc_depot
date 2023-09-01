# Bus de données ou data bus
* Voie de transmission sur laquelle des signaux sont déposés et récupérés au niveau de chaque périphérique relié à la ligne.
* Ensemble de conducteurs électriques


## Rôle du data bus
* Permet à différents blocs logique d'échanger des informations
* Transfèrent des informations (intructions de programme ou de valeurs, numérique ou non) à traiter par le programme ou le périphérique qui lui est lié
* Il sert à véhiculer les données entre le processeur et la mémoire ou les circuits d'entrées/sorties. Le bus des données est commandé par le CPU, les autres composants y sont connectés à tour de rôle pour répondre aux commandes de lecture ou d'écriture du processeur.

## Débit des données
* Dépend des vitesses de transmission (capacité des composants à saisir rapidement les signaux des bus et à y répondre). La cadence de ces signaux est liée à la fréquence de la carte mère.
* La largeur du bus : + le bus est large et + important sera le nombre de données qui pourront être véhiculées simultanément. *comparaison avec nombre de voies de circulation d'une autoroute*



*Les premiers microprocesseurs qui ne pouvaient traiter que 8 bits simultanément avaient un bus de données de 8 bits. Actuellement, les microprocesseurs traitent en général les données par mots de 32 ou 64 bits. Le bus de donnée est de  64 bits ce qui lui permet de véhiculer plus de données en parallèle.*


## Types de bus
L'ensemble des lignes de bus est mise en commun par le CPU. Les dispositifs qui lui sont connectés est appelé BUS PROCESSEUR ou BUS SYSTEME ou FRONT SIDE BUS (FSB). 3 bus distincts pour véhiculer 3 types de signaux :
* Bus d'adressage
* Bus de données
* Bus de contrôle

# Parallèle et série
Pour le transfert de données entre ordinateurs, il y’a deux méthodes, à savoir la transmission série et la transmission parallèle. Il y a des points communs et des différences entre eux. L’une des principales différences est la suivante: en transmission série, les données sont envoyées bit par bit, tandis qu’en transmission parallèle, un seul octet (8 bits) ou un seul caractère est envoyé simultanément. Ensuite, le point commun est que les deux sont utilisés pour se connecter et communiquer avec les périphériques. 

### composition d'un procésseur
1. le **séquenceur**  ou unité de contrôle, se charge de gérer le processeur. Il peut décoder les instructions, choisir les registres à utiliser, gérer les interruptions ou initialiser les registres au démarrage. Il fait appel à l'unité d'entrée-sortie pour communiquer avec la mémoire ou les périphériques.

2. **l'horloge** doit fournir un signal régulier pour synchroniser tout le fonctionnement du processeur. Elle est présente dans les processeurs synchrones mais absente des processeurs asynchrones et des processeurs autosynchrones.

3. les **registres** sont des petites mémoires internes très rapides, pouvant être accédées facilement. Un plus grand nombre de registres permettra au processeur d'être plus indépendant de la mémoire. La taille des registres dépend de l'architecture, mais est généralement de quelques octets et correspond au nombre de bit de l'architecture (un processeur 8 bits aura des registres d'un octet). 

- d'autre registre on été ajoutés au fils du temps
1. pointeur de pile
2. registre d'instruction
3. registre d'état 
4. registres généraux


## multicoeurs 

- un processeur quadricoeur (4 coeurs) est une puce composée de quatre éléments indépendants, ou coeurs, qui lisent et exécutent les instructions de l'unité centrale
- s'est comme si 4 procésseur ce retrouver dans un seul


 



## reddit

Ce qui est crucial ici, c'est que Reddit a été lancé en **2005**, il n'a sorti sa propre application qu'en **2016**.

Cela signifiait que pendant des années, les utilisateurs devaient compter sur des applications tierces, et beaucoup se sont tellement habitués à leur choix préféré qu'ils sont restés avec eux et ne se sont jamais tournés vers l'officiel.

En décidant de rendre l'accès à son **API** payant, Reddit s'attire les foudres des utilisateurs qui avaient l'habitude de passer sur des applications tierces. Plusieurs groupes menacent la société de blackout. Du côté de **_Stack Over Flow_**, les modérateurs volontaires appellent à la grève contre la consigne de ne pas supprimer **les contenus générés par l'IA**.

Ce n’est pas tant le principe en lui-même qui est critiqué, car il était déjà en place auparavant avec des tarifs plus bas. Ce sont plutôt les sommes **astronomiques** désormais réclamées aux développeurs qui se trouvent désormais souvent dans l’incapacité de travailler. Certains des intéressés se trouvant ainsi dans l’incapacité la plus totale de faire fonctionner leur application, au risque d’être menés au bord de la ruine.

Il souligne que Reddit demande « 12 000 dollars pour 50 millions de requêtes API contre 166 dollars pour le forum d’image Imgur »
