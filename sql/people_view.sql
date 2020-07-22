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
-- Structure for view `people_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `people_view`  AS  select `p`.`id` AS `id`,`p`.`stage_name` AS `stage_name`,`p`.`first_name` AS `first_name`,`p`.`middle_name` AS `middle_name`,`p`.`last_name` AS `last_name`,`p`.`gender` AS `gender`,`p`.`image_name` AS `image_name`,`t`.`people_trivia_name` AS `people_trivia_name`,`mp`.`movie_id` AS `movie_id`,`mp`.`screen_name` AS `screen_name`,`mp`.`role` AS `movie_role`,`m`.`native_name` AS `native_name`,`m`.`english_name` AS `english_name`,`m`.`year_made` AS `year_made`,`sp`.`role` AS `song_role`,`s`.`title` AS `song_title` from (((((`people` `p` left join `people_trivia` `t` on(`p`.`id` = `t`.`people_id`)) left join `movie_people` `mp` on(`p`.`id` = `mp`.`people_id`)) left join `movies` `m` on(`mp`.`movie_id` = `m`.`movie_id`)) left join `song_people` `sp` on(`p`.`id` = `sp`.`people_id`)) left join `songs` `s` on(`sp`.`song_id` = `s`.`song_id`)) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
