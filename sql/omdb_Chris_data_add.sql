-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2020 at 06:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omdb`
--

--
-- Dumping data for table `movie_anagrams`
--

INSERT INTO `movie_anagrams` (`movie_id`, `anagram`) VALUES
(36, 'Ariko');

--
-- Dumping data for table `movie_data`
--

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `tag_line`, `plot`) VALUES
(26, 'Japanese', 'Japan', 'Horror', 'Do you want to meet a ghost?', 'After college student Taguchi (Kenji Mizuhashi) commits suicide, a number of young adults living in Tokyo witness terrifying visions transferred across the Internet. As more people disappear throughout the city, the Internet becomes a breeding ground for malevolent spirits. Three seemingly disconnected stories follow Michi (Kumiko Aso), Ryosuke (Haruhiko Katô) and Harue (Koyuki) as they attempt to solve the mystery behind the ghostly visions that are seeping beyond their computer monitors.');

--
-- Dumping data for table `movie_numbers`
--

INSERT INTO `movie_numbers` (`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) VALUES
(26, 119, 119, NULL, NULL, NULL, 318451);

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`, `screen_name`) VALUES
(26, 2601, 'Director', ''),
(26, 2603, 'Producer', ''),
(26, 2604, 'Lead Actress', 'Michi Kudo'),
(26, 2605, 'Lead Actor', 'Ryosuke Kawashima');

--
-- Dumping data for table `movie_quotes`
--

INSERT INTO `movie_quotes` (`movie_id`, `movie_quote_id`, `movie_quote_name`) VALUES
(26, 2601, '\"Death was... eternal loneliness.\"'),
(26, 2602, '\"Tasukete.\"');

--
-- Dumping data for table `people_trivia`
--

INSERT INTO `people_trivia` (`people_id`, `people_trivia_id`, `people_trivia_name`) VALUES
(2604, 2601, 'Began her career with 1995 film \"Bad Guy Beach\".'),
(2601, 2602, 'Known also 1997\'s Cure and 2008\'s Tokyo Sonata.');

--
-- Dumping data for table `song_trivia`
--

INSERT INTO `song_trivia` (`song_id`, `song_trivia_id`, `song_trivia_name`) VALUES
(2601, 2601, 'The song is the only music in the film and plays during the credits.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
