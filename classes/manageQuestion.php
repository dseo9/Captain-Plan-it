<?php
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
      $query = $this->link->prepare("INSERT INTO question (username, level, planet, game) VALUES (?,?,?,?)");
      $values = array($username, $level, $planet, $game);
      $query->execute($values);
      $counts = $query->rowCount();
      return $counts;
    }

    function getPlanetID($planet_name)
    {
      $query = $this->link->query("SELECT idPlanet FROM planets WHERE Planet_name='$planet_name'");
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
      $query = $this->link->query("SELECT * FROM answers WHERE idQuestion='$question_id'");
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
        // $query = $this->link->query("SELECT Question FROM level l, planets p, questions q WHERE p.idPlanet=l.idPlanet AND l.idQuestion=q.idQuestion AND p.idPlanet = '$id_planet'");

        $query = $this->link->query("SELECT questions.idQuestion, questions.Question FROM (planets INNER JOIN levels ON planets.idPlanet=levels.idPlanet) INNER JOIN questions ON levels.idQuestion=questions.idQuestion WHERE planets.idPlanet='$idPlanet'");
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

    function getQuestion($id_question)
    {
        // $query = $this->link->query("SELECT Question FROM level l, planets p, questions q WHERE p.idPlanet=l.idPlanet AND l.idQuestion=q.idQuestion AND p.idPlanet = '$id_planet'");

        $query = $this->link->query("SELECT Question FROM questions WHERE questions.idQuestion='$id_question'");
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
