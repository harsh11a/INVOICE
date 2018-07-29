-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2018 at 05:35 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search`
--

-- --------------------------------------------------------

--
-- Table structure for table `searchengine`
--

CREATE TABLE `searchengine` (
  `id` int(11) NOT NULL,
  `pageurl` varchar(300) NOT NULL,
  `pagecontent` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `searchengine`
--

INSERT INTO `searchengine` (`id`, `pageurl`, `pagecontent`) VALUES
(1, 'https://www.google.com/\r\n', 'Google'),
(2, 'https://www.facebook.com/', 'Facebook - Log In or Sign Up'),
(3, 'https://www.instagram.com/?hl=en', 'Instagram'),
(4, 'http://www.kidsites.com/', 'Kidsfun'),
(5, 'https://www.funbrain.com/', 'Funbrain: Games, Videos, and Books for Kids'),
(6, 'https://www.verywellfamily.com/best-free-educational-websites-for-kids-3129084', 'Fun and Free Educational Websites for Kids - Verywell Family'),
(7, 'https://www.bgames.com/kids-games/', 'Kids Games - Free Online Kids Games'),
(8, 'https://www.wikipedia.org/', 'Wikipedia');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `searchengine`
--
ALTER TABLE `searchengine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `searchengine`
--
ALTER TABLE `searchengine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
