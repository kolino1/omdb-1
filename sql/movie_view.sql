-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2020 at 01:00 AM
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
-- Structure for view `movie_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `movie_view`  AS  select `movies`.`movie_id` AS `movie_id`,`movies`.`native_name` AS `native_name`,`movies`.`english_name` AS `english_name`,`movies`.`year_made` AS `year_made`,`movie_data`.`tag_line` AS `tag_line`,`movie_data`.`language` AS `language`,`movie_data`.`country` AS `country`,`movie_data`.`genre` AS `genre`,`movie_data`.`plot` AS `plot`,`mtc`.`trivia_count` AS `trivia_count`,`mkc`.`keyword_count` AS `keyword_count`,`mmc`.`movie_media_count` AS `movie_media_count`,`msc`.`song_count` AS `song_count`,`mpc`.`movie_people_count` AS `movie_people_count` from ((((((`movies` left join `movie_data` on(`movies`.`movie_id` = `movie_data`.`movie_id`)) left join (select `movies`.`movie_id` AS `movie_id`,count(`movie_trivia`.`trivia`) AS `trivia_count` from (`movies` join `movie_trivia` on(`movies`.`movie_id` = `movie_trivia`.`movie_id`)) group by `movies`.`movie_id`) `mtc` on(`movies`.`movie_id` = `mtc`.`movie_id`)) left join (select `movies`.`movie_id` AS `movie_id`,count(`movie_keywords`.`keyword`) AS `keyword_count` from (`movies` join `movie_keywords` on(`movies`.`movie_id` = `movie_keywords`.`movie_id`)) group by `movies`.`movie_id`) `mkc` on(`movies`.`movie_id` = `mkc`.`movie_id`)) left join (select `movies`.`movie_id` AS `movie_id`,count(`movie_media`.`movie_media_id`) AS `movie_media_count` from (`movies` left join `movie_media` on(`movies`.`movie_id` = `movie_media`.`movie_id`)) group by `movie_media`.`movie_id`) `mmc` on(`movies`.`movie_id` = `mmc`.`movie_id`)) left join (select `movie_song`.`movie_id` AS `movie_id`,count(`songs`.`song_id`) AS `song_count` from (`movie_song` left join `songs` on(`movie_song`.`song_id` = `songs`.`song_id`)) group by `movie_song`.`movie_id`) `msc` on(`movies`.`movie_id` = `msc`.`movie_id`)) left join (select `movie_people`.`movie_id` AS `movie_id`,count(`movie_people`.`movie_id`) AS `movie_people_count` from (`movie_people` join `people` on(`movie_people`.`people_id` = `people`.`id`)) group by `movie_people`.`movie_id`) `mpc` on(`movies`.`movie_id` = `mpc`.`movie_id`)) group by `movies`.`movie_id` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
