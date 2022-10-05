-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2022 at 07:17 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `city_state`
--

CREATE TABLE `city_state` (
  `city` varchar(30) NOT NULL,
  `state` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_state`
--

INSERT INTO `city_state` (`city`, `state`) VALUES
('Chodha', 'Gokwe'),
('Gandawaroyi', 'Gokwe'),
('Gumunyu', 'Gokwe'),
('Mutora', 'Gokwe'),
('Nembudzia', 'Gokwe');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `id` int(11) DEFAULT NULL,
  `dof` date DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `dof`, `name`, `type`, `description`) VALUES
(100, '2022-04-17', 'Munashe Mabaya', 'Management', 'Extremely Poor Management'),
(101, '2022-04-18', 'Chief Mangwembe', 'Staff', 'Maintance memebr was not wearing any gloes in the bathroom'),
(102, '2022-04-18', 'Sheruta Rwanai', 'Other', 'Gay patients seen inside the hospital, unacceptable'),
(100, '2022-04-21', 'Mweya Unesu', 'Treatment Quality', 'enjoyed how my father recoered in the least time possible'),
(101, '2022-04-21', 'Sister Ghoni', 'Facilities', 'Beautiful artifacts and buildings');

-- --------------------------------------------------------

--
-- Table structure for table `curr`
--

CREATE TABLE `curr` (
  `d_id` int(11) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `patients` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curr`
--

INSERT INTO `curr` (`d_id`, `type`, `patients`) VALUES
(1001, 'Gainacologist', 2);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `qual` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `qual`, `type`, `exp`) VALUES
(1001, 'Punaniology', 'Gainacologist', 9);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `salary` double(12,2) NOT NULL,
  `type` varchar(20) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `sex`, `salary`, `type`, `contact`, `email`, `address`, `city`) VALUES
(1000, 'Dakoiro', 'male', 2000.00, 'Manager', 263782516263, 'imasshol3@gmail.com', '7 Musadzi Rd, Mutora', 'Mutora'),
(1001, 'Todie Mungofa', 'male', 25000.00, 'Doctor', 2345, 'tdmungofa@gmail.com', '7 Hokoyo Rd Chikarimatsito Gokwe', 'Nembudzia'),
(1003, 'George', 'male', 3565.00, 'Nurse', 43254654, 'gsighud@gmail.com', '34 Nenji rd Nembudzia Gokwe', 'Gandawaroyi'),
(1004, 'Sheuta', 'male', 23.00, 'Maintenance', 8790139, 'sheu@gmail.com', '647 Gring Gokwe', 'Gumunyu'),
(1005, 'Urine', 'male', 545.00, 'Receptionist', 435545, 'urinate@gmail.com', '34 Nenji rd Nembudzia Gokwe', 'Chodha');

-- --------------------------------------------------------

--
-- Table structure for table `employee_contact`
--

CREATE TABLE `employee_contact` (
  `id` int(11) NOT NULL,
  `contact` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_contact`
--

INSERT INTO `employee_contact` (`id`, `contact`) VALUES
(1001, 2345),
(1003, 43546),
(1004, 8765378),
(1005, 5454675775);

-- --------------------------------------------------------

--
-- Table structure for table `employee_email`
--

CREATE TABLE `employee_email` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_email`
--

INSERT INTO `employee_email` (`id`, `email`) VALUES
(1001, 'kudarukuni@outlook.com'),
(1003, 'ghahsh@gmail.com'),
(1004, 'shutai@gmail.com'),
(1005, 'rinate@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

CREATE TABLE `hardware` (
  `model` varchar(20) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hardware`
--

INSERT INTO `hardware` (`model`, `type`, `quantity`) VALUES
('M101', 'Medical Imaging', 7),
('M104', 'CT Scan', 10),
('M107', 'Medical Ultrasound', 9),
('M116', 'MRI', 2),
('M121', 'PET', 6),
('M133', 'XRAY', 5),
('M140', 'MRI', 5);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` int(11) NOT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
(1000, '$2b$10$a0hWWUdtSa3M9jvJ1eJikuegA0NK6yQ4PvnKuZnXlkP4jpcptPmpa'),
(1001, '$2b$10$tZKOvrxqZ9dI1nUkVIUz0uAJ0AlVNbRd5jbtSQ7ZVcbh9xlrcNfj.'),
(1003, '$2b$10$CGTTnKZdW2Ni34e4xH0EKuJ/oL09foeDo4iTf28Ai.SqjUJvWfv4S'),
(1004, '$2b$10$zTx7xXYz51l3G2LIiTYibevGeK2GtFtvdVAJSxTnXE10wM0CZ9sHm'),
(1005, '$2b$10$QcXgdEI4z1Bw9Qvvc8CL..bSIstQYrYpWTKiEk6SHSmkgblsS8p9C');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(11) DEFAULT NULL,
  `qual` varchar(20) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`, `qual`, `exp`) VALUES
(1003, 'Nurse Aid', 23);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `doa` date NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `dol` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `sex`, `doa`, `address`, `city`, `contact`, `d_id`, `room`, `dol`, `status`) VALUES
(10001, 'Patient One', 'Female', '2022-04-16', '57 Gumunyu Rd', 'Nembudzia', 263782452782, 1004, 101, '2022-04-18', 'DISCHARGED'),
(10002, 'Patient Two', 'Male', '2022-04-18', '43 Munyatipanzi Rd', 'Chodha', 263782378957, 1009, 102, '2022-04-18', 'CURRENT'),
(10002, 'Tsikombiya', 'Female', '2022-08-26', '82 Kwagotori Mtora', 'Mutora', 1234567890, 1001, 0, NULL, 'CURRENT'),
(10003, 'Mbanje Kunaka', 'TO BE UPDATED', '2022-04-21', 'TO BE UPDATED', 'TO BE UPDATED', 5656576, 1004, 0, NULL, 'EMERGENCY'),
(10004, 'Patient Four', 'Female', '2022-04-16', '68 Kure Rd', 'Gandawaroyi', 263712900892, 1004, 101, '2022-04-16', 'CURRENT'),
(10005, 'Patient Fiwe', 'TO BE UPDATED', '2022-04-18', 'TO BE UPDATED', 'TO BE UPDATED', 987654, 1009, 0, NULL, 'EMERGENCY'),
(10006, 'Smokie Mambanjere', 'TO BE UPDATED', '2022-04-16', 'TO BE UPDATED', 'TO BE UPDATED', 5467689768754, 1004, 103, '2022-04-16', 'DISCHARGED');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `d_id` int(11) DEFAULT NULL,
  `doa` date NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `medicines` varchar(200) DEFAULT NULL,
  `m_fee` double(10,2) DEFAULT NULL,
  `c_fee` double(10,2) DEFAULT NULL,
  `d_fee` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `d_id`, `doa`, `description`, `medicines`, `m_fee`, `c_fee`, `d_fee`) VALUES
(10001, 1001, '2022-04-16', 'This woman need a surgery on her punani that thing was starting to look like some monster', 'Punani Pills', 672.81, 830.42, 1529.11),
(10001, 1001, '2022-08-26', 'TO BE UPDATED', 'TO BE UPDATED', 0.00, 0.00, 0.00),
(10002, 1001, '2022-04-18', 'This guy had an accident luckily the doctors sawed him up', 'Heat Rub', 740.38, 365.44, 301.18),
(10002, 1001, '2022-08-26', 'TO BE UPDATED', 'TO BE UPDATED', 0.00, 0.00, 0.00),
(10003, 1001, '2022-04-21', 'TO BE UPDATED', 'TO BE UPDATED', 5443.84, 8712.87, 10543.22),
(10004, 1001, '2022-04-16', 'She had an abortion and she is in ery critical condition after a successfull abortion', 'Nothing the mother is almost dead anyway ', 0.00, 0.00, 0.00),
(10005, 1001, '2022-04-18', 'TO BE UPDATED', 'TO BE UPDATED', 0.00, 0.00, 0.00),
(10006, 1001, '2018-04-16', 'TO BE UPDATED', 'TO BE UPDATED', 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `patients` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `patients`) VALUES
(101, 'General', 0),
(102, 'General', 0),
(103, 'General', 0),
(104, 'General', 0),
(105, 'General', 0),
(106, 'General', 0),
(107, 'General', 0),
(108, 'General', 0),
(109, 'General', 0),
(110, 'General', 0),
(111, 'General', 0),
(201, 'Personal', 0),
(202, 'Personal', 0),
(203, 'Personal', 0),
(204, 'Personal', 0),
(205, 'Personal', 0),
(206, 'Personal', 0),
(207, 'Personal', 0),
(208, 'Personal', 0),
(209, 'Personal', 0),
(210, 'Personal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE `server` (
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `proxy` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server`
--

INSERT INTO `server` (`email`, `pass`, `proxy`) VALUES
('himsdata123@gmail.com', 'himsdata$$321', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city_state`
--
ALTER TABLE `city_state`
  ADD PRIMARY KEY (`city`);

--
-- Indexes for table `curr`
--
ALTER TABLE `curr`
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD KEY `id` (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_contact`
--
ALTER TABLE `employee_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_email`
--
ALTER TABLE `employee_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD KEY `username` (`username`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD KEY `id` (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`,`doa`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`,`doa`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `curr`
--
ALTER TABLE `curr`
  ADD CONSTRAINT `curr_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `employee_contact`
--
ALTER TABLE `employee_contact`
  ADD CONSTRAINT `employee_contact_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `employee_email`
--
ALTER TABLE `employee_email`
  ADD CONSTRAINT `employee_email_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`username`) REFERENCES `employee` (`id`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
