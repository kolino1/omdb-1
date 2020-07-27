<?php

  $nav_selected = "MOVIES"; 
  $left_buttons = "YES"; 
  $left_selected = ""; 

  include("./nav.php");
  global $db;


?>
<style>
    #title {
        text-align: center;
        color: darkgoldenrod;
    }
    h1 {
        color: darkgoldenrod;
    }
    img{
      width: 50%;
      height: auto;
    }
    img.people{
      width: 25%;
      height: auto;
    }
    
</style>


<?php

if(isset($_GET['id'])){
  $id = $_GET['id'];

  $sql = "SELECT * FROM `movies`
          WHERE movie_id = " .$id;

  $sql_movieData = "SELECT * FROM `movies` 
                    INNER JOIN `movie_data` USING(movie_id) 
                    WHERE movies.movie_id = '$id';";

  /*$sql_movieData1 = "SELECT * FROM `movies` 
                    INNER JOIN `movie_keywords` USING(movie_id)
                    INNER JOIN `movie_trivia` USING(movie_id)
                    WHERE movies.movie_id = '$id';";
  */
//////////////
  $sql_movieKeywords = "SELECT * FROM `movie_keywords`
                    WHERE movie_keywords.movie_id = '$id';";
  
  $sql_movieTrivia = "SELECT * FROM `movie_trivia`
                    WHERE movie_id = '$id';";
//////////////


  $sql_moviePosters = "SELECT * FROM `movie_media` 
                        WHERE movie_id = '$id' 
                        AND m_link_type = \"poster\";";
  
  
  $sql_moviePeople = "SELECT mp.role, 
                             concat(p.first_name, ' ' , last_name) as fullname,
                             p.stage_name,
                             p.image_name
                      FROM `movie_people` mp
                      INNER JOIN `people` p ON	mp.people_id = p.id
                      WHERE mp.movie_id = '$id';";
  
  $sql_movieSong  = "SELECT 
                        ms.movie_id,
                        ms.song_id,
                        sm.s_link,
                        sm.s_link_type,
                        s.title
                    FROM movie_song ms
                    INNER JOIN `song_media` sm USING(song_id)
                    INNER JOIN `songs` s USING(song_id)
                    WHERE ms.movie_id = '$id';";
  
  $result = $db->query($sql);
  $movieData = $db->query($sql_movieData);
  //$movieData1 = $db->query($sql_movieData1);
  ////////////
  $movieTrivia = $db->query($sql_movieTrivia);
  $movieKeywords = $db->query($sql_movieKeywords);
  ////////////
  $moviePosters = $db->query($sql_moviePosters);
  $moviePeople = $db->query($sql_moviePeople);
  $movieSong = $db->query($sql_movieSong);

  if(!$result){
    die('No movie data was found');
  } 
  
  if($result -> num_rows > 0){
      $row = $result -> fetch_assoc();

      print('<div class="right-content">
             <div class="container">
             <h2 id="title">'.$row["english_name"].'</h2>
             <br>
             <br>
            ');

  }

  if($moviePosters ->num_rows > 0){
    print('<h1>Movie Poster</h1>');
   while($moviePosters_row = $moviePosters->fetch_assoc()){
    echo'<img src="images/movie_images/'.$moviePosters_row["m_link"].'"/>';
   }

  }
  else {
    echo "Movie poster not available";
}

  if($movieData -> num_rows > 0){
    print('<h1>Movie Data</h1>');
    while($movieData_row = $movieData -> fetch_assoc()){
      print('
      <div><label >Native Name  : </label>  '.$movieData_row["native_name"].' </h3></span></div>
      <div><label >English Name : </label>  '.$movieData_row["english_name"].'</div>
      <div><label>Release Year: </label>  '.$movieData_row["year_made"].'</div>
      <div><label>Language : </label>  '.$movieData_row["language"].'</div>
      <div><label>Country : </label>  '.$movieData_row["country"].'</div>
      <div><label>Genre : </label>  '.$movieData_row["genre"].'</div>
      <div><label>Plot : </label>  '.$movieData_row["plot"].'</div>
      <br>
      ');
    }
  }  else {
    echo "Movie Data not available";
}

/*
  if($movieData1 -> num_rows > 0){
    while($movieData1_row = $movieData1 -> fetch_assoc()){
      print('
      <div><label>Keyword : </label>  '.$movieData1_row["keyword"].'</div>
      <br>
      <div><label>Trivia : </label>  '.$movieData1_row["trivia"].'</div>
      ');
    }

  }   else {
    echo "movie keyword, trivia are not available";
*/
//////////////////
if($movieTrivia -> num_rows > 0){
  while($movieTrivia_row = $movieTrivia -> fetch_assoc()){
    print('
    <br>
    <div><label>Trivia : </label>  '.$movieTrivia_row["trivia"].'</div>
    ');
  }

}   else {
  echo "movie trivia not available";
}

  if($movieKeywords -> num_rows > 0){
    while($movieKeywords_row = $movieKeywords -> fetch_assoc()){
      print('
      <br>
      <div><label>Keyword : </label>  '.$movieKeywords_row["keyword"].'</div>
      ');
    }
  
  }   else {
    echo "movie keyword not available";
  }
/////////////////
 
   if($moviePeople ->num_rows > 0){
     print('<h1>Movie People</h1>');
     while($moviePeople_row = $moviePeople -> fetch_assoc()){
          echo '<h3>'.$moviePeople_row["role"].'</h3>';
          echo'<img class="people" src="images/movie_people/'.$moviePeople_row["image_name"].'"/>';
          echo '<h4>'.$moviePeople_row['fullname'].'</h4>';

     }
   }  else {
    echo "Movie people not available";
}

   if($movieSong -> num_rows > 0){
    print('<h1>Movie Songs</h1>');
    while($movieSong_row = $movieSong -> fetch_assoc()){
      echo '<h5><label>Song Title: </label>   '.$movieSong_row["title"].'</h5>';
      echo '<a target="_blank" href="'.$movieSong_row["s_link"].'">Play</a>';
    }
   }  else {
    echo "Movie song not available";
}


}

?>

  <?php include("./footer.php"); ?>