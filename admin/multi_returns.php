<?php
	require_once('phpscripts/config.php');
	$result = multiReturns(17);
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to your admin panel login</title>
</head>
<body>
	<?php
		echo "Result 1: {$result[0]} <br>";
		echo "Result 2: {$result[1]}<br><br>";
	?>

</body>
</html>