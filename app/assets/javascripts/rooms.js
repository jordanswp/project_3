// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//= require jquery3
//= require jquery_ujs

console.log('chatroom script is running')
// console.log($('.chatBoardArea').last())

// $( window ).load(function() {
//   $('.chatBoardArea').last().scrollIntoView();
// });

window.onload = () => {
  console.log('page is fully loaded');
  $('.chatBoardArea').scrollTop($('.chatBoardArea')[0].scrollHeight);

  // const height = document.querySelector('.chatBoardArea').height;
  // document.querySelector('.chatBoardArea').scrollTop()
};