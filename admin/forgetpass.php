<?php
session_start();
include('includes/dbcon.php');
if(isset($_POST['submit']))
{
    $user_id = $_POST['user_id'];
    $result = mysqli_query($conn,"SELECT * FROM admins where user_id='" . $_POST['user_id'] . "'");
    $row = mysqli_fetch_assoc($result);
	$fetch_user_id=$row['user_id'];
	$email_id=$row['email'];
	$password=$row['password'];
	if($user_id==$fetch_user_id) {
				$to = $email_id;
                $subject = "password";
                $txt = "Your password is : $password.";
                $headers = "From: password@studentstutorial.com" . "\r\n" .
                "CC: somebodyelse@example.com";
                mail($to,$subject,$txt,$headers);
			}
				else{
					echo 'invalid userid';
				}
}
?>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet"  href="css/style-forget.css">
<img src="images/logo4.png"
 alt="company logo" 
 align="left"
 style="position:absolute;  bottom: 650px;"
>

</head>
<body>
<div class="forgetform-wrapper">
<h1>Forgot Password<h1>
<form action='' method='post'>
<table cellspacing='5' align='center'>
<div class="form input">

		<input type="text" name="user_id" required="required" placeholder="user id:" required></input>
</div>
</br>
            <input type='submit' name='submit' value='Submit'/>

</table>
</form>
</body>
</div>
</html>