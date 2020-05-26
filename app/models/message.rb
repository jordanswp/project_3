class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  # #run broadcast job after message is saved into db
  # after_create_commit {
  #   MessageBroadcastJob.perform_later(self)
  # }

end