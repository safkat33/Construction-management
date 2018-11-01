<?php
	require_once('connection.php');
   
    
    
	
	if (!mysqli_connect_errno())
	{
		$cons = mysqli_query($con, "SELECT * FROM jobtype_e ");
		mysqli_close($con);
		}
	?>
    <section id="list">
        <div class="container-fluid">
            <div class="container col-lg-6"> a>
                <h1>Goru/ chagols </h1></a>
                <table class="info">
                    <thead>
                        <th>SL#</th>
                        <th>Job ID</th>
                        <th>Job Type</th>
                        <th>Maz Salary</th>
                        <th>Min Salary</th>
                    
                    </thead>
                    <tbody>
                        <?php
		$sl_no=1;
		foreach($cons as $member){
			?>
                            <tr class="table">
                                <td>
                                    <?php echo $sl_no;?>
                                </td>
                                <td>
                                    <?php echo $member['job_id'];?>
                                </td>
                                <td>
                                    <?php echo $member['job_title'];?>
                                </td>
                                <td>
                                    <?php echo $member['max_salary'];?>
                                </td>
                                <td>
                                    <?php echo $member['min_salary'];?>
                                </td>
                                
                            </tr>
                            <?php
            
            $sl_no++;
            };
?>
            </div>
        </div>
    </section>
    