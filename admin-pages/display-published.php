<?php 

	require $_SERVER['DOCUMENT_ROOT'].'/capstone2/connection.php';

	
	$sql = "SELECT * FROM blog_post
			JOIN users ON(users.user_id = blog_post.author_id)
			JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id)
			WHERE approved ORDER BY date_published DESC, time_published DESC";

	$result = mysqli_query($con,$sql);

	$count = 1;

	if (mysqli_num_rows($result) > 0);

		while ($row = mysqli_fetch_assoc($result)) 
		{
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


	$blogID = [];

	$blogID[$count] = $blog_id;

	$postID = $blogID[$count];

	echo "<tr>";

	echo "	
		<td>$count</td>
		<td><strong><a href='/capstone2/admin-pages/edit-entry.php?id=$blogID[$count]'>$title</a></strong></td>
		<td>$first_name $last_name</td>
		<td>$name</td>
		<td>0</td>
		<td class='center-text'>$views</td>
		<td class='center-text'>COMMENTS 0</td>
		";

		if ($featured == 1) {
			echo "
			<td class='center-text'><i class='fa fa-check-circle-o'></i></td>";

		} elseif ($featured == 0) {
			echo "
			<td class='center-text'></td>";
		}


		echo "

		<td>$date_published • $time_published</td>
		<td>$date_modified $time_modified</td>
		";

		if ($approved == 1) {
			echo "
			<td class='center-text'>
				<button type='button' class='btn btn-success'>Published</button>
			</td>";
		} 

		echo "	<td class='center-text'>
				<a href='/capstone2/viewpost.php?id=$blogID[$count]' target='_blank'>
				<buton class='btn btn-default btn-view' title='View post'><i class='fa fa-eye'></i></button></a>
				</td>


				<td class='center-text'>
					<form class='straight' title='Edit this post'>
					<a href='/capstone2/admin-pages/edit-entry.php?id=$postID'>
						<button type='button' class='btn btn-default btn-view'>
							<i class='fa fa-pencil-square-o'></i>
						</button>
					</a>
					</form>
				</td>

				<td class='center-text'>
					<form class='straight' title='Delete this post'>
					<a data-toggle='modal' data-backdrop='static' href='published-posts.php?#modal-delete$postID'>
						<button id ='delete-post' type='button' class='btn btn-danger btn-view'>
							<i class='fa fa-trash-o'></i>
						</button>
					</a>
					</form>
				</td>

			

			";

		

			echo "<tr>";

			$count = $count + 1;

			echo "

				<div  id='modal-delete$postID' class='modal fade' role='dialog'>

				    <div class='modal-dialog modal-md'>
				    
						<div class='modal-content'>

						        <div class='modal-header modal-danger'>
						          	<button type='button' class='close' data-dismiss='modal'>&times;</button>
						         	 <h4 class='modal-title'>Delete Post</h4>
						        </div>

						        <div class='modal-body'>
						        	<div>
							       		<span class='center-me'>
							       			<h4 class='modal-body-heading'> 
							       				Are you sure you want to delete this Blog Entry?
							       			</h4>
						       			</span>
						       		</div>

						       		<div class='figure-thumb-wrapper'>

							       		<figure class='modal-thumb'>
							       			<img src='/capstone2/$thumbnail' class='modal-img'>
							       		</figure>

							       		<div class='modal-caption'>
							       			$title
						       			</div>
							       		

						       		</div>

		

						        </div>

						        <div class='modal-footer'>

									<form method='GET' class='center-right'>
										<input type='hidden' name='post-id' value='$postID'>
							         	<button type='submit' name='cancel-delete' class='btn btn-default'>Cancel</button>

								        <button type='submit' id='acceptDelete' name='accept-delete' class='btn btn-danger'>Yes, delete this post</button>
						         	</form>

								</div>

					    </div> <!-- div modal content -->
				    
				    </div> <!-- modal-dialog -->

				</div> <!-- /end of modal-delete post -->	


			

				";					

		}

		
		if(isset($_GET['accept-delete'])){ 
	    	$postID = $_GET['post-id'];

	    	echo $postID;

	    	$sql = "SELECT * FROM blog_post
					JOIN users ON(users.user_id = blog_post.author_id)
					JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id)
					WHERE blog_id = $postID";

			$result = mysqli_query($con,$sql);

			$row = mysqli_fetch_assoc($result);

			extract($row);

			$date_deleted = date('h:i A, F d, Y');


			$sql = "INSERT INTO deleted_posts (del_title,del_subheading,del_author_id,del_category_id,del_tag_id,del_article,del_views,del_comment_id,del_date_created,del_time_created,date_deleted,del_date_published,del_thumbnail,del_approved,del_featured,del_date_modified,del_time_modified) VALUES ('$title','$subheading','$author_id','$category_id','$tag_id','$article','$views','$comment_id','$date_created','$time_created','$date_deleted','del_date_published','$thumbnail','$approved','$featured','$date_modified','time_modified')";

			$sql_delete = "DELETE FROM blog_post WHERE blog_id = $postID";

			mysqli_query($con,$sql);

			mysqli_query($con,$sql_delete);





			header('location:/capstone2/admin-pages/published-posts.php');



			

		}




		// if(isset($_POST['cancel-delete'])){ // should be added after while

		// 	header('location:published-posts.php');	

		// }





 ?>


