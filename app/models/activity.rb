class Activity < ApplicationRecord
  has_many :events

  validates :name, uniqueness: { case_sensitive: false }
end
