<?php
	require_once('phpscripts/config.php');
	$tbl = "tbl_genre";
	if(isset($_GET['id'])){
		$movieId=$_GET['id'];
		deleteMovie($movieId);
	
}
?>