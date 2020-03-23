class UsersController < ApplicationController

	def index
		set_user_instance
		redirect_to user_path(@user)
	end

    def show
        set_user_instance
	end

	def edit
		set_user_instance
	end

	def update
		set_user_instance
		@user.update(strong_params)
		redirect_to edit_user_path(@user)
	end

	private

	def strong_params
		params.require(:user).permit(:name, :home_address, :work_address)
	end
end
