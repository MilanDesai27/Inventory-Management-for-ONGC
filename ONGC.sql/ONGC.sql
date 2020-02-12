-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 30, 2018 at 11:55 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `breakdown`
--

CREATE TABLE IF NOT EXISTS `breakdown` (
  `Inventoryno` varchar(99) NOT NULL,
  `Breakdown` date NOT NULL,
  `Reason` varchar(999) NOT NULL,
  KEY `Breakdown` (`Breakdown`),
  KEY `Inventoryno` (`Inventoryno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breakdown`
--

INSERT INTO `breakdown` (`Inventoryno`, `Breakdown`, `Reason`) VALUES
('12A1D6290002', '2018-09-12', 'test'),
('12A1D6390001', '2018-06-12', 'test2'),
('12A1D6390001', '2018-05-30', 'test2'),
('12a195560009', '2018-06-26', 'test2'),
('12345A', '2018-06-13', 'test100'),
('12345A', '2018-06-13', 'test100'),
('12345A', '2018-06-13', 'test100'),
('12345A', '2018-06-13', 'test100');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `FileName` varchar(99) NOT NULL,
  `Subject` varchar(99) NOT NULL,
  `CreatedBy` varchar(99) NOT NULL,
  `CreationDate` date NOT NULL,
  `Status` varchar(99) NOT NULL,
  `ChangeDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`FileName`, `Subject`, `CreatedBy`, `CreationDate`, `Status`, `ChangeDate`) VALUES
('abc', 'abc', 'xyz', '0000-00-00', 'notready', '2018-06-25 11:19:23'),
('123', '123', '123', '2018-06-13', 'done', '2018-06-25 10:49:24'),
('MR-01', 'S3Graph', 'Rahul Kala', '2018-06-26', 'Done', '2018-06-26 10:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `IDno` int(99) NOT NULL AUTO_INCREMENT,
  `AN` int(99) NOT NULL,
  `Product` varchar(99) NOT NULL,
  `CO` date NOT NULL,
  `Inventoryno` varchar(99) NOT NULL,
  `GrossVal` int(99) NOT NULL,
  `LPN` int(99) NOT NULL,
  `LPNCPF` varchar(60) DEFAULT NULL,
  `Model` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`IDno`),
  UNIQUE KEY `AN` (`AN`),
  KEY `Inventoryno` (`Inventoryno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`IDno`, `AN`, `Product`, `CO`, `Inventoryno`, `GrossVal`, `LPN`, `LPNCPF`, `Model`) VALUES
(4, 104066559, 'colour printer', '2010-09-02', '12A1D6390001', 195477, 62193, NULL, NULL),
(5, 104070292, 'Disk Storage System Unit', '2011-12-08', '12A138620002', 3430082, 62193, NULL, NULL),
(6, 104065874, 'HIGH END GRAPHICS WORKSTATION WITH DUAL', '2010-12-01', '12A1D6290002', 656915, 62193, NULL, NULL),
(7, 106144727, 'LCD TV', '2013-12-06', '12a195560009', 257324, 6291, '1234', '44'),
(9, 12345, 'SYSTEM', '2018-06-22', '12345A', 12345, 1234, '1234', '1234'),
(10, 123, 'SYSTEM1', '2018-06-22', '123A', 123, 123, '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(99) NOT NULL,
  `password` varchar(99) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('Milan', 'Milan');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `breakdown`
--
ALTER TABLE `breakdown`
  ADD CONSTRAINT `breakdown_ibfk_1` FOREIGN KEY (`Inventoryno`) REFERENCES `info` (`Inventoryno`) ON DELETE CASCADE ON UPDATE CASCADE;
