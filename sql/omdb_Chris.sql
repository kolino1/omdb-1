-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 08:52 PM
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
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(26, 'Kairo', 'Pulse', 2001);

--
-- Dumping data for table `movie_data`
--

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `plot`) VALUES
(26, 'Japanese', 'Japan', 'Horror', 'After college student Taguchi (Kenji Mizuhashi) commits suicide, a number of young adults living in Tokyo witness terrifying visions transferred across the Internet. As more people disappear throughout the city, the Internet becomes a breeding ground for malevolent spirits. Three seemingly disconnected stories follow Michi (Kumiko Aso), Ryosuke (Haruhiko Katô) and Harue (Koyuki) as they attempt to solve the mystery behind the ghostly visions that are seeping beyond their computer monitors.');

--
-- Dumping data for table `movie_keywords`
--

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(26, 'JP Horror');

--
-- Dumping data for table `movie_media`
--

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(261, 'kairo-poster.jpg', 'poster', 26),
(262, 'kairo-english.jpg', 'poster', 26);

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(26, 261, 'Director'),
(26, 262, 'Director'),
(26, 263, 'Producer'),
(26, 264, 'Lead Actress'),
(26, 265, 'Lead Actor');

--
-- Dumping data for table `movie_song`
--

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(26, 261);

--
-- Dumping data for table `movie_trivia`
--

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(26, 'Kiyoshi Kurosawa wrote the novelization for the film.');

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `screen_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(261, 'Kiyoshi Kurosawa', 'Kiyoshi', '', 'Kurosawa', 'male', 'kiyoshi.jpg'),
(263, 'Seiji Okuda', 'Seiji', '', 'Okuda', 'male', 'seiji.jpg'),
(264, 'Kumiko Aso', 'Kumiko', '', 'Aso', 'female', 'kumiko.jpg'),
(265, 'Haruhiko Kato', 'Haruhiko', '', 'Kato', 'male', 'haruhiko.jpg'),
(266, 'Cocco', 'Makishi', '', 'Satoko', 'female', 'cocco.jpg');

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `lyrics`) VALUES
(261, 'Hane Lay Down My Arms', 'Anata wo\r\nUchiotoshita\r\nWatashi no\r\nAoi buki wa\r\nSabite shimatta\r\n\r\nYane ni wa\r\nUtsuro na hato\r\nKanbi na\r\nKotoba dake wo\r\nTabete shimatta\r\n\r\nKaeranai\r\nModoranai\r\nNani mo nai\r\nKore ijou\r\n\r\nAa omoide dake\r\nTsunagaru shika nakute\r\nAa togirete shimau\r\nIki mo taedae\r\nHane wa mai agari\r\nTsuchi e kaeru\r\n\r\nAozora\r\nHirugaeshite\r\nHadaketa\r\nShiroi mune wa\r\nKogete shimatta\r\n\r\nHataru bi ga\r\nFurushikiru\r\nTsuioku wo\r\nSono hate de\r\n\r\nAa dakarete ite mo\r\nKisetsu wo teinei ni\r\nAa nadete irarenai\r\nMou sugu chiru yo\r\nHane wa moetsukite\r\nSora e kaeru\r\n\r\nAa omoide dake\r\nTsunagaru shika nakute\r\nAa togirete shimau\r\nIki mo taedae\r\nHane wa mai agari\r\nTsuchi e kaeru\r\n\r\nAa dakarete ite mo\r\nKisetsu wo teinei ni\r\nAa nadete irarenai\r\nMou sugu chiru yo\r\nHai wa moetsukite\r\nDoko e ikou?');

--
-- Dumping data for table `song_keywords`
--

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(261, 'Pulse Cocco');

--
-- Dumping data for table `song_media`
--

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(261, 'https://www.youtube.com/watch?v=5ApLd1njUuk', 'Youtube', 261);

--
-- Dumping data for table `song_people`
--

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(261, 266, 'Singer');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
