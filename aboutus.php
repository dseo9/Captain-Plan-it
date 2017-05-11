<?php include 'header.php';?>

  <!-- make three row divs for 1.) information about ourgroup, 2.) affiliated apps for kids, 3.) affiliated apps for adults/parents   -->
  <div class="row mainbody">
    <div class="title_header"><h5>About Us</h5></div>
    <br />
    <div class="row subbody">
      <div class="panel-group">
        <div class="panel panel-info">
          <div class="panel-heading">Group 16</div>
          <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
        </div>  <!-- PANEL INFO -->
      </div> <!-- PANEL GROUP END-->

      <div class="panel-group">
        <div class="panel panel-info">
          <div class="panel-heading">Affiliates</div>
          <div class="panel-body">

            <div id="accordion" role="tablist" aria-multiselectable="true">

              <div class="card">
                <div class="card-header" role="tab" id="headingOne">
                  <h5 class="mb-0">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      FOOD FACTORY ZERO
                    </a>
                  </h5>
                </div>

                <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne">
                  <div class="row">
                    <div class="col-xs-3">
                      <a href="http://students.bcitdev.com/A01006039/ffz/" target="_blank"><img src="images/affiliates/foodfactoryzero.png" class="img-responsive center-block"/></a>
                    </div>
                    <div class="col-xs-9">
                      <div class="card-block">
                        A time-based drag and drop game. Users need to pick and match the ingredients with recipes.
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="card">
                <div class="card-header" role="tab" id="headingTwo">
                  <h5 class="mb-0">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                      RACE TO ZERO
                    </a>
                  </h5>
                </div>

                <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                  <div class="row">
                    <div class="col-xs-3">
                      <a href="#" target="_blank"><img src="images/affiliates/racetozero.png" class="img-responsive center-block"/></a>
                    </div>
                    <div class="col-xs-9">
                      <div class="card-block">
                        Race to Zero is a fun platforming game where you must get a food item into the right pocket. Answer the quiz questions and bounce to the exit in the fastest time possible!
                      </div>
                    </div> <!-- COLXS ROW COLLAPSETWO END -->
                  </div> <!-- ROW COLLAPSETWO END -->
                </div> <!-- COLLAPSETWO END -->
              </div> <!-- CARD 2 END-->

              <div class="card">
                <div class="card-header" role="tab" id="headingThree">
                  <h5 class="mb-0">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                      WASTED
                    </a>
                  </h5>
                </div>

                <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="row">
                    <div class="col-xs-3">
                      <a href="http://students.bcitdev.com/A00989687/forAffiliates/WASTED.html#" target="_blank"><img src="images/affiliates/wasted.png" class="img-responsive center-block"/></a>
                    </div>
                    <div class="col-xs-9">
                      <div class="card-block">
                        Web app that tracks what food you have on hand and reminds you when it's about to go bad
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="card">
                <div class="card-header" role="tab" id="headingFour">
                  <h5 class="mb-0">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                      FOOD TRIVIA
                    </a>
                  </h5>
                </div>

                <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour">
                  <div class="row">
                    <div class="col-xs-3">
                      <a href="#" target="_blank"><img src="images/affiliates/foodtrivia.png" class="img-responsive center-block"/></a>
                    </div>
                    <div class="col-xs-9">
                      <div class="card-block">
                        Educational webapp Quiz targeting young students about food waste and strategies to reduce those. Health stuff included.
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="card">
                <div class="card-header" role="tab" id="headingFive">
                  <h5 class="mb-0">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
                      FUBER
                    </a>
                  </h5>
                </div>

                <div id="collapseFive" class="collapse" role="tabpanel" aria-labelledby="headingFive">
                  <div class="row">
                    <div class="col-xs-3">
                      <a href="#" target="_blank"><img src="images/affiliates/fuber.png" class="img-responsive center-block"/></a>
                    </div>
                    <div class="col-xs-9">
                      <div class="card-block">
                        Fuber is a kitchen management tool that provides a list of groceries that you have bought at the store. Using a QR Scanner on a receipt to store the ingredients, our app suggests recipes on how to use them!
                      </div>
                    </div> <!-- COLXS ROW COLLAPSEFIVE END -->
                  </div> <!-- ROW COLLAPSEFIVE END -->
                </div> <!-- COLLAPSEFIVE END -->
              </div> <!-- CARD 5 END-->

            </div> <!-- ACCORDION END -->
          </div> <!-- PANEL BODY END -->
        </div>  <!-- PANEL INFO GROUP END-->
      </div> <!-- PANEL AFFILIATES END -->
    </div> <!-- ROW SUBBODY END -->
  </div> <!-- ROW MAINBODY END -->

<?php include 'footer.php';?>
