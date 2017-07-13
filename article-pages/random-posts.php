<!-- POPULAR ARTICLES START -->

<ul class='widget-custom-posts'>

	<li class='widget-custom-posts-item clearfix'>
		<figure class='widget-figure-thumb'>
			<a href="viewpost.php?id=<?php echo $blog_id; ?>">
				<img src="<?php echo '/capstone2/'.$thumbnail; ?>" class='widget-img-thumb'>
			</a>
		</figure>

		<div class='widget-custom-posts-header'>
			<a href="viewpost-category.php?id=<?php echo $category_id; ?>"  target='_blank'>
				<div class='widget-meta-category'><?php echo $name; ?></div>
			</a>
			<div class='widget-custom-posts-small-title'>
				<a href="viewpost.php?id=<?php echo $blog_id; ?>" ><?php echo $title; ?></a>
			</div>
			

			
		</div>
	</li>
</ul>



			