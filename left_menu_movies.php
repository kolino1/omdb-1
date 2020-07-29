<div id="menu-left">

<a href="movies_movies.php">
  	<div <?php if($left_selected == "MOVIES")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<svg
                  width="40"
                  height="40"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  >
                    <use xlink:href="./images/feather_images/feather-sprite.svg#film"/>
                  </svg>
  	<br/>Movies<br/></div>
  </a>


  <a href="movies_data.php">
  	<div <?php if($left_selected == "DATA")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<svg
                  width="40"
                  height="40"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  >
                    <use xlink:href="./images/feather_images/feather-sprite.svg#folder"/>
                  </svg>
  	<br/>Data<br/></div>
  </a>

  <a href = "movies_media.php">
  	<div <?php if($left_selected == "MEDIA")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<svg
                  width="40"
                  height="40"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  >
                    <use xlink:href="./images/feather_images/feather-sprite.svg#video"/>
                  </svg>
  	<br/>MEDIA<br/></div>
  </a>

  <a href = "movies_songs.php">
    <div <?php if($left_selected == "SONGS")
    { echo 'class="menu-left-current-page"'; } ?>>
    <svg
                  width="40"
                  height="40"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  >
                    <use xlink:href="./images/feather_images/feather-sprite.svg#music"/>
                  </svg>
    <br/>Songs<br/></div>
  </a>

  <a href = "movies_people.php">
  	<div <?php if($left_selected == "PEOPLE")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<svg
                  width="40"
                  height="40"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  >
                    <use xlink:href="./images/feather_images/feather-sprite.svg#users"/>
                  </svg>
  	<br/>People<br/></div>
  </a>


</div>
