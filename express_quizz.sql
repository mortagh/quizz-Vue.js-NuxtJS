-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 25, 2022 at 04:16 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_quizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matiere` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `matiere`, `img`) VALUES
(1, 'Geographie', 'geographie.webp'),
(2, 'Histoire', 'histoire.png');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_thematique` int(11) NOT NULL,
  `question` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_thematique` (`id_thematique`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `id_thematique`, `question`) VALUES
(4, 1, 'En quelle année a eu lieu la bataille de Verdun?'),
(5, 1, 'En quelle année a eu lieu la bataille de Waterloo?'),
(8, 4, 'Combien y a t\'il d\'habitants au Japon?'),
(9, 2, 'Combien de temps a duré la présidence de François Mittérand?'),
(10, 2, 'Quel est l\'âge minimum requis pour être candidat aux élections municipales françaises ?'),
(12, 4, 'Combien y a t\'il d\'habitants en Inde?'),
(13, 3, 'Qui a inventé la radio ?'),
(14, 3, 'Grâce à qui disposons-nous de lampes électriques ?'),
(15, 5, 'Quelle est la superficie du Méxique?'),
(16, 5, 'Quelle est a superficie de l\'Inde?'),
(17, 6, 'Quelle est la capitale du Japon?'),
(18, 6, 'Quelle est la capitale du Canada?'),
(19, 6, 'Quelle est la capitale de l\'Australie?'),
(20, 6, 'Quelle est la capitale de la Grèce?'),
(21, 6, 'Quelle est la capitale de l\'Uruguay?'),
(22, 6, 'Quelle est la capitale de la Thaïlande?'),
(23, 6, 'Quelle est la capitale de l\'Inde?'),
(24, 6, 'Quelle est la capitale du Méxique?'),
(25, 6, 'Quelle est la capitale du Brésil?'),
(26, 6, 'Quelle est la capitale du Maroc?');

-- --------------------------------------------------------

--
-- Table structure for table `quizz`
--

DROP TABLE IF EXISTS `quizz`;
CREATE TABLE IF NOT EXISTS `quizz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `reponse` varchar(255) NOT NULL,
  `id_thematique` int(11) NOT NULL,
  `choices` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_thematique` (`id_thematique`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizz`
--

INSERT INTO `quizz` (`id`, `question`, `reponse`, `id_thematique`, `choices`) VALUES
(1, 'Quelle revue fut fondée par Marc Bloch et Lucien Febvre ?', 'Les annales', 3, 'null'),
(2, 'Quelle épreuve sportive créent Géo Lefebvre et Henri Desgrange ?\r\n', 'Le Tour de France', 3, 'null'),
(3, 'Qui a inventé la radio ?', 'Guglielmo Marconi', 3, 'null'),
(4, 'Grâce à qui disposons-nous de lampes électriques ?', 'Thomas Edison', 3, 'null'),
(5, 'Quelle est la capitale du Canada', 'Ottawa', 6, 'null'),
(6, 'Quelle est la capitale du Pakistan', 'Islamabad', 6, 'null'),
(7, 'Quelle est la capitale de la Nouvelle Zélande', 'Wellington', 6, 'null'),
(8, 'QUelle est la capitale de Singapour', 'Singapour', 6, 'null'),
(9, 'En quelle année a eu lieu la bataille de Verdun?', '1916', 1, 'null'),
(10, 'En quelle année a eu lieu la bataille de Waterloo?', '1815', 1, 'null'),
(11, 'En quelle année a eu lieu la bataille de la Marne', '1914', 1, 'null'),
(12, 'En quelle année a eu lieu la bataille de la Mer de Corail?', '1942', 1, 'null'),
(13, 'Combien de temps a duré la présidence de François Mitterrand ?', '14 ans', 2, 'null'),
(14, 'Quel est l\'âge minimum requis pour être candidat aux élections municipales françaises ?', '18 ans', 2, 'null'),
(15, 'Quel homme politique a été ministre de l’Éducation nationale de 1988 à 1992 ?', 'Lionel Jospin', 2, 'null'),
(16, 'Quel ministère français a été dirigé de 2007 à 2011 par Christine Lagarde ?', 'Ministère de l\'économie', 2, 'null'),
(17, 'Combien y a t\'il d\'habitants au Japon?', '125 millions', 4, 'null'),
(18, 'Combien y a t\'il en Azerbaïdjan?', '10,2 millions', 4, 'null'),
(19, 'Combien ya t\'il d\'habitants au Turkménistan?', '6 millions', 4, 'null'),
(20, 'Combien y a t\'il d\'habitants en Inde?', '1,3 milliards', 4, 'null'),
(21, 'Quelle est a superficie de l\'Inde', '3 287 263 km2', 5, 'null'),
(22, 'Quelle est la superficie ', '9 596 960 km2', 5, 'null'),
(23, 'Quelle est la superficie du Méxique?', '1 964 375 km2', 5, 'null'),
(24, 'Quelle est la superficie de l\'Islande?', '1 964 375 km2', 5, 'null'),
(27, 'Qui est le président de la République?', 'Emmanuel Macron', 2, '[\"Lionel Jospin\", \"Jacques Chirac\"]');

-- --------------------------------------------------------

--
-- Table structure for table `reponses`
--

DROP TABLE IF EXISTS `reponses`;
CREATE TABLE IF NOT EXISTS `reponses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_question` int(11) NOT NULL,
  `reponse` text NOT NULL,
  `correct` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_question` (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reponses`
--

INSERT INTO `reponses` (`id`, `id_question`, `reponse`, `correct`) VALUES
(6, 4, '1916', 1),
(7, 4, '1918', 0),
(8, 4, '1915', 0),
(9, 4, '1914', 0),
(10, 5, '1815', 1),
(11, 5, '1816', 0),
(12, 5, '1820', 0),
(13, 5, '1818', 0),
(14, 5, '1825', 0),
(15, 8, '125 millions', 1),
(16, 8, '130 millions', 0),
(17, 8, '128 millions', 0),
(18, 8, '126 millions', 0),
(19, 9, '14 ans', 1),
(20, 9, '10 ans', 0),
(21, 9, '12 ans', 0),
(22, 9, '7 ans', 0),
(23, 10, '18 ans', 1),
(24, 10, '21 ans', 0),
(25, 10, '23 ans', 0),
(26, 10, '25 ans', 0),
(31, 12, '1,3 milliards', 1),
(32, 12, '1,5 milliards', 0),
(33, 12, '1,8 miiliards', 0),
(34, 12, '1,1 milliards', 0),
(35, 13, 'Guglielmo Marconi', 1),
(36, 13, 'Henry Ford', 0),
(37, 13, 'Philip Morris', 0),
(38, 13, 'Thomas Edison', 0),
(39, 14, 'Thomas Edison', 1),
(40, 14, 'Nicola tesla', 0),
(41, 14, 'Henry Ford', 0),
(42, 14, 'James Watt', 0),
(43, 15, '1 964 375 km2', 1),
(44, 15, '1 958 124 km²', 0),
(45, 15, '1 897 258 km²', 0),
(46, 15, '1 896 548 km²', 0),
(47, 16, '3 287 263 km²', 1),
(48, 16, '3 458 201 km²', 0),
(49, 16, '3 478 025 km²', 0),
(50, 16, '3 580 579 km²', 0),
(51, 17, 'Osaka', 0),
(52, 17, 'Tokyo', 1),
(53, 17, 'Kawasaki', 0),
(54, 17, 'Sapporo', 0),
(55, 18, 'Montreal', 0),
(56, 18, 'Toronto', 0),
(57, 18, 'Ottawa', 1),
(58, 18, 'Vancouver', 0),
(59, 18, 'Edmonton', 0),
(60, 19, 'Melbourne', 0),
(61, 19, 'Sidney', 0),
(62, 19, 'Perth', 0),
(63, 19, 'Canberra', 1),
(65, 20, 'Athènes', 1),
(66, 20, 'Rhodes', 0),
(67, 20, 'Mykonos', 0),
(68, 20, 'Olympia', 0),
(69, 21, 'Melo', 0),
(70, 21, 'Salto', 0),
(71, 21, 'Colonia', 0),
(72, 21, 'Montevideo', 1),
(73, 22, 'Ayutthaya', 0),
(74, 22, 'Chiang Mai', 0),
(75, 22, 'Bangkok', 1),
(76, 22, 'Kanchanaburi', 0),
(77, 23, 'Dehli', 0),
(78, 23, 'New Dehli', 1),
(79, 23, 'Bangalore', 0),
(80, 23, 'Mumbai', 0),
(81, 24, 'Puebla', 0),
(82, 24, 'Mexico City', 1),
(83, 24, 'Ecatepec', 0),
(84, 24, 'Guadalajara', 0),
(85, 25, 'Salvador', 0),
(86, 25, 'Rio De Janeiro', 0),
(87, 25, 'Sao Paulo', 0),
(88, 25, 'Brasilia', 1),
(89, 26, 'Casablanca', 0),
(90, 26, 'Rabat', 1),
(91, 26, 'Marrakesh', 0),
(92, 26, 'Tanger', 0);

-- --------------------------------------------------------

--
-- Table structure for table `thematique`
--

DROP TABLE IF EXISTS `thematique`;
CREATE TABLE IF NOT EXISTS `thematique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thematique`
--

INSERT INTO `thematique` (`id`, `title`, `description`, `id_categorie`) VALUES
(1, 'Batailles', 'Questions portant sur les grandes batailles de l\'histoire', 2),
(2, 'Politique', 'Questions pourtant la politique au cours de l\'histoire', 2),
(3, 'Inventions', 'Questions portant sur les inventions au cours de l\'histoire', 2),
(4, 'Population', 'Questions sur la population dans le monde', 1),
(5, 'Superficie', 'Questions sur la taille des pays', 1),
(6, 'Capitales', 'Questions sur les capitales du monde', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`id_thematique`) REFERENCES `thematique` (`id`);

--
-- Constraints for table `quizz`
--
ALTER TABLE `quizz`
  ADD CONSTRAINT `id_thematique` FOREIGN KEY (`id_thematique`) REFERENCES `thematique` (`id`);

--
-- Constraints for table `reponses`
--
ALTER TABLE `reponses`
  ADD CONSTRAINT `reponses_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id`);

--
-- Constraints for table `thematique`
--
ALTER TABLE `thematique`
  ADD CONSTRAINT `id_categorie` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
