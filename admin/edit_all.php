<?php
	//THIS WILL ALLOW YOU TO EDIT ALL INFORMATION IN YOUR DATABASE
	require_once('phpscripts/config.php');
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Master control for editing the website.</title>
</head>
<body>
<?php
//you can change table and columns to select what field you want to edit.
	$tbl = "tbl_movies";
	$col = "movies_id";
	$id = 1;

	echo single_edit($tbl, $col, $id);
?>

</body>
</html>