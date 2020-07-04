-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 04, 2020 at 12:25 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

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

-- --------------------------------------------------------

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(25, 'John Wick: Chapter 3 - Parabellum', 'John Wick: Chapter 3 - Parabellum', 2019);

-- --------------------------------------------------------

-- Dumping data for table `movie_data`
--

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `plot`) VALUES
(25, 'English', 'USA', 'Action,Crime', 'John Wick is on the run after killing a member of the international assassins\' guild, and with a $14 million price tag on his head, he is the target of hit men and women everywhere.');

-- --------------------------------------------------------

--
-- Dumping data for table `movie_keywords`
--

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(25, 'Russian Mafia');

-- --------------------------------------------------------

--
-- Dumping data for table `movie_media`
--

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(251, 'john-wick.jpg', 'poster', 25),
(252, 'john-wick-2.png', 'photo', 25),
(253, 'john-wick-1.png', 'photo', 25),
(254, 'https://www.johnwick.movie/videos/exclusivetrailer', 'video', 25);

-- --------------------------------------------------------

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(25, 251, 'Lead Actor'),
(25, 252, 'Lead Actress'),
(25, 253, 'Director'),
(25, 254, 'Writer'),
(25, 255, 'Writer'),
(25, 256, 'Crew'),
(25, 257, 'Producer'),
(25, 258, 'Producer');

-- --------------------------------------------------------

--
-- Dumping data for table `movie_song`
--

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(25, 251),
(25, 252),
(25, 253);

-- --------------------------------------------------------

--
-- Dumping data for table `movie_trivia`
--

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(25, 'Halle Berry had to learn dog training during the production. She spent six months learning how to train dogs.');

-- --------------------------------------------------------

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `screen_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(251, 'John Wick', 'Keanu', '', 'Reeves', 'Male', 'keanu-Reeves.png'),
(252, 'Sofia', 'Halle', '', 'Berry', 'Female', 'Halle-Berry-1.png'),
(253, '', 'Chad', '', 'Stahelski', 'Male', 'Chad-Stahelski.png'),
(254, '', 'Derek', '', 'Kolstad', 'Male', 'Derek-Kolstad.png'),
(255, '', 'Shay', '', 'Hatten', 'Male', 'Shay-Hatten.png'),
(256, 'Winston', 'Ian', '', 'McShane', 'Male', 'Ian-McShane.png'),
(257, '', 'Basil', '', 'Iwanyk', 'Male', 'Basil-Iwanyk.png'),
(258, '', 'Erica', '', 'Lee', 'Female', 'Erica-Lee.png'),
(259, '', 'Tyler', '', 'Bates', 'Male', 'Tyler-Bates.png'),
(260, '', 'Joel', 'J.', 'Richard', 'Male', 'Joel-Richard.png');

-- --------------------------------------------------------

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `lyrics`) VALUES
(251, 'Desert Walk', NULL),
(252, 'Shotgun Hot Tub', NULL),
(253, 'Wick In Morocco', NULL);

-- --------------------------------------------------------

--
-- Dumping data for table `song_keywords`
--

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(251, 'Desert'),
(252, 'Shotgun'),
(253, 'tick tock');

-- --------------------------------------------------------

--
-- Dumping data for table `song_media`
--

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(251, 'https://www.youtube.com/watch?v=Lau9FhKJGjc', 'audio', 251),
(252, 'https://www.youtube.com/watch?v=WDCsz_Muec0', 'audio', 252),
(253, 'https://www.youtube.com/watch?v=4tP2h0hqLy4', 'audio', 253);

-- --------------------------------------------------------

--
-- Dumping data for table `song_people`
--

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(251, 259, 'Musician'),
(251, 260, 'Musician'),
(252, 259, 'Musician'),
(252, 260, 'Musician'),
(253, 259, 'Musician'),
(253, 260, 'Musician');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
