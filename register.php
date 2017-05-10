<?php include 'header.php'; ?>

<div class="row mainbody">
  <div class="title_header"><h5>Who are you Hero?</h5></div>

  <form action="avatar.php" method="post" class="">
    <div class="form-group">
      <div>
        <img src="images/user_icon.png" alt="User Icon" class="control-label col-sm-2">
      </div>
      <div class="col-sm-10">
        <input type="text" class="form-control" placeholder="Enter Username" name="uname" required>
      </div>
    </div>
    <div class="form-group">
      <input type="email" placeholder="Enter Email" name="email" required=>
    </div>

    <div class="form-group">
      <input type="password" placeholder="Enter Password" name="psw" required>
    </div>
    <div class="form-group">
      <input type="password" placeholder="Confirm Password" name="psw" required>
    </div>

    <button type="submit" class="btn btn-default">Register</button>
    <button type="button" class="btn btn-default">Cancel</button>

  </form>

</div>

<?php include 'footer.php'; ?>
