// Query #41  Ian Berube

SELECT title
FROM songs
WHERE title LIKE 'co%';



// Query # 58  Huy

SELECT DISTINCT people.first_name, people.last_name, people.stage_name
FROM `people` 
INNER JOIN `movie_people`ON people.id = movie_people.people_id
WHERE movie_people.role = 'supporting acto'


// Query # 42 Chris Cassens

SELECT * 
FROM `songs` 
WHERE title 
LIKE '%s'


// query # 39 Olaniyi

SELECT
    concat(`people`.`first_name`, ' ', `people`.`last_name`) as FullName,
    COUNT(movie_id)
FROM `people`
LEFT JOIN `movie_people` on movie_people.people_id = people.id 
GROUP BY people.id



// Query 54  Olukole Solabi

SELECT genre, COUNT(*) AS Num
FROM movie_data
GROUP BY movie_data.genre



//  query # 57  Abdi Ali

SELECT 
	`movies`.`english_name`,
    `movie_media`.m_link_type  
FROM `movies` 
INNER JOIN `movie_media` USING(movie_id)
WHERE movie_media.m_link_type like '%poster%'


// query 33 - Group Elephants

SELECT 
	`movies`.`movie_id`,
    `movies`.`native_name`,
    `movies`.`english_name`,
    `movies`.`year_made`,
    `movie_data`.`tag_line`,
    `movie_data`.`language`,
    `movie_data`.`country`,
    `movie_data`.`genre`,
    `movie_data`.`plot`,
    mtc.trivia_count,
    mkc.keyword_count,
    mmc.movie_media_count,
    msc.song_count,
    mpc.movie_people_count 
FROM `movies` 
LEFT JOIN `movie_data` USING(movie_id)
LEFT JOIN (SELECT 
				`movies`.`movie_id`,
    			COUNT(`movie_trivia`.`trivia`) trivia_count
			FROM `movies` 
			INNER JOIN `movie_trivia` USING(movie_id)
			GROUP BY movie_id) as mtc USING(movie_id)
LEFT JOIN (SELECT 
				`movies`.`movie_id`,
    			COUNT(`movie_keywords`.`keyword`) keyword_count
			FROM `movies` 
			INNER JOIN `movie_keywords` USING(movie_id)
			GROUP BY movie_id) as mkc USING(movie_id)
LEFT JOIN  	(SELECT 
				`movies`.`movie_id`,
    			COUNT(`movie_media`.`movie_media_id`) as movie_media_count
			FROM `movies`
			LEFT JOIN `movie_media` ON `movies`.`movie_id` = `movie_media`.`movie_id`
			GROUP BY `movie_media`.`movie_id`) as mmc USING(movie_id)
LEFT JOIN  (SELECT 
				`movie_song`.`movie_id`,
    			COUNT(`songs`.`song_id`)as song_count
			FROM `movie_song` 
			LEFT JOIN `songs` USING(song_id)
			GROUP BY `movie_song`.`movie_id`) as msc USING(movie_id)    
LEFT JOIN  	(SELECT 
				`movie_people`.`movie_id`,
 				COUNT(`movie_people`.`movie_id`) as movie_people_count   
            FROM `movie_people`
            INNER JOIN `people`ON `movie_people`.`people_id` = `people`.`id`
            GROUP BY `movie_people`.`movie_id`) as mpc USING(movie_id)
GROUP BY 	`movies`.`movie_id`

