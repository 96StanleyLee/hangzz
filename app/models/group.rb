class Group < ApplicationRecord
	extend FriendlyId
		friendly_id :name, use: :slugged

	has_many :memberships
	has_many :users, through: :memberships

	has_many :meetups
	has_many :locations, through: :meetups

	def members
		self.users
	end

	def meetups
		Meetup.where('status = 1 AND group_id = ?', self.id)
	end
end
