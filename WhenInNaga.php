<?php date_default_timezone_set("Asia/Singapore"); 

ob_start();
?>



<!DOCTYPE html>

<html>
<head>
	<title><?php get_title(); ?></title>
	<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">

  <?php require_once 'partials/link-materialize.php'; ?>

</head>
<body>

  <?php display_content(); ?>


</body>

	<?php require_once 'partials/footer.php'; ?>

</html>

