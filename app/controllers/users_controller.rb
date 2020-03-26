class UsersController < ApplicationController

	skip_before_action :authorized, only: [:new, :create]

	def index
		redirect_to user_path(@user)
	end

	def new 
		@user = User.new
	end

	def create
		@user = User.new(strong_params(:email, :password, :name))
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_path
		else
			flash[:alert] = @user.errors.full_messages
			redirect_to new_user_path
		end
	end

	def show
		@groups_with_meetups = @user.groups.select{|g| g.meetups.count > 0}
		@hello_messages = ['What beliefs do you carry that may be holding you back?','What’s your hobby?','What’s your talent?','Who do you like to work with?','Where do you enjoy working?','What are your passions?','How can you turn your passions into work?','What inspires you?','How do you motivate yourself to take action?','What do you dream about?','What have you overcome?','How do you respond to what others say about you?','Why are you here?','What are your weaknesses?','What are your goals?','How do you plan on accomplishing your goals?','What are you grateful for?','How can you make yourself better?','How can you make the world better?','What good shall we do today?']
    end

	def edit
	end

	def update
		@user.slug = nil 
		if @user.update(strong_params(:name, :home_address, :work_address))
			redirect_to edit_user_path(@user)
		else
			flash[:alert] = @user.errors.full_messages
			redirect_to edit_user_path
		end 
	end

	private

	def strong_params(*args)
		params.require(:user).permit(*args)
	end
end
