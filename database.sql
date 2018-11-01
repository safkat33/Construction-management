-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2017 at 04:24 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contraction management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_e`
--

CREATE TABLE `attendance_e` (
  `e_id` int(3) NOT NULL,
  `date` date NOT NULL,
  `attendance` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_w`
--

CREATE TABLE `attendance_w` (
  `worker_id` int(3) NOT NULL,
  `date` date NOT NULL,
  `attendance` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(10) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(1, 'CSE'),
(2, 'EEE'),
(3, 'eee'),
(4, 'eee');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `deparment_id` int(3) NOT NULL,
  `depatment_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`deparment_id`, `depatment_name`) VALUES
(100, 'civil'),
(101, 'electrical'),
(102, 'architecture '),
(103, 'it'),
(104, 'management'),
(105, 'accounts'),
(106, 'security');

-- --------------------------------------------------------

--
-- Table structure for table `engineers_and_employees`
--

CREATE TABLE `engineers_and_employees` (
  `e_id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `department_id` int(3) NOT NULL,
  `job_id` int(3) NOT NULL,
  `workshift_id` int(3) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engineers_and_employees`
--

INSERT INTO `engineers_and_employees` (`e_id`, `name`, `department_id`, `job_id`, `workshift_id`, `address`, `phone_number`, `email`) VALUES
(1, 'Mohaimin Hossain', 104, 301, 201, 'Gulshan,Dhaka.', '01721333666', 'mohaiminhossain@gmail.com'),
(2, 'Nova Hasan', 104, 302, 201, 'Banani, Dhaka.', '01732132453', 'nova.hasan@gmail.com'),
(3, 'Wasit Ahmed', 104, 302, 201, 'Gulshan, Dhaka.', '01812324312', 'wasit.ahmed@gmail.com'),
(4, 'Ali Ahmad', 104, 303, 201, 'Badda,Dhaka.', '01674324356', 'ali.ahmad@gmail.com'),
(5, 'Rayan Khan', 104, 307, 202, 'Dhanmondi,Dhaka.', '01819543678', 'rayan.khan@gmail.com'),
(6, 'Abu Talha', 104, 307, 203, 'Eliphant Road,Dhaka.', '01919234543', 'abu.talha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `jobtype_e`
--

CREATE TABLE `jobtype_e` (
  `job_id` int(3) NOT NULL,
  `job_title` varchar(30) NOT NULL,
  `max_salary` int(12) NOT NULL,
  `min_salary` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobtype_e`
--

INSERT INTO `jobtype_e` (`job_id`, `job_title`, `max_salary`, `min_salary`) VALUES
(301, 'managing_director', 1200000, 600000),
(302, 'deputy_director', 600000, 200000),
(303, 'site_manager', 100000, 50000),
(304, 'accounts_manager', 200000, 100000),
(305, 'accounts_assistant', 80000, 30000),
(306, 'accounts_intern', 10000, 50000),
(307, 'floor_manager', 25000, 10000),
(308, 'security_manager', 20000, 10000),
(309, 'senior_engineer', 600000, 200000),
(310, 'assistant_engineer', 150000, 80000),
(311, 'junior_engineer', 60000, 20000),
(312, 'intern_engineer', 10000, 5000),
(313, 'chief_designer', 300000, 100000),
(314, 'junior_designer', 80000, 30000),
(315, 'intern_designer', 10000, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `jobtype_w`
--

CREATE TABLE `jobtype_w` (
  `job_id` int(3) NOT NULL,
  `job_title` varchar(10) NOT NULL,
  `max_salary` int(6) NOT NULL,
  `min_salary` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `material_id` int(3) NOT NULL,
  `type_id` int(3) NOT NULL,
  `amount` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `materialtype`
--

CREATE TABLE `materialtype` (
  `type_id` int(3) NOT NULL,
  `type_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `overtime_e`
--

CREATE TABLE `overtime_e` (
  `e_id` int(3) NOT NULL,
  `overtime_hour` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `overtime_w`
--

CREATE TABLE `overtime_w` (
  `worker_id` int(6) NOT NULL,
  `overtime_hour` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `material_id` int(3) NOT NULL,
  `supplier_id` int(3) NOT NULL,
  `price_per_unit` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_info`
--

CREATE TABLE `purchase_info` (
  `material_id` int(3) NOT NULL,
  `purchase_date` date NOT NULL,
  `supplier_id` int(3) NOT NULL,
  `amount` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `resource_id` int(3) NOT NULL,
  `resource_name` varchar(20) NOT NULL,
  `resource_amount` int(6) NOT NULL,
  `purchase_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary_e`
--

CREATE TABLE `salary_e` (
  `e_id` int(3) NOT NULL,
  `salary` int(12) NOT NULL,
  `commission` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary_w`
--

CREATE TABLE `salary_w` (
  `worker_id` int(3) NOT NULL,
  `salary` int(6) NOT NULL,
  `comission` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_info`
--

CREATE TABLE `supplier_info` (
  `supplier_id` int(3) NOT NULL,
  `supplier_name` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `worker_id` int(3) NOT NULL,
  `worker_name` varchar(30) NOT NULL,
  `department_id` int(3) NOT NULL,
  `workshift_idw` int(3) NOT NULL,
  `e_id` int(3) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `job_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workshift_e`
--

CREATE TABLE `workshift_e` (
  `workshift_id` int(3) NOT NULL,
  `timing` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshift_e`
--

INSERT INTO `workshift_e` (`workshift_id`, `timing`) VALUES
(201, '9 a.m - 5 p.m'),
(202, '6 a.m -2 p.m'),
(203, '3 p.m- 11 p.m');

-- --------------------------------------------------------

--
-- Table structure for table `workshift_w`
--

CREATE TABLE `workshift_w` (
  `workshift_idw` int(3) NOT NULL,
  `timing` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_e`
--
ALTER TABLE `attendance_e`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `attendance_w`
--
ALTER TABLE `attendance_w`
  ADD PRIMARY KEY (`worker_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`deparment_id`);

--
-- Indexes for table `engineers_and_employees`
--
ALTER TABLE `engineers_and_employees`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `jobtype_e`
--
ALTER TABLE `jobtype_e`
  ADD UNIQUE KEY `job_id` (`job_id`);

--
-- Indexes for table `jobtype_w`
--
ALTER TABLE `jobtype_w`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `materialtype`
--
ALTER TABLE `materialtype`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `overtime_e`
--
ALTER TABLE `overtime_e`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `purchase_info`
--
ALTER TABLE `purchase_info`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`resource_id`);

--
-- Indexes for table `salary_e`
--
ALTER TABLE `salary_e`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `supplier_info`
--
ALTER TABLE `supplier_info`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`worker_id`),
  ADD UNIQUE KEY `workrs_id` (`worker_id`);

--
-- Indexes for table `workshift_e`
--
ALTER TABLE `workshift_e`
  ADD PRIMARY KEY (`workshift_id`);

--
-- Indexes for table `workshift_w`
--
ALTER TABLE `workshift_w`
  ADD PRIMARY KEY (`workshift_idw`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `deparment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `engineers_and_employees`
--
ALTER TABLE `engineers_and_employees`
  MODIFY `e_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
