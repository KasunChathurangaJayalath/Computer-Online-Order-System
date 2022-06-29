<!DOCTYPE html>
<?php
session_start();
include('includes/dbcon.php');


if(isset($_POST['btn_save']))
{
$product_name=$_POST['product_name'];
$details=$_POST['details'];
$price=$_POST['price'];
$c_price=$_POST['c_price'];
$product_type=$_POST['product_type'];
$brand=$_POST['brand'];
$tags=$_POST['tags'];
$product_qty=$_POST['product_qty'];
//picture coding
$picture_name=$_FILES['picture']['name'];
$picture_type=$_FILES['picture']['type'];
$picture_tmp_name=$_FILES['picture']['tmp_name'];
$picture_size=$_FILES['picture']['size'];




if($picture_type=="image/jpeg" || $picture_type=="image/jpg" || $picture_type=="image/png" || $picture_type=="image/gif")
{
	if($picture_size<=50000000)
	
		$pic_name=time()."_".$picture_name;
		move_uploaded_file($picture_tmp_name,"../product_images/".$pic_name);

}

$picture_name=$_FILES['picture2']['name'];
$picture_type=$_FILES['picture2']['type'];
$picture_tmp_name=$_FILES['picture2']['tmp_name'];
$picture_size=$_FILES['picture2']['size'];



if($picture_type=="image/jpeg" || $picture_type=="image/jpg" || $picture_type=="image/png" || $picture_type=="image/gif")
{
	if($picture_size<=50000000)
	
		$pic2_name=time()."_".$picture_name;
		move_uploaded_file($picture_tmp_name,"../product_images/".$pic2_name);
}

$picture_name=$_FILES['picture3']['name'];
$picture_type=$_FILES['picture3']['type'];
$picture_tmp_name=$_FILES['picture3']['tmp_name'];
$picture_size=$_FILES['picture3']['size'];

if($picture_type=="image/jpeg" || $picture_type=="image/jpg" || $picture_type=="image/png" || $picture_type=="image/gif")
{
	if($picture_size<=50000000)
	
		$pic3_name=time()."_".$picture_name;
		move_uploaded_file($picture_tmp_name,"../product_images/".$pic3_name);
}

$picture_name=$_FILES['picture4']['name'];
$picture_type=$_FILES['picture4']['type'];
$picture_tmp_name=$_FILES['picture4']['tmp_name'];
$picture_size=$_FILES['picture4']['size'];

if($picture_type=="image/jpeg" || $picture_type=="image/jpg" || $picture_type=="image/png" || $picture_type=="image/gif")
{
	if($picture_size<=50000000)
	
		$pic4_name=time()."_".$picture_name;
		move_uploaded_file($picture_tmp_name,"../product_images/".$pic4_name);

		
mysqli_query($con,"insert into products (product_cat, product_brand,product_title,product_price, product_desc, product_image,product_image2,product_image3,product_image4, product_keywords, product_qty) values ('$product_type','$brand','$product_name','$price','$details','$pic_name','$pic2_name','$pic3_name','$pic4_name','$tags','$product_qty')") or die ("query incorrect");

 header("location: sumit_form.php?success=1");
}

mysqli_close($con);
}


?>








<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> White Com Computers | Add Product </title>

        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="assets/css/form.css">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
       

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
      
        <div class="heading">Add Product :</div>
    
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

 <title>add_product</title>
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

     
<div class="content">
        <div class="container-fluid">
          <form action="" method="post" type="form" name="form" enctype="multipart/form-data">
          <div class="form1-margin">
          
                
         <div class="form1">
            <div class="f1">
              <div class="form-header">
                <h5 class="form-headerh1">Add Product</h5>
              </div>
              <div class="card-body">
                
                  <div class="row">
                    
                    <div class="col-md-12">
                      <div class="form-group">
                        <label class="lablestyle">Product Title</label>
                        <input type="text" id="product_name" required name="product_name" class="form-feald">
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="">
                      <label class="lablestyle" for="">Add Image</label></br>
                      <!-- image 1-->
                      <label class="sublable" for="">Image 1</label>
                        <input type="file" name="picture" required class="button btn-fill btn-success" id="picture" >
                      <!-- image 2-->
                        <label class="sublable" for="">Image 2</label>
                        <input type="file" name="picture2" required class="button btn-fill btn-success" id="picture2" >
                      <!-- image 3-->
                        <label class="sublable" for="">Image 3</label>
                        <input type="file" name="picture3" required class="button btn-fill btn-success" id="picture3" >
                      <!-- image 4-->
                        <label class="sublable" for="">Image 4</label>
                        <input type="file" name="picture4" required class="button btn-fill btn-success" id="picture4" >

                        
                      </div>
                    </div>
                     <div class="col-md-12">
                      <div class="form-group">
                      <label class="lablestyle">Description</label>
                        <textarea rows="4" cols="80" id="details" required name="details" class="form-feald1"></textarea>
                      </div>
                    </div>
                  
                    <div class="col-md-6">
                      <div class="form-group">
                      <label class="lablestyle">Pricing</label>
                        <input type="number" id="price" name="price" required class="form-feald" >
                      </div>
                    </div>

                    <div class="col-md-6">
                      <div class="form-group">
                      <label class="lablestyle">Quantity</label>
                        <input type="number" id="product_qty" name="product_qty" required class="form-feald" >
                      </div>
                    </div>
                  </div>
                 
                  
                
              </div>
              
            </div>
          </div>
          <div class="form1">
            <div class="f1">
              <div class="form-header">
                <h5 class="form-headerh1">Categories</h5>
              </div>
              <div class="card-body">
                
                  <div class="row">
                    
                    <div class="col-md-12">
                      <div class="form-group">
                      <label class="lablestyle">Product Category</label>
                        <input type="number" id="product_type" name="product_type" required class="form-feald">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                      <label class="lablestyle" for="">Product Brand</label>
                        <input type="number" id="brand" name="brand" required class="form-feald">
                      </div>
                    </div>
                     
                  
                    <div class="col-md-12">
                      <div class="form-group">
                      <label class="lablestyle">Product Keywords</label>
                        <input type="text" id="tags" name="tags" required class="form-feald" >
                      </div>
                    </div>
                  </div>
                
              </div>
              <div class="card-footer">
                  <button type="submit" id="btn_save" name="btn_save" required class="updateproduct  pull-right">Update Product</button>
                  <?php
                  echo '<script>alert("Product add successfully")</script>';
                  ?>
              </div>
            </div>
          </div>
          
        </div>
         </form>
          
        </div>
      </div>

 <!--===============================================================================================-->	
 <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
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









      