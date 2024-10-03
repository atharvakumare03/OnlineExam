<?php include 'inc/header.php'; ?>
<?php
error_reporting(0); 

Session::checkSession();
unset($_SESSION['timeSession']);
?>
<div class="main">
<h1>You are done!</h1>

<div class="starttest">
	<p>Congrats! 
		<?php
		if(isset($_SESSION['score']))
			echo 'You have just competed the test.';
		else
			echo 'You already attended this exam.';
		?>
	</p>
	<p>Final Score: 

		<?php 
		if (isset($_SESSION['score'])) {
			unset($_SESSION['score']);
		}
		if(isset($_GET['examID'])){
			$usrData = $exm->commonGetData("tbl_user","userid=$_SESSION[userid]");
			$uarResesData = $usrData->fetch_assoc();

			$data = $exm->commonGetData("tbl_comp_exam","userID=$_SESSION[userid] AND examID=$_GET[examID]");
			$resData = $data->fetch_assoc();
			echo $resData['givenAns'];
			if($resData['isMailed'] == 0){
			    $from = 'info@padhiyarithub.com';
				$mailto = $uarResesData['email'];
				$subject = "Exam Result";

				$message_body = '<html>
				<head>
				<title>Exam Result</title>
				</head>
				<body>
				<p>This email contains your exam result</p>
				<table>
				<tr>
				<th>No of questions atempted</th>
				<th>Total score</th>
				</tr>
				<tr>
				<td>'.$resData['noQuesDone'].'</td>
				<td>'.$resData['givenAns'].'</td>
				</tr>
				</table>
				</body>
				</html>';

				$headers  = 'MIME-Version: 1.0' . "\r\n";
            	$headers .= 'Content-type: text/html; charset=iso-8859-1'. "\r\n";
            	$headers .= 'To:'.$mailto."\r\n";
            	$headers .= 'From:'.$from."\r\n";
            	$headers .= 'Cc:'.$from."\r\n";
            	$headers .= 'Bcc:'.$from."\r\n";

			
			}
			
		}
		?>

	</p>

	<a href="viewans.php?examID=<?php echo $_GET['examID'] ?>">View Ans</a>
	<a href="exam.php">GO BACK</a>
</div>
	
  </div>
<?php include 'inc/footer.php'; ?>