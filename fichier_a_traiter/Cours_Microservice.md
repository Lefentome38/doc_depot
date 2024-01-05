# Microservices

## Introduction

Les microservices sont une approche architecturale moderne qui consiste à développer une application comme une suite de petits services indépendants. Chaque service, appelé microservice, est conçu pour accomplir une tâche spécifique et communique avec d'autres microservices à travers des API bien définies. Cette architecture est en opposition à l'approche monolithique, où toute l'application est construite comme une seule unité.

![](https://learn.microsoft.com/en-us/dotnet/architecture/microservices/architect-microservice-container-applications/media/direct-client-to-microservice-communication.png)

## Qu'est-ce que les Microservices ?

Les microservices sont une manière de concevoir, de développer et de déployer des applications. Au lieu d'avoir une seule application monolithique, les fonctionnalités sont décomposées en services plus petits, autonomes, et souvent gérés par des équipes dédiées.

## 1. **Indépendance Technologique**

Les microservices permettent l'utilisation de différentes technologies pour chaque service. Par exemple, un service peut être développé en Node.js, tandis qu'un autre utilise Deno.

**Exemple en TypeScript :**

```typescript
// Microservice A (Node.js)
import express from "express";

const appA = express();
appA.get("/endpointA", (req, res) => {
  res.json({ message: "Hello from Microservice A" });
});
appA.listen(3001, () => console.log("Microservice A listening on port 3001"));

// Microservice B (Deno)
import { Application } from "https://deno.land/x/oak/mod.ts";

const appB = new Application();
appB.use((ctx) => {
  ctx.response.body = { message: "Hello from Microservice B" };
});
await appB.listen({ port: 3002 });
```

La flexibilité technologique des microservices s'aligne avec les principes agiles en permettant d'adopter les technologies les mieux adaptées aux besoins spécifiques de chaque service.

## 2. **Évolutivité Facilitée**

Les microservices sont facilement évolutifs, permettant une réponse rapide aux changements de besoins.

**Exemple en TypeScript :**

```typescript
// Microservice A
// ... (comme ci-dessus)

// Microservice B (Mise à l'échelle)
appB.listen({ port: 3003 });
appB.listen({ port: 3004 });
```

L'évolutivité facilitée permet une réponse rapide aux changements des exigences du client, en accord avec les principes agiles.

## 3. **Isolation des Erreurs**

La structure des microservices permet d'isoler les erreurs à un service spécifique sans impacter les autres.

**Exemple en TypeScript :**

```typescript
// Microservice A (avec gestion des erreurs)
appA.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send("Something went wrong!");
});

// Microservice B (sans gestion des erreurs)
appB.use((ctx) => {
  ctx.throw(500, "Something went wrong!");
});
```

L'isolation des erreurs favorise la résilience, une caractéristique importante dans le contexte agile où l'on s'attend à des changements fréquents.

## 4. **Déploiement Continu**

Les microservices permettent un déploiement continu, essentiel pour une livraison rapide et fréquente des fonctionnalités.

Le déploiement continu s'aligne parfaitement avec la méthodologie agile en fournissant une manière efficace de livrer rapidement et fréquemment des fonctionnalités.

## 5. **Réutilisabilité des Services**

Les microservices favorisent la réutilisabilité des services, encourageant l'efficacité dans le développement.

**Exemple en TypeScript :**

```typescript
// Microservice A (avec fonction réutilisable)
export function calculateSum(a: number, b: number): number {
  return a + b;
}

// Microservice B (utilisant la fonction de Microservice A)
import { calculateSum } from "microserviceA";

const result = calculateSum(5, 7);
console.log(result); // Output: 12
```

La réutilisabilité des services reflète le principe agile de maximiser la quantité de travail non effectué, promouvant ainsi l'efficacité.

## Lien avec la Méthodologie Agile

- **Itérations Fréquentes :** Les microservices permettent des itérations plus fréquentes, facilitant l'adaptation aux changements de l'environnement externe.

- **Réactivité aux Changements :** La flexibilité et l'indépendance technologique des microservices sont en phase avec la nécessité d'ajuster rapidement les fonctionnalités selon les feedbacks des clients.

- **Collaboration Étendue :** Les équipes peuvent travailler de manière indépendante sur des microservices spécifiques, encourageant la collaboration distribuée, un aspect clé de l'agilité.

## Architectures de Microservices Classiques

Il existe plusieurs architectures de microservices classiques à connaître en entreprise, notamment :

- **Modèle Gateway :** Un point d'entrée unique gérant les requêtes pour plusieurs services.

![](https://learn.microsoft.com/en-us/dotnet/architecture/microservices/architect-microservice-container-applications/media/direct-client-to-microservice-communication-versus-the-api-gateway-pattern/custom-service-api-gateway.png)

![](https://learn.microsoft.com/en-us/dotnet/architecture/microservices/architect-microservice-container-applications/media/direct-client-to-microservice-communication-versus-the-api-gateway-pattern/multiple-custom-api-gateways.png)

- **Modèle Basé sur les Événements :** Les microservices communiquent entre eux par des événements.

- **Modèle de Découpage Fonctionnel :** Chaque microservice gère une fonction spécifique du système.

## Sources

- [Microservices Patterns](https://www.microservices.io/)
- [Building Microservices by Sam Newman](https://samnewman.io/books/building-microservices/)
- [Cours microsoft Azure](https://learn.microsoft.com/en-us/dotnet/architecture/microservices/architect-microservice-container-applications/direct-client-to-microservice-communication-versus-the-api-gateway-pattern)

---

# dckr_pat_C_TJ2QojN1P9Mr8JP_yBRtZXMzY