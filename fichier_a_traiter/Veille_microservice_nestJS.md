# decouverte de NestJS

  - un freamwork plus obtimisé pour les mocroservices que NodeJS  
  - NestJs est un framework NodeJs basé sur ExpressJs. 
  - NestJS est un framework qui fonctionne sur d'autres frameworks, notamment Express (par défaut) ou Fastify

  - plusieur outils:
    - Modulaire: Nest utilise une architecture modulaire
    - Controleur: gèrent les requetes HTTP entrantes et définissent les routes pour l'application
    - Services: encaspsulent la logique 
    - Gardes et Tuyaux: Nest inclut une prise en charge (middleware)
    - Décorateurs: ajouter des métadonnées à une classe et ses membres 
    - Prise en charge de TypeScript: Nest a été construit avec TypeScript
    - CLI: Nest est livré avec un puissant outil CLI (CLI interface ????)
    - Injection de dépendances: il s'agit d'un modèle qui nous permet d'ajouter facilement des dépendances à notre code par ailleurs générique.

## Conclusion
Construire une architecture basée sur des microservices NestJS est une expérience formidable, offrant une multitude d'outils. N'oubliez pas qu'un projet est requis par microservice, chaque fournisseur doit être configuré dans le app.module.tsfichier afin que nous puissions ensuite créer des clients pour communiquer entre eux. Enfin, lorsque nous communiquons avec un autre microservice, nous pouvons choisir entre utiliser un modèle de requête-réponse classique ou opter pour le modèle basé sur les événements, plus évolutif. Chacun a ses avantages et ses inconvénients.

### sources
  - https://amplication.com/blog/working-with-microservices-with-nestjs
  - https://www.youtube.com/watch?v=C250DCwS81Q