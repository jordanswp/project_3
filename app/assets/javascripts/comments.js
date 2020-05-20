// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//= require jquery3
//= require jquery_ujs

console.log('script is running');


$( document ).ready(function() {


  $('#commentForm').on('ajax:success', () => {
  console.log('button is clicked!');

  const allComments = document.querySelector('#commentList');
  const commentTitle = document.querySelector('#commentTitle');
  const commentBody = document.querySelector('#commentBody');

  const newestCommentTitle = document.createElement('p');
  newestCommentTitle.innerText = `Comment Title: ${commentTitle.value}`;
  const newestCommentBody = document.createElement('p');
  newestCommentBody.innerHTML = `Comment Body: ${commentBody.value}<br><br><br><br>`;

  allComments.appendChild(newestCommentTitle)
  allComments.appendChild(newestCommentBody)

  });

  console.log('eventListener is loaded')

})

