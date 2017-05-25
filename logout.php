<?php
session_start();
if (isset($_SESSION['player_id']))
  {
    session_destroy();
    header("location: index.php");
  }
 ?>
