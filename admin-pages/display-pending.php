<?php 

	require $_SERVER['DOCUMENT_ROOT'].'/capstone2/connection.php';

	
	$sql = "SELECT * FROM blog_post
			JOIN users ON(users.user_id = blog_post.author_id)
			JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id)
			WHERE not approved ORDER BY date_created DESC, time_created DESC";

	$result = mysqli_query($con,$sql);

	$count = 1;

	$new_counter = 0;

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

// </p>    
	$blogID = [];

	$blogID[$count] = $blog_id;

	$postID = $blogID[$count];

	echo "<tr>
		<td>$count</td>
		";

		if ($new_counter < 3) {
			echo "
			<td>
			<span class='label label-success label-new'>New</span>
			<strong><a href='/capstone2/admin-pages/edit-entry.php?id=$blogID[$count]'>$title</a></strong>
			</td>
				";
		} else {
			echo "
			<td>
			<strong><a href='/capstone2/admin-pages/edit-entry.php?id=$blogID[$count]'>$title</a></strong>
			</td>
			";
		}
		

		echo "
		<td>$first_name $last_name</td>
		<td>$name</td>
		<td>0</td>
		<td>$date_created • $time_created</td>
		<td>$date_modified $time_modified</td>
		";

		if ($approved == 0 AND $denied == 1) {
			echo "
			<td class='center-text'>
				<button type='button' class='btn btn-danger'>Denied</button>
			</td>";

		} elseif ($approved == 0) {

			echo "
			<td class='center-text'>
				<button type='button' class='btn btn-warning'>Pending</button>
			</td>";
		}

		echo "	
				<td class='center-text'>
					<a href='/capstone2/viewpost.php?id=$blogID[$count]' target='_blank'>
					<buton class='btn btn-default btn-view' title='View post'><i class='fa fa-eye'></i></button></a>
				</td>


				<td class='center-text'>
				<form class='straight' title='Delete this post'>
				<a href='/capstone2/admin-pages/edit-entry.php?id=$postID'>
					<button type='button' class='btn btn-default btn-view'>
						<i class='fa fa-pencil-square-o'></i>
					</button>
				</a>
				</form>
				</td>

				
			<td class='center-text'>
				<span class='straight'>
					<form class='straight' title='Approve this post' action='pending-posts.php?id=$postID' method='POST'>
						<button type='submit' name='approve' class='btn btn-primary'><i class='fa fa-check-circle'></i> Approve</button>
					</form>

					<form class='straight' title='Deny this post' action='pending-posts.php?id=$postID' method='POST'>
						<button type='submit' name='deny' class='btn btn-danger'><i class='fa fa-check-circle'></i> Deny</button>
					</form>
				</span>
			</td>

			";

		

			echo "<tr>";

			$count = $count + 1;
			$new_counter = $new_counter + 1;

		}

		
		if(isset($_POST['approve'])){ 
	    	$postID = $_GET['id'];;

	    	$sql = "SELECT * FROM blog_post
					JOIN users ON(users.user_id = blog_post.author_id)
					JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id)
					WHERE blog_id = $postID";

			$result = mysqli_query($con,$sql);

			$row = mysqli_fetch_assoc($result);

			extract($row);

			date_default_timezone_set("Asia/Singapore");
			$date_published = date('F d, Y');
			$time_published = date('h:i A');
			$month_published = date('F');
			$year_published = date('Y');

			$sql = "UPDATE blog_post SET approved = '1', denied ='0', date_published = '$date_published', time_published = '$time_published', month_published = '$month_published', year_published = '$year_published' WHERE blog_id = $postID";

			mysqli_query($con,$sql);

			header('location:pending-posts.php');	

		}




		if(isset($_POST['deny'])){ // should be added after while
	    	$postID = $_GET['id'];;

	    	$sql = "SELECT * FROM blog_post
					JOIN users ON(users.user_id = blog_post.author_id)
					JOIN blog_categories ON(blog_categories.category_id = blog_post.category_id)
					WHERE blog_id = $postID";

			$result = mysqli_query($con,$sql);

			$row = mysqli_fetch_assoc($result);

			extract($row);

			$sql = "UPDATE blog_post SET approved = '0', denied = '1' WHERE blog_id = $postID";

			mysqli_query($con,$sql);

			header('location:pending-posts.php');	

		}



 ?>