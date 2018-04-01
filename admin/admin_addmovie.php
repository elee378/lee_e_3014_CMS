<?php
	require_once('phpscripts/config.php');

	$tbl = "tbl_genre";
	$genQuery = getAll($tbl);
	//echo $genQuery;

	if(isset($_POST['submit'])){
		//echo "Works";
		$coverImg = $_FILES['coverImg'];
		$movieTitle = $_POST['movieTitle'];
		$movieYear = $_POST['movieYear'];
		$movieRuntime = $_POST['movieRuntime'];
		$movieStoryline = $_POST['movieStoryline'];
		$movieTrailer = $_POST['movieTrailer'];
		$movieRelease = $_POST['movieRelease'];
		$genre = $_POST['genList'];

		$result = addMovie($coverImg, $movieTitle, $movieYear, $movieRuntime, $movieStoryline, $movieTrailer, $movieRelease, $genre);
		$message = $result;
		//echo out informatSion about the coverimg that is uploaded
		//echo $coverImg['type'];
		//echo $coverImg['name'];
		//echo $coverImg['size'];
		//echo $coverImg['tmp_name'];
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to adding a movie panel</title>
</head>
<body>
	<!--input names = to $variables.	 -->
	<?php if(!empty($message)){ echo $message;} ?>
	<form action="admin_addmovie.php" method="post" enctype="multipart/form-data">
		<label>Cover Image:</label>
		<input type="file" name="coverImg" value="">
		<br><br>
		<label>Movie Title:</label>
		<input type="text" name="movieTitle" value="">
		<br><br>
		<label>Movie Year:</label>
		<input type="text" name="movieYear" value="">
		<br><br>
		<label>Movie Runtime:</label>
		<input type="text" name="movieRuntime" value="">
		<br><br>
		<label>Movie Storyline:</label>
		<input type="text" name="movieStoryline" value="">
		<br><br>
		<label>Movie Trailer:</label>
		<input type="text" name="movieTrailer" value="">
		<br><br>
		<label>Movie Release:</label>
		<input type="text" name="movieRelease" value="">
		<br><br>
		<select name="genList">
			<option value="">Please select a movie genre...</option>
			<?php
			while($row = mysqli_fetch_array($genQuery)) {
				echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
			}
			 ?>
		</select>
		<input type="submit" name="submit" value="Add Movie">
	</form>

</body>
</html>
