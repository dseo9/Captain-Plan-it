<?php include_once("statics/".$_GET["bg"]); ?>
<?php include_once("topnav.php"); ?>
<?php include_once("libs/list_questions.php"); ?>

  <!-- make images responsive and link them to other pages-->
  <div class="row mainbody">
    <div class="title_header"><h5><?php echo $_GET["p_name"];?></h5></div>
    <br/><br/>
    <?php
    // echo $levelInfo[0]['Done'];
    $images_level = array();
    switch ($levelInfo[0]['level']) {
      case 1:
          if ($levelInfo[0]['Done'] == "no") {
            $images_level[1] = "level_1.png";
          } else {
            $images_level[1] = "level_1_ckd.png";
            $images_level[2] = "level_2.png";
            $images_level[3] = "level_3_lck.png";
            $images_level[4] = "level_4_lck.png";
            $images_level[5] = "level_5_lck.png";
            $images_level[6] = "level_key_lck.png";
          }
          break;
      case 2:
        if ($levelInfo[0]['Done'] == "no") {
          $images_level[1] = "level_1_ckd.png";
          $images_level[2] = "level_2.png";
        } else {
          $images_level[1] = "level_1_ckd.png";
          $images_level[2] = "level_2_ckd.png";
          $images_level[3] = "level_3.png";
          $images_level[4] = "level_4_lck.png";
          $images_level[5] = "level_5_lck.png";
          $images_level[6] = "level_key_lck.png";
        }
          break;
      case 3:
        if ($levelInfo[0]['Done'] == "no") {
          $images_level[1] = "level_1_ckd.png";
          $images_level[2] = "level_2_ckd.png";
          $images_level[3] = "level_3.png";
        } else {
          $images_level[1] = "level_1_ckd.png";
          $images_level[2] = "level_2_ckd.png";
          $images_level[3] = "level_3_ckd.png";
          $images_level[4] = "level_4.png";
          $images_level[5] = "level_5_lck.png";
          $images_level[6] = "level_key_lck.png";
        }
          break;
      case 4:
        if ($levelInfo[0]['Done'] == "no") {
          $images_level[1] = "level_1_ckd.png";
          $images_level[2] = "level_2_ckd.png";
          $images_level[3] = "level_3_ckd.png";
          $images_level[4] = "level_4.png";
        } else {
          $images_level[1] = "level_1_ckd.png";
          $images_level[2] = "level_2_ckd.png";
          $images_level[3] = "level_3_ckd.png";
          $images_level[4] = "level_4_ckd.png";
          $images_level[5] = "level_5.png";
          $images_level[6] = "level_key_lck.png";
        }
          break;
      case 5:
        if ($levelInfo[0]['Done'] == "no") {
          $images_level[1] = "level_1_ckd.png";
          $images_level[2] = "level_2_ckd.png";
          $images_level[3] = "level_3_ckd.png";
          $images_level[4] = "level_4_ckd.png";
          $images_level[5] = "level_5.png";
        } else {
          $images_level[1] = "level_1_ckd.png";
          $images_level[2] = "level_2_ckd.png";
          $images_level[3] = "level_3_ckd.png";
          $images_level[4] = "level_4_ckd.png";
          $images_level[5] = "level_5_ckd.png";
          $images_level[6] = "level_key.png";
        }
          break;
      default:
      $images_level[1] = "level_1.png";
      $images_level[2] = "level_2_lck.png";
      $images_level[3] = "level_3_lck.png";
      $images_level[4] = "level_4_lck.png";
      $images_level[5] = "level_5_lck.png";
      $images_level[6] = "level_key.png";
    }

    //if($gameInfo[0]['idPlanet'] == 1){ if($gameInfo[0]['finished'] == 'no'){ echo "_lck";}} ;
      ?>

    <div class="row subbody container-fluid">
      <!-- planet level 1 & 4 -->
      <div class="row">
        <div class="col-xs-4 col-sm-3 col-md-2 col-md-offset-1 col-lg-2 col-lg-offset-1 ">
          <a href="questions.php?id_question=<?php echo $level[0]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=1&lv_id=<?php echo $level[0]['idLevel']; ?>"><img src="images\<?php echo $_GET['page']?>\<?php echo $images_level[1]; ?>" alt="level 1" class="img-responsive center-block"/></a>
        </div>
        <div class="col-xs-4 col-xs-offset-4 col-sm-3 col-sm-offset-6 col-md-2 col-md-offset-6 col-lg-2 col-lg-offset-6">
          <a href="questions.php?id_question=<?php echo $level[3]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=4&lv_id=<?php echo $level[3]['idLevel']; ?>"><img src="images\<?php echo $_GET['page']?>\<?php echo $images_level[4]; ?>" alt="level 4" class="img-responsive center-block"/></a>
        </div>
      </div>

      <!-- planet level 2 & 5 -->
      <div class="row">
        <div class="col-xs-4 col-sm-3 col-md-2 col-lg-2">

          <a href="questions.php?id_question=<?php echo $level[1]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=2&lv_id=<?php echo $level[1]['idLevel']; ?>"><img src="images\<?php echo $_GET['page']?>\<?php echo $images_level[2]; ?>" alt="level 2" class="img-responsive center-block"/></a>
        </div>
        <div class="col-xs-4 col-xs-offset-4 col-sm-3 col-sm-offset-6 col-md-2 col-md-offset-8 col-lg-2 col-lg-offset-8">
          <a href="questions.php?id_question=<?php echo $level[4]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=5&lv_id=<?php echo $level[4]['idLevel']; ?>"><img src="images\<?php echo $_GET['page']?>\<?php echo $images_level[5]; ?>" alt="level 5" class="img-responsive center-block"/></a>
        </div>
      </div>

      <!-- planet level 3 & 6 -->
      <div class="row">
        <div class="col-xs-4 col-sm-3 col-md-2 col-md-offset-1 col-lg-2 col-lg-offset-1 ">
          <a href="questions.php?id_question=<?php echo $level[2]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=3&lv_id=<?php echo $level[2]['idLevel']; ?>"><img src="images\<?php echo $_GET['page']?>\<?php echo $images_level[3]; ?>" alt="level 3" class="img-responsive center-block"/></a>
        </div>
        <div class="col-xs-4 col-xs-offset-4 col-sm-3 col-sm-offset-6 col-md-2 col-md-offset-6 col-lg-2 col-lg-offset-6">
          <a href="questions.php?id_question=<?php echo $level[5]['idQuestion']; ?>&p_name=<?php echo $_GET['p_name']; ?>&bg=<?php echo $_GET['bg']; ?>&btn=a_meat&page=<?php echo $_GET['page'];?>&lv=key&lv_id=<?php echo $level[5]['idLevel']; ?>"><img src="images\<?php echo $_GET['page']?>\<?php echo $images_level[6]; ?>" alt="key level" class="img-responsive center-block"/></a>
        </div>
      </div>

    </div> <!-- ROW SUBBODY END -->
  </div> <!-- ROW MAINBODY END -->

<?php include_once("statics/footer.php"); ?>
