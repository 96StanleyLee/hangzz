class GroupsController < ApplicationController
	def show
		set_instance
		@future_meetups = @group.future_meetups
	end

	private

	def set_instance
		@group = Group.friendly.find_by_slug(params[:slug])
	end
end
