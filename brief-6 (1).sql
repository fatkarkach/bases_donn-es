-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220423.6d54ac471a
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 juin 2022 à 12:22
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `brief-6`
--

-- --------------------------------------------------------

--
-- Structure de la table `rendez_vous`
--

CREATE TABLE `rendez_vous` (
  `id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Horaire` time(6) NOT NULL,
  `Reference` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rendez_vous`
--

INSERT INTO `rendez_vous` (`id`, `Date`, `Horaire`, `Reference`) VALUES
(31, '2022-05-30', '09:00:00.000000', '985689a1'),
(34, '2022-05-30', '11:00:00.000000', '985689a1'),
(35, '2022-05-30', '12:00:00.000000', '985689a1');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `Reference` varchar(255) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prénom` varchar(255) NOT NULL,
  `Date_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Reference`, `Nom`, `Prénom`, `Date_naissance`) VALUES
('1b723fac', 'housin', 'hssini', '2022-05-01'),
('328b9222', 'boutaina', 'karkach', '2022-04-12'),
('680c56c3', 'housin', 'hssiini', '2022-04-22'),
('985689a1', 'housin', 'hssiiq', '2022-05-26'),
('ba46215c', 'housiiine', 'hssiniiii', '2022-05-19'),
('c80fc8f9', 'lhoussaine', 'hssini', '2022-05-05');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`Reference`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



