<?php
  include_once('database.php');

  class ManageQuestion {
    public $link;

    function __construct() {
      $db_connection = new dbConnection();
      $this->link = $db_connection->connect();
      return $this->link;
    }

    function createQuestion($username, $level, $planet, $game) // should use idPlayer?
    {
      $query = $this->link->prepare("INSERT INTO question (username, level, planet, game) VALUES (?,?,?,?)");
      $values = array($username, $level, $planet, $game);
      $query->execute($values);
      $counts = $query->rowCount();
      return $counts;
    }

    function showQuestion($idQuestion)
    {
      if(isset($idQuestion))
      {
          $query = $this->link->query("SELECT question FROM ((players INNER JOIN game ON players.idPlayer=game.idPlayer) INNER JOIN levels ON levels.idLevel=game.lastLevelPlayed INNER JOIN questions ON questions.idQuestion=levels.idQuestion) WHERE username = '$username'");
      }
      else
      {
          $query = $this->link->query("SELECT * FROM todo WHERE username = '$username' ORDER BY id DESC");
      }
      $counts = $query->rowCount();

      if($counts >= 1)
      {
        $result = $query->fetchAll();
      }
      else
      {
        $result = $counts;
      }
      return $result;
    }

    function countTodo($username, $label)
    {
      $query = $this->link->query("SELECT count(*) AS TOTAL_TODO FROM todo WHERE username = '$username' AND label = '$label'");
      $query->setFetchMode(PDO::FETCH_OBJ);
      $counts = $query->fetchAll();
      return $counts;
    }

    function editTodo($username, $id, $title, $desc, $progress, $due_date, $label)
    {
          $query = $this->link->query("UPDATE todo SET title = '$title', description = '$desc', progress = '$progress', due_date = '$due_date', label = '$label' WHERE username = '$username' AND id = '$id'");
          $counts = $query->rowCount();
          return $counts;
    }

    function deleteTodo($username, $id)
    {
      $query = $this->link->query("DELETE FROM todo WHERE username = '$username' AND id='$id'");
      $counts = $query->rowCount();
      return $counts;
    }

    function listIndTodo($param, $username)
    {
      foreach ($param as $key => $value) {
          $query = $this->link->query("SELECT * FROM todo WHERE $key = '$value' AND username = '$username'");
      }
      $counts = $query->rowCount();
      if ($counts == 1)
      {
        $result = $query->fetchall();
      }
      else
      {
          $result = $counts;
      }
      return $result;
    }
  }
?>
