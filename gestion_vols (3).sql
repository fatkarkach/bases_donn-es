-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220423.6d54ac471a
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 juin 2022 à 12:20
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
-- Base de données : `gestion_vols`
--

-- --------------------------------------------------------

--
-- Structure de la table `passager`
--

CREATE TABLE `passager` (
  `id_passager` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prénom` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `passager`
--

INSERT INTO `passager` (`id_passager`, `nom`, `prénom`, `date_naissance`, `id`) VALUES
(2, 'housin', 'hssini', '2022-05-09', 4),
(3, 'housin', 'hssini', '2022-05-09', 4);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `choix` varchar(256) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_vols` int(11) NOT NULL,
  `places_disponibles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `choix`, `id_user`, `id_vols`, `places_disponibles`) VALUES
(4, 'aller', 8, 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prénom` varchar(255) NOT NULL,
  `date_naissance` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mode_passe` varchar(255) NOT NULL,
  `statut` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_user`, `nom`, `prénom`, `date_naissance`, `email`, `mode_passe`, `statut`) VALUES
(4, 'housin', 'hssini', '2022-03-16', 'fatma@gmail.com', '12345', 'Admin'),
(8, 'boutaina', 'KARKACH', '2022-04-29', 'faho@gmail.com', '1234', 'User'),
(9, 'housin', 'hssini', '2022-04-14', 'h@gmail.com', '1234', 'User');

-- --------------------------------------------------------

--
-- Structure de la table `vols`
--

CREATE TABLE `vols` (
  `id_vols` int(11) NOT NULL,
  `lieu_départ` varchar(255) NOT NULL,
  `lieu_arrivé` varchar(255) NOT NULL,
  `date_départ` datetime NOT NULL,
  `date_arrivé` datetime NOT NULL,
  `prix` int(11) NOT NULL,
  `limites_places` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vols`
--

INSERT INTO `vols` (`id_vols`, `lieu_départ`, `lieu_arrivé`, `date_départ`, `date_arrivé`, `prix`, `limites_places`) VALUES
(12, 'maroc', 'paris', '2022-06-23 09:20:00', '2022-05-12 09:21:00', 123, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `passager`
--
ALTER TABLE `passager`
  ADD PRIMARY KEY (`id_passager`),
  ADD KEY `passager_reservation_id_fk` (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_utilisateurs_id_user_fk` (`id_user`),
  ADD KEY `reservation_vols_id_vols_fk` (`id_vols`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `vols`
--
ALTER TABLE `vols`
  ADD PRIMARY KEY (`id_vols`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `passager`
--
ALTER TABLE `passager`
  MODIFY `id_passager` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `vols`
--
ALTER TABLE `vols`
  MODIFY `id_vols` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `passager`
--
ALTER TABLE `passager`
  ADD CONSTRAINT `passager_reservation_id_fk` FOREIGN KEY (`id`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_utilisateurs_id_user_fk` FOREIGN KEY (`id_user`) REFERENCES `utilisateurs` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_vols_id_vols_fk` FOREIGN KEY (`id_vols`) REFERENCES `vols` (`id_vols`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



