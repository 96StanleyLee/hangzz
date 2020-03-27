class Meetup < ApplicationRecord

	extend FriendlyId
		friendly_id :slug_candidates, use: :slugged
	
	enum status: { pending: 0, confirmed: 1}
	belongs_to :group
	belongs_to :location

	def slug_candidates
		["#{self.date.strftime("%F")}-#{self.location.name}-#{self.group.name}"]
	end

	def all
		Meetup.where('status like 1')
	end

end
