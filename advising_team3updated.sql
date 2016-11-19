-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2016 at 01:50 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `advising`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `ApptID` int(11) NOT NULL AUTO_INCREMENT,
  `ApptDate` date NOT NULL,
  `ApptStartHour` int(11) NOT NULL,
  `ApptStartMin` int(11) NOT NULL,
  `ApptEndHour` int(11) NOT NULL,
  `ApptEndMin` int(11) NOT NULL,
  `ApptType` varchar(20) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `StudentID` char(10) NOT NULL,
  `StudentName` varchar(20) DEFAULT NULL,
  `StudentMajor` varchar(20) DEFAULT NULL,
  `StudentEmail` varchar(40) DEFAULT NULL,
  `AdvisorName` varchar(20) NOT NULL,
  `AdvisorEmail` text NOT NULL,
  PRIMARY KEY (`ApptID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`ApptID`, `ApptDate`, `ApptStartHour`, `ApptStartMin`, `ApptEndHour`, `ApptEndMin`, `ApptType`, `Description`, `StudentID`, `StudentName`, `StudentMajor`, `StudentEmail`, `AdvisorName`, `AdvisorEmail`) VALUES
(1, '2016-02-02', 9, 45, 10, 0, 'New Student', 'sd', '1000163388', 'zc', 'CSE', 'sirivolulakshman@gmail.com', 'Linda Barasch', 'admin@mavs.uta.edu'),
(2, '2016-11-22', 9, 0, 9, 15, 'New Student', 'New student advising ', '1001238152', 'aadikulkarni91', 'CSE', 'aaditya.kulkarni@mavs.uta.edu', 'Admin', 'admin@mavs.uta.edu'),
(4, '2016-11-29', 9, 0, 9, 15, 'New Student', 'try 3', '1001238152', 'aadikulkarni91', 'CSE', 'aaditya.kulkarni@mavs.uta.edu', 'Admin', 'admin@mavs.uta.edu');

-- --------------------------------------------------------

--
-- Stand-in structure for view `apptfw`
--
CREATE TABLE IF NOT EXISTS `apptfw` (
`ApptID` int(11)
,`ApptDate` date
,`ApptStartHour` int(11)
,`ApptStartMin` int(11)
,`ApptEndHour` int(11)
,`ApptEndMin` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `apptslot`
--
CREATE TABLE IF NOT EXISTS `apptslot` (
`SlotID` int(11)
,`SlotDate` date
,`SlotStartHour` int(11)
,`SlotStartMin` int(11)
,`ApptID` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `availslot`
--
CREATE TABLE IF NOT EXISTS `availslot` (
`SlotID` int(11)
,`SlotDate` date
,`SlotStartHour` int(11)
,`SlotStartMin` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `bugreport`
--

CREATE TABLE IF NOT EXISTS `bugreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bugreport`
--

INSERT INTO `bugreport` (`id`, `report`, `timestamp`) VALUES
(2, 'Test', '2016-02-28 21:55:12'),
(3, 'test1', '2016-02-28 21:56:28'),
(4, 'Test BUG 1', '2016-02-29 01:24:25'),
(5, 'TEST BUG 4', '2016-02-29 01:41:39'),
(6, 'report test 1', '2016-03-02 00:26:22'),
(7, 'report bug 2', '2016-03-02 00:27:05'),
(8, 'Aaditya''s test bug', '2016-10-05 19:41:06'),
(9, 'Testing report bug', '2016-10-12 19:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `feedback`, `timestamp`) VALUES
(3, 'Test 1', '2016-03-01 23:44:12'),
(4, 'Test 2', '2016-03-02 00:15:13'),
(5, 'Test 3', '2016-03-02 00:15:58'),
(6, 'Test 4', '2016-03-02 00:21:46'),
(7, 'test 5', '2016-03-02 00:23:16'),
(8, 'Aaditya''s test feedback', '2016-10-05 19:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE IF NOT EXISTS `slot` (
  `SlotID` int(11) NOT NULL AUTO_INCREMENT,
  `SlotDate` date NOT NULL,
  `SlotStartHour` int(11) NOT NULL,
  `SlotStartMin` int(11) NOT NULL,
  PRIMARY KEY (`SlotID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`SlotID`, `SlotDate`, `SlotStartHour`, `SlotStartMin`) VALUES
(1, '2016-02-02', 7, 0),
(2, '2016-02-02', 7, 15),
(3, '2016-02-02', 7, 30),
(4, '2016-02-02', 7, 45),
(5, '2016-02-02', 8, 0),
(6, '2016-02-02', 8, 15),
(7, '2016-02-02', 8, 30),
(8, '2016-02-02', 8, 45),
(9, '2016-02-02', 9, 0),
(10, '2016-02-02', 9, 15),
(11, '2016-02-02', 9, 30),
(12, '2016-02-02', 9, 45),
(13, '2016-10-12', 8, 0),
(14, '2016-10-12', 8, 15),
(15, '2016-10-12', 8, 30),
(16, '2016-10-12', 8, 45),
(17, '2016-10-12', 9, 0),
(18, '2016-10-12', 9, 15),
(19, '2016-10-12', 9, 30),
(20, '2016-10-12', 9, 45),
(21, '2016-10-19', 8, 0),
(22, '2016-10-19', 8, 15),
(23, '2016-10-19', 8, 30),
(24, '2016-10-19', 8, 45),
(25, '2016-10-19', 9, 0),
(26, '2016-10-19', 9, 15),
(27, '2016-10-19', 9, 30),
(28, '2016-10-19', 9, 45),
(29, '2016-10-26', 8, 0),
(30, '2016-10-26', 8, 15),
(31, '2016-10-26', 8, 30),
(32, '2016-10-26', 8, 45),
(33, '2016-10-26', 9, 0),
(34, '2016-10-26', 9, 15),
(35, '2016-10-26', 9, 30),
(36, '2016-10-26', 9, 45),
(37, '2016-11-02', 8, 0),
(38, '2016-11-02', 8, 15),
(39, '2016-11-02', 8, 30),
(40, '2016-11-02', 8, 45),
(41, '2016-11-02', 9, 0),
(42, '2016-11-02', 9, 15),
(43, '2016-11-02', 9, 30),
(44, '2016-11-02', 9, 45),
(45, '2016-11-09', 8, 0),
(46, '2016-11-09', 8, 15),
(47, '2016-11-09', 8, 30),
(48, '2016-11-09', 8, 45),
(49, '2016-11-09', 9, 0),
(50, '2016-11-09', 9, 15),
(51, '2016-11-09', 9, 30),
(52, '2016-11-09', 9, 45),
(53, '2016-11-16', 8, 0),
(54, '2016-11-16', 8, 15),
(55, '2016-11-16', 8, 30),
(56, '2016-11-16', 8, 45),
(57, '2016-11-16', 9, 0),
(58, '2016-11-16', 9, 15),
(59, '2016-11-16', 9, 30),
(60, '2016-11-16', 9, 45),
(61, '2016-10-11', 10, 0),
(62, '2016-10-11', 10, 15),
(63, '2016-10-11', 10, 30),
(64, '2016-10-11', 10, 45),
(65, '2016-10-18', 10, 0),
(66, '2016-10-18', 10, 15),
(67, '2016-10-18', 10, 30),
(68, '2016-10-18', 10, 45),
(69, '2016-11-22', 9, 0),
(70, '2016-11-22', 9, 15),
(71, '2016-11-22', 9, 30),
(72, '2016-11-22', 9, 45),
(73, '2016-11-29', 9, 0),
(74, '2016-11-29', 9, 15),
(75, '2016-11-29', 9, 30),
(76, '2016-11-29', 9, 45),
(77, '2016-12-06', 9, 0),
(78, '2016-12-06', 9, 15),
(79, '2016-12-06', 9, 30),
(80, '2016-12-06', 9, 45);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(30) NOT NULL,
  `UserPassword` varchar(20) NOT NULL,
  `UserName` varchar(30) DEFAULT NULL,
  `UserDepartment` varchar(30) DEFAULT NULL,
  `UserRank` int(11) DEFAULT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserEmail`, `UserPassword`, `UserName`, `UserDepartment`, `UserRank`, `TimeStamp`) VALUES
(1, 'admin@mavs.uta.edu', '-1233833033', 'Admin', 'CSE', 1, '2016-10-05 19:25:50'),
(2, 'abc@mavs.uta.edu', '1203761002', 'abc', 'Computer Science', 2, '2016-10-12 19:48:53'),
(3, 'abcd@mavs.uta.edu', '-1233833033', 'abc', 'Computer Science', 0, '2016-10-05 19:27:18'),
(4, 'user1@mavs.uta.edu', '48690', 'user', 'Computer Science', 2, '2016-03-07 21:19:56'),
(5, 'advisor@mavs.uta.edu', '96354', 'zxc', 'Computer Science', 0, '2016-03-07 21:19:56'),
(7, 'krishna.muppaneni@mavs.uta.edu', '550921635', 'KC', 'CSE', 9, '2016-03-07 22:31:15'),
(11, 'aaditya.kulkarni@mavs.uta.edu', '1203746614', 'aadikulkarni91', 'CSE', 2, '2016-11-18 23:31:53');

-- --------------------------------------------------------

--
-- Structure for view `apptfw`
--
DROP TABLE IF EXISTS `apptfw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `apptfw` AS select `appointment`.`ApptID` AS `ApptID`,`appointment`.`ApptDate` AS `ApptDate`,`appointment`.`ApptStartHour` AS `ApptStartHour`,`appointment`.`ApptStartMin` AS `ApptStartMin`,`appointment`.`ApptEndHour` AS `ApptEndHour`,`appointment`.`ApptEndMin` AS `ApptEndMin` from `appointment` order by `appointment`.`ApptDate`;

-- --------------------------------------------------------

--
-- Structure for view `apptslot`
--
DROP TABLE IF EXISTS `apptslot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `apptslot` AS select `slot`.`SlotID` AS `SlotID`,`slot`.`SlotDate` AS `SlotDate`,`slot`.`SlotStartHour` AS `SlotStartHour`,`slot`.`SlotStartMin` AS `SlotStartMin`,`apptfw`.`ApptID` AS `ApptID` from (`slot` join `apptfw`) where (((`slot`.`SlotDate` = `apptfw`.`ApptDate`) and (`slot`.`SlotStartHour` <> `apptfw`.`ApptEndHour`) and (`slot`.`SlotStartHour` = `apptfw`.`ApptStartHour`) and (`slot`.`SlotStartMin` >= `apptfw`.`ApptStartMin`)) or ((`slot`.`SlotDate` = `apptfw`.`ApptDate`) and (`slot`.`SlotStartHour` > `apptfw`.`ApptStartHour`) and (`slot`.`SlotStartHour` < `apptfw`.`ApptEndHour`)) or ((`slot`.`SlotDate` = `apptfw`.`ApptDate`) and (`slot`.`SlotStartHour` <> `apptfw`.`ApptStartHour`) and (`slot`.`SlotStartHour` = `apptfw`.`ApptEndHour`) and (`slot`.`SlotStartMin` < `apptfw`.`ApptEndMin`)) or ((`slot`.`SlotDate` = `apptfw`.`ApptDate`) and (`slot`.`SlotStartHour` = `apptfw`.`ApptStartHour`) and (`slot`.`SlotStartHour` = `apptfw`.`ApptEndHour`) and (`slot`.`SlotStartMin` >= `apptfw`.`ApptStartMin`) and (`slot`.`SlotStartMin` < `apptfw`.`ApptEndMin`)));

-- --------------------------------------------------------

--
-- Structure for view `availslot`
--
DROP TABLE IF EXISTS `availslot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `availslot` AS select `slot`.`SlotID` AS `SlotID`,`slot`.`SlotDate` AS `SlotDate`,`slot`.`SlotStartHour` AS `SlotStartHour`,`slot`.`SlotStartMin` AS `SlotStartMin` from `slot` where (not(`slot`.`SlotID` in (select `apptslot`.`SlotID` from `apptslot`)));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
