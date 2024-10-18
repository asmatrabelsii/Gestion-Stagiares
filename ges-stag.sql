-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2022 at 04:35 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ges-stag`
--

-- --------------------------------------------------------

--
-- Table structure for table `filiere`
--

CREATE TABLE IF NOT EXISTS `filiere` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_FILIERE` varchar(100) NOT NULL,
  `NIVEAU` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `filiere`
--

INSERT INTO `filiere` (`ID`, `NOM_FILIERE`, `NIVEAU`) VALUES
(1, 'DÃ©partement formation TIC', 'ingÃ©nierie'),
(2, 'Assistance de direction', 'Licence'),
(3, 'DÃ©partement formation langues', 'Master SpÃ©cialisÃ©'),
(4, 'DÃ©partement consulting', 'Licence');

-- --------------------------------------------------------

--
-- Table structure for table `stagiaire`
--

CREATE TABLE IF NOT EXISTS `stagiaire` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(50) NOT NULL,
  `PRENOM` varchar(50) NOT NULL,
  `ID_FILIERE` int(4) DEFAULT NULL,
  `PHOTO` varchar(50) NOT NULL,
  `CIVILITE` varchar(1) NOT NULL,
  `DATE_DEBUT` date NOT NULL,
  `DATE_FIN` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `stagiaire`
--

INSERT INTO `stagiaire` (`ID`, `NOM`, `PRENOM`, `ID_FILIERE`, `PHOTO`, `CIVILITE`, `DATE_DEBUT`, `DATE_FIN`) VALUES
(1, 'Baccouche', 'Hane', 1, 'user_green.png', 'F', '2022-02-12', '2022-03-25'),
(2, 'Abid', 'Ahmed', 2, 'user_green.png', 'M', '2021-06-15', '2021-07-14'),
(3, 'Nafeti', 'Bayram', 2, 'user_green.png', 'M', '2021-06-15', '2021-07-14'),
(4, 'Belhaj', 'Mohamed Aziz', 3, 'user_green.png', 'M', '2021-01-14', '2021-02-25'),
(5, 'Kacem', 'Salma', 1, 'user_green.png', 'F', '2021-02-02', '2021-02-27'),
(6, 'Ben Achour', 'Marwa', 4, 'user_green.png', 'F', '2021-03-14', '2021-04-12'),
(7, 'Salemi', 'Doua', 4, 'user_green.png', 'F', '2021-01-27', '2021-02-21'),
(8, 'Rabhi', 'Sahar', 3, 'user_green.png', 'F', '2021-06-17', '2021-07-15'),
(9, 'Touati', 'Mahdi', 1, 'user_green.png', 'M', '2021-08-02', '2021-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(100) NOT NULL,
  `PWD` varchar(255) NOT NULL,
  `ROLE` varchar(50) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `ETAT` int(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`ID`, `LOGIN`, `PWD`, `ROLE`, `EMAIL`, `ETAT`) VALUES
(1, 'trabelsi_asma', 'asma123456', 'ADMIN', 'trabelsi7asma@gmail.com', 1),
(2, 'chaima', 'chaima123', 'VISITEUR', 'trabelsi7chaima@gmail.com', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
