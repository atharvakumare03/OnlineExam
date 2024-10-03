

<?php

include 'inc/header.php';
?>
<!DOCTYPE html>
<html>
<head>
    <title>Capture webcam image with php and jquery </title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/webcamjs/1.0.25/webcam.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
    <style type="text/css">
        #results { padding:20px; border:1px solid; background:#ccc; }
    </style>
</head>
<body>
  
<div class="container">
   
    <form method="POST" action="storeImage.php">
        <div class="row">
            <div class="col-md-12 d-flex justify-content-center">
                <div id="my_camera"></div>
                <br/>
             
            </div>
           
           
        </div>
    </form>
</div>
  
<!-- Configure a few settings and attach camera -->
<script language="JavaScript">
    Webcam.set({
        width: 200,
        height: 200,
        image_format: 'jpeg',
        jpeg_quality: 90
    });
  
    Webcam.attach( '#my_camera' );
  
    function take_snapshot() {
        Webcam.snap( function(data_uri) {
            $(".image-tag").val(data_uri);
            document.getElementById('results').innerHTML = '<img src="'+data_uri+'"/>';
        } );
    }
</script>
 
</body>
</html>

<?php
include_once ('lib/Database.php');
//unset($_SESSION['timeSession']);
if(!isset($_SESSION['timeSession'])){
	$tm = $_GET['exmTime'];
	if($tm <= 5)
		$finTime = $tm * 60;
	else
		$finTime = $tm;

	$_SESSION['timeSession'] = date('H:i:s',strtotime("+".$finTime." minutes"));
}

if (isset($_GET['q'])) {
	$number = (int) $_GET['q'];
}else{
	header("Location:exam.php");
}

$total = $exm->getTotalRows($_GET['examID']);
$question = $exm->getQuesByNumber($number,$_GET['examID']);

if($_SERVER['REQUEST_METHOD'] == 'POST') {
	$process = $pro->processData($_POST);
}


?>
<div class="main">
	<h1>Question <?php echo $question['quesNo']; ?> of <?php echo $total; ?></h1>
	<div class="test">
		<form method="post" action="">
			<table> 
				<tr>
					<td colspan="2">
						<h3>Que <?php echo $question['quesNo']; ?>: <?php echo $question['ques']; ?></h3>
					</td>
				</tr>
				<?php 
				$answer = $exm->getAnswer($number,$_GET['examID']);
				if ($answer) {
					while ($result = $answer->fetch_assoc()) {
						?>
						<tr>
							<td>
								<input type="radio" name="ans" value="<?php echo $result['id']; ?>" /><?php echo $result['ans']; ?>
							</td>
						</tr>
					<?php }} ?>
					<tr>
						<td>
							<input type="submit" name="submit" value="Next Question"/>
							<input type="hidden" name="number" value="<?php echo $number; ?>" />
							<input type="hidden" name="examID" value="<?php echo $_GET['examID']; ?>" />
							<input type="hidden" name="userID" value="<?php echo $_SESSION['userid']; ?>" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<?php include 'inc/footer.php'; ?>

	
	<script>

		
	var dt = new Date();
	dt = dt.toString();
	dt = dt.split(" ");

	let tStr = dt[1]+" "+dt[2]+", "+dt[3]+" "+ <?php echo json_encode($_SESSION['timeSession']); ?>;
	// Set the date we're counting down to
	var countDownDate = new Date(tStr).getTime();
	// Update the count down every 1 second
	var x = setInterval(function() {
	// Get today's date and time
	var now = new Date().getTime();
	// Find the distance between now and the count down date
	var distance = countDownDate - now;
	// Time calculations for days, hours, minutes and seconds
	var days = Math.floor(distance / (1000 * 60 * 60 * 24));
	var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	var seconds = Math.floor((distance % (1000 * 60)) / 1000);
	// Output the result in an element with id="demo"
	// document.getElementById("demo").innerHTML = days + "d " + hours + "h "
	document.getElementById("demo").innerHTML = hours + "h "
	+ minutes + "m " + seconds + "s ";
	// If the count down is over, write some text 
	if (distance < 0) {
		clearInterval(x);
		//document.getElementById("demo").innerHTML = "EXPIRED";
		//window.location.href = 'http://localhost:8888/exam/final.php?examID='+ <?php echo json_encode($_GET['examID']); ?>;
		}
	}, 1000);
</script>

<script language="JavaScript">
	

    Webcam.set({
        width: 200,
        height: 200,
        image_format: 'jpeg',
        jpeg_quality: 90
    });
  
    Webcam.attach( '#my_camera' );
	setTimeout(function()
    {
        alert('warning');
    }, 
     10000);
	setTimeout(function()
    {
        alert(' warning');
    }, 
    25000);
	setTimeout(function()
    {
        alert(' warning');
    }, 
    40000);
	setTimeout(function()
    {
        alert(' warning');
    }, 
    60000);
  
  
    function take_snapshot() {
        Webcam.snap( function(data_uri) {
            $(".image-tag").val(data_uri);
            document.getElementById('results').innerHTML = '<img src="'+data_uri+'"/>';
        } );
    }
	


</script>

