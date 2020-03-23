class Meetup < ApplicationRecord
  belongs_to :group
  belongs_to :location
end
