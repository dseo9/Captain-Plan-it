<?php

  class dbConnection {
    // assign variables
    protected $db_conn;
    public $db_name = 'db_captain';
    public $db_user = 'admin';
    public $db_pass = 'pass';
    public $db_host = '34.223.205.71';

    // public $db_user = 'root';
    // public $db_pass = '';
    // public $db_host = 'localhost';

    // connect to database
    function connect() {
      try {
        $this->db_conn = new PDO("mysql:host=$this->db_host;dbname=$this->db_name",$this->db_user,$this->db_pass);
        $this->db_conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->db_conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        return $this->db_conn;
      } catch (PDOException $e) {
        return $e->getMessage();
      }
    }
  }
?>
