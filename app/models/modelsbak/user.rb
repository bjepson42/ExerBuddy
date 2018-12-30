class User < ApplicationRecord
  has_many :events, foreign_key: "originator_user_id"
  has_many :friends, class_name: "Bookings", foreign_key: "acceptor_user_id"                                                                   O09`
  has_many :bookings, through: :events

  has_many :activities, through: :events
  has_many :locations, through: :events
end
