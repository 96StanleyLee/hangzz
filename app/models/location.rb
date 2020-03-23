class Location < ApplicationRecord
  belongs_to :location_type
  
  has_many :meetups
	has_many :groups, through: :meetups
end
