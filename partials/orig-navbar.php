
<!-- 1ST TITLE NAVBAR -->
<nav class='z-depth-0' > 
    <div class="nav-wrapper">

<!--     <a href="#" class="right">ADMIN LOGIN</a> -->
	  <a href="win-login.php" class="brand-logo right"><i class="fa fa-sign-in"></i></a>

      <ul id="nav-mobile" class="left hide-on-med-and-down">
        <li><a href="#">Contact</a></li>
        <li><a href="#">About</a></li>
      </ul>
    </div>
</nav> <!-- end of 1st navbar -->

<!-- LOGO AND LEADERBOARD AD SECTION -->
<div class='main-header-wrapper'>
    <div class='row main-header'>

    	<!-- PAGE LOGO SECTION -->
	    <div class='col s4'>
		    <div class='page-logo-wrapper'>
		    	<img class='page-logo' src='page-imgs/logo3.png' alt='WhenInNaga logo'>
		    </div>
	    </div>

	    <!-- ADS SPACE 1 -->
	    <div class='col s8'>
	    	<div class='ads-space-1-wrapper'>
    			<!-- <img src='page-imgs/leaderboard.png' alt='leaderboard' class='leaderboard'> -->
	    	</div>
	    </div>
    </div> <!-- end of row -->
</div>

<!-- 2ND TITLE NAVBAR -->
<nav class='z-depth-0' >
    <div class="nav-wrapper">
      <!--  <a href="#" class="brand-logo center">Logo</a> -->
      <ul class="left hide-on-med-and-down">
        <li><a href="index.php">Home</a></li>
        <li><a href="#">Entertainment</a></li>
        <li><a href="#">Lifestyle</a></li>
        <li><a href="#">Food</a></li>
        <li><a href="#">Travel</a></li>
        <li><a href="#">Sports</a></li>
        <li><a href="#">Events</a></li>
      </ul>
    </div>
</nav> <!-- end of 2nd navbar -->

<!-- TRENDING NOW SECTION-->
<div class='trending-now-wrapper'>

	<div class='trending-now-bg'>
		<div class='trending-box'>
			<span class='trending-text'>TRENDING NOW&nbsp
				<i class="fa fa-bolt" aria-hidden="true"></i>
			</span>
		</div>

<div class='marquee'>
  <?php 

  ob_start();

    require $_SERVER['DOCUMENT_ROOT'].'/capstone2/connection.php';

    $ticker_query = "SELECT title, name, blog_id FROM blog_post JOIN blog_categories on (blog_post.category_id = blog_categories.category_id) ORDER BY views DESC LIMIT 5";

    $result_t = mysqli_query($con, $ticker_query);

    echo "<ul class='news-ticker'>";

    if (mysqli_num_rows($result_t) > 0 );

      while ($row_t = mysqli_fetch_assoc($result_t)) {

        extract($row_t);

        echo "
        
          <li class='news-ticker-item'><a href='viewpost.php?id=$blog_id' target='_blank'><span class='cat-box'>$name</span>$title </a></li>
        ";

      }

        echo "</ul>";

        require_once 'library.php';
  ?>

</div>




	</div>
</div>
