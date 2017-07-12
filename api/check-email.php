<?php 


require $_SERVER['DOCUMENT_ROOT'].'/capstone2/connection.php';


$visitor_email = $_POST['email'];

$sql = "SELECT * FROM visitors WHERE visitor_email = '$visitor_email'";

$result = mysqli_query($con,$sql);

if(mysqli_num_rows($result) > 0){
	$row = mysqli_fetch_assoc($result);
	echo json_encode($row);
} else {
	echo 0;
}

?>