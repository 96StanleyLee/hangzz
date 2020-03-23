class Group < ApplicationRecord
	has_many :users
	has_many :locations, through: :users

	has_many :meetups
	has_many :locations, through: :meetups
end
