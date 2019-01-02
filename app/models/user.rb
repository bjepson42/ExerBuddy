class User < ApplicationRecord
  has_secure_password
  has_many :events, foreign_key: "user_id"
  has_many :bookings, class_name: "Event", foreign_key: "friend_user_id"
  has_many :activities, through: :events
  has_many :locations, through: :events
  validates :phone, format: { with: /\A\d{3}-\d{3}-\d{4}\z/, message: "bad format" }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :age, :numericality => { greater_than_or_equal_to: 18, less_than: 150, message: "You must be between 18 and 150 years old." }
end
