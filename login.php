<?php include_once('libs/login_users.php'); ?>
<?php include 'header.php'; ?>

<div class="row mainbody">
  <div class="title_header"><h5>Welcome Hero!</h5></div>

  <div class="content">
    <?php if(isset($error)) {echo '<div class="alert alert-danger" role="alert">'.$error.'</div>';} ?>
  </div>
  <div class="row subbody">
    <br>
    <form action="avatar.php" method="post" class="">
      <div class="form-group">
        <input type="text" placeholder="Enter Username" name="uname" required>
      </div>
      <div class="form-group">
        <input type="password" placeholder="Enter Password" name="psw" required>
      </div>
      <div class="checkbox">
        <label><input type="checkbox" checked="checked"> Remember me </label>
      </div>

      <button type="submit" class="btn btn-default">Login</button>
      <button type="button" class="btn btn-default">Cancel</button>

      <div class="checkbox">
        <span class="psw">Forgot <a href="#">password?</a></span>
      </div>
      <div class="">
        <button type="button" class="btn btn-default">I don't have an account yet!</button>
      </div>
    </form>

  </div><!--ROW SUBBODY END-->
</div><!--ROW MAINBODY END-->


<?php include 'footer.php' ;?>
