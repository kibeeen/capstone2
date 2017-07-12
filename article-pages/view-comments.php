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
							    <img src='page-imgs/avatar.jpg' class='media-object comment-avatar' >
							 </div>
							 <div class='media-body'>

							    <span class='comment-heading'><b>$visitor_name</b> says:</span>
							    <span class='comment-date'>$comment_date</span>

							    <p>$user_comment</p>

							   <br>

							   <button>REPLY</button>
							</div>
						</div>
					</div>


					</section>
							
				";

			} // end of while loop


 ?>


