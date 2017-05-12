<?php include 'header.php'; ?>

<div class="row mainbody">
  <div class="title_header"><h5>Who are you Hero?</h5></div>

  <form action="avatar.php" method="post" class="">
    <input type="hidden" name="recipients" class="form-control" id="recipient" value="corinne.kakiuchi@gmail.com">
		<input type="hidden" name="subject" class="form-control" id="subject" value="Message from Captain-Plan_it webapp">
		<input type="hidden" name="thanks_url" class="form-control" id="redirection" value="./thanks.php">

    <div class="row">
      <div class="col-xs-2 img-responsive" id="user_icon">
        <img src="images/avatar_footer.png" alt="User Icon">
      </div>
      <div class="col-xs-8 has-error">
        <input type="text" class="form-control" placeholder="Enter Username" name="uname" required><span id='uname_error'></span>
      </div>
      <div class="col-xs-2">

      </div>
    </div>

    <div class="row">
      <div class="col-xs-4">
        <img src="images/email_icon.png" class=" email_icon" alt="Email Icon">
      </div>
      <div class="col-xs-8 has-error">
        <input type="email" class="form-control" placeholder="Enter Email" name="email" required=><span id='email_error'></span>
      </div>
    </div>

    <div class="row">
      <div class="col-xs-4 password_icon">
        <img src="images/password_icon.png" alt="Password Icon">
      </div>
      <div class="col-xs-8 has-error">
        <input type="password" class="form-control" placeholder="Enter Password" name="psw" required><span id='pword_error'></span>
      </div>
    </div>

    <div class="row">
      <div class="col-xs-4 password_icon">
        <img src="images/password_icon.png" alt="Password Icon">
      </div>
      <div class="col-xs-8 has-error">
        <input type="password" class="form-control" placeholder="Confirm Password" name="psw" required><span id='cpword_error'></span></br>
      </div>
    </div>

    <button type="submit" class="btn btn-default" value="Register" onsubmit='return validateRegisterForm()'>Register</button><span id='submit-error'></span>
    <button type="button" class="btn btn-default">Cancel</button>

  </form>

</div>

<?php include 'footer.php'; ?>
