<!-- <?php

$sql = "SELECT * FROM questions WHERE planetid = $planetid AND level = $level";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // Output data of each row
  while($row = $result->fetch_assoc()) {
      echo "Question " . $row["questionID"] . " " . $row["question"] . "<br>";
  }
} else {
  echo "No Question available in the Database";
}

?> -->
