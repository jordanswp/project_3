class RoomsController < ApplicationController
  before_action :authenticate_user!

  def create
    @message = Message.new(message_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def room_params 
    params.require(:room).permit(:listing_id)
  end

end
