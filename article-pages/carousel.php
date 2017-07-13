<div class='carousel-slider clearfix'>

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      

<?php 

  require '../capstone2/connection.php';

  
  
  $sql = "SELECT * FROM blog_post 
        JOIN users ON(users.user_id = blog_post.author_id) 
        JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id) 
        WHERE featured ORDER BY date_published DESC, time_published DESC LIMIT 3";

        $result = mysqli_query($con,$sql);

        $counter = 0;

        // if (mysqli_num_rows($result) > 0);

        while ($row = mysqli_fetch_assoc($result)) {
          extract($row);

          $get_id = $blog_id;


          require_once 'display-comments-count.php';

          $article = strip_tags($article);
          $first_name = ucfirst($first_name);
          $last_name = ucfirst($last_name);

          if($counter == 0) {
            echo "<div class='item active'>";
          } else {
            echo "<div class='item'>";
          }


            
          echo "
            <a href='viewpost.php?id=$blog_id'>
              <div class='carousel-item'>

                <div class='carousel-item-wrapper' data-animation='animated fadeIn' >

                  <div class='post-views-box'>
                    <span class='post-views'>
                      <i class='fa fa-eye fa-2'></i> $views
                    </span>
                    <span class='post-views'>
                      <i class='fa fa-comments fa-2'></i> $comments_count
                    </span>
                  </div>

                  <div class='carousel-header'>
                    
                    <span class='carousel-category'>$name</span>
                    <div class='carousel-title'> $title </div>
                    <span class='carousel-feat-desc-long'>
                      $article
                    </span>

                    <span class='carousel-desc-author'>
                      <i class='fa fa-user-o'></i>
                      $first_name $last_name
                    </span>

                    <span class='carousel-desc-date'>
                      <i class='fa fa-calendar'></i>
                      $date_published
                    </span>
                  </div>

                  </div> <!-- end of carousel item wrapper -->

                  <img src='/capstone2$thumbnail' class='carousel-bg-img'>
                </div>
              </div> <!-- end of carousel item 1 -->
            </a>

          ";

          $counter = $counter + 1;

        } // end of while loop

 ?>



      

    </div>

  </div> <!-- div id myCarousel -->
</div>  <!--  end of carousel slider -->


  <!-- Left and right controls -->
<!--   <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a> -->

<!-- <script type="text/javascript">

var $myCarousel = $('#myCarousel');

// Initialize carousel
$myCarousel.carousel();

function doAnimations(elems) {
  var animEndEv = 'webkitAnimationEnd animationend';
  
  elems.each(function () {
    var $this = $(this),
        $animationType = $this.data('animation');

    // Add animate.css classes to
    // the elements to be animated 
    // Remove animate.css classes
    // once the animation event has ended
    $this.addClass($animationType).one(animEndEv, function () {
      $this.removeClass($animationType);
    });
  });
}

// Select the elements to be animated
// in the first slide on page load
var $firstAnimatingElems = $myCarousel.find('.item:first')
                           .find('[data-animation ^= "animated"]');

// Apply the animation using our function
doAnimations($firstAnimatingElems);

// Pause the carousel 
$myCarousel.carousel('pause');

// Attach our doAnimations() function to the
// carousel's slide.bs.carousel event 
$myCarousel.on('slide.bs.carousel', function (e) { 
  // Select the elements to be animated inside the active slide 
  var $animatingElems = $(e.relatedTarget)
                        .find("[data-animation ^= 'animated']");
  doAnimations($animatingElems);


});

</script> -->


