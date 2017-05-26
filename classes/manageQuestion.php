<?php
//Show errors
error_reporting(E_ALL);
ini_set('display_errors', 1);

  include_once('database.php');

  class ManageQuestion {
    public $link;

    function __construct() {
      $db_connection = new dbConnection();
      $this->link = $db_connection->connect();
      return $this->link;
    }

    function createQuestion($username, $level, $planet, $game)
    {
      $query = $this->link->prepare("INSERT INTO Question (username, level, planet, game) VALUES (?,?,?,?)");
      $values = array($username, $level, $planet, $game);
      $query->execute($values);
      $counts = $query->rowCount();
      return $counts;
    }

    function startGame($playerId, $planetId) {
      $query = $this->link->prepare("INSERT INTO Game (idPlayer, idPlanet) VALUES (?, ?)");
      $values = array($playerId, $planetId);
      $query->execute($values);
      $counts = $query->rowCount();
      return $counts;
    }

    function endGame($gameID) {
      $query = $this->link->query("UPDATE Game SET finished = 'true' WHERE idGame = '$gameID'");
      $counts = $query->rowCount();
      return $counts;
    }

    function getGameInfo($playerId) {
      $query = $this->link->query("SELECT * FROM Game WHERE idPlayer='$playerId' ORDER BY idGame DESC");
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

    function addDetails($id_game, $level, $attempts, $id_level, $id_question) {
      $query = $this->link->prepare("INSERT INTO Details (idGame, level, attempts, idLevel, idQuestion) VALUES (?,?,?,?,?)");
      $values = array($id_game, $level, $attempts, $id_level, $id_question);
      $query->execute($values);
      $counts = $query->rowCount();
      return $counts;
    }

    function getPlanetID($planet_name)
    {
      $query = $this->link->query("SELECT idPlanet FROM Planets WHERE Planet_name='$planet_name'");
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

    function getDetails($id_game) {
      $query = $this->link->query("SELECT * FROM Details WHERE idGame='$id_game' ORDER BY idLevel DESC");
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

    function getAnswers($question_id)
    {
      $query = $this->link->query("SELECT * FROM Answers WHERE idQuestion='$question_id'");
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

    function showQuestion($idPlanet)
    {
        // $query = $this->link->query("SELECT Question FROM level l, Planets p, Questions q WHERE p.idPlanet=l.idPlanet AND l.idQuestion=q.idQuestion AND p.idPlanet = '$id_planet'");

        $query = $this->link->query("SELECT Questions.idQuestion, Questions.Question, Levels.idLevel FROM (Planets INNER JOIN Levels ON Planets.idPlanet=Levels.idPlanet) INNER JOIN Questions ON Levels.idQuestion=Questions.idQuestion WHERE Planets.idPlanet='$idPlanet'");
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

    function checkAnswer($answer, $id_question)
    {
        $query = $this->link->query("SELECT correct FROM Answers WHERE answer='$answer' AND idQuestion='$id_question'");
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

    function setDetails($value, $field, $id_details) {
      $query = $this->link->query("UPDATE Details SET $field = '$value' WHERE idDetails = '$id_details'");
          $counts = $query->rowCount();
          return $counts;
    }

    function getQuestion($id_question)
    {
        // $query = $this->link->query("SELECT Question FROM level l, Planets p, Questions q WHERE p.idPlanet=l.idPlanet AND l.idQuestion=q.idQuestion AND p.idPlanet = '$id_planet'");

        $query = $this->link->query("SELECT Question FROM Questions WHERE Questions.idQuestion='$id_question'");
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
  }

?>
