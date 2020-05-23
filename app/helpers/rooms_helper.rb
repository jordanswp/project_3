module RoomsHelper
  def find_other_username(room, current_user)
    if room.users.first.username == current_user.username
      room.users.second.username
    else
      room.users.first.username
    end
  end
end
