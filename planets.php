<?php include_once('statics/header.php');?>
<?php include_once('libs/session.php'); ?>

  <div class="row mainbody ">
    <div class="title_header"><h5>Foodiverse</h5></div>

    <!-- twitter button -->
      <?php
        if(isset($_GET['cleaned']))
        {
          $planet_done = array(false, false, false, false, false);
          switch ($_GET['cleaned']) {
            case 1:
              $planet_done[1] = true;
              $planet_done[2] = false;
              $planet_done[3] = false;
              $planet_done[4] = false;
              break;
            case 2:
              $planet_done[1] = false;
              $planet_done[2] = true;
              $planet_done[3] = false;
              $planet_done[4] = false;
              break;
            case 3:
              $planet_done[1] = false;
              $planet_done[2] = false;
              $planet_done[3] = true;
              $planet_done[4] = false;
              break;
            case 4:
              $planet_done[1] = false;
              $planet_done[2] = false;
              $planet_done[3] = false;
              $planet_done[4] = true;
              break;
            default:
              $planet_done[1] = false;
              $planet_done[2] = false;
              $planet_done[3] = false;
              $planet_done[4] = false;
              break;
          }
        }

       ?>

    <br/><br/>
    <div class="row subbody container-fluid">
      <div class="row" id="planets">
        <!-- fruit fortress planet -->
        <div class="col-xs-5 col-sm-5 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
          <?php if($planet_done[2] || $planet_done[3] || $planet_done[4]) { ?>
            <img src="images\fruit_fortress_ckd.png" alt="Fruit_Fortress" class="img-responsive center-block"/>
          <?php } elseif(!$planet_done[1]) { ?>
            <img src="images\fruit_fortress_lck.png" alt="Fruit_Fortress" class="img-responsive center-block"/>
            <?php } else { ?>
          <a href="fruitplanet.php?p_name=Fruit Fortress&bg=fruitheader.php&page=fruit_page">
          <img src="images\fruit_fortress.png" alt="Fruit_Fortress" class="img-responsive center-block"/></a>
          <?php } ?>
        </div>
        <!-- pastry palace planet -->
        <div class="col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2 col-md-4 col-md-offset-2 col-lg-4 col-lg-offset-2">
          <?php if($planet_done[3] || $planet_done[4]) { ?>
          <img src="images\pastry_palace_ckd.png" alt="Pastry_Palace" class="img-responsive center-block"/>
          <?php } elseif(!$planet_done[2]) { ?>
            <img src="images\pastry_palace_lck.png" alt="Pastry_Palace" class="img-responsive center-block"/>
          <?php } else { ?>
          <a href="fruitplanet.php?p_name=Pastry Palace&bg=pastryheader.php&page=pastry_page">
          <img src="images\pastry_palace.png" alt="Pastry_Palace" class="img-responsive center-block"/></a>
          <?php } ?>
        </div>
      </div>

      <div class="row" id="planets"></div>

      <div class="row" id="planets">
        <!-- dairy dome planet -->
        <div class="col-xs-5 col-sm-5 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
          <?php if($planet_done[1]) { ?>
            <img src="images\dairy_dome_ckd.png" alt="Fruit_Fortress" class="img-responsive center-block"/>
            <?php } elseif($planet_done[2] || $planet_done[3] || $planet_done[4]) { ?>
              <img src="images\dairy_dome_ckd.png" alt="Fruit_Fortress" class="img-responsive center-block"/>
          <?php } else { ?>
          <a href="fruitplanet.php?p_name=Dairy Dome&bg=dairyheader.php&page=dairy_page">
            <img src="images\dairy_dome.png" alt="Fruit_Fortress" class="img-responsive center-block"/></a>
            <?php } ?>
        </div>
        <!-- meat mansion planet -->
        <div class="col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2 col-md-4 col-md-offset-2 col-lg-4 col-lg-offset-2">
          <?php if($planet_done[4]) { ?>
          <img src="images\meat_mansion_ckd.png" alt="Pastry_Palace" class="img-responsive center-block"/>
          <?php } elseif(!$planet_done[3]) { ?>
            <img src="images\meat_mansion_lck.png" alt="Pastry_Palace" class="img-responsive center-block"/>
            <?php } else { ?>
          <a href="fruitplanet.php?p_name=Meat Mansion&bg=meatheader.php&page=pastry_page">
          <img src="images\meat_mansion.png" alt="Pastry_Palace" class="img-responsive center-block"/></a>
          <?php } ?>
        </div>
      </div>

    </div><!-- ROW SUBBODY END-->
  </div><!-- ROW MAINBODY END-->



<?php include_once('statics/footer.php'); ?>
