-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 01 déc. 2022 à 15:56
-- Version du serveur :  10.3.37-MariaDB-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `p2101340`
--

-- --------------------------------------------------------

--
-- Structure de la table `Version`
--

CREATE TABLE `Version` (
  `numeroV` varchar(50) NOT NULL,
  `nomfichier` varchar(50) NOT NULL,
  `dureeV` double DEFAULT NULL,
  `dateV` date DEFAULT NULL,
  `idC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Version`
--

INSERT INTO `Version` (`numeroV`, `nomfichier`, `dureeV`, `dateV`, `idC`) VALUES
('v1', 'essai', 300, '1970-01-01', 1),
('v10', 'bowser', 105, '2001-12-02', 5),
('v11', 'fichier', 210, '2000-02-10', 6),
('v2', 'casserole', 140, '1970-07-10', 1),
('v3', 'plouis', 180, '1968-03-02', 2),
('v4', 'tuiles', 120, '1966-11-05', 2),
('v5', 'maïstro', 120, '2022-08-05', 3),
('v6', 'tromatiser', 120, '2022-10-07', 3),
('v7', 'allo', 230, '1972-02-01', 4),
('v8', 'rolls', 200, '1984-11-02', 4),
('v9', 'fire', 105, '1992-06-01', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Version`
--
ALTER TABLE `Version`
  ADD PRIMARY KEY (`numeroV`,`nomfichier`),
  ADD KEY `idC` (`idC`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Version`
--
ALTER TABLE `Version`
  ADD CONSTRAINT `Version_ibfk_1` FOREIGN KEY (`idC`) REFERENCES `Chanson` (`idC`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
