-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2017 at 06:16 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `viriya`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchID` varchar(2) NOT NULL,
  `branchNAME` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchID`, `branchNAME`) VALUES
('00', 'กทม'),
('01', 'บุรีรัมย์');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` varchar(10) NOT NULL,
  `customerNAME` varchar(60) NOT NULL,
  `customerADD` varchar(255) NOT NULL,
  `customerTEL` varchar(10) NOT NULL,
  `customerPID` varchar(13) NOT NULL,
  `customerDIV1` varchar(60) NOT NULL,
  `customerDIV2` varchar(60) NOT NULL,
  `customerDEXP` datetime NOT NULL,
  `customerTSIT` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` int(10) UNSIGNED ZEROFILL NOT NULL,
  `employeeNAME` varchar(60) NOT NULL,
  `employeePID` varchar(13) NOT NULL,
  `employeeADD` varchar(255) NOT NULL,
  `employeeTEL` varchar(10) NOT NULL,
  `employeePASS` varchar(10) NOT NULL,
  `employeeSAL` varchar(10) NOT NULL,
  `positionID` varchar(2) NOT NULL,
  `branchID` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeID`, `employeeNAME`, `employeePID`, `employeeADD`, `employeeTEL`, `employeePASS`, `employeeSAL`, `positionID`, `branchID`) VALUES
(0000000001, 'นายอนุชา วันทอง', '2', 'บุรีรัมย์ ', '0934123412', '1', '2', '0', '00'),
(0000000023, '1', '1', '1 ', '11', '1234', '15000', '0', '01'),
(0000000024, 'asd', 'asd', ' asd', 'asd', '1234', '15000', '1', '01');

-- --------------------------------------------------------

--
-- Table structure for table `insurancepremium`
--

CREATE TABLE `insurancepremium` (
  `codeIP` varchar(5) NOT NULL,
  `carIP` varchar(60) NOT NULL,
  `preIP` float(6,2) NOT NULL,
  `stampIP` tinyint(2) NOT NULL,
  `sumIP` float(6,2) NOT NULL,
  `vatIP` float(6,2) NOT NULL,
  `sumsIP` float(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insurancepremium`
--

INSERT INTO `insurancepremium` (`codeIP`, `carIP`, `preIP`, `stampIP`, `sumIP`, `vatIP`, `sumsIP`) VALUES
('1.30A', 'รถจักรยานยนต์ส่วนบุคคล ไม่เกิน 75 cc ', 150.00, 1, 151.00, 10.57, 161.57),
('1.30B', 'รถจักรยานยนต์ส่วนบุคคล เกิน 75 cc ถึง 125cc', 300.00, 2, 302.00, 21.14, 323.14),
('1.30C', 'รถจักรยานยนต์ส่วนบุคคล เกิน 125 cc ถึง 150 cc ', 400.00, 2, 402.00, 28.14, 430.14),
('1.30D', 'รถจักรยานยนต์ส่วนบุคคล เกิน 150 cc ', 600.00, 3, 603.00, 42.21, 645.21),
('2.30A', 'รถจักรยานยนต์รับจ้าง ไม่เกิน 75 ', 150.00, 1, 151.00, 10.57, 161.57),
('2.30B', 'รถจักรยานยนต์รับจ้าง เกิน 75 cc ถึง 125 cc ', 350.00, 2, 352.00, 24.64, 376.64),
('2.30C', 'รถจักรยานยนต์รับจ้าง เกิน 125 cc ถึง 150 cc ', 400.00, 2, 402.00, 28.14, 403.14),
('2.30D', 'รถจักรยานยนต์รับจ้าง เกิน 150 cc ', 600.00, 3, 603.00, 42.21, 645.21);

-- --------------------------------------------------------

--
-- Table structure for table `insurancetype`
--

CREATE TABLE `insurancetype` (
  `typeID` varchar(1) NOT NULL,
  `typeNAME` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insurancetype`
--

INSERT INTO `insurancetype` (`typeID`, `typeNAME`) VALUES
('0', 'พ.ร.บ. รถจักรยานยนต์'),
('1', 'พ.ร.บ. รถยนต์'),
('2', 'กรมธรรม์ประเภท 1'),
('3', 'กรมธรรม์ประเภท 2'),
('4', 'กรมธรรม์ประเภท 3'),
('5', 'กรมธรรม์ประเภท 4'),
('6', 'กรมธรรม์ประเภท 2+'),
('7', 'กรมธรรม์ประเภท 3+');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `positionID` varchar(2) NOT NULL,
  `positionNAME` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`positionID`, `positionNAME`) VALUES
('0', 'ผู้จัดการ'),
('1', 'พนักงาน');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `positionID` (`positionID`),
  ADD KEY `branchID` (`branchID`);

--
-- Indexes for table `insurancepremium`
--
ALTER TABLE `insurancepremium`
  ADD PRIMARY KEY (`codeIP`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`positionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`positionID`) REFERENCES `position` (`positionID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
