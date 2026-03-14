USE projet_poke_durand_guichard;

INSERT INTO Type VALUES
(1,'Normal'),
(2,'Feu'),
(3,'Eau'),
(4,'Plante'),
(5,'Electrik'),
(6,'Glace'),
(7,'Combat'),
(8,'Poison'),
(9,'Sol'),
(10,'Vol'),
(11,'Psy'),
(12,'Insecte'),
(13,'Roche'),
(14,'Spectre'),
(15,'Dragon'),
(16,'Tenebres'),
(17,'Acier'),
(18,'Fee');

INSERT INTO Génération VALUES
(1,'Kanto'),
(2,'Johto'),
(3,'Hoenn'),
(4,'Sinnoh'),
(5,'Unys'),
(6,'Kalos'),
(7,'Alola'),
(8,'Galar'),
(9,'Paldea');

INSERT INTO Région VALUES
(1,'Kanto'),
(2,'Johto'),
(3,'Hoenn'),
(4,'Sinnoh'),
(5,'Unys'),
(6,'Kalos'),
(7,'Alola'),
(8,'Galar'),
(9,'Hisui'),
(10,'Paldea');

INSERT INTO Jeu VALUES
(1,1,'Pokemon Rouge','1996-02-27'),
(1,2,'Pokemon Bleu','1996-02-27'),
(2,3,'Pokemon Or','1999-11-21'),
(2,4,'Pokemon Argent','1999-11-21'),
(3,5,'Pokemon Rubis','2002-11-21'),
(3,6,'Pokemon Saphir','2002-11-21'),
(4,7,'Pokemon Diamant','2006-09-28'),
(4,8,'Pokemon Perle','2006-09-28'),
(5,9,'Pokemon Noir','2010-09-18'),
(5,10,'Pokemon Blanc','2010-09-18'),
(6,11,'Pokemon X','2013-10-12'),
(6,12,'Pokemon Y','2013-10-12'),
(6,20,'Pokemon Legends Z-A','2025-01-01'),
(7,13,'Pokemon Soleil','2016-11-18'),
(7,14,'Pokemon Lune','2016-11-18'),
(8,15,'Pokemon Epee','2019-11-15'),
(8,16,'Pokemon Bouclier','2019-11-15'),
(9,17,'Pokemon Ecarlate','2022-11-18'),
(9,18,'Pokemon Violet','2022-11-18'),
(8,19,'Pokemon Legends Arceus','2022-01-28');

INSERT INTO Groupe_Oeuf VALUES
(1,'Monstrueux'),
(2,'Aquatique 1'),
(3,'Vol'),
(4,'Humanoide'),
(5,'Feerique'),
(6,'Dragon');

INSERT INTO Couleur VALUES
(1,'Vert'),
(2,'Rouge'),
(3,'Bleu'),
(4,'Jaune'),
(5,'Violet'),
(6,'Noir'),
(7,'Blanc'),
(8,'Gris');

INSERT INTO Forme VALUES
(1,'Mega','Mega evolution'),
(2,'Alola','Forme regionale'),
(3,'Gigamax','Forme Dynamax speciale');

INSERT INTO Pokémon VALUES
-- KANTO
(1,'Bulbizarre','Bulbasaur',0.7,6.9,45,FALSE,FALSE,TRUE,'Pokemon graine',1,1),
(2,'Herbizarre','Ivysaur',1.0,13.0,45,FALSE,FALSE,TRUE,'Evolution',1,1),
(3,'Florizarre','Venusaur',2.0,100.0,45,FALSE,FALSE,TRUE,'Evolution',1,1),
(4,'Salameche','Charmander',0.6,8.5,45,FALSE,FALSE,TRUE,'Pokemon lezard',1,1),
(5,'Reptincel','Charmeleon',1.1,19.0,45,FALSE,FALSE,TRUE,'Evolution',1,1),
(6,'Dracaufeu','Charizard',1.7,90.5,45,FALSE,FALSE,TRUE,'Evolution finale',1,1),
(7,'Carapuce','Squirtle',0.5,9.0,45,FALSE,FALSE,TRUE,'Pokemon tortue',1,1),
(8,'Carabaffe','Wartortle',1.0,22.5,45,FALSE,FALSE,TRUE,'Evolution',1,1),
(9,'Tortank','Blastoise',1.6,85.5,45,FALSE,FALSE,TRUE,'Evolution finale',1,1),
(25,'Pikachu','Pikachu',0.4,6.0,190,FALSE,FALSE,TRUE,'Mascotte',1,1),
(133,'Evoli','Eevee',0.3,6.5,45,FALSE,FALSE,TRUE,'Pokemon evolution',1,1),
(134,'Aquali','Vaporeon',1.0,29.0,45,FALSE,FALSE,TRUE,'Evolution eau',1,1),
(135,'Voltali','Jolteon',0.8,24.5,45,FALSE,FALSE,TRUE,'Evolution electrique',1,1),
(136,'Pyroli','Flareon',0.9,25.0,45,FALSE,FALSE,TRUE,'Evolution feu',1,1),
(150,'Mewtwo','Mewtwo',2.0,122.0,3,TRUE,FALSE,FALSE,'Legendaire',1,1),
(151,'Mew','Mew',0.4,4.0,45,FALSE,TRUE,FALSE,'Fabuleux',1,1),

-- JOHTO
(152,'Germignon','Chikorita',0.9,6.4,45,FALSE,FALSE,TRUE,'Starter',2,2),
(155,'Hericendre','Cyndaquil',0.5,7.9,45,FALSE,FALSE,TRUE,'Starter',2,2),
(158,'Kaiminus','Totodile',0.6,9.5,45,FALSE,FALSE,TRUE,'Starter',2,2),
(175,'Togepi','Togepi',0.3,1.5,190,FALSE,FALSE,TRUE,'Pokemon oeuf',2,2),
(181,'Pharamp','Ampharos',1.4,61.5,45,FALSE,FALSE,TRUE,'Pokemon lumiere',2,2),
(196,'Mentali','Espeon',0.9,26.5,45,FALSE,FALSE,TRUE,'Evolution Evoli',2,2),
(197,'Noctali','Umbreon',1.0,27.0,45,FALSE,FALSE,TRUE,'Evolution Evoli',2,2),
(243,'Raikou','Raikou',1.9,178.0,3,TRUE,FALSE,FALSE,'Legendaire',2,2),
(244,'Entei','Entei',2.1,198.0,3,TRUE,FALSE,FALSE,'Legendaire',2,2),
(245,'Suicune','Suicune',2.0,187.0,3,TRUE,FALSE,FALSE,'Legendaire',2,2),

-- HOENN
(252,'Arcko','Treecko',0.5,5.0,45,FALSE,FALSE,TRUE,'Starter',3,3),
(255,'Poussifeu','Torchic',0.4,2.5,45,FALSE,FALSE,TRUE,'Starter',3,3),
(258,'Gobou','Mudkip',0.4,7.6,45,FALSE,FALSE,TRUE,'Starter',3,3),
(282,'Gardevoir','Gardevoir',1.6,48.4,45,FALSE,FALSE,TRUE,'Pokemon empathie',3,3),
(303,'Mysdibule','Mawile',0.6,11.5,45,FALSE,FALSE,TRUE,'Pokemon trompeur',3,3),
(306,'Galeking','Aggron',2.1,360.0,45,FALSE,FALSE,TRUE,'Pokemon armure',3,3),
(382,'Kyogre','Kyogre',4.5,352.0,5,TRUE,FALSE,FALSE,'Legendaire',3,3),
(383,'Groudon','Groudon',3.5,950.0,5,TRUE,FALSE,FALSE,'Legendaire',3,3),
(384,'Rayquaza','Rayquaza',7.0,206.0,3,TRUE,FALSE,FALSE,'Legendaire',3,3),
(385,'Jirachi','Jirachi',0.3,1.1,3,FALSE,TRUE,FALSE,'Fabuleux',3,3),

-- SINNOH
(387,'Tortipouss','Turtwig',0.4,10.2,45,FALSE,FALSE,TRUE,'Starter',4,4),
(390,'Ouisticram','Chimchar',0.5,6.2,45,FALSE,FALSE,TRUE,'Starter',4,4),
(393,'Tiplouf','Piplup',0.4,5.2,45,FALSE,FALSE,TRUE,'Starter',4,4),
(448,'Lucario','Lucario',1.2,54.0,45,FALSE,FALSE,TRUE,'Pokemon aura',4,4),
(470,'Phyllali','Leafeon',1.0,25.5,45,FALSE,FALSE,TRUE,'Evolution Evoli',4,4),
(471,'Givrali','Glaceon',0.8,25.9,45,FALSE,FALSE,TRUE,'Evolution Evoli',4,4),
(483,'Dialga','Dialga',5.4,683.0,3,TRUE,FALSE,FALSE,'Legendaire',4,4),
(484,'Palkia','Palkia',4.2,336.0,3,TRUE,FALSE,FALSE,'Legendaire',4,4),
(487,'Giratina','Giratina',4.5,750.0,3,TRUE,FALSE,FALSE,'Legendaire',4,4),
(493,'Arceus','Arceus',3.2,320.0,3,FALSE,TRUE,FALSE,'Dieu pokemon',4,4),

-- HISUI
(899,'Cerbyllin','Wyrdeer',1.8,95.1,45,FALSE,FALSE,TRUE,'Evolution Hisui',9,8),
(900,'Hachecateur','Kleavor',1.8,89.0,45,FALSE,FALSE,TRUE,'Evolution Hisui',9,8),
(901,'Ursaking','Ursaluna',2.4,290.0,45,FALSE,FALSE,TRUE,'Evolution Hisui',9,8),
(902,'Paragruel','Basculegion',3.0,110.0,45,FALSE,FALSE,TRUE,'Evolution Hisui',9,8),
(903,'Farfurex','Sneasler',1.3,43.0,45,FALSE,FALSE,TRUE,'Evolution Hisui',9,8),
(904,'Qwilpik','Overqwil',2.5,60.5,45,FALSE,FALSE,TRUE,'Evolution Hisui',9,8),
(905,'Amovénus','Enamorus',1.6,48.0,3,TRUE,FALSE,FALSE,'Legendaire Hisui',9,8),

-- UNYS
(495,'Vipeliere','Snivy',0.6,8.1,45,FALSE,FALSE,TRUE,'Starter',5,5),
(498,'Gruikui','Tepig',0.5,9.9,45,FALSE,FALSE,TRUE,'Starter',5,5),
(501,'Moustillon','Oshawott',0.5,5.9,45,FALSE,FALSE,TRUE,'Starter',5,5),
(530,'Minotaupe','Excadrill',0.7,40.4,45,FALSE,FALSE,TRUE,'Pokemon taupe',5,5),
(571,'Zoroark','Zoroark',1.6,81.1,45,FALSE,FALSE,TRUE,'Pokemon illusion',5,5),
(635,'Trioxhydre','Hydreigon',1.8,160.0,45,FALSE,FALSE,TRUE,'Pokemon brutal',5,5),
(643,'Reshiram','Reshiram',3.2,330.0,3,TRUE,FALSE,FALSE,'Legendaire',5,5),
(644,'Zekrom','Zekrom',2.9,345.0,3,TRUE,FALSE,FALSE,'Legendaire',5,5),
(646,'Kyurem','Kyurem',3.0,325.0,3,TRUE,FALSE,FALSE,'Legendaire',5,5),
(649,'Genesect','Genesect',1.5,82.5,3,FALSE,TRUE,FALSE,'Fabuleux',5,5),

-- KALOS
(650,'Marisson','Chespin',0.4,9.0,45,FALSE,FALSE,TRUE,'Starter',6,6),
(653,'Feunnec','Fennekin',0.4,9.4,45,FALSE,FALSE,TRUE,'Starter',6,6),
(656,'Grenousse','Froakie',0.3,7.0,45,FALSE,FALSE,TRUE,'Starter',6,6),
(658,'Amphinobi','Greninja',1.5,40.0,45,FALSE,FALSE,TRUE,'Pokemon ninja',6,6),
(663,'Flambusard','Talonflame',1.2,24.5,45,FALSE,FALSE,TRUE,'Pokemon rapace',6,6),
(700,'Nymphali','Sylveon',1.0,23.5,45,FALSE,FALSE,TRUE,'Evolution Evoli',6,6),
(716,'Xerneas','Xerneas',3.0,215.0,3,TRUE,FALSE,FALSE,'Legendaire',6,6),
(717,'Yveltal','Yveltal',5.8,203.0,3,TRUE,FALSE,FALSE,'Legendaire',6,6),
(718,'Zygarde','Zygarde',5.0,305.0,3,TRUE,FALSE,FALSE,'Legendaire',6,6),
(719,'Diancie','Diancie',0.7,8.8,3,FALSE,TRUE,FALSE,'Fabuleux',6,6),

-- ALOLA
(722,'Brindibou','Rowlet',0.3,1.5,45,FALSE,FALSE,TRUE,'Starter',7,7),
(725,'Flamiaou','Litten',0.4,4.3,45,FALSE,FALSE,TRUE,'Starter',7,7),
(728,'Otaquin','Popplio',0.4,7.5,45,FALSE,FALSE,TRUE,'Starter',7,7),
(745,'Lougaroc','Lycanroc',0.8,25.0,45,FALSE,FALSE,TRUE,'Pokemon loup',7,7),
(778,'Mimiqui','Mimikyu',0.2,0.7,45,FALSE,FALSE,TRUE,'Pokemon deguisement',7,7),
(785,'Tokorico','Tapu Koko',1.8,20.5,3,TRUE,FALSE,FALSE,'Legendaire',7,7),
(786,'Tokopiyon','Tapu Lele',1.2,18.6,3,TRUE,FALSE,FALSE,'Legendaire',7,7),
(787,'Tokotoro','Tapu Bulu',1.9,45.5,3,TRUE,FALSE,FALSE,'Legendaire',7,7),
(788,'Tokopisco','Tapu Fini',1.3,21.2,3,TRUE,FALSE,FALSE,'Legendaire',7,7),
(802,'Marshadow','Marshadow',0.7,22.2,3,FALSE,TRUE,FALSE,'Fabuleux',7,7),

-- GALAR
(810,'Ouistempo','Grookey',0.3,5.0,45,FALSE,FALSE,TRUE,'Starter',8,8),
(813,'Flambino','Scorbunny',0.3,4.5,45,FALSE,FALSE,TRUE,'Starter',8,8),
(816,'Larmeleon','Sobble',0.3,4.0,45,FALSE,FALSE,TRUE,'Starter',8,8),
(818,'Lezargus','Inteleon',1.9,45.2,45,FALSE,FALSE,TRUE,'Pokemon espion',8,8),
(823,'Corvaillus','Corviknight',2.2,75.0,45,FALSE,FALSE,TRUE,'Pokemon corbeau',8,8),
(835,'Voltoutou','Yamper',0.3,13.5,45,FALSE,FALSE,TRUE,'Pokemon chien',8,8),
(888,'Zacian','Zacian',2.8,110.0,3,TRUE,FALSE,FALSE,'Legendaire',8,8),
(889,'Zamazenta','Zamazenta',2.9,210.0,3,TRUE,FALSE,FALSE,'Legendaire',8,8),
(890,'Ethernatos','Eternatus',20.0,950.0,3,TRUE,FALSE,FALSE,'Legendaire',8,8),
(893,'Zarude','Zarude',1.8,70.0,3,FALSE,TRUE,FALSE,'Fabuleux',8,8),

-- PALDEA
(906,'Poussacha','Sprigatito',0.4,4.1,45,FALSE,FALSE,TRUE,'Starter',9,9),
(909,'Chochodile','Fuecoco',0.4,9.8,45,FALSE,FALSE,TRUE,'Starter',9,9),
(912,'Coiffeton','Quaxly',0.5,6.1,45,FALSE,FALSE,TRUE,'Starter',9,9),
(937,'Carmadura','Ceruledge',1.6,62.0,45,FALSE,FALSE,TRUE,'Pokemon lame',9,9),
(938,'Pohm','Pawmi',0.3,2.5,45,FALSE,FALSE,TRUE,'Pokemon souris',9,9),
(959,'Gromago','Gholdengo',1.2,30.0,45,FALSE,FALSE,TRUE,'Pokemon piece',9,9),
(1007,'Koraidon','Koraidon',2.5,303.0,3,TRUE,FALSE,FALSE,'Legendaire',9,9),
(1008,'Miraidon','Miraidon',3.5,240.0,3,TRUE,FALSE,FALSE,'Legendaire',9,9),
(1017,'Ogerpon','Ogerpon',1.2,39.8,3,TRUE,FALSE,FALSE,'Legendaire',9,9),
(1024,'Pecharunt','Pecharunt',0.3,0.3,3,FALSE,TRUE,FALSE,'Fabuleux',9,9);

INSERT INTO Etre VALUES
-- Kanto
(1,4),(1,8),
(2,4),(2,8),
(3,4),(3,8),
(4,2),
(5,2),
(6,2),(6,10),
(7,3),
(8,3),
(9,3),
(25,5),
(133,1),
(134,3),
(135,5),
(136,2),
(150,11),
(151,11),

-- Johto
(152,4),
(155,2),
(158,3),
(175,18),
(181,5),
(196,11),
(197,16),
(243,5),
(244,2),
(245,3),

-- Hoenn
(252,4),
(255,2),
(258,3),
(282,11),(282,18),
(303,17),(303,18),
(306,17),(306,13),
(382,3),
(383,9),
(384,15),(384,10),
(385,17),(385,11),

-- Sinnoh
(387,4),
(390,2),
(393,3),
(448,7),(448,17),
(470,4),
(471,6),
(483,17),(483,15),
(484,3),(484,15),
(487,14),(487,15),
(493,1),

-- Hisui
(899,1),(899,11),
(900,12),(900,13),
(901,9),(901,1),
(902,3),(902,14),
(903,7),(903,8),
(904,8),(904,16),
(905,18),(905,10),

-- Unys
(495,4),
(498,2),
(501,3),
(530,9),(530,17),
(571,16),
(635,16),(635,15),
(643,15),(643,2),
(644,15),(644,5),
(646,15),(646,6),
(649,12),(649,17),

-- Kalos
(650,4),
(653,2),
(656,3),
(658,3),(658,16),
(663,2),(663,10),
(700,18),
(716,18),
(717,16),(717,10),
(718,15),(718,9),
(719,13),(719,18),

-- Alola
(722,4),(722,10),
(725,2),
(728,3),
(745,13),
(778,14),(778,18),
(785,5),(785,18),
(786,11),(786,18),
(787,4),(787,18),
(788,3),(788,18),
(802,7),(802,14),

-- Galar
(810,4),
(813,2),
(816,3),
(818,3),
(823,10),(823,17),
(835,5),
(888,18),(888,17),
(889,7),(889,17),
(890,8),(890,15),
(893,16),(893,4),

-- Paldea
(906,4),
(909,2),
(912,3),
(937,2),(937,14),
(938,5),
(959,17),(959,14),
(1007,7),(1007,15),
(1008,5),(1008,15),
(1017,4),
(1024,8),(1024,14);

INSERT INTO Avoir_pour VALUES
(1,1),(2,1),(3,1),
(4,1),(5,1),(6,1),
(7,2),(8,2),(9,2),
(25,5),
(133,5),(134,5),(135,5),(136,5),
(152,1),(155,1),(158,2),
(175,5),
(181,1),
(196,5),(197,5),
(252,1),(255,1),(258,2),
(282,4),
(303,5),
(306,1),
(387,1),(390,1),(393,2),
(448,4),
(470,5),(471,5),
(495,4),(498,1),(501,2),
(530,4),
(571,4),
(635,6),
(650,1),(653,1),(656,2),
(658,4),
(663,3),
(700,5),
(722,3),(725,1),(728,2),
(745,1),
(778,5),
(810,4),(813,1),(816,2),
(818,4),
(823,3),
(835,1),
(906,4),(909,1),(912,2),
(937,4),
(938,1),
(959,4);

INSERT INTO Avoir_pour_couleur VALUES
(1,1),(2,1),(3,1),
(4,2),(5,2),(6,2),
(7,3),(8,3),(9,3),
(25,4),
(133,8),(134,3),(135,4),(136,2),
(150,5),(151,5),
(152,1),(155,2),(158,3),
(175,7),
(181,4),
(196,5),(197,6),
(243,4),(244,2),(245,3),
(252,1),(255,2),(258,3),
(282,7),
(303,8),
(306,8),
(382,3),(383,2),(384,1),(385,4),
(387,1),(390,2),(393,3),
(448,3),
(470,1),(471,3),
(483,3),(484,5),(487,6),(493,7),
(495,1),(498,2),(501,3),
(530,8),(571,6),(635,6),
(643,7),(644,6),(646,8),(649,5),
(650,1),(653,4),(656,3),
(658,3),(663,2),(700,5),
(716,3),(717,2),(718,1),(719,5),
(722,1),(725,2),(728,3),
(745,8),(778,4),
(785,4),(786,5),(787,1),(788,5),
(802,6),
(810,1),(813,4),(816,3),
(818,3),(823,6),(835,4),
(888,3),(889,2),(890,5),(893,6),
(906,1),(909,2),(912,7),
(937,5),(938,4),(959,4),
(1007,2),(1008,5),(1017,1),(1024,5);

INSERT INTO Apparaitre_dans VALUES
(1,1,1),(1,1,2),
(4,1,1),(4,1,2),
(7,1,1),(7,1,2),
(25,1,1),(25,1,2),
(150,1,1),(150,1,2),
(151,1,1),(151,1,2),

(152,2,3),(152,2,4),
(155,2,3),(155,2,4),
(158,2,3),(158,2,4),

(252,3,5),(252,3,6),
(255,3,5),(255,3,6),
(258,3,5),(258,3,6),

(387,4,7),(387,4,8),
(390,4,7),(390,4,8),
(393,4,7),(393,4,8),

(495,5,9),(495,5,10),
(498,5,9),(498,5,10),
(501,5,9),(501,5,10),

(650,6,11),(650,6,12),
(653,6,11),(653,6,12),
(656,6,11),(656,6,12),

(722,7,13),(722,7,14),
(725,7,13),(725,7,14),
(728,7,13),(728,7,14),

(810,8,15),(810,8,16),
(813,8,15),(813,8,16),
(816,8,15),(816,8,16),

(906,9,17),(906,9,18),
(909,9,17),(909,9,18),
(912,9,17),(912,9,18);

INSERT INTO Posséder VALUES
(6,1),(6,3),
(150,1),
(303,1),
(306,1),
(658,1),
(719,1),

(745,2),
(778,2),

(823,3);

INSERT INTO Evoluer VALUES

-- KANTO
(1,2,'16',NULL),
(2,3,'32',NULL),
(4,5,'16',NULL),
(5,6,'36',NULL),
(7,8,'16',NULL),
(8,9,'36',NULL),
(133,134,NULL,'Pierre Eau'),
(133,135,NULL,'Pierre Foudre'),
(133,136,NULL,'Pierre Feu'),

-- JOHTO
(133,196,NULL,'Bonheur jour'),
(133,197,NULL,'Bonheur nuit'),

-- SINNOH
(133,470,NULL,'Pierre Plante'),
(133,471,NULL,'Pierre Glace'),

-- KALOS
(133,700,NULL, "Capacité fée");

INSERT INTO Se_passer VALUES
(1,1,1),
(1,1,2),
(2,2,3),
(2,2,4),
(3,3,5),
(3,3,6),
(4,4,7),
(4,4,8),
(9,8,19),
(5,5,9),
(5,5,10),
(6,6,11),
(6,6,12),
(6,6,20),
(7,7,13),
(7,7,14),
(8,8,15),
(8,8,16),
(9,9,17),
(9,9,18);