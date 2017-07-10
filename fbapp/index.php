<?php session_start(); ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
	<title>Home</title>
</head>
<body>
	<script type="text/javascript" src='fb.js'></script>
	<div id='content' style='width: 70%; float: left;''>
		<h2>Welcome <?php if(isset($_SESSION['fullname'])) { echo $_SESSION['fullname']; } else {}?></h2>
	</div>

	<div id='sidebar' style='width: 20%; float: right;''>
	<?php if(isset($_SESSION['fullname'])) { echo $_SESSION['fullname']; }?>
		<div class='fb-login-button' date-scope="public_profile,email" onlogin="checkLoginState()"></div>
	</div>

</body>
</html>