<?php
  include_once('database.php');

  class ManageUsers {
    public $link;

    function __construct() {
      $db_connection = new dbConnection();
      $this->link = $db_connection->connect();
      return $this->link;
    }

    function registerUsers($username, $email, $password, $password, $password,) {
      $query = $this->link->prepare("INSERT INTO players (username, email, password, password) VALUES (?,?,?,?)");
      $values = array($username, $email, $password, $password);
      $query->execute($values);
      $counts = $query->rowcount();
      return $counts;
    }

    function loginUsers($username, $password) {
      $db_password = $this->link->query("SELECT password FROM players WHERE username = '$username'")->fetchAll()[0]['password'];
      if (password_verify($password, $db_password))
      {
        $query = $this->link->query("SELECT * FROM players WHERE username = '$username'");
        $rowcount = $query->rowCount();
        return $rowcount;
      }
      return 0;
    }

    function getUserInfo($username) {
      $query = $this->link->query("SELECT * FROM players WHERE username = '$username'");
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
