<?php 
	
	function display_content() { ?>	

			<div id='add-posts'>

				<div class="panel panel-default">

					<div class="panel-heading"><h3>Add Blog Entry</h3></div>

					<div class="panel-body">

						<form method="POST" class='form-horizontal' enctype='multipart/form-data'>

							<div class='form-group'>
								<label class='control-label col-sm-2'>Title: </label>
								<div class='col-sm-7'>
									<input type='text' name='title'  class='form-control' placeholder='Enter Blog Title' required>
								</div>
							</div>

							<div class='form-group'>
								<label class='control-label col-sm-2'>SubHeading: </label>
								<div class='col-sm-7'>
									<input type='text' name='subheading'  class='form-control' placeholder='Enter SubHeading ' required>
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
									<input type='file' name='thumbnail' required>
								</div>

							</div>

							<hr>

							<div class='form-group'>
								<label class='control-label col-sm-2'>Article Content: </label>
								<div class='col-sm-10'>
									<textarea class='tinymce form-control' name='article_content'></textarea>
								</div>
							</div>

							<div class='form-group'>
								<div class='col-sm-12'>
								<input type='submit' class='btn btn-primary float-right' name='add_post'> <!-- ADD-POST button -->
								</div>
							</div>

						</form>

					</div> <!-- end of panel body -->

					<div class="panel-footer">

						
						<?php 

								if(isset($_POST['add_post'])){

									require $_SERVER['DOCUMENT_ROOT'].'/capstone2/connection.php';

									$title = mysqli_real_escape_string($con,$_POST['title']);
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
									$date_created = date('F d, Y');
									$time_created = date('h:i A');
									$approved = 0;
									$featured = 0;

									$sql = "INSERT INTO blog_post (title,subheading,category_id,article,author_id,date_created,time_created,thumbnail,approved,featured)

											VALUES ('$title','$subheading','$category_id','$article','$user_id','$date_created','$time_created','$thumbnail','$approved','$featured')";

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


									echo 'Post Submitted!';

								}
						?>


					</div>

					


				</div> <!--  end of add posts -->

				<!-- javascript -->
				<script type="text/javascript" src='/capstone2/tinymce/js/jquery.min.js'></script>
				<script type="text/javascript" src='/capstone2/tinymce/js/tinymce/tinymce.min.js'></script>
				<script type="text/javascript" src='/capstone2/tinymce/init-tinymce.js'></script>

			</div>

				
			

		<?php
	}

	require_once $_SERVER['DOCUMENT_ROOT'].'/capstone2/admin-pages/admin-panel.php';

?>