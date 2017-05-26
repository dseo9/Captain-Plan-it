<?php include 'statics/header.php'; ?>
<?php include_once('libs/session.php'); ?>

  <div class="row mainbody container-fluid">
    <div class="title_header"><h5>Customize your Avatar</h5></div>
    <br>
    <!-- <div class="welcome">
      <h4>Hello</h4>
    </div> -->
    <div class="row subbody container-fluid">

      <!-- <div class="col-xs-6 avatar_div"> -->
        <button class="btn btn-warning btn-lg" type="button">Keys <span class="badge">3</span>
        </button>

        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding-top: 10px;">
          <canvas id=<?php if ($_GET['avatar_genre']=='girl') {
            echo "scene";
          } else {
            echo "scene2";
          }; ?> height=450 style="width:100%;"></canvas>
        </div>

        <div>
        <button type="button" class="btn btn-success btn-lg" name="save">SAVE</button>
        </div>
    </div> <!-- ROW SUBBODY END -->
  </div> <!-- ROW MAINBODY END -->

<?php include 'statics/footer.php'; ?>
