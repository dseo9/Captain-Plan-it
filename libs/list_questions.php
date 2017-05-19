<?php

  include_once('classes/ManageQuestion.php');
  include_once('session.php');
  $init = new ManageQuestion();

  if(isset($_GET['p_name']))
  {
    $id_planet = $init->getPlanetID($_GET['p_name'])[0]['idPlanet'];
    $level = $init->showQuestion($id_planet);
    // print_r($level[0]['idQuestion']);
  }

  if(isset($_GET['id_question']))
  {
    $question = $init->getQuestion($_GET['id_question'])[0]['Question'];
    // $level = $init->showQuestion($id_planet);
    // print_r($level[0]['idQuestion']);
  }
  if(isset($_GET['id_question']))
  {
    $answers_data = $init->getAnswers($_GET['id_question']);
  }

 ?>
