-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 25, 2022 at 04:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `ChuyenBay`
--

CREATE TABLE `ChuyenBay` (
  `macb` int(11) NOT NULL,
  `tencb` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ngaydi` date NOT NULL,
  `sogheloai1` int(11) NOT NULL,
  `giagheloai1` decimal(11,0) NOT NULL,
  `sogheloai2` int(11) NOT NULL,
  `giagheloai2` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ChuyenBay`
--

INSERT INTO `ChuyenBay` (`macb`, `tencb`, `ngaydi`, `sogheloai1`, `giagheloai1`, `sogheloai2`, `giagheloai2`) VALUES
(3, 'ah 3550', '2022-08-31', 134, '11000', 15, '650000'),
(4, 'ah 300', '2022-08-20', 11, '12023', 18, '600006'),
(5, 'ah 3550', '2022-08-31', 134, '12230', 15, '500000'),
(6, 'ah 3550dsf', '2022-08-31', 134, '10000', 15, '400000');

-- --------------------------------------------------------

--
-- Table structure for table `Ve`
--

CREATE TABLE `Ve` (
  `mave` int(11) NOT NULL,
  `tenkhach` varchar(255) NOT NULL,
  `cmnd` varchar(255) CHARACTER SET latin1 NOT NULL,
  `macb` int(11) NOT NULL,
  `loaighe` int(11) NOT NULL,
  `giaghe` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Ve`
--

INSERT INTO `Ve` (`mave`, `tenkhach`, `cmnd`, `macb`, `loaighe`, `giaghe`) VALUES
(2, 'test 6', '12345', 6, 1, '10000'),
(3, 'test 5', '1234567', 5, 2, '500000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ChuyenBay`
--
ALTER TABLE `ChuyenBay`
  ADD PRIMARY KEY (`macb`);

--
-- Indexes for table `Ve`
--
ALTER TABLE `Ve`
  ADD PRIMARY KEY (`mave`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ChuyenBay`
--
ALTER TABLE `ChuyenBay`
  MODIFY `macb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Ve`
--
ALTER TABLE `Ve`
  MODIFY `mave` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
