<?php include 'header.php';?>


<!-- make a form submission page for contacting our group -->
<div class="row mainbody">
  <div class="title_header"><h5>Contact Us</h5></div>
  <br>
  <div class="col-sm-2"></div>

  <div class="col-sm-8">
    <form class="form-group" action="index.php" method="post">
      <input type="text" class="form-control" name="subject" placeholder="What is your topic?">
      <textarea class="form-control" name="text_area" rows="8" cols="80">Type your message here!</textarea>
      <button type="submit" class="btn btn-default btn btn-success">Submit</button>
    </form>

    <div class="col-sm-2"></div>
  </div>
</div>

<?php include 'footer.php';?>
