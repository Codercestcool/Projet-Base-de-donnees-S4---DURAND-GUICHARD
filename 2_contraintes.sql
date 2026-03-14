USE projet_durand_guichard;

-- Contraintes Type
ALTER TABLE Type
ADD CONSTRAINT chk_type_id_positif
CHECK (t_id > 0);

ALTER TABLE Type
ADD CONSTRAINT chk_type_nom_not_empty
CHECK (t_nom <> '');

-- Contraintes Génération
ALTER TABLE Génération
ADD CONSTRAINT chk_generation_num_positive
CHECK (g_num > 0);

ALTER TABLE Génération
ADD CONSTRAINT chk_generation_nom_not_empty
CHECK (g_nom <> '');

-- Contraintes Jeu
ALTER TABLE Jeu
ADD CONSTRAINT chk_couleur_id_positif
CHECK (j_id > 0);

ALTER TABLE Jeu
ADD CONSTRAINT chk_jeu_nom_not_empty
CHECK (j_nom <> '');

ALTER TABLE Jeu
ADD CONSTRAINT chk_jeu_year_release_min
CHECK (j_date_sortie >= '1996-02-27');

-- Contraintes Groupe d'oeufs
ALTER TABLE Groupe_Oeuf
ADD CONSTRAINT chk_oeuf_id_positif
CHECK (go_id > 0);

ALTER TABLE Groupe_Oeuf
ADD CONSTRAINT chk_oeuf_nom_not_empty
CHECK (go_nom <> '');

-- Contraintes Couleur
ALTER TABLE Couleur
ADD CONSTRAINT chk_couleur_id_positif
CHECK (c_id > 0);

ALTER TABLE Couleur
ADD CONSTRAINT chk_couleur_nom_not_empty
CHECK (c_nom <> '');

-- Contraintes Région
ALTER TABLE Région
ADD CONSTRAINT chk_region_id_positif
CHECK (c_id > 0);

ALTER TABLE Région
ADD CONSTRAINT chk_region_nom_not_empty
CHECK (c_nom <> '');

-- Contraintes Pokémon
ALTER TABLE Pokémon
ADD CONSTRAINT chk_pokemon_id_positif
CHECK (p_numero_pokedex > 0);

ALTER TABLE Pokémon
ADD CONSTRAINT chk_pokemon_nomfr_not_empty
CHECK (p_nom_francais <> '');

ALTER TABLE Pokémon
ADD CONSTRAINT chk_pokemon_nomang_not_empty
CHECK (p_nom_anglais <> '');

ALTER TABLE Pokémon
ADD CONSTRAINT chk_pokemon_is_weight_valid
CHECK (p_poids_kilo >= 0);

ALTER TABLE Pokémon
ADD CONSTRAINT chk_pokemon_is_size_valid
CHECK (p_taille_metre >= 0);

ALTER TABLE Pokémon
ADD CONSTRAINT chk_pokemon_is_capture_rate_nb_valid
CHECK (p_taux_capture BETWEEN 0 AND 255);

ALTER TABLE Pokémon
ADD CONSTRAINT chk_pokemon_not_legendary_and_reproduction
CHECK (NOT (p_legendaire = TRUE AND p_reproduction = TRUE));

ALTER TABLE Pokémon
ADD CONSTRAINT chk_pokemon_not_fabuleux_and_legendary
CHECK (NOT (p_legendaire = TRUE AND p_fabuleux = TRUE));

ALTER TABLE Pokémon
ADD CONSTRAINT chk_pokemon_desc_not_empty
CHECK (p_description <> '');

-- Contraintes Forme
ALTER TABLE Forme
ADD CONSTRAINT chk_forme_id_positif
CHECK (c_id > 0);

ALTER TABLE Forme
ADD CONSTRAINT chk_forme_nom_not_empty
CHECK (c_nom <> '');

ALTER TABLE Forme
ADD CONSTRAINT chk_forme_desc_not_empty
CHECK (c_description_forme <> '');

-- Contraintes Evoluer
ALTER TABLE Evoluer
ADD CONSTRAINT chk_evolution_condition
CHECK (
    Niveau_minimal IS NOT NULL AND Niveau_minimal <> ''
    OR Condition_spéciale IS NOT NULL AND Condition_spéciale <> ''
);
