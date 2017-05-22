<?php

  include_once('classes/ManageQuestion.php');
  include_once('session.php');
  $init = new ManageQuestion();

  // get the planet name and planet id
  if(isset($_GET['p_name']))
  {
    $id_planet = $init->getPlanetID($_GET['p_name'])[0]['idPlanet'];
    $level = $init->showQuestion($id_planet);
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
  }


  // verify the correct answer
  if(isset($_POST['submit_btn']))
  {
    $response = $init->checkAnswer($_POST['submit_btn'], $_GET['id_question']);
    // print_r($response);
    if($response[0]['correct'] == 1){
         echo "You are write!";
    } else {
         echo "Wrong answer";
    }

  }

 ?>
