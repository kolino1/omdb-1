<?php

  $nav_selected = "MOVIES"; 
  $left_buttons = "No"; 
  $left_selected = "MOVIES"; 

  include("./nav.php");
  global $db;

  ?>

<?php $page_title = 'Movie > Create Movie'; ?>

<?php 
    $mysqli = NEW MySQLi('localhost','root','','omdb');
    //$resultset = $mysqli->query("SELECT DISTINCT topic FROM topics ORDER BY topic ASC");   
?>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

<link href="css/form.css" rel="stylesheet">
<style>#title {text-align: center; color: darkgoldenrod;}</style>
<div class="container">
    <!--Check the CeremonyCreated and if Failed, display the error message-->
    <?php
    if(isset($_GET['create_movie'])){
        if($_GET["create_movie"] == "fileRealFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your image is not real, Please Try Again!</h3>';
        }
    }
    if(isset($_GET['create_movie'])){
        if($_GET["create_movie"] == "answerFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your answer was not one of the choices, Please Try Again!</h3>';
        }
    }
    if(isset($_GET['create_movie'])){
        if($_GET["create_movie"] == "fileTypeFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your image is not a valid image type (jpg,jpeg,png,gif), Please Try Again!</h3>';
        }
    }
    if(isset($_GET['create_movie'])){
        if($_GET["create_movie"] == "fileExistFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - There is already a puzzle using that image, Please Try Again!</h3>';
        }
    }
  
    ?>
    <form action="createTheMovie.php" method="POST" enctype="multipart/form-data">
        <br>
        <h3 id="title">Create A Movie</h3> <br>
        
        <table class="table table-striped table-dark" style="width: 50%;">
            <!-- Native Name -->
            <tr>
                <td style="width:175px">Native Name:</td>
                <td><input type="text"  name="NativeName" maxlength="50" size="50" required title="Please enter the native movie name"></td>
            </tr>
            <!--  English Name -->
            <tr>
                <td style="width:175px">English Name:</td>
                <td><input type="text"  name="EnglishName" maxlength="50" size="50" required title="Please enter the english movie name"></td>
            </tr>
            <!-- Year -->
            <tr>
                <td style="width:175px">Year:</td>
                <td><input type="year"  name="Year" maxlength="50" size="50" required title="Please enter the movie year."></td>

            </tr>
          

            <!-- Movie Data -->


            <!-- Language -->
            <tr>
            <td style="width:175px">Language:</td>
                <td><input type="text"  name="Language" maxlength="50" size="50" required title="Please enter movie language"></td>
            </tr>
            <!--  Country -->
            <tr>
                <td style="width:175px">Country:</td>
                <td><input type="text"  name="Country" maxlength="50" size="50" required title="Please enter Country name"></td>
            </tr>
            <!-- Genre -->
            <tr>
                <td style="width:175px">Genre:</td>
                <td><input type="text"  name="Genre" maxlength="50" size="50" required title="Please enter the movie genre."></td>
            </tr>
            <!-- Tag Line -->
            <tr>
                <td style="width:175px">Tag Line:</td>
                <td><input type="text"  name="TagLine" maxlength="50" size="50" required title="Please enter the Tag Line"></td>
            </tr>
            <!-- Plot -->
            <tr>
                <td style="width:175px">Plot:</td>
                <td><input type="text"  name="Plot" maxlength="50" size="50" required title="Please enter the movie Plot."></td>
            </tr>


            <!-- movie keywords -->

            <!-- Keyword -->
            <tr>
                <td style="width:175px">Movie Keyword:</td>
                <td><input type="text"  name="Keyword" maxlength="50" size="50" required title="Please enter the movie keyword"></td>
            </tr>
  
			<!-- Movie Media -->
             <tr>
                <td style="width:175px">Media Link:</td>
                <td><input type="text"  name="Mlink" maxlength="50" size="50" required title="Please enter the media link"></td>
            </tr>
            <tr>
                <td style="width:175px">Media Link Type:</td>
                <td><input type="text"  name="MlinkType" maxlength="50" size="50" required title="Please enter the media link type"></td>
            </tr>

			<!-- Movie Number -->
            <tr>
                <td style="width:175px">Running Time:</td>
                <td><input type="number"  name="RunningTime" maxlength="50" size="50" required title="Please enter the movie number time"></td>
            </tr>
            <tr>
                <td style="width:175px">Length:</td>
                <td><input type="number"  name="Length" maxlength="50" size="50" required title="Please enter the movie length"></td>
            </tr>
            <tr>
                <td style="width:175px">Strength:</td>
                <td><input type="number"  name="Strength" maxlength="50" size="50" required title="Please enter the movie Strength"></td>
            </tr>
            <tr>
                <td style="width:175px">Weight:</td>
                <td><input type="number"  name="Weight" maxlength="50" size="50" required title="Please enter the movie Weight"></td>
            </tr>
            <tr>
                <td style="width:175px">Budget:</td>
                <td><input type="number"  name="Budget" maxlength="50" size="50" required title="Please enter the movie Budget"></td>
            </tr>
            <tr>
                <td style="width:175px">BoxOffice:</td>
                <td><input type="number"  name="BoxOffice" maxlength="50" size="50" required title="Please enter the movie BoxOffice"></td>
            </tr>

            <!-- Movie Quote -->

            <tr>
                <td style="width:175px">Movie Quote:</td>
                <td><input type="text"  name="MovieQuote" maxlength="300" size="50" required title="Please enter the movie quote name"></td>
            </tr>

             <!-- Movie Trivia -->

             <tr>
                <td style="width:175px">Movie Trivia:</td>
                <td><input type="text"  name="Trivia" maxlength="300" size="50" required title="Please enter the movie Trivia"></td>
            </tr>
        </table>

        <br><br>
        <div align="center" class="text-left">
            <button type="submit" name="submit" class="btn btn-primary btn-md align-items-center">Create Movie</button>
        </div>
        <br> <br>

    </form>
</div>

