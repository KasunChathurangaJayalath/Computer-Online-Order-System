<!DOCTYPE html>

<html lang="en" dir="ltr">
<!-- PHP -->
<?php
session_start();
include('includes/dbcon.php');
error_reporting(0);
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
$order_id=$_GET['order_id'];

/*this is delet query*/
mysqli_query($con,"delete from orders where order_id='$order_id'")or die("delete query is incorrect...");
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

<head>
    <meta charset="UTF-8">
    <title> White Com Computers | Order List </title>

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
      
        <div class="heading">Order List</div>
    
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
  <link rel="stylesheet" type="text/css" href="table/css/table.css">
<!--===============================================================================================-->
</head>
<title>Order List</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <div class="content">
  <div class="form-margin">
  <div class="form">
  <div class="col-md-14">
  <div class="card ">
  <div class="form-header">
  <h4 class="form-headerh1">Orders<?php echo $page;?></h4>
  </div>
  <div class="card-body">
  <div class="table-responsive ps">
  <table class="table table-hover tablesorter " id="">
  <thead class=" text-productlist">
  <tr><th>Customer Name</th><th>Products | (Quantity) </th><th>Contact | Email</th><th>Address</th><th>Amount</th><th>Item</th><th>Date</th><th></th></tr>
  </tr></thead>
  <tbody>

<?php
                      $query = "SELECT * FROM orders_info";
                      $run = mysqli_query($con,$query);
                      if(mysqli_num_rows($run) > 0){

                       while($row = mysqli_fetch_array($run)){
                         $order_id = $row['order_id'];
                         $email = $row['email'];
                         $f_name = $row['f_name'];
                         $address = $row['address'];
                         $total_amount = $row['total_amt'];
                         $user_id = $row['user_id'];
                         $qty = $row['prod_count'];
                         $date = $row['order_date'];

                      ?>
                          <tr>
                            <td><?php 
                               echo $f_name;

                             ?></td>
                           <td> <?php
                            $query1 = "SELECT * FROM order_products where order_id = $order_id";
                            $run1 = mysqli_query($con,$query1); 
                              while($row1 = mysqli_fetch_array($run1)){
                               $product_id = $row1['product_id'];
                               $proqty=$row1['qty'];


                               $query2 = "SELECT * FROM products where product_id = $product_id";
                               $run2 = mysqli_query($con,$query2);

                               while($row2 = mysqli_fetch_array($run2)){
                               $product_title = $row2['product_title'];

                           ?>
                              <?php echo $product_title ?>         (<?php echo $proqty ?>)<br>
                            <?php }}?></td>
                            <td><?php echo $email ?></td>
                            <td><?php echo $address ?></td>
                            <td><?php echo "Rs:  $total_amount"; ?></td>
                            <td><?php echo $qty ?></td>
                            <td><?php echo $date ?></td>
                            <td> <a class=' deletebtn' href='order-list.php?order_id=$order_id&action=delete'>Confirm</a></td>
                         </tr>
                         <?php } ?>
                        
                     <?php
                   }else {
                     echo "<center><h2>No users Available</h2><br><hr></center>";
                     }
                  ?>
                  
</table>
</div></div>
<nav align="center"> 

</nav>
</div></div>

  <script src="js/script.js"></script>
  <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
    <script src="js/portfolio.js"></script>
    <script src="js/hoverdir.js"></script> 
</body>
</html>