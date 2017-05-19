<?php
  //Show errors
  error_reporting(E_ALL);
  ini_set('display_errors', 1);

  function console_log( $data ){
    echo '<script>';
    echo 'console.log('. json_encode( $data ) .')';
    echo '</script>';
  }
  //End Debug Error functions

  include_once('classes/ManageQuestion.php');
  include_once('session.php');
  $init = new ManageQuestion();

  // if(isset($_GET['id']))
  // {
  //   $id = $_GET['id'];
  //   $list_todo = $init->listIndTodo(array('id'=>$id), $session_name);
  // }
  // else
  // {
  //   if(isset($_GET['label']))
  //   {
  //     $label = $_GET['label'];
  //     $list_todo = $init->listTodo($session_name, $label);
  //   }
  //   else
  //   {
  //     $list_todo = $init->listTodo($session_name);
  //   }
  // }

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

  // if(isset($_GET['']))
  // {
  //
  // }
 ?>
