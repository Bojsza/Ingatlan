-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 03:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `ingatlanok`
--

CREATE TABLE `ingatlanok` (
  `refszam` int(11) NOT NULL,
  `tipus` enum('ház','lakás') NOT NULL,
  `telepules` varchar(255) NOT NULL,
  `alapter_nm` int(11) NOT NULL,
  `szobak` int(11) NOT NULL,
  `ar` int(11) NOT NULL,
  `parkolo` enum('udvari beálló','utca','közterület','önálló garázs','terem garázs hely','nincs') NOT NULL,
  `emelet` enum('szuterén','földszint','félemelet','1','2','3','4','5','6','7','8','9','10','felette') DEFAULT NULL,
  `erkely_nm` int(11) DEFAULT NULL,
  `szintek` int(11) DEFAULT NULL,
  `telek_nm` int(11) DEFAULT NULL,
  `leiras` text NOT NULL,
  `statusz` enum('eladó','eladva','ügyintézés alatt') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingatlanok`
--

INSERT INTO `ingatlanok` (`refszam`, `tipus`, `telepules`, `alapter_nm`, `szobak`, `ar`, `parkolo`, `emelet`, `erkely_nm`, `szintek`, `telek_nm`, `leiras`, `statusz`) VALUES
(1, 'ház', 'Budapest', 100, 5, 10000000, 'udvari beálló', 'földszint', 20, 2, 500, 'Nagyon szép lakás jó helyen', 'eladó'),
(3, 'ház', 'Budapest', 100, 5, 10000000, 'udvari beálló', 'földszint', 20, 2, 500, 'Nagyon szép lakás jó helyen', 'eladó'),
(4, 'lakás', 'Debrecen', 80, 4, 8000000, 'utca', '1', 10, 1, 200, 'Kényelmes kis ház', 'eladva'),
(5, 'lakás', 'Szeged', 60, 3, 6000000, 'közterület', '2', 5, 1, 300, 'Közeli az iskola', 'ügyintézés alatt'),
(6, 'ház', 'Pécs', 120, 6, 12000000, 'önálló garázs', '3', 30, 2, 1000, 'Nagy ház jó kerttel', 'eladó'),
(7, 'lakás', 'Győr', 90, 4, 9000000, 'terem garázs hely', '4', 15, 1, 400, 'Kellemes környezet', 'eladó'),
(8, 'ház', 'Szombathely', 110, 5, 11000000, 'udvari beálló', '5', 25, 3, 600, 'Csendes környék', 'ügyintézés alatt'),
(9, 'lakás', 'Miskolc', 70, 3, 7000000, 'nincs', 'szuterén', 0, 1, 0, 'Közeli a tömegközlekedéshez', 'eladva'),
(10, 'ház', 'Eger', 130, 6, 13000000, 'udvari beálló', '1', 35, 3, 700, 'Nagyon nagy ház', 'eladó'),
(11, 'lakás', 'Kecskemét', 75, 3, 7500000, 'nincs', 'félemelet', 0, 1, 0, 'Csendes lakótelep', 'ügyintézés alatt'),
(12, 'ház', 'Veszprém', 150, 7, 15000000, 'udvari beálló', '2', 40, 4, 800, 'Modern ház', 'eladó'),
(13, 'ház', 'Budapest', 100, 5, 10000000, 'udvari beálló', 'földszint', 20, 2, 500, 'Nagyon szép lakás jó helyen', 'eladó'),
(14, 'lakás', 'Debrecen', 80, 4, 8000000, 'utca', '1', 10, 1, 200, 'Kényelmes kis ház', 'eladva'),
(15, 'lakás', 'Szeged', 60, 3, 6000000, 'közterület', '2', 5, 1, 300, 'Közeli az iskola', 'ügyintézés alatt'),
(16, 'ház', 'Pécs', 120, 6, 12000000, 'önálló garázs', '3', 30, 2, 1000, 'Nagy ház jó kerttel', 'eladó'),
(17, 'lakás', 'Győr', 90, 4, 9000000, 'terem garázs hely', '4', 15, 1, 400, 'Kellemes környezet', 'eladó'),
(18, 'ház', 'Szombathely', 110, 5, 11000000, 'udvari beálló', '5', 25, 3, 600, 'Csendes környék', 'ügyintézés alatt'),
(19, 'lakás', 'Miskolc', 70, 3, 7000000, 'nincs', 'szuterén', 0, 1, 0, 'Közeli a tömegközlekedéshez', 'eladva'),
(20, 'ház', 'Eger', 130, 6, 13000000, 'udvari beálló', '1', 35, 3, 700, 'Nagyon nagy ház', 'eladó'),
(21, 'lakás', 'Kecskemét', 75, 3, 7500000, 'nincs', 'félemelet', 0, 1, 0, 'Csendes lakótelep', 'ügyintézés alatt'),
(22, 'ház', 'Veszprém', 150, 7, 15000000, 'udvari beálló', '2', 40, 4, 800, 'Modern ház', 'eladó'),
(25, 'ház', 'Budapest', 100, 5, 10000000, 'udvari beálló', 'földszint', 20, 2, 500, 'Nagyon szép lakás jó helyen', 'eladó'),
(26, 'lakás', 'Debrecen', 80, 4, 8000000, 'utca', '1', 10, 1, 200, 'Kényelmes kis ház', 'eladva'),
(27, 'lakás', 'Szeged', 60, 3, 6000000, 'közterület', '2', 5, 1, 300, 'Közeli az iskola', 'ügyintézés alatt'),
(28, 'ház', 'Pécs', 120, 6, 12000000, 'önálló garázs', '3', 30, 2, 1000, 'Nagy ház jó kerttel', 'eladó'),
(29, 'lakás', 'Győr', 90, 4, 9000000, 'terem garázs hely', '4', 15, 1, 400, 'Kellemes környezet', 'eladó'),
(30, 'ház', 'Szombathely', 110, 5, 11000000, 'udvari beálló', '5', 25, 3, 600, 'Csendes környék', 'ügyintézés alatt'),
(31, 'lakás', 'Miskolc', 70, 3, 7000000, 'nincs', 'szuterén', 0, 1, 0, 'Közeli a tömegközlekedéshez', 'eladva'),
(32, 'ház', 'Eger', 130, 6, 13000000, 'udvari beálló', '1', 35, 3, 700, 'Nagyon nagy ház', 'eladó'),
(33, 'lakás', 'Kecskemét', 75, 3, 7500000, 'nincs', 'félemelet', 0, 1, 0, 'Csendes lakótelep', 'ügyintézés alatt'),
(34, 'ház', 'Veszprém', 150, 7, 15000000, 'udvari beálló', '2', 40, 4, 800, 'Modern ház', 'eladó');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ingatlanok`
--
ALTER TABLE `ingatlanok`
  ADD PRIMARY KEY (`refszam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ingatlanok`
--
ALTER TABLE `ingatlanok`
  MODIFY `refszam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
