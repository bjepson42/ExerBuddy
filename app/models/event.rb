class Event < ApplicationRecord
 belongs_to :location
 belongs_to :activity
 belongs_to :user
 belongs_to :friend_user, class_name: "User"

end
