<?php
include_once("config.php");
function getRealIpUser(){
    
    switch(true){
            
            case(!empty($_SERVER['HTTP_X_REAL_IP'])) : return $_SERVER['HTTP_X_REAL_IP'];
            case(!empty($_SERVER['HTTP_CLIENT_IP'])) : return $_SERVER['HTTP_CLIENT_IP'];
            case(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) : return $_SERVER['HTTP_X_FORWARDED_FOR'];
            
            default : return $_SERVER['REMOTE_ADDR'];
            
    }
    
}
function getpro()
{
	global $con;
	$get =  "select * from admin_job";
	$result = mysqli_query($con,$get);
	while ($row = mysqli_fetch_array($result)) {
								# code...;
    $job_id = $row['job_id'];
        
    $job_company = $row['job_company'];
        
    $job_title = $row['job_title'];
        
    $job_des = $row['job_des'];

    $job_add = $row['job_add'];
        	
    $job_sal = $row['job_sal'];

				echo "<div class='single-post d-flex flex-row'>
								<div class='thumb'>
									<img src='img/post.png' alt=''>
									<ul class='tags'>
										<li>
											<a href='#'>Art</a>
										</li>
										<li>
											<a href='#'>Media</a>
										</li>
										<li>
											<a href='#'>Design</a>					
										</li>
									</ul>
								</div>
								<div class='details'>
									<div class='title d-flex flex-row justify-content-between'>
										<div class='titles'>
											<a href='single.php?job_id=$job_id'><h4> $job_title</h4></a>
											<h6><$job_company</h6>					
										</div>
										<ul class='btns'>
											<li><a href='#'><span class='lnr lnr-heart'></span></a></li>
											<li><a href='#'>Apply</a></li>
										</ul>
									</div>
									<p>
										$job_des
									</p>
									<h5>Job Nature: Full time</h5>
									<p class='address'><span class='lnr lnr-map'></span>$job_add</p>
									<p class='address'><span class='lnr lnr-database'></span>  $job_sal</p>
								</div>
							</div>";
}
}

function getslide()
{
	global $con;
	$get="select * from admin_job";
			$res = mysqli_query($con,$get);
			while ($row = mysqli_fetch_array($res)) {
								# code...;

        	$job_id = $row['job_id'];
        
        	$job_company = $row['job_company'];
        
        	$job_title = $row['job_title'];
        
        	$job_des = $row['job_des'];
        	echo '
							<div class="single-popular-post d-flex flex-row">
								<div class="thumb">
									<img class="img-fluid" src="img/p1.png" alt="">
									<a class="btns text-uppercase" href="#">view job post</a>
								</div>
								<div class="details">
									<a href="#"><h4> $job_company </h4></a>
									<h6> $job_title</h6>
									<p>
										$job_des
									</p>
								</div>
							</div>
						';
					}
				}
?>