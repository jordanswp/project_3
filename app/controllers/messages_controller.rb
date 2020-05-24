class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @message = Message.new(message_params)


    puts '--------------------------'
    puts message_params
    puts '--------------------------'

    if @message.save!
      #do something i guess?
    else
      puts '****************'
      puts 'message not saved'
      puts '****************'
    end
  end
  
  private
  def message_params 
    params.require(:message).permit(:body, :room_id, :user_id)
  end

end
