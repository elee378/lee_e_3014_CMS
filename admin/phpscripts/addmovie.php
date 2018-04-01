<?php
function addMovie($coverImg, $movieTitle, $movieYear, $movieRuntime, $movieStoryline, $movieTrailer, $movieRelease, $genre) {
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
			
			//add to database
				$qstring = "INSERT INTO tbl_movies VALUES(NULL, '{$coverImg['name']}', '{$movieTitle}', '{$movieYear}', '{$movieRuntime}', '{$movieStoryline}', '{$movieTrailer}', '{$movieRelease}')";	
				//echo $qstring;
				$result = mysqli_query($link, $qstring);


				if($result) {
					$qstring2 = "SELECT * FROM tbl_movies ORDER BY movies_id DESC LIMIT 1";
					$result2 = mysqli_query($link, $qstring2);
					$row = mysqli_fetch_array($result2);
					$lastID = $row['movies_id'];
					echo $lastID;

					//CURRENTLY NOT WORKING
					$qstring3 = "INSERT INTO tbl_mov_genre VALUES(NULL, {$lastID}, {$genre})";
					$result3 = mysqli_query($link, $qstring3);
				}
				redirect_to("admin_index.php");

				//MAKE IT SO IT WONT INSERT INFORMATION UNTIL YOU LOGIN
		}
		//avoid landscape and portrait image mixups. Grab a specific size.
		//$size = getimagesize($targetpath);
		//echo $size[3]; //index array to find the width and height

	}else{ //if no photo is uploaded then this happens
		echo "photo uploaded";
	}

	mysqli_close($link);
}
?>
