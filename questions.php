<?php include_once("statics/".$_GET['bg']); ?>
<?php include_once('libs/list_questions.php'); ?>

	<div class="row mainbody">

	<!-- TITLE OF THE LEVEL AT THE TOP -->

		<div class="title_header"><h5><?php echo $_GET['planet']; ?></h5></div>
		<!-- END OF TITLE -->
		<?php   // print_r($answers_data); ?>
		<br/><br>

<!-- QUESTIONS AREA FOR THE LEVEL -->
<div class="row subbody container-fluid">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1">
      <div class="well well-md">
        <p style="text-align:center;"><?php echo $question ?></p>
      </div>
    </div><!-- END OF COL DIV -->
  </div><!-- END OF QUESTIONS AREA -->

  <br><br>
  <!-- ANSWER BUTTONS -->
  <div class="row" id="planets">
		<form method="post">

			<div class="col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-5 col-md-offset-1 col-lg-5 col-lg-offset-1">
				<input type="submit" name="submit_btn" value="<?php echo $answers_data[0]['answer']?>" class="btn-group <?php echo $_GET['btn']; ?>" id="">
			</div>
			<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
				<!-- <a href="outrapagina.php?p_answer=<?php echo $answers_data[1]['idAnswer']?>"><?php echo $answers_data[1]['answer']?></a> -->
				<input type="submit" name="submit_btn" value="<?php echo $answers_data[1]['answer']?>" class="btn-group <?php echo $_GET['btn']; ?>" id="">
			</div>
			</div>

			<div class="row" id="planets">
			<div class="col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-5 col-md-offset-1 col-lg-5 col-lg-offset-1">
				<input type="submit" name="submit_btn" value="<?php echo $answers_data[2]['answer']?>" class="btn-group <?php echo $_GET['btn']; ?>" id="">
			</div>
			<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
				<input type="submit" name="submit_btn" value="<?php echo $answers_data[3]['answer']?>" class="btn-group <?php echo $_GET['btn']; ?>" id="">
			</div>
			</div><!-- END OF ANSWER BUTTONS -->

		</form>

</div><!-- END OF SUBBODY -->


</div>
<?php include 'statics/footer.php';?>
