-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 07:54 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisysdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `password` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`password`, `userid`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(3) NOT NULL,
  `coursetype` varchar(50) NOT NULL,
  `coursename` varchar(30) NOT NULL,
  `courseduration` varchar(30) NOT NULL,
  `coursefees` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `coursetype`, `coursename`, `courseduration`, `coursefees`) VALUES
(1, 'Diploma courses', 'IT', '3 Year', '2500'),
(2, 'Certificate Courses', 'BSC', '3 Year', '8000'),
(3, 'Bachelor Degree Courses', 'BSC', '3 Year', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `courseselection`
--

CREATE TABLE `courseselection` (
  `cselectionid` int(5) NOT NULL,
  `studregid` varchar(5) NOT NULL,
  `studname` varchar(50) NOT NULL,
  `courseid` varchar(5) NOT NULL,
  `coursetype` varchar(50) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `courseduration` varchar(20) NOT NULL,
  `coursefees` varchar(5) NOT NULL,
  `startdate` varchar(20) NOT NULL,
  `cteacher` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseselection`
--

INSERT INTO `courseselection` (`cselectionid`, `studregid`, `studname`, `courseid`, `coursetype`, `coursename`, `courseduration`, `coursefees`, `startdate`, `cteacher`) VALUES
(1, '1', 'Dhananjay', '1', 'Diploma courses', 'IT', '3 Year', '2500', '11 May, 2022', 'Kharche Sir'),
(2, '2', 'Shrikrushna Kharche', '2', 'Certificate Courses', 'BSC', '3 Year', '8000', '11 May, 2022', 'Kharche Sir');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `regid` int(4) NOT NULL,
  `studname` varchar(100) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `mothername` varchar(50) NOT NULL,
  `foccupation` varchar(50) NOT NULL,
  `moccupation` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `mobileno` varchar(11) NOT NULL,
  `age` varchar(4) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `presentaddress` varchar(50) NOT NULL,
  `peraddress` varchar(50) NOT NULL,
  `adddate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`regid`, `studname`, `fathername`, `mothername`, `foccupation`, `moccupation`, `gender`, `mobileno`, `age`, `religion`, `nationality`, `emailid`, `presentaddress`, `peraddress`, `adddate`) VALUES
(1, 'Dhananjay', 'rth', 'khbk', 'Farmer', 'Farmer', 'Male', '13323', '4', 'Hindu', 'sadvb', 'asdg', 'earh', 'aerg', '11 May, 2022'),
(2, 'Shrikrushna Kharche', 'father', 'mother', 'Farmer', 'Farmer', 'Male', '1234567890', '22', 'Hindu', 'Indian', 'sk@gmail.com', 'Dabhadi', 'Dabhadi', '11 May, 2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courseselection`
--
ALTER TABLE `courseselection`
  ADD PRIMARY KEY (`cselectionid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
