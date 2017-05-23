<?php include 'statics/header.php';?>

<div class="row mainbody">
  <div class="title_header"><h5>Contact Us</h5></div>
  <br /><br />
  <div class="row subbody container-fluid">
    <form class="form-group" action="planets.php" method="post">

      <input type="hidden" name="recipients" class="form-control" id="recipient" value="corinne.kakiuchi@gmail.com">
  		<input type="hidden" name="subject" class="form-control" id="subject" value="Message from Captain-Plan_it webapp">
  		<input type="hidden" name="thanks_url" class="form-control" id="redirection" value="./thanks.php">
      <input type="email" class="form-control" id="pink_border" name="Email" placeholder="Email"><span id='email_error'></span>
      <br>
      <input type="text" class="form-control" id="blue_border" name="subject" placeholder="What is your topic?">
      <br>
      <textarea class="form-control" id="yellow_border" name="text_area" rows="8" cols="80">Type your message here!</textarea><span id='message_error'></span>
      <button type="submit" class="btn btn-success btn-lg" onsubmit='return validateContactForm()'>Submit</button>
    </form>

  </div><!-- ROW SUBBODY END-->
</div><!-- ROW MAINBODY END-->

<?php include 'statics/footer.php';?>
