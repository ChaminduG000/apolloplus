-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 08:10 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  `PIN` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`, `PIN`) VALUES
(1, 'chamindu', '171b0b2a1d800902510c18690c4172c5', '2017-05-13 11:18:49', 1678);

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(9, 'Grade 6', 6, 'A', '2021-10-21 08:27:36', NULL),
(10, 'Grade 11', 11, 'A', '2021-10-23 13:58:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(22, 7, 9, 14, 98, '2021-10-21 08:40:10', NULL),
(23, 7, 9, 11, 78, '2021-10-21 08:40:10', NULL),
(24, 7, 9, 13, 87, '2021-10-21 08:40:10', NULL),
(25, 7, 9, 10, 98, '2021-10-21 08:40:11', NULL),
(26, 7, 9, 12, 86, '2021-10-21 08:40:11', NULL),
(27, 7, 9, 9, 99, '2021-10-21 08:40:11', NULL),
(28, 7, 9, 15, 78, '2021-10-21 08:40:11', NULL),
(29, 7, 9, 16, 89, '2021-10-21 08:40:11', NULL),
(30, 7, 9, 17, 79, '2021-10-21 08:40:12', NULL),
(31, 8, 9, 14, 87, '2021-10-22 09:59:06', NULL),
(32, 8, 9, 11, 98, '2021-10-22 09:59:06', NULL),
(33, 8, 9, 13, 86, '2021-10-22 09:59:06', NULL),
(34, 8, 9, 10, 97, '2021-10-22 09:59:06', NULL),
(35, 8, 9, 12, 76, '2021-10-22 09:59:06', NULL),
(36, 8, 9, 9, 86, '2021-10-22 09:59:07', NULL),
(37, 8, 9, 15, 76, '2021-10-22 09:59:07', NULL),
(38, 8, 9, 16, 98, '2021-10-22 09:59:07', NULL),
(39, 8, 9, 17, 79, '2021-10-22 09:59:07', NULL),
(40, 9, 9, 14, 87, '2021-10-23 14:01:44', NULL),
(41, 9, 9, 11, 98, '2021-10-23 14:01:44', NULL),
(42, 9, 9, 13, 98, '2021-10-23 14:01:44', NULL),
(43, 9, 9, 10, 87, '2021-10-23 14:01:44', NULL),
(44, 9, 9, 12, 87, '2021-10-23 14:01:44', NULL),
(45, 9, 9, 9, 78, '2021-10-23 14:01:44', NULL),
(46, 9, 9, 15, 90, '2021-10-23 14:01:44', NULL),
(47, 9, 9, 16, 97, '2021-10-23 14:01:45', NULL),
(48, 9, 9, 17, 95, '2021-10-23 14:01:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(7, 'P.V Chamindu Gimhana Jayarathne', '001', 'chamindu1678@gmail.com', 'Male', '2011-05-04', 9, '2021-10-21 08:28:43', NULL, 1),
(8, 'kavinda tharindu', '002', 'kavinda@gmail.com', 'Male', '1960-07-13', 9, '2021-10-22 09:55:07', NULL, 1),
(9, 'deshan', '0003', 'deshan@gmail.com', 'Male', '1995-10-11', 9, '2021-10-23 13:57:38', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(28, 9, 9, 1, '2021-10-21 08:38:09', NULL),
(29, 9, 10, 1, '2021-10-21 08:38:18', NULL),
(30, 9, 11, 1, '2021-10-21 08:38:27', NULL),
(31, 9, 12, 1, '2021-10-21 08:38:33', NULL),
(32, 9, 13, 1, '2021-10-21 08:38:41', NULL),
(33, 9, 14, 1, '2021-10-21 08:38:49', NULL),
(34, 9, 15, 1, '2021-10-21 08:38:54', NULL),
(35, 9, 16, 1, '2021-10-21 08:39:00', NULL),
(36, 9, 17, 1, '2021-10-21 08:39:06', NULL),
(37, 10, 9, 1, '2021-10-23 13:59:33', NULL),
(38, 10, 10, 1, '2021-10-23 13:59:41', NULL),
(39, 10, 14, 1, '2021-10-23 13:59:52', NULL),
(40, 10, 11, 1, '2021-10-23 14:00:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(9, 'Sinhala', 'SI-001', '2021-10-21 08:29:28', NULL),
(10, 'Maths', 'MT-002', '2021-10-21 08:29:46', NULL),
(11, 'English', 'EN-003', '2021-10-21 08:30:06', NULL),
(12, 'Science', 'SC-004', '2021-10-21 08:30:28', NULL),
(13, 'History', 'HI-005', '2021-10-21 08:30:50', NULL),
(14, 'Buddhist', 'BU-006', '2021-10-21 08:31:45', NULL),
(15, 'subject category  I', 'Sub-001', '2021-10-21 08:36:13', NULL),
(16, 'subject category  II', 'Sub-002', '2021-10-21 08:36:26', NULL),
(17, 'subject category  III', 'Sub-003', '2021-10-21 08:36:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
