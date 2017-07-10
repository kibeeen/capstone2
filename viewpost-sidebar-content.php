<!-- RANDOM POST SECTION -->
	<?php 
	
	echo " 
		<div id='random-posts' class='clearfix'>
			<h4 class='widget-title-red'>
				<span class='widget-title-inner'>Random Stories</span>
			</h4>
		";

	require 'connection.php';

	mysqli_set_charset($con,'utf8');

	$sql = "SELECT * FROM blog_post 
			JOIN users ON(users.user_id = blog_post.author_id) 
			JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id) 
			WHERE approved ORDER BY RAND() LIMIT 5";

	$result = mysqli_query($con,$sql);

		if (mysqli_num_rows($result) > 0);

		while ($row = mysqli_fetch_assoc($result)) 
		{
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

				

			require 'article-pages/random-posts.php';



		}

		echo "</div>";
 	?> 


<!-- TRENDING VIDEO SECTION -->
	<div id='trending-video' class='clearfix'>
		<h4 class='widget-title-red'>
			<span class='widget-title-inner'>
				<i class='fa fa-youtube-play'></i> TRENDING VIDEO
			</span>
		</h4>

		<div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://www.youtube.com/embed/b2Emnph8_L8?ecver=2" width="640" height="360" frameborder="0" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen></iframe></div>
	</div>




<!-- SOCIAL MEDIA SECTION -->
	<div class='widget-content clearfix'>
		<div class="socials">
			<a target="_blank" href="https://www.facebook.com/fotobomberphotobooth" class="social-facebook">
				<span class="social-count">187,255</span>
				<span class="social-text">Follow us on <strong>Facebook</strong></span>
			</a>

			<a target="_blank" href="https://twitter.com/fotobomberphotobooth" class="social-twitter">
				<span class="social-count">60,968</span>
				<span class="social-text">Follow us on <strong>Twitter</strong></span>
			</a>

			<!-- <a target="_blank" href="https://www.youtube.com/fotobomberphotobooth" class="social-instagram">
				<span class="social-count">847</span>
				<span class="social-text">Follow us on <strong>Instagram</strong></span>
			</a> -->

			<a target="_blank" href="https://www.youtube.com/fotobomberphotobooth" class="social-subscribe">
				<span class="social-count">11,695</span>
				<span class="social-text">Subscribe us on <strong>YouTube</strong></span>
			</a>

		</div>
	</div>
