<!DOCTYPE html>

<html lang="en" dir="ltr">

<?php
session_start();
include('includes/dbcon.php');
$product_id=$_REQUEST['product_id'];

$result=mysqli_query($con,"select product_id,product_title,product_price, product_qty from products where product_id='$product_id'")or die ("query 1 incorrect.......");

list($product_id,$product_title,$product_price,$product_qty)=mysqli_fetch_array($result);

if(isset($_POST['btn_save'])) 
{

$product_title=$_POST['product_title'];
$product_price=$_POST['product_price'];
$newproduct_qty=$_POST['product_qty'];

$total=$newproduct_qty+$product_qty;

mysqli_query($con,"update products set product_title='$product_title', product_price='$product_price',product_qty='$total' where product_id='$product_id'")or die("Query 2 is inncorrect..........");

header("location: product-list.php");
mysqli_close($con);
}


?>


  <head>
    <meta charset="UTF-8">
    <title> White Com Computers | Edit Product </title>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/form.css">
    <link rel="stylesheet" href="assets/css/buttons.css">
    <link rel="stylesheet" type="text/css" href="table/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<!--===============================================================================================-->

  <link rel="stylesheet" type="text/css" href="table/css/util.css">
	<link rel="stylesheet" type="text/css" href="table/css/main2.css">
  </head>
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
      
        <div class="heading">Edit Product</div>
    
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
 
 <div class="content">
        <div class="form-margin">
        <div class="form3">
            <div class="f1">
              <div class="form-header">
                <h5 class="form-headerh1">Edit Product</h5>
              </div>
              <form action="edit-product.php" name="form" method="post" enctype="multipart/form-data">
              <div class="card-body">
                
                  <input type="hidden" name="product_id" id="product_id" value="<?php echo $product_id;?>" />
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>product Name</label>
                        <input type="text" id="product_title" name="product_title"  class="form-feald1" value="<?php echo $product_title; ?>" >
                      </div>
                    </div>
                    <div class="col-md-12 ">
                      <div class="form-group">
                        <label>product price</label>
                        <input type="text" id="product_price" name="product_price" class="form-feald1" value="<?php echo $product_price; ?>" >
                      </div>
                    </div>

                    <div class="col-md-6 ">
                      <div class="form-group">
                        <label>Current Quantity</label>
                        <input type="number" id="product_qty" name="product_qty" class="form-feald1" readonly="readonly" value="<?php echo $product_qty; ?>">
                      </div>
                    </div>

                    <div class="col-md-6 ">
                      <div class="form-group">
                        <label>Add Quantity</label>
                        <input type="text" id="product_qty" name="product_qty" class="form-feald1" value="" >
                      </div>
                    </div>
                
              </div>
              <div class="card-footer">
                <button  type="submit" id="btn_save" name="btn_save" class="glow-on-hover">Update</button>
               
              </div>
              </form>    
            </div>
          </div>
          
        </div>
      </div>
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
