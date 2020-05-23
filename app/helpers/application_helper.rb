module ApplicationHelper
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
    rooms.each do |r|   
      if r.users.include?(user_one) && r.users.include?(user_two)
      r
      end
    end
  end
end
