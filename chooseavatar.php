<?php include 'statics/header.php'; ?>
<?php include_once('libs/session.php'); ?>

  <div class="row mainbody">
    <div class="title_header"><h5>Select what hero you are</h5></div>
    <br /><br />

    <div class="row subbody container-fluid">
        <a href="avatar.php">
          <div class="col-xs-5 col-sm-5" style="height: 60%">
            <img src="images/boy.png" class="img-responsive center-block">
          </div>
        </a>
        <a href="avatar.php">
          <div class="col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2" style="height: 60%">
            <img src="images/girl.png" class="img-responsive center-block">
          </div>
        </a>

      <div class="row">
          <a href="avatar.php">
            <div class="col-xs-5 col-xs-offset-1 col-sm-4 col-sm-offset-1">
              <button class="btn btn-info btn-xs"><p>BOY</p></button>
            </div>
          </a>
          <a href="avatar.php">
            <div class="col-xs-5 col-sm-4 col-sm-offset-2">
              <button class="btn btn-warning btn-xs"><p>GIRL</p></button>
            </div>
          </a>
      </div>

    </div> <!-- ROW SUBBODY END -->
  </div><!-- ROW MAINBODY END -->

<?php include 'statics/footer.php'; ?>
