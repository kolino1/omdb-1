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
        
        <table>
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
			
        </table>

        <br><br>
        <div align="center" class="text-left">
            <button type="submit" name="submit" class="btn btn-primary btn-md align-items-center">Create Movie</button>
        </div>
        <br> <br>

    </form>
</div>

