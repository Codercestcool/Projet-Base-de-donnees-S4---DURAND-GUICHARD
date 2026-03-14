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



Le MLD du projet :


Type = (t_id INT, t_nom VARCHAR(50));

Génération = (g_num INT, g_nom VARCHAR(30));

Région = (r_id INT, r_nom VARCHAR(30));

Jeu = (#g_num, j_id INT, j_nom VARCHAR(60), j_date_sortie DATE);

Groupe_Oeuf = (go_id INT, go_nom VARCHAR(20));

Couleur = (c_id INT, c_nom VARCHAR(50));

Forme = (f_id INT, f_nom VARCHAR(50), f_description_forme VARCHAR(50));

Pokémon = (p_numero_pokedex INT, p_nom_francais VARCHAR(50), p_nom_anglais VARCHAR(50), p_taille_metre DECIMAL(5,2), p_poids_kilo DECIMAL(6,1), p_taux_capture INT, p_legendaire LOGICAL, p_fabuleux LOGICAL, p_reproduction LOGICAL, p_description VARCHAR(255), #r_id, #g_num);

Etre = (#p_numero_pokedex, #(t_id, t_nom));

Avoir_pour = (#p_numero_pokedex, #go_id);

Apparaitre_dans = (#p_numero_pokedex, #(#g_num, j_id));

Evoluer = (#p_numero_pokedex, #p_numero_pokedex_1, Niveau_minimal VARCHAR(50), Condition_spéciale VARCHAR(50));

Avoir_pour_couleur = (#p_numero_pokedex, #c_id);

Posséder = (#p_numero_pokedex, #f_id);

Se_passer = (#r_id, #(#g_num, j_id));



**Interrogation de la BdD**
Scénario :

Rôle : Un joueur de Pokémon qui fait des challenges sur tous les jeux
Objectif : Son challenge lui requiert de faire le jeu sous des conditions très spécifiques. Il a donc besoin d'extraire des données pour savoir comment remplir ces conditions.

* Liste des données à extraire pour ses challenges :

* Lister les Pokémon dont le nom français commence par 'P' ou 'M', triés par numéro.

* Trouver les Pokémon dont le poids est entre 50kg et 150kg, excluant les légendaires.

* Sélectionner les Pokémon de la 1ère, 3ème ou 5ème génération.

* Afficher les types uniques (sans doublons) présents dans la base.

* Lister les Pokémon avec un taux de capture faible (inférieur à 50) et une taille > 2m.

* Nombre de Pokémon par type, pour les types en ayant plus de 5 en base.

* Poids moyen des Pokémon par région.

* Taille maximale atteinte par un Pokémon non-légendaire par génération.

* Somme totale des taux de capture par couleur de Pokémon.

* Nombre de jeux sortis par génération ayant plus de 2 jeux enregistrés.

* Afficher le nom du Pokémon avec le nom de sa région et de sa génération (Jointure multiple).

* Lister tous les types et les Pokémon associés (même si certains types n'ont pas de Pokémon).

* Trouver les Pokémon et leurs conditions d'évolution (Auto-jointure via Evoluer).

* Lister les jeux et les régions où ils se passent (Jointure sur clé composée).

* Afficher les Pokémon, leur groupe d'oeuf et leur couleur principale.

* Sélectionner les Pokémon qui ne possèdent aucune forme spécial

* Trouver les Pokémon qui appartiennent à un groupe d'oeuf contenant le mot 'Dragon'.

* Trouver les Pokémon dont le poids est supérieur à TOUS les Pokémon de la génération 1.

* Somme totale des taux de capture par couleur de Pokémon.

* Sélectionner les noms des régions qui accueillent des jeux de la génération 9 (IN imbriqué). 
