CREATE TABLE `district` (
  `id` INT(11) NOT NULL,
  `label` VARCHAR(255) DEFAULT NULL,
  `id_region` INT(11) DEFAULT NULL,
  deleted int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

--
-- Contenu de la table `district`
--

INSERT INTO `district` (`id`, `label`, `id_region`) VALUES
(1, 'Ambohidratrimo', 1),
(2, 'Andramasina', 1),
(3, 'Anjozorobe', 1),
(4, 'Ankazobe', 1),
(5, 'Antananarivo Atsimondrano', 1),
(6, 'Antananarivo Avaradrano', 1),
(7, 'Antananarivo Renivohitra', 1),
(8, 'Manjakandriana', 1),
(9, 'Antsirabe I', 2),
(10, 'Betafo', 2),
(11, 'Ambatolampy', 2),
(12, 'Antanifotsy', 2),
(13, 'Faratsiho', 2),
(14, 'Antsirabe II', 2),
(15, 'Mandoto', 2),
(16, 'Soavinandriana', 3),
(17, 'Arivonimamo', 3),
(18, 'Miarinarivo', 3),
(19, 'Tsiroanomandidy', 4),
(20, 'Fenoarivobe', 4),
(21, 'Ambalavao', 5),
(22, 'Fianarantsoa I', 5),
(23, 'Ambohimahasoa', 5),
(24, 'Ikalamavony', 5),
(25, 'Isandra', 5),
(26, 'Lalangina', 5),
(27, 'Vohibato', 5),
(28, 'Ambatofinandrahana', 6),
(29, 'Ambositra', 6),
(30, 'Fandriana', 6),
(31, 'Manandriana', 6),
(32, 'Ifanadiana', 7),
(33, 'Nosy-varika', 7),
(34, 'Mananjary', 7),
(35, 'Manakara atsimo', 7),
(36, 'Ikongo', 7),
(37, 'Vohipeno', 7),
(38, 'Ihosy', 8),
(39, 'Ivohibe', 8),
(40, 'Iakora', 8),
(41, 'Farafangana', 9),
(42, 'Vangaindrano', 9),
(43, 'Midongy-atsimo', 9),
(44, 'Vondrozo', 9),
(45, 'Befotaka', 9),
(46, 'Toamasina I', 10),
(47, 'Brickaville', 10),
(48, 'Vatomandry', 10),
(49, 'Mahanoro', 10),
(50, 'Marolambo', 10),
(51, 'Toamasina II', 10),
(52, 'Antanambao manampontsy', 10),
(53, 'Sainte Marie', 11),
(54, 'Maroantsetra', 11),
(55, 'Mananara-avaratra', 11),
(56, 'FENERIVE EST', 11),
(57, 'Soanierana Ivongo', 11),
(58, 'Vavatenina', 11),
(59, 'Amparafaravola', 12),
(60, 'Ambatondrazaka', 12),
(61, 'Moramanga', 12),
(62, 'Andilamena', 12),
(63, 'Anosibe-an’ala', 12),
(64, 'Mahajanga I', 13),
(65, 'Ambato boeni', 13),
(66, 'Marovoay', 13),
(67, 'Mitsinjo', 13),
(68, 'Mahajanga II', 13),
(69, 'Soalala', 13),
(70, 'Port-Bergé(Boriziny-vaovao)', 14),
(71, 'Mandritsara', 14),
(72, 'Analalava', 14),
(73, 'Befandriana nord', 14),
(74, 'Antsohihy', 14),
(75, 'Bealanana', 14),
(76, 'Mampikony', 14),
(77, 'Maevatanana', 15),
(78, 'Tsaratanana', 15),
(79, 'Kandreho', 15),
(80, 'Ambatomainty', 16),
(81, 'Antsalova', 16),
(82, 'Maintirano', 16),
(83, 'Morafenobe', 16),
(84, 'Besalampy', 16),
(85, 'Toliara-I', 17),
(86, 'Toliara-II', 17),
(87, 'Benenitra', 17),
(88, 'Beroroha', 17),
(89, 'Morombe', 17),
(90, 'Ankazoabo', 17),
(91, 'Betioky atsimo', 17),
(92, 'Ampanihy ouest', 17),
(93, 'Sakaraha', 17),
(94, 'Beloha', 18),
(95, 'Ambovombe-androy', 18),
(96, 'Bekily', 18),
(97, 'Tsihombe', 18),
(98, 'Amboasary-atsimo', 19),
(99, 'Taolagnaro', 19),
(100, 'Betroka', 19),
(101, 'Manja', 20),
(102, 'Morondava', 20),
(103, 'Mahabo', 20),
(104, 'Belo sur Tsiribihina', 20),
(105, 'Miandrivazo', 20),
(106, 'Antsiranana II', 21),
(107, 'Antsiranana I', 21),
(108, 'Ambilobe', 21),
(109, 'Nosy-Be', 21),
(110, 'Ambanja', 21),
(111, 'Antalaha', 22),
(112, 'Sambava', 22),
(113, 'Andapa', 22),
(114, 'Vohemar', 22);

-- --------------------------------------------------------

--
-- Structure de la table `province`
--

CREATE TABLE `province` (
  `id` INT(11) NOT NULL,
  `label` VARCHAR(255) DEFAULT NULL,
  deleted int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

--
-- Contenu de la table `province`
--

INSERT INTO `province` (`id`, `label`) VALUES
(0, 'ANTANANARIVO'),
(1, 'ANTANANARIVO'),
(2, 'FIANARANTSOA'),
(3, 'TOAMASINA'),
(4, 'MAHAJANGA'),
(5, 'TOLIARA'),
(6, 'ANTSIRANANA');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id` INT(11) NOT NULL,
  `label` VARCHAR(255) DEFAULT NULL,
  `id_province` INT(11) DEFAULT NULL,
  `comite_be` int(1) DEFAULT NULL,
  deleted int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`id`, `label`, `id_province`, `comite_be`) VALUES
(1, 'Analamanga', 1, NULL),
(2, 'Vakinankaratra', 1, NULL),
(3, 'Itasy', 1, NULL),
(4, 'Bongolava', 1, NULL),
(5, 'Haute Matsiatra', 2, NULL),
(6, 'Amoron’i Mania', 2, NULL),
(7, 'Vatovavy Fitovinany', 2, NULL),
(8, 'Ihorombe', 2, NULL),
(9, 'Atsimo Atsinanana', 2, NULL),
(10, 'Atsinanana', 3, NULL),
(11, 'Analanjirofo', 3, NULL),
(12, 'Alaotra Mangoro', 3, NULL),
(13, 'Boeny', 4, NULL),
(14, 'Sofia', 4, NULL),
(15, 'Betsiboka', 4, NULL),
(16, 'Melaky', 4, NULL),
(17, 'Atsimo Andrefana', 5, NULL),
(18, 'Androy', 5, NULL),
(19, 'Anosy', 5, NULL),
(20, 'Menabe', 5, NULL),
(21, 'Diana', 6, NULL),
(22, 'Sava', 6, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` INT(11) NOT NULL,
  `nom` VARCHAR(200) DEFAULT NULL,
  `email` VARCHAR(100) DEFAULT NULL,
  `mdp` text,
  `level` text,
  deleted int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `email`, `mdp`, `level`) VALUES
(7, 'Ngygy', 'Iaiky@live.fr', '', NULL),
(8, 'naej', 'Iaiky@live.fr', 'jklm', NULL),
(9, 'haritiana', 'rakotoarinivo.zacharie@gmail.com', 'test', NULL),
(10, 'zacharie', 'test@test.fr', 'test', NULL),
(11, 'Dimby', 'arisondimb@live.fr', 'Blabla123', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_region` (`id_region`);

--
-- Index pour la table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_province` (`id_province`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `District_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`);

--
-- Contraintes pour la table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `Region_ibfk_1` FOREIGN KEY (`id_province`) REFERENCES `province` (`id`);

CREATE TABLE doc_cadre (
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  date DATE DEFAULT NULL,
  label VARCHAR(250),
  description VARCHAR(250) DEFAULT NULL,
  deleted INT(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO doc_cadre (`label`) VALUES
('POLFOR'),
('SNABE'),
('PREEB'),
('SDAUBE'),
('NPE');

CREATE TABLE cadre_reference (
  id INT(11) NOT NULL PRIMARY KEY,
  date DATE DEFAULT NULL,
  district_id INT(11),
  doc_cadre_id INT(11),
  description TEXT,
  deleted INT(1) DEFAULT 0,
  FOREIGN KEY (district_id)
    REFERENCES district(id)
    ON DELETE CASCADE,
  FOREIGN KEY (doc_cadre_id)
    REFERENCES doc_cadre(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

-- INSERT INTO cadre_reference (id, date, district_id, doc_cadre_id) VALUES
-- (1, '2021-04-12', 1, 1),
-- (2, '2021-04-12', 1, 2),
-- (3, '2021-04-12', 1, 3),
-- (4, '2021-04-12', 1, 4),
-- (5, '2021-04-12', 1, 5),
-- (6, '2021-04-12', 2, 1),
-- (7, '2021-04-12', 2, 2),
-- (8, '2021-04-12', 2, 3),
-- (9, '2021-04-12', 2, 4),
-- (10, '2021-04-12', 2, 5),
-- (11, '2021-04-12', 3, 1),
-- (12, '2021-04-12', 3, 2),
-- (13, '2021-04-12', 3, 3),
-- (14, '2021-04-12', 3, 4),
-- (15, '2021-04-12', 3, 5),
-- (16, '2021-04-12', 4, 5),
-- (17, '2021-04-12', 5, 4),
-- (18, '2021-04-12', 6, 3),
-- (19, '2021-04-12', 7, 2);

CREATE VIEW cadre_view AS 
    SELECT cr.*, d.label, d.id_region 
    FROM cadre_reference cr 
        JOIN district d ON cr.district_id = d.id 
    WHERE cr.deleted = 0;

CREATE TABLE foret_naturel (
  id INT(11) NOT NULL PRIMARY KEY,
  date DATE DEFAULT NULL,
  district_id INT(11),
  commune VARCHAR(255) DEFAULT NULL,
  localité VARCHAR(255) DEFAULT NULL,
  plan_amenagement int(1) DEFAULT 0,
  superficie FLOAT DEFAULT NULL,
  gpx VARCHAR(255) DEFAULT NULL,
  acteur_exploitation VARCHAR(255) DEFAULT NULL,
  authorisation int(1) DEFAULT 0,
  formation_forestiere VARCHAR(255) DEFAULT NULL,
  systeme_protection int(1) DEFAULT 0,
  surface_detruite FLOAT DEFAULT NULL,
  liste_essences VARCHAR(255) DEFAULT NULL,
  controle INT(11) DEFAULT NULL,
  deleted INT(1) DEFAULT 0,
  FOREIGN KEY (district_id)
    REFERENCES district(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;


CREATE VIEW potentiel_foret AS
SELECT district_id as id, district.id_region as region_id, SUM(superficie) as superficie, SUM(surface_detruite) as detruit, foret_naturel.date as date
FROM foret_naturel JOIN district ON district.id = district_id
WHERE foret_naturel.deleted = 0
GROUP BY district_id, foret_naturel.date

-- INSERT INTO `foret_naturel` (`id`, `date`, `district_id`, `commune`, `localité`, `plan_amenagement`, `superficie`, `gpx`, `acteur_exploitation`, `authorisation`, `formation_forestiere`, `systeme_protection`, `surface_detruite`, `liste_essences`, `controle`, `deleted`) VALUES 
-- ('1', '2019-12-21', '1', 'Antananarivo', 'Andrahavoangy', '1', '2500', NULL, 'WWF', '0', 'Forêt dense sèche', '1', '500', 'Eucalyptus', '10', '0'),
-- ('2', '2020-12-21', '1', 'Antananarivo', 'Andrahavoangy', '0', '2500', NULL, 'WWF', '1', 'Forêt dense sèche', '0', '500', 'Eucalyptus', '10', '0'),
-- ('3', '2019-12-21', '1', 'Antananarivo', 'Andrahavoangy', '1', '2500', NULL, 'WWF', '1', 'Forêt dense sèche', '0', '500', 'Eucalyptus', '10', '0'),
-- ('4', '2021-12-21', '2', 'Antananarivo', 'Andrahavoangy', '0', '2500', NULL, 'WWF', '0', 'Forêt dense sèche', '1', '500', 'Eucalyptus', '10', '0'),
-- ('5', '2019-12-21', '2', 'Antananarivo', 'Andrahavoangy', '1', '2500', NULL, 'WWF', '0', 'Forêt dense sèche', '1', '500', 'Eucalyptus', '10', '0'),
-- ('6', '2020-12-21', '2', 'Antananarivo', 'Andrahavoangy', '1', '2500', NULL, 'WWF', '1', 'Forêt dense sèche', '0', '500', 'Eucalyptus', '10', '0'),
-- ('7', '2019-12-21', '9', 'Antananarivo', 'Andrahavoangy', '0', '2500', NULL, 'WWF', '0', 'Forêt dense sèche', '1', '500', 'Eucalyptus', '10', '0'),
-- ('8', '2019-12-21', '9', 'Antananarivo', 'Andrahavoangy', '1', '2500', NULL, 'WWF', '1', 'Forêt dense sèche', '1', '500', 'Eucalyptus', '10', '0'),
-- ('9', '2021-12-21', '9', 'Antananarivo', 'Andrahavoangy', '1', '2500', NULL, 'WWF', '0', 'Forêt dense sèche', '0', '500', 'Eucalyptus', '10', '0'),
-- ('10', '2019-12-21', '18', 'Antananarivo', 'Andrahavoangy', '1', '2500', NULL, 'WWF', '1', 'Forêt dense sèche', '1', '500', 'Eucalyptus', '10', '0'),
-- ('11', '2019-12-21', '18', 'Antananarivo', 'Andrahavoangy', '0', '2500', NULL, 'WWF', '1', 'Forêt dense sèche', '1', '500', 'Eucalyptus', '10', '0'),
-- ('12', '2020-12-21', '18', 'Antananarivo', 'Andrahavoangy', '0', '2500', NULL, 'WWF', '0', 'Forêt dense sèche', '1', '500', 'Eucalyptus', '10', '0'),
-- ('13', '2020-12-21', '18', 'Antananarivo', 'Andrahavoangy', '1', '2500', NULL, 'WWF', '0', 'Forêt dense sèche', '0', '500', 'Eucalyptus', '10', '0'),
-- ('14', '2021-12-21', '20', 'Antananarivo', 'Andrahavoangy', '0', '2500', NULL, 'WWF', '0', 'Forêt dense sèche', '1', '500', 'Eucalyptus', '10', '0'),
-- ('15', '2020-12-21', '20', 'Antananarivo', 'Andrahavoangy', '0', '2500', NULL, 'WWF', '1', 'Forêt dense sèche', '1', '500', 'Eucalyptus', '10', '0'),
-- ('16', '2021-12-21', '20', 'Antananarivo', 'Andrahavoangy', '0', '2500', NULL, 'WWF', '0', 'Forêt dense sèche', '1', '500', 'Eucalyptus', '10', '0');
-- SELECT id, region_id, SUM(superficie) as superficie, SUM(detruit) as detruit FROM potentiel_foret 
-- WHERE 1=1 
-- GROUP BY id;

CREATE TABLE reboisement (
  id INT(11) NOT NULL PRIMARY KEY,
  date DATE DEFAULT NULL,
  district_id INT(11),
  commune VARCHAR(255) DEFAULT NULL,
  localité VARCHAR(255) DEFAULT NULL,
  genre VARCHAR(255) DEFAULT NULL,
  superficie FLOAT DEFAULT NULL,
  gpx VARCHAR(255) DEFAULT NULL,
  annee INT(4) DEFAULT NULL,
  acteur_exploitation VARCHAR(255) DEFAULT NULL,
  protection int(1) DEFAULT 0,
  surface_detruite FLOAT DEFAULT NULL,
  type_culture VARCHAR(255) DEFAULT NULL,
  essences VARCHAR(255) DEFAULT NULL,
  provenance_semence VARCHAR(255) DEFAULT NULL,
  travail_sol VARCHAR(255) DEFAULT NULL,
  densite INT(11) DEFAULT NULL,
  fertilisant INT(1) DEFAULT 0,
  productivite VARCHAR(255) DEFAULT NULL,
  appui INT(1) DEFAULT 0,
  organisme_appuie VARCHAR(255) DEFAULT NULL,
  controle INT(11) DEFAULT NULL,
  deleted INT(1) DEFAULT 0,
  FOREIGN KEY (district_id)
    REFERENCES district(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE VIEW potentiel_reboisement AS
SELECT district_id as id, district.id_region as region_id, SUM(superficie) as superficie, SUM(surface_detruite) as detruit, reboisement.date as date
FROM reboisement JOIN district ON district.id = district_id
WHERE reboisement.deleted = 0
GROUP BY district_id, reboisement.date

-- INSERT INTO `reboisement` (`id`, `date`, `district_id`, `commune`, `localité`, `genre`, `superficie`, `gpx`, `annee`, `acteur_exploitation`, `protection`, `surface_detruite`, `type_culture`, `essences`, `provenance_semence`, `travail_sol`, `densite`, `fertilisant`, `productivite`, `appui`, `organisme_appuie`, `controle`, `deleted`) VALUES 
-- ('2', '2021-06-01', '1', 'commune', 'localite', 'Homme', '2500', NULL, '2019', 'wwf', '1', '50', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('3', '2020-06-01', '1', 'commune', 'localite', 'Homme', '2500', NULL, '2020', 'wwf', '1', '500', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('4', '2020-06-01', '1', 'commune', 'localite', 'Homme', '2500', NULL, '2020', 'wwf', '1', '100', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('5', '2019-06-01', '2', 'commune', 'localite', 'Homme', '2500', NULL, '2015', 'wwf', '1', '500', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('6', '2020-06-01', '2', 'commune', 'localite', 'Homme', '2500', NULL, '2012', 'wwf', '1', '200', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('7', '2021-06-01', '2', 'commune', 'localite', 'Homme', '2500', NULL, '2017', 'wwf', '1', '500', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('8', '2021-06-01', '5', 'commune', 'localite', 'Homme', '2500', NULL, '2012', 'wwf', '1', '500', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('9', '2019-06-01', '12', 'commune', 'localite', 'Homme', '2500', NULL, '2014', 'wwf', '1', '500', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('10', '2021-06-01', '12', 'commune', 'localite', 'Homme', '2500', NULL, '2015', 'wwf', '1', '700', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('11', '2021-06-01', '12', 'commune', 'localite', 'Homme', '2500', NULL, '2017', 'wwf', '1', '500', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('12', '2018-06-01', '12', 'commune', 'localite', 'Homme', '2500', NULL, '2014', 'wwf', '1', '400', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('13', '2020-06-01', '20', 'commune', 'localite', 'Homme', '2500', NULL, '2015', 'wwf', '1', '500', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('14', '2020-06-01', '20', 'commune', 'localite', 'Homme', '2500', NULL, '2019', 'wwf', '1', '500', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('15', '2015-06-01', '19', 'commune', 'localite', 'Homme', '2500', NULL, '2012', 'wwf', '1', '600', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('16', '2020-06-01', '19', 'commune', 'localite', 'Homme', '2500', NULL, '2015', 'wwf', '1', '500', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('17', '2018-06-01', '19', 'commune', 'localite', 'Homme', '2500', NULL, '2016', 'wwf', '1', '800', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0'),
-- ('18', '2020-06-01', '19', 'commune', 'localite', 'Homme', '2500', NULL, '2019', 'wwf', '1', '500', 'Multiculture', 'eucalyptus', 'local', 'labour', '1111', '1', '1', '1', 'test', '12', '0');

CREATE TABLE pepiniere (
  id INT(11) NOT NULL PRIMARY KEY,
  date DATE DEFAULT NULL,
  district_id INT(11),
  commune VARCHAR(255) DEFAULT NULL,
  localité VARCHAR(255) DEFAULT NULL,
  longitude VARCHAR(255) DEFAULT NULL,
  latitude VARCHAR(255) DEFAULT NULL,
  gpx VARCHAR(255) DEFAULT NULL,
  type_pepinieriste VARCHAR(255) DEFAULT NULL,
  proprietaire VARCHAR(255) DEFAULT NULL,
  genre VARCHAR(255) DEFAULT NULL,
  nbr_employe INT(11) DEFAULT NULL,
  nbr_femme INT(11) DEFAULT NULL,
  essences_recensees VARCHAR(255) DEFAULT NULL,
  nbr_plants INT(11) DEFAULT NULL,
  capacite_max INT(11) DEFAULT NULL,
  deleted INT(1) DEFAULT 0,
  FOREIGN KEY (district_id)
    REFERENCES district(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

-- INSERT INTO `pepiniere` (`id`, `date`, `district_id`, `commune`, `localité`, `longitude`, `latitude`, `gpx`, `type_pepinieriste`, `proprietaire`, `genre`, `nbr_employe`, `nbr_femme`, `essences_recensees`, `nbr_plants`, `capacite_max`, `deleted`) VALUES 
-- ('1', '2020-06-01', '1', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '7', 'Eucalyptus', '23', '40', '0'),
-- ('2', '2017-06-01', '1', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '9', 'Eucalyptus', '46', '78', '0'),
-- ('3', '2021-06-01', '2', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '29', '7', 'Eucalyptus', '23', '40', '0'),
-- ('4', '2017-06-01', '5', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '7', 'Eucalyptus', '46', '78', '0'),
-- ('5', '2021-06-01', '18', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '7', 'Eucalyptus', '23', '40', '0'),
-- ('6', '2020-06-01', '18', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '7', 'Eucalyptus', '13', '40', '0'),
-- ('7', '2020-06-01', '46', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '29', '9', 'Eucalyptus', '46', '78', '0'),
-- ('8', '2017-06-01', '50', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '29', '9', 'Eucalyptus', '46', '78', '0'),
-- ('9', '2021-06-01', '50', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '29', '9', 'Eucalyptus', '46', '78', '0'),
-- ('10', '2021-06-01', '23', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '7', 'Eucalyptus', '23', '40', '0'),
-- ('11', '2020-06-01', '23', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '7', 'Eucalyptus', '23', '40', '0'),
-- ('12', '2021-06-01', '23', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '7', 'Eucalyptus', '13', '40', '0'),
-- ('13', '2021-06-01', '44', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '29', '7', 'Eucalyptus', '13', '40', '0'),
-- ('14', '2017-06-01', '44', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '9', 'Eucalyptus', '23', '40', '0'),
-- ('15', '2021-06-01', '45', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '7', 'Eucalyptus', '46', '78', '0'),
-- ('16', '2020-06-01', '98', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '29', '7', 'Eucalyptus', '23', '40', '0'),
-- ('17', '2020-06-01', '98', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '9', 'Eucalyptus', '23', '40', '0'),
-- ('18', '2017-06-01', '98', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '7', 'Eucalyptus', '13', '40', '0'),
-- ('19', '2021-06-01', '98', 'test_commune', 'test_localité', 'test_longitude', 'test_latitude', 'test_gpx', 'Dans un projet', 'RAZANAMANANA Henintsoa', 'Homme', '23', '7', 'Eucalyptus', '23', '40', '0');

CREATE VIEW view_pepiniere AS
SELECT district_id, d.label as district, d.id_region as region_id, SUM(nbr_plants) as nbr_plants, date FROM pepiniere JOIN district d ON d.id = district_id WHERE pepiniere.deleted=0 GROUP BY district_id, date;

CREATE TABLE prod_equipement_cuisson (
  id INT(11) NOT NULL PRIMARY KEY,
  date DATE DEFAULT NULL,
  district_id INT(11),
  commune VARCHAR(255) DEFAULT NULL,
  localité VARCHAR(255) DEFAULT NULL,
  agglomeration VARCHAR(255) DEFAULT NULL,
  producteur VARCHAR(255) DEFAULT NULL,
  appui INT(1) DEFAULT 0,
  organisme_appui VARCHAR(255) DEFAULT NULL,
  nbr_employe INT(11) DEFAULT NULL,
  nbr_femme INT(11) DEFAULT NULL,
  deleted INT(1) DEFAULT 0,
  FOREIGN KEY (district_id)
    REFERENCES district(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE energie_cuisson (
  id INT(11) NOT NULL PRIMARY KEY,
  label VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  deleted INT(1) DEFAULT 0
);

INSERT INTO `energie_cuisson` (`id`, `label`, `description`, `deleted`) VALUES 
-- ('1', 'Charbon de Bois', NULL, '0'),
('2', 'Bois de Chauffe', NULL, '0'),
('3', 'Biogaz', NULL, '0'),
('4', 'Gaz Butane', NULL, '0'),
('5', 'Bioéthanol', NULL, '0'),
('6', 'Résidus agricole/Sous-produits', NULL, '0'),
('7', 'Electricité', NULL, '0'),
('8', 'Briquette/Charbon vert', NULL, '0'),
('9', 'Pétrole', NULL, '0');

-- ALTER TABLE equipement_category
--   RENAME TO energie_cuisson;

CREATE TABLE equipement_cuisson (
  id INT(11) NOT NULL PRIMARY KEY,
  label VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  category_id INT(11) DEFAULT NULL,
  deleted INT(1) DEFAULT 0,
  FOREIGN KEY (category_id)
    REFERENCES energie_cuisson(id)
    ON DELETE CASCADE
);

-- ALTER TABLE equipement_cuisson 
--   ADD category_id INT(11) DEFAULT NULL,
--   ADD FOREIGN KEY (category_id)
--     REFERENCES equipement_category(id)
--     ON DELETE CASCADE;


CREATE TABLE assoc_prod_equipement_cuisson (
  id INT(11) NOT NULL PRIMARY KEY,
  date DATE DEFAULT NULL,
  prod_id INT(11),
  equipement_id INT(11) DEFAULT NULL,
  qte VARCHAR(255) DEFAULT NULL,
  capacite_max VARCHAR(255) DEFAULT NULL,
  FOREIGN KEY (prod_id)
    REFERENCES prod_equipement_cuisson(id)
    ON DELETE CASCADE,
  FOREIGN KEY (equipement_id)
    REFERENCES equipement_cuisson(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

-- INSERT INTO `equipement_cuisson` (`id`, `label`, `description`, `deleted`) VALUES 
-- ('1', 'Foyer traditionnel (Bois de chaufe)', NULL, '0'),
-- ('2', 'Foyer amélioré certifié (Bois de chaufe)', NULL, '0'),
-- ('3', 'Foyer amélioré non certifié (Bois de chaufe)', NULL, '0'),
-- ('4', 'Foyer traditionnel (Charbon de bois)', NULL, '0'),
-- ('5', 'Foyer amélioré certifié (Charbon de bois)', NULL, '0'),
-- ('6', 'Foyer amélioré non certifié (Charbon de bois)', NULL, '0'),
-- ('7', 'Equipement pour Biogaz', NULL, '0'),
-- ('8', 'Equipement pour Gaz butane', NULL, '0'),
-- ('9', 'Equipement pour Bioéthanol', NULL, '0'),
-- ('10', 'Equipement pour Résidus agricoles/sous-produits', NULL, '0'),
-- ('11', 'Equipement pour Electricité', NULL, '0'),
-- ('12', 'Equipement pour Briquette/Charbon vert', NULL, '0'),
-- ('13', 'Equipement pour Pétrole', NULL, '0');

-- INSERT INTO `prod_equipement_cuisson` (`id`, `date`, `district_id`, `commune`, `localité`, `agglomeration`, `producteur`, `appui`, `organisme_appui`, `nbr_employe`, `nbr_femme`, `genre`, `deleted`) VALUES 
-- -- ('1', '2020-11-10', '1', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '23', '8', NULL, '0'),
-- ('2', '2020-11-10', '1', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '23', '8', NULL, '0'),
-- ('3', '2019-11-10', '1', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '29', '8', NULL, '0'),
-- ('4', '2021-11-10', '9', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '23', '18', NULL, '0'),
-- ('5', '2020-11-10', '9', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '69', '8', NULL, '0'),
-- ('6', '2019-11-10', '9', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '29', '8', NULL, '0'),
-- ('7', '2020-11-10', '18', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '29', '8', NULL, '0'),
-- ('8', '2021-11-10', '18', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '63', '18', NULL, '0'),
-- ('9', '2019-11-10', '35', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '23', '8', NULL, '0'),
-- ('10', '2020-11-10', '35', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '23', '8', NULL, '0'),
-- ('11', '2021-11-10', '35', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '23', '8', NULL, '0'),
-- ('12', '2020-11-10', '35', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '63', '18', NULL, '0'),
-- ('13', '2019-11-10', '91', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '29', '18', NULL, '0'),
-- ('14', '2019-11-10', '91', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '23', '8', NULL, '0'),
-- ('15', '2020-11-10', '91', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '29', '8', NULL, '0'),
-- ('16', '2020-11-10', '91', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '23', '18', NULL, '0'),
-- ('17', '2019-11-10', '61', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '63', '8', NULL, '0'),
-- ('18', '2021-11-10', '71', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '29', '8', NULL, '0'),
-- ('19', '2019-11-10', '61', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '23', '18', NULL, '0'),
-- ('20', '2020-11-10', '61', 'test_commune', 'test_localité', 'test_agglomération', 'nom_du_producteur', '0', NULL, '23', '8', NULL, '0');

-- INSERT INTO `assoc_prod_equipement_cuisson` (`id`, `date`, `prod_id`, `equipement_id`, `qte`, `capacite_max`) VALUES 
-- -- ('1', '2021-06-01', '2', '1', '34', '50'),
-- ('2', '2021-06-01', '2', '1', '34', '50'),
-- ('3', '2021-06-01', '2', '2', '34', '50'),
-- ('4', '2021-06-01', '2', '3', '36', '50'),
-- ('5', '2021-06-01', '3', '4', '36', '50'),
-- ('6', '2021-06-01', '3', '5', '36', '50'),
-- ('7', '2021-06-01', '3', '6', '34', '50'),
-- ('8', '2021-06-01', '3', '7', '34', '50'),
-- ('9', '2021-06-01', '3', '8', '36', '50'),
-- ('10', '2021-06-01', '4', '9', '34', '50'),
-- ('11', '2021-06-01', '4', '10', '34', '50'),
-- ('12', '2021-06-01', '4', '11', '34', '50'),
-- ('13', '2021-06-01', '5', '12', '64', '70'),
-- ('14', '2021-06-01', '5', '13', '64', '70'),
-- ('15', '2021-06-01', '5', '12', '34', '50'),
-- ('16', '2021-06-01', '7', '11', '34', '50'),
-- ('17', '2021-06-01', '7', '10', '34', '50'),
-- ('18', '2021-06-01', '7', '9', '34', '50'),
-- ('19', '2021-06-01', '9', '8', '34', '50'),
-- ('20', '2021-06-01', '9', '7', '64', '70'),
-- ('21', '2021-06-01', '9', '6', '34', '50'),
-- ('22', '2021-06-01', '10', '5', '36', '50'),
-- ('23', '2021-06-01', '10', '4', '34', '50'),
-- ('24', '2021-06-01', '10', '3', '34', '50'),
-- ('25', '2021-06-01', '11', '2', '36', '50'),
-- ('26', '2021-06-01', '11', '1', '34', '50'),
-- ('27', '2021-06-01', '11', '5', '64', '50'),
-- ('28', '2021-06-01', '12', '7', '34', '50'),
-- ('29', '2021-06-01', '12', '9', '34', '50'),
-- ('30', '2021-06-01', '12', '7', '36', '50'),
-- ('31', '2021-06-01', '13', '2', '34', '50'),
-- ('32', '2021-06-01', '13', '9', '34', '50'),
-- ('33', '2021-06-01', '13', '3', '34', '50'),
-- ('34', '2021-06-01', '14', '2', '36', '50'),
-- ('35', '2021-06-01', '14', '1', '34', '50');

CREATE VIEW view_equipement_cuisson AS
	-- SELECT prod_id, eg.label, SUM(qte) AS nbr 
  --   FROM assoc_prod_equipement_cuisson 
  --   	JOIN equipement_cuisson ec ON ec.id = equipement_id 
  --     JOIN energie_cuisson eg ON eg.id = ec.category_id 
  --   WHERE 1 GROUP BY prod_id, eg.id
  SELECT eg.label, SUM(qte) AS nbr, prod.district_id, prod.date 
    FROM assoc_prod_equipement_cuisson 
    	JOIN equipement_cuisson ec ON ec.id = equipement_id 
      JOIN energie_cuisson eg ON eg.id = ec.category_id 
      JOIN prod_equipement_cuisson prod ON prod.id = prod_id
    WHERE 1 GROUP BY prod.district_id, eg.id, prod.date


CREATE TABLE technique_carbonisation (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  label VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `technique_carbonisation` (`id`, `label`, `description`) VALUES 
(NULL, 'Traditionnelle', NULL),
(NULL, 'MATI', NULL),
(NULL, 'GMDR', NULL),
(NULL, 'VMTP', NULL);

CREATE TABLE formation_prelevement (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  label VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `formation_prelevement` (`id`, `label`, `description`) VALUES 
-- (NULL, 'Arbres hors forêts', NULL),
(NULL, 'Forêt naturelle', NULL),
(NULL, 'Mangrove', NULL),
(NULL, 'Plantation/Reboisement', NULL);

CREATE TABLE domaine_prelevement (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  label VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `domaine_prelevement` (`id`, `label`, `description`) VALUES 
-- (NULL, 'Etat', NULL),
(NULL, 'Privé', NULL),
(NULL, 'Transfert de gestion', NULL);

CREATE TABLE charbonnier (
  id INT(11) NOT NULL PRIMARY KEY,
  date DATE DEFAULT NULL,
  district_id INT(11),
  commune VARCHAR(255) DEFAULT NULL,
  localité VARCHAR(255) DEFAULT NULL,
  nom VARCHAR(255) DEFAULT NULL,
  genre VARCHAR(255) DEFAULT NULL,
  longueur FLOAT DEFAULT NULL,
  largeur FLOAT DEFAULT NULL,
  hauteur FLOAT DEFAULT NULL,
  pare_feux INT(1) DEFAULT 0,
  permis INT(1) DEFAULT 0,
  formation INT(1) DEFAULT 0,
  annee_formation INT(4) DEFAULT NULL,
  formateur VARCHAR(255) DEFAULT NULL,
  deleted INT(1) DEFAULT 0,
  FOREIGN KEY (district_id)
    REFERENCES district(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `charbonnier` (`id`, `date`, `district_id`, `commune`, `localité`, `nom`, `genre`, `longueur`, `largeur`, `hauteur`, `pare_feux`, `permis`, `formation`, `annee_formation`, `formateur`, `deleted`) VALUES 
-- ('1', '2021-04-13', '1', 'test_commune', 'test_localite', 'RAZAFINDRATSIMBA Marius', 'Homme', '3', '2', '5', '1', '1', '1', '2017', 'test_formateur', '0'),
('2', '2020-04-13', '1', 'test_commune', 'test_localite', 'RAZAFINDRATSIMBA Marius', 'Homme', '3', '2', '5', '0', '1', '0', null, 'test_formateur', '0'),
('3', '2020-04-13', '2', 'test_commune', 'test_localite', 'RAZAFINDRATSIMBA Marius', 'Homme', '3', '2', '5', '1', '0', '1', '2017', 'test_formateur', '0'),
('4', '2010-04-13', '5', 'test_commune', 'test_localite', 'RAZAFINDRATSIMBA Marius', 'Homme', '3', '2', '5', '1', '1', '0', null, 'test_formateur', '0'),
('5', '2019-04-13', '3', 'test_commune', 'test_localite', 'RAZAFINDRATSIMBA Marius', 'Homme', '3', '2', '5', '0', '0', '1', '2017', 'test_formateur', '0'),
('6', '2017-04-13', '10', 'test_commune', 'test_localite', 'RAZAFINDRATSIMBA Marius', 'Homme', '3', '2', '5', '1', '0', '1', '2017', 'test_formateur', '0'),
('7', '2020-04-13', '23', 'test_commune', 'test_localite', 'RAZAFINDRATSIMBA Marius', 'Homme', '3', '2', '5', '1', '0', '1', '2017', 'test_formateur', '0'),
('8', '2016-04-13', '110', 'test_commune', 'test_localite', 'RAZAFINDRATSIMBA Marius', 'Homme', '3', '2', '5', '0', '1', '0', null, 'test_formateur', '0'),
('9', '2021-04-13', '67', 'test_commune', 'test_localite', 'RAZAFINDRATSIMBA Marius', 'Homme', '3', '2', '5', '1', '0', '1', '2017', 'test_formateur', '0'),
('10', '2019-04-13', '78', 'test_commune', 'test_localite', 'RAZAFINDRATSIMBA Marius', 'Homme', '3', '2', '5', '1', '1', '0', null, 'test_formateur', '0'),
('11', '2020-04-13', '78', 'test_commune', 'test_localite', 'RAZAFINDRATSIMBA Marius', 'Homme', '3', '2', '5', '0', '0', '1', '2017', 'test_formateur', '0');

CREATE TABLE assoc_technique_charbonnier (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  technique_id INT(11) DEFAULT NULL,
  charbonnier_id INT(11) DEFAULT NULL,
  qte_bois FLOAT DEFAULT NULL,
  qte_charbon FLOAT DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  FOREIGN KEY (charbonnier_id)
    REFERENCES charbonnier(id)
    ON DELETE CASCADE,
  FOREIGN KEY (technique_id)
    REFERENCES technique_carbonisation(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `assoc_technique_charbonnier` (`id`, `technique_id`, `charbonnier_id`, `qte_bois`, `qte_charbon`, `description`) VALUES 
-- ('1', '1', '1', '56', '14', NULL),
('2', '1', '1', '43', '9', NULL),
('3', '2', '1', '56', '14', NULL),
('4', '3', '2', '96', '56', NULL),
('5', '4', '1', '43', '9', NULL),
('6', '1', '3', '96', '56', NULL),
('7', '3', '4', '56', '14', NULL),
('8', '2', '5', '96', '56', NULL),
('9', '1', '5', '96', '56', NULL),
('10', '3', '6', '56', '14', NULL),
('11', '1', '7', '56', '14', NULL),
('12', '4', '8', '96', '56', NULL),
('13', '4', '8', '56', '14', NULL),
('14', '3', '9', '56', '14', NULL),
('15', '2', '10', '56', '14', NULL),
('16', '1', '11', '56', '14', NULL),
('17', '3', '10', '96', '56', NULL),
('18', '2', '6', '56', '14', NULL),
('19', '1', '7', '43', '9', NULL),
('20', '1', '8', '56', '14', NULL);

CREATE TABLE assoc_fprelevement_charbonnier (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fprelevement_id INT(11) DEFAULT NULL,
  charbonnier_id INT(11) DEFAULT NULL,
  qte FLOAT DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  FOREIGN KEY (charbonnier_id)
    REFERENCES charbonnier(id)
    ON DELETE CASCADE,
  FOREIGN KEY (fprelevement_id)
    REFERENCES formation_prelevement(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `assoc_fprelevement_charbonnier` (`id`, `fprelevement_id`, `charbonnier_id`, `qte`, `description`) VALUES 
-- ('1', '1', '1', '13', NULL),
('2', '1', '1', '13', NULL),
('3', '2', '1', '23', NULL),
('4', '3', '2', '13', NULL),
('5', '3', '3', '43', NULL),
('6', '4', '4', '23', NULL),
('7', '4', '5', '13', NULL),
('8', '2', '5', '12', NULL),
('9', '1', '6', '13', NULL),
('10', '1', '7', '13', NULL),
('11', '2', '8', '14', NULL),
('12', '3', '9', '14', NULL),
('13', '3', '9', '13', NULL),
('14', '4', '10', '13', NULL),
('15', '1', '11', '12', NULL),
('16', '4', '11', '13', NULL),
('17', '4', '8', '13', NULL),
('18', '2', '6', '13', NULL),
('19', '3', '5', '12', NULL),
('20', '3', '8', '13', NULL),
('21', '1', '3', '14', NULL),
('22', '2', '1', '13', NULL);

CREATE TABLE assoc_domaine_charbonnier (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  domaine_id INT(11) DEFAULT NULL,
  charbonnier_id INT(11) DEFAULT NULL,
  qte FLOAT DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  FOREIGN KEY (charbonnier_id)
    REFERENCES charbonnier(id)
    ON DELETE CASCADE,
  FOREIGN KEY (domaine_id)
    REFERENCES domaine_prelevement(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `assoc_domaine_charbonnier` (`id`, `domaine_id`, `charbonnier_id`, `qte`, `description`) VALUES 
-- ('1', '1', '1', '24', NULL),
('2', '1', '1', '34', NULL),
('3', '2', '2', '21', NULL),
('4', '3', '3', '27', NULL),
('5', '3', '4', '13', NULL),
('6', '3', '5', '24', NULL),
('7', '2', '5', '21', NULL),
('8', '2', '6', '27', NULL),
('9', '1', '7', '24', NULL),
('10', '2', '7', '24', NULL),
('11', '1', '8', '33', NULL),
('12', '1', '9', '23', NULL),
('13', '1', '10', '14', NULL),
('14', '2', '11', '24', NULL),
('15', '3', '11', '24', NULL),
('16', '1', '6', '73', NULL),
('17', '2', '8', '24', NULL),
('18', '3', '5', '21', NULL),
('19', '3', '9', '27', NULL),
('20', '1', '2', '27', NULL);

CREATE VIEW view_charbonnier_forme AS
  SELECT district_id as id, d.label as district, d.id_region as region_id, date, COUNT(*) as number 
    FROM `charbonnier` 
      JOIN district d ON d.id = district_id 
  WHERE formation = 1 AND charbonnier.deleted=0 
  GROUP BY district_id, date;

CREATE VIEW view_charbonnier_total AS
  SELECT district_id as id, d.label as district, d.id_region as region_id, date, COUNT(*) as number 
    FROM `charbonnier` 
      JOIN district d ON d.id = district_id 
  WHERE charbonnier.deleted=0 
  GROUP BY district_id, date;

CREATE VIEW view_technique_carbonisation AS
  SELECT c.district_id, d.label AS district, d.id_region AS region_id, c.date AS date, tc.label, SUM(atc.qte_bois) AS bois, SUM(atc.qte_charbon) AS charbon 
  FROM assoc_technique_charbonnier atc 
    JOIN charbonnier c ON c.id = atc.charbonnier_id 
    JOIN technique_carbonisation tc ON atc.technique_id = tc.id 
    JOIN district d ON d.id = c.district_id 
  WHERE 1 
  GROUP BY c.district_id, d.label, d.id_region, c.date, tc.label

CREATE TABLE gros_consommateur (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  label VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  deleted INT(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

-- INSERT INTO `gros_consommateur` (`id`, `label`, `description`, `deleted`) VALUES 
-- (NULL, 'Alimentation', NULL, '0'),
-- (NULL, 'Artisans', NULL, '0'),
-- (NULL, 'Industriel', NULL, '0');

CREATE TABLE donnee_secondaire (
  id INT(11) NOT NULL PRIMARY KEY,
  date DATE DEFAULT NULL,
  district_id INT(11),
  commune VARCHAR(255) DEFAULT NULL,
  localité VARCHAR(255) DEFAULT NULL,
  agglomeration VARCHAR(255) DEFAULT NULL,
  producteur VARCHAR(255) DEFAULT NULL,
  population_rurale FLOAT DEFAULT NULL,
  taille_menage_rurale FLOAT DEFAULT NULL,
  population_urbaine FLOAT DEFAULT NULL,
  taille_menage_urbaine FLOAT DEFAULT NULL,
  nbr_prod_plant INT(11) DEFAULT NULL,
  nbr_prod_bc INT(11) DEFAULT NULL,
  nbr_prod_cb INT(11) DEFAULT NULL,
  nbr_collecteur_be INT(11) DEFAULT NULL,
  nbr_transport_be INT(11) DEFAULT NULL,
  nbr_grossiste_be INT(11) DEFAULT NULL,
  nbr_detail_be INT(11) DEFAULT NULL,
  prix_achat_bc_collecteur FLOAT DEFAULT NULL,
  prix_achat_cb_collecteur FLOAT DEFAULT NULL,
  prix_achat_bc_grossist FLOAT DEFAULT NULL,
  prix_achat_cb_grossist FLOAT DEFAULT NULL,
  prix_achat_bc_detail FLOAT DEFAULT NULL,
  prix_achat_cb_detail FLOAT DEFAULT NULL,
  ristourne FLOAT DEFAULT NULL,
  nbr_quittance_ristourne INT(11) DEFAULT NULL,
  total_percu_redevance_forestiere FLOAT DEFAULT NULL,
  nbr_quittance_redevance_delivre INT(11) DEFAULT NULL,
  nbr_authorisation_prod INT(11) DEFAULT NULL,
  qte_prod_be_authorise FLOAT DEFAULT NULL,
  qte_be_saisie_insitu FLOAT DEFAULT NULL,
  nbr_authorisation_transport INT(11) DEFAULT NULL,
  qte_be_illegal_transporte FLOAT DEFAULT NULL,
  nbr_cas_illegalite INT(11) DEFAULT NULL,
  nbr_rapport_suivie_reboisement INT(11) DEFAULT NULL,
  nbr_rapport_suivie_restauration INT(11) DEFAULT NULL,
  deleted INT(1) DEFAULT 0,
  FOREIGN KEY (district_id)
    REFERENCES district(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `donnee_secondaire` (`id`, `date`, `district_id`, `commune`, `localité`, `agglomeration`, `producteur`, `population_rurale`, `taille_menage_rurale`, `population_urbaine`, `taille_menage_urbaine`, `nbr_prod_plant`, `nbr_prod_bc`, `nbr_prod_cb`, `nbr_collecteur_be`, `nbr_transport_be`, `nbr_grossiste_be`, `nbr_detail_be`, `prix_achat_bc_collecteur`, `prix_achat_cb_collecteur`, `prix_achat_bc_grossist`, `prix_achat_cb_grossist`, `prix_achat_bc_detail`, `prix_achat_cb_detail`, `ristourne`, `nbr_quittance_ristourne`, `total_percu_redevance_forestiere`, `nbr_quittance_redevance_delivre`, `nbr_authorisation_prod`, `qte_prod_be_authorise`, `qte_be_saisie_insitu`, `nbr_authorisation_transport`, `qte_be_illegal_transporte`, `nbr_cas_illegalite`, `nbr_rapport_suivie_reboisement`, `nbr_rapport_suivie_restauration`, `deleted`) VALUES 
-- ('1', '2021-06-02', '1', 'test_commuen', 'test_localite', 'test_agglomeration', NULL, '512', '5', '1189', '4', '11', '23', '34', '54', '13', '30', '98', '5000', '7000', '7000', '9000', '11000', '13000', '5980200', '23', '10000000', '50', '34', '1534', '534', '13', '533', '114', '10', '14', '0'),
('2', '2021-06-02', '19', 'test_commuen', 'test_localite', 'test_agglomeration', NULL, '512', '5', '1189', '4', '11', '23', '34', '54', '13', '30', '98', '5000', '7000', '7000', '9000', '11000', '13000', '5980200', '23', '10000000', '50', '34', '1534', '534', '13', '533', '114', '10', '14', '0'),
('3', '2021-06-02', '110', 'test_commuen', 'test_localite', 'test_agglomeration', NULL, '512', '5', '1189', '4', '11', '23', '34', '54', '13', '30', '98', '5000', '7000', '7000', '9000', '11000', '13000', '5980200', '23', '10000000', '50', '34', '1534', '534', '13', '533', '114', '10', '14', '0');

CREATE TABLE centre_collecte_be (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  date DATE DEFAULT NULL,
  district_id INT(11),
  label VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  is_distribution INT(1) DEFAULT 0,
  deleted INT(1) DEFAULT 0,
  FOREIGN KEY (district_id)
    REFERENCES district(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

-- ALTER TABLE centre_collecte_be
--   ADD date DATE DEFAULT NULL;

INSERT INTO `centre_collecte_be` (`id`, `district_id`, `label`, `description`, `is_distribution`, `deleted`) VALUES 
-- (NULL, '1', 'collecte_1', NULL, null, '0'),
(NULL, '1', 'collecte_1', NULL, null, '0'),
(NULL, '1', 'collecte_2', NULL, null, '0'),
(NULL, '1', 'collecte_3', NULL, null, '0'),
(NULL, '3', 'collecte_4', NULL, null, '0'),
(NULL, '3', 'collecte_5', NULL, null, '0'),
(NULL, '19', 'collecte_6', NULL, null, '0'),
(NULL, '19', 'collecte_7', NULL, null, '0'),
(NULL, '19', 'collecte_8', NULL, null, '0'),
(NULL, '110', 'collecte_9', NULL, null, '0'),
(NULL, '110', 'collecte_10', NULL, null, '0'),
(NULL, '110', 'collecte_11', NULL, null, '0');

CREATE TABLE assoc_secondaire_prod_gros_consommateur (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  district_id INT(11) DEFAULT NULL,
  gc_id INT(11) DEFAULT NULL,
  nbr FLOAT DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  FOREIGN KEY (gc_id)
    REFERENCES gros_consommateur(id)
    ON DELETE CASCADE,
  FOREIGN KEY (district_id)
    REFERENCES district(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `assoc_secondaire_prod_gros_consommateur` (`id`, `district_id`, `gc_id`, `nbr`, `description`) VALUES 
(NULL, '1', '1', '30', NULL),
(NULL, '1', '1', '57', NULL),
(NULL, '1', '1', '30', NULL),
(NULL, '19', '1', '50', NULL),
(NULL, '19', '1', '57', NULL),
(NULL, '19', '1', '30', NULL),
(NULL, '19', '1', '57', NULL),
(NULL, '19', '1', '50', NULL),
(NULL, '67', '1', '57', NULL),
(NULL, '67', '1', '50', NULL),
(NULL, '67', '1', '50', NULL),
(NULL, '110', '1', '70', NULL),
(NULL, '110', '1', '30', NULL),
(NULL, '110', '1', '50', NULL),
(NULL, '99', '1', '57', NULL);

CREATE TABLE assoc_secondaire_prod_equipement_cuisson (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  district_id INT(11) DEFAULT NULL,
  equipement_id INT(11) DEFAULT NULL,
  nbr FLOAT DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  FOREIGN KEY (equipement_id)
    REFERENCES equipement_cuisson(id)
    ON DELETE CASCADE,
  FOREIGN KEY (district_id)
    REFERENCES district(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `assoc_secondaire_prod_equipement_cuisson` (`id`, `district_id`, `equipement_id`, `nbr`, `description`) VALUES 
(NULL, '1', '1', '13', NULL),
(NULL, '1', '2', '16', NULL),
(NULL, '1', '3', '53', NULL),
(NULL, '1', '4', '15', NULL),
(NULL, '1', '5', '63', NULL),
(NULL, '1', '6', '85', NULL),
(NULL, '1', '7', '63', NULL),
(NULL, '19', '8', '13', NULL),
(NULL, '19', '9', '16', NULL),
(NULL, '19', '10', '58', NULL),
(NULL, '19', '11', '13', NULL),
(NULL, '19', '10', '18', NULL),
(NULL, '10', '9', '63', NULL),
(NULL, '19', '8', '15', NULL),
(NULL, '1', '7', '16', NULL),
(NULL, '67', '6', '13', NULL),
(NULL, '67', '5', '16', NULL),
(NULL, '1', '4', '13', NULL),
(NULL, '67', '3', '63', NULL),
(NULL, '67', '2', '13', NULL),
(NULL, '1', '1', '13', NULL),
(NULL, '1', '5', '18', NULL),
(NULL, '110', '7', '13', NULL),
(NULL, '110', '9', '18', NULL),
(NULL, '110', '1', '13', NULL),
(NULL, '110', '9', '13', NULL);

-- CREATE TABLE assoc_secondaire_prod_alt (
--   id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   district_id INT(11) DEFAULT NULL,
--   equipement_id INT(11) DEFAULT NULL,
--   nbr FLOAT DEFAULT NULL,
--   description VARCHAR(255) DEFAULT NULL,
--   FOREIGN KEY (equipement_id)
--     REFERENCES equipement_cuisson(id)
--     ON DELETE CASCADE,
--   FOREIGN KEY (district_id)
--     REFERENCES district(id)
--     ON DELETE CASCADE
-- ) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE moyen_transport (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  label VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

-- INSERT INTO `moyen_transport` (`label`) VALUES 
-- ("Bateau/Pirogue"),
-- ("Bicyclette"),
-- ("Camion"),
-- ("Charrette"),
-- ("Dos d'homme"),
-- ("Taxi-brousse");

CREATE TABLE barriere (
  id INT(11) NOT NULL PRIMARY KEY,
  date DATE DEFAULT NULL,
  district_id INT(11),
  commune VARCHAR(255) DEFAULT NULL,
  localité VARCHAR(255) DEFAULT NULL,
  longitude VARCHAR(255) DEFAULT NULL,
  latitude VARCHAR(255) DEFAULT NULL,
  axe VARCHAR(255) DEFAULT NULL,
  type_axe VARCHAR(255) DEFAULT NULL,
  numero_axe VARCHAR(255) DEFAULT NULL,
  laissez_passer INT(1) DEFAULT 0,
  quittance INT(1) DEFAULT 0,
  moyen_transport_id INT(11),
  provenance_id INT(11),
  destination_id INT(11),
  type_produit VARCHAR(255) DEFAULT NULL,
  qte_cb FLOAT DEFAULT 0,
  qte_bc FLOAT DEFAULT 0,
  deleted INT(1) DEFAULT 0,
  FOREIGN KEY (district_id)
    REFERENCES district(id)
    ON DELETE CASCADE,
  FOREIGN KEY (moyen_transport_id)
    REFERENCES moyen_transport(id)
    ON DELETE CASCADE,
  FOREIGN KEY (provenance_id)
    REFERENCES district(id)
    ON DELETE CASCADE,
  FOREIGN KEY (destination_id)
    REFERENCES district(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `barriere` (`id`, `date`, `district_id`, `commune`, `localité`, `longitude`, `latitude`, `axe`, `type_axe`, `numero_axe`, `laissez_passer`, `quittance`, `moyen_transport_id`, `provenance_id`, `destination_id`, `type_produit`, `qte_cb`, `qte_bc`, `deleted`) VALUES 
('1', '2021-03-11', '1', 'test_commune', 'test_localite', 'test_longitude', 'test_latitude', 'Fluvial', NULL, NULL, '0', '0', 1, '5', '23', NULL, 53, 12, '0'),
('2', '2021-03-11', '1', 'test_commune', 'test_localite', 'test_longitude', 'test_latitude', 'Fluvial', NULL, NULL, '0', '0', 1, '5', '23', NULL, 47, 0, '0'),
('3', '2020-03-11', '1', 'test_commune', 'test_localite', 'test_longitude', 'test_latitude', 'Fluvial', NULL, NULL, '0', '0', 1, '5', '23', NULL, 53, 0, '0'),
('4', '2019-03-11', '3', 'test_commune', 'test_localite', 'test_longitude', 'test_latitude', 'Routier', "Route Nationnal", '5', '1', '1', 2, '5', '23', NULL, 53, 12, '0'),
('5', '2020-03-11', '15', 'test_commune', 'test_localite', 'test_longitude', 'test_latitude', 'Fluvial', NULL, NULL, '0', '0', 1, '5', '23', NULL, 73, 0, '0'),
('6', '2019-03-11', '14', 'test_commune', 'test_localite', 'test_longitude', 'test_latitude', 'Routier', "Route Nationnal", '5', '1', '0', 4, '5', '23', NULL, 53, 0, '0'),
('7', '2021-03-11', '29', 'test_commune', 'test_localite', 'test_longitude', 'test_latitude', 'Routier', "Route Nationnal", '5', '0', '0', 4, '5', '23', NULL, 57, 0, '0'),
('8', '2019-03-11', '81', 'test_commune', 'test_localite', 'test_longitude', 'test_latitude', 'Fluvial', NULL, NULL, '0', '0', 1, '5', '23', NULL, 43, 0, '0'),
('9', '2020-03-11', '71', 'test_commune', 'test_localite', 'test_longitude', 'test_latitude', 'Routier', "Route Nationnal", '5', '1', '1', 2, '5', '23', NULL, 57, 0, '0'),
('10', '2021-03-11', '101', 'test_commune', 'test_localite', 'test_longitude', 'test_latitude', 'Fluvial', NULL, NULL, '0', '0', 1, '5', '23', NULL, 53, 12, '0');

CREATE TABLE assoc_fprelevement_barriere (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fprelevement_id INT(11) DEFAULT NULL,
  barriere_id INT(11) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  FOREIGN KEY (barriere_id)
    REFERENCES barriere(id)
    ON DELETE CASCADE,
  FOREIGN KEY (fprelevement_id)
    REFERENCES formation_prelevement(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `assoc_fprelevement_barriere` (`id`, `fprelevement_id`, `barriere_id`, `description`) VALUES 
('1', '1', '1', NULL),
('2', '1', '1', NULL),
('3', '2', '1', NULL),
('4', '3', '2', NULL),
('5', '3', '3', NULL),
('6', '4', '4', NULL),
('7', '4', '5', NULL),
('8', '2', '5', NULL),
('9', '1', '6', NULL),
('10', '1', '7', NULL),
('11', '2', '8', NULL),
('12', '3', '9', NULL),
('13', '3', '9', NULL),
('14', '4', '10', NULL),
('17', '4', '8', NULL),
('18', '2', '6', NULL),
('19', '3', '5', NULL),
('20', '3', '8', NULL),
('21', '1', '3', NULL),
('22', '2', '1', NULL);