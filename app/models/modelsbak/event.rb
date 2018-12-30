class Event < ApplicationRecord
 belongs_to :location
 belongs_to :activity


 belongs_to :originator_user, class_name: "User"
 has_many :acceptor_users, through: :bookings, class_name: "User"
 has_many :bookings 

end
