class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @message = Message.new(message_params)

    if @message.save
      puts 'yay! message saved :)'
    else
      redirect_to rooms_path
    end
  end

  private
  def message_params 
    params.require(:message).permit(:body, :room_id, :user_id)
  end

  

end
