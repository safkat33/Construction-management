<?php
include_once"connection.php";
   if(!empty($_POST)){
		$name = $_POST['name'];
        $department_id=   $_POST['department_id'];
		$job_id=    $_POST['job_id'];
		$workshift_id=$_POST['workshift_id'];
		$address=$_POST['address'];
        $phone_number=  $_POST['phone_number'];
        $email =  $_POST['email'];
       
		if(!empty($Employee_info)){
			$insert="INSERT INTO  engineers_and_employees (e_id,name,department_id,job_id,workshift_id,address,phone_number,email )
			values('','$name','$department_id','$job_id','$workshift_id','$address','$phone_number','$email')";
			if(mysqli_query($con,$insert)){
				
				echo "New record created successfully";
			}else{
				echo "Failed your Message";
			}
		}
	}
?>