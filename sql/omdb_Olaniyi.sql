-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 01:37 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(29, 'KungFu panda', 'KungFu panda', 2011);

--
-- Dumping data for table `movie_data`
--

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `plot`) VALUES
(29, 'English', 'United states', 'Action', 'Chinese martial art for justice');

--
-- Dumping data for table `movie_keywords`
--

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(29, 'Kung fu panda');

--
-- Dumping data for table `movie_media`
--

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(1, 'KungFupanda.jpeg', 'poster', 29);

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(29, 1, 'producer'),
(29, 2, 'writer'),
(29, 4, 'Lead Actor'),
(29, 5, 'Cast');

--
-- Dumping data for table `movie_song`
--

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(29, 1),
(29, 2);

--
-- Dumping data for table `movie_trivia`
--

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(29, 'The animators took a six-hour kung fu class to get an idea of the movie\'s action');

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `screen_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(1, 'Director', 'Mark', '', 'Osbrorne', 'Male', 'osborne.jpeg'),
(2, 'writer', 'Jonathan', '', 'Aibel', 'Male', 'Aibel.jpeg'),
(3, 'Music ', 'Hans ', '', 'zimmer', 'female', 'zimmer.jpg'),
(4, 'Lead Actor', 'Jack', '', 'Black', 'Male', 'Black.jpg'),
(5, 'Cast', 'Angelina', '', 'Jolie', 'Female', 'Jolie.jpg');

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `lyrics`) VALUES
(2901, 'ancient china/ story of shen', NULL),
(2902, 'dumpling warrior', NULL);

--
-- Dumping data for table `song_keywords`
--

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(2901, 'kung fu 1'),
(2902, 'kung fu 2');

--
-- Dumping data for table `song_media`
--

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(2901, 'https://youtu.be/GCzGOWvLFiA', 'Youtube', 2901),
(2902, 'https://youtu.be/8VpnBwBPUzw', 'youtube', 2902);

--
-- Dumping data for table `song_people`
--

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(2901, 3, 'music'),
(2902, 3, 'music');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
