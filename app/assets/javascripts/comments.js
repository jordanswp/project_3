// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//= require jquery3
//= require jquery_ujs

console.log('script is running');


$( document ).ready(function() {


  $('#commentForm').on('ajax:success', () => {
  console.log('button is clicked!');

  const commentList = document.querySelector('#commentList');
  const commentTitle = document.querySelector('#commentTitle');
  const commentBody = document.querySelector('#commentBody');
  const currentUser = document.body.getAttribute('data-username');

  const newestCommentTitle = document.createElement('p');
  newestCommentTitle.innerText = `${commentTitle.value}`;
  const newestCommentBody = document.createElement('p');
  newestCommentBody.innerHTML = `${commentBody.value}`;
  const newestCommentPoster = document.createElement('p');
  newestCommentPoster.innerHTML = `Posted by: ${currentUser}`;

  commentList.classList.add('cssSingleComment');
  newestCommentTitle.classList.add('cssSubheading')

  commentList.appendChild(newestCommentTitle)
  commentList.appendChild(newestCommentBody)
  commentList.appendChild(newestCommentPoster)

  });

  console.log('eventListener is loaded')

})


