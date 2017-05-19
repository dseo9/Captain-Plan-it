<?php
  class dbConnection {
    protected $db_conn;
    public $db_name = 'db_captain';
    public $db_user = 'root';
    public $db_pass = '';
    public $db_host = 'localhost';

    // protected $db_conn;
    // public $db_name = 'id1702097_db_captain';
    // public $db_user = 'id1702097_root';
    // public $db_pass = 'abc123!@#';
    // public $db_host = 'localhost';

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
