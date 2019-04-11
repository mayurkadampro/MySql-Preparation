-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2017 at 12:21 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gangulytech`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `instructor_name` varchar(30) NOT NULL,
  `fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `instructor_name`, `fees`) VALUES
(1, 'MySQL Database', 'Sandeep Ganguly', 4500),
(2, 'PHP Development', 'Dolly Singh', 1500),
(3, 'Java Complete Tutorial', 'Ramesh Yadav', 7500),
(4, 'Swing GUI In Depth', 'Guddu Sharma', 15000),
(5, 'Computer Vision Using Python', 'Narendra Murthy', 25000),
(6, 'AI In Real World Using Python', 'Satya Kundu', 45000),
(7, '2D Games Using PyGame', 'Sandeep Ganguly', 18000),
(8, 'GIMP Photo Editing', 'Rachna Mishra', 5000),
(9, 'HTML', 'Chatur Singh', 1000),
(10, 'CSS3', 'pinky singh', 1500),
(11, 'Amazon Cloud AWS', 'Ruchi Singhania', 75000),
(12, 'Hadoop Big Data', 'Ankita Ganguly', 95000),
(13, 'Natural Language Processing', 'Sandeep Ganguly', 45999),
(14, 'The C Ninja', 'Pradeep Gurung', 3599),
(15, 'Java Database Connectivity', 'Ratan Tata', 6599),
(16, 'Dynamic Website Development', 'Girish Patel', 8599),
(17, 'Android App Development', 'Rishi Khanna', 17999),
(18, 'IOS Developer ', 'Umesh Verma', 25000),
(19, 'Algorithms In Depth', 'Arjun Thapa', 9999),
(20, 'Data Structure In Depth', 'Ashok Kalia', 15000),
(21, 'JQuery Ninja', 'James Guido', 6500),
(22, 'Twitter Bootstrap', 'Mitali Ghosh', 14999),
(23, 'Codeigniter', 'Pawan Kumar', 7599),
(24, 'Struts Framework', 'Umesh Verma', 7500),
(25, 'CakePHP', 'Parvez Khan', 60000),
(26, 'Machine Learning', 'Faisal Qureshi', 45000),
(27, 'Computer Networks', 'Saleem Khan', 12599),
(28, 'C++ STL Library Tutorial', 'Kareem Sheikh', 25000),
(29, 'Kali Linux ', 'Jitan Majhi', 4500),
(30, 'SQLite Tutorial', 'Nitish Kumar', 6500);

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `sid`, `cid`) VALUES
(1, 38, 6),
(2, 51, 6),
(3, 29, 8),
(4, 13, 30),
(5, 34, 4),
(6, 36, 10),
(7, 39, 23),
(8, 37, 7),
(9, 32, 20),
(10, 12, 11),
(11, 27, 11),
(12, 34, 27),
(13, 1, 4),
(14, 3, 16),
(15, 27, 25),
(16, 6, 13),
(17, 6, 9),
(18, 47, 5),
(19, 24, 5),
(20, 14, 20),
(21, 18, 29),
(22, 32, 3),
(23, 25, 15),
(24, 10, 14),
(25, 60, 30),
(26, 16, 11),
(27, 54, 8),
(28, 16, 17),
(29, 55, 13),
(30, 50, 21);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `score` int(3) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `course_name`, `score`, `sid`) VALUES
(1, 'AI In Real World Using Python', 14, 38),
(2, 'AI In Real World Using Python', 99, 51),
(3, 'GIMP Photo Editing', 51, 29),
(4, 'SQLite Tutorial', 57, 13),
(5, 'Swing GUI In Depth', 31, 34),
(6, 'CSS3', 83, 36),
(7, 'Codeigniter', 22, 39),
(8, '2D Games Using PyGame', 60, 37),
(9, 'Data Structure In Depth', 31, 32),
(10, 'Amazon Cloud AWS', 76, 12),
(11, 'Amazon Cloud AWS', 86, 27),
(12, 'Computer Networks', 2, 34),
(13, 'Swing GUI In Depth', 52, 1),
(14, 'Dynamic Website Development', 52, 3),
(15, 'CakePHP', 2, 27),
(16, 'Natural Language Processing', 55, 6),
(17, 'HTML', 68, 6),
(18, 'Computer Vision Using Python', 72, 47),
(19, 'Computer Vision Using Python', 58, 24),
(20, 'Data Structure In Depth', 70, 14),
(21, 'Kali Linux', 76, 18),
(22, 'Java Complete Tutorial', 67, 32),
(23, 'Java Database Connectivity', 8, 25),
(24, 'The C Ninja', 39, 10),
(25, 'SQLite Tutorial', 69, 60);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(3) NOT NULL,
  `pincode` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `city`, `state`, `pincode`) VALUES
(1, 'sandeep ganguly', 'kanpur', 'UP', 601988),
(2, 'piyush chandel', 'nainital', 'UK', 549386),
(3, 'divyanshu shukla', 'kanpur', 'UP', 940965),
(4, 'ankita', 'kanpur', 'UP', 56669),
(5, 'brijesh gupta', 'gorakhpur', 'UP', 460450),
(6, 'siddhartha singh', 'kanpur', 'UP', 132244),
(7, 'parvez hasan', 'faizabad', 'UP', 279869),
(8, 'pawan kumar', 'banglore', 'KA', 2612),
(9, 'umesh verma', 'kolkata', 'WB', 173453),
(10, 'ayushi sharma', 'jammu', 'JK', 859431),
(11, 'shameem beg', 'mumbai', 'MH', 776793),
(12, 'Arun Bhatia', 'pune', 'MH', 305673),
(13, 'shiv patel', 'surat', 'GJ', 197988),
(14, 'aman ali', 'ajmer', 'RJ', 72920),
(15, 'varsha singh', 'mathura', 'UP', 770636),
(16, 'deepak yadav', 'gurugram', 'HR', 634419),
(17, 'manjul saini', 'dhanbad', 'JH', 860186),
(18, 'Ankur sharma', 'ranchi', 'JH', 397676),
(19, 'saurabh gupta', 'ahemdabad', 'GJ', 407819),
(20, 'soumya pandey', 'srinagar', 'JK', 846069),
(21, 'digvijay patel', 'jamnagar', 'GJ', 6887),
(22, 'shivani singh', 'faridabad', 'HR', 496229),
(23, 'sarvik roy', 'purulia', 'WB', 460485),
(24, 'mamta banerjee', 'kolkata', 'WB', 813736),
(25, 'dolly ganguly', 'howrah', 'WB', 687224),
(26, 'shubhojeet mukherjee', 'birbhum', 'WB', 994915),
(27, 'shubham das', 'jhargram', 'WB', 912900),
(28, 'tapas paul', 'bankura', 'WB', 579758),
(29, 'sbhubendu sarkar', 'kolkatta', 'WB', 160089),
(30, 'kaveri bose', 'howrah', 'WB', 61170),
(31, 'mitali chatterjee', 'kolkata', 'WB', 825583),
(32, 'rupoma biswas', 'howrah', 'WB', 944403),
(33, 'sujeet ghara', 'howrah', 'WB', 245270),
(34, 'shweta ghara', 'kolkata', 'WB', 393138),
(35, 'nita ganguly', 'kolkata', 'WB', 229879),
(36, 'sumita ganguly', 'kolkata', 'WB', 969984),
(37, 'sumit thakrey', 'mumbai', 'MH', 160281),
(38, 'nana patekar', 'mumbai', 'MH', 891455),
(39, 'nitin gadkari', 'nagpur', 'MH', 976432),
(40, 'dharmesh pradhan', 'latur', 'MH', 207796),
(41, 'rahul gautam', 'ballia', 'UP', 109681),
(42, 'nishi siddiqi', 'moradabad', 'UP', 925020),
(43, 'disha chandok', 'ludhiana', 'PB', 296055),
(44, 'jimmy gill', 'chandigarh', 'PB', 705216),
(45, 'deepak sharma', 'gurdaspur', 'PB', 637914),
(46, 'ankur bagga', 'chandigarh', 'PB', 73924),
(47, 'asif sheikh', 'kulgam', 'JK', 455876),
(48, 'shahibe alam', 'anantnag', 'JK', 57610),
(49, 'guddu thomas', 'imphal', 'MN', 920423),
(50, 'pradeep gurung', 'chandel', 'MN', 429282),
(51, 'sujeet thapa', 'bishnupur', 'MN', 385144),
(52, 'shankey ale', 'imphal', 'MN', 637873),
(53, 'iti saxena', 'nagpur', 'MH', 33934),
(54, 'chitra chak', 'latur', 'MH', 256051),
(55, 'rinki pal', 'jaipur', 'RJ', 178453),
(56, 'poornima sahay', 'pune', 'MH', 124112),
(57, 'kishan bajpai', 'banglore', 'KA', 85200),
(58, 'sonia dwivedi', 'bokaro', 'JH', 53664),
(59, 'sanjay shukla', 'ambala', 'HR', 12721),
(60, 'sudhir chaudhary', 'kutch', 'GJ', 902611);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
