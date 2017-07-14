<?php 

	
		
	function display_content() { 

		// EDIT POST QUERY
			require $_SERVER['DOCUMENT_ROOT'].'/capstone2/connection.php';

			mysqli_set_charset($con,'utf8');

			$get_id = $_GET['id'];

			$sql = "SELECT * FROM blog_post
					JOIN users ON(users.user_id = blog_post.author_id)
					JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id)
					WHERE blog_id = '$get_id'";

			$result = mysqli_query($con,$sql);

			$row = mysqli_fetch_assoc($result);

			extract($row);

			// $dir = $_SERVER['DOCUMENT_ROOT'].'/capstone2/';

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


				?>

		<div id='edit-posts'> 
			<div class="panel panel-default">

			  	<div class="panel-heading"><h3>Edit Blog Post</h3></div>

			  	<div class="panel-body">

				  	<form method="POST" class='form-horizontal' enctype='multipart/form-data'>

							<div class='form-group'>
								<label class='control-label col-sm-2'>Title: </label>
								<div class='col-sm-7'>
									<input type='text' name='title'  class='form-control' value='<?php echo $title ?>' required>
								</div>
							</div>

							<div class='form-group'>
								<label class='control-label col-sm-2'>SubHeading: </label>
								<div class='col-sm-7'>
									<input type='text' name='subheading'  class='form-control' value='<?php echo $subheading ?>' required>
								</div>
							</div>

							<div class='form-group'>
								<label class='control-label col-sm-2'>Category: </label>
								<div class='col-sm-4'>
									<?php show_category(); ?>
								</div>
							</div>


							<div class='form-group'>
								<label class='control-label col-sm-2'>Tags: </label>
								<div class='col-sm-7'>
									<input type='text' name='tags'  class='form-control' placeholder='Separate tags with commas' required>
								</div>
							</div>


							<div class='form-group'>
								<label class='control-label col-sm-2'>Thumbnail: </label>
								<div class='col-sm-4'>
									<input type='file' name='thumbnail' required><br>
									<figure>
										<figcaption>Post Thumbnail</figcaption>
										<img class='preview-thumb' src='<?php echo '/capstone2/'.$thumbnail ?>'>
									</figure>
								</div>

							</div>

							<hr>

							<div class='form-group'>
								<label class='control-label col-sm-2'>Article Content: </label>
								<div class='col-sm-10'>
									<textarea class='tinymce form-control' name='article_content'><?php echo $article ?></textarea>
								</div>
							</div>

							<div class='form-group'>
								<div class='col-sm-12'>
								<input type='submit' class='btn btn-primary float-right' name='update_post'> <!-- UPDATE-POST button -->
								</div>
							</div>

					</form>

					<?php 

						if(isset($_POST['update_post'])){

							require_once $_SERVER['DOCUMENT_ROOT'].'/capstone2/connection.php';

							// $title = addslashes($title);
							$title = mysqli_real_escape_string($con,$_POST['title']);

							// $subheading = addslashes($subheading);
							$subheading = mysqli_real_escape_string($con,$_POST['subheading']);
							
							$category = $_POST['category'];
							$tags = $_POST['tags'];
							$article = mysqli_real_escape_string($con,$_POST['article_content']);

							// GET USER ID FROM USERS
								$sql1 = "SELECT user_id from users
										WHERE username = '".$_SESSION['username']."'";

								$result1 = mysqli_query($con,$sql1);

								$row1 = mysqli_fetch_assoc($result1);

								extract($row1);

							// GET USER CATEGORY ID FROM CATEGORY
							    $sql2 = "SELECT category_id from blog_categories
										WHERE name = '".$_POST['category']."' ";

								$result2 = mysqli_query($con,$sql2);

								$row2 = mysqli_fetch_assoc($result2);

								extract($row2);

							// THUMNAIL FILE UPLOAD

								if (!file_exists("../uploads/".$_SESSION['username']))
									mkdir("../uploads/".$_SESSION['username']);

								$target_dir = "../uploads/". $_SESSION['username'] ."/";
								$target_file = $target_dir . basename($_FILES["thumbnail"]["name"]);
								$uploadOk = 1;
								$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);


								// Check if image file is a actual image or fake image

								    $check = getimagesize($_FILES["thumbnail"]["tmp_name"]);
								    if($check !== false) {
								    	echo "File is an image - " . $check["mime"] . ".";
								        $uploadOk = 1;
								    } else {
								        echo "File is not an image.";
								        $uploadOk = 0;
								    }
									

								// Check file size
									if ($_FILES["thumbnail"]["size"] > 5000000) {
									    echo "Sorry, your file is too large. Try decreasing its resolution ;)";
									    $uploadOk = 0;
									}

								// Check if $uploadOk is set to 0 by an error
									if ($uploadOk == 0) {
									    echo "Sorry, your file was not uploaded.";

									// if everything is ok, try to upload file
										} else {
										    if (move_uploaded_file($_FILES["thumbnail"]["tmp_name"], $target_file)) {
										        echo "The file ". basename( $_FILES["thumbnail"]["name"]). " has been uploaded.";
										    } else {
										        echo "Sorry, there was an error uploading your file.";
										    }
										}

							date_default_timezone_set("Asia/Singapore");
							$thumbnail = substr(($target_file),2);
							$date_modified = date('F d, Y');
							$time_modified = date('h:i A');
							// $month_created = date('F');
							// $year_created = date('Y');
							
							if ($approved == 1) { // check if post is already approved
								$approved = 1;
							} else 				  // if not, default value is 0
								$approved = 0;
								;

							if ($featured == 1) {
								$featured = 1;
							} else 
								$featured = 0;

							$sql = "UPDATE blog_post SET title = '$title', subheading  = '$subheading', category_id = '$category_id', article = '$article', author_id = '$user_id', date_modified = '$date_modified', time_modified = '$time_modified', thumbnail = '$thumbnail', approved = '$approved',featured = '$featured' WHERE blog_id = $get_id";


							mysqli_query($con,$sql);

							$get_id = mysqli_insert_id($con); // chamba ko lang to

									$tagsID = explode(",",$tags);

									foreach($tagsID as $tagName){						

										$query = "SELECT * FROM blog_tags WHERE tag_name = '$tagName'";

										$result = mysqli_query($con,$query);

										if (mysqli_num_rows($result)==0) {
											$sql = "INSERT INTO blog_tags (tag_name) VALUES ('$tagName')";
											$result = mysqli_query($con,$sql);
											$tag_id = mysqli_insert_id($con);

										} else {
											
											$query = "SELECT * FROM blog_tags WHERE tag_name = '$tagName'";
											$result = mysqli_query($con,$query);

												while($row = mysqli_fetch_assoc($result)){
													$tag_id = $row['tags_id'];
												}
										}

										$query = "SELECT * FROM post_tags WHERE tags_id = '$tag_id' AND blog_post_id = '$get_id' ";

										$result = mysqli_query($con,$query);


										if(mysqli_num_rows($result)==0){
											
											$query = "INSERT INTO post_tags(tags_id,blog_post_id) VALUES('$tag_id','$get_id')";
											mysqli_query($con,$query);
										}


									}

							echo 'Post Submitted! <br><br><br>';

						}
					?>

				</div>	<!-- end of panel-body -->

		  	</div> <!-- end of panel -->

	  	</div> <!-- end of edit posts -->

	  	<!-- javascript -->
			<script type="text/javascript" src='/capstone2/tinymce/js/jquery.min.js'></script>
			<script type="text/javascript" src='/capstone2/tinymce/js/tinymce/tinymce.min.js'></script>
			<script type="text/javascript" src='/capstone2/tinymce/init-tinymce.js'></script>


		<?php
	}

	require_once $_SERVER['DOCUMENT_ROOT'].'/capstone2/admin-pages/admin-panel.php';

?>