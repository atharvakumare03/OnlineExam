<?php include 'inc/header.php'; ?>
<div class="main">
	<h1>Online Exam System - User Registration</h1>
	<div class="segment">
		<img src="img/regi.png"/>
	</div>
	<div class="segment">
		<form action="" method="post">
			<table class="tbl">    
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" id="name"></td>
				</tr>
				<tr>
					<td>Branch</td>
					<td>
						<div class="select">
							<select name="branch" id="branch">
								<option value="">Select Branch</option>
								<option value="Computer">Computer</option>
								<option value="ENTC">ENTC</option>
								<option value="Electrical">Electrical</option>
								<option value="Mechanical">Mechanical</option>
								<option value="Civil">Civil</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td>Enrollment</td>
					<td><input name="username" type="text" id="username"></td>
				</tr>
				
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" id="password"></td>
				</tr>
				
				<tr>
					<td>E-mail</td>
					<td><input name="email" type="text" id="email" ></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" id="regsubmit" value="Signup" class="btn btn-success">
					</td>
				</tr>
			</table>
		</form>
		
	</div>
	
	
</div>


<span id="state"></span>
<div class="clearfix col-md-12 text-center">
	
	<p><br>Already Have Registered ? <a href="index.php">Login</a> Here</p>
</div>
<?php include 'inc/footer.php'; ?>