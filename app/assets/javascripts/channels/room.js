App.room = App.cable.subscriptions.create("RoomChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
    console.log('connected to room channel!')

  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
    console.log('discconnected from room channel!')
  },

  received: function(data) {
      // Called when there's incoming data on the websocket for this channel

      const chatBoardArea = $('.chatBoardArea');

      //sender side DOM; check identity
      if (data.messages.user_id == document.body.dataset.id) {   

          //seller activechat DOM
          chatBoardArea.append(data.messages.sender_message); 
          chatBoardArea.scrollTop(chatBoardArea[0].scrollHeight);

          document.querySelector('.inboxSnippet').innerText = data.messages.body

      } else { 

        //receiver side DOM
        //activechat DOM
        if (data.messages.room_id == document.querySelector('.chatPageContainer').dataset.room_id) {        

          chatBoardArea.append(data.messages.receiver_message);   
          chatBoardArea.scrollTop(chatBoardArea[0].scrollHeight);  

          //receiver inbox DOM
          // const inboxContainer = $('.inboxContainer');
          // inboxContainer.insertBefore(data.messages.inboxMsg, inboxContainer.childNodes[1]);
        }  
      }  
  }
});
