// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//= require jquery3
//= require jquery_ujs

console.log('chatroom script is running')
// console.log($('.chatBoardArea').last())

// $( window ).load(function() {
//   $('.chatBoardArea').last().scrollIntoView();
// });

$(window).on('load', function () {
  $('.chatBoardArea').scrollTop($('.chatBoardArea')[0].scrollHeight);

  $('#message_body').keypress(function(event) {
    if (event.which == 13 && !event.shiftKey) {
        console.log('enter is pressed without shift')
        $('#submitForm').submit()
    }
  });
});

