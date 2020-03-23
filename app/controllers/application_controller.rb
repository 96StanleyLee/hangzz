class ApplicationController < ActionController::Base

	private

	def set_user_instance
		@user = User.find(3)
	end
end
