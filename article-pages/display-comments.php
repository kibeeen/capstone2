<?php 



	$query = "SELECT * FROM blog_comments
		    JOIN blog_post ON(blog_post.blog_id = blog_comments.blog_post_id)
		    JOIN visitors ON(visitors.visitor_id = blog_comments.visitor_id)
		    JOIN comments ON(comments.comment_id = blog_comments.comment_id)
			WHERE blog_post_id = '$get_id'";

			$result = mysqli_query($con,$query);

			while($row = mysqli_fetch_assoc($result)) {

				extract($row);

				$user_comment = $comment;

				$comment_date = strtoupper($comment_date);

				echo "

					<div id='comment-box' class='comment-box clearfix'>
						<div class='media'>
							<div class='media-left'>
							    <img src='/capstone2/$avatar' class='media-object comment-avatar' >
							 </div>
							 <div class='media-body'>

							    <span class='comment-heading'><b>$visitor_name</b> says:</span>
							    <span class='comment-date'>$comment_date</span>

							    <p>$user_comment</p>

							</div>
						</div>
					</div>

					</section>
							
				";

			} // end of while loop

		ob_start();

		if(isset($_POST['post-comment'])){

			$comment = $_POST['comments'];

			$commenter_email = $_POST['email'];

			$commenter = $_POST['name'];
			
			$commenter_website = $_POST['website'];
			$comment_date = date('F d, Y') . " AT " . date('h:i A');


			$thumb_query = "SELECT * FROM avatars ORDER BY RAND() LIMIT 1";

			$thumb_result = mysqli_query($con,$thumb_query);

			$thumb_row = mysqli_fetch_assoc($thumb_result);

			extract($thumb_row);

			
			// Check if this IP exist
			$sql = "SELECT visitor_email FROM visitors WHERE visitor_email='$commenter_email'";

			$result = mysqli_query($con,$sql);

				if (mysqli_num_rows($result)==0) {
					$query = "INSERT INTO visitors(ip, visitor_name, visitor_website, visitor_email, avatar) VALUES('$ip', '$commenter', '$commenter_website', '$commenter_email','$avatar_thumb')";
					if(mysqli_query($con,$query)){
						$visitor_id = mysqli_insert_id($con);
					}
				} else {
					$query = "SELECT visitor_id FROM visitors WHERE visitor_email='$commenter_email'";
					$result = mysqli_query($con,$query);
					while($row = mysqli_fetch_assoc($result)){
						$visitor_id = $row['visitor_id'];
					}
				}

			// query for inserting visitor info
			// $sql = "INSERT INTO visitors(comment, comment_date, visitor_id) VALUES ('$comment', '$comment_date', '$visitor_id')";
			// mysqli_query($con,$sql);


			//query for inserting a comment
			$sql_comment = "INSERT INTO comments(comment, comment_date, visitor_id) VALUES ('$comment', '$comment_date', '$visitor_id')";

			if(mysqli_query($con,$sql_comment)){
				// if new insert (ex. comment), this function gets the recently added id and stores into a variable.
				$comment_id = mysqli_insert_id($con); 

				}


				$sql = "INSERT INTO blog_comments(blog_post_id, comment_id, visitor_id) VALUES ('$get_id','$comment_id','$visitor_id')";

				$result = mysqli_query($con,$sql);

				ob_flush();

				header("location:viewpost.php?id=".$get_id."#comment-form");

				
				
		} // end of if statement

?>


