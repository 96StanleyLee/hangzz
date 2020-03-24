class ApplicationController < ActionController::Base

	helper_method :logged_in?, :current_user
	
	before_action :authorized
	before_action :current_user

	private

	def current_user
		if session[:user_id]
			@user = User.find(session[:user_id])
		end
	end

	def authorized
		redirect_to login_path unless logged_in?
	end

	# helper method for #authorized
	def logged_in?
		!!current_user
	end
end
