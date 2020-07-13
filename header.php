<?php 
include_once("config.php");
include_once ("function.php");
session_start();
 ?>
 <?php  
 if(isset($_GET['job_id'])){ 
    $job_id = $_GET['job_id'];
    $get_product = "select * from admin_job where job_id='$job_id'";
    
    $res = mysqli_query($con,$get_product);
    
    $row_product = mysqli_fetch_array($res);
    
    $job_company = $row_product['job_company'];
    
    $job_title = $row_product['job_title'];
    
    $job_des = $row_product['job_des'];

    $job_add = $row_product['job_add'];
        	
    $job_sal = $row_product['job_sal'];
        	
    $job_look = $row_product['job_look'];

    $job_exp = $row_product['job_exp'];
    
    $job_fa = $row_product['job_fa'];
    
    $job_er = $row_product['job_er'];

    $job_apply = $row_product['job_apply'];


}
  ?>