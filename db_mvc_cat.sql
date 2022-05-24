-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 24 mai 2022 à 14:27
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_mvc_cat`
--

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(6, 'kathy.morgan@gmail.fr');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom_produit` varchar(200) NOT NULL,
  `prix` float NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom_produit`, `prix`, `description`) VALUES
(1, 'Parfum Lolita', 50.99, 'Le premier parfum iconique de Lolita Lempicka révèle l\'origine de la sensualité, là où tout commence. \r\nEn 2017, à l\'occasion de ses 20 ans, Lolita Lempicka se réinvente et sublime son flacon en parfum bijou. La célèbre pomme d\'Éden dévoile de nouvelles formes, plus modernes. Pensé comme un objet d\'art, ce flacon facetté comme une pierre précieuse invite encore un peu plus à la tentation.'),
(2, 'recils Maybeline', 16.43, 'Un mascara volume effet éventail pour des cils démultipliés d\'un coin à l\'autre de l\'œil. Résultat, des cils allongés et démultipliés pour un regard intense.'),
(3, 'creme Nivea', 10, 'NIVEA Crème est enrichi en Eucerit pour hydrater intensément votre corps, votre visage et vos mains. Dès la première application, sa formule riche laisse votre peau douce et nourla famille, à utiliser partout grâce a son format nomade pratique.'),
(4, 'Gel douche Dove', 3, 'Le gel douche Dove Soin Hypoallergénique pour peaux sensibles associe des agents lavants doux d\'origine naturelle et des agents hydratants d\'origine végétale dans une formule sans sulfate pour nettoyer votre peau en douceur. Testé dermatologiquement et formulé sans parfum, il minimise les risques d\'allergies et soulage les sensations d\'inconfort liées aux tiraillements des peaux sèches. La formule soin de ce gel douche aidera à maintenir l\'hydratation naturelle de votre peau tout en l\'apaisant.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
