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

    
    //$validate = true;    
    

    $sql = "INSERT INTO movies(`native_name`, `english_name`, `year_made`)

    VALUES ('$NativeName','$EnglishName','$Year')
    ";

    mysqli_query($db, $sql);


    $sql1 .= "INSERT INTO movie_data(`movie_id`,`language`, `country`, `genre`, `tag_line`, `plot`) 
    VALUES(LAST_INSERT_ID(),'$Language','$Country', '$Genre','$TagLine','$Plot')";

    
    mysqli_query($db, $sql1);
    header('location: movies.php?createMovie=Success');
    ?>
	<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">



   