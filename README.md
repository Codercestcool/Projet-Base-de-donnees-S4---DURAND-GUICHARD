# Projet-Base-de-donnees-S4---DURAND-GUICHARD
Projet en Base de données

Codercestcool = Gabriel DURAND
xxLoops = Louis GUICHARD

Prompt :
Tu travailles dans le domaine du recensement d’informations sur les Pokémons. Ton organisation a comme activité de d’informer sur les différents pokémons. C’est une organisation comme Wikipedia, Poképédia ou Pokébip. Notre objectif est de recenser les pokémons de toutes les générations, c’est-à-dire leur nom, leur(s) type(s), le numéro de pokédex, l’évolution possible ou pas, s’il possède des sous évolutions, la nécessité d’un objet pour évoluer, leur poids, leur(s) couleur(s), leur taille, leur mode de reproduction, leur région d’origine, leur première apparition (jeu de base) etc. Inspire-toi des sites web suivant : https://www.pokepedia.fr/, https://www.pokebip.com/
Ton organisation veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données. 
D’abord, établis les règles de gestions des données de ton organisation, sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.
Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.
Fournis donc les règles de gestion et le dictionnaire de données.


Réponse de ChatGPT :
Voici les éléments d’analyse fonctionnelle à transmettre à l’étudiant chargé de la modélisation MERISE.

---

# 📌 Règles de gestion des données

Les règles suivantes décrivent le fonctionnement métier de l’organisation spécialisée dans le recensement des Pokémon (inspiré de Poképédia et Pokébip).

## 🔹 Identification et classification

* Chaque Pokémon est identifié de manière unique par son **numéro national de Pokédex**.
* Chaque Pokémon possède un **nom officiel** (différent selon la langue).
* Un Pokémon appartient à **une seule génération**.
* Un Pokémon est rattaché à **une région d’origine principale**.
* Un Pokémon possède **un ou deux types maximum**.
* Les types sont prédéfinis dans une liste officielle (Feu, Eau, Plante, etc.).
* Un Pokémon peut posséder **une ou plusieurs formes alternatives** (forme régionale, méga-évolution, forme spécifique).
* Chaque forme alternative est rattachée à un Pokémon de base.

## 🔹 Caractéristiques physiques et biologiques

* Chaque Pokémon possède une **taille officielle** (en mètres).
* Chaque Pokémon possède un **poids officiel** (en kilogrammes).
* Un Pokémon peut être associé à **une ou plusieurs couleurs dominantes**.
* Chaque Pokémon appartient à **un ou deux groupes d’œufs**.
* Chaque Pokémon possède un **taux de capture officiel**.
* Chaque Pokémon possède une **répartition males/femelles** (ou peut être asexué).
* Certains Pokémon sont **légendaires**, **fabuleux**, ou standards.
* Certains Pokémon ne peuvent **pas se reproduire**.

## 🔹 Évolutions

* Un Pokémon peut :

  * ne pas évoluer,
  * évoluer une fois,
  * évoluer plusieurs fois (chaîne d’évolution).
* Un Pokémon peut avoir **plusieurs évolutions possibles** (embranchements).
* Une évolution peut nécessiter :

  * un **niveau minimal**,
  * un **objet spécifique**,
  * un **échange**,
  * un **bonheur minimal**,
  * une **condition spéciale** (heure, lieu, attaque connue, etc.).
* Certains Pokémon possèdent des **pré-évolutions**.
* Une évolution relie toujours un Pokémon source à un Pokémon cible.
* Les méga-évolutions et formes spéciales sont distinguées des évolutions classiques.

## 🔹 Apparition et jeux

* Chaque Pokémon est associé à un **jeu de première apparition**.
* Un jeu appartient à une **génération**.
* Un Pokémon peut apparaître dans plusieurs jeux.
* Certains Pokémon sont exclusifs à certaines versions d’un jeu.

## 🔹 Organisation et gestion interne

* Les informations enregistrées doivent correspondre aux **données officielles** publiées par Nintendo, Game Freak et The Pokémon Company.
* Toute modification d’information doit être historisée.
* Les données doivent permettre d’effectuer des recherches multicritères (par type, génération, région, etc.).
* Les unités de mesure sont standardisées (mètres, kilogrammes).
* Les noms des jeux doivent être stockés avec leur titre officiel complet.

---

# 📊 Dictionnaire de données brutes

| Signification de la donnée        | Type          | Taille         |
| --------------------------------- | ------------- | -------------- |
| Numéro national Pokédex           | Entier        | 4 chiffres     |
| Nom officiel du Pokémon           | Texte         | 50 caractères  |
| Nom anglais du Pokémon            | Texte         | 50 caractères  |
| Identifiant interne Pokémon       | Entier        | 6 chiffres     |
| Génération                        | Entier        | 2 chiffres     |
| Nom de la région d’origine        | Texte         | 30 caractères  |
| Type principal                    | Texte         | 15 caractères  |
| Type secondaire                   | Texte         | 15 caractères  |
| Taille en mètres                  | Décimal (3,2) | 5 caractères   |
| Poids en kilogrammes              | Décimal (5,1) | 6 caractères   |
| Couleur principale                | Texte         | 20 caractères  |
| Couleur secondaire                | Texte         | 20 caractères  |
| Groupe d’œuf principal            | Texte         | 20 caractères  |
| Groupe d’œuf secondaire           | Texte         | 20 caractères  |
| Taux de capture                   | Entier        | 3 chiffres     |
| Pourcentage mâle                  | Décimal (5,2) | 5 caractères   |
| Pourcentage femelle               | Décimal (5,2) | 5 caractères   |
| Est légendaire                    | Booléen       | 1 caractère    |
| Est fabuleux                      | Booléen       | 1 caractère    |
| Peut se reproduire                | Booléen       | 1 caractère    |
| Nom de la pré-évolution           | Texte         | 50 caractères  |
| Nom de l’évolution                | Texte         | 50 caractères  |
| Niveau minimal d’évolution        | Entier        | 3 chiffres     |
| Objet requis pour évolution       | Texte         | 40 caractères  |
| Type de condition d’évolution     | Texte         | 40 caractères  |
| Nom du jeu de première apparition | Texte         | 60 caractères  |
| Année de sortie du jeu            | Entier        | 4 chiffres     |
| Possède une forme alternative     | Booléen       | 1 caractère    |
| Nom de la forme alternative       | Texte         | 50 caractères  |
| Description officielle courte     | Texte         | 255 caractères |

---

Ce document constitue la **base d’analyse fonctionnelle** permettant à l’étudiant d’enchaîner avec :

* le **MCD (Modèle Conceptuel de Données)**
* le **MLD (Modèle Logique de Données)**
* puis l’implémentation physique de la base de données.

Si tu le souhaites, je peux également produire le **MCD textuel conforme à MERISE** à partir de ces éléments.
