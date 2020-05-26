class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    # inbox logic, orders current_user rooms by latest message created
    @existing_rooms = current_user.rooms.joins(:messages).order('messages.created_at DESC')
    @messages = Message.all

  end

  def create
    @listing = Listing.find(room_params[:listing_id])
    @room = Room.new(room_params)
    @room.users.append([current_user, @listing.user])

    if @room.save
      redirect_to @room
    else
      redirect_to rooms_path
    end
  end

  def show
    #inbox security (check if user is in room)
    if current_user.rooms.exists?(params[:id])

      # inbox logic, orders current_user rooms by latest message created
      @existing_rooms = current_user.rooms.joins(:messages).order('messages.created_at DESC')

      #all messages from current room
      @room = Room.find(params[:id])
      @room_messages = Message.all.where(room_id: @room.id)
      @message = Message.new
    else 
      redirect_to rooms_path
    end
  end

  #delete room by selecting from inbox
  def destroy
    @room = Room.find(params[:id])

    @room.destroy
    redirect_to rooms_path
  end

  private
  def room_params 
    params.require(:room).permit(:listing_id)
  end

end
