<?php include 'header.php'; ?>

<div class="row mainbody">
  <div class="title_header"><h5>Who are you Hero?</h5></div>

  <form action="avatar.php" method="post" class="">
    <div class="row">
      <div class="col-xs-4 img-responsive user_icon">
        <img src="images/user_icon.png" alt="User Icon">
      </div>
      <div class="col-xs-8">
        <input type="text" class="form-control" placeholder="Enter Username" name="uname" required>
      </div>
    </div>

    <div class="row">
      <div class="col-xs-4 email_icon">
        <img src="images/email_icon.png" alt="Email Icon">
      </div>
      <div class="col-xs-8">
        <input type="email" placeholder="Enter Email" name="email" required=>
      </div>
    </div>

    <div class="row">
      <div class="col-xs-4 password_icon">
        <img src="images/password_icon.png" alt="Password Icon">
      </div>
      <div class="col-xs-8">
        <input type="password" placeholder="Enter Password" name="psw" required>
      </div>
    </div>

    <div class="row">
      <div class="col-xs-4 password_icon">
        <img src="images/password_icon.png" alt="Password Icon">
      </div>
      <div class="col-xs-8">
        <input type="password" placeholder="Confirm Password" name="psw" required>
      </div>
    </div>

    <button type="submit" class="btn btn-default">Register</button>
    <button type="button" class="btn btn-default">Cancel</button>

  </form>

</div>

<?php include 'footer.php'; ?>
