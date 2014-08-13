//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {


//  $('h3').click (function() {
//    $('.accord_body').toggleClass('hidden');  .toggle();
//    $('.triangle_img').find('img').toggleClass('rotate');
//  });


//  .toggleClass('hidden')

  $('h3').on('click', function() {
    $(this).parent('.task-list').find('.accord_body').animate({
      height: ["toggle", "swing"],
      opacity: "toggle"
    }, 1500, function() {
      // Animation complete.
    });
    $(this).find('img').toggleClass('rotate');

  });





  $('.form-field').on('keyup', function(){
    var string = $(this).val().length;

    console.log(string)

    if ($(this).val().length > 0) {
      $('.submit-button').removeAttr('disabled');
    }
    else {
      $('.submit-button').attr('disabled', 'true');
    }
  });









});
