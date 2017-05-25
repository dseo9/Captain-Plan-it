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

        <div class="img-responsive center-block">
          <canvas id=<?php if ($_GET['avatar_genre']=='girl') {
            echo "scene";
          } else {
            echo "scene2";
          }; ?> width="500" height="500"></canvas>
        </div>


        <button type="button" class="btn btn-success btn-lg" name="save">SAVE</button>

        <!-- If is girl or boy, change the picture -->
        <!-- <img src=
          <?php if ($_GET['avatar_genre']=='boy') {
            echo "images/boy.png";
          } else {
            echo "images/girl.png";
          }; ?> class="img-responsive center-block avatar_img"
        />
        <button type="button" class="btn btn-success btn-lg" name="save">SAVE</button>
      </div>

      <div class="col-xs-6">
        <div class="form-group row">

          <a href=""><img src="images/avatar_labels/skin.png" class="img-responsive center-block" alt="skin"></a>

        </div>

        <div class="form-group row">

          <a href=""><img src="images/avatar_labels/hair.png" class="img-responsive center-block" alt="skin"></a>

        </div>

        <div class="form-group row">

          <a href=""><img src="images/avatar_labels/top.png" class="img-responsive center-block" alt="skin"></a>

        </div>

        <div class="form-group row">

          <a href=""><img src="images/avatar_labels/buttom.png" class="img-responsive center-block" alt="skin"></a>

        </div>

        <div class="form-group row">

          <a href=""><img src="images/avatar_labels/access.png" class="img-responsive center-block" alt="skin"></a>

        </div> -->

      <!-- </div> <!-- COL XS 6 END --> -->
    </div> <!-- ROW SUBBODY END -->
  </div> <!-- ROW MAINBODY END -->

<?php include 'statics/footer.php'; ?>
