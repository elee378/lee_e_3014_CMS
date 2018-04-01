<?php
function editMovie($coverImg, $movieTitle, $movieYear, $movieRuntime, $movieStoryline, $movieTrailer, $movieRelease, $genre,$movieId) {
include('connect.php');
if($coverImg['type'] == "image/jpg" || $coverImg['type'] == "image/jpeg" || $coverImg['type'] == "image/png"){ //image/jpg is not supposed to be the folder location but the image and the type of image
		$targetpath = "../images/{$coverImg['name']}";

		if(move_uploaded_file($coverImg['tmp_name'], $targetpath)) {
			//echo "File transfer complete.";
			//creates the thumbnail copy of an uploaded image
			$th_copy = "../images/TH_{$coverImg['name']}";
			if(!copy($targetpath, $th_copy)){
				$message = "whoops that didnt work";
				return $message;
			}
			$qstring = "UPDATE tbl_movies SET movies_cover = '{$coverImg['name']}',movies_title = $movieTitle,movies_year = $movieYear,movies_runtime = $movieRuntime,movies_storyline = $movieStoryline,movies_trailer = $movieTrailer,movies_release = $movieRelease WHERE movies_id = $movieId";	

				//MAKE IT SO IT WONT INSERT INFORMATION UNTIL YOU LOGIN
		}
		//avoid landscape and portrait image mixups. Grab a specific size.
		//$size = getimagesize($targetpath);
		//echo $size[3]; //index array to find the width and height

	}else{ //if no photo is uploaded then this happens
		echo "photo uploaded";
		$qstring = "UPDATE tbl_movies SET movies_title = '$movieTitle',movies_year = '$movieYear',movies_runtime = '$movieRuntime',movies_storyline = '$movieStoryline',movies_trailer = '$movieTrailer',movies_release = '$movieRelease' WHERE movies_id = $movieId";	
	}		//edit in database
				//echo $qstring;
				$result = mysqli_query($link, $qstring);
				if($result) {
					echo 'movie edited succesfully';
					redirect_to("admin_index.php");
					
				}else{
					echo 'Too bad,movie not updated';
				}

	mysqli_close($link);
}
?>
