//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {




//accordian drop down  list1
  $('h3').on('click', function() {
//    note: added a hidden class to css
    $(this).parent('.task-list').find('.accord_body').animate({
      height: ["toggle", "swing"],
      opacity: "toggle"
    }, 1500, function() {
      // Animation complete.
    });
    $(this).find('img').toggleClass('rotate');

  });


  //accordian drop down list2

//  $('.confirmation').on('mouseover', 'button', function() {

  //    note: also add -disabled: "disabled"- to html
  //    alert($('button').length);
//    $(this).parent('.confirmation').find('.ticket').slideDown();
//
//  });

  $('.flight-container').on('mouseover', 'button', function() {
    $('.ticket').slideDown();
  });

  $('.flight-container').on('mouseleave', function() {
    $('.ticket').slideUp();
  });


  $('.price-container').on('keyup change', '.quantity', function() {
    var price = +$(this).closest('.price-container').data('price');
    var quantity = +$(this).val();
    $('#total').text((price * quantity).toFixed(2));
  });

//gray out button when is no input
  $('.form-field').on('keyup', function(){
    // note: also add ->disabled: "disabled"<- to html
    var string = $(this).val().length;

    console.log(string)

    if ($(this).val().length > 0) {
      $('.submit-button').removeAttr('disabled');
    }
    else {
      $('.submit-button').attr('disabled', 'true');
    }
  });







//calendar date picker
  $(function() {
    $( "#datepicker" ).datepicker({dateFormat: "dd-mm-yy"});
  });











});
