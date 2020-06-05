-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 11:54 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freelance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `id` int(11) NOT NULL,
  `degree` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`id`, `degree`) VALUES
(76, 'Bachelor of Architecture (BArch)\r\n'),
(77, 'Bachelor of Arts (BA)\r\n'),
(78, 'Bachelor of Applied Arts (BAA)\r\n'),
(79, 'Bachelor of Engineering (BE)\r\n'),
(80, 'Bachelor of Technology (B.Tech)\r\n'),
(81, 'Bachelor of Business Administration (BBA)\r\n'),
(82, 'Bachelor of Management Studies (BMS)\r\n'),
(83, 'Bachelor of Commerce (B.Com)\r\n'),
(84, 'Bachelor of Fine Arts (BFA)\r\n'),
(85, 'Bachelor of Business Studies (BBS)\r\n'),
(86, 'Bachelor of Science in Information Technology (BSc IT)\r\n'),
(87, 'Bachelor of Computer Applications (BCA)\r\n'),
(88, 'Bachelor of Business Information Systems (BBIS)\r\n'),
(89, 'Bachelor of Science (BSc)\r\n'),
(90, 'Bachelor of Journalism (BJ)\r\n'),
(91, 'Bachelor of Philosophy (BPhil,)\r\n'),
(92, 'Bachelor of Arts in Psychology (BAPSY)\r\n'),
(93, 'Bachelor of Arts in Social Work (BSW)\r\n'),
(94, 'Bachelor of Education(B.Ed)\r\n'),
(95, 'Master of Architecture (MArch)\r\n'),
(96, 'Master of Arts (MA)\r\n'),
(97, 'Master of Applied Arts (MAA)\r\n'),
(98, 'Master of Engineering (ME)\r\n'),
(99, 'Master of Technology (M.Tech)\r\n'),
(100, 'Master of Business Administration (MBA)\r\n'),
(101, 'Master of Management Studies (MMS)\r\n'),
(102, 'Master of Commerce (M.Com)\r\n'),
(103, 'Master of Fine Arts (MFA)\r\n'),
(104, 'Master of Business Studies (MBS)\r\n'),
(105, 'Master of Science in Information Technology (MSc IT)\r\n'),
(106, 'Master of Computer Applications (MCA)\r\n'),
(107, 'Master of Business Information Systems (MBIS)\r\n'),
(108, 'Master of Science (MSc)\r\n'),
(109, 'Master of Journalism (MJ)\r\n'),
(110, 'Master of Philosophy (MPhil,)\r\n'),
(111, 'Master of Arts in Psychology (MAPSY)\r\n'),
(112, 'Master of Arts in Social Work (MSW)\r\n'),
(113, 'Master of Education(M.Ed)\r\n'),
(114, 'High School Degree'),
(115, 'Secondary Level'),
(116, 'Bachelor Degree (others)'),
(117, 'Master Degree (others)'),
(118, 'Doctor of Philosophy(PhD)');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `start_year` varchar(20) DEFAULT NULL,
  `end_year` varchar(20) DEFAULT NULL,
  `description` text,
  `degree_id` int(11) NOT NULL,
  `freelancer_id` int(11) NOT NULL,
  `major` varchar(50) NOT NULL,
  `institute_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `start_year`, `end_year`, `description`, `degree_id`, `freelancer_id`, `major`, `institute_id`) VALUES
(1, '2010', '2012', '', 114, 1, 'Computer Science', 4);

-- --------------------------------------------------------

--
-- Table structure for table `freelancer`
--

CREATE TABLE `freelancer` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `join_date` varchar(20) DEFAULT NULL,
  `description` text,
  `headline` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `freelancer`
--

INSERT INTO `freelancer` (`id`, `users_id`, `join_date`, `description`, `headline`) VALUES
(1, 22, '2020-05-30', 'hy \\n hy', 'hy');

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`id`, `name`) VALUES
(1, 'Tribhuwan University'),
(2, 'Chitwan Medical College'),
(3, 'Sikkim Manipal University'),
(4, 'Balmiki Providence College');

-- --------------------------------------------------------

--
-- Table structure for table `job_history`
--

CREATE TABLE `job_history` (
  `id` int(11) NOT NULL,
  `start_year` varchar(20) DEFAULT NULL,
  `end_year` varchar(20) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `freelancer_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(50) DEFAULT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_address` varchar(50) DEFAULT NULL,
  `u_mobile` varchar(20) DEFAULT NULL,
  `u_pass` varchar(255) DEFAULT NULL,
  `u_auth` varchar(255) DEFAULT NULL,
  `u_status` varchar(50) DEFAULT NULL,
  `u_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_email`, `u_address`, `u_mobile`, `u_pass`, `u_auth`, `u_status`, `u_image`) VALUES
(22, 'Shemanta Bhattarai', 'shemanta.bhattarai@hotmail.com', '57210', '9814991140', '25d55ad283aa400af464c76d713c07ad', '351e58107f8baba7ba4a447dc404d62a', 'verified', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edu_institutefk` (`institute_id`),
  ADD KEY `edu_degree` (`degree_id`),
  ADD KEY `edu_freelancer` (`freelancer_id`);

--
-- Indexes for table `freelancer`
--
ALTER TABLE `freelancer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `freelancer_users` (`users_id`);

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_history`
--
ALTER TABLE `job_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_company` (`company_id`),
  ADD KEY `job_position` (`position_id`),
  ADD KEY `job_freelancer` (`freelancer_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `degree`
--
ALTER TABLE `degree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `freelancer`
--
ALTER TABLE `freelancer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `institute`
--
ALTER TABLE `institute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_history`
--
ALTER TABLE `job_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `edu_degree` FOREIGN KEY (`degree_id`) REFERENCES `degree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `edu_freelancer` FOREIGN KEY (`freelancer_id`) REFERENCES `freelancer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `edu_institutefk` FOREIGN KEY (`institute_id`) REFERENCES `institute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `freelancer`
--
ALTER TABLE `freelancer`
  ADD CONSTRAINT `freelancer_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_history`
--
ALTER TABLE `job_history`
  ADD CONSTRAINT `job_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_freelancer` FOREIGN KEY (`freelancer_id`) REFERENCES `freelancer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_position` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
