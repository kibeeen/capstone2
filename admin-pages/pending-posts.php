<?php 

	ob_start();
	
	function display_content() { ?>

			<div id='pending-posts'> 

					<div class="panel panel-warning">

					  	<div class="panel-heading"><h3>Pending Posts</h3></div>

						  	<div class="panel-body table-responsive">
						  		<table class='table'>
						  			<tr>
						  				<th>#</th>
						  				<th>Title</th>
						  				<th>Author</th>
						  				<th>Category</th>
						  				<th>Tags</th>
						  				<th>Date Published</th>
						  				<th>Last Modified</th>
						  				<th class='center-text'>Status</th>
						  				<th class='center-text'>View</th>
						  				<th class='center-text'>Edit</th>
						  				<th class='center-text'>Options</th>
						  			</tr>

										<?php require_once $_SERVER['DOCUMENT_ROOT'].'/capstone2/admin-pages/display-pending.php'; ?>
							

						  		</table>
						  		
						  	</div>

					</div>

				</div> <!-- id show-posts -->	

		<?php
	}

	require_once $_SERVER['DOCUMENT_ROOT'].'/capstone2/admin-pages/admin-panel.php';

 ?>


