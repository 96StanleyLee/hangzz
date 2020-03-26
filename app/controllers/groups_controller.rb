class GroupsController < ApplicationController
	def show
		set_instance
	end



	def destroy 
		set_instance
		@group.memberships.find_by(user: @user).destroy
		redirect_to root_path
	end 

	private

	def set_instance
		@group = Group.friendly.find_by_slug(params[:slug])
	end
end
