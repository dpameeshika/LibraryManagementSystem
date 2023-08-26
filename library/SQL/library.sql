-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 08:14 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'admin', 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2023-04-28 10:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(10, 'F. Scott Fitzgerald', '2023-04-28 10:55:29', NULL),
(11, 'Suzanne Collins', '2023-04-28 10:55:40', NULL),
(12, 'Stieg Larsson', '2023-04-28 10:55:57', NULL),
(13, 'Harper Lee', '2023-04-28 10:56:04', NULL),
(14, 'Rebecca Skloot', '2023-04-28 10:56:12', NULL),
(15, 'Yuval Noah Harari', '2023-04-28 10:56:21', NULL),
(16, 'John Carreyrou', '2023-04-28 10:56:29', NULL),
(17, ' Michelle Alexander', '2023-04-28 10:56:40', NULL),
(18, 'Michelle Obama', '2023-04-28 10:56:53', NULL),
(19, 'Maurice Sendak', '2023-04-28 10:57:04', NULL),
(20, 'E.B. White', '2023-04-28 10:57:11', NULL),
(21, 'Shel Silverstein', '2023-04-28 10:57:17', NULL),
(22, 'Dr. Seuss', '2023-04-28 10:57:24', NULL),
(23, 'C.S. Lewis', '2023-04-28 10:57:30', NULL),
(24, 'John Green', '2023-04-28 10:57:38', NULL),
(25, 'Veronica Roth', '2023-04-28 10:57:44', NULL),
(26, 'James Dashner', '2023-04-28 10:57:50', NULL),
(27, 'Stephenie Meyer', '2023-04-28 10:57:56', NULL),
(28, 'Rainbow Rowell', '2023-04-28 10:58:03', NULL),
(29, 'William Strunk Jr', '2023-04-28 10:58:37', NULL),
(30, 'James Murray', '2023-04-28 10:59:29', NULL),
(31, 'Russell Harper', '2023-04-28 10:59:58', NULL),
(32, 'Merck & Co., Inc', '2023-04-28 11:00:30', NULL),
(33, 'Min Jin Lee', '2023-04-28 11:02:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(4, 'The Great Gatsby', 8, 10, 1, 17, '2023-04-28 11:01:02', '2023-04-28 11:25:05'),
(5, 'The Hunger Games', 8, 11, 2, 13, '2023-04-28 11:01:41', '2023-04-28 11:25:09'),
(6, 'Pachinko', 8, 33, 3, 17, '2023-04-28 11:02:49', '2023-04-28 11:25:12'),
(7, 'The Girl with the Dragon Tattoo', 8, 12, 4, 10, '2023-04-28 11:03:10', '2023-04-28 11:25:14'),
(8, 'To Kill a Mockingbird', 8, 13, 5, 16, '2023-04-28 11:03:32', '2023-04-28 11:25:16'),
(9, 'The Immortal Life of Henrietta Lacks', 9, 14, 6, 16, '2023-04-28 11:03:56', '2023-04-28 11:25:19'),
(10, 'Sapiens: A Brief History of Humankind', 9, 15, 7, 25, '2023-04-28 11:04:47', '2023-04-28 11:25:21'),
(11, 'Bad Blood: Secrets and Lies in a Silicon Valley Startup', 9, 16, 8, 28, '2023-04-28 11:05:06', '2023-04-28 11:25:23'),
(12, 'The New Jim Crow: Mass Incarceration in the Age of Colorblindness', 9, 17, 9, 20, '2023-04-28 11:05:27', '2023-04-28 11:25:25'),
(13, 'Becoming', 9, 18, 10, 33, '2023-04-28 11:05:47', '2023-04-28 11:25:30'),
(14, 'Where the Wild Things Are', 10, 19, 11, 19, '2023-04-28 11:06:10', '2023-04-28 11:25:34'),
(15, 'Charlotte\'s Web', 10, 20, 12, 9, '2023-04-28 11:06:28', '2023-04-28 11:25:36'),
(16, 'The Giving Tree', 10, 21, 13, 18, '2023-04-28 11:06:47', '2023-04-28 11:25:38'),
(17, 'The Cat in the Hat', 10, 22, 14, 10, '2023-04-28 11:07:06', '2023-04-28 11:25:41'),
(18, 'The Chronicles of Narnia', 10, 23, 15, 50, '2023-04-28 11:07:21', '2023-04-28 11:25:43'),
(19, 'The Fault in Our Stars', 11, 24, 16, 15, '2023-04-28 11:07:57', '2023-04-28 11:25:45'),
(20, 'Divergent', 11, 25, 17, 18, '2023-04-28 11:08:14', '2023-04-28 11:25:47'),
(21, 'The Maze Runner', 11, 26, 18, 10, '2023-04-28 11:08:37', '2023-04-28 11:25:51'),
(22, 'Twilight', 11, 27, 19, 18, '2023-04-28 11:08:54', '2023-04-28 11:25:54'),
(23, 'Eleanor & Park', 11, 28, 20, 19, '2023-04-28 11:09:14', '2023-04-28 11:25:58'),
(24, 'The Oxford English Dictionary', 12, 30, 21, 295, '2023-04-28 11:10:03', '2023-04-28 11:26:00'),
(25, 'The Chicago Manual of Style', 12, 31, 22, 70, '2023-04-28 11:10:37', '2023-04-28 11:26:04'),
(26, 'The Elements of Style', 12, 29, 23, 10, '2023-04-28 11:13:09', '2023-04-28 11:26:06'),
(27, 'The Merck Manual of Diagnosis and Therapy', 12, 32, 24, 12, '2023-04-28 11:13:33', '2023-04-28 11:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Fiction', 1, '2023-04-28 10:54:05', '0000-00-00 00:00:00'),
(9, 'Nonfiction', 1, '2023-04-28 10:54:28', '0000-00-00 00:00:00'),
(10, 'Children\'s books', 1, '2023-04-28 10:54:38', '0000-00-00 00:00:00'),
(11, 'Young adult (YA) books', 1, '2023-04-28 10:54:48', '0000-00-00 00:00:00'),
(12, 'Reference books', 1, '2023-04-28 10:54:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) NOT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(11, 4, '3', '2023-04-28 11:27:58', '2023-04-28 11:28:10', 1, 5),
(12, 6, '4', '2023-04-28 11:28:25', NULL, 0, NULL),
(13, 15, '3', '2023-04-28 11:28:49', '2023-04-28 11:28:59', 1, 0),
(14, 23, '5', '2023-04-28 11:29:19', '2023-04-28 11:29:25', 1, 0),
(15, 26, '6', '2023-04-28 11:29:47', NULL, 0, NULL),
(16, 24, '3', '2023-04-28 11:30:05', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(13, '3', 'Dinuka', 'dinuka@lib.com', '0771231231', '53973b28603ce84c4fa5543ca8511d72', 1, '2023-04-28 11:15:55', '2023-04-28 17:07:37'),
(14, '4', 'chandu', 'chandu@lib.com', '0771231232', '532e00060697ee3c3b2dffb2a9ade357', 1, '2023-04-28 11:18:58', NULL),
(15, '5', 'pasindu', 'pasindu@lib.com', '0771231233', 'b1b9b6bbb3a176dde42602fa155c1b7c', 1, '2023-04-28 11:20:05', NULL),
(16, '6', 'danushki', 'danushki@lib.com', '0771231234', '1e4300641a7219b7625916f2d2cdaaa7', 1, '2023-04-28 11:21:06', NULL),
(17, '7', 'sathya', 'sathya@lib.com', '0771231235', '4253aa6dbfb6b28ab0a0b7ac57483a91', 1, '2023-04-28 11:21:49', NULL),
(18, '8', 'malshi', 'malshi@lib.com', '0771231236', '1c9179b73779321d874bb346d7ed485e', 1, '2023-04-28 11:22:16', '2023-04-29 06:44:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
