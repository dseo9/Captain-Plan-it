<?php include 'header.php'; ?>


  <div class="row mainbody">
    <div class="title_header"><h5>Who are you Hero?</h5></div>
    <br/><br/>
    <div class="row subbody container-fluid">
      <div class="col-xs-10 col-xs-offset-1">
      <form action="avatar.php" method="post" class="">
        <input type="hidden" name="recipients" class="form-control" id="recipient" value="corinne.kakiuchi@gmail.com">
    		<input type="hidden" name="subject" class="form-control" id="subject" value="Message from Captain-Plan_it webapp">
    		<input type="hidden" name="thanks_url" class="form-control" id="redirection" value="./thanks.php">

        <div class="form-group row">
          <div class="col-xs-4 col-md-4 img-responsive">
            <img src="images/avatar_footer.png"  id="user_icon" alt="User Icon">
          </div>
          <div class="col-xs-8 col-md-8 has-error input_box">
            <input type="text" class="form-control" id="red_input" placeholder="Enter Username" name="uname" required><span id='uname_error'></span>
          </div>
        </div>

        <div class="form-group row">
          <div class="col-xs-4 col-md-4 img-responsive">
            <img src="images/register_icons/email_icon.png" id="email_icon" alt="Email Icon">
          </div>
          <div class="col-xs-8 col-md-8 has-error input_box">
            <input type="email" class="form-control" id="green_input" placeholder="Enter Email" name="email" required=><span id='email_error'></span>
          </div>
        </div>

        <div class="form-group row">
          <div class="col-xs-4 col-md-4 img-responsive">
            <img src="images/register_icons/password.png" id="password_icon" alt="Password Icon">
          </div>
          <div class="col-xs-8 col-md-8 has-error input_box">
            <input type="password" class="form-control" id="purple_input" placeholder="Enter Password" name="psw" required><span id='pword_error'></span>
          </div>
        </div>

        <div class="form-group row">
          <div class="col-xs-4 col-md-4 img-responsive">
            <img src="images/register_icons/password.png" id="password_icon" alt="Password Icon">
          </div>
          <div class="col-xs-8 col-md-8 has-error  input_box">
            <input type="password" class="form-control" id="blue_input" placeholder="Confirm Password" name="psw" required><span id='cpword_error'></span></br>
          </div>
        </div>
        <button type="submit" class="btn btn-success btn-lg button_register" value="Register" onsubmit='return validateRegisterForm()'>Register</button><span id='submit-error'></span>
        <button type="button" class="btn btn-danger btn-lg button_register">Cancel</button>
        <div class="brdiv">

        </div>
      </div>
      </form>
    </div>
  </div>


<!-- <div class="row mainbody auto_body">
  <div class="title_header"><h5>Who are you Hero?</h5></div>

      <div class="form-group row">
        <div class="col-xs-4 col-md-4 img-responsive">
          <img src="images/register_icons/email_icon.png" id="email_icon" alt="Email Icon">
        </div>
        <div class="col-xs-8 col-md-8 has-error input_box">
          <input type="email" class="form-control" id="green_input" placeholder="Enter Email" name="email" required=><span id='email_error'></span>
        </div>
      </div>

      <div class="form-group row">
        <div class="col-xs-4 col-md-4 img-responsive">
          <img src="images/register_icons/password.png" id="password_icon" alt="Password Icon">
        </div>
        <div class="col-xs-8 col-md-8 has-error input_box">
          <input type="password" class="form-control" id="purple_input" placeholder="Enter Password" name="psw" required><span id='pword_error'></span>
        </div>
      </div>

      <div class="form-group row">
        <div class="col-xs-4 col-md-4 img-responsive">
          <img src="images/register_icons/password.png" id="password_icon" alt="Password Icon">
        </div>
        <div class="col-xs-8 col-md-8 has-error  input_box">
          <input type="password" class="form-control" id="blue_input" placeholder="Confirm Password" name="psw" required><span id='cpword_error'></span></br>
        </div>
      </div>
      <button type="submit" class="btn btn-success btn-lg button_register" value="Register" onsubmit='return validateRegisterForm()'>Register</button><span id='submit-error'></span>
      <br>
      <button type="button" class="btn btn-danger btn-lg button_register">Cancel</button>
      <div class="brdiv">

      </div>
    </form>
  </div> -->


<?php include 'footer.php'; ?>
