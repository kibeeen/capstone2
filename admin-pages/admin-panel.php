<?php 
	
	session_start();

	date_default_timezone_set("Asia/Singapore");


	if ($_SESSION['role'] != 'admin')
		header("location:../restricted.php");

	function show_category() {

		require '../connection.php';

		$sql = "SELECT name
				FROM blog_categories ORDER BY name ASC";

		$result = mysqli_query($con,$sql);

		if (mysqli_num_rows($result) > 0) {

			echo "<select class='form-control' name='category' required>
				  <option value='' disabled selected>Select Category</option>
				 ";


			while ($row = mysqli_fetch_assoc($result)) {
				extract($row);

				echo "<option value='$name'>$name</option>";


			}
			echo "</select>";
		}	
	}

	


 ?>


<!DOCTYPE html>
<html>
<head>
	<title>Admin Panel | When In Naga</title>

	<?php require_once $_SERVER['DOCUMENT_ROOT'].'/capstone2/admin-pages/admin-links.php' ?>

</head>
<body>	

	<div class='main-container'>

		
		<?php require_once $_SERVER['DOCUMENT_ROOT'].'/capstone2/admin-pages/admin-sidebar.php' ?>
		
		<div id='main-content' class='clearfix'>
			<?php display_content(); ?>
		</div>


	</div><!--  end of main container -->




</body>
</html>






