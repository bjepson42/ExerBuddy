class Event < ApplicationRecord
 belongs_to :location
 belongs_to :activity


 belongs_to :originator_user, class_name: "User"
 belongs_to :acceptor_user, class_name: "User"

end
