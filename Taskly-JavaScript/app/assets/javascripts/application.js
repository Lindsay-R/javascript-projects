//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {


//  $('h3').click (function() {
//    $('.accord_body').toggleClass('hidden');  .toggle();
//    $('.triangle_img').find('img').toggleClass('rotate');
//  });




  $('h3').on('click', function() {
    $(this).parent('.task-list').find('.accord_body').toggleClass('hidden');
    $(this).find('img').toggleClass('rotate');
  });







});
