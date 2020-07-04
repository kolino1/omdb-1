-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2020 at 03:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(24, 'The Joker', 'Joker', 2019);



INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `plot`) VALUES
(24, 'English', 'USA', 'Drama, Thriller', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.');



INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(24, 2401, 'Lead Actor'),
(24, 2402, 'Supporting Actor'),
(24, 2403, 'Lead Actress'),
(24, 2404, 'Director'),
(24, 2405, 'Songwriter');



INSERT INTO `people` (`id`, `screen_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(2401, 'Joaquin Phoenix', 'Joaquin', 'Rafael', 'Bottom', 'Male', ''),
(2402, 'Robert De Niro', 'Robert', '', 'De Niro', 'Male', ''),
(2403, 'Zazie Beets', 'Zazie', 'Olivia', 'Beatz', 'Female', ''),
(2404, 'Todd Phillips', 'Todd', '', 'Bunzl', 'Male', ''),
(2405, 'Stephen Sondheim', 'Stephen', '', 'Sondeheim', 'Male', '');



INSERT INTO `songs` (`song_id`, `title`, `lyrics`) VALUES
(2450, 'Send In The Clowns', 'Isn\'t it rich?\r\nAre we a pair?\r\nMe here at last on the ground,\r\nYou in mid-air,\r\nWhere are the clowns?\r\nIsn\'t it bliss?\r\nDon\'t you approve?\r\nOne who keeps tearing around,\r\nOne who can\'t move,\r\nWhere are the clowns?\r\nThere ought to be clowns?\r\nJust when I\'d stopped opening doors,\r\nFinally knowing the one that I wanted was yours\r\nMaking my entrance again with my usual flair\r\nSure of my lines\r\nNo one is there\r\nDon\'t you love farce?\r\nMy fault, I fear\r\nI thought that you\'d want what I want\r\nSorry, my dear!\r\nBut where are the clowns\r\nSend in the clowns\r\nDon\'t bother, they\'re here\r\nIsn\'t it rich?\r\nIsn\'t it queer?\r\nLosing my timing this late in my career\r\nBut where are the clowns?\r\nThere ought to be clowns\r\nWell, maybe next year');



INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(2450, 'clowns');



INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(2450, 2405, 'Songwriter');

