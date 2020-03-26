class SessionsController < ApplicationController

	skip_before_action :authorized, only: [:new, :create]


	def new
	end

	def create
		@user = User.find_by(email: params[:email])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to root_path
		else
			flash[:alert] = ['Email or password is incorrect']
			redirect_to login_path
		end 	
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_path
	end

end