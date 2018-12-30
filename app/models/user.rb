class User < ApplicationRecord
  has_many :events, foreign_key: "user_id"
  has_many :bookings, class_name: "Event", foreign_key: "friend_user_id"

  has_many :activities, through: :events
  has_many :locations, through: :events
end
