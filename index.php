<?php include_once('head.php'); ?>
<?php include_once('libs/login_users.php'); ?>

  <body onload="myFunction()" style="margin:0;">
    <div class="container fill" style="margin: auto; max-height: 100%;">
      <div class="row mainbody" >

<br/>
        <div class="row" id="splashscreen1" style="height:18%">
          <div class="col-xs-4 col-sm-3 col-md-3 col-lg-3">
            <img src="images\fruit_fortress.png" alt="FruitFortress" class="img-responsive center-block"/>
          </div>
          <div class="col-xs-4 col-xs-offset-4 col-sm-3 col-sm-offset-6 col-md-3 col-md-offset-6 col-lg-3 col-lg-offset-6"><img src="images\pastry_palace.png" alt="Pastry Palace" class="img-responsive center-block"/></div>
        </div>

        <div class="row" id="splashscreen2" style="height:49%">

          <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
            <img src="images\gifs\final_logo.gif" alt="Captain Plan-It" class="img-responsive center-block"/>
          </div>

        </div>

        <div class="row" id="splashscreen2" style="height:14%">
          <div class="col-xs-4 col-xs-offset-4 col-sm-2 col-sm-offset-5 col-md-2 col-md-offset-5 col-lg-2 col-lg-offset-5">
            <?php if(isset($error)){ echo $error; } ?>
          <?php if(isset($_SESSION['player_id'])) {?>
              <a href="planets.php">You are already logged in!</a>
          <?php } else {?>
            <input type="image" src="images/login_navigation.png" onclick="document.getElementById('id01').style.display='block'" style="width:80%;"></button>
          <?php } ?>


          </div>
        </div>

        <div class="clearfix"></div>
        <br/><br/>

        <div class="row" id="splashscreen1" style="height:18%">
          <div class="col-xs-4 col-sm-3 col-md-3 col-lg-3">
            <img src="images\dairy_dome.png" alt="Dairy Dome" class="img-responsive center-block"/>
          </div>
          <div class="col-xs-4 col-xs-offset-4 col-sm-3 col-sm-offset-6 col-md-3 col-md-offset-6 col-lg-3 col-lg-offset-6">
            <img src="images\meat_mansion.png" alt="Meat Mansion" class="img-responsive center-block"/>
          </div>
        </div>
      </div> <!-- END OF MAIN BODY CONTENT -->

      <!--MODAL LOGIN PAGE -->
      <script type="text/javascript" src="./facebook/fb.js"></script>
     <div id="id01" class="modal" style="width:100%; margin: auto;">
        <form class="modal-content animate" action="index.php" method="POST" style="width:80%;">
          <div class="container-fluid">

            <label><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" required>

            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>

            <button type="submit" name="login">Login</button>

          </div>

          <div class="container-fluid" style="background-color:#f1f1f1">
            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn btn btn-warning">Cancel</button>
            <button type="button" onclick="location.href='register.php';" class="cancelbtn btn btn-info">Register</button>
            <!-- <span class="psw">Forgot <a href="#">password?</a></span> -->
          </div>
        </form>
      </div><!--MODAL LOGIN PAGE END -->

      <script>
      // GET THE MODAL
      var modal = document.getElementById('id01');

      // WHEN THE USER CLICKS ANYWHERE OUTSIDE OF THE MODAL, CLOSE IT
      window.onclick = function(event) {
        if (event.target == modal) {
          modal.style.display = "none";
        }
      }
      </script>
    </div> <!-- END OF CONTAINER FILL -->
