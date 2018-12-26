class User < ApplicationRecord
  has_many :originator_user_id, class_name: "Event", foreign_key: "user_id"
  has_many :acceptor_user_id, class_name: "Event", foreign_key: "user_id"


  has_many :activities, through: :events
  has_many :locations, through: :events
end
