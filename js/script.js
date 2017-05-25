// stampboard daily login
$(function(){
  $(".checked").hide();
  $(".empty").click(function(){
    $(this).hide();
    var chd = $(this).attr("data-emptyid");
    $('#'+chd).show();
  });
});

//avatar page - changing features
$(function(){
  $(".next_hair").hide();
  $(".previous_hair").click(function(){
    $(this).hide();
    var chd = $(this).attr("data-emptyid");
    $('#'+chd).show();
  });
});
