

<?php
include 'inc/header.php';

Session::checkSession();
$getData = $exm->commonGetData("tbl_exam");
?>
<div class="main">
	<h1>Welcome to Online Exam - Start Now</h1>
	<?php
	if(isset($_GET['error'])){
		echo '<span style="color:red">'.$_GET['error'].'</span>';
	}
	?>
	<div class="segment" style="margin-right:30px;">
		<img src="img/online_exam.png"/>
	</div>
	<div class="segment">
		<h2>Start Exam</h2>
		<ul>
			<form action="starttest.php">
				<div class="select">
					<select name="examID" id="examID">
						<option value="0">Choose an Exam</option>
						<?php
						while ($result = $getData->fetch_assoc()) {
							echo '<option value="'.$result['id'].'">'.$result['examName'].'</option>';
						}
						?>
					</select>
				</div>
				<br>
				<li><button class="btn btn-success">Start Now...</button></li>
			</form>
		</ul>
	</div>
</div>
<?php include 'inc/footer.php'; ?>