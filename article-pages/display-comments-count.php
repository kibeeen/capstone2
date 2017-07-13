<?php 

// counts the number of comments
	$query2 = "SELECT * FROM blog_comments
		    JOIN blog_post ON(blog_post.blog_id = blog_comments.blog_post_id)
		    JOIN visitors ON(visitors.visitor_id = blog_comments.visitor_id)
		    JOIN comments ON(comments.comment_id = blog_comments.comment_id)
			WHERE blog_post_id = '$get_id'";

			$result2 = mysqli_query($con,$query2);

			$num_of_comments = mysqli_num_rows($result2);


	$sql2 = "SELECT views FROM blog_post WHERE blog_id = $get_id";

			$result2 = mysqli_query($con,$sql);

			$row2 = mysqli_fetch_assoc($result2);

			extract($row2);

	// insert the number of comments to the column: blog_post.comments_count
	$query2 = "UPDATE blog_post SET comments_count = '$num_of_comments' WHERE blog_id = $get_id";

    		mysqli_query($con,$query2);


 ?>