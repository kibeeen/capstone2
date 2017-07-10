<div class='col-sm-12 col-latest'>

	<a href ="viewpost.php?id=<?php echo $blog_id; ?>">
		<figure class='latest-fig-thumb'>
			<img src="<?php echo '/capstone2' . $thumbnail ?>" class='latest-img'>
		</figure>
	</a>

	<div class='latest-wrapper'>
		

		<div class='widget-meta-category-latest'>
			<?php echo $name; ?>
		</div>

		<div class='latest-post-title'>
			<a href ="viewpost.php?id=<?php echo $blog_id; ?>">
				<?php echo $title; ?>
			</a>
		</div>
		<p class='latest-post-desc'>
			<?php echo strip_tags($article); ?>
		</p>

		<div class="latest-meta-items">
			<span class="latest-dates-updated">
				<span>
					by: 
				</span>
				<a href="#">
					<?php echo ucwords($first_name) . " " . ucwords($last_name); ?>
				</a>
				<span>
					| <?php echo $date_published; ?>
				</span>
			</span>
		</div>

	</div>
</div>