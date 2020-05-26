class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    # inbox logic
    @existing_rooms = current_user.rooms
    @messages = Message.all

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
    #inbox security (check if user is in room)
    if current_user.rooms.exists?(params[:id])

      # inbox logic
      @room = Room.find(params[:id])
      @existing_rooms = current_user.rooms

      #all messages from current room
      @room_messages = Message.all.where(room_id: @room.id)
      @message = Message.new
      @messages = Message.all
    else 
      redirect_to rooms_path
    end

  end

  #delete room by selecting from inbox
  def destroy
  end

  private
  def room_params 
    params.require(:room).permit(:listing_id)
  end

end
