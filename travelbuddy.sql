-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 10:58 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelbuddy`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `idDriver` int(11) NOT NULL,
  `Driver Name` varchar(45) DEFAULT NULL,
  `Car Model` varchar(45) DEFAULT NULL,
  `License` varchar(45) DEFAULT NULL,
  `points_redemmable points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

-- --------------------------------------------------------

--
-- Table structure for table `driver_rides`
--

CREATE TABLE `driver_rides` (
  `id` int(11) NOT NULL,
  `id_driver` int(11) NOT NULL,
  `id_ride` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Login email` varchar(45) DEFAULT NULL,
  `Login Password` varchar(45) DEFAULT NULL,
  `driver_idDriver` int(11) NOT NULL,
  `signup passenger_idsignup passenger` int(11) NOT NULL,
  `signup driver_idsignup driver` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `idpassenger` int(11) NOT NULL,
  `Passenger Name` varchar(45) DEFAULT NULL,
  `Passenger phone Number` double DEFAULT NULL,
  `Passenger email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

-- --------------------------------------------------------

--
-- Table structure for table `passenger_has_rides`
--

CREATE TABLE `passenger_has_rides` (
  `passenger_idpassenger` int(11) NOT NULL,
  `rides_idrides` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `idridefees` int(11) NOT NULL,
  `Transaction` varchar(45) DEFAULT NULL,
  `passenger_idpassenger` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `redemmable points` int(11) NOT NULL,
  `Points Collect` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

-- --------------------------------------------------------

--
-- Table structure for table `rides`
--

CREATE TABLE `rides` (
  `Seat_Available` int(45) DEFAULT NULL,
  `Route_Origin` varchar(45) DEFAULT NULL,
  `Route_destination` varchar(45) DEFAULT NULL,
  `Time` time NOT NULL,
  `date` date NOT NULL,
  `systemtimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `driver_id` int(11) DEFAULT NULL,
  `idrides` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

--
-- Dumping data for table `rides`
--

INSERT INTO `rides` (`Seat_Available`, `Route_Origin`, `Route_destination`, `Time`, `date`, `systemtimestamp`, `driver_id`, `idrides`) VALUES
(6, '126 zabriskie', 'hoboken', '05:30:00', '2022-02-22', '2022-11-14 18:17:07', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `signup_driver`
--

CREATE TABLE `signup_driver` (
  `idsignup_driver` int(11) NOT NULL,
  `Fulll_Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Insurance_no` int(11) DEFAULT NULL,
  `Driver_license` varchar(45) DEFAULT NULL,
  `Car_Number_Plate` varchar(45) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `pnumber` int(10) DEFAULT NULL,
  `Type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

--
-- Dumping data for table `signup_driver`
--

INSERT INTO `signup_driver` (`idsignup_driver`, `Fulll_Name`, `Email`, `Password`, `Insurance_no`, `Driver_license`, `Car_Number_Plate`, `age`, `gender`, `pnumber`, `Type`) VALUES
(6, 'Arpit Patel', 'akp@gmail.com', 'Arpit1618.', NULL, NULL, NULL, 25, 'Male', 2014691320, 'passenger'),
(7, 'Patel Jay', 'app@gmail.com', 'Arpit1618.', 5544951, '21487953', 'PAT1234', 29, 'Male', 2014691330, 'driver'),
(8, 'Roy name', 'anp@gmail.com', 'Arp145', NULL, NULL, NULL, 44, 'Male', 2014691320, 'passenger'),
(9, 'indhu cs', 'indhu10@gmail.com', 'Neelajeevan@2019', NULL, NULL, NULL, 20, 'female', 2017905231, 'passenger'),
(10, 'Sonia Mirani', 'sjm@gmail.com', 'Arpit1618.', NULL, NULL, NULL, 25, 'Female', 2014691360, 'passenger'),
(11, 'Aks Patel', 'abcjg@gmail.com', 'Arpit1.', NULL, NULL, NULL, 25, 'Male', 2014691370, 'passenger'),
(12, 'HA PA', 'tgadaf@yahoo.com', 'Love1.', NULL, NULL, NULL, 25, 'Male', 201469990, 'passenger'),
(13, 'New Entry', 'new@gmail.com', 'Arpit1618.', NULL, NULL, NULL, 55, 'Female', 1234567890, 'passenger');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`idDriver`,`points_redemmable points`);

--
-- Indexes for table `driver_rides`
--
ALTER TABLE `driver_rides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_driver` (`id_driver`,`id_ride`),
  ADD KEY `id_ride` (`id_ride`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`idpassenger`);

--
-- Indexes for table `passenger_has_rides`
--
ALTER TABLE `passenger_has_rides`
  ADD PRIMARY KEY (`passenger_idpassenger`,`rides_idrides`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`idridefees`,`passenger_idpassenger`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`redemmable points`);

--
-- Indexes for table `rides`
--
ALTER TABLE `rides`
  ADD PRIMARY KEY (`idrides`),
  ADD KEY `idrides` (`idrides`);

--
-- Indexes for table `signup_driver`
--
ALTER TABLE `signup_driver`
  ADD PRIMARY KEY (`idsignup_driver`),
  ADD KEY `idsignup driver` (`idsignup_driver`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver_rides`
--
ALTER TABLE `driver_rides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rides`
--
ALTER TABLE `rides`
  MODIFY `idrides` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `signup_driver`
--
ALTER TABLE `signup_driver`
  MODIFY `idsignup_driver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `driver_rides`
--
ALTER TABLE `driver_rides`
  ADD CONSTRAINT `driver_rides_ibfk_1` FOREIGN KEY (`id_driver`) REFERENCES `signup_driver` (`idsignup_driver`),
  ADD CONSTRAINT `driver_rides_ibfk_2` FOREIGN KEY (`id_ride`) REFERENCES `rides` (`idrides`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
