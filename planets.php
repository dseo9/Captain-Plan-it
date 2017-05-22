<?php include 'statics/header.php';?>
<?php include_once('libs/session.php'); ?>

  <div class="row mainbody ">
    <div class="title_header"><h5>Foodiverse</h5></div>
    <br/><br/>
    <div class="row subbody container-fluid">
      <div class="row" id="planets">
        <!-- fruit fortress planet -->
        <div class="col-xs-5 col-sm-5 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
          <a href="fruitplanet.php?p_name=Fruit Fortress&bg=fruitheader.php"><img src="images\fruit_fortress.png" alt="Fruit_Fortress" class="img-responsive center-block"/></a>
        </div>
        <!-- pastry palace planet -->
        <div class="col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2 col-md-4 col-md-offset-2 col-lg-4 col-lg-offset-2">
          <a href="fruitplanet.php?p_name=Pastry Palace&bg=pastryheader.php"><img src="images\pastry_palace.png" alt="Pastry_Palace" class="img-responsive center-block"/></a>
        </div>
      </div>

      <div class="row" id="planets"></div>

      <div class="row" id="planets">
        <!-- dairy dome planet -->
        <div class="col-xs-5 col-sm-5 col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1">
          <a href="fruitplanet.php?p_name=Dairy Dome&bg=dairyheader.php"><img src="images\dairy_dome.png" alt="Fruit_Fortress" class="img-responsive center-block"/></a>
        </div>
        <!-- meat mansion planet -->
        <div class="col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2 col-md-4 col-md-offset-2 col-lg-4 col-lg-offset-2">
          <a href="fruitplanet.php?p_name=Meat Mansion&bg=meatheader.php"><img src="images\meat_mansion.png" alt="Pastry_Palace" class="img-responsive center-block"/></a>
        </div>
      </div>

    </div><!-- ROW SUBBODY END-->
  </div><!-- ROW MAINBODY END-->

<?php include 'statics/footer.php' ;?>
