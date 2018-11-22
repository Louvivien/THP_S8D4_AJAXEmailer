$(document).ready(function(){
  $('.email-select').click(function(){
    let CssId = $(this).attr('id'); 
    let EmailId = CssId.substring(0,CssId.indexOf("-"));

    $.ajax({
      url: "emails/"+ EmailId,
      data: {
        id: EmailId
      },
      dataType: "script"
    });
    
  });
});