<?php
  session_start();
  if(isset($_SESSION['player_id']))
  {
    $session_name = $_SESSION['player_id'];
  }
  else
  {
    header("location: index.php");
  }
 ?>
