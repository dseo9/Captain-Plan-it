<!-- loading screen page (1.) center logo, 2.) four corners are the planets, 3.) loading bar (after loading, show login button then use modal to popout login page))-->

<?php include'head.php'; ?>

<body onload="myFunction()" style="margin:0;">
  <div class="container fill">
    <div class="row mainbody ">

      <div class="row" id="splashscreen1" style="height:20%">
        <div class="col-xs-3"><img src="images\fruit_fortress.png" alt="FruitFortress" class="img-responsive center-block"/></div>
        <div class="col-xs-6"></div>
        <div class="col-xs-3"><img src="images\pastry_palace.PNG" alt="Pastry Palace" class="img-responsive center-block"/></div>
      </div>

      <div class="row" id="splashscreen2" style="height:50%">
        <div class="col-xs-3"></div>
        <div class="col-xs-6"><img src="images\cp.png" alt="Captain Plan-It" class="img-responsive center-block"/></div>
        <div class="col-xs-3"></div>
      </div>

      <div class="row" id="splashscreen2" style="height:25%">
        <div class="col-xs-3"></div>
        <div class="col-xs-2"></div>
        <div class="col-xs-2">

          <input type="image" src="images/login.png" onclick="document.getElementById('id01').style.display='block'" style="width:80%;"></button>
        </div>
        <div class="col-xs-2"></div>
        <div class="col-xs-3"></div>
      </div>

      <div class="row" id="splashscreen1" style="height:20%">
        <div class="col-xs-3"><img src="images\dairy_dome.png" alt="Dairy Dome" class="img-responsive center-block"/></div>
        <div class="col-xs-6"></div>
        <div class="col-xs-3"><img src="images\meat_mansion.png" alt="Meat Mansion" class="img-responsive center-block"/></div>
      </div>
    </div>

    <!-- MODAL LOGIN PAGE -->
    <div id="id01" class="modal" style="width:100%; margin: auto;">
      <form class="modal-content animate" action="avatar.php" style="width:80%;">
        <div class="container-fluid">

          <label><b>Username</b></label>
          <input type="text" placeholder="Enter Username" name="uname" required>

          <label><b>Password</b></label>
          <input type="password" placeholder="Enter Password" name="psw" required>

          <button type="submit">Login</button>

          <input type="checkbox" checked="checked"> Remember me
        </div>

        <div class="container-fluid" style="background-color:#f1f1f1">
          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
          <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
      </form>
    </div><!--MODAL LOGIN PAGE END-->

  <script>
  // Get the modal
  var modal = document.getElementById('id01');

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
  </script>
</div>
