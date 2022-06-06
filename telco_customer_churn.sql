-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 11:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telco_customer_churn`
--

-- --------------------------------------------------------

--
-- Table structure for table `churn_details`
--

CREATE TABLE `churn_details` (
  `churn_id` int(11) NOT NULL,
  `Churn Label` varchar(255) NOT NULL,
  `Churn Value` int(11) NOT NULL,
  `Churn Score` int(11) NOT NULL,
  `CLTV` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `churn_details`
--

INSERT INTO `churn_details` (`churn_id`, `Churn Label`, `Churn Value`, `Churn Score`, `CLTV`) VALUES
(1, 'Yes', 1, 67, 2701),
(2, 'Yes', 1, 86, 5372),
(3, 'Yes', 1, 84, 5003),
(4, 'Yes', 1, 89, 5340),
(5, 'Yes', 1, 77, 5789),
(6, 'Yes', 1, 66, 2454),
(7, 'Yes', 1, 65, 2941),
(8, 'Yes', 1, 70, 5674),
(9, 'Yes', 1, 90, 5586),
(10, 'Yes', 1, 82, 2966);

-- --------------------------------------------------------

--
-- Table structure for table `churn_id`
--

CREATE TABLE `churn_id` (
  `churn_id` int(11) NOT NULL,
  `CustomerID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `churn_id`
--

INSERT INTO `churn_id` (`churn_id`, `CustomerID`) VALUES
(4, '0280-XJGEX'),
(7, '5380-WJKOV'),
(6, '6047-YHPVI'),
(5, '6467-CHFZW'),
(9, '7760-OYPDY'),
(3, '7892-POOKP'),
(8, '8168-UQWWF'),
(1, '9237-HQITU'),
(2, '9305-CDSKC'),
(10, '9420-LOJKX');

-- --------------------------------------------------------

--
-- Table structure for table `location_details`
--

CREATE TABLE `location_details` (
  `Zip Code` int(11) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Latitude` float NOT NULL,
  `Longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_details`
--

INSERT INTO `location_details` (`Zip Code`, `Country`, `State`, `City`, `Latitude`, `Longitude`) VALUES
(90005, 'United States', 'California', 'Los Angeles', 34, -118),
(90006, 'United States', 'California', 'Los Angeles', 34, -118),
(90010, 'United States', 'California', 'Los Angeles', 34, -118),
(90015, 'United States', 'California', 'Los Angeles', 34.0392, -118.266),
(90039, 'United States', 'California', 'Los Angeles', 34.1108, -118.26),
(90028, 'United States', 'California', 'Los Angeles', 34.0999, -118.327),
(90041, 'United States', 'California', 'Los Angeles', 34.1374, -118.208),
(90042, 'United States', 'California', 'Los Angeles', 34.1157, -118.193),
(90056, 'United States', 'California', 'Los Angeles', 33.9879, -118.37),
(90061, 'United States', 'California', 'Los Angeles', 33.9213, -118.274);

-- --------------------------------------------------------

--
-- Table structure for table `location_id`
--

CREATE TABLE `location_id` (
  `Zip Code` int(11) NOT NULL,
  `CustomerID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_id`
--

INSERT INTO `location_id` (`Zip Code`, `CustomerID`) VALUES
(90015, '0280-XJGEX'),
(90041, '5380-WJKOV'),
(90039, '6047-YHPVI'),
(90028, '6467-CHFZW'),
(90056, '7760-OYPDY'),
(90010, '7892-POOKP'),
(90042, '8168-UQWWF'),
(90005, '9237-HQITU'),
(90006, '9305-CDSKC'),
(90061, '9420-LOJKX');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `payment_id` int(11) NOT NULL,
  `Paperless Billing` varchar(255) NOT NULL,
  `Payment Method` varchar(255) NOT NULL,
  `Monthly Charges` float NOT NULL,
  `Total Charges` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`payment_id`, `Paperless Billing`, `Payment Method`, `Monthly Charges`, `Total Charges`) VALUES
(1, 'Yes', 'Electronic check', 71, 152),
(2, 'Yes', 'Electronic check', 99.65, 820.5),
(3, 'Yes', 'Electronic check', 104.8, 3046.05),
(4, 'Yes', 'Bank transfer (automatic)', 103.7, 5036.3),
(5, 'Yes', 'Electronic check', 99.35, 4749.15),
(6, 'Yes', 'Electronic check)', 69.7, 316.9),
(7, 'Yes', 'Electronic check', 106.35, 3549.25),
(8, 'Yes', 'Bank transfer (automatic)', 97.85, 1105.4),
(9, 'Yes', 'Electronic check', 80.65, 144.15),
(10, 'Yes', 'Credit card (automatic)', 99.1, 1426.4);

-- --------------------------------------------------------

--
-- Table structure for table `payment_id`
--

CREATE TABLE `payment_id` (
  `payment_id` int(11) NOT NULL,
  `Service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_id`
--

INSERT INTO `payment_id` (`payment_id`, `Service_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `CustomerID` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Senior_Citizen` varchar(255) NOT NULL,
  `Partner` varchar(255) NOT NULL,
  `Dependents` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`CustomerID`, `Gender`, `Senior_Citizen`, `Partner`, `Dependents`) VALUES
('0280-XJGEX', 'Male', 'No', 'No', 'Yes'),
('5380-WJKOV', 'Male', 'No', 'No', 'Yes'),
('6047-YHPVI', 'Male', 'No', 'No', 'Yes'),
('6467-CHFZW', 'Male', 'No', 'Yes', 'Yes'),
('7760-OYPDY', 'Female', 'No', 'No', 'Yes'),
('7892-POOKP', 'Female', 'No', 'Yes', 'Yes'),
('8168-UQWWF', 'Female', 'No', 'No', 'Yes'),
('9237-HQITU', 'Female', 'No', 'No', 'Yes'),
('9305-CDSKC', 'Female', 'No', 'No', 'Yes'),
('9420-LOJKX', 'Female', 'No', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `service_details`
--

CREATE TABLE `service_details` (
  `Service_id` int(11) NOT NULL,
  `Tenure Months` int(11) NOT NULL,
  `Phone Service` varchar(255) NOT NULL,
  `Multiple Lines` varchar(255) NOT NULL,
  `Internet Service` varchar(255) NOT NULL,
  `Online Security` varchar(255) NOT NULL,
  `Online Backup` varchar(255) NOT NULL,
  `Device Protection` varchar(255) NOT NULL,
  `Tech Support` varchar(255) NOT NULL,
  `Streaming TV` varchar(255) NOT NULL,
  `Streaming Movies` varchar(255) NOT NULL,
  `Contract` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_details`
--

INSERT INTO `service_details` (`Service_id`, `Tenure Months`, `Phone Service`, `Multiple Lines`, `Internet Service`, `Online Security`, `Online Backup`, `Device Protection`, `Tech Support`, `Streaming TV`, `Streaming Movies`, `Contract`) VALUES
(1, 2, 'Yes', 'No', 'Fiber optic', 'No', 'No', 'No', 'No', 'No', 'No', 'Month-to-month'),
(2, 8, 'Yes', 'Yes', 'Fiber optic', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Month-to-month'),
(3, 28, 'Yes', 'Yes', 'Fiber optic', 'No', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Month-to-month'),
(4, 49, 'Yes', 'Yes', 'Fiber optic', 'No', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Month-to-month'),
(5, 47, 'Yes', 'Yes', 'Fiber optic', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Month-to-month'),
(6, 5, 'Yes', 'No', 'Fiber optic', 'No', 'No', 'No', 'No', 'No', 'No', 'Month-to-month'),
(7, 34, 'Yes', 'Yes', 'Fiber optic', 'No', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Month-to-month'),
(8, 11, 'Yes', 'Yes', 'Fiber optic', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Month-to-month'),
(9, 2, 'Yes', 'No', 'Fiber optic', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Month-to-month'),
(10, 15, 'Yes', 'No', 'Fiber optic', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Month-to-month');

-- --------------------------------------------------------

--
-- Table structure for table `service_id`
--

CREATE TABLE `service_id` (
  `Service_id` int(11) NOT NULL,
  `CustomerID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_id`
--

INSERT INTO `service_id` (`Service_id`, `CustomerID`) VALUES
(4, '0280-XJGEX'),
(7, '5380-WJKOV'),
(6, '6047-YHPVI'),
(5, '6467-CHFZW'),
(9, '7760-OYPDY'),
(3, '7892-POOKP'),
(8, '8168-UQWWF'),
(1, '9237-HQITU'),
(2, '9305-CDSKC'),
(10, '9420-LOJKX');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `churn_details`
--
ALTER TABLE `churn_details`
  ADD KEY `churn_id` (`churn_id`);

--
-- Indexes for table `churn_id`
--
ALTER TABLE `churn_id`
  ADD PRIMARY KEY (`churn_id`),
  ADD UNIQUE KEY `churn_id` (`churn_id`,`CustomerID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `location_details`
--
ALTER TABLE `location_details`
  ADD KEY `Zip Code` (`Zip Code`);

--
-- Indexes for table `location_id`
--
ALTER TABLE `location_id`
  ADD PRIMARY KEY (`Zip Code`),
  ADD KEY `Zip Code` (`Zip Code`,`CustomerID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `payment_id`
--
ALTER TABLE `payment_id`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_id` (`payment_id`,`Service_id`),
  ADD KEY `Service_id` (`Service_id`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `service_details`
--
ALTER TABLE `service_details`
  ADD KEY `Service_id` (`Service_id`);

--
-- Indexes for table `service_id`
--
ALTER TABLE `service_id`
  ADD PRIMARY KEY (`Service_id`),
  ADD KEY `Service_id` (`Service_id`,`CustomerID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `churn_details`
--
ALTER TABLE `churn_details`
  ADD CONSTRAINT `churn_details_ibfk_1` FOREIGN KEY (`churn_id`) REFERENCES `churn_id` (`churn_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `churn_id`
--
ALTER TABLE `churn_id`
  ADD CONSTRAINT `churn_id_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `personal_details` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `location_details`
--
ALTER TABLE `location_details`
  ADD CONSTRAINT `location_details_ibfk_1` FOREIGN KEY (`Zip Code`) REFERENCES `location_id` (`Zip Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `location_id`
--
ALTER TABLE `location_id`
  ADD CONSTRAINT `location_id_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `personal_details` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payment_details_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment_id` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_id`
--
ALTER TABLE `payment_id`
  ADD CONSTRAINT `payment_id_ibfk_1` FOREIGN KEY (`Service_id`) REFERENCES `service_id` (`Service_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_details`
--
ALTER TABLE `service_details`
  ADD CONSTRAINT `service_details_ibfk_1` FOREIGN KEY (`Service_id`) REFERENCES `service_id` (`Service_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_id`
--
ALTER TABLE `service_id`
  ADD CONSTRAINT `service_id_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `personal_details` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
