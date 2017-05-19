<?php

$sql = "SELECT * FROM questions WHERE planetid = $planetid AND level = $level";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // Output data of each row
  while($row = $result->fetch_assoc()) {
      echo "Question " . $row["questionID"] . " " . $row["question"] . "<br>";

      $my_array = array($row["wrong1"], $row["wrong2"], $row["wrong3"], $row["correct"]);

      shuffle($my_array);
  }
} else {
  echo "This level is currently in progress";
}

?>
