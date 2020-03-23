class Meetup < ApplicationRecord
  enum status: { pending: 0, confirmed: 1}
  belongs_to :group
  belongs_to :location
end
