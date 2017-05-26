<?php include_once("statics/".$_GET['bg']); ?>
<?php include_once('topnav.php'); ?>
<?php include_once('libs/list_questions.php'); ?>

	<div class="row mainbody">

		<!-- TITLE OF THE LEVEL AT THE TOP -->
		<div class="title_header">
			<h5><?php
			if($_GET['lv'] == 6) {
				$LV="Key";
			} else {
				$LV=$_GET['lv'];
			};
			echo $_GET['p_name']." "."Level ". $LV ?></h5>
		</div>

		<br/>
		<div class="row subbody container-fluid">
		<!-- INSTRUCTIONS -->
		<div id="instructions">
      <?php
				if ($result_ans == "Right answer") {
					echo "<p>".$result_ans."</p>";
					// $(document).ready(function() {
					// 	$('#instructions').css("background-color","yellow");
					// })
					header("refresh:1; url=fruitplanet.php?p_name=".$_GET['p_name']."&bg=".$_GET['bg']."&page=".$_GET['page'], true, 303);
				} else {
					// $(document).ready(function() {
					// 	$('#instructions').css("background-color","red");
					// })
					echo "<p>".$result_ans."</p>";
				}
			?>
    </div><!-- END OF INSTRUCTIONS -->

		<br/>

			<!-- QUESTIONS AREA FOR THE LEVEL -->
		  <div class="row">
		    <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1">
		      <div class="well well-md">
		        <p style="text-align:center;"><?php echo $question; ?></p>
		      </div>
		    </div><!-- END OF COL DIV -->
		  </div><!-- END OF QUESTIONS AREA -->

		  <br><br>
		  <!-- ANSWER BUTTONS -->
		  <div class="row" id="planets">
				<form method="post">

					<!-- assign buttons with random array value from database -->
					<!-- button 1 -->
					<div class="col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-5 col-md-offset-1 col-lg-5 col-lg-offset-1">
						<input style="height:60px;" type="submit" name="submit_btn" value="<?php echo $answers_data[0]['answer']?>" class="btn-group <?php echo $_GET['btn']; ?>" id="">
					</div>
					<!-- button 2 -->
					<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
						<input style="height:60px;" type="submit" name="submit_btn" value="<?php echo $answers_data[1]['answer']?>" class="btn-group <?php echo $_GET['btn']; ?>" id="">
					</div>
			</div>
			<div class="row" id="planets">
					<!-- button 3 -->
					<div class="col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-5 col-md-offset-1 col-lg-5 col-lg-offset-1">
						<input style="height:60px;" type="submit" name="submit_btn" value="<?php echo $answers_data[2]['answer']?>" class="btn-group <?php echo $_GET['btn']; ?>" id="">
					</div>
					<!-- button 4 -->
					<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
						<input style="height:60px;" type="submit" name="submit_btn" value="<?php echo $answers_data[3]['answer']?>" class="btn-group <?php echo $_GET['btn']; ?>" id="">
					</div>
			</div><!-- END OF ANSWER BUTTONS -->

				</form>
		</div><!-- END OF SUBBODY -->
	</div><!-- END OF MAINBODY -->



<?php include_once('statics/footer.php'); ?>
