# Création de la Base de Données MySQL

Ce document décrit la structure de la base de données MySQL utilisée pour notre projet. La base de données est organisée en différents niveaux de tables, chacun avec des relations spécifiques.

## Niveaux de la Base de Données

### Niveau 0

Les tables du Niveau 0 représentent les entités de base du système :

- **TokenPack**
- **Currency**
- **PawnType**
- **Game**

### Niveau 1

Les tables du Niveau 1 étendent les entités de base avec des relations supplémentaires :

- **Cost**
- **Board**
- **GamePlay**
- **Country**

### Niveau 2

Les tables du Niveau 2 représentent des entités liées aux utilisateurs et aux pions :

- **UserInfo**
- **Pawn**

### Niveau 3

Les tables du Niveau 3 représentent des entités liées aux transactions et aux mouvements des pions :

- **PaymentInfo**
- **Buy**
- **UserGames**
- **PawnMove**
