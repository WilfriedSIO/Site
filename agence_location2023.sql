-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 07 Décembre 2022 à 17:02
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `agence_location2023`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_client` varchar(20) NOT NULL,
  `nom_prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `profession` varchar(20) NOT NULL,
  `num_tel` int(11) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_client`, `nom_prenom`, `date_naissance`, `profession`, `num_tel`, `adresse`, `code_postal`, `ville`, `email`) VALUES
('CD-1023', 'Rick Potite', '2000-03-13', 'Salarié', 92345612, '02 rue des fleurs', 91, 'Massy Palaiseau', 'RickPotty@gmail.com'),
('CD-9234', 'Jack Potite', '1997-12-10', 'Ouvrier', 92345634, '23 rue des fleurs', 91, 'Massy Palaiseau', 'JackPotty@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id_location` varchar(20) NOT NULL,
  `duree_location` int(11) NOT NULL,
  `date_location` date NOT NULL,
  `prix_location` int(11) NOT NULL,
  `code_client` varchar(20) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  `caution` int(11) NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `code_client` (`code_client`,`immatriculation`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`id_location`, `duree_location`, `date_location`, `prix_location`, `code_client`, `immatriculation`, `caution`) VALUES
('ID-232451', 2, '2022-12-05', 25, 'CD-9234', 'FR-9012-KD', 155),
('ID-23456212', 11, '2022-12-04', 50, 'CD-1023', 'FR-1267-YS', 120);

-- --------------------------------------------------------

--
-- Structure de la table `reparation`
--

CREATE TABLE IF NOT EXISTS `reparation` (
  `num_reparation` int(20) NOT NULL AUTO_INCREMENT,
  `date_reparation` date NOT NULL,
  `duree_reparation` varchar(20) NOT NULL,
  `cout_reperation` varchar(20) NOT NULL,
  `responsable_rep` varchar(20) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  PRIMARY KEY (`immatriculation`),
  KEY `num_reparation` (`num_reparation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10224 ;

--
-- Contenu de la table `reparation`
--

INSERT INTO `reparation` (`num_reparation`, `date_reparation`, `duree_reparation`, `cout_reperation`, `responsable_rep`, `immatriculation`) VALUES
(10223, '2022-12-23', '10', '6666', 'Jack le boss', 'FR-1267-YS'),
(3630, '2022-12-28', '23', '1234', 'jack le boss', 'FR-9012-KD');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carburant` varchar(20) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `nbr_place` int(11) NOT NULL,
  `nbr_porte` int(11) NOT NULL,
  `prix_achat` varchar(20) DEFAULT NULL,
  `etat` varchar(20) NOT NULL,
  PRIMARY KEY (`immatriculation`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`immatriculation`, `marque`, `modele`, `kilometrage`, `carburant`, `couleur`, `nbr_place`, `nbr_porte`, `prix_achat`, `etat`) VALUES
('FR-1267-YS', 'toyota', 'RS', 213, 'diesel', 'rouge', 5, 5, '2500', 'neuf'),
('FR-9012-KD', 'pounto', 'RY', 1000, 'diesel', 'noire', 5, 3, '10000', 'SemiNeuf');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_3` FOREIGN KEY (`immatriculation`) REFERENCES `voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`code_client`) REFERENCES `clients` (`code_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reparation`
--
ALTER TABLE `reparation`
  ADD CONSTRAINT `reparation_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
