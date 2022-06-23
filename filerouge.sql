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
-- Base de données : `filerouge`
--

-- --------------------------------------------------------

--
-- Structure de la table `boutiques`
--

CREATE TABLE `boutiques` (
  `id_boutique` int(11) NOT NULL,
  `id_partenaire` int(11) NOT NULL,
  `nom_boutique` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `boutiques`
--

INSERT INTO `boutiques` (`id_boutique`, `id_partenaire`, `nom_boutique`) VALUES
(4, 5, 'Naoaim');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commandes` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_livraison` date NOT NULL,
  `option` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commandes`, `id_produit`, `id_user`, `date_livraison`, `option`) VALUES
(1, 2, 3, '2022-05-17', 'En cours de livraison'),
(2, 3, 4, '2022-06-08', 'En cours de livraison'),
(3, 2, 3, '2022-07-13', 'Livré');

-- --------------------------------------------------------

--
-- Structure de la table `paiment`
--

CREATE TABLE `paiment` (
  `id_paiment` int(11) NOT NULL,
  `id_boutique` int(11) NOT NULL,
  `Prix` int(11) NOT NULL,
  `mois` date NOT NULL,
  `type_paiment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `paiment`
--

INSERT INTO `paiment` (`id_paiment`, `id_boutique`, `Prix`, `mois`, `type_paiment`) VALUES
(1, 4, 1200, '2022-06-09', 1),
(2, 4, 140, '2022-06-15', 1),
(3, 4, 200, '2022-03-23', 0),
(4, 4, 45, '2022-09-19', 0),
(5, 4, 600, '2022-07-23', 0);

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

CREATE TABLE `partenaire` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prénom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `option` varchar(255) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `téléphone` varchar(255) NOT NULL,
  `pays` varchar(255) NOT NULL,
  `catégorie` varchar(255) NOT NULL,
  `chiffre_affaire` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `partenaire`
--

INSERT INTO `partenaire` (`id`, `nom`, `prénom`, `email`, `password`, `type`, `option`, `URL`, `téléphone`, `pays`, `catégorie`, `chiffre_affaire`) VALUES
(1, 'fatma', 'karkach', 'fatma@gmail.com', '12345', 1, 'Admin', 'https://fr.shein.com/', '0696436952', 'MAROC', 'Books', '15'),
(3, 'lhoussain', 'hssini', 'housin@gmail.com', '12345', 0, 'Accepté', 'https://www.jumia.ma/', '0673317053', 'MAROC', 'BOOKS', '1234'),
(5, 'jannat', 'karkach', 'jannat@gmail.com', '12345', 0, 'Réfusé', 'https://fr.shein.com/', '0696436952', 'MAROC', 'Books', '56'),
(6, 'JANNAT', 'karkach', 'ko@gmail.com', '12345', 0, 'Accepté', 'https://www.jumia.ma/', '0696436952', 'MAROC', 'COOKING', '123');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `produit` varchar(255) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `quantité` int(11) NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `produit`, `marque`, `quantité`, `prix`) VALUES
(1, 'T-shirt', 'nike', 0, 0),
(2, 'jacket', 'ADDIDAS', 0, 0),
(3, 'jacket', 'ADDIDAS', 0, 0),
(4, 'jacket', 'ADDIDAS', 0, 0),
(5, 'jacket', 'ADDIDAS', 0, 0),
(6, 'jacket', 'ADDIDAS', 0, 0),
(7, 'jacket', 'ADDIDAS', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prénom` varchar(255) NOT NULL,
  `cin` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_users`, `nom`, `prénom`, `cin`, `email`) VALUES
(1, 'Mohammed', 'karkach', 'K123456', 'mohammed@gmail.com'),
(2, 'lhousaain', 'hssini', 'K&é\"\'(', 'housinn@gmail.com'),
(3, 'lhousaain', 'hssini', '12345', 'housinn@gmail.com'),
(4, 'lhousaain', 'hssini', '12345', 'housinn@gmail.com'),
(5, 'lhousaain', 'hssini', '12345', 'housinn@gmail.com'),
(6, 'lhousaain', 'hssini', '12345', 'housinn@gmail.com'),
(7, 'lhousaain', 'hssini', '12345', 'housinn@gmail.com'),
(8, 'lhousaain', 'hssini', '12345', 'housinn@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `boutiques`
--
ALTER TABLE `boutiques`
  ADD PRIMARY KEY (`id_boutique`),
  ADD KEY `id_partenaire` (`id_partenaire`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commandes`),
  ADD KEY `id_produit` (`id_produit`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `paiment`
--
ALTER TABLE `paiment`
  ADD PRIMARY KEY (`id_paiment`),
  ADD KEY `id_boutique` (`id_boutique`);

--
-- Index pour la table `partenaire`
--
ALTER TABLE `partenaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `boutiques`
--
ALTER TABLE `boutiques`
  MODIFY `id_boutique` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commandes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `paiment`
--
ALTER TABLE `paiment`
  MODIFY `id_paiment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `partenaire`
--
ALTER TABLE `partenaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `boutiques`
--
ALTER TABLE `boutiques`
  ADD CONSTRAINT `boutiques_ibfk_1` FOREIGN KEY (`id_partenaire`) REFERENCES `partenaire` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `paiment`
--
ALTER TABLE `paiment`
  ADD CONSTRAINT `paiment_ibfk_1` FOREIGN KEY (`id_boutique`) REFERENCES `boutiques` (`id_boutique`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



