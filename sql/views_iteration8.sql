-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2020 at 01:17 AM
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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `movie_view`  AS  select `movies`.`movie_id` AS `movie_id`,`movies`.`native_name` AS `native_name`,`movies`.`english_name` AS `english_name`,`movies`.`year_made` AS `year_made`,`movie_data`.`tag_line` AS `tag_line`,`movie_data`.`language` AS `language`,`movie_data`.`country` AS `country`,`movie_data`.`genre` AS `genre`,`movie_data`.`plot` AS `plot`,`mtc`.`trivia_count` AS `trivia_count`,`mkc`.`keyword_count` AS `keyword_count`,`mmc`.`movie_media_count` AS `movie_media_count`,`msc`.`song_count` AS `song_count`,`mpc`.`movie_people_count` AS `movie_people_count` from ((((((`movies` left join `movie_data` on(`movies`.`movie_id` = `movie_data`.`movie_id`)) left join (select `movies`.`movie_id` AS `movie_id`,group_concat(`movie_trivia`.`trivia` separator ',') AS `trivia_count` from (`movies` join `movie_trivia` on(`movies`.`movie_id` = `movie_trivia`.`movie_id`)) group by `movies`.`movie_id`) `mtc` on(`movies`.`movie_id` = `mtc`.`movie_id`)) left join (select `movies`.`movie_id` AS `movie_id`,group_concat(`movie_keywords`.`keyword` separator ',') AS `keyword_count` from (`movies` join `movie_keywords` on(`movies`.`movie_id` = `movie_keywords`.`movie_id`)) group by `movies`.`movie_id`) `mkc` on(`movies`.`movie_id` = `mkc`.`movie_id`)) left join (select `movies`.`movie_id` AS `movie_id`,group_concat(`movie_media`.`movie_media_id` separator ',') AS `movie_media_count` from (`movies` left join `movie_media` on(`movies`.`movie_id` = `movie_media`.`movie_id`)) group by `movie_media`.`movie_id`) `mmc` on(`movies`.`movie_id` = `mmc`.`movie_id`)) left join (select `movie_song`.`movie_id` AS `movie_id`,group_concat(`songs`.`song_id` separator ',') AS `song_count` from (`movie_song` left join `songs` on(`movie_song`.`song_id` = `songs`.`song_id`)) group by `movie_song`.`movie_id`) `msc` on(`movies`.`movie_id` = `msc`.`movie_id`)) left join (select `movie_people`.`movie_id` AS `movie_id`,group_concat(`movie_people`.`movie_id` separator ',') AS `movie_people_count` from (`movie_people` join `people` on(`movie_people`.`people_id` = `people`.`id`)) group by `movie_people`.`movie_id`) `mpc` on(`movies`.`movie_id` = `mpc`.`movie_id`)) group by `movies`.`movie_id` ;

--
-- VIEW `movie_view`
-- Data: None
--

--
-- Structure for view `people_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `people_view`  AS  select `p`.`id` AS `id`,`p`.`stage_name` AS `stage_name`,`p`.`first_name` AS `first_name`,`p`.`middle_name` AS `middle_name`,`p`.`last_name` AS `last_name`,`p`.`gender` AS `gender`,`p`.`image_name` AS `image_name`,`t`.`people_trivia_name` AS `people_trivia_name`,`mp`.`movie_id` AS `movie_id`,`mp`.`screen_name` AS `screen_name`,`mp`.`role` AS `movie_role`,`m`.`native_name` AS `native_name`,`m`.`english_name` AS `english_name`,`m`.`year_made` AS `year_made`,`sp`.`role` AS `song_role`,`s`.`title` AS `song_title` from (((((`people` `p` left join `people_trivia` `t` on(`p`.`id` = `t`.`people_id`)) left join `movie_people` `mp` on(`p`.`id` = `mp`.`people_id`)) left join `movies` `m` on(`mp`.`movie_id` = `m`.`movie_id`)) left join `song_people` `sp` on(`p`.`id` = `sp`.`people_id`)) left join `songs` `s` on(`sp`.`song_id` = `s`.`song_id`)) ;

--
-- VIEW `people_view`
-- Data: None
--

--
-- Structure for view `song_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `song_view`  AS  select `s`.`song_id` AS `song_id`,`s`.`title` AS `title`,`s`.`theme` AS `theme`,`s`.`lyrics` AS `lyrics`,`sm`.`song_media_id` AS `song_media_id`,group_concat(`sm`.`s_link` separator ',') AS `s_link`,`sm`.`s_link_type` AS `s_link_type`,group_concat(`sp`.`people_id` separator ',') AS `people_id`,`sp`.`role` AS `song_role`,`p`.`first_name` AS `first_name`,`p`.`middle_name` AS `middle_name`,`p`.`last_name` AS `last_name`,group_concat(`ms`.`movie_id` separator ',') AS `movie_id`,`m`.`native_name` AS `native_name`,`m`.`english_name` AS `english_name`,`m`.`year_made` AS `year_made` from (((((`songs` `s` left join `song_media` `sm` on(`s`.`song_id` = `sm`.`song_id`)) left join `song_people` `sp` on(`s`.`song_id` = `sp`.`song_id`)) left join `people` `p` on(`sp`.`people_id` = `p`.`id`)) left join `movie_song` `ms` on(`s`.`song_id` = `ms`.`song_id`)) left join `movies` `m` on(`ms`.`movie_id` = `m`.`movie_id`)) group by `s`.`song_id` ;

--
-- VIEW `song_view`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
