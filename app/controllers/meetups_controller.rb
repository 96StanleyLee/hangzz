class MeetupsController < ApplicationController
	def show
		set_user_instance
		set_instance
	end

	private

	def set_instance
		@meetup = Meetup.find(params[:id])
	end
end
