<?php 

	ob_start();
	
	function display_content() { ?>

			<div id='published'> 

					<div class="panel panel-success">

					  	<div class="panel-heading"><h3>Published Posts</h3></div>

						  	<div class="panel-body table-responsive">
						  		<table class='table'>
						  			<tr>
						  				<th>#</th>
						  				<th>Title</th>
						  				<th>Author</th>
						  				<th>Category</th>
						  				<th>Tags</th>
						  				<th class='center-text'>Views</th>
						  				<th class='center-text'>Comments</th>
						  				<th class='center-text'>Featured</th>
						  				<th>Date Published</th>
						  				<th>Last Modified</th>
						  				<th class='center-text'>Status</th>
						  				<th class='center-text'>View</th>
						  				<th class='center-text'>Edit</th>
										<th class='center-text'>Delete</th>
						  			</tr>

										<?php require_once $_SERVER['DOCUMENT_ROOT'].'/capstone2/admin-pages/display-published.php'; ?>



									<!-- 	<script type="text/javascript">
											
											document.getElementById('acceptDelete').onclick = function(){

												swal(
												  'Good job!',
												  'You clicked the button!',
												  'success',
												  timer: 2500
												).then(
												  function () {},
												  // handling the promise rejection
												  function (dismiss) {
												    if (dismiss === 'timer') {
												      console.log('I was closed by the timer')
												    }
												  }
												)

											}

										</script> -->



							

						  		</table>

						  	</div>

					</div>

				</div> <!-- id show-posts -->	




		<?php


	}

	require_once $_SERVER['DOCUMENT_ROOT'].'/capstone2/admin-pages/admin-panel.php';

 ?>


