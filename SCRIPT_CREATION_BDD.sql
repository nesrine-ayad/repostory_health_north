-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : sam. 11 mai 2024 à 17:06
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `health_north`
--

-- --------------------------------------------------------

--
-- Structure de la table `clinique`
--

CREATE TABLE `clinique` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `id_region` int(11) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `capacite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clinique`
--

INSERT INTO `clinique` (`id`, `nom`, `id_region`, `adresse`, `tel`, `capacite`) VALUES
(1, 'Clinique des Lilas', 2, '789 Avenue des Lilas', '0123456789', 100),
(2, 'Clinique Saint-Joseph', 1, '456 Rue Saint-Joseph', '9876543210', 150);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `document_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `patient_id`, `document_name`, `document_path`) VALUES
(4, 6, 'Adhe-sion-et-paiement.png', '/Applications/XAMPP/xamppfiles/htdocs/PROJET_#0002/DOSSIER_5/app/FE/uploads/Adhe-sion-et-paiement.png'),
(5, 5, 'Screenshot-2024-05-10-at-21-04-57-Prise-de-Rendez-vous.png', '/Applications/XAMPP/xamppfiles/htdocs/PROJET_#0002/DOSSIER_5/app/FE/uploads/Screenshot-2024-05-10-at-21-04-57-Prise-de-Rendez-vous.png'),
(6, 10, 'Adhe-sion-et-paiement-1-.png', '/Applications/XAMPP/xamppfiles/htdocs/PROJET_#0002/DOSSIER_5/app/FE/uploads/Adhe-sion-et-paiement-1-.png'),
(7, 6, 'Adhe-sion-et-paiement-1-.png', '/Applications/XAMPP/xamppfiles/htdocs/PROJET_#0002/DOSSIER_5/app/FE/uploads/Screenshot-2024-05-10-at-15-04-02-Trekeur-Tentes-Sac-de-Couchages-et-Accessoires.png'),
(8, 5, 'test.pdf', '/Applications/XAMPP/xamppfiles/htdocs/PROJET_#0002/DOSSIER_5/app/FE/uploads/test.pdf'),
(9, 10, 'test.pdf', '/Applications/XAMPP/xamppfiles/htdocs/PROJET_#0002/DOSSIER_5/app/FE/uploads/test.pdf'),
(10, 5, 'Screenshot-2024-05-10-at-21-04-57-Prise-de-Rendez-vous.png', '/Applications/XAMPP/xamppfiles/htdocs/PROJET_#0002/DOSSIER_5/app/FE/uploads/Screenshot-2024-05-10-at-21-04-57-Prise-de-Rendez-vous.png'),
(11, 5, 'square.png', '/Applications/XAMPP/xamppfiles/htdocs/PROJET_#0002/DOSSIER_5/app/FE/uploads/square.png'),
(12, 5, 'Adhe-sion-et-paiement-1-.png', '/Applications/XAMPP/xamppfiles/htdocs/PROJET_#0002/DOSSIER_5/app/FE/uploads/Adhe-sion-et-paiement-1-.png'),
(13, 6, 'Adhe-sion-et-paiement.png', '/Applications/XAMPP/xamppfiles/htdocs/PROJET_#0002/DOSSIER_5/app/FE/uploads/Adhe-sion-et-paiement.png');

-- --------------------------------------------------------

--
-- Structure de la table `examen`
--

CREATE TABLE `examen` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `examen`
--

INSERT INTO `examen` (`id`, `nom`, `prix`) VALUES
(11, 'Anticorps anti-thyroglobuline (anti-TG)', 40.00),
(12, 'Bilirubine directe', 15.00),
(13, 'Calcium', 10.00),
(14, 'IgE totales', 25.00),
(15, 'Syphilis (BW)', 18.00);

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id` int(11) NOT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `montantTotal` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `statutPaiement` varchar(50) DEFAULT NULL,
  `rendezvous_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intervention`
--

CREATE TABLE `intervention` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `resultat` text DEFAULT NULL,
  `statut` varchar(50) DEFAULT NULL,
  `rendezvous_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `laboratoire`
--

CREATE TABLE `laboratoire` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `id_region` int(11) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `capacite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `laboratoire`
--

INSERT INTO `laboratoire` (`id`, `nom`, `id_region`, `adresse`, `tel`, `capacite`) VALUES
(1, 'Laboratoire Médical ABC', 1, '123 Rue des Laboratoires', '0123456789', 50),
(2, 'Laboratoire d\'Analyses XYZ', 2, '789 Avenue des Analyses', '9876543210', 75);

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE `medicament` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `posologie` text DEFAULT NULL,
  `contreIndications` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `medicament`
--

INSERT INTO `medicament` (`id`, `nom`, `description`, `posologie`, `contreIndications`) VALUES
(1, 'Paracétamol', 'Analgésique et antipyrétique', '1 comprimé toutes les 6 heures', 'Allergie connue'),
(2, 'Ibuprofène', 'Anti-inflammatoire non stéroïdien', '1 comprimé toutes les 8 heures', 'Gastrite');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `numeroSecuSociale` varchar(20) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `personneContact` varchar(255) DEFAULT NULL,
  `medecinTraitant` varchar(255) DEFAULT NULL,
  `motDePasse` varchar(255) DEFAULT NULL,
  `documents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`id`, `nom`, `prenom`, `dateNaissance`, `numeroSecuSociale`, `adresse`, `email`, `tel`, `personneContact`, `medecinTraitant`, `motDePasse`, `documents`) VALUES
(1, 'Doe', 'John', '1980-01-01', 'admin', '123 Rue de Paris', 'john.doe@example.com', '0123456789', 'Jane Doe', 'Dr. Smith', '123', NULL),
(2, 'Smith', 'Alice', '1975-05-15', 'secretaire', '456 Avenue des Fleurs', 'alice.smith@example.com', '9876543210', 'John Smith', 'Dr. Brown', '123', NULL),
(5, 'Traoré', 'Mamadou', '2024-05-08', '10', '10 Residence le Gai Logiss', 'maes@gmail.com', '0769126385', 'Bil jo', 'mr.bil', NULL, NULL),
(6, 'Bennai', 'Bilal', '2003-11-02', '1026860923678', '10 Residence le Gai Logis', 'maes@gmail.com', '0769126385', 'Mon Daron', 'Dr.Bengawa', '02112003Ab@', NULL),
(10, 'ZEBAIR', 'Nass', '2024-05-09', '4567890234567', '15 Mesange', 'bilgate@gmail.com', '0789767809', 'Bil jo', 'mr.bil', '00112233', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `id_clinique` int(11) NOT NULL,
  `id_labo` int(11) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `specialite` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id`, `nom`, `id_clinique`, `id_labo`, `prenom`, `specialite`, `role`) VALUES
(1, 'Dupont', 1, 2, 'Sophie', 'Cardiologue', 'Médecin'),
(2, 'Martin', 2, 2, 'Pierre', 'Radiologue', 'Médecin');

-- --------------------------------------------------------

--
-- Structure de la table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `intervention_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `prescription`
--

INSERT INTO `prescription` (`id`, `description`, `date`, `intervention_id`) VALUES
(1, 'Paracétamol', '2024-05-10', 1),
(2, 'Ibuprofène', '2024-05-12', 2);

-- --------------------------------------------------------

--
-- Structure de la table `prescription_medicament`
--

CREATE TABLE `prescription_medicament` (
  `prescription_id` int(11) NOT NULL,
  `medicament_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `nomRegion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id`, `nomRegion`) VALUES
(1, 'Tlemcen'),
(2, 'Oran');

-- --------------------------------------------------------

--
-- Structure de la table `rendezvous`
--

CREATE TABLE `rendezvous` (
  `id` int(11) NOT NULL,
  `dateHeure` datetime DEFAULT NULL,
  `typeIntervention` int(11) DEFAULT NULL,
  `statut` varchar(50) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `departement` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `lieu` int(11) DEFAULT NULL,
  `specialiste` varchar(255) DEFAULT NULL,
  `creneau` varchar(255) DEFAULT NULL,
  `nomFichier` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `rendezvous`
--

INSERT INTO `rendezvous` (`id`, `dateHeure`, `typeIntervention`, `statut`, `patient_id`, `region`, `departement`, `ville`, `lieu`, `specialiste`, `creneau`, `nomFichier`) VALUES
(18, '2025-12-12 12:12:00', 11, 'En attente', 2, 1, 'qdq', 'zeaze', 2, 'specialiste 1', '2025-12-12T12:12', 'Screenshot 2024-05-10 at 15-04-02 Trekeur - Tentes Sac de Couchages et Accessoires.png, Screenshot 2024-05-10 at 21-04-57 Prise de Rendez-vous.png, Screenshot 2024-05-10 at 21-04-57 Prise de Rendez-vous (1).png, Screenshot 2024-05-10 at 21-32-46 Prise de Rendez-vous.png'),
(19, '2023-12-23 12:12:00', 13, 'En attente', 5, 2, 'le département', 'ville', 1, 'specialiste 1', '2023-12-23T12:12', 'Screenshot 2024-05-10 at 21-32-46 Prise de Rendez-vous.png, Screenshot 2024-05-10 at 15-04-02 Trekeur - Tentes Sac de Couchages et Accessoires.png, Screenshot 2024-05-10 at 21-04-57 Prise de Rendez-vous.png, Screenshot 2024-05-10 at 21-04-57 Prise de Rendez-vous (1).png'),
(21, '2024-10-10 12:12:00', 13, 'En attente', 1, 1, 'zeaze', 'eazzeaza', 2, 'specialiste 1', '2024-10-10T12:12', 'Facture_RendezVous_18(1).txt'),
(22, '2024-10-10 12:12:00', 13, 'En attente', 1, 1, 'zeaze', 'eazzeaza', 2, 'specialiste 1', '2024-10-10T12:12', 'Facture_RendezVous_18(1).txt'),
(23, '2030-10-10 10:10:00', 13, 'En attente', 1, 1, 'département', 'ville', 2, 'specialiste 1', '2030-10-10T10:10', 'Facture_RendezVous_19.txt, Facture_RendezVous_18(1).txt, Facture_RendezVous_18(2).txt, Facture_RendezVous_18(3).txt');

-- --------------------------------------------------------

--
-- Structure de la table `specialiste`
--

CREATE TABLE `specialiste` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `specialiste`
--

INSERT INTO `specialiste` (`id`, `nom`) VALUES
(4, 'specialiste 1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clinique`
--
ALTER TABLE `clinique`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_region` (`id_region`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Index pour la table `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rendezvous_id` (`rendezvous_id`);

--
-- Index pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rendezvous_id` (`rendezvous_id`);

--
-- Index pour la table `laboratoire`
--
ALTER TABLE `laboratoire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_region` (`id_region`);

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_centre` (`id_clinique`),
  ADD KEY `id_labo` (`id_labo`);

--
-- Index pour la table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `intervention_id` (`intervention_id`);

--
-- Index pour la table `prescription_medicament`
--
ALTER TABLE `prescription_medicament`
  ADD PRIMARY KEY (`prescription_id`,`medicament_id`),
  ADD KEY `medicament_id` (`medicament_id`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rendezvous`
--
ALTER TABLE `rendezvous`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `fk_lieu_clinique` (`lieu`),
  ADD KEY `fk_region` (`region`),
  ADD KEY `fk_typeIntervention_examen` (`typeIntervention`);

--
-- Index pour la table `specialiste`
--
ALTER TABLE `specialiste`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clinique`
--
ALTER TABLE `clinique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `examen`
--
ALTER TABLE `examen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `intervention`
--
ALTER TABLE `intervention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `laboratoire`
--
ALTER TABLE `laboratoire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `medicament`
--
ALTER TABLE `medicament`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `rendezvous`
--
ALTER TABLE `rendezvous`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `specialiste`
--
ALTER TABLE `specialiste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `clinique`
--
ALTER TABLE `clinique`
  ADD CONSTRAINT `clinique_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`);

--
-- Contraintes pour la table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `facture_ibfk_1` FOREIGN KEY (`rendezvous_id`) REFERENCES `rendezvous` (`id`);

--
-- Contraintes pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD CONSTRAINT `intervention_ibfk_1` FOREIGN KEY (`rendezvous_id`) REFERENCES `rendezvous` (`id`);

--
-- Contraintes pour la table `laboratoire`
--
ALTER TABLE `laboratoire`
  ADD CONSTRAINT `laboratoire_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`);

--
-- Contraintes pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `personnel_ibfk_1` FOREIGN KEY (`id_clinique`) REFERENCES `clinique` (`id`),
  ADD CONSTRAINT `personnel_ibfk_2` FOREIGN KEY (`id_labo`) REFERENCES `laboratoire` (`id`);

--
-- Contraintes pour la table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`id`);

--
-- Contraintes pour la table `prescription_medicament`
--
ALTER TABLE `prescription_medicament`
  ADD CONSTRAINT `prescription_medicament_ibfk_1` FOREIGN KEY (`prescription_id`) REFERENCES `prescription` (`id`),
  ADD CONSTRAINT `prescription_medicament_ibfk_2` FOREIGN KEY (`medicament_id`) REFERENCES `medicament` (`id`);

--
-- Contraintes pour la table `rendezvous`
--
ALTER TABLE `rendezvous`
  ADD CONSTRAINT `fk_lieu_clinique` FOREIGN KEY (`lieu`) REFERENCES `clinique` (`id`),
  ADD CONSTRAINT `fk_region` FOREIGN KEY (`region`) REFERENCES `region` (`id`),
  ADD CONSTRAINT `fk_typeIntervention_examen` FOREIGN KEY (`typeIntervention`) REFERENCES `examen` (`id`),
  ADD CONSTRAINT `rendezvous_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
