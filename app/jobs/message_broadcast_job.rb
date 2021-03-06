class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    # Do something when a broadcast job is run
    # broadcast to all subscribers of the 'room_channel'
    ActionCable.server.broadcast 'room', {
      messages: {
        sender_message: render_sender(message),
        receiver_message: render_receiver(message),
        user_id: message.user_id,
        room_id: message.room_id,
        # inboxMsg: render_inboxMsg,
        body: message.body
      }
    }

  end

  private

  def render_sender(message)
    MessagesController.render partial: 'chatroom/sender_message', locals: { message: message }
  end

  def render_receiver(message)
    MessagesController.render partial: 'chatroom/receiver_message', locals: { message: message }
  end

  # def render_inboxMsg(message)
  #   RoomsController.render partial: 'chatroom/special_inboxMsg', locals: { room: message.room }
  # end
end
