-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2020 at 04:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corsairad`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(1, 'realme@realme', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `admin_job`
--

CREATE TABLE `admin_job` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `job_company` varchar(50) NOT NULL,
  `job_title` varchar(25) NOT NULL,
  `job_des` varchar(200) NOT NULL,
  `job_add` text NOT NULL,
  `job_sal` varchar(10) NOT NULL,
  `job_look` text NOT NULL,
  `job_exp` text NOT NULL,
  `job_fa` text NOT NULL,
  `job_er` varchar(50) NOT NULL,
  `job_apply` text NOT NULL,
  `category` int(11) NOT NULL,
  `subcat` int(11) NOT NULL,
  `availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_job`
--

INSERT INTO `admin_job` (`id`, `job_id`, `job_company`, `job_title`, `job_des`, `job_add`, `job_sal`, `job_look`, `job_exp`, `job_fa`, `job_er`, `job_apply`, `category`, `subcat`, `availability`) VALUES
(1, 1, 'SBI', 'Manager - 3 Vacancies', 'We need Bank managers for our banks', 'SBI (HYD8)\r\nHyderabad, Telangana\r\nOpen 24 hours · 083090 47970', '90k - 100k', 'We are looking for bank manages who are perfect in banking skills.', 'Freshers and Experienced', 'City Compensatory Allowance	3% – 4% depending on location\r\nHouse Rent Allowance	7% – 9% depending on Place of Posting\r\nFurniture Allowance	INR 1,20,000\r\nMedical Insurance	100% covered for employee | 75% covered for dependent family', 'LLB, CA, LLM, M.A, M.Com, MBA/PGDM, PG Diploma', 'https://console.dialogflow.com/api-client/demo/embedded/1ab00568-91ea-4e7f-ac03-3b21a4d712c5', 0, 0, ''),
(3, 2, 'DPS', 'Teachers for FS', 'We need faculty for Finishing School classes', 'DPS ,Khajaguda Village, Chitrapuri Colony, Hyderabad.', '50k-60k', 'We are looking for a faculty for Finishing school. We need someone who has good skills in English', '3-4 years', 'Productive and healthy working environment\r\nInnovative, friendly culture.\r\nstudents and teachers are exposed to new and creative ideas.\r\nManagement is always supportive.', 'TET Certificate, or B. Ed Qualification.', 'https://console.dialogflow.com/api-client/demo/embedded/071684a7-8cc9-4a46-8d5b-33dd180795c5', 0, 0, ''),
(4, 3, 'Amazon', 'Backend Developer', 'we need php developers for our e-comers website', 'Brigade Gateway, 8th floor, 26/1, Dr. Rajkumar Road, Malleshwaram(W), Bangalore-560055,', '50k-60k', 'We are looking for strong coders in PHP', '3-4 years', '', 'M.TECH in Computer Science', 'https://console.dialogflow.com/api-client/demo/embedded/f99eb677-86b7-4dbb-a375-5ede5d9cd69e', 0, 0, ''),
(5, 4, 'LRR solutions hyderabad', 'Embedded Software Enginee', 'You will need to have a background in embedded software development with devices/system interaction and troubleshooting', 'LRR solutions hyderabad\r\nHyderabad, Telangana', '15-23 lakh', 'he candidate will be part of Carrier-Transicold Business, working with dynamic cross-functional global development team performing embedded modeling, analysis, design and development of our next generation refrigeration system products. You will design and develop, and architect, complex embedded systems involving both microprocessors / microcontrollers.', '6-10 years of software development', 'This is the opportunity of a lifetime for people looking to specialize in highly coveted niche futuristic skills, and to work in a top multinational company with excellent employee-first initiatives.', 'B. Tech. / M. Tech. (Electronics / Electrical / Co', 'https://console.dialogflow.com/api-client/demo/embedded/2dba319b-4ea8-4c5f-a2a4-e54dccc60805', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Banking', 'banking', '2020-07-10 14:27:20', NULL),
(8, 'Teaching', '', '2020-07-12 17:00:09', NULL),
(9, 'software', '', '2020-07-13 14:14:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recruiters`
--

CREATE TABLE `recruiters` (
  `Name` varchar(30) NOT NULL,
  `Location` text NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phonenumber` int(12) NOT NULL,
  `Degree` varchar(5) NOT NULL,
  `Age` int(2) NOT NULL,
  `Company` varchar(20) NOT NULL,
  `website` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recruiters`
--

INSERT INTO `recruiters` (`Name`, `Location`, `Email`, `Phonenumber`, `Degree`, `Age`, `Company`, `website`, `password`) VALUES
('shruthi Reddy', 'Newgayathrinagar', 'shruthiapr3@gmail.co', 798959302, 'BE', 19, 'amazon', 'shruthiReddy.com', 'shruthi');

-- --------------------------------------------------------

--
-- Table structure for table `requestdemo`
--

CREATE TABLE `requestdemo` (
  `email` varchar(100) NOT NULL DEFAULT '',
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `companyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestdemo`
--

INSERT INTO `requestdemo` (`email`, `firstname`, `lastname`, `phonenumber`, `companyname`) VALUES
('shruthiapr3@gmail.com', 'shruthi', 'reddy', '7989593025', 'vasavi'),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('shruthiapr3@gmail.com', 'Shruthi', 'reddy', '0809 604 3', 'vasavi'),
('shruthiapr3@gmail.com', 'Shruthi', 'reddy', '0809 604 3', 'vasavi'),
('shruthiapr3@gmail.com', 'Shruthi', 'reddy', '0809 604 3', 'vasavi'),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('shruthiapr3@gmail.com', 'Shruthi', 'reddy', '0809 604 3', 'vasavi'),
('shruthiapr3@gmail.com', 'Shruthi', 'reddy', '0809 604 3', 'vasavi'),
('shruthiapr3@gmail.com', 'shruthi', 'reddy', '0809 604 3', 'vasavi'),
('shruthiapr3@gmail.com', 'Shruthi', 'reddy', '0809 604 3', 'vasavi'),
('shruthiapr3@gmail.com', 'Shruthi', 'Bheemreddy', '0809 604 3', 'vasavi'),
('prashanthinov3@gmail.com', 'Prashanthi', 'Bheemreddy', '0809 604 3', 'vasavi'),
('prashanthinov3@gmail.com', 'Prashanthi', 'Bheemreddy', '0809 604 3', 'vasavi'),
('prashanthinov3@gmail.com', 'Prashanthi', 'Bheemreddy', '0809 604 3', 'vasavi'),
('prashanthinov3@gmail.com', 'Prashanthi', 'Bheemreddy', '0809 604 3', 'vasavi'),
('prashanthinov3@gmail.com', 'Prashanthi', 'Bheemreddy', '0809 604 3', 'vasavi'),
('prashanthinov3@gmail.com', 'Prashanthi', 'Bheemreddy', '0809 604 3', 'vasavi'),
('shruthiapr3@gmail.com', 'Shruthi', 'Bheemreddy', '0809 604 3', 'vasavi');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Television', '2017-01-26 16:29:09', ''),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(8, 3, 'Comics', '2017-02-04 04:13:54', ''),
(9, 5, 'Beds', '2017-02-04 04:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 04:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', ''),
(13, 7, 'manager', '2020-07-10 14:27:27', NULL),
(14, 8, 'Headmaster', '2020-07-12 17:00:38', NULL),
(15, 9, 'HR', '2020-07-13 14:15:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(22) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` text NOT NULL,
  `user` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `user`) VALUES
(8, 'fgjh', 'ghf', 'nirupamvas967@gmail.com', ''),
(9, 'nirupamvas', 'asd', 'nirupamvas967@gmail.com', ''),
(10, 'Create', 'Create', 'Create@zs', ''),
(11, 'Account', '1234', 'account@account', ''),
(12, 'high', '1245', 'high@high', ''),
(13, 'nirupamvas', '1234', 'nirupamvas967@gmail.com', ''),
(14, 'smacc', '1234', 'SMACC@123', ''),
(15, 'name', '1234', 'name@123', ''),
(17, '', '', '', ''),
(18, '', '', '', ''),
(19, '', '', '', ''),
(20, 'ammu', 'ammu', 'ammu@gmail.com', ''),
(21, 'shruthi', 'shruthi', 'shruthiapr3@gmail.com', 'recruiter'),
(22, 'aaa', 'aaa', 'aaa@gmail.com', 'jobseeker'),
(23, 'abhishek', 'abhishek', 'abhishek@gmail.com', ''),
(24, 'sahasra', 'sahasra', 'sahasra@gmail.com', ''),
(25, 'shruthi', 'shruthi', 'shruthiapr3@gmail.com', ''),
(26, 'prashanthinov3@gmail.c', 'prashanthi', 'prashanthinov3@gmail.com', ''),
(27, 'prashanthinov3@gmail.c', 'prashanthi', 'prashanthinov3@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `we` int(2) NOT NULL,
  `dob` int(6) NOT NULL,
  `yog` int(4) NOT NULL,
  `link` varchar(20) NOT NULL,
  `postal` varchar(20) NOT NULL,
  `hq` int(4) NOT NULL,
  `cgpa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_job`
--
ALTER TABLE `admin_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_job`
--
ALTER TABLE `admin_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
