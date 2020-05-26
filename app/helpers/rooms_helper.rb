module RoomsHelper
  #returns true if there is already a room between two users
  def room_exist?(listing_id, user_one, user_two)
    rooms = Room.all.where(listing_id: listing_id)
    rooms.any? do |r|
      r.users.include?(user_one) && r.users.include?(user_two)
    end
  end

  #find common room between two users for current listing_id
  def find_room(listing_id, user_one, user_two)
    rooms = Room.all.where(listing_id: listing_id)   
    rooms.find do |r|   
      r.users.include?(user_one) && r.users.include?(user_two)
    end
  end

  #return username of other user in the same room as current user
  def find_other_username(room, current_user)
    if room.users.first.username == current_user.username
      room.users.second.username
    else
      room.users.first.username
    end
  end

  def last_message_timestamp(room)
    room.messages.last.created_at.strftime('%I:%M%p')
  end

end
