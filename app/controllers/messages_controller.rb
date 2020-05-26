class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @message = Message.new(message_params)

    if @message.save
      # prepare data for broadcast    
      ActionCable.server.broadcast('room',
        message: {
          room_id: @message.room_id,
          creator: @message.user.username,
          body: @message.body,
          time: @message.created_at.strftime("%I:%M%p")
        }
      )

    else
      redirect_to rooms_path
    end
  end

  private
  def message_params 
    params.require(:message).permit(:body, :room_id, :user_id)
  end



end
