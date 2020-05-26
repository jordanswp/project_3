class MessageBroadcastJob < ApplicationJob
  queue_as :default

  # def perform(message)
  #   # Do something when a broadcast job is run
  #   # broadcast to all subscribers of the 'room_channel'
  #   ActionCable.server.broadcast 'room', {
  #     message: render_message(message)
  #   }
  # end

  # private
  # def render_message(message)
  #   MessagesController.render(
  #     partial: 'chatroom/message', locals: { message: message }
  #   )
  # end
end
