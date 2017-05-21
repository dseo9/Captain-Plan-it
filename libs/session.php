<?php
  session_start();
  if(isset($_SESSION['player_name']))
  {
    $session_name = $_SESSION['player_name'];
  }
  else
  {
    header("location: index.php");
  }
 ?>
