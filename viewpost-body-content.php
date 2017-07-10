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
				<a><?php echo $date_created . " " . $time_created; ?></a>
			</span>
			<span class='entry-meta-author'>
				<i class='fa fa-user'></i>
				<a><?php echo ucfirst($first_name) . " ". substr(ucfirst($middle_name), 0, 1).". " . ucfirst($last_name); ?></a>
			</span>
			<span class='entry-meta-categories'>
				<i class='fa fa-folder-open-o'></i>
				<a><?php echo $name; ?></a>
			</span>

<!-- 			<span class='entry-meta-views'>
				<i class='fa fa-comment-o'></i>
				<a>17</a>
			</span> -->
			<span class='entry-meta-comments'>
				<i class='fa fa-eye'></i> <?php echo $views; ?>
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

		<div class='tags-wrapper clearfix'>

			<?php 

				echo "TAGS: ";

				$query_tag = "SELECT tag_name FROM blog_tags JOIN post_tags ON (blog_tags.tags_id = post_tags.tags_id) WHERE blog_post_id = '$get_id'";

				$result = mysqli_query($con,$query_tag);

					if (mysqli_num_rows($result) > 0);

					while ($row = mysqli_fetch_assoc($result)) {
						extract($row);

						echo "$tag_name, ";

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



	<!-- about the author -->
	<div class='win-author-box clearfix'>
		<figure class='margin-0'>
			<img src='page-imgs/admin.jpg' class='win-author-box-img'>
		</figure>
		<div class='win-author-box-header'>
			<div class='win-author-box-name' title='Verified Author'>
				Kevin C. Chavez
			</div>
			<div class='win-author-box-job-title'>
				Web Developer at Google
			</div>
		</div>

		<div class='win-author-box-bio clearfix'>
			Lorem ipsum dolor sit amet, consetetur! Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Lorem ipsum dolor sit amet sadipscing elitr, sed diam nonumy eirmod tempor.
		</div>
	</div> <!-- end of author box -->

	<!-- prev post and next post -->
	<div class='widget-post-nav clearfix'>
		<div class='widget-col-prev'>
			<a href="viewpost.php?id=<?php echo $prevpost_id; ?>" class='nav-a'>
				<img src="/capstone2<?php echo $prevpost_thumb; ?>" class='img-prev'>

				<span class='nav-span-prev'> 
					PREVIOUS
				</span>

				<p class='nav-p'>
					<?php echo $prevpost_title; ?>
				</p>
			</a>
		</div>

		<div class='widget-col-next'>
			<a href="viewpost.php?id=<?php echo $nextpost_id; ?>" class='nav-a'>
				<img src="/capstone2<?php echo $nextpost_thumb; ?>" class='img-next'>

				<span class='nav-span-next'>
					NEXT 
				</span>

				<p class='nav-p'>
					<?php echo $nextpost_title; ?>
				</p>
			</a>
		</div>	
	</div>

	
	<section class='related-articles'>

		<div class='feed-related-articles clearfix'>

				<div class='widget-title-red upsize-font center-me'>
					<span class='widget-title-inner'>
						We Recommend 
					</span>


				</div>


					<div class='win-row clearfix'>

						<div class='col-sm-6 col-md-4 col-fix-margin center-text'>

							<figure class='related-figure'>
								<img src='nadine.jpg'>
							</figure>

							<div class='widget-content-md'>

								<div class='widget-meta-category-md'>
									FHM BABES
								</div>

								<div class='widget-title-md'>
									Nadine Lustre Marks ‘Sexiest Woman’ Win With A Sultry Dance Number
								</div>

							</div>
						</div>


						<div class='col-sm-6 col-md-4 col-fix-margin'>

						
							<figure class='related-figure'>
								<img src='http://images3.fhm.com.ph/2017/07/07/NBA-Jargon.jpg'>
							</figure>

							<div class='widget-content-md'>
								<div class='widget-meta-category-md'>
									FHM BABES
								</div>
								<div class='widget-title-md'>
									Nadine Lustre Marks ‘Sexiest Woman’ Win With A Sultry Dance Number
								</div>
							</div>
						</div>


						<div class='col-sm-6 col-md-4 col-fix-margin'>

						
							<figure class='related-figure'>
								<img src='http://images2.fhm.com.ph/2017/07/07/superheroes.jpg'>
							</figure>

							<div class='widget-content-md'>
								<div class='widget-meta-category-md'>
									FHM BABES
								</div>
								<div class='widget-title-md'>
									Nadine Lustre Marks ‘Sexiest Woman’ Win With A Sultry Dance Number
								</div>
							</div>
						</div>

			
					</div>











					<div class='win-row clearfix'>

						<div class='col-sm-6 col-md-4 col-fix-margin center-text'>

							<figure class='related-figure'>
								<img src='http://images2.fhm.com.ph/2017/07/06/ADDL.jpg'>
							</figure>

							<div class='widget-content-md'>

								<div class='widget-meta-category-md'>
									FHM BABES
								</div>

								<div class='widget-title-md'>
									Nadine Lustre Marks ‘Sexiest Woman’ Win With A Sultry Dance Number
								</div>

							</div>
						</div>


						<div class='col-sm-6 col-md-4 col-fix-margin'>

						
							<figure class='related-figure'>
								<img src='http://images2.fhm.com.ph/2017/07/05/0705-crappiest-mma-640.jpg'>
							</figure>

							<div class='widget-content-md'>
								<div class='widget-meta-category-md'>
									FHM BABES
								</div>
								<div class='widget-title-md'>
									Nadine Lustre Marks ‘Sexiest Woman’ Win With A Sultry Dance Number
								</div>
							</div>
						</div>


						<div class='col-sm-6 col-md-4 col-fix-margin'>

						
							<figure class='related-figure'>
								<img src='http://images2.fhm.com.ph/2017/07/05/rsz_hairdresser-1179459_960_720.jpg'>
							</figure>

							<div class='widget-content-md'>
								<div class='widget-meta-category-md'>
									FHM BABES
								</div>
								<div class='widget-title-md'>
									Nadine Lustre Marks ‘Sexiest Woman’ Win With A Sultry Dance Number
								</div>
							</div>
						</div>

			
					</div>

		</div>

	</section>



</article>