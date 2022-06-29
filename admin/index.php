<?php session_start(); ?>
<?php include('includes/dbcon.php'); ?>
<html>
<head>
	 <title> White Com Computers | Admin Panel </title>
<link rel="stylesheet" type="text/css" href="css/loginstyle.css">

<!-- Add Logo -->
<img src="images/logo4.png"
 alt="company logo" 
 align="left"
 style="position:absolute;  bottom: 650px;"
>

</head>
<body>
	
<div class="form-wrapper">

	

  
  <form action="#" method="post">
    <h3>Admin Panel Login </h3>
	
    <div class="form-item">
	     
		<input type="text" name="user" required="required" placeholder="Username" autofocus required></input>
    </div>
	<div class="form-item">
		<input type="email" name="email" required="required" placeholder="Email" required></input>
    </div>
    <div class="form-item">
		<input type="password" name="pass" required="required" placeholder="Password" required></input>
    </div>
    
    <div class="button-panel">
		<input type="submit" class="button" title="Log In" name="login" value="Login"></input>
    </div>
  </form>
  <?php
	if (isset($_POST['login']))
		{
			$username = mysqli_real_escape_string($con, $_POST['user']);
			$password = mysqli_real_escape_string($con, $_POST['pass']);
			$email    = mysqli_real_escape_string($con, $_POST['email']);

			$query 		= mysqli_query($con, "SELECT * FROM admins WHERE  password='$password' and  email='$email' and username='$username'");
			$row		= mysqli_fetch_array($query);
			$num_row 	= mysqli_num_rows($query);
			
			if ($num_row > 0) 
				{			
					$_SESSION['user_id']=$row['user_id'];
					header('location:dashboard.php');
					
				}
			else
				{
					echo 'Invalid Username / Email or Password ';
				}
				
				
		    }
  ?>
  <div class="reminder">
    </br>
	</br>
    <p><a href="forgetpass.php">Forgot password?</a></p>
  </div>
  
</div>



<script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
    <script src="js/portfolio.js"></script>
    <script src="js/hoverdir.js"></script> 
</body>
</html>