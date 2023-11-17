-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2023 at 11:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `world_cup`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `point` int(11) NOT NULL,
  `nombre_joueurs` int(11) DEFAULT NULL,
  `capital` varchar(30) NOT NULL,
  `contient` varchar(30) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `joueur_cle` varchar(30) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `id_groupe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipe`
--

INSERT INTO `equipe` (`id`, `name`, `point`, `nombre_joueurs`, `capital`, `contient`, `population`, `joueur_cle`, `flag`, `id_groupe`) VALUES
(1, 'Argentina', 0, 26, 'Buenos Aires', 'South America', 45195777, 'Lionel Messi', './images/Argentina.png\n', 1),
(2, 'Brazil', 0, 26, 'Brasília', 'South America', 210147125, 'Neymar', './images/Brazil.png', 1),
(3, 'Germany', 0, 26, 'Berlin', 'Europe', 83019200, 'Thomas Müller', './images/Germany.png', 2),
(4, 'France', 0, 26, 'Paris', 'Europe', 67186644, 'Kylian Mbappé', './images/France.png', 2),
(5, 'Italy', 0, 26, 'Rome', 'Europe', 60461826, 'Giorgio Chiellini', './images/Italy.png', 3),
(6, 'Spain', 0, 26, 'Madrid', 'Europe', 46733038, 'Sergio Ramos', './images/Spain.png', 3),
(7, 'Portugal', 0, 26, 'Lisbon', 'Europe', 10281762, 'Cristiano Ronaldo', './images/Portugal.png', 4),
(8, 'Netherlands', 0, 26, 'Amsterdam', 'Europe', 17134872, 'Virgil van Dijk', './images/Netherlands.png', 4),
(9, 'England', 0, 26, 'London', 'Europe', 55977130, 'Harry Kane', './images/England.png', 5),
(10, 'Belgium', 0, 26, 'Brussels', 'Europe', 11539328, 'Eden Hazard', './images/Belgium.png', 5),
(11, 'Uruguay', 0, 26, 'Montevideo', 'South America', 3482154, 'Luis Suárez', './images/Uruguay.png', 6),
(12, 'Colombia', 0, 26, 'Bogotá', 'South America', 50882891, 'James Rodriguez', './images/Colombia.png', 6),
(13, 'Mexico', 0, 26, 'Mexico City', 'North America', 126190788, 'Javier Hernandez', './images/Mexico.png', 7),
(14, 'Chile', 0, 26, 'Santiago', 'South America', 19116201, 'Arturo Vidal', './images/Chile.png', 7),
(15, 'Croatia', 0, 26, 'Zagreb', 'Europe', 4105267, 'Luka Modric', './images/Croatia.png', 8),
(16, 'Sweden', 0, 26, 'Stockholm', 'Europe', 10099265, 'Zlatan Ibrahimović', './images/Sweden.png', 8),
(17, 'Poland', 0, 26, 'Warsaw', 'Europe', 37958138, 'Robert Lewandowski', './images/Poland.png', 1),
(18, 'Switzerland', 0, 26, 'Bern', 'Europe', 8654622, 'Xherdan Shaqiri', './images/Switzerland.png', 1),
(19, 'Denmark', 0, 26, 'Copenhagen', 'Europe', 5797446, 'Christian Eriksen', './images/Denmark.png', 2),
(20, 'Russia', 0, 26, 'Moscow', 'Europe', 145912025, 'Artem Dzyuba', './images/Russia.png', 2),
(21, 'Japan', 0, 26, 'Tokyo', 'Asia', 126785797, 'Keisuke Honda', './images/Japan.png', 3),
(22, 'South Korea', 0, 26, 'Seoul', 'Asia', 51269185, 'Son Heung-min', './images/South Korea.png', 3),
(23, 'Iran', 0, 26, 'Tehran', 'Asia', 83992949, 'Sardar Azmoun', './images/Iran.png', 4),
(24, 'Australia', 0, 26, 'Canberra', 'Oceania', 25499884, 'Aaron Mooy', './images/Australia.png', 4),
(25, 'Nigeria', 0, 26, 'Abuja', 'Africa', 206139587, 'Alex Iwobi', './images/Nigeria.png', 5),
(26, 'Senegal', 0, 26, 'Dakar', 'Africa', 16743927, 'Sadio Mané', './images/Senegal.png', 5),
(27, 'Egypt', 0, 26, 'Cairo', 'Africa', 104258327, 'Mohamed Salah', './images/Egypt.png', 6),
(28, 'Morocco', 0, 26, 'Rabat', 'Africa', 36910560, 'Achraf Hakimi', './images/Morocco.png', 6),
(29, 'Tunisia', 0, 26, 'Tunis', 'Africa', 11818619, 'Youssef Msakni', './images/Tunisia.png', 7),
(30, 'Ivory Coast', 0, 26, 'Yamoussoukro', 'Africa', 26231639, 'Wilfried Zaha', './images/Ivory Coast.png', 7),
(31, 'Ghana', 0, 26, 'Accra', 'Africa', 31072940, 'Thomas Partey', './images/Ghana.png', 8),
(32, 'Cameroon', 0, 26, 'Yaoundé', 'Africa', 26545863, 'Vincent Aboubakar', './images/Cameroon.png', 8);

-- --------------------------------------------------------

--
-- Table structure for table `groupe`
--

CREATE TABLE `groupe` (
  `idgroupe` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `stade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groupe`
--

INSERT INTO `groupe` (`idgroupe`, `name`, `stade`) VALUES
(1, 'Groupe A', 'Stade Mohammed V'),
(2, 'Groupe B', 'El Massira'),
(3, 'Groupe C', 'Stade Municipal de Kenitra'),
(4, 'Groupe D', 'Stade honneur de Beni Mellal'),
(5, 'Groupe E', 'Complexe sportif de Fès'),
(6, 'Groupe F', 'Stade Ibn Batouta'),
(7, 'Groupe G', 'Stade de Marrakech'),
(8, 'Groupe H', 'Moulay Abdellah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_groupe` (`id_groupe`);

--
-- Indexes for table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`idgroupe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `idgroupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `equipe`
--
ALTER TABLE `equipe`
  ADD CONSTRAINT `equipe_ibfk_1` FOREIGN KEY (`id_groupe`) REFERENCES `groupe` (`idgroupe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
