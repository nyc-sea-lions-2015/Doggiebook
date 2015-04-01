$(document).ready(function() {

   $(".login_button").click(function(){
        $(".login").toggle();
    });

     $(".signup_button").click(function(){
        $(".signup").toggle();
    });

   $("#edit_button").click(function(){
        $("#edit_form").toggle();
    });

   $(".create_comment").click(function(event){
    event.preventDefault();
    $(".the_new_form").toggle();
    }); //create_button ending

   // AJAX call for posting new comment
   $("form.new_form").submit(function(event){
    event.preventDefault();
    $target = $(event.target)
    var form = this
    $.ajax({
      url: $target.attr('action'), // /greeting
      type: $target.attr('method'), // 'post'
      data: $target.serialize(),
    }).done(function(response) {
      console.log(response);
      $('.comments').replaceWith(response);
      form.reset(); // clear form
    })
    .fail(function(err) {
      console.log("error:", err);
    })
    .always(function() {
      console.log("complete");
    });
  });

  // AJAX call for showing comment
  $(".comment_title").click(function(event){
    event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      url: $target.attr('href'), // /greeting
      type: $target.attr('method'), // 'get'
      data: $target.serialize()
    }).done(function(response) {
      console.log(response);
      $('.comments').append("<div>"+response.content+"<div>");

    })
    .fail(function(err) {
      console.log("error:", err);
    })
    .always(function() {
      console.log("complete");
    });
  });






}); //ends the documant.ready
