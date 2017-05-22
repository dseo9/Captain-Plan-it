<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Test Database Create</title>
  </head>
  <body>

    <?php

    // connect to localhost and database
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "captainplanit";

    // Create connection using mysqli
    $conn = new mysqli($servername, $username, $password, $dbname);

    // shows error message when failed to connect to database
      if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }

    // sets page to planetid and level values of page (based on my database)
    $planetid = 1;
    $level = 1;

    // selects everything in database question where planetid and level same with page values
      $sql = "SELECT * FROM questions WHERE planetid = $planetid AND level = $level";
      $result = $conn->query($sql);

    // output the question and place all answer values inside an array then shuffle the array, if no values exist, return else statement
      if ($result->num_rows > 0) {
        // Output data of each row
        while($row = $result->fetch_assoc()) {
            echo "Question " . $row["questionID"] . " " . $row["question"] . "<br>";

            $correct = $row["correct"];

            $my_array = array($row["wrong1"], $row["wrong2"], $row["wrong3"], $row["correct"]);
            shuffle($my_array);
        }
      } else {
        echo "This level is under construction";
      }

    ?>

<!-- bootstrap css link (used just to separate buttons with column and rows)-->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>


<!-- assign button.value to be equals to the value inside the array -->
<form method="post" action="planet.php">
  <div class="container-fluid" id="body">
    <div class="btn-group">
      <div class="row">
        <div class="col-lg-6">
          <input type="submit" value="<?php echo $my_array[0]; ?>" name="option1" onClick="checkAnswer(this.value)">
        </div>
        <div class="col-lg-6">
          <input type="submit" value="<?php echo $my_array[1]; ?>" name="option2" onClick="checkAnswer(this.value)">
        </div>
        <br>
        <div class="row">
          <div class="col-lg-6">
              <input type="submit" value="<?php echo $my_array[2]; ?>" name="option3" onClick="checkAnswer(this.value)">
          </div>
          <div class="col-lg-6">
              <input type="submit" value="<?php echo $my_array[3];?>" name="option4" onClick="checkAnswer(this.value)">
          </div>
        </div>
      </div>
    </div>
  </div>
</form>


<!-- checks if user pressed button is equal to correct answer in database -->
<script language="javascript">
  function checkAnswer(x) {
    var correct = "<?php echo $correct; ?>";
    if (x == correct) {
      alert("Correct!");
    } else {
      alert("Incorrect!");
    }
  }
</script>
