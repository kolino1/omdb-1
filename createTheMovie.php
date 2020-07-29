<?php
 $nav_selected = "LIST";
  $left_buttons = "NO";
  $left_selected = "";
  include("./nav.php");
  include("./footer.php");  
  include_once 'db_configuration.php';


    // Initialize variables 
    //$movieID;      
	$NativeName = mysqli_real_escape_string($db,$_POST['NativeName']);
    $EnglishName = mysqli_real_escape_string($db,$_POST['EnglishName']);
    $Year = mysqli_real_escape_string($db,$_POST['Year']);
    $Language = mysqli_real_escape_string($db,$_POST['Language']);
    $Country = mysqli_real_escape_string($db,$_POST['Country']);
    $Genre = mysqli_real_escape_string($db,$_POST['Genre']);
    $TagLine = mysqli_real_escape_string($db,$_POST['TagLine']);
    $Plot = mysqli_real_escape_string($db,$_POST['Plot']);
    $Keyword = mysqli_real_escape_string($db,$_POST['Keyword']);
    $Mlink = mysqli_real_escape_string($db,$_POST['Mlink']);
    $MlinkType = mysqli_real_escape_string($db,$_POST['MlinkType']);
    $RunningTime = mysqli_real_escape_string($db,$_POST['RunningTime']);
    $Length = mysqli_real_escape_string($db,$_POST['Length']);
    $Strength = mysqli_real_escape_string($db,$_POST['Strength']);
    $Weight = mysqli_real_escape_string($db,$_POST['Weight']);
    $Budget = mysqli_real_escape_string($db,$_POST['Budget']);
    $BoxOffice = mysqli_real_escape_string($db,$_POST['BoxOffice']);
    $MovieQuote = mysqli_real_escape_string($db,$_POST['MovieQuote']);
    $Trivia = mysqli_real_escape_string($db,$_POST['Trivia']);

    //$validate = true;    
    

    $sql = "INSERT INTO movies(`native_name`, `english_name`, `year_made`)
    VALUES ('$NativeName','$EnglishName','$Year')";

    mysqli_query($db, $sql);

    $sqlMovieData .= "INSERT INTO movie_data(`movie_id`,`language`, `country`, `genre`, `tag_line`, `plot`) 
    VALUES(LAST_INSERT_ID(),'$Language','$Country', '$Genre','$TagLine','$Plot')";

    $sqlKeyword = "INSERT INTO `movie_keywords`(`movie_id`, `keyword`) 
    VALUES(LAST_INSERT_ID(),'$Keyword');";

    $sqlMovieMedia = "INSERT INTO `movie_media`(`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) 
    VALUES(LAST_INSERT_ID(),'$Mlink','$MlinkType',LAST_INSERT_ID() );";
    
    $sqlMovieNumbers = "INSERT INTO `movie_numbers`(`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) 
    VALUES(LAST_INSERT_ID(),'$RunningTime','$Length','$Strength','$Weight','$Budget','$BoxOffice')";


    $sqlMovieQuote = "INSERT INTO `movie_quotes`(`movie_id`, `movie_quote_id`, `movie_quote_name`) 
    VALUES(LAST_INSERT_ID(),LAST_INSERT_ID(),'$MovieQuote')";

    $sqlMovieTrivia = "INSERT INTO `movie_trivia` (`movie_id`, `trivia`) 
    VALUES(LAST_INSERT_ID(),'$Trivia')";

    mysqli_query($db, $sqlMovieData);
    mysqli_query($db, $sqlKeyword);
    mysqli_query($db, $sqlMovieMedia);
    mysqli_query($db, $sqlMovieNumbers);
    mysqli_query($db, $sqlMovieQuote);


    header('location: movies.php?createMovie=Success');
    ?>
	<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">



   