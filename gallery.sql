-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2019 at 01:23 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `cek`
--

CREATE TABLE `cek` (
  `out_date` date NOT NULL,
  `number` varchar(15) NOT NULL,
  `serial` varchar(10) NOT NULL,
  `property` varchar(15) NOT NULL,
  `pib` varchar(10) NOT NULL,
  `manufaktur` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `size` varchar(10) NOT NULL,
  `area` varchar(20) NOT NULL,
  `catagori` varchar(5) NOT NULL,
  `cekbox` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cek`
--

INSERT INTO `cek` (`out_date`, `number`, `serial`, `property`, `pib`, `manufaktur`, `color`, `size`, `area`, `catagori`, `cekbox`) VALUES
('2019-09-05', '1', '2', 'dsa', 'sdf', 'sadf', 'fd', 'USSU/FULL', 'wasad', 'MINOR', 'BSTPMHDP');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `isue_date` date NOT NULL,
  `number` varchar(15) NOT NULL,
  `serial` varchar(10) NOT NULL,
  `property` varchar(15) NOT NULL,
  `pib` varchar(10) NOT NULL,
  `manufaktur` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `catagori` varchar(5) NOT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`isue_date`, `number`, `serial`, `property`, `pib`, `manufaktur`, `color`, `catagori`, `size`) VALUES
('2019-07-04', '1', '2', 'dsa', 'sdf', 'sadf', 'fd', 'MAJOR', 'ATLAS/FULL'),
('2019-07-11', '241', 'fsasasada', 'fasasd', 'sdgds', 'gsdgsdg', 'sfdgsdg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `number` varchar(15) NOT NULL,
  `serial` varchar(10) NOT NULL,
  `property` varchar(15) NOT NULL,
  `pib` varchar(10) NOT NULL,
  `manufaktur` varchar(10) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`number`, `serial`, `property`, `pib`, `manufaktur`, `size`, `color`) VALUES
('TK800004', '12', '12', '12', '12', 'ATLAS/FULL', '12'),
('2', '321132', 'das', 'sdd', 'sfa', 'ATLAS/FULL', 'ads'),
('1', 'abay', '2', 'asd', 's', 'ATLAS/FULL', 'safd'),
('1', 'das', 'dsa', 'ads', 'sdf', 'ATLAS/FULL', 'sdf'),
('4', 'OMAN', 'ER1', 'DGS', 'DGS', 'ATLAS/HALF', 'FS');

-- --------------------------------------------------------

--
-- Table structure for table `repair`
--

CREATE TABLE `repair` (
  `in_date` date NOT NULL,
  `number` varchar(15) NOT NULL,
  `serial` varchar(10) NOT NULL,
  `property` varchar(15) NOT NULL,
  `pib` varchar(10) NOT NULL,
  `manufaktur` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `size` varchar(10) NOT NULL,
  `area` varchar(20) NOT NULL,
  `catagori` varchar(5) NOT NULL,
  `out_date` date NOT NULL,
  `perbaikan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repair`
--

INSERT INTO `repair` (`in_date`, `number`, `serial`, `property`, `pib`, `manufaktur`, `color`, `size`, `area`, `catagori`, `out_date`, `perbaikan`) VALUES
('2019-07-19', 'sfdf', 'sfdsfd', 'fsdafsd', 'sdfd', 'fsd', 'sdfd', 'sdfs', 'sfd', 'sdfd', '2019-07-04', 'asfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `AFULL` int(5) NOT NULL,
  `AHALF` int(5) NOT NULL,
  `UFULL` int(5) NOT NULL,
  `UHALF` int(5) NOT NULL,
  `hasil` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`AFULL`, `AHALF`, `UFULL`, `UHALF`, `hasil`) VALUES
(0, 1, 0, 0, 0),
(0, 1, 0, 0, 0),
(0, 1, 0, 0, 1),
(3, 0, 0, 0, 3),
(3, 0, 0, 0, 3),
(2, 0, 0, 0, 2),
(2, 0, 0, 0, 2),
(2, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(4) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nama`, `username`, `password`) VALUES
(1, 'gofur', 'gofur', 'gofur'),
(2, 'aa', 'aa', 'aa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cek`
--
ALTER TABLE `cek`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `repair`
--
ALTER TABLE `repair`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
