<!-- loading screen page (1.) center logo, 2.) four corners are the planets, 3.) loading bar (after loading, direct to login screen))-->
<?php include'head.php'; ?>

<body onload="myFunction()" style="margin:0;">
  <div class="container fill vcenter">
    <div class="row mainbody ">

      <div class="row" id="splashscreen1" style="height:20%">
        <div class="col-xs-3"><img src="images\fruit_fortress.PNG" alt="Fruit_Fortress" class="img-responsive center-block"/></div>
        <div class="col-xs-6"></div>
        <div class="col-xs-3"><img src="images\pastry_palace.PNG" alt="Pastry_Palace" class="img-responsive center-block"/></div>
      </div>

      <div class="row" id="splashscreen2" style="height:50%">
        <div class="col-xs-3"></div>
        <div class="col-xs-6"><img src="images\cp.png" alt="Pastry_Palace" class="img-responsive center-block"/></div>
        <div class="col-xs-3"></div>
      </div>

      <div class="row" id="splashscreen2" style="height:25%">
        <div class="col-xs-3"></div>
        <div class="col-xs-2"></div>
        <div class="col-xs-2 loader"></div>
        <div class="col-xs-2"></div>
        <div class="col-xs-3"></div>
      </div>

      <div class="row" id="splashscreen1" style="height:20%">
        <div class="col-xs-3"><img src="images\dairy_dome.png" alt="Fruit_Fortress" class="img-responsive center-block"/></div>
        <div class="col-xs-6"></div>
        <div class="col-xs-3"><img src="images\meat_mansion.PNG" alt="Pastry_Palace" class="img-responsive center-block"/></div>
      </div>

      <div style="display:none;" id="myDiv" class="animate-bottom">
  <h2>Tada!</h2>
  <p>Some text in my newly loaded page..</p>
</div>

<script>
var myVar;

function myFunction() {
    myVar = setTimeout(showPage, 3000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}
</script>



        <!-- <div id="upper_left"> -->
          <!-- <img src="images/pastry_palace.png" alt="logo" class="rounded float-left "/> -->
        <!-- </div> -->

        <!-- <div id="upper_right"> -->
          <!-- <img src="images/fruit_fortress.png" alt="logo" class="rounded float-right "/>

          <img src="images/pastry_palace.png" class="rounded float-left" alt="pastrylogo">
          <img src="images/fruit_fortress.png" class="rounded float-right" alt="fruitlogo"> -->
        <!-- </div> -->

          <!-- <img src="images/cp.png" alt="logo" class="img-responsive "/>

        <div id="lower-right">
          <img src="images/dairy_dome.png" alt="logo" class="img-responsive "/>
        </div>

        <div id="lower-left">
          <img src="images/meat_mansion.png" alt="logo" class="img-responsive" />
        </div> -->
    </div>
  </div>
