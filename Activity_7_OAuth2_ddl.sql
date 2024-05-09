-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2024 at 12:49 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jokesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `jokes_table`
--

CREATE TABLE `jokes_table` (
  `JokeID` int(11) NOT NULL,
  `Joke_question` varchar(500) NOT NULL,
  `Joke_answer` varchar(500) NOT NULL,
  `user_id` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jokes_table`
--

INSERT INTO `jokes_table` (`JokeID`, `Joke_question`, `Joke_answer`, `user_id`) VALUES
(1, 'What time is it when an elephant sits on your fence?', 'It\'s time to buy a new fence.', '13'),
(3, 'Why did the chicken cross the road?', 'To get to the other side.', '15'),
(4, 'What did the mother buffalo say to her son when she dropped him off at school?', 'Bison', '16'),
(5, 'Why did the chicken cross the playground?', 'To get to the other slide.', '13'),
(6, 'What happens to a frog\'s car when it breaks down?', 'It gets toad.', '15'),
(7, 'How does a frog start his car when the battery is dead?', 'He gets a jump start.', '16'),
(10, 'what to hear a joke?', 'Your life', '13'),
(17, 'Why can\'t you trust an atom?', 'They make up everything.', '15'),
(18, 'My sister bet me $100 that I couldn\'t make a car out of spagetti', 'You should have seen the look on her face when I drove pasta.', '16'),
(19, 'Where do animals go when their tail falls off?', 'The retail store.', '23'),
(41, 'What does a house wear?', 'Address!', '34'),
(42, 'This is a new Joke.', 'Ha.', '35'),
(43, 'This is the newest joke', 'just now.', '37'),
(48, 'Today is a good day to have what?', 'A great day!', '40'),
(49, 'a', 'b', '41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` text,
  `password` text,
  `google_id` varchar(200) DEFAULT NULL,
  `google_name` varchar(200) DEFAULT NULL,
  `google_email` varchar(200) DEFAULT NULL,
  `google_picture_link` varchar(200) DEFAULT NULL,
  `email_address` text,
  `admin_role` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`, `google_id`, `google_name`, `google_email`, `google_picture_link`, `email_address`, `admin_role`) VALUES
(13, 'bill', 'password', '', '', '', '', 'bill.gates@microsoft.com', 1),
(15, 'kim', 'password', '', '', '', '', ' kim.ill@north.ko', 0),
(16, 'don', 'don', '', '', '', '', '   don.trump@whitehouse.gov   ', 0),
(17, 'bob', ' bob ', '', '', '', '', ' bob@microsoft.com', 0),
(18, ' melinda ', 'm', '', '', '', '', '  melinda.gates@microsoft.com ', 0),
(19, 'jim', 'jim', '', '', '', '', 'jim@msn.com', 0),
(23, 'obama', 'password', '', '', '', '', 'barak@whitehouse.gov', 0),
(37, 'screencast', '$2y$10$oF5zo0o3uYZuwzx9PLNnSuRXDgHs1HM22Sz6hoAKM8ieZMsj5fWz6', '', '', '', '', NULL, NULL),
(38, 'neverused', '$2y$10$wjl2vK6zJ5zHLdvxOLESneazScAyaX4w4y1JW4u7vdU6KOdr4zmUW', '', '', '', '', NULL, NULL),
(39, NULL, NULL, '102378101779174011889', 'John Keen', 'johnkeenishere@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocKBxqIWXFZy1Cbdt-ztOrzmV4iFumhziva6pMLk6OzWP7sGOA=s96-c', NULL, NULL),
(40, NULL, NULL, '115435486219276069192', 'John Keen', 'blueisgoodtoo@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocKRf8W-vgTeelKccmHWeGsr2Ux-BwyX1cVWGPLmo3Ne8POFnw=s96-c', NULL, NULL),
(41, 'testing', '$2y$10$5q51c/U7bLrpUpvJEiJAwuhU6mdFiEJDEFC1R.7Vhe5O6QGi27SW6', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jokes_table`
--
ALTER TABLE `jokes_table`
  ADD PRIMARY KEY (`JokeID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jokes_table`
--
ALTER TABLE `jokes_table`
  MODIFY `JokeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
