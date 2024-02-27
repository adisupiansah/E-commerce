-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2024 at 08:49 AM
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
-- Database: `ndrshoop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbkomentar`
--

CREATE TABLE `tbkomentar` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `komentar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbkomentar`
--

INSERT INTO `tbkomentar` (`id`, `nama`, `komentar`) VALUES
(21, 'Regina', 'Enakkk bangetttt.............\r\n'),
(22, 'Raju', 'hemmm okeyy..'),
(23, 'adi', 'enak banget'),
(24, 'adi sup', 'enk dan gurih'),
(25, 'nurul safika', 'wuihh enak banget loo...suka degn kuenya..murah lg\r\n'),
(26, 'Egi syahputra', 'kuenya enak dan gurih'),
(27, 'Tester', 'wuihh enak banget kuenya,suka lah'),
(28, 'TESTER KE-2', 'wahh enak banget kuenya, kalian wajib beli di sini');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(20, 'adi', '$2y$10$uEfroKJ6N58e6Bkd.Ar0/.PdnlFHQsLa70NMQlVA7SqEpBjY18VxG'),
(21, 'nurul', '$2y$10$G3ca3WBgT88dLwwW8emfSe2qK1BeRHtxrG/Eb05R0jxC44oX6BCfy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbkomentar`
--
ALTER TABLE `tbkomentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbkomentar`
--
ALTER TABLE `tbkomentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
