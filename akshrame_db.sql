-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2021 at 11:33 PM
-- Server version: 10.3.32-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akshrame_db`
--
CREATE DATABASE IF NOT EXISTS `akshrame_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `akshrame_db`;

-- --------------------------------------------------------

--
-- Table structure for table `AGENT`
--

DROP TABLE IF EXISTS `AGENT`;
CREATE TABLE `AGENT` (
  `AG_ID` char(6) NOT NULL,
  `AG_NAME` varchar(25) DEFAULT NULL,
  `AG_GPS_LATITUDE` varchar(20) DEFAULT NULL,
  `AG_GPS_LONGITUDE` varchar(20) DEFAULT NULL,
  `AG_DESC` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AGENT`
--

INSERT INTO `AGENT` (`AG_ID`, `AG_NAME`, `AG_GPS_LATITUDE`, `AG_GPS_LONGITUDE`, `AG_DESC`) VALUES
('A0001', 'Pikachu', '34.633208', '-106.046207', 'Pet agent'),
('A0002', 'Charmander', '35.496456', '-95.511069', 'Pet agent'),
('A0003', 'iPhone Agent', '45.120053', '-113.771975', 'Marketing Agent'),
('A0004', 'Resturant Agent ', '36.256092', '-108.005196', 'Personal resturant agent'),
('A0005', 'Building Agent', '36.256092', '-88.339605', 'Personal building agent');

-- --------------------------------------------------------

--
-- Table structure for table `AGENT_CONTENT`
--

DROP TABLE IF EXISTS `AGENT_CONTENT`;
CREATE TABLE `AGENT_CONTENT` (
  `AC_ID` char(8) NOT NULL,
  `CONTENT_ID` char(8) DEFAULT NULL,
  `AG_ID` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AGENT_CONTENT`
--

INSERT INTO `AGENT_CONTENT` (`AC_ID`, `CONTENT_ID`, `AG_ID`) VALUES
('CA000001', 'C0000001', 'A0005'),
('CA000002', 'C0000002', 'A0005'),
('CA000003', 'C0000004', 'A0002'),
('CA000004', 'C0000006', 'A0004'),
('CA000005', 'C0000006', 'A0001');

-- --------------------------------------------------------

--
-- Table structure for table `AGENT_PERSON`
--

DROP TABLE IF EXISTS `AGENT_PERSON`;
CREATE TABLE `AGENT_PERSON` (
  `AP_ID` char(8) NOT NULL,
  `PER_ID` char(6) DEFAULT NULL,
  `AG_ID` char(6) DEFAULT NULL,
  `AP_DATE` date DEFAULT NULL,
  `AP_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AGENT_PERSON`
--

INSERT INTO `AGENT_PERSON` (`AP_ID`, `PER_ID`, `AG_ID`, `AP_DATE`, `AP_TIME`) VALUES
('00000001', 'P00001', 'A0001', '2021-10-12', '42:30:40'),
('00000002', 'P00002', 'A0002', '2021-10-11', '33:16:33'),
('00000003', 'P00003', 'A0001', '2021-11-15', '33:16:33'),
('00000004', 'P00003', 'A0003', '2021-11-09', '37:17:31'),
('00000005', 'P00003', 'A0002', '2021-12-05', '41:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `AGENT_TASK`
--

DROP TABLE IF EXISTS `AGENT_TASK`;
CREATE TABLE `AGENT_TASK` (
  `AT_ID` varchar(6) NOT NULL,
  `TASK_ID` char(6) DEFAULT NULL,
  `AG_ID` char(6) DEFAULT NULL,
  `AT_PRIORITY` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AGENT_TASK`
--

INSERT INTO `AGENT_TASK` (`AT_ID`, `TASK_ID`, `AG_ID`, `AT_PRIORITY`) VALUES
('AT0001', 'T0001', 'A0001', 1),
('AT0002', 'T0003', 'A0003', 2),
('AT0003', 'T0002', 'A0002', 2),
('AT0004', 'T0002', 'A0005', 1),
('AT0005', 'T0004', 'A0003', 3);

-- --------------------------------------------------------

--
-- Table structure for table `BUILDING`
--

DROP TABLE IF EXISTS `BUILDING`;
CREATE TABLE `BUILDING` (
  `BUILD_ID` char(7) NOT NULL,
  `BUILD_NAME` varchar(50) DEFAULT NULL,
  `BUILD_ADDRESS_LINE1` varchar(50) DEFAULT NULL,
  `BUILD_GPS_LATITUDE` varchar(20) DEFAULT NULL,
  `BUILD_GPS_LONGITUDE` varchar(20) DEFAULT NULL,
  `BUILD_DESCTRIPTION` varchar(100) DEFAULT NULL,
  `BUILD_TYPE` varchar(20) DEFAULT NULL,
  `BUILD_CITY` varchar(50) DEFAULT NULL,
  `BUILD_ZIPCODE` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `BUILDING`
--

INSERT INTO `BUILDING` (`BUILD_ID`, `BUILD_NAME`, `BUILD_ADDRESS_LINE1`, `BUILD_GPS_LATITUDE`, `BUILD_GPS_LONGITUDE`, `BUILD_DESCTRIPTION`, `BUILD_TYPE`, `BUILD_CITY`, `BUILD_ZIPCODE`) VALUES
('B000001', 'The One Bel Air', 'Monument Circle', '34.088570', '-118.451790', 'One of the notable buildings in United States', 'OB', 'Indianapolis', '42767'),
('B000002', 'Salesforce Tower', 'Marion County Building', '37.7899', '-122.3969', 'Tallest building in Indiana since its completion in 1990', 'OB', 'Indianapolsi', '48737'),
('B000003', 'Bazbeaux Pizza', '333 Massachusetts Ave', '39.978226', '-86.129642', 'Pizza shop in indianapolis downtown', 'R', 'Indianapolis', '62030'),
('B000004', 'IU Health', '550 University Blvd', '39.77654', '-85.99462', 'IU Health hospital', 'OB', 'Indianapolis', '65987'),
('B000005', 'BRU Burger Bar', '410 Massachusetts Ave', '18.047035', '-77.506408', 'Eat out for burgers and fries ', 'R', 'Indianapolis', '46245'),
('B000006', 'One Indiana Square', '1 Indiana Square', '-8.595502', '-60.511003', 'One Indiana Square, is a 36-story building ', 'OB', 'Indianapolis', '45676'),
('B000007', 'Market Tower', '10 West Market Street', '32.088783', '-90.009390', 'Market Tower is a skyscraper located', 'OB', 'Indianapolis', '46323'),
('B000008', 'City–County Building', '200 East Washington Street', '36.161534', '-103.728934', 'City–County Building is a 28-story building', 'OB', 'Indianapolis', '53545'),
('B000009', 'The Oakmont 4.7', '323 N Delaware St Suite B', '35.305416', '-87.942659', 'American restaurant', 'R', 'Indianapolis', '45676'),
('B000010', 'Harry & Izzy\'s', '153 S Illinois St', '42.152547', '-108.661764', 'a contemporary spin on chops, seafood & pizza', 'R', 'Indianapolis', '45938'),
('B000011', 'Tony\'s of Indianapolis', '110 W Washington St', '44.454698', '-116.393009', 'sophisticated setting with an extensive wine list', 'R', 'Indianapolis', '45632'),
('B000012', 'The Fashion Mall at Keystone', '8702 Keystone Crossing', '40.301875', '-89.361429', 'The Fashion Mall, is an upscale shopping center in the northeast section of the city of Indianapolis', 'MB', 'Indianapolis', '45632'),
('B000013', 'Circle Centre Mall', '49 W Maryland St', '52.580803', '41.679835', 'Indoor shopping mall located in Indianapolis', 'MB', 'Indianapolis', '45676'),
('B000014', 'West Side Shoppes', 'W 10th St', '49.258247', '-80.527765', 'Shopping mall in Indianapolis', 'MB', 'Indianapolis', '46328'),
('B000015', 'Oaklandon Plaza', '1 N Pennsylvania St', '55.069983', '52.904014', 'Shopping mall in Indianapolis', 'MB', 'Indianapolis', '53545'),
('B000016', 'Lafayette Square Mall 3.4', '3919 Lafayette Rd', '35.018004', '-82.999266', 'Lafayette Square Mall is a shopping mall in Indianapolis', 'MB', 'Indianapolis', '4560');

-- --------------------------------------------------------

--
-- Table structure for table `BUILDING_AGENT`
--

DROP TABLE IF EXISTS `BUILDING_AGENT`;
CREATE TABLE `BUILDING_AGENT` (
  `BA_ID` char(8) NOT NULL,
  `AG_ID` char(8) DEFAULT NULL,
  `BUILD_ID` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `BUILDING_AGENT`
--

INSERT INTO `BUILDING_AGENT` (`BA_ID`, `AG_ID`, `BUILD_ID`) VALUES
('BA000001', 'A0004', 'B000004'),
('BA000002', 'A0003', 'B000005'),
('BA000003', 'A0003', 'B000002'),
('BA000004', 'A0004', 'B000003'),
('BA000005', 'A0003', 'B000003');

-- --------------------------------------------------------

--
-- Table structure for table `CONTENT`
--

DROP TABLE IF EXISTS `CONTENT`;
CREATE TABLE `CONTENT` (
  `CONTENT_ID` char(8) NOT NULL,
  `CONTENT_MESSAGE` varchar(100) DEFAULT NULL,
  `CONTENT_TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CONTENT`
--

INSERT INTO `CONTENT` (`CONTENT_ID`, `CONTENT_MESSAGE`, `CONTENT_TYPE`) VALUES
('C0000001', 'Oneplus will soon launch premium smartphone will likely launch with a Pro sibling ', 'Announcement'),
('C0000002', 'New MacBook Pro with M1 Pro or M1 Max chip, all-new AirPods, and HomePod mini in five bold colors', 'Announcement'),
('C0000003', 'Googel new update', 'News'),
('C0000004', 'New iphone release ', 'News'),
('C0000005', 'F1 Race update', 'News'),
('C0000006', 'Dish of the day', 'Announcement');

-- --------------------------------------------------------

--
-- Table structure for table `HASHTAG`
--

DROP TABLE IF EXISTS `HASHTAG`;
CREATE TABLE `HASHTAG` (
  `TAG_ID` char(7) NOT NULL,
  `BUILD_ID` char(7) DEFAULT NULL,
  `TAG_USERNAME` varchar(25) DEFAULT NULL,
  `TAG_TYPE` char(100) DEFAULT NULL,
  `TAG_PLATFORM` char(10) DEFAULT NULL,
  `TAG_LINK` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `HASHTAG`
--

INSERT INTO `HASHTAG` (`TAG_ID`, `BUILD_ID`, `TAG_USERNAME`, `TAG_TYPE`, `TAG_PLATFORM`, `TAG_LINK`) VALUES
('H000001', 'B000003', 'Subway', 'Review', 'Twitter', 'https://twitter.com/SUBWAY/'),
('H000002', 'B000002', 'Salesforce', 'Review', 'Twitter', 'https://twitter.com/salesforce/'),
('H000003', 'B000003', 'Bazbeaux Pizza', 'Announcemnet', 'Facebook', 'https://www.facebook.com/photo.php?fbid=10224311837897678&set=pcb.1022431183853'),
('H000004', 'B000004', 'IU Health ', 'Announcement', 'Instagram', 'https://www.instagram.com/p/CW81e_8rLNM/'),
('H000005', 'B000004', 'IU Health ', 'Celebration', 'Instagram', 'https://www.instagram.com/p/CUaH513LSfL/');

-- --------------------------------------------------------

--
-- Table structure for table `LOGIN`
--

DROP TABLE IF EXISTS `LOGIN`;
CREATE TABLE `LOGIN` (
  `LOG_USER_NAME` varchar(50) NOT NULL,
  `LOG_PASSWORD` varchar(30) DEFAULT NULL,
  `PER_ID` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `LOGIN`
--

INSERT INTO `LOGIN` (`LOG_USER_NAME`, `LOG_PASSWORD`, `PER_ID`) VALUES
('david.will@gmail.com', 'qwerty12345', 'P00001'),
('james@gmail.com', 'mankind', 'P00004'),
('rames@gmail.com', 'something', 'P00005'),
('sam@yahoo.com', 'manifest', 'P00003'),
('steve@outlook.com', 'whitecolor', 'P00002');

-- --------------------------------------------------------

--
-- Table structure for table `LOGIN_HISTORY`
--

DROP TABLE IF EXISTS `LOGIN_HISTORY`;
CREATE TABLE `LOGIN_HISTORY` (
  `HIS_ID` char(10) NOT NULL,
  `HIS_DATE` date DEFAULT NULL,
  `HIS_LOGIN_TIME` time DEFAULT NULL,
  `HIS_LOGOUT_TIME` time DEFAULT NULL,
  `LOG_USER_NAME` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `LOGIN_HISTORY`
--

INSERT INTO `LOGIN_HISTORY` (`HIS_ID`, `HIS_DATE`, `HIS_LOGIN_TIME`, `HIS_LOGOUT_TIME`, `LOG_USER_NAME`) VALUES
('H000000001', '2021-06-12', '40:23:11', '50:23:11', 'david.will@gmail.com'),
('H000000002', '2021-10-10', '30:23:11', '50:13:00', 'david.will@gmail.com'),
('H000000003', '2020-01-10', '10:20:11', '30:23:11', 'rames@gmail.com'),
('H000000004', '2021-11-05', '30:20:11', '50:23:11', 'steve@outlook.com'),
('H000000005', '2021-08-04', '30:20:11', '50:23:11', 'sam@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `MALL_BUILDING`
--

DROP TABLE IF EXISTS `MALL_BUILDING`;
CREATE TABLE `MALL_BUILDING` (
  `BUILD_ID` char(7) NOT NULL,
  `MALL_NO_OF_SHOPS` int(6) DEFAULT NULL,
  `MALL_NO_OF_RESTURANTS` int(6) DEFAULT NULL,
  `MALL_NO_OF_FLOOR` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MALL_BUILDING`
--

INSERT INTO `MALL_BUILDING` (`BUILD_ID`, `MALL_NO_OF_SHOPS`, `MALL_NO_OF_RESTURANTS`, `MALL_NO_OF_FLOOR`) VALUES
('B000012', 29, 5, 3),
('B000013', 10, 2, 2),
('B000014', 20, 6, 3),
('B000015', 30, 8, 4),
('B000016', 15, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `OFFICE_BUILDING`
--

DROP TABLE IF EXISTS `OFFICE_BUILDING`;
CREATE TABLE `OFFICE_BUILDING` (
  `BUILD_ID` char(7) NOT NULL,
  `OB_NO_OF_FLOOR` int(3) DEFAULT NULL,
  `OB_BUILDING_STRENGTH` int(5) DEFAULT NULL,
  `OB_OFFICE_TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `OFFICE_BUILDING`
--

INSERT INTO `OFFICE_BUILDING` (`BUILD_ID`, `OB_NO_OF_FLOOR`, `OB_BUILDING_STRENGTH`, `OB_OFFICE_TYPE`) VALUES
('B000001', 18, 30000, 'Commercial'),
('B000002', 20, 2000, 'Commercial'),
('B000004', 10, 200, 'Hospital'),
('B000006', 22, 300, 'Office Building'),
('B000007', 19, 50, 'Office Building'),
('B000008', 10, 200, 'Commercial');

-- --------------------------------------------------------

--
-- Table structure for table `PERSON`
--

DROP TABLE IF EXISTS `PERSON`;
CREATE TABLE `PERSON` (
  `PER_ID` char(6) NOT NULL,
  `PER_FNAME` varchar(20) DEFAULT NULL,
  `PER_LASTNAME` varchar(20) DEFAULT NULL,
  `PER_DOB` date DEFAULT NULL,
  `PER_EMAIL` varchar(30) DEFAULT NULL,
  `PER_ROLE` char(10) DEFAULT NULL,
  `PER_ZIPCODE` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PERSON`
--

INSERT INTO `PERSON` (`PER_ID`, `PER_FNAME`, `PER_LASTNAME`, `PER_DOB`, `PER_EMAIL`, `PER_ROLE`, `PER_ZIPCODE`) VALUES
('P00001', 'David', 'William', '1994-04-12', 'david.will@gmail.com', 'Customer', '45030'),
('P00002', 'Steve', 'Jame', '1992-09-03', 'steve@outlook.com', 'Customer', '42948'),
('P00003', 'Sam', 'Goods', '1988-02-13', 'sam@yahoo.com', 'Customer', '41234'),
('P00004', 'James', 'Mary', '1990-05-03', 'james@gmail.com', 'Admin', '45235'),
('P00005', 'Rams', 'Walk', '2001-12-03', 'rames@gmail.com', 'Admin', '45222');

-- --------------------------------------------------------

--
-- Table structure for table `PERSON_GPS`
--

DROP TABLE IF EXISTS `PERSON_GPS`;
CREATE TABLE `PERSON_GPS` (
  `PG_ID` char(5) DEFAULT NULL,
  `BUILD_ID` char(7) DEFAULT NULL,
  `PER_ID` char(6) DEFAULT NULL,
  `PG_DATE` date DEFAULT NULL,
  `PG_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PERSON_GPS`
--

INSERT INTO `PERSON_GPS` (`PG_ID`, `BUILD_ID`, `PER_ID`, `PG_DATE`, `PG_TIME`) VALUES
('00001', 'B000001', 'P00001', '2021-12-01', '25:26:15'),
('00002', 'B000002', 'P00005', '2021-10-18', '15:31:16'),
('00003', 'B000004', 'P00001', '2021-07-12', '25:26:15'),
('00004', 'B000003', 'P00002', '2021-03-15', '65:26:15'),
('00005', 'B000003', 'P00005', '2021-12-02', '65:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `RESTAURANT`
--

DROP TABLE IF EXISTS `RESTAURANT`;
CREATE TABLE `RESTAURANT` (
  `BUILD_ID` char(7) NOT NULL,
  `RES_GOOGLE_RATING` float DEFAULT NULL,
  `RES_YELP_RATING` float DEFAULT NULL,
  `RES_NO_OF_STAFF_WORKING` int(3) DEFAULT NULL,
  `RES_RESTURANT_TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RESTAURANT`
--

INSERT INTO `RESTAURANT` (`BUILD_ID`, `RES_GOOGLE_RATING`, `RES_YELP_RATING`, `RES_NO_OF_STAFF_WORKING`, `RES_RESTURANT_TYPE`) VALUES
('B000003', 4.3, 3.4, 20, 'pizza'),
('B000005', 4.4, 5.5, 10, 'Burger'),
('B000009', 3.4, 4.1, 18, 'American'),
('B000010', 4.1, 4.5, 20, 'Pizza'),
('B000011', 4.2, 3.9, 20, 'Wine');

-- --------------------------------------------------------

--
-- Table structure for table `TASK`
--

DROP TABLE IF EXISTS `TASK`;
CREATE TABLE `TASK` (
  `TASK_ID` varchar(6) NOT NULL,
  `TASK_NAME` varchar(25) DEFAULT NULL,
  `TASK_DESCRIPTION` varchar(100) DEFAULT NULL,
  `TASK_TYPE` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `TASK`
--

INSERT INTO `TASK` (`TASK_ID`, `TASK_NAME`, `TASK_DESCRIPTION`, `TASK_TYPE`) VALUES
('T0001', 'Marketing - Phone ', 'Marketing iphone ', 'Marketing'),
('T0002', 'Marketing - Laptop', 'Marketing laptop', 'Marketing'),
('T0003', 'Awarness on GW ', 'Spread awarness on global warming', 'Social Awarness'),
('T0004', 'Awarness on plastic usage', 'Spread awarness on the negative effects of plastic usage', 'Soical Awarness '),
('T0005', 'Selling Tickets', 'Sell tickets for basketball match', 'Selling');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AGENT`
--
ALTER TABLE `AGENT`
  ADD PRIMARY KEY (`AG_ID`);

--
-- Indexes for table `AGENT_CONTENT`
--
ALTER TABLE `AGENT_CONTENT`
  ADD PRIMARY KEY (`AC_ID`),
  ADD KEY `FK_AGENT_CONTENT_ID` (`AG_ID`),
  ADD KEY `FK_CONTENT_ID` (`CONTENT_ID`);

--
-- Indexes for table `AGENT_PERSON`
--
ALTER TABLE `AGENT_PERSON`
  ADD PRIMARY KEY (`AP_ID`),
  ADD KEY `FK_AGENT_ID` (`AG_ID`),
  ADD KEY `FK_PER_AGENT_ID` (`PER_ID`);

--
-- Indexes for table `AGENT_TASK`
--
ALTER TABLE `AGENT_TASK`
  ADD PRIMARY KEY (`AT_ID`),
  ADD KEY `FK_TASK_ID` (`TASK_ID`),
  ADD KEY `FK_AGEN_TASK_ID` (`AG_ID`);

--
-- Indexes for table `BUILDING`
--
ALTER TABLE `BUILDING`
  ADD PRIMARY KEY (`BUILD_ID`);

--
-- Indexes for table `BUILDING_AGENT`
--
ALTER TABLE `BUILDING_AGENT`
  ADD PRIMARY KEY (`BA_ID`),
  ADD KEY `FK_BUILD_CON_ID` (`BUILD_ID`),
  ADD KEY `FK_AGENT_CON_ID` (`AG_ID`);

--
-- Indexes for table `CONTENT`
--
ALTER TABLE `CONTENT`
  ADD PRIMARY KEY (`CONTENT_ID`);

--
-- Indexes for table `HASHTAG`
--
ALTER TABLE `HASHTAG`
  ADD PRIMARY KEY (`TAG_ID`),
  ADD KEY `FK_BUILD_ID` (`BUILD_ID`);

--
-- Indexes for table `LOGIN`
--
ALTER TABLE `LOGIN`
  ADD PRIMARY KEY (`LOG_USER_NAME`),
  ADD KEY `FK_LOGIN_ID` (`PER_ID`);

--
-- Indexes for table `LOGIN_HISTORY`
--
ALTER TABLE `LOGIN_HISTORY`
  ADD PRIMARY KEY (`HIS_ID`),
  ADD KEY `FK_LOGIN_HIS_ID` (`LOG_USER_NAME`);

--
-- Indexes for table `MALL_BUILDING`
--
ALTER TABLE `MALL_BUILDING`
  ADD PRIMARY KEY (`BUILD_ID`);

--
-- Indexes for table `OFFICE_BUILDING`
--
ALTER TABLE `OFFICE_BUILDING`
  ADD PRIMARY KEY (`BUILD_ID`);

--
-- Indexes for table `PERSON`
--
ALTER TABLE `PERSON`
  ADD PRIMARY KEY (`PER_ID`);

--
-- Indexes for table `PERSON_GPS`
--
ALTER TABLE `PERSON_GPS`
  ADD KEY `FK_BUILD_GPS_ID` (`BUILD_ID`),
  ADD KEY `FK_PER_GPS_ID` (`PER_ID`);

--
-- Indexes for table `RESTAURANT`
--
ALTER TABLE `RESTAURANT`
  ADD PRIMARY KEY (`BUILD_ID`);

--
-- Indexes for table `TASK`
--
ALTER TABLE `TASK`
  ADD PRIMARY KEY (`TASK_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AGENT_CONTENT`
--
ALTER TABLE `AGENT_CONTENT`
  ADD CONSTRAINT `FK_AGENT_CONTENT_ID` FOREIGN KEY (`AG_ID`) REFERENCES `AGENT` (`AG_ID`),
  ADD CONSTRAINT `FK_CONTENT_ID` FOREIGN KEY (`CONTENT_ID`) REFERENCES `CONTENT` (`CONTENT_ID`);

--
-- Constraints for table `AGENT_PERSON`
--
ALTER TABLE `AGENT_PERSON`
  ADD CONSTRAINT `FK_AGENT_ID` FOREIGN KEY (`AG_ID`) REFERENCES `AGENT` (`AG_ID`),
  ADD CONSTRAINT `FK_PER_AGENT_ID` FOREIGN KEY (`PER_ID`) REFERENCES `PERSON` (`PER_ID`);

--
-- Constraints for table `AGENT_TASK`
--
ALTER TABLE `AGENT_TASK`
  ADD CONSTRAINT `FK_AGEN_TASK_ID` FOREIGN KEY (`AG_ID`) REFERENCES `AGENT` (`AG_ID`),
  ADD CONSTRAINT `FK_TASK_ID` FOREIGN KEY (`TASK_ID`) REFERENCES `TASK` (`TASK_ID`);

--
-- Constraints for table `BUILDING_AGENT`
--
ALTER TABLE `BUILDING_AGENT`
  ADD CONSTRAINT `FK_AGENT_CON_ID` FOREIGN KEY (`AG_ID`) REFERENCES `AGENT` (`AG_ID`),
  ADD CONSTRAINT `FK_BUILD_CON_ID` FOREIGN KEY (`BUILD_ID`) REFERENCES `BUILDING` (`BUILD_ID`);

--
-- Constraints for table `HASHTAG`
--
ALTER TABLE `HASHTAG`
  ADD CONSTRAINT `FK_BUILD_ID` FOREIGN KEY (`BUILD_ID`) REFERENCES `BUILDING` (`BUILD_ID`);

--
-- Constraints for table `LOGIN`
--
ALTER TABLE `LOGIN`
  ADD CONSTRAINT `FK_LOGIN_ID` FOREIGN KEY (`PER_ID`) REFERENCES `PERSON` (`PER_ID`);

--
-- Constraints for table `LOGIN_HISTORY`
--
ALTER TABLE `LOGIN_HISTORY`
  ADD CONSTRAINT `FK_LOGIN_HIS_ID` FOREIGN KEY (`LOG_USER_NAME`) REFERENCES `LOGIN` (`LOG_USER_NAME`);

--
-- Constraints for table `MALL_BUILDING`
--
ALTER TABLE `MALL_BUILDING`
  ADD CONSTRAINT `FK_BUILD_MALL_ID` FOREIGN KEY (`BUILD_ID`) REFERENCES `BUILDING` (`BUILD_ID`);

--
-- Constraints for table `OFFICE_BUILDING`
--
ALTER TABLE `OFFICE_BUILDING`
  ADD CONSTRAINT `FK_BUILD_OB_ID` FOREIGN KEY (`BUILD_ID`) REFERENCES `BUILDING` (`BUILD_ID`);

--
-- Constraints for table `PERSON_GPS`
--
ALTER TABLE `PERSON_GPS`
  ADD CONSTRAINT `FK_BUILD_GPS_ID` FOREIGN KEY (`BUILD_ID`) REFERENCES `BUILDING` (`BUILD_ID`),
  ADD CONSTRAINT `FK_PER_GPS_ID` FOREIGN KEY (`PER_ID`) REFERENCES `PERSON` (`PER_ID`);

--
-- Constraints for table `RESTAURANT`
--
ALTER TABLE `RESTAURANT`
  ADD CONSTRAINT `FK_BUILD_RES_ID` FOREIGN KEY (`BUILD_ID`) REFERENCES `BUILDING` (`BUILD_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
