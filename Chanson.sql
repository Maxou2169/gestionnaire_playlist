-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 01 déc. 2022 à 15:51
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
-- Structure de la table `Chanson`
--

CREATE TABLE `Chanson` (
  `idC` int(11) NOT NULL,
  `titreC` varchar(50) DEFAULT NULL,
  `dateC` date DEFAULT NULL,
  `nomG` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Chanson`
--

INSERT INTO `Chanson` (`idC`, `titreC`, `dateC`, `nomG`) VALUES
(1, 'Let It Be', '1970-01-01', 'The Beatles'),
(2, 'Paint It Back', '1966-01-01', 'The Rolling Stones'),
(3, 'Santé', '2021-10-15', 'stromae'),
(4, 'Echoes', '1968-11-15', 'Pink Floyd'),
(5, 'Sea Child', '1972-03-03', 'Hot Tuna'),
(6, 'chanson', '2000-02-10', 'The Rolling Stones');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Chanson`
--
ALTER TABLE `Chanson`
  ADD PRIMARY KEY (`idC`),
  ADD KEY `nomG` (`nomG`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Chanson`
--
ALTER TABLE `Chanson`
  ADD CONSTRAINT `Chanson_ibfk_1` FOREIGN KEY (`nomG`) REFERENCES `Groupe` (`nomG`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
