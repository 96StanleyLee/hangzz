class User < ApplicationRecord
	has_secure_password
	extend FriendlyId
  		friendly_id :name, use: :slugged
	
	has_many :memberships
	has_many :groups, through: :memberships
	has_many :commute_differentials
	validates :password_digest, presence: true
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true, presence: true
	validates :name, presence: true

end
