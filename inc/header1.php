<?php
	date_default_timezone_set("Asia/Calcutta");
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/Session.php');
	Session::init();
	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');


	spl_autoload_register(function($class){
	include_once "classes/".$class.".php";
	});
	$db = new Database();
	$fm = new Format();
	$usr = new User();
	$exm = new Exam();
	$pro = new Process();
	header("Cache-Control: no-store, no-cache, must-revalidate"); 
	header("Cache-Control: pre-check=0, post-check=0, max-age=0"); 
	header("Pragma: no-cache"); 
	header("Expires: Mon, 6 Dec 1977 00:00:00 GMT"); 
	header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
?>
<!doctype html>
<html>
	<head>
		<title>Online Exam System</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="no-cache">
		<meta http-equiv="Expires" content="-1">
		<meta http-equiv="Cache-Control" content="no-cache">
		<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
		<link rel="icon" href="img/favicon.ico" type="image/x-icon">
		 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/webcamjs/1.0.25/webcam.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <style type="text/css">
		  #results { padding:20px; border:1px solid; background:#ccc; }
		  .blink {
  animation: blink 50s steps(5, end) ;
}

@keyframes blink {
  0% {
    opacity: 1;
    
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
    </style>
		
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<!-- Popper JS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script> 
		<link rel="stylesheet" href="css/main.css">
		<link rel="stylesheet" href="css/custom.css">
		<script src="js/jquery.js"></script>
		<script src="js/main.js"></script>
		

	</head>
	<body>
	
		<?php 
			if (isset($_GET['action']) && $_GET['action'] == 'logout') {
				Session::destroy();
				header("Location:index.php");
				exit();
			}
		?>
		<div class="phpcoding">
			<section class="maincontent">
				
				<center>
					<h3><img src="img/logo.png" width="100" height="90" border="0" alt="" />
						Sir Dr. M.S. Gosavi Polytechnic Institute Nashik</h3><hr>
					
				</center>
				<html>

	
				<div class="menu">
					<ul>
						<?php
							$login = Session::get("login");
							if ($login == true) {?>
							<li><a href="profile.php">Profile</a></li>
							<li><a href="exam.php">Exam</a></li>
							<li><a href="?action=logout">Logout</a></li>
							<?php } else { ?>
							<li><a href="admin">Admin</a></li>
							<li><a href="register.php">Register</a></li>
							<li><a href="index.php">Login</a></li>
						<?php } ?>
							
					</ul>
					<?php
						$login = Session::get("login");
						if ($login == true) {?>
						<span style="float: right;color: #888;">
							Welcome <strong><?php echo Session::get('name') ; ?></strong>
								
						</span>
					
						<p id="demo"></p>
					<?php } ?>
				</div>
				<div class="container">
   
   
    <form method="POST" action="storeImage.php">

            <div class="row d-flex justify-content-center col-md-12">
		

                <div id="my_camera"></div>
									
		
                <br/>
            </div>
           
          
    </form>
</div>
	
