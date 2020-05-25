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
    console.log('received data from the broadcast!')
    // Called when there's incoming data on the websocket for this channel
    const chatBoardArea = $('.chatBoardArea');

    //append data received from broadcast to client side DOM
    if (data.message.creator === $('body').attr('data-username')) {

      //show to message_sender
      const timeStamp = $('<div>', { class: 'timestamp' }).text(`Sent: ${data.message.time}`);
      const msgBody = $('<div>', { class: 'sentMsg sentPoke' }).text(data.message.body);
      const msgBubble = $('<div>', { class: 'msgBubble' })
      const msgStripe = $('<div>', { class: 'activeChatStripe d-flex justify-content-end' });
      msgStripe.append(msgBubble.append(msgBody.append(timeStamp)))
      chatBoardArea.append(msgStripe)     
      //scroll when new message is appeared  
      chatBoardArea.scrollTop(chatBoardArea[0].scrollHeight);

    } else {
      //show to message_receiver
      const timeStamp = $('<div>', { class: 'timestamp' }).text(`Received: ${data.message.time}`);
      const msgBody = $('<div>', { class: 'receivedMsg receivedPoke' }).text(data.message.body);
      const msgBubble = $('<div>', { class: 'msgBubble' })
      const userAvatar = $('<div>', { class: 'userAvatar' }).text(data.message.creator);
      const msgStripe = $('<div>', { class: 'activeChatStripe d-flex justify-content-start' });

      msgStripe.append(userAvatar, msgBubble.append(msgBody.append(timeStamp)))
      chatBoardArea.append(msgStripe)   
      //scroll when new message is appeared  
      chatBoardArea.scrollTop(chatBoardArea[0].scrollHeight);    
    }
  }
});
