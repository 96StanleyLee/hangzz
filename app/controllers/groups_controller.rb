class GroupsController < ApplicationController
	def show
		set_user_instance
		set_instance
	end

	private

	def set_instance
		@group = Group.find(params[:id])
	end
end
