<?php
  //Show errors
  error_reporting(E_ALL);
  ini_set('display_errors', 1);

  $result_ans = "<p>There are 3 wrong answers and 1 right one! Choose the right answer!</p>";

  include_once('classes/manageQuestion.php');
  include_once('session.php');
  $init = new ManageQuestion();


  // get the planet name and planet id
  if(isset($_GET['p_name']))
  {
    $id_planet = $init->getPlanetID($_GET['p_name'])[0]['idPlanet'];
    // Start a new game
    // echo $_SESSION['player_id'];
    $current_game = $init->getGameInfo($_SESSION['player_id']);
    if($current_game == 0 || $current_game[0]['finished'] == 'yes') {
      // start a new game
      $recorded_game = $init->startGame($_SESSION['player_id'], $id_planet);
    } else {
      // echo "You are still playing this planet";
    }

    $level = $init->showQuestion($id_planet);
    shuffle($level);
    // print_r($level[0]['idQuestion']);
  }

  // show the question
  if(isset($_GET['id_question']))
  {
    $question = $init->getQuestion($_GET['id_question'])[0]['Question'];
    // $level = $init->showQuestion($id_planet);
    // print_r($level[0]['idQuestion']);
  }

  // show the answers for each question
  if(isset($_GET['id_question']))
  {
    $answers_data = $init->getAnswers($_GET['id_question']);
    shuffle($answers_data);
  }

  // verify the correct answer
  if(isset($_POST['submit_btn'])) {

    $response = $init->checkAnswer($_POST['submit_btn'], $_GET['id_question']);

    //Preparing data for the database
    $db_id_game = (int)$init->getGameInfo($_SESSION['player_id'])[0]['idGame'];
    $db_level = (int)$_GET['lv'];
    $db_attempts =  (int)1;
    $db_id_level = (int)$_GET['lv_id'];
    $db_id_question = (int)$_GET['id_question'];
    // echo " ID LEVEL: ".$init->getDetails($db_id_game)[0]['idLevel'];
    // echo " LEVELLEVEL ".$db_id_level;
    if($init->getDetails($db_id_game)[0]['idLevel'] == $db_id_level) {
      // echo "RECORDING NEW DATA". $db_id_game, $db_level, $db_attempts, $db_id_level, $db_id_question;
      $recorded_attempt = $init->getDetails($db_id_game);
      // echo "WHAT IS RECORDED IS ". $recorded;
      $updateAttempt = $init->setDetails((int)$recorded_attempt[0]['attempts']+1, "attempts",  (int)$recorded_attempt[0]['idDetails']);
      // echo " RESULT OF NEW DATA: ". $recorded;
    } else {
      $recorded = $init->addDetails($db_id_game, $db_level, $db_attempts, $db_id_level, $db_id_question);
      // echo "CREATING NEW DETAILS";
      // echo "Nothing to Store here";
      // echo "SCORE: ". ((int)$recorded_attempt[0]['attempts'])+1;
    }
    // if ($recorded == 0){
    // }
    // print_r($response);
    if($response[0]['correct'] == 1){
      $result_ans = "Right answer";
      $updateAttempt = $init->setDetails((int)$init->getDetails($db_id_game)[0]['attempts'], "attempts",  (int)$init->getDetails($db_id_game)[0]['idDetails']);
      $updateDetails = $init->setDetails("yes", "Done",  (int)$init->getDetails($db_id_game)[0]['idDetails']);
    } else {
      $result_ans = "Wrong answer";

    }
  }
  $GAME_ID = $init->getGameInfo($_SESSION['player_id']);
  // echo $GAME_ID;
  $levelInfo = $init->getDetails($GAME_ID[0]['idGame']);
  // echo "DATA FROM ".$gameInfo[0]['idPlanet'];

  if($levelInfo[0]['level'] == 6 && $levelInfo[0]['Done'] == "yes") {
    $p_result = $init->setPlayerStats((int)$init->getUserInfo($_SESSION['player_id'])[0]['num_keys']+1, "num_keys", $_SESSION['player_id']);
    $result = $init->endGame($levelInfo[0]['idGame']);
    header("location: planets.php?cleaned=".$GAME_ID[0]['idPlanet']);
  }

 ?>
