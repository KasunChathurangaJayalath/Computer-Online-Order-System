<!DOCTYPE html>

<?php
session_start();
include('includes/dbcon.php');
error_reporting(0);
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
$Category_id=$_GET['cat_id'];
/*this is delet query*/
mysqli_query($con,"delete from categories where cat_id='$Category_id'")or die("query is incorrect...");
}
if(isset($_POST['btn_save']))
{
$Category_id=$_POST['Category_id'];
$Category_name=$_POST['Category_name'];


mysqli_query($con,"insert into categories(cat_id, cat_title) values ('$Category_id','$Category_name')") 
			or die ("Query 1 is inncorrect........");
header("location: category.php"); 
mysqli_close($con);

}



?>


<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> White Com Computers | Categories </title>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/form.css">

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
      
        <div class="heading">Category</div>
        <div class="search-box">
      <div class="change">
        <input type="text" placeholder="Search...">
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
 




 <title>Add Category</title>
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
<div class="limiter">
<div class="container-table100">
<div class="wrap-table100">
				<div class="table100">


	
			
<div class="content">
        <div class="form-margin">
          
          <div class="form">
              <div class="f1">
                <div class="form-header">
                  <h4 class="form-headerh1"><b>Add Category </b></h4>
                 
                </div>
                <div class="card-body">
                  <form action="" method="post" name="form" enctype="multipart/form-data">
                    <div class="row">
                      
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Category Id</label>
                          <input type="number" id="Category_id" name="Category_id" class="form-feald" required>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Category Name</label>
                          <input type="text" name="Category_name" id="Category_name"  class="form-feald" required>
                        </div>
                      </div>
                    </div>
                    <button type="submit" name="btn_save" id="btn_save" class="submit  pull-right">Add Category</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
        </div>
      </div>
     </br>
   </br>
</br>
<!-- Category Table Here-->
     
<title>Category List</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  
      <div class="content">
        <div class="form-margin">
        <div class="form">
         <div class="col-md-14">
            <div class="card ">
              <div class="form-header">
                <h4 class="form-headerh1"> Category List</h4>
                
              </div>
              <div class="card-body">
                <div class="table-responsive ps">
                  <table class="table tablesorter " id="page1">
                    <thead class=" text-productlist">
                        <tr><th>ID</th><th>Categories</th><th>Count</th><th></th>
                    </tr></thead>
                    <tbody>
                    
                    <tbody>
                     <!-- PHP Content  -->
                     
                        <?php                        
                        $result=mysqli_query($con,"select * from categories")or die ("query 1 incorrect.....");
                        $i=1;
                        while(list($cat_id,$cat_title)=mysqli_fetch_array($result))
                        {	
                            $sql = "SELECT COUNT(*) AS count_items FROM products WHERE product_cat=$i";
                            $query = mysqli_query($con,$sql);
                            $row = mysqli_fetch_array($query);
                            $count=$row["count_items"];
                            $i++;
                        echo "<tr><td>$cat_id</td><td>$cat_title</td><td>$count</td><td>
                        <a href='category.php?cat_id=$cat_id&action=delete'><i class='fa fa-close' style='color: red;font-size: 25px;'></i></a>

                        </tr>
                        </tr>";
                        
                        } 
                        ?>
                    </tbody>
                  </table>
                <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
              </div>
            </div>
          </div>







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
