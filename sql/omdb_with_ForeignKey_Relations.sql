-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 26, 2020 at 03:39 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `movie_anagrams`
--

CREATE TABLE `movie_anagrams` (
  `movie_id` int(6) NOT NULL COMMENT 'movie_anagrams is a WEAK entity. movie_id is both PK and FK',
  `anagram` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'anagram of native name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `movie_keywords`
--

CREATE TABLE `movie_keywords` (
  `movie_id` int(6) NOT NULL,
  `keyword` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `movie_trivia`
--

CREATE TABLE `movie_trivia` (
  `movie_id` int(6) NOT NULL,
  `trivia` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `song_keywords`
--

CREATE TABLE `song_keywords` (
  `song_id` int(5) NOT NULL,
  `keyword` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `song_people`
--

CREATE TABLE `song_people` (
  `song_id` int(6) NOT NULL,
  `people_id` int(6) NOT NULL,
  `role` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `song_trivia`
--

CREATE TABLE `song_trivia` (
  `song_id` int(6) NOT NULL,
  `song_trivia_id` int(6) NOT NULL,
  `song_trivia_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD KEY `movie_id` (`movie_id`);

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
  MODIFY `movie_id` int(6) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_data`
--
ALTER TABLE `movie_data`
  ADD CONSTRAINT `movie_data_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD CONSTRAINT `movie_keywords_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD CONSTRAINT `movie_media_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE;

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
