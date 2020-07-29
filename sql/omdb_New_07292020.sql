-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 30, 2020 at 12:50 AM
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
(29, 'KungFu panda', 'KungFu panda', 2011),
(30, 'South Park: Bigger, Longer & Uncut', 'South Park: Bigger, Longer & Uncut', 1999),
(1003, 'Test1', 'Test2', 2020),
(1004, 'Chris', 'Abdi', 2050),
(1005, 'movie1', 'Movie2', 2030),
(1010, 'test7', 'test8', 2021),
(1012, 'test', 'test', 2012),
(1013, 'Issa', 'Abdi', 2020),
(1020, 'Kung Fu', 'Kungfu', 2020),
(1021, 'Kung Fu', 'Kungfu', 2020),
(1028, 'The Old Guard', 'The Old Guard', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `movie_anagrams`
--

CREATE TABLE `movie_anagrams` (
  `movie_id` int(6) NOT NULL COMMENT 'movie_anagrams is a WEAK entity. movie_id is both PK and FK',
  `anagram` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'anagram of native name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_anagrams`
--

INSERT INTO `movie_anagrams` (`movie_id`, `anagram`) VALUES
(30, 'shrugging corpulent breakout'),
(36, 'Ariko');

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
(25, 'English', 'USA', 'Action,Crime', 'If you want peace, prepare for war', 'John Wick is on the run after killing a member of the international assassins\' guild, and with a $14 million price tag on his head, he is the target of hit men and women everywhere.'),
(26, 'Japanese', 'Japan', 'Horror', '', 'After college student Taguchi (Kenji Mizuhashi) commits suicide, a number of young adults living in Tokyo witness terrifying visions transferred across the Internet. As more people disappear throughout the city, the Internet becomes a breeding ground for malevolent spirits. Three seemingly disconnected stories follow Michi (Kumiko Aso), Ryosuke (Haruhiko Katô) and Harue (Koyuki) as they attempt to solve the mystery behind the ghostly visions that are seeping beyond their computer monitors.'),
(27, 'Mandarin', 'China', 'Action', '', 'A man (Jet Li) must protect his martial-arts school while sorting out his feelings for a young woman (Biao Yuen) who is his aunt by adoption.'),
(29, 'English', 'United states', 'Action', '', 'Chinese martial art for justice'),
(30, 'English', 'USA', 'Comedy', 'Warning: This movie will warp your fragile little minds.', 'South Park is an animated series featuring four foul-mouthed 4th graders, Stan, Kyle, Kenny and Cartman. The show is set in the Colorado town of South Park where weird things keep happening, whether its being abducted by aliens or avoiding Kyle\'s little brother Ike.'),
(1013, 'En', 'Us', 'Action', 'test', 'test'),
(1020, 'English', 'USA', 'Action', 'test', 'test'),
(1021, 'English', 'USA', 'Action', 'test', 'test'),
(1028, 'English', 'USA', 'Action', 'Whatever it takes', 'Team of immortal ');

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
(25, 'Shotgun'),
(26, 'JP Horror'),
(29, 'Kung fu panda'),
(1020, 'Wushu'),
(1021, 'Wushu'),
(27, 'international'),
(30, 'Animated'),
(30, 'Cartman'),
(30, 'South Park'),
(1028, 'Supernatural');

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
(1, 'https://www.youtube.com/watch?v=Q7XYFLVGfSA', 'Trailer', 30),
(2, 'SouthParkPoster.jpeg', 'Poster', 30),
(1020, 'youtube.com', 'video', 1020),
(1028, 'theOldGuard.png', 'poster', 1028),
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
-- Table structure for table `movie_numbers`
--

CREATE TABLE `movie_numbers` (
  `movie_id` int(6) NOT NULL COMMENT 'This is both PK and FK; movie_numbers is a WEAK entity',
  `running_time` int(3) DEFAULT NULL COMMENT 'Running Time in Minutes',
  `length` int(2) DEFAULT NULL COMMENT 'length (depends on the native_name)',
  `strength` int(2) DEFAULT NULL COMMENT 'strengh (depends on the native_name)',
  `weight` int(2) DEFAULT NULL COMMENT 'weight (depends on native name)',
  `budget` int(8) DEFAULT NULL COMMENT 'budget in local (native) currency',
  `box_office` int(8) DEFAULT NULL COMMENT 'box office numbers in local (native) currency'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_numbers`
--

INSERT INTO `movie_numbers` (`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) VALUES
(25, 131, NULL, NULL, NULL, 75000000, 326709727),
(26, 119, 119, NULL, NULL, NULL, 318451),
(30, 81, NULL, NULL, NULL, 21000000, 83100000),
(1028, 121, 1, 1, 1, 75000000, 99999999);

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
(25, 2501, 'Lead Actor', 'John'),
(25, 2502, 'Lead Actress', 'Sofia'),
(25, 2503, 'Director', ''),
(25, 2504, 'Writer', ''),
(25, 2505, 'Writer', ''),
(25, 2506, 'Crew', ''),
(25, 2507, 'Producer', ''),
(25, 2508, 'Producer', ''),
(26, 2601, 'Director', ''),
(26, 2602, 'Director', ''),
(26, 2603, 'Producer', ''),
(26, 2604, 'Lead Actress', 'Michi Kudo'),
(26, 2605, 'Lead Actor', 'Ryosuke Kawashima'),
(27, 2701, 'director', ''),
(27, 2702, 'lead actor', ''),
(27, 2703, 'supporting acto', ''),
(27, 2704, 'supporting acto', ''),
(29, 2901, 'producer', ''),
(29, 2902, 'writer', ''),
(29, 2904, 'Lead Actor', ''),
(29, 2905, 'Cast', ''),
(30, 6, 'Director', ''),
(30, 6, 'Lead Actor', ''),
(30, 6, 'Writer', ''),
(30, 7, 'Lead Actor', ''),
(30, 7, 'Writer', ''),
(30, 8, 'Supporting Actr', ''),
(30, 9, 'Support Actress', '');

-- --------------------------------------------------------

--
-- Table structure for table `movie_quotes`
--

CREATE TABLE `movie_quotes` (
  `movie_id` int(6) NOT NULL,
  `movie_quote_id` int(6) NOT NULL,
  `movie_quote_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_quotes`
--

INSERT INTO `movie_quotes` (`movie_id`, `movie_quote_id`, `movie_quote_name`) VALUES
(1028, 1028, 'sometimes you got to work with people, you don\'t w'),
(25, 2501, 'Winston: A fourteen million dollar bounty on his head, and every interested party in the city wants a piece of it, I’d say the odds are about even.'),
(25, 2502, 'Winston: I presume you’re here to discuss John Wick. If that’s so, we can make this short. I told him to walk away, he declined to do so. And that’s the all of it.'),
(25, 2503, '\'Consider your origins, you were not made to live as brutes, but to follow virtue and knowledge.\' - Ernest (John Wick: Chapter 3 – Parabellum)'),
(30, 2504, 'Cartman: What\'s the big deal? It doesn\'t hurt anybody. Fuck, fuckity-fuck-fuck-fuck.'),
(30, 2505, 'Chef: Hello there, children!'),
(26, 2601, '\"Death was... eternal loneliness.\"'),
(26, 2602, '\"Tasukete.\"');

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
(24, 2401),
(25, 2501),
(25, 2502),
(25, 2503),
(26, 2601),
(27, 2701),
(29, 2901),
(29, 2902),
(30, 2),
(30, 3);

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
(29, 'The animators took a six-hour kung fu class to get an idea of the movie\'s action'),
(30, 'In the Guinness World Records 2001, this film was said to have the most profanity used in an animated film. The book cited a total of 399 swear words, including 146 uses of the word \"fuck,\" along with 199 offensive gestures and 221 acts of violence.');

-- --------------------------------------------------------

--
-- Stand-in structure for view `movie_view`
-- (See below for the actual view)
--
CREATE TABLE `movie_view` (
`movie_id` int(6)
,`native_name` varchar(180)
,`english_name` varchar(180)
,`year_made` year(4)
,`tag_line` varchar(100)
,`language` varchar(10)
,`country` varchar(20)
,`genre` varchar(15)
,`plot` varchar(500)
,`trivia_count` mediumtext
,`keyword_count` mediumtext
,`movie_media_count` mediumtext
,`song_count` mediumtext
,`movie_people_count` mediumtext
);

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
(6, 'Trey Parker', 'Randolph', 'Severn', 'Parker', 'M', 'Trey_Parker.jpg'),
(7, 'Matt Stone', 'Matthew', 'Richard', 'Stone', 'M', 'Matt_Stone.jpg'),
(8, 'Pam Brady', 'Pam', '', 'Brady', 'F', 'Pam_Brady.jpg'),
(9, 'Mary Kay Bergman', 'Mary', 'Kay', 'Bergman', 'F', 'Mary_Kay_Bergman.jpg'),
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
(2703, 'Thug', 'Chein-Po', '', 'Tsen', 'Male', ''),
(2704, 'Thug', 'Kwai-Bo', '', 'Chun', 'Male', 'kwaibochun.jpg'),
(2705, 'NA', 'James', '', 'Wong', 'Male', 'jameswong.jpg'),
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

--
-- Dumping data for table `people_trivia`
--

INSERT INTO `people_trivia` (`people_id`, `people_trivia_id`, `people_trivia_name`) VALUES
(2501, 2501, 'The glass structure where John fights Shinobi 1 and Shinobi 2 in the film\'s climax cost $4 million to construct.'),
(2502, 2502, 'Halle Berry broke three ribs while filming the movie.'),
(6, 2503, 'Cannibal! The Musical has Matt and Trey providing commentary, during which Trey gloats over how he\'s now a famous comedy writer and his \"slut of an ex\" is now \"dating a nobody\"'),
(2604, 2601, 'Began her career with 1995 film \"Bad Guy Beach\".'),
(2601, 2602, 'Known also 1997\'s Cure and 2008\'s Tokyo Sonata.');

-- --------------------------------------------------------

--
-- Stand-in structure for view `people_view`
-- (See below for the actual view)
--
CREATE TABLE `people_view` (
`id` int(6)
,`stage_name` varchar(30)
,`first_name` varchar(20)
,`middle_name` varchar(20)
,`last_name` varchar(20)
,`gender` varchar(6)
,`image_name` varchar(30)
,`people_trivia_name` varchar(300)
,`movie_id` int(6)
,`screen_name` varchar(100)
,`movie_role` varchar(15)
,`native_name` varchar(180)
,`english_name` varchar(180)
,`year_made` year(4)
,`song_role` varchar(15)
,`song_title` varchar(30)
);

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
(2, 'Mountain Town', 'Bliss(ful Ignorance)', 'There\'s a bunch of birds in the sky, And some deers just went running by, Ohhh, the snow\'s pure and white on the earth rich and brown, Just another sunday morning in my quiet mountain town.\r\n\r\nThe sun is shining and the grass is green, Under the 3 feet of the snow I mean, This is a day when its hard to wear a frown, All, the happy people stop to say hello!\r\nGet out of my way!,\r\nEven though the temperature\'s low, Its a perfect Sunday morning in my quiet little mountain town,\r\nWell good morning Stan!\r\nMom, can I have eight dollars to see a movie?\r\nA movie?\r\nYeah! This is going to be the best movie ever! It\'s a foreign film from Canada'),
(3, 'Blame Canada', 'Anger', 'Time\'s have changed\r\nOur kids are getting worse\r\nThey won\'t obey their parents\r\nThey just want to fart and curse\r\n\r\nShould we blame the government?\r\nOr blame society?\r\nOr should we blame the images on TV?\r\n\r\nNo, blame Canada, blame Canada\r\nWith all their beady little eyes\r\nAnd flappin\' heads so full of lies\r\n\r\nBlame Canada, blame Canada\r\nWe need to form a full assault\r\nIt\'s Canada\'s fault'),
(2301, 'Come and Get Your Love', '', 'Hail (hail)\r\nWhat\'s the matter with your head? Yeah\r\nHail (hail)\r\nWhat\'s the matter with your mind\r\nAnd your sign? And a, oh, oh, oh\r\nHail (hail)\r\nNothin\' the matter with your head\r\nBaby, find it, come on and find it\r\nHail, with it, baby\r\n\'Cause you\'re fine\r\nAnd you\'re mine, and you look so divine\r\nCome and get your love\r\nCome and get your love\r\nCome and get your love\r\nCome and get your love\r\nHail (hail)\r\nWhat\'s the matter with you? Feel right\r\nDon\'t you feel right baby?\r\nHail, oh yeah\r\nGet it from the main vine, all right\r\nI said a find it, find it\r\nGo on and love it if you like it, yeah\r\nHail (hail)\r\nIt\'s your business if you want some, take some\r\nGet it together baby'),
(2401, 'Send In The Clowns', '', 'Isn\'t it rich?\r\nAre we a pair?\r\nMe here at last on the ground,\r\nYou in mid-air,\r\nWhere are the clowns?\r\nIsn\'t it bliss?\r\nDon\'t you approve?\r\nOne who keeps tearing around,\r\nOne who can\'t move,\r\nWhere are the clowns?\r\nThere ought to be clowns?\r\nJust when I\'d stopped opening doors,\r\nFinally knowing the one that I wanted was yours\r\nMaking my entrance again with my usual flair\r\nSure of my lines\r\nNo one is there\r\nDon\'t you love farce?\r\nMy fault, I fear\r\nI thought that you\'d want what I want\r\nSorry, my dear!\r\nBut where are the clowns\r\nSend in the clowns\r\nDon\'t bother, they\'re here\r\nIsn\'t it rich?\r\nIsn\'t it queer?\r\nLosing my timing this late in my career\r\nBut where are the clowns?\r\nThere ought to be clowns\r\nWell, maybe next year'),
(2501, 'Desert Walk', '', NULL),
(2502, 'Shotgun Hot Tub', '', NULL),
(2503, 'Wick In Morocco', '', NULL),
(2601, 'Hane Lay Down My Arms', '', 'Anata wo\r\nUchiotoshita\r\nWatashi no\r\nAoi buki wa\r\nSabite shimatta\r\n\r\nYane ni wa\r\nUtsuro na hato\r\nKanbi na\r\nKotoba dake wo\r\nTabete shimatta\r\n\r\nKaeranai\r\nModoranai\r\nNani mo nai\r\nKore ijou\r\n\r\nAa omoide dake\r\nTsunagaru shika nakute\r\nAa togirete shimau\r\nIki mo taedae\r\nHane wa mai agari\r\nTsuchi e kaeru\r\n\r\nAozora\r\nHirugaeshite\r\nHadaketa\r\nShiroi mune wa\r\nKogete shimatta\r\n\r\nHataru bi ga\r\nFurushikiru\r\nTsuioku wo\r\nSono hate de\r\n\r\nAa dakarete ite mo\r\nKisetsu wo teinei ni\r\nAa nadete irarenai\r\nMou sugu chiru yo\r\nHane wa moetsukite\r\nSora e kaeru\r\n\r\nAa omoide dake\r\nTsunagaru shika nakute\r\nAa togirete shimau\r\nIki mo taedae\r\nHane wa mai agari\r\nTsuchi e kaeru\r\n\r\nAa dakarete ite mo\r\nKisetsu wo teinei ni\r\nAa nadete irarenai\r\nMou sugu chiru yo\r\nHai wa moetsukite\r\nDoko e ikou?'),
(2701, 'Once Upon a Time in China Them', '', 'O hei osiu man chung long\r\nYit huet yit sing hung yat gwong\r\nDaam si tit da\r\nGwat ji jing gong\r\nHong kam baak chin jeung\r\nNgaan gwong maan lei cheung\r\nSai fen yiu faat ji keung\r\nJo ho hon\r\nJo goh ho hon ji\r\nMui tin yiu ji keung\r\nYit huet naam ji\r\nBit sing hung yat gwong\r\n\r\nInstumental\r\n\r\nYeung hoi tin wai ngoh jeui neng leung\r\nHeui hoi tin pik dei\r\nWai ngoh leiseung heui cheung\r\nHon bik boh go jong\r\nYau hon bik hung gwong fut ho hei yeung\r\nGei si naam yi dong ji keung\r\n\r\nInstrumental\r\n\r\nOn bo ding hung dai ga jok dung leung\r\nJo ho hon\r\nYung ngoh baak dim yit\r\nYiu chut chin fen gwong\r\nJo goh ho hon ji\r\nYit huet yit cheung yit\r\nBit sing hung yat gwong\r\n\r\nInstrumental\r\n\r\nYeung hoi tin wai ngoh jeui neng leung\r\nHeui hoi tin pik dei\r\nWai ngoh leiseung heui cheung\r\nHon bik boh go jong\r\nYau hon bik hung gwong fut ho hei yeung\r\nGei si naam yi dong ji keung\r\n\r\nInstrumental\r\n\r\nOn bo ding hung dai ga jok dung leung\r\nJo ho hon\r\nYung ngoh baak dim yit\r\nYiu chut chin fen gwong\r\nJo goh ho hon ji\r\nYit'),
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
(2, 'Mountain'),
(2, 'Town'),
(3, 'Blame'),
(3, 'Canada'),
(2301, 'Hip'),
(2401, 'clowns'),
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
(1, 'https://www.youtube.com/watch?v=bOR38552MJA', 'Video', 3),
(2, 'https://www.youtube.com/watch?v=DNNOeEDB19E', 'Video', 2),
(2301, 'https://www.youtube.com/watch?v=bc0KhhjJP98', 'audio', 2301),
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
(2, 6, 'Vocals'),
(2, 7, 'Vocals'),
(2, 9, 'Vocals'),
(3, 9, 'Vocals'),
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
(2701, 2705, 'writer'),
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
-- Dumping data for table `song_trivia`
--

INSERT INTO `song_trivia` (`song_id`, `song_trivia_id`, `song_trivia_name`) VALUES
(3, 1, 'The song Blame Canada was nominated for the Academy Award for Best Original Song, but it lost to Phil Collins\' You\'ll Be In My Heart (from Tarzan (1999)). In return, Trey Parker and Matt Stone ridiculed Collins in the fourth season of South Park (1997)'),
(2601, 2601, 'The song is the only music in the film and plays during the credits.');

-- --------------------------------------------------------

--
-- Stand-in structure for view `song_view`
-- (See below for the actual view)
--
CREATE TABLE `song_view` (
`song_id` int(5)
,`title` varchar(30)
,`theme` varchar(100)
,`lyrics` varchar(1000)
,`song_media_id` int(6)
,`s_link` mediumtext
,`s_link_type` varchar(10)
,`people_id` mediumtext
,`song_role` varchar(15)
,`first_name` varchar(20)
,`middle_name` varchar(20)
,`last_name` varchar(20)
,`movie_id` mediumtext
,`native_name` varchar(180)
,`english_name` varchar(180)
,`year_made` year(4)
);

-- --------------------------------------------------------

--
-- Structure for view `movie_view`
--
DROP TABLE IF EXISTS `movie_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `movie_view`  AS  select `movies`.`movie_id` AS `movie_id`,`movies`.`native_name` AS `native_name`,`movies`.`english_name` AS `english_name`,`movies`.`year_made` AS `year_made`,`movie_data`.`tag_line` AS `tag_line`,`movie_data`.`language` AS `language`,`movie_data`.`country` AS `country`,`movie_data`.`genre` AS `genre`,`movie_data`.`plot` AS `plot`,`mtc`.`trivia_count` AS `trivia_count`,`mkc`.`keyword_count` AS `keyword_count`,`mmc`.`movie_media_count` AS `movie_media_count`,`msc`.`song_count` AS `song_count`,`mpc`.`movie_people_count` AS `movie_people_count` from ((((((`movies` left join `movie_data` on(`movies`.`movie_id` = `movie_data`.`movie_id`)) left join (select `movies`.`movie_id` AS `movie_id`,group_concat(`movie_trivia`.`trivia` separator ',') AS `trivia_count` from (`movies` join `movie_trivia` on(`movies`.`movie_id` = `movie_trivia`.`movie_id`)) group by `movies`.`movie_id`) `mtc` on(`movies`.`movie_id` = `mtc`.`movie_id`)) left join (select `movies`.`movie_id` AS `movie_id`,group_concat(`movie_keywords`.`keyword` separator ',') AS `keyword_count` from (`movies` join `movie_keywords` on(`movies`.`movie_id` = `movie_keywords`.`movie_id`)) group by `movies`.`movie_id`) `mkc` on(`movies`.`movie_id` = `mkc`.`movie_id`)) left join (select `movies`.`movie_id` AS `movie_id`,group_concat(`movie_media`.`movie_media_id` separator ',') AS `movie_media_count` from (`movies` left join `movie_media` on(`movies`.`movie_id` = `movie_media`.`movie_id`)) group by `movie_media`.`movie_id`) `mmc` on(`movies`.`movie_id` = `mmc`.`movie_id`)) left join (select `movie_song`.`movie_id` AS `movie_id`,group_concat(`songs`.`song_id` separator ',') AS `song_count` from (`movie_song` left join `songs` on(`movie_song`.`song_id` = `songs`.`song_id`)) group by `movie_song`.`movie_id`) `msc` on(`movies`.`movie_id` = `msc`.`movie_id`)) left join (select `movie_people`.`movie_id` AS `movie_id`,group_concat(`movie_people`.`movie_id` separator ',') AS `movie_people_count` from (`movie_people` join `people` on(`movie_people`.`people_id` = `people`.`id`)) group by `movie_people`.`movie_id`) `mpc` on(`movies`.`movie_id` = `mpc`.`movie_id`)) group by `movies`.`movie_id` ;

-- --------------------------------------------------------

--
-- Structure for view `people_view`
--
DROP TABLE IF EXISTS `people_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `people_view`  AS  select `p`.`id` AS `id`,`p`.`stage_name` AS `stage_name`,`p`.`first_name` AS `first_name`,`p`.`middle_name` AS `middle_name`,`p`.`last_name` AS `last_name`,`p`.`gender` AS `gender`,`p`.`image_name` AS `image_name`,`t`.`people_trivia_name` AS `people_trivia_name`,`mp`.`movie_id` AS `movie_id`,`mp`.`screen_name` AS `screen_name`,`mp`.`role` AS `movie_role`,`m`.`native_name` AS `native_name`,`m`.`english_name` AS `english_name`,`m`.`year_made` AS `year_made`,`sp`.`role` AS `song_role`,`s`.`title` AS `song_title` from (((((`people` `p` left join `people_trivia` `t` on(`p`.`id` = `t`.`people_id`)) left join `movie_people` `mp` on(`p`.`id` = `mp`.`people_id`)) left join `movies` `m` on(`mp`.`movie_id` = `m`.`movie_id`)) left join `song_people` `sp` on(`p`.`id` = `sp`.`people_id`)) left join `songs` `s` on(`sp`.`song_id` = `s`.`song_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `song_view`
--
DROP TABLE IF EXISTS `song_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `song_view`  AS  select `s`.`song_id` AS `song_id`,`s`.`title` AS `title`,`s`.`theme` AS `theme`,`s`.`lyrics` AS `lyrics`,`sm`.`song_media_id` AS `song_media_id`,group_concat(`sm`.`s_link` separator ',') AS `s_link`,`sm`.`s_link_type` AS `s_link_type`,group_concat(`sp`.`people_id` separator ',') AS `people_id`,`sp`.`role` AS `song_role`,`p`.`first_name` AS `first_name`,`p`.`middle_name` AS `middle_name`,`p`.`last_name` AS `last_name`,group_concat(`ms`.`movie_id` separator ',') AS `movie_id`,`m`.`native_name` AS `native_name`,`m`.`english_name` AS `english_name`,`m`.`year_made` AS `year_made` from (((((`songs` `s` left join `song_media` `sm` on(`s`.`song_id` = `sm`.`song_id`)) left join `song_people` `sp` on(`s`.`song_id` = `sp`.`song_id`)) left join `people` `p` on(`sp`.`people_id` = `p`.`id`)) left join `movie_song` `ms` on(`s`.`song_id` = `ms`.`song_id`)) left join `movies` `m` on(`ms`.`movie_id` = `m`.`movie_id`)) group by `s`.`song_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_anagrams`
--
ALTER TABLE `movie_anagrams`
  ADD PRIMARY KEY (`movie_id`,`anagram`);

--
-- Indexes for table `movie_data`
--
ALTER TABLE `movie_data`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD PRIMARY KEY (`movie_media_id`),
  ADD KEY `movie_media_ibfk_1` (`movie_id`);

--
-- Indexes for table `movie_numbers`
--
ALTER TABLE `movie_numbers`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_people`
--
ALTER TABLE `movie_people`
  ADD PRIMARY KEY (`movie_id`,`people_id`,`role`);

--
-- Indexes for table `movie_quotes`
--
ALTER TABLE `movie_quotes`
  ADD PRIMARY KEY (`movie_quote_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movie_song`
--
ALTER TABLE `movie_song`
  ADD PRIMARY KEY (`movie_id`,`song_id`);

--
-- Indexes for table `movie_trivia`
--
ALTER TABLE `movie_trivia`
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_trivia`
--
ALTER TABLE `people_trivia`
  ADD PRIMARY KEY (`people_trivia_id`),
  ADD KEY `people_id` (`people_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `title` (`title`),
  ADD KEY `lyrics` (`lyrics`(768));

--
-- Indexes for table `song_keywords`
--
ALTER TABLE `song_keywords`
  ADD PRIMARY KEY (`song_id`,`keyword`);

--
-- Indexes for table `song_media`
--
ALTER TABLE `song_media`
  ADD PRIMARY KEY (`song_media_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `song_people`
--
ALTER TABLE `song_people`
  ADD PRIMARY KEY (`song_id`,`people_id`,`role`);

--
-- Indexes for table `song_trivia`
--
ALTER TABLE `song_trivia`
  ADD PRIMARY KEY (`song_trivia_id`),
  ADD KEY `song_id` (`song_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1029;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_data`
--
ALTER TABLE `movie_data`
  ADD CONSTRAINT `movie_data_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD CONSTRAINT `movie_keywords_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD CONSTRAINT `movie_media_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_numbers`
--
ALTER TABLE `movie_numbers`
  ADD CONSTRAINT `movie_numbers_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_people`
--
ALTER TABLE `movie_people`
  ADD CONSTRAINT `movie_people_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_quotes`
--
ALTER TABLE `movie_quotes`
  ADD CONSTRAINT `movie_quotes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_song`
--
ALTER TABLE `movie_song`
  ADD CONSTRAINT `movie_song_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_trivia`
--
ALTER TABLE `movie_trivia`
  ADD CONSTRAINT `movie_trivia_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `people_trivia`
--
ALTER TABLE `people_trivia`
  ADD CONSTRAINT `people_trivia_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `song_keywords`
--
ALTER TABLE `song_keywords`
  ADD CONSTRAINT `song_keywords_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE;

--
-- Constraints for table `song_media`
--
ALTER TABLE `song_media`
  ADD CONSTRAINT `song_media_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE;

--
-- Constraints for table `song_trivia`
--
ALTER TABLE `song_trivia`
  ADD CONSTRAINT `song_trivia_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
