-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 07:06 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

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
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(23, 'Avengers: Endgame', 'Avengers: Endgame', 2019);

--
-- Dumping data for table `movie_data`
--

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `plot`) VALUES
(23, 'English', 'USA', 'Action', 'Fight');

--
-- Dumping data for table `movie_keywords`
--

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(23, 'Battle');

--
-- Dumping data for table `movie_media`
--

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(230, 'https://www.imdb.com/title/tt4154796/mediaviewer/rm2775147008?ref_=tt_ov_i', 'poster', 23);

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(23, 231, 'Lead Actor'),
(23, 232, 'Lead Actress'),
(23, 233, 'Director'),
(23, 234, 'Writer'),
(23, 235, 'Producer');

--
-- Dumping data for table `movie_song`
--

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(23, 231);

--
-- Dumping data for table `movie_trivia`
--

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(23, 'Last word of tony stack');

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `screen_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(231, 'Captain America', 'Chris', 'Robert', 'Evans', 'Male', 'captain.png'),
(232, 'Captain Marvel', 'Brie', 'Sidone', 'Larson', 'Female', 'marvel.png'),
(233, 'Russo', 'Antony', '', 'Russo', 'Male', 'russo.png'),
(234, 'Christoper Markus', 'Christoper', '', 'Markus', 'Male', 'markus.png'),
(235, 'Kelvin', 'Kelvin', '', 'Fiege', 'Male', 'fiege.png'),
(236, 'lolly', 'Lolly', '', 'Vegas', 'Male', 'lolly.png'),
(237, 'pat', 'Pat', '', 'Vegas', 'Male', 'pat.png');

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `lyrics`) VALUES
(231, 'Come and Get Your Love', 'Hail (hail)\r\nWhat\'s the matter with your head? Yeah\r\nHail (hail)\r\nWhat\'s the matter with your mind\r\nAnd your sign? And a, oh, oh, oh\r\nHail (hail)\r\nNothin\' the matter with your head\r\nBaby, find it, come on and find it\r\nHail, with it, baby\r\n\'Cause you\'re fine\r\nAnd you\'re mine, and you look so divine\r\nCome and get your love\r\nCome and get your love\r\nCome and get your love\r\nCome and get your love\r\nHail (hail)\r\nWhat\'s the matter with you? Feel right\r\nDon\'t you feel right baby?\r\nHail, oh yeah\r\nGet it from the main vine, all right\r\nI said a find it, find it\r\nGo on and love it if you like it, yeah\r\nHail (hail)\r\nIt\'s your business if you want some, take some\r\nGet it together baby');

--
-- Dumping data for table `song_keywords`
--

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(231, 'Hip');

--
-- Dumping data for table `song_media`
--

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(230, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3Dbc0KhhjJP98&psig=AOv', 'poster', 231);

--
-- Dumping data for table `song_people`
--

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(230, 236, 'Song Writter'),
(231, 237, 'Producer');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
