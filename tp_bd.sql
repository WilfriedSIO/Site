-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 12 Janvier 2023 à 09:49
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `tp_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `num_categorie` varchar(255) NOT NULL,
  `nom_categorie` varchar(11) NOT NULL,
  `Det_reference` varchar(11) NOT NULL,
  `cat_remise` varchar(255) NOT NULL,
  PRIMARY KEY (`num_categorie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`num_categorie`, `nom_categorie`, `Det_reference`, `cat_remise`) VALUES
('19', 'Ordinateur', '45', '20'),
('17', 'Chaussure', '42', '10');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `Client_id` int(11) NOT NULL,
  `Client_civilite` varchar(255) NOT NULL,
  `Client_nom` varchar(255) NOT NULL,
  `Client_prenom` varchar(255) NOT NULL,
  `Client_dep` int(11) NOT NULL,
  `Client_ville` varchar(255) NOT NULL,
  `Client_num` int(11) NOT NULL,
  `Date_naissance` date NOT NULL,
  PRIMARY KEY (`Client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`Client_id`, `Client_civilite`, `Client_nom`, `Client_prenom`, `Client_dep`, `Client_ville`, `Client_num`, `Date_naissance`) VALUES
(5, 'H', 'Zouave', 'soumare', 94, 'Creteil', 0, '0000-00-00'),
(4, 'H', 'Zouave', 'yacob', 93, 'Sevran', 6655, '1978-01-12');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `Com_num` int(11) NOT NULL,
  `Com_client` varchar(255) NOT NULL,
  `Com_date` date NOT NULL,
  `Com_montant` int(11) NOT NULL,
  `Client_id` int(11) NOT NULL,
  `produit_ref` int(11) NOT NULL,
  PRIMARY KEY (`Com_num`),
  KEY `Client_id` (`Client_id`,`produit_ref`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`Com_num`, `Com_client`, `Com_date`, `Com_montant`, `Client_id`, `produit_ref`) VALUES
(123, '455', '2020-10-09', 1500, 5, 19),
(124, '456', '2017-08-09', 190, 4, 17);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `produit_ref` int(11) NOT NULL,
  `produit_nom` varchar(255) NOT NULL,
  `produit_prix` int(11) NOT NULL,
  `produit_poids` int(11) NOT NULL,
  `produit_vues` int(11) NOT NULL,
  `produit_stock` int(11) NOT NULL,
  `produit_code` int(11) NOT NULL,
  `num_categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`produit_ref`),
  KEY `num_categorie` (`num_categorie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`produit_ref`, `produit_nom`, `produit_prix`, `produit_poids`, `produit_vues`, `produit_stock`, `produit_code`, `num_categorie`) VALUES
(455, 'Ordinateur', 1500, 25, 212, 300, 450, '19'),
(17, 'Chaussure', 190, 1, 65, 500, 456, '17');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
