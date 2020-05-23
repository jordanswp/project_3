class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    # inbox logic
    @existing_rooms = Room.all.select { |r| r.users.include?(current_user) }

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
    # inbox logic
    @room = Room.find(params[:id])
    @existing_rooms = Room.all.select { |r| r.users.include?(current_user) }

    #all messages from current room
    @messages = Message.all.where(room_id: @room.id)
    @message = Message.new

    user_session['last_room_id'] = @room.id
  end

  #delete room by selecting from inbox
  def destroy
  end

  private
  def room_params 
    params.require(:room).permit(:listing_id)
  end

end
