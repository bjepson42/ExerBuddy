class User < ApplicationRecord
  has_secure_password
  has_many :events, foreign_key: "user_id"
  has_many :bookings, class_name: "Event", foreign_key: "friend_user_id"
  has_many :activities, through: :events
  has_many :locations, through: :events
  validates :gender, inclusion: { in: %w(male female),
    message: "Please enter male or female for gender!" }
  validates :phone, format: { with: /\A\d{3}-\d{3}-\d{4}\z/, message: "bad format" }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :email, presence: true, uniqueness: true
end
