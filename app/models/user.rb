class User < ApplicationRecord
	has_secure_password
	
	has_many :memberships
	has_many :groups, through: :memberships
	validates :password_digest, presence: true
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true, presence: true
	validates :name, presence: true

end
