-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2018 at 03:57 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `defect_details`
--

CREATE TABLE IF NOT EXISTS `defect_details` (
  `Defect_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) DEFAULT NULL,
  `Project_Name` varchar(100) DEFAULT NULL,
  `No_of_Modules` int(11) DEFAULT NULL,
  `Defect_Details` varchar(500) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Defect_Id`),
  KEY `Project_Name` (`Project_Name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `defect_details`
--

INSERT INTO `defect_details` (`Defect_Id`, `Username`, `Project_Name`, `No_of_Modules`, `Defect_Details`, `Date`) VALUES
(1, 'Tamal', 'Defect Tracking System', 4, 'Bug Bug Bug', '2018-04-12'),
(2, 'Sagira', 'Railway Ticket', 4, 'Fix the Book button in your project', '2018-04-14'),
(3, 'DINESH', 'airlines ticket', 4, ';knklb', '2018-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `employee_group`
--

CREATE TABLE IF NOT EXISTS `employee_group` (
  `emp_Name` varchar(20) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_group`
--

INSERT INTO `employee_group` (`emp_Name`, `groupId`) VALUES
('DINESH', 3),
('Sagira', 2),
('Tamal', 3);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `No_of_Modules` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`No_of_Modules`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `Project_Id` int(11) NOT NULL,
  `Project_Name` varchar(100) DEFAULT NULL,
  `Project_Details` varchar(100) DEFAULT NULL,
  `Project_Type` varchar(20) DEFAULT NULL,
  `No_of_Modules` int(11) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Project_Id`),
  UNIQUE KEY `Project_Name` (`Project_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Project_Id`, `Project_Name`, `Project_Details`, `Project_Type`, `No_of_Modules`, `Status`) VALUES
(1, 'Defect Tracking System', 'Defect Tracking System is for bug fixing', 'Java', 10, 'Open'),
(2, 'Railway Ticket', 'Book your train', 'Android', 10, 'Open'),
(3, 'airlines ticket', 'booking tickets', 'Java', 11, 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `project_assignment`
--

CREATE TABLE IF NOT EXISTS `project_assignment` (
  `Project_Name` varchar(100) DEFAULT NULL,
  `No_of_Modules` int(100) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Severities` varchar(20) DEFAULT NULL,
  `Testing_Type` varchar(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Priority` varchar(20) DEFAULT NULL,
  KEY `Project_Name` (`Project_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_assignment`
--

INSERT INTO `project_assignment` (`Project_Name`, `No_of_Modules`, `Start_Date`, `End_Date`, `Severities`, `Testing_Type`, `Status`, `Username`, `Priority`) VALUES
('Defect Tracking System', 10, '2018-04-15', '2018-04-22', 'Critical', 'Unit_Testing', 'Open', 'Tamal', 'Medium'),
('Defect Tracking System', 5, '2018-04-14', '2018-04-21', 'Difficult', 'System_Testing', 'Open', 'Tamal', 'High'),
('Railway Ticket', 5, '2018-04-14', '2018-04-22', 'Critical', 'Unit_Testing', 'Open', 'Sagira', 'Low'),
('airlines ticket', 10, '2018-04-08', '2018-04-13', 'Critical', 'Unit_Testing', 'Open', 'DINESH', 'Low');

-- --------------------------------------------------------

--
-- Table structure for table `project_status`
--

CREATE TABLE IF NOT EXISTS `project_status` (
  `Project_Name` varchar(100) DEFAULT NULL,
  `No_of_Modules` int(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  KEY `Project_Name` (`Project_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_status`
--

INSERT INTO `project_status` (`Project_Name`, `No_of_Modules`, `Status`) VALUES
('Defect Tracking System', 3, 'Closed'),
('Defect Tracking System', 3, 'Closed'),
('Railway Ticket', 1, 'Follow_Up'),
('airlines ticket', 10, 'Open'),
('airlines ticket', 1, 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `Id` int(11) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Id`, `Username`, `Password`, `Type`, `DOB`) VALUES
(1, 'Anurag', 'Anurag', 'ADMIN', '2010-10-10'),
(2, 'Sourav', 'Sourav', 'Software_Tester', '2010-04-10'),
(3, 'Tamal', 'tomcat', 'Software_Developer', '2010-04-10'),
(4, 'Tushar', 'Tushar', 'Manager', '2010-04-10'),
(5, 'Sagira', 'Sagira', 'Software_Developer', '2010-04-10'),
(6, 'DINESH', 'dinesh', 'Software_Developer', '2010-04-10'),
(7, 'umama', 'umama', 'Software_Developer', '2010-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `Status_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Status_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`Status_Id`, `Status`) VALUES
(1, 'Open'),
(2, 'Closed'),
(3, 'Pending'),
(4, 'Follow_Up');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `defect_details`
--
ALTER TABLE `defect_details`
  ADD CONSTRAINT `defect_details_ibfk_1` FOREIGN KEY (`Project_Name`) REFERENCES `project` (`Project_Name`);

--
-- Constraints for table `project_assignment`
--
ALTER TABLE `project_assignment`
  ADD CONSTRAINT `project_assignment_ibfk_1` FOREIGN KEY (`Project_Name`) REFERENCES `project` (`Project_Name`);

--
-- Constraints for table `project_status`
--
ALTER TABLE `project_status`
  ADD CONSTRAINT `project_status_ibfk_1` FOREIGN KEY (`Project_Name`) REFERENCES `project` (`Project_Name`);
