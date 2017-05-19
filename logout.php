<?php
session_start();
if (isset($_SESSION['player_name']))
  {
    session_destroy();
    header("location: index.php");
  }
 ?>
