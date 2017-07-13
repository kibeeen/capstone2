<?php 
	
	

	require 'connection.php';

	mysqli_set_charset($con,'utf8');


	$get_id = $_GET['id'];

	require 'check-unique.php'; // checks visitor's unique ip address

	// from the value of $visitor_count, this updates the view count from blog post table
	  	$sql = "SELECT views FROM blog_post WHERE blog_id = $get_id";

			$result = mysqli_query($con,$sql);

			$row = mysqli_fetch_assoc($result);
			extract($row);


	    $query = "UPDATE blog_post SET views = '$visitor_count' WHERE blog_id = $get_id";

    		mysqli_query($con,$query);

	$sql = "SELECT * FROM blog_post
			JOIN users ON(users.user_id = blog_post.author_id)
			JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id)
			WHERE blog_id = '$get_id'";

			$result = mysqli_query($con,$sql);

			$row = mysqli_fetch_assoc($result);

			extract($row);


			// GET USERNAME FROM USERS

				// $sql1 = "SELECT username from users
				// 		WHERE user_id = '$user_id'";

				// $result1 = mysqli_query($con,$sql1);

				// $row1 = mysqli_fetch_assoc($result1);

				// extract($row1);

			// GET CATEGORY.NAME FROM BLOG_CATEGORY

				// $sql2 = "SELECT name from blog_categories
				// 			WHERE category_id = '$category_id'";

				// $result2 = mysqli_query($con,$sql2);

				// $row2 = mysqli_fetch_assoc($result2);

				// extract($row2);

				$name = strtolower($name);
				$name = ucwords($name);
				$article = ucfirst($article); // 1st query

	// previous and next post code
		//query all  the published posts
		$query = "SELECT * FROM blog_post WHERE approved";

				$result = mysqli_query($con,$query);
				$current_id = $get_id;

				if(mysqli_num_rows($result) > 0);

				$i = 0;
				$save_id = array();
				$save_title = array();

				while ($row = mysqli_fetch_assoc($result)) {

					extract($row);


					if ($get_id == $blog_id){ // if the URL's id matched the blog id from query,

						$current_id = $blog_id; // gets the current post's blog id

						$save_id[$i] = $blog_id; // saves each blog post id into an array
						$save_title[$i] = $title; // saves each blog title into an array
						$save_thumbnail[$i] = $thumbnail; // saves each thumbnail into an array

						$i = $i + 1; // i++ to increment the array

					} else { // else if not, it will continue to add blog ids from the array

						$save_id[$i] = $blog_id;
						$save_title[$i] = $title;
						$save_thumbnail[$i] = $thumbnail;

						$i = $i + 1; // i++ to increment the array
					}

				} 

				$total_posts = count($save_id); // gets the total information saved in the array

				for ($i=0;$i<$total_posts;$i++){

					if (($i-1) == -1) { // if user reached the 1st post, prevpost will return to the last post
							$prevpost_id = $save_id[$total_posts-1];
							$prevpost_title = $save_title[$total_posts-1];
							$prevpost_thumb = $save_thumbnail[$total_posts-1];

							$nextpost_id = $save_id[($i+1)%$total_posts];
							$nextpost_title = $save_title[($i+1)%$total_posts];
							$nextpost_thumb = $save_thumbnail[($i+1)%$total_posts];
						} 

					elseif ($current_id == $save_id[$i]){

						$prevpost_id = $save_id[($i-1)];
						$prevpost_title = $save_title[($i-1)];
						$prevpost_thumb = $save_thumbnail[($i-1)];

						$nextpost_id = $save_id[($i+1)%$total_posts];
						$nextpost_title = $save_title[($i+1)%$total_posts];
						$nextpost_thumb = $save_thumbnail[($i+1)%$total_posts];

					} 

				}

		$sql = "SELECT * FROM blog_post
			JOIN users ON(users.user_id = blog_post.author_id)
			JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id)
			WHERE blog_id = '$get_id'";

			$result = mysqli_query($con,$sql);

			$row = mysqli_fetch_assoc($result);

			extract($row);


			

			// GET USERNAME FROM USERS

				$sql1 = "SELECT username from users
						WHERE user_id = '$user_id'";

				$result1 = mysqli_query($con,$sql1);

				$row1 = mysqli_fetch_assoc($result1);

				extract($row1);

			// GET CATEGORY.NAME FROM BLOG_CATEGORY

				$sql2 = "SELECT name from blog_categories
							WHERE category_id = '$category_id'";

				$result2 = mysqli_query($con,$sql2);

				$row2 = mysqli_fetch_assoc($result2);

				extract($row2);

				$name = strtolower($name);
				$name = ucwords($name);
				$article = ucfirst($article);		

 ?>
<div class="breadcrumb-container">                
  	<ol class="breadcrumb">
	    <li><a href="/capstone2/">Home</a></li>
	    <li><a href="/capstone2/viewpost-category.php?id=<?php echo $category_id; ?>"><?php echo $name; ?></a></li>
	    <li class='active'><?php echo $title; ?></li>   
 	</ol>
</div>


<article>
	<div class='entry-header'>
		<h1 class='entry-title clearfix'>
			<?php echo $title; ?>
		</h1>
		<div class='entry-subheading-top'></div>
		<h2 class='entry-subheading'>
			<?php echo $subheading; ?>
		</h2>

		<div class='entry-meta'>
			<span class='entry-meta-date'>
				<i class='fa fa-clock-o'></i>
				<a><?php echo $date_published . ", " . $time_published; ?></a>
			</span>
			<span class='entry-meta-author'>
				<i class='fa fa-user'></i>
				<a><?php echo ucfirst($first_name) . " ". substr(ucfirst($middle_name), 0, 1).". " . ucfirst($last_name); ?></a>
			</span>

			<span class='entry-meta-categories'>
				<i class='fa fa-folder-open-o'></i>
				<a href='/capstone2/viewpost-category.php?id=<?php echo $category_id;?>'><?php echo $name; ?></a>
			</span>

			<span class='entry-meta-comments'>
				<i class='fa fa-eye'></i> <?php echo $views; ?>
			</span>

			<span class='entry-meta-views'>
				<i class='fa fa-comment-o'></i>
				<a><?php echo $comments_count ?></a>
			</span>

		</div> <!-- entry meta -->

	</div> <!-- end of entry header --> 

	<!-- ad space -->
	<div class='entry-ad-wrapper'>
			<div class='entry-ad-widget'>
				<div class='entry-ad-label'>
					Advertisement
				</div>
				<div class='entry-ad-area'>
					<div class='entry-ad-space'>
						Here you can place morde advertisement and banners
					</div>
				</div>

			</div>
	</div>

	<div class='entry-content clearfix'>

		<!-- 	<figure class='entry-thumbnail'>
			<img src='http://demo.mhthemes.com/magazine/wp-content/uploads/sites/16/2015/10/singapore_river-678x381.jpg' alt='Singapore River' title='Singapore River'>

			<figcaption class='entry-thumbnail-caption'>
				Image Credit: 365 Naga City Photographer's Network © Nico Julia
			</figcaption>
		</figure> -->

		<!-- social sharing buttons -->
		<?php require $_SERVER['DOCUMENT_ROOT'].'/capstone2/article-pages/social-sharing-icons.php' ?>

		<?php echo $article; ?>
		
				

		<!-- social sharing buttons -->
		<?php require $_SERVER['DOCUMENT_ROOT'].'/capstone2/article-pages/social-sharing-icons.php' ?>

	<!-- tags section	 -->
		<div class='tags-wrapper clearfix'>

			<?php 

				echo "<span class='tag-box'><i class='fa fa-tag'></i>TAGS :</span>";

				$query_tag = "SELECT tag_name FROM blog_tags JOIN post_tags ON (blog_tags.tags_id = post_tags.tags_id) WHERE blog_post_id = '$get_id'";

				$result = mysqli_query($con,$query_tag);

					if (mysqli_num_rows($result) > 0);

					while ($row = mysqli_fetch_assoc($result)) {
						extract($row);

						echo "<span class='tag-box'>$tag_name</span>";

					}

			 ?>
		</div>

	</div> <!-- end of entry content -->

	<!-- ad space -->
	<div class='entry-ad-wrapper'>
			<div class='entry-ad-widget'>
				<div class='entry-ad-label'>
					Advertisement
				</div>
				<div class='entry-ad-area'>
					<div class='entry-ad-space'>
						Here you can place morde advertisement and banners
					</div>
				</div>

			</div>
	</div>

</article>


<!-- about the author -->
	<?php require 'article-pages/author-box.php' ?>

<!-- prev post and next post -->
	<?php require 'article-pages/prev-next.php' ?>

<!-- related articles section -->
	<?php require 'article-pages/display-related-articles.php' ?>


<!-- comment section -->
	<?php require 'article-pages/display-comments-count.php' ?>

	<section class='comment-section clearfix' id='comment-section'>

		<h4 class='widget-title-red'>

			<span class='widget-title-inner'><i class="fa fa-comments"></i>
			&nbsp 
			<?php 
				if($comments_count == 0) {
					echo " BE THE FIRST TO COMMENT";
				} else {
					echo $comments_count . " COMMENTS";
				} 
			?>
			</span>
		</h4>


		<?php require 'article-pages/display-comments.php' ?>
	</section>

<!-- comment form	 -->
	<div class='comment-form'>
		<h3 class='comment-form-heading'>Leave a comment</h3>
		<form method='POST' id='comment-form'>
			<div class='comment-form-control'>
				<label class='comment-form-label'>Email</label>
				<span class='fill-required'>*</span>
			</div>
			<input type='email' class='comment-form-input' id='comment-email' name='email' placeholder='Enter your email..' required>

			<div class='comment-form-control'>
				<label class='comment-form-label'>Name</label>
				<span class='fill-required'>*</span>
			</div>
			<input type='text' class='comment-form-input' id='comment-name' name='name' placeholder='Enter your name..' required>

			<div class='comment-form-control'>
				<label class='comment-form-label'>Website</label>
			</div>
			<input type='text' class='comment-form-input' id='comment-website' name='website' placeholder='Enter your website..'>

			<div class='comment-form-control'>
				<label class='comment-form-label'>Comment</label>
				<span class='fill-required'>*</span>
			</div>
			<textarea  class='comment-form-textarea' type='text' name='comments' placeholder='Enter your comment..' required></textarea>

			<div class="form-group">
			<input type='submit' class='comment-form-submit' id='submit-comment' name='post-comment' value='Post Comment'><br><br>
			</div>

		</form>
	</div>

<?php require_once 'library.php'; ?>
	

