class Booking < ApplicationRecord
  belongs_to :acceptor_user, class_name: "User"
  belongs_to :event
end
