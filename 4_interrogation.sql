USE projet_poke_durand_guichard;

-- PARTIE 1 : PROJECTIONS, SÉLECTIONS, TRIS ET OPÉRATEURS (IN, BETWEEN, MASQUES)

-- 1. Lister les Pokémon dont le nom français commence par 'P' ou 'M', triés par numéro.
SELECT p_numero_pokedex, p_nom_francais 
FROM Pokémon 
WHERE p_nom_francais LIKE 'P%' OR p_nom_francais LIKE 'M%'
ORDER BY p_numero_pokedex ASC;

-- 2. Trouver les Pokémon dont le poids est entre 50kg et 150kg, excluant les légendaires.
SELECT p_nom_francais, p_poids_kilo 
FROM Pokémon 
WHERE p_poids_kilo BETWEEN 50 AND 150 
AND p_legendaire = FALSE;

-- 3. Sélectionner les Pokémon de la 1ère, 3ème ou 5ème génération.
SELECT p_numero_pokedex, p_nom_francais, g_num 
FROM Pokémon 
WHERE g_num IN (1, 3, 5);

-- 4. Afficher les types uniques (sans doublons) présents dans la base.
SELECT DISTINCT t_nom FROM Type ORDER BY t_nom;

-- 5. Lister les Pokémon avec un taux de capture faible (inférieur à 50) et une taille > 2m.
SELECT p_nom_francais, p_taille_metre, p_taux_capture 
FROM Pokémon 
WHERE p_taux_capture < 50 AND p_taille_metre > 2.0;


-- PARTIE 2 : FONCTIONS D'AGRÉGATION, GROUP BY ET HAVING

-- 1. Nombre de Pokémon par type, pour les types en ayant plus de 5 en base.
SELECT 
    t.t_nom AS 'Type', 
    COUNT(e.p_numero_pokedex) AS 'Nombre_de_Pokemon'
FROM Type t
JOIN Etre e ON t.t_id = e.t_id
GROUP BY t.t_id, t.t_nom
HAVING COUNT(e.p_numero_pokedex) > 5
ORDER BY Nombre_de_Pokemon DESC;

-- 2. Poids moyen des Pokémon par région.
SELECT r_id, ROUND(AVG(p_poids_kilo), 2) AS poids_moyen
FROM Pokémon
GROUP BY r_id;

-- 3. Taille maximale atteinte par un Pokémon non-légendaire par génération.
SELECT g_num, MAX(p_taille_metre) AS taille_max
FROM Pokémon
WHERE p_legendaire = FALSE
GROUP BY g_num;

-- 4. Somme totale des taux de capture par couleur de Pokémon.
SELECT c_id, SUM(p_taux_capture) as potentiel_capture_total
FROM Avoir_pour_couleur
GROUP BY c_id;

-- 5. Nombre de jeux sortis par génération ayant plus de 2 jeux enregistrés.
SELECT g_num, COUNT(j_id) AS nb_jeux
FROM Jeu
GROUP BY g_num
HAVING nb_jeux > 2;


-- PARTIE 3 : JOINTURES (INTERNES, EXTERNES, MULTIPLES)

-- 1. Afficher le nom du Pokémon avec le nom de sa région et de sa génération (Jointure multiple).
SELECT p.p_nom_francais, r.r_nom, g.g_nom
FROM Pokémon p
JOIN Région r ON p.r_id = r.r_id
JOIN Génération g ON p.g_num = g.g_num;

-- 2. Lister tous les types et les Pokémon associés (même si certains types n'ont pas de Pokémon).
SELECT t.t_nom, p.p_nom_francais
FROM Type t
LEFT JOIN Etre e ON t.t_id = e.t_id
LEFT JOIN Pokémon p ON e.p_numero_pokedex = p.p_numero_pokedex;

-- 3. Trouver les Pokémon et leurs conditions d'évolution (Auto-jointure via Evoluer).
SELECT p1.p_nom_francais AS 'Base', p2.p_nom_francais AS 'Evolution', ev.Condition_spéciale
FROM Evoluer ev
JOIN Pokémon p1 ON ev.p_numero_pokedex = p1.p_numero_pokedex
JOIN Pokémon p2 ON ev.p_numero_pokedex_1 = p2.p_numero_pokedex;

-- 4. Lister les jeux et les régions où ils se passent (Jointure sur clé composée).
SELECT j.j_nom, r.r_nom
FROM Jeu j
JOIN Se_passer s ON j.g_num = s.g_num AND j.j_id = s.j_id
JOIN Région r ON s.r_id = r.r_id;

-- 5. Afficher les Pokémon, leur groupe d'oeuf et leur couleur principale.
SELECT p.p_nom_francais, go.go_nom, c.c_nom
FROM Pokémon p
JOIN Avoir_pour ap ON p.p_numero_pokedex = ap.p_numero_pokedex
JOIN Groupe_Oeuf go ON ap.go_id = go.go_id
JOIN Avoir_pour_couleur apc ON p.p_numero_pokedex = apc.p_numero_pokedex
JOIN Couleur c ON apc.c_id = c.c_id;


-- PARTIE 4 : REQUÊTES IMBRIQUÉES (IN, EXISTS, ANY, ALL)

-- 1. Sélectionner les Pokémon qui ne possèdent aucune forme spéciale (NOT IN).
SELECT p_nom_francais 
FROM Pokémon 
WHERE p_numero_pokedex NOT IN (SELECT p_numero_pokedex FROM Posséder);

-- 2. Trouver les Pokémon qui appartiennent à un groupe d'oeuf contenant le mot 'Dragon' (EXISTS).
SELECT p.p_nom_francais 
FROM Pokémon p
WHERE EXISTS (
    SELECT 1 FROM Avoir_pour ap 
    JOIN Groupe_Oeuf go ON ap.go_id = go.go_id 
    WHERE ap.p_numero_pokedex = p.p_numero_pokedex AND go.go_nom = 'Dragon'
);

-- 3. Trouver les Pokémon dont le poids est supérieur à TOUS les Pokémon de la génération 1 (ALL).
SELECT p_nom_francais, p_poids_kilo
FROM Pokémon
WHERE p_poids_kilo > ALL (SELECT p_poids_kilo FROM Pokémon WHERE g_num = 1);

-- 4. Trouver les Pokémon dont la taille est supérieure à AU MOINS UN Pokémon légendaire (ANY).
SELECT p_nom_francais, p_taille_metre
FROM Pokémon
WHERE p_taille_metre > ANY (SELECT p_taille_metre FROM Pokémon WHERE p_legendaire = TRUE);

-- 5. Sélectionner les noms des régions qui accueillent des jeux de la génération 9 (IN imbriqué).
SELECT r_nom 
FROM Région 
WHERE r_id IN (
    SELECT r_id FROM Se_passer WHERE g_num = 9
);