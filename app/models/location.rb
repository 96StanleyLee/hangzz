class Location < ApplicationRecord
  belongs_to :location_type
  extend FriendlyId
    friendly_id :name, use: :slugged
  
  has_many :meetups
	has_many :groups, through: :meetups
end
