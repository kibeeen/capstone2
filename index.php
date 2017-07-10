<?php 

	function get_title(){ // Displays Page Title
			echo 'When in Naga | Lifestyle, Travel, Food, News & Trends';
		}

	function display_content(){ ?>

		<div class='container '>

		<!-- navbar & header -->
		<?php require_once 'partials/navbar.php'; ?>		

		<div class='body-wrapper clearfix'>


			<!-- body content -->
			<div class='main-page-content clearfix'>
				<?php require_once 'home-body-content.php'; ?>
			</div> <!-- end of main-page-content -->

			<!-- home page sidebar -->
			<div class='home-page-sidebar'>
				<?php require_once 'home-sidebar-content.php'; ?>
			</div><!--  end of homepage sidebar -->
			

		</div> <!-- end of body wrapper -->

		<?php
	}

	require_once 'WhenInNaga.php';
?>