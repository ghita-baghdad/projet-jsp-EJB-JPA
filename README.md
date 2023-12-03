# projet-jsp-EJB-JPA

## Presentation du projet :

Ce projet est une application Java EE basée sur Jakarta EE qui utilise des EJB (Enterprise JavaBeans) pour la gestion des entités telles que les hôtels et les villes.

## Technologies Utilisées

- **Jakarta EE (Java EE)** : Plateforme d'entreprise Java pour le développement d'applications distribuées.
- **EJB (Enterprise JavaBeans)** : Composants pour la construction d'applications d'entreprise robustes.
- **JPA (Java Persistence API)** : Spécification pour la gestion de la persistance des données.
- **Servlets et JSP** : Pour la gestion des requêtes web et la création de pages dynamiques.
- **WildFly** : Serveur d'application Jakarta EE open-source.

## Configuration Requise

Assurez-vous d'avoir installé les éléments suivants avant de déployer et exécuter l'application :

- Serveur Jakarta EE compatible (par exemple, WildFly)
- Environnement de développement Java (par exemple, JDK 8 ou supérieur)
- IDE Java (par exemple, Eclipse, IntelliJ IDEA)

## Structure du Projet
- ISICEJBEAR.ear: Archive Enterprise Application (EAR) regroupant les modules de l'application.
- ISICEJBServer.jar: Archive Java contenant les EJB et les services.
- ISICEJBWeb.war: Archive Web contenant les fichiers Web, y compris les pages JSP et les servlets.
  
## Base de Données

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/f610b895-413f-4051-9ab3-55b825f729b9)

## Interfaces :

- Page d'acceuil

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/ac061bed-ff06-4484-b26b-9f43b20002b6)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/a352e6c5-332c-4ff1-9275-22cb7789f603)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/9fb30147-39ed-49b0-8f62-114422a8875b)


## Fonctionnalités

L'application offre les fonctionnalités suivantes :

- **Gestion des Villes** : Ajouter, mettre à jour, supprimer et afficher la liste des villes.
- **Gestion des Hôtels** : Ajouter, mettre à jour, supprimer et afficher la liste des hôtels.
- **Association Ville-Hôtel** : Les hôtels sont associés à une ville.

## Tests

**Gestion des Villes**

-Ajout :

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/b6f74989-d011-40f7-b636-6e312986ad94)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/6d2ac8ac-4834-43cc-9d92-eb573a75a499)


-Suppression :

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/c03e709d-ff0e-4fd8-afbc-e292dc2931d1)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/4675a4df-1f66-468f-a002-98cc2f8d2b6b)

-Modification :

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/f2ffa023-c5ed-43c6-83b4-0f2bc6786bca)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/a31c31cb-1661-4abd-ba93-c5220373843e)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/f04a1003-2c06-4528-984c-870ad9bc6cca)


**Gestion des Hotels**

-Ajout :

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/54e92ec6-9bfa-4d25-9bc2-151ef2ed637c)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/4c0068a6-feb7-4650-b36e-25a12f8477f8)

-Suppression :

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/898d680c-3c8e-4085-8385-d16ed144a043)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/04e48241-4a30-4d56-904a-53eeecf22116)

-Modification :

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/59faa5a7-dd22-4fce-87e1-fa76a9be1850)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/7467a320-2334-47c3-a537-981b8677e5f4)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/6ee73ba1-84a2-4fb9-a3dc-ecfda6e53e5e)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/e56eab36-07f8-46cd-9cc0-dbd7c333c910)

- Filtrage par ville :





## L'utilisateur ne pourra jamais supprimer une ville affectée à des hôtels :

- par exemple l'utilisateur tente de supprimer Settat :

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/5e81f248-64d2-4682-b60b-4df1462af9d2)

![image](https://github.com/ghita-baghdad/projet-jsp-EJB-JPA/assets/147449053/17363609-e8ce-45f9-ade1-1940d6bd8052)







