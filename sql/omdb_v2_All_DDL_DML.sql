-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 09, 2020 at 03:22 AM
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
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(6) NOT NULL,
  `native_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_made` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(23, 'Avengers: Endgame', 'Avengers: Endgame', 2019),
(24, 'The Joker', 'Joker', 2019),
(25, 'John Wick: Chapter 3 - Parabellum', 'John Wick: Chapter 3 - Parabellum', 2019),
(26, 'Kairo', 'Pulse', 2001),
(27, 'Huáng Fēihóng\r\n', 'Once Upon a Time in China', 1991),
(29, 'KungFu panda', 'KungFu panda', 2011);

-- --------------------------------------------------------

--
-- Table structure for table `movie_data`
--

CREATE TABLE `movie_data` (
  `movie_id` int(6) NOT NULL COMMENT 'This is both PK and FK; movie_data is a WEAK entity',
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_line` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plot` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_data`
--

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `tag_line`, `plot`) VALUES
(23, 'English', 'USA', 'Action', '', 'Fight'),
(24, 'English', 'USA', 'Drama, Thriller', '', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.'),
(25, 'English', 'USA', 'Action,Crime', '', 'John Wick is on the run after killing a member of the international assassins\' guild, and with a $14 million price tag on his head, he is the target of hit men and women everywhere.'),
(26, 'Japanese', 'Japan', 'Horror', '', 'After college student Taguchi (Kenji Mizuhashi) commits suicide, a number of young adults living in Tokyo witness terrifying visions transferred across the Internet. As more people disappear throughout the city, the Internet becomes a breeding ground for malevolent spirits. Three seemingly disconnected stories follow Michi (Kumiko Aso), Ryosuke (Haruhiko Katô) and Harue (Koyuki) as they attempt to solve the mystery behind the ghostly visions that are seeping beyond their computer monitors.'),
(27, 'Mandarin', 'China', 'Action', '', 'A man (Jet Li) must protect his martial-arts school while sorting out his feelings for a young woman (Biao Yuen) who is his aunt by adoption.'),
(29, 'English', 'United states', 'Action', '', 'Chinese martial art for justice');

-- --------------------------------------------------------

--
-- Table structure for table `movie_keywords`
--

CREATE TABLE `movie_keywords` (
  `movie_id` int(6) NOT NULL,
  `keyword` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_keywords`
--

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(23, 'Battle'),
(24, 'Comic Book'),
(25, 'Russian Mafia'),
(26, 'JP Horror'),
(27, 'international'),
(29, 'Kung fu panda');

-- --------------------------------------------------------

--
-- Table structure for table `movie_media`
--

CREATE TABLE `movie_media` (
  `movie_media_id` int(6) NOT NULL,
  `m_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_link_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'video, poster, image are three possible values.',
  `movie_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_media`
--

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(2300, 'Avengers-Endgame.jpg', 'poster', 23),
(2401, 'JokerPoster.jpg', 'poster', 24),
(2402, 'Joker-photo-1.jpg', 'photo', 24),
(2403, 'Joker-photo-2.jpg', 'photo', 24),
(2404, 'https://www.joker.movie/', 'video', 24),
(2501, 'john-wick.jpg', 'poster', 25),
(2502, 'john-wick-2.png', 'photo', 25),
(2503, 'john-wick-1.png', 'photo', 25),
(2504, 'https://www.johnwick.movie/videos/exclusivetrailer', 'video', 25),
(2601, 'kairo-poster.jpg', 'poster', 26),
(2602, 'kairo-english.jpg', 'poster', 26),
(2701, 'onceuponatimeinchina.jpg', 'poster', 27),
(2901, 'kungfu_panda.jpg', 'poster', 29);

-- --------------------------------------------------------

--
-- Table structure for table `movie_people`
--

CREATE TABLE `movie_people` (
  `movie_id` int(6) NOT NULL,
  `people_id` int(6) NOT NULL,
  `role` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'director, producer, music director, lead actor, lead actress, supporting actor, supporting actress are possible values',
  `screen_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`, `screen_name`) VALUES
(23, 2301, 'Lead Actor', ''),
(23, 2302, 'Lead Actress', ''),
(23, 2303, 'Director', ''),
(23, 2304, 'Writer', ''),
(23, 2305, 'Producer', ''),
(24, 2401, 'Lead Actor', ''),
(24, 2402, 'Supporting Acto', ''),
(24, 2403, 'Lead Actress', ''),
(24, 2404, 'Director', ''),
(24, 2405, 'Songwriter', ''),
(25, 2501, 'Lead Actor', ''),
(25, 2502, 'Lead Actress', ''),
(25, 2503, 'Director', ''),
(25, 2504, 'Writer', ''),
(25, 2505, 'Writer', ''),
(25, 2506, 'Crew', ''),
(25, 2507, 'Producer', ''),
(25, 2508, 'Producer', ''),
(26, 2601, 'Director', ''),
(26, 2602, 'Director', ''),
(26, 2603, 'Producer', ''),
(26, 2604, 'Lead Actress', ''),
(26, 2605, 'Lead Actor', ''),
(27, 2701, 'Director', ''),
(27, 2702, 'Lead Actor', ''),
(29, 2901, 'producer', ''),
(29, 2902, 'writer', ''),
(29, 2904, 'Lead Actor', ''),
(29, 2905, 'Cast', '');

-- --------------------------------------------------------

--
-- Table structure for table `movie_quotes`
--

CREATE TABLE `movie_quotes` (
  `movie_id` int(6) NOT NULL,
  `movie_quote_id` int(6) NOT NULL,
  `movie_quote_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_song`
--

CREATE TABLE `movie_song` (
  `movie_id` int(6) NOT NULL,
  `song_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This tables reflects an associative entity (movie,song)';

--
-- Dumping data for table `movie_song`
--

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(23, 2301),
(24, 241),
(24, 2401),
(25, 2501),
(25, 2502),
(25, 2503),
(26, 2601),
(27, 2701),
(29, 2901),
(29, 2902);

-- --------------------------------------------------------

--
-- Table structure for table `movie_trivia`
--

CREATE TABLE `movie_trivia` (
  `movie_id` int(6) NOT NULL,
  `trivia` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_trivia`
--

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(23, 'Last word of tony stack'),
(24, 'Joaquin Phoenix based his laugh on \"videos of people suffering from pathological laughter.\" He also sought to portray a character with which audiences could not identify.'),
(25, 'Halle Berry had to learn dog training during the production. She spent six months learning how to train dogs.'),
(26, 'Kiyoshi Kurosawa wrote the novelization for the film.'),
(27, 'The DVD by Ritek is the only version of the movie with the original sync-sound Mandarin track. All other versions are dubbed without the cast\'s real voices.'),
(29, 'The animators took a six-hour kung fu class to get an idea of the movie\'s action');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(6) NOT NULL,
  `stage_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Many people in the movie industry are known by short names',
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'We will store the images locally on the server; This field refers to the image file name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `stage_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(2301, 'Captain America', 'Chris', 'Robert', 'Evans', 'Male', 'captain.png'),
(2302, 'Captain Marvel', 'Brie', 'Sidone', 'Larson', 'Female', 'marvel.png'),
(2303, 'Russo', 'Antony', '', 'Russo', 'Male', 'russo.png'),
(2304, 'Christoper Markus', 'Christoper', '', 'Markus', 'Male', 'markus.png'),
(2305, 'Kelvin', 'Kelvin', '', 'Fiege', 'Male', 'fiege.png'),
(2306, 'lolly', 'Lolly', '', 'Vegas', 'Male', 'lolly.png'),
(2307, 'pat', 'Pat', '', 'Vegas', 'Male', 'pat.png'),
(2401, 'Arthur Fleck', 'Joaquin', '', 'Phoenix', 'Male', 'joaquinphoenix.jpg'),
(2402, 'Murray Franklin', 'Robert', '', 'De Niro', 'Male', 'robertdeniro.jpg'),
(2403, '', 'Todd', '', 'Phillips', 'Male', 'toddphillips.jpg'),
(2404, '', 'Scott', '', 'Silver', 'Male', 'scottsilver.jpg'),
(2405, '', 'Bradley', '', 'Cooper', 'Male', 'bradleycooper.jpg'),
(2406, '', 'Frank', '', 'Sinatra', 'Male', 'franksinatra.jpg'),
(2501, 'John Wick', 'Keanu', '', 'Reeves', 'Male', 'keanu-Reeves.png'),
(2502, 'Sofia', 'Halle', '', 'Berry', 'Female', 'Halle-Berry-1.png'),
(2503, '', 'Chad', '', 'Stahelski', 'Male', 'Chad-Stahelski.png'),
(2504, '', 'Derek', '', 'Kolstad', 'Male', 'Derek-Kolstad.png'),
(2505, '', 'Shay', '', 'Hatten', 'Male', 'Shay-Hatten.png'),
(2506, 'Winston', 'Ian', '', 'McShane', 'Male', 'Ian-McShane.png'),
(2507, '', 'Basil', '', 'Iwanyk', 'Male', 'Basil-Iwanyk.png'),
(2508, '', 'Erica', '', 'Lee', 'Female', 'Erica-Lee.png'),
(2509, '', 'Tyler', '', 'Bates', 'Male', 'Tyler-Bates.png'),
(2511, '', 'Joel', 'J.', 'Richard', 'Male', 'Joel-Richard.png'),
(2601, 'Kiyoshi Kurosawa', 'Kiyoshi', '', 'Kurosawa', 'male', 'kiyoshi.jpg'),
(2603, 'Seiji Okuda', 'Seiji', '', 'Okuda', 'male', 'seiji.jpg'),
(2604, 'Kumiko Aso', 'Kumiko', '', 'Aso', 'female', 'kumiko.jpg'),
(2605, 'Haruhiko Kato', 'Haruhiko', '', 'Kato', 'male', 'haruhiko.jpg'),
(2606, 'Cocco', 'Makishi', '', 'Satoko', 'female', 'cocco.jpg'),
(2701, 'Tsui Hark', 'Tsui', '', 'Hark', 'Male', 'tsuihark.jpg'),
(2702, 'Wong Fei Hung', 'Jet', '', 'Li', 'Male', 'jetli.jpg'),
(2901, 'Director', 'Mark', '', 'Osbrorne', 'Male', 'osborne.jpg'),
(2902, 'writer', 'Jonathan', '', 'Aibel', 'Male', 'Aibel.jpg'),
(2903, 'Music ', 'Hans ', '', 'zimmer', 'female', 'zimmer.jpg'),
(2904, 'Lead Actor', 'Jack', '', 'Black', 'Male', 'Black.jpg'),
(2905, 'Cast', 'Angelina', '', 'Jolie', 'Female', 'Jolie.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `people_trivia`
--

CREATE TABLE `people_trivia` (
  `people_id` int(6) NOT NULL,
  `people_trivia_id` int(6) NOT NULL,
  `people_trivia_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int(5) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lyrics` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `theme`, `lyrics`) VALUES
(2301, 'Come and Get Your Love', '', 'Hail (hail)\r\nWhat\'s the matter with your head? Yeah\r\nHail (hail)\r\nWhat\'s the matter with your mind\r\nAnd your sign? And a, oh, oh, oh\r\nHail (hail)\r\nNothin\' the matter with your head\r\nBaby, find it, come on and find it\r\nHail, with it, baby\r\n\'Cause you\'re fine\r\nAnd you\'re mine, and you look so divine\r\nCome and get your love\r\nCome and get your love\r\nCome and get your love\r\nCome and get your love\r\nHail (hail)\r\nWhat\'s the matter with you? Feel right\r\nDon\'t you feel right baby?\r\nHail, oh yeah\r\nGet it from the main vine, all right\r\nI said a find it, find it\r\nGo on and love it if you like it, yeah\r\nHail (hail)\r\nIt\'s your business if you want some, take some\r\nGet it together baby'),
(2401, 'Send In The Clowns', '', 'Isn\'t it rich?\r\nAre we a pair?\r\nMe here at last on the ground,\r\nYou in mid-air,\r\nWhere are the clowns?\r\nIsn\'t it bliss?\r\nDon\'t you approve?\r\nOne who keeps tearing around,\r\nOne who can\'t move,\r\nWhere are the clowns?\r\nThere ought to be clowns?\r\nJust when I\'d stopped opening doors,\r\nFinally knowing the one that I wanted was yours\r\nMaking my entrance again with my usual flair\r\nSure of my lines\r\nNo one is there\r\nDon\'t you love farce?\r\nMy fault, I fear\r\nI thought that you\'d want what I want\r\nSorry, my dear!\r\nBut where are the clowns\r\nSend in the clowns\r\nDon\'t bother, they\'re here\r\nIsn\'t it rich?\r\nIsn\'t it queer?\r\nLosing my timing this late in my career\r\nBut where are the clowns?\r\nThere ought to be clowns\r\nWell, maybe next year'),
(2450, 'Send In The Clowns', '', 'Isn\'t it rich?\r\nAre we a pair?\r\nMe here at last on the ground,\r\nYou in mid-air,\r\nWhere are the clowns?\r\nIsn\'t it bliss?\r\nDon\'t you approve?\r\nOne who keeps tearing around,\r\nOne who can\'t move,\r\nWhere are the clowns?\r\nThere ought to be clowns?\r\nJust when I\'d stopped opening doors,\r\nFinally knowing the one that I wanted was yours\r\nMaking my entrance again with my usual flair\r\nSure of my lines\r\nNo one is there\r\nDon\'t you love farce?\r\nMy fault, I fear\r\nI thought that you\'d want what I want\r\nSorry, my dear!\r\nBut where are the clowns\r\nSend in the clowns\r\nDon\'t bother, they\'re here\r\nIsn\'t it rich?\r\nIsn\'t it queer?\r\nLosing my timing this late in my career\r\nBut where are the clowns?\r\nThere ought to be clowns\r\nWell, maybe next year'),
(2501, 'Desert Walk', '', NULL),
(2502, 'Shotgun Hot Tub', '', NULL),
(2503, 'Wick In Morocco', '', NULL),
(2601, 'Hane Lay Down My Arms', '', 'Anata wo\r\nUchiotoshita\r\nWatashi no\r\nAoi buki wa\r\nSabite shimatta\r\n\r\nYane ni wa\r\nUtsuro na hato\r\nKanbi na\r\nKotoba dake wo\r\nTabete shimatta\r\n\r\nKaeranai\r\nModoranai\r\nNani mo nai\r\nKore ijou\r\n\r\nAa omoide dake\r\nTsunagaru shika nakute\r\nAa togirete shimau\r\nIki mo taedae\r\nHane wa mai agari\r\nTsuchi e kaeru\r\n\r\nAozora\r\nHirugaeshite\r\nHadaketa\r\nShiroi mune wa\r\nKogete shimatta\r\n\r\nHataru bi ga\r\nFurushikiru\r\nTsuioku wo\r\nSono hate de\r\n\r\nAa dakarete ite mo\r\nKisetsu wo teinei ni\r\nAa nadete irarenai\r\nMou sugu chiru yo\r\nHane wa moetsukite\r\nSora e kaeru\r\n\r\nAa omoide dake\r\nTsunagaru shika nakute\r\nAa togirete shimau\r\nIki mo taedae\r\nHane wa mai agari\r\nTsuchi e kaeru\r\n\r\nAa dakarete ite mo\r\nKisetsu wo teinei ni\r\nAa nadete irarenai\r\nMou sugu chiru yo\r\nHai wa moetsukite\r\nDoko e ikou?'),
(2701, 'Once Upon a Time in China Them', '', NULL),
(2901, 'ancient china/ story of shen', '', NULL),
(2902, 'dumpling warrior', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `song_keywords`
--

CREATE TABLE `song_keywords` (
  `song_id` int(5) NOT NULL,
  `keyword` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_keywords`
--

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(2301, 'Hip'),
(2401, 'clowns'),
(2450, 'clowns'),
(2501, 'Desert'),
(2502, 'Shotgun'),
(2503, 'tick tock'),
(2601, 'Pulse Cocco'),
(2701, 'china'),
(2901, 'kung fu 1'),
(2902, 'kung fu 2');

-- --------------------------------------------------------

--
-- Table structure for table `song_media`
--

CREATE TABLE `song_media` (
  `song_media_id` int(6) NOT NULL,
  `s_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_link_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'audio and video are two possible values',
  `song_id` int(6) NOT NULL COMMENT 'is the FK'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_media`
--

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(2301, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3Dbc0KhhjJP98&psig=AOv', 'poster', 2301),
(2401, 'https://www.youtube.com/watch?v=fOUrnUktTjU', 'audio', 2401),
(2501, 'https://www.youtube.com/watch?v=Lau9FhKJGjc', 'audio', 2501),
(2502, 'https://www.youtube.com/watch?v=WDCsz_Muec0', 'audio', 2502),
(2503, 'https://www.youtube.com/watch?v=4tP2h0hqLy4', 'audio', 2503),
(2601, 'https://www.youtube.com/watch?v=5ApLd1njUuk', 'Youtube', 2601),
(2701, 'https://www.youtube.com/watch?v=oaXQBBM17MA', 'video', 2701),
(2901, 'https://youtu.be/GCzGOWvLFiA', 'Youtube', 2901),
(2902, 'https://youtu.be/8VpnBwBPUzw', 'youtube', 2902);

-- --------------------------------------------------------

--
-- Table structure for table `song_people`
--

CREATE TABLE `song_people` (
  `song_id` int(6) NOT NULL,
  `people_id` int(6) NOT NULL,
  `role` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_people`
--

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(2301, 2306, 'Song Writter'),
(2301, 2307, 'Producer'),
(2401, 246, 'Musician'),
(2450, 2405, 'Songwriter'),
(2501, 2509, 'Musician'),
(2501, 2601, 'Musician'),
(2502, 2509, 'Musician'),
(2502, 2511, 'Musician'),
(2503, 2509, 'Musician'),
(2503, 2511, 'Musician'),
(2601, 2606, 'Singer'),
(2901, 2903, 'music'),
(2902, 2903, 'music');

-- --------------------------------------------------------

--
-- Table structure for table `song_trivia`
--

CREATE TABLE `song_trivia` (
  `song_id` int(6) NOT NULL,
  `song_trivia_id` int(6) NOT NULL,
  `song_trivia_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_data`
--
ALTER TABLE `movie_data`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD PRIMARY KEY (`movie_id`,`keyword`);

--
-- Indexes for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD PRIMARY KEY (`movie_media_id`);

--
-- Indexes for table `movie_people`
--
ALTER TABLE `movie_people`
  ADD PRIMARY KEY (`movie_id`,`people_id`,`role`);

--
-- Indexes for table `movie_quotes`
--
ALTER TABLE `movie_quotes`
  ADD PRIMARY KEY (`movie_quote_id`);

--
-- Indexes for table `movie_song`
--
ALTER TABLE `movie_song`
  ADD PRIMARY KEY (`movie_id`,`song_id`);

--
-- Indexes for table `movie_trivia`
--
ALTER TABLE `movie_trivia`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_trivia`
--
ALTER TABLE `people_trivia`
  ADD PRIMARY KEY (`people_trivia_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `song_keywords`
--
ALTER TABLE `song_keywords`
  ADD PRIMARY KEY (`song_id`,`keyword`);

--
-- Indexes for table `song_media`
--
ALTER TABLE `song_media`
  ADD PRIMARY KEY (`song_media_id`);

--
-- Indexes for table `song_people`
--
ALTER TABLE `song_people`
  ADD PRIMARY KEY (`song_id`,`people_id`,`role`);

--
-- Indexes for table `song_trivia`
--
ALTER TABLE `song_trivia`
  ADD PRIMARY KEY (`song_trivia_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
