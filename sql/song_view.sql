-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2020 at 01:01 AM
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
-- Structure for view `song_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `song_view`  AS  select `s`.`song_id` AS `song_id`,`s`.`title` AS `title`,`s`.`theme` AS `theme`,`s`.`lyrics` AS `lyrics`,`sm`.`song_media_id` AS `song_media_id`,`sm`.`s_link` AS `s_link`,`sm`.`s_link_type` AS `s_link_type`,`sp`.`people_id` AS `people_id`,`sp`.`role` AS `song_role`,`p`.`first_name` AS `first_name`,`p`.`middle_name` AS `middle_name`,`p`.`last_name` AS `last_name`,`ms`.`movie_id` AS `movie_id`,`m`.`native_name` AS `native_name`,`m`.`english_name` AS `english_name`,`m`.`year_made` AS `year_made` from (((((`songs` `s` left join `song_media` `sm` on(`s`.`song_id` = `sm`.`song_id`)) left join `song_people` `sp` on(`s`.`song_id` = `sp`.`song_id`)) left join `people` `p` on(`sp`.`people_id` = `p`.`id`)) left join `movie_song` `ms` on(`s`.`song_id` = `ms`.`song_id`)) left join `movies` `m` on(`ms`.`movie_id` = `m`.`movie_id`)) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
