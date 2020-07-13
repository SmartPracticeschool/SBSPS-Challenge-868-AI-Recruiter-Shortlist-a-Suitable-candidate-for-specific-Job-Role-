<?php
$email=$_POST['email'];
$phonenumber=$_POST['phone_number'];
$companyname=$_POST['companyname'];
$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$con=mysqli_connect('localhost','root','','corsairad');
$sql="INSERT INTO requestdemo(email,firstname,lastname,phonenumber,companyname) VALUES('$email','$firstname','$lastname','$phonenumber','$companyname')";
$rs=mysqli_query($con,$sql);
if($rs){
		echo "<script>alert('Your details are mailed to corsair we will come in contact with you as soon as possible');</script>";
		include "index.php";

	}
?>