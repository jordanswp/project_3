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

  def render_inboxMsg(room)
    RoomsController.render partial: 'chatroom/inbox_message', locals: { room: room }
  end
end
