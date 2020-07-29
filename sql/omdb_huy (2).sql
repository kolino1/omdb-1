-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 12:35 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

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
(27, 'Huáng Fēihóng\r\n', 'Once Upon a Time in China', 1991);

--
-- Dumping data for table `movie_data`
--

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `plot`) VALUES
(27, 'Mandarin', 'China', 'Action', 'A man (Jet Li) must protect his martial-arts school while sorting out his feelings for a young woman (Biao Yuen) who is his aunt by adoption.');

--
-- Dumping data for table `movie_keywords`
--

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(27, 'international');

--
-- Dumping data for table `movie_media`
--

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(1, 'onceuponatimeinchina.jpg', 'poster', 27);

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(27, 1, 'Director'),
(27, 2, 'Lead Actor');

--
-- Dumping data for table `movie_song`
--

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(27, 2701);

--
-- Dumping data for table `movie_trivia`
--

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(27, 'The DVD by Ritek is the only version of the movie with the original sync-sound Mandarin track. All other versions are dubbed without the cast\'s real voices.');

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `screen_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(1, 'Tsui Hark', 'Tsui', '', 'Hark', 'Male', 'tsuihark.jpg'),
(2, 'Wong Fei Hung', 'Jet', '', 'Li', 'Male', 'jetli.jpg');

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `lyrics`) VALUES
(2701, 'Once Upon a Time in China Them', NULL);

--
-- Dumping data for table `song_keywords`
--

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(2701, 'china');

--
-- Dumping data for table `song_media`
--

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(2701, 'https://www.youtube.com/watch?v=oaXQBBM17MA', 'video', 2701);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
