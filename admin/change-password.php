
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
	
if(isset($_POST['submit']))
{
	$category=$_POST['category'];
	$subcat=$_POST['subcategory'];
	$productname=$_POST['productname'];
	$productcompany=$_POST['productcompany'];
	$description=$_POST['description'];
	$location=$_POST['location'];
	$experience=$_POST['experience'];
	$facilities=$_POST['facilities'];
	$qualifications=$_POST['qualifications'];
	$salary=$_POST['salary'];
	$apply=$_POST['apply'];
	$searchingfor=$_POST['searchingfor'];
	$jobid=$_POST['jobid'];
	//$productAvailability=$_POST['productAvailability']
//for getting product id
$sql=mysqli_query($con,"insert into products(jobid,job_company,job_title,job_des,job_add,job_sal,job_look,job_exp,job_fa,job_er,job_apply,category,subcat) values('$jobid','$productcompany',$productname','$description','$location','$salary','$searchingfor','$experience','$facilities','$qualifications','$apply','$category','$subcat')");
$_SESSION['msg']="Jobs Availability are successfully stored!!";

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin| Insert Product</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
<script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>

   <script>
function getSubcat(val) {
	$.ajax({
	type: "POST",
	url: "get_subcat.php",
	data:'cat_id='+val,
	success: function(data){
		$("#subcategory").html(data);
	}
	});
}
function selectCountry(val) {
$("#search-box").val(val);
$("#suggesstion-box").hide();
}
</script>	


</head>
<body>
<?php include('include/header.php');?>

	<div class="wrapper">
		<div class="container">
			<div class="row">
<?php include('include/sidebar.php');?>				
			<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Insert Product</h3>
							</div>
							<div class="module-body">

									<?php if(isset($_POST['submit']))
{?>
									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Well done!</strong>	<?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?>
									</div>
<?php } ?>


									<?php if(isset($_GET['del']))
{?>
									<div class="alert alert-error">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Oh snap!</strong> 	<?php echo htmlentities($_SESSION['delmsg']);?><?php echo htmlentities($_SESSION['delmsg']="");?>
									</div>
<?php } ?>

									<br />

			<form class="form-horizontal row-fluid" name="insertproduct" method="post" enctype="multipart/form-data">

<div class="control-group">
<label class="control-label" for="basicinput">Category</label>
<div class="controls">
<select name="category" class="span8 tip" onChange="getSubcat(this.value);"  required>
<option value="">Select Category</option> 
<?php $query=mysqli_query($con,"select * from category");
while($row=mysqli_fetch_array($query))
{?>

<option value="<?php echo $row['id'];?>"><?php echo $row['categoryName'];?></option>
<?php } ?>
</select>
</div>
</div>

									
<div class="control-group">
<label class="control-label" for="basicinput">Sub Category</label>
<div class="controls">
<select   name="subcategory"  id="subcategory" class="span8 tip" required>
</select>
</div>
</div>


<div class="control-group">
<label class="control-label" for="basicinput">Title</label>
<div class="controls">
<input type="text"    name="productname"  placeholder="Enter title of the job" class="span8 tip" required>
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Company</label>
<div class="controls">
<input type="text"    name="productcompany"  placeholder="Enter Comapny Name" class="span8 tip" required>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">jobid</label>
<div class="controls">
<input type="text"    name="jobid"  placeholder="Enter jobid" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Description</label>
<div class="controls">
<input type="textarea"    name="description"  placeholder="Describe job details" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">salary</label>
<div class="controls">
<input type="text"    name="salary"  placeholder="Enter Expected salary" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Location</label>
<div class="controls">
<input type="textarea"    name="location"  placeholder="Enter Location" class="span8 tip" required>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">experience</label>
<div class="controls">
<input type="text"    name="experience"  placeholder="Enter required experience" class="span8 tip" required>
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Facilities</label>
<div class="controls">
<textarea  name="facilities"  placeholder="Enter facilities" rows="6" class="span8 tip">
</textarea>  
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Searching for</label>
<div class="controls">
<textarea  name="searchingfor"  placeholder="enter specific roles you are looking for" rows="6" class="span8 tip">
</textarea>  
</div>
</div>

<div class="control-group">
<label class="control-label" for="basicinput">Qualifications</label>
<div class="controls">
<input type="text"    name="qualifications"  placeholder="Enter required Qualifications" class="span8 tip" required>
</div>
</div>


<div class="control-group">
<label class="control-label" for="basicinput"> Availability</label>
<div class="controls">
<select   name="productAvailability"  id="productAvailability" class="span8 tip" required>
<option value="">Select</option>
<option value="In Stock">Available</option>
<option value="Out of Stock">Fulfilled</option>
</select>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Apply</label>
<div class="controls">
<input type="text"    name="apply"  placeholder="Enter Product Shipping Charge" class="span8 tip" required>
</div>
</div>





	<div class="control-group">
											<div class="controls">
												<button type="submit" name="submit" class="btn">Insert</button>
											</div>
										</div>
									</form>
							</div>
						</div>


	
						
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

<?php include('include/footer.php');?>

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"></script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
</body>
<?php } ?>