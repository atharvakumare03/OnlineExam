<?php include 'inc/header.php'; ?>
<?php
	Session::checkSession();
	$userid = Session::get("userid");
?>

<?php
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		$updateUser = $usr->updateUserData($userid, $_POST);
		
	}
	
?>
<style>
	.profile{width: 500px;margin: 0 auto;border: 1px solid #ddd;padding: 20px;}
</style>

<div class="main">
	<h1 style = "color : purple">Your Profile</h1>
	<div class="profile">
		
		<?php 
			if (isset($updateUser)) {
				echo $updateUser;
			}
			
		?>
		<form action="" method="post">
			<?php
				$getData = $usr->getUserData($userid);
				if ($getData) {
					//here we can skip while loop for fetching 1 row data
					$result = $getData->fetch_assoc();
				?>
				<table class="tbl"> 
					<tr>
						<td>Name </td>
						<td><input name="name" type="text" value="<?php echo $result['name'] ?>" /></td>
					</tr> 
					<tr>
						<td>Branch </td>
						<td><input name="branch" type="text" value="<?php echo $result['branch'] ?>" /></td>

					</tr>
					<tr>
						<td>Enrollment </td>
						<td><input name="username" type="text" value="<?php echo $result['username'] ?>"/></td>
					</tr>  
					<tr>
						<td>Email</td>
						<td><input name="email" type="text" value="<?php echo $result['email'] ?>"/></td>
					</tr>		 
					<tr>
						<td></td>
						<td><input type="submit" value="Update" class="btn btn-success">
						</td>
					</tr>
				</table>
				
			<?php } ?>
		</form>	
	</div>
</div>
<?php include 'inc/footer.php'; ?>