<?php 

	$host = 'localhost';
	$username = 'root';
	$password = '';
	$database = 'wheninnaga';

	$con = mysqli_connect($host,$username,$password,$database);
	date_default_timezone_set("Asia/Singapore");


	mysqli_set_charset($con,'utf8');

	 // if ($con)
		// echo "connection successful! <br><br>";

 ?>
