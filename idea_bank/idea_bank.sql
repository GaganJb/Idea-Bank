-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2020 at 06:30 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idea_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` varchar(200) NOT NULL,
  `comment_content` text DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `post_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_content`, `name`, `post_id`) VALUES
('4d5b332bc3ee472e150890878efdca6b2cb29d3db94c141be9c7341cc8d44a2e1f1ab00bbde3ca23', 'A similar case exits. case no. is #888888', 'kartikey', 'd5670691366959ddd9223c4e7ef53e4edb3c91f0021c1e23248e71b32a8d2b2e24314999f67492bd'),
('630e87f25dfce81ff9d500ac79eee7b15cd0523fccf9a4e67d4b007e84de9fd82c40ace6311fbfd8', 'You can check Inside Page', 'gsingh', 'f6ea97f77136aeddf6d067104e4170088614015fc76c522f0029a8dfdee5f5bff9616a5094597336'),
('6893e4b5a6533bec129d5bd10582d79ac39926371d40b0514b967475925bc04bb6213b2f855cdbc9', 'Great Idea!', 'vishal', '10da6098eec3c299eaadc18dbe241d8876cde0a65b1d9633a82dd44f82e90b844a10c1155aca163e'),
('c10fd37c73a18d330f5860761071878d0aa7729e253deecb16098fdaccdda9c62240ff00624846be', 'You can contact Neeraj for more information', 'vishal', 'f6ea97f77136aeddf6d067104e4170088614015fc76c522f0029a8dfdee5f5bff9616a5094597336'),
('c3f3bd4f1827442185beb5c0f224cba24e0b0689e9c5e0b2ffa13d0df349568341125efec474aaa9', 'You can also try to add simulink in it.', 'satyam', '1e527a2c2f7788a045e4c284f8bfed13ba8971888876a0826de3366be22a5ddd3c27e5184acc66a7');

-- --------------------------------------------------------

--
-- Table structure for table `contributors`
--

CREATE TABLE `contributors` (
  `post_id` varchar(200) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `contribution` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contributors`
--

INSERT INTO `contributors` (`post_id`, `c_name`, `contribution`) VALUES
('10da6098eec3c299eaadc18dbe241d8876cde0a65b1d9633a82dd44f82e90b844a10c1155aca163e', 'gagan', 10),
('10da6098eec3c299eaadc18dbe241d8876cde0a65b1d9633a82dd44f82e90b844a10c1155aca163e', 'gsingh', 10),
('10da6098eec3c299eaadc18dbe241d8876cde0a65b1d9633a82dd44f82e90b844a10c1155aca163e', 'kartikey', 10),
('10da6098eec3c299eaadc18dbe241d8876cde0a65b1d9633a82dd44f82e90b844a10c1155aca163e', 'neeraj', 10),
('10da6098eec3c299eaadc18dbe241d8876cde0a65b1d9633a82dd44f82e90b844a10c1155aca163e', 'vashist', 10),
('10da6098eec3c299eaadc18dbe241d8876cde0a65b1d9633a82dd44f82e90b844a10c1155aca163e', 'vishal', 10),
('1e527a2c2f7788a045e4c284f8bfed13ba8971888876a0826de3366be22a5ddd3c27e5184acc66a7', 'anurag', 10),
('1e527a2c2f7788a045e4c284f8bfed13ba8971888876a0826de3366be22a5ddd3c27e5184acc66a7', 'gagan', 10),
('1e527a2c2f7788a045e4c284f8bfed13ba8971888876a0826de3366be22a5ddd3c27e5184acc66a7', 'neeraj', 10),
('1e527a2c2f7788a045e4c284f8bfed13ba8971888876a0826de3366be22a5ddd3c27e5184acc66a7', 'satyam', 10),
('1e527a2c2f7788a045e4c284f8bfed13ba8971888876a0826de3366be22a5ddd3c27e5184acc66a7', 'vashist', 10),
('4cc3599af7ddde6542f90e02d4ae4f84c0de5c108257803b4e26fcc13b8957493e9e87fdc9237b6e', 'gagan', 10),
('4cc3599af7ddde6542f90e02d4ae4f84c0de5c108257803b4e26fcc13b8957493e9e87fdc9237b6e', 'gsingh', 10),
('4cc3599af7ddde6542f90e02d4ae4f84c0de5c108257803b4e26fcc13b8957493e9e87fdc9237b6e', 'neeraj', 10),
('4cc3599af7ddde6542f90e02d4ae4f84c0de5c108257803b4e26fcc13b8957493e9e87fdc9237b6e', 'vishal', 10);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `offer_id` int(11) NOT NULL,
  `offer_title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`offer_id`, `offer_title`, `description`, `cost`) VALUES
(1, 'Extra Leave', 'Buy this offer by expending 2000 MWPoints and get an extra leave in the next month.', 2000),
(2, 'Free Meal', 'Buy this offer by expending 200 MWPoints and get a free meal', 200),
(3, 'Shopping Coupon - Rs.100', 'Buy this offer by expending 500 MWPoints and get a Shopping coupon worth Rs. 100.', 500),
(4, 'Free Meal for a week', 'Buy this offer by expending 750 MWPoints and get free meals for a week.', 750),
(5, 'Shopping Coupon - Rs.200', 'Buy this offer by expending 1000 MWPoints and get a Shopping coupon worth Rs. 200.', 1000),
(6, 'Shopping Coupon - Rs.500', 'Buy this offer by expending 2500 MWPoints and get a Shopping coupon worth Rs. 500.', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` varchar(200) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `current_status` varchar(30) DEFAULT NULL,
  `post_creation_time` datetime DEFAULT NULL,
  `post_text` text DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `post_heading` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `name`, `current_status`, `post_creation_time`, `post_text`, `type`, `post_heading`) VALUES
('10da6098eec3c299eaadc18dbe241d8876cde0a65b1d9633a82dd44f82e90b844a10c1155aca163e', 'vashist', 'Completed', '2020-06-22 16:35:03', 'Create a donation platform to help needy. It can be used by MathWorks Employees.', 'idea', 'Donation Platform'),
('1e527a2c2f7788a045e4c284f8bfed13ba8971888876a0826de3366be22a5ddd3c27e5184acc66a7', 'anurag', 'Idea proposed', '2020-06-22 16:55:35', 'A am working on game to learn MATLAB.', 'idea', 'A game to learn MATLAB'),
('4cc3599af7ddde6542f90e02d4ae4f84c0de5c108257803b4e26fcc13b8957493e9e87fdc9237b6e', 'vishal', 'In progress', '2020-06-22 16:43:17', 'A platform for MathWorkers to share their journey with MathWorks and recent challenges and solutions.', 'idea', 'A Blog writing app.'),
('d5670691366959ddd9223c4e7ef53e4edb3c91f0021c1e23248e71b32a8d2b2e24314999f67492bd', 'gsingh', 'Idea proposed', '2020-06-22 16:52:53', 'Can you suggest some workflow for #9999999', 'problem', 'Problem with a case'),
('f6ea97f77136aeddf6d067104e4170088614015fc76c522f0029a8dfdee5f5bff9616a5094597336', 'vashist', 'Idea proposed', '2020-06-22 16:38:20', 'I have a problem with remote desktop. Please help me in resolving it', 'problem', 'Problem with Remote Desktop');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` varchar(260) NOT NULL,
  `username` varchar(50) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `purchase_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchase_id`, `username`, `offer_id`, `cost`, `purchase_date`) VALUES
('12c412d3726167abf15c9cbd6a932b88cf00b5178be342045478224feb9d9562fac3a8ab0b204f90', 'anurag', 3, 500, '2020-06-22'),
('167f8b3050f1b7e530470ac82de61b39dd91eb098408d25507cb68e9c3128c9356bd86531df6da0a', 'gagan', 2, 200, '2020-06-22'),
('1bcbeb3fd971139759ceef8b2370f0a2f8ea2ab0f47875d4851dc8c4f0d2a64598cfba3373705b04', 'satyam', 5, 1000, '2020-06-22'),
('1ca8052daaad79bb85dd86838a8141dcd4a1a54b6120c78ce5a241474f07e9e711b2ea6dd157a48c', 'neeraj', 2, 200, '2020-06-22'),
('3d241a744abb97d770bf6a57bc8fe740330c0e8579228fe6069af5a97398a9f1e2ec174339ca5acf', 'vishal', 3, 500, '2020-06-22'),
('3eae2e49b27d78d68a292c8fd2cdc0a77cfd874fc0c88fe1917cecf8575522accf31f26fefdfb671', 'vishal', 4, 750, '2020-06-22'),
('5771c4c3489d04a9aa01336f8b321a21fd89b6fd243fb1c0323d356839f3c9fa2a6fd54c418fc561', 'gsingh', 2, 200, '2020-06-23'),
('59bd3cc60561bcde40870e7e531db1ae771f7a3637b800639fd89d283bd376f34751c80bfa7c496f', 'vishal', 2, 200, '2020-06-22'),
('659df59c6289739a62ce1a944f2c3a8bcf2a164cc7224d3ee5d843f8b539794a585aa67a97de1970', 'gsingh', 2, 200, '2020-06-22'),
('704ccb0e44e2acf58ce51ec7bd0b62216157122c65dd07d27123b68b45d3f60a7859718f7202da9e', 'vishal', 3, 500, '2020-06-22'),
('8f3e879795139090839a3e9e31210b8a01fa80cc8656b63186420d077caa09255b685ddd8bb43dbc', 'kartikey', 4, 750, '2020-06-22'),
('9f92cf85f6f3e3a4ec32784beba36a027d1c49503633d0dda81f9169f694a99392be52dea79d840c', 'gagan', 5, 1000, '2020-06-22'),
('f8301b2ed62064ea04b6946062fa45280fb0234483baecd61b3ee149befaad56a2362ce10a870059', 'neeraj', 2, 200, '2020-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `MWpoints` int(11) DEFAULT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `MWpoints`, `password`) VALUES
(1, 'vishal', 1040, 'vishal'),
(2, 'gsingh', 1600, '123'),
(3, 'neeraj', 690, 'neeraj'),
(4, 'vashist', 1040, 'vashist'),
(5, 'gagan', 290, 'gagan'),
(6, 'satyam', 890, 'satyam'),
(7, 'anurag', 990, 'anurag'),
(12, 'kartikey', 760, 'kartikey');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `contributors`
--
ALTER TABLE `contributors`
  ADD PRIMARY KEY (`post_id`,`c_name`),
  ADD KEY `c_name` (`c_name`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`,`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`name`) REFERENCES `user` (`name`);

--
-- Constraints for table `contributors`
--
ALTER TABLE `contributors`
  ADD CONSTRAINT `contributors_ibfk_1` FOREIGN KEY (`c_name`) REFERENCES `user` (`name`),
  ADD CONSTRAINT `contributors_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`name`) REFERENCES `user` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
