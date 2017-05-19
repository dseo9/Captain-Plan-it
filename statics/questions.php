<!-- QUESTIONS AREA FOR THE LEVEL -->
<div class="row subbody container-fluid">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1">
      <div class="well well-md">
        <p>

          <?php
            include 'db/getquestions.php';
          ?>

        </p>
      </div>
    </div><!-- END OF COL DIV -->
  </div><!-- END OF QUESTIONS AREA -->

  <br><br>
  <!-- ANSWER BUTTONS -->
  <div class="row" id="planets">
    <div class="col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-5 col-md-offset-1 col-lg-5 col-lg-offset-1">
      <input type="button" value="<?php echo $my_array[0]; ?>" class="btn-group" id="a_dairy">
    </div>
    <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
      <input type="button" value="<?php echo $my_array[1]; ?>" class="btn-group" id="a_dairy">
    </div>
  </div>

  <div class="row" id="planets">
    <div class="col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-5 col-md-offset-1 col-lg-5 col-lg-offset-1">
      <input type="button" value="<?php echo $my_array[2]; ?>" class="btn-group" id="a_dairy">
    </div>
    <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
      <input type="button" value="<?php echo $my_array[3];?>" class="btn-group" id="a_dairy">
    </div>
  </div><!-- END OF ANSWER BUTTONS -->
</div><!-- END OF SUBBODY -->
