
<div id='sidebar' class=''>

	<div class='nav_title'>
		<span>
			Admin Panel
		</span>
	</div> <!-- nav_title -->

	<div class='profile-bar'>

		<div class='float-left'>
			<figure class='profile-details-sm'>
				<img id='profile-pic-sm' src='/capstone2/page-imgs/admin.jpg'>
			</figure>
		</div>

		<div class='profile-name-wrapper-sm'>
			<div id='profile-greeting-sm'>Welcome,</div>
			<div id='profile-name-sm'><?php echo $_SESSION['firstname'] . " " . $_SESSION['lastname'] ?></div>
		</div>
	</div> <!-- profile-bar -->

	<nav id='nav-sidebar'>
		<ul>
			<a href='/capstone2/admin-pages/admin-dashboard.php'><li><i class="fa fa-tachometer"></i>Admin Dashboard</li></a>
			<a href='/capstone2/admin-pages/published-posts.php#published'><li><i class="fa fa-thumb-tack"></i>Published Posts</li></a>
			<a href='/capstone2/admin-pages/pending-posts.php#pending'><li><i class="fa fa-hourglass-half"></i>Pending Posts</li></a>
			<a href='/capstone2/admin-pages/add-entry.php#add-posts'><li><i class="fa fa-file-text"></i>Add Post</li></a>
			<a href='#'><li><i class="fa fa-picture-o"></i>Media</li></a>
			<a href='#'><li><i class="fa fa-line-chart"></i>Statistics</li></a>
			<a href='#'><li><i class="fa fa-cog"></i>Settings</li></a>

			<?php echo $_SESSION['username']; ?>
			 
		</ul>
	</nav>

</div> <!-- end of sidebar -->