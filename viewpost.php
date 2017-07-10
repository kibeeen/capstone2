<?php 

	function get_title(){ // Displays Page Title
			echo 'Get the title of the blog post';
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