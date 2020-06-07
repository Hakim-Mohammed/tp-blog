-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 27 mai 2020 à 06:20
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `author`
--

INSERT INTO `author` (`Id`, `FirstName`, `LastName`) VALUES
(1, 'John', 'Doe');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`Id`, `Name`) VALUES
(2, 'Jeux-Vidéos'),
(3, 'Recettes'),
(1, 'Voyages');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `Id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NickName` varchar(30) DEFAULT NULL,
  `Contents` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Post_Id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CreationTimestamp` (`CreationTimestamp`),
  KEY `Post_Id` (`Post_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `Id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Contents` text NOT NULL,
  `Image` varchar(255) NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Author_Id` tinyint(3) UNSIGNED DEFAULT NULL,
  `Category_Id` tinyint(3) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Title` (`Title`),
  KEY `CreationTimestamp` (`CreationTimestamp`),
  KEY `Author_Id` (`Author_Id`),
  KEY `Category_Id` (`Category_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`Id`, `Title`, `Contents`, `Image`, `CreationTimestamp`, `Author_Id`, `Category_Id`) VALUES
(1, 'Un paradis appelé \"Los Roques\"', 'Des sables blanc, des pélicans et des îles Désertes... Bienvenue à Los Roques!\r\n\r\nAu milieu des flots bleus des Caraïbes, à 160 km de Caracas, se trouve l\'Archipel Los Roques. Ce petit coin de paradis constitue une étape immanquable pour l\'amateur de belles plages désireux de connaître le meilleur du  Venezuela. En effet, dès l\'instant où l\'avion se pose sur la piste en bord de mer, le long de la lagune, un monde de détente et de soleil s\'offre aux voyageurs : l\'exploration des 350 îles, entre lesquelles on se déplace en bateau, promet d\'être inoubliable....\r\n\r\n', 'losroques.jpg', '2020-05-25 14:30:08', 1, 1),
(2, 'À la découverte du \"Salto Angel\", la chute d\'eau la plus haute du monde.', 'La plus haute chute d’eau du monde, le Salto Angel, impressionne par sa puissance. Niché dans une région difficilement accessible de Gran Sabana au Venezuela, au cœur du parc national de Canaima, ce grand rideau d’eau douce est un trésor protégé. ', 'saltoangel.jpg', '2020-05-25 15:26:46', 1, 1),
(3, 'Brownies', 'Ingredients:\r\n  -250 g de chocolat pâtissier\r\n  -1 sachet de sucre vanillé\r\n  -150 g de beurre\r\n  -3 oeufs\r\n  -150 g de sucre\r\n  -60 g de farine\r\n  -Sel\r\nPréparation:\r\nFaites fondre le chocolat cassé en morceaux avec le beurre.\r\nPendant ce temps, battez les oeufs avec le sucre jusqu\'à ce que le mélange blanchisse.\r\nAjoutez la farine, le sucre vanillé, et ajoutez le chocolat.\r\nVersez le tout dans un moule, et enfournez à 180°C pendant 15 min...\r\nEt voilà !', 'brownie.jpg', '2020-05-26 14:38:11', 1, 3),
(4, 'Final Fantasy VII : Remake - Yoshinori Kitase aurait voulu intégrer plus de modifications', 'Disponible depuis le 10 avril dernier, Final Fantasy VII Remake propose une relecture et un enrichissement de l\'oeuvre originale, qui a globalement séduit les joueurs et la presse. Ces modifications, diversement appréciées par les joueurs, auraient pu être encore plus importantes.\r\n\r\nDans une interview publiée dimanche par PushSquare et relayée par Gameblog, Yoshinori Kitase, producteur du titre, indique en effet qu\'il envisageait d\'aller beaucoup plus loin au niveau en termes de modifications vis-à-vis de l\'oeuvre originale.', 'finalFantasy.jpg', '2020-05-26 23:38:52', 1, 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `Comment_ibfk_1` FOREIGN KEY (`Post_Id`) REFERENCES `post` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `Post_ibfk_1` FOREIGN KEY (`Author_Id`) REFERENCES `author` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Post_ibfk_2` FOREIGN KEY (`Category_Id`) REFERENCES `category` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
