CREATE DATABASE IF NOT EXISTS projet_durand_guichard;
USE projet_durand_guichard;

CREATE TABLE Type(
   t_id INT,
   t_nom VARCHAR(50),
   PRIMARY KEY(t_id, t_nom)
);

CREATE TABLE Génération(
   g_num INT,
   g_nom VARCHAR(30),
   PRIMARY KEY(g_num)
);

CREATE TABLE Région(
   r_id INT,
   r_nom VARCHAR(30),
   PRIMARY KEY(r_id)
);

CREATE TABLE Jeu(
   g_num INT,
   j_id INT,
   j_nom VARCHAR(60),
   j_date_sortie DATE,
   PRIMARY KEY(g_num, j_id),
   FOREIGN KEY(g_num) REFERENCES Génération(g_num)
);

CREATE TABLE Groupe_Oeuf(
   go_id INT,
   go_nom VARCHAR(20),
   PRIMARY KEY(go_id)
);

CREATE TABLE Couleur(
   c_id INT,
   c_nom VARCHAR(50),
   PRIMARY KEY(c_id)
);

CREATE TABLE Forme(
   f_id INT,
   f_nom VARCHAR(50),
   f_description_forme VARCHAR(50),
   PRIMARY KEY(f_id)
);

CREATE TABLE Pokémon(
   p_numero_pokedex INT,
   p_nom_francais VARCHAR(50),
   p_nom_anglais VARCHAR(50),
   p_taille_metre DECIMAL(5,2),
   p_poids_kilo DECIMAL(6,1),
   p_taux_capture INT,
   p_legendaire BOOLEAN,
   p_fabuleux BOOLEAN,
   p_reproduction BOOLEAN,
   p_description VARCHAR(255),
   r_id INT NOT NULL,
   g_num INT NOT NULL,
   PRIMARY KEY(p_numero_pokedex),
   FOREIGN KEY(r_id) REFERENCES Région(r_id),
   FOREIGN KEY(g_num) REFERENCES Génération(g_num)
);

CREATE TABLE Etre(
   p_numero_pokedex INT,
   t_id INT,
   t_nom VARCHAR(50),
   PRIMARY KEY(p_numero_pokedex, t_id, t_nom),
   FOREIGN KEY(p_numero_pokedex) REFERENCES Pokémon(p_numero_pokedex),
   FOREIGN KEY(t_id, t_nom) REFERENCES Type(t_id, t_nom)
);

CREATE TABLE Avoir_pour(
   p_numero_pokedex INT,
   go_id INT,
   PRIMARY KEY(p_numero_pokedex, go_id),
   FOREIGN KEY(p_numero_pokedex) REFERENCES Pokémon(p_numero_pokedex),
   FOREIGN KEY(go_id) REFERENCES Groupe_Oeuf(go_id)
);

CREATE TABLE Apparaitre_dans(
   p_numero_pokedex INT,
   g_num INT,
   j_id INT,
   PRIMARY KEY(p_numero_pokedex, g_num, j_id),
   FOREIGN KEY(p_numero_pokedex) REFERENCES Pokémon(p_numero_pokedex),
   FOREIGN KEY(g_num, j_id) REFERENCES Jeu(g_num, j_id)
);

CREATE TABLE Evoluer(
   p_numero_pokedex INT,
   p_numero_pokedex_1 INT,
   Niveau_minimal VARCHAR(50),
   Condition_spéciale VARCHAR(50),
   PRIMARY KEY(p_numero_pokedex, p_numero_pokedex_1),
   FOREIGN KEY(p_numero_pokedex) REFERENCES Pokémon(p_numero_pokedex),
   FOREIGN KEY(p_numero_pokedex_1) REFERENCES Pokémon(p_numero_pokedex)
);

CREATE TABLE Avoir_pour_couleur(
   p_numero_pokedex INT,
   c_id INT,
   PRIMARY KEY(p_numero_pokedex, c_id),
   FOREIGN KEY(p_numero_pokedex) REFERENCES Pokémon(p_numero_pokedex),
   FOREIGN KEY(c_id) REFERENCES Couleur(c_id)
);

CREATE TABLE Posséder(
   p_numero_pokedex INT,
   f_id INT,
   PRIMARY KEY(p_numero_pokedex, f_id),
   FOREIGN KEY(p_numero_pokedex) REFERENCES Pokémon(p_numero_pokedex),
   FOREIGN KEY(f_id) REFERENCES Forme(f_id)
);

CREATE TABLE Se_passer(
   r_id INT,
   g_num INT,
   j_id INT,
   PRIMARY KEY(r_id, g_num, j_id),
   FOREIGN KEY(r_id) REFERENCES Région(r_id),
   FOREIGN KEY(g_num, j_id) REFERENCES Jeu(g_num, j_id)
);
