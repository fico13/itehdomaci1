-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 11:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d1`
--

-- --------------------------------------------------------

--
-- Table structure for table `knjiga`
--

CREATE TABLE `knjiga` (
  `id` int(11) NOT NULL,
  `naslov` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `opis` text NOT NULL,
  `cena` int(11) NOT NULL,
  `prodavnica` text NOT NULL,
  `korisnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `knjiga`
--

INSERT INTO `knjiga` (`id`, `naslov`, `autor`, `opis`, `cena`, `prodavnica`, `korisnik_id`) VALUES
(1, 'Covek po imenu Uve', 'Fredrik Bakman', 'Upoznajte Uvea. On je džangrizalo – jedan od onih koji upiru prstom u ljude koji mu se ne dopadaju kao da su provalnici zatečeni pod njegovim prozorom. Svakog jutra Uve ide u inspekciju po naselju u kom živi. Premešta bicikle i proverava da li je đubre pravilno razvrstano – iako je već nekoliko godina prošlo otkako je razrešen dužnosti predsednika kućnog saveta. Ili otkako je „izvršen prevrat“, kako Uve govori o tome. Ljudi ga zovu „ogorčenim komšijom iz pakla“. Ali zar Uve mora da bude ogorčen samo zbog toga što ne šeta okolo sa osmehom zalepljenim na lice?', 1000, 'https://www.laguna.rs/n3366_knjiga_covek_po_imenu_uve_laguna.html', 1),
(2, 'Mali princ', 'Antoan de Sent Egziperi', 'cera mali po svemiru', 500, 'https://www.laguna.rs/n3092_knjiga_mali_princ_laguna.html', 2);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `nadimak` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `sifra` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `nadimak`, `email`, `sifra`) VALUES
(1, 'Filip', 'Jovanovic', 'Fico', 'fico@fico.com', 'fico'),
(2, 'Vladimir', 'Jovanovic', 'Vlada', 'vlada@vlada.com', 'vlada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knjiga`
--
ALTER TABLE `knjiga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knjiga`
--
ALTER TABLE `knjiga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
