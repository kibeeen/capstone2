<?php

// SHOW UNIQUE VISITOR COUNT
		// Get IP
		$ip = $_SERVER['REMOTE_ADDR'];

		// Check if this IP exist
		$sql = "SELECT ip FROM visitors WHERE ip='$ip'";

		$result = mysqli_query($con,$sql);

		if (mysqli_num_rows($result)==0) {
			$query = "INSERT INTO visitors(ip) VALUES('$ip')";
			if(mysqli_query($con,$query)){
				$visitor_id = mysqli_insert_id($con);
			}
		} else {
			$query = "SELECT visitor_id FROM visitors WHERE ip='$ip'";
			$result = mysqli_query($con,$query);
			while($row = mysqli_fetch_assoc($result)){
				$visitor_id = $row['visitor_id'];
			}
		}

		$query = "SELECT * FROM blog_visitors WHERE blog_post_id='$get_id' AND visitor_id='$visitor_id'";
			$result = mysqli_query($con,$query);

			if(mysqli_num_rows($result)==0){
				
				$query = "INSERT INTO blog_visitors(visitor_id,blog_post_id) VALUES('$visitor_id','$get_id')";
				mysqli_query($con,$query);
			}


		$query = "SELECT * FROM blog_visitors
			    JOIN blog_post ON(blog_post.blog_id = blog_visitors.blog_post_id)
			    JOIN visitors ON(visitors.visitor_id = blog_visitors.visitor_id)
				WHERE blog_post_id = '$get_id'";

				$result = mysqli_query($con,$query);
				
				$visitor_count = mysqli_num_rows($result);



?>