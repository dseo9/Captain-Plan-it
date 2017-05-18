$(function(){
  $(".checked").hide();
  $(".empty").click(function(){
    $(this).hide();
    var chd = $(this).attr("data-emptyid");
    $('#'+chd).show();

  });
});
