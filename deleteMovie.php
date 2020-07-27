
<?php $page_title = 'OMDB > Delete Movie'; ?>
<?php
    require 'functions.php';
    require 'db_configuration.php';
  
  $nav_selected = "LIST";
  $left_buttons = "NO";
  $left_selected = "Bar Charts";

  include("./nav.php");
  

    $page="movies.php";
    //verifyLogin($page); We're not implementing this (yet)


?>
<div class="container">
<style>#title {text-align: center; color: darkgoldenrod;}</style>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

<?php
include_once 'db_configuration.php';

if (isset($_GET['id'])){

    $id = $_GET['id'];

    $sql = "SELECT * FROM movies
            WHERE movie_id = '$id'";

    if (!$result = $db->query($sql)) {
        die ('There was an error running query[' . $connection->error . ']');
    }//end if
}//end if

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo '<form action="deleteTheMovie.php" method="POST">
    <br>
    <h3 id="title">Delete Movie</h3><br>
    <h2>'.$row["movie_id"].' - '.$row["english_name"].' </h2> <br>

    <div class="form-group col-md-12">
      <label for="id">Movie ID</label>
      <input type="text" class="form-control" name="movie_id" value="'.$row["movie_id"].'"  maxlength="5" readonly>
    </div>

    <div class="form-group col-md-12">
      <label for="name">Native Name</label>
      <input type="text" class="form-control" name="native_name" value="'.$row["native_name"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-12">
      <label for="name">English Name</label>
      <input type="text" class="form-control" name="english_name" value="'.$row["english_name"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-12">
      <label for="level">Release Year</label>
      <input type="text" class="form-control" name="year_made" value="'.$row["year_made"].'"  maxlength="255" readonly>
    </div>

    <br>
    <div class="text-left">
        <button type="submit" name="submit" class="btn btn-primary btn-md align-items-left">Confirm Delete Movie</button>
    </div>
    <br> <br>

    </form>';

    }//end while
}//end if
else {
    echo "0 results";
}//end else

?>

</div>
