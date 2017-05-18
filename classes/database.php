<?php
  class dbConnection {
    protected $db_conn;
    public $db_name = 'db_captain';
    public $db_user = 'root';
    public $db_pass = 'password';
    public $db_host = 'localhost';

    function connect() {
      try
      {
        $this->db_conn = new PDO("mysql:host=$this->db_host;dbname=$this->db_name",$this->db_user,$this->db_pass);
        return $this->db_conn;
      }
      catch (PDOException $e)
      {
        return $e->getMessage();
      }
    }
  }
 ?>
 // $servername = "localhost";
 // $username = "username";
 // $password = "password";
 //
 // // Create connection
 // $conn = new mysqli($servername, $username, $password);
 //
 // // Check connection
 // if ($conn->connect_error) {
 //   die("Connection failed: " . $conn->connect_error);
 // }
 // echo "Connected successfully";
