class Group < ApplicationRecord
	has_many :memberships
	has_many :users, through: :memberships

	has_many :meetups
	has_many :locations, through: :meetups

	def members
		self.users
	end
end
