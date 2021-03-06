<?php include 'statics/header.php'; ?>
<?php include_once('libs/login_users.php'); ?>

  <div class="row mainbody">
    <div class="title_header"><h5>Who are you Hero?</h5></div>
    <?php if(isset($error)){ echo "<div class='alert alert-danger' role='alert'>".$error."</div>";} ?>

    <div class="row subbody container-fluid">
      <div class="col-xs-10 col-xs-offset-1">
      <form action="register.php" method="POST" class="">

        <div class="row">
          <div class="col-sm-6 col-md-2 img-responsive">
            <label for="red_input"><img src="images/footer_icons/avatar_footer.png"  id="user_icon" alt="User Icon"></label>
          </div>
          <div class="col-sm-12 col-md-10 has-error input_box">
            <input type="text" class="form-control" id="red_input" placeholder="Username" name="uname"><span id='uname_error'></span>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-6 col-md-2 img-responsive">
            <label for="green_input"><img src="images/register_icons/email_icon.png" id="email_icon" alt="Email Icon"></label>
          </div>
          <div class="col-sm-12 col-md-10 has-error input_box">
            <input type="email" class="form-control" id="green_input" placeholder="Email" name="email"><span id='email_error'></span>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-6 col-md-2 img-responsive">
            <label for="purple_input"><img src="images/register_icons/password.png" id="password_icon" alt="Password Icon"></label>
          </div>
          <div class="col-sm-12 col-md-10 has-error input_box">
            <input type="password" class="form-control" id="purple_input" placeholder="Password" name="psw"><span id='pword_error'></span>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-6 col-md-2 img-responsive">
            <label for="blue_input"><img src="images/register_icons/password.png" id="password_icon" alt="Password Icon"></label>
          </div>
          <div class="col-sm-12 col-md-10 has-error  input_box">
            <input type="password" class="form-control" id="blue_input" placeholder="Verify Password" name="psw2">
            <span id='cpword_error'></span></br>
          </div>
        </div>

        <button type="submit" class="btn btn-success btn-lg button_register" value="Register" name="register">Register</button>

        <!-- <button type="submit" class="btn btn-success btn-lg button_register" value="Register" onsubmit='return validateRegisterForm()'>Register</button><span id='submit-error'></span>
        <button type="button" class="btn btn-danger btn-lg button_register">Cancel</button>
        <div class="brdiv">

        </div> -->
      </div><!-- col-xs-10 col-xs-offset-1 END-->
      </form>
    </div><!-- ROW SUBBODY END-->
  </div><!-- ROW MAINBODY END-->
