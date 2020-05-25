// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//= require jquery3
//= require jquery_ujs

console.log('chatroom script is running')

$(window).on('load', function () {

  $('.chatBoardArea').scrollTop($('.chatBoardArea')[0].scrollHeight);

  //sends message after enter is pressed
  $('#message_body').keypress(function(event) {
    if (event.which == 13 && !event.shiftKey) {
      console.log('enter is pressed without shift');
      $('#submitForm').submit();
    }
  });

  //clears form after submit successful
  $('#submitForm').on('ajax:complete', () => {
    $('#message_body').val('');
  })

});

