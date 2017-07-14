	<?php 

		require 'connection.php';

		mysqli_set_charset($con,'utf8');

		$get_cat_id = $_GET['id'];


		$sql = "SELECT * FROM blog_post JOIN users ON(users.user_id = blog_post.author_id) JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id) WHERE blog_post.category_id = '$get_cat_id' AND approved";

		$result = mysqli_query($con, $sql);

		$display_header = 'true';

		if (mysqli_num_rows($result) > 0);

		while ($row = mysqli_fetch_assoc($result)){
			extract($row);

			$name = strtolower($name);
			$name = ucfirst($name);

			if($display_header == 'true'){

				echo "
						<div class='breadcrumb-container'>                
						  	<ol class='breadcrumb'>
							    <li><a href='/capstone2/'>Home</a></li>
							    <li class='active'>$name</li> 
						 	</ol>
						</div>

						<div class='page-category-header'>

				";

				echo "	<div class='page-category-title clearfix'>
		 					$name
	 					</div>

	 					<div class='page-category-desc'>
						 	This is a category description. This is a category description. This is a category description. This is a category description. 
					 	</div>

		 			 ";

	 			$display_header = 'false';
	 			$name = strtoupper($name);



			} else {
				$display_header = 'false';
				$name = strtoupper($name);
			}

			require 'article-pages/display-categories.php';

		} // end of while loop


	?>

</div>


 	















