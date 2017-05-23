<?php include_once("statics/".$_GET['bg']); ?>
<?php include_once('topnav.php'); ?>
<?php include_once('libs/list_questions.php'); ?>

  <!-- make images responsive and link them to other pages-->
  <div class="row mainbody">
    <div class="title_header"><h5><?php echo $_GET['p_name'];?></h5></div>
    <br/><br/>


    <div class="row subbody container-fluid">
      <!-- planet level 1 & 4 -->
      <div class="row">
        <div class="col-xs-4 col-sm-3 col-md-2 col-md-offset-1 col-lg-2 col-lg-offset-1 ">
          <a href="questions.php?id_question=<?php echo $level[0]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=1"><img src="images\<?php echo $_GET['page']?>\level_1.png" alt="level 1" class="img-responsive center-block"/></a>
        </div>
        <div class="col-xs-4 col-xs-offset-4 col-sm-3 col-sm-offset-6 col-md-2 col-md-offset-6 col-lg-2 col-lg-offset-6">
          <a href="questions.php?id_question=<?php echo $level[3]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=1"><img src="images\<?php echo $_GET['page']?>\level_4.png" alt="level 4" class="img-responsive center-block"/></a>
        </div>
      </div>

      <!-- planet level 2 & 5 -->
      <div class="row">
        <div class="col-xs-4 col-sm-3 col-md-2 col-lg-2">
          <a href="questions.php?id_question=<?php echo $level[1]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=1"><img src="images\<?php echo $_GET['page']?>\level_2.png" alt="level 2" class="img-responsive center-block"/></a>
        </div>
        <div class="col-xs-4 col-xs-offset-4 col-sm-3 col-sm-offset-6 col-md-2 col-md-offset-8 col-lg-2 col-lg-offset-8">
          <a href="questions.php?id_question=<?php echo $level[4]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=1"><img src="images\<?php echo $_GET['page']?>\level_5.png" alt="level 5" class="img-responsive center-block"/></a>
        </div>
      </div>

      <!-- planet level 3 & 6 -->
      <div class="row">
        <div class="col-xs-4 col-sm-3 col-md-2 col-md-offset-1 col-lg-2 col-lg-offset-1 ">
          <a href="questions.php?id_question=<?php echo $level[2]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=1"><img src="images\<?php echo $_GET['page']?>\level_3.png" alt="level 3" class="img-responsive center-block"/></a>
        </div>
        <div class="col-xs-4 col-xs-offset-4 col-sm-3 col-sm-offset-6 col-md-2 col-md-offset-6 col-lg-2 col-lg-offset-6">
          <a href="questions.php?id_question=<?php echo $level[5]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=1"><img src="images\<?php echo $_GET['page']?>\level_key.png" alt="key level" class="img-responsive center-block"/></a>
        </div>
      </div>

    </div> <!-- ROW SUBBODY END -->
  </div> <!-- ROW MAINBODY END -->

<?php include_once('statics/footer.php'); ?>
