<?php
	require_once('phpscripts/config.php');
	confirm_logged_in();

	if(isset($_GET['filter'])){
		$tbl = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter = "action";
		$getMovies = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
	}else{
		$tbl = "tbl_movies";
		$getMovies = getAll($tbl);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to your admin panel</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link href="https://fonts.googleapis.com/css?family=Lato|Roboto" rel="stylesheet">
</head>
<body>
	<h1>User Control</h1>
	<a href="admin_createuser.php">Create User</a>
	<a href="admin_edituser.php">Edit User</a>
	<a href="admin_deleteuser.php">Delete User</a>
	<a href="phpscripts/caller.php?caller_id=logout">Sign Out</a>
	<br><br>

	<h1>Movie Control</h1>
	<a href="admin_addmovie.php">Add Movie</a>
	<!-- <a href="admin_editmovie.php">Edit Movie</a>
	<a href="admin_deletemovie.php">Delete Movie</a> -->
	<br><br>
	<?php

	if(!is_string($getMovies)){
		while($row = mysqli_fetch_array($getMovies)){
			echo "
			<div class=\"movieCon\">
			<img src=\"../images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
				<h2>{$row['movies_title']}</h2>
				<p>{$row['movies_year']}</p>
				<a href=\"details.php?id={$row['movies_id']}\">More Details </a><a href=\"admin_editmovie.php?id={$row['movies_id']}\">Edit Movie</a>
				<a href=\"admin_deletemovie.php?id={$row['movies_id']}\">Delete Movie</a><br><br>
			</div>
			";
		}
	}else{
		echo "<p class=\"error\">{$getMovies}</p>";
	}
?>
</body>
</html>