<!DOCTYPE html>

<?php
session_start();
include('includes/dbcon.php');
error_reporting(0);
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
$product_id=$_GET['product_id'];
///////picture delete/////////
$result=mysqli_query($con,"select product_image from products where product_id='$product_id'")
or die("query is incorrect...");

list($picture)=mysqli_fetch_array($result);
$path="../product_images/$picture";

if(file_exists($path)==true)
{
  unlink($path);
}
else
{}
/*this is delet query*/
mysqli_query($con,"delete from products where product_id='$product_id'")or die("query is incorrect...");
}

///pagination

$page=$_GET['page'];

if($page=="" || $page=="1")
{
$page1=0;	
}
else
{
$page1=($page*10)-10;	
} 
?>



<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> White Com Computers | Product List </title>

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
      
        <div class="heading">Product List</div>
    
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

 <link rel="stylesheet" type="text/css" href="table/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="table/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="table/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="table/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="table/vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="table/css/util.css">
	<link rel="stylesheet" type="text/css" href="table/css/main2.css">
  </head>
 
  
 <body>
 <div class="limiter">
 <div class="container-table100">
 <div class="wrap-table100">
        
  

 
 <title>Product List</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  
      <div class="content">
        <div class="form-margin">
        <div class="form">
         <div class="col-md-14">
            <div class="card ">
              <div class="form-header">
                <h4 class="form-headerh1"> Products List</h4>
                
              </div>
              <div class="card-body">
                <div class="table-responsive ps">
                  <table class="table tablesorter " id="page1">
                    <thead class=" text-productlist">
                      <tr><th>Image</th><th>Name</th><th>Price</th><th>Quantity</th>
                    <th></th><th>
	                   <a class="addnew" href="add-product.php">Add New</a></th></tr></thead>
                    <tbody>
                     



                  <?php 

$product_qty=$_POST['product_qty'];
                        $result=mysqli_query($con,"select product_id,product_image, product_title,product_price, product_qty from products   Limit $page1,12")or die ("query 1 incorrect.....");

                        while(list($product_id,$image,$product_name,$price,$product_qty)=mysqli_fetch_array($result))
                        {
                        echo "<tr><td><img src='../product_images/$image' style='width:100px; height:100px; border:groove #000'></td><td>$product_name</td>
                        <td>Rs: $price </td><td>$product_qty </td>
                        <td>
                        <a href='edit-product.php?product_id=$product_id' >
                        <i class='fa fa-edit' style='color: blue;font-size: 25px;'></i>
                              <div class='ripple-container'></div></a></td>

                        <td>
                       <a href='product-list.php?product_id=$product_id&action=delete'><i class='fa fa-close' style='color: red;font-size: 25px;'></i></a>

                        </td></tr>";
                        }

                        ?>
                    </tbody>
                  </table>
                <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
              </div>
            </div>
            <nav aria-label="Page navigation example">
              <ul class="pagination">
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                  </a>
                </li>
                 <?php 
                        
//counting paging

                $paging=mysqli_query($con,"select product_id,product_image, product_title,product_price from products");
                $count=mysqli_num_rows($paging);

                $a=$count/10;
                $a=ceil($a);
                
                for($b=1; $b<=$a;$b++)
                {
                ?> 
                <li class="page-item"><a class="page-link" href="product-list.php?page=<?php echo $b;?>"><?php echo $b." ";?></a></li>
                <?php	
}
?>
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                  </a>
                </li>
              </ul>
            </nav>
            
           

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
