<?php
	require_once('phpscripts/config.php');
	if(isset($_GET['id'])) {
		//get the movie
		$tbl = "tbl_movies";
		$col = "movies_id";
		$id = $_GET['id'];
		$getMovie = getSingle($tbl, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link href="https://fonts.googleapis.com/css?family=Lato|Roboto" rel="stylesheet">
</head>
<body>

	<?php
		if(!is_string($getMovie)) {
			$row=mysqli_fetch_array($getMovie);
			echo "<img src=\"../images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
			<p>{$row['movies_title']}</p>
			<p>{$row['movies_year']}</p>
			<p>{$row['movies_storyline']}</p>
			<a href=\"admin_index.php\">Back...</a>
			";
			
		}else{
			echo "<p>{$getMovie}</p>";
		}

	?>

</body>
</html>