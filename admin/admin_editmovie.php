<?php
	require_once('phpscripts/config.php');
	$tbl = "tbl_genre";
	if(isset($_GET['id'])){
		$movieId=$_GET['id'];
		$genQuery = getAll($tbl);
		$movieDetails=getSingle('tbl_movies','movies_id',$movieId);
		while($row = mysqli_fetch_array($movieDetails)) {
			$title = $row['movies_title'];
			$cover = $row['movies_cover'];
			$year = $row['movies_year'];
			$runtime = $row['movies_runtime'];
			$storyline = $row['movies_storyline'];
			$trailer = $row['movies_trailer'];
			$release = $row['movies_release'];
		}
	}

	//echo $genQuery;

	if(isset($_POST['submit'])){
		//echo "Works";
		$movieId=$_GET['id'];
		$coverImg = $_FILES['coverImg'];
		$movieTitle = $_POST['movieTitle'];
		$movieYear = $_POST['movieYear'];
		$movieRuntime = $_POST['movieRuntime'];
		$movieStoryline = $_POST['movieStoryline'];
		$movieTrailer = $_POST['movieTrailer'];
		$movieRelease = $_POST['movieRelease'];
		$genre = $_POST['genList'];

		$result = editMovie($coverImg, $movieTitle, $movieYear, $movieRuntime, $movieStoryline, $movieTrailer, $movieRelease, $genre,$movieId);
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
	<?php 
	echo "
	<form action=\"admin_editmovie.php?id={$movieId}\" method=\"post\" enctype=\"multipart/form-data\">
		<label>Cover Image:</label>
		<input type=\"file\" name=\"coverImg\" value=\"{$cover}\">
		<br><br>
		<label>Movie Title:</label>
		<input type=\"text\" name=\"movieTitle\" value=\"{$title}\">
		<br><br>
		<label>Movie Year:</label>
		<input type=\"text\" name=\"movieYear\" value=\"{$year}\">
		<br><br>
		<label>Movie Runtime:</label>
		<input type=\"text\" name=\"movieRuntime\" value=\"{$runtime}\">
		<br><br>
		<label>Movie Storyline:</label>
		<input type=\"text\" name=\"movieStoryline\" value=\"{$storyline}\">
		<br><br>
		<label>Movie Trailer:</label>
		<input type=\"text\" name=\"movieTrailer\" value=\"{$trailer}\">
		<br><br>
		<label>Movie Release:</label>
		<input type=\"text\" name=\"movieRelease\" value=\"{$release}\">
		<br><br>"
		?>
		<select name="genList">
			<option value="">Please select a movie genre...</option>
			<?php
			while($row = mysqli_fetch_array($genQuery)) {
				echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
			}
			 ?>
		</select>
		<input type="submit" name="submit" value="Edit Movie">
	</form>

</body>
</html>
