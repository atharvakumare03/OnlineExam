-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2022 at 10:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT 0,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `examID`, `quesNo`, `rightAns`, `ans`) VALUES
(1, 1, 1, 0, '1'),
(2, 1, 1, 1, '2'),
(3, 1, 1, 0, '3'),
(4, 1, 1, 0, '4'),
(5, 1, 2, 0, '1'),
(6, 1, 2, 1, '2'),
(7, 1, 2, 0, '3'),
(8, 1, 2, 0, '4'),
(9, 1, 3, 0, '1'),
(10, 1, 3, 1, '2'),
(11, 1, 3, 0, '3'),
(12, 1, 3, 0, '4'),
(13, 1, 4, 0, '1'),
(14, 1, 4, 1, '2'),
(15, 1, 4, 0, '3'),
(16, 1, 4, 0, '4'),
(17, 1, 5, 0, '1'),
(18, 1, 5, 1, '2'),
(19, 1, 5, 0, '3'),
(20, 1, 5, 0, '4'),
(25, 2, 2, 0, '1'),
(26, 2, 2, 1, '2'),
(27, 2, 2, 0, '3'),
(28, 2, 2, 0, '4'),
(29, 2, 3, 0, 'fdsgqd'),
(30, 2, 3, 0, 'dsfg'),
(31, 2, 3, 1, 'mk'),
(32, 2, 3, 0, 'trtes'),
(37, 2, 5, 0, 'werfg'),
(38, 2, 5, 0, 'erftg'),
(39, 2, 5, 1, 'qedrfgq'),
(40, 2, 5, 0, 'erftg'),
(41, 2, 6, 0, 'wedfr'),
(42, 2, 6, 0, 'qwer'),
(43, 2, 6, 1, 'wert'),
(44, 2, 6, 0, 'ert'),
(45, 6, 1, 1, 'keyword'),
(46, 6, 1, 0, 'variable'),
(47, 6, 1, 0, 'function'),
(48, 6, 1, 0, 'none of them'),
(49, 6, 2, 1, 'hjk'),
(50, 6, 2, 0, 'hj'),
(51, 6, 2, 0, 'ghj'),
(52, 6, 2, 0, 'ghj'),
(53, 6, 3, 1, 'trghjk'),
(54, 6, 3, 0, 'fghjk'),
(55, 6, 3, 0, 'fghjk'),
(56, 6, 3, 0, 'fghjk'),
(57, 6, 4, 1, 'ghjk'),
(58, 6, 4, 0, 'fghjkl'),
(59, 6, 4, 0, 'fghjkl;'),
(60, 6, 4, 0, 'fghjkl;'),
(61, 6, 5, 1, 'ghjkl'),
(62, 6, 5, 0, 'ghjk'),
(63, 6, 5, 0, 'ghjkl'),
(64, 6, 5, 0, 'ghjk'),
(65, 7, 1, 0, '1'),
(66, 7, 1, 0, '1'),
(67, 7, 1, 1, '1'),
(68, 7, 1, 0, '1'),
(69, 7, 2, 1, '3'),
(70, 7, 2, 0, '3'),
(71, 7, 2, 0, '3'),
(72, 7, 2, 0, '3'),
(73, 9, 1, 1, 'dbfk'),
(74, 9, 1, 0, 'dsfb'),
(75, 9, 1, 0, 'nlsdf'),
(76, 9, 1, 0, 'dfdf'),
(77, 9, 2, 0, 'gfh'),
(78, 9, 2, 1, 'qflghfh'),
(79, 9, 2, 0, 'lfglf'),
(80, 9, 2, 0, 'fgl'),
(81, 9, 3, 0, 'dkfdk'),
(82, 9, 3, 1, 'hdfkh'),
(83, 9, 3, 0, 'hkdfh'),
(84, 9, 3, 0, 'hfdk'),
(85, 10, 1, 0, 'dlfn'),
(86, 10, 1, 1, 'ndfnl'),
(87, 10, 1, 0, 'nfdlnd'),
(88, 10, 1, 0, 'fdln'),
(89, 10, 2, 1, 'dnlfl'),
(90, 10, 2, 0, 'dlfnl'),
(91, 10, 2, 0, 'fndln'),
(92, 10, 2, 0, 'ldfnldn'),
(93, 2, 1, 0, 'Dennis Ritchie'),
(94, 2, 1, 0, 'Ken Thompson'),
(95, 2, 1, 0, 'Brian Kernighan'),
(96, 2, 1, 1, 'Bjarne Stroustrup'),
(97, 12, 1, 0, 'hp'),
(98, 12, 1, 0, 'cpp'),
(99, 12, 1, 1, 'h'),
(100, 12, 1, 0, 'hf'),
(101, 12, 2, 0, 'Left-right'),
(102, 12, 2, 0, 'Right-left'),
(103, 12, 2, 1, 'Bottom-up'),
(104, 12, 2, 0, 'Top-down'),
(105, 12, 3, 0, 'Left-right'),
(106, 12, 3, 0, 'Right-left'),
(107, 12, 3, 1, 'Bottom-up'),
(108, 12, 3, 0, 'Top-down'),
(109, 13, 1, 1, 'xc vbnm'),
(110, 13, 1, 0, 'zxcvbnm'),
(111, 13, 1, 0, 'zxcvbn'),
(112, 13, 1, 0, 'Zxcvbnm,'),
(113, 13, 2, 0, 'zxcvbnm'),
(114, 13, 2, 1, ' cvbnmfdghj'),
(115, 13, 2, 0, 'cxvbnm'),
(116, 13, 2, 0, 'sdfghjkl'),
(117, 13, 3, 0, 'xzcvbnm'),
(118, 13, 3, 0, 'derftyk'),
(119, 13, 3, 1, 'wsdefghjk'),
(120, 13, 3, 0, 'cdvfcbgvh'),
(121, 13, 4, 0, 'xcvbnm'),
(122, 13, 4, 0, 'cxvbgnm'),
(123, 13, 4, 0, 'rtghyhujkl;'),
(124, 13, 4, 1, 'zxcvbnm'),
(125, 13, 5, 1, 'sdfgvbnhjmk'),
(126, 13, 5, 0, 'zxc vbnm'),
(127, 13, 5, 0, 'dfdgthjkl'),
(128, 13, 5, 0, 'sdfghjkl');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comp_exam`
--

CREATE TABLE `tbl_comp_exam` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `noQuesDone` int(11) NOT NULL,
  `givenAns` int(11) NOT NULL,
  `isMailed` int(1) NOT NULL DEFAULT 0,
  `dateAdded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comp_exam`
--

INSERT INTO `tbl_comp_exam` (`id`, `userID`, `examID`, `noQuesDone`, `givenAns`, `isMailed`, `dateAdded`) VALUES
(1, 1, 2, 1, 0, 0, '2020-01-26'),
(2, 4, 2, 3, 1, 0, '2020-01-26'),
(3, 4, 6, 5, 5, 0, '2020-01-26'),
(4, 5, 6, 5, 1, 1, '2020-01-27'),
(5, 8, 7, 2, 0, 0, '2022-03-11'),
(6, 9, 9, 3, 1, 0, '2022-03-29'),
(7, 10, 10, 2, 0, 0, '2022-04-04'),
(8, 11, 6, 5, 0, 0, '2022-04-30'),
(9, 12, 6, 5, 0, 0, '2022-05-14'),
(10, 13, 6, 5, 5, 0, '2022-05-16'),
(11, 14, 6, 5, 4, 0, '2022-05-16'),
(12, 14, 7, 2, 1, 0, '2022-05-16'),
(13, 14, 9, 3, 0, 0, '2022-05-16'),
(14, 14, 10, 2, 0, 0, '2022-05-16'),
(15, 15, 6, 5, 0, 0, '2022-05-16'),
(16, 15, 7, 2, 0, 0, '2022-05-16'),
(17, 15, 9, 3, 0, 0, '2022-05-16'),
(18, 15, 12, 3, 0, 0, '2022-05-16'),
(19, 16, 12, 3, 3, 0, '2022-05-16'),
(20, 16, 2, 3, 0, 0, '2022-05-16'),
(21, 16, 7, 2, 0, 0, '2022-05-16'),
(22, 16, 9, 3, 1, 0, '2022-05-16'),
(23, 16, 10, 2, 1, 0, '2022-05-16'),
(24, 20, 12, 3, 3, 0, '2022-05-16'),
(25, 19, 2, 3, 0, 0, '2022-05-18'),
(26, 19, 12, 2, 0, 0, '2022-05-18'),
(27, 19, 10, 2, 1, 0, '2022-05-18'),
(28, 19, 7, 2, 1, 0, '2022-05-18'),
(29, 19, 9, 3, 1, 0, '2022-05-18'),
(30, 21, 2, 3, 0, 0, '2022-05-18'),
(31, 21, 6, 5, 2, 0, '2022-05-18'),
(32, 21, 7, 1, 0, 0, '2022-05-18'),
(33, 23, 6, 5, 5, 0, '2022-05-24'),
(34, 23, 7, 2, 1, 0, '2022-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam`
--

CREATE TABLE `tbl_exam` (
  `id` int(11) NOT NULL,
  `examName` varchar(100) NOT NULL,
  `moOfQue` int(11) NOT NULL,
  `examTime` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `dateAdded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_exam`
--

INSERT INTO `tbl_exam` (`id`, `examName`, `moOfQue`, `examTime`, `status`, `dateAdded`) VALUES
(2, 'Test', 5, '30', 0, '2020-01-26'),
(6, 'PHP', 5, '6', 0, '2020-01-26'),
(7, 'yy', 2, '10', 0, '2022-03-11'),
(8, 'mattt', 3, '10', 0, '2022-03-20'),
(9, 'WPP', 3, '10', 0, '2022-03-29'),
(10, 'hamza', 2, '20', 0, '2022-04-04'),
(12, 'C++', 2, '1', 0, '2022-05-16'),
(13, 'oracle', 5, '20', 0, '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `examID` int(11) DEFAULT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `examID`, `quesNo`, `ques`) VALUES
(2, 2, 2, 'what is test?123'),
(3, 2, 3, 'What t c++'),
(5, 2, 5, 'rftgh'),
(6, 2, 6, 'wertgyhujklo;'),
(7, 6, 1, 'What is echo?'),
(8, 6, 2, 'dfghjklfghjk'),
(9, 6, 3, 'cvbnm,'),
(10, 6, 4, 'kl'),
(11, 6, 5, 'fghjk'),
(12, 7, 1, '2323'),
(13, 7, 2, '33'),
(14, 9, 1, 'kdbkfkdbfdb'),
(15, 9, 2, 'ejfejfe'),
(16, 9, 3, 'hfghfgf'),
(17, 10, 1, 'kjbgsksdbkfdb'),
(18, 10, 2, 'dfhksfkd'),
(19, 2, 1, 'Who invented C++?'),
(20, 12, 1, ' Which of the following user-defined header file extension used in c++?'),
(21, 12, 2, 'Which of the following approach is used by C++?'),
(22, 12, 3, 'Which of the following approach is used by C++?'),
(23, 13, 1, 'asdxfghjjk'),
(24, 13, 2, 'asdfghjk'),
(25, 13, 3, 'fghjkhgdsfghj'),
(26, 13, 4, 'xdvgvhbjkl'),
(27, 13, 5, 'xcvbnm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `branch` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `branch`, `username`, `password`, `email`, `status`) VALUES
(1, 'Tejas', '', 'TN123456', 'e10adc3949ba59abbe56e057f20f883e', 'tejas@gmail.com', 0),
(4, 'Swati', '', '1718000021', 'e10adc3949ba59abbe56e057f20f883e', 'tileswati2001@gmail.com', 0),
(5, 'Rakesh', '', 'EN123456', 'e10adc3949ba59abbe56e057f20f883e', 'rakesh9370s@gmail.com', 0),
(6, 'payil', 'Computer', '1234567', '0052069db1a0017f6a27f27e6dcbb919', 'ww@gmail.com', 0),
(7, 'akash', 'Computer', '12345', '827ccb0eea8a706c4c34a16891f84e7b', '123@gmail.com', 0),
(10, 'hamza', 'Computer', '1224555', 'e10adc3949ba59abbe56e057f20f883e', 'hamza@gmail.com', 0),
(11, 'harshal', 'Computer', '1201', 'e10adc3949ba59abbe56e057f20f883e', 'harshal@gmail.com', 0),
(13, 'Devika', '', 'user', '34eace700b79730481c17bab7e2657e1', 'devika@gmail.com', 0),
(14, 'Devika', 'Computer', 'user', '837bb028089842e1ca04a3c85829cdea', 'devika@gmail.com', 0),
(15, 'swara', '', 'user', '3159cf72f7d756f1dbf1de2c3d6ebd56', 'swara@gmail.com', 0),
(16, 'harihar', '', 'hari', '149c3f56e26fc515033bd47dd602699b', 'hari@gmail.com', 0),
(17, 'sai', 'Computer', 'user', 'a29bac723ca2d59ed78a2d715e17e92f', 'sai@gmail.com', 0),
(18, 'harihar', '', 'hari', 'a9bcf1e4d7b95a22e2975c812d938889', 'hari@gmail.com', 0),
(19, 'arati', '', 'user', '13dd520baf6553c263452508a9d04ad8', 'arati@gmail.com', 0),
(20, 'rr', 'ENTC', 'rr12', '514f1b439f404f86f77090fa9edc96ce', 'rr@mail.com', 0),
(21, 'Devesh', 'Computer', 'user', '257bd922a614ae23238271abfc096567', 'devesh@gmail.com', 0),
(22, 'arati', 'Electrical', 'user', '13dd520baf6553c263452508a9d04ad8', 'arati12@gmail.com', 0),
(23, 'om', 'Computer', 'user', 'd58da82289939d8c4ec4f40689c2847e', 'om@gmail.com', 0),
(24, 'Gayatri wagh', 'Computer', 'admin', '34eace700b79730481c17bab7e2657e1', 'gayatriw@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comp_exam`
--
ALTER TABLE `tbl_comp_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exam`
--
ALTER TABLE `tbl_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tbl_comp_exam`
--
ALTER TABLE `tbl_comp_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_exam`
--
ALTER TABLE `tbl_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
