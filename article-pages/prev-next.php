<div class='widget-post-nav clearfix'>
		<div class='widget-col-prev'>
			<a href="viewpost.php?id=<?php echo $prevpost_id; ?>" class='nav-a'>
				<img src="/capstone2<?php echo $prevpost_thumb; ?>" class='img-prev'>

				<span class='nav-span-prev'> 
					PREVIOUS
				</span>

				<p class='nav-p'>
					<?php echo $prevpost_title; ?>
				</p>
			</a>
		</div>

		<div class='widget-col-next'>
			<a href="viewpost.php?id=<?php echo $nextpost_id; ?>" class='nav-a'>
				<img src="/capstone2<?php echo $nextpost_thumb; ?>" class='img-next'>

				<span class='nav-span-next'>
					NEXT 
				</span>

				<p class='nav-p'>
					<?php echo $nextpost_title; ?>
				</p>
			</a>
		</div>	
	</div>