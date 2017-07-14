<?php 

?>
	<?php require_once 'article-pages/carousel.php' ?>

	<!-- LATEST POST SECTION -->

	<?php 

		echo " 
		<div id='random-posts' class='clearfix'>
			<h4 class='widget-title-red-lg'>
				<span class='widget-title-inner-lg'>Recent Articles</span>
			</h4>
		";

		require 'connection.php';

		mysqli_set_charset($con,'utf8');

		$sql = "SELECT * FROM blog_post 
				JOIN users ON(users.user_id = blog_post.author_id) 
				JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id) 
				WHERE approved ORDER BY date_published DESC, time_published ASC LIMIT 3";

		$result = mysqli_query($con,$sql);

			if (mysqli_num_rows($result) > 0);

			while ($row = mysqli_fetch_assoc($result)) {

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

					strip_tags($article);

				require 'article-pages/latest-posts.php';
			}

		
		echo "</div>";



	 ?>

		
		




	<div class='article-categories-box clearfix'>

		<div class='row-cat clearfix'>

			<?php require_once 'article-pages/category1.php' ?>

			<?php require_once 'article-pages/category2.php' ?>

			<?php require_once 'article-pages/category3.php' ?>

		</div>
		
		<div class='row-cat clearfix'>
			<?php require 'article-pages/category1.php' ?>

			<?php require 'article-pages/category2.php' ?>

			<?php require 'article-pages/category3.php' ?>

		</div>



	
	</div> <!-- end of article-categories-box -->
