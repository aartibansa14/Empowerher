-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 05:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empowerher`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `adminemail` varchar(40) NOT NULL,
  `adminpassword` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminemail`, `adminpassword`) VALUES
(1221, 'parulsaxena@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `com_id` int(11) NOT NULL,
  `vic_enrollment` varchar(30) NOT NULL,
  `vic_mobile` bigint(20) NOT NULL,
  `accused_name` varchar(40) NOT NULL,
  `accused_department` varchar(40) NOT NULL,
  `accused_branch` varchar(40) NOT NULL,
  `inc_date` date NOT NULL,
  `com_date` date NOT NULL,
  `com_type` varchar(40) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`com_id`, `vic_enrollment`, `vic_mobile`, `accused_name`, `accused_department`, `accused_branch`, `inc_date`, `com_date`, `com_type`, `message`, `status`) VALUES
(38675258, '0901ca221001', 9867234589, 'Nitin', 'cse', 'mca', '2023-06-21', '2023-06-06', 'Rape', 'hi', 'process'),
(374277805, '0901ca221001', 9867234589, 'Ansh', 'it', 'MBA', '2023-06-01', '2023-06-20', 'Tyug', 'hi', 'approve'),
(1381491597, '0901ca221045', 6543124569, 'A', 'C', 'B', '2024-07-29', '2024-08-02', 'MOL', 'HI A', 'approve');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  `enrollment` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `com_id`, `enrollment`, `name`, `email`, `address`, `message`) VALUES
(155, 1530391971, '0901ca221001', 'aarti bansal', 'bansal.aarti0406@gmail.com', 'h-18 madhav apartment amarkantak enclave seva naga', 'it\'s a very useful website where girls can complain about their problem ');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `username` varchar(30) NOT NULL,
  `father` varchar(30) NOT NULL,
  `mother` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `alternative_mobile` bigint(20) NOT NULL,
  `enrollment` varchar(30) NOT NULL,
  `admission_year` date NOT NULL,
  `department` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `confirm_pass` varchar(30) NOT NULL,
  `image` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `father`, `mother`, `email`, `mobile`, `alternative_mobile`, `enrollment`, `admission_year`, `department`, `branch`, `password`, `confirm_pass`, `image`) VALUES
('Aarti Bansal', 'Radhaballabh banal', 'Sheela bansal', 'bansal.aarti0406@gmail.com', 9876123456, 8673451234, '0901ca221001', '2023-06-19', 'MCA', 'Mechanical', '1234tyun', '1234tyun', 'images/Screenshot 2024-07-02 114816.png'),
('Divya', 'Radhaballabh banal', 'Sheela bansal', 'bansal.divya0406@gmail.com', 9876123456, 9845231278, '0901ca221002', '2023-06-27', 'MBA', 'Electronics', '12345678', '12345678', 'images/11.jpg'),
('Aarti', 'Radhaballabh banal', 'Sheela bansal', '0901ca@gmail.com', 9876123456, 8673451234, '0901ca221008', '2023-07-05', 'MCA', 'Mechanical', '67891244', '67891244', 'images/1.jpg'),
('Aarti', 'Radhaballabh banal', 'Sheela bansal', '09ca@gmail.com', 9876123456, 8673451234, '0901ca221009', '2023-07-05', 'MCA', 'Mechanical', '67891244', '67891244', 'images/1.jpg'),
('Harshita jain', 'Vivek jain', 'Sarita jain', 'harsha123@gmail.com', 8976453212, 9845231278, '0901ca221010', '2023-06-12', 'MCA', 'Information Technology', '67542235', '67542235', 'images/BRILL-DRILL CERTIFICATE.png'),
('Aarti', 'Radhaballabh banal', 'Sheela bansal', 'aarti0406@gmail.com', 9876123456, 8673451234, '0901ca221020', '2023-06-04', 'MBA', 'Electrical', '67891244', '67891244', 'images/7.jpg'),
('Aarti', 'Radhaballabh banal', 'Sheela bansal', '22ca@mitsgwl.ac.in', 8976453212, 9845231278, '0901ca221023', '2023-06-20', 'MCA', 'Computer Science', '67891244', '67891244', 'images/rape.jpg'),
('Shivani', 'Santosj', 'Sheela bansal', 'bansal.prn3112@gmail.com', 9876123423, 9845231278, '0901ca221032', '2023-06-13', 'MBA', 'Civil', '67891234', '67891234', 'images/WhatsApp Image 2023-05-22 at 10.1'),
('Shivani', 'Santosj', 'Sheela bansal', 'bansal.prnt3112@gmail.com', 9876123423, 9845231278, '0901ca221033', '2023-06-13', 'MBA', 'Civil', '67891234', '67891234', 'images/WhatsApp Image 2023-05-22 at 10.1'),
('Shivani', 'Santosj', 'Sheela bansal', 'bansal.prant3112@gmail.com', 9876123423, 9845231278, '0901ca221034', '2023-06-13', 'MBA', 'Civil', '67891234', '67891234', 'images/WhatsApp Image 2023-05-22 at 10.1'),
('Shella', 'Shia', 'She', 'she@gmail.com', 8723451234, 6745231256, '0901ca221045', '2024-07-25', 'MBA', 'Mechanical', '12345678', '12345678', '../images/Screenshot 2024-06-23 102541.p'),
('Aarti Bansal', 'Rb bansal', 'Shela bansal', 'bansal.arti0406@gmail.com', 8756231456, 8734123498, '0901mp3456', '2023-10-24', 'MCA', 'Computer Science', '40253130', '40253130', 'images/glow.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`enrollment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
