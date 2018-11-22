$(document).ready(function(){
  $('.email-select').click(function(){
    var CssId = $(this).attr('id'); 

    var EmailId = CssId.substring(0,CssId.indexOf("-"));

    $.ajax({
      url: "emails/"+ EmailId,
      data: {
        id: EmailId
      },
      dataType: "script"
    });

  });
});