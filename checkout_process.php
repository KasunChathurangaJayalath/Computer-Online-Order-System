<?php
session_start();
include "db.php";
if (isset($_SESSION["uid"])) {

	$f_name = $_POST["firstname"];
	$email = $_POST['email'];
	$address = $_POST['address'];
    $city = $_POST['city'];
    $state = $_POST['state'];
    $zip= $_POST['zip'];
    $cardname= $_POST['cardname'];
    $cardnumber= $_POST['cardNumber'];
    $expdate= $_POST['expdate'];
    $cvv= $_POST['cvv'];
    $user_id=$_SESSION["uid"];
    $cardnumberstr=(string)$cardnumber;
    $total_count=$_POST['total_count'];
    $prod_total = $_POST['total_price'];
    
    
    $sql0="SELECT order_id from `orders_info`";
    $runquery=mysqli_query($con,$sql0);
    if (mysqli_num_rows($runquery) == 0) {
        echo( mysqli_error($con));
        $order_id=1;
    }else if (mysqli_num_rows($runquery) > 0) {
        $sql2="SELECT MAX(order_id) AS max_val from `orders_info`";
        $runquery1=mysqli_query($con,$sql2);
        $row = mysqli_fetch_array($runquery1);
        $order_id= $row["max_val"];
        $order_id=$order_id+1;
        echo( mysqli_error($con));
    }


    $sql = "INSERT INTO `orders_info` 
    (`order_id`,`user_id`,`f_name`, `email`,`address`, 
    `city`, `state`, `zip`, `cardname`,`cardnumber`,`expdate`,`prod_count`,`total_amt`,`cvv`) 
    VALUES ($order_id, '$user_id','$f_name','$email', 
    '$address', '$city', '$state', '$zip','$cardname','$cardnumberstr','$expdate','$total_count','$prod_total','$cvv')";


    if(mysqli_query($con,$sql)){


        $i=1;
        $prod_id_=0;
        $prod_price_=0;
        $prod_qty_=0;
        while($i<=$total_count){
            $str=(string)$i;
            $prod_id_+$str = $_POST['prod_id_'.$i];
            $prod_id=$prod_id_+$str;		
            $prod_price_+$str = $_POST['prod_price_'.$i];
            $prod_price=$prod_price_+$str;
            $prod_qty_+$str = $_POST['prod_qty_'.$i];
            $prod_qty=$prod_qty_+$str;
            $total= $_POST['prod_price_'.$i]/$prod_qty;
            $sub_total=(int)$total*(int)$prod_qty;
           
           $sql1="INSERT INTO `order_products` 
            (`order_pro_id`,`order_id`,`product_id`,`qty`,`amt`) 
            VALUES (NULL, '$order_id','$prod_id','$prod_qty','$sub_total')";

            // print_r($prod_id);
             // print_r($prod_price);
             // print_r($prod_qty);
             // print_r($total);
             // print_r($sub_total);
             //  print_r("-------------------");


//select products qty from product table using id='$prod_id'
$product_query = "SELECT product_id,product_qty FROM products where product_id='$prod_id'";
    
    $run_query = mysqli_query($con,$product_query) or die(mysqli_error($con));
         if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $qty    = $row['product_qty'];
                           //echo "$pro_id ";
                          // echo "$qty ";
                           // echo "-----------";
}
}
//$newqty=qty-$prod_qty;
$newqty=$qty-$prod_qty;
//update quary product quantity 
$sqll="update products set product_qty='$newqty' where product_id='$prod_id'";
$query = $con->prepare($sqll);
$query->execute();

  if(mysqli_query($con,$sql1)){
            
               
                    echo"<script>window.location.href='payment_success.php'</script>";
                    }else{
                echo(mysqli_error($con));
            }

         
            $i++;


        }
        
     }else{

        echo(mysqli_error($con));}   
    }

    
else{
    echo"<script>window.location.href='index.php'</script>";
}
	




?>