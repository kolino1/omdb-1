-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 09, 2020 at 02:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(30, 'South Park: Bigger, Longer & Uncut', 'South Park: Bigger, Longer & Uncut', 1999);

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `tag_line`, `plot`) VALUES
(30, 'English', 'USA', 'Comedy', 'Warning: This movie will warp your fragile little minds.', 'South Park is an animated series featuring four foul-mouthed 4th graders, Stan, Kyle, Kenny and Cartman. The show is set in the Colorado town of South Park where weird things keep happening, whether its being abducted by aliens or avoiding Kyle\'s little brother Ike.');

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(30, 'Animated'),
(30, 'Cartman'),
(30, 'South Park');

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(1, 'https://www.youtube.com/watch?v=Q7XYFLVGfSA', 'Trailer', 30),
(2, 'SouthParkPoster.jpeg', 'Poster', 30);

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`, `screen_name`) VALUES
(30, 6, 'Director', ''),
(30, 6, 'Lead Actor', ''),
(30, 6, 'Writer', ''),
(30, 7, 'Lead Actor', ''),
(30, 7, 'Writer', ''),
(30, 8, 'Supporting Actress', ''),
(30, 9, 'Support Actress', '');

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(30, 2),
(30, 3);

INSERT INTO `people` (`id`, `stage_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(6, 'Trey Parker', 'Randolph', 'Severn', 'Parker', 'M', 'Trey_Parker.jpg'),
(7, 'Matt Stone', 'Matthew', 'Richard', 'Stone', 'M', 'Matt_Stone.jpg'),
(8, 'Pam Brady', 'Pam', '', 'Brady', 'F', 'Pam_Brady.jpg'),
(9, 'Mary Kay Bergman', 'Mary', 'Kay', 'Bergman', 'F', 'Mary_Kay_Bergman.jpg');

INSERT INTO `songs` (`song_id`, `title`, `theme`, `lyrics`) VALUES
(2, 'Mountain Town', 'Bliss(ful Ignorance)', 'There\'s a bunch of birds in the sky, And some deers just went running by, Ohhh, the snow\'s pure and white on the earth rich and brown, Just another sunday morning in my quiet mountain town.\r\n\r\nThe sun is shining and the grass is green, Under the 3 feet of the snow I mean, This is a day when its hard to wear a frown, All, the happy people stop to say hello!\r\nGet out of my way!,\r\nEven though the temperature\'s low, Its a perfect Sunday morning in my quiet little mountain town,\r\nWell good morning Stan!\r\nMom, can I have eight dollars to see a movie?\r\nA movie?\r\nYeah! This is going to be the best movie ever! It\'s a foreign film from Canada'),
(3, 'Blame Canada', 'Anger', 'Time\'s have changed\r\nOur kids are getting worse\r\nThey won\'t obey their parents\r\nThey just want to fart and curse\r\n\r\nShould we blame the government?\r\nOr blame society?\r\nOr should we blame the images on TV?\r\n\r\nNo, blame Canada, blame Canada\r\nWith all their beady little eyes\r\nAnd flappin\' heads so full of lies\r\n\r\nBlame Canada, blame Canada\r\nWe need to form a full assault\r\nIt\'s Canada\'s fault');

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(2, 'Mountain'),
(2, 'Town'),
(3, 'Blame'),
(3, 'Canada');

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(1, 'https://www.youtube.com/watch?v=bOR38552MJA', 'Video', 3),
(2, 'https://www.youtube.com/watch?v=DNNOeEDB19E', 'Video', 2);

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(2, 6, 'Vocals'),
(2, 7, 'Vocals'),
(2, 9, 'Vocals'),
(3, 9, 'Vocals');

INSERT INTO `movie_quotes` (`movie_id`, `movie_quote_id`, `movie_quote_name`) VALUES
(30, 2504, 'Cartman: What\'s the big deal? It doesn\'t hurt anybody. Fuck, fuckity-fuck-fuck-fuck.'),
(30, 2505, 'Chef: Hello there, children!');

INSERT INTO `movie_numbers` (`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) VALUES
(30, 81, NULL, NULL, NULL, 21000000, 83100000);

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(30, 'In the Guinness World Records 2001, this film was said to have the most profanity used in an animated film. The book cited a total of 399 swear words, including 146 uses of the word "fuck," along with 199 offensive gestures and 221 acts of violence.');
-- (30, 'Trey Parker stated that he is a fan of the musical Les Misérables. The song "La Resistance" is based on the Les Misérables song "One Day More."'),
-- (30, 'South Park: Bigger, Longer & Uncut intentionally went up to using 399 swear words because the MPAA would have given the film an NC-17 rating if at least 400 swear words were used in the film.');

INSERT INTO `people_trivia` (`people_id`, `people_trivia_id`, `people_trivia_name`) VALUES
(6, 2503, "Cannibal! The Musical has Matt and Trey providing commentary, during which Trey gloats over how he\'s now a famous comedy writer and his \"slut of an ex\" is now \"dating a nobody\"");

INSERT INTO `song_trivia` (`song_id`, `song_trivia_id`, `song_trivia_name`) VALUES
(3, 1, "The song Blame Canada was nominated for the Academy Award for Best Original Song, but it lost to Phil Collins\' You\'ll Be In My Heart (from Tarzan (1999)). In return, Trey Parker and Matt Stone ridiculed Collins in the fourth season of South Park (1997)");

INSERT INTO `movie_anagrams` (`movie_id`, `anagram`) VALUES
(30, "shrugging corpulent breakout");

COMMIT;