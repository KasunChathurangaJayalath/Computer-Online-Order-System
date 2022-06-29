<!DOCTYPE html>

<html lang="en" dir="ltr">

<?php
session_start();
include('includes/dbcon.php');
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
$user_id=$_GET['user_id'];

/*this is delet quer*/
mysqli_query($con,"delete from user_info where user_id='$user_id'")or die("query is incorrect...");
}
if(isset($_POST['btn_save']))
{
$sql = "INSERT INTO user_info (first_name,last_name,email,password,address1,address2,mobile)
    VALUES ('".$_POST["first_name"]."','".$_POST["last_name"]."','".$_POST["email"]."','".$_POST["password"]."','".$_POST["city"]."','".$_POST["country"]."','".$_POST["phone"]."')";

    $result = mysqli_query($con,$sql);

}


?>
  <head>
    <meta charset="UTF-8">
    <title> White Com Computers | Manage User </title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/form.css">
    <link rel="stylesheet" href="assets/css/buttons.css">
    
    
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <body style="background: linear-gradient(45deg, #4158d0, #c850c0) fixed;">
   
    <!-- LOADER -->
    <div id="preloader">
        <div class="loader">
			<div class="loader__bar"></div>
			<div class="loader__bar"></div>
			<div class="loader__bar"></div>
			<div class="loader__bar"></div>
			<div class="loader__bar"></div>
			<div class="loader__ball"></div>
		</div>
    <div class="icon-text">Loading!</div>
    

    </div><!-- end loader -->
<section class="home-section">
  <nav>
      
        <div class="heading">Manage User</div>
        
    
      <div class="search-box">
      <div class="change">
        <input type="text" name="btnsearch" placeholder="White Com Computers">
        <i class='bx bx-search' ></i>
      </div>
</div>
      <div class="navbar">
      
      <div class="profile-details">
        <img src="images/user.png" alt="">
        <i class='bx bx-menu'></i>
      
        <ul class="links">
          <li>
            <a href="#">Sandun Priyanga</a>
            <i class='bx bxs-chevron-down htmlcss-arrow arrow  '></i>
            <ul class="htmlCss-sub-menu sub-menu">
              <li><a href="forgetpass.php">Admin Profile</a></li>
              <li><a href="logout.php">Log out</a></li>
                </ul>
              </li>
            </ul>
          </li>

    </nav>
 
 
  </section>

  <div class="sidebar">
    <div class="logo-details">
     
    <img src="images/dashboadlogo2.png"
             alt="company logo" 
            align="left"
            style="position:absolute;  bottom: 782px; right: 5%;"
      >
    </div>
   
  </br>
</br>

<?php include('includes/sidebar.php');?>



 <!-- Content Strat -->

 <title>Table V01</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="table/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="table/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="table/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="table/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="table/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="table/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="table/css/util.css">
	<link rel="stylesheet" type="text/css" href="table/css/main2.css">
<!--===============================================================================================-->
</head>
 
  
<body>


 <!-- End Navbar -->
 <div class="content">
        <div class="form-margin">
        <div class="form">
         <div class="col-md-14">
            <div class="card ">
              <div class="form-header">
                <h4 class="form-headerh1">Manage User</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive ps">
                  <table class="table tablesorter table-hover" id="">
                    <thead class=" text-productlist">
                      <tr><th>First Name</th>
                <th>Last Name </th>
                	<th> Email  </th>
                  <th> City  </th>
                  <th> Address  </th>
                  <th> Mobile Number  </th>
                  <th></th>
                  
                    </tr></thead>
                    <tbody>
                    <?php 
                        $result=mysqli_query($con,"select user_id, first_name, last_name, email, address1, address2 , mobile from user_info")or die ("query 1 incorrect.....");
                        $i=1;
                        while(list( $user_id, $f_name, $last_name, $email, $address1, $address2 ,$mobile)=mysqli_fetch_array($result))
                        {	
                        echo "<tr><td>$f_name</td><td>$last_name</td><td>$email</td> <td>$address1<td>$address2</td><td>$mobile</td>
                        <td><a href='manage-user.php?user_id=$user_id&action=delete' >
                        <i class='fa fa-close' style='color: red;font-size: 25px;'></i>
                             </a>
                        </td></tr>";
                        }
                        mysqli_close($con);
                        ?>
                    </tbody>
                  </table>
                <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
              </div>
            </div>
          </div>
          
        </div>
      </div>

<!-- Start table -->


<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

		

 <!-- content End -->
</div>


  <script src="js/script.js"></script>
  
  <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
    <script src="js/portfolio.js"></script>
    <script src="js/hoverdir.js"></script>  

</body>
</html>
