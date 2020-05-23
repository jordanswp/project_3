class RoomsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    @listing = Listing.find(room_params[:listing_id])
    @room = Room.new(room_params)
    @room.users.append([current_user, @listing.user])

    if @room.save
      redirect_to @room
    else
      render plain: 'Room is not created'
    end
  end

  def show
    # all rooms that include current_user
    @room = Room.find(params[:id])
    @existing_rooms = Room.all.each { |r| r.users.include?(current_user) }
    @message = Message.new
  end

  #delete room by selecting from inbox
  def destroy
  end

  private
  def room_params 
    params.require(:room).permit(:listing_id)
  end

end
