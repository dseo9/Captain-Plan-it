<?php
  include_once('database.php');

  class ManageUsers {
    public $link;

    function __construct() {
      $db_connection = new dbConnection();
      $this->link = $db_connection->connect();
      return $this->link;
    }

    function registerUsers($username, $password, $email, $numKeys, $stamps, $lastLogin) {
      $query = $this->link->prepare("INSERT INTO Players (username, player_pwd, email, num_keys, stamps, lastLogin) VALUES (?,?,?,?,?,?)");
      $values = array($username, $password, $email, $numKeys, $stamps, $lastLogin);
      $query->execute($values);
      $counts = $query->rowcount();
      return $counts;
    }

    function loginUsers($username, $password) {
      $db_password = $this->link->query("SELECT player_pwd FROM Players WHERE username = '$username'")->fetchAll()[0]['player_pwd'];
      if (password_verify($password, $db_password))
      {
        $query = $this->link->query("SELECT * FROM Players WHERE username = '$username'");
        $rowcount = $query->rowCount();
        return $rowcount;
      }
      return 0;
    }

    function getUserInfo($username) {
      $query = $this->link->query("SELECT * FROM Players WHERE username = '$username'");
      $rowcount = $query->rowCount();
      if($rowcount == 1) {
        $result = $query->fetchAll();
        return $result;
      } else {
        return $rowcount;
      }
    }
  }
 ?>
