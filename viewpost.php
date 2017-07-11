<?php 

	function get_title(){ // Displays Page Title

		$get_id = $_GET['id'];

		require_once 'connection.php';

			$sql = "SELECT * FROM blog_post
			JOIN users ON(users.user_id = blog_post.author_id)
			JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id)
			WHERE blog_id = '$get_id'";

			$result = mysqli_query($con,$sql);

			$row = mysqli_fetch_assoc($result);

			extract($row);

			echo $title . " | When In Naga";
		}

	function display_content(){ ?>

		<div class='container '>

		<!-- navbar & header -->
		<?php require_once 'partials/navbar.php'; ?>		

		<div class='body-wrapper clearfix'>

			<!-- body content -->
			<div class='main-page-content'>
				<?php require_once 'viewpost-body-content.php'; ?>
			</div> <!-- end of main-page-content -->
			

			<!-- home page sidebar -->
			<div class='home-page-sidebar'>
				<?php require_once 'viewpost-sidebar-content.php'; ?>
			</div><!--  end of homepage sidebar -->
			

		</div> <!-- end of body wrapper -->

		<?php
	}



	require_once 'WhenInNaga.php';
?>