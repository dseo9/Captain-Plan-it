<?php include 'header.php'; ?>

<div class="row mainbody">
  <div class="title_header"><h5>Welcome Hero!</h5></div>

  <div class="row subbody">
<br>
    <form action="avatar.php">
        <label><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="uname" required>

        <label><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>

        <button type="submit">Login</button>
        <input type="checkbox" checked="checked"> Remember me

        <button type="button" class="cancelbtn">Cancel</button>
        <span class="psw">Forgot <a href="#">password?</a></span>
    </form>



  </div>

</div>

<?php include 'footer.php' ;?>
