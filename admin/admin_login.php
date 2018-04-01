<?php
	require_once('phpscripts/config.php');
	$ip = $_SERVER['REMOTE_ADDR'];
	//echo $ip;
	if(isset($_POST['submit'])){
		//echo "Works";
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		if($username !== "" && $password !== ""){
			$result = logIn($username, $password, $ip);
			$message = $result;
		}else{
			$message = "Please fill out the required fields.";
		}
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to your admin panel login</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link href="https://fonts.googleapis.com/css?family=Lato|Roboto" rel="stylesheet">
</head>
<body>
 <img src="images/logo_black.svg" id="logo">
<p class="errorTxt"><?php if(!empty($message)){echo $message;} ?></p>
<form action="admin_login.php" method="post">
  <input type="text" name="username" value="" placeholder="Username" class="userPass">
  <input type="password" name="password" value="" placeholder="Password" class="userPass">
  <input type="submit" name="submit" value="Login" id="submit" class="button">
</form>

</body>
</html>