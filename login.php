<?php include_once ('statics/header.php'); ?>
<?php include_once('libs/login_users.php'); ?>

<div class="row mainbody">
  <div class="title_header"><h5>Welcome Hero!</h5></div>

  <div class="content">
    <?php if(isset($error)) {echo '<div class="alert alert-danger" role="alert">'.$error.'</div>';} ?>
  </div>
  <div class="row subbody">
    <br>
    <form action="login.php" method="post" class="">
      <div class="form-group">
        <input type="text" placeholder="Enter Username" name="uname" required>
      </div>
      <div class="form-group">
        <input type="password" placeholder="Enter Password" name="psw" required>
      </div>
      <div class="checkbox">
        <label><input type="checkbox" checked="checked"> Remember me </label>
      </div>

      <button type="submit" name="login">Login</button>
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn btn btn-warning">Cancel</button>

      <div class="checkbox">
        <span class="psw">Forgot <a href="#">password?</a></span>
      </div>
      <div class="">
        <button type="button" onclick="location.href='register.php';" class="cancelbtn btn btn-info">I don't have an account yet!</button>
      </div>
    </form>

  </div><!--ROW SUBBODY END-->
</div><!--ROW MAINBODY END-->


<?php include 'statics/footer.php' ;?>
