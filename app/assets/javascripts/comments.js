// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//= require jquery3
//= require jquery_ujs

console.log('script is running');


$( document ).ready(function() {

  $('#commentForm').on('ajax:success', () => {
  console.log('button is clicked!');

  const newCommentDiv = document.querySelector('#newCommentDiv');
  const commentTitle = document.querySelector('#commentTitle');
  const commentBody = document.querySelector('#commentBody');
  const currentUser = document.body.getAttribute('data-username');

  const newestCommentTitle = document.createElement('p');
  newestCommentTitle.innerText = `${commentTitle.value}`;
  const newestCommentBody = document.createElement('p');
  newestCommentBody.innerHTML = `${commentBody.value}`;
  const newestCommentPoster = document.createElement('p');
  newestCommentPoster.innerHTML = `Posted by: ${currentUser}`;

  const newestComment = document.createElement('div')
  newestComment.classList.add('cssNewComment');
  newestCommentTitle.classList.add('cssSubheading')

  newestComment.appendChild(newestCommentTitle)
  newestComment.appendChild(newestCommentBody)
  newestComment.appendChild(newestCommentPoster)

  newCommentDiv.appendChild(newestComment)
  //scroll to newest reply 
  newestComment.classList.add('animate_fadeInUp')
  document.querySelector('#scroll').scrollIntoView();

  });

  $('#commentForm').on('ajax:complete', () => {
    $('#commentTitle').val('');
    $('#commentBody').val('');
  })


})


