<?php
function deleteMovie($movieId) {
include('connect.php');
$qstring = "DELETE FROM tbl_movies WHERE movies_id = $movieId";	
$result = mysqli_query($link, $qstring);
				if($result) {
					echo 'movie deleted succesfully';
					redirect_to("admin_index.php");
					
				}else{
					echo 'Too bad,movie not updated';
				}
}
?>