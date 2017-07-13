<div id='win-navbar' class='win-navbar clearfix'>

  <div>

    <ul class='win-navbar-ul'>

      <li><a href='#' class='win-navbar-a'>ABOUT US</a></li>
      <li><a href='#' class='win-navbar-a'>CONTACT US</a></li>
      <li><a href='#' class='win-navbar-a'>FAQ</a></li>

    </ul>

    <ul class='win-navbar-ul win-navbar-social'>

      <li><a href='#' class='win-social-a'><i class="fa fa-facebook"></i></a></li>
      <li><a href='#' class='win-social-a'><i class="fa fa-twitter"></i></a></li>
      <li><a href='#' class='win-social-a'><i class="fa fa-instagram"></i></a></li>
      <li><a href='#' class='win-social-a'><i class="fa fa-youtube"></i></a></li>


    </ul>

  </div>

</div> <!-- win-navbar -->





<div class='win-header-lg clearfix'>
  <div class='row'>

    <div class='col-sm-4'>
      <figure class='win-header-lg-figure'>

        <img class='win-header-lg-img' src='page-imgs/logo4.png'>
      </figure>
    </div>

    <div class='col-sm-8'>
        <figure class='win-header-lg-figure-r'>
          <img src='page-imgs/ad1.png' class='win-header-ad-img' >
        </figure>
    </div>

  </div>
</div> <!-- end of win-header-lg-wrapper clearfix -->






<nav class="navbar navbar-inverse">
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>                        
  </button>

  <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav navbar-left">
      <li><a href="/capstone2/" class='navbar-nav-a'>HOME</a></li>
      <li><a href="/capstone2/viewpost-category.php?id=2" class='navbar-nav-a'>FOOD</a></li>
      <li><a href="/capstone2/viewpost-category.php?id=5" class='navbar-nav-a'>ADVENTURE</a></li>
      <li><a href="/capstone2/viewpost-category.php?id=1" class='navbar-nav-a'>ENTERTAINMENT</a></li>
      <li><a href="/capstone2/viewpost-category.php?id=3" class='navbar-nav-a'>TECHNOLOGY</a></li>
      <li><a href="/capstone2/viewpost-category.php?id=12" class='navbar-nav-a'>BUSINESS</a></li>
    </ul>

    <form class="navbar-form navbar-right">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">

        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>

      </div>
    </form>
  </div>


</nav>









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
