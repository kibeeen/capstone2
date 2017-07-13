<?php 
	require 'connection.php';

	session_start();

	if (isset($_SESSION['username'])){
		header('location:admin-pages\admin-dashboard.php');
	}


	// REGISTRATION
	if(isset($_POST['register'])){
		$username = $_POST['username'];
		$password =  sha1($_POST['password']);
		$confirmpass = sha1($_POST['confirm_password']);
		$email = $_POST['email'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];

		if ($password = $confirmpass){

			$sql = "INSERT INTO users (username,password,email,first_name,last_name,role)

					VALUES ('$username','$password','$email','$firstname','$lastname','author')";

					mysqli_query($con,$sql);

					echo 'Registered successfully';

					header('location:admin-pages\admin-dashboard.php');

		} else {
			echo "Username or Password did not match!";
		}
	}



	//LOGIN
	if(isset($_POST['login'])){


		$username = $_POST['username'];
		$password = sha1($_POST['password']);


		$sql = "SELECT * 
				FROM users 
				WHERE username ='$username'
				AND password ='$password'";

				// '"" or ""=""'

		$result = mysqli_query($con,$sql);


		if (mysqli_num_rows($result) > 0){

			while ($row = mysqli_fetch_assoc($result)) {

				extract($row);

				session_start();
				$_SESSION['message'] = 'Login Successful!';
				$_SESSION['username'] = $username;
				$_SESSION['firstname'] = ucfirst($first_name);
				$_SESSION['lastname'] = ucfirst($last_name);
				$_SESSION['role'] = $role;

				echo "Welcome back " . $_SESSION['username'] . "! What's on your mind? <br>";

				header('location:admin-pages\admin-dashboard.php');

			}

		} else {

			echo " <script>alert('Username or Password did not match! Pls try again.');</script>";
		}
	}

 ?>

<!DOCTYPE html>
<html>
<head>
	<title>Login Page | When In Naga</title>

	<?php require_once 'partials/link-bootstrap.php' ?>

</head>
<body>

<div class='container'>

	<div class='despacito clearfix'>


		<div class='welcome-panel'>

			<div class="panel panel-default">

			  	<div class="panel-body welcome-body">

					This is a banner to attract potential guest-bloggers / contributors.

				</div>

			</div>
		</div> <!-- welcome panel -->

		
		<div class='input-wrapper clearfix'>

			<div class='login-panel'>

				<div class="panel panel-default">

				 	<div class="panel-body">

						<form action='' method='POST'>
							<div class="form-group">
							 	 <input type="text" class="form-control" name='username' placeholder="Username" required>
							</div>

							<div class="form-group">
							 	 <input type="password" class='form-control form-password' name='password' placeholder='Password' required>
							 	 <input type='submit' name='login' class='btn btn-primary btn-login' value='Sign in' required>
							</div>

							<h6>Remember Me • Forgot Password? </h6>

						</form>

				 	</div> <!-- panel-body -->

			 	</div>

		 	</div> <!-- login-panel -->



		 	<div class='register-panel'>

				<div class="panel panel-default">

					<div class="panel panel-default">

						<div class="panel-heading"><h4>Applying as a Contributor? Sign Up</h4></div>

					 	<div class="panel-body register-body">

							<form action='' method='POST' class=''>
								<div class="form-group">
								 	 <input type="text" class="form-control" name='username' placeholder='Username' required>
								</div>

								<div class="form-group">
								 	 <input type="text" class="form-control" name='password' placeholder='Password' required>
								</div>

								<div class="form-group">
								 	 <input type="text" class="form-control" name='confirm_password' placeholder='Confirm Password' required>
								</div>

								<div class="form-group">
								 	 <input type="email" class="form-control" name='email' placeholder='Email' required>
								</div>

								<div class="form-group">
								 	 <input type="text" class="form-control form-firstname" name='firstname' placeholder='First Name' required>
								 	  <input type="text" class="form-control form-lastname" name='lastname' placeholder='Last Name' required>
								</div>

								<div class="form-group">
								 	 <input type='submit' name='register' class='btn btn-primary btn-register' value='Sign Up for When In Naga' required>
								</div>


							</form>

					 	</div> <!-- panel-body -->

			 	</div>

		 	</div> <!-- login-panel -->

			</div>
		</div> <!-- input-wrapper -->

	
	</div>


</body>
</html>

