<?php include 'inc/header.php'; ?>
<?php
Session::checkSession();
$total = $exm->getTotalRows($_GET['examID']);
 ?>
<div class="main">
<h1>All Question & Ans:<?php echo $total; ?></h1>
	<div class="viewans">
		<table> 
			<?php 
			$getQues = $exm->getQueByOrder($_GET['examID']);
			if ($getQues) {
				while ($question = $getQues->fetch_assoc()) {
			

			 ?>
			<tr>
				<td colspan="2">
				 <h3>Que <?php echo $question['quesNo']; ?>: <?php echo $question['ques']; ?></h3>
				</td>
			</tr>

			<?php 
				$number = $question['quesNo'];
				$answer = $exm->getAnswer($number,$_GET['examID']);
				if ($answer) {
					while ($result = $answer->fetch_assoc()) {
				
			 ?>

			<tr>
				<td>
				 <input type="radio"/>
				 <?php 
				 if ($result['rightAns'] == '1') {
				 	echo "<span style='color:blue'>".$result['ans']."</span>"; 
				 }else{
				 echo $result['ans']; 
				}
				 ?>
				</td>
			</tr>
		<?php }
			} 
		}
	} 
	?>
		</table>
		<a href="exam.php">GO BACK</a>
</div>
 </div>
<?php include 'inc/footer.php'; ?>